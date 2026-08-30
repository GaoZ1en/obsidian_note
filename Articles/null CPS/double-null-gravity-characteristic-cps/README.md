# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Correct under the declared finite-cell port policy:** Stage 1 now has an
endpoint/corner-complete spin-0 form.  The proposed full finite-cross data

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\omega_{A0},m_0)
$$

still do **not** carry a proved reduced covariant phase space, because Stages 2
and 3 remain open.  The finite-length spin-0 sheet terms are now interpreted as
outer-port structure rather than an obstruction.  Keeping area/boost ports at
$S_+$ and $S_-$ gives a pointwise rank-six form in the truncated sector;
fixing the outer areas and reducing their source momenta leaves the single
initial area/relative-boost pair.

What is established is precise:

- the normalization, projector, boost, action-representative, and spin-1
  dictionaries are fixed in `calculations/00-conventions-action-and-unreduced-potential.md`;
- the exact shear-free Raychaudhuri reconstruction and the pullback of the
  complete two-sheet spin-0 potential are derived in
  `calculations/01-spin0-raychaudhuri-and-corner-reduction.md`;
- the combined two-sheet endpoint variation plus the single initial joint
  cancels the $\Omega_0\delta a_0$ normalization terms and proves one pair
  $-C_G\delta m_0\wedge\delta\Omega_0$;
- with outer area/boost ports retained, $\theta_{+0}$ and $\theta_{-0}$ acquire
  partners through $\Omega_{+L}$ and $\Omega_{-L}$; with fixed outer areas they
  are no longer independent variations;
- $\kappa$ and $\kappa+\theta$ representatives give the same reduced spin-0
  form when both endpoint shifts are kept;
- the missing $\Omega$ in the bare-measure spin-2 density is repaired in
  `calculations/02-spin2-conformal-metric-kinematics.md`; Stage 2 remains
  kinematical until a real constraint pullback is performed.

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
- `calculations/02-spin2-conformal-metric-kinematics.md`: kinematic spin-2
  density convention and chart regression only.
- `verification/STAGE1_AUDIT_SUMMARY.md`: concise proved/conditional/open
  verdict.
- `verification/CLAIM_LEDGER.md`: authoritative claim status.
- `verification/RUN_LOG.md`: executed command, assumptions, result, and
  evidence boundary.
- `scripts/spin0_and_spin2_checks.wl`: executable exact checks.
- `scripts/README.md`: command and evidence boundary.

## Source discipline

The derivation is action-first.  Primary sources are used only for the precise
pieces identified in the calculations.  In particular, the Reisenberger
forms are regression checks, not input assumptions.  The existing literature
note `Literature Notes/Quantization of Gravity on Null Hypersurfaces
(2607.07785v1).md` was read as a convention audit and was not modified.
