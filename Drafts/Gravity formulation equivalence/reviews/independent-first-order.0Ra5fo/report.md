# Independent review: 3D Euclidean first-order gravity with a completed outer wall

## Results

**The exact off-shell action split holds for every nondegenerate positively oriented coframe and unrestricted smooth contorsion.** With the conventions below,

\[
\boxed{I_P[e,\omega(e)+K]=I_g[g(e)]+\gamma\int_M\big[(\operatorname{tr}C)^2-\operatorname{tr}(C^2)\big]\,\mathrm{vol}.}
\]

The prescribed wall term cancels the entire derivative-contorsion boundary term, pointwise on the wall. No torsion boundary condition, Einstein equation, or special boundary shape is needed.

**The real Euclidean auxiliary integral does not converge.** Its nine-component Hessian, in an explicitly orthonormal basis, has eigenvalues

\[
4\gamma\ (1),\qquad -2\gamma\ (5),\qquad 2\gamma\ (3),
\]

inertia \((n_+,n_-,n_0)=(4,5,0)\), and determinant \(-2^{10}\gamma^9\). These are the Hessian per unit physical volume. For a cell of physical volume \(v\), replace \(\gamma\) by \(z=\gamma v\).

On the oriented contour that leaves the trace and antisymmetric components real and puts all five symmetric-traceless components on \(+i\mathbb R\), the bare finite-cell Gaussian is

\[
\boxed{G_+(z)=\frac{i}{\sqrt2}\left(\frac\pi z\right)^{9/2}.}
\]

Its phase and normalization are extra integration data, not consequences of the real Euclidean action alone. A finite pointwise Hessian does not define a continuum determinant.

The linearized coframe-to-metric Jacobian is also measure-dependent: \(h=2X_S\) gives \(2^{-6}\) with matching Frobenius-normalized symmetric and Lorentz coordinates, but the quotient factor is \(2^{-9/2}\) when the Lorentz Haar tangent measure uses the conventional norm \(\tfrac12\lambda_{ab}\lambda_{ab}\). With raw coordinate measures it is instead \(1/(8\det E)\), as derived below.

All original research notes were left unchanged. No candidate research report was read. Applicable [vault rules](</Users/koishi/Documents/Note/AGENTS.md>) and the math-computation skill were read. All deliverables are in the new private review directory; tool-generated archive exports were copied there intact.

## 1. Objects and conventions

Let \(M\) be an oriented Riemannian three-manifold with positive orthonormal coframe \(e^a\), \(\epsilon_{123}=+1\), and

\[
\mathrm{vol}=e^1\wedge e^2\wedge e^3,
\qquad g=\delta_{ab}e^a\otimes e^b.
\]

The real connection satisfies \(\omega^{ab}=-\omega^{ba}\),

\[
R^{ab}=d\omega^{ab}+\omega^a{}_c\wedge\omega^{cb},
\qquad De^a=de^a+\omega^a{}_b\wedge e^b.
\]

Write \(\bar\omega=\omega(e)\) for its unique torsion-free compatible connection and \(K=\omega-\bar\omega\). Throughout this review the dualization is

\[
\boxed{K^{ab}=\epsilon^{ab}{}_c\,k^c,
\qquad k^a=C^a{}_b e^b,
\qquad k^a=\tfrac12\epsilon^a{}_{bc}K^{bc}.}
\]

Thus \(C\) is an unconstrained real \(3\times3\) matrix. A convention using \(K^{ab}=-\epsilon^{ab}{}_c\widetilde k^c\) has \(\widetilde C=-C\); the quadratic form and Hessian are unchanged. No such minus sign is implicit here.

Let \(n^a\) be the outward unit internal normal determined by the current coframe and wall embedding. Its pullback obeys \(n_a e^a=0\), and

\[
\mathrm{vol}_{\partial M}=\epsilon_{\rm wall}
=\tfrac12\epsilon_{abc}n^a e^b\wedge e^c
=\iota_N\mathrm{vol}.
\]

The extrinsic-curvature convention is \(K^{\rm wall}_{ij}=g(\nabla_iN,\partial_j)\), with trace \(K_{\rm wall}\); an outward round sphere has positive trace. This scalar is distinct from the contorsion one-form \(K^{ab}\). The wall is smooth and closed; there are no temporal endpoints or corners. Set \(\ell=1\), \(\gamma=1/(16\pi G)>0\).

## 2. Exact off-shell split, retaining the boundary term

Curvature expands exactly as

\[
R^{ab}(\bar\omega+K)=\bar R^{ab}+\bar D K^{ab}+K^a{}_c\wedge K^{cb}.
\]

Define the globally invariant two-form

\[
\Theta=\epsilon_{abc}e^a\wedge K^{bc}=2e^a\wedge k_a.
\]

Because \(\bar De^a=0\) and the coframe has form degree one,

\[
d\Theta=-\epsilon_{abc}e^a\wedge\bar D K^{bc}.
\]

This minus sign is essential. Also \(\epsilon_{abc}e^a\wedge\bar R^{bc}=R(g)\mathrm{vol}\) and \(\epsilon_{abc}e^a\wedge e^b\wedge e^c=6\mathrm{vol}\). Consequently the **bulk** functional is

\[
I_{P,\rm bulk}= -\gamma\int_M(R(g)+2)\mathrm{vol}
+\gamma\int_{\partial M}\Theta
-\gamma\int_M\epsilon_{abc}e^a\wedge K^b{}_d\wedge K^{dc}.
\tag{2.1}
\]

The wall functional expands as

\[
I_{P,\rm wall}=-2\gamma\int_{\partial M}K_{\rm wall}\mathrm{vol}_{\partial M}
+2\gamma\int_{\partial M}\mathrm{vol}_{\partial M}
-2\gamma\int_{\partial M}\epsilon_{abc}n^a e^b\wedge K^c{}_d n^d.
\tag{2.2}
\]

Here the torsion-free wall identity follows directly in an adapted frame \(n=(0,0,1)\):

\[
\epsilon_{abc}n^a e^b\wedge\bar Dn^c
=e^1\wedge\bar Dn^2-e^2\wedge\bar Dn^1
=K_{\rm wall}e^1\wedge e^2.
\]

The same adapted frame proves the unrestricted-contorsion identity

\[
\boxed{\Theta\big|_{\partial M}
=2\epsilon_{abc}n^a e^b\wedge K^c{}_d n^d.}
\tag{2.3}
\]

Indeed both sides equal \(2(e^1\wedge k^1+e^2\wedge k^2)\). This is a tensorial identity, so choosing an adapted frame loses no generality. All nine components of \(C\) remain arbitrary.

For an explicitly unconstrained algebraic check, evaluate the two-forms on two tangent vectors and put \(u=e(U)\), \(v=e(V)\), \(p=k(U)\), \(q=k(V)\). The difference between the two sides of (2.3) is exactly

\[
2\{(1-n^2)(u\cdot q-v\cdot p)
 +(n\cdot u)(n\cdot q)-(n\cdot v)(n\cdot p)\}.
\tag{2.4}
\]

It vanishes solely because \(n^2=1\) and \(n\cdot u=n\cdot v=0\). xTensor and independent Sage polynomial computations verify this identity without choosing a particular normal.

Equations (2.1)–(2.3) cancel the entire contorsion wall contribution **before** any field equation or limiting procedure. Holding an unrelated internal vector fixed while violating \(n\cdot e|_{\partial M}=0\) would not be the stated boundary problem.

## 3. Local quadratic form and complete Hessian

The dualization gives

\[
K^b{}_d\wedge K^{dc}=-k^b\wedge k^c,
\]

and therefore

\[
-\epsilon_{abc}e^a\wedge K^b{}_d\wedge K^{dc}
=\epsilon_{abc}e^a\wedge k^b\wedge k^c
=\big[(\operatorname{tr}C)^2-\operatorname{tr}(C^2)\big]\mathrm{vol}.
\]

This proves the stated action split. In components,

\[
q(C)=2(C_{11}C_{22}+C_{11}C_{33}+C_{22}C_{33}
-C_{12}C_{21}-C_{13}C_{31}-C_{23}C_{32}).
\]

The inner product used to call a basis orthonormal is

\[
\langle C,D\rangle=\operatorname{tr}(C^TD)
=\tfrac12 K^{ab}{}_c L^{ab}{}_c.
\tag{3.1}
\]

Let \(E_{ij}\) denote a matrix unit. The following ordered basis is orthonormal:

\[
\begin{aligned}
B_0&=I/\sqrt3,\\
B_1&=\operatorname{diag}(1,-1,0)/\sqrt2,
& B_2&=\operatorname{diag}(1,1,-2)/\sqrt6,\\
B_3&=(E_{12}+E_{21})/\sqrt2,
& B_4&=(E_{13}+E_{31})/\sqrt2,
& B_5&=(E_{23}+E_{32})/\sqrt2,\\
B_6&=(E_{12}-E_{21})/\sqrt2,
& B_7&=(E_{13}-E_{31})/\sqrt2,
& B_8&=(E_{23}-E_{32})/\sqrt2.
\end{aligned}
\]

Write \(C=tB_0+\sum_{A=1}^5s_AB_A+\sum_{r=6}^8a_rB_r\). Then

\[
q=2t^2-\sum_{A=1}^5s_A^2+\sum_{r=6}^8a_r^2.
\tag{3.2}
\]

For a finite cell, \(I_{K,v}=zq=\tfrac12x^TH_zx\), \(z=\gamma v>0\), and the **full** Hessian is

\[
\boxed{H_z=\operatorname{diag}(4z,-2z,-2z,-2z,-2z,-2z,2z,2z,2z).}
\tag{3.3}
\]

Equivalently, in row-major matrix components,

\[
(H_z)_{ij,kl}=2z(\delta_{ij}\delta_{kl}-\delta_{il}\delta_{jk}),
\qquad H_z(C)=2z(\operatorname{tr}C\,I-C^T).
\]

Thus

\[
\det H_z=-1024z^9,
\qquad\det(\lambda I-H_z)=(\lambda-4z)(\lambda+2z)^5(\lambda-2z)^3,
\qquad\operatorname{Inertia}(H_z)=(4,5,0).
\]

The matrix of the quadratic form itself, rather than its Hessian, has eigenvalues \(2,-1\,[5],+1\,[3]\) and determinant \(-2\). Confusing these two matrices loses a factor \(2^9\) in the Hessian determinant.

There are no auxiliary zero modes: \(\operatorname{tr}C\,I-C^T=0\) implies \(C=0\). Nevertheless the form is indefinite. Explicit checks are \(q(cI)=6c^2\), \(q(sB_1)=-s^2\), and \(q(aB_6)=a^2\). A nonzero matrix with \(q(C)=0\) is not a Hessian zero mode.

## 4. Euclidean contours, phases, and finite-cell normalization

The real negative direction already supplies a proof of divergence:

\[
\int_{\mathbb R}ds\,e^{-I_{K,v}(sB_1)}
=\int_{\mathbb R}ds\,e^{zs^2}=+\infty.
\]

Wolfram's actual attempt returned `Integrate::idiv` and left that integral unevaluated; this diagnostic is preserved, not replaced by a claimed successful evaluation.

A convergent SO(3)-invariant fibre contour is

\[
t,a_r\in\mathbb R,\qquad s_A=i y_A,\quad y_A\in\mathbb R.
\]

The trace/symmetric-traceless/antisymmetric decomposition is preserved by \(C\mapsto RCR^T\), so this contour does not require a preferred spatial frame. It does complexify the original real connection.

Choose the product Lebesgue measure in the displayed orthonormal coordinates and orient each rotated coordinate by increasing \(y_A\). The pullback of the analytically continued measure contributes \(i^5=i\), giving

\[
G_+(z)=i^5\sqrt{\frac\pi{2z}}\left(\sqrt{\frac\pi z}\right)^8
=\frac{i\pi^{9/2}}{\sqrt2 z^{9/2}}
=i\frac{(2\pi)^{9/2}}{\sqrt{|\det H_z|}}.
\tag{4.1}
\]

With \(s_A=i\sigma_A y_A\), \(\sigma_A=\pm1\), the result is \(i(\prod_A\sigma_A)\pi^{9/2}/(\sqrt2z^{9/2})\). These sign choices reverse orientations of the same imaginary lines. Rotating all five downward changes the phase to \(-i\).

More generally a straight ray \(x=e^{i\theta}y\) in a Hessian eigenmode \(\lambda\) converges iff \(\operatorname{Re}(\lambda e^{2i\theta})>0\). Thus the real/imaginary choices lie in appropriate convergence sectors. This is not a legitimate deformation of an already convergent real integral: the starting real integral does not exist, and a contour or analytic-continuation prescription must be supplied independently.

For the normalized measure \(\prod_{j=1}^9dx_j/\sqrt{2\pi}\), (4.1) becomes

\[
G_{+,\mathrm{norm}}(z)=\frac{i}{32z^{9/2}}.
\]

The displayed basis has determinant \(-1\) relative to row-major coordinates, verified in both CAS implementations. Real measures above are positive Lebesgue densities. For a holomorphic volume form the original orientation and induced cycle orientation must be transformed together; there is no additional unannounced minus sign. All phases here refer to the explicitly stated product-coordinate and cycle orientation.

An independently fixed ultralocal factor \(\mathcal N(z,e)\) in the auxiliary measure multiplies (4.1). Choosing

\[
\mathcal N_+(z)=-i\sqrt2\left(\frac z\pi\right)^{9/2}
\]

makes the auxiliary integral equal to one. If selected for that purpose, it is a **pushforward normalization choice**, not a derivation that an independently specified first-order measure equals an independently specified metric measure. A real positive density alone does not cancel the chosen contour's phase.

No continuum determinant is asserted. For finitely many cells one can multiply the corresponding Gaussian factors. Taking the number of cells to infinity requires a regulator, measure, and normalization/renormalization rule, including the infinitely repeated phase. The continuum auxiliary Hessian is a zero-order multiplication operator with infinite-dimensional spectral multiplicities, not merely this \(9\times9\) matrix. No finite-wall spectral boundary-value problem is being assumed or solved.

## 5. Linearized coframe, metric, and Lorentz measures

Fix a background positive coframe matrix \(E^a{}_{\mu}\), \(\mathfrak e=\det E>0\). Parameterize an infinitesimal coframe variation by

\[
\delta e^a=X^a{}_b\,\bar e^b,
\qquad X=X_S+X_A,
\qquad h_{ab}=\bar e_a{}^\mu\bar e_b{}^\nu\delta g_{\mu\nu}=X_{ab}+X_{ba}=2(X_S)_{ab}.
\]

At this order a Lorentz transformation acts as \(\delta_\lambda X=\lambda\), \(\lambda^T=-\lambda\). Symmetric coframe gauge is \(X_A=0\); it removes all three local Lorentz directions because the coframe is nondegenerate. Diffeomorphisms are not fixed here.

### 5.1 Explicit norm conventions

Use Frobenius-orthonormal coordinates for all nine components of \(X\) and all six symmetric components of \(h\). Their change of variables gives

\[
d^9X=d^6X_{S,\mathrm F}\,d^3X_{A,\mathrm F}
=2^{-6}d^6h_{\mathrm F}\,d^3X_{A,\mathrm F}.
\]

If the Lorentz measure is defined using the same Frobenius norm \(\operatorname{tr}(\lambda^T\lambda)\), dividing by its tangent orbit measure leaves \(2^{-6}d^6h_{\mathrm F}\).

If instead the SO(3) Lie algebra norm is the common convention

\[
\|\lambda\|_{\mathfrak{so}(3)}^2=\tfrac12\lambda_{ab}\lambda_{ab}
=\lambda_{12}^2+\lambda_{13}^2+\lambda_{23}^2,
\]

then the antisymmetric Frobenius coordinates are \(\sqrt2\lambda_{ij}\). Hence

\[
\boxed{\frac{d^9X}{d\lambda_{12}d\lambda_{13}d\lambda_{23}}
=2^{3/2}2^{-6}\,d^6h_{\mathrm F}
=2^{-9/2}d^6h_{\mathrm F}.}
\tag{5.1}
\]

These statements also apply with matching cell-volume factors in the three field-space norms. Different DeWitt trace weights or Haar normalizations must be declared separately.

For an explicit Faddeev–Popov convention choose \(\chi_{ij}=X_{ij}-X_{ji}\), \(i<j\). Then \(\delta_\lambda\chi_{ij}=2\lambda_{ij}\), so \(\det\mathrm{FP}=2^3=8\). The delta function contributes the inverse factor when integrating over the independent antisymmetric entries. Equivalently, the gauge \(\chi=(X_A)_{ij}\) has FP determinant one. Mixing these gauge-function normalizations while keeping the same delta function would produce a spurious factor.

### 5.2 Raw coordinate measures and a concrete non-universality example

Let \(d^6h_{\rm ind}\) mean the product over three diagonal and three independent off-diagonal entries, without \(\sqrt2\) rescaling. Each off-diagonal coframe pair obeys

\[
(X_{ij},X_{ji})=(S_{ij}+A_{ij},S_{ij}-A_{ij}),
\]

whose absolute Jacobian is two. Therefore

\[
\frac{d^9X}{d^3\lambda_{\rm ind}}=\frac18d^6h_{\rm ind}.
\]

Now \(\delta E=XE\) has Jacobian \(\mathfrak e^3\), while \(\delta g=E^ThE\) on symmetric matrices has Jacobian \(\mathfrak e^4\). The latter identity follows for diagonal \(E\) by multiplying three diagonal and three off-diagonal scale factors, and extends to general positive-determinant \(E\) by singular-value decomposition; orthogonal factors have unit absolute Jacobian. Thus

\[
\boxed{\frac{d^9(\delta E)}{d^3\lambda_{\rm ind}}
=\frac1{8\mathfrak e}\,d^6(\delta g)_{\rm ind}.}
\tag{5.2}
\]

Wolfram checked the symbolic triangular congruence determinant and a nonsymmetric coframe with \(\det E=7\), finding absolute Jacobian \(1/56\).

For the independent connection entries \(K^{12}_\mu,K^{13}_\mu,K^{23}_\mu\), the dualization and conversion from coframe to coordinate components give

\[
d^9K_{\rm coord}=\mathfrak e^3d^9C.
\tag{5.3}
\]

The finite regulated change \((e,\omega)\mapsto(e,K=\omega-\omega(e))\) is a triangular shear with unit determinant whenever the same unrestricted connection variables are used before and after the change. This statement does not calculate a continuum functional determinant or authorize changing boundary domains.

For illustration, fix a coordinate cell of volume \(\Delta\), so \(v=\Delta\mathfrak e\), use raw coordinate measures, the canonical tangent Haar measure above, and the upper-rotated contour. Combining (4.1), (5.2), and (5.3), the local metric density produced by auxiliary integration is

\[
\boxed{
\frac{i}{8\sqrt2}\left(\frac\pi{\gamma\Delta}\right)^{9/2}
\mathfrak e^{-5/2}\,d^6g_{\rm ind}.
}
\tag{5.4}
\]

This is a specified finite-cell example, not a privileged diffeomorphism-invariant continuum measure. It proves that action equality does not automatically imply equality with a flat metric-component measure. Other independently chosen field-space measures can change these factors. For example, using \(\sqrt v C\) as normalized auxiliary coordinates removes the cell-volume factor from the auxiliary Gaussian but constitutes a different stated measure convention. Defining the metric measure to be the first-order pushforward always works by definition; comparing two independently fixed measures is a further problem.

## 6. Complete hyperbolic ends: valid ordering and a counterexample

Let \(M_R\) be a geodesic cutoff exhaustion of the same metric end. Equation (2.3) cancels the derivative-contorsion flux at **every finite \(R\)**. It is therefore legitimate first to combine the completed first-order action algebraically and then to take the metric geodesic finite part and the auxiliary integral, when those operations exist in the chosen scheme:

\[
I_P^{\rm ren}=I_g^{\rm ren}+\gamma\int_Mq(C)\mathrm{vol}
\]

if, for example, the latter integral is absolutely finite. It is not legitimate to replace this ordering by separate, unregulated limits of the two individually divergent contorsion wall terms. No condition that either of those terms vanish is required for the valid combined ordering.

For an asymptotically hyperbolic end with \(\mathrm{vol}\sim e^{2r}dr\,\mathrm{vol}_{h_0}\), a simple sufficient condition is \(C\in L^2\). Uniform orthonormal-component falloff \(C=O(e^{-\alpha r})\) with \(\alpha>1\) suffices. Indeed \(|q(C)|\le2\|C\|^2\). On the Gaussian contour of section 4, the real quadratic form is positive and comparable to the squared component norm. For real indefinite \(C\), \(L^2\) is sufficient but not necessary for finiteness because algebraic cancellations can occur.

If one instead wants to discard the derivative boundary term *separately*, a stronger condition on its flux is needed. In an outward adapted frame,

\[
\Theta|_{\Sigma_R}=2(C_{12}-C_{21})\,\mathrm{vol}_{\Sigma_R}.
\]

The exact relevant condition is that its integrated flux tend to zero. A sufficient condition is \(\int_{\Sigma_R}|C_{12}-C_{21}|dA\to0\), and uniform \(C_{12}-C_{21}=o(e^{-2R})\) suffices for a compact conformal boundary. Uniform \(O(e^{-\alpha r})\) for all components with \(\alpha>2\) is a stronger convenient condition, not a necessary one. Symmetric components contribute no such flux.

**Explicit counterexample to “finite quadratic action implies vanishing boundary flux.”** Use the thermal hyperbolic solid-torus collar

\[
g=dr^2+\cosh^2r\,d\tau^2+\sinh^2r\,d\phi^2,
\quad\tau\sim\tau+\beta,\quad\phi\sim\phi+2\pi,
\]

with \(e^1=\cosh r\,d\tau\), \(e^2=\sinh r\,d\phi\), \(e^3=dr\). Set, sufficiently far out,

\[
C=e^{-3r/2}B_6,
\]

and multiply by a smooth cutoff that is zero near the solid-torus core. This extends to a smooth global contorsion field. Here \(q=e^{-3r}\), and per unit \(d\tau d\phi\),

\[
\int_R^\infty q\,\cosh r\sinh r\,dr
=\frac{e^{-R}}4-\frac{e^{-5R}}{20}<\infty,
\]

but

\[
\Theta|_{r=R}=2\sqrt2e^{-3R/2}\cosh R\sinh R\,d\tau\wedge d\phi
\sim\frac{\sqrt2}{2}e^{R/2}\,d\tau\wedge d\phi.
\]

Thus the separate boundary flux diverges even though the auxiliary quadratic action is finite. xCoba independently checks \(R=-6\), outward \(K_{\rm wall}=\tanh r+\coth r\), the finite tail, and divergent flux in these conventions. The two boundary contributions in the completed action still cancel exactly at every cutoff.

This discussion imposes no finite-wall spectral boundary-value problem. Any continuum gravitational/ghost determinant on the complete space would require its own domain, gauge fixing, renormalization, and contour analysis; none is inferred from the auxiliary matrix.

## 7. Evidence, diagnostics, and what has not been proved

The exact source, full source-containing server responses, and native results are indexed in the separate [evidence index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/evidence.md>). The computations actually performed are:

1. xTensor: contorsion curvature scalar quadratic identity and derivative contraction, both residuals zero.
2. xTensor: arbitrary-normal wall identity (2.4), residual zero without prematurely imposing normal constraints.
3. Wolfram: explicit epsilon contraction, full nine-component Hessian, orthonormal Gram matrix, spectrum/determinant, convergent Gaussian factors, deliberate divergent real Gaussian, and coordinate-measure Jacobians.
4. Sage: independent rational-polynomial epsilon contraction and wall identity; exact algebraic orthonormal basis, diagonal Hessian, determinant, and positive/negative examples. All eight checks pass.
5. xCoba: actual hyperbolic component geometry and the finite-action/nonvanishing-flux counterexample.
6. Wolfram: explicit characteristic-polynomial sign convention, Lorentz FP and orbit factors, and a non-diagonal coframe Jacobian.

Actual diagnostics are retained: the divergent Gaussian emitted `Integrate::idiv`; Sage emitted a deprecation warning for the version accessor; the first xAct run used an ambiguous unqualified `$Version` metadata label, which was identified and not treated as a kernel version. Later sources use ``System`$Version`` explicitly. No tensor residual failed. The Wolfram and Sage characteristic polynomials differ by the explicit convention \(\det(H-\lambda I)\) versus \(\det(\lambda I-H)\), not by a spectral disagreement.

**Proved:** the off-shell finite-wall split, unrestricted wall cancellation, complete local Hessian and its signature, stated finite Gaussian formulas after contour choice, stated linearized/local measure Jacobians, and the complete-end flux counterexample.

**Not proved or assumed:** a canonically normalized continuum path integral, equality of two independently fixed continuum measures, a continuum determinant or its phase, a finite-wall spectral problem, metric/ghost one-loop determinants, global gauge-volume normalization, or treatment of degenerate coframes. The task's real nondegenerate coframes and the stated normal constraints are essential to the exact comparison.
