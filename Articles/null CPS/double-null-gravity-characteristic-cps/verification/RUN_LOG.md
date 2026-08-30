# Verification Run Log

## 2026-08-30 — first Stage-0/1 run

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`.

Passed identities:

- V0: corrected null projector annihilates both null normals and is
  idempotent in an exact block-metric realization;
- V1: nonlinear affine Raychaudhuri solution and area transport;
- V2: exact spin-0 pullback integral, cancellation of nonlinear terms in its
  field-space curl, and outer-area differential;
- V3: $\int\Omega\theta=\Omega_L-\Omega_0$ and cancellation by the signed
  shifts at both endpoints;
- V4: determinant, tracefree conformal velocity, shear decomposition, and
  local diagonal-chart spin-2 contraction.

Assumptions: four-dimensional vacuum sheet equations; affine fixed generators;
fixed affine length in V2; $\sigma_{AB}=0=\omega_A$ in Stage 1; exact symbolic
algebra; no caustic inside the segment.

Not verified by this run: the outer-joint polarization or its cancellation,
cross-focusing and Damour constraints, existence of a vacuum development,
Stage-2 reduction, nondegeneracy, completeness, positivity, surjectivity,
continuum topology, or existence of a reduced action.

