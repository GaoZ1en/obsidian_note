# Geometric Chern–Simons Gaussian map, domains, and regulator

## Result and scope

**There is an explicit Gaussian comparison in a specified common-Casimir prescription. There is no regulator-free inference of quantum equivalence.** The substantive ingredients are an off-shell auxiliary-field split with exact wall cancellation, an actual proper-ghost dictionary, controlled mixed Sobolev maps, and a regulator that respects their common homogeneous Casimir. A derivative shear is not a bounded L2 change of variables, and a real Euclidean auxiliary Gaussian does not converge.

On the marked complete thermal hyperbolic filling and local source neighborhood of the [source-dependent metric calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/13 Source-dependent thermal AdS one-loop Ward comparison.md>), the common prescription defined in §6 gives

\[
\boxed{F_{\mathrm{gCS,CC}}^{(0+1)}[\gamma]
 =F_{\mathrm{metric,AC}}^{(0+1)}[\gamma]
 =-\frac{C+13}{6\pi}V_{\rm ren}[\gamma]+\log|P(q_\gamma)|^2.}
\tag{0.1}
\]

Here ell=1, C=3/(2G)=6k, k=1/(4G), F=log Z, and P(q)=product_(n>=2)(1-q^n)^(-1). A common source-independent normalization is suppressed. CC is a definition of a geometric first-order Gaussian quantization, not a synonym for every spectral-zeta/eta Chern–Simons prescription. The scalar source functional, hence its metric contacts and modulus response, agrees in this prescription. Neither a nonlinear orbit measure nor a completed quantum Hilbert-space map follows.

**Proof levels.** The off-shell wall/auxiliary identities, finite Gaussian and FP identities, local differential intertwining and explicit domain/cutoff counterexamples are proved directly. The continuum CC comparison uses the complete-manifold elliptic results and explicitly stated homogeneous Plancherel/Harish-Chandra Schwartz/orbital inversion inputs in §6. It is not obtained by assuming cyclicity of a spatial finite-part trace. The independent investigations and precise computational coverage are recorded in §8.

## 1. Euclidean continuation is part of the data

Retain the Lorentzian CPS convention Omega=delta Theta, i_XH Omega=-delta H of the [authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>). The present calculation is a Euclidean stationary-phase problem with an additional contour choice. It does not replace the real Lorentzian pair by two independently integrated real Euclidean SL(2,R) connections.

Use Euclidean internal metric delta_ab, orientation epsilon_123=1, and anti-Hermitian generators

\[
T_a=-\frac i2\sigma_a,\quad [T_a,T_b]=\epsilon_{ab}{}^cT_c,
\quad\operatorname{tr}(T_aT_b)=-\frac12\delta_{ab},\quad
\operatorname{tr}(T_aT_bT_c)=-\frac14\epsilon_{abc}.
\]

For an oriented nondegenerate coframe and an SO(3) connection set

\[
\omega^{ab}=-\epsilon^{ab}{}_c\omega^c,\quad
A=\omega+ie,\quad\bar A=\omega-ie,\quad
R^a=d\omega^a+\tfrac12\epsilon^a{}_{bc}\omega^b\wedge\omega^c.
\tag{1.1}
\]

At a real geometric background bar A=-A^dagger. Torsion vanishes and Ric=-2g precisely when both connections are flat. Their two Gaussian variations are tied by the geometric contour, not assigned independent compact-CS real cycles.

A convention check against the Lorentzian basis in the [action comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/02 Boundary and corner calculation.md#L29-L54>) is useful. With internal labels 0,1,2 choose T_0=J_0, T_1=iJ_1, T_2=iJ_2; these have the same Euclidean trace and bracket as the basis above up to a fixed rotation. Under e_L^0=-i e_E^0, e_L^{1,2}=e_E^{1,2}, omega_L^0=omega_E^0 and omega_L^{1,2}=i omega_E^{1,2}, the matrices obey e_L=-i e_E and omega_L=omega_E. Thus A_L continues to bar A_E, the barred factor to A_E, and I_E=-i S_L has the coefficient below. This explicit interchange removes a potential Euclidean sign ambiguity.

Write a=1/(16pi G), reserving gamma for the boundary metric. The complete first-order action at a smooth closed outer wall is

\[
\begin{aligned}
I_{P,\rm bulk}&=-a\int\epsilon_{abc}
 (e^a\wedge R^{bc}+\tfrac13e^a\wedge e^b\wedge e^c),\\
I_{P,\rm wall}&=-2a\int\epsilon_{abc}n^ae^b\wedge D_\omega n^c
                  +2a\int\epsilon_{\partial M},
\end{aligned}\tag{1.2}
\]

where n is outward, n.n=1 and the pullback of n.e is zero. Its torsion-free restriction is the metric Einstein/GHY/area-counterterm action, with outward K tending to 2. Thermal time is periodic: there are no temporal endpoints or joints in this calculation.

For cs(A)=tr(A dA+(2/3)A^3), direct off-shell algebra gives

\[
\boxed{\frac{ik}{4\pi}\bigl[\operatorname{cs}(A)-\operatorname{cs}(\bar A)\bigr]
 =L_P+dB_E,\qquad B_E=a e_a\wedge\omega^a.}
\tag{1.3}
\]

Indeed the left side is 2a e_a R^a-(a/3)epsilon_abc e^a e^b e^c-a d(omega_a e^a). The Euclidean dual curvature sign differs from the Lorentzian internal-metric identity. Define the geometric CS wall density by l_gCS=l_P-B_E. Then the *complete* actions agree off shell in the chosen common bundle trivialization. An unrelated holomorphic boundary polarization or independent global transition/framing phase is not being identified with (1.2).

## 2. Auxiliary elimination with the wall retained

Put omega^{ab}=omega(e)^{ab}+K^{ab}. It is convenient here to use

\[
K^{ab}=\epsilon^{ab}{}_c C^c{}_d e^d.
\tag{2.1}
\]

This C is minus the dual contorsion in the convention (1.1); it is a 3 by 3 tensor and is unrelated to the reference central coefficient C in (0.1). In formulas involving both, write C_aux for this tensor. Define Theta=epsilon_abc e^a wedge K^{bc}. Since D_(omega(e)) e=0,

\[
\epsilon_{abc}e^a\wedge D K^{bc}=-d\Theta,
\qquad
\Theta|_{\partial M}
 =2\epsilon_{abc}n^ae^b\wedge K^c{}_d n^d.
\tag{2.2}
\]

The second identity holds for arbitrary K under the stated normal constraints. The bulk derivative contributes +a integral Theta and the connection-dependent wall term contributes its negative. Thus, before any radial limit,

\[
\boxed{I_P[e,\omega]=I_g[g(e)]+a\int\sqrt g\,
 \bigl[(\operatorname{tr}C_{\rm aux})^2-\operatorname{tr}(C_{\rm aux}^2)\bigr].}
\tag{2.3}
\]

No torsion boundary restriction, connection boundary equation, or discarded wall term is needed for this completed identity. One must combine the two terms at the same cutoff, not assume that each separately tends to zero.

With the invariant norm ||C_aux||^2=tr(C_aux^T C_aux), decompose it into trace, symmetric-traceless and antisymmetric parts,

\[
C_{\rm aux}=\frac t{\sqrt3}1+s+b,\qquad
q(C_{\rm aux})=2t^2-\|s\|^2+\|b\|^2.
\tag{2.4}
\]

The nine-dimensional Hessian Q of a q, in orthonormal coordinates, is

\[
Q=2a\bigl(2\Pi_0-\Pi_2+\Pi_1\bigr),\quad
\det Q=-2^{10}a^9,\quad (n_+,n_-,n_0)=(4,5,0).
\tag{2.5}
\]

Thus a real Euclidean auxiliary integral diverges. Choose t and the three antisymmetric coordinates real, and rotate each of the five symmetric-traceless coordinates by s_A=+i y_A with a fixed orientation. For a cell of physical volume v, z=av, its bare integral is

\[
\int_{\mathcal C_K}d^9C_{\rm aux}\,e^{-zq}
 =\frac{i\pi^{9/2}}{\sqrt2\,z^{9/2}},
\qquad
\int_{\mathcal C_K}\prod\frac{dC_A}{\sqrt{2\pi}}e^{-zq}
 =\frac{i}{32z^{9/2}}.
\tag{2.6}
\]

This is an extra cycle prescription, not a deformation of an initially convergent real integral. Its infinite product and phase still require a regulator. We do not set (2.6) to one by definition; §6 evaluates its contribution for independent orthonormal L2 measures.

**A boundary counterexample.** On the complete thermal metric dr^2+cosh^2(r)dt^2+sinh^2(r)dx^2, take C_aux=e^(-3r/2)(E12-E21)/sqrt(2), with a smooth core cutoff and the third frame direction outward. Its quadratic radial tail is finite, proportional to e^(-R)/4-e^(-5R)/20. Yet integral Theta grows as e^(R/2). Therefore K in L2 does not justify dropping the contorsion wall flux. Equation (2.2) cancels it exactly at every cutoff. A radial trace cutoff remains a trace regulator, not a finite-wall spectral boundary-value problem.

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
\qquad d^9K_{\rm coord}=\mathrm{efrak}^3d^9C_{\rm aux}.
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

is bounded selfadjoint on L2 direct sum L2; interpret the products through B R^(-1/2). It is injective with dense range, so H=S^(-1), domain Ran S, is selfadjoint with a uniform gap at zero. It is the closure of the displayed formal operator on the appropriate common core. In particular, literal composition T^dagger diag(H0,Q)T with T=(1,0;-B,1) may impose an unnecessarily small domain. A domain description retains u in H1, z=Q(w-Bu) in L2 and H0 u-B^dagger z in L2 distributionally; individual uncancelled second derivatives need not be in L2.

On smooth compactly supported tests, (5.5) also supplies the explicit normalized Gaussian Wick map. Take the metric Gaussian with its imaginary trace and the auxiliary Gaussian with (2.6), then apply (u,k)->(u,w=Bu+k). This differential map is well-defined on distributions. Its holomorphic covariance is exactly S. Normalized Gaussian data alone do not fix the source-dependent partition-function normalization; that is the next step.

## 6. The common-Casimir prescription and its proof

### 6.1 Definition, branches, and finite fibers

For any Hermitian Hessian block in the geometric real variables use

\[
\operatorname{Log}_{-}H=\log|H|-i\pi\Pi_-(H).
\tag{6.1}
\]

The negative directions are rotated through +i with the transported orientation. This branch is holomorphic off a cut along the positive imaginary axis; the real spectrum has no zero. For the scalar logarithmic test kernel define

\[
\log\det_{\rm CC}H
 :=\operatorname{FP}_{\epsilon\downarrow0}
 \operatorname{Tr}_{R,\gamma}
 \bigl(e^{-\epsilon\mathcal R}\operatorname{Log}_{-}H\bigr).
\tag{6.2}
\]

Spatial geodesic finite part is taken first. The same R is used for fields, Lorentz/diffeomorphism ghosts, constant gauge-average factors and contour counts, on **each** spin component. Measures are the independent orthonormal L2 measures specified above, not an auxiliary normalization chosen to make its integral one. Equation (6.2) is not the spectral zeta function of H alone.

In a principal-series representation pi_(lambda,m), each spin-s bundle has multiplicity d_s(m)=1_(|m|<=s). A finite direct sum therefore has a finite multiplicity matrix even though the representation itself and the quotient spectrum are infinite dimensional. R acts on it by

\[
r(\lambda,m)=\lambda^2+5-m^2>0.
\]

The derivative shear is a finite triangular matrix with determinant one in that multiplicity space. Hermitian congruence gives both determinant modulus and inertia. Thus

\[
\operatorname{tr}\operatorname{Log}_{-}H_{\lambda,m}
 =\operatorname{tr}\operatorname{Log}_{-}H_{0,\lambda,m}
  +\operatorname{tr}\operatorname{Log}_{-}Q_{\lambda,m}.
\tag{6.3}
\]

The full conjugate/helicity content is retained, with the same real-field factor 1/2 as in the metric calculation. Likewise (4.3) is finite matrix algebra in each common fiber. There is no claim that a mere Casimir cutoff makes the thermal Hilbert space finite dimensional.

### 6.2 Why the identity reaches the actual trace

This step requires two distinct standard harmonic-analysis statements: the K-finite Harish-Chandra Schwartz transform, including its intertwining/compatibility conditions, and regular semisimple **orbital/character** inversion. Equality of traces in (6.3) is not equality of full matrix Fourier multipliers.

In fixed compact-picture K-type bases the natural differential matrices have polynomial lambda coefficients. The inverse (5.5) is uniformly bounded; a weaker polynomial bound already suffices. Resolvent differentiation then bounds all lambda derivatives of Log_- H polynomially. Multiplication by e^(-epsilon r) is Schwartz for every fixed epsilon>0. The required representation-intertwining compatibility is inherited from the natural invariant operators and their holomorphic functional calculus; arbitrary unrelated Schwartz matrix functions would not suffice. The standard K-finite transform theorem therefore supplies smoothing kernels with, for every N,

\[
|K_{\epsilon}(d)|\le c_{\epsilon,N}\,\Xi(d)(1+d)^{-N},
\qquad\Xi(d)=d/\sinh d.
\tag{6.4}
\]

For a cyclic image n, d_n>=2R+|n|beta-c on a nondegenerate source neighborhood. The radial density grows as e^(2R). Its nonidentity tail is bounded by a convergent sum of terms

\[
c_{\epsilon,N}e^{-|n|\beta}
 (1+R+|n|\beta)^{2-N},\qquad N>2.
\tag{6.5}
\]

Thus every fixed-epsilon orbital integral exists, the image sum converges, and changing a bounded smooth defining-function cutoff adds no hidden image finite part. This is a proof for smoothing weighted logarithms, not assumed cyclicity of a renormalized trace under T.

More explicitly, the character transform of the scalar fiber-trace kernel is e^(-epsilon r) times the finite multiplicity trace in (6.3). Identity Plancherel and regular semisimple orbital inversion apply to that transform. In the primitive-length convention of the [earlier orbital calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/report.md#L447-L491>), the latter has the form

\[
\mathcal O_n(f)=\frac{\beta}{2\pi}\sum_m\int_0^\infty
 \Theta_{\lambda,m}(f)
 \frac{\cos(\lambda |n|\beta+mn\theta)}
 {\cosh(|n|\beta)-\cos(n\theta)}\,d\lambda.
\tag{6.6}
\]

Hence (6.3), and the analogous finite FP equality, imply equality of the identity density and each nonidentity orbital integral. This uses the invariant character transform, not inversion of an allegedly zero matrix kernel. The equality holds at each positive epsilon before its finite part.

For source derivatives, bulk source diffeomorphisms act by pullback, and pure Weyl representative changes affect only the identity finite-part volume. Modulus derivatives can be taken in (6.6): derivatives give polynomial factors in n and lambda, while the denominator retains exponential n decay for beta>=beta_*>0. All prescribed finite orders converge locally uniformly. Equivalently (6.5) controls the moving cutoff at fixed epsilon. No uniform epsilon->0 bound on every unsimplified block is claimed: after the exact fixed-epsilon identity, the limit is taken on the already controlled reduced metric expression. No statement is uniform through beta=0 degeneration.

### 6.3 Constant determinants and phases are evaluated, not omitted

For each of the three spin regulators,

\[
N_s:=\operatorname{FP}_{\epsilon\downarrow0}
 \operatorname{Tr}_{R,\gamma}e^{-\epsilon\mathcal R_s}=0.
\tag{6.7}
\]

Indeed their identity densities have only half-integer powers epsilon^(-3/2+j), with no constant term; nonidentity heat images are exponentially small at short time on beta>=beta_*>0. There are no removed L2 zero modes. This is the odd-dimensional minimal Laplace heat-counting statement for this complete geometry, not a general assertion for hard walls, zero-mode-deleted operators or other regulators.

The auxiliary contribution is therefore

\[
-\tfrac12\log(2a)(N_0+N_1+N_2)
-\tfrac12\log2\,N_0+\tfrac{i\pi}{2}N_2=0.
\tag{6.8}
\]

The coframe/frame density constants, trace normalization, algebraic FP factors and any fixed linear CS-coordinate normalization likewise multiply zero spin counts. No source-dependent relative contour phase remains in this local common prescription. This does not fix a global framing or modular-overlap phase.

For the actual kinetic regulator, Mellin inversion gives

\[
\operatorname{FP}_{\epsilon\downarrow0}
 \operatorname{Tr}_{R,\gamma}(e^{-\epsilon R}\log R)
 =-\zeta_R'(0),\qquad \zeta_R(0)=0.
\tag{6.9}
\]

Zero mode count does **not** mean zero spectral determinant: the derivative in (6.9) contains the nontrivial local and image contributions. The metric blocks in (5.4), after the stated trace rotation and constant normalization, are precisely R2 and R0, and their vector ghost is R1. Thus (6.3)-(6.9) reproduce the full local metric determinant, not only a thermal character. The common completed tree action (1.3) then proves (0.1). The canonical/covariant stress contacts and the modulus seagull follow from equality of the source functionals under the conventions already fixed in the source-dependent report.

## 7. What the regulator and domain hypotheses exclude

**Independent cutoffs.** For q(x,y)=(1/2)x^T Hx+(1/2)(y-Dx)^T Q(y-Dx), project x with P and y with J, where [J,Q]=0. Integrating only Jy gives the Schur block

\[
H_P+P D^\dagger Q(1-J)DP,
\tag{7.1}
\]

not generally H_P. In the positive diagonal example H_n=n^2+1, D_n=n, Q=1, retain x modes through N but y modes only through N-1. Both spaces exhaust the continuum, yet their determinant ratio tends to 2 rather than 1. The Gaussian amplitude differs by its inverse square root. A derivative field redefinition does not license unrelated cutoff limits.

Even finite weighted logs require compatibility. For T=(1,0;-s,1), H=T^T T and a diagonal weight diag(w1,w2), the s^2 coefficient of tr(weight log H) is (w1-w2)/2 although det H=1. The common Casimir is scalar on each multiplicity fiber, which is exactly what avoids this defect.

**H-alone zeta/eta.** The mixed auxiliary Hessian is not necessarily elliptic of one positive order. Already B=0 and Q=1 leave an infinite-dimensional constant branch, with no starting half-plane for its ordinary spectral zeta trace. A nonzero derivative shear can leave a high-frequency branch tending to a nonzero constant as well. Thus replacing (6.2) by an H-alone zeta or eta function is not an innocuous notation change. An independently gauge-fixed elliptic CS construction needs its own analysis and phase prescription; finite-fiber inertia does not by itself identify those regulated phases.

**Finite local normalization.** Covariance alone permits a new factor exp(nu V_ren[gamma]). It changes the boundary trace coefficient by delta c=-6pi nu, using the volume cocycle, unless accompanied by a fixed-theory coupling calibration. Equation (6.7) excludes that factor only within the stated minimal prescription. It is not a theorem that all possible covariant quantum measures choose it.

**Limits of the conclusion.** The transported auxiliary and metric contours, common complete-manifold regulator and matched wall completion are essential data. We have neither proved a bounded map of the entire L2 gauge quotient, nor an equality with every Brown-Henneaux completion, every complex-CS integration cycle, or separately chosen spectral/eta/framing regularization. A nonlinear BV map, measure selection of the orbit determinant metric, physical c(G), continuum Hilbert pairing and nonlinear observable domains remain separate questions.

## 8. Verification and next physical question

The [parent runnable bridge](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_geometric_cs_gaussian.wl>) and [frozen actual result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/geometric-cs-parent.l4Mmve/preview.txt>) check sixteen residual groups: SU2 trace/bracket/cubic trace, generic off-shell Euclidean transgression, actual xCoba hyperbolic Ricci, both CS curvatures, torsion, three full differential Casimir intertwiners, de Donder FP sign, connection variation under adapted diffeomorphism, two finite Schur identities, unequal-weight log coefficient, and three zero heat-count coefficients. All displayed residuals vanish; Wolfram 14.3 reports Failed=False, UnevaluatedComputations=False, Messages={}. The [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/geometric-cs-parent.l4Mmve/actual-server-return.json>) has no load/evaluation messages, transport stderr or truncation. Source SHA256: `a5238ac0c488cca95783148948731bb04ae35a46a09fcb0d5e485d5c084fe2d1`.

The independent auxiliary [report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/report.md>) and [evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/evidence.md>) derive the wall split, full Hessian, contour and measure constants, and an L2 auxiliary field with divergent separate wall flux. Its plus dualization is mapped explicitly in (2.1). Additional gauge/domain, regulator and harmonic-analysis investigations are being integrated separately; supplied-route assessments are not retroactively labeled independent discoveries.

**Verified:** the stated exact local/finite identities and counterexamples, with the analytic continuum argument scoped to its explicit functional-analysis and harmonic-analysis inputs. **Assumptions:** fixed marked complete hyperbolic source family, matched off-shell wall action, background L2 measures, upper-rotated metric/auxiliary contours, complete proper ghosts, common-Casimir heat-count prescription and the stated orbital transform theorems. **Not established:** regulator-independent quantum equivalence, a global bounded L2 gauge-slice map, nonlinear measure/BV transport, independent CS spectral/eta matching, modular/framing completion or a physical coupling calibration.

The next finite physical question is whether a separately specified elliptic geometric-CS zeta/eta prescription agrees with CC after matching its contour and local terms, or produces a computable finite relative local/phase functional. That comparison must use its actual gauge-fixed operator and proper domain; another oscillator product would not decide it.
