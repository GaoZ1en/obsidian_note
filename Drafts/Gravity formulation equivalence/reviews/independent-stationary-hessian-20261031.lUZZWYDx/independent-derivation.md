# Independent stationary-Hessian analysis on complete AdS

## Result and rigorous scope

**The actual CS stationary family has a well-defined modified relative determinant of order four, after shrinking its physical neighborhood if a logarithm is wanted. Its nonzero physical Hessians do not have ordinary Fredholm relative determinants. The geometric endpoint, with the same fixed UV polarization and free reference, generally has no finite-order modified Fredholm determinant: an order-zero ghost obstruction survives already at a physical body.**

These are statements about the positive-Hilbert operator ideals underlying the graded Gaussian problem. They do not define the missing first three CS wheel traces, an infinite-dimensional BV density, a BV Laplacian, or a quantum transport theorem. A coefficientwise graded log tail can be defined because its individual operators are trace class; cancellation of symbolic supertraces is not used to manufacture trace class.

This report was independently derived from the supplied setup and the authoritative notes. A later suggested radial example and a later proposed ghost-factor normalization are assessed separately in [followup.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md>). They are not represented as blind discoveries.

## 1. Setup and exactly which Hessian is being compared

The geometry is \(M=\mathbb H^3\), or the fixed complete loxodromic cyclic quotient with translation length \(\beta>0\). Constants below can depend on that fixed geometry; no uniform \(\beta\to0\) claim is made. Curvature radius is one. We use the full real rank-six gravitational algebra

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\]

The positive bundle norm includes both internal copies. The cyclic pairing is instead \(\mathcal B(u,v)=\kappa\langle u,Hv\rangle_+\), \(H=S_{\rm int}*\), with the stated totalization and ghost-parity conventions. The actual flat connection is nonunitary in this positive norm. Its adjoint is \(\delta=D^\dagger\); the input facts are \(\Delta=D\delta+\delta D\ge1\), \([H,\Delta]=0\), and \(\operatorname{Dom}\Delta=H^2\).

The source is [note18:105–253](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L105-L253>), especially the actual degree blocks, not a unitary-flat surrogate. Put

\[
C=\delta D\Delta^{-1},\quad E=D\delta\Delta^{-1},\quad
Q=RC,\quad Q'=RE,
\quad R=1-1_{[0,\Lambda^2]}(\Delta).
\]

The bounded Hodge projections satisfy \(C+E=1\), \(HQ=Q'H\). The closed Hilbert UV Lagrangian is \(\mathcal L=\operatorname{ran}Q\), not the uncompleted image of the propagator. Its regular Hessian domain is \(\mathcal L\cap H^1\).

For the stationary point \(j=x+y(x)\), the UV second variation is

\[
\operatorname{Hess}_{\mathcal L}S_j(u,v)
 =\mathcal B\bigl(u,(D_T+\operatorname{ad}_j)v\bigr),
 \qquad u,v\in\mathcal L\cap H^1.
\]

After Riesz identification with the graded dual, using the displayed cyclic pairing rather than a positive pairing in its place, its operator is

\[
K_j=\kappa\,QH(D_T+\operatorname{ad}_j)|_{\mathcal L},
\qquad K_0=\kappa QHD_T|_{\mathcal L}.
\tag{1}
\]

Totalized coefficient signs in (1) are retained in \(D_T,h_T\); equivalently one may work blockwise in scalar coefficient Hilbert spaces with their fixed sign matrices. They do not alter Schatten membership. Since \(H\mathcal L=\operatorname{ran}Q'\),

\[
K_0^{-1}=\kappa^{-1}h_TH|_{\mathcal L},
\quad
K_0^{-1}K_j=1+A_j,
\quad
\boxed{A_j=h_T\operatorname{ad}_j|_{\mathcal L}.}
\tag{2}
\]

Here \(h_TQ'=h_T\) is essential: the inverse is not an inverse of \(D\) on the full complex. The opposite relative operator is

\[
K_jK_0^{-1}=1+\widetilde A_j,
\qquad \widetilde A_j=QH\operatorname{ad}_j h_TH|_{\mathcal L}.
\tag{3}
\]

Equations (2)–(3) are initially obtained on the regular domain and extend to bounded operators when \(j\) is bounded. The factor \(\kappa\) cancels. Both orientations obey the same Schatten estimates below. Their nonzero eigenvalues, with algebraic multiplicity, agree by the bounded-product \(AB/BA\) theorem; their modified determinants therefore agree whenever both are defined.

## 2. A global Schatten estimate that uses the actual IR domain

An order-minus-one symbol alone does not imply compactness on an infinite-volume manifold. Here the actual stationary domain supplies more.

For any of the finitely many bundle blocks, bounded geometry and the Laplace-type principal symbol give the small-time diagonal heat estimate

\[
\sup_x\|e^{-t\Delta}(x,x)\|\le C t^{-3/2}\quad(0<t\le1).
\]

The spectral gap, combined with the semigroup property and a fixed positive-time diagonal bound, gives an exponentially decaying large-time bound. No unitary-flat connection assumption enters this estimate. For a multiplication coefficient \(f\),

\[
\|M_f e^{-t\Delta}\|_{\mathcal S_2}^2
 \le C\|f\|_2^2 t^{-3/2}\quad(0<t\le1),
\qquad
\|M_f e^{-t\Delta}\|\le e^{-t}\|f\|_\infty.
\]

Interpolation of the linear map \(f\mapsto M_f e^{-t\Delta}\), followed by the heat representation of \(\Delta^{-1/2}\), proves

\[
\boxed{\|M_f\Delta^{-1/2}\|_{\mathcal S_p}
       +\|\Delta^{-1/2}M_f\|_{\mathcal S_p}
 \le C_p\|f\|_{L^p},\qquad p>3.}
\tag{4}
\]

Indeed the small-time integral is bounded by
\(\int_0^1 t^{-1/2-3/(2p)}dt\), which converges exactly for \(p>3\). Matrix coefficients and different bundle blocks only change constants.

The operators \(\delta\Delta^{-1/2}\), the spectral projections, and the Hodge projections are bounded. Factor \(h\) as \((\delta\Delta^{-1/2})\Delta^{-1/2}R\), or commute the square root through \(\delta\) to put it next to a multiplication coefficient. Thus (4) proves

\[
\|A_j\|_{\mathcal S_p}+\|\widetilde A_j\|_{\mathcal S_p}
 \le C_p\|j\|_{L^p},\qquad p>3.
\tag{5}
\]

For the actual small stationary solution in [note18:334–376](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L334-L376>), \(j\in H^s\cap L^2\), \(s>3/2\), and in fact \(j\in H^\infty\). Consequently \(j\in L^2\cap L^\infty\subset L^p\) for every finite \(p\ge2\). **Therefore (5) applies globally to the actual stationary graph; compact support is not required.** In particular \(A_j,\widetilde A_j\in\mathcal S_4\).

At a finite formal BV jet the same estimate applies to each scalar coefficient operator, because those coefficients lie in the smooth Sobolev scale. This is a coefficientwise statement, not a topology or a measure on an infinite Grassmann algebra.

For contrast, dropping this decay hypothesis invalidates the conclusion: on \(\mathbb H^3\), the nonzero invariant coefficient \(j=t e_0^aP_a\) gives an isometry-equivariant nonzero operator. Translating a fixed test section to infinity produces a weakly null sequence on which its norm does not tend to zero. It is not compact. This coefficient is not in the retained/stationary L2 domain.

## 3. Sharp cutoff and local symbols

The sharp low-band projector is not finite rank, but it is locally smoothing. Spectral boundedness gives arbitrary Sobolev gains for \(P\), and compactly localized kernels \(\chi P\chi'\) are smooth. It therefore changes no high-frequency local symbol. Elliptic calculus gives

\[
\sigma(D)(k)=ik\wedge,\quad
\sigma(\delta)(k)=-i\iota_{k^\sharp},\quad
\sigma(h)(k)=-i\frac{\iota_{k^\sharp}}{|k|^2},
\quad
q(k)=1-\frac{k\wedge\iota_{k^\sharp}}{|k|^2}.
\]

The latter is the coexact projection. For a physical body \(j\), \(j\) is a Lie-algebra-valued one-form, and on \(\ker\iota_{k^\sharp}\),

\[
\boxed{a_{-1}(x,k)
 =-i\frac{\operatorname{ad}_{j(k^\sharp)}}{|k|^2}\,1_{\Lambda^\bullet(k^\perp)}.}
\tag{6}
\]

The totalization signs cancel between the body vertex and the propagator in this formula. Already the scalar-ghost block is
\(a_{-1}^{(0)}=-i\operatorname{ad}_{j(k^\sharp)}/|k|^2\).

The gravitational Lie algebra has zero center. Thus any nonzero physical \(j\) has a nonzero local symbol (6) on an open phase-space set. Extend the operator on \(\mathcal L\) by zero to the ambient Hilbert space and double-localize it. The standard local singular-value Weyl law for a smooth classical order \(-m\) operator on a three-dimensional compact patch says

\[
s_n(T)\sim c\,n^{-m/3},\quad
c^{{3}/{m}}=\frac1{3(2\pi)^3}\int_{S^*M}
 \operatorname{tr}|t_{-m}(x,k)|^{3/m},
\]

with positive constant whenever the principal symbol is nonzero. This law does not require a scalar elliptic principal symbol; the matrix singular-value expression is the relevant one. Applied with \(m=1\), it gives

\[
\boxed{j\ne0\text{ physical}\quad\Longrightarrow\quad
 A_j\notin\mathcal S_3,\text{ hence }A_j\notin\mathcal S_1.}
\tag{7}
\]

If a global operator were in \(\mathcal S_3\), all its compact localizations would be too, so the local obstruction suffices. This establishes the failure of the ordinary Fredholm determinant on every nonzero physical CS background in this domain, not merely a power-counting concern.

## 4. Wheels: a rigorous tail, but not the first three traces

For \(A=A_j\in\mathcal S_4\), \(A^n\in\mathcal S_1\) for all \(n\ge4\). If \(\|A\|<1\),

\[
T_4(A)=\log(1+A)-A+\frac{A^2}{2}-\frac{A^3}{3}
 =\sum_{n\ge4}\frac{(-1)^{n+1}}n A^n
\tag{8}
\]

converges in trace norm; for example

\[
\|T_4(A)\|_1\le
\frac{\|A\|_4^4}{4(1-\|A\|)}.
\]

The modified determinant is

\[
\boxed{\det_4(1+A)
 =\det_F\!\left((1+A)e^{-A+A^2/2-A^3/3}\right).}
\tag{9}
\]

It exists for every \(A\in\mathcal S_4\); the smallness condition only supplies a logarithm branch and the convergent series (8). It can be ensured by shrinking the actual stationary neighborhood since \(\|h\|\le\Lambda^{-1}\) and \(\|\operatorname{ad}_j\|\le C\|j\|_\infty\).

At a physical body one may take the corresponding finite graded product/ratio of block determinants; the square-root branch for the bosonic Gaussian is continued from zero together with the chosen reference contour. More generally the coefficientwise one-loop tail uses \(\operatorname{STr}T_4(A)\). It is legitimate because every coefficient operator being traced is trace class. No claim is made that the ordinary all-component determinant equals the BV superdeterminant.

Wheel orders \(1,2,3\) are generically not trace class: their local orders are \(-1,-2,-3\). Their absolute UV power count in three dimensions is quadratic, linear, logarithmic. An actual local model is \(w=0,f=t e_0\), so \(j(k)=tP_3\) at a unit covector \(k=e^3\). The matrix \(\operatorname{ad}_{P_3}\) has eigenvalues \((-1,-1,0,0,1,1)\). Hence its first, second, and third powers are nonzero. The local Weyl law applied to \(A^n\) makes all three failures of trace class rigorous. Nonzero principal powers persist under small perturbations of this model.

There can be special algebraic degeneracies of individual powers, so the assertion is not that every background makes all three separate powers divergent. What is universal for a nonzero physical body is (7); order four is the first generally guaranteed trace-class tail.

There is also a particularly clear warning against symbolic cancellation. At fixed \(k\), the coexact form dimensions in degrees \(0,1,2\) are \(1,2,1\), with BV parities odd, even, odd. Thus

\[
\operatorname{str}_{\rm form}1=-1+2-1=0.
\]

The leading-symbol supertrace of every power in (6) vanishes, while the individual blocks and their direct sum remain non-trace-class at wheel orders 1–3. Multiplication by the grading involution is unitary and does not improve Schatten membership. Symbolic supertrace cancellation is not an ordinary operator supertrace and does not define the omitted wheels.

## 5. The geometric cubic vertex changes the principal symbol in ghost directions

The endpoint action in [note19:189–211](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L189-L211>) contains

\[
\int\left[E(\mathcal L^0_\xi f+[f,\eta])
 +W(\mathcal L^0_\xi w+[w,\eta])\right].
\tag{10}
\]

Here \(\xi=e_0^{-1}\zeta\), and the physical component order is \((w,f)\), ghost order \((\eta,\zeta)\). Let \(\mathcal G_g(j)\) denote the geometric gauge-generator block at a physical body. In a normal frame at a point, derivatives of the ghost in (10) give

\[
\sigma_1\bigl(\mathcal G_g(j)-G\bigr)(k)c
 =ik_\mu\begin{pmatrix}w^a{}_{\nu}\xi^\nu\\f^a{}_{\nu}\xi^\nu\end{pmatrix}.
\]

Define matrices

\[
\mathsf W^a{}_b=w^a{}_{\mu}(e_0^{-1})^\mu{}_b,
\quad \mathsf F^a{}_b=f^a{}_{\mu}(e_0^{-1})^\mu{}_b,
\quad
\boxed{\mathsf T_j=\begin{pmatrix}0&\mathsf W\\0&\mathsf F\end{pmatrix}.}
\tag{11}
\]

Then \(\sigma_1(\mathcal G_g)=ik\otimes(1+\mathsf T_j)\). This is an actual principal symbol of the gravitational cubic vertex, not a generic warning about nonlinear changes of coordinates.

The correct UV polarization includes ghost and antighost directions even at a physical body:

\[
\mathcal L^0=RE^0,\qquad
\mathcal L^2=RH_1\operatorname{ran}G,
\qquad p=-\kappa *G\bar c.
\]

The ghost bilinear is therefore

\[
-\kappa\langle G\bar c,\mathcal G_g(j)c\rangle_+.
\]

An isometric L2 antighost parameter is obtained from \(\bar c=M^{-1/2}b\), \(M=G^\dagger G\). Its kinetic operator is \(M^{-1/2}G^\dagger\mathcal G_g\), first order rather than a falsely balanced second-order operator. The ghost component of the left-relative Hessian is exactly

\[
L_g=M^{-1}R_0G^\dagger\mathcal G_g(j)R_0
\quad\text{on }R_0E^0,
\]

where \(R_0\) is the ghost UV spectral projection. Since \(\sigma(M)=|k|^2\),

\[
\boxed{\sigma_0(L_g-1)=\mathsf T_j.}
\tag{12}
\]

The companion odd Hessian block has the corresponding transposed principal symbol. This is the ghost sector transverse to the physical body; it must not be discarded just because the map and action coincide on the bosonic body. Scalar ghosts themselves have no divergence-free constraint. The coexact condition on their two-form partners has already been included through \(G\bar c\).

## 6. A genuine noncompactness counterexample

Any nonzero matrix (11) gives a noncompact order-zero block, even with smooth compact support. Choose a compactly supported high-frequency ghost packet in a small coordinate ball and a vector on which \(\mathsf T_j\) is nonzero. Its UV projection differs by a norm-small term because the low-band projector is locally smoothing. The packets are weakly null, but the image under \(L_g-1\) has a norm bounded away from zero. Therefore

\[
\boxed{\mathsf T_j\not\equiv0
\quad\Longrightarrow\quad L_g-1\notin\mathcal K,
\text{ hence in no }\mathcal S_p\;(p<\infty).}
\tag{13}
\]

In particular no ordinary or finite-order modified Fredholm determinant of the original geometric relative Hessian follows. It can still be an invertible bounded operator near zero; failure of a determinant ideal is not failure of invertibility.

A compactly supported background is not, in general, an actual stationary graph: \(P\) and \(h\) are nonlocal. To realize the obstruction on the actual graph without that false identification, choose a smooth compactly supported \(f_*=\chi e_0\) with \(\chi=1\) near a point. Since \(P_\Lambda\to1\) strongly in every Sobolev norm, choose a finite sufficiently large \(\Lambda\) such that \(P_{\Lambda,1}f_*\) is uniformly close to \(e_0\) near that point. Set

\[
x_\varepsilon=(0,\varepsilon P_{\Lambda,1}f_*),\qquad
j_\varepsilon=x_\varepsilon+y(x_\varepsilon),\qquad
y=O(\varepsilon^2)\text{ in }H^s.
\tag{14}
\]

The actual body is common to the two endpoint stationary constructions, as the physical action and physical UV Lagrangian coincide; see [note19:336](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/19 Retained BV canonical transport on complete AdS.md#L336). For small positive \(\varepsilon\), its \(\mathsf F\) has eigenvalues near \(\varepsilon\) on a smaller ball. Thus (13) is realized on an actual retained stationary graph. This construction proves a counterexample for sufficiently large finite cutoff; the later radial follow-up supplies an explicit retained example for \(\Lambda^2>5\).

For this model, \(\mathsf T_j^n\ne0\) for every \(n\ge1\). Every finite Taylor-subtracted logarithm

\[
\log(1+A_g)-\sum_{n=1}^{N-1}\frac{(-1)^{n+1}}n A_g^n
\]

has a nonzero order-zero principal symbol, namely the same scalar remainder evaluated on \(\mathsf T_j\). It is not compact, hence not trace class. Merely starting the geometric wheel expansion at a later finite order does not repair this example. The same local model gives nonzero principal powers for the first three CS wheels on the actual graph.

Double localization suffices to prove these negative statements. It does not turn a localized operator into the Hessian of a retained stationary theory, and it does not cure a nonzero order-zero symbol.

## 7. Why the classical map does not contradict this

A pointwise order-zero BV coordinate map can pull back a first-order action to one whose first-order coefficients depend on the background field. Its physical-body identity does not imply identity of its derivative in ghost directions. The displayed map has precisely that feature.

Moreover an ordinary Hessian is not generally transformed by a pure congruence at an off-shell point: there is also a term involving the first derivative of the action and the second derivative of the map. UV stationarity is not full stationarity. One cannot silently remove that term, or assume that the fixed UV polarization is mapped to itself.

A field-dependent principal-factor normalization can remove (12), but it changes the determinant problem. Its precise positive result, its spectral-compression caveat, and the still undefined local density are in the separately requested [follow-up assessment](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup.md>).

## 8. Checks and remaining gaps

The exact [Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check.wl>) and [machine return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/symbol-check-result.txt>) give fourteen passing labels, no kernel messages, and no failed/aborted return. They check the actual six-dimensional algebra, \(\operatorname{ad}_{P_3}\), the geometric ghost principal symbol after the free ghost pairing, the nonzero CS powers, and the cancellation of their formal supertraces. These are finite exact symbol checks, not a replacement for the global heat/Schatten or stationary arguments.

**Proved under the stated operator premises:** the correct projected Hessian ratio; global \(\mathcal S_p\), \(p>3\), for actual CS stationary bodies; failure of \(\mathcal S_3\) for nonzero physical bodies; the trace-class wheel tail \(n\ge4\); and a geometric order-zero obstruction on an actual stationary graph, with no finite Taylor-subtracted trace-class tail in that example.

**Not proved or claimed:** renormalized values of wheels 1–3; a continuum BV measure or QME; determinant multiplicativity through the nonlinear BV map; an interacting geometric–CS quantum equivalence; or uniform degeneration limits of the quotient geometry. This review is itself an independent child analysis. Further delegation was unavailable at the session's depth limit; no fictitious additional independent reviewer is claimed.
