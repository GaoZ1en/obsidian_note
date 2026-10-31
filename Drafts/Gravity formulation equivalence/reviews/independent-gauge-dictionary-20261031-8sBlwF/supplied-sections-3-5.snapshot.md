## 3. The field and proper-ghost maps

At a torsion-free flat background write

\[
\delta e^a=\bigl(\tfrac12h^a{}_b+\epsilon^a{}_{bc}r^c\bigr)e^b,
\quad
\delta\omega^a=\mathcal B(h)^a+D_\omega r^a+k^a,
\quad
\mathcal B(h)_\mu{}^a=\tfrac12\epsilon^{abc}\nabla_bh_{\mu c}.
\tag{3.1}
\]

Here h=delta g, r is the frame rotation and k is the linearized independent contorsion. The inverse obtains h,r algebraically from delta e, then subtracts the displayed torsion-free variation from delta omega. It is an invertible differential map on smooth fields, not a zeroth-order L2 isomorphism.

For alpha=rho+i tau, bar alpha=rho-i tau, take tau=i_xi e. The CS variations are

\[
\delta e=D_\omega\tau+[e,\rho],\qquad
\delta\omega=D_\omega\rho-[e,\tau].
\]

At the flat background they become

\[
\boxed{\delta h=2\nabla_{(\mu}\xi_{\nu)},\quad
 \delta r=\rho-\tfrac12\operatorname{curl}\xi,\quad \delta k=0.}
\tag{3.2}
\]

The covariant rotation parameter rho is related to the parameter of an ordinary Lie derivative by rho=i_xi omega+lambda_L. The exact nonlinear Cartan formulas include i_xi T and i_xi F; those terms vanish at this background, not on arbitrary off-shell fields. A nonlinear BV/measure theorem would have to retain them.

Choose the adapted frame gauge r=0 and de Donder condition

\[
\mathcal F_\mu(h)=\nabla^\nu h_{\mu\nu}-\tfrac12\nabla_\mu h.
\]

With O1=nabla* nabla+2 and rows (r,F), columns (rho,xi), the FP matrix is

\[
M_{\rm ad}=
\begin{pmatrix}1&-\tfrac12\operatorname{curl}\\0&-O_1\end{pmatrix}.
\tag{3.3}
\]

One may use -F to fix a positive real gauge orientation. The frame factor is algebraic; the vector determinant is the metric proper ghost. The shifted rotation ghost eta=rho-curl(xi)/2 is a derivative shear. It has determinant one in each compatible finite multiplicity space; that statement alone says nothing about its whole-L2 boundedness.

For Sobolev order s, the field map is bounded with bounded inverse between the mixed spaces

\[
H^{s+1}_{\delta e}\oplus H^s_{\delta\omega}
 \longleftrightarrow
 H^{s+1}_{h}\oplus H^{s+1}_{r}\oplus H^s_k.
\tag{3.4}
\]

The adapted section uses xi in H^{s+2} and rho in H^{s+1}. The inverse of O1 and the first-order curl make it a controlled section on these spaces. The complete-manifold ghosts have no L2 zero mode; boundary source diffeomorphisms/PBH vectors are outside this proper domain. This is a linearized proper relation in one background sector, not the entire finite gauge group.

**Two strict obstructions.** A compactly supported transverse high-frequency h_N has ||h_N||_2=O(1) but ||B(h_N)||_2 of order N. Likewise curl makes the rotation-ghost shear unbounded on L2. More strongly, take delta e=[e,r] with r in L2 but not H1, and delta omega=0. An admissible H1 CS ghost reaching r'=0 and F'=0 would have O1 xi=0, hence xi=0 and rho=-r, impossible in H1. Thus the adapted gauge is not a global section of the entire L2 field quotient. Finite spectral-band statements cannot be relabeled as that false theorem.

### 3.1 What measure is being compared

Use the background L2 norms on coframe and connection fluctuations and the invariant SO(3) gauge norm. In orthonormal coframe coordinates, ||delta e||^2=||h||_F^2/4+2||r||^2. The coframe/Lorentz quotient density is therefore 2^(-9/2) d^6h_F when the Lorentz norm is (1/2)lambda_ab lambda_ab, or 2^(-6)d^6h_F if both antisymmetric coordinates use Frobenius normalization. These are specified constant factors, not an unexplained cancellation. The conversion to the metric trace norm ||psi||^2/6 after h_trace=i psi is another constant spin-projector factor. The shift by B(h)+D r has triangular finite-fiber Jacobian one. Section 6 regulates all such factors in the same spin spaces.

This conclusion would fail for arbitrary coordinate products. For example, writing E=(e^a_mu) and efrak=det E, independent raw coordinate-cell measures give

\[
\frac{d^9(\delta E)}{d^3\lambda_{\rm ind}}
 =\frac{d^6(\delta g)_{\rm ind}}{8\,\mathrm{efrak}},
\qquad d^9K_{\rm coord}=\mathrm{efrak}^3d^9U.
\]

Including (2.6) then leaves a factor proportional to efrak^(-5/2). This finite-cell counterexample is not a preferred covariant continuum measure, but excludes universal measure equality from the classical field map.

## 4. Different meanings of CS Lorenz gauge

Let G0 be the real geometric gauge generator (rho,tau) to (delta omega,delta e), with the L2 Hermitian norm inherited from delta A=delta omega+i delta e. Covariant constancy of e makes the cross terms cancel, and

\[
G_0^\dagger G_0=O_1\oplus O_1.
\tag{4.1}
\]

Consequently the genuine Hermitian Lorenz gauge has an invertible proper FP operator. It is not the complex-bilinear expression

\[
-D_A^\mu D_{A\mu}=\Delta_{H,1}-2i\operatorname{curl}.
\tag{4.2}
\]

The latter has no bounded inverse on the complete thermal geometry. A normalized escaping family f_(R,L)(r) dx, with f=L^(-1/2)chi((r-R)/L) and R,L tending to infinity, has residual tending to zero. Explicitly delta(f dx)=0, curl(f dx)=f' coth(r)dt and Delta_H(f dx)=[-f''+(coth r-tanh r)f']dx. This is a spectral/domain obstruction, not a finite nonzero ghost zero mode.

For a finite real field space V, injective G0:W->V and any real linear gauge H with HG0 invertible, the oriented FP identity is

\[
\int_V da\,\delta(Ha)\det(HG_0)e^{-I(a)}
 =\sqrt{\det(G_0^\dagger G_0)}
   \int_{\ker G_0^\dagger}dx\,e^{-I(x)}.
\tag{4.3}
\]

Use absolute determinants for unoriented real delta functions, or fix the common orientation explicitly. Proof: use orthogonal coordinates a=x+G0 w, whose volume Jacobian is sqrt(det G0^dagger G0), then integrate w. The quadratic action is constant along gauge fibers. Both gauges must lift the same quotient Gaussian cycle after complex continuation. Equation (4.3) applies to the adapted and Hermitian gauges in a common representation fiber. Its continuum use is through §6, not a nonexistent bounded L2 change of section. A normalized Gaussian gauge average/Nakanishi auxiliary replaces the hard delta without changing (4.3); its constant spin-one normalization must use the same regulator.

## 5. A common Casimir and the actual closed Hessian

For spin s=0,1,2 define

\[
\mathcal R_s=\nabla^*\nabla+4-s(s+1).
\tag{5.1}
\]

This is the same central G-Casimir plus 4 on the corresponding homogeneous bundles of H3. It gives R0=O0, R1=O1 and R2=O2 of the metric Gaussian. All have the established complete-manifold closures and positive gaps. The connection/contorsion bundle contains **all three** spins, not only its tracefree part. On a general two-tensor,

\[
\mathcal R_K K=-\nabla^2K-2K^T+2g\operatorname{tr}_gK;
\tag{5.2}
\]

its restriction to symmetric tensors is R_sym. Naturality, or direct constant-curvature commutation, gives

\[
\mathcal R_K\mathcal B=\mathcal B\mathcal R_{\rm sym},\quad
\mathcal R_K\nabla=\nabla\mathcal R_1,\quad
\mathcal R_{\rm sym}\mathcal L=\mathcal L\mathcal R_1.
\tag{5.3}
\]

Curl, trace and parallel spin projections obey the corresponding relations. These are full differential identities; the parent checked their arbitrary linear jets in Poincare coordinates, not just selected Fourier modes.

The bounded-geometry first-order estimate makes B R_sym^(-1/2) bounded. Core intertwining extends, by resolvents/functional calculus, to this bounded transform. It does not turn B itself into an L2-bounded operator. The same reasoning applies to the other differential maps and gives controlled maps on finite common spectral bands. Such bands on the complete noncompact quotient are not finite rank.

After fixing the algebraic frame and adding the reference de Donder gauge average, the formal first-order Hessian has block form

\[
H=\begin{pmatrix}H_0+B^\dagger Q B&-B^\dagger Q\\-QB&Q\end{pmatrix},
\qquad H_0=A_0\mathcal R_{\rm sym},
\tag{5.4}
\]

where A0 is a constant invertible parallel normalization/sign matrix: positive on ST and negative on the metric trace before its rotation. B is the connection variation, with the normalization changes understood. Equation (2.3), not a guessed spectral determinant, establishes this Schur complement.

There is a precise closure. The block matrix

\[
S=\begin{pmatrix}
H_0^{-1}&H_0^{-1}B^\dagger\\
BH_0^{-1}&Q^{-1}+BH_0^{-1}B^\dagger
\end{pmatrix}
\tag{5.5}
\]

is bounded selfadjoint on L2 direct sum L2; interpret the products through B R^(-1/2). It is injective with dense range, so H=S^(-1), domain Ran S, is selfadjoint with a uniform gap at zero. It is the closure of the displayed formal operator on compactly supported smooth direct-sum fields. To see the core statement, first extend the differential graph estimate ||Hf||<=c||Rf|| to Dom R using complete-manifold elliptic density. Common R spectral bands approximate every vector in Dom H in its H graph norm, because H and R commute; within a band Dom R contains that vector. Approximate it next by compactly supported smooth fields in the R graph norm. This two-step approximation proves the stated core without identifying the domain with H2 on each component. In particular, literal composition T^dagger diag(H0,Q)T with T=(1,0;-B,1) may impose an unnecessarily small domain. A domain description retains u in H1, z=Q(w-Bu) in L2 and H0 u-B^dagger z in L2 distributionally; individual uncancelled second derivatives need not be in L2.

On smooth compactly supported tests, (5.5) also supplies the explicit normalized Gaussian Wick map. Take the metric Gaussian with its imaginary trace and the auxiliary Gaussian with (2.6), then apply (u,k)->(u,w=Bu+k). This differential map is well-defined on distributions. Its holomorphic covariance is exactly S. Normalized Gaussian data alone do not fix the source-dependent partition-function normalization; that is the next step.

