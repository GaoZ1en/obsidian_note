use directloop::{
    engine::{self, Config, RowOrder},
    verification::verify,
};
use std::path::PathBuf;

fn main() -> engine::Result<()> {
    let mut config = Config {
        max_length: 16,
        batch_size: 2048,
        output: None,
        resume: false,
        checkpoint: true,
        quiet: false,
        parallel_ranks: true,
        row_order: RowOrder::Short,
        prefer_short_pivots: true,
    };
    let mut threads = std::thread::available_parallelism()?.get();
    let mut verify_file = None;
    let mut args = std::env::args().skip(1);
    while let Some(arg) = args.next() {
        match arg.as_str() {
            "--max-length" => config.max_length = args.next().ok_or("missing length")?.parse()?,
            "--threads" => threads = args.next().ok_or("missing threads")?.parse()?,
            "--batch-size" => {
                config.batch_size = args.next().ok_or("missing batch size")?.parse()?
            }
            "--output" => {
                config.output = Some(PathBuf::from(
                    args.next().ok_or("missing output directory")?,
                ))
            }
            "--resume" => config.resume = true,
            "--no-checkpoint" => config.checkpoint = false,
            "--quiet" => config.quiet = true,
            "--serial-ranks" => config.parallel_ranks = false,
            "--row-order" => {
                config.row_order = match args.next().as_deref() {
                    Some("input") => RowOrder::Input,
                    Some("short") => RowOrder::Short,
                    Some("pivot-asc") => RowOrder::PivotAsc,
                    Some("pivot-desc") => RowOrder::PivotDesc,
                    _ => {
                        return Err("row order must be input, short, pivot-asc or pivot-desc".into())
                    }
                };
            }
            "--pivot-strategy" => {
                config.prefer_short_pivots = match args.next().as_deref() {
                    Some("first") => false,
                    Some("short") => true,
                    _ => return Err("pivot strategy must be first or short".into()),
                };
            }
            "--verify" => verify_file = Some(args.next().ok_or("missing reference path")?),
            "--help" | "-h" => {
                println!("directloop [--max-length 4..24] [--threads N] [--batch-size N]\n           [--output DIR] [--resume] [--no-checkpoint] [--quiet]\n           [--serial-ranks] [--verify REFERENCE.json]\n           [--row-order input|short|pivot-asc|pivot-desc]\n           [--pivot-strategy first|short]\nExact arithmetic over Q, lambda=7/5. Default: L=16, all available workers, batches of 2048, short rows first, shorter pivots preferred.\nTwo exact reducers run in addition to the requested generation workers.\nUse --serial-ranks for one reducer; even --threads 1 overlaps generation and reduction.\nJSON results go to stdout; progress goes to stderr. Checkpoints are saved only with --output.");
                return Ok(());
            }
            _ => return Err(format!("unknown argument {arg}; use --help").into()),
        }
    }
    if threads == 0 {
        return Err("threads must be positive".into());
    }
    rayon::ThreadPoolBuilder::new()
        .num_threads(threads)
        .build_global()?;
    if let Some(path) = verify_file {
        return verify(&path);
    }
    let result = engine::run(&config)?;
    println!("{}", serde_json::to_string_pretty(&result)?);
    Ok(())
}
