# Smooth-Sobolev BV transport and fixed-band stationary jets

## Decisive result

**The exact local canonical and action identities of note 16 extend to a nondegenerate neighborhood in the all-Sobolev space, with the actual completed relative action at infinity. Every finite total-field stationary tree jet after a continuous tangent-to-identity canonical change is well-defined and continuous on the fixed spectral band.** Neither statement requires a single product Banach space preserved by both BRST vector fields.

There is also a useful stronger, but differently scoped, existence statement. The particular algebraic canonical map of note 16 produces a first-order local geometric action. On equal-order Sobolev spaces with, safely, integer s >= 3, its stationary equation is a small analytic contraction because h compensates the one derivative lost by the nonlinear gradient. This does **not** make its BRST vector field an endomorphism of that Banach space. Convergence in one such Sobolev norm is not, by itself, convergence in the entire all-Sobolev topology.

The main boundary distinctions are essential:

- The displayed BV density primitive starts at fluctuation order two, not one. Its boundary integral vanishes by a two-factor trace estimate.
- The map also changes the physical wall away from a compact-support collar. That change starts at order two and obeys the same trace estimate; it must not simply be omitted.
- The raw classical contorsion and CS--Palatini transgression fluxes have order-one terms. They need not vanish even for all-Sobolev fields. They cancel in the completed action at the same finite radius.
- The type-II generating functional must be written in background-relative affine coordinates before integration. Its isolated momentum-times-background terms need not be integrable.

No induced retained canonical map is assumed or proved here. In particular, existence of the two stationary actions does not identify the two stationary fibers or prove that their naive projected coordinate maps are canonical.

## 1. Inputs, conventions, and meaning of the theorem

The geometric setting and operators are those of [note 18:27--29](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L27-L29>): complete H3 or a fixed complete cyclic loxodromic quotient, fixed positive translation length, curvature radius one, and a fixed nondegenerate on-shell coframe and connection. Constants are allowed to depend on this fixed quotient; no cusp/degeneration-uniform assertion is made.

Use a = (16 pi G)^(-1), kappa = 2a, epsilon_123 = 1, omega^{ab} = -epsilon^{ab}{}_c omega^c. The coefficient-first antibracket has (q,p)=1 and QF=(S,F); physical-antifield BRST terms have positive signs and ghost-antifield terms negative signs. When totalized, use exactly the sign dictionary in [note 18:71--103](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L71-L103>). This is a Euclidean bulk odd BV problem, not the Lorentzian even CPS form or a boundary BV--BFV theorem. The boundary-preserving discipline is the one in [the CPS convention:7--25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>).

Let E^p be the full real gravitational Lie-algebra-valued p-form bundle of note 18, including both internal copies. Use the positive Hilbert norm, the cyclic pairing B, the complete positive operator Delta >= 1, and

    ||u||_s = ||Delta^(s/2) u||_2,
    E_infinity = direct_sum_(p=0)^3 intersection_(m>=0) H^m(E^p).

The topology of E_infinity is its Sobolev Fréchet topology. The geometric and spectral norms are equivalent on each fixed background. Let

    P = 1_[0,Lambda^2](Delta),  R = 1-P,
    h = delta Delta^(-1) R,  Lambda > 1.

The totalized h has the prescribed graded sign. We use the already established complete operator, not a replacement de Rham model. Its identities and estimates are the input in [note 18:183--222](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L183-L222>):

    Dh+hD=R, h^2=0, hP=Ph=0,
    ||h u||_(s+1) <= ||u||_s.

All statements about odd variables mean coefficientwise superalgebraic identities. Finite formal jets use exterior powers for odd variables and symmetric powers for even ghost antifields. Even ghost antifields are not declared nilpotent. “Finite jet” below means a finite Taylor jet in **all retained fluctuations about the fixed background**, not an unproved resummation in the physical variables followed by a transverse formal expansion.

## 2. Background splitting and the coframe inverse

Write e = ebar+f and omega = omegabar+w. The correct fixed linear ghost identification is

    eta = lambda + i_xi omegabar,
    zeta = i_xi ebar.

It is a connection-dependent covariant splitting, not an assertion that the raw connection coefficients are globally bounded scalar multipliers. In this splitting, xi = ebar^(-1) zeta. The corresponding fixed cotangent transformation is

    eta* = lambda*,
    zeta*_a = ebar_a^mu (xi*_mu - omegabar_mu^b lambda*_b),

with physical antifields unchanged. This is also the linearization of [note 16, equations (7)--(8)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L139-L161>). Thus source and target have the same background linear BV coordinates; the remaining map T is tangent to the identity.

In a background orthonormal frame, write e^a=(delta^a_b+F^a_b) ebar^b. Restrict, for example, to ||F||_(L-infinity)<epsilon<1. Then the inverse coframe is uniformly bounded and

    (1+F)^(-1)-1 = -(1+F)^(-1) F.

For s>3/2, Sobolev multiplication and smooth composition show that this difference lies in H^s whenever F does. Differentiating the inverse recursively gives the same statement at every Sobolev order. The coframe inverse, determinant ratio, and their smooth rational expressions therefore preserve E_infinity. The map is smooth in the Fréchet sense and analytic on each sufficiently small equal-order H^s neighborhood. This is a genuine open coframe patch, not merely a pointwise formal assertion.

The all-Sobolev assumption also rules out a hidden loss of asymptotic invertibility: local bounded-geometry Sobolev estimates imply that F and each fixed number of its derivatives tend uniformly to zero outside compact sets. Consequently, if an all-Sobolev perturbation is everywhere nondegenerate, its inverse has a uniform lower singular-value bound, after also checking a compact interior. The small patch above is sufficient and avoids an unnecessary global chart discussion.

For example, equation (7) becomes

    tau* = e^(-1) [ ebar zeta* - w lambda*
                   + kappa^(-1) omega* wedge i_(partial_mu) e* ],

with the displayed contraction indices understood as in the original equation. The background connection has canceled from this expression. Every remaining coefficient is a bounded smooth background tensor, an all-Sobolev fluctuation, or a smooth function of the uniformly invertible relative coframe.

The source BRST differential contains at most finitely many covariant derivatives and products. The fixed background is on shell, so it produces no non-L2 constant equation-of-motion term. It is therefore a continuous graded vector field on E_infinity. This does not contradict the finite-Sobolev no-go theorem.

## 3. The integrated odd symplectic identity

The unshifted type-II expression contains

    integral [e_c* ebar + omega_c* omegabar].

Those isolated linear expressions need not exist on an infinite-volume L2-based space. They must be removed at the density level when passing to affine fluctuation coordinates, not assigned a value by an unmentioned finite part.

After that subtraction and the fixed ghost splitting, the relative generator is

    F_rel = integral {
      e_c* f + omega_c* w + rho* eta + tau* zeta
      + rho* i_xi w + tau* i_xi f
      + kappa^(-1) e_c* wedge i_xi omega_c*
      + (2 kappa)^(-1) e_c* wedge i_xi^2 rho*
      + (2 kappa)^(-1) omega_c* wedge i_xi^2 tau*
      + (3 kappa)^(-1) tau* i_xi^3 rho* }.

Its quadratic part is the identity generator. All other terms have degree at least three. Each integral is finite by L2 times L2, with additional factors in L-infinity. The local type-II differential identity is algebraic in spacetime; there is no integration-by-parts primitive in this step. The resulting map is the exact map of note 16, now expressed relative to its background linearization. Its inverse is defined on a sufficiently small coframe patch, either directly from the local supermap or by the local analytic inverse theorem at each equal-order H^s level.

Thus

    T^* Omega_CS = Omega_geom

as continuous weak odd two-forms on E_infinity. The assertion is weak symplectic: it does not claim that every continuous cotangent functional on this Fréchet space has a Hamiltonian vector field. The explicit BRST vector fields and the formal transformed vector fields used below do have one.

In fact this algebraic symplectic statement already makes sense on a small equal-order H^s space for s>3/2. At that level the vector field itself may lose a derivative, so the result does not furnish a common Q-stable product Banach completion.

## 4. What actually happens to the boundary primitives

### 4.1 Uniform trace lemma

Let Sigma_R be a standard large geodesic sphere or the closed cyclic tube, and C_R a unit-width radial collar. Their geometry is uniformly controlled for large R on either fixed background. For every nonnegative integer j,

    ||nabla^j u||_(L2(Sigma_R))
      <= C_j ||u||_(H^(j+1)(C_R)) -> 0

for u in E_infinity. The limit holds for **every** sufficiently large R, not just a coarea subsequence: the collar is contained in the global Sobolev tail outside radius R-1.

Consequently, for a monomial with two or more all-Sobolev factors, possibly differentiated finitely many times, and bounded smooth background coefficients,

    integral_(Sigma_R) |A u_1 ... u_k|
       <= C product_(i=3)^k ||u_i||_infinity
              ||u_1||_(L2(Sigma_R)) ||u_2||_(L2(Sigma_R)) -> 0.

Choose the two decaying factors after accounting for derivatives. The same products and their first derivatives are in L1(M). This is the needed boundary theorem; density by itself is not a substitute for it.

### 4.2 The actual BV action primitive

The totalized primitive in [note 16, equation (11)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L223-L238>) is

    B_BV = I(e_a e*^a) - Phi^*(tau_a e_c*^a).

Count each fluctuation, ghost, and antifield as degree one. At lowest order tau=i_xi ebar and e_c*=e*. Since I is an even derivation in the totalized convention,

    (B_BV)_2 = ebar_a I(e*^a).

The term (I ebar) e* has canceled between the two displayed summands. This remaining expression contains a ghost and an antifield; it is not a linear antifield flux. Every higher term still has at least two decaying factors. The coframe inverse does not change that minimum order.

It follows directly from the trace lemma that

    B_BV in W^(1,1),
    lim_(R->infinity) integral_(Sigma_R) B_BV = 0,
    integral_M d B_BV = 0.

This is the actual infinity primitive of the source identity, with its original totalization signs. No assumption of vanishing pointwise boundary values or of L2 being contained in L1 has been used.

### 4.3 The physical wall changes under the BV map

Outside the original compact-support collar, the map is no longer literally the identity on physical variables. Rather,

    e_c-e = kappa^(-1) i_xi omega* + higher terms,
    omega_c-omega = kappa^(-1) i_xi e* + higher terms.

Both differences begin at degree two. Their first spatial derivatives are sums of products of two decaying factors. The normal determined by the coframe is a smooth algebraic function of the tangential coframe on the uniformly nondegenerate patch.

The completed Palatini wall is first order in that normal/coframe data and affine in the connection. Taylor expansion of its difference between (e_c,omega_c) and (e,omega), coefficientwise in the graded variables, therefore has bounded coefficients multiplying at least two decaying factors, with at most one derivative. The trace lemma proves that this difference vanishes at infinity. The map-induced difference of the classical transgression has the same property.

Hence the finite-radius identity consists of the displayed BV primitive **plus the changed physical wall**, and both corrections vanish in the limit. It would be incorrect to use the old “identity in a collar” argument on the spectral domain.

### 4.4 The original combined physical wall

The remaining issue is the background-relative physical action itself. At each common radius, [note 18, equation (30)](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L397-L454>) gives

    I_P,R(ebar+f,omegabar+w)-I_P,R(ebar,omegabar)
      = S_rel(f,w;M_R)
        + integral_(Sigma_R) [kappa f wedge w/2
                               + ell_0(ebar+f)-ell_0(ebar)].

The potentially bad linear connection flux has canceled at this same finite radius. The first-order residual wall term is

    kappa [(1-k_2)F_11+(1-k_1)F_22] dA_0
       + an intrinsic exact derivative.

The intrinsic derivative integrates to zero on the closed wall. For spheres, k_i=coth R; for tubes they are tanh R and coth R. Therefore k_i-1=O(exp(-2R)), area=O(exp(2R)), and the L2 norm of the linear coefficient is O(exp(-R)). Its pairing with the coframe trace vanishes. The nonlinear remainder is bounded by

    C integral_(Sigma_R) (|f|^2 + |f| |nabla f|),

and f wedge w has the two-factor bound. This proves the actual combined relative limit, not merely a formal extension of a Taylor polynomial. It also extends coefficientwise when the coframe has nilpotent/formal corrections, since the body remains uniformly nondegenerate.

The bulk Taylor densities and the minimal ghost/antifield densities are absolutely integrable: their terms are L2 times L2 or L-infinity times L2 times L2, including derivative factors. Combining this fact with subsections 4.2--4.4 proves the exact identity

    Phi^* S_CS,relative,completed = S_geom,relative,completed

on E_infinity, coefficientwise in graded variables. The constants are the same fixed background action; no independent scheme-dependent finite constants have been inserted.

### 4.5 Why the separate linear fluxes still cannot be discarded

The contorsion transgression has a term linear in U with a nondecaying background coframe coefficient. On the cyclic tube, take the smooth-core-cutoff tail

    U(r) = exp(-3r/2) (E_12-E_21)/sqrt(2),

with the third orthonormal direction outward. All covariant derivatives have the same exponential order at large r, because the background connection coefficients there and their derivatives are bounded. Thus, for every m,

    integral_(r>=r0) |nabla^m U|^2 dvol
      <= C_m integral_(r>=r0) exp(-r) dr < infinity.

So this is an all-Sobolev example, not merely an L2 example. But its linear boundary flux is proportional to

    exp(-3R/2) cosh R sinh R ~ (1/4) exp(R/2).

It diverges. This independently checks the asymptotic mechanism of [the original counterexample](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L124-L126>). In contrast its quadratic boundary products are O(exp(-R)).

The completed contorsion identity remains valid because the bulk and wall fluxes cancel exactly at the same cutoff, as in [note 16:268--280](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L268-L280>). The relative classical e wedge omega transgression also contains order-one terms and has no generic separate vanishing theorem.

A related warning applies to a bare geometric Noether expression i_xi L_background: it has only one decaying ghost factor. One should derive the relative BV/CME identity from the completed relative action, not assert that this isolated background flux vanishes. The relative physical tadpole and wall cancellation are substantive.

### 4.6 Derivative-dependent cotangent and auxiliary steps

The torsion-free connection shift is smooth E_infinity -> E_infinity, losing only finitely many derivatives on each fixed Sobolev level. Its linearization has the form

    D_e omega(e)[v] = A(e) nabla v + B(e,nabla e) v.

The integration-by-parts boundary form for its cotangent lift is schematically A(e) omega* v. There are two decaying slots: an antifield and an allowed tangent variation. Its field-space exterior derivative has two decaying tangent slots, or additional decaying factors. The trace lemma therefore justifies the formal adjoint and the odd symplectic identity on E_infinity. Here “quadratic” counts tangent variations as decaying slots, not as numerical background fluctuations.

The auxiliary integration by parts in U* Q U has primitive schematically U* xi U; U_background=0, so it has at least three fluctuating factors. It vanishes at infinity. The exact bulk-plus-wall identity then yields the geometric auxiliary action with its nondegenerate algebraic quadratic form; U*=0 implies U=0 just as in the supported calculation.

A local polar/Lorentz chart likewise consists of smooth local functions and finitely many derivatives. Its ghost change can contain derivatives of xi. Its cotangent integration-by-parts primitive has a ghost antifield times a tangent ghost variation, possibly multiplied by further decaying factors; the background coefficient is harmless because there are already two L2 trace slots. Thus the local canonical bookkeeping and the local doublet removal extend coefficientwise on the smooth patch. This is not a global frame-group statement or a boundary-frame reduction. No finite-Sobolev convergence theorem for the derivative-dependent metric chart is inferred from these facts.

## 5. Every finite stationary tree jet exists continuously

### Theorem

Let T be a formal canonical automorphism of E_infinity with T(0)=0 and T_1=1. Assume each homogeneous Taylor coefficient is a continuous multilinear map E_infinity^n -> E_infinity. The exact map above satisfies these hypotheses. Local finite-order differential Taylor coefficients with bounded smooth background tensors are another sufficient class.

Let S'=T^*S, where S is the complete-background CS action. The quadratic action remains S_2. Its explicitly represented cyclic Euler gradient has the form

    F'(z)=D_T z + N'(z),
    N'(z)=sum_(k>=2) N'_k(z,...,z).

All N'_k are continuous multilinear E_infinity-valued maps. One way to see this without an unjustified strong-symplectic assumption is to conjugate the **explicit** Hamiltonian vector field by the formal inverse differential of T. Composition, formal inversion at T_1=1, and differentiation use only finite sums at every homogeneous order.

For x in P E_infinity and y in L_infinity := R ker(delta) intersect E_infinity, UV stationarity is equivalent to

    y = -h_T N'(x+y).

Indeed h_T D_T y=y, h_T D_T x=0, and the same exact/coexact annihilator argument as in the original stationary construction applies to smooth fields. The recursive solution is unique with y=O(x^2): set z_1=x and z_n=y_n for n>=2, and define

    y_n = -h_T sum_(k=2)^n
                sum_(n_1+...+n_k=n; n_i>=1)
                    N'_k(z_(n_1),...,z_(n_k)).

The sum never contains y_n on the right. At each n it has finitely many terms; each is a composition of continuous multilinear maps. Hence y_n is continuous and E_infinity-valued. Its polarization defines the corresponding graded multilinear tree coefficient, with the usual Koszul signs, exterior odd slots, and symmetric even slots.

For each output Sobolev order s and each n there are finite m=m(n,s) and C=C(n,s) such that

    ||Y_n(x_1,...,x_n)||_s <= C product_i ||x_i||_m.

Continuity of a multilinear map on this countably normed space supplies finitely many controlling seminorms; take their maximum. This is all the derivative control needed at finite order.

On the fixed retained band,

    ||x||_m <= Lambda^m ||x||_2.

Therefore

    ||Y_n(x_1,...,x_n)||_s
        <= C Lambda^(n m) product_i ||x_i||_2.

Every finite stationary jet is thus a continuous polynomial from the retained Hilbert band P L2 into E_infinity. The band may be infinite rank; finite rank is unnecessary. Constants can deteriorate with n, s, and Lambda, and no estimate uniform in n is being claimed.

The stationary action coefficients are also continuous scalar multilinear forms: the integrated quadratic pairing and the action vertices have finite Sobolev estimates. On the band, the cyclic pairing is strongly nondegenerate because H preserves P and all its Sobolev norms are equivalent to L2. Consequently the retained polynomial antibrackets are defined. The formal stationary CME proof applies coefficientwise when the full action satisfies its CME.

A compact-parameter version is immediate: if the Taylor coefficients of T_t vary smoothly with a finite-dimensional parameter t and obey these bounds locally uniformly, finite stationary coefficients vary smoothly, and their parameter integrals are continuous band polynomials. This establishes analytic admissibility for proposed coefficientwise constructions; it does not prove any particular proposed effective canonical-map formula.

### What this theorem does not say

It does not identify the stationary graph after T with the image under T of the original graph. T generally moves the UV polarization and the fibers over retained coordinates. Nor does it say that P T restricted to a graph is automatically canonical. Those are separate geometric comparison problems.

## 6. Convergence: a positive estimate and its limits

### 6.1 The special algebraic note-16 chart

After the fixed linear background identification, T is algebraic in spacetime. The transformed minimal geometric action is local and first order. In fact its background-relative density is still of degree at most three: the physical action is the CS/Palatini quadratic-plus-cubic polynomial, and each BRST expression in the geometric minimal action is at most bilinear in fields/ghosts, with at most one derivative.

For the convergence argument only first-order locality and an analytic coframe patch are needed. Take equal-order H^s in all components with integer s>=3. H^(s-1) is a multiplication algebra. The nonlinear gradient obeys, on a sufficiently small patch,

    ||N'(z)||_(s-1) <= C_s ||z||_s^2,
    ||N'(z)-N'(z')||_(s-1)
        <= C_s (||z||_s+||z'||_s) ||z-z'||_s.

Hence h_T N':H^s -> H^s is analytic and quadratic at zero. The subspace L_s=R ker(delta) intersect H^s is closed: hD is its bounded Hodge projection on H^s, commuting with Delta, even though D itself maps H^s to H^(s-1).

For ||x||_s<=r, the map y -> -h_T N'(x+y) maps a radius-r ball in L_s to itself and is a contraction when, for example, 4 C_s r<1, with r reduced further for the coframe patch. It has a unique small stationary solution, analytic in x in this Banach norm. On P L2 a sufficient retained smallness condition is ||x||_2 <= r Lambda^(-s).

This argument is valid coefficientwise, or with coefficients in any fixed finite Grassmann test algebra equipped with a submultiplicative norm, and ordinary small commuting even coefficients. It does not choose a norm/completion for the entire infinite collection of formal BV variables. The full BV object can safely remain a formal power series, with the finite jets already proved above. In particular no nilpotency of even ghost antifields enters the proof.

There is no conflict with the no-go theorem: N' loses one derivative and the **stationary** equation applies h afterward. The raw BRST vector field is not bounded H^s -> H^s. Its being smooth on E_infinity and its stationary equation being bounded on H^s are different assertions.

### 6.2 Actual physical convergence

At ghosts=antifields=0 the exact note-16 map is the identity on (e,omega). Its transformed physical action is therefore precisely the original physical action, and the fixed physical UV polarization is unchanged. The small physical stationary solution is the same one constructed in note 18; its physical tree series converges and its solution bootstraps to E_infinity because the original physical CS nonlinearity is derivative-free and h gains a derivative. The completed physical wall limit follows from section 4.

For the entire graded stationary series after the change, the preceding Banach estimate proves convergence in a selected H^s realization. It does **not**, without a further regularity argument, prove that the sum converges in all Sobolev seminorms simultaneously. The finite total-field jets do lie in E_infinity, and the physical body does. An expansion transverse to a nonzero physical body with all-Sobolev estimates for every coefficient requires control of its linearized transformed stationary inverse; that extra inverse theorem is not silently imported from the original mixed completion here.

### 6.3 Finite jets alone cannot prove convergence

There is already a finite-dimensional odd-canonical counterexample to that inference. Let (x,x*) be a retained canonical pair and (y,y*) a UV pair, with x,y even and antifields odd. Put

    f(x)=sum_(n>=2) n! x^n

as a formal series, and use the type-II generator

    F=x P_x+(y+f(x))P_y.

This is a tangent-to-identity formal canonical change. Apply it to the free action S=y'^2/2 and eliminate on the UV Lagrangian y*=0. The stationary equation is y=-f(x). Every finite jet is well-defined and continuous, but the full tree series has zero radius of convergence. All actions here are antifield-independent and satisfy the classical master equation. Thus neither canonicality nor a finite-jet proof supplies convergence. The positive H^s contraction in subsection 6.1 uses additional analytic estimates absent from this counterexample.

For a derivative-dependent canonical chart, the transformed gradient can lose more than one derivative, so h may not compensate it. The finite-jet theorem still applies whenever its Taylor coefficients are continuous on E_infinity, but the above Banach contraction cannot simply be reused.

## 7. Established scope and remaining gap

Established here, conditional only on the stated complete-background operator identities and exact local algebraic identities of the supplied notes:

1. Exact weak odd-symplectic transport on a nondegenerate E_infinity patch, with the fixed background ghost/cotangent linearization and a genuinely integrable relative generator.
2. Exact completed relative action transport, including the actual infinity primitive and the map-induced physical wall change.
3. All-Sobolev validity of the local derivative-cotangent and auxiliary bookkeeping, with explicit trace control rather than dismissal of linear contorsion fluxes.
4. Existence, uniqueness, and continuity of every finite total-field stationary tree jet after any admissible tangent-to-identity canonical change, including even ghost antifields.
5. A derivative-compensated analytic stationary contraction for the particular algebraic chart in an equal-order Sobolev realization, without a Q-stable product Banach claim; and inherited convergent smooth physical stationary theory.

Not established: an induced retained canonical map, equality of naively restricted/projected nonlinear maps, all-Sobolev convergence of the full transformed graded series, a general nonzero-body transverse formal inverse theorem in that chart, continuum BV densities or loop/QME transport, complete Brown--Henneaux/source sectors, boundary CPS/BFV transport, global frame/cycle equivalence, or metric--CS quantum equivalence.

This review was carried out directly at delegated maximum depth. No further independent subreview was available. No old algebra kernel was rerun, and no new kernel assertion is cited. The inherited exact identities are inputs; the new evidence consists of the explicit analytic estimates, fluctuation-order checks, same-cutoff cancellations, finite-tree recursion, and the two counterexample mechanisms above. Source hashes and frozen source copies accompany this proof in [the evidence record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/analytic-hinfty-bv-20261031.J0xtad/EVIDENCE.md>).
