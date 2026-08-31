# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Established:** Stages 0--3 retain their classical characteristic-form and
interface-algebra scope. Stage 4.1 repairs the smooth splitting prescription,
global reference density and affine endpoint chart, preserves the original
marked sheets in a Cabet gauge, and constructs a partial completion
$C_{\rm pre}$ with explicit Volterra/Moser and linearized estimates.

**Not proved:** the full $C_{\rm SH}$, project-data framed germ/collar
bijection, full linearized tangent surjectivity, or $P_{\rm cell}^k$.
The intrinsic EH identity holds for compatible existing variations and on
the image of any actually constructed lift. Abstract extra outer ports are
excluded unless $P_{\rm red}$ supplies their action-derived definitions.

The new PDE result is an angular-flux difference estimate for already
existing reduced solutions, calculation 08.(4.3). The first missing
estimate is $R_\perp^k$, the outgoing transverse-derivative/trace bound
08.(6.4). The prescribed-rectangle $P_{\rm rect}^{s,r}$ remains conditional;
no finite-grid induction or quantization is begun.

The fixed-affine bulk data are

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\widehat\omega_A,m_0)
$$

and carry an explicit reduced spin-0+spin-2 two-form in affine profile
variables, with $r_\pm=\sqrt{\Omega_\pm}$ reconstructed by a Green map from
$\bar q^\pm$.  On the monotonic-area sector, the nonredundant corner coordinates are

$$
(s_+^A,s_-^A,\pi_{+},\pi_{-};
\Omega_0,\lambda_R,\bar h_{AB}),
$$

where
$\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$ and
$p_{sA}\nu_0=\pi_{s i}\partial_A s_s^i$ with no extra determinant.
$\widehat\omega_A$ is reconstructed rather than counted again.  This is not a
representative-independent full gravitational CPS: the area chart does not
cross $\theta_s=0$ (the affine potential 06.(9.2) does), the physical closing-wall port has not been derived, and
the full functional gauge quotient/nondegeneracy remain open.  Opposite
boosts are a declared normal-frame gauge policy, not a proved kernel of the
unspecified closing-wall form.  No quantization is included.

What is established is precise:

- the normalization, projector, boost, action-representative, and spin-1
  dictionaries are fixed in `calculations/00-conventions-action-and-unreduced-potential.md`;
- the exact shear-free Raychaudhuri reconstruction, Damour transport, and the
  endpoint-complete two-sheet spin-0 pullback are derived in
  `calculations/01-spin0-raychaudhuri-and-corner-reduction.md`;
- the two branch-adapted forms obey
  $\omega_A^{(+)}+\omega_A^{(-)}=-D_A m$; the shared datum is
  $\widehat\omega_A=(\omega_A^{(+)}-\omega_A^{(-)})/2$, and each branch is
  transported by its own Damour equation;
- sheet composition requires area plus dynamical slope/expansion matching;
  matching the geometric boost port $b$ does not impose continuity of
  $p_\Omega=-(\kappa+\theta/2)$;
- the unified HF cut representative has $h=-m$ and proves one initial pair
  $+C_G\delta m_0\wedge\delta\Omega_0$; the former negative sign mixed two
  different endpoint/joint splits and is withdrawn;
- with outer area/boost ports retained, $\theta_{+0}$ and $\theta_{-0}$ acquire
  partners through $\Omega_{+L}$ and $\Omega_{-L}$; with fixed outer areas they
  are no longer independent variations;
- $\kappa$ and $\kappa+\theta$ representatives give the same reduced spin-0
  form when both endpoint shifts are kept;
- the full coupled Raychaudhuri reconstruction, linearized Green map, reduced
  one-form, field-space curl, shared corner, and induced outer-port terms are
  derived in `calculations/02-coupled-spin0-spin2-reduction.md`;
- `calculations/03-stage2.1-corner-area-and-composition-closure.md` retains
  the correct HF corner sign and normal/twist algebra, and marks its former
  area/composition outline as superseded;
- `calculations/04-stage2.2-hardening.md` distinguishes fixed affine, fixed
  $v$, and fixed outer-normalized variations; derives the complete canonical
  transformation with dimensionless reference ratios and explicit endpoint
  pullbacks; resolves the outer-shape question; constructs
  $\iota:\mathcal C_{12}\hookrightarrow\mathcal P_1\times\mathcal P_2$ and
  $\rho:\mathcal C_{12}\to\mathcal P_{12}$; and fixes the CK/Reisenberger
  normal-data dictionaries;
- independent spin-$0+2$ bulk reduction holds under continuity of
  $(\Omega,\bar q_{AB},\theta,\sigma_{AB})$, equivalently $(q_{AB},B_{AB})$;
  a full geometric finite-cell port theorem remains conditional on the
  closing action;
- `calculations/05-stage3.0-endpoint-maps-twist-and-corner-reduction.md`
  derives
  $\Theta^{(1)}_{S_0}=(C_G/2)\sum_s\int
  \langle\pi_s,\boldsymbol\delta s_s\rangle$ from the HF null potential and
  Damour constraint, including the HF cut-term and compensator-independence
  lemmas;
- on the reconstructed and Damour-restricted characteristic surface, the
  combined bulk, corner, and matched-port contraction is
  $\iota_{X_\xi}\Omega_{\rm total}=\boldsymbol\delta H_\xi$ with
  $H_\xi=(C_G/2)\int\xi^A
  (p_{+A}+p_{-A}-2\Omega_0D_A\lambda_R)$;
- fixed invertible incidence maps obey
  $s_2\circ g=f\circ s_1$ and
  $\pi_1=(Df)^*g^*\pi_2$, which cancels both oriented endpoint Liouville
  forms and their curls and is functorial under composition;
- after the declared diagonal reduction, two relative
  endpoint-map/embedding/port pairs remain.  They are not asserted to be
  diffeomorphism-invariant physical pairs.
- `calculations/06-rigorous-civp-dictionary.md` proves the exact
  $\gamma,\chi,\underline\chi,\zeta$ dictionary, including
  $\zeta=-\widehat\omega$ in the symmetric normalized frame, and separates
  the smooth core equivalence from full $C_{\rm SH}$ and MSP completion;
  its new partial-completion estimates do not close those full maps;
- `calculations/07-framed-development-map-and-solution-space.md` defines the
  framed quotient and fixed-metric framing lemma, conditions project-data
  germ/collar bijectivity, and proves the intrinsic restriction/image
  identity without claiming full tangent surjectivity;
- `calculations/08-uniform-one-cell-characteristic-stability.md` gives the
  actual doubled Weyl system, angular-flux difference estimate, exact
  remainder equation and the first unclosed restart estimate;
- for every particular full-rectangle development that exists, the outgoing
  cross is geometric, EH current conservation equates the input/output
  forms under the stated side-boundary assumptions, and full-DND
  first-jet matching makes solution-space gluing agree with composition.

## Fixed scope

The project is classical.  It concerns a caustic-free finite double-null cross
$X=N_+\cup N_-$ in four-dimensional vacuum Einstein gravity.  Generator
labels and embeddings are fixed in the Stage-2 bulk chart; Stage 3.1 varies
their endpoint maps in the corner sector.  Stage 4 retains the optical
functions, null frame, labels, and endpoint markings in the solution space
and quotients only proper bulk diffeomorphisms.  Affine Damour transport has
$\kappa_\pm=0$.  No quantization, Weyl algebra, channel, Stinespring, or
post-CIVP construction belongs here.

## File map

- `calculations/00-conventions-action-and-unreduced-potential.md`: Stage 0,
  including action and joint representatives and the HF/user spin-1
  dictionary.
- `calculations/01-spin0-raychaudhuri-and-corner-reduction.md`: decisive
  Stage-1 pullback, outer-port policies, rank/kernel, and sheetwise gluing.
- `calculations/02-coupled-spin0-spin2-reduction.md`: coupled Stage-2
  Raychaudhuri/Green reconstruction, complete reduced form, double-null
  corner/ports, and Reisenberger regression.
- `calculations/03-stage2.1-corner-area-and-composition-closure.md`: unified
  HF corner sign, shared normal connection, and the superseded Stage-2.1
  area/composition outline.
- `calculations/04-stage2.2-hardening.md`: complete affine/area canonical
  transformation, outer-endpoint audit, independent-data reduction, CK
  dictionary, and Stage-3 gate.
- `calculations/05-stage3.0-endpoint-maps-twist-and-corner-reduction.md`:
  Stage-3.0/3.1 HF-to-endpoint derivation, Damour transport, full constrained
  moment map, boost policy, rank/kernel, general interface composition, and
  Reisenberger regression.
- `calculations/06-rigorous-civp-dictionary.md`: framed data spaces and the
  exact project/Luk/MSP/Cabet convention and scope dictionary.
- `calculations/07-framed-development-map-and-solution-space.md`: framed
  solution quotient, conditional project-data development, intrinsic
  restriction/image identity, output, and composition.
- `calculations/08-uniform-one-cell-characteristic-stability.md`: exact
  reduced-system splitting, flux stability and the $R_\perp^k$ stop line.
- `verification/STAGE1_AUDIT_SUMMARY.md`: concise proved/conditional/open
  verdict.
- `verification/STAGE2_1_AUDIT_SUMMARY.md`: concise Stage-2.1 answer sheet and
  record of the superseded Stage-2.1 boundary.
- `verification/STAGE2_2_AUDIT_SUMMARY.md`: authoritative Stage-2.2 answer
  sheet and Stage-3 gate.
- `verification/STAGE3_0_AUDIT_SUMMARY.md`: historical Stage-3.0 verdict as
  superseded by the Stage-3.1 repairs.
- `verification/STAGE3_1_AUDIT_SUMMARY.md`: Stage-3.1 closure verdict and
  assumptions.
- `verification/DEVELOPMENT_MAP_AUDIT.md`: authoritative Stage-4
  proved/cited/conditional/open audit.
- `verification/FINAL_CLASSICAL_THEOREM_LEDGER.md`: authoritative classical
  theorem, development, composition, gauge, and open-item ledger.
- `verification/CLASSICAL_NOVELTY_AUDIT.md`: component-by-component focused
  literature and manuscript-direction audit.
- `verification/CLAIM_LEDGER.md`: authoritative claim status.
- `verification/RUN_LOG.md`: executed command, assumptions, result, and
  evidence boundary.
- `scripts/spin0_and_spin2_checks.wl`,
  `scripts/stage21_corner_area_composition_checks.wl`,
  `scripts/stage22_hardening_checks.wl`, and
  `scripts/stage30_endpoint_twist_checks.wl`,
  `scripts/stage31_classical_closure_checks.wl`, and
  `scripts/development_dictionary_checks.wl`: executable exact finite-mode
  checks V0--V44.
- `scripts/stage31_xact_residuals.wl`: independent xAct residual check for
  the tracefree Lie and cut integration-by-parts identities.
- `scripts/stage41_truth_boundary_checks.wl` and
  `scripts/stage41_xact_checks.wl`: scoped Stage-4.1 regressions.
- `scripts/README.md`: command and evidence boundary.

## Source discipline

The derivation is action-first.  Primary sources are used only for the precise
pieces identified in the calculations.  In particular, the Reisenberger
forms are regression checks, not input assumptions.  The existing literature
note `Literature Notes/Quantization of Gravity on Null Hypersurfaces
(2607.07785v1).md` was read as a convention audit and was not modified.

## Stage-4.1 required verdict

1. **Full marked-sheet project-to-PDE dictionary: not proved.** The smooth
   core equivalence uses the fixed prescription $a_\pm[m]$; the direct
   Cabet gauge preserves both original sheets and outer cuts. Full
   connection/curvature completion is still open.
2. **$C_{\rm SH}$: incomplete.** $C_{\rm pre}$ and $DC_{\rm pre}$ are
   constructed with smooth/Lipschitz estimates for $3\le k\le s-3$.
   The full map, its derivative loss and $DC_{\rm SH}$ are not proved.
3. **Framed local/collar bijectivity: conditional.** Fixed-metric framing
   uniqueness is proved before optical breakdown; complete project-to-PDE
   initial data and finite-regularity gauge comparison remain required.
4. **Presymplectic identity: restriction/constructed-image only.** It holds
   for compatible existing variations and any actually constructed lift,
   with $\Omega_{\rm char}^{\rm intr}$. Full tangent-space surjectivity is
   not proved. Extended auxiliary ports require $P_{\rm red}$.
5. **$P_{\rm cell}^k$: not proved.** Angular-flux stability for existing
   reduced solutions is proved; the first missing estimate is $R_\perp^k$,
   calculation 08.(6.4), controlling mixed sources (6.3) and outgoing traces.
6. **$P_{\rm rect}^{s,r}$: still conditional.** No finite-grid proof or
   unproved numerical regularity threshold is retained.
7. **Next single PDE lemma:** prove $R_\perp^k$ from completed incoming
   norms with a tracked finite derivative loss. The upstream initial-data
   sublemma is $C_{\rm mix}$, calculation 06.(8.11).
