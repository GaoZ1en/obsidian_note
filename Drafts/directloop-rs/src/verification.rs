use crate::{
    engine, geometry,
    rank::{Rank, Row},
};
use serde_json::{json, Value};
use std::fs::File;
use std::io::BufReader;

pub fn verify(path: &str) -> engine::Result<()> {
    let reference: Value = serde_json::from_reader(BufReader::new(File::open(path)?))?;
    let mut checked = 0;
    if let Some(cases) = reference["canonical_cases"].as_array() {
        for (i, case) in cases.iter().enumerate() {
            let word: Vec<u8> = serde_json::from_value(case["word"].clone())?;
            if geometry::canonical(&word) != case["key"].as_u64().ok_or("missing canonical key")? {
                return Err(format!("canonical case {i} mismatch").into());
            }
        }
        eprintln!("{} Mathematica canonicalization cases match", cases.len());
    }
    for entry in reference["levels"].as_array().ok_or("missing levels")? {
        let n = entry["length"].as_u64().ok_or("missing length")? as usize;
        let keys = geometry::basis(n);
        if json!(keys) != entry["basis"] {
            return Err(format!("L={n}: basis mismatch").into());
        }
        let seeds = geometry::seeds(&keys);
        if json!(seeds) != entry["seeds"] {
            return Err(format!("L={n}: seeds mismatch").into());
        }
        let terms: Vec<_> = seeds
            .iter()
            .map(|&k| json!({"seed":k,"terms":geometry::sde_terms(k)}))
            .collect();
        if json!(terms) != entry["sde"] {
            return Err(format!("L={n}: SDE term mismatch").into());
        }
        let mut traces: Vec<[u64; 3]> = keys
            .iter()
            .flat_map(|&k| geometry::trace_records(k))
            .map(|r| [geometry::notebook_packed_key(r.group), r.pair[0], r.pair[1]])
            .collect();
        traces.sort_unstable();
        traces.dedup();
        if json!(traces) != entry["trace"] {
            return Err(format!("L={n}: TrE record mismatch").into());
        }
        eprintln!("L={n}: full basis, seeds, SDE terms and TrE records match");
        checked += 1;
    }
    if let Some(cases) = reference["rank_cases"].as_array() {
        for (i, case) in cases.iter().enumerate() {
            for prefer_short_pivots in [false, true] {
                let mut rank = Rank::default();
                let mut families = [Rank::default(), Rank::default()];
                let mut combined = Rank::default();
                for r in [&mut rank, &mut families[0], &mut combined] {
                    r.prefer_short_pivots = prefer_short_pivots;
                }
                families[1].prefer_short_pivots = prefer_short_pivots;
                for (index, row) in case["matrix"]
                    .as_array()
                    .ok_or("missing matrix")?
                    .iter()
                    .enumerate()
                {
                    let entries = row
                        .as_array()
                        .ok_or("invalid matrix row")?
                        .iter()
                        .enumerate()
                        .map(|(j, a)| Ok((j as u64, a.as_i64().ok_or("invalid coefficient")?)))
                        .collect::<engine::Result<Vec<_>>>()?;
                    let row = Row::new(entries);
                    rank.insert(row.clone());
                    if let Some(remainder) = families[index % 2].insert_basis(row) {
                        combined.insert(remainder);
                    }
                }
                if rank.rank() != case["rank"].as_u64().ok_or("missing rank")? as usize {
                    return Err(format!("exact rank case {i} mismatch").into());
                }
                if combined.rank() != rank.rank() {
                    return Err(format!("combined row-space case {i} mismatch").into());
                }
            }
        }
        eprintln!(
            "{} independent Mathematica MatrixRank cases match",
            cases.len()
        );
    }
    eprintln!("Verified {checked} complete levels");
    Ok(())
}

#[cfg(test)]
mod tests {
    #[test]
    fn independent_mathematica_reference() {
        super::verify(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/verification/reference-small.json"
        ))
        .unwrap();
    }
}
