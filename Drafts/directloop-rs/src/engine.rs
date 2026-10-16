use crate::geometry::{self, DoubleKey, TraceRecord};
use crate::rank::{Rank, Row};
use rustc_hash::FxHashMap;
use serde::{Deserialize, Serialize};
use std::collections::BTreeMap;
use std::fs::{self, File};
use std::io::{BufReader, BufWriter, Write};
use std::path::{Path, PathBuf};
use std::sync::mpsc::{channel, sync_channel, SyncSender};
use std::time::Instant;

pub type Result<T> = std::result::Result<T, Box<dyn std::error::Error + Send + Sync>>;
const FORMAT: &str = "directloop-exact-integer-v1-lambda7over5";

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Level {
    pub length: usize,
    pub loops: usize,
    pub sde: usize,
    pub tre: usize,
    pub all: usize,
    pub basis_seconds: f64,
    pub seed_seconds: f64,
    pub sde_wall_seconds: f64,
    pub sde_reduce_seconds: f64,
    pub tre_wall_seconds: f64,
    pub tre_reduce_seconds: f64,
    pub compute_seconds: f64,
    pub sde_rows: usize,
    pub tre_rows: usize,
    pub sde_operations: u64,
    pub tre_operations: u64,
    pub all_operations: u64,
    pub big_operations: u64,
    pub max_row_terms: usize,
}

#[derive(Default, Serialize, Deserialize)]
struct State {
    format: String,
    summary: Vec<Level>,
    sde: Rank,
    tre: Rank,
    all: Rank,
    groups: FxHashMap<DoubleKey, [u64; 2]>,
}

pub struct Config {
    pub max_length: usize,
    pub batch_size: usize,
    pub output: Option<PathBuf>,
    pub resume: bool,
    pub checkpoint: bool,
    pub quiet: bool,
    pub parallel_ranks: bool,
    pub row_order: RowOrder,
    pub prefer_short_pivots: bool,
}

#[derive(Debug, Clone, Copy)]
pub enum RowOrder {
    Input,
    Short,
    PivotAsc,
    PivotDesc,
}

fn order_rows(rows: &mut [Row], order: RowOrder) {
    match order {
        RowOrder::Input => {}
        RowOrder::Short => rows.sort_by_key(|r| (r.len(), r.pivot())),
        RowOrder::PivotAsc => rows.sort_by_key(|r| (r.pivot(), r.len())),
        RowOrder::PivotDesc => rows.sort_by_key(|r| (std::cmp::Reverse(r.pivot()), r.len())),
    }
}

fn atomic_file(path: &Path, write: impl FnOnce(&mut BufWriter<File>) -> Result<()>) -> Result<()> {
    let tmp = path.with_extension("tmp");
    let mut file = BufWriter::new(File::create(&tmp)?);
    write(&mut file)?;
    file.flush()?;
    file.get_ref().sync_all()?;
    fs::rename(tmp, path)?;
    Ok(())
}

/// Rolling, bounded lookahead overlaps generation with ordered reduction.
/// Completion order must not dictate pivot order: doing so makes fill and time
/// depend on scheduling. Submit a replacement immediately after consuming a batch.
/// in_place_scope leaves the consumer on its caller, including with one worker.
fn stream<T: Send, F: Fn(&[u64]) -> T + Sync, C: FnMut(T)>(
    keys: &[u64],
    batch: usize,
    generate: F,
    mut consume: C,
) {
    let window = (rayon::current_num_threads() * 2).max(1);
    let total = keys.len().div_ceil(batch);
    let (tx, rx) = channel();
    let generate = &generate;
    rayon::in_place_scope(|scope| {
        let submit = |index: usize| {
            let tx = tx.clone();
            scope.spawn(move |_| {
                let result = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                    generate(&keys[index * batch..((index + 1) * batch).min(keys.len())])
                }));
                let _ = tx.send((index, result));
            });
        };
        let mut next = window.min(total);
        for index in 0..next {
            submit(index);
        }
        let mut pending = BTreeMap::new();
        for expected in 0..total {
            while !pending.contains_key(&expected) {
                let (index, result) = rx.recv().expect("generation workers disconnected");
                // Do not wait for a missing earlier batch when any worker fails.
                if let Err(panic) = result {
                    std::panic::resume_unwind(panic);
                }
                pending.insert(index, result.unwrap_or_else(|_| unreachable!()));
            }
            consume(pending.remove(&expected).unwrap());
            if next < total {
                submit(next);
                next += 1;
            }
        }
    });
}

fn trace_row(pair: [u64; 2], base: [u64; 2]) -> Row {
    Row::new([(pair[0], 1), (pair[1], 1), (base[0], -1), (base[1], -1)])
}

enum CombinedSink<'a> {
    Serial(&'a mut Rank),
    Parallel(SyncSender<Vec<Row>>),
}
impl CombinedSink<'_> {
    fn insert(&mut self, rows: Vec<Row>) {
        if rows.is_empty() {
            return;
        }
        match self {
            Self::Serial(rank) => {
                for row in rows {
                    rank.insert(row);
                }
            }
            Self::Parallel(tx) => {
                tx.send(rows).expect("combined-rank worker failed");
            }
        }
    }
}

/// TrE/SDE and All have independent pivot tables. Feed accepted basis remainders
/// to All in the same order, allowing two exact reducers to work concurrently.
fn with_combined(all: &mut Rank, parallel: bool, body: impl FnOnce(&mut CombinedSink<'_>)) -> f64 {
    if !parallel {
        body(&mut CombinedSink::Serial(all));
        return 0.;
    }
    let (tx, rx) = sync_channel::<Vec<Row>>(4);
    std::thread::scope(|scope| {
        let worker = scope.spawn(|| {
            let mut seconds = 0.;
            for rows in rx {
                let t = Instant::now();
                for row in rows {
                    all.insert(row);
                }
                seconds += t.elapsed().as_secs_f64();
            }
            seconds
        });
        body(&mut CombinedSink::Parallel(tx));
        worker.join().expect("combined-rank worker panicked")
    })
}

pub fn run(config: &Config) -> Result<Vec<Level>> {
    if !(4..=geometry::MAX_LENGTH).contains(&config.max_length)
        || !config.max_length.is_multiple_of(2)
    {
        return Err(format!(
            "length must be even and between 4 and {}",
            geometry::MAX_LENGTH
        )
        .into());
    }
    if config.batch_size == 0 {
        return Err("batch size must be positive".into());
    }
    if config.resume && config.output.is_none() {
        return Err("--resume requires --output".into());
    }
    let mut state = State {
        format: FORMAT.to_owned(),
        ..Default::default()
    };
    if let Some(dir) = &config.output {
        if config.resume {
            state =
                bincode::deserialize_from(BufReader::new(File::open(dir.join("checkpoint.bin"))?))?;
            if state.format != FORMAT {
                return Err("checkpoint format/arithmetic mismatch".into());
            }
        } else {
            if dir.exists() && fs::read_dir(dir)?.next().is_some() {
                return Err(
                    "output directory is nonempty; choose a new one or use --resume".into(),
                );
            }
            fs::create_dir_all(dir)?;
        }
    }
    for rank in [&mut state.sde, &mut state.tre, &mut state.all] {
        rank.prefer_short_pivots = config.prefer_short_pivots;
    }
    let last = state.summary.last().map(|s| s.length).unwrap_or(2);
    for n in (last + 2..=config.max_length).step_by(2) {
        let started = Instant::now();
        if !config.quiet {
            eprintln!("L={n}: enumerate basis");
        }
        let t = Instant::now();
        let keys = geometry::basis(n);
        let bt = t.elapsed().as_secs_f64();
        let t = Instant::now();
        let seeds = geometry::seeds(&keys);
        let st = t.elapsed().as_secs_f64();
        let mut sr = 0.;
        let mut sde_rows = 0;
        let mut tre_rows = 0;
        let t = Instant::now();
        if !config.quiet {
            eprintln!(
                "L={n}: SDE, {} seeds, {} workers, {} basis loops",
                seeds.len(),
                rayon::current_num_threads(),
                keys.len()
            );
        }
        let sde = &mut state.sde;
        let mut sde_progress = Instant::now();
        let combined_seconds = with_combined(&mut state.all, config.parallel_ranks, |combined| {
            stream(
                &seeds,
                config.batch_size,
                |chunk| {
                    let mut rows = chunk
                        .iter()
                        .filter_map(|&key| {
                            let terms = geometry::sde_terms(key);
                            let row = Row::from_sorted_unique(
                                terms
                                    .into_iter()
                                    .map(|(k, a, b)| (k, 5 * a + 7 * b))
                                    .collect(),
                            );
                            if row.is_empty() {
                                None
                            } else {
                                Some(row)
                            }
                        })
                        .collect::<Vec<_>>();
                    order_rows(&mut rows, config.row_order);
                    rows
                },
                |rows| {
                    let t = Instant::now();
                    sde_rows += rows.len();
                    let mut accepted = Vec::new();
                    for row in rows {
                        // All contains every previously accepted SDE and TrE row.
                        // A dependent SDE row cannot increase the combined rank.
                        if let Some(remainder) = sde.insert_basis(row) {
                            accepted.push(remainder);
                        }
                    }
                    sr += t.elapsed().as_secs_f64();
                    let t = Instant::now();
                    combined.insert(accepted);
                    // In serial mode, include the combined elimination time, too.
                    if !config.parallel_ranks {
                        sr += t.elapsed().as_secs_f64();
                    }
                    if !config.quiet && sde_progress.elapsed().as_secs() >= 5 {
                        eprintln!(
                            "L={n}: SDE processed={sde_rows}, rank={}, elapsed={:.1}s, operations={}, max_terms={}",
                            sde.rank(),
                            started.elapsed().as_secs_f64(),
                            sde.operations,
                            sde.max_row_terms
                        );
                        sde_progress = Instant::now();
                    }
                },
            )
        });
        sr += combined_seconds;
        let sw = t.elapsed().as_secs_f64();
        if !config.quiet {
            eprintln!(
                "L={n}: SDE complete, rank={}, All={}, stage={sw:.3}s",
                state.sde.rank(),
                state.all.rank()
            );
        }
        drop(seeds);
        let mut tr = 0.;
        let mut done = 0;
        let total = keys.len().div_ceil(config.batch_size);
        let mut progress = Instant::now();
        let t = Instant::now();
        if !config.quiet {
            eprintln!("L={n}: TrE, {} loops, {total} batches", keys.len());
        }
        let tre = &mut state.tre;
        let groups = &mut state.groups;
        let combined_seconds = with_combined(&mut state.all, config.parallel_ranks, |combined| {
            stream(
                &keys,
                config.batch_size,
                |chunk| {
                    let mut records: Vec<TraceRecord> = Vec::new();
                    for &key in chunk {
                        geometry::append_trace_records(key, &mut records);
                    }
                    records.sort_unstable();
                    records.dedup();
                    records
                },
                |records| {
                    let t = Instant::now();
                    let mut accepted = Vec::new();
                    let mut rows = Vec::new();
                    for record in records {
                        if let Some(&base) = groups.get(&record.group) {
                            if record.pair != base {
                                let row = trace_row(record.pair, base);
                                if !row.is_empty() {
                                    tre_rows += 1;
                                    rows.push(row);
                                }
                            }
                        } else {
                            groups.insert(record.group, record.pair);
                        }
                    }
                    order_rows(&mut rows, config.row_order);
                    for row in rows {
                        if let Some(remainder) = tre.insert_basis(row) {
                            accepted.push(remainder);
                        }
                    }
                    tr += t.elapsed().as_secs_f64();
                    done += 1;
                    let t = Instant::now();
                    combined.insert(accepted);
                    if !config.parallel_ranks {
                        tr += t.elapsed().as_secs_f64();
                    }
                    if !config.quiet && (progress.elapsed().as_secs() >= 5 || done == total) {
                        eprintln!(
                            "L={n}: TrE {done}/{total}, rank={}, elapsed={:.1}s, operations={}, max_terms={}",
                            tre.rank(),
                            started.elapsed().as_secs_f64(),
                            tre.operations,
                            tre.max_row_terms
                        );
                        progress = Instant::now();
                    }
                },
            )
        });
        tr += combined_seconds;
        let tw = t.elapsed().as_secs_f64();
        let level = Level {
            length: n,
            loops: state.summary.last().map(|s| s.loops).unwrap_or(0) + keys.len(),
            sde: state.sde.rank(),
            tre: state.tre.rank(),
            all: state.all.rank(),
            basis_seconds: bt,
            seed_seconds: st,
            sde_wall_seconds: sw,
            sde_reduce_seconds: sr,
            tre_wall_seconds: tw,
            tre_reduce_seconds: tr,
            compute_seconds: started.elapsed().as_secs_f64(),
            sde_rows,
            tre_rows,
            sde_operations: state.sde.operations,
            tre_operations: state.tre.operations,
            all_operations: state.all.operations,
            big_operations: state.sde.big_operations
                + state.tre.big_operations
                + state.all.big_operations,
            max_row_terms: state
                .sde
                .max_row_terms
                .max(state.tre.max_row_terms)
                .max(state.all.max_row_terms),
        };
        if !config.quiet {
            eprintln!(
                "L={n}: loops={} SDE={} TrE={} All={} ({:.3}s)",
                level.loops, level.sde, level.tre, level.all, level.compute_seconds
            );
        }
        state.summary.push(level);
        if let Some(dir) = &config.output {
            atomic_file(&dir.join("table.json"), |file| {
                serde_json::to_writer_pretty(file, &state.summary)?;
                Ok(())
            })?;
            if config.checkpoint {
                let t = Instant::now();
                atomic_file(&dir.join("checkpoint.bin"), |file| {
                    bincode::serialize_into(file, &state)?;
                    Ok(())
                })?;
                if !config.quiet {
                    eprintln!("L={n}: checkpoint {:.3}s", t.elapsed().as_secs_f64());
                }
            }
        }
    }
    Ok(state
        .summary
        .into_iter()
        .filter(|s| s.length <= config.max_length)
        .collect())
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn small_exact_counts() {
        let rows = run(&Config {
            max_length: 12,
            batch_size: 7,
            output: None,
            resume: false,
            checkpoint: false,
            quiet: true,
            parallel_ranks: true,
            row_order: RowOrder::Input,
            prefer_short_pivots: false,
        })
        .unwrap();
        let actual: Vec<_> = rows
            .iter()
            .map(|r| (r.loops, r.sde, r.tre, r.all))
            .collect();
        assert_eq!(
            actual,
            vec![
                (1, 0, 0, 0),
                (2, 0, 0, 0),
                (9, 2, 0, 2),
                (24, 7, 0, 7),
                (119, 48, 6, 51)
            ]
        );
    }
    #[test]
    fn row_orders_and_pivot_replacement_preserve_exact_small_counts() {
        for row_order in [
            RowOrder::Input,
            RowOrder::Short,
            RowOrder::PivotAsc,
            RowOrder::PivotDesc,
        ] {
            for prefer_short_pivots in [false, true] {
                let rows = run(&Config {
                    max_length: 16,
                    batch_size: 17,
                    output: None,
                    resume: false,
                    checkpoint: false,
                    quiet: true,
                    parallel_ranks: true,
                    row_order,
                    prefer_short_pivots,
                })
                .unwrap();
                let last = rows.last().unwrap();
                assert_eq!(
                    (last.loops, last.sde, last.tre, last.all),
                    (3801, 2021, 762, 2383),
                    "order={row_order:?}, prefer_short_pivots={prefer_short_pivots}"
                );
            }
        }
    }
    #[test]
    fn ordered_stream_and_worker_failure() {
        let keys: Vec<u64> = (0..100).collect();
        let mut out = Vec::new();
        stream(&keys, 3, |chunk| chunk.to_vec(), |chunk| out.extend(chunk));
        assert_eq!(out, keys);
        let failed = std::panic::catch_unwind(|| {
            stream(
                &keys,
                1,
                |chunk| {
                    assert_ne!(chunk[0], 17, "injected worker failure");
                    chunk[0]
                },
                |_| {},
            )
        });
        assert!(failed.is_err());
    }
    #[test]
    fn checkpoint_and_serial_reducer_match_fresh_run() {
        let nonce = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap()
            .as_nanos();
        let dir =
            std::env::temp_dir().join(format!("directloop-test-{}-{nonce}", std::process::id()));
        let mut config = Config {
            max_length: 8,
            batch_size: 3,
            output: Some(dir.clone()),
            resume: false,
            checkpoint: true,
            quiet: true,
            parallel_ranks: true,
            row_order: RowOrder::Input,
            prefer_short_pivots: false,
        };
        run(&config).unwrap();
        assert!(run(&config).is_err());
        config.max_length = 12;
        config.resume = true;
        config.batch_size = 7;
        let resumed = run(&config).unwrap();
        config.output = None;
        config.resume = false;
        config.parallel_ranks = false;
        let fresh = run(&config).unwrap();
        let counts = |v: &[Level]| {
            v.iter()
                .map(|r| (r.length, r.loops, r.sde, r.tre, r.all))
                .collect::<Vec<_>>()
        };
        assert_eq!(counts(&resumed), counts(&fresh));
        fs::remove_dir_all(dir).unwrap();
    }
}
