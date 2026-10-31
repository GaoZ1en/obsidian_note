# A non-circular smooth Fréchet complex atlas for the projective circle quotient

## Result

**The requested complex atlas exists on the exact smooth quotient, with the stated quotient side and positive chirality.** An explicit realization is an open Schwarzian domain in

\[
\mathcal A^\infty(D)=\operatorname{Hol}(D)\cap C^\infty(\overline D),
\]

with its usual countable family of boundary/closed-disk derivative seminorms. The needed smooth-topology welding input is not an unspecified restriction of universal Teichmüller theory: it is the all-Schauder-level sewing and boundary-uniformization theorem of Lanza de Cristoforis–Preciso, stated precisely below and checked on the published pages.

With this independently constructed atlas, the proposed map

\[
\Phi(gH)=U_gW_-,\qquad U_gv=\frac{v\circ g}{g'},\qquad
W_-=\widehat{\operatorname{span}}\{e_j:j\leq1\},
\]

is genuinely holomorphic into the smooth/smoothing restricted Grassmannian. This conclusion is **not** used to construct the atlas. The induced homogeneous holomorphic bundle has

\[
(\bar\partial_Es)(Z)=L_Zs+\beta(Z)s,
\qquad \beta(Z)[Y]=[Z,Y]\bmod\mathfrak b_-,\quad Z\in\mathfrak b_-.
\]

A Hermitian connection is Chern precisely when its \((0,1)\) part is this operator. Invariant Hermitian compatibility alone is insufficient.

The construction below gives a global open Schwarzian domain. A single globally finite-valued jet-normalized univalent function is **not** asserted: its canonical representative may have poles and must be regarded as a map to the Riemann sphere. No infinite-dimensional Newlander–Nirenberg theorem is used.

This review was produced without reading parent reports or previous project reviews. Only the root vault rules, external mathematical sources, and the problem's conventions were used. No existing note was edited.

## 1. Conventions and the quotient side

Let

\[
G=\operatorname{Diff}^\infty_+(S^1),\qquad g\star h=h\circ g,
\qquad H=\operatorname{PSU}(1,1)\simeq\operatorname{PSL}_2(\mathbb R).
\]

Thus the right quotient is

\[
gH=\{h\circ g:h\in H\}.
\]

Angles have period \(2\pi\), and a vector field is written \(v(x)\partial_x\). We use

\[
e_m=i e^{imx}\partial_x,\qquad
[e_m,e_n]=(m-n)e_{m+n},\qquad
\overline{e_m}=-e_{-m}.
\]

Set

\[
\mathfrak h_\mathbb C=\operatorname{span}\{e_{-1},e_0,e_1\},\quad
\mathfrak b_-=W_-,\quad
E_+=\mathfrak g_\mathbb C/\mathfrak b_-
\simeq\widehat{\operatorname{span}}\{e_n:n\geq2\}.
\]

All completions here mean rapidly decreasing Fourier coefficients, not an algebraic direct sum. The positive modes are the required \((1,0)\) tangent space.

The ordinary smooth quotient causes no hidden manifold problem. Fix three cyclically ordered points of the circle. There is a unique \(h\in H\) making \(h\circ g\) fix those points. Its coefficients depend smoothly on their three images. This gives a smooth global three-point slice for the quotient and the standard smooth Fréchet topology.

The welding convention needed here is

\[
\boxed{\quad f=F\circ g\quad\text{on }S^1,\qquad g=F^{-1}\circ f.\quad}
\tag{1}
\]

Here \(f\) conformally embeds the closed disk into the sphere, \(F\) conformally embeds the closed exterior disk into the complementary closed disk, and both have smooth nondegenerate boundary values. If \(g\) changes to \(h\circ g\), replace \(F\) by \(F\circ h^{-1}\); the projective class of \(f\) is unchanged. This is exactly postcomposition by \(H\), not precomposition.

The often-used convention \(\gamma=f^{-1}\circ F\) has \(\gamma=g^{-1}\). Confusing these shifts reverses the relevant chirality/quotient identification.

## 2. The precise external smooth-welding input

The source used is:

Massimo Lanza de Cristoforis and Luca Preciso, *Differentiability properties of some nonlinear operators associated to the conformal welding of Jordan curves in Schauder spaces*, Hiroshima Math. J. **33** (2003), 59–86, published version. [Publisher PDF](<https://math.sci.hiroshima-u.ac.jp/hmj/v33.1/P059-086.PDF>); [archived PDF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/lanzadecristoforis-preciso-2003.pdf>).

Fix an integer \(m\geq1\) and \(0<\alpha<1\). Their \(C_*^{m,\alpha}\) norm, defined by complex tangential differentiation on the circle, is equivalent to the ordinary angular Hölder norm. Write \(h^{m,\alpha}\) for the closure of smooth functions in this norm; this is their \(C_*^{m,\alpha,0}\). Their \(\mathcal A^+_{\partial D}\) means positively oriented boundary embeddings with nonvanishing derivative. The following are the precise parts needed.

1. **Theorem 4.28, printed pp. 82–83, PDF pp. 24–25.** For a circle diffeomorphism \(\varphi\in C^{m,\alpha}\), the sewing problem has unique interior/exterior maps satisfying
   \[
   F_{\rm in}\circ\varphi=G_{\rm out},\qquad G_{\rm out}(z)-z\longrightarrow0\quad(z\to\infty).
   \]
   Their boundary values are \(C^{m,\alpha}\) embeddings with nonzero derivative. If \(s[\varphi]=G_{\rm out}|_{S^1}\), then
   \[
   t[\varphi]=s[\varphi]\circ\varphi^{-1}=F_{\rm in}|_{S^1}.
   \]
   The paper also treats generalized shifts that are arbitrary positively oriented Jordan embeddings.

2. **Theorem 5.1, printed p. 84, PDF p. 26.** The generalized sewing map \(s\) extends to a complex-analytic map on the open set of those \(C^{m,\alpha}\) Jordan embeddings. The proof uses an invertible singular-integral equation, with invertibility supplied by Theorem 4.27, printed p. 82. This is a Banach theorem at each level, not a formal integrability claim.

3. **Theorem 5.2, printed p. 85, PDF p. 27.** The map \(t\) is continuous at each little-Hölder level. For every integer \(r\geq1\) and every \(\varphi_0\in h^{m+r,\alpha}\) that is a circle diffeomorphism, it has a local real \(C^r\) extension
   \[
   h^{m+r,\alpha}\supset\mathcal U_{\varphi_0}
   \longrightarrow h^{m,\alpha}.
   \]
   Its restriction to the circle-valued shifts is the indicated interior sewing map. **Derivative loss is part of the theorem and is retained here.**

4. **Theorem 3.4(i), printed p. 70, PDF p. 12.** If \(\zeta\) is a \(C^{m,\alpha}\) Jordan embedding and \(b\) is in its bounded interior, let \(\widetilde f[\zeta,b]\) be the interior Riemann map normalized by \(\widetilde f(0)=b\), \(\widetilde f'(0)>0\). Then
   \[
   (\zeta,b)\longmapsto\widetilde f[\zeta,b]^{-1}\circ\zeta
   \]
   is real analytic into \(C^{m,\alpha}(S^1)\). This provides a particularly clean inverse-chart construction below.

5. **Theorem 3.10, printed p. 73, PDF p. 15**, additionally gives real \(C^r\) dependence of the exterior Riemann map from \(h^{m+r,\alpha}\) into \(h^{m,\alpha}\). It corroborates the two-sided smoothness but is not needed to hide a variable-domain inverse operation.

The relevant pages were both extracted and visually inspected: [p. 69](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-pdf11-print69.png>) (Theorem 3.1(i), exterior boundary regularity), [p. 70](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-pdf12-print70.png>), [p. 73](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-pdf15-print73.png>), [p. 82](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-theorems-24.png>), [p. 83](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-theorems-25.png>), [p. 84](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-theorems-26.png>), [p. 85](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/ldc-theorems-27.png>).

For our convention (1), substitute **\(\varphi=g^{-1}\)**. Then the interior map has boundary value \(t[g^{-1}]\), and satisfies \(f=F\circ g\).

## 3. A concrete open complex domain and its inverse ODE

Define the Schwarzian by

\[
S(f)=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
\]

For \(q\in\mathcal A^\infty(D)\), solve

\[
y''+\frac12qy=0,
\quad
(y_1(0),y_1'(0))=(0,1),\quad
(y_2(0),y_2'(0))=(1,0).
\tag{2}
\]

Let

\[
f_q=\frac{y_1}{y_2}:\overline D\longrightarrow\mathbb {CP}^1.
\tag{3}
\]

The Wronskian \(y_1'y_2-y_1y_2'\) equals one. Thus there are no simultaneous zeros, (3) is a smooth sphere-valued locally univalent map, and

\[
S(f_q)=q,\qquad f_q(0)=0,\quad f_q'(0)=1,\quad f_q''(0)=0.
\]

A zero of \(y_2\) is an allowed simple pole, not a singularity of the sphere map.

Define

\[
\boxed{\quad\mathcal U^\infty
=\{q\in\mathcal A^\infty(D):f_q\text{ is an embedding of }\overline D
\text{ into }\mathbb {CP}^1\}.\quad}
\tag{4}
\]

### 3.1 Why this is genuinely open, with all-seminorm dependence

Equation (2) can be solved by the Volterra equation

\[
y(z)=a+bz-\frac12\int_0^z(z-\zeta)q(\zeta)y(\zeta)\,d\zeta.
\tag{5}
\]

On \(\|q\|_{C^0}\leq R\), the iterated integrals have the usual factorial majorants \((R/2)^N/(2N)!\), with the analogous \((2N+1)!\) bound for the linear initial datum. This proves locally uniform holomorphic dependence of the solutions in the supremum norm. Differentiating the ODE gives, recursively,

\[
\|y\|_{C^{k+2}}\leq C_{k,R}
P_k(\|q\|_{C^k})(|a|+|b|),
\]

for finite polynomials \(P_k\). Applying the same argument to the parameter-differentiated equations gives jointly continuous derivatives of every order at every seminorm level. Equivalently, the solution maps are holomorphic on each appropriate disk-algebra derivative scale and hence on \(\mathcal A^\infty\).

At a chosen \(q_0\in\mathcal U^\infty\), select a fixed target Möbius map \(A\) whose pole lies outside \(f_{q_0}(\overline D)\). Then

\[
A\circ f_q=\frac{a y_1+b y_2}{c y_1+d y_2}
\]

has a denominator bounded away from zero on \(\overline D\) for \(q\) near \(q_0\). It is a holomorphic \(\mathcal A^\infty\)-valued function of \(q\). Embeddings of the compact disk with nondegenerate derivative are open in the \(C^1\) topology: separate pairs of points a fixed distance apart by compactness, and use the uniform invertible differential in finitely many local coordinate neighborhoods for nearby pairs. Therefore (4) is open in the Fréchet topology.

This argument also proves the needed local holomorphic inverse of the Schwarzian map on projectively normalized univalent functions. No inverse function theorem on a general Fréchet space is invoked.

### 3.2 Bijection with the exact projective quotient

Define

\[
\mathcal B:M\longrightarrow\mathcal U^\infty,
\qquad \mathcal B(gH)=S(f),
\tag{6}
\]

where (1) is its smooth welding. Common postcomposition of \((f,F)\) by a sphere Möbius map does not change \(S(f)\). Postcomposition of \(g\) by \(H\) does not change the projective class of \(f\), as checked in Section 1.

* **Injectivity.** Equal Schwarzians imply \(f_2=A\circ f_1\) for a sphere Möbius map \(A\), by the ODE. The two exterior maps then differ by an automorphism of the exterior disk:
  \[
  F_2=A\circ F_1\circ h^{-1},\qquad h\in H.
  \]
  Hence \(g_2=h\circ g_1\), exactly the required right \(H\) equivalence.

* **Surjectivity.** Given \(q\in\mathcal U^\infty\), its embedded disk has a smooth Jordan boundary. The exterior Riemann map has a smooth boundary extension with nonvanishing derivative; this is included in Theorem 3.1 of the cited paper, using classical smooth boundary regularity. Thus \(g=F^{-1}\circ f_q\) is a smooth circle diffeomorphism. A different exterior parametrization changes it only by postcomposition with \(H\).

Consequently (6) is a bijection onto the explicitly defined open subset (4).

## 4. Why the topology is exactly the given smooth topology

### 4.1 Forward map

In a local angular chart of \(G\), inversion and composition are smooth on the \(C^\infty\) scale, with their familiar finite derivative loss at Banach levels. Theorem 5.2 gives all derivatives of

\[
g\longmapsto t[g^{-1}]=f|_{S^1}.
\]

The Schwarzian is a rational differential expression of order three, with \(f'\) bounded away from zero locally in a bounded target chart. It is therefore smooth with finite loss. For every output index \(m\) and every parameter-derivative order \(r\), some finite input index \(N(m,r)\) controls the map and those derivatives into \(h^{m,\alpha}\). Optimizing \(N(m,r)\) is unnecessary here.

Fixing any \(0<\alpha<1\),

\[
C^\infty(S^1)=\bigcap_{m\geq1}h^{m,\alpha}(S^1)
\]

with equality of the projective-limit topology and the usual smooth topology. The levelwise derivatives agree on smooth inputs because they differentiate the same map and the sewing solution is unique. Their joint continuity at every output level therefore proves Bastiani smoothness of (6).

### 4.2 Explicit inverse, avoiding a hidden variable-curve inversion theorem

Near any \(q_0\), use a fixed target Möbius map, chosen to preserve zero, so that

\[
f=A\circ f_q
\]

is finite on \(\overline D\), with \(f(0)=0\). Its boundary embedding \(\zeta=f|_{S^1}\) never vanishes. Define

\[
(R\zeta)(t)=\frac1{\zeta(1/t)},\qquad t\in S^1.
\]

The curve \(R\zeta\) is positively oriented and surrounds zero. Let

\[
C(\xi)=\widetilde f[\xi,0]^{-1}\circ\xi.
\]

By Theorem 3.4(i), \(C\) depends real analytically on \(\xi\) at every \(C^{m,\alpha}\) level. The normalized exterior Riemann map is

\[
F(w)=\frac1{\widetilde f[R\zeta,0](1/w)},
\]

and its boundary correspondence is exactly

\[
\boxed{\qquad g=R\bigl(C(R\zeta)\bigr)=F^{-1}\circ f.\qquad}
\tag{7}
\]

Reciprocal and the fixed substitution \(t\mapsto1/t\) are smooth wherever their denominators do not vanish. Equations (2), (7), and the finite-dimensional three-point normalization therefore give a smooth map \(\mathcal U^\infty\to M\). It is the inverse of (6) by the preceding bijection argument.

Every Sobolev seminorm is controlled by a sufficiently high Hölder norm, and each fixed Hölder norm by a sufficiently high Sobolev norm. These constructions consequently have derivatives of every order from a sufficiently high Sobolev level to any prescribed finite Sobolev output level. This is **all-level smoothness with finite loss**, not a claim of a no-loss \(C^\infty\) map on each fixed Sobolev completion.

We have proved that (6) is a real Fréchet diffeomorphism. Transporting the complex structure of the open subset (4) gives an actual complex atlas on the stipulated topology. In fact (6) is one global complex coordinate domain; local jet-normalized univalent-function charts are obtained by the explicit ODE and target-Möbius normalizations above.

## 5. Chirality and agreement with the invariant polarization

At the identity, write

\[
g_t(x)=x+t v(x)+O(t^2),\qquad
f_t(z)=z+t a(z)+O(t^2),\qquad
F_t(z)=z+t b(z)+O(t^2).
\]

Equation (1) yields

\[
a(z)-b(z)=iz\,v(z).
\]

For the complexified tangent \(v=e_m=i z^m\), \(m\geq2\), the right side is \(-z^{m+1}\). Modulo the projective modes, the interior/exterior splitting gives

\[
\delta f=-z^{m+1},\qquad
\boxed{\quad d\mathcal B_o(e_m)=-(m^3-m)z^{m-2}.\quad}
\tag{8}
\]

For \(m\leq-2\), the variation is exterior and \(d\mathcal B_o(e_m)=0\). The modes \(-1,0,1\) are projective gauge. Multiplication by \(m^3-m\) and its inverse preserve rapid decrease, so (8) identifies the entire smooth positive-mode space, not merely its finite Fourier sums, with \(\mathcal A^\infty\).

To prove agreement at **every** point rather than only at the identity, let \(\eta(x)=\delta g(x)\), and write \(w=e^{ig(x)}\). The linearized welding equation is

\[
\delta f(z)=\delta F(w)+F'(w)\,i w\,\eta(x).
\tag{9}
\]

A vanishing variation of \(S(f)\) means that \(\delta f\) is an infinitesimal target Möbius transformation. Subtract it from both members of the welding pair, so that \(\delta f=0\). Then

\[
-iw\,v(w)=\frac{\delta F(w)}{F'(w)},\qquad
\eta=v\circ g.
\]

The ratio on the right is a holomorphic vector field on the exterior disk, smooth to the boundary and regular as a vector field at infinity. Such fields are precisely

\[
V(w)\partial_w=\sum_{j\leq1}c_jw^{j+1}\partial_w,
\]

with rapid boundary coefficients; in angular notation this is \(\mathfrak b_-\). Conversely each such field solves (9) with zero projective interior variation.

There is no unproved uniqueness of a linearized factorization in this step: the difference of two solutions with the same \(\eta\), pushed to the common inside/outside target domains, glues to a global holomorphic vector field on the sphere. Boundary smoothness allows Morera's theorem across the Jordan curve. The remaining ambiguity is exactly a target Möbius field, already divided out.

It follows that

\[
\ker d_\mathbb C(\mathcal B\circ\pi)_g
=\{v\circ g:v\in\mathfrak b_-\}.
\tag{10}
\]

Under application-order multiplication, the left translate of \(v\) at \(g\) is precisely \(v\circ g\). Thus the atlas has the invariant \((0,1)\) distribution determined by \(\mathfrak b_-\), and the required positive \((1,0)\) distribution. This verifies the supplied \(J\) by an actual chart construction. Its vanishing Nijenhuis tensor is a consequence, not the integrability theorem used.

## 6. The Grassmannian map is holomorphic for these charts

Use an auxiliary \(L^2\) Fourier polarization

\[
\mathcal H=\mathcal H_-\oplus\mathcal H_+,\qquad j\leq1\text{ versus }j\geq2,
\]

and the smoothing operator space with seminorms \(\|K\|_{H^{-a}\to H^b}\), for all \(a,b\). This is equivalently the space of smooth integral kernels in the relevant blocks. Graph charts modeled on this complex Fréchet space define the smooth restricted Grassmannian used here. The resulting smooth subspaces have the stipulated rapid-decay topology.

### 6.1 Well-definedness and smoothness

The identity

\[
U_{g\star h}=U_gU_h
\]

holds directly. Exterior holomorphic vector fields are preserved by exterior disk automorphisms, so \(U_hW_-=W_-\) for \(h\in H\). Thus \(\Phi\) descends to the correct quotient and is equivariant for the left \(G\) action.

The supplied smooth-smoothing crossing-block property gives a clean projection argument. Let \(P_-\) be the reference Fourier projection and set

\[
Q_g=U_gP_-U_g^{-1}.
\]

Then

\[
Q_g-P_-=[U_g,P_-]U_g^{-1}
\]

is smoothly smoothing. Although \(g\mapsto U_g\) need not be operator-norm smooth on a fixed Sobolev space, composing its inverse with a smooth kernel merely changes variables and multiplies smooth factors in that kernel. This proves the asserted all-kernel-seminorm smoothness without that false fixed-level assumption.

Near the identity, \(Q_g-P_-\) is small in \(L^2\) operator norm, and

\[
Z_g=P_+Q_g|_{\mathcal H_-}
\bigl(P_-Q_g|_{\mathcal H_-}\bigr)^{-1}
\tag{11}
\]

is the graph block of \(U_gW_-\). Inversion of \(I+K\), with \(K\) smoothing and invertible at the auxiliary Hilbert level, preserves the smooth scale and is holomorphic in the smoothing topology. In particular,
\[
(I+K)^{-1}-I=-K+K(I+K)^{-1}K.
\]
The two smoothing factors on the last term control every \(H^{-a}\to H^b\) seminorm using only the Hilbert-level inverse between them. Hilbert inversion is locally holomorphic, so this identity and the differentiated inverse identity establish holomorphicity at every smoothing seminorm. Formula (11) proves Fréchet smoothness. Around any other point conjugate by the fixed \(U_{g_0}\).

### 6.2 Non-circular holomorphicity

At the identity,

\[
\left.\frac d{dt}\right|_0U_{\mathrm{id}+tX}v=[X,v].
\]

Consequently

\[
d\Phi_o(X)v=P_+[X,v],\qquad v\in W_-.
\tag{12}
\]

For \(m\geq2\),

\[
d\Phi_o(e_m)e_j=
\begin{cases}
(m-j)e_{m+j},&2-m\leq j\leq1,\\
0,&\text{otherwise},
\end{cases}
\]

whereas \(d\Phi_o\) annihilates \(\mathfrak b_-\). It is therefore complex-linear for the independently proved chart polarization.

A fixed \(U_a\) acts holomorphically on graph charts: its action is the usual complex fractional-linear block transformation with a locally invertible denominator. Equivariance of \(\Phi\), together with the invariant polarization proved in (10), transports complex-linearity of (12) to every point. Thus \(\Phi\) is a smooth map with complex-linear differential everywhere.

For complex Fréchet spaces this is a holomorphic map in the continuous Gâteaux/Bastiani sense: restrict to each complex affine line and apply the ordinary one-variable Cauchy–Riemann theorem, testing against continuous linear functionals; the target smoothing space is complete. This implication concerns a map between **already constructed complex charts**, not existence of charts from an almost-complex structure. There is no Newlander–Nirenberg step, finite or infinite dimensional, hidden here.

The claim is holomorphicity into this explicitly specified smooth Grassmannian (and its compatible Hilbert-level realizations). A global single standard graph cell, a global embedding theorem, or equality with a separately chosen Banach Grassmannian image is not required or asserted.

### 6.3 The holomorphic quotient is actually the holomorphic tangent bundle

There is a useful stronger interface, without inferring a holomorphic bundle structure from a merely smooth isomorphism. For a fixed \(X\in\mathfrak g\), consider the fundamental vector field for the left-star action,

\[
\widehat X_{gH}=\left.\frac d{dt}\right|_0
\bigl(\exp(tX)\star g\bigr)H.
\]

Since \(\exp(tX)\star g=g\circ\exp(tX)\), its angular representative at \(g\) is **\(g'X\)**, not \(X\circ g\). Every fixed left translation preserves the complex structure proved in (10), hence is holomorphic in the actual Schwarzian charts. Differentiating its smooth real one-parameter family therefore gives a holomorphic \((1,0)\) vector field. Complexifying in \(X\) produces a holomorphic bundle map

\[
\mathsf a:M\times\mathfrak g_\mathbb C\longrightarrow T^{1,0}M.
\]

It is jointly holomorphic because it is smooth, complex-linear in its fiber variable, and holomorphic in its base variable for each fixed generator. Equations (9)–(10) now give, with no quotient-side ambiguity,

\[
\ker\mathsf a_{gH}
=\{X:g'X=v\circ g,\ v\in\mathfrak b_-\}
=U_g\mathfrak b_-.
\]

The anchor is surjective, and consequently

\[
\boxed{\quad
T^{1,0}M\simeq_{\rm hol}
\bigl(M\times\mathfrak g_\mathbb C\bigr)
\big/\bigl\{(gH,U_g\mathfrak b_-)\bigr\}.
\quad}
\tag{13a}
\]

Here the quotient on the right has the actual holomorphic quotient-bundle structure from the holomorphic Grassmannian map. To check the inverse regularity rather than appeal to an invalid general Fréchet inverse theorem, choose the smooth representative \(g(q)\) furnished by (7) and three-point normalization. The moving-frame tangent identification and the differential of the proved smooth chart inverse give a smooth inverse to the fiberwise anchor on the quotient. Since the anchor is holomorphic, this existing smooth inverse has complex-linear differential and is therefore holomorphic by the same one-variable argument as before.

The sign convention for brackets of fundamental fields is worth separating from this statement: the above \(\exp(tX)\)-left-action convention gives \([\widehat X,\widehat Y]=-\widehat{[X,Y]}\), whereas the left-frame fields \(X\circ g\) have the supplied bracket. Neither this anti-homomorphism sign nor the distinction of these two frames alters (13a).

## 7. The induced \((0,1)\) connection and the Chern condition

Because \(\mathfrak b_-\) is a closed Lie subalgebra, its quotient-adjoint action is well defined:

\[
\beta(Z)[Y]=[Z,Y]\bmod\mathfrak b_-.
\tag{13}
\]

The associated bundle

\[
\mathcal E=G\times_HE_+,
\qquad(g\star h,v)\sim(g,\operatorname{Ad}_hv)
\]

identifies with \(T^{1,0}M\). It also identifies with the pullback by \(\Phi\) of the holomorphic quotient of the trivial ambient vector-field bundle by its tautological subspace. In the latter identification,

\[
[g,[Y]]\longmapsto[U_gY]\in\mathfrak g_\mathbb C/U_g\mathfrak b_-.
\]

Let a section be represented by a smooth equivariant function \(s:G\to E_+\),

\[
s(g\star h)=\operatorname{Ad}_{h^{-1}}s(g).
\]

For \(Z\in\mathfrak b_-\), let \(L_Z\) denote differentiation along the left-invariant field whose value at \(g\) is \(Z\circ g\). Differentiating the moving frame \(U_g\) gives

\[
\boxed{\quad(\bar\partial_Es)_g(Z)
=L_Zs(g)+\beta(Z)s(g).\quad}
\tag{14}
\]

For \(Z\in\mathfrak h_\mathbb C\), the two terms cancel by equivariance, so (14) descends to \(T^{0,1}M\). The representation identity for \(\beta\) makes its \((0,2)\) curvature zero. In modes,

\[
\beta(e_m)[e_n]=
\begin{cases}
(m-n)[e_{m+n}],&m+n\geq2,\\
0,&m+n\leq1,
\end{cases}
\qquad m\leq1,\ n\geq2.
\tag{15}
\]

Suppose an invariant connection is described in this frame by \(\Lambda\), so it acts as \(d+\Lambda(\theta)\), with \(\Lambda|_{\mathfrak h}=d\rho\) and the usual \(H\)-equivariance. It is the Chern connection of a given Hermitian metric **if and only if**

\[
\boxed{\quad \nabla h=0,\qquad \Lambda(Z)=\beta(Z)\quad(Z\in\mathfrak b_-).\quad}
\tag{16}
\]

For a general weak Fréchet metric, existence of the adjoints needed to solve (16) is an analytic issue; one cannot assert it just from finite-dimensional Chern theory. Uniqueness, once a continuous metric connection exists and the metric is nondegenerate, follows from Hermitian compatibility and its prescribed \((0,1)\) part.

### 7.1 A concrete continuous invariant Chern connection is available

For completeness, there is a natural metric for which the analytic existence issue is resolved directly. Take the Hermitian form linear in its first argument,

\[
h(e_n,e_k)=C\,n(n^2-1)\delta_{nk},\qquad n,k\geq2,\quad C>0.
\tag{17}
\]

Rotations force diagonality for an invariant metric. Invariance under \(e_{\pm1}\), using \(\overline{e_1}=-e_{-1}\), imposes

\[
(n-1)w_{n+1}=(n+2)w_n,
\]

whose positive solutions are precisely \(w_n=Cn(n^2-1)\). This is only a metric normalization; no central charge is being inferred or prescribed.

Hermitian compatibility is

\[
\Lambda(\overline X)=-\Lambda(X)^\dagger.
\]

Because of the stated real conjugation, (16) therefore requires

\[
\Lambda(e_p)=\beta(e_{-p})^\dagger\quad(p\geq2),
\]

not its negative. Explicitly,

\[
\boxed{\quad
\Lambda(e_p)e_n
=-(n+2p)\frac{n(n^2-1)}{(n+p)((n+p)^2-1)}e_{n+p},
\quad p,n\geq2,
\quad}
\tag{18}
\]

and \(\Lambda=\beta\) on \(\mathfrak b_-\). These formulas agree on the overlapping isotropy conditions and are \(H\)-equivariant, either by the adjoint construction or by the representation identities. Their coefficients have polynomial growth (indeed the weight ratio in (18) is at most one). Convolution of rapidly decreasing sequences therefore proves that \((X,Y)\mapsto\Lambda(X)Y\) is a continuous bilinear map of the smooth Fréchet spaces. It defines an actual smooth invariant metric connection, not merely a formal mode operator. By (14) and (16), it is Chern for (17).

No curvature or central-charge conclusion is needed for, or extracted from, this construction.

## 8. Checks, counterexample tests, and limits of the result

### Verified analytic checks

* The quotient is post-\(H\) because the exterior parametrization, not the interior source parameter, changes in (1).
* Positive \(e_m\) produce negative interior variation \(-z^{m+1}\) and Schwarzian coefficient \(-(m^3-m)\). Replacing (1) by the opposite welding convention would invalidate this chirality calculation.
* The projective modes \(m=-1,0,1\) lie in the kernel, and the positive-mode cubic multiplier has a continuous inverse on rapidly decreasing sequences.
* A finite-valued globally jet-normalized \(f\) need not exist; allowing sphere-valued \(f_q\) in (3) removes this false restriction.
* Smooth dependence is obtained by quantified all-level results. It is not inferred merely from the fact that each welded boundary happens to be smooth.
* \(g\mapsto U_g\) is not assumed norm-smooth on one fixed Sobolev space; the smoothing-kernel argument is used instead.

### Machine checks

The reproducible [Wolfram input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/checks.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-welding-evidence.RdV6Bs/kernel-checks.txt>) record:

1. zero residual for the basis bracket;
2. zero residual for \(S(y_1/y_2)=q\) under (2);
3. zero residual for (8);
4. zero residual for the metric recurrence;
5. zero residual for the nontrivial \(e_1\)-equivariance identity in (18);
6. the exact test family
   \[
   f(z)=z+a z^3,\qquad
   S(f)=\frac{6a(1-6az^2)}{(1+3az^2)^2};
   \]
7. the projected-adjoint representation identity for \(-8\leq m,k\leq1\), \(2\leq n\leq20\), all true.

The last is only a finite consistency check; the full representation identity follows analytically from the quotient Lie algebra. The cubic test is genuinely in the domain for \(|a|<1/3\), since \(\sup_{\overline D}|f'-1|<1\) makes \(f\) injective by integration along line segments. The machine checks are sign/normalization checks, not substitutes for the functional-analytic proof.

### Scope and remaining limitations

* **Established here:** an open global Schwarzian domain, a two-sided smooth Fréchet identification with the exact quotient, compatibility with the supplied invariant polarization, holomorphicity of the specified Grassmannian map, and the precise Dolbeault/Chern condition (with an explicit smooth invariant example).
* **External theorem relied upon:** the published all-level sewing/boundary-uniformization results listed in Section 2. Their relevant statements and proof mechanisms were checked, not re-proved from scratch.
* **Not claimed:** no-loss differentiability on a fixed Sobolev completion; a globally finite normalized disk map; global occupation of a single standard Grassmannian graph cell; an independent global Grassmannian embedding theorem; metric-independent existence of Chern connections for arbitrary weak Fréchet Hermitian metrics; or any target curvature/central charge.
* **Independent secondary agent check:** unavailable within this review because the runtime forbids further delegation. The source statements, analytic constructions, and CAS checks are archived so a separate reviewer can reproduce the critical steps. This review itself is independent of parent/previous project reviews.
