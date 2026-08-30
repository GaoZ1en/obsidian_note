# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Correct under the classical, caustic-free, selected-HF-representative
conditions stated in calculations 04--05:** Stage 3.1 closes the endpoint
momentum type, fixed smooth invertible $f,g$ interface composition, and the
diagonal generator-chart moment map on the Raychaudhuri-reconstructed,
Damour-restricted full retained characteristic form.  The fixed-affine bulk
data are

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\widehat\omega_A,m_0)
$$

and carry an explicit reduced spin-0+spin-2 two-form in affine profile
variables, with $r_\pm=\sqrt{\Omega_\pm}$ reconstructed by a Green map from
$\bar q^\pm$.  The nonredundant extended corner coordinates are

$$
(s_+^A,s_-^A,\pi_{+},\pi_{-};
\Omega_0,\lambda_R,\bar h_{AB}),
$$

where
$\pi_s\in\Gamma(s_s^*T^*S_{sL}\otimes\operatorname{Dens}(S_0))$ and
$p_{sA}=\pi_{s i}\partial_A s_s^i$ with no extra determinant.
$\widehat\omega_A$ is reconstructed rather than counted again.  This is not a
representative-independent full gravitational CPS: the area chart does not
cross $\theta_s=0$, the physical closing-wall port has not been derived, and
the full functional gauge quotient/nondegeneracy remain open.  Opposite
boosts are a declared normal-frame gauge policy, not a proved kernel of the
unspecified closing-wall form.  The classical calculation chain is now
frozen pending a novelty/manuscript decision or a genuinely new obstruction.

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

## Fixed scope

The project is classical.  It concerns a caustic-free finite double-null cross
$X=N_+\cup N_-$ in four-dimensional vacuum Einstein gravity.  Generator
labels and embeddings are fixed in the Stage-2 bulk chart; Stage 3.1 varies
their endpoint maps in the corner sector.  Affine Damour transport has
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
- `verification/FINAL_CLASSICAL_THEOREM_LEDGER.md`: frozen authoritative
  classical theorem, composition, gauge, and open-item ledger.
- `verification/CLASSICAL_NOVELTY_AUDIT.md`: component-by-component focused
  literature and manuscript-direction audit.
- `verification/CLAIM_LEDGER.md`: authoritative claim status.
- `verification/RUN_LOG.md`: executed command, assumptions, result, and
  evidence boundary.
- `scripts/spin0_and_spin2_checks.wl`,
  `scripts/stage21_corner_area_composition_checks.wl`,
  `scripts/stage22_hardening_checks.wl`, and
  `scripts/stage30_endpoint_twist_checks.wl`,
  `scripts/stage31_classical_closure_checks.wl`: executable exact finite-mode
  checks V0--V41.
- `scripts/stage31_xact_residuals.wl`: independent xAct residual check for
  the tracefree Lie and cut integration-by-parts identities.
- `scripts/README.md`: command and evidence boundary.

## Source discipline

The derivation is action-first.  Primary sources are used only for the precise
pieces identified in the calculations.  In particular, the Reisenberger
forms are regression checks, not input assumptions.  The existing literature
note `Literature Notes/Quantization of Gravity on Null Hypersurfaces
(2607.07785v1).md` was read as a convention audit and was not modified.
