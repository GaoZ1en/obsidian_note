# TODO

## Reopened by the affine/log repair

- [ ] `T1-aff`: construct the maximal fixed-Sobolev/Mellin--Hardy range of
  center-regular Maxwell solutions smooth across $B$.
  Context: `10` proves finite-order modewise/rapid-angular criteria, but not a
  completed full-tower range.
  Check: both incoming $v\to+\infty$ limits and outgoing
  $u\to-\infty$ limits of $S_jc$, with corner matching.
- [ ] `T2-aff`: prove Lee--Wald equality on that affine range after fixing
  $\theta\mapsto\theta+dY+\delta B$, boundary action, boundary conditions,
  and endpoint polarization.
  Check: continuity of the total cut form and the exact proper-gauge kernel.
- [x] `T3 exactness lemma`: verify compact Maxwell representatives, causal
  exactness, compact-support cohomology, the Lorenz/master Green diagram, and
  gauge independence.
  Evidence: `calculations/11-maxwell-test-complex-exactness.md`.
- [ ] `T4-bulk`: identify the maximal subset of the kinematic trace/memory
  core realized by smooth-across-$B$ bulk solutions.
  Check: arbitrary $x\in\mathscr S$ must not be admitted unless it satisfies
  the affine criteria of `10`.
- [ ] `E-limit`: define a common ambient topology/direct system and prove
  symplectic and reduction convergence; until then retain only finite-mode
  coefficient identities.
- [ ] Bundle formulation: either keep the present global-potential trivial
  Chern sector (current default) or build a separate patchwise-connection
  superselection extension.  Do not mix the two tangent spaces.
- [x] Fixed-$s$ angular bookkeeping: record
  $F_{vA}\in H^s$ but $\mathcal E,\mathcal B\in H^{s-1}$ for an $H^s$
  master tower.
  Evidence: `00`, `02`, `03`, and `10`, section 8.
- [ ] Decide the kill test: upgrade the two-ended affine condition to a
  completed nontrivial theorem, or freeze the static patch.
- [ ] Do **not** start the Schwarzschild--de Sitter main project before the
  preceding kill test is decided.

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
- [x] Prove the dense analytic `T5-C*` boundary relation and normal GNS `T5-W*` theorem at $\beta_t=2\pi L$.
- [x] Prove the full CPS completion is too infrared-large for a regular BD covariance.
- [x] Add and pass `scripts/kms_mellin_checks.wl`.

## Historical checks retained from calculation 08

- [x] Prove `T4-kin`, the switch-dependent radiative/$\widehat a$/memory decomposition on a finite trace core.
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

- [ ] After the `T1-aff/T4-bulk` kill test only, start a separate Schwarzschild--de Sitter Maxwell project; do not reuse this directory as its draft.
- [ ] Use Nariai $dS_2\times S^2$ only if the two-horizon SdS route fails its first operator/range gate.
