# Independent gauge dictionary and domain investigation

## Verdict and scope

**The linearized geometric gauge dictionary exists, and the adapted frame + de Donder gauge is a genuine, unique gauge slice on explicit mixed Sobolev spaces. It is not an isomorphism of the unqualified ultralocal L2 field/ghost spaces.** There are compactly supported high-frequency counterexamples, and an L2 field whose proper H1 CS gauge orbit never meets the adapted slice. Moreover, complex-bilinear CS Lorenz gauge and Hermitian CS Lorenz gauge have different FP operators: the first has an explicit zero-energy Weyl sequence, whereas the second is coercive.

The later, separately supplied common-Casimir question has a positive answer at the differential/Sobolev/closed-operator level. This supports a **conditional common-fiber regulator gauge-independence theorem**, not an unregulated measure-preservation assertion and not an automatic spectral-zeta/eta comparison.

This investigation did not read parent candidates or prior result coefficients. It read the applicable root vault instructions, and loaded the math-computation skill and the Sage/xAct kernel instructions. No original research note was edited. No covariant-phase-space argument or charge definition is used, so the authoritative CPS formalism was not needed. The calculations below concern linear gauge orbits and operator domains, not the action or contour derivation. A further fresh child review was unavailable at the imposed delegation-depth limit; this report itself was independently commissioned without an initial candidate conclusion.

## 1. Conventions and geometry

Let M be the complete hyperbolic thermal solid torus, curvature radius one, Ric = -2g, with fixed marked conformal-boundary metric source. In cylindrical coordinates,

    g = dr^2 + sinh(r)^2 dphi^2 + cosh(r)^2 dt^2,
    (phi,t) ~ (phi+2pi,t) ~ (phi+theta,t+beta), beta>0.

The core r=0 is smooth, not a boundary. The conformal boundary is at infinite proper distance. All operators below use their complete-manifold closures, not a finite-wall BVP. Sobolev spaces use the geometric covariant derivative and the Riemannian volume. The quotient has bounded geometry (positive injectivity-radius lower bound, constant curvature).

Write [x,y]^a = epsilon^a_bc x^b y^c, with the exterior product included for forms. The specified generators satisfy [T_a,T_b]=epsilon_ab^c T_c and tr(T_a T_b)=-delta_ab/2; use -2tr as the positive inner product on real internal coefficients. The dual connection convention omega^{ab}=-epsilon^{ab}_c omega^c gives

    D_omega e = de + [omega,e],
    T = D_omega e,
    E = R_omega - (1/2)[e,e],
    F_A = E + i T,    A=omega+i e.

The background has E=T=0. Put nabla* nabla = -nabla^mu nabla_mu and Delta_H=d delta+delta d on one-forms. On this geometry Delta_H=nabla* nabla-2, so O1=nabla* nabla+2=Delta_H+4.

A global frame can be chosen with uniformly bounded connection coefficients and covariant derivatives. For example, in upper-half-space coordinates with loxodromic deck action (z,x+iy) -> (exp(beta)z,exp(beta+i theta)(x+iy)), the coframe

    e^1+i e^2 = exp[-i(theta/beta)log z] (dx+i dy)/z,
    e^3 = dz/z

is deck-invariant, smooth, oriented, and has bounded connection coefficients. Claims involving the non-tensorial coefficient i_xi omega use such a frame. The intrinsic covariant Sobolev statements do not depend on this presentation. An arbitrarily rapidly rotating frame need not have bounded i_xi omega.

## 2. Exact gauge dictionary, including field dependence

On the geometric real cycle set

    alpha = rho+i tau,  alphabar=rho-i tau,
    delta e = D_omega tau + [e,rho],
    delta omega = D_omega rho - [e,tau].                         (2.1)

The algebraic geometric parameters are

    tau = i_xi e,    lambda = rho-i_xi omega,
    alpha = lambda+i_xi A.                                    (2.2)

Here the frame convention is delta_lambda e=[e,lambda], delta_lambda omega=D_omega lambda. For arbitrary fields, not just the background,

    D_A(lambda+i_xi A) = L_xi A+D_A lambda-i_xi F_A,
    delta e = L_xi e+[e,lambda]-i_xi T,
    delta omega = L_xi omega+D_omega lambda-i_xi E.              (2.3)

Thus equality with a metric diffeomorphism plus rotation is exact on the flat background; away from it there are the displayed torsion/curvature terms. At the background delta g_mu nu=2 nabla_(mu xi_nu).

Field-dependent parameters cannot be held fixed in both descriptions. For a general field variation vA,

    v alpha = v lambda+i_(v xi) A+i_xi vA.                     (2.4)

In particular, at fixed xi,lambda the last term is present. At fixed CS alpha (and hence fixed rho,tau),

    v xi^mu = -e_a^mu (v e_nu^a) xi^nu,
    v lambda = -i_xi v omega-i_(v xi) omega.                    (2.5)

At fixed xi,lambda, linearizing (2.3) around the flat background gives

    v(D_A alpha) = L_xi vA+[vA,lambda]-i_xi D_A vA,
    vT = D_omega ve+[vomega,e],
    vE = D_omega vomega-[e,ve].                               (2.6)

The curvature-linearization term cannot be discarded for arbitrary off-shell fluctuations. Equivalently, the left side includes D_A(i_xi vA)+[vA,alpha].

For completeness, with field-space bracket convention [v1,v2]A=v1(v2A)-v2(v1A), field-dependent gauge parameters compose as

    alpha_* = [alpha1,alpha2]+v1 alpha2-v2 alpha1.

At fixed xi_i,lambda_i, this is

    alpha_* = [lambda1,lambda2]+L_xi2 lambda1-L_xi1 lambda2
              -i_[xi1,xi2] A-i_xi2 i_xi1 F_A.

This specifies the convention-dependent minus sign in the induced diffeomorphism bracket; the essential content is the two field-variation terms.

## 3. Field decomposition and derivative ghost shear

Let u=delta e, w=delta omega and U_mu nu=e_nu a u_mu^a. The pointwise decomposition is

    U_mu nu=(1/2)h_mu nu-epsilon_mu nu sigma r^sigma,
    h_mu nu=U_mu nu+U_nu mu,
    r^sigma=-(1/2)epsilon^sigma mu nu U_mu nu.                  (3.1)

Equivalently u_mu^a=(1/2)h_mu nu e^{a nu}+[e_mu,r]^a. Define

    C xi=(1/2)curl xi,    (curl xi)_nu=epsilon_nu^{rho sigma}nabla_rho xi_sigma,
    S(h)_mu nu=(1/2)epsilon_nu^{rho sigma}nabla_rho h_mu sigma.  (3.2)

Substitute (3.1) into the linearized torsion equation D_omega u+[delta omega(e),e]=0. In three dimensions, invertibility of e makes the algebraic map from a connection variation to its torsion variation invertible. Solving this equation, and identifying internal and tensor indices with the background frame, gives

    delta omega(e) = S(h)+D_omega r,
    k=w-S(h)-D_omega r.                                      (3.3)

The linearized CS gauge action is

    delta h = K xi := 2 nabla_(mu xi_nu),
    delta r = rho-C xi =: eta,
    delta k = 0.                                             (3.4)

In pure diffeomorphism-plus-rotation variables, eta=lambda+i_xi omega-C xi. Thus (rho,tau) <-> (xi,lambda) is algebraic, whereas the adapted rotation ghost eta is obtained by a first-order differential shear. These are distinct maps.

If the adapted parameter is promoted away from the fixed background, its field dependence must also be differentiated: v eta=v rho-(v C)xi-C(v xi), including variations of the frame identifications. In covector notation C_g=(1/2)*_g d, so v(C_g xi)=C_g(v xi)+(1/2)(v*_g)d xi. For a fixed vector xi its metric dual varies as v(xi-flat)=h(xi,·). On a two-form b, (v*)b=*[(tr h/2)b-h-sharp acting on each covariant slot of b]. These terms are absent only when defining the linearized FP operator at the single fixed background.

A useful exact curvature identity, checked with arbitrary vector components, is

    S(K xi)_mu nu-nabla_mu(C xi)_nu=epsilon_mu nu sigma xi^sigma.  (3.5)

Since [e_mu,tau] contracted with e_nu is -epsilon_mu nu sigma xi^sigma, (3.5) proves that (3.3) transforms exactly as w in (2.1), hence k is invariant. This is stronger than checking only the highest-order symbol.

## 4. Adapted gauge and its globally invertible FP operator

Use the explicit conditions

    r=0,
    F(h)_mu=nabla^nu h_mu nu-(1/2)nabla_mu tr(h)=0.             (4.1)

At the background,

    delta F = nabla^2 xi+Ric(xi)=-O1 xi,
    M_ad(rho,xi)=(rho-C xi,-O1 xi),
    M_ad = [[I,-C],[0,-O1]].                                  (4.2)

In the eta,xi coordinates the matrix is diag(I,-O1), but the coordinate change is differential, not bounded on L2 direct sums. Replacing F by -F makes the diagonal positive and fixes an otherwise harmless finite-dimensional gauge-orientation sign.

The supplied operator domains are realized by the complete Friedrichs closures:

    Dom(O1)=H2,  form domain H1,  O1=Delta_H+4 >=4.

For s>=0 integer, O1:H^{s+2}->H^s is an isomorphism. Consequently,

    M_ad: H^{s+1}_rho x H^{s+2}_xi
                 -> H^{s+1}_r x H^s_F                        (4.3)

is an isomorphism. In the less restrictive FP operator bookkeeping one also has M_ad:L2_rho x H2_xi -> L2_r x L2_F, and at form level M_ad:L2_rho x H1_xi -> L2_r x H^{-1}_F. These last two statements alone do not assert that every such ghost generates an admissible transformation of the mixed field domain below.

### Mixed-domain gauge-slice theorem

Define

    E_s = H^{s+1}(T*M tensor internal)_u x H^s(T*M tensor internal)_w,
    G_s = H^{s+1}_rho x H^{s+2}_xi.

Then (u,w) <-> (h,r,k) is a bounded isomorphism

    E_s <-> H^{s+1}(Sym2)_h x H^{s+1}(T*M)_r x H^s(T*M tensor T*M)_k.  (4.4)

The gauge generator maps G_s continuously into E_s. Every field in E_s has a unique G_s-proper gauge transformation to (4.1):

    xi=O1^{-1} F(h),
    rho=-r+C xi.                                              (4.5)

The resulting section and inverse coordinate reconstruction are bounded in the indicated norms. This gives a global linear gauge slice, without a boundary wall and without a determinant assumption. In particular E_0 is compatible with H1 metric form domains and an L2 independent connection/contorsion variable.

The elementary ghost shear itself is an isomorphism

    H^{s+1}_xi x H^s_rho <-> H^{s+1}_xi x H^s_eta.             (4.6)

With a bounded frame as in section 1, the algebraic (rho,tau) <-> (xi,lambda) map is bounded on equal-order Sobolev spaces, including L2. Without a frame bound the term i_xi omega invalidates that assertion.

## 5. Explicit obstructions in L2

### 5.1 Compactly supported high-frequency counterexamples

Choose an interior coordinate ball, a real smooth compactly supported amplitude chi, a phase phi with dphi nonzero on its support, and a unit one-form v orthogonal to dphi. Put

    h_N=chi cos(N phi) v tensor v,  r_N=0,  w_N=0.

All fields are smooth and compactly supported, so they satisfy every complete Sobolev domain and change no boundary source. Their L2 norms remain bounded and nonzero, whereas

    ||S(h_N)||^2/N^2 -> (1/8) integral chi^2 |dphi|^2 dvol >0,
    ||h_N||^2 -> (1/2) integral chi^2 dvol.

The field map sends k_N=-S(h_N), whose norm grows linearly in N. Its inverse also fails to be L2 bounded: input (h_N,0,0) reconstructs w_N=S(h_N). This disproves bounded L2 equivalence in both directions.

Likewise, with xi_N=chi cos(N phi) v and rho_N=0,

    ||C xi_N||^2/N^2 -> (1/8) integral chi^2 |dphi|^2 dvol,

so eta_N=-C xi_N is unbounded in L2. The obstruction is a genuine transverse principal symbol, not a boundary issue. At a unit phase covector the complete spin-connection symbol on nine frame components has rank six; its three-dimensional kernel consists of leading pure-gradient frames. That degeneracy means the maximal graph domain of the spin-connection differential operator is generally larger than H1, not equal to it.

### 5.2 The adapted gauge is not a section of the whole L2 CS quotient

Take a compactly supported r in L2 but not H1, for example a smooth cutoff times |x1|^(1/4) times a fixed local internal vector. Let

    u=[e,r],    w=0.

This is an L2 field, with h=0. A proper CS gauge parameter in H1 produces an L2 field variation. If its transformed field obeys de Donder gauge, the weak equation O1 xi=0 forces xi=0. The frame condition then requires rho=-r, which is not H1, and w'=D_omega rho is not L2. Thus this orbit has no representative in the adapted slice within the L2 field space and H1 gauge group.

The smooth approximation r_N=chi cos(N phi)v gives the corresponding unbounded change-of-section sequence: frame fixing requires w'=-D_omega r_N, of size N. Hermitian Lorenz projection, in contrast, is a bounded orthogonal L2 projection. This distinction must not be hidden by a finite-dimensional-looking triangular matrix.

## 6. Kernels, stabilizers, and what 'proper' must mean

The real geometric CS generator on the original ultralocal field norm is

    G(rho,tau)=(D_omega rho-[e,tau], D_omega tau+[e,rho]).      (6.1)

Writing J_mu v=[e_mu,v], J_mu is real skew-adjoint, sum J_mu J^mu=-2I, and D_omega J=0 as a tensor. Integration by parts gives

    G^dagger G = O1 direct-sum O1,
    ||G(rho,tau)||^2=||nabla rho||^2+||nabla tau||^2
                     +2||rho||^2+2||tau||^2.                 (6.2)

The one-form Weitzenbock identity sharpens the lower bound to 4(||rho||^2+||tau||^2). Hence G:H1 x H1 -> L2 x L2 is injective with closed range. Completion of compactly supported ghosts in the gauge-variation graph norm is exactly H1 x H1. There are no proper L2 CS stabilizers, no L2 Killing vectors, and no residual adapted-gauge stabilizers.

For completeness, the stated metric reference operators have no L2 kernels. O0=-Delta+4>=4. For a compactly supported symmetric tensor h, define (d^nabla h)_mu nu rho=nabla_mu h_nu rho-nabla_nu h_mu rho, with the full ordered-index tensor norm. Constant curvature gives

    ||nabla h||^2=(1/2)||d^nabla h||^2+||div h||^2
                   +3||h||^2-||tr h||^2.

For full tracefree h this proves O2=nabla* nabla-2>=1, not merely on TT tensors. The identity extends to H1 by density. Elliptic regularity and bounded geometry give the stated H2 operator domains.

Global unrestricted flat-connection stabilizers do exist. For regular loxodromic holonomy, ker D_A among smooth unrestricted adjoint sections is the holonomy centralizer: complex dimension one, or two real dimensions on the paired real cycle. They correspond to the two continuous thermal isometries, with compensating frame rotations. They are not L2. The spin-lift central sign does not affect this adjoint statement.

Therefore 'CS proper = geometric L2 proper' is **not automatic**. It holds if the CS ghost space is explicitly the invariant L2/H1 completion above and the geometric comparison uses the same frame/domain conventions. It need not hold if 'proper' is instead defined by coordinate boundary vanishing, unspecified charge conditions, or merely G(alpha) in L2: the non-L2 covariantly constant stabilizers already satisfy G(alpha)=0. No charge-based properness conclusion is claimed here. Pure boundary tangential/Weyl source vectors remain outside the stated L2 ghost space.

## 7. Two inequivalent meanings of CS Lorenz gauge

### 7.1 Hermitian Lorenz gauge

The genuine Hermitian adjoint uses the positive real-cycle norm, equivalently the conjugate complex connection. Its real form is

    H_L(w,u)=G^dagger(w,u),
    M_L=G^dagger G=O1 direct-sum O1.                          (7.1)

Thus it is a coercive gauge with H2 ghost operator domains, and it gives the bounded orthogonal section ker G^dagger of the full L2 field space. It has two differential ghost blocks, unlike the adapted gauge's one algebraic and one differential block. Equal FP determinants by themselves are neither expected nor necessary; section/delta-function Jacobians must be included.

### 7.2 Complex-bilinear covariant Lorenz gauge

If instead 'Lorenz' means the complex-bilinear divergence -D_A^mu a_mu, with no conjugation of A, its ghost operator is

    Q_A=-D_A^mu D_A_mu=nabla* nabla-2-2i curl
        =Delta_H-2i curl,
    Q_Abar=Delta_H+2i curl.                                  (7.2)

On real rho,tau coefficients the paired matrix is

    [[Delta_H, 2 curl],[-2 curl, Delta_H]].                   (7.3)

Both use H2 domains, but these are not the operators (7.1). A third choice, omega-covariant or ordinary d-divergence, would require yet another explicit FP calculation; the word 'Lorenz' alone does not specify it.

### Zero kernel but no bounded inverse: an explicit theorem

Let b=f(r)dphi, supported away from the smooth core. Then exactly

    delta b=0,
    curl b=f'(r)coth(r) dt,
    Delta_H b=[-f''(r)+(coth r-tanh r)f'(r)]dphi.              (7.4)

Set f_{R,L}=L^(-1/2)chi((r-R)/L), chi a fixed nonzero smooth bump in (0,1). Because ||f dphi||^2 is a fixed torus-area factor times integral f^2 coth r dr,

    ||b_{R,L}|| -> nonzero constant,
    ||curl b_{R,L}||=O(L^-1),
    ||Delta_H b_{R,L}||=O(L^-2+exp(-2R)L^-1),
    ||Q_A b_{R,L}||=O(L^-1).                                (7.5)

Taking R,L to infinity gives an escaping Weyl sequence. The H2 norms stay bounded by elliptic graph estimates. Thus Q_A has no bounded inverse on its H2->L2 realization, nor a positive L2 coercivity constant.

Its L2 kernel nevertheless vanishes. For Q_A b=0, the real part of <b,Q_A b> is ||db||^2+||delta b||^2, so b is an L2 harmonic one-form. To rule those out directly, use the conserved harmonic-one-form stress tensor and

    X=grad log cosh r,
    Hess(log cosh r)=diag(sech^2 r,1,tanh^2 r),
    Delta log cosh r=2

in the orthonormal cylindrical frame. X and its derivative are bounded and smooth at the core. Integration against complete cutoffs yields

    integral [tanh^2 r |b_r|^2+sech^2 r |b_t|^2] dvol=0.

Thus b has only a phi component; closedness and coclosedness leave a constant multiple of dphi, excluded by core smoothness and L2. The argument applies separately to real and imaginary parts.

A numerical H2-domain illustration uses chi(s)=sin^2(pi s) on [0,1], zero outside (C1, piecewise smooth, H2; not asserted C-infinity). For R=L, the returned ratios were:

| L | ||Q_A b||/||b|| | ||O1 b||/||b|| |
|---:|---:|---:|
| 4 | 2.306365615878598 | 4.960777347382873 |
| 8 | 0.9743211942586535 | 4.215657579409163 |
| 16 | 0.4621081372124235 | 4.052056353116768 |
| 32 | 0.2278149201580667 | 4.012892202319374 |
| 64 | 0.1134989555606261 | 4.003215340237220 |

Here L||Q_A b||/||b|| tends to 4pi/sqrt(3)=7.255197456936871. The analytic estimates (7.5), not the finite table, prove loss of invertibility.

## 8. Separately supplied follow-up: common Casimir intertwiners

This section was investigated only after the initial independent findings above were sent to the parent.

On spin-s irreducible tensors define R_s=nabla* nabla+4-s(s+1). On the full two-tensor K,

    R_K K=nabla* nabla K-2 K^T+2g tr K.                      (8.1)

It restricts to O2 on symmetric tracefree tensors, O1 on antisymmetric tensors identified with vectors, and O0 on traces. Let R_sym be its restriction to symmetric h. The following are exact differential identities:

    R_K(nabla v)=nabla(R1 v),
    R_K S(h)=S(R_sym h),
    R1 C=C R1,
    R_sym K=K R1,
    R1 F=F R_sym.                                           (8.2)

Parallel symmetrization, trace, axial dualization, and the algebraic J map also intertwine the corresponding R. Thus the full linear field and ghost differential shears, G, the adapted gauge, and Hermitian Lorenz gauge intertwine their common block regulators.

For example, the first identity follows from

    [nabla^2,nabla_mu]v_nu
       =-2nabla_mu v_nu-2nabla_nu v_mu+2g_mu nu div v.

The second follows by contracting the constant-curvature commutator with the parallel epsilon tensor; equivalently

    [nabla^2,S]h=2S(h)-2S(h)^T-2S(g tr h).

Direct component computations with six arbitrary functions h_ij(r,phi,t) and three arbitrary v_i(r,phi,t) returned identically zero 3x3 residuals for both nontrivial identities. These were not radial-only or numerical tests.

### Precise Sobolev and closure statement

All R blocks are positive, self-adjoint, with domain H2 and form domain H1; they control the corresponding Sobolev norms. The differential intertwining B R_in=R_out B, for any first-order B in (8.2), holds on C-infinity compact support and extends as an equality H^{s+3}->H^s. In particular it is an equality of L2-valued expressions on H3.

The bounded transform

    T_B=B R_in^(-1/2):L2_in -> L2_out                        (8.3)

is well-defined. For f in H2, R_in^(-1/2)f is in H3, so

    T_B f in Dom(R_out),    R_out T_B f=T_B R_in f.

Self-adjoint resolvent calculus now implies

    T_B E_in(I)=E_out(I) T_B                                 (8.4)

for every Borel spectral projector, and the analogous relation for bounded spectral functions. Hence B intertwines spectral functions on H1, with its usual H1->L2 interpretation. In particular on a common spectral band R<=Lambda its norm is bounded by a constant times sqrt(Lambda), not uniformly in Lambda.

There is also a closed-operator version. The first-order operators here have bounded principal symbols and smooth bounded-geometry coefficients. Completeness, cutoff approximation, and local Friedrichs mollification identify their minimal and maximal L2 graph closures, with C-infinity compact support as graph core. Approximate a graph-domain element by that core and use (8.4), first on H1 and then by graph closure: E_in(I) preserves Dom(closure B), and

    closure B E_in(I)=E_out(I) closure B.

This is the strong intertwining statement. It does **not** identify Dom(closure B) with H1 for a nonelliptic B, nor turn B or the triangular field/ghost shear into an L2-bounded operator.

## 9. Separately supplied follow-up: finite common-fiber gauge agreement

### Finite-dimensional theorem

Let V be a real finite-dimensional field space with its specified ultralocal volume, W the corresponding gauge-parameter space with its specified volume, and G:W->V injective. Let the quadratic form vanish on gauge directions and descend to a nondegenerate quotient Gaussian (possibly on a specified complex Gaussian thimble). For a hard gauge H:V->W with HG invertible, use the same quotient thimble and consistent gauge orientation. Then

    integral_V da delta(Ha) |det(HG)| exp[-Q(a)/2]
      = sqrt(det(G^dagger G))
          integral_ker(G^dagger) dx exp[-Q(x)/2].             (9.1)

For oriented delta functions/Grassmann ghosts, replace absolute determinants by oriented ones and fix the common orientation. The displayed formula is first the real convergent Gaussian statement; its common-thimble version is finite-dimensional analytic continuation with compatible lifted cycles, not an undefined real delta function of a complex argument. This is an ordinary change-of-variables theorem: write a=x+G epsilon; the field-volume Jacobian is sqrt(det G^dagger G), while delta(Hx+HG epsilon) cancels the FP determinant. No claim about the (h,r,k) Jacobian is needed.

On a common spectral fiber R1=lambda, the present operators give

    G_lambda^dagger G_lambda=lambda I on both ghost copies,
    H_ad G_lambda=[[I,-C_lambda],[0,-lambda I]],
    H_L G_lambda=lambda I direct-sum lambda I.                (9.2)

For nonempty ghost fibers lambda>=4, so both are invertible. Formula (9.1) proves their agreement, although the FP determinants alone differ. A rational finite-dimensional algebraic toy model (not a physical spectral sample) returned adapted FP determinant -5, Lorenz FP determinant 25, delta-function Jacobians 5 and 1, respectively; the absolute FP times delta Jacobian was 25 in both gauges, with the same quotient quadratic form.

### What this does and does not establish on the solid torus

Casimir commutation alone is not a finite-dimensional regulator: spectral bands on this noncompact manifold have continuous spectrum and infinite dimension. A legitimate refinement is the joint spectral decomposition with the two torus characters exp[i m phi+i(2pi n-m theta)t/beta]. All the natural operators above commute with those isometries as well as R. At fixed torus character the tensor systems are finite-rank radial differential systems; their self-adjoint spectral multiplicities are finite almost everywhere. The joint generalized spectral fibers can therefore support the finite-dimensional algebra (9.1), pairing conjugate characters for the real cycle.

This yields a precisely conditional regulator bridge: **define the common regulated Gaussian by the same finite-fiber quotient density, do the FP/section cancellation fiberwise, and only then apply the same spectral and multiplicity/relative-trace integration prescription.** In that named common-fiber regulator the adapted and Hermitian Lorenz gauges agree. For a literal product of independent fiber Gaussians, the quotient Hessian and chosen contour must also reduce under the common joint spectral decomposition; the intertwiners of G and the gauge conditions alone do not prove this action/contour hypothesis. This is not a literal finite-dimensional invariant subspace cutoff in physical L2, and ordinary infinite-dimensional Lebesgue measure does not exist. The divergent identity-volume piece on the thermal quotient still needs one common treatment.

Three additional conditions cannot be omitted:

1. The regulated field/ghost volumes and delta-function target volumes are induced from the same original ultralocal norms. Different independent 'flat measures' after a derivative shear are not covered by (9.1).
2. Both gauge cycles must be lifts of the same quotient Gaussian thimble. A real-linear section map can be complexified, but independently rotating trace/connection variables is not automatically the same lifted cycle. The action/contour verification belongs to the parent investigation.
3. Orientation/phase choices must match. Replacing F by -F removes the finite-dimensional sign det(-O1); uncontrolled infinite products of such signs are not a proof of eta-phase equality.

The adapted section is bounded on each finite common spectral band, with constants that can grow as sqrt(Lambda), and on the mixed spaces of section 4. It is not a global bounded L2 section (section 5.2). Therefore this result is a gauge-agreement theorem **within the explicitly named common-fiber prescription**, not an automatic equality to separately defined spectral-zeta/eta determinants. Existence and normalization of a desired infinite regulated integral, and comparison to another regularization, remain separate analytic questions.

## 10. Verification record and remaining limitations

Analytic results established here: exact gauge/field dictionary with field dependence; mixed-Sobolev slice theorem; explicit high-frequency and nonsmooth-domain counterexamples; kernel/stabilizer classification on the proper spaces; the distinction between the two Lorenz operators; a zero-kernel/no-bounded-inverse theorem for bilinear Lorenz; strong Casimir intertwining; finite-fiber FP/change-of-section theorem with its hypotheses.

Actual computational checks: eight exact Lie/principal-symbol checks passed; the cylindrical Ricci, arbitrary-vector de Donder variation, stress-vector Hessian, and radial curl residuals vanished; arbitrary-tensor/vector Casimir residuals vanished; the exact torsion-free gauge and Codazzi commutator residuals vanished; seven rational finite-fiber checks passed; the H2 Weyl sequence was evaluated numerically. One finite-fiber output attempt failed only at JSON serialization of a Sage Integer; the corrected serialization rerun passed and the failure is recorded rather than counted as a mathematical check.

Not established here: the parent action/contour normalization, charge-based definitions of properness, an unconditional infinite-dimensional determinant of the differential shears, or equality of a common-fiber regulator with an independently specified spectral-zeta/eta prescription. The report's proofs do not rely on any earlier result coefficient.

The complete exact-code and actual-return index is [checks.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/checks.md>); provenance and code hashes are in [manifest.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/manifest.json>).
