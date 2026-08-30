# Verification Run Log

## 2026-08-30 — Stage-1.1 repair and coupled Stage-2 pullback

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`; every declared V0--V14 check passed.

New decisive checks:

- V8 verifies
  $\omega_A=(\omega_{A0}+\lambda D_A\theta_0/2)/F^2$ against
  $(\partial_\lambda+\theta)\omega_A=D_A\theta/2$ and records the
  angular restriction needed for a globally vanishing $\omega_A$;
- V9 verifies the unrestricted composition mismatch
  $2C_G\delta(r_1-r_0)\wedge\delta(r_2-r_1)$, shows that it has rank two
  before dynamical matching, and shows that affine slope matching kills it;
- V10 verifies $\sigma^2=\operatorname{tr}(A^2)/4$ and
  $V=\operatorname{tr}(A^2)/8$ in a non-diagonal two-function unimodular
  chart;
- V11 verifies the linearized focusing residual and the retarded Green formula
  for the finite mode $\phi=a\lambda$, $V=a^2$;
- V12 verifies the field-space curl of the complete one-form
  $2r^2\phi'\delta\phi-2r'\delta r$ for every pair among three independent
  truncation parameters;
- V12b verifies the general matrix curl, including the matrix
  $A\,B\wedge B$ term, in a four-parameter non-diagonal conformal profile,
  and separately verifies that its commutator trace vanishes on the physical
  symmetric-metric variations;
- V13 verifies that the diagonal pullback of two endpoint conformal values has
  one shared corner direction;
- V14 verifies the generic identity $\Omega\theta=(r^2)'$, so the
  $\kappa$ versus $\kappa+\theta$ endpoint shift is not tied to the
  shear-free solution.

Analytic source check: Ciambelli--Klinger arXiv:2607.07785v1 eq. (18) gives
$(\mathcal L_\ell+\theta)\omega_A
=D_A(\kappa+\theta/2)-D_B\sigma^B{}_A$ in two transverse dimensions, fixing
the positive sign and factor used by V8.  Reisenberger arXiv:1211.3880
eqs. (100), (105), and (117)--(118) were used only after the project pullback.
They confirm the conformal coefficient but show that
$n_s=(d\lambda_s/dv_s)\ell_s$, that the isolated corner blocks have an
unresolved relative sign, and that the field-dependent transformation also
produces a shared-corner conformal endpoint term.  Full equivalence is
therefore kept open.

Assumptions: four-dimensional vacuum; smooth positive unimodular conformal
profiles; finite caustic-free intervals; affine zero-shift generators; fixed
labels, embeddings, lengths, and normal frame; selected HF/LMPS
representative; Stage-1 abstract area/boost outer ports.

Not verified by this run: functional-analytic continuity on a completed
profile space; a concrete closing wall or traceless wall momentum; full
field-dependent equivalence with Reisenberger's area gauge; the spin-1
embedding pullback; full gravitational gauge nondegeneracy; completeness,
surjectivity, or continuum topology.

## 2026-08-30 — endpoint-complete Stage-1 repair

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Command:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
```

Result: exit code `0`; every declared V0--V7 check passed.

New decisive checks:

- V2 converts the finite sheet form to
  $C_G\delta\Omega_0\wedge\delta\Omega_L/
  (2\sqrt{\Omega_0\Omega_L})$ and to the square-root-area form;
- V3 cancels the two $-C_G\Omega_0\delta a_0/2$ sheet endpoint terms against
  the $C_G\Omega_0\delta a_0$ term in $\delta I_{S_0}$, leaving
  $C_Ga_0\delta\Omega_0$;
- V4 verifies the complete $\kappa$ versus $\kappa+\theta$ endpoint shift;
- V5 gives determinant `1`, rank `6`, and empty kernel for the extended
  area/boost-port matrix; its fixed-area pullback has rank `2` and kernel
  directions $\partial_{b_+},\partial_{b_-}$ before source reduction;
- V6 verifies sheetwise affine composition through a matched middle port;
- V7 distinguishes the pure spin-2 contraction
  $2\dot\phi\delta\phi$ from the full bare-measure density
  $2\Omega\dot\phi\delta\phi$.

Assumptions: four-dimensional vacuum sheet equations; affine fixed generators,
labels, embeddings, and lengths; $\sigma_{AB}^\pm=0=\omega_A$; positive area
and caustic-free $F_\pm>0$; selected HF/LMPS representative; area/boost outer
ports.

Not verified by this run: the geometric input
$\alpha_\pm=-\delta a_0$ beyond the cited analytic joint derivation;
preservation of the shear-free/twist-free truncation under transverse vacuum
evolution; a concrete closing wall; Stage-2 constraint reduction; Damour/
spin-1 reduction; or the full gravitational gauge quotient.

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
