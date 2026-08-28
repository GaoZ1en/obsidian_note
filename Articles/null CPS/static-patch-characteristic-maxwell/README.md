# de Sitter Static-Patch Characteristic Maxwell

## Current verdict

**The zero-trace logarithmic radiation-field chain is closed; the affine
horizon/corner range is not.**  Calculations `00`--`09` are therefore not all
closed under their former theorem names.

Closed in the repaired scope:

- the action-first raw Maxwell pullback, generator constraints, trivial-bundle
  policy, and corner hierarchy;
- the two gauge-invariant $j\geq1$ masters, Friedrichs operator, exact
  $S_j(\omega)$, static Weyl/Fock/Hamiltonian chain;
- `T1-log`, the spectral radiation-field restriction theorem for
  $\mathfrak r_A=F_{vA}$, and `T2-log`, its zero-trace Lee--Wald theorem;
- `T3-local`, after the compact Maxwell test-complex/exactness lemma in `11`;
- `T4-kin`, the chosen trace-space canonical decomposition, with memory
  conjugate to $\widehat a=a+2\ell_h(x)$ rather than to an unexplained raw
  endpoint constant;
- `T5-W*`, the normal BD KMS theorem in the GNS von Neumann algebra, plus the
  dense analytic `T5-C*` boundary relation;
- the exact DEM DtN kernel, edge scaling, strong-resolvent radiative limit,
  and finite-harmonic cut-form identity.

Still conditional:

- the maximal `T1-aff` range of bulk solutions smooth across $B$;
- `T2-aff`, including genuine affine endpoint traces, memory, frames, and the
  choice of symplectic-potential representative/boundary action;
- `T3-sharp` endpoint-memory observables and the maximal `T4-bulk` range;
- `E-limit`, the completed stretched-horizon reduction/null-limit theorem.

Calculation `10` does obtain a nontrivial partial result: finite-order affine
regularity has an exact weighted-derivative/Mellin criterion, and smoothness
through $B$ requires both the incoming $v\to+\infty$ condition and the
opposite-end $u\to-\infty$ condition after multiplication by $S_j$.  This
keeps a narrow `T1-aff/T4-bulk` research lane open.  All other static-patch
extensions are frozen, and Schwarzschild--de Sitter must not start until this
kill test is resolved.

The existing product-background benchmark at `../null-characteristic-cps/` is read-only. Its closed claims are not reopened.

## Central classical result

For $P=E,B$, $j\geq1$, the action gives

$$
S=\frac12\sum_{P,j,m}\int d\tau\,d\rho
\left[(\partial_\tau\Psi^P)^2-(\partial_\rho\Psi^P)^2
-\frac{j(j+1)}{\sinh^2\rho}(\Psi^P)^2\right].
$$

The center-regular half-line modes have exact phase

$$
S_j(\omega)
=-\prod_{n=1}^j\frac{n-i\omega}{n+i\omega},
\qquad |S_j(\omega)|=1.
$$

On the zero-frequency-free logarithmic core,
$\mathfrak r_A=F_{vA}$ determines both master profiles, hence the unique
regular bulk Maxwell solution and its outgoing logarithmic data.  This is
`T1-log`.  The affine field
$r_A^{\rm aff}=F_{VA}=e^v\mathfrak r_A$ requires additional exponential
endpoint/Hardy control; before imposing any bulk range it must also be
supplemented by normal-electric and magnetic corner integration data.

## Directory map

- `calculations/00-geometry-conventions-and-claims.md` — metric, null/Kruskal coordinates, orientations, spaces, and the split T1--T5 claims.
- `calculations/01-raw-horizon-cps-and-constraints.md` — action variation, raw pullback, constraints, corners, proper gauge.
- `calculations/02-action-level-master-reduction.md` — vector harmonics, two masters, full dictionary, Hamiltonian, duality, $j=0$.
- `calculations/03-half-line-scattering-and-reconstruction.md` — operator theorem, Darboux modes, exact phase, `T1-log`.
- `calculations/04-symplectic-restriction-and-normalization.md` — finite-region Stokes proof, raw Maxwell/master normalization, endpoint term, proper-gauge kernel, `T2-log`, and the `T2-aff` ambiguity boundary.
- `calculations/05-weyl-fock-hamiltonian.md` — Weyl algebra, static complex structure, Fock representation, Hamiltonian, anomalous-term audit.
- `calculations/06-peierls-and-causal-propagator.md` — master causal kernel, Maxwell field-strength lift, characteristic inverse, `T3-local`.
- `calculations/07-bunch-davies-kms.md` — affine/Euclidean BD restriction, Mellin normalization, `T5-W*`/`T5-C*`, and the IR boundary.
- `calculations/08-zero-modes-memory-and-topology.md` — `T4-kin`, switch shear, conditional `T4-bulk`, and the complete-horizon memory comparison.
- `calculations/09-stretched-horizon-comparison.md` — proved DtN/cut coefficients and conditional `E-limit`.
- `calculations/10-affine-horizon-range.md` — affine/log distinction, finite-order/Mellin criteria, counterexample, and the two-ended `T1-aff(k)` range.
- `calculations/11-maxwell-test-complex-exactness.md` — compact source lift, exactness/cohomology lemma, Lorenz diagram, and gauge independence.
- `verification/CLAIM_LEDGER.md` — authoritative claim status and proof locations.
- `literature/literature-comparison.md` — known/new/cannot-say audit.
- `scripts/` — exact and numerical regressions with reproducible thresholds.
- `repair-audit.md` — old claim to repaired claim/status/proof-location audit.
- `roadmap.md` — dependency graph and publication gates.
- `TODO.md` — executable next steps.

## Reproduce the full checks

From this directory:

```bash
wolframscript -file scripts/geometry_hodge_checks.wl
wolframscript -file scripts/maxwell_master_reduction.wl
python3 scripts/scattering_phase_checks.py
wolframscript -file scripts/symplectic_normalization.wl
wolframscript -file scripts/fock_hamiltonian_checks.wl
python3 scripts/peierls_kernel_checks.py
wolframscript -file scripts/kms_mellin_checks.wl
python3 scripts/memory_sector_checks.py
python3 scripts/stretched_horizon_checks.py
python3 scripts/affine_horizon_checks.py
```

The repaired suite contains ten scripts.  See `scripts/README.md` for coverage,
expected terminal markers, environments, and numerical thresholds.  Passing
scripts establish only their finite identities and samples, never the affine
range, exactness, KMS, or phase-space limit theorems.

## Current technical claim, publication blockers, and next step

Current defensible technical claim: an action-first logarithmic
radiation-field/Lee--Wald/Peierls chain for source-free $dS_4$ Maxwell, plus a
finite-order two-ended affine range criterion and a kinematic endpoint
classification.  This is not yet a maximal affine phase-space theorem and is
not presently a defensible first-in-literature claim.

Current blockers:

1. the maximal bulk-compatible affine range (`T1-aff/T4-bulk`) remains conditional;
2. the endpoint-extended Lee--Wald theorem `T2-aff` depends on that range and on a declared boundary action/representative/polarization;
3. sharp-memory Peierls observables (`T3-sharp`) remain outside the compact local test algebra;
4. `E-limit` lacks a common ambient topology and convergence of symplectic reduction;
5. the exact conjunction was not located in one paper, but search absence is not novelty evidence.

Next research step: work only on the maximal `T1-aff/T4-bulk` range.  If the
finite-order two-ended condition extends to a genuine completed
Mellin--Hardy theorem with nontrivial corner compatibility, retain it as a
possible paper core.  If it collapses to a direct restatement of the known
global-horizon theorem, freeze this project and only then pivot to
Schwarzschild--de Sitter Maxwell; Nariai remains second choice.

## Stop/pivot rule

The kill test is `T1-aff/T4-bulk`, not the already-closed logarithmic chain.
Continue only if the two-ended $S_j$-dependent affine compatibility becomes a
maximal completed range theorem.  Otherwise freeze this directory as an
internal calibration note and pivot first to Schwarzschild--de Sitter
Maxwell, second to Nariai $dS_2\times S^2$.
