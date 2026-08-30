# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Not proven by the present calculation:** the proposed finite-cross data

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\omega_{A0},m_0)
$$

do not yet carry a proved, endpoint-independent reduced covariant phase space.
Stage 0 is fixed, and the nonlinear affine spin-0 constraint has been pulled
back explicitly.  The pullback leaves a nonzero finite-length sheet term and
outer-cut terms whose value depends on the normal/embedding polarization at
the two outer cuts.  Those outer data are absent from the displayed target.
Dropping them would manufacture the desired corner answer rather than derive
it.

What is established in the first round is narrower:

- the normalization, projector, boost, action-representative, and spin-1
  dictionaries are fixed in `calculations/00-conventions-action-and-unreduced-potential.md`;
- the exact shear-free Raychaudhuri reconstruction and the pullback of the
  sheet spin-0 potential are derived in
  `calculations/01-spin0-raychaudhuri-and-corner-reduction.md`;
- the shared initial area is imposed once, and the standard null--null joint
  supplies one area/boost pair, proportional in this convention to
  $-\delta m_0\wedge\delta\Omega_0$;
- neither $\theta_{+0}$ nor $\theta_{-0}$ has been shown to possess its own
  independent partner.  With fixed affine lengths the sheet bulk term pairs
  $\Omega_0$ with only the weighted combination
  $L_+\theta_{+0}+L_-\theta_{-0}$; allowing the outer cuts to vary moves this
  information into outer-cut area/normal data;
- a first spin-2 kinematic identity is recorded in
  `calculations/02-spin2-conformal-metric-kinematics.md`, but Stage 2 reduction
  has not been upgraded while Stage 1 remains open.

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
  Stage-1 pullback and the minimal outer-corner obstruction.
- `calculations/02-spin2-conformal-metric-kinematics.md`: kinematic spin-2
  regression only.
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
