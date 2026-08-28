# Roadmap

## Phase I — Gauge-theoretic finite-harmonic kill test

- [x] Create an independent project and freeze the two sibling projects as
  read-only lemma banks.
- [x] Fix action, metric, orientation, sector, endpoint policy, gauge groups,
  function-space layers, and claim vocabulary.
- [x] Derive the raw and generator-dressed null sheet potentials without gauge
  fixing the Maxwell action.
- [x] Separate electric moment-map matching from magnetic and
  connection/transition compatibility.
- [x] Compute the finite-harmonic compatibility-matrix rank, including the one
  $S^2$ redundancy between curvature and full connection matching.
- [x] Identify the unanchored relative-frame/outer-anchor obstruction.
- [x] Repair the main theorem by fixing the outer exact dressed-connection
  anchors and deriving $\lambda_{\mathrm{rel}}[r^E,p^E]$.
- [x] Verify the anchored dimension identity and the kernel
  $\mathfrak g_{+,\mathrm{proper}}\oplus
  \mathfrak g_{-,\mathrm{proper}}\oplus\mathfrak g_{\mathrm{diag}}$
  at finite cutoff.
- [x] Prove the finite-cutoff field-strength/master dictionary is invertible and
  that Maxwell corner matching is equivalent to matched master corner values.
- [x] Execute the Python and Wolfram regressions.

## Phase II — Bulk Goursat lift and Lee--Wald equivalence

- [x] Lift the read-only matched-$H^1$ master Goursat theorem to the full
  Maxwell proper-gauge quotient under the fixed-anchor policy.
- [x] Prove continuity on the rapid-angular Fréchet core with explicit adjacent
  angular seminorms.
- [x] Prove the full finite-diamond Stokes identity including outer endpoints.
- [x] Audit $\theta\mapsto\theta+dY+\delta B$ and endpoint polarization.
- [x] Prove rapid-core closedness, continuous gauge complement, and Hausdorff
  quotient independently.
- [ ] Complete a stronger shifted Sobolev/graph range theorem.  The current
  matched-$H^1$ graph is closed; no same-order theorem is inferred.

## Phase III — Full Maxwell cell composition

- [x] Define the complete null-interface trace object, not only a master
  profile.
- [x] Prove two-cell reconstruction and internal null-flux cancellation.
- [x] Upgrade the read-only three-cell regression to independent Maxwell
  potentials/frames, two diagonal groups, and all compatibility equations.
- [x] Prove reduction by stages and connection-compatibility transitivity.

## Phase IV — Hamiltonian and B1 quantization tests

- [x] Define induced characteristic Killing actions through the proved
  restriction inverse.
- [x] Execute differentiability and endpoint tests.  Result: $\partial_t$ and
  $\partial_z$ fail on the current finite cross; $SO(3)$ and cut gauge pass.
- [ ] Choose and prove one endpoint repair: flux-killing boundary conditions,
  endpoint-inclusive extension, or complete-half-cross finite-energy space.
- [ ] Prove the Peierls/symplectic relation and Weyl-algebra isomorphism.
- [ ] Keep Hilbert factorization, partial trace, Fock implementability, and B2
  cross covariance outside scope.

## Stop rules

- Do not enter Phase II if the fixed-anchor kernel or dimension identity fails.
- Do not identify an unanchored extended frame space with intrinsic
  field-strength data.
- Do not infer bulk surjectivity from sheet transport integration.
- Do not define a completion by the desired inverse and call the result an onto
  theorem.
- Do not enter Hamiltonian, Peierls, Weyl, or BRST work before Phases II--III
  close.
- Do not promote T-H or T-I while the finite-cross translation endpoint anomaly
  is nonzero.
