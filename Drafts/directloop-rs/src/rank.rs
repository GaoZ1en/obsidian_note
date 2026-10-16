//! Exact rank over Q using primitive integer sparse rows, never floating point.
//! A row operation is r <- (p_c/g) r - (r_c/g) p, g=gcd(p_c,r_c).
//! Dividing each resulting row by its content leaves its rational span unchanged.
use num_bigint::BigInt;
use num_integer::Integer;
use num_traits::{Signed, ToPrimitive, Zero};
use rustc_hash::FxHashMap;
use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum Row {
    Small(Vec<(u64, i64)>),
    Big(Vec<(u64, BigInt)>),
}

fn normalize128(mut v: Vec<(u64, i128)>) -> Row {
    v.retain(|t| t.1 != 0);
    if v.is_empty() {
        return Row::Small(Vec::new());
    }
    let mut g = 0i128;
    for &(_, a) in &v {
        g = g.gcd(&a);
        if g == 1 {
            break;
        }
    }
    if v.last().unwrap().1 < 0 {
        g = -g;
    }
    if g != 1 {
        for (_, a) in &mut v {
            *a /= g;
        }
    }
    if v.iter().all(|t| i64::try_from(t.1).is_ok()) {
        Row::Small(v.into_iter().map(|(k, a)| (k, a as i64)).collect())
    } else {
        Row::Big(v.into_iter().map(|(k, a)| (k, BigInt::from(a))).collect())
    }
}

fn normalize64(mut v: Vec<(u64, i64)>) -> Row {
    if v.is_empty() {
        return Row::Small(v);
    }
    if v.iter().any(|t| t.1 == i64::MIN) {
        return normalize128(v.into_iter().map(|(k, a)| (k, a as i128)).collect());
    }
    let mut g = 0i64;
    for &(_, a) in &v {
        g = g.gcd(&a);
        if g == 1 {
            break;
        }
    }
    if v.last().unwrap().1 < 0 {
        g = -g;
    }
    if g != 1 {
        for (_, a) in &mut v {
            *a /= g;
        }
    }
    Row::Small(v)
}

/// Most loop rows have small coefficients. Stay in native i64 arithmetic when
/// every multiply/subtract succeeds; retry the entire operation in i128 otherwise.
fn eliminate64(a: &[(u64, i64)], b: &[(u64, i64)], index: usize) -> Option<Row> {
    let mut v = Vec::new();
    eliminate64_into(a, b, index, &mut v)?;
    Some(normalize64(v))
}

fn eliminate64_into(
    a: &[(u64, i64)],
    b: &[(u64, i64)],
    index: usize,
    v: &mut Vec<(u64, i64)>,
) -> Option<()> {
    v.clear();
    v.reserve(a.len() + b.len());
    let (ac, bc) = (a[index].1, b.last()?.1);
    let g = ac.unsigned_abs().gcd(&(bc as u64)) as i64;
    let (ma, mb) = (bc / g, ac / g);
    let (mut i, mut j) = (0, 0);
    while i < a.len() || j < b.len() {
        let ak = a.get(i).map(|t| t.0).unwrap_or(u64::MAX);
        let bk = b.get(j).map(|t| t.0).unwrap_or(u64::MAX);
        let (k, c) = if ak < bk {
            let c = ma.checked_mul(a[i].1)?;
            i += 1;
            (ak, c)
        } else if bk < ak {
            let c = mb.checked_mul(b[j].1)?.checked_neg()?;
            j += 1;
            (bk, c)
        } else {
            let c = ma
                .checked_mul(a[i].1)?
                .checked_sub(mb.checked_mul(b[j].1)?)?;
            i += 1;
            j += 1;
            (ak, c)
        };
        if c != 0 {
            v.push((k, c));
        }
    }
    Some(())
}

fn normalize_big(mut v: Vec<(u64, BigInt)>) -> Row {
    v.retain(|t| !t.1.is_zero());
    if v.is_empty() {
        return Row::Small(Vec::new());
    }
    let mut g = BigInt::zero();
    for (_, a) in &v {
        g = g.gcd(a);
        if g == BigInt::from(1) {
            break;
        }
    }
    if v.last().unwrap().1.is_negative() {
        g = -g;
    }
    if g != BigInt::from(1) {
        for (_, a) in &mut v {
            *a /= &g;
        }
    }
    if v.iter().all(|t| t.1.to_i64().is_some()) {
        Row::Small(
            v.into_iter()
                .map(|(k, a)| (k, a.to_i64().unwrap()))
                .collect(),
        )
    } else {
        Row::Big(v)
    }
}

impl Row {
    /// Used by the SDE generator, which already merges and sorts column keys.
    pub(crate) fn from_sorted_unique(mut v: Vec<(u64, i64)>) -> Self {
        debug_assert!(v.windows(2).all(|w| w[0].0 < w[1].0));
        debug_assert!(v.last().is_none_or(|t| t.0 != u64::MAX));
        v.retain(|t| t.1 != 0);
        normalize64(v)
    }
    pub fn new(v: impl IntoIterator<Item = (u64, i64)>) -> Self {
        let mut v: Vec<_> = v
            .into_iter()
            .map(|(k, a)| {
                assert_ne!(k, u64::MAX, "column key is reserved for merge sentinels");
                (k, a as i128)
            })
            .collect();
        v.sort_unstable_by_key(|t| t.0);
        let mut out: Vec<(u64, i128)> = Vec::with_capacity(v.len());
        for (k, a) in v {
            if let Some(last) = out.last_mut().filter(|last| last.0 == k) {
                last.1 += a;
            } else {
                out.push((k, a));
            }
        }
        normalize128(out)
    }
    pub fn len(&self) -> usize {
        match self {
            Self::Small(v) => v.len(),
            Self::Big(v) => v.len(),
        }
    }
    pub fn is_empty(&self) -> bool {
        self.len() == 0
    }
    /// Retained pivots should not retain temporary merge capacity.
    fn compact(&mut self) {
        match self {
            Self::Small(v) => v.shrink_to_fit(),
            Self::Big(v) => v.shrink_to_fit(),
        }
    }
    fn recycle(self, scratch: &mut Vec<(u64, i64)>) {
        if let Self::Small(mut old) = self {
            old.clear();
            if old.capacity() <= 65536 {
                *scratch = old;
            }
        }
    }
    /// On checked-i64 failure the complete operation is retried by the exact path.
    fn eliminate_buffered(&self, pivot: &Self, scratch: &mut Vec<(u64, i64)>) -> Self {
        if let (Self::Small(a), Self::Small(b)) = (self, pivot) {
            let key = b.last().unwrap().0;
            let index = a.binary_search_by_key(&key, |t| t.0).unwrap();
            if eliminate64_into(a, b, index, scratch).is_some() {
                return normalize64(std::mem::take(scratch));
            }
        }
        self.eliminate_column(pivot)
    }
    /// Exchange the consumed row's allocation with the output buffer.
    fn eliminate_reusing(self, pivot: &Self, scratch: &mut Vec<(u64, i64)>) -> Self {
        if pivot.len() == 1 {
            let key = pivot.pivot().unwrap();
            return match self {
                Self::Small(mut v) => {
                    let index = v.binary_search_by_key(&key, |t| t.0).unwrap();
                    v.remove(index);
                    normalize64(v)
                }
                Self::Big(mut v) => {
                    let index = v.binary_search_by_key(&key, |t| t.0).unwrap();
                    v.remove(index);
                    normalize_big(v)
                }
            };
        }
        let out = self.eliminate_buffered(pivot, scratch);
        self.recycle(scratch);
        out
    }
    pub fn pivot(&self) -> Option<u64> {
        match self {
            Self::Small(v) => v.last().map(|t| t.0),
            Self::Big(v) => v.last().map(|t| t.0),
        }
    }
    fn big(&self) -> Vec<(u64, BigInt)> {
        match self {
            Self::Small(v) => v.iter().map(|&(k, a)| (k, BigInt::from(a))).collect(),
            Self::Big(v) => v.clone(),
        }
    }
    pub fn eliminate(&self, pivot: &Self) -> Self {
        assert_eq!(self.pivot(), pivot.pivot());
        self.eliminate_column(pivot)
    }
    fn lower_pivot(&self, pivots: &FxHashMap<u64, Row>) -> Option<u64> {
        match self {
            Self::Small(v) => v
                .iter()
                .rev()
                .skip(1)
                .map(|t| t.0)
                .find(|k| pivots.contains_key(k)),
            Self::Big(v) => v
                .iter()
                .rev()
                .skip(1)
                .map(|t| t.0)
                .find(|k| pivots.contains_key(k)),
        }
    }
    /// Eliminate the pivot's leading column even when it lies below ours.
    fn eliminate_column(&self, pivot: &Self) -> Self {
        let key = pivot.pivot().unwrap();
        if let (Self::Small(a), Self::Small(b)) = (self, pivot) {
            let index = a.binary_search_by_key(&key, |t| t.0).unwrap();
            if let Some(row) = eliminate64(a, b, index) {
                return row;
            }
            let (ac, bc) = (a[index].1 as i128, b.last().unwrap().1 as i128);
            let g = ac.gcd(&bc);
            let (ma, mb) = (bc / g, ac / g);
            let (mut i, mut j) = (0, 0);
            let mut v = Vec::with_capacity(a.len() + b.len());
            while i < a.len() || j < b.len() {
                let ak = a.get(i).map(|t| t.0).unwrap_or(u64::MAX);
                let bk = b.get(j).map(|t| t.0).unwrap_or(u64::MAX);
                let (k, c) = if ak < bk {
                    let c = ma * a[i].1 as i128;
                    i += 1;
                    (ak, c)
                } else if bk < ak {
                    let c = -mb * b[j].1 as i128;
                    j += 1;
                    (bk, c)
                } else {
                    let c = ma * a[i].1 as i128 - mb * b[j].1 as i128;
                    i += 1;
                    j += 1;
                    (ak, c)
                };
                if c != 0 {
                    v.push((k, c));
                }
            }
            normalize128(v)
        } else {
            let (a, b) = (self.big(), pivot.big());
            let index = a.binary_search_by_key(&key, |t| t.0).unwrap();
            let (ac, bc) = (&a[index].1, &b.last().unwrap().1);
            let g = ac.gcd(bc);
            let (ma, mb) = (bc / &g, ac / &g);
            let (mut i, mut j) = (0, 0);
            let mut v = Vec::with_capacity(a.len() + b.len());
            while i < a.len() || j < b.len() {
                let ak = a.get(i).map(|t| t.0).unwrap_or(u64::MAX);
                let bk = b.get(j).map(|t| t.0).unwrap_or(u64::MAX);
                let (k, c) = if ak < bk {
                    let c = &ma * &a[i].1;
                    i += 1;
                    (ak, c)
                } else if bk < ak {
                    let c = -(&mb * &b[j].1);
                    j += 1;
                    (bk, c)
                } else {
                    let c = &ma * &a[i].1 - &mb * &b[j].1;
                    i += 1;
                    j += 1;
                    (ak, c)
                };
                if !c.is_zero() {
                    v.push((k, c));
                }
            }
            normalize_big(v)
        }
    }
}

#[derive(Debug, Clone, Default, Serialize, Deserialize)]
pub struct Rank {
    pivots: FxHashMap<u64, Row>,
    pub operations: u64,
    pub big_operations: u64,
    pub max_row_terms: usize,
    // These are allocation/heuristic caches, not mathematical state. Skipping
    // serialization preserves the existing checkpoint representation.
    #[serde(skip)]
    scratch: Vec<(u64, i64)>,
    #[serde(skip)]
    blocked_until: FxHashMap<u64, usize>,
    #[serde(skip)]
    pub prefer_short_pivots: bool,
}

impl Rank {
    pub fn rank(&self) -> usize {
        self.pivots.len()
    }
    fn compress(&mut self, key: u64) {
        if self
            .blocked_until
            .get(&key)
            .is_some_and(|&n| self.pivots.len() < n)
        {
            return;
        }
        self.blocked_until.remove(&key);
        let pivot = &self.pivots[&key];
        if pivot.len() > 128 {
            return;
        }
        if pivot.lower_pivot(&self.pivots).is_none() {
            return;
        }
        let mut old = pivot.clone();
        loop {
            let q = old.lower_pivot(&self.pivots);
            let Some(q) = q else {
                break;
            };
            let short = &self.pivots[&q];
            if matches!(old, Row::Big(_)) || matches!(short, Row::Big(_)) {
                self.big_operations += 1;
            }
            // Preserve old if bounded-fill compression rejects the trial.
            let trial = old.eliminate_buffered(short, &mut self.scratch);
            self.operations += 1;
            // Bounded fill avoids turning a cheap sparse pivot into a dense row.
            if trial.len() > 128 {
                // Failed speculative work need not be repeated for every row.
                // Retrying after more independent pivots is a heuristic only:
                // skipping compression never discards an equation.
                self.blocked_until
                    .insert(key, self.pivots.len().saturating_add(4096));
                trial.recycle(&mut self.scratch);
                break;
            }
            old.recycle(&mut self.scratch);
            old = trial;
        }
        old.compact();
        self.pivots.insert(key, old);
    }
    /// True iff this input adds a new rationally independent row.
    pub fn insert(&mut self, row: Row) -> bool {
        self.insert_key(row).is_some()
    }
    /// Return the accepted primitive remainder. Its difference from the input
    /// lies in the previous row space (up to a nonzero rational scale).
    pub fn insert_basis(&mut self, row: Row) -> Option<Row> {
        self.insert_key(row).map(|key| self.pivots[&key].clone())
    }
    fn insert_key(&mut self, mut row: Row) -> Option<u64> {
        while let Some(k) = row.pivot() {
            self.max_row_terms = self.max_row_terms.max(row.len());
            if self.prefer_short_pivots {
                if let Some(pivot) = self.pivots.get_mut(&k) {
                    if row.len() < pivot.len() {
                        // Keep the sparser equation for this leading column,
                        // and continue reducing the displaced old pivot.
                        // The span of (stored rows, current row) is unchanged.
                        row.compact();
                        std::mem::swap(&mut row, pivot);
                        self.blocked_until.remove(&k);
                    }
                }
            }
            if self.pivots.contains_key(&k) {
                self.compress(k);
            }
            if let Some(p) = self.pivots.get(&k) {
                if matches!(row, Row::Big(_)) || matches!(p, Row::Big(_)) {
                    self.big_operations += 1;
                }
                row = row.eliminate_reusing(p, &mut self.scratch);
                self.operations += 1;
            } else {
                row.compact();
                self.pivots.insert(k, row);
                return Some(k);
            }
        }
        None
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn exact_dependencies_and_constant_column() {
        let mut r = Rank::default();
        assert!(r.insert(Row::new([(1, -1), (17, 1)])));
        assert!(!r.insert(Row::new([(1, -2), (17, 2)])));
        assert!(r.insert(Row::new([(1, 1), (17, 1)])));
        assert_eq!(r.rank(), 2);
    }
    #[test]
    fn promotion_does_not_wrap() {
        let m = i64::MAX;
        let a = Row::new([(1, m), (2, 1), (3, m - 1)]);
        let b = Row::new([(1, 1), (2, m), (3, m)]);
        let c = a.eliminate(&b);
        assert!(matches!(c, Row::Big(_)));
        let big_a = Row::Big(a.big());
        let big_b = Row::Big(b.big());
        assert_eq!(c.big(), big_a.eliminate(&big_b).big());
        let mut r = Rank::default();
        assert!(r.insert(a));
        assert!(r.insert(b));
        assert!(!r.insert(c));
        assert_eq!(r.rank(), 2);
    }
    #[test]
    fn extreme_coefficients_match_bigint_operations() {
        let values = [i64::MIN, i64::MAX, -i64::MAX, -1, 0, 1, 2, 17];
        for &x in &values {
            for &y in &values {
                let a = Row::new([(1, x), (2, y), (3, i64::MAX)]);
                let b = Row::new([(1, y), (2, x), (3, i64::MAX - 1)]);
                let exact = Row::Big(a.big()).eliminate(&Row::Big(b.big()));
                assert_eq!(a.eliminate(&b).big(), exact.big());
                let mut scratch = vec![(999, 999); 20];
                assert_eq!(a.eliminate_reusing(&b, &mut scratch).big(), exact.big());
            }
        }
    }
    #[test]
    fn single_column_fast_path_matches_general_exact_elimination() {
        let rows = [
            Row::new([(1, i64::MIN), (2, 17), (3, i64::MAX)]),
            Row::Big(vec![
                (1, BigInt::from(1) << 200),
                (2, BigInt::from(3)),
                (3, BigInt::from(5)),
            ]),
        ];
        for row in rows {
            for key in 1..=3 {
                let pivot = Row::Small(vec![(key, 3)]);
                let exact = Row::Big(row.big()).eliminate_column(&Row::Big(pivot.big()));
                assert_eq!(
                    row.clone().eliminate_reusing(&pivot, &mut Vec::new()).big(),
                    exact.big()
                );
            }
        }
    }
    #[test]
    fn rejected_compression_is_not_repeated_for_each_dependent_row() {
        let mut rank = Rank::default();
        let wide = Row::new((0..129).map(|k| (k, 1)).chain([(900, 1)]));
        let short = Row::new([(900, 1), (1000, 1)]);
        assert!(rank.insert(wide));
        assert!(rank.insert(short.clone()));
        assert!(!rank.insert(short.clone()));
        let before = rank.operations;
        assert!(!rank.insert(short));
        assert_eq!(rank.operations - before, 1);
        assert_eq!(rank.rank(), 2);
    }
}
