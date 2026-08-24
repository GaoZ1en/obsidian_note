# Horizon and Inner-Boundary Extension of Gravitational Energy

## Project question

This project asks whether the finite-action covariant-phase-space construction in `../article/` can be extended, without changing its formalism or conventions, from a global AdS$_3$ Cauchy slice with only an asymptotic timelike boundary to a partial Cauchy slice with a bifurcate horizon or entanglement-wedge inner boundary.

The starting result is the coefficientwise equality between the renormalized finite-action CPS charge and the background-subtracted Brown--York charge in Einstein AdS$_3$ with Brown--Henneaux boundary conditions. The new problem is to derive, from an enlarged finite action, the inner-boundary variational data, symplectic structure, Noether/area charge, and arbitrary-gauge canonical-energy completion.

The original `../article/` is an immutable convention source for this project. This directory contains the extension as a separate draft and does not modify the original argument.

## Formalism lock

The project inherits the following definitions and conventions from `../article/`:

$$
\kappa_{\mathrm p}^{2}=8\pi G,
\qquad
g_{\mu\nu}=G_{\mu\nu}+\kappa_{\mathrm p}h_{\mu\nu}
+\kappa_{\mathrm p}^{2}k_{\mu\nu}+O(\kappa_{\mathrm p}^{3}),
$$

$$
H_{\xi}=X_{\xi}\mathbin{\cdot}\theta-\alpha_{\xi},
$$

with the boundary Lagrangian retained in the action and every corner contribution retained in the integrated pre-symplectic potential. Off-shell symmetry identities are derived before imposing equations of motion or gauge conditions. In particular,

$$
\mathcal E^{(1)}[h]=0
$$

is kept distinct from

$$
\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=T.
$$

The finite gravitational current retains both terms

$$
H_{\xi,h}^{\mu}
=\xi_{\nu}T_{h}^{\mu\nu}
+\nabla_{\nu}S_{\xi,h}^{\mu\nu}
+\mathcal R_{\xi,h}^{\mu}.
$$

No improvement is allowed to discard the surface term without changing the integrated charge.

## Completion target

The final draft should derive, with fixed orientations and boundary conditions:

1. the action and variational principle for an asymptotic timelike boundary, a regulated inner boundary, and all joints;
2. the integrated pre-symplectic potential and form, including any non-vanishing inner or edge contribution;
3. the outer-minus-inner Noether-charge identity and its flux/integrability conditions;
4. the relation between bifurcation-surface Noether charge and area through second perturbative order;
5. the project-convention arbitrary-gauge completion

   $$
   E_{\mathrm{can,p}}^{\mathrm{GI}}[h]
   =E_{\mathrm{can,p}}[h]+\int_{\gamma}\Upsilon_{\mathrm p},
   $$

   together with the explicit convention map to 2501.08308v2;
6. a compact BTZ bifurcation-circle benchmark without anchors;
7. an AdS-Rindler interval benchmark with a joint cutoff prescription,
   vector-level Brown--Henneaux phase check, controlled projected-mode
   completion, and extension to the full metric tangent quotient by a global-
   Killing PSL section. The selected-mode raw anchor pole was withdrawn after
   correcting the real phase; the distinct unprojected transition pole is a
   generator-representative artifact rather than a physical endpoint anomaly;
8. a separate propagating-graviton diagnostic in a $d>2$ local Rindler collar,
   derived from Einstein--GHY at a brick wall, which states exactly when the
   wall flux vanishes and when a finite null-horizon flux survives.

## Claim ladder

The project keeps the following claim levels separate:

- Level 1: abstract finite-action variational identity with a regulated inner boundary;
- Level 2: integrable CPS charge and area identity for a compact bifurcate Killing horizon;
- Level 3: explicit compact BTZ component benchmark;
- Level 4: noncompact AdS-Rindler interval with controlled anchor limits;
- Level 5: an action-derived, slice-covariant JLMS-type classical identity on
  the full linear Brown--Henneaux metric quotient, with positive combined
  canonical energy and its optimal ordinary $H^2$ continuity threshold.
- Diagnostic branch, not a new theorem level: a $d>2$ radiative local-Rindler
  mode with complete Einstein--GHY wall data. It tests, but does not extend,
  the AdS$_3$ theorem.

No level implies a general crossed-product construction, a nonperturbative
subregion algebra, quantum JLMS/generalized entropy, or a theorem for
arbitrary dimensions or higher-derivative gravity.

## Files

- `article/`: publication-style manuscript assembled from the completed
  project.  It follows the same Markdown-to-TeX template as `../article/`,
  contains the full classical theorem, five technical appendices, a compiled
  PDF, and leaves only authorship/affiliations and acknowledgments as
  placeholders;
- `draft.md`: the clean derivation intended to become the final project draft;
- `expanded formulas.md`: explicit action, boundary, joint, symplectic, and charge coefficients as they are derived;
- `regulated horizon phase space theorem.md`: hypotheses, fixed/moving
  embedding distinction, conditional finite-action implication, and dressed
  classical identity;
- `horizon polarization and edge obstruction.md`: explicit BTZ Brown--York
  Neumann polarization, two chiral-mode tests, fixed-boost trace-Legendre
  obstruction, and the resulting area/boost edge problem;
- `moving embedding and edge phase space.md`: complete abstract moving first
  variation, constraint-completed wall embedding momentum, Harlow--Wu/Hayward
  edge potential, compact BTZ comparison, and the proposed section-change
  interpretation of $\Upsilon_{\rm p}$;
- `intrinsic moving boundary and edge realization.md`: off-shell arbitrary-
  displacement moving-wall geometry, the exact extended gauge degeneracy,
  the distinction between ambient pullback and boundary polarization, and the
  radial-homotopy/cotangent realization of the H51 finite-rank edge form;
- `moving anchors and unprojected mode space.md`: corrected global-Killing
  reducibility quotient, the distinction between the physical projector
  $P_A$ and the representative section $P_{\rm PSL}$, the historical
  representative-dependent endpoint finite part, and the full-space
  extremal/HW normal solver;
- `Banados canonical energy positivity and PSL anchor section.md`: classical
  Bañados/Schwarzian derivation of the complete positive canonical energy,
  its exact $\mathfrak{sl}(2,\mathbb R)$ kernel, the intrinsic modular form
  domain, and the optimal ordinary $H^2$ continuity threshold;
- `explicit regulators weak collar and time covariance.md`: uniform
  finite-order regulator estimate, explicit polynomial cutoff schedule,
  sharp point-anchor Sobolev threshold, weak fixed-width HW collar, and the
  time-covariant family of anchor/HW sections;
- `smooth BTZ moving polarization family.md`: non-collar finite-amplitude
  Kruskal-smooth exact family, explicit mixed wall polarization, uniform
  normal-translation Hamiltonian, and moving H0$_X$--H6$_X$ audit;
- `Hollands-Wald boundary value problem.md`: Jacobi/normal-jet formulation,
  two nonzero smooth compact BTZ completions, the AdS-Rindler Green inverse,
  and the proper selected-mode extremal vector at both anchors;
- `AdS-Rindler finite mode space and anchor obstruction.md`: normalized
  two-mode Jacobi/edge matrix, the per-frequency anchor obstruction, and the
  projected codimension-two fixed-anchor Sobolev space with physical mode
  normalization;
- `independent theory and calculation audit.md`: user-supplied independent
  audit, retained unchanged;
- `response to independent theory and calculation audit.md`: adjudication,
  dependency repair, corrected results, and post-repair evidence;
- `formula verification ledger.md`: source status and Mathematica/xAct evidence for every nontrivial identity;
- `compact BTZ benchmark.md`: compact regulator geometry, orientation table, and staged benchmark results;
- `btz_brick_wall_check.wl`: xAct/xCoba background and charge-normalization checks;
- `btz_inner_wall_joint_check.wl`: generic radial-gauge wall--slice orthogonality, Harlow--Wu endpoint, collar source/flux, and fixed-endpoint joint checks;
- `btz_collar_mode_check.wl`: xAct/xCoba checks for the collar-Dirichlet Brown--Henneaux perturbation;
- `btz_collar_einstein_check.wl`: independent local-jet component checks of the linear and second-order cosmological Einstein residuals;
- `btz_outer_charge_check.wl`: second-order renormalized Brown--York charge of the $m=1$ collar mode;
- `btz_canonical_energy_check.wl`: direct Lee--Wald current integration for two BTZ radii and two collar thicknesses;
- `bifurcation_noether_area_check.wl`: symbolic fixed-surface Noether/area expansion and the second-order normal-plane obstruction;
- `ads3_extremal_area_displacement_check.wl`: symbolic Fermi-frame expansion of the AdS$_3$ extremal-curve displacement and anchor endpoint terms;
- `AdS-Rindler anchor regulator.md`: exact double-cutoff intersection,
  anchor-joint geometry, strip widths, limit order, and corrected vanishing
  raw/proper endpoint tails;
- `ads_rindler_regulator_geometry_check.wl`: embedding, cutoff, joint-angle, strip-scaling, and anchor-tail checks for the $a=\pi/4$ interval;
- `ads_rindler_anchor_perturbation_check.wl`: explicit fixed-embedding Hayward-density expansion through second order and the bounded outer-strip limit;
- `ads_rindler_area_endpoint_check.wl`: explicit parallel-frame evaluation of all quadratic area sectors and the $V=-\zeta_\perp$ endpoint;
- `ads_rindler_inner_wall_current_check.wl`: finite-wall Einstein--Hilbert,
  GHY/Harlow--Wu descent, and Brown--York tail comparison at both anchors;
- `ads_rindler_inner_wall_endpoint_pullback_check.wl`: exact endpoint pullback
  of all independent $h$ and $k$ components from the global mode;
- `ads_rindler_inner_wall_endpoint_algebra_check.wl`: historical regression
  for the withdrawn wrong-radial-sign endpoint metric; not current evidence;
- `ads_rindler_outer_wall_charge_check.wl`: exact renormalized outer
  Brown--York coefficient and full finite-$R$ boundary-layer strip;
- `finite_action_gauge_cocycle_check.wl`: exact abstract regression for the
  canonical-energy difference, gauge cocycle, and completed-energy
  invariance;
- `btz_horizon_neumann_polarization_check.wl`: exact finite-wall momentum,
  fixed-$t$ and fixed-boost area families, left/right chiral modes,
  invariant horizon singularities, and trace-Legendre transgression;
- `moving_embedding_edge_algebra_check.wl`: exact algebraic checks of the
  combined gauge degeneracy, moving Brown--York work, Hayward polarizations,
  compact BTZ residual, and matched wall-plus-corner representative;
- `moving_btz_total_embedding_momentum_check.wl`: exact direct variation of
  the complete finite-wall BTZ Einstein--Hilbert, inner/outer GHY, and outer
  counterterm action, checked against the constraint-completed normal
  embedding momentum;
- `btz_smooth_moving_polarization_check.wl`: exact arbitrary-$R(\phi)$ vacuum
  equation, finite-wall Lagrangian flux, mixed source primitive, uniform
  normal work, endpoint zeros, and wall-to-corner transgression;
- `hollands_wald_boundary_value_check.wl`: exact compact Kruskal, Jacobi,
  normal-jet, AdS-Rindler Green-kernel, and proper-anchor-falloff checks;
- `ads_rindler_mode_space_check.wl`: normalized first-descendant generation,
  finite Jacobi matrix, density-tail checks, fixed-anchor determinant, and
  uniform odd-mode endpoint obstruction;
- `ads_rindler_projected_physical_basis_check.wl`: exact descendant boundary
  normalization, projected-basis lift ratios, and physical $H^s$ weights;
- `ads_rindler_projected_high_frequency_check.wl`: exact local complex
  two-frequency kernels and the first physical diagonal anchor-layer limit;
- `ads_rindler_moving_anchor_edge_check.wl`: exact endpoint-coordinate and
  oriented-momentum factorization of the reconstructed unprojected
  finite-part functional;
- `ads_rindler_unprojected_hw_trace_check.wl`: Jacobi-homogeneous endpoint
  compensation and the proper unprojected extremal normal trace;
- `ads_rindler_banados_positivity_check.wl`: exact interval-to-half-line map,
  PSL section, global-Killing complement, Schwarzian stress chain rule,
  Brown--Henneaux central-charge normalization, positive Hessian density,
  selected mode energies, and $H^2$ noncoercivity scaling;
- `ads_rindler_explicit_schedule_check.wl`: exact exponent audit for the
  explicit $(L,y,R)=(M^{10},\tfrac12M^{-10},M^{30})$ schedule, the symbolic
  region $\alpha>7/2$, $\beta>0$, $\gamma>2\alpha+3$, and the sharp
  second-derivative trace threshold;
- `ambient_extension_independence_check.wl`: exact right-inverse/projector
  algebra and completed-energy independence for proper, zero-charge changes
  of the ambient extension of the HW normal displacement;
- `local_rindler_radiative_graviton_check.wl`: xAct/xCoba check of a $d=4$
  transverse-traceless Rindler graviton, its Einstein--GHY wall momentum,
  compact-boost $O(\rho)$ wall curvature, and finite future-null flux;
- `ads_rindler_time_covariant_anchor_check.wl`: exact time-translation,
  conjugated projection, endpoint trace, and anomaly covariance algebra;
- `ads_rindler_proper_completion_scaling_check.wl`: exact RT switching
  profile and the necessary correlated mode/proper-completion scale;
- `ads_rindler_projected_wall_endpoint_check.wl`: corrected complex and
  projected low-mode finite-wall linear endpoint tensors;
- `ads_rindler_projected_wall_flux_check.wl`: numerical pointwise
  Brown--York flux falsification benchmark for four projected low modes;
- `ads_rindler_compensated_wall_scaling_check.wl`: numerical finite-wall
  scaling test of the moving-inner-embedding compensation on the wall core
  and along $R=L^2$ anchor points;
- `ads_rindler_symbolic_wall_endpoint_order_check.wl`: exact symbolic-
  frequency endpoint jet of all corrected complex wall metric components;
- `ads_rindler_symbolic_wall_momentum_order_check.wl`: exact symbolic-
  frequency Brown--York momentum jet, leading flux cancellation, and endpoint
  degree/small-wall bound;
- `ads_rindler_wall_closed_point_jet_check.wl`: complete rational
  two-frequency wall kernel using $s=r^2$, exact complex conjugation, and the
  joint $q^5y+q^6$ endpoint valuation;
- `ads_rindler_outer_brown_york_kernel_check.wl`: complete finite-cylinder
  renormalized Brown--York source curvature, with independent full-metric
  $m=2$ calibration and exact all-frequency zero;
- `ads_rindler_joint_closed_point_jet_check.wl`: complete rational Hayward
  area--angle kernel, exact outer-normal Gram reduction, and the global
  $yq^5$ mixed-chirality factor; passes $9/9$ exact tests;
- `ads_rindler_wall_momentum_crosscheck.wl`: direct full-metric versus ADM
  component check of the linearized wall momentum;
- `ads_rindler_symbolic_moving_joint_order_check.wl`: exact finite-jet
  endpoint order, leading cancellation, frequency degree, and small-wall
  scaling of the moving Hayward area--angle pair;
- `ads_rindler_projected_proper_transition_check.wl`: direct exact quadratic
  proper-profile integrals for projected and unprojected probes;
- `ads_rindler_projected_proper_bilinear_check.wl`: direct exact
  off-diagonal proper-profile integrals, including the two rank-completing
  cross anomalies;
- `ads_rindler_transition_anomaly_jet_check.wl`: exact endpoint-functional
  checks on mode and generic projected data;
- `ads_rindler_transition_jet_reconstruction_check.wl`: conservative
  reflected third-jet rank audit and unique full-rank reconstruction;
- `ads_rindler_transition_fifth_jet_rank_audit.wl`: conservative 21-
  coefficient rank audit, seven rank-completing exact cross values, unique
  solution, and unused projected checks;
- `ads_rindler_spectral_edge_completion_check.wl`: exact finite-rank edge
  one-form cancellation and diagonal error-decomposition algebra;
- `ads_rindler_adapted_spectral_projection_check.wl`: exact nested
  fixed-anchor projection algebra, ordinary-cutoff counterexample, density,
  and codimension-two checks;
- `ads_rindler_transition_two_frequency_kernel_check.wl`: direct layered
  finite-profile construction of the regulated same- and mixed-chirality
  transition kernels, with optional one-symbolic-frequency specialization;
- `ads_rindler_transition_compactified_mode_check.wl`: exact RT compactified
  Brown--Henneaux mode formulas, proper-profile derivative reduction, and
  finite frequency-degree audit;
- `ads_rindler_transition_point_jet_check.wl`: exact ambient point-jet
  construction of the projected two-symbolic-frequency Iyer--Wald density,
  endpoint-orientation calibration, real-sector factorization, and centre
  cancellation;
- `ads_rindler_transition_uniform_majorant_check.wl`: exact scalar
  inequalities, endpoint/centre integrals, the $L^{-2}$ transition majorant,
  and the revised explicit-schedule exponents;
- `two-frequency transition kernel.md`: definitions, present exact kernel
  theorem, point-jet factorization, and uniform projected transition bound;
- `ads_rindler_symbolic_hw_trace_check.wl`: exact projected normal-trace
  anchor cancellation, proper falloff, and symbolic-frequency growth;
- `field_dependent_hw_cocycle_check.wl`: exact HW projector, field-dependent
  variation, polarized completion, and gauge-invariance algebra;
- `classical_subregion_identity_algebra_check.wl`: exact quadratic
  normalization, geometric-area sum, and extended-section equality checks;
- `moving_edge_radial_homotopy_check.wl`: exact nonconstant closed-form,
  radial-homotopy, cotangent-graph, scalar-transgression, and
  gauge-core-versus-transition checks for the finite-rank edge realization;
- `btz_nonuniform_moving_polarization_check.wl`: exact arbitrary stationary
  wavy-wall normal, induced metric, extrinsic curvature, Brown--York momentum,
  and infinite-dimensional source-primitive checks;
- `btz_nonorthogonal_joint_check.wl`: exact tilted BTZ slice, relative boost
  angle, nonzero Hayward curvature, and geometric area--boost cotangent chart;
- `ads_rindler_projected_local_upsilon_check.wl`: corrected local Iyer--Wald
  calibration and six exact projected physical diagonal values through
  $m=5$;
- `TODO.md`: executable tasks and completion checks;
- `projected spectral edge completion.md`: adapted fixed-anchor spectral
  projections, the proved projected transition and full-regulator limits, and
  the optional auxiliary finite-rank edge cancellation;
- `field-dependent Hollands-Wald section.md`: continuous projected HW
  boundary-value section and its field-dependent cocycle;
- `Drafts.md`: unresolved choices and provisional routes;
- `../modular wedge corner benchmark/`: existing AdS-Rindler local-corner benchmark and scripts.

## Current phase

The project is closed as an action-derived, slice-covariant **classical
finite-action theorem on the complete Brown--Henneaux metric tangent
quotient**

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R),
\qquad \sigma>\frac52,
$$

per chirality, with the two real chiral quotients combined by an orthogonal
direct sum. The theorem uses

$$
L=M^\alpha,
\qquad \tanh(\epsilon/2)=\frac12M^{-\alpha},
\qquad R=M^\gamma,
\qquad \alpha>\frac72,
\qquad \gamma>2\alpha+3.
$$

The larger monomial compatibility region with an independent wall exponent is
$\alpha>7/2$, $\beta>0$, $\gamma>2\alpha+3$, but the complete wall majorant
has only been proved on $\beta=\alpha$. The earlier claim that nonzero endpoint values
require a physical moving-anchor fibration or a negative-Virasoro boundary
frame is withdrawn. Frequency-zero/one complements are exact global AdS
Killing vectors. The bounded section $P_{\rm PSL}$ fixes both endpoints
without changing the metric perturbation, while the residual modular vector
is the third reducibility direction. Therefore the projected H53 proof
extends to the full quotient. The complete canonical energy further has the
positive Bañados form

$$
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(\partial_sF_f)^2+(\partial_s^2F_f)^2\right]\,\mathrm ds,
$$

with kernel exactly $\mathfrak{sl}(2,\mathbb R)$. Its combined closed form is
continuous on the endpoint-fixed ordinary $H^2$ section and on the intrinsic
modular form domain; no $H^r$, $r<2$, continuous extension exists, and the
form is not coercive in the ordinary $H^2$ norm. The separated
$E_{\rm can,p}+\int\Upsilon_{\rm p}$ point-anchor chart still requires
$\sigma>5/2$. The fixed-embedding finite-cutoff identities and compact BTZ
benchmarks remain supported. The selected-mode AdS-Rindler phase has been
corrected at vector level: $\int\Upsilon_{\rm p}=32/105$, while the old raw
anchor divergence and fused-horizon discontinuity are withdrawn. The general
area-plus-canonical-energy statement is a vacuum
conditional implication under H0--H6, including common-topology,
differentiability, convergence, polarization, transgression, and compatible
HW-representative hypotheses. The moving first variation and total local
embedding momentum are derived, and a finite-dimensional nonzero smooth BTZ
family realizes H0$_X$--H6$_X$ with an integrable uniform normal translation.
This is not a universal moving polarization. Individual odd frequencies move
an anchor by at least $1/\sqrt2$, but correlated frequencies can cancel; the
$t=0$ fixed-anchor space is a closed codimension-two $H^s$ kernel for
$s>1/2$. Its physical normalization and six local diagonal $\Upsilon$ values
are now exact. The local complex two-frequency kernels, projected diagonal
$m^{-1}$ asymptotics, and a nonoptimal continuity theorem for $s>5/2$ are
also exact. A low-mode finite-wall probe shows that $P_A$ alone does not make
the Brown--York canonical-pair flux vanish, and a scalar transgression cannot
alter this obstruction. The compensated moving-inner-embedding lift suppresses
the same four-mode flux at fixed core points, where the observed $L^{-4}$ rate
is correct, and has a stronger anchor falloff along $R=L^2$. The complete
fused-horizon switching layer is different: its unprojected $O(1)$ endpoint
Wronskian is killed by $P_A$, while the surviving projected kernel is
$O((1+m+n)^6L^{-2})$. Exact symbolic-frequency endpoint jets
show that metric and Brown--York momentum begin at $e^{-2|u|}$, while their
leading contraction vanishes.  The complete rational two-frequency wall
kernel now proves, with $q=e^{-|u|}$ and $y=\tanh(\epsilon/2)$,

$$
|\mathcal F^{\rm wall}_{mn}|
\leq C(1+m+n)^7(yq^5+q^6).
$$

Thus the wall tail beyond the proper scale is bounded by
$C(1+m+n)^7(yL^{-5}+L^{-6})$ and is absolutely summable on the deliberately
nonoptimal range $s>15/2$.  The extra $q^6$ term corrects the earlier
unlicensed promotion of the $O(\epsilon q^5)$ finite jet to a complete-tail
bound. The required composite diagonal includes
$M^7/L^2\to0$ and $M^6L^4/R^2\to0$ on the proved
$\tanh(\epsilon/2)=1/(2L)$ class. The complete finite-wall compensated
kernel is now also $O((1+m+n)^7L^{-2})$: an exact twenty-five-representative
audit proves the $t=L^{-2}$ factor, integrable endpoint majorant, finite phase
bound, and fixed-anchor Wronskian cancellation. The complete raw far
moving-joint kernel is
$O(\tanh(\epsilon/2)(1+m+n)^6q^5)$; this corrects the earlier unproved
$O(\epsilon^2)$ prose estimate. Its compensated mismatch is
$O((1+m+n)^6L^2/R^2)$. The compensated outer Brown--York source remains
exactly zero. The outer article corner has the corrected two-scale mismatch
$O((1+m+n)^6[L^2/R^2+L^4/R^2])$. The symbolic
proper-profile finite parts have full rank in the conservative reflected
fifth-jet ansatz. Twenty-one independent exact diagonal/cross values uniquely
set all fourth- and fifth-jet coefficients to zero and reproduce three unused
direct finite-part checks. The unprojected cosine-$3$/cosine-$4$ density has
instead an ordinary $L^4/d$ endpoint pole, so these values are analytic finite
parts rather than ordinary unprojected integrals. On the projected
fixed-anchor domain, a separate two-symbolic-frequency point-jet calculation
now proves the complete transition result: every real sector pairing is an
ordinary integrable density, the endpoint distribution and bulk remainder
are zero, and

$$
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1(\gamma_A)}
\leq \frac{C(1+m+n)^6}{L^2}.
$$

This proof does not use the rank-21 finite parts. The exact finite-rank edge
one-form still cancels a selected coefficient-space curvature at finite
regulator, but its Darboux variables have not been identified uniquely with
the complete gravitational wall/joint variables. Ordinary Fourier cutoff
also failed to preserve fixed anchors; it is replaced by nested, uniformly
bounded adapted projections $Q_M$, whose exact regression passes $8/8$
tests. H59 is now unconditional for the projected transition, far-wall, raw
far-joint, complete finite-wall, outer source/corner, and compensated-joint
sectors. The declared schedule gives respectively $M^{-14}$,
$O(M^{-53})$, $O(M^{-154})$, $M^{-13}$, exactly zero,
$M^{-174}+M^{-34}+M^{-14}$, and $M^{-34}$. The old $M^{-12}$
finite-wall anchor-shift entry is removed as a double count. H60 proves
the sharp point-anchor threshold $s>5/2$, the time-conjugation algebra, and a
bounded independent second-jet coefficient collar. Because
$\Delta_Xg(P_{\rm HW}h,-V[h])=h$, every complete pulled-back action sector is
exactly fixed-section continuous and off-cut independent; the collar adds no
separate operator estimate. The relative-action Stokes identity plus the
complete regulator bounds proves vanishing total flux, slice independence,
and the time-fibre symplectomorphism. Consequently H53 is first proved on the
selected $\mathcal H_A^s$ section, $s>5/2$; H61 then extends the same
action-derived identity to the complete metric quotient by the
$P_{\rm PSL}$ global-Killing section.
The first post-H53 audit is H54: the complete pullback fixes the ambient
extended form and its gauge degeneracies, whereas cancelling a nonzero
finite-block boundary curvature requires a selected edge polarization.  The
H51 one-form has an exact cotangent-bundle realization. The action-derived
embedding/cross sector is not that auxiliary graph at finite regulator, but
its difference is the transition form and converges to zero on the projected
continuum domain.
H55 then constructs a genuinely nonuniform infinite-dimensional compact
polarization: for arbitrary smooth positive periodic $R(\phi)$ and stationary
wall shape $E(\phi)$, the Brown--York source is a local exact variation up to
a periodic derivative, so the integrated wall flux vanishes.  Time-dependent
walls remain open.  H56 supplies a genuinely non-orthogonal tilted-slice
component benchmark and identifies its geometric area--boost Darboux pair;
the combined time-dependent wall--joint--Harlow--Wu family remains open.
H57 factorizes the old representative-dependent finite part into oriented
endpoint traces; the PSL audit withdraws its interpretation as a physical
anchor Hamiltonian. H58's Jacobi-homogeneous endpoint compensation is exactly
the normal restriction of the same global-Killing subtraction. H59--H60
prove the explicit schedule, total-flux limit, weak infinite-mode collar, and
time-covariant section algebra. H61 applies the PSL section to obtain the
complete Brown--Henneaux quotient theorem. H62 identifies the combined form
with the positive Bañados Hessian and proves the optimal ordinary $H^2$
upper-bound threshold together with noncoercivity.
Current regression
counts are recorded in the audit response and formula ledger.

## Review hardening (2026-08-24)

The publication source now begins from the complete finite action and states
the boundary source/polarization conditions needed to turn the partial-slice
Stokes identity into slice independence.  Extended presymplectic degeneracy
is restricted to proper, source-preserving, zero-charge vectors; charged
Brown--Henneaux asymptotic diffeomorphisms are not quotiented.  The moving-
embedding pullback is kept separate from the additional existence problem for
a Hamiltonian wall polarization.

The HW ambient extension is independent only within the admissible class:
two extensions must have the same cut jets and asymptotic support and differ
by a proper zero-charge vector.  The cocycle $\Upsilon_{\rm p}$ changes with
that section; only $E_{\rm can,p}+\int\Upsilon_{\rm p}$ is independent.

Finally, the new $d>2$ local-Rindler appendix is a radiative diagnostic, not a
higher-dimensional theorem.  A transverse-traceless graviton has wall
curvature $O(\rho)$ on a fixed compact boost-time slab, but a slab reaching a
separated future-horizon cut has a finite null Wronskian flux.  Extremal/HW
gauge and radial regularity therefore do not by themselves remove the
horizon flux or an associated Hamiltonian term.  An exact AdS-Rindler
propagating-mode theorem with a common limiting polarization remains open.
