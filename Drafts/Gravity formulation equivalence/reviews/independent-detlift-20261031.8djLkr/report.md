# Independent construction of the relative quotient-determinant lift

## Result

**The smooth lift exists.** It is a nontrivial smooth central extension by \(\mathbb C^*\), with a genuine smooth \(U(1)\) subgroup reduction. Its restriction to \(H=\mathrm{PSL}_2(\mathbb R)\) splits as an actual group, not just infinitesimally. In the relative normalization the rotation loop has phase **1**.

With the pair-kernel coordinate chosen to be \(\det_F q\), the quotient determinant (dual tautological determinant) has central character **weight +1**. Its complex scalar Lie cocycle is
\[
 K(e_m,e_n)=-\frac{13}{6}m(m^2-1)\delta_{m+n,0}.
\]
For the convention in the question, \(\exp(2\pi T)=1\), \(\omega=i\sigma\), the central generator maps to \(i\in\mathbb C\). Consequently
\[
 K=i\omega=-\sigma,\qquad
 \boxed{\sigma=\sigma_{26}}.
\]
Equivalently, on the unit-coefficient Virasoro circle extension with the same relative global normalization, the quotient determinant has character **weight +26**. The intrinsic weight +1 and the unit-Virasoro weight +26 refer to different central circles, explained in §9.

The proof never treats \(g\mapsto U_g\) as norm-continuous. All needed differentiations occur after a smoothing factor has absorbed the derivative loss.

## 1. Scope, conventions, and independence

Work on \(x\in\mathbb R/2\pi\mathbb Z\), with normalized coefficient inner product \((2\pi)^{-1}\int\overline f h\,dx\). Put
\[
 e_j=i e^{ijx}\partial_x,\qquad
 \overline{e_j}=-e_{-j},\qquad
 [e_m,e_n]=(m-n)e_{m+n}.
\]
The product is \(g\star h=h\circ g\), and
\[
 U_gv=\frac{v\circ g}{g'},\quad U_gU_h=U_{g\star h},\quad dU_X=\operatorname{ad}_X.
\]
Write \(W=W_-\), \(E=E_+\), and
\[
 \mathcal H_0=W\oplus E,\qquad
 W=\overline{\mathrm{span}}\{e_j:j\leq1\},\qquad
 E=\overline{\mathrm{span}}\{e_j:j\geq2\}.
\]
The block notation is
\[
 U_g=\begin{pmatrix}a_g&b_g\\c_g&d_g\end{pmatrix}.
\]
Thus \(b_g:E\to W\) and \(c_g:W\to E\). The problem supplies that these two crossing blocks are smoothly smoothing, that \(U_g\) is bounded invertible on coefficient \(L^2\), and that \(W\) is \(H\)-invariant. These are the input analytic hypotheses; the report proves the further determinant smoothness required from them.

Smoothness below means the usual smooth-diffeomorphism Fréchet topology and smooth calculus on spaces of smooth kernels. All finite-dimensional parameter derivatives have the stated estimates, so the argument also works in the convenient formulation.

No existing project report or review was opened, and no existing note was modified. The coefficient was obtained from the finite crossing trace, not supplied. A later unsolicited parent message suggested a different route after the independent construction had been derived; that route is neither used nor assessed here. Further subdelegation was unavailable at this session depth.

## 2. Smoothing absorption, not norm-Lie theory

Let \(\mathcal S\) denote smoothing operators, with the Fréchet topology of smooth kernels, equivalently the family of operator seminorms \(H^{-r}\to H^s\) for all nonnegative integers \(r,s\).

The elementary absorption fact used repeatedly is:

> If \(R\) is a smoothly parameter-dependent smoothing operator, then \(U_gR\), \(RU_g\), and their compressed blocks depend smoothly in \(\mathcal S\).

For left multiplication this follows directly by composing the smooth kernel in its output variable with \(g\) and multiplying by \(1/g'\). For right multiplication use the adjoint
\[
 (U_g^*u)(y)=\frac{u(g^{-1}(y))}{g'(g^{-1}(y))^2}.
\]
Its action on the other kernel variable is again smooth composition and multiplication. Parameter derivatives are finite sums of smooth coefficient multiplications and derivatives of the kernel; arbitrary derivative loss is absorbed by its smoothness. The Fourier projections preserve all Sobolev spaces and smooth functions, so compression preserves this assertion.

There are uniform local coefficient-\(L^2\) bounds:
\[
 \|U_g\|\leq(\inf g')^{-3/2},\qquad
 \|U_g^{-1}\|\leq(\sup g')^{3/2}.
\]
The corresponding Sobolev bounds follow from the chain rule. None asserts norm continuity on \(L^2\).

A second fact is that if \(R\in\mathcal S\) and \(I-R\) is invertible on \(L^2\), then
\[
 (I-R)^{-1}=I+S,\qquad S\in\mathcal S,
\]
and the map \(R\mapsto S\) is smooth on its invertibility domain. One useful formula is
\[
 S=R+R(I-R)^{-1}R.
\]
The middle inverse is a bounded \(L^2\) operator; the two outer smoothing factors control every kernel seminorm. Differentiating the Banach-space inverse and using the same estimates proves the smooth assertion. This justifies the inverse operations below in the smoothing topology.

### Local invertibility of the compression

Block multiplication gives
\[
 a_ga_{g^{-1}}=I-b_gc_{g^{-1}},\qquad
 a_{g^{-1}}a_g=I-b_{g^{-1}}c_g.
\]
Both errors tend to zero in every smoothing seminorm, hence in operator norm, as \(g\to1\). Both products are therefore invertible in a neighborhood of the identity. A bounded operator with both an invertible left and right product is invertible, so \(a_g\) is invertible there, with
\[
 a_g^{-1}=a_{g^{-1}}(I-b_gc_{g^{-1}})^{-1}.
\]
Although \(a_g^{-1}\) need not be norm-continuous by itself, its composition on either side with a smoothly smoothing family is smoothly smoothing. This is exactly the property required for the determinant cocycle.

### Fredholm index and global admissible corrections

For arbitrary \(g\), the same block identities make \(a_g\) Fredholm. For \(h\) near the identity,
\[
 a_{g\star h}=a_ga_h+b_gc_h.
\]
The second term is compact and \(a_h\) is invertible. Thus the index is locally constant without requiring norm continuity of \(g\mapsto a_g\). Since \(G\) is connected, \(\operatorname{ind}a_g=0\).

The parametrix identities also show that the kernels of \(a_g\) and \(a_g^*\) consist of smooth functions: a kernel vector equals a smoothing operator applied to itself. Choose a finite-rank smooth operator identifying \(\ker a_g\) with \(\operatorname{coker}a_g\), zero on the orthogonal complement. Adding it gives an invertible \(q_g\) with \(q_g-a_g\) smoothing.

Such an inverse \(q_g^{-1}\) is a compressed \(U_{g^{-1}}\) plus smoothing. For completeness, if \(b\) is that compressed parametrix and
\(qb=I-S\), \(bq=I-R\), then
\[
 q^{-1}-b=Rq^{-1}=Rb+Rq^{-1}S,
\]
which is smoothing. Consequently these inverses also obey smoothing absorption.

## 3. The actual smooth central extension

Consider the abstract group of pairs
\[
 \mathcal P=\{(g,q):q\in\mathrm{GL}(W),\ q-a_g\in\mathcal L^1(W)\},
\]
with product
\[
 (g,q)(h,r)=(g\star h,qr).
\]
It is closed under multiplication because \(a_{g\star h}-a_ga_h=b_gc_h\) is trace class, and under inversion by the parametrix identity. Divide its kernel over \(1\) by the determinant-one subgroup
\[
 \mathcal N=\{(1,t):t-I\in\mathcal L^1,\ \det_Ft=1\}.
\]
Conjugation by any bounded invertible \(q\) preserves the Fredholm determinant, so \(\mathcal N\) is normal and
\[
 1\longrightarrow\mathbb C^*\longrightarrow
 \widehat G_{\det}=\mathcal P/\mathcal N
 \longrightarrow G\longrightarrow1
\]
is an abstract central extension. Its central coordinate is explicitly \([(1,t)]\mapsto\det_Ft\).

**Its smooth structure is not the subspace topology inherited from a norm-general-linear group.** Give it local charts as follows. Choose \(g_0\) and an invertible smoothing correction \(q_0-a_{g_0}\). For \(g=g_0\star h\), \(h\) sufficiently close to \(1\), put
\[
 q(g)=q_0a_h.
\]
Then
\[
 q(g)-a_g=(q_0-a_{g_0})a_h-b_{g_0}c_h
\]
is smoothly smoothing by absorption. These pairs define local sections of the abstract extension. The ratio of two local sections is the Fredholm determinant of an identity-plus-smoothing operator, and depends smoothly. The multiplication transition is similarly
\[
 \det_F\bigl(q(gh)^{-1}q(g)q(h)\bigr),
\]
with \(gh\) here denoting \(g\star h\). Each defect from the identity is smoothly smoothing; the preceding inverse lemma applies. Thus these charts give a genuine smooth principal \(\mathbb C^*\) bundle and smooth group operations.

At the identity use the specific section
\[
 s(g)=[(g,a_g)].
\]
Its local cocycle is
\[
 \boxed{C(g,h)=\det_F(a_ga_ha_{g\star h}^{-1})
 =\det_F(I-b_gc_ha_{g\star h}^{-1}).}
\]
The argument of the second determinant is a smoothly trace-class perturbation of the identity, by smoothing absorption. The Fredholm determinant is smooth in trace norm (its absolutely locally uniformly convergent exterior-power series also proves this). Therefore \(C\) is smooth in the smooth-diffeomorphism topology. Pointwise determinant multiplicativity and conjugation invariance give the cocycle identity. This proves the required local smoothness without differentiating an unsmoothed \(U_g\) in operator norm.

## 4. Which determinant line, and which central character?

This is a relative determinant, not an infinite exterior product and not a regularized value of \(\det U_g\).

Use admissible frames \(w:W\to\mathcal H_0\) with image \(U_gW\), whose \(W\)-component differs from \(I\) by trace class and whose \(E\)-component is Hilbert–Schmidt. Such frames exist:
\[
 w=U_g|_Wq^{-1}.
\]
Changing a frame to \(wt\), with \(t-I\) trace class, multiplies its formal determinant by \(\det_Ft\). Thus the tautological determinant identifies
\[
 (w,z)\sim(wt,(\det_Ft)^{-1}z).
\]
The line in the question is its **dual**, denoted \(L_Q\).

The pair action on frames is
\[
 (g,q):w\longmapsto U_gwq^{-1}.
\]
It respects admissibility and the frame equivalence; conjugating a frame change by \(q\) does not alter its determinant. Composition agrees with the pair-group product. A central pair \((1,t)\) sends \(w\) to \(wt^{-1}\), so it acts by \((\det_Ft)^{-1}\) on the tautological determinant and by
\[
 \boxed{\det_Ft}
\]
on its dual \(L_Q\). This establishes the quotient determinant's intrinsic central weight **+1** and fixes the cocycle sign.

The line and its lift are smooth, not merely formal. Near the identity the frame is
\[
 U_g|_Wa_g^{-1}=\binom{I}{c_ga_g^{-1}},
\]
a smoothly smoothing graph. Near \(g_0\), the preceding local section has frame
\[
 U_{g_0}U_h|_Wa_h^{-1}q_0^{-1}
 =U_{g_0}\binom{I}{c_ha_h^{-1}}q_0^{-1}.
\]
This is smooth in the required frame topology despite the nonsmooth operator-norm behavior of \(U_h\) alone. Hence the smooth abstract extension action identifies with an actual smooth lift on the relative determinant line.

Because \(W\) is \(H\)-invariant, this line pulls back to the stated right quotient \(G/H\). The quotient is a genuine smooth Fréchet manifold: fixing three distinct cyclically ordered circle points gives a smooth slice, by the unique projective postcomposition sending their images back to the three reference points. No assertion that the ambient \(L^2\) representation is a norm-smooth action is needed.

## 5. Lie cocycle and the independent coefficient calculation

Let
\[
 A_X=dU_X=\operatorname{ad}_X,\quad
 b_X=P_WA_XP_E,\quad c_X=P_EA_XP_W.
\]
These crossing blocks are smoothing even though \(A_X\) itself is unbounded on \(L^2\). Differentiating the smooth local determinant formula gives
\[
 \boxed{K(X,Y)=\operatorname{tr}(b_Yc_X-b_Xc_Y).}
\]
The sign follows directly from \(a_{gh}=a_ga_h+b_gc_h\), hence from the minus sign in \(C(g,h)\). There is no unbounded diagonal trace in this computation.

For \(m>0\), \(b_m=0\) and \(c_{-m}=0\), while
\[
 A_me_j=(m-j)e_{m+j}.
\]
The only input indices crossing from \(W\) to \(E\) are \(j=2-m,\ldots,1\). Therefore
\[
 \begin{aligned}
 K(e_m,e_{-m})
 &=\operatorname{tr}(b_{-m}c_m)\\
 &=\sum_{j=2-m}^{1}(m-j)(-2m-j)\\
 &=-\frac{13}{6}m(m^2-1).
 \end{aligned}
\]
For example \(m=2\) has precisely the two contributions \(-8-5=-13\). The mode \(m=1\) gives zero because the sole would-be crossing coefficient vanishes. Fourier conservation and antisymmetry give the full formula stated at the start.

The coefficient is not just a numerical fit: the finite sum has been evaluated symbolically and its residual checked exactly. An independent polynomial Jacobi residual is zero. The general cutoff \(j\leq k\) gives
\[
 -\frac{13}{6}m^3+\left(k^2+k+\frac16\right)m,
\]
which is an additional check that the projective cutoff \(k=1\) supplies the \(-m\) term with the required coefficient.

### Reality and the two factors of \(i\)

For real vector fields, Fourier coefficients obey \(X_{-m}=-\overline{X_m}\). Since the polynomial in \(K\) is real and odd,
\[
 \overline{K(X,Y)}=-K(X,Y).
\]
Thus the actual complex scalar cocycle is imaginary on real inputs. If \(T\) is the real central generator with \(\exp(2\pi T)=1\), then it acts on the quotient determinant as multiplication by \(i\). Therefore the real central cocycle is
\[
 \omega=-iK,
\]
and the convention \(\omega=i\sigma\) gives \(K=-\sigma\). Hence \(c=26\), not \(-26\), in that convention.

As a real-basis check,
\[
 K(\sin(mx)\partial_x,\cos(mx)\partial_x)
 =-\frac{13i}{12}m(m^2-1),
\]
so \(\omega\) is real on these arguments, as required.

The extension cannot split over all of \(G\). If \(K\) were a Lie coboundary, its value on \((e_m,e_{-m})\) would be \(2m\ell(e_0)\), up to the coboundary sign. The \(m=1\) value forces \(\ell(e_0)=0\), contradicted by the \(m=2\) value \(-13\). This is a genuine projective lift rather than an honest \(G\)-linearization with trivial center.

## 6. Exact projective-subgroup splitting and the rotation loop

For \(h\in H\), invariance gives \(c_h=0\), \(a_h=U_h|_W\), and \(a_h\) is invertible. Consequently
\[
 \boxed{j_H(h)=[(h,a_h)]}
\]
is an actual smooth group homomorphism: \(a_{h\star k}=a_ha_k\). It fixes the base frame \(W\hookrightarrow\mathcal H_0\), since
\[
 U_h|_Wa_h^{-1}=I_W.
\]
It therefore acts trivially on the base quotient-determinant fiber. The stabilizer character of this \(H\) splitting is **trivial**. A connected semisimple group has no nontrivial smooth \(\mathbb C^*\) character here: its derivative must annihilate its perfect Lie algebra, hence is zero, and connectedness finishes the argument. Thus this splitting cannot be modified by a nontrivial smooth character of \(H\).

For rotations \(R_\theta(x)=x+\theta\),
\[
 a_{R_\theta}e_j=e^{ij\theta}e_j\quad(j\leq1).
\]
The exact lifted loop is \([(R_\theta,a_{R_\theta})]\). At \(\theta=2\pi\), both entries are the identity. Its endpoint is therefore precisely **central phase 1**. No divergent product of rotation eigenvalues has been taken.

### Why a cubic-only convention gives a different phase

Let hats denote lifts in the relative Lie-algebra splitting. Replacing
\[
 \widehat e_0\quad\hbox{by}\quad
 L_0=\widehat e_0-i\frac{13}{12}T
\]
(and leaving the other modes unchanged) changes the central polynomial from \(i(13/6)(m^3-m)\) to \(i(13/6)m^3\). The real rotation generator is then
\[
 -iL_0=-i\widehat e_0-\frac{13}{12}T.
\]
That different lifted rotation path ends at
\[
 \exp\!\left(-2\pi i\frac{13}{12}\right)
 =\exp(-i\pi/6).
\]
This is the usual \(c/24\) shift expressed in the present conventions. It is not the endpoint of the actual \(H\)-relative rotation lift and is not a nontrivial character of \(\mathrm{PSL}_2(\mathbb R)\).

## 7. A genuine multiplicative \(U(1)\) reduction

The determinant cocycle in the section \(q=a_g\) is **not** already \(U(1)\)-valued. If \(g_t\) is the flow of \(X=\cos(2x)\partial_x\), then
\[
 C(g_t,g_{-t})=\det_F(a_{g_t}a_{g_{-t}})
 =1+\frac{13}{4}t^2+O(t^3).
\]
Indeed \(b_{g_t}=tb_X+O(t^2)\), \(c_{g_{-t}}=-tc_X+O(t^2)\), and \(\operatorname{tr}(b_Xc_X)=13/4\). The modulus is nontrivial near the identity. Simply claiming that the pair determinant is unitary would be wrong.

Nevertheless it admits a genuine **group** reduction, as follows.

### 7.1 A flat real central connection

The local section \(s(g)=[(g,a_g)]\) defines a Lie-algebra vector-space splitting
\[
 \operatorname{Lie}\widehat G_{\det}
 =\mathfrak g\oplus\mathbb C,
\]
with bracket central part \(K\). Let \(\mathcal A\) be the left-invariant complex principal connection obtained by projecting the left Maurer–Cartan form onto this central summand. Its curvature on horizontal vectors is \(-K\).

Its real part \(\beta=\operatorname{Re}\mathcal A\) is closed because \(\operatorname{Re}K=0\). It descends to a flat principal \(\mathbb R_{>0}\) connection on
\[
 \widehat G_{\det}/U(1)\longrightarrow G.
\]
The exact \(H\) splitting is horizontal: its differential is precisely the given splitting on \(\mathfrak h\), with zero central component.

This connection is explicit locally. If \(X=g^{-1}\dot g\) denotes left logarithmic velocity for \(\star\), then
\[
 \boxed{\mathcal A_{s(g)}(\dot g)
 =\operatorname{tr}(b_gc_Xa_g^{-1}).}
\]
To see the sign, differentiate
\(s(g)s(h)=s(g\star h)C(g,h)\) at \(h=1\). The local connection is minus the second-variable derivative of \(\log C\), and that derivative is \(-\operatorname{tr}(b_gc_Xa_g^{-1})\). All terms are smoothly smoothing.

### 7.2 No global positive holonomy

The group \(G\) deformation retracts onto rotations. For a lift \(f(x+2\pi)=f(x)+2\pi\), set
\[
 f_t(x)=(1-t)f(x)+t(x+f(0)).
\]
Its derivative is positive; changing the lift by \(2\pi n\) changes \(f_t\) by the same amount. Thus the formula defines a smooth deformation retraction on \(G\), fixing rotations. In particular, \(\pi_1(G)\) is generated by the rotation loop.

The flat positive connection has zero holonomy around this generator, because the horizontal \(H\) splitting contains the closed rotation lift. Flatness then implies zero holonomy around every loop.

This implication requires no infinite-dimensional integration theorem: local horizontal lifting solves only a scalar ordinary differential equation, smooth parameter dependence follows by integration, and homotopy invariance follows by applying the usual two-parameter Stokes calculation to the pulled-back closed real one-form. The displayed deformation reduces every loop to rotations.

### 7.3 The subgroup, not a fiber-dependent normalization

Trivial holonomy gives a global horizontal section of the positive extension. Left invariance makes this section multiplicative: concatenate a horizontal path to \(g\) with its left translate of a horizontal path to \(h\); uniqueness gives the horizontal lift of \(g\star h\).

Equivalently there is a smooth group character
\[
 \boxed{\rho:\widehat G_{\det}\to\mathbb R_{>0},\qquad
 \rho(\lambda)=|\lambda|\quad(\lambda\in\mathbb C^*).}
\]
It can be constructed directly by
\[
 \rho(\widehat g)=\exp\int_{1}^{\widehat g}\beta.
\]
The integral is path-independent: the base-loop periods vanish by the preceding argument, and the remaining central-circle periods of \(\beta\) vanish as well. Local trace formulas above give an explicit path-integration prescription, with ordinary determinant transition factors when changing charts.

Then
\[
 \boxed{\widehat G_1=\ker\rho}
\]
is a genuine smooth subgroup, surjects onto \(G\), and has central kernel \(U(1)\). Moreover \(j_H(H)\subset\widehat G_1\).

This is not a normalization depending on the point of the determinant-line base: \(\rho\) is a single multiplicative function of the extension element. Its existence and multiplicativity have been proved independently of a choice of fiber metric.

The positive character is unique. Two such characters differ by a smooth positive character of \(G\). Its derivative vanishes because the vector-field Lie algebra is perfect: zero-mean fields are \([\partial_x,F\partial_x]\), and the constant field is \(-[\sin x\partial_x,\cos x\partial_x]\). Connectedness then forces that character to be trivial.

No closed formula for \(\rho\) as an unweighted coefficient-\(L^2\) Gram determinant is asserted here. The path-integral construction is sufficient and explicit, and does not require such a Gram determinant to be trace class.

## 8. The line, metric, connection, and holomorphic structure are separate

The smooth determinant line and its \(\mathbb C^*\) lift were constructed in §§3–4, before choosing a Hermitian metric or a connection.

The exact splitting identifies the nonzero quotient-determinant line over \(G/H\) with
\[
 L_Q^\times\simeq\widehat G_{\det}/j_H(H).
\]
The subgroup reduction supplies an invariant unit-circle bundle
\[
 \widehat G_1/j_H(H)\subset L_Q^\times.
\]
Declaring this to be the unit circle defines a smooth Hermitian metric; the \(\widehat G_1\) action preserves it. This is an actual homogeneous construction, not a pointwise repair of a prescribed nonunitary action.

There is also a distinguished *chosen* connection from the particular infinitesimal splitting used above. Since \(K(\mathfrak h,\mathfrak g)=0\), and \(H\) is connected, the left-invariant central connection is horizontal and invariant for the right \(j_H(H)\) action. It descends to the line over \(G/H\). On the \(U(1)\) reduction it is imaginary-valued, hence compatible with the constructed metric. In the complex scalar convention its curvature at the identity coset is \(-K\); for the real principal connection it is \(-\omega\).

This does **not** by itself identify it with a particular coefficient-\(L^2\) determinant connection, a Quillen/Chern connection, or any independently prescribed metric. No holomorphic structure or holomorphicity theorem is used in proving the smooth lift. Identifying those additional structures requires separately stating and checking them.

## 9. Why the unit-Virasoro character weight is +26

The intrinsic central circle of \(\widehat G_1\) acts on \(L_Q\) with weight +1 and has real cocycle \(\omega_{26}\).

There is a concrete global way to compare it to a unit-coefficient circle extension without changing the meaning of \(\exp(2\pi T)=1\). Because \(G\) retracts onto a circle, \(\pi_2(G)=0\). The exact homotopy sequence of the circle bundle, together with the closed lifted rotation loop, gives
\[
 \pi_1(\widehat G_1)\simeq
 \mathbb Z_{\mathrm{rotation}}\oplus\mathbb Z_{\mathrm{center}}.
\]
Take the connected covering group corresponding to the subgroup
\[
 \mathbb Z_{\mathrm{rotation}}\oplus26\mathbb Z_{\mathrm{center}}.
\]
It is constructed by path classes with that subgroup imposed, and inherits smooth local group charts. Its kernel over \(G\) is a circle, and the map to \(\widehat G_1\) has central map \(z\mapsto z^{26}\). The \(H\) splitting lifts because its generator is the rotation summand included in the subgroup.

If \(T_1\) is the normalized circle generator in this covering extension and \(T_{26}\) the old one, its derivative sends
\[
 T_1\longmapsto26T_{26}.
\]
Thus its cocycle is \(\omega_1\). Pulling back the quotient-determinant action gives central character \(z^{26}\): **weight +26**. This comparison tracks the global central circles, not just an arbitrary rescaling of a Lie-algebra generator.

## 10. Reproducible evidence and remaining scope

The exact algebra input is [checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/checks.wl>), with [text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/checks-result.txt>), [machine output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/checks-result.wxf>), and [raw tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/mathematica-raw.json>). It checks the finite trace, general cutoff, Jacobi identity, projective-mode vanishing, real-basis sign, and convention conversion.

The supplementary input is [additional-checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/additional-checks.wl>), with [text output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/additional-result.txt>), [machine output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/additional-result.wxf>), and [raw response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-detlift-20261031.8djLkr/additional-mathematica-raw.json>). It checks the nonunitary quadratic modulus, the cubic normalization shift, and its loop phase. Wolfram returned the phase as the equivalent principal-root expression \(-(-1)^{5/6}\); no numerical branch inference is used in the analytic derivation.

Both actual Wolfram Engine 14.3 evaluations reported no messages. All symbolic residual checks were exactly zero. No failed CAS attempt or suppressed diagnostic occurred. The source files are self-contained and can be rerun with `wolframscript -file`.

**Verified analytically:** local compression invertibility; smoothing absorption for the local determinant cocycle; construction of the global smooth extension and its determinant-line action; quotient-versus-tautological sign; exact \(H\) splitting; closed relative rotation loop; nontriviality of the extension; genuine multiplicative \(U(1)\) subgroup reduction; and the distinction between intrinsic and unit-Virasoro character weights.

**Assumptions retained from the problem:** smooth smoothing of the crossing blocks; bounded invertibility of \(U_g\) on coefficient \(L^2\); \(H\)-invariance of \(W\). The report does not purport to re-prove these supplied facts.

**Not claimed:** identification with an externally fixed Hermitian metric, connection, or holomorphic structure; an unweighted Gram-determinant formula for the positive character; a norm-smooth ambient \(L^2\) representation; or a further independent subagent review of this already-independent investigation. None is needed for the smooth existence and global phase conclusions above.
