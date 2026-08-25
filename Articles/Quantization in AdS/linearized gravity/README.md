# Linearized Gravity in AdS3

This directory contains the AdS$_3$ linearized-gravity notes, the nonlinear Brown--Henneaux vacuum-orbit/CPS project, an external one-loop normalization note, the article draft, and a separate massive-gravity track. Long one-loop audits and conditional verification programs are kept under `archived/` so they remain available without controlling the active exposition.

## Active Core Notes

| File | Description |
|---|---|
| `linearize.md` | Perturbative Einstein action, linearized equations, gauge-fixed action, symplectic form, and boundary terms. |
| `general linearized theory.md` | General action-expansion framework around a background. |
| `eom.md` | Linearized Einstein equations, TT factorization, highest-weight modes, oscillator quantization, and pure-gauge checks. |
| `solving modes.md` | Coordinate and first-order solution analysis for TT modes in global AdS$_3$. |
| `gauge fixing.md` | Compatibility of TT gauge with the chosen asymptotic behavior. |
| `asymptotic behavior.md` | Brown--Henneaux falloffs and asymptotic estimates for metric perturbations. |
| `bulk reconstruction.md` | Scalar HKLL benchmark and its comparison with boundary-graviton reconstruction. |
| `point particle.md` | Massive point-particle mechanics, symplectic form, and quantization observables. |

## Charges and Algebras

| File | Description |
|---|---|
| `Noether charge.md` | Perturbative Noether charge formulas and their variations. |
| `reconsider the Noether charge.md` | Refined charge-variation analysis for the Virasoro brackets in the TT sector. |
| `Virasoro algebra.md` | Asymptotic Killing vectors, classical charge brackets, and the Virasoro algebra. |
| `Kac-Moody algebra.md` | Large-gauge mode charges and their Kac--Moody-type brackets. |
| `Euclidean correlation function of boundary stress tensor.md` | Euclidean boundary stress-tensor two-point function from Brown--York images of the normalized modes. |

## Nonlinear Brown--Henneaux and Higher Perturbations

| File | Description |
|---|---|
| `higher perturbations of linearized gravity modes.md` | Active metric/CPS derivation: nonlinear continuation, exact orbit pullback, higher charges, $\Omega_2$, equivariant Darboux map, exactly free reduced $H_0$, Wick-reference quantization, and the finite moment-map ambiguity. |
| `scripts/finite_diffeomorphism_green_kernel.wl` | Exact Green kernel for the exceptional orbit at finite circle diffeomorphism. |
| `scripts/hill_monodromy_low_mode_reconstruction.wl` | Implicit reconstruction of $H_{-1,0,1}$ from exceptional-orbit Hill monodromy. |
| `scripts/higher_charge_coordinate_domain_scan.wl` | Numerical transversality and coordinate-domain diagnostics for the higher-charge chart. |
| `scripts/nonlinear_charge_symplectic_benchmark.wl` | Nonlinear comparison of the direct orbit form, inverse charge Poisson matrix, and Neumann expansion. |

## External One-Loop Normalization and Scheme Dependence

| File | Description |
|---|---|
| `one-loop central charge normalization and scheme dependence.md` | GYM descendant determinant, CJ orbit/zeta $+13$ representative, finite Einstein-coupling redefinition, and the scheme-invariant meaning of $c_{\mathrm{phys}}$. |

## Article Draft

| File | Description |
|---|---|
| `article/1_model.md` | Global AdS$_3$, Brown--Henneaux conditions, linearized equations, and CPS setup. |
| `article/2_quantization.md` | Normalized Brown--Henneaux modes and oscillator quantization. |
| `article/3_algebras.md` | Virasoro charge-algebra derivation. |
| `article/Appendix A perturbative formulas.md` | Perturbative equations, symplectic structure, and surface-charge formulas. |
| `article/Appendix B falloffs and finiteness checks.md` | Boundary falloffs and finiteness checks. |
| `article/Appendix C gauge fixing and mode selection.md` | TT gauge, factorization, highest weights, and mode selection. |

## Massive-Gravity Track

| File | Description |
|---|---|
| `massive gravity/GMG.md` | Generalized massive gravity and its factorized TT equations. |
| `massive gravity/TMG.md` | Topologically massive gravity limit. |
| `massive gravity/NMG.md` | New massive gravity limit. |
| `massive gravity/a more general massive gravity.md` | Formal TT-sector classification of logarithmic phase spaces. |
| `massive gravity/gauge fixed action.md` | Gauge-fixed massive-gravity action calculations. |

## Archived Audits and Verification Scripts

| Path | Contents |
|---|---|
| `archived/backup.md` | Legacy higher-charge and quantization snapshot; historical $C+13$ statements are explicitly scoped to the CJ/reference representative. |
| `archived/one-loop-central-charge-audits/` | Five long CPS, measure, canonical-Wick, and scheme-dependence audit reports. |
| `archived/verification-scripts/` | Conditional Virasoro/normal-symbol/determinant programs and the Python/Sage checks used by the one-loop audits. |

The archive preserves derivations, failed branches, regulator diagnostics, and finite-cutoff evidence. Active claims are controlled by the two active synthesis notes above.
