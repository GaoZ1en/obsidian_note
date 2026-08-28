# de Sitter Static-Patch Characteristic Maxwell

## Current verdict

**The logarithmic chain and the fixed-$j$ affine kill test are closed; the
full angular affine range is not, and the static-patch project is frozen.**
Calculations `00`--`12` do not support a maximal affine phase-space theorem.

Closed in the repaired scope:

- the action-first raw Maxwell pullback, generator constraints, trivial-bundle
  policy, and corner hierarchy;
- the two gauge-invariant $j\geq1$ masters, Friedrichs operator, exact
  $S_j(\omega)$, static Weyl/Fock/Hamiltonian chain;
- `T1-log`, the spectral radiation-field restriction theorem for
  $\mathfrak r_A=F_{vA}$, and `T2-log`, its zero-trace Lee--Wald theorem;
- `T3-gauge-uniq` and `T3-local`, after the compact Maxwell
  test-complex/exactness and center-Cartesian lemmas in `11`;
- `T4-kin`, the chosen logarithmic endpoint-value profile decomposition, with memory
  conjugate to $\widehat a=a+2\ell_h(x)$ rather than to an unexplained raw
  endpoint constant;
- `T5-W*`, the normal BD KMS theorem in the GNS von Neumann algebra, plus the
  dense analytic `T5-alg` boundary relation;
- `T1-aff(k,fixed-j)`, the incoming-only pole-cancellation/exponential-moment
  theorem of `12`, together with `Mellin-nec` and
  `Mellin-Sobolev-suff`;
- the exact DEM DtN kernel, edge scaling, strong-resolvent radiative limit,
  and finite-harmonic cut-form identity.

Still conditional:

- `T1-aff(k,full tower)` on the $S_j$-compatible candidate range and the
  maximal `T1-aff` range of bulk solutions smooth across $B$;
- `Mellin-Ckalph-suff`;
- `T2-aff`, including genuine affine endpoint traces, memory, frames, and the
  choice of symplectic-potential representative/boundary action;
- `T3-sharp` endpoint-memory observables and the maximal `T4-bulk` range;
- `E-limit`, the completed stretched-horizon reduction/null-limit theorem.

Calculations `10` and `12` resolve the last kill test.  Unrestricted
full-tower Goursat evolution on a fixed Kruskal rectangle has genuine
$I_0(cj)$ growth, but the exact $S_j$-compatible boundary multiplier has only
fixed-strip polynomial loss.  The poles yield fixed-$j$ resonance and moment
conditions, not a forced analytic/Gevrey angular topology or a completed new
CPS range.  This is useful calibration but not enough article-level content;
further static-patch mode work and a Schwarzschild--de Sitter expansion are
both frozen.

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
- `calculations/07-bunch-davies-kms.md` — affine/Euclidean BD restriction, Mellin normalization, `T5-W*`/`T5-alg`, and the IR boundary.
- `calculations/08-zero-modes-memory-and-topology.md` — `T4-kin`, switch shear, conditional `T4-bulk`, and the complete-horizon memory comparison.
- `calculations/09-stretched-horizon-comparison.md` — proved DtN/cut coefficients and conditional `E-limit`.
- `calculations/10-affine-horizon-range.md` — affine/log distinction, precise Mellin tiers, counterexample, and fixed-$j$/full-tower theorem split.
- `calculations/11-maxwell-test-complex-exactness.md` — compact source lift, Cartesian-center lemma, exactness/cohomology, Lorenz diagram, and gauge-response uniqueness.
- `calculations/12-incoming-only-affine-range.md` — exact $S_j$ partial fractions, time kernel, moments/resonances, large-$j$ estimate, and kill verdict.
- `verification/CLAIM_LEDGER.md` — authoritative claim status and proof locations.
- `literature/literature-comparison.md` — known/new/cannot-say audit.
- `scripts/` — exact and numerical regressions with reproducible thresholds.
- `repair-audit.md` — old claim to repaired claim/status/proof-location audit.
- `kill-test-audit.md` — final continue/freeze decision and evidence boundary.
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
python3 scripts/incoming_affine_kernel_checks.py
```

The repaired suite contains eleven scripts.  See `scripts/README.md` for coverage,
expected terminal markers, environments, and numerical thresholds.  Passing
scripts establish only their finite identities and samples, never the affine
range, exactness, KMS, or phase-space limit theorems.

## Current technical claim, publication blockers, and next step

Current defensible technical claim: an action-first logarithmic
radiation-field/Lee--Wald/Peierls chain for source-free $dS_4$ Maxwell, plus a
fixed-$j$ incoming-only affine pole/moment theorem and a kinematic endpoint
classification.  The full angular compatible range, affine Hölder converse,
and maximal affine phase space remain conditional.  This is not a defensible
first-in-literature paper core.

Current blockers:

1. the maximal bulk-compatible affine range (`T1-aff/T4-bulk`) remains conditional;
2. the endpoint-extended Lee--Wald theorem `T2-aff` depends on that range and on a declared boundary action/representative/polarization;
3. sharp-memory Peierls observables (`T3-sharp`) remain outside the compact local test algebra;
4. `E-limit` lacks a common ambient topology and convergence of symplectic reduction;
5. the exact conjunction was not located in one paper, but search absence is not novelty evidence.

Next research step: return to the action-first composition problem for
Maxwell data on two intersecting null hypersurfaces.  Reuse the present
fixed-mode kernel and corner lessons only as checks.  Do not continue static
patch mode calculations and do not open a Schwarzschild--de Sitter main
project from this directory.

## Stop/pivot rule

The `T1-aff/T4-bulk` kill test is complete.  The incoming-only pole/moment
theorem survives at fixed $j$, but the full compatible interior estimate and
completed range do not close, and the exact $S_j$ boundary estimate does not
establish an analytic/Gevrey angular obstruction.  Freeze this directory as an internal
calibration note.  The next live question is two-intersecting-null-surfaces
Maxwell composition, not Schwarzschild--de Sitter or Nariai.
