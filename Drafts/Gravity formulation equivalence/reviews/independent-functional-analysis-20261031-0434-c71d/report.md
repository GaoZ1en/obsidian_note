# Independent functional analysis of the complete-L2 thermal AdS3 Gaussian

## Result and scope

**The specified, unreduced local Gaussian has a controlled source family.** For a small smooth marked torus metric source, uniformization constructs complete hyperbolic fillings whose scalar, vector, and tracefree-tensor operators have unique positive self-adjoint complete-manifold L2 realizations. Boundary reparametrizations transport these realizations by genuine bulk isometries between pulled-back backgrounds. A boundary Weyl change, at fixed conformal modulus, changes only the geodesic defining function and renormalization cutoff; it does not change the complete metric or its L2 domains.

For these **local operators**, the nonidentity-image determinant density is absolutely integrable after integrating over proper time, locally uniformly for beta > 0. Consequently the image contribution is independent of the boundary representative, including its Weyl factor, and no nonuniform large-proper-time/conformal-boundary limit leaves an extra image boundary term. The renormalized identity heat trace is the universal covering-space diagonal heat density times geodesic renormalized volume.

A useful strengthening is

\[
O_2\geq 1\quad\text{on the entire tracefree symmetric tensor bundle},
\]

not merely on TT tensors. Thus no unproved TT positivity assumption is necessary. Proper ghost and scalar kernels are absent. There are no L2 collective coordinates for this positive Gaussian. Large boundary diffeomorphisms are not proper L2 ghost vectors.

These statements **do not prove a nonlinear metric-to-orbit measure theorem**. They also do not automatically identify separately renormalized York Jacobians, boundary measures, or a minimal compactly-supported-TT realization with the unreduced Gaussian. The exact residual distinctions are stated below.

This investigation did not read parent candidate notes, previous project reports, or previous reviews. Only root/local rule discovery, relevant skill instructions, external harmonic-analysis literature, and the new private files in this directory were used. No parent file was edited. No further independent subagent could be started at the delegation-depth limit.

## 1. Conventions and the precise spectral prescription

The interior is a smooth solid torus M with meridian x of period 2 pi. Write r = sinh rho. The complete metric and identifications are

\[
g=d\rho^2+\sinh^2\rho\,dx^2+\cosh^2\rho\,dt^2,
\qquad (x,t)\sim(x+\theta,t+\beta),\quad \beta>0.
\]

The x circle collapses smoothly at rho = 0. Curvature radius is one. Our curvature convention is

\[
R^a{}_{bcd}=-(\delta^a_cg_{bd}-\delta^a_dg_{bc}),
\qquad \operatorname{Ric}=-2g.
\]

A = -nabla^2 denotes the nonnegative scalar Laplacian; the same rough-Laplacian notation on other bundles is understood where indicated. The three Hilbert spaces are complexified L2 sections of scalars, covectors, and symmetric tracefree covariant two-tensors, with the positive geometric fiber inner products. Complex ghosts give one full vector determinant. The rotated real trace gives one inverse square root scalar determinant. Define, initially on compactly supported smooth sections,

\[
O_0=A+4,\qquad O_1=\nabla^*\nabla+2,
\qquad O_2=\nabla^*\nabla-2\quad\text{on }S^2_0T^*M.
\]

The de Donder operator and the two strains used below are

\[
F(h)_j=\nabla^ih_{ij}-\tfrac12\nabla_j\operatorname{tr}h,
\quad (Kv)_{ij}=\nabla_iv_j+\nabla_jv_i,
\quad Lv=Kv-\tfrac23g\operatorname{div}v.
\]

The prescription investigated is

\[
\log Z_G=\log\det_R O_1-\tfrac12\log\det_R O_2
                         -\tfrac12\log\det_R O_0.
\tag{1}
\]

Here the operators are their **complete-manifold** closures; the cutoff enters only the spatial trace, never the operator domain. In the explicit identity coefficient quoted later, det_R means the Mellin/zeta continuation of the geodesically finite-part heat trace, with no additional finite local counterterm. A different declared renormalization scheme can change local terms. Equation (1), not an unspecified gauge-orbit measure, is the theorem's object.

## 2. Uniformization with fixed scale and translation

Use fixed marked coordinates (u,v) in R2/Z2, with u the meridian. Choose the area-one reference flat metric

\[
\gamma_\tau=\frac{|du+\tau\,dv|^2}{\tau_2},
\qquad \tau=\tau_1+i\tau_2,\quad \tau_2>0.
\]

Work in a local marked Teichmueller chart, not a quotient by the modular group. Fix a point p0 and require phi(p0) = p0. Then every sufficiently small smooth positive source gamma admits a unique local decomposition

\[
\gamma=e^{2\sigma}\phi^*\gamma_\tau,
\qquad \phi\in\operatorname{Diff}_0(T^2).
\tag{2}
\]

The scale convention is that the flat metric e^{-2 sigma} gamma has area one; sigma is **not** additionally required to have zero average. Thus constant source rescalings are retained. The point normalization removes the translation ambiguity of the marked flat torus.

One direct construction solves

\[
\Delta_\gamma\sigma=-K_\gamma,
\qquad \int_{T^2}e^{-2\sigma}\,dA_\gamma=1.
\]

Gauss-Bonnet supplies the Poisson solvability condition, and the area condition fixes the constant. The resulting flat metric has a marked developing map determining tau and phi. Standard parameter-dependent elliptic estimates on the compact torus give smooth dependence; one may work in sufficiently high Holder spaces for any prescribed finite number of source derivatives and then take smooth sources. There is no degenerating elliptic inverse in a sufficiently small neighborhood of a fixed positive source.

Set

\[
\beta=2\pi\tau_2,\qquad \theta=2\pi\tau_1,
\]

and define on the fixed solid torus

\[
g_\tau=d\rho^2+\sinh^2\rho(2\pi\,du+\theta\,dv)^2
                         +\beta^2\cosh^2\rho\,dv^2.
\tag{3}
\]

This is complete, smooth at the meridian core, and hyperbolic. Locally in tau it is a smooth bounded-geometry family. In particular beta is bounded below by some beta_* > 0 and the injectivity radius is bounded below uniformly.

Because phi is isotopic to the identity, choose a smoothly varying isotopy and extend it to a bulk diffeomorphism Psi_phi, equal to phi in a boundary collar and to the identity sufficiently near the core. Define

\[
g_\gamma=\Psi_\phi^*g_\tau.
\tag{4}
\]

The extension is not unique, but two choices with the same boundary map differ by a bulk diffeomorphism equal to the identity at the boundary. All the spectral conclusions below are independent of that choice.

For z = 2 exp(-rho), the flat boundary representative of (3) is

\[
z^2g_\tau|_{\partial M}=(2\pi)^2|du+\tau dv|^2.
\]

Therefore x_tau = z/(2 pi sqrt(tau_2)) is geodesic and induces the area-one gamma_tau. There is a unique geodesic defining function x_gamma in a sufficiently small collar inducing gamma on (4). Relative to x = Psi_phi^* x_tau,

\[
x_\gamma=e^\sigma x\,[1+O(x^2)].
\tag{5}
\]

It depends smoothly on the source. It need not extend as a geodesic coordinate through the core; no such extension is required for renormalization.

A complete constant-curvature solid torus with this marked loxodromic conformal boundary is the cyclic quotient H3/<a>, with loxodromic translation length beta and rotation theta. This selects the filling with the specified contractible cycle. Actual tau changes generally change that holonomy and the spectrum. They are not produced by a boundary-Diff0 pullback. Discrete mapping-class identifications, including meridian Dehn twists, are not part of the local marked chart.

## 3. Exactly what is transported

For each natural tensor bundle, pullback by Psi_phi is a unitary map

\[
U_\phi:L^2(E,g_\tau)\longrightarrow L^2(E,g_\gamma).
\]

It maps compactly supported smooth sections bijectively to such sections and intertwines the Levi-Civita connection, trace, divergence, F, K, L, and all three local operators. Consequently it transports both their minimal and maximal domains, their self-adjoint closures, their form domains, and their heat kernels. For example,

\[
D(O_{j,\gamma})=U_\phi D(O_{j,\tau}),
\qquad O_{j,\gamma}=U_\phi O_{j,\tau}U_\phi^{-1}.
\tag{6}
\]

In contrast, changing sigma while holding tau and phi fixed does **not** change (4). The Hilbert spaces and closed operators are literally unchanged. Only (5) and the finite-part trace change. If one subsequently makes a Fefferman-Graham coordinate change to display x_gamma as the radial coordinate, the resulting pullback of the metric is a coordinate operation, not an additional nonisometric filling.

For true tau changes, one can identify the varying L2 bundles smoothly using fiberwise metric isometries and volume-density factors. The resulting metrics and all bounded-geometry Sobolev norms are locally uniformly equivalent. The domains are a controlled H2 family and the forms a controlled H1 family; the operators are not thereby unitarily equivalent. This is the relevant distinction between smooth domain control and spectral invariance.

## 4. Self-adjointness, gaps, and kernel absence

### 4.1 Complete-manifold realizations

A connection Laplacian on a smooth complete manifold is essentially self-adjoint on compactly supported smooth sections. The constant scalar potentials here preserve that property. One can use complete-manifold cutoffs in the deficiency-index argument; no boundary condition at conformal infinity is available or necessary. On this bounded-geometry family, elliptic regularity identifies the operator domains with H2 and the form domains with H1, uniformly locally in the source parameters.

Thus all three named closures are unique. The negative potential in O2 does not create a choice of extension; its positivity is established next. The first-order F has its own graph domain, which need not equal H1 because F is underdetermined; what is needed here is its continuous action on H1 and its natural pullback covariance. We do not identify an underdetermined first-order graph domain with a Sobolev domain without proof.

### 4.2 Scalar estimate stronger than needed

On the cyclic thermal quotient, f(rho) = sech(rho) is globally smooth and positive, and

\[
\frac{-\Delta f}{f}=1+\operatorname{sech}^2\rho.
\]

The ground-state-transform identity gives, for u compactly supported,

\[
\int|du|^2=\int(1+\operatorname{sech}^2\rho)|u|^2
             +\int f^2\left|d\frac{u}{f}\right|^2.
\tag{7}
\]

It descends through every twist theta. Therefore A >= 1 and O0 >= 5. Weyl sequences in long radial shells show that the scalar spectral bottom is 1, but the lower estimate alone suffices here. In particular neither A nor any shifted York scalar A+3 or A+4 has an L2 kernel. Constants are not L2.

### 4.3 Vectors

With delta = -div, the Hodge-Weitzenbock formula is

\[
\Delta_{H,1}=d\delta+\delta d=\nabla^*\nabla-2,
\qquad O_1=\Delta_{H,1}+4\geq4.
\tag{8}
\]

Thus the proper ghost kernel is absent. No assertion about a positive gap or kernel for the **unshifted** Hodge Laplacian is needed for this conclusion. In particular one must not silently replace the shifted ghost problem by an unshifted cohomology problem.

The gauge identity has the definite sign

\[
F(Kv)=-O_1v.
\tag{9}
\]

There are no L2 residual de Donder gauge transformations or L2 Killing vectors.

### 4.4 A tensor estimate on the full tracefree bundle

Define (Dh)_{ijk} = nabla_i h_{jk} - nabla_j h_{ik}; its displayed norm sums all three tensor indices, with no built-in two-form factor 1/2. For a symmetric tensor h, integration by parts and the specified curvature convention give

\[
\int\nabla_i h_{jk}\,\overline{\nabla^j h^{ik}}
 =\|\operatorname{div}h\|^2+3\|h\|^2-\|\operatorname{tr}h\|^2.
\]

Hence for tracefree h,

\[
\boxed{\quad
\|\nabla h\|^2=\tfrac12\|Dh\|^2
                    +\|\operatorname{div}h\|^2+3\|h\|^2,
\qquad
\langle h,O_2h\rangle
 =\tfrac12\|Dh\|^2+\|\operatorname{div}h\|^2+\|h\|^2.
\quad}
\tag{10}
\]

These identities begin on compact support and extend to the H1 form domain by density. They prove O2 >= 1 on all S2_0, so also on every reducing TT subspace. No TT lower-bound conjecture remains in this prescription. The coefficient 3 follows from the curvature contraction [nabla_k,nabla^l]h^{kj} = -3h^{lj}+g^{lj}tr(h), explicitly checked below.

## 5. York decomposition: what is proved and what is not

The formal adjoint of L is L* h = -2 div(h), and

\[
L^*L=2O_1+\tfrac23d\delta,
\qquad
\|Lv\|^2=2\|\nabla v\|^2+4\|v\|^2
                         +\tfrac23\|\operatorname{div}v\|^2
\geq8\|v\|^2.
\tag{11}
\]

This is a global Korn estimate. The closed operator L has domain H1, trivial kernel, and closed range. Consequently there is an honest Hilbert-space orthogonal splitting

\[
L^2(S^2_0)=\mathcal H_{TT}\oplus\operatorname{Ran}L,
\qquad
\mathcal H_{TT}=\ker L^*
 =\{h\in L^2(S^2_0):\operatorname{div}h=0\text{ distributionally}\}.
\tag{12}
\]

The natural differential intertwiners are

\[
O_2L=LO_1,\qquad O_1d=d(A+4).
\tag{13}
\]

Since O1 commutes with d delta, it commutes with L*L. The polar isometry

\[
U_L=L(L^*L)^{-1/2}
\]

is unitary from the full vector Hilbert space onto Ran L, and intertwines O1 with the restriction of O2 there. This can be established first through the heat equations on a smooth core and then extended by the bounded polar isometry. Thus the TT subspace in (12) reduces the unique full O2 realization, and its restriction is self-adjoint on H2 intersected with TT.

**A precise remaining core distinction:** this proves a reducing TT realization. It does not, by itself, prove that compactly supported smooth TT tensors form an operator core for that restriction. If a proposed reduced prescription instead starts with the minimal closure on C_c^infinity(TT), equality with the reducing realization requires a separate TT-core theorem. The unreduced Gaussian (1) needs no such assumption.

The exact/co-closed vector splitting requires no absent-harmonic-one-form assumption: A >= 1 makes d A^{-1/2} an isometry onto the closed exact subspace, whose orthogonal complement is ker(delta), including any harmonic sector if one existed. Under this splitting,

\[
L^*L\big|_{\ker\delta}=2O_1,
\qquad
(dA^{-1/2})^*L^*L(dA^{-1/2})=\tfrac83(A+3).
\tag{14}
\]

Equivalently, for Hf = Hess(f) - g Delta(f)/3,

\[
\|Hf\|^2=\tfrac23\langle f,A(A+3)f\rangle.
\tag{15}
\]

These estimates exclude scalar and vector York zero modes and show exactly which Jacobians a coordinate change would contain.

They do **not** say that the York Jacobian det(L*L)^{1/2} is a source-independent number. On its own it has spectral modulus dependence and can have identity/renormalized-volume dependence. In a finite-dimensional Gaussian its determinant cancels the corresponding change of covariance. The analogous cancellation may be made a definition using matched spectral coordinates/regulators. It must not be inferred from cyclicity of a renormalized spatial trace under the nonlocal U_L: a finite-part trace is not invariant under arbitrary nonlocal unitary conjugations. The full local formulation (1) avoids that issue. Its homogeneous-bundle branch decomposition supplies an independent consistency check, not a nonlinear measure theorem.

## 6. The nonidentity trace: a proper-time-integrable estimate

This is the main analytic interface. A fixed-proper-time argument alone would not suffice.

There are two distinct prescriptions to keep apart. An **image-first prescription** defines the identity finite part and the complete nonidentity orbital integral separately, and then integrates the latter in proper time; it does not by definition interchange a moving radial cutoff with the proper-time integral. The stronger statement needed to identify it with a **common-cutoff prescription** is that the full local image density is jointly absolutely integrable in space and dt/t, uniformly in the source family. Equations (20)-(25) prove that stronger statement here. It should not be exported to a nonlocal TT-projected kernel by scalar domination: a projected heat kernel already has a nonlocal initial projector, whereas the full local Laplace-type heat kernel has a delta-function initial condition.

### 6.1 Two covering-space heat bounds

On H3, the rank-(2s+1) homogeneous bundle has s = 0,1,2 for scalars, covectors, and tracefree tensors. The standard principal-series Plancherel decomposition has branches m = -s,...,s, real parameter lambda, Plancherel density proportional to lambda^2+m^2, and rough-Laplacian eigenvalues

\[
\lambda^2+1+s(s+1)-m^2.
\tag{16}
\]

Here is the full-bundle derivation, to distinguish it from citing a TT formula. Write G = SL(2,C), K = SU(2), and let V_s be the spin-s K-module. Sections are right-K-equivariant functions f(gk) = tau_s(k)^{-1} f(g), a closed summand of L2(G) tensored with V_s. In the ordinary G-Plancherel decomposition, the unitary principal series pi_(lambda,m) restricts to K as the multiplicity-one sum of V_l for l = |m|, |m|+1, ... . Frobenius reciprocity therefore selects **all** m = -s,...,s, not only the two extremal branches m = +/-s. There is no complementary-series or discrete-series summand in this L2(G) decomposition.

In the normalization of unit radial distance, the two complex angular-momentum labels are

\[
j_L=\tfrac12(m-1+i\lambda),\qquad
j_R=\tfrac12(-m-1+i\lambda).
\]

The connection Laplacian is the group Casimir minus the fiber K-Casimir. Direct substitution gives

\[
2[j_L(j_L+1)+j_R(j_R+1)]-s(s+1)
 =-[\lambda^2+1+s(s+1)-m^2],
\]

which is the eigenvalue of nabla^2 and proves (16). The ordinary rank-one complex-group Plancherel density is proportional to |m+i lambda|^2 = m^2+lambda^2. Choosing lambda >= 0 and all signs of m removes the Weyl equivalence (lambda,m) ~ (-lambda,-m). If Phi^(s)_(lambda,m)(e)=Id_(V_s) is the projected matrix coefficient, the coefficient of each branch in the bundle kernel is

\[
\frac{\lambda^2+m^2}{2\pi^2(2s+1)}\,d\lambda.
\]

The denominator 2s+1 disappears after taking the fiber trace at coincidence. In particular the full local diagonal trace for a constant shift mu is

\[
\frac1{2\pi^2}\sum_{m=-s}^{s}\int_0^\infty
 (\lambda^2+m^2)
 e^{-t[\lambda^2+1+s(s+1)-m^2+\mu]}d\lambda.
\]

The scalar branch fixes the volume normalization, since it gives (4 pi t)^(-3/2)e^(-t). This derives the full-bundle formula from ordinary group Plancherel; it is not an extra assumption that only TT modes exist. For an explicit reference in matching conventions, [David-Gaberdiel-Gopakumar, arXiv:0911.5085 v2, section 5.2 and equations (5.107)-(5.110)](<https://ar5iv.labs.arxiv.org/html/0911.5085v2#S5.SS2>) give these principal-series labels, multiplicity-one K-content and the extremal-branch density. Their section 2.1, equations (2.15)-(2.20), gives the equivariant-function/Casimir construction. The full-bundle extension above keeps each representation whose K-content contains V_s, instead of restricting to |m|=s. The reference itself points to Knapp, *Representation Theory of Semisimple Groups*, section II.4, for the ordinary principal series.

For the three operators the constant terms are respectively

- O0: 5;
- O1: 5 for m=0 and 4 for m=+/-1;
- O2: 5 for m=0, 4 for m=+/-1, and 1 for m=+/-2.

Only the fixed finite-dimensional fiber K-type occurs in the projected matrix coefficients (and finitely many nearby K-types after any fixed number of derivatives). For completeness, the needed matrix-coefficient estimate is elementary in the compact picture of a unitary principal series. Evaluation on a fixed K-type has a bounded norm depending only on that type; the lambda- and m-dependent inducing factors have unit modulus. Thus the absolute value of a normalized matrix coefficient is bounded by a fixed multiple of

\[
\Xi(d)=\int_K e^{-H(a_d^{-1}k)}dk
       =\frac12\int_{-1}^{1}\frac{du}{\cosh d-u\sinh d}
       =\frac d{\sinh d}.
\tag{17}
\]

Integrating the polynomial Plancherel density proves, in bundle operator norm,

\[
|K_j(t;p,q)|\leq C\,\Xi(d)\,t^{-3/2}(1+t)e^{-t},
\qquad d=d(p,q).
\tag{18}
\]

This uses the full local bundle, not a conjectured pointwise bound for a nonlocal TT projection.

Independently, heat-semigroup domination for a compatible connection and the exact scalar H3 kernel give the deliberately worst-case common bound

\[
|K_j(t;p,q)|\leq C\,\Xi(d)t^{-3/2}
                     \exp\left(t-\frac{d^2}{4t}\right).
\tag{19}
\]

For O2 the growing e^t is e^{2t} times the scalar kernel's e^{-t}. This observation also identifies a failed shortcut: **scalar domination alone does not control large proper time for O2.**

Taking the geometric mean of (19) with weight 1/4 and (18) with weight 3/4 yields

\[
\boxed{\quad
|K_j(t;p,q)|\leq C\,\Xi(d)t^{-3/2}(1+t)^{3/4}
              \exp\left(-\frac t2-\frac{d^2}{16t}\right).
\quad}
\tag{20}
\]

For d >= beta_* and any fixed 0 < eta < 1/(2 sqrt(2)), integration over dt/t gives

\[
\int_0^\infty\frac{dt}{t}|K_j(t;p,q)|
 \leq C_{\eta,\beta_*}e^{-(1+\eta)d}.
\tag{21}
\]

Indeed the proper-time exponential has optimized decay exp[-d/(2 sqrt(2))], and Xi supplies the additional exp(-d); polynomial factors can be absorbed by the strict inequality on eta. No cancellation between tensor components or between different fields is used.

### 6.2 Uniform orbital separation and conformal-boundary decay

For the nth nontrivial loxodromic image,

\[
\cosh d_n(\rho)
 =\cosh(n\beta)+[\cosh(n\beta)-\cos(n\theta)]\sinh^2\rho.
\tag{22}
\]

On every compact parameter neighborhood with beta >= beta_* > 0,

\[
d_n\geq |n|\beta,
\qquad d_n\geq 2\rho+|n|\beta-C_{\beta_*}.
\tag{23}
\]

For example cosh(d_n) >= (1-sech(beta_*)) cosh(n beta) cosh^2(rho), which gives the second estimate. The fundamental-domain volume measure integrated over the two periodic coordinates is

\[
2\pi\beta\sinh\rho\cosh\rho\,d\rho.
\]

Deck transport is fiberwise unitary, so its insertion in the image trace only multiplies the norm bound by the finite bundle rank. Equations (21)-(23) show

\[
\sum_{n\ne0}\int_{\rho>R}dV\int_0^\infty\frac{dt}{t}
 \left|\operatorname{tr}\big(K_j(t;p,a^np)\,a^n_*\big)\right|
 \leq C_\eta e^{-2\eta R}.
\tag{24}
\]

The sum in n is exponentially convergent uniformly in the parameter neighborhood. Near the core d_n >= |n| beta prevents an ultraviolet coincidence singularity. Thus Fubini, dominated convergence, the image sum, proper-time integration, and the limit R to infinity are legitimate in the **absolute** sense.

Because every bounded smooth source neighborhood has x_gamma uniformly comparable to exp(-rho), (24) gives an O(epsilon^{2 eta}) bound on the omitted image determinant tail for arbitrary smooth geodesic defining functions in that neighborhood. This directly excludes a residual image boundary term from a joint large-t/large-r limit.

### 6.3 Parameter and source derivatives

Here is the additional control needed beyond uniform convergence. Differentiating (22) gives

\[
|\partial_{\beta,\theta}^{\alpha}d_n|\leq C_\alpha |n|^{|\alpha|},
\qquad |\alpha|\geq1,
\]

uniformly in rho and locally in beta > 0. The tensor transport factors have the same type of control. One way to see the latter without a coordinate-frame singularity is to write a transverse radial boost B_rho and the deck matrix a_n in SL(2,C). The entries of B_rho^{-1} a_n B_rho are combinations of cosh(n(beta+i theta)/2), cosh(rho)sinh(n(beta+i theta)/2), and sinh(rho)sinh(n(beta+i theta)/2). Divide by the largest singular value exp(d_n/2). The normalized entries and their parameter derivatives are bounded by C_alpha |n|^{|alpha|}; the singular-value gap is at least 1-exp(-2 beta_*). Polar/Cartan projectors and the finite-spin transport factors inherit the bounds. Unphysical phase choices in individual Cartan factors can be avoided by using these projectors.

For any finite number of radial or compact-group derivatives of the heat kernel, differentiating a matrix coefficient in the compact picture raises the finite K-type by only a finite amount and inserts polynomial factors in lambda. Thus (18) continues to hold with extra finite powers of t^{-1} and (1+t). Standard interior parabolic derivative estimates, applied in fixed-size balls for t >= 1 and sqrt(t)-balls for t <= 1 to (19), give its derivative analogue with finite extra powers and a possibly weaker Gaussian exp[-d^2/(c t)] and exp(c' t). Interpolating with sufficiently small positive weight on the growing bound still gives

\[
\int_0^\infty\frac{dt}{t}
 |\partial_{\beta,\theta}^{\alpha}\text{(nth image density)}|
 \leq C_\alpha(1+|n|)^{N_\alpha}e^{-(1+\eta_\alpha)d_n},
\quad \eta_\alpha>0.
\tag{25}
\]

All constants are uniform on a smaller compact parameter neighborhood. This argument does not require that the sharp eta in (21) survive differentiation; any positive eta_alpha suffices.

It follows that every fixed finite number of modulus derivatives can pass through the image integral and sum. Source derivatives in sigma and phi are handled by exact geometric covariance plus the same differentiated tail bound for the moving exhaustion. The image functional is smooth in tau and constant along the sigma/phi representative directions. The identity functional is treated separately in the next section. Estimates here are local in beta > 0; they do **not** claim uniformity in the degenerating limit beta to zero.

### 6.4 The finite interface to the usual transverse/TT image prescription

**Yes: at a fixed flat thermal source, the unreduced local nonidentity trace equals the usual T/TT character-image combination.** The argument uses the semisimple orbital transform, not finite-part trace cyclicity under the nonlocal York polar isometry.

Here is the precise interface. Let f_t^(s,mu)(g) be the fiber trace of the G-equivariant heat kernel for the local spin-s connection Laplacian plus mu, regarded as a K-finite scalar test function on G. At each positive t it belongs to the Harish-Chandra Schwartz class, by its Gaussian spatial decay. Its principal-series character transform is

\[
\Theta_{m,\lambda}(f_t^{(s,\mu)})
 =\begin{cases}
 e^{-t[\lambda^2+1+s(s+1)-m^2+\mu]},& |m|\leq s,\\
 0,& |m|>s.
 \end{cases}
\tag{25a}
\]

To prove (25a), apply the Fourier-transformed matrix heat kernel to the invariant space (H_(m,lambda) tensor V_s)^K. The heat operator acts there by its Casimir multiplier, and this space has dimension one exactly for |m| <= s. Taking the trace gives (25a); the ambient dimension 2s+1 is not a multiplicity. A mathematical source for this general homogeneous-bundle argument is [Mueller-Pfaff, arXiv:1108.2454, section 4, displayed equations (4.17)-(4.20)](<https://ar5iv.labs.arxiv.org/html/1108.2454>): their proof is written for an associated tensor bundle and applies verbatim to V_s. Their section 5, Remark 3 also records the three-dimensional Plancherel polynomial (lambda^2+m^2)/(4 pi^2) with lambda on the full real line, equivalent to the half-line normalization used above.

For a_n with L_n = |n| beta and phi_n = n theta, choose alpha_n = exp[(L_n+i phi_n)/2]. The regular semisimple principal-series character is

\[
\chi_{m,\lambda}(a_n)
 =\frac{\cos(\lambda L_n+m\phi_n)}{\cosh L_n-\cos\phi_n}.
\]

Changing the orientation convention for the A factor changes the sign of lambda L_n but not the combined answer. Fourier inversion of the regular semisimple orbital integral gives, in the present primitive-length normalization,

\[
\mathcal O_n(f)
 =\frac{\beta}{2\pi}\sum_m\int_0^\infty
     \Theta_{m,\lambda}(f)\,\chi_{m,\lambda}(a_n)\,d\lambda.
\tag{25b}
\]

This is the rank-one Abel/orbital inversion formula: restriction to the compact centralizer supplies the M-weight m, Fourier transformation along the noncompact centralizer supplies lambda, and the conjugacy-class Jacobian gives the denominator cosh(L_n)-cos(phi_n). The centralizer quotient has primitive translation length beta, not |n| beta. The constant is fixed by the scalar local heat kernel; its direct radial integral is beta e^(-t-L_n^2/(4t))/(4 sqrt(pi t)[cosh(L_n)-cos(phi_n)]), exactly (25b) with m=0. The identity is a statement about a single semisimple orbital integral on G, so it does not require a finite-volume quotient. Our absolute estimates justify summing these integrals for the cyclic quotient. The analogous character formula is displayed in the versioned DGG HTML, section 6, equations (6.134)-(6.138). No analytic continuation of a finite-wall spectrum is being used.

Now apply (25a) to the three local operators. The m=0 multipliers all have the shift 5 and cancel in f_1-f_2/2-f_0/2. The |m|=1 multipliers have shift 4 and remain with coefficient 1/2. The |m|=2 multipliers have shift 1 and remain with coefficient -1/2. The usual transverse-vector and TT-tensor character prescriptions are precisely these two extremal pairs. Linearity of (25b) therefore proves, at each t>0 and each n != 0,

\[
\mathcal O_n(f_1-\tfrac12f_2-\tfrac12f_0)
 =\tfrac12 H_{1,T;n}^{\rm char}(t)
  -\tfrac12 H_{2,TT;n}^{\rm char}(t).
\tag{25c}
\]

Thus the already evaluated, convergent T/TT **image-first character sum** may be used for W_(not e) in (30); it is not an extra conjecture about the full local image answer. On the left, the stronger common-cutoff theorem proved above allows the proper-time integral and exhaustion to be exchanged. On the right, (25c) identifies the conventional orbital/character prescription; it does not require a new proof of absolute space/proper-time integrability for each separately projected nonlocal kernel. It also does not prove a compactly-supported-TT core theorem or an arbitrary York-measure identity.

All DGG and Mueller-Pfaff equation locators in this report refer to the **displayed HTML numbering in the fetched sources**. No claim has been made that these labels agree with a published PDF, and no fresh PDF-visual verification was performed.

## 7. Identity trace and geodesic renormalized volume

The covering-space diagonal trace k_j(t) is constant by homogeneity. Therefore, with the matching geodesic cutoff,

\[
\operatorname{Tr}_{R,\gamma}e^{-tO_j}
 =k_j(t)V_R[g_\gamma;x_\gamma]+H_j^{\ne e}(t;\tau).
\tag{26}
\]

The image part needs no finite-part prescription. Equation (24) is what justifies (26) at the determinant level, not only at fixed t.

For a geodesic expansion

\[
g=x^{-2}(dx^2+\gamma+x^2g_{(2)}+\cdots),
\quad \operatorname{tr}_\gamma g_{(2)}=-\tfrac12R_\gamma,
\]

one has

\[
dV_g=x^{-3}(1-\tfrac14R_\gamma x^2+\cdots)\,dx\,dA_\gamma.
\]

The integrated logarithmic volume divergence vanishes on the torus, although its local density need not vanish. Solving the geodesic eikonal equation gives x_hat = e^sigma x[1-|d sigma|^2 x^2/4+...], and comparison of finite parts yields

\[
V_R[e^{2\sigma}\gamma]-V_R[\gamma]
 =-\tfrac14\int_{T^2}(|d\sigma|_\gamma^2+R_\gamma\sigma)\,dA_\gamma.
\tag{27}
\]

This is a change of defining function on the same complete metric, not a Weyl transformation of the bulk metric. Diffeomorphism covariance pulls both arguments together in the evident way.

For the flat thermal representative, r = 1/z-z/4 and

\[
\operatorname{Vol}(z>\epsilon)
 =\pi\beta(\epsilon^{-2}-\tfrac12+\epsilon^2/16),
\qquad V_R[\gamma_\tau]=-\frac{\pi\beta}{2}.
\tag{28}
\]

The area-one rescaling does not change the finite part because the torus Euler characteristic is zero. Combining (2), (27), and (28),

\[
V_R[\gamma]
 =-\frac{\pi\beta}{2}
  -\frac14\int_{T^2}|d\sigma|^2_{\phi^*\gamma_\tau}\,dA_{\phi^*\gamma_\tau}.
\tag{29}
\]

Constant sigma has no effect, as required by the torus Weyl-anomaly formula. Nonconstant sigma generally does.

### Optional explicit identity coefficient in the stated zeta scheme

Equation (16) gives the following full local diagonal densities, with the common factor (4 pi t)^{-3/2} suppressed:

\[
\begin{aligned}
k_0 &: e^{-5t},\\
k_1 &: e^{-5t}+2(1+2t)e^{-4t},\\
k_2 &: e^{-5t}+2(1+2t)e^{-4t}+2(1+8t)e^{-t}.
\end{aligned}
\]

As a local consistency test their ranks are 1,3,5, and their t coefficients are -5,-9,+5, exactly the a1 coefficients for the specified scalar potentials and R=-6. Their Gaussian combination is

\[
k_1-\tfrac12k_2-\tfrac12k_0
 =(4\pi t)^{-3/2}\big[(1+2t)e^{-4t}-(1+8t)e^{-t}\big].
\]

Mellin continuation, with log det = - integral(dt/t) heat trace, therefore gives

\[
\boxed{\quad
\log Z_G[\gamma]
 =W_{\ne e}(\tau)-\frac{13}{6\pi}V_R[\gamma]+C_{\rm norm}.
\quad}
\tag{30}
\]

Equivalently its identity term is 13 beta/12 + (13/(24 pi)) integral |d sigma|^2. This number is a result for the precise local Gaussian and zeta scheme, not a scheme-independent assertion about a fully defined quantum-gravity measure. No thermal oscillator sum was recomputed here.

The identity proper-time integral has the usual small-t local ultraviolet subtraction; it is not asserted to converge absolutely before that subtraction. Its entire source dependence is the smooth factor V_R. Since the universal densities decay exponentially at large t, source differentiation and Mellin continuation commute after the fixed local subtraction. The image integral, by contrast, is already absolutely convergent without ultraviolet subtraction.

## 8. Boundary diffeomorphisms and possible extra factors

A smooth bulk vector with nonzero tangential boundary value Y obeys, in a conformal collar,

\[
|\xi|_g^2\sim x^{-2}|Y|_\gamma^2,\qquad
\|\xi\|^2\text{ contains }\int_0 x^{-5}dx.
\]

A pure boundary-Weyl/PBH-type radial vector xi^x = x sigma + higher terms instead has |xi|^2 of order one and an integral proportional to integral x^{-3}dx. Both are outside L2, hence outside the proper ghost form and operator domains. Even the boundary translations extending to bulk Killing fields are non-L2. Isometric transport of backgrounds in (6) is not a statement that these transformations are integrated as proper ghost gauge transformations.

More generally, in these coordinates smooth vector components vanishing as x^a are generically L2 only for a > 2; the borderline a=2 has logarithmic divergence. Merely saying that a vector vanishes at the boundary does not specify the present ghost domain.

The positive bounds (7)-(11) imply that this Gaussian has no L2 zero modes demanding collective-coordinate factors. Modulus variations change the leading conformal metric and are not L2 metric fluctuations: their pointwise tensor norm is generically order one over an infinite-volume end. They are external source/background variations here, not collective coordinates of (1).

The following potential additional factors must be distinguished:

1. **York coordinate Jacobians.** Their closed operators and absence of kernels are established in (11)-(15). An individual Jacobian is not constant in the source. A matched change of Gaussian coordinates may cancel it, but arbitrary separate finite-part regularizations need not obey nonlocal trace cyclicity. Equation (1) is already a prescription that avoids this ambiguity.
2. **Boundary determinants or edge measures.** A radial trace cutoff is not a hard boundary. It creates no boundary-value problem, boundary ghost spectrum, or Dirichlet-to-Neumann determinant. Such factors arise only after adding a different boundary phase space, a boundary integration measure, or an actual wall prescription.
3. **Residual translations and isometry volumes.** Fixing phi(p0)=p0 removes the redundancy in the source parametrization. It introduces no Faddeev-Popov factor when gamma is a prescribed source rather than an integration variable. A separately postulated quotient by non-L2 boundary isometries would require its own normalization, not a ghost zero-mode deletion.
4. **A full orbit measure.** The local spectral prescription cannot fix a factor inserted by a different nonlinear measure or an additional finite local counterterm. Multiplying (1) by a separately specified functional of gamma defines another prescription. The operator/domain results do not prove that such a modification is generated, nor that it is forbidden by a different theory.

Thus the strongest justified theorem is for the specified unreduced local Gaussian. It is stronger than a fixed-background oscillator check but weaker, and deliberately different, than general Brown-Henneaux/domain or metric-to-orbit equivalence.

## 9. Verification record and remaining limits

**Analytically established:** normalized local uniformization; complete hyperbolic source construction; exact isometric domain transport versus defining-function change; essential self-adjointness; scalar/vector/tensor gaps; closed-range York splitting; a reducing TT realization; an absolute image determinant tail bound; smooth source differentiation; the finite matching to the standard T/TT character-image prescription; geodesic renormalized-volume dependence.

**Standard analytic inputs used explicitly:** complete-manifold essential self-adjointness of compatible connection Laplacians; bounded-geometry elliptic and interior parabolic estimates; compact-torus elliptic parameter dependence; homogeneous-bundle principal-series Plancherel on H3; and regular semisimple orbital Fourier inversion for Harish-Chandra Schwartz test functions in section 6.4. The latter is a group-local orbital identity, not the assertion of a finite-volume global trace formula for this infinite-volume solid torus. The crucial matrix-coefficient bound was derived in the compact picture in (17), and the orbital estimate was derived rather than inferred from an oscillator sum. The homogeneous-bundle framework and transverse branches agree with David, Gaberdiel, and Gopakumar, [The Heat Kernel on AdS3 and its Applications, arXiv:0911.5085, v2](<https://ar5iv.labs.arxiv.org/html/0911.5085v2>), especially the homogeneous-bundle construction and the hyperbolic harmonic-analysis sections. That source's transverse heat kernel is not silently substituted for the full local bundle: the additional m branches in (16) are included here.

**Exact machine checks:** Wolfram 14.3 with the xAct core profile, using explicit coordinate tensors and arbitrary vector jets at a regular point, verified Ricci+2g=0, FK+O1=0, O2 L-L O1=0, and the Codazzi curvature contraction. It also checked the radial scalar supersolution, flat cutoff volume, Gaussian heat-density cancellation, and -13/(6 pi) Mellin coefficient. These are algebra/sign checks, not CAS proofs of functional analysis or trace interchange.

- [Source v1](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v1.wl>) and [actual v1 diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v1-output.txt>) are preserved. V1 collided with xTensor's protected symbol `delta`; the curvature-array check was consequently invalid, although the other listed residuals were zero. The tool marked the run failed. Its version field also resolved an xAct package version rather than the system kernel version. These faults were not suppressed.
- [Source v2](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2.wl>) applies only the explicit symbol-name correction to preserved v1. [Successful v2 diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2-output.txt>) contain the source hashes, true system kernel version, all-zero local residuals, and an empty message list. Exact structured output is preserved as [v2 WXF](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-functional-analysis-20261031-0434-c71d/checks-v2-output.wxf>).

**Not proved or not covered:** a compactly-supported-TT operator-core theorem; equality with arbitrary separately renormalized York determinant products; any nonlinear metric-to-orbit measure theorem; additional boundary integration measures; uniform estimates through beta=0 degeneration; finite-wall boundary-value problems; equality with all Brown-Henneaux phase-space domains. No numerical example is being promoted to one of those missing theorems.

The hardest issue for the local prescription was not positivity or a ghost kernel: it was the simultaneous proper-time/conformal-boundary limit. Equations (18)-(25) address that issue using a uniform absolute majorant. The hardest issue remaining for a **different, reduced orbit prescription** is matching the nonlocal decomposition, its precise domains, and its regularized measure to (1), not recomputing the known thermal oscillator product.
