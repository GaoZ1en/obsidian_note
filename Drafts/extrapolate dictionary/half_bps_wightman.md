# Timelike transfer and the global tree-level Wightman extrapolate limit

## 1. Result and its perturbative meaning

The ordered scalar three-point coefficient can now be reconstructed in both timelike-transfer sectors, in addition to the spacelike sector of the [first nonlinear reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction.md>). The outer quadratic insertion is essential in a timelike sector. The resulting piecewise momentum kernel is a regular tempered distribution, including its null and collinear strata, and has the independent-radii limit

$$
W^{(3)}_{z_1z_2z_3,c}\longrightarrow W^{(3)}_{\partial,c}
\quad\text{strongly in }\mathcal S',\qquad
\text{error }O\!\left(\max_i z_i^2\right).
\tag{1.1}
$$

This statement concerns the **formal one-vertex scalar vacuum coefficient**, with the retarded/positive-energy prescription specified in §2. It is not a construction of a complete interacting Wightman state or a positivity theorem. The pure-scalar three-point contribution is the relevant order-$1/N$ component of IIB supergravity; gauge/gravitational bilinears and higher orders are not reconstructed here.

An important physical distinction is established: the protected boundary three-point distribution has **no strictly timelike-transfer support**, but the corresponding finite-radius three-point function is nonzero. Its boundary limit therefore tests a cancellation, not just multiplication of a nonzero boundary coefficient by free radial factors.

## 2. Fixed conventions and the vacuum coefficient

### 2.1 Fields, action and spectral density

Use the conventions of the [reference formalism](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) and the [BF/IIB calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md>): $\Omega=z/\ell$, canonical $\phi=t/(2\kappa_5)$, matrix coordinate $T=e^t$, and the logfree BF vacuum. The unit-normalized rescaled field is

$$
U^I=\sqrt{2\pi^2/\ell}\,\Omega^{-2}\phi^I,
\qquad
\mathcal D U^I=g_{IJK}U^JU^K+\cdots,
\qquad
\mathcal D=\partial_z^2+z^{-1}\partial_z+\square_\eta,
$$

$$
\eta=(-,+,+,+),\qquad
g_{IJK}=\frac{4\sqrt2}{N}d_{IJK},\qquad
c_{IJK}=-\frac{g_{IJK}}2.
\tag{2.1}
$$

The coupling and boundary coefficient are retained at leading tree order, not equated to unexpanded finite-$N$ data. The boundary primary is oriented as $-\widehat Q$. The omitted terms are the other IIB couplings; they have no three-scalar Wick contraction at this order in the fixed coordinates and gauge used in the preceding reports.

For clarity write $C_0=2\pi^2$. After the inherited BF boundary completion cancels the radial surface term from rescaling the canonical field, the scalar part of the Lorentzian action is

$$
S_L=-\frac1{2C_0}\int dz\,d^4x\,z
\left[(\partial_zU^I)^2+\eta^{ij}\partial_iU^I\partial_jU^I
 +\frac23g_{IJK}U^IU^JU^K\right].
\tag{2.2}
$$

Fourier phases are $e^{-ip\cdot x}$ with $p\cdot x=p^0t-\mathbf p\cdot\mathbf x$ and $s(p)=(p^0)^2-|\mathbf p|^2$. The free two-point kernel is

$$
W_p(z,u)=\rho(p)h_p(z)h_p(u),\qquad
\rho(p)=2\pi^3\mathbf1_{V_+}(p),\qquad
h_p(z)=J_0(z\sqrt{s(p)})\quad(p\in V_+).
\tag{2.3}
$$

As before, a finite-radius insertion is the thin-layer limit of a radially mollified bulk insertion. The explicit propagators and vertex determine the coefficient; no single-sided wall action is substituted for the insertion functional.

### 2.2 Retarded inverse and the three-leg formula

Let $\mathscr R_r(z,u)$ invert $L_{s(r)}=\partial_z^2+z^{-1}\partial_z+s(r)$ with **measure $u\,du$**. The retarded limiting-absorption choice is

$$
\mathscr R_r(z,u)=-I_0(\kappa z_<)K_0(\kappa z_>),\qquad
\kappa=\sqrt{|\mathbf r|^2-(r^0+i0)^2},\qquad
L_{s(r)}\mathscr R_r=\frac{\delta(z-u)}u.
\tag{2.4}
$$

For timelike $r$ with mass $m=\sqrt{s(r)}$,

$$
\mathscr R_r(z,u)=\frac\pi2J_0(mz_<)Y_0(mz_>)
 -\frac{i\pi}{2}\operatorname{sgn}(r^0)J_0(mz)J_0(mu).
\tag{2.5}
$$

It is the Fourier representation of $-i\theta(t-t')[U_0(X),U_0(Y)]/C_0$. The sign in (2.4) is essential.

The prescription is the formal first-order vacuum Dyson/closed-time-path coefficient, with free AdS vacuum and normal-ordered interaction

$$
H_{\rm int}=\frac{g_{IJK}}{3C_0}\int dz\,d^3x\,z:U_0^IU_0^JU_0^K:.
$$

A common switch or vacuum-tilted contour gives, at this order, $U=U_0+g\mathscr R:U_0^2:$, and **all three** Heisenberg insertions are expanded. Vacuum bubbles cancel and tadpoles are excluded by the stated normal ordering. The stationary tree coefficient is evaluated through the retarded limiting-absorption family below. This fixes the state/homogeneous prescription; an exact Møller operator or regulator-independent nonperturbative adiabatic limit is not assumed.

Suppress a fixed symmetric species component $g=g_{IJK}$. Put the three external momenta equal to $(p,q-p,-q)$ and set $k=p-q$. Wick contraction gives the stripped ordered coefficient

$$
\begin{aligned}
\widetilde W^{(3)}_{123}
=2g\int_0^\infty u\,du\,\big[&
\mathscr R_p(z_1,u)W_k(z_2,u)W_q(z_3,u)\\
&+W_p(z_1,u)\mathscr R_{-k}(z_2,u)W_q(z_3,u)\\
&+W_p(z_1,u)W_{-k}(z_2,u)\mathscr R_{-q}(z_3,u)\big].
\end{aligned}
\tag{2.6}
$$

This expression already includes the first-order dressing of boundary-created states. Keeping only its middle term is not the vacuum prescription.

The Euclidean covariance in this normalization is $C_0D_k$, where $D_k=I_0(kz_<)K_0(kz_>)$. The cubic vertex is $-2g/C_0$, giving the independently established insertion diagram

$$
T_E=-8\pi^4g\int_0^\infty u\,du\,\prod_iD_{k_i}(z_i,u).
\tag{2.7}
$$

The identification of the vacuum-contour coefficient with an ordered boundary value of the Euclidean-vacuum diagram uses the usual **perturbative vacuum-contour prescription**, stated here as part of the physical setup. Matching the prefactor alone would not prove that analytic-continuation assertion. The distributional calculation below is explicit for the specified retarded coefficient and does not assert equivalence of arbitrary switching families or states.

## 3. Boundary support and the relevant kinematics

All nonzero terms in (2.6) require $p,q\in V_+$. Write

$$
a=\sqrt{s(p)},\quad b=\sqrt{s(q)},\quad
D=2\sqrt{(p\cdot q)^2-a^2b^2},
\tag{3.1}
$$

where $p\cdot q=p^0q^0-\mathbf p\cdot\mathbf q$. The discriminant is nonnegative for future-timelike momenta. It vanishes on the collinear set; expressions containing $1/D$ below are distributional rather than point values there.

The protected ordered boundary correlator is $c\,w_1(x)w_1(-y)w_1(x-y)$, with $w_1(x)=[\mathbf x^2-(t-i0)^2]^{-1}$ and $\widehat w_1=8\pi^3\delta_+$. Its double Fourier transform is a three-null-shell integral. If its null momenta are $r,l,m$, then

$$
p=r+l,\quad q=r+m,\quad k=l-m,
\qquad r,l,m\text{ future null}.
$$

Thus $s(k)\le0$: a difference of two future-null momenta cannot be timelike. The phase-space calculation gives

$$
\int d^4r\,\delta_+(s(r))\delta_+(s(p-r))\delta_+(s(q-r))
=\frac\pi{2D}\mathbf1_{s(k)<0},
$$

$$
\boxed{\mathcal F_\partial(p,q)=-\frac{2g}{D}\mathbf1_{s(k)<0},
\qquad \widetilde W^{(3)}_\partial=\rho(p)\rho(q)\mathcal F_\partial.}
\tag{3.2}
$$

The null-transfer locus comes from parallel null vectors in the phase space, a set of zero measure, not an additional atom. The locally integrable density and its step determine the boundary distribution; choosing a value for the step on its measure-zero boundary adds no physical information.

If $k$ is future timelike, write $\tau=\sqrt{s(k)}$. Since $p=q+k$, the reverse timelike triangle inequality gives

$$
a\ge b+\tau.
\tag{3.3}
$$

For past timelike $k$, $q=p+(-k)$ gives $b\ge a+\tau$. Equalities are the collinear thresholds. In either timelike sector,

$$
D=\sqrt{[(a+b)^2-\tau^2][(a-b)^2-\tau^2]}.
\tag{3.4}
$$

These physical inequalities are important: they exclude the open radial absorption interval $|a-b|<\tau<a+b$.

## 4. A finite radial kernel without threshold poles

For nonnegative masses define

$$
C_{mn}(\theta)^2=m^2+n^2-2mn\cos\theta,
$$

$$
\boxed{
\mathcal A_{t;m,n}(z)=\frac1\pi\int_0^\pi
\frac{J_0(zC_{mn}(\theta))-J_0(tz)}{t^2-C_{mn}(\theta)^2}\,d\theta.}
\tag{4.1}
$$

Every apparent pole is removable. At $C_{mn}=t>0$ the integrand equals $zJ_1(tz)/(2t)$, and at $t=C_{mn}=0$ it equals $z^2/4$.

Let $R_{t^2}(z,u)$ be the fixed-boundary Volterra kernel with measure $du$ from the preceding report. The Bessel product identity and the radial equation give

$$
\mathcal A_{t;m,n}(z)
=\int_0^zdu\,R_{t^2}(z,u)J_0(mu)J_0(nu),
\qquad L_{t^2}\mathcal A_{t;m,n}=J_0(mz)J_0(nz).
\tag{4.2}
$$

This is logfree and has zero finite boundary coefficient. It is entire in the squared masses, including the resonant loci, and

$$
\mathcal A_{t;m,n}(z)=\frac{z^2}{4}
-\frac{t^2+m^2+n^2}{64}z^4+O(z^6).
\tag{4.3}
$$

There is also a global bound. For $F_z(x)=J_0(z\sqrt x)$, $x\ge0$,

$$
|F'_z(x)|\le z^2/4,
$$

because $|J_1(v)/v|\le1/2$. The latter follows, for example, from the angular integral of $\sin^2\theta\cos(v\cos\theta)$. Applying the mean-value integral to (4.1) proves

$$
\boxed{|\mathcal A_{t;m,n}(z)|\le z^2/4}
\quad\text{for all }t,m,n,z\ge0.
\tag{4.4}
$$

This includes exact collinear thresholds and zero masses, not only generic momenta.

## 5. The complete timelike answer

Define the reduced coefficient by $\widetilde W^{(3)}_{123}=\rho(p)\rho(q)\mathcal F_{z_1z_2z_3}(p,q)$. These constant spectral densities allow the surviving Wick terms to share a common normalization.

For future timelike $k=p-q$, the first and middle terms of (2.6) survive, giving

$$
\boxed{
\mathcal F_+=2gJ_0(bz_3)
\left[J_0(\tau z_2)\mathcal A_{a;b,\tau}(z_1)
+J_0(az_1)\mathcal A_{\tau;a,b}(z_2)\right].}
\tag{5.1}
$$

For past timelike $k$, the middle and last terms survive:

$$
\boxed{
\mathcal F_-=2gJ_0(az_1)
\left[J_0(bz_3)\mathcal A_{\tau;a,b}(z_2)
+J_0(\tau z_2)\mathcal A_{b;a,\tau}(z_3)\right].}
\tag{5.2}
$$

Multiplication by $(2\pi^3)^2$ gives the unamputated coefficient on the two future cones. The outer correction cannot be dropped. The uniform estimates are

$$
|\mathcal F_+|\le\frac{|g|}{2}(z_1^2+z_2^2),\qquad
|\mathcal F_-|\le\frac{|g|}{2}(z_2^2+z_3^2).
\tag{5.3}
$$

These are momentum-space amputated bounds, not unsmeared position-space pointwise claims. At a common small radius the leading timelike coefficient is $g z^2$, although the boundary coefficient is zero.

### 5.1 How the retarded solution produces the homogeneous term

The Hankel resolvent acting on the product source is

$$
V^{\sigma}_{t;m,n}(z)
=\frac1\pi\int_0^\pi
\frac{J_0(zC_{mn}(\theta))}{t^2-C_{mn}(\theta)^2+i0\sigma}\,d\theta,
\qquad \sigma=\operatorname{sgn}(r^0).
\tag{5.4}
$$

For future $k$ and strictly $a>b+\tau$, the denominators in $V_{a;b,\tau}$ are positive, whereas those in $V_{\tau;a,b}$ are negative. Hence

$$
V_{a;b,\tau}(0)=\frac1D,\qquad
V_{\tau;a,b}(0)=-\frac1D,
\qquad
\mathcal A_{t;m,n}=V_{t;m,n}-J_0(tz)V_{t;m,n}(0).
\tag{5.5}
$$

The two homogeneous contributions cancel in the full three-point function, proving (5.1) from (2.6). The past case is the exchanged expression. Equivalently the exact radial identity is

$$
\mathscr R_r(z,u)-J_0(tz)\mathscr R_r(0,u)
=\mathbf1_{u<z}\frac{R_{t^2}(z,u)}u.
\tag{5.6}
$$

For a middle bulk insertion with both outer insertions at the boundary, the result is

$$
\mathcal F_{0,z,0}=2g\mathcal A_{\tau;a,b}(z)
=2g\left[\frac{J_0(\tau z)}D
-\frac1\pi\int_0^\pi\frac{J_0(zC_{ab}(\theta))}{C_{ab}(\theta)^2-\tau^2}\,d\theta\right].
\tag{5.7}
$$

The standing-wave term $+2gJ_0(\tau z)/D$ is mandatory. The allowed outer **retarded** correction supplies it even when that outer radius is sent to zero. It is already included in the fixed-boundary Volterra expression. Analytically continuing only the regular spacelike particular solution would miss this term and give the wrong boundary value. Outgoing conditions apply to the inverse, not separately to the complete Wightman form factor.

At $D=0$, the separated $1/D$ terms are invalid individually; (4.1), (5.1) and (5.2) provide the finite combined limit.

## 6. Absorption, null strata and the prescribed regulator

The physical timelike inequalities place each radial resolvent outside its open absorption interval. The imaginary $JJ$ pieces of the limiting real-mass kernels (2.5) cancel algebraically between the two surviving terms of (2.6), before radial vertex integration; a common radial-vertex regulator preserves this cancellation. For genuine finite time shifts $r^0\mapsto r^0+i\epsilon$, the imaginary pieces need not cancel at finite $\epsilon$. Their vanishing limit, and the absence of a residual absorptive distribution, follow instead from the domination argument below.

There is a distributional check against hidden threshold terms. In each physical timelike region,

$$
|V_t^\epsilon(z)|\le\frac1\pi\int_0^\pi
\frac{d\theta}{|t^2-C_\theta^2|}=\frac1D
\tag{6.1}
$$

for a resolvent denominator with positive infinitesimal imaginary part of the appropriate sign. The genuine time shift also obeys this domination. If $x=s(r)-C_\theta^2$, then

$$
|x-\epsilon^2+2i\epsilon r^0|^2-x^2
=\epsilon^2[4(r^0)^2-2x]+\epsilon^4\ge0,
\tag{6.2}
$$

since $x\le(r^0)^2$. The spacelike inverse has the corresponding bound with denominator $\kappa^2+C_\theta^2$ and the same $1/D$ angular integral.

The quantity $D^{-2}$ is locally integrable on the **whole future-cone product**, including its collinear and outer-null boundaries; §7 proves this explicitly. Dominated $L^2_{\rm loc}$ convergence therefore gives the limiting resolvent functions and excludes delta-function concentration on those strata from this represented family. Across null transfer the piecewise spectral indicators produce ordinary steps, not new delta terms.

This exclusion uses the globally specified limiting-absorption family and the free positive-energy contractions in (2.6). Formulas known only away from a null surface could not, by themselves, exclude an independently added distribution on that surface. Such an addition would change the state or homogeneous prescription; it is not included in the vacuum coefficient defined here. No exact interacting Møller limit or equality for every switching scheme is claimed.

## 7. Global temperedness and the strong boundary limit

### 7.1 The piecewise kernel

For spacelike $k$, set $\kappa=\sqrt{-s(k)}$. The established answer is

$$
\mathcal F_{\rm sp}=J_0(az_1)J_0(bz_3)M_{z_2},\qquad
M_z=-\frac{2g}{\pi}\int_0^\pi
\frac{J_0(zC_{ab}(\theta))}{\kappa^2+C_{ab}(\theta)^2}\,d\theta.
\tag{7.1}
$$

Use (5.1) or (5.2) in the two timelike regions, and zero off $V_+\times V_+$. Values on the measure-zero dividing surfaces do not affect the regular distribution. This includes all transfer channels for the specified ordering; it is not an analytic continuation of (7.1) alone.

The regular Green representations yield, almost everywhere and uniformly in all radii,

$$
|\mathcal F_z|\le\frac{4|g|}{D},\qquad
|\mathcal F_\partial|\le\frac{2|g|}{D}.
\tag{7.2}
$$

For the boundary error, put $r=\max_i z_i$. The spacelike Bessel bounds and (5.3) combine into

$$
\boxed{
|\mathcal F_z-\mathcal F_\partial|
\le |g|r^2\left[1+\frac{a^2+b^2}{2D}\right].}
\tag{7.3}
$$

The individual $I_0$ growth in an uncombined reconstruction has disappeared from this three-point coefficient.

### 7.2 A global integrability estimate

Let $E_B=\{p\in V_+:p^0\le B\}$. The Gram singularity has the exact cap integral

$$
\int_{E_B\times E_B}\frac{d^4p\,d^4q}{D^2}
=\frac{\pi^2}{2}B^4.
\tag{7.4}
$$

To see this, put $p=E(1,\mathbf v)$, $q=F(1,\mathbf u)$ with velocities in the unit ball. Then $D^2=4E^2F^2L$, where $L=|\mathbf v-\mathbf u|^2-|\mathbf v\times\mathbf u|^2$. At $|\mathbf v|=v$,

$$
\int_{|\mathbf u|<1}\frac{d^3u}{L}
=\frac{2\pi}{v}\log\frac{1+v}{1-v}.
$$

For the inner integral, orient $\mathbf v=v\mathbf e_3$ and put $\mathbf u=v\mathbf e_3+\lambda\mathbf n$, $\mu=\mathbf n\cdot\mathbf e_3$. Then $L=\lambda^2H$, $H=1-v^2+v^2\mu^2$, and the unit-ball endpoint is $\lambda_{\max}=-v\mu+\sqrt H$. Thus the integral is $2\pi\int_{-1}^{1}d\mu\,\lambda_{\max}/H=2\pi\int_{-1}^{1}d\mu/\sqrt H$, giving the displayed logarithm. Its $v=0$ limit is $4\pi$.

Using $\int_0^1dv\,v\log[(1+v)/(1-v)]=1$ gives the velocity integral $8\pi^2$; the energy integrals supply $B^4/16$. In particular, Cauchy–Schwarz and the cone-cap volume give

$$
\int_{E_B\times E_B}\frac{d^4p\,d^4q}{D}
\le\frac{\pi^2}{3\sqrt2}B^6.
\tag{7.5}
$$

These bounds include soft energies and null edges, rather than excising them. They also strengthen the earlier nonsharp bound without changing its conclusions.

### 7.3 Distribution theorem

Fix a momentum unit for the Schwartz seminorms. A dyadic decomposition in $\max(p^0,q^0)$, using (7.4)–(7.5), shows

$$
\int_{V_+^2}d^4p\,d^4q\,
\left[1+\frac{a^2+b^2}{D}\right](1+|(p,q)|_E)^{-m}<\infty
\qquad(m>8).
\tag{7.6}
$$

Consequently (7.2) defines tempered regular kernels and, for a constant independent of the radii,

$$
|\langle\mathcal F_z-\mathcal F_\partial,\psi\rangle|
\le C|g|r^2\sup_{p,q}(1+|(p,q)|_E)^{10}|\psi(p,q)|.
\tag{7.7}
$$

This proves strong $\mathcal S'(\mathbb R^8)$ convergence uniformly on bounded Schwartz sets. Multiplying by the two bounded spectral-density factors and restoring the total-momentum delta gives the corresponding theorem for the translation-invariant three-point distribution on all spacetime tests. No disjoint-support assumption or fixed distance from a threshold is required.

The limit is exactly (3.2), hence the protected ordered boundary three-point distribution with coefficient $c=-g/2$. The common-radius timelike expansion $\mathcal F_z=g z^2+O(z^4)$ on compact open timelike sets shows that the uniform quadratic rate is generically sharp.

There is no Lorentzian source-contact subtraction in this theorem. The Euclidean quadratic BF subtraction remains part of the separately defined generating functional; it must not be discarded or transported into the Wightman coefficient as a fictitious subtraction.

## 8. Verification and remaining scope

**Verified:** timelike boundary spectral support; both surviving-outer-leg formulas; radial divided differences including exact resonances; mandatory homogeneous standing-wave contribution; cancellation of absorptive terms in the prescribed tree coefficient; global Gram integrability; and the independent-radii strong Schwartz-distribution limit of the complete ordered scalar three-point coefficient.

[Reproducible Wolfram checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman_checks_results.txt>) contain 15 vanishing exact residuals. Seven angular/Volterra comparisons include generic, exactly collinear, interior-resonant and zero-mass inputs; discrepancies are below $10^{-46}$. Two full timelike examples compare the retarded and fixed-boundary representations and satisfy the global boundary-rate bound. Three regulated-resolvent samples satisfy the domination bound and show decreasing imaginary parts as the regulator shrinks. The saved run has no messages. The distribution and threshold statements follow from the analytic estimates, not from these samples.

Fresh independent derivations checked the boundary phase-space support and timelike reconstruction, the retarded vacuum coefficient and state dressing, and the global distributional estimates. The latter included the null/collinear domination issue rather than assuming that agreement on open sets excluded supported terms. Two additional fresh manuscript reviews independently checked the retarded normalization and homogeneous terms, the exact Gram-cap integral and strong distributional theorem, and the limits of the vacuum-prescription claims.

**Assumptions:** the same classical large-$N$ IIB scalar channel and fixed field/gauge conventions as the earlier reports; a formal one-vertex expansion; Gaussian normal ordering; free AdS vacuum contractions; and the explicitly stated perturbative vacuum-contour/retarded limiting-absorption prescription. The result concerns that coefficient, not a nonperturbative real cubic measure.

**Not established:** higher-point interacting Wightman limits and positivity, a complete interacting operator-valued distribution, higher-order vacuum/Møller construction, full IIB dressing, or finite-$N$ corrections. The next question is whether the reconstructed first-order scalar field has the required bulk spacelike commutator in mixed bulk/boundary matrix elements, and which additional field sectors are needed when the observables cease to be purely scalar three-point insertions. A three-point distributional match alone is not a local interacting operator algebra.
