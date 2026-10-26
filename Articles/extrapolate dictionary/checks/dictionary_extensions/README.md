# Dictionary extensions: independent verification record

These programs accompany [the extension report](../../half_bps_dictionary_extensions.md).
The mathematical input is commit
`aa128cb903e0f3750a16a69487d64013d38667b1`; the original audit baseline is
`ba8a9a5161a538c0d1addf7215c20cf64f4ddb79`.

## Reproduce the calculations

Run from this directory with Python 3 and SymPy, NumPy, SciPy and mpmath
installed:

```bash
python run_checks.py
```

The [runner](run_checks.py) removes each old result before executing its
program. It records exit status, timing, package versions and SHA-256
hashes of the actual sources, outputs and logs in
[execution_record.json](execution_record.json). A failed program, missing
result or nonzero exact residual makes the runner fail. Each program can
also be run separately. No private path or downloaded paper is needed.

The committed run uses Python 3.12.14, SymPy 1.14.0, NumPy 2.3.5,
SciPy 1.17.0 and mpmath 1.3.0. All eleven programs were executed from the
submitted directory. The record contains **199 exact zero residuals**,
with the additional exact inequality and numerical checks listed below.
The old Mathematica/xAct programs were not executed and their saved
outputs are not inputs to these programs.

## Programs and evidence

| Program | Actual output | Exact zero residuals | Additional evidence |
|---|---|---:|---|
| [Einstein tail current](cps_tail_checks.py) | [JSON](cps_tail_checks_results.json), [log](cps_tail_checks.log) | 12 | Direct variation of the five-dimensional Einstein potential, full current components and spatially paired tail coefficients |
| [Finite-$N$ protected algebra](finite_n_bps_checks.py) | [JSON](finite_n_bps_checks_results.json), [log](finite_n_bps_checks.log) | 23 | Exact Wick contractions; degree-six ranks for $N=2,\ldots,7$; 90 nonnegative principal minors; independent Cayley–Hamilton examples |
| [Common radial regulators](regulator_checks.py) | [JSON](regulator_results.json), [log](regulator_checks.log) | 10 | 24 complete radial integral samples, four separated stress/middle pairs and one plateau moment |
| [Massive uniform patch](massive_uniform_checks.py) | [JSON](massive_uniform_results.json), [log](massive_uniform_checks.log) | 11 | Six soft-retarded mass-integral samples and 4,000 parameter pairs checking both phase-derivative inequalities |
| [Soft uniform patches](soft_uniform_checks.py) | [JSON](soft_uniform_results.json), [log](soft_uniform_checks.log) | 9 | 20 exact tensor-component scaling inequalities and five sphere-average quadratures |
| [Full stress radial moments](ward_moment_checks.py) | [JSON](ward_moment_results.json), [log](ward_moment_checks.log) | 50 | Hankel mass-origin contact, future-cone fibers, Brown–York/BF normalization and retarded primitives |
| [Finite-switch source functional](ward_source_checks.py) | [JSON](ward_source_results.json), [log](ward_source_checks.log) | 23 | Ten numerical quadratures at 50-digit working precision; PBH source adjoints and finite-layer anomaly |
| [Generic $20'$ and $R^4$](generic_twenty_prime_checks.py) | [JSON](generic_twenty_prime_results.json), [log](generic_twenty_prime_checks.log) | 41 | All 1,296 indexed entries of each group projector; independent channel examples; 24-label contact combinatorics; full Ward shift and crossing |
| [Position-space matching](generic_position_checks.py) | [JSON](generic_position_results.json), [log](generic_position_checks.log) | 7 | All six independent tensor coefficients, including the free rational terms, from flat-box differential algebra |
| [Scalar/vector radial response](radial_response_checks.py) | [JSON](radial_response_results.json), [log](radial_response_checks.log) | 13 | Nine numerical groups: four radial jumps, one natural-wall condition, two sets of 36 bound samples and two circle-average identities |
| [Independent zero-mass endpoint screen](joint_limit_independent_checks.py) | [JSON](joint_limit_independent_results.json), [log](joint_limit_independent_checks.log) | 0 | 32 actual finite-cutoff quadratures at exactly zero free mass; integrator errors retained; no uniform bound inferred from the samples |

The 41 generic-tensor residuals include two full indexed-projector checks
added during integration. The earlier branch record had 39 checks; the
two new checks contract the explicit 20- and 15-element orthonormal bases
and compare every projector component. They are not inferred from the
selected polarization examples.

### What these calculations establish

An exact residual establishes its displayed identity or finite-dimensional
example. A sample is only a sample. The numerical programs retain their
quadrature errors or residuals; a claimed uniform bound does not follow
from a finite grid. For example, the separated timelike radial pieces
grow at a collinear threshold while their common-cutoff sum converges.
The numerical check illustrates that cancellation, and the Hankel and
integration-by-parts proofs establish the general statement.

The null-stratum estimates, strong distributional convergence, domain
invariance and positivity of the protected Hilbert construction rely on
the written analytic proofs. There is no numerical assertion of a full
interacting IIB Hilbert space or an all-orders extrapolate dictionary.

## Primary sources and independent reviews

- [Primary-source verification](source_verification.md): original IIB
  reduction, ordinary/reduced Mellin measures, leading string correction,
  exact PDF pages actually inspected and the normalization comparisons.
- [Protected-domain and full-Ward review](protected_and_ward_review.md):
  independent finite-$N$ quotient/domain argument, the Hankel corner and
  actual radial-cutoff removal.
- [Ward branch's joint-limit and endpoint review](ward_joint_endpoint_review.md):
  independent massive/soft estimates, annular gluing, common origin and
  direct Einstein endpoint pairing.
- [Regulator branch's cross-review](regulator_cross_review.md) and
  [its execution record](regulator_verification.md): fixed-parameter
  geometry, physical Ward data, endpoint cancellation and scope checks.
- [Fresh independent all-null review](joint_limit_review.md): actual free
  cones, the zero-free-mass phase gap, transfer-null integrability, full
  far-injection power budget and the normalized hard-null finite cover.

Cross-review records report what each reviewer actually reconstructed.
They do not count another program's saved output as an independent run.

## Mathematical scope

The new arbitrary joint-cutoff theorem concerns the complete **causal TT**
three-point coefficient with one common radial regulator. The additional
full Brown–York Ward forces retain the separately proved radial-first
order. The generic four-scalar source theorem is Euclidean and at tree
order, with the specified gravitational/internal-gauge anchoring and BF
scheme. The $R^4$ calculation is a boundary coefficient using independent
IIB string-amplitude input. Finite-$N$ operator positivity is established
for the protected holomorphic invariant-polynomial algebra. These scopes
are also stated in the corresponding main reports.
