# Supplied-text audit: global transversality to the fixed positive-mode subspace

## Verdict and provenance

**The supplied strengthening is valid.** For every \(g\in\operatorname{Diff}^\infty_+(S^1)\),

\[
a_g=P_-U_g|_{\mathcal H_-}
\]

is invertible on every Sobolev completion, and on the smooth Fréchet space. Consequently the entire Grassmannian image is contained in the single fixed big cell,

\[
U_gW_-=\operatorname{graph}(Z(gH)),\qquad
Z(gH)=c_ga_g^{-1},\quad c_g=P_+U_g|_{\mathcal H_-}.
\]

The descended map \(Z\) is globally holomorphic into the complex Fréchet space of smoothing operators \(W_-\to E_+\).

**Provenance:** the proposed sphere-vector-field/third-order-zero argument was supplied by the parent after the original investigation. This file audits that supplied argument; it is not claimed as an independent discovery. The [original independent atlas report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-atlas-welding-RdV6Bs.md>) is preserved unchanged. This audit sharpens its deliberately unasserted global-big-cell point, without re-running its established atlas/source checks.

## 1. Hypotheses and conventions retained

The input is the smooth welding and actual complex atlas already established in the original report, together with the given smooth-smoothing crossing-block property. Explicitly,

\[
g\star h=h\circ g,\qquad U_gv=\frac{v\circ g}{g'},\qquad
f=F\circ g\quad\text{on }S^1.
\]

The maps \(f\) and \(F\) embed the closed interior/exterior disks into complementary closed disks in \(\mathbb{CP}^1\); their boundary derivatives are nonzero and all boundary data are smooth. They are regarded as sphere maps, so target-coordinate poles are allowed.

Use modes \(e_j=i e^{ijx}\partial_x\). The auxiliary Hilbert decomposition is

\[
\mathcal H_-:\ j\leq1,\qquad \mathcal H_+:\ j\geq2,
\]

with corresponding smooth subspaces \(W_-\) and \(E_+\). Write the blocks of \(U_g\) as

\[
U_g=\begin{pmatrix}a_g&b_g\\c_g&d_g\end{pmatrix}.
\]

The two crossing blocks are smoothing. A smooth circle diffeomorphism and its inverse act boundedly on each fixed Sobolev space; no operator-norm continuity of \(g\mapsto U_g\) on that space is assumed.

## 2. Fredholmness, index zero, and regularization of a kernel element

Block multiplication of \(U_{g^{-1}}U_g=I\) and \(U_gU_{g^{-1}}=I\) gives

\[
a_{g^{-1}}a_g=I_--b_{g^{-1}}c_g,\qquad
a_ga_{g^{-1}}=I_--b_gc_{g^{-1}}.
\tag{A}
\]

The remainders are smoothing, hence compact on every Sobolev level. Thus \(a_g\) is Fredholm on each such level. This is the needed parametrix; no additional elliptic-Fourier-integral-operator theorem is necessary.

For completeness, index zero is not inferred from a false norm-continuity assertion about \(a_g\). From

\[
a_{g\star h}=a_ga_h+b_gc_h
\]

and compactness of the last term,

\[
\operatorname{ind}(a_{g\star h})
=\operatorname{ind}(a_g)+\operatorname{ind}(a_h).
\tag{B}
\]

Near the identity, the already established smooth-smoothing projection family

\[
Q_g=U_gP_-U_g^{-1}
\]

satisfies \(\|Q_g-P_-\|_{H^s\to H^s}<1\), after shrinking the neighborhood for the chosen \(s\). Then \(P_-:\operatorname{ran}Q_g\to\mathcal H_-\) is invertible. Indeed, injectivity follows from \(u=(Q_g-P_-)u\) when \(Q_gu=u\) and \(P_-u=0\), while surjectivity follows by solving \(P_-Q_gv=y\) on \(\mathcal H_-\), an \(I+\)small equation. Since \(U_g\) identifies \(\mathcal H_-\) with \(\operatorname{ran}Q_g\), \(a_g\) is invertible near the identity.

Every orientation-preserving smooth circle diffeomorphism is connected to the identity. With an increasing lift \(\widetilde g\), one explicit path is

\[
\widetilde g_t(x)=(1-t)x+t\widetilde g(x),\qquad
\widetilde g_t'(x)=(1-t)+t\widetilde g'(x)>0.
\]

A compact path can be divided into finitely many increments lying in the identity neighborhood. Equation (B) therefore proves \(\operatorname{ind}(a_g)=0\) for all \(g\), at every Sobolev level. This does not require surjectivity of the diffeomorphism-group exponential map.

If \(a_gv=0\) for a Sobolev/distributional \(v\in\mathcal H_-\), equation (A) gives

\[
v=b_{g^{-1}}c_gv.
\]

Hence \(v\) is smooth. Then \(u=U_gv\) is smooth and lies in \(E_+\). Thus the kernel question reduces rigorously to smooth boundary fields.

## 3. The welding identity glues the correct vector fields

Write \(z=e^{ix}\), \(w=e^{ig(x)}\). On the boundary,

\[
\frac{dw}{dz}=\frac{w}{z}g'(x),\qquad
f'(z)=F'(w)\frac{w}{z}g'(x).
\]

Because \(u(x)=v(g(x))/g'(x)\), the fields

\[
V_{\rm in}(z)=iz\,u(z),\qquad
V_{\rm out}(w)=iw\,v(w)
\]

satisfy the **same-sign** pushforward identity

\[
\boxed{\quad f'(z)V_{\rm in}(z)=F'(w)V_{\rm out}(w).\quad}
\tag{C}
\]

There is no missing factor of \(g'\), \(i\), or sign. Notice that this is the pullback representation \(U_gv=(v\circ g)/g'\) and the convention \(f=F\circ g\). Substituting the opposite welding convention without also transforming \(g\) would not prove (C).

Since \(u\) has modes \(j\geq2\), \(V_{\rm in}(z)\partial_z\) is holomorphic on the disk, smooth to its boundary, and vanishes to order at least three at \(z=0\). Since \(v\) has modes \(j\leq1\), \(V_{\rm out}(w)\partial_w\) is holomorphic on the exterior disk, smooth to its boundary, and regular as a vector field at infinity. In the coordinate \(s=1/w\), its coefficient is \(-s^2V_{\rm out}(1/s)\), which is holomorphic at \(s=0\) precisely because the highest allowed power of \(V_{\rm out}\) is \(w^2\).

Push these fields forward by \(f\) and \(F\) to the two complementary target disks. Equation (C) identifies their boundary values. In a local target coordinate around any point of the smooth Jordan curve, their coefficients form one continuous function that is holomorphic on both sides. Morera's theorem across a smooth (in particular rectifiable) arc gives a holomorphic continuation. Thus they glue to a global holomorphic section

\[
V\in H^0(\mathbb{CP}^1,T\mathbb{CP}^1).
\]

This assertion concerns vector-field sections, not a globally finite scalar coefficient. Poles of a chosen representative of \(f\) or \(F\) are therefore harmless. Choose a target Möbius coordinate putting \(f(0)\) at zero. Because \(f\) is conformal and nondegenerate, pushforward preserves the vanishing order: \(V\) has a zero of order at least three there.

A global holomorphic sphere vector field has the form

\[
(A+B\zeta+C\zeta^2)\partial_\zeta.
\]

A third-order zero forces \(A=B=C=0\). Therefore \(V=0\), so both original fields vanish; in particular \(v=0\).

This proves \(\ker a_g=0\). Combined with Fredholm index zero it proves surjectivity and bounded invertibility on every Sobolev level. The inverses agree on intersections of those levels by uniqueness, and hence define a continuous inverse on the smooth Fréchet space as well.

## 4. Global graph, quotient invariance, and holomorphicity

The now-established global inverse gives

\[
U_gW_-=\{y+c_ga_g^{-1}y:y\in W_-\}.
\]

The graph operator is smoothing at all seminorm levels because \(a_g^{-1}\) preserves each Sobolev space and \(c_g\) is smoothing.

For \(h\in H\), set \(r_h=U_h|_{W_-}\). Since \(H\) preserves \(W_-\), \(r_h\) is invertible and

\[
a_{g\star h}=a_gr_h,\qquad c_{g\star h}=c_gr_h.
\]

Therefore \(c_{g\star h}a_{g\star h}^{-1}=c_ga_g^{-1}\). The global graph is defined on the correct postcomposition quotient, not just on chosen representatives.

Finally, the original report already proved that \(\Phi:gH\mapsto U_gW_-\) is holomorphic for an independently constructed actual complex atlas. The fixed big-cell graph coordinate is a holomorphic Grassmannian chart. Since this audit proves that the entire image lies in that chart, their composition

\[
Z:M\longrightarrow\Psi^{-\infty}(W_-,E_+)
\]

is globally holomorphic. **One need not and should not infer this from norm-smoothness of the individual representative-dependent diagonal inverse \(a_g^{-1}\).**

## 5. Checks and exact scope

The decisive proof is analytic: the index argument uses explicit block parametrices, and the kernel is ruled out by the degree-two sphere-vector-field obstruction. The elementary new matching identity was additionally checked with Wolfram using

```wolfram
Together[(Fp w gp/z) (I z v/gp) - Fp I w v]
Solve[{a == 0, b == 0, 2 c == 0}, {a, b, c}]
```

The [actual audit output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/supplied-big-cell-check.txt>) gives zero for the first residual and only \(a=b=c=0\) for the second, with no messages. Assumptions are \(z\neq0\), \(g'\neq0\), automatically satisfied on the smooth circle. These are only normalization checks, not evidence for the Fredholm or removable-boundary steps.

Special checks agree: at the identity the diagonal block is the identity; for \(h\in H\), the crossing block \(c_h\) vanishes and the graph is zero. No additional welding theorem is needed beyond the boundary regularity already established and sourced in the original report.

**Proved strengthening:** all actual smooth-circle images lie in one fixed graph cell, with a single global holomorphic smoothing graph operator. **Not inferred:** that every smoothing graph occurs, that the graph image is open in the full operator space, or a global injectivity/embedding theorem for \(Z\). No curvature, central charge, or determinant normalization is asserted. The original report's scope and provenance are unchanged; this separate supplied-text audit provides the additional global result.
