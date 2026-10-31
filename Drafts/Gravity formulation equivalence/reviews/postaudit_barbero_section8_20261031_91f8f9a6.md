# Post-calculation audit of the parent note, Section 8

**Date:** 2026-10-31. **Sequence and scope:** This comparison was performed only after the [independent calculation and report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_barbero_holonomy_20261031_91f8f9a6.md>) had been completed, saved and sent to the parent. It is a separate, parent-requested follow-up and does not replace or retroactively inform that fresh derivation. The independent report remains unchanged by this comparison.

## Verdict

**Section 8's mathematical counterexample and its principal no-go conclusion are correct under the stated conventions.** The connection, curvature, adjoint trace, integer-radius qualification, spin endpoint correction and distinction from canonical equivalence agree with the completed independent derivation. No formula correction is required in the audited section.

The one useful substantive wording refinement is to avoid implying that merely supplying normal data makes the Wilson loop refoliation-independent. It instead makes a well-defined *normal-dependent* or enlarged observable. There is also a minor negation/colon ambiguity in the introductory summary.

## Checked locations

- [Parent note:41–57](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L41-L57>): the spatial orientation, \(\Gamma^i=-\varepsilon^i{}_{jk}\omega^{jk}/2\), \(K^i=\omega^{0i}\), positive \(K_{ab}\), and cross-product convention match the independent calculation.
- [Parent note:362–410](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L362-L410>): equations (8.1)–(8.4) agree exactly. In particular
  \[
  K^i=e^i/a,\qquad
  F^i(A_\gamma)=\frac{1+\gamma^2}{2a^2}\varepsilon^i{}_{jk}e^j\wedge e^k,
  \]
  and \(\operatorname{Tr}_3H=1+2\cos(2\pi\lambda)\), with \(\lambda^2=1+(1+\gamma^2)R^2/a^2\).
- [Parent note:413](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L413>): the universal real-\(\gamma\) counterexample \(\lambda=3/2\) is exact, and the accidental identity radii are correctly acknowledged. Since \(R>0\), for real \(\gamma\) the allowed integers are \(n=2,3,\ldots\), with \(R/a=\sqrt{(n^2-1)/(1+\gamma^2)}\). The chiral full-holonomy claim is correct: the generator satisfies \(M^3=-M\), so \(\exp(-2\pi M)=I\); it is not inferred from trace alone.
- [Parent note:415](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L415>): the \(SO(3)\) periodicity and spin antiperiodicity are correct. With the spin structure extending over the disk, the physical fundamental trace is \(-2\cos(\pi\lambda)\). At integer \(n\), the spin holonomy is \((-1)^{n+1}I\), so only odd \(n\) also gives spin identity. The chiral fundamental-representation statement is interpreted in \(SL(2,\mathbb C)\), not real \(SU(2)\).
- [Parent note:417](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L417>): the holonomy-conjugacy contradiction correctly excludes one fixed spacetime connection whose restrictions to all slices are the stated Barbero connections up to ordinary internal gauge equivalence. It does not exclude an arbitrary extension from a single slice or the explicitly exempted normal-dependent connection. It does not contradict canonical equivalence.

## Two wording suggestions, not source edits

1. **Introductory negation.** [Parent note:9](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L9>) introduces “a stronger statement is false” and then places the true negative no-go conclusion after the colon. The intended meaning is recoverable, but a literal reading can invert the assertion. A direct formulation is:

   > The stronger claim that the real nonzero-gamma Barbero connections on all hypersurfaces are pullbacks, up to internal gauge, of one hypersurface-independent spacetime connection is false. An exact Minkowski holonomy counterexample proves this without contradicting canonical equivalence.

2. **Normal data versus refoliation invariance.** The last sentence of [parent note:417](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L417>) says the loop is not a refoliation-invariant Einstein observable “unless” slice/normal data is supplied. This is safest replaced by an explicitly non-sufficient statement:

   > The Wilson loop in (8.4) is not a refoliation-invariant observable of the Einstein geometry alone. Supplying the embedded loop and its normal lift defines a normal-dependent enlarged observable; it does not remove the dependence demonstrated here.

   The distinction is concrete. If \(P\to M\) is the Lorentz frame bundle, then \(P\to P/SO(3)\) is a principal \(SO(3)\) bundle over the future unit-normal bundle. The projection \(p_\gamma(\omega)\) is a valid connection there for real \(\gamma\). The two normal choices lift the same spacetime \(C\) to different curves in \(P/SO(3)\), so they may have different holonomies. Calling this construction covariant does not make the two lifts the same curve or restore the failed metric-only pullback property.

No edit to the parent note was made.

## The full hyperboloid versus the supplied printed surface equation

I did **not** independently inspect the external PDF. The parent supplied the source-location result that the printed equation omits \(z^2\); the following is a direct geometric check of those two supplied equations, not a renewed source audit.

Let

\[
\Sigma_H:\quad T^2-x^2-y^2-z^2=a^2,\quad T>0,
\]

\[
\Sigma_{\mathrm{cyl}}:\quad T^2-x^2-y^2=a^2,\quad T>0.
\]

The first is \(H^3\), the second is \(H^2\times\mathbb R\). They are different hypersurfaces and should not be identified away from the comparison loop. Their future unit normals are

\[
u_H=\frac1a(T,x,y,z),\qquad
u_{\mathrm{cyl}}=\frac1a(T,x,y,0).
\]

On \(C\), where \(z=0\), the normals agree pointwise and their derivatives along \(\dot C\) agree. With \(s=R/a\), \(c=\sqrt{1+s^2}\), \(n_r=(\cos\phi,\sin\phi,0)\), and \(n_\phi=(-\sin\phi,\cos\phi,0)\), choose the same adapted frame along the loop:

\[
E_0=(c,sn_r),\qquad E_1=(s,cn_r),\qquad
E_2=(0,0,0,-1),\qquad E_3=(0,n_\phi).
\]

These four vector fields and their derivatives along \(\phi\) are the same for both hypersurfaces. Consequently the Lorentz connection contracted with \(\dot C\), and hence the pulled-back \(\Gamma+\gamma K\) along \(C\), agree. This proves the local comparison used in [parent note:419](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/09 Barbero Ashtekar boundary and reality.md#L419>).

It would be too strong to claim equality of all tangential connection data in a neighborhood: for example \(K_H(\partial_z,\partial_z)=1/a\) at \(z=0\), while \(K_{\mathrm{cyl}}(\partial_z,\partial_z)=0\). “Same pulled-back connection along the displayed loop” is the precise statement. The existing source distinction is therefore justified, and its exact scope should remain explicit.

## Verification boundary

- Inspected only the parent note's introductory/convention lines 1–58 and Section 8 plus adjacent verification text, lines 362–426, after freezing the independent report.
- Reused the prior analytic proof and its 26 successful exact checks; no new kernel run was needed or performed for this post-audit.
- Did not read the parent's verification implementation, output, review record, other agents' reports, or external papers.
- Did not audit the action-parameter conversion, boundary symplectic results, constraint analysis or quantum claims in other sections. The source-version and source-parameter statements remain the parent's separately documented source audit.

## Addendum: the obstruction also uses genuine global Cauchy slices

**Confirmed analytically, with the cutoff requirement made explicit as \(L>R+\epsilon\), not merely \(L>R\).** No CAS was rerun for this supplied-proof audit, and the frozen independent report was not altered.

The complete future hyperboloid is not a Cauchy surface of all Minkowski space: the inextendible timelike curve
\[
(T,x,y,z)=b(\sinh\sigma,\cosh\sigma,0,0),\qquad b>0,\quad\sigma\in\mathbb R,
\]
has \(T^2-r^2=-b^2\) and never intersects it. This does not weaken the no-go, because the following modification preserves all data near the comparison loop.

Choose \(\epsilon>0\), \(L>R+\epsilon\), and a smooth cutoff \(\chi:[0,\infty)\to[0,1]\) equal to 1 for \(r\le R+\epsilon\) and 0 for \(r\ge L\). Define
\[
f(r)=a+\int_0^r\chi(s)\frac{s}{\sqrt{a^2+s^2}}\,ds.
\]
Then \(f(r)=\sqrt{a^2+r^2}\) for \(r\le R+\epsilon\), and \(f\) is constant for \(r\ge L\). The radial function \(f(|x|)\) is smooth at the origin because it equals \(\sqrt{a^2+|x|^2}\) there. It is bounded, and
\[
|\nabla f|=|f'(r)|\le\kappa:=\frac{L}{\sqrt{a^2+L^2}}<1.
\]
Thus the entire graph \(\widehat\Sigma=\{T=f(|x|)\}\) is uniformly spacelike, with induced metric \(\delta_{ij}-\partial_i f\,\partial_j f\ge(1-\kappa^2)\delta_{ij}\).

To prove the Cauchy property, parametrize any future-directed inextendible causal curve by Minkowski time \(T\). Its spatial coordinates obey \(|dx/dT|\le1\). A finite endpoint of its \(T\)-range would therefore give a finite spatial limit and a spacetime endpoint through which the curve could be extended. Hence its \(T\)-range is all \(\mathbb R\). Along this curve,
\[
\frac{d}{dT}\bigl[T-f(x(T))\bigr]
=1-\nabla f\cdot\frac{dx}{dT}\ge1-\kappa>0
\]
almost everywhere. Since \(f\) is bounded, this strictly increasing quantity tends to \(-\infty\) and \(+\infty\) at the two ends. It has exactly one zero. Thus every inextendible causal curve, and in particular every inextendible timelike curve, meets \(\widehat\Sigma\) exactly once.

In fact \(s=T-f(|x|)\) is a smooth Cauchy temporal function: its gradient is timelike, and every level \(s=\mathrm{constant}\) is a translated Cauchy graph. Thus the example compares genuine global spacelike foliations, not just isolated admissible cuts.

The modified graph agrees with the hyperboloid on an open neighborhood of the entire loop \(C\) (indeed on its interior disk as well). Its future normal, \(\Gamma\), \(K\), and the pullback of \(A_\gamma\) along \(C\) are unchanged. Consequently all previously derived holonomies, including spin transitions and accidental identity radii, are unchanged. Comparing this Cauchy graph with the constant-time Cauchy plane gives the same contradiction. **The obstruction does not rely on allowing non-Cauchy hypersurfaces.**
