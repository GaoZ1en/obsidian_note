# Killing horizons

This directory develops and tests a CPS-normalized quantization framework for matter fields in spacetimes with Killing horizons. The primary benchmark is a real scalar field on the maximally extended non-rotating BTZ black hole with standard AdS boundary conditions.

## Scope

- fixed non-rotating BTZ background;
- real minimally coupled scalar field;
- free CPS, continuous real-frequency modes, and the Peierls kernel;
- Killing Hamiltonian and horizon flux;
- Hartle-Hawking-Israel state, KMS condition, and horizon regularity;
- renormalized local observables and a first $\lambda\phi^4$ tadpole test.

Dynamical gravity, rotating horizons, superradiance, and gauge constraints are deferred until the scalar benchmark is complete.

## Foundations

| File | Role |
|---|---|
| `model and geometry.md` | BTZ geometry, scalar theory, boundary conditions, and region choice |
| `free scalar CPS and modes.md` | Free covariant phase space, real-frequency modes, and causal completeness |
| `spectral completeness numerical check.md` | Weak numerical reconstruction of compactly supported test functions from the continuous spectrum |
| `Killing Hamiltonian and horizon flux.md` | Killing energy, Hamiltonian generation, and horizon balance laws |

## HHI state and free observables

| File | Role |
|---|---|
| `Hartle-Hawking-Israel state.md` | Global HHI state, exterior KMS representation, and Green functions |
| `mode-image Green function matching.md` | Analytic and numerical equality of the CPS mode sum and quotient image kernel |
| `renormalized stress tensor on BTZ.md` | Minimal-scalar point splitting, conservation, and Kruskal regularity |
| `free theory validation ledger.md` | Evidence and completion status for the free benchmark |

## Interaction and synthesis

| File | Role |
|---|---|
| `phi4 tadpole on BTZ.md` | First interacting and renormalization benchmark |
| `radial Born correction.md` | Exact sector resolvents and the evaluated first tadpole insertion |
| `horizon quantization formalism.md` | Framework distilled from the tested model |
| `TODO.md` | Concrete unresolved calculations and verification gates |

## Validation order

1. Fix the variational problem and BTZ geometry.
2. Verify the scalar equation, CPS current, and continuous-mode normalization.
3. Reconstruct the causal propagator from the antisymmetric mode sum.
4. Verify that $H_\chi$ generates the Killing flow.
5. Construct the HHI two-point function and check KMS, Hadamard form, and horizon regularity.
6. Compute a renormalized local observable.
7. Match the mode and image representations and verify the renormalized stress tensor in Kruskal coordinates.
8. Add the $\lambda\phi^4$ tadpole, evaluate its radial Born insertion, and update the general formalism only from passed checks.
