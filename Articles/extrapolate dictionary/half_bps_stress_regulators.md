# Ordered tube limits and global Gram finite parts for gravitational reconstruction

## 1. Results and physical scope

Two regulators must be distinguished. An ordered imaginary displacement of the **external coordinates** multiplies the whole spectral coefficient by an exponential. A complex shift of the **frequency in a retarded resolvent** instead damps real elapsed time. They do not shift the same variables and are not the same finite-regulator prescription.

This report establishes two results for the first stress–scalar–scalar coefficient:

1. The previously constructed combined tensor has a genuine external-tube boundary value, with a strong joint boundary estimate uniform in the two radial positions and two imaginary-time gaps.
2. Each singular timelike homogeneous tensor admits a global Lorentz-covariant, transverse-traceless finite part under an explicitly specified invariant Gram cutoff. The cutoff converges strongly in Schwartz distributions, including all null endpoints and the origin. A quantitative rate is $O(\delta^2[1+|\log\delta|])$ in fixed units.

The second result does **not** identify this invariant finite part with the uncombined complex-frequency Abel family. That identification, or a direct physical-contour construction with controlled distributional radial boundary data, remains necessary. In particular, the phrase “genuine time shift” in the earlier discussion must not be used to identify these distinct operations.

The theory, action, logfree BF boundary condition, Poincaré vacuum prescription, boundary-normal FG representative, and insertion normalization are those of [the timelike reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>). No change is made to the [reference bulk-insertion formalism](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>): radial mollification precedes the thin-layer and boundary limits. Neither a radial wall action nor a radial effective action replaces the insertion functional. The results below concern the resulting tree coefficient, not an independent set of slice oscillators.

Use $\eta=(-,+,+,+)$ and define

$$
x=s(p)=-p^2=a^2,\qquad y=s(q)=-q^2=b^2,\qquad
c=-p\cdot q,\qquad t=s(p-q)=x+y-2c,
$$
$$
\Delta=c^2-xy,\qquad D=2\sqrt\Delta,\qquad \alpha=2\sqrt{10}/N.
\tag{1}
$$

Here dot products in (1) use $\eta$; Fourier phases below instead explicitly use $p^0t-\mathbf p\cdot\mathbf x$. The spectral support is $\overline V_+^2$. Tensor norms and derivatives are in fixed laboratory coordinates.

## 2. What the external Wightman shift actually does

For the ordering $\langle\widehat T(x_1)\mathcal U_z(x_2)\mathcal U_w(x_3)\rangle$, use

$$
W=\int d\nu(p)d\nu(q)\,
 e^{-ip\cdot(x_1-x_2)+iq\cdot(x_3-x_2)}\widetilde W(p,q),
\qquad d\nu(p)=\frac{d^4p}{(2\pi)^4}.
$$

Set $x_j^0\mapsto x_j^0-i\eta_j$, with $\eta_1>\eta_2>\eta_3$, and $d_1=\eta_1-\eta_2$, $d_2=\eta_2-\eta_3$. Exactly,

$$
\boxed{\widetilde W^{\boldsymbol d}(p,q)
=e^{-d_1p^0-d_2q^0}\widetilde W(p,q).}
\tag{2}
$$

No radial mass or TT projector changes in this formula. Conversely, for a retarded response,

$$
\boxed{\widehat R(\omega+i\epsilon)
=\mathcal F_t[e^{-\epsilon t}R_{\rm ret}(t)](\omega).}
\tag{3}
$$

For example, $R_{\rm ret}(t)=-\theta(t)\sin(\Omega t)/\Omega$ yields $[(\omega+i\epsilon)^2-\Omega^2]^{-1}$, while the vacuum oscillator has $W(t-id)=e^{-i\Omega t-d\Omega}/(2\Omega)$. The parameters $d$ and $\epsilon$ even have inverse physical dimensions.

A common past switch also supplies an output factor:

$$
\int_{-\infty}^{t}dt'\,R(t-t')e^{\epsilon t'}e^{-i\omega t'}
=e^{\epsilon t}e^{-i\omega t}\widehat R(\omega+i\epsilon).
\tag{4}
$$

Thus replacing stationary denominators alone is a specified Abel family, not automatically the exact finite switched correlator. The established compact positive-mass collinear estimates for shifted radial resolvents remain estimates for that family, not proofs about (2).

### 2.1 Joint tube and radial boundary theorem

Let $\widetilde W_{z,w}$ be the boundary-fixed, locally integrable full tensor of [the combined-kernel theorem](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md#L304-L334>), without added supported terms. Put

$$
P_m(\psi)=\sup_{p,q}(1+|(p,q)|_E)^m|\psi(p,q)|,
\qquad r_* =\max(z,w),\qquad 0\le z,w\le1.
$$

The established polynomial and Gram bounds give, uniformly in these radii,

$$
\int d\nu(p)d\nu(q)\,\|\widetilde W_{z,w}\|(1+|(p,q)|_E)^{-18}
\le C|\alpha|.
$$

Since $0\le1-e^{-d_1p^0-d_2q^0}\le d_1p^0+d_2q^0$ on the spectral support,

$$
\boxed{\begin{aligned}
|\langle\widetilde W_{z,w}^{\boldsymbol d}-\widetilde W_{z,w},\psi\rangle|
&\le C|\alpha|(d_1+d_2)P_{19}(\psi),\\
|\langle\widetilde W_{z,w}^{\boldsymbol d}-\widetilde W_\partial,\psi\rangle|
&\le C|\alpha|[r_*^2+d_1+d_2]P_{19}(\psi).
\end{aligned}}
\tag{5}
$$

All four parameters can tend to zero independently. These are strong $\mathcal S'$ limits, uniform on bounded Schwartz sets. At positive gaps the polynomial spectral bounds give the usual holomorphic Fourier–Laplace representation.

This is not a uniqueness argument. For example, a compact measure supported on $(p,q)=(\ell,\zeta\ell)$, with $\ell$ future null and $\zeta>0$, also has the damping (2) and its boundary value. Tensor weight $\ell_i\ell_j$ is even transverse and traceless there. This example is not claimed to satisfy all conformal or vacuum requirements; it demonstrates that spectral support, tube convergence and these algebraic tensor conditions alone do not exclude an all-null addition. A detailed independent derivation is in [the regulator analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulator_independent.md>).

## 3. The polynomial tensor and its differentiated scalar kernel

For $x>0$ define $\pi_{ij}=\eta_{ij}+p_ip_j/x$ and the physical spin-two projector $\Pi_{ij,kl}=\tfrac12(\pi_{ik}\pi_{jl}+\pi_{il}\pi_{jk})-\pi_{ij}\pi_{kl}/3$. The unamputated numerator is

$$
\boxed{\begin{aligned}
N_{ij}:=x^2\Pi_{ij,kl}q^kq^l
&=(xq_i-cp_i)(xq_j-cp_j)
-\frac\Delta3(x\eta_{ij}+p_ip_j)\\
&=x^2q_iq_j-xc(p_iq_j+q_ip_j)
+\frac{2c^2+xy}{3}p_ip_j-\frac{x\Delta}{3}\eta_{ij}.
\end{aligned}}
\tag{6}
$$

It is a degree-six polynomial, with $p^iN_{ij}=\eta^{ij}N_{ij}=0$. For future causal real momenta,

$$
\|N\|_F\le\sqrt{\frac23}[2(p^0)^2-x]\Delta\le2(p^0)^2\Delta.
\tag{7}
$$

Polynomiality removes inverse-mass projector poles but does not make each threshold term bounded. At $x=0$, for example, $N_{ij}=2c^2p_ip_j/3$ need not vanish. Explicit doubly degenerating timelike paths and complex-shift counterexamples are given in [the independent tensor analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_null_tensor_independent_20261026.md>).

A useful differential identity holds off the Gram locus:

$$
\boxed{\partial_{q^i}\partial_{q^j}\frac1D=\frac{48N_{ij}}{D^5},\qquad D>0.}
\tag{8}
$$

Indeed $\partial_{q^i}\Delta=2(xq_i-cp_i)$ and $\partial_{q^j}(xq_i-cp_i)=x\eta_{ij}+p_ip_j$, which directly give (8).

In the $p$-rest frame, $D=2a|\mathbf q|$. The distributional Hessian of $1/D$ contains the contact

$$
-\frac{2\pi}{3a}\pi_{ij}\delta^3(\mathbf q_{\rm rest}).
\tag{9}
$$

The transverse tracefree Hessian $\partial_{q^i}\partial_{q^j}(1/D)-\pi_{ij}\Box_q(1/D)/3$ removes this contact at fixed positive $a$; this is the three-dimensional transverse trace subtraction, not the four-dimensional $\eta$-trace subtraction. Its unweighted joint extension to $a=0$ is not automatic: after writing $q=\zeta p$, the contact acts with a factor $\pi_{ij}$ and can have a logarithmic $dx/x$ singularity. One must not simply multiply a global scalar distribution by this singular projector.

The actual homogeneous gravitational term has an extra polynomial

$$
S=D^2+6yt.
$$

At $q=\zeta p$, $S=6\zeta^2(1-\zeta)^2x^2$. Consequently the contact of $S$ times the Hessian (before the factor $1/48$ in (8)) acts as

$$
-4\pi\int d^4p\,d\zeta\,\zeta^2(1-\zeta)^2
[x^2\eta_{ij}+xp_ip_j]\psi(p,\zeta p).
\tag{10}
$$

Here $p\in V_+$ and $\zeta>0$, with $0<\zeta<1$ in the future-transfer sector and $\zeta>1$ in the past-transfer sector. This is locally integrable at the null boundary; the physical weight removes that particular unweighted obstruction. The following direct construction also controls the full finite part, not only its contact.

## 4. A global invariant finite-part theorem

Define the two open sectors

$$
\Omega_+=\{p,q,p-q\in V_+\},\qquad
\Omega_-=\{p,q,q-p\in V_+\},
$$

and, with **Lebesgue** $d^4p\,d^4q$ measure in this section,

$$
H_{ij}=\frac{N_{ij}(D^2+6yt)}{D^5},\qquad
\langle H^\pm_\delta,\psi\rangle
=\int_{\Omega_\pm\cap\{D>\delta\}}d^4p\,d^4q\,H_{ij}\psi^{ij}.
\tag{11}
$$

The cutoff $\delta$ has units of momentum squared. Bounds below use fixed units and $0<\delta\le1$. Write

$$
\mathfrak p_{k,m}(\psi)=
\max_{|\beta|\le k}\sup_{p,q}(1+|p|_E+|q|_E)^m|\partial^\beta\psi(p,q)|.
$$

**Theorem.** Each $H^\pm_\delta$ has a strong $\mathcal S'(\mathbb R^8)$ limit $H^\pm_{\rm fp}$, with

$$
\boxed{\begin{aligned}
|\langle H^\pm_{\rm fp},\psi\rangle|&\le C\mathfrak p_{2,12}(\psi),\\
|\langle H^\pm_\delta-H^\pm_{\rm fp},\psi\rangle|
&\le C\delta^2(1+|\log\delta|)\mathfrak p_{2,12}(\psi).
\end{aligned}}
\tag{12}
$$

The limits are Lorentz-covariant, transverse and traceless, since the invariant truncated tensors have these properties already. No inverse-mass lower bound is required. This is a finite part, not an absolutely integrable density.

### 4.1 Rest-frame geometry of the two sectors

Let $P$ be the larger future momentum: $P=p$ on $\Omega_+$ and $P=q$ on $\Omega_-$. Put $m^2=s(P)>0$, $E=P^0$, and choose a boost $\Lambda_P$ with $\Lambda_P(m,\mathbf0)=P$. The smaller momentum has the parametrization

$$
Q=m\Lambda_P(v,r\mathbf n),\qquad
0<v<1,\quad 0<r<\min(v,1-v),\quad |\mathbf n|=1.
\tag{13}
$$

Thus $D=2m^2r$, $d^4Q=m^4r^2dv\,dr\,d\Omega$. Both the causal-diamond domain and the Gram cutoff are spherical in $\mathbf n$; there is no hidden assumption about a spherical laboratory test function.

Set $T_{ab}=n_an_b-\delta_{ab}/3$. In the $P$-rest frame, the future sector has only spatial components,

$$
H_{ab}^+=\frac{A(v,r)}{32r^3}T_{ab},\qquad
A=4r^2+6(v^2-r^2)[(1-v)^2-r^2].
\tag{14}
$$

For the past sector set $B(v,r)=6(1-v)^2-2r^2$. Its components are

$$
\boxed{\begin{aligned}
H_{00}^-&=\frac{B}{48r},&
H_{0a}^-&=-\frac{vB}{48r^2}n_a,\\
H_{ab}^-&=\frac{v^2B}{32r^3}T_{ab}
-\frac{B}{96r}(n_an_b-\delta_{ab}).
\end{aligned}}
\tag{15}
$$

Only the quadrupolar $r^{-3}$ terms fail absolute local integrability. Their angular mean vanishes; their first angular moment vanishes too. The $r^{-2}$ mixed term is odd, and the remaining $r^{-1}$ terms are integrable.

### 4.2 Angular cancellation and all-null control

The finite part is defined by performing the angular cancellation before the $r\to0$ integral. In the $r^{-3}T_{ab}$ terms subtract from the test function its affine Taylor polynomial at $Q=vP$. For $r^{-2}n_a$ subtract its constant value. These subtractions integrate to zero at every positive cutoff, so they preserve (11) exactly. The Taylor paths stay inside the causal diamond.

A laboratory rank-two tensor boost costs at most $C(E/m)^2$. The smaller momentum displacement costs at most $CEr$, so the first and second Taylor remainders cost $CEr$ and $CE^2r^2$, respectively. The omitted inner region is contained in $0<r<h$, where $h=\min(1,\delta/(2m^2))$; its actual upper endpoint also obeys $r<\min(v,1-v)$. Combining the measure, boost and remainders gives the uniform fixed-$P$ estimate

$$
C\mathfrak p_{2,12}(\psi)\,
 m^2E^2(1+E+E^2)(1+E)^{-12}h^2.
\tag{16}
$$

This explicitly controls the degenerating boost at $m=0$: the measure leaves a positive factor $m^2$.

Writing $x=m^2$ at fixed $E$, $d^4P\le C E\,dx\,dE\,d\Omega$. The remaining mass integral is elementary:

$$
\int_0^{E^2}x\min\left(1,\frac{\delta^2}{4x^2}\right)dx
=\begin{cases}
E^4/2,&E^2\le\delta/2,\\
\delta^2/8+(\delta^2/4)\log(2E^2/\delta),&E^2>\delta/2.
\end{cases}
\tag{17}
$$

It is bounded by $C\delta^2[1+|\log\delta|+\log(1+E)]$. The remaining energy integral in (16) converges, proving the error estimate. Removing the cutoff instead gives mass integral $E^4/2$, still integrable with weight 12. This proves the uniform bound and strong convergence in (12), including soft, collinear, null and simultaneous-zero endpoints. The [independent finite-part proof](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_gram_finite_part_independent.md>) derives the same result directly.

### 4.3 A nonzero test and its physical normalization

Fix $p=(a,\mathbf0)$ in the future sector, and take a unit spatial symmetric-traceless matrix $e$, $e_{ij}e_{ij}=1$. Pair $e^{ij}H_{ij}$ with $e_{kl}q^kq^l$ on the causal diamond $q,p-q\in V_+$. A smooth compact test equal to this polynomial on the diamond gives the same answer. The result is

$$
\boxed{\int_{q,p-q\in V_+}d^4q\,
(e^{ij}H_{ij})(e_{kl}q^kq^l)=\frac{\pi a^6}{3360}.}
\tag{18}
$$

Here the extra quadratic test makes the integral absolutely convergent. The angular integral is $8\pi/15$, and the radial-time polynomial integral is $a^7/56$, with prefactor $\pi/(60a)$. This checks a nontrivial tensor component and the normalization of the finite-part kernel.

The homogeneous contribution to the actual unamputated coefficient, with the right scalar at the boundary, is

$$
\widetilde W_{\rm hom,ij}
=-\frac{4\pi^6\alpha}{5}\,H_{ij}J_0(z\sqrt t),
\tag{19}
$$

because $\rho_{\widehat T}\rho_O=\pi^6a^4/80$. Formula (19) refers to a spectral density; pair it with $d\nu(p)d\nu(q)$ rather than the unnormalized measure used in (11) and (18).

On the timelike sectors the Bessel factor and its first two momentum derivatives have polynomial bounds. Therefore the finite-part construction also applies after this multiplication. The isolated particular solution has the opposite homogeneous singular term plus the locally integrable combined Volterra coefficient. Giving both pieces the **same invariant Gram cutoff** makes their finite parts cancel and reproduces the combined coefficient across every null stratum. This is an all-null result for this specified cutoff construction, not a derivation of that cutoff from the physical switched vertex.

## 5. What remains to identify the physical vacuum

There are now three separate operations:

- External coordinate-tube regularization (2), for which (5) is proved.
- Invariant Gram finite-part regularization (11), for which (12) is proved.
- Complex-frequency Abel/contour regularization of the bulk all-insertion coefficient, whose global equality with the preceding constructions is not yet proved.

Even the complex polynomial $N(P,q)$, $P=p+i\epsilon n$, must not be combined with the wrong Gram polynomial: $4\Delta(P,q)=\lambda(s(P),s(q),s(P-q))$, whereas shifting only the outer radial output mass gives $\lambda(s(P),s(q),s(p-q))$. These differ at finite $\epsilon$. Polynomial projector cancellation by itself does not justify interchanging their boundary limits.

One route forward is to prove the global sum of the specified Abel-regulated diagrams converges to the invariant finite part, and separately justify its relation to the intended perturbative vacuum contour. A different route avoids controlling the separated terms. Construct the physical coefficient as a distribution, establish its radial equations and complete logfree boundary trace, and then use local momentum-distribution uniqueness.

For one finite scalar, the difference of two candidates with the same source obeys

$$
(\partial_z^2+z^{-1}\partial_z+s(p-q))\mathcal D_z=0.
$$

On compact momentum sets the general distribution-valued solution has the form $h_s(z)A+g_s(z)B$, with $h_s=J_0(z\sqrt s)$ and $g_s=h_s\log z+$ a smooth-in-$s$ power series. The logfree condition removes $B$, and a zero complete boundary trace removes $A$, including distributions supported on null strata. At two radii, first fix one boundary face from its radial equation and the corner trace, then solve for the other radius. This argument is local in momentum; one must not multiply an arbitrary tempered distribution by the exponentially growing spacelike $h_s$ globally.

The unresolved input is therefore precise: existence of the physical contour boundary value with these weak radial equations and traces, with no surviving switching defect; alternatively, an explicit Abel-to-finite-part equivalence theorem together with justification that the Abel prescription represents the intended physical vacuum contour. Equality of two regulators alone does not establish the latter identification. Tube analyticity alone is not that input.

## 6. Verification

**Verified:** the Fourier distinction, the joint tube/radial estimate, polynomial tensor identities, the Hessian/contact calculation, both causal-diamond component formulas, and the global invariant-cutoff theorem. Independent researchers derived the regulator distinction, tensor bounds, and finite-part proof separately. Exact Wolfram checks give zero Hessian, weight, oscillator, and polynomial-moment residuals, with no messages: [script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulator_checks.wl>) and [actual output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulator_checks_results.json>). The uniform estimates are analytic, not inferred from sampled quadratures.

**Assumptions:** first gravitational tree order, the established bulk-insertion and anchored FG setup, the specified combined kernel for (5), and exactly the invariant cutoff (11) for (12). No new edge sector is inserted in either construction.

**Not verified:** physical Abel/contour equality with the invariant finite part, arbitrary-switching equivalence, nonlinear dressing, positivity or a common nonperturbative interacting Hilbert domain. The larger extrapolate-dictionary project remains open.
