# Independent audit: mixed-order Hessians, a common Casimir regulator, and cyclic orbital traces

**Date:** 31 October 2026.  
**Independence:** This report was derived from the audit question. No parent candidate, original research note, or other current reviewer report was read. The repository instructions were read. No CAS was needed. Further delegation was unavailable at this delegation depth.

## 1. Verdict

**The common-Casimir heat-finite-part Schur identity is valid in the stated homogeneous cyclic setting, with a canonical complete-domain selfadjoint realization.** There is a controlled route from finite principal-series matrices to both the identity and every nonidentity orbital integral. It uses the actual Harish-Chandra wave-packet theorem, not an assertion that arbitrary spectral bands are finite rank and not cyclicity of a renormalized trace.

The realization is **the closure of the formal differential Hessian**, not generally the literal operator product of three unbounded operators on its composition domain. Its domain and bounded inverse are given below.

For smooth families of marked cyclic hyperbolic structures, with loxodromic length bounded away from zero locally, and smooth geodesic boundary representatives, the resulting functional is locally smooth. The requisite source premise must be stated: a source variation must remain in that family and come with a smooth source-to-quotient/geodesic-cutoff identification. Equivariance alone does not prove a statement about arbitrary nonhomogeneous, off-shell bulk families.

**The same assertion for spectral zeta/eta regularization of the Hessian alone is false.** Often that zeta function has no initial half-plane at all. Moreover, an explicit example using only spins 0 and 1 makes the Hessian first-order elliptic and gives a nonzero difference in its zeta phase. Thus the common regulator is substantive data, not dispensable notation.

The gauge Gram identity follows. A full Faddeev–Popov cancellation does not follow from the Gram identity alone without specifying the gauge condition, quotient measure, and ghost/phase conventions.

## 2. Conventions and the functional under audit

Let
\[
E_S,E_T\longrightarrow M=\langle g\rangle\backslash\mathbb H^3,
\qquad \ell(g)=\beta>0,
\]
be finite direct sums of the integer-spin homogeneous bundles in the question. The rotation of the generator is denoted by \(\vartheta\). All Hilbert spaces are complete \(L^2\) spaces, with the positive fiber metric used for adjoints. Complexification is harmless and is used for logarithms.

Write
\[
R=R_S\oplus R_T,\quad R_s=\nabla^*\nabla+4-s(s+1),
\quad H_0=R_S A,
\]
where \(A=A^*\) is an invertible parallel normalization/signature matrix commuting with \(R_S\), and \(Q=Q^*\) is parallel, invertible, and commutes with \(R_T\). Parallel matrices may mix repeated copies of the same spin. They need not commute with \(B\). The symmetry hypothesis on the Hessian entails the stated selfadjointness of \(A\).

On smooth compactly supported sections the formal Hessian is
\[
H_{\rm form}=
\begin{pmatrix}
R_SA+B^*QB&-B^*Q\\
-QB&Q
\end{pmatrix}.
\tag{2.1}
\]
The common-central-operator hypothesis is essential: \(R_TB=BR_S\), and \(R\) is the same Casimir plus 4, not two unrelated Laplacians.

The branch is
\[
\Log_- x=\log|x|-i\pi\,\mathbf1_{x<0}.
\]
For a geodesic defining function \(x_\gamma\) associated with the marked conformal representative, define in this order
\[
\mathcal L_R(H;\gamma)
=\operatorname{FP}_{\epsilon\downarrow0}
\operatorname{FP}_{\delta\downarrow0}
\int_{x_\gamma>\delta}
\operatorname{tr}K_{e^{-\epsilon R}\Log_-H}(z,z)\,dv(z).
\tag{2.2}
\]
There is no finite-wall boundary-value problem. This is a logarithmic functional; the determinant is its exponential. In particular, equalities below are equalities of the specified logarithms, not merely equality modulo \(2\pi i\).

## 3. Complete-domain realization and a uniform spectral gap

### 3.1 Extending the intertwining relation

A natural first-order homogeneous differential operator has bounded coefficients in orthonormal frames. On the complete hyperbolic quotient,
\[
\|Bu\|\le C\|R_S^{1/2}u\|,
\tag{3.1}
\]
using the positive lower bound on \(R_S\). This follows directly from the first-order estimate in terms of \(\|\nabla u\|+\|u\|\), since the difference between \(R_S\) and the connection Laplacian is a bounded parallel potential. Thus
\[
C:=BR_S^{-1/2}:L^2(E_S)\longrightarrow L^2(E_T)
\]
has a bounded extension.

Core intertwining extends to resolvent intertwining. For example, first apply the distributional equation to \((R_S-z)^{-1}u\) for smooth \(u\) in the domain of \(B\); uniqueness of the complete \(L^2\) resolvent gives
\[
B(R_S-z)^{-1}u=(R_T-z)^{-1}Bu.
\]
Density and (3.1) extend this to \(C\). Hence \(C\) intertwines the spectral resolutions of \(R_S,R_T\). No finite-rank spectral projection is asserted.

### 3.2 The inverse is the useful object

Define the following **bounded** selfadjoint operator:
\[
S=\begin{pmatrix}
R_S^{-1/2}A^{-1}R_S^{-1/2}
&R_S^{-1/2}A^{-1}C^*\\
CA^{-1}R_S^{-1/2}
&Q^{-1}+CA^{-1}C^*
\end{pmatrix}.
\tag{3.2}
\]
In formal differential notation this is
\[
S=\begin{pmatrix}
H_0^{-1}&H_0^{-1}B^*\\
BH_0^{-1}&Q^{-1}+BH_0^{-1}B^*
\end{pmatrix},
\]
but (3.2), rather than unqualified products involving \(B^*\), specifies the bounded extensions.

To check injectivity, put \(z=R_S^{-1/2}f+C^*g\). If \(S(f,g)=0\), its first row implies \(z=0\), and its second row then gives \(Q^{-1}g=0\). Thus \(g=f=0\). A bounded selfadjoint injective operator has dense range, so
\[
H:=S^{-1},\qquad \mathcal D(H)=\operatorname{Ran}S,
\tag{3.3}
\]
is selfadjoint. Also
\[
\operatorname{spec}H\cap(-\|S\|^{-1},\|S\|^{-1})=\varnothing.
\tag{3.4}
\]
Indefiniteness of \(A,Q\) does not invalidate this argument. One should not instead appeal to a semibounded Friedrichs form when the form is indefinite.

The exact domain has the useful weak characterization
\[
\begin{split}
\mathcal D(H)=\{(h,a):\;&h\in\mathcal D(R_S^{1/2}),\ a\in L^2(E_T),\\
&w=Q(a-Bh),\quad R_SAh-B^*w\in L^2(E_S)
\text{ distributionally}\},
\end{split}
\tag{3.5}
\]
and
\[
H(h,a)=(R_SAh-B^*w,w).
\]
There is **no separate requirement** that \(h\in\mathcal D(R_S)\) or \(w\in\mathcal D(B^*)\); their distributional contributions may cancel.

The operator \(H\) strongly commutes with \(R\). On an \(R\)-spectral interval \([1,L]\), it is bounded by \(C(1+L)\). These intervals can have infinite rank. Their projections approximate any vector in the graph norm of \(H\), showing that \(\mathcal D(R_S)\oplus\mathcal D(R_T)\) is a core for \(H\). Since compactly supported smooth sections are a core for the complete Laplace-type operator \(R\), and
\[
\|H_{\rm form}u\|\le C\|(1+R)u\|,
\]
they are also a core for \(H\). Therefore (3.3) is precisely the closure of (2.1).

### 3.3 Why the literal shear composition has the wrong domain

The literal composition \(T^*\operatorname{diag}(H_0,Q)T\) usually asks for
\[
h\in\mathcal D(R_S),\qquad Q(a-Bh)\in\mathcal D(B^*).
\]
That is generally a proper subdomain of (3.5), and need not be closed.

For a geometric example, take \(E_S=\Lambda^0\), \(E_T=\Lambda^1\), \(B=d\), \(A=Q=1\). On a scalar Laplacian fiber with \(R_S=r\), \(d^*d=r-4\), and the coupled matrix is
\[
\begin{pmatrix}2r-4&-\sqrt{r-4}\\-\sqrt{r-4}&1\end{pmatrix}.
\tag{3.6}
\]
One eigenvalue grows like \(2r\); the other tends to \(1/2\). High-frequency vectors in the latter branch have a source component of order \(r^{-1/2}\) relative to the target component. Choosing target spectral data in \(L^2\) but not \(\mathcal D(R_T^{1/2})\) yields vectors in (3.5) with source in \(\mathcal D(R_S^{1/2})\) but not \(\mathcal D(R_S)\). This is the cancellation omitted by the literal product domain.

## 4. Principal-series matrices, branches, and symbol behavior

Use physical principal-series labels \((n,\lambda)\), where the minimal SO(3) spin is \(|n|\), \(n\in\mathbb Z\), \(\lambda\in\mathbb R\). On the relevant multiplicity spaces,
\[
r_n(\lambda)=\lambda^2+5-n^2,\qquad |n|\le2.
\tag{4.1}
\]
The labels \((n,\lambda)\) and \((-n,-\lambda)\) are Weyl-equivalent. The multiplicity spaces for a finite sum of the stipulated bundles are finite dimensional; the automorphic multiplicities on the quotient need not be finite.

In the unitary compact picture the K-basis is independent of \(\lambda\), and the derived first-order action is affine in \(\lambda\). Consequently \(B_{n,\lambda}\) is affine and \(H_{n,\lambda}\) is a Hermitian matrix polynomial of degree at most two. Its inverse is bounded uniformly on the real axis by (3.2), and
\[
\|H_{n,\lambda}\|\le C\langle\lambda\rangle^2,
\qquad
\|H_{n,\lambda}^{-1}\|\le C.
\tag{4.2}
\]
All finite \(n\) are included in these constants.

The lower-negative-axis branch can be implemented without choosing eigenvectors:
\[
\Log_-H=\tfrac12\log H^2-
\tfrac{i\pi}{2}\bigl(1-H(H^2)^{-1/2}\bigr).
\tag{4.3}
\]
The gap makes this smooth across crossings of eigenvalues with the same sign. Resolvent integral formulas for \(\log H^2\) and \((H^2)^{-1/2}\), followed by differentiation, give polynomial bounds in \(\lambda\) for every derivative of (4.3). The zeroth-order bound is \(O(1+\log\langle\lambda\rangle)\). This is enough for fixed-\(\epsilon\) Schwartz inversion.

There is also a precise polyhomogeneous statement at either end of the real \(\lambda\)-axis. Set \(u=1/\lambda\) and diagonalize the analytic Hermitian family \(u^2H(1/u)\) by one-parameter analytic perturbation theory. The uniform inverse bound forces each analytic eigenvalue to vanish to order at most two at \(u=0\). Thus the eigenvalue orders of \(H\) are only \(2,1,0\), and \(\Log_-H\) has expansions in inverse powers of \(\lambda\) and \(\log|\lambda|\), separately at the two ends. It is not generally the logarithm of a uniformly elliptic order-two operator.

These orders can change in a parameter family when a leading block loses rank. Thus a uniform band-by-band fixed-order symbol assertion should not be assumed. The exact trace identity below avoids that difficulty completely.

Finite-dimensional determinant and inertia identities give
\[
\begin{split}
\det H_{n,\lambda}&=\det(r_nA_n)\det Q_n,\\
n_-(H_{n,\lambda})&=n_-(A_n)+n_-(Q_n),\\
\operatorname{tr}\Log_-H_{n,\lambda}
&=d_n\log r_n+
\operatorname{tr}\Log_-A_n+
\operatorname{tr}\Log_-Q_n,
\end{split}
\tag{4.4}
\]
where \(d_n\) is the source multiplicity. The trace identity is exact with the prescribed phase. Neither matrix logarithm itself nor its diagonal blocks are shear-invariant.

## 5. The actual HC-Schwartz step

For fixed \(\epsilon>0\), put
\[
a_\epsilon(n,\lambda)
=e^{-\epsilon r_n(\lambda)}\Log_-H_{n,\lambda}.
\tag{5.1}
\]
The preceding derivative estimates show that every entry, with every \(\lambda\)-derivative, decays faster than any polynomial. There are only finitely many \(n\), and only finitely many K-types. The normalized Knapp–Stein/Weyl compatibility is inherited from the natural differential operators: the intertwiner conjugates \(B,H,R\), hence also their gapped functional calculus. Thus (5.1) is an actual finite-K Schwartz wave-packet datum, not merely a family with rapidly decaying scalar traces.

The Harish-Chandra wave-packet theorem now gives a smooth bundle convolution kernel in the Harish-Chandra Schwartz space. In particular, its left and right derivatives satisfy, for every \(N\),
\[
\|D_LD_RK_\epsilon(g)\|
\le C_{\epsilon,N,D_L,D_R}\,
\Xi(g)(1+d(o,go))^{-N}.
\tag{5.2}
\]
For \(\mathbb H^3\), \(\Xi(d)=d/\sinh d\). All seminorms in (5.2) vary smoothly in a smooth coefficient family with locally uniform invertibility of \(A,Q\). Uniformity as \(\epsilon\to0\) is not claimed here and is not needed here.

**The external theorem actually used:** Song–Tang, *Higher Orbital Integrals, Cyclic Cocycles and Noncommutative Geometry*, §4.2, Definition 4.6 and Theorem 4.7, recalls precisely the Schwartz wave-packet theorem and its adjointness to Fourier transform, with references to Wallach II, Theorems 12.7.1 and 13.4.1. The published HTML statement was inspected; the original Wallach proofs were not independently checked. This is a standard harmonic-analysis input, not a theorem proved from scratch in this report. Crucially, the polynomial derivative estimates and intertwining compatibility needed for its application have been supplied above.

### 5.1 Why the same multiplier is the complete quotient operator

A further bridge is needed; equality on the cover is not by itself a quotient spectral theorem.

Here \(\Gamma=\langle g\rangle\cong\mathbb Z\) is amenable. Følner approximation gives \(1_\Gamma\prec\lambda_\Gamma\); induction preserves weak containment, so
\[
\operatorname{Ind}_\Gamma^G1\prec
\operatorname{Ind}_\Gamma^G\lambda_\Gamma\simeq\lambda_G.
\tag{5.3}
\]
Thus the right regular representation on \(L^2(\Gamma\backslash G)\) is tempered and acts continuously on the reduced group C*-algebra, hence on the HC-Schwartz algebra. In its direct-integral decomposition the bundle corner uses the same finite K-multiplicity matrices, tensored with possibly infinite-dimensional automorphic multiplicity spaces. The inverse (3.2), the closure (3.3), and their joint functional calculus with \(R\) therefore evaluate (5.1) to
\(e^{-\epsilon R_M}\Log_-H_M\).

Equivalently, the quotient kernel is the image sum
\[
K_{\epsilon,M}(x,y)
=\sum_{k\in\mathbb Z}
K_{\epsilon,\mathbb H^3}(\widetilde x,g^k\widetilde y),
\tag{5.4}
\]
with the usual bundle identifications. It converges with all derivatives on compact sets, since the displacement grows at least \(|k|\beta-O(1)\), while (5.2) supplies exponential decay. To identify this kernel with the quotient representation, approximate the HC kernel by compactly supported K-finite kernels in the Schwartz topology. Their unfolded kernels are elementary; reduced-C*-continuity and the local bounds pass to the limit.

This argument is special to the tempered cyclic situation. A generic nonamenable quotient cannot be justified by this exact weak-containment argument without further work.

## 6. Identity and nonidentity orbital descent

Let \(D_\epsilon\) be the difference between the weighted logarithm of \(H\) and those of \(H_0\) and \(Q\), regarded in the direct-sum bundle. Equation (4.4) says that its ordinary finite multiplicity trace is zero for every \((n,\lambda)\).

For a bundle kernel, scalarize by the fiber trace. Its principal character transform is exactly the finite multiplicity trace, with the normalization fixed by the induced-bundle Plancherel formula. Therefore:

1. Plancherel inversion at the identity gives \(\operatorname{tr}D_\epsilon(e)=0\).
2. The SL(2,C) Abel/orbital inversion formula gives \(O_{g^k}(\operatorname{tr}D_\epsilon)=0\) for every \(k\ne0\).

The second assertion requires the invariant orbital transform, not pointwise vanishing of the scalarized kernel. It is particularly explicit for this group. In the convention
\(t=\operatorname{diag}(e^{u+i\theta},e^{-u-i\theta})\), the normalized orbital function
\[
F_f^T(t)=|t-t^{-1}|^2O_t(f)
\]
is the ordinary Fourier inverse on \(\mathbb R\times S^1\) of the principal character traces \(\Theta_{m,i\nu}(f)\). Physical labels are \(\ell=2u\), \(\vartheta=2\theta\), \(m=2n\), \(\nu=2\lambda\). The normalization changes with Haar measure but the zero assertion does not.

The explicit formulas were checked in Finis–Grunewald–Tirao, *The cohomology of lattices in SL(2,C)*, §5.1, immediately before equation (5.1). That passage states the compact-support orbital/Fourier formulas. Their extension to the present Schwartz kernels follows either from the HC orbital-integral continuity theorem or directly from the absolute estimates below plus Schwartz approximation. The paper's finite-covolume trace formula is **not** being applied to the infinite-volume cyclic quotient.

No cyclicity of a spatially renormalized trace has entered this argument.

### 6.1 Absolute convergence of every image orbital integral and the full cyclic sum

Use cylindrical coordinates around the axis:
\[
ds^2=d\rho^2+\cosh^2\rho\,dz^2+\sinh^2\rho\,d\phi^2,
\quad (z,\phi)\sim(z+\beta,\phi+\vartheta).
\]
For the \(k\)-th image,
\[
\cosh d_k(\rho)
=\cosh(k\beta)+b_k\sinh^2\rho,
\quad b_k=\cosh(k\beta)-\cos(k\vartheta)>0.
\tag{6.1}
\]
Since
\(\sinh d_k\,dd_k=2b_k\sinh\rho\cosh\rho\,d\rho\), (5.2) gives the concrete bound
\[
\begin{split}
\int_F\!\|K_\epsilon(x,g^kx)\|\,dv(x)
&\le\frac{C_{\epsilon,N}\pi\beta}{b_k}
\int_{|k|\beta}^{\infty}d(1+d)^{-N}\,dd\\
&\le\frac{C'_{\epsilon,N}\beta}{b_k}
(1+|k|\beta)^{2-N},\qquad N>2.
\end{split}
\tag{6.2}
\]
For \(\beta\ge\beta_0>0\), \(b_k^{-1}\le C_{\beta_0}e^{-|k|\beta}\). Thus the full nonidentity sum is absolutely integrable, locally uniformly in the loxodromic parameters. The identity term alone requires a spatial finite part.

At every fixed \(\epsilon>0\), consequently,
\[
\operatorname{Tr}^{\rm geo}_\gamma
(e^{-\epsilon R}\Log_-H)
=c_\epsilon(H)\operatorname{Vol}_{\rm ren}(M,\gamma)
+\sum_{k\ne0}\mathcal O_k(H;\epsilon),
\tag{6.3}
\]
where the nonidentity terms are ordinary, absolutely convergent integrals. Equation (4.4), Plancherel, and orbital inversion give the **exact fixed-\(\epsilon\) identity**
\[
\operatorname{Tr}^{\rm geo}_\gamma(e^{-\epsilon R}\Log_-H)
=
\operatorname{Tr}^{\rm geo}_\gamma(e^{-\epsilon R_S}\Log_-H_0)
+
\operatorname{Tr}^{\rm geo}_\gamma(e^{-\epsilon R_T}\Log_-Q).
\tag{6.4}
\]
A finite geodesic cutoff need not satisfy this identity before its finite part is taken: vanishing integrated orbital integrals is not pointwise vanishing in a truncated fundamental region.

## 7. The small-regulator finite part and source differentiation

### 7.1 The matrix difficulty disappears at trace level

After (4.4), every character trace is a finite sum of
\[
e^{-\epsilon(\lambda^2+c)}\,[d\log(\lambda^2+c)+q],
\qquad c\in\{5,4,1\}.
\tag{7.1}
\]
Here \(q\) is a constant complex logarithm/phase from \(A,Q\). The Plancherel density is a fixed quadratic polynomial in \(\lambda\). Its integrals against (7.1) have the usual power/log heat asymptotic expansion and hence a finite part. This does not require a uniform order classification of all individual eigenbands of \(H\).

For the nonidentity terms, in the Fourier convention
\(\widehat f(L)=(2\pi)^{-1}\int e^{i\lambda L}f(\lambda)d\lambda\), one has, away from \(L=0\),
\[
\widehat{\log(\lambda^2+c)}(L)
=-\frac{e^{-\sqrt c|L|}}{|L|}.
\tag{7.2}
\]
For example, differentiating in \(c\) reduces this to the elementary resolvent transform. Terms supported at \(L=0\) are irrelevant to \(L=|k|\beta>0\).

There is a useful uniform estimate that does not assume uniform HC seminorms as \(\epsilon\to0\). For every \(j\), take \(N>j+1\). The quantities
\[
\left\|\partial_\lambda^N
\left[\lambda^j e^{-\epsilon(\lambda^2+c)}\log(\lambda^2+c)\right]\right\|_{L^1(d\lambda)}
\]
are uniformly bounded for \(0<\epsilon\le1\). This follows from symbol differentiation and the scaling \(\lambda=\epsilon^{-1/2}v\) on terms where derivatives hit the Gaussian. Integration by parts therefore gives uniform rapid inverse-power bounds for every \(L\)-derivative on \(L\ge\beta_0\). Gaussian regularization converges in \(C^\infty\) on that region to (7.2). The constant term in (7.1) has the analogous Gaussian transform and tends to zero there.

The factor \(b_k^{-1}=O(e^{-|k|\beta})\) makes these bounds summable even after any finite number of \(\beta,\vartheta\) derivatives, which introduce only polynomial powers of \(k\). Thus the image sum has a genuine smooth \(\epsilon\downarrow0\) limit, locally in \(\beta>0\). Its finite part is this limit.

### 7.2 What a smooth source family means

For a fixed quotient, changing the boundary conformal representative changes only the geodesic spatial finite part of the identity term; the absolutely integrable nonidentity terms are unaffected by the exhaustion. The renormalized hyperbolic volume is smooth under smooth positive boundary Weyl factors. This follows from the smoothly parameter-dependent geodesic defining function and its volume expansion; its finite coefficients depend smoothly on the representative.

If the marked source also changes conformal moduli, one works locally with smooth parameters
\[
\gamma\longmapsto(\beta(\gamma),\vartheta(\gamma),\omega(\gamma),\text{marking/pullback}),
\qquad \beta(\gamma)\ge\beta_0>0.
\tag{7.3}
\]
Smooth uniformization and a fixed filling/marking give the usual such local parametrization. Equations (6.3), (7.1), and (7.2) then prove local smoothness, and permit source differentiation of the final finite-part functional. One can differentiate the already convergent orbital Fourier series rather than incorrectly trying to dominate arbitrary differentiated, conjugated pointwise kernels near the conformal boundary.

**Precise scope/missing premise:** If “source variation” is not specified to induce a smooth family (7.3), or is allowed to change the operators to nonhomogeneous bulk operators, the local-smooth-source assertion is not contained in the audit hypotheses. The required premise is that source-to-geometry/operator/cutoff map. It is not legitimate to infer it merely from finite-dimensional determinant algebra. No additional arbitrary trace-cyclicity or finite-rank-band premise is needed in the homogeneous family.

### 7.3 Exact determinant consequences

Taking the prescribed finite parts of (6.4),
\[
\boxed{\mathcal L_R(H)=\mathcal L_{R_S}(H_0)+\mathcal L_{R_T}(Q).}
\tag{7.4}
\]
In this three-dimensional, complete, gapped homogeneous setting, parallel constants have zero logarithmic contribution in this scheme:
\[
\operatorname{FP}_{\epsilon\downarrow0}
\operatorname{Tr}^{\rm geo}_\gamma(e^{-\epsilon R}P)=0
\tag{7.5}
\]
for a parallel constant endomorphism \(P\) respecting the spin splitting. Indeed, the identity heat expansion contains powers \(\epsilon^{j-3/2}\), no constant term, and nonidentity heat terms tend to zero. Applying this to \(\Log_-A\) and \(\Log_-Q\) gives
\[
\boxed{\mathcal L_R(H)=\mathcal L_{R_S}(R_S).}
\tag{7.6}
\]
In particular, this regulator assigns zero total phase to the constant signature contributions, even though their unregularized negative subspaces are infinite dimensional.

For the positive Laplace-type operator \(R_S\), the geodesically renormalized heat zeta function is regular at zero with \(\zeta_{R_S}(0)=0\). Mellin inversion of \(-\zeta'_{R_S}\) gives
\[
\mathcal L_{R_S}(R_S)=-\zeta'_{R_S}(0).
\tag{7.7}
\]
This is a comparison with spectral zeta of the **positive second-order block**, not an assertion about spectral zeta of \(H\) itself.

## 8. Gauge identities: what is and is not determined

Let \(\mathfrak g\) be the proper gauge-parameter Hilbert space and
\[
G_0^*G_0=R_g=R_1\oplus R_1\ge4.
\]
Then
\[
U=G_0R_g^{-1/2}
\]
is an isometry onto a closed range, and
\[
P_{\rm orb}=G_0R_g^{-1}G_0^*=UU^*,
\qquad
\mathcal H=\ker G_0^*\oplus\operatorname{Ran}G_0.
\tag{8.1}
\]
There is no residual \(L^2\) gauge kernel under this hypothesis. Equivariance makes these splittings compatible with the same Casimir regulator.

The exact Gram/Jacobian statements are
\[
\mathcal L_{R_g}(G_0^*G_0)=2\mathcal L_{R_1}(R_1),
\qquad
\log J_R(G_0)=\tfrac12\mathcal L_{R_g}(R_g)
=\mathcal L_{R_1}(R_1),
\tag{8.2}
\]
when the Jacobian is defined using the gauge-parameter \(L^2\) measure. If instead one divides by the induced orthonormal orbit measure, this Jacobian is incorporated in the orbit volume; these are different bookkeeping conventions.

For example, with gauge condition \(F=G_0^*\), the parameterization \(x=x_\perp+G_0\xi\) has Jacobian \((\det R_g)^{1/2}\); the gauge delta-function contributes \((\det R_g)^{-1}\), and the usual FP factor contributes \(\det R_g\). The leftover depends on which orbit measure was divided out. For a general \(F\), one must specify admissibility/invertibility of \(FG_0\), phase convention, and the actual gauge-invariant quadratic form. The Gram identity alone does not provide them. In particular, the invertible Hessian (3.3) cannot simultaneously be an ungaugefixed Hessian satisfying \(HG_0=0\) for a nonzero \(G_0\).

Admissible equivariant paired operators whose finite-multiplicity supertraces cancel can be descended by the same HC/orbital argument. That is a justified route to an explicitly specified gauge cancellation, not a license to assume all desired ghost factors.

## 9. Counterexamples to replacing the common regulator by “zeta of H”

### 9.1 The elementary obstruction: no zeta half-plane

Already \(B=0\), \(Q=\pm I\) gives
\[
H=R_SA\oplus(\pm I).
\]
On the infinite-dimensional auxiliary space, \(|H|^{-z}=I\) for every \(z\). There is no half-plane in which its diagonal kernel becomes an ordinary smoothing trace density. The spatial geodesic finite part does not repair a delta-function singularity on the diagonal. Thus conventional spectral zeta/eta of \(H\) alone has not even been defined.

Example (3.6) shows that this is not just a decoupled auxiliary-field artifact: a nonzero natural derivative coupling can leave an infinite high-frequency branch tending to a finite nonzero constant. The heat operator of \(H\), or of \(H^2\), is then not smoothing on that branch.

### 9.2 A stronger counterexample when H is genuinely elliptic

Use only the allowed spins 0 and 1:
\[
E_+=\Lambda^{\rm even}=\Lambda^0\oplus\Lambda^2,
\quad E_-=\Lambda^{\rm odd}=\Lambda^1\oplus\Lambda^3,
\]
\[
R_\pm=\Delta_{\rm Hodge}+4,
\quad B=(d+\delta)|_{E_+\to E_-},
\quad A=I,\quad Q=-I.
\]
On curvature \(-1\), \(R_\pm\) are exactly the stated spin-0 and spin-1 operators: for one-forms \(\Delta_1=\nabla^*\nabla-2\), hence \(\Delta_1+4=R_1\). Since \(B^*B=\Delta_+\), the Hessian becomes
\[
H=\begin{pmatrix}4&B^*\\B&-1\end{pmatrix}.
\tag{9.1}
\]
Its principal symbol is invertible for nonzero covectors. Thus this example is a gapped selfadjoint **first-order elliptic** operator; ordinary spectral-zeta/eta regularization, with the same spatial geodesic finite part, is available.

Set
\[
a=\tfrac32,\quad D=(\Delta_++\tfrac{25}{4})^{1/2}.
\]
Its paired eigenvalues are \(a+D\) and \(a-D\), so \(D>a\) and \(D^2-a^2=R_+\). With the prescribed logarithmic branch,
\[
\log\det_{\zeta,-}H
=\log\det_\zeta R_+-i\pi\,\zeta_{D-a}(0).
\tag{9.2}
\]
The real-part comparison has also been evaluated, rather than assumed. In a common initial half-plane, the convergent binomial expansions for \(a/D<1\) give
\[
\begin{split}
\zeta_{D+a}(z)+\zeta_{D-a}(z)
&=2\sum_{k\ge0}\frac{(z)_{2k}}{(2k)!}a^{2k}\zeta_D(z+2k),\\
\zeta_{R_+}(z)
&=\sum_{k\ge0}\frac{(z)_k}{k!}a^{2k}\zeta_D(2z+2k).
\end{split}
\]
Here \((z)_k\) is the rising factorial. The positive poles of \(\zeta_D(s)\) are at 3 and 1, so it is regular at every positive even integer. Continuing to zero and differentiating both lines therefore gives the same expression
\[
2\zeta_D'(0)+\sum_{k\ge1}\frac{a^{2k}}{k}\zeta_D(2k).
\]
The tail converges geometrically since \(\inf D\ge5/2>a\). This proves the real-part equality in (9.2); the phase obstruction would already suffice without it.

The phase is not zero. Write \(V=\operatorname{Vol}_{\rm ren}(M,\gamma)\). For \(L=D^2=\Delta_++25/4\), the local heat coefficients are
\[
\operatorname{Tr}^{\rm geo}e^{-tL}
\sim\frac{V}{(4\pi t)^{3/2}}(4-23t+\cdots).
\tag{9.3}
\]
To check the coefficient: scalar forms contribute \(-1\) to the unshifted \(a_2\), two-forms contribute \(+3\), giving \(2\); adding \(25/4\) on rank four changes this to \(2-25=-23\). Nonidentity terms do not contribute to these local residues.

Consequently
\[
\operatorname{Res}_{s=3}\zeta_D(s)=\frac{2V}{\pi^2},
\qquad
\operatorname{Res}_{s=1}\zeta_D(s)=-\frac{23V}{4\pi^2},
\qquad \zeta_D(0)=0.
\]
The odd-index binomial terms give
\[
\zeta_{D-a}(0)
=a\operatorname{Res}_{s=1}\zeta_D(s)
+\frac{a^3}{3}\operatorname{Res}_{s=3}\zeta_D(s)
=-\frac{51V}{8\pi^2}.
\tag{9.4}
\]
Thus
\[
\boxed{
\log\det_{\zeta,-}H-\mathcal L_R(H)
=\frac{51i}{8\pi}\,V.
}
\tag{9.5}
\]
Equivalently, the spectral eta invariant is \(\eta_H(0)=51V/(4\pi^2)\), whereas the common-\(R\) finite-part negative-count contribution is zero.

This is genuinely nonzero on the thermal quotient. For the flat boundary representative in the cylindrical coordinates above, \(x=2e^{-\rho}\) is geodesic and direct volume integration gives \(V=-\pi\beta/2\). The difference (9.5) is then \(-51i\beta/16\), generically nonzero even after exponentiation. No thermal determinant product has been recalculated here.

The usual formal formula
\[
\log\det_{\zeta,-}H
=\tfrac12\log\det_\zeta H^2
-\tfrac{i\pi}{2}\bigl(\zeta_{H^2}(0)-\eta_H(0)\bigr)
\]
therefore describes a different regularization when it exists. It cannot be substituted into (2.2) without proving a regulator-comparison theorem and retaining its local terms.

## 10. Evidence status and exact limitations

**Analytically established here:** bounded inverse and selfadjoint closure; explicit weak domain; gap; finite-matrix determinant and inertia identity; polynomial derivative bounds needed for fixed-\(\epsilon\) wave packets; cyclic image absolute-integral estimate; smooth, uniformly summable orbital Fourier limit; the common-regulator Schur identity; gauge Gram/Jacobian statement; and both counterexamples to identifying the answer with spectral zeta/eta of \(H\) alone.

**Standard theorems used, not reproved:** complete Laplace-type core/selfadjointness facts; one-parameter analytic Hermitian perturbation theory; HC wave-packet/Plancherel and orbital Fourier inversion; weak containment under induction; smooth geodesic compactification/uniformization for the specified local source family. Their relevant hypotheses have been stated, rather than replaced by an assumed renormalized-trace cyclicity.

**Not established and not implied:** arbitrary off-shell/nonhomogeneous source dependence; uniform control through \(\beta\to0\) degeneration; a finite-wall determinant/BVP equivalence; an arbitrary unspecified FP ghost cancellation; or equality with a determinant regularized solely by \(H\).

## Sources actually consulted

Fetch date, exact URLs, rendered snapshot metadata, and narrowly used excerpts are preserved in [source excerpts](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-mixed-order-hc-20261031-d63e5774/source-excerpts.md>). No PDF visual checks or direct reading of Wallach are claimed.

1. Yanli Song and Xiang Tang, *Higher Orbital Integrals, Cyclic Cocycles and Noncommutative Geometry*, Forum of Mathematics, Sigma 13 (2025), e37, especially §4.2, Definition 4.6 and Theorem 4.7. [Published HTML](https://www.cambridge.org/core/journals/forum-of-mathematics-sigma/article/higher-orbital-integrals-cyclic-cocycles-and-noncommutative-geometry/9C8AFF9E5D5F190859EC8380313B1D8B). The HTML theorem wording and its cited Wallach theorem numbers were inspected. Its displayed formulas were not relied upon where the fetched HTML omitted mathematics. The underlying Wallach book was not read during this audit.
2. Tobias Finis, Fritz Grunewald and Paulo Tirao, *The cohomology of lattices in SL(2,C)*, arXiv:0808.1204, §5.1, the orbital Fourier formulas preceding (5.1). [ar5iv HTML](https://ar5iv.labs.arxiv.org/html/0808.1204). These formulas and their parameter conventions were inspected. Only the group-level orbital/Plancherel discussion is used; not the finite-covolume quotient trace formula.

The other analytic computations, including the de Rham phase counterexample, were derived in this audit. They were not inferred from either source or from another review.
