---
paper id: 2609.03477v1
title: Dynamical Selection of Horizon-BMS Goldstone Modes in Evaporating Black Holes
authors:
  - Nihar Ranjan Ghosh
  - Malay K. Nandy
publication date: 2026-09-03T07:34:51
abstract: |-
  The paper promotes a near-horizon BMS supertranslation parameter on a Vaidya-Schwarzschild background to a Goldstone field, derives a quadratic gravitational action, and proposes separated solutions whose pole regularity gives an azimuthal selection rule. It then interprets the dependence of a Padé mass profile on the separation parameter as dynamical filtering of horizon modes during evaporation.
comments: "v1: 29 pages, 3 figures"
url: https://arxiv.org/abs/2609.03477v1
summary: "Several local identities check, but the claimed coupled evaporation and dynamical mode filtering do not follow: the final mass equation never enforces the Einstein equation and the separation constant is fixed along each ansatz solution."
tags: []
---

Daily overview: [[2026_09_04_overview]]

# Verdict

**Incorrect as claimed.** The paper derives a restricted separated sector of the Goldstone equation, but it does not exhibit a solution of the advertised coupled Goldstone--Einstein system. Its mass ODE is obtained from $f_3=0$ and $f_1/f_2=N$ alone; the previously displayed $G_{vv}=T_{vv}$ equation is not imposed on the final $F(v,\theta,\phi)$ and $m(v)$. Moreover, Ansatz II defines $N$ to be constant, so comparing different constant-$N$ solutions does not show that $N$ decreases along one evaporating history. The central “dynamical filtering” conclusion therefore does not follow.

Two narrower calculations survive:

1. xAct reproduces the stated horizon component

   $$
   G_{vv}\big|_{r=0}=\frac{m'-4mm''}{2m^2}.
   $$

2. Mathematica verifies that $f_3=0$ integrates locally to

   $$
   f^2=C\frac{m^3}{m'}
   $$

   wherever $m'\neq0$ and a branch of the square root is fixed.

Reason codes: `T1-symmetry`, `T1-boundary`, `T2-dS-BH-holography`.

# Source map

1. **§1 Introduction:** motivates horizon BMS parameters as physical Goldstone modes and announces a coupled description of evaporation and soft degrees of freedom.
2. **§2 Near Horizon BMS Symmetry:** replaces the Schwarzschild mass by $m(v)$ in a near-horizon metric, states horizon-preserving gauge conditions, writes a supertranslation vector, and computes $h_{ab}=\mathcal L_\eta g_{ab}$.
3. **§3 Effective Goldstone Action and Equations of Motion:** truncates the Einstein--Hilbert expansion at quadratic order in $h$, varies it for a Goldstone PDE, constructs an effective stress tensor, and displays a horizon $vv$ Einstein equation.
4. **§4 Solution for Goldstone Field and Black Hole Mass:**
   - separates $F=f(v)\Theta(\theta)\Phi(\phi)$;
   - introduces two additional ansätze for ratios of temporal coefficients;
   - discards Ansatz I using pole asymptotics;
   - keeps Ansatz II, derives $f^2=Cm^3/m'$, and then derives a third-order mass ODE from the Goldstone PDE;
   - replaces the slow-variation linear mass profile by a $(1,2)$ Padé profile;
   - interprets a family of constant-$N$ profiles as time-dependent mode filtering.
5. **§5 Discussion:** repeats the claims of a self-consistent coupled solution and a mass-dependent evolving upper bound on $|k|$.

# Geometry and conventions

The background used throughout is

$$
ds^2=-\frac{r}{2m(v)}dv^2+2\,dv\,dr+4m(v)^2
\left(d\theta^2+\sin^2\theta\,d\phi^2\right),
$$

with horizon $r=0$ and $16\pi G=1$. The paper calls $v$ retarded time, although the positive $2\,dv\,dr$ convention is the ingoing-Eddington--Finkelstein sign usually associated with advanced time. This naming issue is secondary to the dynamical inconsistencies below.

The stated gauge conditions are

$$
\mathcal L_\eta g_{rr}
=\mathcal L_\eta g_{rv}
=\mathcal L_\eta g_{Ar}=0.
$$

The printed vector is

$$
\eta
=F\partial_v-r\partial_vF\partial_r
-\frac{r}{4m^2\gamma_{AA}}\partial_A.
$$

As printed, its angular component is missing a factor $\partial_A F$. For example,

$$
(\mathcal L_\eta g)_{r\theta}
=4m^2\partial_r\eta^\theta+\partial_\theta F
=-1+\partial_\theta F,
$$

which is not zero for a general $F$. Replacing the last term by

$$
-\frac{r}{4m^2\gamma_{AA}}\partial_A F\,\partial_A
$$

makes this residual vanish and is also what the subsequent transformed metric implicitly uses. This is best read as a source-level omission, but the displayed generator does not satisfy the displayed gauge condition.

# Quadratic action: missing off-shell term

The expansion is organized schematically as

$$
S[g+h]=S[g]
+h_{ab}\frac{\delta S}{\delta g_{ab}}\Big|_g
+h_{ab}h_{cd}\frac{\delta^2S}{\delta g_{ab}\delta g_{cd}}\Big|_g
+\cdots.
$$

The paper drops the term linear in $h$ by invoking a vacuum background. That condition is incompatible with the dynamical metric subsequently used. Indeed, the paper itself states, and xAct independently confirms,

$$
G_{vv}\big|_{r=0}
=\frac{-4mm''+m'}{2m^2},
$$

which is generically nonzero when $m=m(v)$. Therefore the gravity-only quadratic functional is not the complete fluctuation action about this off-shell background.

The omission could be repaired only under an additional condition, for example:

- restrict to the static/vacuum sector $m'=m''=0$;
- include a matter action supporting the Vaidya geometry and expand the total action about a solution of the full equations;
- or retain and consistently account for the linear gravitational term.

None of these repairs is carried through. In addition, because $h_{ab}=\mathcal L_\eta g_{ab}$ is generated by a diffeomorphism, identifying its bulk quadratic action with a physical Goldstone action requires a boundary/symplectic argument distinguishing a large transformation from a gauge degeneracy. The paper asserts this interpretation but does not derive the corresponding charge, boundary symplectic form, or non-degeneracy statement.

# Separated Goldstone equation

The horizon Goldstone PDE is reduced with

$$
F(v,\theta,\phi)=f(v)g(\theta,\phi),
\qquad
g=\Theta(\theta)\Phi(\phi),
$$

to

$$
\frac{f_1}{f_2}
+\frac{\Phi''}{\Phi}
+\sin^2\theta\frac{\Theta''}{\Theta}
-\frac{f_3}{f_2}\sin\theta\cos\theta
\frac{\Theta'}{\Theta}=0.
$$

Periodicity gives

$$
\Phi=c_1e^{ik\phi}+c_2e^{-ik\phi},
\qquad k\in\mathbb Z.
$$

The two further restrictions are

$$
\text{Ansatz I}:\quad f_1=0,
\qquad \frac{f_3}{f_2}=N,
$$

and

$$
\text{Ansatz II}:\quad f_3=0,
\qquad \frac{f_1}{f_2}=N,
$$

where $N$ is explicitly a constant. These are special solution sectors, not consequences of the separated PDE.

# Pole regularity audit

## Ansatz I is not excluded as stated

Its angular equation is

$$
\sin^2\theta\,\Theta''
-N\sin\theta\cos\theta\,\Theta'
-k^2\Theta=0.
$$

The paper discards the entire ansatz after choosing one Legendre branch and obtaining a divergent endpoint exponent. That conclusion is too strong. At $k=0$,

$$
\Theta(\theta)=\text{constant}
$$

is an exact smooth solution for every $N$. Mathematica returns zero when it is substituted into the equation. Thus “Ansatz I is not acceptable” is false without at least excluding the $k=0$ sector and proving that no admissible linear combination exists for the intended nonzero modes.

Near either pole, a Frobenius behavior $\Theta\sim\theta^\alpha$ gives

$$
\alpha(\alpha-1)-N\alpha-k^2=0.
$$

One exponent is nonnegative for broad parameter ranges. A global two-endpoint boundary problem is still required; asymptotics of a preselected $P$ or $Q$ branch do not by themselves classify all linear combinations.

## Ansatz II gives only a finiteness condition

Its angular equation is

$$
\Theta''+(N-k^2)\csc^2\theta\,\Theta=0.
$$

The paper obtains $N\geq k^2$ by requiring its associated-Legendre expression not to diverge at the poles. This is at most a boundedness condition for a selected branch. A smooth scalar mode

$$
\Theta(\theta)e^{ik\phi}
$$

on $S^2$ must have the appropriate smooth polar behavior, normally beginning as $\theta^{|k|}$ times a smooth even series near a pole. Mere finiteness, vanishing, or a fractional Frobenius power is not enough. The paper does not check differentiability in regular Cartesian charts at either pole, so the claimed complete regular spectrum is not established.

# What the symbolic checks establish

## Horizon Einstein component

xAct was run with the coordinate basis $(v,r,\theta,\phi)$ and the paper's metric. It gives

$$
G_{vv}
=\frac{r+4mm'-16m^2m''}{8m^3},
$$

and hence

$$
G_{vv}\big|_{r=0}
=\frac{m'-4mm''}{2m^2}.
$$

The residual against the paper's formula is exactly zero.

## Temporal solution from $f_3=0$

The coefficient is

$$
f_3=32\left[-3f(m')^2+m(2f'm'+fm'')\right].
$$

For

$$
f=\sqrt{C\frac{m^3}{m'}},
$$

Mathematica reduces the bracket in $f_3$ to zero. This check is local and assumes $m'\neq0$ together with a consistent square-root branch. For a real field with $m>0$,

$$
\frac{C}{m'}\geq0.
$$

Thus an evaporating branch $m'<0$ requires $C\leq0$; the sign is not optional if $F$ is required to remain real.

# The coupled-system failure

The paper displays a second equation,

$$
G_{vv}=T_{vv}[F,m],
$$

and calls it coupled to the Goldstone PDE. However, the subsequent derivation of the mass equation uses only

$$
f_3=0,
\qquad
\frac{f_1}{f_2}=N.
$$

It produces

$$
\begin{aligned}
0={}&-12Nm^2(m'')^2
-4(7N-36)(m')^4
+4(17N-8)(m')^3
+8Nm^2m'''m'\\
&+(m')^2\left[16(1-2N)mm''+N\right].
\end{aligned}
$$

This is a consistency equation inside the separated Goldstone PDE. It is not the Einstein equation. The source does not substitute the separated $F=f\Theta\Phi$ into its $vv$ Einstein equation, does not project that equation onto angular modes, and does not check the final Padé profile against it.

This omission is substantive. The displayed Einstein equation contains terms linear and quadratic in $F$. After $F=f(v)g(\theta,\phi)$ is inserted, it generically contains both $g$ and $g^2$. A mass function depending only on $v$ cannot satisfy that equality pointwise for a nonconstant angular profile unless additional cancellations, angular projection, averaging, or extra matter terms are specified. None is supplied.

Therefore:

**Not proven by the current derivation:** that the final $F$ and $m$ solve the coupled Goldstone--Einstein system, that the Goldstone field backreacts self-consistently on the mass, or that the Padé profile is generated by $T_{vv}[F]$.

# Padé mass profile

Neglecting $m''$ and $m'''$ reduces the mass equation to an algebraic equation for the constant $m'$, giving a linear profile $m=Av+B$. The paper then proposes

$$
m(v)=\frac{a_0+a_1v}{1+b_1v+b_2v^2}
$$

as an improved $(1,2)$ Padé form and lists coefficients carrying asymptotic labels in powers of $m_0$. This is an approximation, not an exact general solution of the third-order ODE. No error estimate, residual plot, interval of validity, or comparison with a numerical ODE solution is given. The source also duplicates one line in the displayed expression for $a_1$, a typesetting defect that makes the coefficient block harder to audit literally.

The plots show selected parameter families with decreasing $m(v)$; they do not establish Hawking's evaporation law or a backreaction theorem.

# Why dynamical filtering does not follow

Within Ansatz II,

$$
N=\frac{f_1(v)}{f_2(v)}=\text{constant}.
$$

Consequently, the condition proposed by the paper,

$$
k^2\leq N,
$$

is fixed along any one separated solution. Plotting $m(N)$ at fixed $v$ compares different members of a constant-$N$ family. It does not show that $N$ becomes smaller as $m(v)$ decreases along a single member. The statements

$$
m\downarrow\quad\Longrightarrow\quad N\downarrow
\quad\Longrightarrow\quad k_{\max}\downarrow
$$

therefore mix variation across the solution family with evolution in time.

Even if one introduced a time-dependent $N(v)$, that would leave the stated separation ansatz and would reintroduce terms omitted in deriving the angular equation. A genuine filtering result would require a non-autonomous spectral problem or an adiabatic analysis that tracks smooth instantaneous modes and their mixing. No such construction appears here.

# What remains useful

- The paper provides an explicit near-horizon PDE whose coefficients depend on $m(v)$ and which may be worth rechecking from a fully on-shell gravity-plus-matter action.
- The separation exposes a concrete angular endpoint problem, although its physical domain should be smooth sections on $S^2$, not merely finite special-function expressions.
- The verified $G_{vv}$ and $f_3=0$ identities are reusable local diagnostics.
- The paper is a useful negative benchmark for action-first CPS work: “large diffeomorphism,” “Goldstone,” and “backreaction” do not replace a boundary symplectic derivation or a simultaneous solution of all field equations.

# Verification record

**Verified:** complete 29-page PDF and TeX source inspected; PDF pages 13, 17, and 20 rendered and visually checked; xAct reproduced $G_{vv}|_{r=0}$ with zero residual; Mathematica reproduced the $f_3=0$ temporal solution and the $k=0$ constant solution of Ansatz I; Mathematica also confirmed that the printed angular vector component fails $(\mathcal L_\eta g)_{r\theta}=0$, while adding $\partial_\theta F$ restores it.

**Assumptions:** $m$ is sufficiently differentiable; $m>0$ on the interval considered; $m'\neq0$ for the displayed square-root solution; a consistent real or complex branch for $f$ is chosen; pole smoothness is assessed for scalar functions on the standard smooth $S^2$.

**Not verified:** the lengthy quadratic Goldstone action and stress tensor from first principles; the full Goldstone PDE; the long third-order mass ODE from $f_1/f_2=N$; the printed Padé coefficients; any numerical residual of the Padé profile; the final solution against $G_{vv}=T_{vv}$; a horizon charge, physical symplectic form, or spontaneous-symmetry-breaking theorem.

# Questions for reuse

1. What matter action supports the chosen $m(v)$ background, and does the total first variation vanish before extracting the quadratic mode action?
2. What boundary term and presymplectic structure make $\mathcal L_\eta g$ a physical horizon direction rather than a gauge degeneracy?
3. Can the Goldstone PDE and $vv$ Einstein equation be solved or projected consistently for a nonconstant angular profile?
4. What smooth-domain spectral problem on $S^2$ replaces the paper's finiteness-only endpoint test?
5. If $N$ is to evolve, what controlled adiabatic expansion replaces the constant-$N$ separation ansatz?

