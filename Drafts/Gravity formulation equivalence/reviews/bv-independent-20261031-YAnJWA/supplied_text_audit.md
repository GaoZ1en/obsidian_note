# Supplied-text audit of the nonlinear BV synthesis

**Post-repair verdict: the inspected local classical BV and finite-density claims are correct on the repaired on-shell-collar/interior domain. The support and boundary-frame qualifications identified below have now been explicitly repaired and re-read. No continuum QME is certified.**

Initial audit finding: the exact local action map, finite right-Jacobian/Berezinian calculation, and finite retained-antifield extension were correct under their algebraic assumptions, but ghost/antifield support alone did not define a Q-invariant restricted BV field space. The audit history below is retained; the final post-repair check records its resolution.

This is a **supplied-text audit**, not an independent derivation of the synthesis. It was performed only after the independent exact-map artifacts and the later Berezinian follow-up had been frozen: [first freeze](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/FREEZE.md>), [Berezinian freeze](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/BEREZINIAN_FREEZE.md>). The supplied file was [16 Nonlinear BV map and finite density transport.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md>), initially read as 480 lines. The parent may subsequently revise that file; the qualifications below refer to the quoted wording and initial line locations. No parent file was edited by this reviewer.

The audit covers §§1–5, and §§6.2–7 only as regards the extension to arbitrary retained antifields and the explicit absence of a continuum-QME claim. It does not re-certify the complete spectral/Gaussian analysis or every heat-prescription result.

## 1. Necessary support-domain qualification

The initial [§1 support statement:49](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L49>) says:

> For integrated nonlinear BV identities, take either a closed manifold, or smooth ghosts and antifields vanishing in an open collar of the wall; on a noncompact manifold, use compactly supported local insertions.

This is sufficient to make the primitive in (11) vanish at the wall, and to make the exact canonical transformation the identity there, including all wall jets. It is **not by itself** a Q-invariant BV support restriction if physical fields remain arbitrary off shell in that collar. With the synthesis's own antibracket,

\[
 Qe^*\big|_{\text{antifields}=0}=\kappa\mathcal R,
 \qquad Q\omega^*\big|_{\text{antifields}=0}=\kappa T.
 \tag{A1}
\]

Thus ghosts and antifields can vanish in the collar while their antifield BRST variations do not. For instance, a nondegenerate constant coframe and omega=0 have T=0 but Rcal=-[e,e]/2 nonzero, giving a direct off-shell counterexample to support invariance.

There are two precise repairs, with different meanings:

1. **An actual collar-supported BV theory/interface:** fix the physical fields to a common on-shell nondegenerate background in the collar, and take physical fluctuations, ghosts, and antifields supported in the interior. A flat-CS background has Tbar=Rcalbar=0 there, so all components of Q preserve this restriction. On a complete noncompact manifold, use compactly supported perturbations about that background for the corresponding proper local sector.
2. **Only the local functional identity:** retain the current physical fields but explicitly describe (11)–(12) as identities of local densities/functionals tested on compact supports, not as a proof that the stated ghost/antifield support condition alone defines a Q-stable full BV phase space.

Neither repair changes the finite generator, explicit map, or exact derivative identity. The first is the cleanest if the words “BV interface on the stated local support domain” are to be read literally. The parent was notified of this issue immediately. “Arbitrary retained antifields” later in §6.2 should then mean arbitrary values in that same admissible interior support class, not arbitrary wall/asymptotic behavior.

## 2. Action identity, wall completion, and CPS distinction

The generator and explicit formulas in [§3.1–3.2:111–161](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L111-L161>) agree with the frozen independent calculation, including the type-II 1/(3 kappa) term, the solved translation antifield, and the 1/(6 kappa) terms after elimination. The field-antifield correction is essential; the off-shell torsion and curvature terms in (3) have the displayed signs.

The ghost remainders in (3) are also consistent with the full map. For example i_xi^2 T=-xi^mu xi^nu T_munu in the synthesis's coefficient-first convention. Applying Q to the +i_xi^2 omega*/(2 kappa) term in the exact translation ghost gives -xi^mu xi^nu T_munu/2. Comparing with the ghost-only cotangent differential yields precisely the positive e-inverse torsion correction to Qhat xi shown in (3); the displayed Qhat lambda remainder follows similarly.

The [full kinetic/action argument:163–236](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L163-L236>) is sound. In particular:

- The even total contraction I differs from the ordinary coefficient-first contraction by the stated sign formula (9).
- The universal identity exp(-I)d exp(I)=d-L-J is proved on algebra generators, not merely inferred from finite examples.
- The -J term gives exactly -xi* dot (xi partial xi), with the nontrivial antifield signs fixed by (7).
- The primitive in (11) is the full density primitive, including the kinetic integration-by-parts term. It is not merely an interaction check or a statement that a missing boundary term “should vanish.” The exact arbitrary-first-jet certificate is already preserved in [the independent kinetic input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_check.py>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/kinetic_density_output.json>).

The complete-wall conclusion is correct as an equality of the specified actions when the primitive and transformation vanish in the collar. I inspected [the cited CS/Palatini completion:58–95](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L58-L95>): the bulk exact term is +d(a e wedge omega), and the geometric CS wall subtracts the same term. The antifield correction is the identity in the collar, so the already matched physical wall is unchanged. This wall argument does not itself cure the Q-stability qualification in §1 of this audit.

Before this boundary/CPS audit I read [the formalism convention:7–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) and its applicable Articles rules. The synthesis correctly retains wall/corner data and does **not** identify its odd bulk antibracket with the even regional CPS/BFV form. Only that structural distinction is used; no Lorentzian CPS normalization was silently imported into the Euclidean BV calculation.

## 3. Auxiliary and Lorentz reduction

The [auxiliary reduction:266–322](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L266-L322>) is correct locally with the stated contour choice and the support qualification above.

I performed an additional exact Sage check of:

\[
 a\epsilon_{abc}e^ak^bk^c=a\,q(U)\operatorname{vol}_e,
 \quad L^{-1}(L(U))=U,
\]

and the Hessian determinant/characteristic polynomial. In an adapted frame the same-cutoff bulk flux is exactly +2a(U12-U21)e1 wedge e2 and the normal wall term is its negative. All six checks passed; see [runnable input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/supplied_audit_auxiliary_check.py>) and [actual returned output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/supplied_audit_auxiliary_output.json>). These checks supplement, rather than replace, the geometric boundary argument.

The derivative-dependent cotangent lift has the correct signs. From omega=omega(e)-Ue,

\[
 \delta\omega=D_e\omega(e)\,\delta e-\delta U\,e-U\,\delta e,
\]

so its U*-coefficient is -omega* e and its retained coframe momentum acquires the displayed formal-adjoint and -omega* U terms. With U*=0, neither Qe nor the ghost rules depend on U in the geometric chart. Thus no retained-antifield source remains in the auxiliary equation, and U=0 follows for arbitrary retained antifields in the permitted local support class. This would be false in the unrectified ghost-only chart; the synthesis explicitly avoids that error.

The Lorentz polar chart and chi=Qtheta produce a local contractible doublet, with an invertible lambda coefficient and Qchi=0. The resulting action (16) is consistent with local BV reduction, not a lower-dimensional symplectomorphism. Its warning against global frame-group contractibility is correct.

**Boundary-frame qualification:** a proper Lorentz ghost that vanishes in the collar cannot gauge away an unfixed wall rotation. The doublet elimination must therefore be interior-only, relative to the fixed collar frame, or must explicitly retain any unfixed boundary frame data. If the full coframe is already fixed to the on-shell background in that collar, this condition is automatic after choosing relative rotation coordinates. If only the boundary metric is fixed, imposing a global theta=0 would otherwise discard frame data not generated by the allowed proper gauge transformations. The parent explicitly identified and added this qualification while repairing the support statement; it is recorded here as part of the supplied-text audit, not as a new independent discovery.

**Optional normalization clarification:** [line286](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L286>) should be read as the Hessian of a q(U) **per unit physical volume**. At a coordinate cell of weight v the actual Gaussian Hessian is 2a v E L, not merely 2a L. Later E^(-9/2) factors correctly retain this distinction; adding the phrase would prevent a misleading reading but does not change the result.

## 4. Right-Jacobian square formula and the cubic-divergence warning

The [Schur result and finite Berezinian:324–355](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L324-L355>) agree with the separately frozen Berezinian follow-up. Coefficient-left coordinate variations use right derivatives. The even-output/odd-input block changes sign relative to left differentiation, and the correct Schur complement is exactly [[1,omega],[0,e]]. The claimed source-coordinate semidensity has no nilpotent antifield factor.

For a self-contained proof of the square formula, one can add the following two-line argument to the supplied text (the result itself is correct). Define H_A^B=partial_r p_A/partial P_B at fixed q. Oddness of F implies

\[
 H_A{}^B=(-1)^{\epsilon_A(\epsilon_B+1)}M^B{}_A,
 \qquad \operatorname{Ber}_{\Pi q}H=(\operatorname{Ber}_qM)^{-1}.
\]

Factoring through (q,P) gives Ber D Phi=Ber M/Ber H=(Ber M)^2. The parity reversal of the momentum coordinates is essential. This proof is already included in [the frozen follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/bv-independent-20261031-YAnJWA/berezinian_followup.md>); the minimal two-Grassmann countercheck there exactly reproduces the spurious shifted-coframe result when the wrong block sign is used.

The [warning about the cubic generator:357–370](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L357-L370>) is correct. The sign in (log nu,G3) follows directly from partial_e log nu=-e inverse and the displayed ordering xi omega* e*. Delta_0 G3 vanishes, but Delta_0 G4 can have the same total degree two as (log nu,G3); therefore the latter cannot be promoted to the complete leading finite-map density correction. The finite exact Schur calculation, not a cubic truncation, determines the density. The explicit coincident-trace and cell-weight warnings prevent an illicit continuum interpretation.

## 5. Retained antifields and the restricted reading of §§6.2–7

The extension in [§6.2:421–443](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L421-L443>) is justified as a finite local algebraic fiber integration:

1. The full exact CS-to-geometric semidensity coefficient depends on e, not on retained antifields.
2. Subsequent cotangent coordinate changes have base Jacobians independent of antifields.
3. On U*=0, the auxiliary action is exactly the same Gaussian for arbitrary retained metric/diffeomorphism antifields; these antifields are spectators, not silently set to zero.
4. In the adapted Lorentz fiber theta=0, chi*=0, the theta* chi integral is a field-independent normalization after the stated doublet-coordinate normalization.

Hence the exact finite semidensity result legitimately strengthens a merely zero-antifield saddle comparison. It is still conditional on the stated source/target densities, contour, local frame chart, and compatible finite realization. I did not treat a formal pointwise coordinate product as a regulator-independent functional measure.

The inspected [§7 scope statements:445–480](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L445-L480>) correctly deny that a coefficientwise heat finite-part prescription proves a continuum QME, an anomaly cancellation, or equality with a spectral-compression determinant. I have not independently re-audited all heat-kernel hypotheses or the numerical wall/compression counterexamples in this supplied-text audit. They are outside the limited retained-antifield question requested here.

## 6. Re-read of the repaired support and frame statements

The parent subsequently repaired the supplied note. I re-read [the repaired support contract:49–53](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L49-L53>) and [the repaired interior Lorentz elimination:316–324](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L316-L324>), in the then-482-line version.

The repaired support contract now requires physical fluctuations, ghosts, and antifields all to vanish relative to a fixed on-shell nondegenerate collar background; it uses compactly supported versions on a noncompact manifold. It explicitly distinguishes the general local-density/mod-d identity from the narrower actual BV domain. **This resolves the Q-stability issue.** In the collar, Q of physical fields and ghosts vanishes because the ghosts and their derivatives vanish. Q of physical antifields vanishes because the background EOM vanish there and all antifield terms vanish. Q of ghost antifields contains only vanishing antifields and their derivatives. Products, finite jets, and the local inverse coframe do not enlarge the perturbation support. Thus the exact map and full BV differential preserve the repaired interior sector.

The repaired Lorentz paragraph now eliminates only interior rotations relative to the chosen collar frame and leaves any unfixed boundary frame data external or unreduced. **This resolves the boundary-gauge qualification.** Proper interior ghosts are not being used to set an arbitrary wall rotation to zero. With a fixed full collar coframe, one simply chooses relative rotation coordinates anchored to that frame.

I did not edit either repair. This post-repair check does not enlarge the result to complete-L2/Brown–Henneaux spaces or to a boundary CPS/BFV equivalence. The optional per-unit-volume Hessian wording and the suggestion to display the short square-formula proof remain expository suggestions, not unresolved mathematical failures.

## Final classification

- **Established on the repaired local domain:** exact canonical map, action primitive, geometric BRST signs, auxiliary/interior-Lorentz classical reduction, exact pointwise Berezinian, and finite retained-antifield fiber extension under the specified measures and contour.
- **Resolved after audit:** the on-shell-collar support restriction is now Q-stable; interior Lorentz elimination is anchored to the fixed collar frame and does not discard unfixed boundary frame data.
- **Not certified:** complete-L2/Brown–Henneaux closure under nonlinear maps; regional CPS/BFV equivalence; full nonlinear regulated spectral determinant; continuum quantum master equation; global gauge/topology equivalence.

Only new audit artifacts in this private review directory were written. The synthesis, original Articles, and both frozen derivations were left unchanged.
