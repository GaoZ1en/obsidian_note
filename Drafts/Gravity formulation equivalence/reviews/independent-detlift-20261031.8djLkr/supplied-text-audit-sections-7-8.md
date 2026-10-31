# Supplied-text audit: determinant lift, metric matching, and dual half

## Verdict

**The algebraic claims in §§7–8 pass, conditional on the explicitly supplied critical Gram/holomorphic-bundle inputs.** The intrinsic pair convention \((c,\varepsilon)=(26,+1)\) and the model convention \((-26,-1)\) describe the same determinant line and action under inversion of the central circle. The metric calculation proves actual invariance; together with holomorphicity it proves Chern-connection preservation. The central double cover \(E_{13}^{\rm rel}\to E_{26}^{\rm rel}\) is the correct acting extension for the dual half.

**One wording precision is recommended:** the cubic/Bott “phases” in the parent text are central endpoints. For a weight-\(-1\) associated line the fiber phase is their inverse. In particular, \(e^{11\pi i/12}\) is the central endpoint in \(E_{13}\), while the fiber phase on \(L_{13}\) is \(e^{-11\pi i/12}\). These are not contradictory, but should not be called the same phase without qualification.

## 1. Separate scope and retained assumptions

This is a **subsequent supplied-text audit**, not part of the earlier independent derivation. The [independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/report.md>) is unchanged.

The text inspected was:

- [The new determinant report:267–329](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L267-L329>), with its definitions and metric formulas in §§1, 3, 5–6.
- [The previous model conventions:252–356](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md#L252-L356>), specifically the explicit relative cocycle, central character convention, and global root datum.

The following analytic statements are treated as explicit inputs, as requested:

1. In the critical normalized representation, \(M_g=\widehat U_g^*\widehat U_g\) is a positive invertible smoothly trace-class perturbation of \(I\), and the crossing blocks are smoothly smoothing.
2. The graph maps, quotient determinant bundle, and its natural determinant action have the asserted actual holomorphic structures.
3. The intrinsic tangent metric is the identity in the normalized homogeneous frame, so its critical graph-frame metric is
   \[
   H_g=(S_g^{-1})^*S_g^{-1},\qquad
   h_{\mathscr D}(g)=\det_F H_g.
   \]
   The further equality with \(\det_F(a_g^*a_g)\) is checked algebraically below, not assumed.
4. The connection already constructed is the Chern connection of this holomorphic Hermitian line, and its curvature is the stated trace curvature.
5. The explicit model relative cocycle has the stated exact PSL splitting and is linear in its parameter: \(b_{c+d}=b_c+b_d\).

This audit verifies the **new algebraic metric/action match, the use of invariant-connection uniqueness, the central-sign conversion, and the global covering/phase claims**. It does not re-prove the welding theorem, the third-order Gram bridge, or the trace-class connection estimates. No old kernel was rerun, no new numerical evidence is substituted for those analytic inputs, and no existing note was edited.

## 2. Determinant metric algebra and the positive character

All stars and blocks in this section use the critical normalized Hilbert space.

### 2.1 Checking the metric identity from the full Gram input

For a bounded invertible operator \(A\) with \(A^*A-I\) trace class, write \(\mathfrak D(A)=\det_F(A^*A)\). The identity
\[
 (AB)^*(AB)=(B^*B)(B^{-1}A^*AB)
\]
shows directly that \(\mathfrak D(AB)=\mathfrak D(A)\mathfrak D(B)\). Applied to the group representation, this makes \(\det_F M_g\) a smooth positive group character. Perfectness of the real vector-field Lie algebra and connectedness of \(G\) imply
\[
 \det_F M_g=1.
\]

The exact block factorization is
\[
 \widehat U_g=
 \begin{pmatrix}I&0\\Z_g&I\end{pmatrix}
 \begin{pmatrix}a_g&0\\0&S_g\end{pmatrix}
 \begin{pmatrix}I&a_g^{-1}b_g\\0&I\end{pmatrix}.
\]
Both outer factors are identity plus smoothing, unipotent, and have Fredholm determinant one. Their \(\mathfrak D\) values are therefore one. The Gram defect of the diagonal factor is trace class: this follows either by multiplying the given Gram identity by the determinant-class outer factors, or directly from its diagonal blocks and the smoothing correction defining \(S_g\). Hence
\[
 1=\det_F(a_g^*a_g)\det_F(S_g^*S_g).
\]
Finally, \(H_g=(S_gS_g^*)^{-1}\), and \(S_gS_g^*\) is boundedly similar to \(S_g^*S_g\). Therefore
\[
 \boxed{h_{\mathscr D}(g)=\det_F H_g
 =\det_F(S_g^*S_g)^{-1}=\det_F(a_g^*a_g).}
\]
This checks the algebraic part of the critical metric bridge; no determinant of \(a_g\), \(S_g\), or \(\widehat U_g\) alone has been introduced.

### 2.2 Checking the positive character

First,
\[
 (M_g)_{--}=a_g^*a_g+c_g^*c_g.
\]
Thus
\[
 a_g^*a_g-I=((M_g)_{--}-I)-c_g^*c_g\in\mathcal L^1.
\]
If \(q-a_g\in\mathcal L^1\), expansion of \(q^*q-a_g^*a_g\) shows that \(q^*q-I\) is trace class. It is positive invertible, so \(\det_F(q^*q)>0\), and the positive square root has no branch ambiguity.

For any invertible determinant-class Gram factors,
\[
 (qr)^*(qr)=r^*q^*qr
 =(r^*r)(r^{-1}q^*qr).
\]
Fredholm determinant multiplicativity and bounded similarity invariance therefore give
\[
 \det_F((qr)^*(qr))
 =\det_F(r^*r)\det_F(q^*q).
\]
Consequently
\[
 \rho(g,q)=\det_F(q^*q)^{1/2}
\]
is multiplicative. Replacing \(q\) by \(qt\), with \(t-I\) trace class, changes it by \(|\det_Ft|\); thus it descends through the determinant-one relation, and its restriction to the central \(\mathbb C^*\) is \(|z|\).

Its smoothness requires no norm-smoothness of \(q=a_g\). In the determinant-pair chart write
\[
 \lambda=\det_F(q a_g^{-1}).
\]
Then
\[
 \boxed{\rho(g,q)=|\lambda|\det_F(a_g^*a_g)^{1/2}.}
\]
The second factor is smoothly trace-class by \((M_g)_{--}-c_g^*c_g\); the first is the scalar chart coordinate. This proves smoothness directly in the correct extension topology.

The kernel is therefore a genuine smooth \(U(1)\) subgroup extension. Its exact PSL splitting lies in the kernel because the restricted positive character on connected PSL is trivial.

### No hidden infinitesimal real coboundary

There is a useful explicit justification for comparing this metric-induced reduction to the pair Lie cocycle. Let
\[
 \nu(X)=d(\log\rho)_{1}(ds_1X),\qquad s(g)=[(g,a_g)].
\]
In the pair splitting the character differential has the form \(\nu(X)+\operatorname{Re}z\). Since a Lie-algebra character annihilates brackets,
\[
 \nu([X,Y])+\operatorname{Re}K(X,Y)=0.
\]
The pair trace cocycle is imaginary on real inputs. The real vector-field Lie algebra is perfect, so \(\nu=0\). Thus passing to the \(U(1)\)-normalized section leaves the infinitesimal splitting unchanged: the cocycle is literally \(\omega_{26}\), not merely an unspecified cohomologous representative.

## 3. The metric/action identity has the correct dual sign

Let \(w_g=\binom I{Z_g}\) be the graph frame of the tautological subspace. The pair transports the base frame to
\[
 U_g|_-q^{-1}=w_g\,a_gq^{-1}.
\]
Replacing the tautological frame by its product with \(t\) multiplies the corresponding **dual tautological frame vector** by \((\det_Ft)^{-1}\). Hence the requested quotient line satisfies
\[
 (g,q)1_o=\det_F(q a_g^{-1})1_g,
\]
exactly as written in [the new report:276–279](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L276-L279>).

Set \(Q=q a_g^{-1}=I+\mathcal L^1\), so \(q=Qa_g\). Then
\[
 q^*q=(a_g^*a_g)(a_g^{-1}Q^*Qa_g).
\]
Therefore
\[
 \boxed{\det_F(q^*q)
 =|\det_FQ|^2\det_F(a_g^*a_g)
 =|\det_F(q a_g^{-1})|^2h_{\mathscr D}(g).}
\]
This proves the parent identity without taking a determinant of \(a_g\) itself.

For an element in \(\ker\rho\), its image of the unit base vector has norm one. This base-point check proves invariance everywhere: express a vector over any point as a scalar times \(\widehat h1_o\), with \(\widehat h\in\ker\rho\), then use the group law and the same base-point identity for \(\widehat g\widehat h\). The normalizing scalar depends only on the extension element, not on the point of the line base.

The natural determinant action is holomorphic for each fixed group element, by the stipulated holomorphic Grassmann/quotient construction. A holomorphic fiberwise-linear isometry preserves the unique Chern connection. Thus [the new report:286–291](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L286-L291>) is an actual metric/connection/action identification, not a curvature-only inference.

## 4. Pair \(+26/+1\) versus model \(-26/-1\)

With \(\omega_c=i\sigma_c\), the associated-line curvature convention is
\[
 F_{c,\varepsilon}=-i\varepsilon\omega_c
 =\varepsilon\sigma_c.
\]
The pair construction has \(c=26\), \(\varepsilon=+1\), hence \(F=\sigma_{26}\).

Because the explicit relative cocycle is linear in \(c\),
\[
 \iota:E_{26}^{\rm rel}\longrightarrow E_{-26}^{\rm rel},
 \qquad(g,z)\longmapsto(g,z^{-1})
\]
is a group isomorphism preserving the projection and the PSL splitting, and inverting the central circle. Pulling the weight-\(-1\) character of the target back gives
\[
 (z^{-1})^{-1}=z.
\]
Thus the line and its action are exactly the same:
\[
 (26,+1)\quad\leftrightarrow\quad(-26,-1),
 \qquad\mathscr D\simeq L_{-26}.
\]
The model curvature is \(-\sigma_{-26}=\sigma_{26}\), so the curvature sign agrees as well.

Critical Sobolev normalization does not change the finite crossing trace: for normalized Fourier vectors, each matrix coefficient acquires a factor \(\sqrt{v_{m+j}/v_j}\), and the opposite crossing acquires its reciprocal. Their product, and hence the trace coefficient, is unchanged.

## 5. Why the model identification preserves connection, not just curvature

The pair \(U(1)\) extension and \(E_{26}^{\rm rel}\) have the same specified Lie cocycle and exact PSL splitting. Their Baer difference has zero Lie cocycle and a flat central connection. The generator of \(\pi_1(G)\) is the physical rotation loop, and its lift through PSL is closed. Thus the flat difference has no holonomy and admits a multiplicative trivialization. This proves the extension identification, including its global circle and PSL data.

The induced line isomorphism is fixed by the chosen unit base fiber. Both metrics are invariant and agree there, so they agree everywhere. Both connections are invariant: for the determinant connection this follows from §3 above, and for the model it is part of its homogeneous construction.

Their difference is a scalar one-form on \(M\); its value at the base is an \(H\)-invariant covector on \(\mathfrak g/\mathfrak h\). Every Fourier mode in that quotient has nonzero rotation weight. The covector therefore vanishes on all trigonometric polynomials; continuity makes it vanish on the full smooth quotient. Thus the invariant connections agree. Their \((0,1)\) parts agree, proving that the line isomorphism is holomorphic. The argument in [the new report:316–320](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L316-L320>) is sound under the specified inputs.

## 6. The root cover and the two different meanings of phase

The map
\[
 \Phi:E_{13}^{\rm rel}\longrightarrow E_{26}^{\rm rel},
 \qquad(g,z)\longmapsto(g,z^2)
\]
is a group homomorphism because \(2b_{13}=b_{26}\). It is surjective, with kernel \(\{(1,1),(1,-1)\}\), and it preserves the PSL splitting. Thus it is precisely the required central double cover.

The canonical line \(\mathscr K=\mathscr D^{-1}\) has weight \(-1\) for \(E_{26}\). Its pullback to \(E_{13}\) has weight \(-2\), exactly the weight of \(L_{13}^{\otimes2}\). This proves the equivariant square identity. With compatible local holomorphic frames, the metric and curvature are
\[
 h_{L_{13}}=h_{\mathscr D}^{-1/2},\qquad
 F_{L_{13}}=-\tfrac12F_{\mathscr D}.
\]
It is not a half-integer weight under an unchanged central circle.

For clarity, the phase bookkeeping is:

| Object and acting convention | Cubic central endpoint | Cubic line-fiber phase |
|---|---:|---:|
| \(\mathscr D\), pair \(E_{26}\), weight \(+1\) | \(e^{-i\pi/6}\) | \(e^{-i\pi/6}\) |
| \(\mathscr D=L_{-26}\), model weight \(-1\) | \(e^{i\pi/6}\) | \(e^{-i\pi/6}\) |
| \(\mathscr K=L_{26}\), weight \(-1\) | \(e^{-i\pi/6}\) | \(e^{i\pi/6}\) |
| \(\mathscr K^{1/2}=L_{13}\), weight \(-1\) | \(e^{11\pi i/12}\) | \(e^{-11\pi i/12}\) |

Every **relative PSL rotation** in this table has endpoint and fiber phase **1**. The table concerns the different cubic/Bott lift.

For the root,
\[
 r=e^{-2\pi i13/24}=e^{11\pi i/12},\qquad
 r^2=e^{-i\pi/6},\qquad
 r\,e^{2\pi i13/24}=1.
\]
The other square root \(-r=e^{-i\pi/12}\) has relative PSL holonomy \(-1\), so it is excluded. On the weight-\(-1\) root **line**, the phase is \(r^{-1}\), whose square is \(e^{i\pi/6}\), the dual determinant's fiber phase.

Thus the parent phase claims are correct as extension data, but the phrases at [line 305](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L305>) and [line 329](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md#L329>) would be safer as “cubic central endpoint” and “admissible root-extension datum,” respectively. Inverting the central circle inverts its endpoint **and** reverses the character weight; it does not invert the physical phase of the already-identified determinant line.

## 7. Audit outcome

**Passed:** pair-group and positive-character algebra; descent and smoothness of the positive character; actual unitary subgroup action on the specified determinant metric; Chern preservation; exact sign/convention conversion; invariant model identification; the central double cover; relative PSL-loop and cubic central/fiber phase bookkeeping.

**Recommended clarification only:** explicitly distinguish central cubic endpoints from associated-line fiber phases. No algebraic correction to the stated coefficient, metric, connection, or root cover is required.

**Not re-audited:** the external welding regularity, the analytic critical-Gram bridge, the full trace-class connection proof, and any physical measure/quantum interpretation. This conclusion is conditional on those explicitly accepted inputs, not an additional independent verification of them.
