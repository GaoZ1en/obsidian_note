# Switched bulk equations and boundary-subtracted gravitational reconstruction

**Subsequent result:** [Genuine switching and the first gravitational reconstruction](half_bps_stress_completion.md) constructs the complete corner and its global finite-radius limit in an explicit causal TT prescription, with the radial vertex cutoff removed before the spacetime adiabatic limit. Its anchored source completion records nonzero massless constraint terms and a separate condition on the global Einstein infrared domain. The boundary-subtracted theorem proved below remains an independent ingredient of that result.

## 1. Result

For the first gravitational stress–scalar–scalar coefficient, a genuine spacetime switch can be removed from the **boundary-subtracted finite-radius observable** across every null stratum. The proof uses the correct switched derivative vertex and all external insertions, not a stationary complex-frequency substitution.

In full, nonstationary momentum variables, the subtraction is

$$
\mathfrak B_\chi(z,w)=\widetilde W_\chi(z,w)
-h_z(s(r))\widetilde W_\chi(0,w),\qquad
r=\Omega+q-p,\quad h_z(s)=J_0(z\sqrt s).
\tag{1}
$$

Here $\Omega$ is the momentum supplied by the switch. Both outer-insertion terms cancel exactly. The remainder is a finite Volterra integral of a polynomial, unamputated free Wick source. If $\chi_R(X)=\chi(X/R)$, with $\chi\in C_c^\infty(\mathbb R^4)$ equal to one near the origin, then for every compact momentum set $K$ and every positive integer $M$,

$$
\boxed{\left|\left\langle\mathfrak B_{\chi_R}(z,w)
-(2\pi)^4\delta^4(\Omega)\mathfrak B_1(z,w),\Psi\right\rangle\right|
\le C_{K,M,Z,W}|\alpha|z^6R^{-M}
\max_{|\beta|\le M}\|\partial_\Omega^\beta\Psi\|_\infty.}
\tag{2}
$$

This holds for $\operatorname{supp}\Psi\subset K\subset\mathbb R^{12}$, $0\le z\le Z$, $0\le w\le W$, and $R\ge1$. It is strong local momentum-distribution convergence, uniform on bounded test sets, including all soft and null intersections. The radial and adiabatic limits in (2) require no ratio condition.

The full coefficient still requires the adiabatic limit of $\widetilde W_\chi(0,w)$, ultimately the complete boundary three-point distribution. Neither (2) nor an independently known CFT answer proves that the switched bulk boundary trace converges to that answer. Also, the separate subtraction in (1) is generally not a global tempered distribution: its spacelike exponential growth must cancel against the boundary term in the complete correlator.

## 2. Physical setup and the switched vertex

We retain the boundary-normal FG representative, Poincaré free vacuum, logfree BF scalar, and first gravitational tree order of [the reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>). The metric signature is $\eta=(-,+,+,+)$, $s(p)=-\eta_{ij}p^ip^j$, and Fourier modes are $e^{ip_ix^i}=e^{-ip^0t+i\mathbf p\cdot\mathbf x}$. Set

$$
C_0=2\pi^2,\qquad \alpha=2\sqrt{10}/N,\qquad
\gamma_0=\alpha u^4f_2(u\sqrt\square)\widehat T_0,
\quad f_2(v)=8J_2(v)/v^2,\quad f_2(0)=1.
$$

Insert a smooth real boundary-spacetime switch and, initially, a radial vertex cutoff $\beta(u)$:

$$
S_{\rm int}[\chi,\beta]=\frac1{2C_0}\int du\,d^4X\,
 u\beta(u)\chi(X)\gamma^{ij}\partial_iU\partial_jU.
\tag{3}
$$

This is the switched reduced TT interaction. A nonconstant external switch is not itself a diffeomorphism-invariant completion of the full gravitational theory; no finite-switch BRST or nonlinear constraint theorem is assumed. The result below is for this explicitly specified first-order retarded/Wightman coefficient.

Varying the scalar gives

$$
\boxed{\mathcal D U_{1,\chi}
=\beta(u)\partial_i[\chi\gamma_0^{ij}\partial_jU_0]
=\beta(u)\left[\chi\gamma_0^{ij}\partial_i\partial_jU_0
+(\partial_i\chi)\gamma_0^{ij}\partial_jU_0\right],}
\tag{4}
$$

where $\mathcal D=\partial_u^2+u^{-1}\partial_u+\square$ and $\partial_i\gamma_0^{ij}=0$. There is no radial derivative of $\beta$ in this vertex. The metric response similarly has source

$$
L_2\gamma_{1,ij}^{TT}
=-\frac4{N^2}u^4\beta(u)\Pi_{ij,kl}
[\chi:\partial^kU_0\partial^lU_0:].
\tag{5}
$$

The switch belongs **inside** the output projector. There is no local $\partial\chi$ term in the unconstrained metric variation, but the nonlocal projector does not commute with multiplication by $\chi$.

For non-time-ordered products the free Wightman factors solve their homogeneous equations distributionally. No time-ordering contact is added to (4). A retarded derivation must retain the fixed Green-function jump; integrating vertex derivatives carelessly across the retarded step would lose precisely the terms needed for (4). The [independent switched-action derivation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switch_independent.md>) details these distinctions.

### 2.1 A finite-switch counterexample to shifting denominators alone

For the formal past exponential $\chi=e^{\epsilon t}$, a scalar of momentum $q$ and a free metric polarization $e$ produce the vertex

$$
-e^{ij}q_iq_j+i\epsilon e^{0j}q_j.
\tag{6}
$$

The response also carries $e^{\epsilon t_{\rm output}}$, and its retarded frequency shifts. Merely shifting the denominator while leaving the real vertex unchanged omits the second term in (6).

For an explicit unit TT example, take

$$
p=(5/4,3/4,0,0),\quad q=(3,0,0,0),\quad
 e^{ij}=\frac1{\sqrt6}
\begin{pmatrix}9/8&15/8&0&0\\15/8&25/8&0&0\\0&0&-1&0\\0&0&0&-1\end{pmatrix}.
$$

Then $s(p)=1$, $s(q)=9$, $s(p-q)=5/2$, $Q=e^{ij}q_iq_j=81/(8\sqrt6)$, and $e^{0j}q_j=-27/(8\sqrt6)$. At output time zero, the actual boundary-subtracted reduced amplitude begins

$$
-\frac\alpha{36}[Q-i\epsilon e^{0j}q_j]z^6+O(z^8).
$$

The actual-minus-frequency-only difference is

$$
\boxed{-\frac{3i\alpha\epsilon}{32\sqrt6}z^6+O(z^8).}
\tag{7}
$$

The shifted output mass first changes the $z^8$ term and cannot supply this missing $z^6$ contribution. This disproves finite-regulator equality, not equality of suitably controlled limiting prescriptions. Literal exponential switching is also not compact and need not give a tempered finite-regulator correlator.

## 3. Full momentum bookkeeping and a regular source

For the ordered product $\langle\widehat T(x_1)\mathcal U_z(x_2)\mathcal U_w(x_3)\rangle$, use

$$
\xi=x_1-x_2,\quad Y=x_3-x_2,\quad X=x_2,
\qquad e^{ip_i\xi^i-iq_iY^i+i\Omega_iX^i}.
\tag{8}
$$

All transforms use $d\nu(k)=d^4k/(2\pi)^4$. Thus the external momenta are $(p,\Omega+q-p,-q)$, their sum is $\Omega$, and the change of variables has unit absolute Jacobian. Differentiating $x_2$ at fixed $x_1,x_3$ gives the middle momentum $r=\Omega+q-p$, not $q-p$.

Set $a^2=s(p)$, $b^2=s(q)$. The free contractions use $p,q\in V_+$ and

$$
\rho_{\widehat T}=\frac{\pi^3a^4}{160},\qquad \rho_O=2\pi^3.
$$

The mixed unamputated numerator is

$$
\mathcal N_{ij}(p;q,v)=a^4\Pi_{ij,kl}(p)q^kv^l,
\qquad v=q+\Omega.
\tag{9}
$$

It is polynomial, including at $a=0$. Explicitly, with $x=a^2$, $c_q=-p\cdot q$, $c_v=-p\cdot v$, $u_i(q)=xq_i-c_qp_i$, and $\Delta_{qv}=c_qc_v+x(q\cdot v)$,

$$
\mathcal N_{ij}=u_{(i}(q)u_{j)}(v)
-\frac{\Delta_{qv}}3(x\eta_{ij}+p_ip_j).
\tag{10}
$$

Parentheses denote symmetrization with factor $1/2$. This tensor is transverse and traceless in $p$; no singular boosted polarization is introduced.

The middle Wick source, with cone indicators understood, is exactly

$$
\boxed{\mathcal F_{\chi,ij}(u,w;p,q,\Omega)
=-\frac{\alpha\pi^6}{80}\widehat\chi(\Omega)\beta(u)\,
 u^4 f_2(au)J_0(bu)J_0(bw)
\mathcal N_{ij}(p;q,q+\Omega).}
\tag{11}
$$

The outer divergence in (4) produces $-r_kq_l$. Transversality removes the $-p$ part of $r$, leaving $-(q+\Omega)_kq_l$ and explaining both the sign and the switch-gradient term in (11). The coefficient follows from $\rho_{\widehat T}\rho_O=\pi^6a^4/80$; there is no extra factor of two. The fixed cone boundaries do not depend on $\Omega$.

## 4. Exact radial subtraction before removing the switch

Let $K_s(z,u)$ be the zero-boundary, logfree Volterra inverse with measure $du$:

$$
K_s(z,u)=\frac{\pi u}{2}
[J_0(u\sqrt s)Y_0(z\sqrt s)-Y_0(u\sqrt s)J_0(z\sqrt s)],\quad 0<u<z.
\tag{12}
$$

Its removable continuation is entire in $s$ and $K_0(z,u)=u\log(z/u)$. The scalar time-retarded inverse $\mathscr R$ instead uses $u\,du$. Its exact boundary subtraction is

$$
\mathscr R_r(z,u)-h_z(s(r))\mathscr R_r(0,u)
=\mathbf1_{u<z}\frac{K_{s(r)}(z,u)}u.
\tag{13}
$$

For $z<u$, both sides before subtraction are the same regular homogeneous branch. At $z=u$ the derivative jump is $1/u$. These facts prove (13); no estimate of separate infinite radial tails is needed.

At first order, only the middle insertion is sourced when the middle radial equation acts on the ordered product. The nonlinear stress insertion and the right scalar correction contain a free middle scalar, hence have the same $h_z(s(r))$ factor in the full Fourier variables. Therefore

$$
\boxed{\mathfrak B_{\chi,ij}(z,w)
=\int_0^zdu\,K_{s(\Omega+q-p)}(z,u)\mathcal F_{\chi,ij}(u,w).}
\tag{14}
$$

Equation (14) holds at finite common vertex regulators. Alternatively it defines their boundary-subtracted combination without requiring the individual regulator-removed boundary trace to exist. It does not assign a value to that missing trace. Using $h_z(s(q-p))$ at nonzero $\Omega$ would fail to cancel the outer terms.

If $\beta$ equals one on $[0,Z]$, the right side is exactly independent of the radial infrared cutoff for $z\le Z$. A temporary ultraviolet vertex cutoff at $u=\varepsilon$ can also be removed: on compact momenta its omitted integral is bounded by $C\varepsilon^6[1+|\log\varepsilon|]$, uniformly for bounded $z$. Both facts follow from the $u^4$ source and $K_s\sim u\log(z/u)$.

### 4.1 Source insertion and the thin-layer order

The [reference PDF, PDF page 11 / printed page 9, equations (4.1)–(5.2)](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf#page=11>) first smears the rescaled bulk insertion radially, then takes the thin-layer limit, and only then takes its boundary limit. These formulas were checked against the rendered page, not only extracted text.

Accordingly, at nonzero layer width $\sigma$, the subtraction factor in (1) is the averaged multiplier $\int d\zeta\,\rho_\sigma(\zeta-z)h_\zeta$, and (14) is averaged over $\zeta$ too. One must not use bare $h_z$ before the thin-layer limit. Local momentum bounds give continuity in positive $\zeta$, so the prescribed thin-layer limit yields (14). No one-sided wall action is used. All subsequent $z\to0$ statements concern this thin-layer observable.

## 5. Proof of the all-null local adiabatic theorem

On a compact set of $(p,q,\Omega)$, the output $s(\Omega+q-p)$ stays bounded. For $0<u\le z\le Z$ and every fixed number of $\Omega$ derivatives,

$$
|\partial_\Omega^\beta K_{s(\Omega+q-p)}(z,u)|
\le C_{K,\beta,Z}\,u\log(z/u).
\tag{15}
$$

This follows either from the regular power series or by iterating the zero-mass Volterra inverse. The resulting bounded-parameter series is majorized by an $I_0$ series. In particular,

$$
\int_0^zdu\,u^5\log(z/u)=\frac{z^6}{36}.
\tag{16}
$$

The numerator (10) is polynomial, the Bessel factors in (11) are smooth through zero squared mass on the fixed cones, and $p,q$ range over a compact set. Hence all required $\Omega$ derivatives of the switch-free integral in (14) are bounded by $C|\alpha|z^6$, uniformly also for bounded $w$. There is no Gram denominator anywhere in this estimate.

For the plateau switch,

$$
\widehat\chi_R(\Omega)=R^4\widehat\chi(R\Omega),\qquad
\int d\nu(v)\widehat\chi(v)=1,\qquad
\int d\nu(v)\,v^\beta\widehat\chi(v)=0\quad(|\beta|>0).
\tag{17}
$$

The moment identities follow because all positive derivatives of $\chi$ vanish at the origin. Pair (14) with $\Psi$, change variables $v=R\Omega$, and Taylor expand the compactly supported $\Omega$ test-kernel through degree $M-1$. Every nonconstant Taylor term integrates to zero. The remainder is bounded by $R^{-M}|v|^M$ times its $M$th derivative. The absolute $M$th moment of $\widehat\chi$ is finite. Integrating the bounded free spectral factors in $p,q$ proves (2). No momentum derivatives of the cone indicators are taken.

The result is independent of the plateau profile in this class. Mere $C^\infty_{\rm loc}$ convergence of arbitrary switches is not enough to infer the rapid rate or global Fourier control. At the stationary limit, (14) becomes the previously derived zero-boundary Volterra correction in every transfer channel. Its leading full-tensor term at $w=0$ is

$$
\mathfrak B_{1,ij}(z,0)
=-\frac{\alpha\pi^6}{2880}z^6\mathcal N_{ij}(p;q,q)+O(z^8).
\tag{18}
$$

Independent proofs of the estimate and the weak radial identity are given in [the radial analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switch_radial_independent.md>) and [the subtraction analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switch_subtraction_independent.md>).

### 5.1 Direct control of the weak switching defect

Let $s_0=s(q-p)$ and write (11), after removing the radial cutoff on $[0,Z]$, as $\mathcal F_{\chi_R}=\widehat\chi_R\overline{\mathcal F}_\Omega$. The exact identity is

$$
\mathcal D_{s_0}\mathfrak B_{\chi_R}
-\widehat\chi_R\overline{\mathcal F}_0
=\widehat\chi_R(\overline{\mathcal F}_\Omega-\overline{\mathcal F}_0)
-[s(\Omega+q-p)-s_0]\mathfrak B_{\chi_R}.
$$

The first right-hand factor is linear in $\Omega$ and $O(z^4)$; the polynomial in the second term also vanishes at $\Omega=0$, while its Volterra factor is $O(z^6)$. The same moment proof bounds their pairing with compact momentum tests by $C|\alpha|(z^4+z^6)R^{-M}$ for every $M$. Thus the stationary weak radial defect vanishes quantitatively for the boundary-subtracted family. This is a direct estimate, not merely a uniqueness argument; it says nothing about an uncontrolled homogeneous term containing the full boundary trace.

## 6. Why the result is local in momentum

For spacelike output $s=-\kappa^2$,

$$
K_{-\kappa^2}(z,u)=u[I_0(\kappa z)K_0(\kappa u)-K_0(\kappa z)I_0(\kappa u)].
$$

At fixed positive $a,b,z$, rescaling $u=v/\kappa$ in the first term gives

$$
\int_0^zdu\,K_{-\kappa^2}(z,u)u^4 f_2(au)J_0(bu)
\sim \frac{64}{\kappa^6}I_0(\kappa z),\qquad \kappa\to\infty,
\tag{19}
$$

because $\int_0^\infty v^5K_0(v)dv=64$. The other term is only $O(\kappa^{-2})$ at fixed $z$. This is a physical momentum regime: $p=(\cosh\theta,\sinh\theta,0,0)$ and $q=(\cosh\theta,-\sinh\theta,0,0)$ have $a=b=1$ and $\kappa=2\sinh\theta$. On this path the laboratory component $\mathcal N_{22}=-(\kappa^2+\kappa^4/4)/3$ is nonzero. Thus the growth occurs in a full unamputated tensor component, not just an auxiliary scalar factor. The estimate persists in neighborhoods of the fixed masses and exhibits the generic exponential growth of the isolated zero-boundary term.

An exact check at zero source masses is

$$
\mathcal V_{-\kappa^2}[u^4](z)
=\frac{64}{\kappa^6}
\left[I_0(\kappa z)-1-\frac{(\kappa z)^2}{4}-\frac{(\kappa z)^4}{64}\right].
\tag{20}
$$

Its small-$z$ coefficient is $z^6/36$, and applying $\mathcal D_{-\kappa^2}$ gives $z^4$. Thus a global $\mathcal S'$ claim for the isolated subtraction would generally be false. The earlier global theorem applies to the **complete boundary-fixed coefficient**, where the boundary homogeneous term cancels this growth. Compact momentum localization makes (1)–(2) legitimate without presupposing that cancellation.

## 7. What the new theorem does and does not close

The correctly switched bulk equation has source (4), and its boundary-subtracted adiabatic limit is now established locally at all null intersections. There is no additional interior radial switching defect in this construction. The remaining data are carried by the boundary face, not by an unestimated infinite radial tail in (14).

For one finite scalar, convergence of the complete switched boundary trace to the known boundary Wightman distribution would, together with (2), identify the entire finite-radius coefficient locally in momentum. With two finite scalar radii one can first apply the corresponding right-leg radial equation to determine the boundary face from the corner trace, then use (14). This implication requires the same common switch, complete traces and weak equations; agreement on open channels alone does not establish its hypotheses. Global tempered convergence additionally requires control of the cancellation described in §6.

A useful diagnostic explains why the earlier per-insertion stationary Abel model cannot replace this argument. Write its middle term as $A_\epsilon=h_{s_\epsilon}a_\epsilon+\mathcal V_{s_\epsilon}F_\epsilon$ and outer term as $h_sO_\epsilon$. The complete boundary trace is $a_\epsilon+O_\epsilon$, but the radial defect depends on $(s_\epsilon-s)A_\epsilon$, not on the full sum. Taking $a_\epsilon=C/(s_\epsilon-s)$ and $O_\epsilon=-a_\epsilon$ hides a divergent middle trace behind an exactly zero total trace; the limit of the homogeneous difference is $\partial_sh_s\,C$, whose radial equation is $-h_sC$, not zero. For a measure $C$ supported at $s=0$ it is $-z^2C/4$; normal derivatives of delta distributions require retaining the full multiplier $\partial_s h_s$. This is a mathematical counterexample for that divided stationary model, not a claim about the genuine compact-switch dynamics. Keeping the true output momentum $r$ in (1) avoids this artificial mismatch.

**Verified:** the switched derivative vertex and projector placement; the explicit finite-switch counterexample; the exact all-insertion radial subtraction; the polynomial source and normalization; the all-null local adiabatic estimate; and the obstruction to promoting the isolated term to global $\mathcal S'$. Three independent derivations checked the action, radial identity and limiting estimate. Exact checks are reproducible in [the Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switch_checks.wl>) with [saved actual output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_switch_checks_results.json>); residuals vanish and no messages occur.

**Assumptions:** the specified reduced TT first-order retarded/Wightman construction, logfree boundary branch, common smooth vertex switch, source-first radial mollification followed by the thin-layer limit, and full unamputated tensors. The rapid bound uses plateau scaling specifically.

**Not verified:** convergence of the full switched boundary three-point trace to the independent CFT cut, a finite-switch gauge-invariant completion, physical equivalence of arbitrary Abel/contour prescriptions, global tempered convergence of the unsubtracted switched coefficient, or interacting positivity/common Hilbert domains.
