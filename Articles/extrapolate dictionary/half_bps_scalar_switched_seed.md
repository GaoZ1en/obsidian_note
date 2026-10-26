# A genuine adiabatic boundary trace for the six-dimensional scalar seed

## Status and scope

This note gives a new proof for the **complete first-order scalar seed** used in the stress reconstruction. All three Yang–Feldman/Heisenberg insertions are kept, and a common spacetime vertex switch is removed. The proof includes the simultaneous null, collinear, zero-transfer and soft-energy strata. It derives the boundary three-point coefficient from the switched action and its free vacuum, rather than importing a CFT answer.

The result is a formal first-order vacuum coefficient, not a nonperturbative interacting-state construction. Its use for the gravitational coefficient still requires a separate theorem for the radial mass-raising operation; Section 8 states that issue precisely.

Conventions are those of `half_bps_wightman.md` (2.1)–(2.6) and `half_bps_stress_switching.md`: mostly-plus metric, positive-energy free contractions, the logfree BF branch and the source-first radial insertion prescription. The proof below is analytic. Independent exact and numerical checks are recorded in `six_dimensional_seed_checks.py` and its JSON output.

## 1. The exact six-dimensional lift

Let $Y\in\mathbb R^2$, $u=|Y|$, and $X\in\mathbb R^{1,3}$. The BF-rescaled operator is

\[
\mathcal D=\square_4+\partial_u^2+u^{-1}\partial_u,
\]

the rotationally invariant part of the massless wave operator in $\mathbb R^{1,5}$. If $\varphi_6$ is a canonically normalized six-dimensional massless scalar, put

\[
U=2\pi^{3/2}\varphi_6,\qquad g_6=4\pi^{3/2}g.
\]

The canonical six-dimensional action with interaction $-g_6\varphi_6^3/3!$ reduces to

\[
S=-\frac1{2C_0}\int u\,du\,d^4X
\left[(\partial U)^2+\frac23gU^3\right],
\qquad C_0=2\pi^2.
\]

Indeed the angular factor is $2\pi$, and the kinetic and cubic coefficients are respectively $1/(4\pi^2)$ and $g/(6\pi^2)$. This checks both the action and the equation $\mathcal D U=gU^2$.

The six-dimensional free covariance of $U$ is

\[
W_6(Z)=\frac1{[|\mathbf Z|^2-(Z^0-i0)^2]^2},
\qquad \widetilde W_6(K)=8\pi^4\delta_+(s_6(K)).
\]

Integrating its two transverse momenta with $d^2A/(2\pi)^2$ gives $2\pi^3\mathbf1_{V_+}(p)$ at $Y=0$. Averaging each finite-radius endpoint over its transverse circle gives the factors $J_0(u\sqrt{s(p)})$, reproducing the BF scalar covariance.

At a single tree vertex with all external transverse coordinates zero, the three free lines are radial. Consequently the six-dimensional local vertex integral and the radial BF vertex integral coincide exactly. This remains true with a common switch

\[
f_{R,B}(X,Y)=\chi(X/R)\,\beta(Y/B),
\]

where $\chi\in C_c^\infty(\mathbb R^4)$ and $\beta\in C_c^\infty(\mathbb R^2)$ are equal to one near zero, and $\beta$ is rotationally invariant. At this stage both infrared cutoffs are genuine action switches.

## 2. The all-insertion coefficient before stationarity

Write external six-momenta as $(P,R,-Q)$ and set $\Xi=P+R-Q$. With $\rho_6=8\pi^4\delta_+$ and the unit retarded inverse

\[
R_{\rm ret}(K)=\frac1{s_6(K)+i0K^0},
\]

the complete stripped first-order kernel is

\[
\begin{aligned}
2g\,\widehat f(\Xi)\big[&
R_{\rm ret}(P)\rho_6(-R)\rho_6(Q)
+\rho_6(P)R_{\rm ret}(R)\rho_6(Q)\\
&+\rho_6(P)\rho_6(R)R_{\rm ret}(-Q)\big].
\end{aligned}
\tag{2.1}
\]

This follows directly by expanding each Heisenberg insertion once in the common switched action. The factor two is the two scalar Wick contractions. A free tadpole is absent by the fixed normal ordering.

After pairing with a compact momentum test and parameterizing the two free on-shell momenta in each term by $L,M\in\overline V_+$, every term has the form

\[
T_{\sigma\tau}(\Xi;F)
=\int d\mu(L)d\mu(M)
\frac{F(L,M,\Xi)}{s_6(\sigma L+\tau M+\Xi)+i0(\sigma L^0+\tau M^0+\Xi^0)},
\tag{2.2}
\]

where $\sigma,\tau\in\{+1,-1\}$,

\[
d\mu(L)=d^6L\,\delta_+(s_6(L)),
\]

and $F$ is smooth with the two null energies bounded by a fixed $B$. The actual three terms use the sign pairs $(+,+),(-,+),(-,-)$. Constant Fourier factors can be restored independently and play no role in the convergence lemma.

The following estimate is the essential new input.

## 3. A uniform angular-resolvent lemma

**Lemma.** Let $F(L,M,\Xi)$ be a smooth compact-energy test amplitude as above, smooth in an ambient neighborhood of the two closed null cones and of $\Xi=0$. Fix a compact set containing its energy supports. Then (2.2), defined as the ordinary retarded boundary value, is continuous at $\Xi=0$ and

\[
|T_{\sigma\tau}(\Xi;F)-T_{\sigma\tau}(0;F)|
\le C_B\|F\|_{C^4}\,\epsilon(1+|\log\epsilon|),
\qquad \epsilon=|\Xi|_E\le\epsilon_0.
\tag{3.1}
\]

The same estimate holds uniformly on bounded test sets. No lower energy, mass or relative-angle cutoff is used. At $\Xi=0$ the retarded denominator is an ordinary locally integrable reciprocal on the two-shell phase space; its imaginary part has zero action there.

### 3.1 Exact angular reduction

Write

\[
L=E(1,n),\quad M=F(1,m),\quad n,m\in S^4,
\quad d\mu(L)=\frac12E^3dE\,d\Omega_4(n).
\]

Set $A=\sigma L+\Xi$, $R_A=|\mathbf A|$. For $R_A>0$, align the polar axis of $m$ with $\mathbf A$, and let $c=m\cdot\widehat{\mathbf A}$. Exactly,

\[
s_6(A+\tau M)=2\tau F R_A(t-c),
\qquad
t=\frac{A^0}{R_A}+\frac{s_6(A)}{2\tau F R_A}.
\tag{3.2}
\]

The angular measure is

\[
d\Omega_4(m)=(1-c^2)dc\,d\Omega_3.
\tag{3.3}
\]

The $S^3$ average of a smooth ambient test amplitude is a $C^1$ function $a(c)$ on the closed interval. The square-root parametrization at $c=\pm1$ causes no loss: its odd transverse Taylor terms average to zero. Its $C^1$ norm is bounded by two ambient derivatives of $F$, uniformly on the fixed compact energy set.

Thus the angular integral is a constant multiple of

\[
\frac1{2\tau FR_A}H_\eta(t),\qquad
H_\eta(t)=\int_{-1}^1\frac{(1-c^2)a(c)}{t-c+i0\eta}\,dc,
\tag{3.4}
\]

with the appropriate retarded sign $\eta$. That sign can change when the output energy passes zero. The estimates below are uniform in either sign.

### 3.2 The endpoint cancellation

For any $a\in C^1([-1,1])$,

\[
\sup_{t\in\mathbb R}|H_\eta(t)|\le C\|a\|_{C^1},
\tag{3.5}
\]

and, for $\sigma=\pm1$,

\[
|H_\eta(t)-H_\eta(\sigma)|
\le C\|a\|_{C^1}|t-\sigma|
\bigl(1+|\log|t-\sigma||\bigr)
\tag{3.6}
\]

for $t$ near that endpoint. A bounded version applies away from the endpoint. To prove these estimates, subtract the value of $a$ at the moving pole inside the principal-value integral. The remaining quotient is bounded by $\|a'\|_\infty$; the constant part is elementary. Its model is

\[
\int_{-1}^1\frac{1-c^2}{z-c}dc
=2z+(1-z^2)\log\frac{z+1}{z-1}.
\tag{3.7}
\]

In particular, the limiting values at $z=\pm1$ are $\pm2$. The imaginary term on the cut is $-i\pi\eta(1-t^2)a(t)$, so it also vanishes at both endpoints. The same uniform bound holds before the retarded boundary limit, by the Cauchy-transform representation or its maximum-principle bound in either half-plane.

At $\Xi=0$, $R_A=E$ and $t=\sigma$. The apparent collinear pole is therefore controlled by the vanishing factor $1-c^2$ in the exact six-dimensional angular measure.

### 3.3 Hard energies

For $E,F\ge C\epsilon$, choose the fixed constant $C$ sufficiently large. Then

\[
R_A\asymp E,\qquad
|t-\sigma|\le C'\epsilon(E^{-1}+F^{-1}),
\]

and the rotation of the angular axis from $\sigma n$ to $\mathbf A/R_A$ is $O(\epsilon/E)$. Its action on the averaged test amplitude is controlled by the stated ambient derivatives.

Combine (3.5)–(3.6) with the change of prefactor $R_A^{-1}-E^{-1}=O(\epsilon/E^2)$. After multiplying the two shell measures, the dominating energy integrals are linear combinations of

\[
\epsilon\int_0^B\!\int_0^B
E^2F^2(E^{-1}+F^{-1})
[1+|\log\epsilon|+|\log E|+|\log F|]\,dE\,dF.
\tag{3.8}
\]

They are finite and give the right side of (3.1). The energy equality $E=F$ is fully included. At that equality the output can approach zero, while the angular estimate remains uniform in the retarded sign.

### 3.4 Soft energies and the origin

For all real $\Xi$, (3.5) gives the absolute angular bound

\[
\left|\int_{S^4}\frac{F(L,M,\Xi)}{s_6(A+\tau M)+i0(A^0+\tau F)}d\Omega_4(m)\right|
\le\frac{C_B\|F\|_{C^2}}{F|\sigma E n+\mathbf\Xi|}.
\tag{3.9}
\]

The exceptional set where the displayed spatial denominator is zero has zero measure; its reciprocal is locally integrable in the remaining five spatial variables. For $E\le C\epsilon$, the remaining soft integral is bounded using

\[
\int_{|\ell|\le C\epsilon}
\frac{d^5\ell}{|\ell|\,|\sigma\ell+\mathbf\Xi|}
\le C'\epsilon^3,
\qquad |\mathbf\Xi|\le\epsilon.
\tag{3.10}
\]

Rescaling proves the power; the two inverse first powers have a uniformly bounded convolution on a bounded ball in five dimensions. A direct proof partitions into balls around $0$ and $-\sigma\mathbf\Xi$ and their complement. This controls the entire soft-$E$ region by $C\epsilon^3$.

For $F\le C\epsilon$, its shell measure and (3.9) give $\int_0^{C\epsilon}F^2dF=O(\epsilon^3)$; the other potential integral is uniformly finite. The same bounds apply to the stationary kernel. These estimates complete (3.1), including both soft endpoints and the common origin.

The argument also establishes the retarded boundary value itself: the angular Cauchy transforms are uniformly bounded before the imaginary frequency is removed, and (3.9) supplies an integrable majorant for the remaining variables.

## 4. Genuine action-switch removal

Pair (2.1) with a compact test in the full nonstationary external momenta and set $\Xi=v/R$ for an isotropic switch. The constant Fourier moment is one. Applying (3.1) to the test amplitude, including its smooth $\Xi$ dependence, gives

\[
W^{(3)}_{f_R}\longrightarrow
(2\pi)^6\delta^6(\Xi)\,W^{(3)}_{\rm stat}
\quad\text{in strong local momentum }\mathcal D',
\tag{4.1}
\]

with a conservative $O(R^{-1}\log R)$ rate on each fixed compact test class. The tail of the Schwartz switch transform is controlled separately by polynomial bounds, so compact localization in $\Xi$ causes no change in the conclusion.

For $f_{R,B}=\chi(X/R)\beta(Y/B)$, the same proof uses $\epsilon\le |v|/R+|w|/B$. Thus both cutoffs can be removed independently, with a bound controlled by

\[
R^{-1}(1+\log R)+B^{-1}(1+\log B).
\tag{4.2}
\]

The limit is independent of the two plateau profiles. This proves removal of the actual common action switch, including the radial infrared cutoff; it does not replace that switch by insertion-specific frequency denominators.

At the boundary $Y_1=Y_2=Y_3=0$, transverse external momenta are integrated. Compact four-dimensional external momentum tests and compact injection momentum bound both free six-dimensional energies, hence also their transverse momenta. For bounded injection, a fixed transverse cutoff equal to one on this support turns this operation into precisely the compact test class used above. At large transverse injection the same angular estimate gives a polynomial bound, and the Schwartz transform of $\beta$ controls its tail. The boundary restriction therefore commutes with the joint limit (4.1)–(4.2).

The resulting four-dimensional limit has the usual $(2\pi)^4\delta^4(\Omega)$ factor.

The temporary radial ultraviolet vertex cutoff can be removed in the same local momentum topology before this infrared argument. At a boundary endpoint the scalar retarded radial kernel has the small-$u$ form $\log u$ plus the locally integrable logarithm of its output squared mass, while the free radial factors are smooth. With the vertex measure $u\,du$, the omitted region is therefore $O(\varepsilon^2[1+|\log\varepsilon|])$ on each fixed compact momentum test class. This connects the lifted trace to the original common-regulator boundary operation, with the radial mollifier removed in its prescribed order.

### 4.1 Independent removal of the radial cutoff at finite injection

The angular argument gives a useful stronger construction statement: $T_{\sigma\tau}(\Xi;F)$ is continuous at **every** finite $\Xi$, locally uniformly on bounded test sets. A quantitative modulus away from zero is unnecessary for this statement.

For $E,F,R_A>0$, the Cauchy transform is continuous for every real $t$. Its retarded sign can change only when $A^0+\tau F=0$. At that point

\[
t=-\tau\frac{R_A^2+F^2}{2FR_A},\qquad |t|\ge1,
\]

so its imaginary jump is zero. On a compact parameter set, exclude temporarily the three regions $E<\delta$, $F<\delta$ and $R_A<\delta$. The remaining integrand is continuous and uniformly bounded. Each omitted region is uniformly small under (3.9): the first two have the previous $O(\delta^3)$ estimates, and the third uses

\[
\int_{|\sigma\ell+\mathbf\Xi|<\delta}
\frac{d^5\ell}{|\ell|\,|\sigma\ell+\mathbf\Xi|}
\le C\delta^3
\]

uniformly for $\Xi$ in a fixed compact set. Uniform integrability completes the continuity proof.

It follows that the transverse approximate identity supplied by $\beta(Y/B)$ can be removed first, while the four-dimensional injection $\Omega$ remains a free variable. This constructs the scalar seed as a joint distribution in $(p,q,\Omega)$ from the same common radial regulator. In particular, the proof supplies more than just an averaged limit along one combined $R,B$ path.

On a strictly massive future patch for $p,q$, this also provides the radial-regulator identification needed before gravitational mass raising. Use local coordinates

\[
(w,b,r,\mathbf p,\mathbf q),\quad
s(q)=b^2,\quad s(p)=b^2+s(r)+2bw,\quad \Omega=p+r-q.
\]

The positive energies of $p,q$ are smooth functions of these twelve coordinates. Holding $(b,r,\mathbf p,\mathbf q)$ fixed, the radial derivative is exactly

\[
\partial_{s(p)}^{2,\rm radial}=\frac1{4b^2}\partial_w^2.
\]

The outer free-cone indicators are constant on this patch and the transfer indicators depend on $r$, which is held fixed. Joint distributional convergence of the scalar radial-cutoff family therefore passes to this derivative, with its smooth coefficients. The switch transform is multiplied **after** this radial derivative, as prescribed by the action. This step justifies the canonical raised kernel on massive charts before taking its adiabatic restriction; it does not differentiate the $\Omega\to0$ continuity estimate.

At an outer-null face, the cone indicators and the corresponding mass-shell normal jets require the additional analysis in Section 8.

## 5. Determining the stationary coefficient from the action

There are two independent determinations of the coefficient, neither of which assumes CFT three-point data.

### 5.1 Euclidean vertex normalization

For boundary points $Z_i=(x_i,0)\in\mathbb R^6$, the Euclidean insertion diagram is

\[
-\frac{g}{2\pi^3}\int_{\mathbb R^6}d^6Z
\prod_{i=1}^3\frac1{|Z-Z_i|^4}.
\tag{5.1}
\]

The six-dimensional uniqueness integral gives

\[
\int d^6Z\prod_i|Z-Z_i|^{-4}
=\frac{\pi^3}{|Z_{12}|^2|Z_{13}|^2|Z_{23}|^2}.
\tag{5.2}
\]

For example, Schwinger parameters reduce the left side divided by $\pi^3$ to

\[
2\int_{a+b+c=1\atop a,b,c>0}
\frac{abc\,da\,db}{(abP_{12}+acP_{13}+bcP_{23})^3}
=\frac1{P_{12}P_{13}P_{23}}.
\]

This identity can also be derived by one conformal inversion followed by the elementary two-denominator integral. It fixes the coefficient as $-g/2$.

For completeness, translate $Z_3$ to zero and invert $Z=Y/Y^2$. The Jacobian cancels the six powers of $Y^2$ from the three factors. The remaining integral is

\[
\frac1{|Z_1|^4|Z_2|^4}\int d^6Y\,
|Y-Z_1'|^{-4}|Y-Z_2'|^{-4}.
\]

Using $1/(A^2B^2)=6\int_0^1dt\,t(1-t)[tA+(1-t)B]^{-4}$ and doing the Gaussian radial integral gives $\pi^3/|Z_1'-Z_2'|^2$. The inversion identity $|Z_1'-Z_2'|^2=|Z_{12}|^2/(|Z_1|^2|Z_2|^2)$ proves (5.2).

### 5.2 Lorentzian equations and a six-dimensional null-support uniqueness lemma

The stationary all-insertion limit constructed above has future spectral support in both independent six-momenta. Multiplying each retarded leg by its free wave operator gives the corresponding two-Wightman source. It is Lorentz covariant and jointly homogeneous of momentum degree $-6$ directly from its on-shell integral.

Consider the ordered-tube boundary value

\[
W^{(3)}_{\rm candidate}(Z_1,Z_2,Z_3)
=-\frac g2\,
w_1(Z_{12})w_1(Z_{13})w_1(Z_{23}),
\tag{5.3}
\]

with the imaginary order $\eta_1>\eta_2>\eta_3$ and $w_1(Z)=[|\mathbf Z|^2-(Z^0-i0)^2]^{-1}$ in each ordered difference. The holomorphic identity in six dimensions

\[
\square_{Z_1}\frac1{P_{12}P_{13}P_{23}}
=-\frac4{P_{12}^2P_{13}^2}
\tag{5.4}
\]

shows that (5.3) has exactly the required source $2gW_6(Z_{12})W_6(Z_{13})$, and likewise for the other two legs.

Its spectral support and tempered boundary value can be seen directly from the Riesz distribution

\[
\widetilde w_1(K)=32\pi^4\theta(K^0)\delta'(s_6(K)).
\]

The homogeneous extension at $K=0$ is unique, since its degree $-4$ is above $-6$. The product in (5.3) is the pushforward of a tensor product of these three positive-cone-supported distributions. On each compact external positive-energy set the three internal energies are bounded; this makes that pushforward proper. Polynomial scaling gives temperateness. Thus the ordered product has the required future support and degree.

The difference between the actual stationary limit and (5.3) solves the free wave equation in all three legs. It is consequently supported where

\[
P^2=Q^2=(P-Q)^2=0,\qquad P,Q\in\overline V_+.
\]

Every Lorentz-covariant scalar distribution of momentum degree $-6$ supported there is zero. To verify this, near a nonzero collinear pair use light-cone coordinates $(a,b,u;x,y,v)$ with $u,v\in\mathbb R^4$:

\[
P^+=a,\quad P_\perp=au,\quad P^-=x+a|u|^2/2,
\]

\[
Q^+=b,\quad Q_\perp=bu+v,\quad
Q^-=y+|bu+v|^2/(2b).
\]

The normal stratum is $x=y=v=0$ and the coordinate Jacobian has absolute value $a^4$. Joint dilation times an inverse light-cone boost fixes $(a,b)$, sends $u\mapsto\lambda u$, and rescales normal coordinates with weights

\[
(2,2,1,1,1,1),\qquad \text{sum }8.
\]

A normal jet has weight $-8-w$, $w\ge0$, whereas homogeneity and scalar covariance require weight $-6$. Null rotations make the coefficients smooth in the tangent $u$ directions, so evaluating at $u=0$ is legitimate. The same weight mismatch holds at the one-zero-momentum endpoints; at the common origin, delta derivatives have degrees $-12-N$. The three strata therefore contribute zero.

This proves that the genuine switched limit is (5.3), without using an independently supplied CFT coefficient as boundary data.

## 6. The four-dimensional boundary trace

Restricting (5.3) to the transverse plane gives

\[
\boxed{
W^{(3)}_{\partial,c}(x_1,x_2,x_3)
=-\frac g2\,
\frac1{P_{12}P_{13}P_{23}}
\quad\text{with the prescribed ordered-tube boundary values}.
}
\tag{6.1}
\]

The restriction is also justified spectrally: the future six-dimensional cone contains no nonzero momentum purely normal to the four-dimensional timelike plane. Equivalently, compact boundary energy tests make the transverse-momentum pushforward proper.

In the conventions of `half_bps_wightman.md`, its stripped density is

\[
\widetilde W^{(3)}_\partial(p,q)
=(2\pi^3)^2\mathbf1_{V_+}(p)\mathbf1_{V_+}(q)
\left[-\frac{2g}{D}\mathbf1_{s(p-q)<0}\right].
\tag{6.2}
\]

The three-shell calculation supplies this Fourier transform. Equation (6.1) has already been obtained from the switched action, so the phase-space calculation here identifies its explicit representation rather than supplies an assumed boundary observable.

## 7. Actual verification

The accompanying script independently checks the action normalization, the free spectral coefficient, the angular Cauchy transform, the $S^4$ angular normalization, the radial raising identity, the cubic equation-of-motion coefficient and the Euclidean uniqueness integral.

The angular model (3.7) is evaluated by both its elementary expression and direct quadrature. Its endpoint ratio

\[
\frac{H(1+\epsilon)-2}{\epsilon\log(1/\epsilon)}\longrightarrow-2
\]

provides a numerical check of the logarithmic modulus used in the proof. The three Euclidean test configurations use distinct squared-distance triples and compare the two-dimensional Feynman-parameter integral with $1/(P_{12}P_{13}P_{23})$.

An additional two-shell energy quadrature keeps its amplitude nonzero at both soft endpoints and checks the predicted $\epsilon\log(1/\epsilon)$ term under a timelike injection. A separate equal-energy model has $t=-1+\epsilon^2/2$ and exhibits an imaginary part $-\pi\epsilon^2+O(\epsilon^4)$, confirming the harmless retarded-sign coalescence. These are supporting model calculations rather than a replacement for the uniform estimates.

Finite calculations supplement the angular/soft-energy proof; the uniform theorem rests on Sections 3–4.

## 8. What the gravitational raising still requires

At the complete switched boundary trace, all three gravitational insertion numerators can be expressed using

\[
\Pi_{ij,kl}(p)q^k(q+\Omega)^l.
\]

The outer stress term initially has $\Pi(p)kq$, with $k=p-q-\Omega$; transversality changes it to the negative of this common tensor. The radial identities are

\[
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)
=\frac{a^2}{8}\mathcal L_a\mathscr R_p(0,u),
\qquad \mathcal L_a=\partial_a^2-a^{-1}\partial_a,
\]

\[
a^2\mathcal L_a f(au)
=(-2u\partial_u-a^2u^2)f(au)
\]

for the relevant order-zero Bessel solutions. Hence, with radial mass variables treated independently and cone indicators held fixed, the complete seed raising is

\[
\widetilde W^{\rm grav}_{\chi,ij}
=-\frac{\alpha a^2}{80g}\Pi_{ij,kl}(p)q^k(q+\Omega)^l
\mathcal L_a^{\rm radial}\widetilde W^{\rm seed}_{\chi}
=-\frac{\alpha}{20g}\mathcal N_{ij}(p;q,q+\Omega)
\partial_{s(p)}^{2,\rm radial}\widetilde W^{\rm seed}_{\chi}.
\tag{8.1}
\]

Here $\widetilde W^{\rm seed}/g$ denotes the coefficient linear in an auxiliary scalar coupling; the quotient has a regular formal meaning even when the cubic coupling of a selected physical polarization vanishes.

This is an exact radial-factor identity, useful for organizing the calculation. It is not yet an operation justified on the full scalar distribution after the physical mass restriction. In particular,

\[
\partial_x^2[\theta(x)f(x)]
=\theta(x)f''(x)+f'(0)\delta(x)+f(0)\delta'(x),
\]

and the polynomial unamputated tensor can be nonzero on $x=0$. The scalar estimate (3.1) alone supplies continuity, while the gravitational operation demands additional normal-derivative control or a direct angular TT cancellation proof. Independent mass differentiation and restriction to $\Omega=0$ therefore remain separate steps.

The local scalar result established here is a complete new seed theorem. The gravitational boundary trace still requires a uniform treatment of the raising operation at the common-null and soft-transfer intersections, with these null jets retained.

## Reproducible verification files

- [six_dimensional_seed_checks.py](checks/stress_completion/six_dimensional_seed_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
