# Verification Run Log

## 2026-08-30 — Stage-2.2 cleanup and Stage-3.0 endpoint/twist reduction

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
```

Result: all four commands exited with code `0`; every declared Wolfram check
V0--V32 passed after the final formula, documentation, and notation updates.
The separate xAct `canonical_contract` run returned `allZero=true` for V33,
with no load errors or messages.

Decisive analytic additions:

- all Jacobian and area logarithms use the dimensionless ratios
  $\log|\mathcal B_s/\mathcal B_{*s}|$ and
  $\log(\Omega_0/\Omega_*)$;
- changing the fixed references shifts $Y$ and $\gamma_s$ oppositely, leaving
  $\delta Y+\sum_s\gamma_s\delta(s_s^*\Omega_{sL})$ invariant;
- outer-cut fields integrated on $S_0$ carry explicit endpoint-map pullbacks;
- the HF term $-\Omega\bar\eta_A\delta L^A$ is integrated by parts under the
  endpoint compensator; the bulk remainder cancels by the Damour constraint,
  leaving
  $(C_G/2)\sum_s\int\widetilde\tau_{s i}\delta s_s^i$;
- after the Damour bulk restriction, the generator-chart constraint is the
  moment map for diagonal relabelling of the remaining corner block;
- Stage 3.0 quotients opposite boosts as proper normal-frame gauge;
- the reduced local corner block contains two relative spin-1 pairs, and the
  abstract interface endpoint potentials cancel under cotangent matching.

Decisive finite checks:

- V26 checks reference-scale independence;
- V27 checks functorial endpoint pullbacks;
- V28 checks the Damour integrating factor with a nonzero shear source;
- V29 checks twist and both branch initial-value reconstructions;
- V30 checks the endpoint curl and moment-map contraction;
- V31 checks rank/kernel before and after the constraint/quotient and the
  opposite-boost kernel;
- V32 checks two-cell endpoint-potential and two-form cancellation.
- V33 checks the tracefree conformal Lie contraction and the tangential
  integration-by-parts identity that produces the Damour coefficient.

Assumptions: four-dimensional vacuum; smooth caustic-free branches; selected
HF representative; fixed outer straightening of the endpoint compensator;
invertible endpoint maps; closed common cut or tangent smearing fields;
affine Damour transport; fixed nonzero reference scales; declared opposite-
boost quotient.

Not verified: a physical closing-wall action or its spin-1 port; the full
functional diffeomorphism quotient; nondegeneracy of the completed
spin-$0+1+2$ characteristic CPS; a chart through $\theta_s=0$; completeness,
surjectivity, positivity, continuum topology, or any quantum statement.

## 2026-08-30 — Stage-2.2 hardening

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
```

Result: all three commands exited with code `0`; every declared check V0--V25
passed after the final documentation update.

Decisive new checks:

- V19 no longer inserts three target antisymmetric matrices.  It checks the
  corner/normal-scale transformation at the one-form level after
  $m=\lambda_R+
  \sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|$;
- V23 starts from the affine reduced one-form and uses
  $\phi_s(v)=\phi_0+a_s\log v$ with nonzero conformal variation, moving
  $V_s$, fixed outer areas, and fixed affine lengths.  It constructs the
  affine and area one-forms, verifies their difference is the displayed
  $\delta Y$, and obtains zero curl residual;
- V24 builds left/right segment two-forms from eight independent parameters,
  constructs the rank-four matching constraint Jacobian, pulls the product
  form back to that locus, and verifies equality with the long form.  A
  generic pre-matching point has nonzero matching residual;
- V25 begins with three independent parameter sets, constructs both
  parenthesized matching reductions, and verifies that both equal each other
  and the long bulk form.

Analytic checks added in calculation 04:

- ordinary and fixed-$v$ variations are related by
  $\delta_\lambda F=\Delta_vF-(\chi/B)\partial_vF$;
- fixed affine length imposes
  $\int_1^{V_s}\Delta\mathcal B_s\,dv
  +\mathcal B_s(V_s)\delta V_s=0$;
- fixed outer-normalized variation obeys
  $C_x=C_v+v\delta\log V_sK$;
- the complete difference is
  $\Theta_X^\lambda-\Theta_X^A
  =C_G\delta Y+C_G\sum_s\gamma_s\delta\Omega_{sL}$, with $Y$ and
  $\gamma_s$ displayed explicitly;
- the outer conformal value is already contained in Reisenberger's bulk
  integral, so no universal traceless shape port is generated;
- the independent-data bulk theorem is
  $\iota^*(\Omega_1^{\rm bulk}+\Omega_2^{\rm bulk})
  =\rho^*\Omega_{12}^{\rm bulk}$.

Primary-source check: Reisenberger arXiv:1211.3880 equations (98)--(117)
distinguish variation at fixed outer-normalized chart from variation in the
$v\theta$ chart and allow the outer conformal profile to vary while fixing
the outer area density.  Ciambelli--Klinger arXiv:2607.07785v1 equations
(6)--(18) define $\pi_A$ through the rigging connection but do not specify a
double-null cross-rigging identification with $\widehat\omega_A$.  Contracting
their definition with the natural cross riggings gives
$\pi_A^{(\pm)}=\omega_A^{(\pm)}$.

Assumptions: four-dimensional vacuum; smooth positive conformal profiles;
finite caustic-free monotonic-area intervals; fixed generator labels,
endpoint maps, and affine endpoints; selected HF representative; fixed outer
areas or the explicit transformed abstract area ports.

Not verified by this run: a chart through $\theta=0$; a closing-wall action
or its port momenta; a complete geometric finite-cell quotient; the varying
endpoint-map spin-1 pullback; full gravitational gauge nondegeneracy;
functional completion, completeness, surjectivity, positivity, or continuum
topology.

## 2026-08-30 — Stage-2.1 corner, area-gauge, and composition closure

Superseded boundary: V15--V22 remain valid as the identities now stated in the
claim ledger.  The former V19 hand-inserted matrix check has been replaced;
V21 is subdivision consistency, not independent-data composition.  The
authoritative area transformation and composition statuses are the Stage-2.2
entry above.

Working directory:

```text
Articles/null CPS/double-null-gravity-characteristic-cps
```

Commands:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
```

Result: both commands exited with code `0`; V0--V22 passed.

Decisive new checks:

- V15 verifies $h=-m$ from the exact normal $2\times2$ block, the positive
  unified HF corner curl, and the exact area/boost polarization generator;
- V16 verifies
  $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$,
  the $\widehat\omega_A$ dictionary, and
  $\tau_{\ell A}=2\widehat\omega_A$;
- V17 verifies
  $\partial_v\log|\mathcal B/\mathcal B_*|
  =v\operatorname{tr}(K^2)/8$,
  $B_0=2/\theta_0$, and the controlled field variations in a diagonal finite
  mode;
- V18 reproduces the coefficient of the shared-corner conformal endpoint term
  in that mode;
- V19 verifies the one-form corner/normal-scale transformation after
  $m=\lambda_R+
  \sum_s\log|\mathcal B_{s0}/\mathcal B_{*s}|$; the complete scale remainder is derived
  in calculation 04 and exercised by V23;
- V20 verifies the first-jet mismatch norm
  $\mathcal J^2=\Delta\sigma^2+(\Delta\theta)^2/2$ and its generic nonvanishing
  before expansion/shear matching;
- V21 verifies two-segment subdivision additivity and three-segment
  subdivision associativity in a diagonal coupled mode;
- V22 verifies the diagonal focusing equation and the shear-free limit.

Analytic source check: HF arXiv:1611.03096 equations (4.29)--(4.30) define the
single bulk-plus-cut canonical split used for the repaired corner.  Its
$e^h=\sqrt{|H|}$ definition gives $h=-m$ directly.  Reisenberger
arXiv:1211.3880 equations (100), (105)--(118) were then used as regression
targets for the fixed-map area form, including the moving-lower-limit surface
term.  The project derivation is in calculation 03.

Assumptions: four-dimensional vacuum; smooth positive conformal profiles;
finite caustic-free affine intervals; fixed labels and endpoint maps;
monotonic area on the area-chart sector; fixed outer two-metric for the direct
Reisenberger equality; coherent full first-jet matching for composition.

Not verified by this run: an area chart through $\theta=0$; a unique
variable-shape closing-wall momentum; the varying endpoint-map/twist block;
spin-1 reduction; full gravitational gauge nondegeneracy; functional
completion, completeness, surjectivity, positivity, or continuum topology.

## 2026-08-30 — Stage-1.1 repair and coupled Stage-2 pullback

Superseded boundary: the Stage-2.1 entry above resolves the corner sign and
the fixed-map area-gauge comparison.  V8--V14 remain valid within their stated
scope; the historical "unresolved relative sign" wording below records the
earlier gate rather than the current project status.

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
$n_s=\mathcal B_s\ell_s$ with
$\mathcal B_s=d\lambda_s/dv_s$, that the isolated corner blocks have an
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
