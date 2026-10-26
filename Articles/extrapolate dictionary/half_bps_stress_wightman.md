# Timelike gravitational reconstruction and its boundary-fixed global extension

## 1. Results and the remaining vacuum-identification gap

Both open timelike-transfer sectors of the first mixed stress–scalar coefficient can be obtained from the bulk equations by expanding **all surviving Heisenberg insertions**. Future timelike transfer requires the nonlinear scalar contribution to the boundary stress tensor; past timelike transfer requires the outer scalar correction. Continuing only the spacelike particular solution gives the wrong answer.

The combined timelike kernel has an exact compact double-integral representation, with no threshold denominator, and a global $z^6$ bound. A separate new estimate controls the previously matched spacelike kernel at arbitrary energies and mass ratios. Together they prove a strong Schwartz-distribution boundary theorem for the specified **boundary-fixed combined coefficient** with both scalar radii independent.

A limitation remains: equality of this global extension with the uncombined, genuinely complex-time-regulated gravitational vacuum coefficient has not been proved at every intersection of outer-null and transfer-null strata. The open-channel identification, the global function-kernel theorem, and the full regulator-identification problem are distinct statements. No independently supported edge distributions are included in the coefficient constructed here.

Consider the ordering $\langle\widehat T_e(x)\mathcal U_z(0)\mathcal U_w(y)\rangle$. Use $\eta=(-,+,+,+)$, $s(p)=(p^0)^2-|\mathbf p|^2$, $p,q\in V_+$, $k=p-q$, $a^2=s(p)$, $b^2=s(q)$, and $e$ a unit physical $p$-TT polarization. Put $Q=e^{ij}q_iq_j$ and $\alpha=2\sqrt{10}/N$. Define the spectral amputation by

$$
\widetilde W_e(p,q;z,w)=\rho_{\widehat T}(p)\rho_O(q)M^e_{z,w}(p,q),
\quad \rho_{\widehat T}=\frac{\pi^3a^4}{160},\quad \rho_O=2\pi^3.
\tag{1}
$$

The Fourier phases are $e^{-ip\cdot x+iq\cdot y}$, with $p\cdot x=p^0t-\mathbf p\cdot\mathbf x$ in this phase convention. All densities vanish off the stated future cones. Delta-normalized kernels instead multiply $M$ by $\sqrt{\rho_{\widehat T}\rho_O}$.

For timelike transfer put $\tau^2=s(k)>0$. The physical regions obey

$$
k\in V_+:a\ge b+\tau,\qquad -k\in V_+:b\ge a+\tau.
$$

Define

$$
\mathcal A_{t;m,n}(z)=\frac1\pi\int_0^\pi
\frac{J_0(z\sqrt{m^2+n^2-2mn\cos\theta})-J_0(tz)}
{t^2-m^2-n^2+2mn\cos\theta}\,d\theta,
\qquad \mathcal L_a=\partial_a^2-a^{-1}\partial_a.
\tag{2}
$$

The quotient is continued through its removable zeros. All mass derivatives below hold the other masses and $Q$ fixed. The timelike results are

$$
\boxed{\begin{aligned}
M_+(z,w)&=-\frac{8\alpha Q}{a^2}J_0(bw)\mathcal L_a\mathcal A_{\tau;a,b}(z),\\
M_-(z,w)&=-\frac{8\alpha Q}{a^2}\left[
J_0(bw)\mathcal L_a\mathcal A_{\tau;a,b}(z)
+J_0(\tau z)\mathcal L_a\mathcal A_{b;a,\tau}(w)\right].
\end{aligned}}
\tag{3}
$$

For $w=0$, both reduce to the same zero-boundary radial solution. The ordered boundary stress–scalar–scalar density has no strictly timelike-transfer support, whereas (3) is generally nonzero at finite radii.

## 2. The bulk vertex and the nonlinear boundary stress insertion

Keep the logfree BF vacuum, canonical minimally coupled scalar, boundary-normal anchor and actual relative metric $\gamma$ of [the gravitational reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction.md>). The [reference insertion prescription](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) is retained: conformal source measure, radial mollification before the thin-layer limit, and no replacement by a one-sided wall action. The BF boundary completion fixes the scalar variational domain. Pure-trace boundary/source contacts, treated in [the mixed Ward report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_mixed_ward.md>), are not added to this ordered TT coefficient.

With $C_0=2\pi^2$, the relevant Lorentzian action terms are

$$
S_{\gamma,2}=-\frac{\ell^3}{8\kappa^2}\int dz\,d^4x\,z^{-3}(\partial\gamma^{TT})^2,
\qquad
S_{\gamma UU}=\frac1{2C_0}\int dz\,d^4x\,z\gamma^{ij}\partial_iU\partial_jU.
\tag{4}
$$

Thus

$$
L_{2,p}\gamma^{TT}_{ij}=-\frac4{N^2}z^4\Pi_{ij,kl}(p):\partial^kU_0\partial^lU_0:,
\qquad L_{2,p}=\partial_z^2-3z^{-1}\partial_z+s(p).
\tag{5}
$$

The free metric mode is $\gamma_0=\alpha z^4 f_2(z\sqrt\square)\widehat T_0$, with $f_2(t)=8J_2(t)/t^2$ and $f_2(0)=1$. Anchored FG already has zero linear dressing vector; adding it again would double count.

Let $G_{2,p}^{\rm ret}$ invert $L_{2,p}$ with measure $u^{-3}du$. For timelike $p$,

$$
G_{2,p}^{\rm ret}(v,u)=\frac\pi2(vu)^2
\left[J_2(av_<)Y_2(av_>)-i\operatorname{sgn}(p^0)J_2(av)J_2(au)\right].
\tag{6}
$$

The matter-induced quadratic boundary stress is

$$
\boxed{\widehat T^{TT}_{1,ij}(p)
=-\frac\alpha{10}\lim_{v\to0}v^{-4}\int_0^\infty du\,u\,
G_{2,p}^{\rm ret}(v,u)\Pi_{ij,kl}(p):\partial^kU_0\partial^lU_0:(u,p).}
\tag{7}
$$

This is a retarded metric response, not an arbitrary local $:OO:$ addition. The coefficient follows from $(4/N^2)/\alpha=\alpha/10$. The scalar-induced trace completion of the holographic stress does not contribute to a physical TT contraction.

For future $p$,

$$
\lim_{v\to0}v^{-4}G_{2,p}^{\rm ret}(v,u)
=\frac{\pi a^2u^2}{16}[Y_2(au)-iJ_2(au)]
=\frac{a^2}{8}\mathcal L_a\mathscr R_p(0,u).
\tag{8}
$$

Here $\mathscr R_p$ is the scalar time-retarded inverse with measure $u\,du$. It is not the fixed-boundary Volterra inverse $R_s$, whose measure is $du$. Keeping these three measures distinct fixes the normalization of the outer stress diagram.

The prescription is the formal first-order vacuum-contour/retarded coefficient with free positive-energy contractions and normal-ordered cubic interaction, as in [the scalar calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman.md#L61-L112>). No exact interacting Møller operator or arbitrary-switching equivalence is assumed.

## 3. Why the outer insertions are necessary

First set $w=0$; the independent right scalar radius is restored below. Define the scalar resolvent response

$$
V^\sigma_{t;m,n}(z)=\frac1\pi\int_0^\pi
\frac{J_0(z\sqrt{m^2+n^2-2mn\cos\theta})}
{t^2-m^2-n^2+2mn\cos\theta+i0\sigma}\,d\theta.
\tag{9}
$$

The middle scalar correction contributes $-8\alpha Q\mathcal L_aV_{\tau;a,b}^{-\operatorname{sgn}k^0}(z)/a^2$. For future transfer, (7) has two scalar Wick contractions. Since $e^{ij}k_iq_j=-Q$, the derivative numerator is $+2Q$; also $\rho_O(k)/\rho_{\widehat T}(p)=320/a^4$. Its surviving contribution is

$$
\begin{aligned}
M_{\rm outer,+}
&=-\frac{4\pi\alpha Q}{a^2}J_0(\tau z)
\int_0^\infty du\,u^3[Y_2(au)-iJ_2(au)]J_0(bu)J_0(\tau u)\\
&=-\frac{8\alpha Q}{a^2}J_0(\tau z)\mathcal L_aV^+_{a;b,\tau}(0).
\end{aligned}
\tag{10}
$$

For past transfer, this stress contraction has no support. The right scalar correction instead supplies $-8\alpha QJ_0(\tau z)\mathcal L_aV^-_{b;a,\tau}(0)/a^2$ when its radius is zero. The imaginary $JJJ$ pieces cancel between the surviving terms before vertex integration for the real-mass limiting kernels with a common vertex regulator.

Put

$$
D^2=[(a+b)^2-\tau^2][(a-b)^2-\tau^2].
$$

In either strict physical timelike region, the middle boundary resolvent equals $-1/D$ and the surviving outer boundary resolvent equals $+1/D$. Thus their sum is

$$
M_z=-\frac{8\alpha Q}{a^2}\mathcal L_a
\left[V_{\tau;a,b}(z)+\frac{J_0(\tau z)}D\right]
=-\frac{8\alpha Q}{a^2}\mathcal L_a\mathcal A_{\tau;a,b}(z).
\tag{11}
$$

The required homogeneous term is explicitly

$$
M_{\rm hom}=-64\alpha Q\frac{D^2+6b^2\tau^2}{D^5}J_0(\tau z).
\tag{12}
$$

Restoring the right scalar radius gives (3): the future case acquires a common $J_0(bw)$, while the past case has a second finite Volterra contribution. The identities $e^{ij}(p-q)_i(p-q)_j=Q$ and the constant scalar spectral density fix its contraction and normalization.

As a check, the Euclidean TT diagram is the mass-differential image of an auxiliary scalar cubic seed: $\mathcal L_{p_E}K_0(p_Eu)=u^2K_2(p_Eu)$. In squared-mass variables, $p_E^2\mathcal L_{p_E}=4(p_E^2)^2\partial_{p_E^2}^2$ continues to $a^2\mathcal L_a$. After spectral amputation this gives $M=-4\alpha Q\mathcal L_a\mathcal F_{\rm scalar}/(g a^2)$. The auxiliary seed coupling $g$ cancels; it need not be a nonzero cubic of the chosen physical scalar polarization. This is an open-channel cross-check, not permission to differentiate an undominated global spectral limit.

## 4. A compact representation with no threshold poles

For $w=0$, the result solves

$$
(\partial_z^2+z^{-1}\partial_z+\tau^2)M_z
=-\frac{8\alpha Q}{a^2}z^2J_2(az)J_0(bz),
$$

with no logarithm and zero finite boundary coefficient. The unique solution is the Volterra solution equivalently represented in (11). Its useful alternative is

$$
\boxed{M_z=-\frac{\alpha Qz^6}{4}\int_0^1dt\int_0^1dv\,(tv)^2
f_2(az\sqrt{tv})J_0(bz\sqrt{tv})
J_0(\tau z\sqrt{(1-t)(1-v)}).}
\tag{13}
$$

To derive it, take the mean-value integral of the divided difference in (2), then use

$$
\frac{2J_1(\sqrt{X^2+Y^2})}{\sqrt{X^2+Y^2}}
=\int_0^1dv\,J_0(X\sqrt v)J_0(Y\sqrt{1-v}).
$$

Bessel addition performs the remaining angle average and yields

$$
\mathcal A_{\tau;a,b}(z)=\frac{z^2}{4}\int_0^1dt\,dv\,
J_0(az\sqrt{tv})J_0(bz\sqrt{tv})
J_0(\tau z\sqrt{(1-t)(1-v)}).
$$

Applying $\mathcal L_aJ_0(au)=u^2J_2(au)$ proves (13). Alternatively, expanding the Bessel functions and integrating beta monomials reproduces the radial inverse recurrence to all orders. These are analytic proofs, not extrapolations from sampled quadratures.

Since $|J_0|,|f_2|\le1$ and $\int_0^1dt\,dv\,(tv)^2=1/9$,

$$
\boxed{|M_z|\le\frac{|\alpha Q|z^6}{36},\qquad
|M_+(z,w)|\le\frac{|\alpha Q|z^6}{36},\qquad
|M_-(z,w)|\le\frac{|\alpha Q|(z^6+w^6)}{36}.}
\tag{14}
$$

The reduced coefficient $M/Q$ is entire in squared masses, including exact resonances and zero masses. Its expansion is

$$
M_z=-\frac{\alpha Qz^6}{36}
+\frac{\alpha Q(3a^2+9b^2+\tau^2)z^8}{2304}+O(z^{10}).
\tag{15}
$$

At positive-mass exact collinearity the physical contraction $Q$ vanishes; a finite nonzero value of the reduced coefficient is not a nonzero physical collinear amplitude.

### Two cautions about apparently regular formulas

First, an amputated boosted polarization component can diverge at $a\to0$. For $q=(b,\mathbf0)$ and $p=(E,\sqrt{E^2-a^2},0,0)$, with $0<E<b/2$, the transfer is timelike and $Q=e_{nn}b^2(E^2-a^2)/a^2$. Bounded laboratory energies do not bound this component.

Second, the naive continuation of the spacelike particular solution is

$$
P_z=\frac{8\alpha Q}{a^2}\mathcal L_a
\left\langle\frac{J_0(zC_\theta)}{C_\theta^2-\tau^2}\right\rangle,
\quad C_\theta^2=a^2+b^2-2ab\cos\theta.
$$

The correct answer is $M_z=P_z-J_0(\tau z)P_0$. After state normalization,

$$
\sqrt{\rho_{\widehat T}\rho_O}\,P_0
=\frac{4\pi^3\alpha}{\sqrt5}\,e_{nn}\frac{D^2+6b^2\tau^2}{D^3}.
\tag{16}
$$

At generic positive collinear thresholds this is quadrupolar $D^{-3}$, not absolutely locally integrable and not locally square integrable. A finite-part prescription can matter for either separated term. The compact combined expression avoids that split; the scalar $1/D$ limiting-absorption bound cannot simply be differentiated to justify it.

## 5. State normalization and a global spacelike estimate

Use $d\nu=d^4p/(2\pi)^4$ and $\langle p,\lambda|q,\sigma\rangle=(2\pi)^4\delta^4(p-q)\delta_{\lambda\sigma}$. For the five unit $p$-rest polarizations,

$$
K_{z,\lambda}=\frac{\pi^3a^2}{4\sqrt5}M_z^{e_\lambda},\qquad
Q_\lambda=\frac{D^2}{4a^2}e_{\lambda,nn},\qquad
\sum_\lambda|e_{\lambda,nn}|^2=\frac23.
$$

The apparent null-mass divergence cancels. Equation (13) gives

$$
\|K_z\|_{\rm pol}\le\frac{\pi^3|\alpha|z^6D^2}{576}\sqrt{\frac2{15}},
\qquad
\|K_z\|_{\rm HS(E_B^2)}\le
\frac{|\alpha|z^6B^8}{1728}\sqrt{\frac2{15}},
\tag{17}
$$

where $E_B=\{p\in V_+:p^0\le B\}$. The HS norm in (17) is for the timelike block extended by zero, not the full spacelike-plus-timelike kernel. Restricting the integration domain to timelike transfer only decreases the displayed upper bound. The second scalar radius adds at most the analogous $w^6$ term. These statements include the null/collinear edges of the specified function kernel.

### 5.1 Spacelike transfer without fixed energy cutoffs

For $s(k)=-\kappa^2<0$, write

$$
B_z=\frac1\pi\int_0^\pi\frac{J_0(zC_\theta)}{\kappa^2+C_\theta^2}\,d\theta,
\quad D^2=[\kappa^2+(a+b)^2][\kappa^2+(a-b)^2],
\quad \mathcal E=a+b+\kappa.
$$

The established spacelike amplitude is $M_z=8\alpha Q\mathcal L_aB_z/a^2$. A new global bound is

$$
\boxed{\left|\frac{D^3}{a^2}\mathcal L_a(B_z-B_0)\right|
\le5000z^2\mathcal E^2(1+z^2\mathcal E^2),\qquad
\left|\frac{D^3}{a^2}\mathcal L_aB_0\right|\le8.}
\tag{18}
$$

The constants are conservative. No positive lower bound on a mass, transfer or mass ratio is required.

Here is the essential cancellation in the proof. Put $r=\sqrt{b^2+\kappa^2}$. If $a\ge r/2$, differentiate the angular integral directly. With $A=\kappa^2+a^2+b^2-2ab\cos\theta$, use $\langle A^{-1}\rangle=1/D$, $\langle A^{-2}\rangle=(a^2+r^2)/D^3$, and bounded plane-wave derivatives of $J_0(zC_\theta)$. This gives the stronger bound $250z^2\mathcal E^2$ in that region.

If $a\le r/2$, the denominator stays at least $r^2/4$ throughout $0\le x\le a$. The angular mean $f(x)=B_z(x)-B_0(x)$ is even, and the exact identity

$$
\frac{f''(a)-f'(a)/a}{a^2}
=\frac12\int_0^1(1-v^2)f^{(4)}(va)\,dv
\tag{19}
$$

removes the inverse mass. The fourth-derivative product rule bounds the right side after multiplication by $D^3$ by

$$
\frac{125}{192}[4(zr)^4+64(zr)^3+7200(zr)^2]
\le5000(zr)^2[1+(zr)^2].
$$

This proves (18); the [independent full estimate](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_global_bound_checks.md>) records the individual derivative bounds and their constants.

Consequently, including the right scalar radius,

$$
\boxed{\|J_0(bw)K_z-K_0\|_{\rm pol}
\le\frac{\pi^3|\alpha|}{2\sqrt5}\sqrt{\frac23}\frac1D
\left[5000z^2\mathcal E^2(1+z^2\mathcal E^2)+2b^2w^2\right].}
\tag{20}
$$

### 5.2 Full tensor and the boundary theorem

Unamputating the complete stress tensor introduces no inverse mass:

$$
\|\widetilde W_z-\widetilde W_0\|_{\rm Eucl}
\le\sqrt{\rho_O\operatorname{tr}_{\rm Eucl}\rho_{\widehat T}}
\|K_z-K_0\|_{\rm pol}
\le\frac{\pi^3}{4}(p^0)^2\|K_z-K_0\|_{\rm pol}.
\tag{21}
$$

In the timelike sectors, $a^4\Pi_{ij,kl}q^kq^l$ is a polynomial tensor of total momentum degree six. Equation (14) therefore gives a global polynomial majorant times $z^6+w^6$. In the spacelike sector, $\mathcal E\le2(p^0+q^0)$, and the established Gram estimate

$$
\int_{E_B\times E_B}\frac{d^4p\,d^4q}{D^2}=\frac{\pi^2}2B^4
$$

gives $\int_{E_B^2}D^{-1}\le C B^6$. A dyadic energy decomposition controls the polynomial factors in (20)–(21).

Define the boundary-fixed combined coefficient by the spacelike expression and (3) on their open regions, their locally integrable extension through the dividing surfaces, and zero off $V_+^2$. No extra supported distributions are added. For $0\le z,w\le1$ in fixed length units and $r_* =\max(z,w)$, the estimates prove

$$
\boxed{|\langle\widetilde W_{z,w}-\widetilde W_{0,0},\psi\rangle|
\le C|\alpha|r_*^2\sup_{p,q}(1+|(p,q)|_E)^{18}|\psi(p,q)|.}
\tag{22}
$$

Thus this specified full tensor coefficient has a strong $\mathcal S'(\mathbb R^8)$ boundary limit for arbitrary joint momentum tests, uniformly on bounded Schwartz sets and independently of the radius ratio. The timelike contribution alone is $O(z^6+w^6)$. The boundary coefficient is precisely the previously computed stress–scalar CFT cut on spacelike transfer and zero on the timelike regions.

This improves compact-energy estimates for this coefficient, not the entire interacting operator domain. In particular, a Schwartz test of $p-q$ alone does not suppress $p\simeq q\to\infty$ and need not give an unweighted global Hilbert–Schmidt norm. External spectral weights or joint-momentum tests are part of the claimed result.

## 6. What has and has not been established about the regulator

For a middle scalar, the exact radial identity

$$
\mathscr R_r(z,u)-h_{s(r)}(z)\mathscr R_r(0,u)
=\mathbf1_{u<z}\frac{R_{s(r)}(z,u)}u
\tag{23}
$$

removes the infinite radial tail before integration. All outer contributions to a one-finite-scalar matrix element multiply the same free middle mode. Supplying the independently determined boundary cut and taking the boundary-subtracted combination therefore fixes the coefficient used in (22). At two finite scalar radii the additional outer Volterra term is retained as in (3).

This is not identical to proving convergence of each uncombined complex-time-regulated term. Their separate $D^{-3}$ behavior invalidates the earlier scalar domination argument.

There is nevertheless a useful local check near a compact positive-mass future-collinear threshold. In the radial limiting-absorption prescription with fixed real TT contraction, put

$$
A^2=a^2+2i\epsilon p^0-\epsilon^2,\qquad
T^2=\tau^2-2i\epsilon k^0-\epsilon^2,
\quad \lambda(x,y,t)=(x-y-t)^2-4yt.
$$

The outer and middle boundary terms involve $\lambda_{\rm out}=\lambda(A^2,b^2,\tau^2)$ and $\lambda_{\rm mid}=\lambda(a^2,b^2,T^2)$. The outer numerator also has the necessary factor $A^4/a^4$, which cannot be replaced by one at finite $\epsilon$.

At collinearity $a=b+\tau$, $\tau p^0=ak^0$, so their leading imaginary Gram shifts agree. If $r$ now denotes a local relative-velocity distance from that stratum, then on such a positive-mass compact set

$$
\lambda_{\rm out}-\lambda_{\rm mid}=O(\epsilon r+\epsilon^2),\quad
|\lambda_j|\gtrsim r^2+\epsilon,\quad Q=O(r^2).
$$

The most singular difference is integrable with estimate

$$
\epsilon\int_0^{r_0}\frac{r^5\,dr}{(r^2+\epsilon)^{7/2}}=O(\sqrt\epsilon),
$$

and the numerator/prefactor errors vanish as well. This checks the cancellation for that radial prescription near generic positive-mass thresholds. A fully shifted tensor projector and the outer-null/zero-transfer intersections require their own estimates; the constants above degenerate there. The [direct all-insertion derivation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent.md>) records the regulator distinctions.

Accordingly, (22) must not be described as a proof that every genuine gravitational switching/contour family converges to this extension at all null intersections. The unresolved task is concrete: control the combined regulated tensor at those intersections, or derive its ordered boundary value directly in a representation that fixes supported terms. Euclidean source contacts and their scheme changes cannot be used to supply such Lorentzian terms by hand.

## 7. Numerical examples and verification

For $z=1,w=1/2$, the following values divide the amplitude by $\alpha Q$:

| $(a,b,\tau)$ | free-right-factor times middle Volterra term | additional right-scalar term | complete timelike coefficient |
|---|---:|---:|---:|
| $(3,1,1)$ | $-0.0144444132655248$ | $0$ | $-0.0144444132655248$ |
| $(1,3,1)$ | $-0.00158612049858352$ | $-0.000305760890764562$ | $-0.00189188138934808$ |
| $(2,1,1)$ | $-0.0183923332520357$ | $0$ | $-0.0183923332520357$ |
| $(1,2,1)$ | $-0.0104021654327998$ | $-0.000311852642923707$ | $-0.0107140180757235$ |

The last two rows are reduced threshold values; the physical positive-mass collinear contraction has $Q=0$. Independent all-leg/Volterra comparisons and compact-integral comparisons agree, including zero masses and exact resonances.

**Verified:** the nonlinear TT stress source and retarded normalization; both open timelike all-insertion coefficients; their finite-right-radius terms; the compact integral, normalization and bounds; the global spacelike estimate; and the boundary-fixed strong Schwartz theorem. Independent derivations and cross-reviews checked the radial compact-integral and global spacelike proofs separately.

Reproducible artifacts:

- [Direct all-insertion checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_independent_results.txt>).
- [Compact-kernel proof](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_kernel_checks.md>), [checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_kernel_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_kernel_checks_results.txt>).
- [Global spacelike proof](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_global_bound_checks.md>), [checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_global_bound_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_global_bound_checks.json>).
- [Normalization and two-finite-radius checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_parent_checks.wl>) and [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_timelike_parent_checks_results.txt>): eleven exact residuals vanish and all four example bounds pass, with no messages in the saved final run. Analytic estimates, not finite quadratures, prove the uniform bounds.

**Assumptions:** first gravitational tree order, fixed boundary-normal FG representative, logfree scalar vacuum, physical source-free TT graviton sector, specified boundary spectral data, and no extra edge sectors in the combined extension. The boundary actions and $\omega=\delta\theta$ convention remain those of [the workspace formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L95>).

**Not verified:** global identification with the uncombined genuinely time-shifted gravitational contour at all null intersections, arbitrary-switching equivalence, interacting positivity/common Hilbert domains, nonlinear global dressing, or loop-renormalized composites. These qualifications are not weakened by the global function-kernel estimates.
