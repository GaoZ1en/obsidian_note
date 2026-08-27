# de Sitter Static-Patch Characteristic Maxwell

## Current verdict

Calculations `00`--`09` are closed, with each theorem carrying its explicit function-space scope. In particular:

- the action-first raw horizon CPS and constraint/corner hierarchy are explicit;
- Maxwell reduces to two gauge-invariant $j\geq1$ half-line masters from the action;
- the regular half-line operator, exact phase, and scattering normalization are proved;
- past-horizon restriction/reconstruction T1 is a bijection on the smooth spectral core and its declared CPS completion;
- the raw Maxwell Lee--Wald form, including the electric cut term and proper-gauge kernel, is symplectically equivalent to the bulk form (T2);
- the Weyl algebra, static complex structure/Fock representation, positive static Hamiltonian, and exact Fock scattering implementer are constructed;
- the gauge-invariant Maxwell advanced-minus-retarded propagator equals the inverse characteristic bracket on compact field-strength observables (T3);
- the algebraic Bunch--Davies restriction is $\beta_t=2\pi L$ KMS on the local-observable/BD-continuity characteristic algebra (T5);
- smooth source-free $j=0$ electric and magnetic fluxes on $B^3$ are absent;
- Coulomb/topology, $j\geq1$ cut fields, electric/magnetic half-memory, large gauge, relative frames, soft radiative families, and energy-only infrared data are disjointly classified on declared CPS and trace spaces (T4).
- the exact DEM edge DtN kernel and its null scaling are computed; the default null CPS differs from the DEM limit by $T^*\mathcal G_B'$, while the split-$B$ endpoint polarization gives an exact symplectic match.

The technical chain is complete on its stated spaces, but the project does not presently clear the publication novelty gate. T1--T4 meet the minimum internal closure rule; nevertheless hard horizon scattering, horizon photon symplectic quantization, source-free complete-horizon memory, general CPS/Peierls equivalence, and DEM edge scaling all have close prior art. The exact endpoint completion chosen in `08` is a raw trace completion, while its maximal regular-bulk range remains conditional. This directory is therefore retained as an internal calibration note, with Schwarzschild--de Sitter Maxwell as the preferred pivot.

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

On the zero-frequency-free characteristic core, $F_{vA}$ determines both master profiles, hence the unique regular bulk Maxwell solution and its outgoing horizon data. The raw sheet statement is more restrictive: before imposing the bulk range, $F_{VA}$ must be supplemented by normal-electric and magnetic corner integration data.

## Directory map

- `calculations/00-geometry-conventions-and-claims.md` — metric, null/Kruskal coordinates, orientations, spaces, T1--T5.
- `calculations/01-raw-horizon-cps-and-constraints.md` — action variation, raw pullback, constraints, corners, proper gauge.
- `calculations/02-action-level-master-reduction.md` — vector harmonics, two masters, full dictionary, Hamiltonian, duality, $j=0$.
- `calculations/03-half-line-scattering-and-reconstruction.md` — operator theorem, Darboux modes, exact phase, T1.
- `calculations/04-symplectic-restriction-and-normalization.md` — finite-region Stokes proof, raw Maxwell/master normalization, endpoint term, proper-gauge kernel, T2.
- `calculations/05-weyl-fock-hamiltonian.md` — Weyl algebra, static complex structure, Fock representation, Hamiltonian, anomalous-term audit.
- `calculations/06-peierls-and-causal-propagator.md` — master causal kernel, Maxwell field-strength lift, characteristic inverse, T3.
- `calculations/07-bunch-davies-kms.md` — affine/Euclidean BD restriction, Mellin normalization, local algebra, KMS, IR boundary, T5.
- `calculations/08-zero-modes-memory-and-topology.md` — stratified trace/CPS/energy classification, T4, and the complete-horizon memory comparison.
- `calculations/09-stretched-horizon-comparison.md` — direct-null versus stretched-horizon reduction and modewise null-limit test.
- `verification/CLAIM_LEDGER.md` — authoritative claim status and proof locations.
- `literature/literature-comparison.md` — known/new/cannot-say audit.
- `scripts/` — exact and numerical regressions with reproducible thresholds.
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
```

All nine scripts passed together on 2026-08-28 in Mathematica 14.3, Python 3.14.7, and NumPy 2.5.2. See `scripts/README.md` for coverage, expected terminal markers, and numerical thresholds.

## Current technical claim, publication blockers, and next step

Current defensible technical claim: an action-first, constraint-aware, symplectic and Peierls-compatible half-horizon reconstruction theorem for source-free $dS_4$ Maxwell on a precise CPS space, together with a finite trace-space classification and an exact endpoint-policy-dependent DEM comparison. This is a calibration result, not presently a defensible first-in-literature claim.

Current blockers:

1. the maximal bulk-compatible range inside the raw trace completion (`T1-trace`/`T2-trace`) remains conditional;
2. sharp-memory Peierls observables (`T3-max`) remain outside the compact local test algebra;
3. the real-frequency wall DtN has no pointwise null limit, only limiting-absorption/strong-resolvent convergence;
4. the exact conjunction was not located in one paper, but that search absence is insufficient to overcome the dense prior art around every conceptual component.

Next research step: preserve this project as calibration and pivot to Schwarzschild--de Sitter Maxwell, where the two-horizon geometry, nonconformal radial potential, and distinct endpoint data can support a genuinely new theorem. Nariai $dS_2\times S^2$ remains the second choice.

## Stop/pivot rule

The minimum paper requires closed T1--T4. KMS is an enhancement, not the sole novelty pillar. If the remaining work only reproduces two known conformal masters and known horizon quantization without a new complete-data, Peierls, zero-mode, or reduction theorem, retain this directory as an internal calibration note and pivot first to Schwarzschild--de Sitter Maxwell, second to Nariai $dS_2\times S^2$.
