# The relative Fredholm determinant of the vacuum tangent bundle

## Result and scope

The determinant interface left open in [the projective-curvature report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md>) has a concrete solution. On the **smooth**, degree-one, projective vacuum orbit, specify the positive tangent bundle as the quotient by exterior holomorphic vector fields, use its relative Fredholm determinant, and use the invariant critical Sobolev metric. Then its actual transition functions, Chern connection, determinant metric, and projective PSL lift can be constructed and compared:

\[
\boxed{
\begin{aligned}
\mathscr D&=\operatorname{Det}_{\rm rel}T^{1,0}M\simeq L_{-26},
&F_{\mathscr D}&=\operatorname{Tr}R=\frac{26i}{C}\Omega_C,\\
\mathscr K&=\mathscr D^{-1},
&\mathscr K^{1/2}&\simeq L_{13},\\
F_{L_C\otimes\mathscr K^{1/2}}&=-i\Omega_{C+13}.
\end{aligned}}
\]

The identifications preserve the specified Hermitian metrics, connections, holomorphic structures, and relative projective actions after fixing the unit base fiber. They do **not** follow merely from equality of curvatures. The half-root acts through the appropriate central double cover; the tensor product uses the Baer-sum extension.

**Proof level.** The construction below is analytic, with an explicitly cited all-regularity-level smooth-welding theorem supplying the complex atlas. Ordinary trace-class/Fredholm determinants suffice; no zeta determinant or infinite trace of a homogeneous generator is used. This is a determinant prescription for the polarized tangent bundle, not a proof that a gravitational ghost/Jacobian measure selects that prescription. No continuum Hilbert-space integration measure, nonlinear quantum intertwiner, or source-dependent gravitational Ward functional is inferred.

## 1. Objects and conventions

Let
\[
G=\operatorname{Diff}^{\infty}_+(S^1),\quad g\star h=h\circ g,
\quad H=\operatorname{PSL}(2,\mathbb R),\quad M=G/H.
\]
The quotient is projective **postcomposition**. Angles have period \(2\pi\). Set
\[
e_m=i e^{imx}\partial_x,\quad[e_m,e_n]=(m-n)e_{m+n},
\quad\overline{e_m}=-e_{-m},\qquad U_gv=(v\circ g)/g'.
\]
Thus \(U_{g\star h}=U_gU_h\), \(dU_X=\operatorname{ad}_X\), and the left logarithmic velocity is \(\theta_g=\delta g\circ g^{-1}\). The smooth spaces are
\[
\mathfrak b_-=\{j\leq1\},\qquad E_+=\{j\geq2\},\qquad
\mathfrak g_{\mathbb C}/\mathfrak b_-\simeq E_+.
\]
Fourier coefficients are rapidly decreasing. The finite projective subtraction is essential: \(\mathfrak b_-\) contains **all** of \(e_{-1},e_0,e_1\), and is \(H\)-stable. The positive complement is not an invariant subspace of the full adjoint representation.

Write \(w_j=j(j^2-1)\) for \(j\geq2\). The invariant Hermitian form, linear in its first argument, has \(h(e_j,e_k)=w_j\delta_{jk}\); \(Je_j=ie_j\). The real two-form is \(\omega=g(J\cdot,\cdot)\), so
\[
\omega(e_m,e_{-m})=-iw_m,\qquad \Omega_C=(C/12)\omega.
\]
The CPS convention is \(\Omega=\delta\Theta\), \(\iota_{X_H}\Omega=-\delta H\), \(\hbar=1\), as in [the authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>). Here \(C=6k_{\rm CS}>0\) is still a classical/reference coefficient.

For the Hilbert fibers use the full reference norm
\[
V e_j=v_j e_j,\qquad v_j=
\begin{cases}|j|(j^2-1),&|j|\geq2,\\1,&|j|\leq1.
\end{cases}
\]
Its completion \(\mathcal H_V\) is equivalent to \(H^{3/2}\). Let \(W_-\) and \(\mathcal H_+\) be its closed \(j\leq1\) and \(j\geq2\) subspaces. The smooth base remains \(M\); **no critical-Sobolev diffeomorphism group or no-loss base-manifold theorem is asserted**.

Smooth diffeomorphisms act boundedly on every fixed Sobolev fiber. Their crossing blocks are smoothly smoothing, and composition with a smooth kernel absorbs the strong-but-not-norm-smooth group action. These facts are proved in [the preceding analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md>) and in the new [determinant-lift derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/report.md>).

## 2. An actual complex atlas, not a Newlander–Nirenberg assumption

Use welding with the specific convention
\[
f=F\circ g\quad\text{on }S^1,
\]
where \(f\) embeds the closed disk into the sphere and \(F\) embeds the closed exterior disk into its complementary disk. Replacing \(g\) by \(h\circ g\) changes \(F\) to \(F\circ h^{-1}\), and leaves the projective class of \(f\) unchanged.

An explicit complex domain is obtained as follows. For
\(q\in\mathcal A^\infty=\operatorname{Hol}(D)\cap C^\infty(\overline D)\), solve
\[
y''+\tfrac12qy=0,\qquad
(y_1(0),y_1'(0))=(0,1),\quad(y_2(0),y_2'(0))=(1,0),
\]
and put \(f_q=y_1/y_2\), as a **sphere-valued** map. Its Wronskian is one, so it is locally univalent, including at the allowed simple poles. Define
\[
\mathcal U^\infty=\{q:f_q\text{ embeds }\overline D\text{ into }\mathbb {CP}^1\}.
\]
Volterra iteration for the ODE gives holomorphic dependence at every smooth seminorm. Near any given embedding, a fixed target Möbius map puts its compact image in a finite chart; compact embeddings are open in the \(C^1\) topology. Hence \(\mathcal U^\infty\) is genuinely open. Equal Schwarzians differ by a target Möbius map, and the remaining exterior parametrization differs by \(H\). Smooth exterior uniformization gives the converse. Therefore
\[
\mathcal B:M\longrightarrow\mathcal U^\infty,\qquad gH\longmapsto S(f)
\]
is a bijection.

The exact-topology smoothness input is Lanza de Cristoforis–Preciso, *Differentiability properties of some nonlinear operators associated to the conformal welding of Jordan curves in Schauder spaces*, Hiroshima Math. J. **33** (2003), 59–86, [published PDF](<https://math.sci.hiroshima-u.ac.jp/hmj/v33.1/P059-086.PDF>). The relevant published statements are Theorem 3.4(i), p.70/PDF12; Theorem 4.28, pp.82–83/PDF24–25; Theorem 5.2, p.85/PDF27. Their sewing shift is \(\varphi=g^{-1}\), not \(g\). For integers \(m\geq1\), \(r\geq1\), and \(0<\alpha<1\), the interior sewing map has local \(C^r\) extensions from little-Hölder \(h^{m+r,\alpha}\) to \(h^{m,\alpha}\); continuity is stated separately at \(r=0\). Compatible derivatives at all levels imply Bastiani smoothness on \(C^\infty\); derivative loss has not been discarded.

The inverse is explicit as well. In a bounded target chart with \(f(0)=0\), put \(\zeta=f|_{S^1}\), \((R\zeta)(t)=1/\zeta(1/t)\), and \(C(\xi)=\widetilde f[\xi,0]^{-1}\circ\xi\), where \(\widetilde f\) is the normalized interior Riemann map. Theorem 3.4(i) makes \(C\) real analytic at every Hölder level, and
\[
g=R C R\zeta.
\]
Thus \(\mathcal B\) is a two-sided smooth Fréchet identification, and supplies an actual complex atlas.

At the identity,
\[
d\mathcal B_o(e_m)=-(m^3-m)z^{m-2}\quad(m\geq2).
\]
At arbitrary \(g\), linearizing welding shows
\[
\ker d_{\mathbb C}(\mathcal B\circ\pi)_g
=\{v\circ g:v\in\mathfrak b_-\}.
\]
The ambiguity is exactly a holomorphic sphere vector field, obtained by gluing the interior/exterior variations; it is projective. This identifies the atlas with the stipulated invariant positive polarization, at every point.

Consequently the map \(gH\mapsto F_g=U_gW_-\) is holomorphic into the smoothing restricted Grassmannian: it is smooth by the smoothing-kernel argument, its differential kills \(\mathfrak b_-\), and equivariance transports complex-linearity. Ordinary one-complex-variable Cauchy–Riemann theory is used only **after** the complex charts exist. Moreover, the holomorphic fundamental-field anchor has angular value \(g'X\), not \(X\circ g\), and kernel \(U_g\mathfrak b_-\). It yields the actual holomorphic identification
\[
T^{1,0}M\simeq
(M\times\mathfrak g_{\mathbb C})/\{(gH,U_g\mathfrak b_-)\}.
\]
The full proof, all-level regularity statements, source-page images, and chirality checks are in the [independent atlas derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-atlas-welding-RdV6Bs.md>).

## 3. Fredholm graph coordinates and the projective subtraction

Write the bounded group operator in the block order \(W_-\oplus\mathcal H_+\):
\[
U_g=\begin{pmatrix}a_g&b_g\\c_g&d_g\end{pmatrix}.
\]
The crossing blocks are smoothly smoothing. The identities
\[
a_g a_{g^{-1}}=1-b_gc_{g^{-1}},\qquad
a_{g^{-1}}a_g=1-b_{g^{-1}}c_g
\]
show local invertibility near the identity despite norm discontinuity of \(U_g\). They also give a global smoothing parametrix. The index is zero: for small \(h\), \(a_h\) is invertible and \(a_{g\star h}-a_ga_h\) is compact, so the index is locally constant on connected \(G\).

There is a useful additional global argument. If \(a_gv=0\), the smoothing parametrix makes \(v\) smooth, and \(u=U_gv\) has only modes \(j\geq2\). In welding coordinates \(w=e^{ig(x)}\), the fields
\[
V_{\rm in}(z)=iz\,u(z),\qquad V_{\rm out}(w)=iw\,v(w)
\]
satisfy \(f'V_{\rm in}=F'V_{\rm out}\) on the common curve. They glue to a holomorphic sphere vector field. The interior field vanishes to order at least three at \(z=0\), which no nonzero holomorphic sphere vector field can do. Thus the kernel is zero and \(a_g\) is invertible. This argument specifically uses the modes \(j\geq2\), not a generic Hardy polarization. Its all-Sobolev Fredholm and sphere-section details are checked in the separate [supplied global-cell audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-global-big-cell-audit-RdV6Bs.md>); it does not assert that the image fills an open set of all smoothing graphs.

Hence
\[
Z_g=c_ga_g^{-1},\qquad S_g=d_g-Z_gb_g
\]
are globally defined; \(Z_g\) is the holomorphic, smoothly smoothing graph coordinate of \(F_g\). The quotient map is
\[
J_g[v_-+v_+]=v_+-Z_gv_-,
\qquad J_g[U_gv]=S_gv\quad(v\in E_+).
\]
Both \(a_g\) and \(S_g\) are boundedly invertible on each Sobolev fiber, but neither family is being asserted norm-smooth. The quotient Grassmann frames, unlike those homogeneous frames, are admissible norm-smooth Hilbert trivializations. Here **admissible** means fixed-reference quotient frames differing from the graph frame by \(1+\)smoothing, not arbitrary Hilbert trivializations. Within this restricted frame class the transitions are \(1+\)smoothing, and ordinary Fredholm determinants are legitimate.

Define \(\mathscr D\) to be the relative determinant of this quotient bundle, equivalently the **dual** of the tautological relative determinant of \(F_g\). A normalized reference determinant fiber at \(W_-\) is part of the relative construction. There is no attempted top exterior power of an arbitrary infinite-dimensional vector space, nor a determinant of the infinite rotation representation on \(E_+\).

## 4. The Levi-Civita connection becomes trace class in admissible frames

The established homogeneous Levi-Civita operator is
\[
\begin{aligned}
\Lambda_m e_j&=-\frac{(j+2m)w_j}{w_{j+m}}e_{j+m}&& (m\geq1),\\
\Lambda_0e_j&=-je_j,\\
\Lambda_{-r}e_j&=-(j+r)e_{j-r}&& (j\geq r+2),
\end{aligned}
\]
with the last expression zero below the cutoff. It is a smooth connection on the common smooth domain, and is \(H\)-equivariant including the isotropy modes. Let
\[
A_X=P_+\operatorname{ad}_X P_+,\qquad D_X=\Lambda_X-A_X.
\]
Direct subtraction gives
\[
D_m=0\ (m\leq1),\qquad
D_m e_j=-\frac{m(m^2-1)(2j+m)}{w_{j+m}}e_{j+m}\ (m\geq2).
\]
For smooth \(X\), \(D_X\) is order \(-2\), trace class on both coefficient \(L^2\) and the critical Sobolev fiber, and \(\operatorname{Tr}D_X=0\). Its matrix entries are rapidly decreasing off the diagonal with the order \(-2\) diagonal estimates and their finite differences.

In the homogeneous frame \(dU=U\operatorname{ad}_\theta\). Differentiating \(S=J U|_+\), using \(JU|_-=0\), gives the exact identity
\[
dS=S A_\theta-(dZ)b.
\]
The graph-frame connection is therefore
\[
\boxed{\quad
\Gamma=S\Lambda_\theta S^{-1}-(dS)S^{-1}
=S D_\theta S^{-1}+(dZ)bS^{-1}.
\quad}
\]
The second term is smoothly smoothing. The first is smoothly order \(-2\), not merely pointwise trace class.

Here is a trace-topology justification rather than an appeal to norm-smoothness of \(U\). For a weighted shift \(B_ke_j=t_k(j)e_{j+k}\) of order \(-2\), the non-boundary coefficient of \([\operatorname{ad}_{e_a},B_k]\) is
\[
-k\,t_k(j)+(a-j)[t_k(j)-t_k(j+a)].
\]
The finite difference improves the decay before multiplication by \(j\), so the result remains order \(-2\). Rapid Fourier smearing absorbs the polynomial mode factors and the finite cutoff bands. Iterated commutators have the same estimates. Strong continuity, uniform local operator bounds, and finite-rank approximation give trace-norm continuity of conjugation. Integrating the commutator identity on the smooth core then gives trace-norm derivatives of every order. The Toeplitz parametrices replace \(S\) and \(S^{-1}\) by the corresponding full \(U\) blocks plus smoothing terms, so the same conclusion holds for \(S D_\theta S^{-1}\). This proves the asserted smoothness in the trace ideal.

Thus \(\Gamma\) is an actual bounded trace-class connection form in admissible Hilbert charts. Along a smooth compact parameter path its usual bounded-operator parallel-transport equation is well posed and its determinant transport is induced by
\[
\boxed{\qquad \alpha_{\mathscr D}=\operatorname{Tr}\Gamma
=\operatorname{Tr}((dZ)bS^{-1}).\qquad}
\]
Under a transition \(t=1+\mathcal S_1\), it changes by \(d\log\det_F t\). These are the actual determinant transition/connection laws, not a radial primitive added to match a target curvature.

In these charts ordinary trace calculus is sufficient:
\[
F_{\mathscr D}=d\operatorname{Tr}\Gamma
=\operatorname{Tr}(d\Gamma+\Gamma\wedge\Gamma)
=\operatorname{Tr}R.
\]
No trace of \(\Lambda_X\) is taken. In homogeneous notation \(A_XD_Y\) and \(D_YA_X\) can individually have order \(-1\) and fail to be trace class; their cyclic traces must not be postulated. The graph argument avoids that error. A separate cutoff proof of the zero trace of their trace-class commutator is given in the [independent Fredholm derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/report.md>).

The distinction from the previous report is important: unbounded homogeneous generators are not an obstruction to this Hilbert bundle connection, because their frames are not norm-smooth Hilbert trivializations. This does not make the original group representation norm-continuous.

## 5. Why the critical metric is determinant class

Let \(B=\partial_x^3+\partial_x\), and let \(*\) here denote the coefficient-\(L^2\) adjoint. A direct differentiation gives
\[
U_g^* B U_g=B+\mathfrak a_g\partial_x+\tfrac12\mathfrak a_g',
\qquad
\mathfrak a_g=\left[\frac{1-2S(g)}{g'^2}\right]\circ g^{-1}-1.
\]
Equivalently, with \(D=-i\partial_x\), \(W=D^3-D\), \(\phi=g^{-1}\),
\[
U_g^*WU_g-W=-(k_gD+Dk_g),\qquad
k_g=S(\phi)+\tfrac12(\phi'^2-1)=\tfrac12\mathfrak a_g.
\]
The projective relation \(S(g)+(g'^2-1)/2=0\) makes this defect vanish for \(H\). At first order \(\mathfrak a_{\mathrm{id}+t\xi}=-2t(\xi'''+\xi')+O(t^2)\). In the CPS normalization \(\mathfrak a_g=-24T_{g^{-1}}/C\); the same projective stress tensor controls this analytic defect.

Since \(V=\operatorname{sgn}(D)W+P_{|j|\leq1}\) and the sign commutators with \(U_g\) are smoothly smoothing, \(U_g^*VU_g-V\) has order one. Therefore
\[
\widehat U_g=V^{1/2}U_gV^{-1/2},\qquad
M_g=\widehat U_g^*\widehat U_g
=1+\text{a smoothly order-}(-2)\text{ operator}.
\]
In one dimension this is smoothly trace class. The estimate is an ordinary summable Fourier bound: the normalized first-order defect has entries bounded by a rapidly decreasing function of \(k-j\), times \((|j|+|k|)/\sqrt{v_jv_k}\), whose diagonal sums converge. The smoothing remainder causes no loss. Positivity and bounded invertibility follow from those of \(U_g\).

The reference quotient metric in the homogeneous \(E_+\) frame is the Schur complement
\[
J_g^{\rm met}=(M_g)_{++}-(M_g)_{+-}(M_g)_{--}^{-1}(M_g)_{-+}
=1+\mathcal S_1.
\]
The intrinsic metric is the identity in this normalized frame, so its ratio to the reference quotient metric is \((J_g^{\rm met})^{-1}\). Its determinant metric correction is the **ordinary** \(\det_F(J_g^{\rm met})^{-1}\).

The exponent is substantive: for an order-\(s\) Sobolev norm the full normalized Gram principal symbol is \((g'\circ g^{-1})^{2s-3}\). For \(s\ne3/2\) and a nonconstant-derivative diffeomorphism, its defect is generically order zero and not compact. The exact third-order identity supplies the additional order-\(-2\) cancellation at the critical value.

An unweighted \(L^2\) tangent metric cannot replace this argument: already at the base point its ratio to the intrinsic metric has eigenvalues \(w_j\), and is not a bounded determinant-class perturbation of the identity. The unweighted Grassmann projection connection remains the counterexample calculated previously.

## 6. Chern identification and the actual determinant metric

The atlas in §2 gives the quotient bundle its actual holomorphic structure. For a smooth equivariant homogeneous section and \(Z\in\mathfrak b_-\),
\[
\bar\partial_Es(Z)=L_Zs+P_+[Z,s].
\]
The supplied \(\Lambda\) agrees with this quotient action on all of \(\mathfrak b_-\), and preserves \(h_w\). Hence it is the Chern connection. This conclusion uses the actual atlas and quotient anchor, not merely \(N_J=0\).

In this section and the determinant-pair formulas below, use the blocks of \(\widehat U=V^{1/2}UV^{-1/2}\), retaining the same letters \(a,b,c,d,Z,S\). This is a fixed Sobolev isometry; the preceding block identities and ordinary traces are unchanged. All stars in these formulas are adjoints in that orthonormal critical representation, not the coefficient-\(L^2\) adjoint of §5.

In the critical normalized graph frame the intrinsic metric operator is
\[
H_g=(S_g^{-1})^*S_g^{-1}=1+\mathcal S_1.
\]
It is a smooth positive bounded metric. Its determinant metric on the actual holomorphic quotient determinant is
\[
h_{\mathscr D}=\det_F H_g,
\qquad
\alpha_{\mathscr D}=\partial\log h_{\mathscr D},\qquad
F_{\mathscr D}=\bar\partial\partial\log h_{\mathscr D}.
\]
This also identifies the connection correction relative to the ambient quotient Chern connection as \(-\partial\log\det_F J_g^{\rm met}\). The resulting line metric is not an unspecified normalization of a nonunitary action.

There is a particularly useful simplification. The positive function \(\det_F M_g\) is a smooth group character, since
\[
M_{g\star h}=\widehat U_h^*M_g\widehat U_h
=M_h(\widehat U_h^{-1}M_g\widehat U_h)
\]
and the Fredholm determinant is invariant under bounded similarity. The real circle-vector-field Lie algebra is perfect: a zero-mean field is \([\partial_x,\eta\partial_x]\), and \([\cos x\partial_x,\sin x\partial_x]=\partial_x\). Connectedness of \(G\) therefore gives
\[
\boxed{\det_F M_g=1.}
\]
Block factorization into two smoothing unipotent factors and \(\operatorname{diag}(a_g,S_g)\) yields
\[
1=\det_F(a_g^*a_g)\det_F(S_g^*S_g),\qquad
\boxed{h_{\mathscr D}=\det_F(a_g^*a_g).}
\]
The stars and blocks in this formula are for the critical normalized Hilbert representation. It supplies a global positive Fredholm expression for the line metric in the graph frame.

For \(h\in H\), \(c_h=0\), \(d_h=\rho_h\) is unitary on \(\mathcal H_+\), and \(S_{g\star h}=S_g\rho_h\). Hence this metric is genuinely a function on \(M\). Neither \(\det_F\rho_h\) nor an infinite product of rotation phases is used.

## 7. The actual projective lift, including its central-circle convention

Define determinant pairs \((g,q)\), where \(q:W_-\to W_-\) is bounded invertible and \(q-a_g\) is trace class, modulo the determinant-one kernel. Multiplication is \((g,q)(h,r)=(g\star h,qr)\). Near the identity, or globally after §3, the section \(q=a_g\) has multiplier
\[
\mathcal C(g,h)=\det_F(a_ga_ha_{g\star h}^{-1})
=\det_F(1-b_gc_ha_{g\star h}^{-1}).
\]
The argument of this determinant differs from the identity by a smoothly smoothing operator. **Give the central quotient its scalar determinant charts, not the subspace topology of \(G\times\mathrm{GL}(W_-)\) with operator-norm-smooth representatives.** Even rotations preclude that latter topology; the unquotiented trace-class pair group need not be smooth in naive trace-norm charts. Smoothing representatives suffice for all local sections and yield the same algebraic central quotient. Their scalar transition and multiplication defects are smoothly smoothing determinants. This gives actual smooth group charts and multiplication without a norm-\(\mathrm{GL}_{\rm res}\) theorem. The full proof, also allowing finite-rank Fredholm corrections without using the global graph argument, is in the [fresh lift derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/report.md>).

The pair acts on tautological admissible frames by \(w\mapsto\widehat U_gwq^{-1}\), so the quotient determinant has central character **\(+1\)**. In its graph frame the base-fiber action is
\[
(g,q)\cdot 1_o=\det_F(qa_g^{-1})\,1_g.
\]
The critical norm supplies an explicit multiplicative positive character
\[
\rho(g,q)=\det_F(q^*q)^{1/2}.
\]
Indeed \(q^*q-1\) is trace class, the expression descends through determinant-one equivalence, and multiplicativity follows by bounded similarity as above. Its central restriction is \(|z|\). Thus \(\ker\rho\) is a genuine \(U(1)\) subgroup extension, not a fiber-dependent rescaling of an action. The exact splitting \(h\mapsto[(h,a_h)]\) lies in it, since a smooth positive character of connected PSL is trivial.

The line metric is invariant under this subgroup. At the base fiber the norm of the displayed action is
\[
|\det_F(qa_g^{-1})|^2h_{\mathscr D}(g)
=\det_F(q^*q)=1.
\]
The natural determinant action is holomorphic, so it preserves the Chern connection as well. This explicitly matches the determinant metric, action and connection, not just the curvature class.

For signs, let real \(T\) exponentiate with period \(2\pi\), and use
\[
\sigma_c(e_m,e_n)=\frac c{12}m(m^2-1)\delta_{m+n,0},\qquad
\omega_c=i\sigma_c.
\]
Differentiating the **pair** multiplier gives the complex central cocycle
\[
K(X,Y)=\operatorname{Tr}(b_Yc_X-b_Xc_Y),\qquad
K(e_m,e_{-m})=-\frac{13}{6}m(m^2-1).
\]
Because \(T\) maps to \(i\) in \(\mathbb C^*\), \(K=i\omega_c=-\sigma_c\). Thus the intrinsic pair extension has parameter **\(c=+26\)**, and the quotient determinant has weight \(+1\). Equivalently it is the weight-\(-1\) model \(L_{-26}\) under inversion of the central circle. These are the same line/action convention, not conflicting central coefficients.

There is no hidden infinitesimal shift from the positive reduction: if \(\nu(X)\) is the derivative of \(\log\rho\) on the pair section \(q=a_g\), the character identity and \(\operatorname{Re}K=0\) give \(\nu([X,Y])=0\). Perfectness makes \(\nu=0\). The unitary-normalized section therefore has literally the same relative Lie cocycle, not just its cohomology class.

The PSL splitting fixes the base determinant fiber, and its physical \(2\pi\) loop closes with phase one. The cubic/Bott lift has **central endpoint** \(e^{-i\pi/6}\) in \(E_{26}\), and the inverse central endpoint in \(E_{-26}\). Because the line weight also changes from \(+1\) to \(-1\), the associated determinant-fiber phase is \(e^{-i\pi/6}\) in both descriptions. This is the previously fixed relative-versus-Bott distinction, now realized by actual determinant pairs.

## 8. Identification with the relative model and the dual half

The ordinary trace theorem already proved in [the curvature report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md>) gives
\[
F_{\mathscr D}(e_m,e_n)=\frac{13}{6}m(m^2-1)\delta_{m+n,0},
\qquad F_{\mathscr D}=\frac{13i}{6}\omega=\frac{26i}{C}\Omega_C.
\]
The connection, metric and action that have now produced this curvature are the actual determinant data of §§3–7.

The pair \(U(1)\) extension and the explicit relative extension \(E_{26}^{\rm rel}\) have the same Lie cocycle and the same PSL splitting. Their flat difference has trivial holonomy: \(\pi_1(G)\) is generated by the rotation loop, already contained in that splitting. Integrating the difference connection identifies the extensions multiplicatively and preserves the central circle. This is also a direct way to check the global group identification without an unexamined infinite-dimensional integration theorem.

Choose the unit determinant vector at the base point. Transport it by the identified projective action to define the line isomorphism. Both Hermitian metrics are invariant and normalized there; both connections are invariant. Their difference would be an \(H\)-invariant covector on \(\mathfrak g/\mathfrak h\), which is zero already by rotation weights. Therefore the isomorphism preserves the metric and connection, and hence the holomorphic structure. In the weight-\(-1\) convention,
\[
\mathscr D\simeq L_{-26},\qquad \mathscr K=\mathscr D^{-1}\simeq L_{26}.
\]

The dual half is the actual holomorphic Hermitian line \(L_{13}\), with
\[
(\mathscr K^{1/2})^{\otimes2}=\mathscr K,\quad
h_{\mathscr K^{1/2}}=h_{\mathscr D}^{-1/2},\quad
F_{\mathscr K^{1/2}}=-\tfrac12F_{\mathscr D}=-\frac{13i}{C}\Omega_C.
\]
Its equivariant meaning uses the central double cover \(E_{13}^{\rm rel}\to E_{26}^{\rm rel}\), \(z\mapsto z^2\). It is not an odd-weight square root under an unchanged central circle. In the fixed cubic/Bott convention the admissible **central endpoint** is \(r=e^{11\pi i/12}\). Because \(L_{13}\) has weight \(-1\), its associated-fiber phase is \(r^{-1}=e^{-11\pi i/12}\); its square is \(e^{i\pi/6}\), the dual determinant's fiber phase. The other root has nontrivial PSL-loop sign. Tensoring with the prequantum line uses the Baer sum and gives \(L_{C+13}\) with the displayed curvature. These global phase statements are proved explicitly in [the preceding global-lift analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/11 Projective vacuum curvature and global lifts.md>).

## 9. Verification, failure tests, and what remains

The parent [exact Wolfram input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_fredholm_bridge.wl>) checks the third-order pullback, projective and infinitesimal limits, and the generic finite block graph/connection/trace identities. Its fresh kernel returned six zero-residual groups, no unevaluated computations, no failure and an empty message list. Finite block checks support the algebra; the operator-ideal and topology proofs above are analytical.

The parent [critical-Gram numerical script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_critical_gram.py>) approximates compressions of the **full** weighted Gram operator using more output than input Fourier modes. It tests convergence toward \(\det_F M_g=1\), a separate output-tail refinement, and the rotation/PSL quotient isometries. This is finite numerical support, not a proof of the determinant limit or trace-class regularity.

Three fresh investigations began with the objects and conventions but without a target central coefficient or access to preceding reports: the [determinant lift](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/report.md>), [trace-class/metric bridge](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/report.md>), and [complex atlas](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-atlas-welding-RdV6Bs.md>). The subsequent [metric/lift supplement](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/metric_lift_supplement.md>), [global-cell audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/supplied-global-big-cell-audit-RdV6Bs.md>), and [§§7–8 supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/supplied-text-audit-sections-7-8.md>) are separate from those independent derivations. Detailed execution provenance and audit scopes are recorded in the [verification index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/README.md>) and [review index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>).

The essential negative tests survive: ordinary \(L^2\) projection curvature is not the homogeneous one; a strongly continuous diffeomorphism action is not norm-smooth; a raw section \(q=a_g\) need not lie in the unitary subgroup; the projective modes cannot be omitted from the quotient; curvature equality alone does not identify a determinant functor; and a square root may require a different acting central extension.

**Verified mathematical scope:** the explicitly specified smooth relative Fredholm tangent determinant, its actual compatible complex structure/Chern connection, critical determinant metric, relative projective action, and dual half. **External analytic input:** the cited smooth-welding regularity theorems with their derivative loss. **Not established:** equality to every possible regularized determinant, a canonical continuum integration measure, the gravitational proper-ghost/Jacobian pushforward, matching finite local terms in source-dependent stress Ward identities, or a completed unitary positive-energy quantum representation with nonlinear operators. The geometric determinant interface has become constructive; the gravitational measure and quantum-pairing interface remains substantive.
