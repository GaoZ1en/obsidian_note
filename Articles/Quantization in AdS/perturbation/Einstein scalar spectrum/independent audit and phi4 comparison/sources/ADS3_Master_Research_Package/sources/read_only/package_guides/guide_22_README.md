# Recursive Einstein cluster spectrum: reproduction and proof map

The main new result is the complete parity-resolved limiting spectral set of
`A_N(P,Q)` for every fixed `N,Q,Delta>1` as `P` grows. The recursion uses
physical lower-particle spectra, not labelled internal representations.
The accompanying Möbius functional calculus and finite accumulation-depth
theorem describe structure beyond a finite matrix representation.

## Proofs

Read `ALL_FIXED_Q_PARTITION_RECURSION.md` for the general theorem. For odd
particle number the limit holds along all large `P`; for even particle
number the equal-cluster channel is a right-budget symmetric or exterior
square according to `(-1)^(P+Q)`. In particular,

\[
\lim_{P\to\infty}^{H}\sigma(A_5(P,Q))
=\bigcup_{q\le Q}\Sigma_{4,q}
\cup\bigcup_{q_1+q_2\le Q}(\Sigma_{3,q_1}+\Sigma_{2,q_2}).
\]

`PARTITION_ALGEBRA_AND_FIVE_BODY_HVZ.md` gives the chiral special case in
detail, including the arbitrary-overlap Racah compactness proof, the
Möbius upper proof, an independent concrete Bose C*-filtration proof, and
the exact exchange treatment. Its final section proves that the full
fixed-particle spectral closure has finite Cantor–Bendixson depth.

The separately authored `ISOLATED_CLUSTER_MULTIPLICITIES.md` addresses
regular isolated cluster values; its hypotheses and counts are additional
to the spectral-set theorem. None of these results alone counts every
branch at nested cluster thresholds or excludes positive eigenvalues
approaching zero.

## New programs and the assertions they check

`verify_partition_hierarchy.py` checks exact partition Möbius cancellation,
joins, normalizers, and compressed-layer factors for `N=2,...,6`. It also
evaluates the genuinely different overlapping-subset Racah cutoffs, using
an independent fixed-endpoint formula. The numerical singular values are
explicit diagnostics, not interval-certified proofs. Its optional actual
five-body quasimodes verify rational source norms and the full Einstein
pair action for `4+1` and both `3+2` chiral sources.

`verify_fixed_q_exchange.py` checks both Clebsch-Gordan exchange signs,
finite right budgets, diagonal Bose multiplicities, and the budget
symmetric/exterior channels exactly. The `(1,1)` pair source has an odd
relative wavefunction in each chirality separately; it survives only the
correct diagonal Bose condition. Actual `N=5,Q=1` quasimodes test this
source and the `4+1` ground-cluster source against the full rational pair
operator. The exact squared residuals, rather than a tiny floating-point
eigenvalue, are the certificate data.

`five_body_comparator.py` constructs a finite cutoff of the explicit
lower-particle comparison operator in equation (8.1) of the fixed-`Q`
note. It retains the entire internal four-body spectrum and all
three-plus-two sums. It does not construct a target five-body matrix.
Its values are binary64 approximations; exact primary and kernel counts
remove auxiliary zeros. The fixed right subtraction is handled correctly
even for internal `p<q`.

### Oriented subtraction is a required interface check

The earlier four-body numerical convenience routine exchanges `p,q` when
`p<q` and returns residuals measured from `b_4(min(p,q))`. The recursive
theorem requires `b_4(q)`. The new wrapper adds the exact shift
`b_4(min(p,q))-b_4(q)` to every physical eigenvalue, including the earlier
baseline eigenspace. The three-body cluster routine is already oriented.

`--verify-oriented-only` independently compares the shifted four-body
characteristic polynomial with the old differential orbit Hamiltonian,
which does not use the Racah compression. Six nonempty low-degree
interfaces pass exactly. At `Delta=2`, `(p,q)=(0,2)` gives
`A_4=1152/7` with subtraction shift `144`; `(1,2)` gives `3936/35` with
shift `80`. These are interface checks, not a new low-energy spectrum table.

## Commands from the preserved workspace or extracted package root

The programs use Python with `sympy`, `numpy`, `scipy`, and `mpmath`.
Set `PYTHONDONTWRITEBYTECODE=1` so frozen imports remain untouched. The
top-level `run_verification.py` also reproduces the other research teams'
certificates in a separate output directory.

```bash
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/verify_partition_hierarchy.py --output /tmp/partition_check.json
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/verify_partition_hierarchy.py --only-bose --bose-degrees 12 24 48 --output /tmp/chiral_bose_check.json
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/verify_fixed_q_exchange.py --output /tmp/fixed_q_check.json
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/verify_fixed_q_exchange.py --bose-degrees 24 --output /tmp/fixed_q_p24_check.json
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/five_body_comparator.py --Delta 2 --Q 1 --R 12 --output /tmp/comparison.json
PYTHONDONTWRITEBYTECODE=1 python hierarchy_research/cluster/five_body_comparator.py --verify-oriented-only --output /tmp/oriented_check.json
```

`--only-algebra` omits frozen-backend quasimodes from the fixed-`Q`
interface script. `--workspace` selects another root for the quasimode
scripts. The comparator accepts `--analytic-root` or `ADS3_ANALYTIC_ROOT`
to locate a preserved Analytic package with its original relative layout.

### Frozen source dependencies, exactly

The quasimode scripts import only the first two source files below. The
comparator also imports the remaining six through the original dependency
chain. Files are read without modification.

```text
new_research/racah/all_n_recoupling.py
prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/su11_recoupling.py
prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/four_body_racah.py
prior_analytic/ADS3_Analytic_research_package/analytic_research/recoupling/cluster_spectrum.py
prior_analytic/ADS3_Analytic_research_package/fock_research/main/pair_gram.py
prior_analytic/ADS3_Analytic_research_package/fock_research/main/counts.py
prior_analytic/ADS3_Analytic_research_package/fock_research/general/fock_exact.py
prior_analytic/ADS3_Analytic_research_package/fock_research/three/three_body_nonchiral.py
```

`pair_gram.py` imports the free orbit-basis functions from `fock_exact.py`
at module initialization even though the comparator uses only its pair
coefficients. Therefore that dependency must be retained. The new
algebraic exchange and Möbius checks themselves use no old Hamiltonian.

## Recorded new evidence

All stated rational equalities and finite rank gates passed. The new
certificate files retain exact fractions and explicit numerical fields.

| Certificate | What was actually run |
|---|---|
| `partition_and_overlap_certificate.json` | Every partition graph for `N=2,...,6`; arbitrary-overlap cutoffs at two masses; two exact closed ground overlaps checked to high precision |
| `bose_cluster_certificate_small.json` | Three chiral five-body source channels at `P=6,8` |
| `bose_cluster_certificate_large.json` | The same channels at `P=12,24,48` |
| `fixed_q_exchange_certificate.json` | Twelve exact weighted CG cases, sixteen finite budget blocks, thirty four-body parity reductions, and actual `N=5,Q=1` sources at `P=6,12` |
| `fixed_q_exchange_certificate_p24.json` | The same exact interface checks and actual `N=5,Q=1` sources at `P=24` |
| `oriented_comparator_certificate.json` | Six exact shifted characteristic-polynomial comparisons with the independent orbit Hamiltonian |
| `five_body_comparator_q0_r16.json` | Full finite comparison at `Delta=2,Q=0,R=16` |
| `five_body_comparator_q1_r12.json` | Full finite comparison at `Delta=2,Q=1,R=12` |

For example, at `N=5,Delta=2,Q=1,P=24`, the scaled `4+1` Bose Gram is
`105182/105183`; its exact residual squared norm is
`19350887848/24627528625`. For the `3+2` source with pair `(1,1)`, the
scaled Gram is `361/360`, the target is `816/35`, and the exact residual
squared norm is stored in the certificate. These finite values illustrate
convergence but do not prove an asymptotic rate.

## Arithmetic complexity and its precise meaning

At fixed `Q`, the frozen four-body contraction has only `O_Q(1)` low pair
labels and `O_Q(p)` auxiliary channels at internal left degree `p`.
`NineJTable` constructs `O_Q(1)` Racah transforms of size at most `p+1`.
The recurrence/tridiagonal implementation uses `O(p^2)` storage and can
be bounded by `O(p^3)` conventional arithmetic even without using the
sharper tridiagonal bound. Each of the `O_Q(1)` 9j blocks is the explicit
product `A.T @ diag(middle) @ B`, costing `O(p^3)` dense arithmetic.
Filling the auxiliary matrix costs `O(p^2)` and its dense eigensolve
costs `O(p^3)`. Exact dimension counts at fixed particle number are lower
order and do not build physical eigenvectors.

Summing over `p<=R` and finitely many `q<=Q` gives an `O_Q(R^4)` arithmetic
bound for the comparison construction and dense diagonalizations. The
working transforms and largest matrix use `O_Q(R^2)` entries. Stored
positive spectra over all internal degrees also have `O_Q(R^2)` entries;
large scalar multiplicities are stored as exact counts instead of
repeating identical values.

This bound concerns the explicit finite comparison cutoff in ordinary
arithmetic. Rational bit lengths, requested eigenvalue accuracy, and
conditioning are additional costs. There is no proved uniform
`R(epsilon)` and no resulting end-to-end complexity bound for a certified
epsilon approximation of the infinite limiting set. The four-body
contraction bound is inherited from the earlier backend; the new theorem
justifies its use in the recursive comparison independent of target `P`.

The original research files were not edited. See `READ_COVERAGE.md` for
the exact semantic reading scope and `cluster_verification_summary.json`
for the new certificate inventory.
