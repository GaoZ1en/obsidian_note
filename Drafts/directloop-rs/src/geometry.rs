//! Notebook alphabet, in increasing order: -a, a, -b, b.
//! Integer keys have a leading base-4 digit 1; the empty loop is key 1.
use rayon::prelude::*;
use serde::{Deserialize, Serialize};

pub const MAX_LENGTH: usize = 24;
// SDE construction temporarily prepends four edges to a seed of length L-2.
// At L=24 the longest temporary word is 26, within the 31-edge u64 encoding.
const CAP: usize = 32;
const VEC: [(i32, i32); 4] = [(-1, 0), (1, 0), (0, -1), (0, 1)];
const D4: [[u8; 4]; 8] = [
    [0, 1, 2, 3],
    [2, 3, 1, 0],
    [1, 0, 3, 2],
    [3, 2, 0, 1],
    [0, 1, 3, 2],
    [1, 0, 2, 3],
    [2, 3, 0, 1],
    [3, 2, 1, 0],
];

pub fn encode(word: &[u8]) -> u64 {
    assert!(word.len() < CAP);
    word.iter().fold(1, |k, &d| {
        assert!(d < 4);
        (k << 2) | d as u64
    })
}

fn decode_into(mut key: u64, storage: &mut [u8; CAP]) -> &[u8] {
    assert!(
        key > 0 && (63 - key.leading_zeros()).is_multiple_of(2),
        "invalid loop key"
    );
    let n = (63 - key.leading_zeros()) as usize / 2;
    let word = &mut storage[..n];
    for d in word.iter_mut().rev() {
        *d = (key & 3) as u8;
        key >>= 2;
    }
    assert_eq!(key, 1);
    word
}

pub fn decode(key: u64) -> Vec<u8> {
    decode_into(key, &mut [0; CAP]).to_vec()
}

/// Booth's minimum rotation; ties use the earliest start, as in the notebook.
fn least_rotation(word: &[u8]) -> usize {
    let n = word.len();
    if n == 0 {
        return 0;
    }
    let (mut i, mut j, mut k) = (0, 1, 0);
    while i < n && j < n && k < n {
        let (a, b) = (word[(i + k) % n], word[(j + k) % n]);
        if a == b {
            k += 1;
            continue;
        }
        if a > b {
            i += k + 1;
            if i <= j {
                i = j + 1;
            }
        } else {
            j += k + 1;
            if j <= i {
                j = i + 1;
            }
        }
        k = 0;
    }
    i.min(j) % n
}

fn rotation_key(word: &[u8], start: usize) -> u64 {
    let mut key = 1;
    for &d in word[start..].iter().chain(&word[..start]) {
        key = (key << 2) | d as u64;
    }
    key
}

fn reduced(word: &[u8], stack: &mut [u8; CAP]) -> (usize, usize) {
    assert!(word.len() < CAP);
    let mut end = 0;
    for &d in word {
        if end > 0 && stack[end - 1] == (d ^ 1) {
            end -= 1;
        } else {
            stack[end] = d;
            end += 1;
        }
    }
    let mut begin = 0;
    while begin + 1 < end && stack[begin] == (stack[end - 1] ^ 1) {
        begin += 1;
        end -= 1;
    }
    (begin, end)
}

pub fn canonical(word: &[u8]) -> u64 {
    let mut stack = [0; CAP];
    let (l, r) = reduced(word, &mut stack);
    canonical_reduced(&stack[l..r])
}

fn canonical_reduced(word: &[u8]) -> u64 {
    if word.is_empty() {
        return 1;
    }
    let n = word.len();
    let mut v = [0; CAP];
    let mut best = u64::MAX;
    for sym in &D4 {
        for rev in [false, true] {
            for i in 0..n {
                v[i] = sym[if rev { word[n - 1 - i] ^ 1 } else { word[i] } as usize];
            }
            let start = least_rotation(&v[..n]);
            best = best.min(rotation_key(&v[..n], start));
        }
    }
    best
}

#[derive(Clone)]
struct Prefix {
    word: [u8; CAP],
    len: usize,
    period: usize,
    x: i32,
    y: i32,
}

fn enumerate(n: usize, state: &mut Prefix, out: &mut Vec<u64>) {
    let t = state.len;
    if t == n {
        if state.x == 0 && state.y == 0 && state.word[n - 1] != 1 && n.is_multiple_of(state.period)
        {
            let key = encode(&state.word[..n]);
            if canonical_reduced(&state.word[..n]) == key {
                out.push(key);
            }
        }
        return;
    }
    let old_period = state.period;
    let lower = state.word[t - old_period];
    for d in lower..4 {
        if d == (state.word[t - 1] ^ 1) {
            continue;
        }
        let (dx, dy) = VEC[d as usize];
        let (x, y) = (state.x + dx, state.y + dy);
        if x.abs() + y.abs() > (n - t - 1) as i32 {
            continue;
        }
        state.word[t] = d;
        state.len += 1;
        state.x = x;
        state.y = y;
        state.period = if d == lower { old_period } else { t + 1 };
        enumerate(n, state, out);
        state.len -= 1;
        state.x -= dx;
        state.y -= dy;
    }
    state.period = old_period;
}

pub fn basis(n: usize) -> Vec<u64> {
    assert!((4..=MAX_LENGTH).contains(&n) && n.is_multiple_of(2));
    let mut states = vec![Prefix {
        word: [0; CAP],
        len: 1,
        period: 1,
        x: -1,
        y: 0,
    }];
    // More jobs than workers allows stealing despite uneven prefix subtrees.
    let depth = (if n >= 18 { 8 } else { 6 }).min(n - 1);
    for t in 1..depth {
        let mut next = Vec::new();
        for s in states {
            let lower = s.word[t - s.period];
            for d in lower..4 {
                if d == (s.word[t - 1] ^ 1) {
                    continue;
                }
                let (dx, dy) = VEC[d as usize];
                let (x, y) = (s.x + dx, s.y + dy);
                if x.abs() + y.abs() > (n - t - 1) as i32 {
                    continue;
                }
                let mut v = s.clone();
                v.word[t] = d;
                v.len = t + 1;
                v.period = if d == lower { s.period } else { t + 1 };
                v.x = x;
                v.y = y;
                next.push(v);
            }
        }
        states = next;
    }
    let mut keys: Vec<u64> = states
        .into_par_iter()
        .flat_map_iter(|mut s| {
            let mut out = Vec::new();
            enumerate(n, &mut s, &mut out);
            out
        })
        .collect();
    keys.par_sort_unstable();
    keys
}

pub fn seeds_for_key(key: u64) -> Vec<u64> {
    let mut out = Vec::new();
    append_seeds(key, &mut out);
    out
}

fn append_seeds(key: u64, out: &mut Vec<u64>) {
    let mut storage = [0; CAP];
    let word = decode_into(key, &mut storage);
    let n = word.len();
    let mut seed = [0; CAP];
    for c in 0..n {
        let (aa, bb) = (word[c], word[(c + 1) % n]);
        if aa / 2 == bb / 2 || word[(c + 2) % n] != (aa ^ 1) || word[(c + 3) % n] != (bb ^ 1) {
            continue;
        }
        for alpha in [aa, bb] {
            seed[0] = alpha;
            seed[1] = alpha ^ 1;
            for i in 2..n - 2 {
                seed[i] = word[(c + i + 2) % n];
            }
            let mut best = u64::MAX;
            for sym in &D4 {
                if sym[alpha as usize] != 0 {
                    continue;
                }
                let mut k = 1;
                for &d in &seed[..n - 2] {
                    k = (k << 2) | sym[d as usize] as u64;
                }
                best = best.min(k);
            }
            out.push(best);
        }
    }
}

pub fn seeds(keys: &[u64]) -> Vec<u64> {
    let mut out: Vec<_> = keys
        .par_chunks(1024)
        .flat_map_iter(|chunk| {
            let mut seeds = Vec::new();
            for &key in chunk {
                append_seeds(key, &mut seeds);
            }
            seeds
        })
        .collect();
    out.par_sort_unstable();
    out.dedup();
    out
}

/// Coefficients of twice the notebook equation: a + lambda*b.
pub fn sde_terms(key: u64) -> Vec<(u64, i64, i64)> {
    let mut storage = [0; CAP];
    let seed = decode_into(key, &mut storage);
    assert_eq!(seed[0], 0);
    let n = seed.len();
    let mut w = [0; CAP];
    let mut terms = Vec::with_capacity(2 * n + 5);
    for beta in [2, 3] {
        w[..4].copy_from_slice(&[0, beta, 1, beta ^ 1]);
        w[4..n + 4].copy_from_slice(seed);
        terms.push((canonical(&w[..n + 4]), 2, 0));
        w[..4].copy_from_slice(&[beta, 0, beta ^ 1, 1]);
        terms.push((canonical(&w[..n + 4]), -2, 0));
    }
    let (mut x, mut y, mut delta) = (0, 0, 0);
    for i in 0..n {
        let (s, j) = if x == 0 && y == 0 && seed[i] == 0 {
            delta += 1;
            (1, i)
        } else if x == -1 && y == 0 && seed[i] == 1 {
            delta -= 1;
            (-1, i + 1)
        } else {
            (0, 0)
        };
        if s != 0 {
            w[..j].copy_from_slice(&seed[..j]);
            for t in j..n {
                w[t] = seed[n - 1 - t + j] ^ 1;
            }
            terms.push((canonical(&w[..n]), 0, 2 * s));
        }
        x += VEC[seed[i] as usize].0;
        y += VEC[seed[i] as usize].1;
    }
    if delta != 0 {
        terms.push((canonical(seed), 0, delta));
    }
    terms.sort_unstable_by_key(|t| t.0);
    let mut end = 0;
    for index in 0..terms.len() {
        let (k, a, b) = terms[index];
        if end > 0 && terms[end - 1].0 == k {
            terms[end - 1].1 += a;
            terms[end - 1].2 += b;
        } else {
            terms[end] = (k, a, b);
            end += 1;
        }
    }
    terms.truncate(end);
    terms.retain(|t| t.1 != 0 || t.2 != 0);
    terms
}

fn rooted_cycle(word: &[u8]) -> (u64, i32, i32) {
    let mut stack = [0; CAP];
    let (l, r) = reduced(word, &mut stack);
    let (mut ox, mut oy) = (0, 0);
    for &d in &stack[..l] {
        ox += VEC[d as usize].0;
        oy += VEC[d as usize].1;
    }
    let n = r - l;
    if n == 0 {
        return (1, 0, 0);
    }
    let mut best = (u64::MAX, 0, 0);
    let mut v = [0; CAP];
    for rev in [false, true] {
        for i in 0..n {
            v[i] = if rev {
                stack[r - 1 - i] ^ 1
            } else {
                stack[l + i]
            };
        }
        let start = least_rotation(&v[..n]);
        let k = rotation_key(&v[..n], start);
        if k < best.0 {
            let (mut x, mut y) = (ox, oy);
            for &d in &v[..start] {
                x += VEC[d as usize].0;
                y += VEC[d as usize].1;
            }
            best = (k, x, y);
        }
    }
    best
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash, Serialize, Deserialize)]
pub struct DoubleKey(pub u64, pub u64, pub i32, pub i32);

pub fn double_trace_key(w1: &[u8], w2: &[u8]) -> DoubleKey {
    let (mut u1, mut u2) = ([0; CAP], [0; CAP]);
    let mut best = DoubleKey(u64::MAX, u64::MAX, 0, 0);
    for sym in &D4 {
        for (v, &d) in u1.iter_mut().zip(w1) {
            *v = sym[d as usize];
        }
        for (v, &d) in u2.iter_mut().zip(w2) {
            *v = sym[d as usize];
        }
        let (a, x1, y1) = rooted_cycle(&u1[..w1.len()]);
        let (b, x2, y2) = rooted_cycle(&u2[..w2.len()]);
        let (mut dx, mut dy) = (x2 - x1, y2 - y1);
        if a == 1 || b == 1 {
            dx = 0;
            dy = 0;
        }
        let current = if a < b || (a == b && (dx < 0 || (dx == 0 && dy <= 0))) {
            DoubleKey(a, b, dx, dy)
        } else {
            DoubleKey(b, a, -dx, -dy)
        };
        best = best.min(current);
    }
    best
}

/// The notebook's packed trace key, used only for independent record comparisons.
pub fn notebook_packed_key(k: DoubleKey) -> u64 {
    let n1 = (63 - k.0.leading_zeros()) as u64 / 2;
    let n2 = (63 - k.1.leading_zeros()) as u64 / 2;
    let scale = 1u64 << (2 * n2);
    assert!(k.2.abs() + k.3.abs() <= 15);
    let offset: i32 = (-15..k.2).map(|x| 2 * (15 - x.abs()) + 1).sum();
    ((k.0 * scale + k.1 - scale) * 16 + n1 / 2) * 512 + (offset + k.3 + 15 - k.2.abs()) as u64
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct TraceRecord {
    pub group: DoubleKey,
    pub pair: [u64; 2],
}

pub fn trace_records(key: u64) -> Vec<TraceRecord> {
    let mut out = Vec::new();
    append_trace_records(key, &mut out);
    out
}

pub(crate) fn append_trace_records(key: u64, out: &mut Vec<TraceRecord>) {
    let start = out.len();
    let mut storage = [0; CAP];
    let word = decode_into(key, &mut storage);
    let n = word.len();
    let mut vertices = [(0, 0); CAP];
    for i in 1..n {
        let (dx, dy) = VEC[word[i - 1] as usize];
        vertices[i] = (vertices[i - 1].0 + dx, vertices[i - 1].1 + dy);
    }
    let (mut w2, mut twist) = ([0; CAP], [0; CAP]);
    for i in 0..n {
        for j in i + 1..n {
            if vertices[i] != vertices[j] {
                continue;
            }
            let w1 = &word[i..j];
            let m = n - (j - i);
            w2[..n - j].copy_from_slice(&word[j..]);
            w2[n - j..m].copy_from_slice(&word[..i]);
            let group = double_trace_key(w1, &w2[..m]);
            twist[..w1.len()].copy_from_slice(w1);
            for t in 0..m {
                twist[w1.len() + t] = w2[m - 1 - t] ^ 1;
            }
            let partner = canonical(&twist[..n]);
            out.push(TraceRecord {
                group,
                pair: [key.min(partner), key.max(partner)],
            });
        }
    }
    // Deduplicate this loop in the batch allocation itself. Retaining all raw
    // cuts until the batch-level sort can inflate the working set considerably.
    out[start..].sort_unstable();
    let mut end = start;
    for index in start..out.len() {
        if end == start || out[index] != out[end - 1] {
            out[end] = out[index];
            end += 1;
        }
    }
    out.truncate(end);
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn booth_matches_exhaustive_rotations() {
        for n in 1..=8 {
            for k in 0..4u64.pow(n as u32) {
                let w = decode((1 << (2 * n)) | k);
                let want = (0..n).min_by_key(|&i| rotation_key(&w, i)).unwrap();
                assert_eq!(least_rotation(&w), want);
            }
        }
    }
    #[test]
    fn reductions_and_symmetries() {
        assert_eq!(canonical(&[0, 1, 2, 3]), 1);
        let w = [0, 2, 1, 3, 0, 0, 2, 1, 1, 3];
        for sym in D4 {
            for i in 0..w.len() {
                let v: Vec<_> = (0..w.len())
                    .map(|j| sym[w[(i + j) % w.len()] as usize])
                    .collect();
                assert_eq!(canonical(&v), canonical(&w));
                let rev: Vec<_> = v.iter().rev().map(|d| d ^ 1).collect();
                assert_eq!(canonical(&rev), canonical(&w));
            }
        }
    }

    #[test]
    fn length_24_encoding_and_temporary_words() {
        for n in [24, 26, 31] {
            let word = vec![3; n];
            assert_eq!(decode(encode(&word)), word);
        }
        let rectangle: Vec<_> = [vec![0; 6], vec![2; 6], vec![1; 6], vec![3; 6]].concat();
        let key = canonical(&rectangle);
        assert_eq!(decode(key).len(), 24);
        assert_eq!(canonical(&decode(key)), key);
        const { assert!(MAX_LENGTH + 2 < CAP) };
    }
}
