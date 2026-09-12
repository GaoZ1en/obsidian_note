# Linearized Gravity in AdS3

This directory contains the AdS$_3$ linearized-gravity notes, the nonlinear Brown--Henneaux vacuum-orbit/CPS project, an external one-loop normalization note, the article draft, and a separate massive-gravity track. Long one-loop audits and conditional verification programs are kept under `archived/` so they remain available without controlling the active exposition.

## Active Core Notes

| File | Description |
|---|---|
| `linearize.md` | Perturbative Einstein action, linearized equations, gauge-fixed action, symplectic form, and boundary terms. |
| `gravitation scalar interaction.md` | Minimally coupled Einstein–scalar theory in global AdS3: action/CPS expansion, free-mode perturbation theory, and explicit circular scalar backreaction before computing spectra. |
| `gravity scalar one and two particle spectrum.md` | Physical-mass single-particle spectrum and algebraic two-scalar primary reconstruction: 25 symbolic coefficients through level eight, low-spin shifts, and the universal higher-spin result. |
| `scripts/gravity_scalar_spectrum_checks.wl` | Exact circular constraints, canonical and response-action binding coefficients, resonant scalar frequency, and first degenerate-block checks. |
| `scripts/gravity_scalar_radial_blocks.wl` | Exact radial matrix elements and Hahn-polynomial reconstruction of the general two-scalar primary shifts. |
| `scripts/gravity_scalar_radial_block_checks.wl` | Symbolic checks through level eight, including unused off-diagonal residuals and high-spin comparisons. |
| `scripts/gravity_scalar_representation_checks.sage` | Independent exact-rational chiral representation, Casimir and reconstruction checks. |
| `scripts/gravity_scalar_primary_spectrum_data.wl` | Saved leading primary energy-shift coefficients for generic Delta, with radial index plus absolute spin at most eight. |
| `scripts/gravitation_scalar_interaction_checks.wl` | xAct checks of the retained Einstein–scalar expansion, including quadratic/cubic Einstein densities and their total derivatives. |
| `scripts/gravitation_scalar_solution_checks.wl` | Covariance identities, circular Einstein constraints, lowest-mode backreaction, and scalar-mode checks in fresh kernels. |
| `de Donder gauge accessibility.md` | Local accessibility, finite-time on-shell accessibility for the stated generic-mass expansion class, and the deferred resonant limit. |
| `scripts/de_donder_accessibility_checks.wl` | Gauge and Einstein identities, the off-shell boundary counterexample, and the on-shell trace resonance. |
| `Einstein response in de Donder gauge.md` | Bilinear scalar-response kernel, homogeneous-data convention, and proposed scalar/boundary-graviton free-energy cutoff. |
| `Einstein response kernel construction.md` | Explicit Euclidean de Donder kernel, three closed spin-2 coefficient functions, retarded continuation, and its test-source domain. |
| `Einstein scalar response prescription.md` | Finite scalar-source kernel: explicit static seed, opposite-frequency isometry recursion, conserved Abel prescription, no-log matching, and constraint-compatible data. |
| `scripts/einstein_scalar_kernel_completion_checks.wl` | Static seed/gauge checks, scalar ladders, finite-part prescription, and an evaluated finite source Gram matrix. |
| `scripts/einstein_kernel_checks.wl` | Covariant source decomposition, spin-2 bulk-to-boundary checks, scalar normalization, and exact kernel coefficient integrals. |
| `scripts/de_donder_onshell_response_checks.wl` | On-shell boundary constraints, gauge recursion, Proca reduction, radial response matrices, and explicit scalar-pair checks. |
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
