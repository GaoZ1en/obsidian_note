# Finite Double-Null Characteristic CPS for 4D Vacuum Gravity

## Direct verdict

**Correct under the declared finite-cell port policy and fixed-generator
gauge:** Stage 1.1 is repaired, and the coupled Stage-2 affine pullback has
been derived for the selected HF/LMPS representative.  The proposed
finite-cross data

$$
(\bar q^+_{AB}(u,x),\bar q^-_{AB}(v,x);
\Omega_0,\theta_{+0},\theta_{-0},\omega_{A0},m_0)
$$

now carry an explicit reduced spin-0+spin-2 two-form in affine profile
variables, with $r_\pm=\sqrt{\Omega_\pm}$ reconstructed by a Green map from
$\bar q^\pm$.  This is not yet a representative-independent full
gravitational CPS: the concrete closing-boundary polarization, the complete
Reisenberger reparametrization, the spin-1/embedding block, and the full gauge
quotient remain open.

What is established is precise:

- the normalization, projector, boost, action-representative, and spin-1
  dictionaries are fixed in `calculations/00-conventions-action-and-unreduced-potential.md`;
- the exact shear-free Raychaudhuri reconstruction, Damour transport, and the
  endpoint-complete two-sheet spin-0 pullback are derived in
  `calculations/01-spin0-raychaudhuri-and-corner-reduction.md`;
- $\omega_A$ is not set to zero: in the shear-free affine sector it is
  transported as
  $[\omega_{A0}+\lambda D_A\theta_0/2]/(1+\lambda\theta_0/2)^2$;
- sheet composition requires area plus dynamical slope/expansion matching;
  matching the geometric boost port $b$ does not impose continuity of
  $p_\Omega=-(\kappa+\theta/2)$;
- the combined two-sheet endpoint variation plus the single initial joint
  cancels the $\Omega_0\delta a_0$ normalization terms and proves one pair
  $-C_G\delta m_0\wedge\delta\Omega_0$;
- with outer area/boost ports retained, $\theta_{+0}$ and $\theta_{-0}$ acquire
  partners through $\Omega_{+L}$ and $\Omega_{-L}$; with fixed outer areas they
  are no longer independent variations;
- $\kappa$ and $\kappa+\theta$ representatives give the same reduced spin-0
  form when both endpoint shifts are kept;
- the full coupled Raychaudhuri reconstruction, linearized Green map, reduced
  one-form, field-space curl, shared corner, and induced outer-port terms are
  derived in `calculations/02-coupled-spin0-spin2-reduction.md`;
- the conformal bulk coefficient agrees with Reisenberger, but his
  area-parameter tangents satisfy $n_s=B_s\ell_s$; the transformed corner has
  an unresolved relative sign and extra conformal endpoint terms, so full
  equivalence remains open;
- Stage 3 is ready only as a controlled Damour-transport/embedding-policy
  calculation, not as a closed spin-1 CPS.

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
