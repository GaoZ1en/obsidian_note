# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Correct under the fixed-generator, monotonic-area, common-endpoint
conditions stated in calculation 04:** Stage 2.2 closes the
affine-to-Reisenberger transformation at the one-form level, with an explicit
field-space generator and outer area-port shift.  It also proves independent-
data reduction of the spin-$0+2$ bulk form after full first-jet matching.  The
proposed
finite-cross data

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\widehat\omega_A,m_0)
$$

now carry an explicit reduced spin-0+spin-2 two-form in affine profile
variables, with $r_\pm=\sqrt{\Omega_\pm}$ reconstructed by a Green map from
$\bar q^\pm$.  This is not yet a representative-independent full
gravitational CPS: the area chart does not cross $\theta_s=0$, the physical
closing-wall port has not been derived, and the spin-1/embedding block and
full gauge quotient remain open.  A variable outer conformal metric does
**not** by itself require an independent shape port; such a pair is
closing-wall/polarization dependent.

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
  transformation; resolves the outer-shape question; constructs
  $\iota:\mathcal C_{12}\hookrightarrow\mathcal P_1\times\mathcal P_2$ and
  $\rho:\mathcal C_{12}\to\mathcal P_{12}$; and fixes the CK/Reisenberger
  normal-data dictionaries;
- independent spin-$0+2$ bulk reduction holds under continuity of
  $(\Omega,\bar q_{AB},\theta,\sigma_{AB})$, equivalently $(q_{AB},B_{AB})$;
  a full geometric finite-cell port theorem remains conditional on the
  closing action;
- Stage 3 is ready only in the controlled classical endpoint-map
  polarization using $\widehat\omega_A=\tau_{\ell A}/2$ and
  $(s_\pm^A,\widetilde\tau_{\pm A})$; Stage 3 has not been started.

## Fixed scope

The project is classical.  It concerns a caustic-free finite double-null cross
$X=N_+\cup N_-$ in four-dimensional vacuum Einstein gravity.  Generator
labels and embeddings are fixed in the first pass, and
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
- `verification/STAGE1_AUDIT_SUMMARY.md`: concise proved/conditional/open
  verdict.
- `verification/STAGE2_1_AUDIT_SUMMARY.md`: concise Stage-2.1 answer sheet and
  record of the superseded Stage-2.1 boundary.
- `verification/STAGE2_2_AUDIT_SUMMARY.md`: authoritative Stage-2.2 answer
  sheet and Stage-3 gate.
- `verification/CLAIM_LEDGER.md`: authoritative claim status.
- `verification/RUN_LOG.md`: executed command, assumptions, result, and
  evidence boundary.
- `scripts/spin0_and_spin2_checks.wl`,
  `scripts/stage21_corner_area_composition_checks.wl`, and
  `scripts/stage22_hardening_checks.wl`: executable exact finite-mode checks.
- `scripts/README.md`: command and evidence boundary.

## Source discipline

The derivation is action-first.  Primary sources are used only for the precise
pieces identified in the calculations.  In particular, the Reisenberger
forms are regression checks, not input assumptions.  The existing literature
note `Literature Notes/Quantization of Gravity on Null Hypersurfaces
(2607.07785v1).md` was read as a convention audit and was not modified.
