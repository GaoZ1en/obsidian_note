# Separate audit: determinant metric, positive character, and projective lift

## Verdict

**The supplied metric/lift synthesis is correct, with a necessary topology qualification and explicit sign conventions.** In the normalized critical Sobolev representation,
\[
\det_F(\widetilde U_g^*\widetilde U_g)=1.
\]
For determinant pairs `(g,q)` the formula
\[
\rho(g,q)=\det_F(q^*q)^{1/2}
\]
defines a positive multiplicative character of the determinant central quotient. Its kernel is the natural unitary central extension. The canonical embedded copy of the **actual** `PSL2` lies in that kernel. The resulting quotient line metric agrees with the intrinsic determinant metric, globally, not merely at the curvature level.

The graph formulas `h_D=det_F(a^*a)` and the multiplier `det_F(q a^{-1})` are correct **where `a` is invertible**. A general admissible-frame proof below removes this restriction from the global conclusion.

**Essential qualification:** the smooth central extension must be constructed using smoothing-pair/scalar determinant charts. It is not the norm-topology pullback of the usual bounded-operator group. Even a local norm-continuous choice of `q_g` is impossible along rotations.

This is a separate audit of claims explicitly supplied by the parent after the independent report. The [original independent report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/report.md>) is unchanged. No parent report or other review file was opened for this audit. No complex-atlas result is used below.

## 1. Notation and analytic input

Use the full positive weight `V` from the original investigation and put
\[
C_g:=\widetilde U_g=V^{1/2}U_gV^{-1/2},\qquad M_g=C_g^*C_g.
\]
The splitting is the fixed normalized Hilbert splitting `\mathcal H_-⊕\mathcal H_+`. Write
\[
C_g=\begin{pmatrix}a_g&b_g\\c_g&d_g\end{pmatrix}.
\]
Every block in this supplement is a block of `C_g`, not of the unnormalized representation unless explicitly conjugated.

The prior analytic results used here are:

- `C_g` is bounded and invertible; it is strongly continuous and smooth on the common smooth domain, but not norm continuous as a group representation.
- `b_g,c_g` are smoothly smoothing.
- `M_g=1+K_g`, with `K_g` smoothly trace class; in fact `K_g` has order `−2`.
- The positive quotient representation of the actual isotropy is unitary in the critical normalization.

The last two facts were obtained from the exact Schwarzian/Bol identity and the given intrinsic isotropy metric. They are not inferred from the determinant assertions being audited.

## 2. The full Gram determinant is exactly one

### 2.1 Multiplicativity

Application-order multiplication gives `C_(g⋆h)=C_gC_h`. Hence
\[
M_{g\star h}=C_h^*M_gC_h
 =M_h\,(C_h^{-1}M_gC_h).
\]
Both factors on the right are `1+trace class`. Ordinary Fredholm determinant multiplicativity and bounded similarity invariance yield
\[
\chi(g\star h):=\det_F M_{g\star h}
 =\det_F M_h\det_F M_g=\chi(h)\chi(g).
\]
The determinant is positive because `M_g` is positive and invertible. The function `χ` is smooth because `g↦M_g−1` is trace-norm smooth. No norm-smoothness of `C_g` was used.

### 2.2 Why the character is trivial

There are two valid proofs.

**Direct infinitesimal proof.** At the identity,
\[
d(\log\chi)_e(X)=\operatorname{Tr}(dM_e(X)).
\]
For every nonzero Fourier mode, the infinitesimal Gram defect has that nonzero Fourier shift, hence zero diagonal and zero trace. For the real rotation generator the Gram defect is exactly zero, since `V` commutes with rotations. The trace-norm summability from the prior order `−2` estimates extends this conclusion to every smooth real vector field. Thus the derivative of the smooth character vanishes. Connectedness of `Diff+(S1)` gives `χ≡1`.

**Perfectness proof.** A smooth positive character differentiates to a real linear functional vanishing on Lie brackets. Every zero-mean field `f(x)∂x` is `[∂x,F(x)∂x]` for a periodic primitive `F`. The constant field is
\[
[\cos x\,\partial_x,\sin x\,\partial_x]=\partial_x.
\]
Thus the real smooth Lie algebra is perfect. The derivative vanishes, and connectedness again gives the result. These bracket signs agree with the application-order convention and the supplied Witt basis.

Therefore
\[
\boxed{\det_F M_g=1\quad\text{for every smooth }g.}          \tag{2.1}
\]
This is an exact operator-theoretic consequence, not a conclusion drawn from finite determinant numerics.

## 3. Determinant pairs and the positive character

Let a pair be `(g,q)`, where `q:\mathcal H_-→\mathcal H_-` is bounded and invertible and
\[
q-a_g\in\mathcal S_1.
\]
Existence follows from the index-zero Fredholm property of `a_g`. Pair multiplication is
\[
(g,q)(h,r)=(g\star h,qr).
\]
It is closed because
\[
a_{g\star h}=a_ga_h+b_gc_h,
\]
with the last term smoothing.

The Gram block identity
\[
a_g^*a_g+c_g^*c_g=(M_g)_{--}
\]
shows `a_g^*a_g−1∈\mathcal S_1`. Therefore `q^*q−1∈\mathcal S_1`, even when `a_g` itself has a kernel. Define
\[
\rho(g,q)=\det_F(q^*q)^{1/2}>0.
\]
For invertible `q,r`,
\[
(qr)^*(qr)=(r^*r)\,[r^{-1}(q^*q)r].
\]
Thus
\[
\rho(gh,qr)=\rho(g,q)\rho(h,r).
\]
If a pair is changed by a determinant-one gauge `q↦qr`, with `r=1+trace class` and `det_F r=1`, its value of `ρ` does not change, because
\[
\det_F(r^*r)=|\det_F r|^2=1.
\]
Hence `ρ` descends to the central quotient of the determinant-pair group by determinant-one gauges. The center is `C*`, with coordinate
\[
z=\det_F q\quad\text{over }g=e,
\]
and `ρ(z)=|z|`.

## 4. Smoothness of the central quotient: do not reintroduce the norm-topology error

### 4.1 A precise obstruction

For rotations, `a_t` has infinitely many diagonal entries `e^{ijt}` on negative modes. Along `t_N=π/N→0`, infinitely many modes have eigenvalue `−1`. Hence
\[
\|[a_{t_N}]-[1]\|_{\mathrm{Calkin}}=2.
\]
If `q_t−a_t` is trace class, then it is compact and has the same Calkin class. Consequently no such local choice `t↦q_t` can be norm continuous at zero. In particular, the extension cannot be defined as a norm-smooth submanifold of `G×GL(\mathcal H_-)` with these pair representatives.

There is a second obstruction to a naïve trace-norm pair atlas. Conjugation by rotations of an arbitrary trace-class operator need not be differentiable in trace norm. For example, take a rank-one operator `|u⟩⟨v|`, with `v` one Fourier mode and `u` in the Hilbert space but not in the domain of the rotation generator. Its rotation conjugate is not differentiable in trace norm. The full unquotiented pair group therefore cannot simply be declared smooth in arbitrary trace-class fiber coordinates.

### 4.2 The correct scalar determinant charts

Choose local invertible representatives
\[
q_g=a_g+F_g,
\]
where `F_g` is smoothly finite rank with smooth vectors, or smoothly smoothing. Such representatives exist locally. One way to see local stability without assuming norm continuity of `a_g` is to choose a finite-rank correction at one point and observe that `q_g^*q_g` is norm smooth: `a_g^*a_g−1` is trace-norm smooth, and the finite-rank cross terms are smooth on smooth vectors. A positive lower bound persists locally, and index zero then gives invertibility.

For these representatives,
\[
q_gq_h-q_{g\star h}\in\Psi^{-\infty}
\]
smoothly. In particular the local scalar cocycle
\[
\boxed{\quad
c(g,h)=\det_F(q_{g\star h}^{-1}q_gq_h)
\quad}                                                   \tag{4.1}
\]
is smooth. Smoothness of inverse representatives composed with smoothing operators follows on the common smooth domain and in every smoothing seminorm; no derivative of an arbitrary rough trace-class operator is required.

These scalar cocycles construct a smooth `C*` central extension over the smooth Fréchet group. Equivalently, start with smoothing pairs and divide by determinant-one smoothing gauges. Every trace-class pair class has a smoothing representative: relative to one `q_g`, replace a determinant-class gauge by a rank-one gauge with the same determinant. Thus this smooth central extension realizes the same algebraic determinant central quotient.

In these local charts, a pair class is written `(g,z)` relative to `q_g`, and
\[
\rho(g,z)=\det_F(q_g^*q_g)^{1/2}|z|,
\]
which is smooth. This supplies the topology missing from a purely algebraic pair formula.

The subgroup `\widehat G_U=ker ρ` is therefore a genuine smooth unitary central extension. If `s(g)` is a local complex section with cocycle `c(g,h)`, its normalized unitary section is `ρ(s(g))^{-1}s(g)` and has cocycle
\[
c_U(g,h)=c(g,h)/|c(g,h)|.
\]

## 5. Big-cell factorization and the intrinsic determinant metric

Assume `a=a_g` is invertible and set
\[
Z=ca^{-1},\qquad S=d-Zb.
\]
Then
\[
C_g=
\begin{pmatrix}1&0\\Z&1\end{pmatrix}
\begin{pmatrix}a&0\\0&S\end{pmatrix}
\begin{pmatrix}1&a^{-1}b\\0&1\end{pmatrix}.                \tag{5.1}
\]
Both unipotent factors are `1+smoothing` and have Fredholm determinant one. Their Gram determinants are also one. The diagonal factor is almost unitary, with `a^*a−1`, `S^*S−1` trace class. Applying the same bounded-similarity determinant identity as in §2 gives
\[
\det_F M_g=\det_F(a^*a)\det_F(S^*S).
\]
By (2.1),
\[
\det_F(a^*a)\det_F(S^*S)=1.                               \tag{5.2}
\]

The graph quotient coordinate is `v_+−Zv_-`. A homogeneous positive vector `u` has graph coordinate `v=Su`, and intrinsic squared norm `||u||^2`. Hence the intrinsic Gram operator in this graph frame is
\[
H_g=(S^{-1})^*S^{-1}=(SS^*)^{-1}=1+\mathcal S_1.
\]
Similarity invariance gives `det_F(SS^*)=det_F(S^*S)`. Consequently the intrinsic determinant metric in the canonical graph quotient determinant frame is
\[
\boxed{\quad h_D(g)=\det_F H_g
        =\det_F(S^*S)^{-1}=\det_F(a^*a).
\quad}                                                   \tag{5.3}
\]
This verifies the supplied factorization, including which Gram product occurs in the operator formula and why its determinant can be written in either order.

For comparison with the earlier Schur-complement construction, the reference graph quotient metric is `(1+ZZ^*)^{-1}` and the homogeneous reference Gram operator is
\[
J_g=S^*(1+ZZ^*)^{-1}S.
\]
Thus `det(1+ZZ^*)^{-1} det(J_g)^{-1}=det(S^*S)^{-1}`, exactly agreeing with (5.3).

## 6. The quotient-dual multiplier has the claimed orientation

Under the pair `(g,q)`, the admissible tautological frame at the image of the vacuum is
\[
C_g\iota_-q^{-1}
 =\binom{1}{Z}\,a q^{-1}.
\]
Therefore the tautological determinant multiplier is `det_F(a q^{-1})`. The **quotient determinant**, its dual, has multiplier
\[
\boxed{\det_F(q a^{-1}).}                                \tag{6.1}
\]
This is defined because `q a^{-1}−1` is trace class. Its intrinsic squared norm is
\[
|\det_F(q a^{-1})|^2\,h_D(g)
 =\frac{\det_F(q^*q)}{\det_F(a^*a)}\det_F(a^*a)
 =\rho(g,q)^2.                                           \tag{6.2}
\]
Thus the supplied metric and the actual relative determinant action match, rather than merely having proportional curvatures.

A finite-dimensional nonunitary check of the power and sign is `C=[[2,1],[3,2]]`, with `det C=1`. Here `a=2`, `S=1/2`, `h_D=4`. Choosing `q=1` gives `ρ=1` and quotient-dual multiplier `1/2`; its squared norm is `(1/2)^2·4=1`. This is only an elementary exact check, not the proof of the infinite-dimensional statement.

## 7. Global metric matching, including points outside the big cell

There is no need to assume that `a_g` is globally invertible or that a big cell is dense in this orbit.

Choose a smoothing representative `(g,q)` of a determinant pair and set
\[
F_-=C_g\iota_-q^{-1}.
\]
It is an admissible frame of `W_g`: its negative block is `a_gq^{-1}=1+smoothing`, and its positive block is smoothing. Choose any admissible orthogonal quotient frame `F_+`, and form the full isomorphism
\[
F=[F_-,F_+]=1+\text{smoothing}.
\]
Then
\[
F^{-1}C_g=\begin{pmatrix}q&B\\0&S\end{pmatrix},
\]
where `B` is smoothing and `S` is invertible. Factoring off the upper unipotent yields
\[
1=\det_F M_g
 =|\det_F F|^2\det_F(q^*q)\det_F(S^*S).                   \tag{7.1}
\]
The intrinsic quotient Gram determinant in the `F_+` frame is `det_F(S^*S)^{-1}`.

The total determinant relation says that the quotient-dual vector specified by the pair is `(det_F F)^{-1}` times the determinant frame supplied by `F_+`. This is the usual finite-dimensional total determinant relation, applied to admissible relative frames. Its squared intrinsic norm is therefore
\[
|\det_F F|^{-2}\det_F(S^*S)^{-1}
 =\det_F(q^*q)=\rho(g,q)^2.                               \tag{7.2}
\]
This proves the canonical metric equality globally, including singular `a_g`.

## 8. Actual isotropy and the canonical projective metric lift

For `h∈H`, the actual negative subspace is invariant, so `c_h=0`, and `a_h` is invertible. The positive quotient block `d_h` is unitary in the critical normalization. Consequently
\[
1=\det_F M_h=\det_F(a_h^*a_h)\det_F(d_h^*d_h)
 =\det_F(a_h^*a_h).
\]
Thus
\[
\rho(h,a_h)=1.
\]
Because the lower-left blocks vanish, `a_(h⋆k)=a_ha_k`; hence
\[
h\longmapsto(h,a_h)
\]
is a canonical group embedding of the **actual** `PSL2`, not merely a Lie algebra splitting or a splitting on its cover. Its image lies in `\widehat G_U`.

The phrase “`H` lies in `ker ρ`” must mean this embedded copy. Arbitrary central rescalings of an isotropy lift need not lie in the kernel.

The nonzero vectors of the quotient determinant line are identified with the determinant central quotient modulo this `H`. Under this identification their intrinsic norm is `ρ`, by §7. Therefore
\[
\widehat G_U/H
\]
is exactly its unit-circle bundle, and the left action of `\widehat G_U` preserves the intrinsic determinant metric. This is the desired natural unitary projective lift, not a new metric chosen only to reproduce a curvature formula.

## 9. Extension-cocycle sign versus line-curvature sign

This audit fixes the central coordinate to be `z=det_F q`, acting on the quotient-dual line by multiplication by `z`. In a big-cell section `q_g=a_g`,
\[
c(g,h)=\det_F(a_{g\star h}^{-1}a_ga_h).
\]
Let `B_X=P_-A_XP_+`, `C_X=P_+A_XP_-`. Its differentiated Lie cocycle is
\[
c_{\rm Lie}(X,Y)=-\operatorname{Tr}(B_XC_Y-B_YC_X).
\]
For `m≥1`,
\[
c_{\rm Lie}(e_m,e_{-m})
 =\operatorname{Tr}(B_{-m}C_m)
 =-\frac{13}{6}(m^3-m).
\]
The quotient determinant connection curvature in the original report is the opposite sign,
\[
F(e_m,e_{-m})=+\frac{13}{6}(m^3-m).
\]
This is the standard `F=−c_Lie` relation for the corresponding invariant connection and section convention. It is not an inconsistency. Changing the central coordinate to its dual reverses the extension-cocycle sign. A quoted “central charge” must specify which of these conventions is meant; curvature and central-bracket coefficients should not silently be identified.

## 10. Evidence preservation and scope of this supplement

No kernels were rerun after the parent requested preservation without reruns. The supplement’s new determinant/character/topology arguments are analytic proofs. The elementary finite-dimensional illustration in §6 was evaluated directly. No new numerical evidence is claimed.

The original actual MCP server returns have now been copied byte-for-byte into this review directory:

- [First actual MCP return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.mcp-return.json>)
- [Second actual MCP return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.mcp-return.json>)

Both contain the original arguments, the server’s executed-code record, and its returned diagnostics; both have `upstreamTruncated: false`. The verbatim submitted programs, extracted from the `arguments.code` fields, are also stored separately:

- [First executed-source record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.executed-source.wl>)
- [Second executed-source record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.executed-source.wl>)

Those submitted programs load the already-preserved complete sources:

- [First complete executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.wl>)
- [Second complete executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.wl>)

SHA-256 values recorded after copying:

| Artifact | SHA-256 |
|---|---|
| [First MCP return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.mcp-return.json>) | `31115abb1b393f5bd723d6f1e553b74117099f7305c9662d0cfbde0fff0f5996` |
| [Second MCP return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.mcp-return.json>) | `b92b6a6c0887796e17db06c831816a454c324b33c04e9066839cfa19e68fcadd` |
| [First complete source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.wl>) | `3f23513c5ca70085c5f23730466cf5b406c4269fdf5bae22c62535b8be4a1bcc` |
| [Second complete source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.wl>) | `b079b5b686729fce9b5fdf08af807e708492f6cc64e0ef3c2ea350227b2d777b` |

A [draft additional algebra script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/lift_audit_checks.wl>) was prepared before the no-rerun instruction. It is explicitly marked **unexecuted**; no outputs from it exist or are cited as verification.

This supplement establishes the smooth determinant-metric/projective-lift matching under the smooth LC and trace-ideal input of the original report. It does not audit the separate holomorphic-atlas result, and it does not change the original report’s statement of that previously unresolved hypothesis.
