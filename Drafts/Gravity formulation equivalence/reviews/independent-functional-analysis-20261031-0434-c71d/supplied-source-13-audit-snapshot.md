# Source-dependent thermal AdS one-loop Ward comparison

## Result and proof level

**For the specified complete-manifold metric Gaussian, the source-dependent one-loop Ward correction is +13 per chirality in the AC prescription.** This is stronger than equality of a thermal character. It is not a nonlinear gravity-to-orbit measure theorem, an all-orders result, or a regulator-independent determination of the physical Newton coupling.

Set the curvature radius to one and retain the reference coefficient C=3/(2G)>0. Let gamma be a smooth positive metric near a fixed marked conformal torus, with the chosen meridian contractible in the complete hyperbolic filling. Write V_ren[gamma] for the geodesic-defining-function renormalized volume of that filling, and tau_gamma for its marked conformal modulus. The theorem concerns log Z, not minus log Z:

\[
\boxed{\begin{aligned}
F_{\rm AC}^{(0+1)}[\gamma]
 &=-\frac{C+13}{6\pi}V_{\rm ren}[\gamma]
   +\log|P(q_\gamma)|^2,\\
F_{\rm omit}^{(0+1)}[\gamma]
 &=-\frac{C}{6\pi}V_{\rm ren}[\gamma]
   +\log|P(q_\gamma)|^2,\\
P(q)&=\prod_{n\ge2}(1-q^n)^{-1},\qquad q_\gamma=e^{2\pi i\tau_\gamma}.
\end{aligned}} \tag{0.1}
\]

A common source-independent normalization is suppressed. AC means proper-time/Mellin analytic continuation, geodesic finite-part volume, the stated Gaussian/trace-contour normalization, and no additional finite local term. Omit deletes the identity image before proper-time integration. Neither notation specifies an arbitrary alternative gauge completion.

The exact finite Weyl response of this tree-plus-Gaussian functional is

\[
F^{(0+1)}[e^{2\sigma}\gamma]-F^{(0+1)}[\gamma]
 =\frac{c_{\rm Ward}^{(0+1)}}{24\pi}
   \int\sqrt\gamma\,[|d\sigma|_\gamma^2+R_\gamma\sigma],
\qquad
c_{\rm Ward,AC}^{(0+1)}=C+13,\quad
c_{\rm Ward,omit}^{(0+1)}=C. \tag{0.2}
\]

Here c denotes either chiral coefficient when c_L=c_R=c, not their sum. The nonconstant stress response, the canonical time-ordered kernel, their local contact conversion, and the Teichmuller susceptibility are derived below. They match the vacuum-module formulas at this value of c when a comparison module with the stated character exists, under the explicit source conventions. In particular, the omit formula is not a claim of a unitary P-character at every C>0; actual null quotients matter. The Gaussian calculation does not construct the bulk Hilbert space or its intertwiner.

**Proved within the named prescription:** smooth local source construction; complete L2 operator domains and gaps; a reducing York/TT decomposition; representative independence and convergent proper-time tails for the full local nonidentity kernels; (0.1)-(0.2); the local quadratic metric Ward kernel and its conversion to canonical stress data. Standard complete-manifold elliptic theory and homogeneous-bundle Plancherel are stated analytic inputs. Equality with every Brown-Henneaux domain, separately renormalized nonlocal York products, or a nonlinear orbit measure is not asserted.

## 1. Geometry, source coordinates, and conventions

The Lorentzian CPS conventions remain those of the [authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>): Omega=delta Theta, i_XH Omega=-delta H, {F,G}=X_G F, and [Fhat,Ghat]=i{F,G}. Euclidean continuation and Gaussian normalization are additional choices, not consequences of CPS.

On the complete thermal solid torus,

\[
ds^2=(1+r^2)dt_E^2+\frac{dr^2}{1+r^2}+r^2dx^2,
\quad x\sim x+2\pi,
\quad(t_E,x)\sim(t_E+\beta,x+\theta),
\quad \beta>0,
\tag{1.1}
\]

Ric=-2g. The x-circle collapses smoothly at the core. Set beta=2pi tau_2, theta=2pi tau_1. No modular-image sum or modulus integral is performed.

On a fixed marked torus with coordinates (u,v) of period one, normalize the flat representative by the meridian length:

\[
\gamma_\tau=(2\pi)^2|du+\tau dv|^2,
\quad A(\gamma_\tau)=4\pi^2\tau_2=2\pi\beta.
\tag{1.2}
\]

Locally every smooth positive gamma has

\[
\gamma=e^{2\sigma}\phi^*\gamma_{\tau_\gamma},
\qquad \phi\in\operatorname{Diff}_0(T^2),\quad \phi(p_0)=p_0.
\tag{1.3}
\]

The flat scale is fixed by (1.2), and the point condition removes translations. Do not also impose a zero-average condition on sigma: constant source rescalings are allowed. An area-one convention instead rescales the reference by (4pi^2 tau_2)^{-1} and shifts sigma by the corresponding constant. Since chi(T2)=0, this does not alter V_ren or the Dirichlet integral.

A direct construction solves Delta_gamma sigma=-R_gamma/2 with Delta=div grad, then fixes the additive constant by the meridian scale. Gauss-Bonnet gives solvability. The flattened metric has parallel harmonic one-forms; their normalized periods give the marked Euclidean developing map, hence phi and tau. The compact elliptic inverse on the complement of constants varies smoothly near a fixed metric. This supplies a genuine smooth local source parametrization, not just a linear decomposition of h_ij.

Extend a small boundary isotopy phi smoothly into a collar, making it the identity near the core. If Psi_phi is such an extension, choose the filling g_gamma=Psi_phi^*g_tau. Different extensions are related by a bulk diffeomorphism trivial at the boundary. A change of sigma changes only the geodesic defining function rho_gamma, not this complete metric. A true change of tau changes loxodromic holonomy and generally the spectrum. These three operations must not be conflated.

For source differentiation define the Euclidean response tensor by

\[
\delta F=\frac12\int\sqrt\gamma\,\mathcal S^{ij}\delta\gamma_{ij},
\qquad F=\log Z.
\tag{1.4}
\]

Thus the trace in this convention is +c R/(24pi). A convention delta F=-(1/2)int sqrt(gamma) t^{ij} delta gamma_ij instead has t=-S and trace -c R/(24pi). This is the conversion to the independent stress review; no physical sign is changed.

## 2. The actual local Gaussian and its domains

Use the unreduced local determinant rather than assuming renormalized trace cyclicity under a nonlocal York map:

\[
F_G=\log\det_R O_1-\frac12\log\det_R O_2
                         -\frac12\log\det_R O_0,
\quad
O_1=\nabla^*\nabla+2,\quad
O_2=\nabla^*\nabla-2\text{ on }S^2_0T^*M,\quad
O_0=-\nabla^2+4.
\tag{2.1}
\]

The vector ghost is complex Grassmann. The trace contour is phi=i psi with psi real and trace norm ||psi||^2/6, as in the [fixed-background Gaussian benchmark](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L274-L339>). Orthonormal Gaussian normalization and the contour phase are held fixed by natural transport. The radial cutoff regularizes the trace; it never introduces an operator boundary or a wall ghost spectrum.

All three operators are the unique self-adjoint closures of their compactly supported smooth **full-bundle** realizations on the complete manifold. Their domains are H2 and their form domains H1 in the locally uniform bounded-geometry source family. Pullback by Psi_phi is genuinely unitary between the corresponding L2 spaces and intertwines these closures. A pure Weyl representative change leaves the spaces and operators literally unchanged. True modulus changes give controlled, locally equivalent Sobolev domains, not unitary spectral equivalence.

There are useful global estimates. Put A=-Delta on scalars. With r=sinh R, the positive supersolution sech R satisfies A(sech R)/(sech R)=1+sech^2 R; its ground-state transform gives A>=1. Also O_1=Delta_H,1+4>=4. For compactly supported tracefree symmetric h, define (d^nabla h)_ijk=nabla_i h_jk-nabla_j h_ik, with its norm summing both antisymmetric indices and no built-in factor 1/2. Then

\[
\|\nabla h\|^2=\frac12\|d^\nabla h\|^2+
 \|\operatorname{div}h\|^2+3\|h\|^2,
\qquad
O_0\ge5,\quad O_1\ge4,\quad O_2\ge1.
\tag{2.2}
\]

The tensor estimate follows by commuting derivatives in the integrated crossed term; it holds on the full tracefree bundle, not only TT. Density extends it to the form domain. In particular this Gaussian has no L2 ghost, scalar, or metric zero modes requiring collective coordinates.

For the conformal strain Lv=2nabla_(i v_j)-(2/3)g_ij div v, with delta=-div,

\[
L^*L=2O_1+\frac23d\delta\ge8,
\quad O_2L=LO_1,
\quad O_1d=d(A+4).
\tag{2.3}
\]

Thus L:H1->L2 has closed range, and

\[
L^2(S^2_0)=\ker L^*\oplus\operatorname{Ran}L,
\qquad \mathcal H_{TT}=\ker L^*.
\tag{2.4}
\]

The polar isometry L(L*L)^{-1/2} intertwines O_1 with the longitudinal restriction; the orthogonal TT space reduces O_2. Its natural operator domain is H2 intersected with distributional TT. This does **not** prove that compactly supported TT tensors are an operator core for that restriction. Nor does it license cyclicity of a finite-part spatial trace under arbitrary nonlocal unitaries. Separate York Jacobians have source dependence; cancellations require the same induced Gaussian coordinates and regulator, not independently chosen zeta products. Formula (2.1) avoids that ambiguity.

A vector with nonzero tangential boundary value has norm density proportional to rho^{-5} d rho near infinity; a radial PBH/Weyl vector has rho^{-3} d rho. Neither belongs to the L2 ghost space. Source diffeomorphism covariance is therefore not an integration over improper ghosts. Merely vanishing at the boundary also does not define this L2 domain. Modulus variations alter the leading source and are not L2 fluctuating collective coordinates.

## 3. Why nonidentity images have no hidden Weyl response

At fixed proper time u, the identity heat density on H3 is homogeneous. To justify its separation at the determinant level one must also control the simultaneous large-u and conformal-boundary limit of the images. A fixed-u observation alone is insufficient.

For the full local spin-s bundle, s=0,1,2, principal-series branches m=-s,...,s have rough eigenvalues lambda^2+1+s(s+1)-m^2 and polynomial density proportional to lambda^2+m^2. The shifted minima in (2.1) are positive. In the compact picture the fixed-K-type matrix coefficients are bounded, uniformly in real lambda, by a constant times

\[
\Xi(d)=\frac12\int_{-1}^1\frac{dy}{\cosh d-y\sinh d}
       =\frac d{\sinh d}.
\]

Consequently the full local kernels obey both

\[
|K_j(u;d)|\le C\Xi(d)u^{-3/2}(1+u)e^{-u},\qquad
|K_j(u;d)|\le C\Xi(d)u^{-3/2}e^{u-d^2/(4u)}.
\tag{3.1}
\]

The second bound is scalar heat domination with the worst potential -2; by itself its growing e^u is useless at large u. Interpolating it with weight 1/4 and the first bound with weight 3/4 gives

\[
|K_j(u;d)|\le C\Xi(d)u^{-3/2}(1+u)^{3/4}
 e^{-u/2-d^2/(16u)},\qquad
\int_0^\infty\frac{du}{u}|K_j(u;d)|
 \le C_\eta e^{-(1+\eta)d},\quad 0<\eta<\frac1{2\sqrt2},
\tag{3.2}
\]

uniformly for d>=beta_*>0. These are local-bundle bounds, not an unjustified scalar domination of a TT-projected kernel.

For a nontrivial cyclic image n,

\[
\cosh d_n(R)=\cosh(n\beta)+[\cosh(n\beta)-\cos(n\theta)]\sinh^2R,
\quad d_n\ge2R+|n|\beta-C_{\beta_*}.
\tag{3.3}
\]

The volume measure grows as e^{2R}dR. Deck transport is fiberwise unitary. Equations (3.2)-(3.3) therefore bound the proper-time-integrated image tail beyond R by C_eta e^{-2 eta R}, with an absolutely convergent image sum. Smooth geodesic cutoffs are uniformly comparable to e^{-R}. There is no extra finite image boundary term when the cutoff changes.

The [independent domain analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/report.md>) supplies the full-bundle Casimir/Plancherel construction, the closed-domain arguments, and finite-order differentiated bounds. Alternatively, after the complete image trace is evaluated, smooth modulus dependence follows directly from the locally uniformly convergent product/series for |q|<1. No estimate here is uniform through beta=0 degeneration.

Thus the image-first prescription agrees here with the corresponding common-cutoff image limit for the full local Gaussian. The renormalized heat trace is

\[
\operatorname{Tr}_{R,\gamma}e^{-uO_j}
 =k_j(u)V_{\rm ren}[\gamma]+H_j^{\ne e}(u;\tau_\gamma).
\tag{3.4}
\]

The interface to the established T/TT character calculation can be closed without arbitrary finite-part trace cyclicity. For a principal-series label (lambda,m), the homogeneous heat test function has character transform equal to its Casimir heat multiplier times dim(H_(lambda,m) tensor V_s)^K, which is one for |m|<=s and zero otherwise. Regular semisimple orbital inversion depends on this representation label, not on which bundle K-type realizes it. In the combination O1 minus one half O2 minus one half O0, the m=0 branches with shift 5 cancel; the |m|=1 branches with shift 4 remain with coefficient one half, and the |m|=2 branches with shift 1 with coefficient minus one half. This proves equality to the transverse-vector/TT **character-image** combination at each nonidentity orbital integral, before proper-time continuation. The two helicities are retained together. The explicit argument and analytic input are in §6.4 of the domain analysis; it does not assert a common-cutoff theorem for each isolated nonlocal projected kernel.

Consequently the already evaluated convergent thermal image sum applies and gives F_ne e=log|P(q)|^2. Scalar and longitudinal branches were retained until cancellation; ST tensors were not called TT. The universal identity densities, with the common factor (4pi u)^{-3/2} suppressed, are

\[
k_0=e^{-5u},\quad
k_1=e^{-5u}+2(1+2u)e^{-4u},\quad
k_2=e^{-5u}+2(1+2u)e^{-4u}+2(1+8u)e^{-u}.
\tag{3.5}
\]

Using log det O=-AC int du Tr(e^{-uO})/u, their Gaussian combination gives

\[
F_G[\gamma]=-\frac{13}{6\pi}V_{\rm ren}[\gamma]
                   +\log|P(q_\gamma)|^2.
\tag{3.6}
\]

The ultraviolet continuation is performed only on the local identity term. Its source dependence factors into V_ren, so differentiation commutes with the fixed subtraction and continuation. The image term already converges absolutely. No independent source-dependent boundary determinant or isometry-volume factor has been introduced by this operation.

## 4. The finite Weyl cocycle and the action completion

In geodesic normal form,

\[
g=\rho^{-2}(d\rho^2+\gamma+\rho^2g_{(2)}+\cdots),\quad
\operatorname{tr}_\gamma g_{(2)}=-\frac12R_\gamma,
\]

so

\[
\operatorname{Vol}(\rho>\epsilon)
 =\frac{A_\gamma}{2\epsilon^2}
   +\frac14\int\sqrt\gamma R_\gamma\log\epsilon
   +V_{\rm ren}[\gamma]+o(1).
\tag{4.1}
\]

The log coefficient is pi chi, and vanishes on the torus. It is nevertheless necessary to keep its local density when changing representatives.

For gamma_hat=e^{2 sigma}gamma, write rho_hat=e^v rho. The eikonal equation gives

\[
2\rho v_\rho+\rho^2v_\rho^2+\rho^2|d v|^2_{g_\rho}=0,
\quad v=\sigma-\frac14\rho^2|d\sigma|_\gamma^2+O(\rho^4).
\]

Solving rho_hat=epsilon and comparing the finite parts of (4.1) gives the exact cocycle

\[
\boxed{V_{\rm ren}[e^{2\sigma}\gamma]-V_{\rm ren}[\gamma]
 =-\frac14\int\sqrt\gamma\,
 (|d\sigma|_\gamma^2+R_\gamma\sigma).} \tag{4.2}
\]

It obeys the composition law because R[e^{2 sigma}gamma]dA_hat=(R_gamma-2Delta_gamma sigma)dA_gamma. This derivation changes the defining function on one fixed complete filling; it is not a bulk Weyl rescaling.

For (1.1), r=rho^{-1}-rho/4 and

\[
\operatorname{Vol}(\rho>\epsilon)
 =\pi\beta(\epsilon^{-2}-1/2+\epsilon^2/16),\qquad
V_{\rm ren}[\gamma_\tau]=-\frac{\pi\beta}{2}.
\tag{4.3}
\]

In the normalized uniformization (1.3),

\[
V_{\rm ren}[\gamma]=-\frac{\pi\beta_\gamma}{2}
 -\frac14\int\sqrt{\gamma_0}|d\sigma|_{\gamma_0}^2,
\qquad \gamma_0=\phi^*\gamma_{\tau_\gamma}.
\tag{4.4}
\]

There is also an intrinsic expression, useful for seeing the nonlocal stress kernel directly. On the closed torus let L_gamma=-Delta_gamma and invert it on functions of zero gamma-mean. Gauss-Bonnet makes R_gamma admissible. Since R_gamma=2L_gamma sigma in the uniformization above, L_gamma^{-1}R_gamma=2sigma plus a constant, and

\[
\boxed{V_{\rm ren}[\gamma]=-\pi^2\tau_{\gamma,2}
 -\frac1{16}\int\sqrt\gamma\,R_\gamma L_\gamma^{-1}R_\gamma.}
\tag{4.4a}
\]

Thus (0.1) is an explicit Polyakov functional plus its fixed flat moduli function, not just a trace-anomaly ansatz. On an affine flat-metric source gamma=delta+epsilon h, the universal quadratic coefficient is c/(96pi) int R^(1)L_0^{-1}R^(1). With P^{ij}(k)=delta^{ij}-k^i k^j/k^2, its normalized source Hessian is

\[
\mathcal K_{\rm central}^{ij,kl}(k)
 :=4\frac{\delta^2F_{\rm central}}{\delta\gamma_{ij}\delta\gamma_{kl}}(k)
 =\frac{c}{12\pi}k^2P^{ij}(k)P^{kl}(k),\qquad k\ne0.
\tag{4.4b}
\]

Its traces are local polynomials, but the untraced k^i k^j k^k k^l/k^2 term is nonlocal. The full torus Hessian also contains first and second derivatives of the moduli function. The [independent volume/source derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/renvol-independent-20261031.elaEpR/REPORT.md>) gives their full affine-source decomposition and an exactly uniformized inhomogeneous example with a nonzero second-order modulus shift.

For a symbolic identity density lambda, F_id=lambda V_ren has infinitesimal Weyl variation -(lambda/4)int sqrt(gamma) delta sigma R. In the convention (1.4),

\[
\mathcal S^i{}_i=-\frac\lambda4 R,
\qquad c_{\rm id}=-6\pi\lambda.
\tag{4.5}
\]

This determines a local central Ward response only after diffeomorphism covariance is used. It does not determine the background stress or susceptibility: those also depend on the modulus function.

The Euclidean action is Einstein plus GHY plus the standard area counterterm. Write H_epsilon for the induced cutoff-wall metric, distinct from the leading source gamma, and use the outward normal so that K tends to 2:

\[
I_\epsilon=-\frac1{16\pi G}\int_{M_\epsilon}\sqrt g(R+2)
  -\frac1{8\pi G}\int_{\partial M_\epsilon}\sqrt{H_\epsilon}\,K
  +\frac1{8\pi G}\int_{\partial M_\epsilon}\sqrt{H_\epsilon}.
\]

On shell its bulk coefficient is 1/(4pi G). The wall finite part is -(1/(32pi G))int sqrt(gamma) R, which is zero on T2; the leading area divergences cancel. Hence F_tree=-I_ren=-C V_ren/(6pi). Combining this complete action, not a bare bulk volume action, with (3.6) proves (0.1)-(0.2).

Restoring the curvature radius gives F_id=-13 V_ren,phys/(6pi ell^3)=-13 V_ren,dimless/(6pi), with V_ren,dimless=V_ren,phys/ell^3. The dimensionless Ward shift is unchanged. C=3ell/(2G) remains a reference coefficient, not an independently calibrated physical coupling.

## 5. Why flat thermal data do not suffice

Two explicit ambiguities sharpen the source test.

**Area counterexample.** On every canonical flat thermal representative,

\[
V_{\rm ren}[\gamma_\tau]=-A(\gamma_\tau)/4.
\]

Thus the ordinary local source term -(lambda/4)int sqrt(gamma) exactly mimics lambda V_ren on all these flat tori. Its Weyl change is instead

\[
-\frac\lambda4\int\sqrt\gamma(e^{2\sigma}-1),
\]

not the Liouville cocycle (4.2). This disproves an inference from the flat vacuum-energy factor alone to the off-shell anomaly. The area modification fails the exact conformal trace Ward identity and is excluded by the named prescription.

**Contact counterexample.** Adding alpha int sqrt(gamma) R^2 vanishes on every flat torus and leaves the nontrivial central-anomaly coefficient unchanged, but changes the quadratic metric response and adds a trivial local Weyl anomaly. In the chiral Beltrami slice below it contributes 16 alpha int (partial^2 mu)^2. Consequently “same central coefficient plus same flat Z” fixes the metric Hessian only after the exact anomaly/contact scheme is specified.

An intrinsic Euler counterterm has no metric variation on a closed torus. Other local source counterterms cannot remove the nontrivial R anomaly while preserving the exact conformal Ward identity. A change of the full Einstein/GHY/counterterm coupling is different: at fixed physical theory it can reassign the split between C and the loop remainder, but the total measured Ward coefficient must remain fixed. Adding it at fixed defining C changes the theory.

At this order there is an explicit parameter-matching identity for the entire source functional, not just its flat value: F_AC^(0+1)[C;gamma]=F_omit^(0+1)[C+13;gamma]. At the same fixed defining C, by contrast, their Ward coefficients differ by 13. This parameter reassignment is not an all-orders equivalence assertion.

For a calculable source take gamma=e^{2a cos(nx)}gamma_tau on a rectangular torus, n>=1. Equation (4.2) gives exactly

\[
V_{\rm ren}[\gamma]-V_{\rm ren}[\gamma_\tau]
 =-\frac{\pi\beta}{4}a^2n^2,
\quad
(F_{\rm AC}-F_{\rm omit})[\gamma]
 -(F_{\rm AC}-F_{\rm omit})[\gamma_\tau]
 =\frac{13\beta}{24}a^2n^2.
\tag{5.1}
\]

This is a nonconstant-source distinction, not another oscillator product. Smooth real a of any finite size is allowed for this fixed-conformal-class cocycle; the general varying-modulus source theorem is local in a nondegenerate marked chart.

## 6. Canonical thermal stress and its actual metric-source conversion

For explicit Fourier formulas take theta=0, w=t_E+ix, and omega_k=2pi k/beta. At nonzero geometric theta, this choice of w has chiral nome exp(-beta-i theta)=bar q; reversing x or interchanging chiralities gives q. The full two-chiral expression (0.1) is unaffected. No silent angular-orientation identification is used below.

Let a cyclic unitary positive-energy vacuum representation obey

\[
[L_m,L_n]=(m-n)L_{m+n}+\frac c{12}m(m^2-1)\delta_{m+n,0},
\quad L_n^\dagger=L_{-n},\quad L_n|0\rangle=0\ (n\ge-1),
\]

with finite-dimensional level spaces and the actual null quotient. Define

\[
H=L_0-c/24,\quad
\mathcal T(w)=\sum_n L_n e^{-nw}-c/24,\quad
h=\langle H\rangle=-\partial_\beta\log Z_L,\quad
V=\operatorname{Var}(H)=\partial_\beta^2\log Z_L.
\tag{6.1}
\]

The source is specified, rather than inferred from a word such as “stress correlator”:

\[
F_H[J]=\log\operatorname{Tr}\left[e^{-\beta H}\,
\mathsf T\exp\left(\frac1{2\pi}\int dt_E dx\,J\mathcal T\right)\right].
\tag{6.2}
\]

Only its quadratic expansion as a smooth-source distribution is required. For G=<<T T>>_time-ordered,c, choose its spectral periodic distribution with no delta-supported additions and define

\[
K_{kn}=\int_0^\beta dt_E e^{-i\omega_k t_E}
 \frac1{2\pi}\int_0^{2\pi}dx\,e^{inx}G(t_E,x).
\]

Algebra plus KMS gives

\[
A_n=2nh+\frac c{12}n^3
 =2n\langle L_0\rangle+\frac c{12}n(n^2-1),\qquad
\langle L_nL_{-n}\rangle=\frac{A_n}{1-q^n}.
\]

For 0<t_E<beta the nth component is e^{-nt_E} A_n/(1-q^n); its Matsubara integral cancels 1-q^n. Thus

\[
\boxed{K_{kn}=\frac{2nh+cn^3/12}{n+i\omega_k}\ (n\ne0),
\qquad K_{k0}=\beta V\,\delta_{k0},\qquad
F_H^{(2)}=\frac\beta2\sum_{k,n}J_{-k,-n}K_{kn}J_{kn}.}
\tag{6.3}
\]

This is an all-level result. To justify the trace without unbounded cyclicity, let d_N be the actual level dimension and f_N=Tr_N(L_nL_-n), n>0. Finite-dimensional trace shifting gives Tr_N(L_-nL_n)=f_{N-n}, while

\[
f_N-f_{N-n}=d_N[2nN+c\,n(n^2-1)/12].
\]

The recurrence bounds f_N by a polynomial times the partition number; all beta-weighted traces converge absolutely. A finite-level cutoff alone does not obey exact KMS because of its upper boundary terms.

Now complexify real metric variations and take the Beltrami slice

\[
ds^2=dw\,d\bar w+\mu\,d\bar w^2,
\quad \mathcal T=-2\pi\mathcal S_{ww},
\quad \delta F=-\frac1\pi\int dt_E dx\,\mathcal T\,\delta\mu.
\tag{6.4}
\]

At linear order J=-2mu. The other chiral source and conformal factor are held fixed; a real perturbation includes the conjugate variation. The metric determinant in (t_E,x) is exactly one on this complexified slice. Diffeomorphism covariance and the **exact** trace S^i_i=cR/(24pi), with no gravitational anomaly, give

\[
R^{(1)}=4\partial^2\mu,\quad
2\pi\delta\mathcal S_{w\bar w}=-h\mu+\frac c{12}\partial^2\mu,
\quad
\boxed{\bar\partial\delta\mathcal T
      =2h\partial\mu+\frac c{12}\partial^3\mu.}
\tag{6.5}
\]

Here partial=(partial_t-i partial_x)/2 and bar partial=(partial_t+i partial_x)/2. For modes e^{i omega_k t_E-inx}, put p=(i omega_k-n)/2 and r=(i omega_k+n)/2. Every nonconstant Euclidean mode has r!=0, so

\[
\boxed{\mathcal R_{kn}:=\frac{\delta\mathcal T_{kn}}{\delta\mu_{kn}}
 =\frac{2hp+cp^3/12}{r}=-2K_{kn}+2P_{kn},
\quad P_{kn}=h+\frac c{24}(r^2-3rp+3p^2).}
\tag{6.6}
\]

P is a local differential polynomial. It is the net contact/seagull conversion between the covariant metric Hessian and the specified canonical time ordering, not an extra propagating mode:

\[
F_{\rm met}^{(2)}[\mu]=F_H^{(2)}[-2\mu]
 -\frac1\pi\int\mu\left[h+\frac c{24}
 (\bar\partial^2-3\partial\bar\partial+3\partial^2)\right]\mu.
\tag{6.7}
\]

Equivalently G_met=G-2pi P delta^2 and delta^2 F_met/delta mu delta mu=G_met/pi^2. The raw connected correlator remains G. The split of a metric Hessian into a microscopic action seagull and a renormalized operator contact requires an actual action/regulator and is not fixed separately by (6.7). In particular the h term is state dependent, not an arbitrary state-independent covariant counterterm.

The source-zero mode must not be obtained by dividing by r. Constant mu has normalized period map

\[
w_{\rm new}=\frac{w+\mu\bar w}{1-\mu},\qquad
\beta_{\rm eff}=\beta\frac{1+\mu}{1-\mu}.
\]

The remaining constant Weyl rescaling has zero torus anomaly. Therefore

\[
F(\mu)=F(0)-2\beta h\mu+
 (2\beta^2V-2\beta h)\mu^2+O(\mu^3),
\qquad \boxed{\mathcal R_{00}=2h-2\beta V.}
\tag{6.8}
\]

The +2h is essential. For n=0,k!=0 the canonical kernel is zero but the metric response is 2h-c omega_k^2/48, entirely contact-supported. It is not an energy covariance.

## 7. What the gravitational source calculation now matches

For the Gaussian AC result, set

\[
c=C+13,\quad Z_L=q^{-c/24}P(q),\quad
\langle L_0\rangle=\sum_{m\ge2}\frac{m q^m}{1-q^m},\quad
V=\sum_{m\ge2}\frac{m^2q^m}{(1-q^m)^2}.
\tag{7.1}
\]

The corresponding omit result has c=C. A Hilbert-space comparison uses the actual unitary vacuum quotient: if a proposed c has additional null relations, its character must replace P and need not match the Gaussian product. A Hilbert representation is comparison data, not produced by (0.1).

The metric functional (0.1) is diffeomorphism covariant under the source pullback and has the exact anomaly (0.2); its paired chiralities have no diffeomorphism anomaly. Its Ward solution is therefore (6.5)-(6.8) with (7.1). After the stated local contact conversion, its nonlocal quadratic stress data coincide with (6.3). In particular the short-distance central term is c/(2w^4), and the normalized thermal diagnostic is

\[
\frac{12}{n(n^2-1)}\left[(1-q^n)\langle L_nL_{-n}\rangle
 -2nq\partial_q\log P(q)\right]=c,\qquad n\ge2.
\tag{7.2}
\]

This supplies a source-derived value for the coefficient appearing in the [earlier representation criterion](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/10 Vacuum quantum equivalence benchmark.md#L439-L471>), within this Gaussian prescription. It is not an independently constructed bulk representation satisfying that criterion.

Do not remove n=0,+/-1 insertions because the vacuum orbit has a PSL stabilizer. At finite temperature

\[
A_1=2\langle L_0\rangle>0
\]

in a nontrivial unitary vacuum module: L_-1 L_-2|0>=L_-3|0> and L_1 L_-1 L_-2|0>=4L_-2|0>. Only in the zero-temperature vacuum do the n=0,+/-1 canonical contributions vanish automatically. Then

\[
G(w)\longrightarrow\frac c{32\sinh^4(w/2)}\sim\frac c{2w^4}.
\tag{7.3}
\]

A local uniqueness statement explains the strength and limits of the comparison. Two diffeomorphism-covariant functionals on the same marked source neighborhood with the same exact Weyl anomaly differ only by a function of the uniformization modulus. If their flat moduli functions agree, their source functionals agree up to a common constant/topological term. This proves uniqueness of the specified Ward extension; it does not prove a modular-invariant full CFT, a sewing/Hilbert completion, or a microscopic measure pushforward. The modulus function is essential even for nonzero-momentum Hessians, since a zero-average metric perturbation can change tau at second order.

The [actual Fredholm tangent determinant and dual half](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/12 Fredholm determinant of the vacuum tangent bundle.md>) produce the same +13 correction for their geometric prescription. The present calculation makes that agreement a one-loop local-source/Ward agreement, not merely a curvature or character coincidence. It still does not show that the gravitational measure pushes forward to that determinant metric or to a particular continuum Hilbert pairing.

## 8. Verification and the remaining physical interface

Three independently initialized investigations received geometry/operators or a symbolic Virasoro algebra, not the parent's candidate coefficient. Their derivations and retained diagnostics are indexed in the [independent review record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>). The [independent source-response derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/source-response-derivation.md>) supplies the all-level trace recurrence, exact contact conversion, angular-convention extension, and zero-mode period map. The domain report cited above independently derives the local identity density as well as the analytic bounds; it does not assume the desired central coefficient.

The [parent bridge](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_source_ward_bridge.wl>) uses actual xCoba curvature plus explicit component/scalar algebra. Thirteen residual groups reduce to zero under the declared Simplify normalization: curvature, trace, conservation/Ward, canonical/contact conversion, the temporal zero-spatial mode, vacuum PSL factor, defining-function inversion, volume finite part, density/anomaly normalization, constant-source modulus/Hessian/stress response, and the sinusoidal Weyl example. The corrected run is Wolfram 14.3; Failed=False, UnevaluatedComputations=False, Messages={}. One stored algebraic residual is an unexpanded zero polynomial before Simplify, not a failed equality.

The independent stress calculation has twenty successful Sage checks and four exact coordinate-tensor residuals; its sixty denominator quadratures retain symbolic central amplitude and reach maximum error 1.29e-71. Its deliberately truncated KMS test leaves nonzero upper-level boundary terms, correctly retained as a counterexample to a cutoff proof. Exact finite checks do not establish the operator-domain or heat-tail theorems.

**Verified:** the stated source cocycle, exact local Ward and contact formulas, finite source examples, and the analytic source/domain argument at its explicit scope. **Assumptions:** complete marked hyperbolic filling, nondegenerate local Teichmuller chart, the full-bundle L2 Gaussian and contour normalization, the named analytic continuation, and absence of added finite local terms; representation statements additionally assume the stated unitary vacuum module. **Not verified:** all-order quantum gravity, general Brown-Henneaux completion equivalence, minimal compactly-supported-TT core equality, arbitrary separately regulated York products, a nonlinear metric/CS/orbit measure map, continuum Hilbert pairing and nonlinear operator cores, or operational physical c(G).

The next finite physical comparison is the source-dependent **metric-to-geometric-CS Gaussian measure map**: construct the proper gauge/auxiliary-field complex with the same boundary source and regulator, track its Jacobian and any phase, and test whether it reproduces (0.1) and (6.6)-(6.8). Recomputing an oscillator character or the already identified Fredholm line would not settle this remaining question.
