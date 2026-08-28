# TODO

## Final kill-test repair — closed and frozen

- [x] Split `T1-aff(k,fixed-j)` from `T1-aff(k,full tower)`.
  Evidence: `10`, Theorem 6.1; `12`, sections 4--7.
- [x] Derive the exact partial fractions, incoming-only tail kernel,
  pole-resonance cancellations, exponential moments, corner condition, and
  highest-pole asymptotic.
  Evidence: `12`; `scripts/incoming_affine_kernel_checks.py`.
- [x] Prove unrestricted fixed-rectangle Goursat growth is exponential in
  $j$, and prove the $S_j$-compatible boundary multiplier has only
  fixed-strip polynomial loss.
  Result: unrestricted rapid-angular data are `false`; the compatible
  full-tower interior theorem is `conditional`, not an analytic/Gevrey
  theorem.
- [x] Split `Mellin-nec`, `Mellin-Sobolev-suff`, and
  `Mellin-Ckalph-suff` and remove the unspecified converse.
- [x] Close the center-Cartesian source-lift lemma and `T3-gauge-uniq`, then
  retain `T3-local` as `proved`.
- [x] Fix the two-sided-extension, KMS reconstruction, `T5-alg`, and
  `T4-kin` terminology.
- [x] Decide the kill test: freeze static-patch mode work and do not start an
  SdS project from this lane.

Frozen conditional boundaries, not active tasks in this directory:

- maximal completed `T1-aff`, `T2-aff`, and `T4-bulk`;
- compatible `T1-aff(k,full tower)` interior continuity;
- `Mellin-Ckalph-suff` and `T3-sharp`;
- completed stretched-horizon `E-limit`;
- a patchwise nontrivial-bundle extension.

## Historical checks retained from the first round

- [x] Fix the $dS_4$ static, hyperbolic, null, and affine/Kruskal coordinates.
- [x] Fix $\mathcal H^-$, $B$, $\mathcal H^+$ orientations and endpoint policy.
- [x] Define smooth-center, spectral-core, angular-weight, energy, and CPS spaces.
- [x] Derive $\theta$, $\omega$, and both raw horizon pullbacks from the action.
- [x] Separate generator constraints, corner integration data, endpoint data, and bulk evolution.
- [x] Separate proper gauge, charged endpoints, and relative-frame polarizations.
- [x] Reduce electric and magnetic sectors from the action without gauge fixing.
- [x] Give the full field-strength, potential, symplectic, Hamiltonian, and duality dictionaries.
- [x] Prove the smooth finite-energy $Q_E=Q_B=0$ statement on $B^3$.
- [x] Establish the Friedrichs domain, spectrum, and zero-energy classification of $H_j$.
- [x] Construct exact Darboux modes and $S_j(\omega)$, including the Gamma form.
- [x] Prove core/completed `T1-log` and exact incoming-to-outgoing logarithmic reconstruction.
- [x] Run exact $j=1,2,3$ component/action/Maxwell/Bianchi regressions.
- [x] Run phase, unitarity, Wronskian, reconstruction, and normalization regressions.
- [x] Record immediate novelty downgrades from 2019 and 2025 de Sitter horizon work.

## Historical checks retained from calculation 04

- [x] Pull the raw Maxwell Lee--Wald current from a finite constant-$\tau$ slice through finite characteristic triangles to the complete past-horizon limit.
- [x] Track the electric-parent/cut term at the bifurcation and past endpoints.
- [x] Prove the proper-gauge kernel equals the declared degeneracy space.
- [x] Derive the exact master/horizon normalization from Maxwell variables, not by convention.
- [x] Prove `T2-log` on the spectral core and CPS completion and update the ledger.
- [x] Add and pass `scripts/symplectic_normalization.wl` for $j=1,2,3$.

## Closed in calculation 05

- [x] Construct the weakly nondegenerate Weyl algebra and static complex structure.
- [x] Construct the one-particle/Fock representation without identifying it with Bunch--Davies.
- [x] Prove the positive self-adjoint static Hamiltonian normalization.
- [x] Prove and symbolically check absence of anomalous terms.
- [x] Construct the exact Fock scattering implementer.
- [x] Add and pass `scripts/fock_hamiltonian_checks.wl`.

## Historical checks retained from calculation 06

- [x] Construct the Friedrichs master retarded/advanced/causal kernels with fixed sign and jump.
- [x] Define the compact gauge-invariant Maxwell field-strength test quotient.
- [x] Derive the explicit Maxwell-to-master adjoint smearing map.
- [x] Lift the causal kernel and prove covariant gauge independence.
- [x] Invert the logarithmic horizon form and prove `T3-local` after the exactness lemma in `11`.
- [x] Add and pass `scripts/peierls_kernel_checks.py`, including spacelike vanishing samples.

## Historical checks retained from calculation 07

- [x] Define Bunch--Davies by global Euclidean restriction/affine-horizon positive frequency.
- [x] Pull the state through the gauge-invariant characteristic map.
- [x] Derive the exact Mellin/Bogoliubov normalization and Planck factor.
- [x] Prove the dense analytic `T5-alg` boundary relation and normal GNS `T5-W*` theorem at $\beta_t=2\pi L$.
- [x] Prove the full CPS completion is too infrared-large for a regular BD covariance.
- [x] Add and pass `scripts/kms_mellin_checks.wl`.

## Historical checks retained from calculation 08

- [x] Prove `T4-kin`, the switch-dependent radiative/$\widehat a$/memory decomposition on a finite logarithmic endpoint-value profile core.
- [x] Separate Coulomb/monopole flux, $j\geq1$ cut fields, large gauge, relative frames, and soft radiative sequences.
- [x] Classify finite-energy non-CPS profiles and affine traces versus weak logarithmic data.
- [x] Reconcile the half-horizon cut with the complete-horizon theorem of arXiv:2503.19957.
- [x] Add and pass `scripts/memory_sector_checks.py`.

## Historical checks retained from calculation 09

- [x] Introduce the DEM timelike stretched horizon with explicit boundary conditions.
- [x] Derive the exact Legendre-$Q_j$ edge DtN kernel and inverse-log edge Hamiltonian.
- [x] Derive the radiative master DtN and distinguish real-frequency non-limit from limiting absorption.
- [x] Identify the finite-harmonic linear $T^*\mathfrak g_B'$ coefficient mismatch.
- [x] Match the finite DEM pair to the split direct-null $B$-cut coefficient form.
- [x] Add and pass `scripts/stretched_horizon_checks.py`.

## Closed literature audit

- [x] Forward/backward citation search around arXiv:1906.01058 and arXiv:2503.19957; no exact half-horizon trace-space match located.
- [x] Compare the exact $B$-corner function space with the 2019 hard-data and 2025 complete-horizon formulations.
- [x] Audit general gauge-theory CPS/Peierls equivalence and null-data/Peierls prior art.
- [x] Re-audit novelty after the split `T2-log/T2-aff` and
      `T4-kin/T4-bulk` claims and `09`; retain the result as calibration rather
      than advertise isolated ingredients.

## Recommended follow-on

- [ ] Return to the action-first composition of Maxwell data on two
  intersecting null hypersurfaces, using this project only as a checked
  fixed-mode/corner comparator.
- [x] Do not continue static-patch mode calculations and do not start
  Schwarzschild--de Sitter or Nariai from this project.
