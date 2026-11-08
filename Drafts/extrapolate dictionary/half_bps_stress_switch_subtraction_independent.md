# Independent verification: switched boundary subtraction and its local adiabatic limit

## Verdict and scope

**The finite Volterra identity and a regulator-independent local momentum-distribution limit hold under the explicit assumptions below. They do not assert convergence of the full boundary trace, and they generally do not define a tempered boundary-subtracted distribution.** The identity with the bare factor $h_z$ is an identity for the sharp radial insertion, not for an arbitrary finite-width radial mollifier.

This is an independent weak-equation/Green-jump derivation, not an identification of switched diagrams with shifted stationary denominators. The relevant existing conventions are recorded in [the Wightman calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>) and [the regulator report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulators.md>). No existing note was changed.

## 1. Objects, assumptions, and the switched source

Use $\eta=(-,+,+,+)$, $s(p)=-p^2$, and covariant Fourier phase $e^{ip\cdot x}=e^{-ip^0x^0+i\mathbf p\cdot\mathbf x}$. Set

$$
D=\partial_z^2+z^{-1}\partial_z+\square_x,
\qquad h_z(s)=J_0(z\sqrt{s}),\qquad C_0=2\pi^2.
$$

The free scalar is BF-logfree and has normalizable radial mode $h_z$. The free graviton is the normalizable TT field

$$
\gamma_0^{ij}(u)=\alpha u^4 f_2(u\sqrt\square)\widehat T_0^{ij},
\quad f_2(v)=8J_2(v)/v^2,\quad f_2(0)=1.
$$

The scalar kinetic normalization is $-(2C_0)^{-1}\int du\,d^4x\,u(\partial U)^2$, including the BF completion in its variational domain. Switch the cubic vertex by $\chi\in C_c^\infty(\mathbb R^4)$ and a smooth radial factor $c(u)$ initially supported in a compact subset of $(0,\infty)$:

$$
S_3=\frac1{2C_0}\int du\,d^4x\,u c(u)\chi(x)\gamma^{ij}\partial_iU\partial_jU.
$$

At first order the scalar equation is therefore

$$
DU_{1,\chi,c}=c(u)\partial_i\!\left(\chi\gamma_0^{ij}\partial_jU_0\right).
\tag{1}
$$

The factor $C_0$ cancels against the kinetic term; the two identical scalar variations cancel the vertex's $1/2$. In particular,

$$
\partial_i(\chi\gamma_0^{ij}\partial_jU_0)
=\chi\gamma_0^{ij}\partial_i\partial_jU_0
 +(\partial_i\chi)\gamma_0^{ij}\partial_jU_0.
\tag{2}
$$

TT transversality removes $\partial_i\gamma_0^{ij}$, **not** the derivative of the switch.

Let $W_{\chi,c}(z)$ be the first-order ordered Wightman coefficient of $\langle\widehat T(x_1)U_z(x_2)O(x_3)\rangle$, including $\widehat T_1$, $U_1$, and $O_1$. We assume these finite-regulator Wick/retarded coefficients and their logfree boundary traces exist as distributions, and that their weak equations hold with the specified insertion prescription. This is a first-order statement, not a nonperturbative Møller-operator theorem. The ordering is Wightman ordering, not a time-ordering symbol.

Applying $D$ at the middle insertion annihilates both outer-insertion diagrams. Thus

$$
D_zW_{\chi,c}(z)=S_{\chi,c}(z),
\quad S_{\chi,c}(u)=c(u)\langle\widehat T_0(x_1)
\partial_i[\chi(x_2)\gamma_0^{ij}(u,x_2)\partial_jU_0(u,x_2)]O_0(x_3)\rangle.
\tag{3}
$$

No stationarity has been used.

## 2. Full-momentum source, including every null stratum

Parametrize the Fourier phase by

$$
e^{ip\cdot(x_1-x_2)-iq\cdot(x_3-x_2)+i\Omega\cdot x_2},
\quad r=\Omega+q-p,
\quad d\nu(k)=\frac{d^4k}{(2\pi)^4},
\quad \chi(x)=\int d\nu(\Omega)e^{i\Omega\cdot x}\widehat\chi(\Omega).
$$

The map to the three insertion momenta $(k_1,k_2,k_3)=(p,r,-q)$ has absolute Jacobian one. Both $p,q$ lie in the future causal cone. With the densities

$$
\rho_{\widehat T}(p)=\frac{\pi^3s(p)^2}{160},\qquad
\rho_O(q)=2\pi^3,
$$

the full tensor source is

$$
\boxed{
\widetilde S_{ij;\chi,c}(u;p,q,\Omega)
=-\frac{\alpha\pi^6}{80}\,c(u)\widehat\chi(\Omega)
\mathbf1_{V_+}(p)\mathbf1_{V_+}(q)
 u^4 f_2(au)J_0(bu)
 [a^4\Pi_{ij,kl}(p)q^k(q+\Omega)^l],
}
\tag{4}
$$

where $a^2=s(p)$ and $b^2=s(q)$. Indeed the two derivatives give $-r_kq_l$, and $p$-transversality replaces $r$ by $q+\Omega$. The $\Omega$ part is precisely the derivative-of-switch contribution.

Formula (4) is interpreted **unamputated**. Although $\Pi$ itself contains inverse powers of $s(p)$, the tensor $s(p)^2\Pi$ is polynomial in $p$ and $s(p)$. Consequently (4) is locally bounded in $(p,q)$ up to its cone indicator functions, including outer-null, transfer-null, simultaneous-null, and zero-momentum strata. No normalized polarization at a null momentum and no division by a spectral density are used.

On every compact full-momentum set, the source without $\widehat\chi$ is $O(u^4)$ uniformly as $u\downarrow0$, including every fixed finite number of $\Omega$ derivatives. This, not an estimate with inverse Gram determinants, is the indispensable null-endpoint control.

## 3. Weak radial identity and the Green jump

For $0<u\le z$ define

$$
K_s(z,u)=\frac{\pi u}{2}\big[J_0(u\sqrt s)Y_0(z\sqrt s)
-Y_0(u\sqrt s)J_0(z\sqrt s)\big].
\tag{5}
$$

The combination is entire in $s$ after removable continuation. In particular,

$$
K_0(z,u)=u\log(z/u),
\qquad
K_{-\kappa^2}(z,u)=u[I_0(\kappa z)K_0(\kappa u)-K_0(\kappa z)I_0(\kappa u)].
\tag{6}
$$

In the second equation $K_0$ with a single argument denotes the modified Bessel function; $K_0(z,u)$ in the first equation denotes the zero-spectral-parameter Volterra kernel.

For $z>u$, $(\partial_z^2+z^{-1}\partial_z+s)K_s=0$, while

$$
K_s(u,u)=0,\qquad \partial_zK_s(z,u)|_{z=u}=1.
\tag{7}
$$

Therefore $D_s[\theta(z-u)K_s(z,u)]=\delta(z-u)$. Equivalently, if $\mathscr R_s$ is the time-retarded radial inverse with measure $u\,du$ and $D_s\mathscr R_s=\delta(z-u)/u$, then

$$
\mathscr R_s(z,u)-h_z(s)\mathscr R_s(0,u)
=\theta(z-u)\frac{K_s(z,u)}u.
\tag{8}
$$

For $z<u$, both terms on the left are the same logfree homogeneous radial branch. The jump fixes their difference for $z>u$. The large-radius prescription and retarded spectral discontinuities cancel in (8). This is not a cancellation that requires stationary external energy conservation.

Let $W_{\chi,c}(0)$ denote the finite logfree boundary coefficient. Equations (3) and (7), or directly (8), give

$$
\boxed{
\widetilde W_{\chi,c}(z)-h_z(s(r))\widetilde W_{\chi,c}(0)
=\int_0^zdu\,K_{s(r)}(z,u)\widetilde S_{\chi,c}(u).
}
\tag{9}
$$

The difference of both sides is homogeneous, logfree, and has zero finite boundary coefficient, so it vanishes. This uniqueness statement can be made after any compact momentum localization, where multiplication by $s(r)$ is a bounded smooth coefficient and the regular-singular radial equation has its usual two fundamental branches. A logarithmic homogeneous coefficient or an independently changed boundary condition would invalidate the stated subtraction.

Equation (9) is an equality in local momentum distributions. Since $h_z(s)$ is exponentially growing for negative $s$, writing it as a position-space operator on an arbitrary tempered distribution is not justified without further assumptions.

## 4. Radial cutoffs and mollifiers

On a compact momentum set, for $0<u\le z\le Z$,

$$
|\partial_\Omega^\beta K_{s(r)}(z,u)|
\le C_{\beta,K,Z}\,u\log(z/u).
\tag{10}
$$

The analogous bound with a finite sum of such terms suffices equally well. Combined with the $u^4$ source, this gives an integrable majorant and a $C_{K,Z}z^6$ bound. The elementary leading integral is

$$
\int_0^zdu\,u^5\log(z/u)=\frac{z^6}{36}.
$$

If $c(u)=1$ on $[0,z]$, the subtracted object is exactly independent of the rest of the radial cutoff. Removing a bounded UV cutoff at $u<\epsilon$ costs $O(\epsilon^6[1+|\log\epsilon|])$ for fixed positive $z$, uniformly on compact momenta. More generally, bounded cutoffs converging to one on finite radial intervals suffice by dominated convergence. Arbitrary unbounded or nonconvergent cutoffs are not covered.

For a normalized radial insertion mollifier $\mathcal M_{\varepsilon,z}$ acting on the radial variable, the exact finite-width identity is

$$
\mathcal M_{\varepsilon,z}[W]
-\mathcal M_{\varepsilon,z}[h_{\bullet}(s)]\,W(0)
=\mathcal M_{\varepsilon,z}\left[\int_0^{\bullet}du\,K_s(\bullet,u)S(u)\right].
\tag{11}
$$

Replacing the averaged $h$ on the left by the bare $h_z$ is generally false at finite width. The sharp identity (9) follows after the thin-layer limit. Boundary insertion mollifiers are likewise removed using the logfree trace. Safe ordering is: define the regulated insertions, take their thin-layer/boundary traces at fixed switching and radial cutoffs, perform the subtraction, then remove the remaining regulators. A joint limit with an unbounded boundary trace needs an additional uniform estimate, since a small mollifier error multiplying that trace need not vanish. No wall action is introduced.

## 5. Local adiabatic theorem without boundary-trace convergence

Let $\chi_R(x)=\chi(x/R)$, $R\to\infty$, with $\chi\equiv1$ near zero. Then

$$
\widehat\chi_R(\Omega)=R^4\widehat\chi(R\Omega)
\longrightarrow (2\pi)^4\delta^4(\Omega)
$$

with respect to the $d\nu(\Omega)$ convention. Its zeroth moment is one and every positive polynomial moment vanishes. Multiplying the source by $\Omega$ therefore yields zero in the limit, as required for the derivative-of-switch term.

Define $B_{\chi,c}$ by either side of (9), **subtracting at finite regulators**. The compact radial integral, the polynomial spectral tensor in (4), and (10) imply

$$
\boxed{
B_{\chi_R}\longrightarrow
(2\pi)^4\delta^4(\Omega)
\int_0^zdu\,K_{s(q-p)}(z,u)\widetilde S_1(u;p,q)
\quad\text{in }\mathcal D'(\mathbb R^{12}).
}
\tag{12}
$$

Here $\widetilde S_1$ is (4) with $c=1$, $\Omega=0$, and the switch factor removed. The statement includes every null stratum, not merely tests avoiding the Gram locus.

More precisely, for tests supported in a fixed compact set, every $M$ admits a finite test seminorm and a constant such that the switching error is bounded by $C_{K,M,Z}z^6R^{-M}$ for $0\le z\le Z$. To see this, integrate the compactly supported test against the bounded cone factors in $p,q$. The resulting function of $\Omega$ is smooth and compactly supported. Taylor expansion in $\Omega$, vanishing switch moments, and Schwartz decay of $\widehat\chi$ give the estimate. The cone discontinuities do not obstruct differentiation with respect to $\Omega$. Ordinary approximate-identity convergence already suffices if one does not need the rapid rate.

This argument requires **no convergence of $W_{\chi_R}(0)$**: any divergent or regulator-dependent homogeneous trace has already been canceled in (9). It does require finite-regulator trace existence and the weak equation with the prescribed source. Homogeneous edge distributions also cancel; the theorem does not exclude them from the full, unsubtracted correlator. Source-supported contact changes would change the right-hand side and are not an allowed invisible regulator change.

For a fixed right scalar radius $w$, replace the source by $J_0(bw)$ times (4); the same proof holds uniformly for bounded $w$. The right-insertion correction remains homogeneous in the middle radial variable.

## 6. Why a global tempered theorem is false in general

The local restriction is substantive. Consider the scalar radial factor

$$
V_{-\kappa^2}(z)=\int_0^zdu\,K_{-\kappa^2}(z,u)u^4 f_2(au)J_0(bu)
$$

at fixed positive $a,b,z$. The first modified-Bessel term, rescaled by $t=\kappa u$, gives

$$
\frac{V_{-\kappa^2}(z)}{I_0(\kappa z)}
\sim\frac1{\kappa^6}\int_0^\infty dt\,t^5K_0(t)
=\frac{64}{\kappa^6}.
\tag{13}
$$

Dominated convergence uses $|f_2|,|J_0|\le1$ on real arguments. The second term is exponentially negligible after division by $I_0(\kappa z)$; before that division it is at most polynomially small at fixed $z$. Hence $V$ grows like $e^{\kappa z}$ times a power, not polynomially.

This is accessible with physical future-timelike outer momenta: take $a=b=1$ and

$$
p=(\cosh\eta,\sinh\eta,0,0),\qquad
q=(\cosh\eta,-\sinh\eta,0,0),\qquad
\kappa=2\sinh\eta.
$$

Nonzero tensor components contribute only polynomial prefactors and do not eliminate the exponential. The same asymptotic holds on bounded positive-mass bands and suitable open angular neighborhoods, so this is not merely growth on a measure-zero path.

An exact zero-mass scalar-source check is

$$
\mathcal V_{-\kappa^2}[u^4](z)
=\frac{64}{\kappa^6}\left[I_0(\kappa z)-1-\frac{(\kappa z)^2}{4}-\frac{(\kappa z)^4}{64}\right]
=\frac{z^6}{36}+O(z^8).
\tag{14}
$$

Thus the separate subtracted object can fail to belong to $\mathcal S'$ even when the full physical coefficient is tempered. Multiplication by $h_z$ is valid on local momentum distributions, but not a continuous multiplier on all of $\mathcal S'$. A global theorem would need additional exponential spectral decay, a restricted momentum region/test space, or a proved cancellation after restoring the homogeneous boundary term.

## 7. Verification and limits of the result

**Analytically verified:** switched Euler–Lagrange source and its switch derivative; full Fourier normalization and Jacobian; cancellation of the outer insertions under the middle weak equation; radial Green jump and uniqueness; compact-momentum null control; cutoff and adiabatic limits; spacelike exponential obstruction.

**CAS verified:** Mathematica returned zero for the homogeneous ODE residual of (5), unit diagonal derivative jump, the $s\to0$ limit $u\log(z/u)$, the source integral $z^6/36$, the exact ODE residual and boundary series of (14), and $\int_0^\infty t^5K_0(t)dt=64$, with no messages. These checks supplement rather than replace the distributional proof.

**Not asserted:** full adiabatic convergence of the boundary coefficient; uniqueness of a full gravitational vacuum extension at all null edges; a global $\mathcal S'$ theorem for the standalone subtraction; arbitrary simultaneous mollifier/adiabatic limits without uniform trace control; or invariance under changes of Wick/contact prescription. The indispensable inputs are the fixed weak source, logfree finite-regulator trace, polynomial unamputated free spectral tensor, admissible bounded radial cutoff removal, and the stated order or independently controlled joint order of limits.
