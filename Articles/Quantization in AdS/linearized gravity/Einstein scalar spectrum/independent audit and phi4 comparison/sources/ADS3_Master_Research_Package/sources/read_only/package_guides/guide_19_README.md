# Independent audit and new physical checks — 2026-10-19

All original research notes, previous reports, old code and delivered archives were treated as read-only inputs. New files are confined to this directory.

## Main findings

- The full order-`G` scalar Fock closure survives the renewed adversarial audit **in its specified action, boundary data and quantum prescription**. An explicit globally covariant canonical graviton-mixing countermodel shows why the leading-linear non-global Brown–Henneaux Ward identity cannot be replaced by global covariance alone. See `COUNTERMODELS_AND_ASSUMPTIONS.md`.
- The complete pair bands are strictly ordered for every `Delta>1`. A stronger positive comparison with the sum of independent left and right pair-zero collision generators has equality only in pair channels `(0,0),(2,0),(0,2)`. Fresh symbolic positive-coefficient certificates are supplied.
- The root researcher's sharp all-`N` upper-edge gap proof passes independent checks of the labelled three-body Gram, its `J=1` auxiliary dependency, the triangle identity, operator positivity and physical equality multiplicities. A new Beta projector formula and endpoint proof make that audit self-contained. See `PAIR_ORDERING_AND_GAP_AUDIT.md`.
- The root researcher's fixed-right-degree atomic limit for the complete non-saturated primary spectrum passes dimension and projector audits. A descendant extension gives the different full-free-level atomic measure. A balanced-degree dimension argument proves that the same normalized Hilbert–Schmidt approximation cannot be extrapolated unchanged. See `FIXED_RIGHT_DEGREE_ATOMIC_LIMIT_AUDIT.md`.
- The new stable-particle-number Hermitian construction genuinely establishes convergent expansions in `N^(-1/2)`. Its physical `(4,1)` Jordan example exposes a false stronger semisimplicity conjecture that the old report had not claimed. The crucial nonzero binary splitting vertex has now been checked directly against fresh original constraint and virtual boundary-exchange integrals. See `STABLE_PENCIL_ANALYTIC_AUDIT.md`.
- The proposed Kohno-flat residue obstruction was independently recomputed using differential pair Casimirs and their spectral projectors, with no old Racah implementation imported. A new degree-five calculation also excludes its unique exceptional Casimir shift, strengthening the obstruction to reorganizations that preserve the many-body eigenvectors up to known total-Casimir scalars. See `KOHNO_RESIDUE_OBSTRUCTION.md`.
- The natural nonchiral product-Dirichlet Markov interpretation fails for every `Delta>1`, already at two particles: the positive Bose polynomial `X²Y²` has a strictly negative generator value at its interior zero, with an explicit negative semigroup value for small positive time. This is stronger than the separate occupation-basis diagonal-similarity obstruction, while still referring to a specified positive cone. See `DIRICHLET_REALIZATION_AND_MARKOV_OBSTRUCTION.md`.
- The new all-degree protected doublet passes an independent reconstruction of its complete incoming support and local coefficients. A stronger first-principles explanation projects two simple symmetric seeds to primary states and uses their bounded pair channels to replace the pair operator by an affine Casimir polynomial. The first seed gives an exact `Q=1` eigenstate for every mass and any invariant pair kernel; the second joins it on the precise four-channel relation. Their exact nonzero ranges include new boundary states outside the stable particle-number range. Positive Einstein pair remainders make these exact primary minima in the stated mass range. See `PROTECTED_LOW_CHANNEL_THEOREM_AUDIT.md`.
- The complete low-channel intersection is now proved through cubic and quartic root-power inverse systems. The physical bridge uses an exact monomial unitary map and positive Fischer harmonic decomposition; normal-form upper bounds and explicit restriction-kernel lower bounds match in every degree. This yields the exact critical two-ladder multiplicities, the complete strict-low-mass `Q=1` and all-mass chiral minima, and arbitrary-right-degree intersection characters. Every bridge was independently checked in `LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md`; no numerical ranks substitute for the proof.

## New computations, distinguished from old cached verification

| File | Newly executed calculation | Scope |
|---|---|---|
| `pair_ordering_certificate.py` | Four exact positive numerator certificates | All integer radial labels and all real `Delta>1` |
| `kohno_differential_audit.py` | Differential-Casimir construction on labelled degrees 2–4 | No Kohno-flat extension of the fixed even Einstein residues by arbitrary odd residues |
| `kohno_casimir_shift.py`, `kohno_shift_higher_degree.py` | Independently raised CG columns and literal label permutations through degree 5 | The exceptional common pair-Casimir shift is also excluded, including isolated physical masses |
| `dirichlet_markov_counterexample.py` | Exact Jacobi polynomial and semigroup identity | Failure of positivity in the natural nonchiral product cone for all physical masses |
| `raw_jordan_vertex.py` | Six original constraint polarizations and their boundary integrals, without cache | The new `00+41 -> 20+21` vertex at `Delta=2` |
| `protected_doublet_independent.py` | Sixteen local matrix elements from differential pair Casimir interpolation; symbolic spectator counts and four Ward rows; full symbolic-`N` primary check at `(3,1)` | No original pair-action or quotient code imported |
| `generic_low_channel_audit.py` | Four free pair eigenvalues; unconditional first eigenfunctional and codimension-one second; physical-primary coefficient identities for exact nonzero ranges | All `P,N` symbolic, including the second seed's `N=P-1,P` extension |
| `low_channel_variational_certificate.py` | Three new positive rational certificates and all-label plateau increments | Chiral primary minima for every physical mass; `Q=1` minima for `1<Delta<=Delta*` |
| `source_provenance.json` | 108 archive manifest hashes and 92 corresponding local files | All hashes and byte comparisons agree; this is provenance, not a new spectral test |

The corresponding JSON files contain exact new results and explicit scope statements. The raw vertex has constraint contribution `223186 sqrt(5)/121275`, boundary contribution `-176986 sqrt(5)/121275`, and total normalized-pair value `8 sqrt(5)/21`; its creator-coordinate coefficient is `8/7`.

Each certificate records the scope of that particular calculation. Later
proofs can go further without retroactively broadening the recorded
experiment: in particular, the positive-residual certificate establishes
the operator bound, while `LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md` and
`recoupling/LOW_CHANNEL_POWER_IDEALS.md` supply the subsequent complete
kernel and multiplicity proof. Its `later_completion` field makes that
relationship explicit.

The previous final report, quickstart and verification summary were reread in full. The old mother note's §§71 and 76 were reread directly in full, together with the relevant logarithmic-kernel proof and interfaces. The delivered archive has 109 entries including its manifest; every one of the 108 listed file hashes passes. The old accumulated finite spectral tests were not broadly rerun or counted as new research.

## Reproduction

Run from the package root with Python 3 and SymPy installed. The bundled
earlier research directories must remain in place for the original-vertex
comparison; the new local-Casimir and positivity certificates are in this
directory.

```bash
python3 analytic_research/audit/pair_ordering_certificate.py

python3 analytic_research/audit/kohno_differential_audit.py

python3 analytic_research/audit/kohno_casimir_shift.py

python3 analytic_research/audit/kohno_shift_higher_degree.py

python3 analytic_research/audit/dirichlet_markov_counterexample.py

python3 analytic_research/audit/raw_jordan_vertex.py

python3 analytic_research/audit/protected_doublet_independent.py

python3 analytic_research/audit/generic_low_channel_audit.py

python3 analytic_research/audit/low_channel_variational_certificate.py
```

The raw solver is imported read-only from `fock_research/physics/raw_canonical.py`. Its benchmark spectrum functions are not called by the new raw vertex computation.

The complete kernel proof is in `LOW_PAIR_KERNEL_CLASSIFICATION_AUDIT.md`;
it audits `recoupling/LOW_CHANNEL_POWER_IDEALS.md` and requires no additional
numerical rank run. The seed construction, its exact boundary range, and
the connection to the positive-residual certificates are developed in
`PROTECTED_LOW_CHANNEL_THEOREM_AUDIT.md`.
