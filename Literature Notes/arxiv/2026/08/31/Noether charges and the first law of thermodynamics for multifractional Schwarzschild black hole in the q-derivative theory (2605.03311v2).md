---
paper id: 2605.03311v2
title: Noether charges and the first law of thermodynamics for multifractional Schwarzschild black hole in the q-derivative theory
authors:
  - Reggie C. Pantig
publication date: 2026-08-28T14:03:47
abstract: |-
  In the spherical-coordinate approximation of multifractional gravity with q-derivatives, the geometric-frame vacuum solution is Schwarzschild. Canonical mass and Wald entropy retain their usual form. An alternative radial-derivative temperature prescription depends on the profile, and an enlarged parameter-space identity is constructed using an integrated entropy and profile-response terms.
comments: "17 pages, 3 figures; Class. Quantum Grav. 43 (2026) 135007; v1 submitted 2026-05-05"
url: https://arxiv.org/abs/2605.03311v2
summary: "The canonical Wald law is unchanged; the additional entropy/work terms are conditional on a nongeometric temperature prescription and an entropy-reference choice."
tags: []
---

# Verdict and scope

Correct under a precise interpretation: the extended first law is a kinematic identity after adopting $T_h=f'(r_h)/(4\pi)$ as a separate prescription and fixing an entropy reference. It is not a new Iyer-Wald entropy law or a derivation of a modified Hawking temperature from the displayed metric.

The v2 explicitly recognizes the cancellation of $q'(r_h)$ in the Euclidean regularity calculation. Therefore it would be incorrect to criticize this version as silently overlooking that cancellation. A separate sign error remains in Eq. (III.14), and “uniquely determined by integrability” needs the entropy normalization held fixed.

Reason codes: T1-charge, T1-Wald-CPS, T1-boundary. This is a first detailed reading of an untracked replacement, not a technical reread of one of today's deferred tracked versions. Today's overview: [[2026_08_31_overview]].

Sources: [official v2 abstract](https://arxiv.org/abs/2605.03311v2), [PDF](https://arxiv.org/pdf/2605.03311v2), [TeX](https://arxiv.org/src/2605.03311v2). Timestamp is the v2 submission time in UTC; v1 was submitted on 2026-05-05 at 02:57:39 UTC. No v1 technical comparison is claimed. Reconstruction is Source-derived unless checked below.

# Source map

Printed and PDF pages agree.

| Source | Role |
|---|---|
| I, pp. 1-2 | Separates canonical charges from a fractional-frame temperature prescription; distinguishes profile variation from varying Lagrangian couplings. |
| II, pp. 2-5 | Factorized $q$ action and GHY term, Schwarzschild pullback, binomial/oscillatory profiles and exterior-branch restrictions. |
| III, pp. 5-7 | Defines $T_h$, displays Fig. 1, explicitly derives the unchanged Euclidean temperature, then studies the Clausius one-form. |
| IV, pp. 7-9 | Standard Einstein symplectic potential/Noether charge, mass at infinity and horizon area entropy. |
| V, pp. 9-12 | Integrates $S_{\rm th}$ and defines response coefficients; binomial formulas and Figs. 2-3. |
| VI, pp. 12-14 | Presentation dependence, logarithmic integrals, external-profile versus hair distinction. |
| VII, pp. 14-15 | Lists consistency conditions and leaves charged/rotating and uniqueness extensions open. |

There are no technical appendices. All seven sections and all three figure descriptions were inspected. Read III's Euclidean paragraph before interpreting V as a modification of black-hole mechanics.

# Fixed-profile action and the Schwarzschild branch

The factorized maps and derivatives are

$$
q^\mu=q^\mu(x^\mu),\quad
v_\mu=\frac{dq^\mu}{dx^\mu},\quad
\partial_{q^\mu}=v_\mu^{-1}\partial_\mu,\quad
v(x)=\prod_\mu v_\mu(x^\mu).
$$

For $\kappa^2=8\pi G$, the source writes

$$
S_g=\frac1{2\kappa^2}\int_M d^Dx\,v(x)\sqrt{-g}
({}^{q}R-2\Lambda)
+\frac{\epsilon}{\kappa^2}\int_{\partial M}
d^{D-1}x\,v_\partial\sqrt{|h|}\,{}^qK,
$$

with $v_\partial=v/v_\perp$ for a coordinate boundary.
The variational principle fixes the profile $q^\mu$ and the induced boundary metric. In geometric coordinates it is Einstein-Hilbert plus GHY; it does not provide a dynamical equation or conjugate phase-space momentum for the profile parameters.

One must not double-count Jacobians: the $v(x)$ notation uses geometric-frame component conventions. If instead using the ordinary pulled-back metric determinant in the $x$ chart, its Jacobian is already included.

In the radial spherical approximation, time and angles are undeformed and

$$
ds^2=-f(r)dt^2+\frac{q'(r)^2}{f(r)}dr^2+q(r)^2d\Omega_2^2,\qquad
f(r)=1-\frac{r_0}{q(r)}.
$$

$\xi=\partial_t$ is normalized by $g_{tt}\to-1$ at infinity.
The horizon obeys $q(r_h)=r_0>0$. The assumed exterior has
$q>0$, $q'>0$ throughout $r\geq r_h$, and one horizon on the selected branch.
These hypotheses make $q$ a valid areal coordinate there; they do not ensure a regular interior.

For sign $s=\pm1$,

$$
q(r)=r+s\frac{\ell_*^{1-\alpha}}{\alpha}r^\alpha,\quad
q'=1+s(r/\ell_*)^{\alpha-1},\qquad0<\alpha<1.
$$

For the minus presentation the additional zero is
$r_s=\alpha^{-1/(1-\alpha)}\ell_*$.
The outer branch avoids this singular locus. The full radial approximation is not a theorem about arbitrary factorized Cartesian multifractional backgrounds.

# What the temperature calculation actually shows

For the displayed metric the normalized Killing surface gravity is

$$
\kappa_{\rm geom}
=\left.\frac{f'}{2\sqrt{f g_{rr}}}\right|_h
=\frac{f'(r_h)}{2q'(r_h)}
=\frac1{2r_0},\qquad
T_q=\frac1{4\pi r_0}.
$$

Near the horizon set
$\rho=2q'_h\sqrt{(r-r_h)/f'_h}$.
The Euclidean two-metric becomes
$d\rho^2+(f'_h/(2q'_h))^2\rho^2d\tau^2$,
so regularity requires $\beta=4\pi q'_h/f'_h=4\pi r_0$.
This is the source's own Eqs. (III.9)-(III.12), independently confirmed.

In contrast, the source defines

$$
T_h:=\frac{f'(r_h)}{4\pi}
=\frac{q'(r_h)}{4\pi r_0}=q'_hT_q.
$$

It calls this an operational fractional-coordinate prescription, following earlier multifractional literature. A radial coordinate change with undeformed time does not by itself produce this temperature in the usual Euclidean or Killing calculation. A detector/matter-clock or other operational derivation would be additional input; this paper does not supply one.

The associated symbol $\kappa_h=2\pi T_h$ is therefore a prescribed parameter, not the metric Killing surface gravity unless $q'_h=1$. The distinction is part of v2 and must remain beside any thermal claim.

# Canonical mass, Wald entropy and the actual first law

In the geometric frame the source uses

$$
\delta L=E\delta g+d\Theta,\quad
J_\xi=\Theta(g,\mathcal L_\xi g)-i_\xi L=dQ_\xi,\quad
(Q_\xi)_{ab}=-\frac1{16\pi G}\epsilon_{abcd}\nabla^c\xi^d.
$$

For a Killing solution and a linearized solution,
$d(\delta Q_\xi-i_\xi\Theta)=0$.
The horizon/infinity identity with the stated reference gives

$$
M=\frac{r_0}{2G},\quad
S_N=\frac{A_h}{4G}=\frac{\pi r_0^2}{G},\quad
\delta M=T_q\,\delta S_N.
$$

The mass can also be checked from the asymptotic Hamiltonian surface expression
$E(q)=q\sqrt{1-r_0/q}(1-\sqrt{1-r_0/q})/G$,
whose limit is $r_0/(2G)$.
The Einstein entropy density follows from
$\partial L/\partial R_{abcd}=(g^{ac}g^{bd}-g^{ad}g^{bc})/(32\pi G)$
and binormal normalization $\epsilon_{ab}\epsilon^{ab}=-2$.

At fixed $r_0$, varying an external profile does not change these geometric quantities. This statement uses the geometric reference/subtraction prescription; it is not a direct proof of every possible fractional-coordinate ADM falloff condition.

Even at fixed profile, replacing $T_q$ by $T_h$ while retaining $S_N$ gives
$T_h\,dS_N=q'_h\,dM$, which is not the canonical first law when $q'_h\neq1$.
Fixing the profile makes a one-dimensional entropy integral possible; it does not make $S_N$ conjugate to the prescribed $T_h$.

# Clausius nonclosure and the sign correction

Let $\lambda^I$ be nondynamical profile parameters. On $(r_0,\lambda^I)$,

$$
\vartheta=T_h^{-1}dM.
$$

With the ordinary exterior derivative,

$$
d\vartheta=-T_h^{-2}dT_h\wedge dM
=+T_h^{-2}dM\wedge dT_h.
$$

Equation (III.14) prints a minus sign in front of the last ordering, so it has the wrong sign. In coordinates $(r_0,\lambda)$ the correct coefficient is
$\partial_\lambda T_h/(2GT_h^2)$ multiplying $dr_0\wedge d\lambda$; the source gives its negative. The nonclosure conclusion is unaffected: for varying profile dependence, the naive form is generically not exact.

# The extended identity and its normalization freedom

Use coordinates $(r_h,\lambda^I)$ with $r_0=q(r_h,\lambda)$. Then

$$
dM=\frac1{2G}\left(q'_h\,dr_h+\partial_Iq_h\,d\lambda^I\right).
$$

Demanding $dM=T_h\,dS_{\rm th}$ for fixed $\lambda$ determines only

$$
\left.\partial_{r_h}S_{\rm th}\right|_\lambda
=\frac{2\pi}{G}q_h.
$$

The source chooses

$$
S_{\rm th}^{(0)}(r_h,\lambda)=\frac{2\pi}{G}\int_0^{r_h}q(u,\lambda)\,du.
$$

For this choice,

$$
dM=T_h\,dS_{\rm th}^{(0)}+\Psi_I^{(0)}d\lambda^I,\qquad
\Psi_I^{(0)}
=\frac{\partial_Iq_h}{2G}
-\frac{q'_h}{2Gq_h}\int_0^{r_h}\partial_Iq(u,\lambda)\,du.
$$

This identity is correct and independently checked. It is not an extra dynamical equation: the response coefficients are defined from the same $M,T_h,S_{\rm th}^{(0)}$.

The general solution contains an arbitrary profile-dependent reference,

$$
S_{\rm th}=S_{\rm th}^{(0)}+C(\lambda),\qquad
\Psi_I=\Psi_I^{(0)}-T_h\partial_IC(\lambda).
$$

Thus uniqueness holds only after fixing the entropy normalization (V.7), not from integrability alone. Requiring the general-relativistic limit is insufficient to remove every $C(\lambda)$ that vanishes in that limit. Nor do the $\Psi_I$ become Iyer-Wald coupling-variation charges: in geometric coordinates $\lambda$ does not enter the Einstein Lagrangian as a new coupling.

# Binomial formulas and the lower-limit issue

For the binomial profile,

$$
S_{\rm th}^{(0)}
=\frac{\pi r_h^2}{G}
+s\frac{2\pi\ell_*^{1-\alpha}r_h^{\alpha+1}}
{G\alpha(\alpha+1)},
$$

$$
\Psi_{\ell_*}^{(0)}
=s\frac{1-\alpha}{2G\alpha}\ell_*^{-\alpha}r_h^\alpha
\left[1-\frac{q'_hr_h}{q_h(\alpha+1)}\right].
$$

The profile and the integral are mathematically defined down to zero, but the source's geometrical branch assumptions only concern the exterior. For the minus presentation $q$ is negative between zero and $r_s$. Integrating through that interval is a normalization choice, not an integral over a regular black-hole exterior.

At $\alpha=1/2$ the exact horizons are

$$
r_h^+=(\sqrt{\ell_*+r_0}-\sqrt{\ell_*})^2,\qquad
r_h^-=(\sqrt{\ell_*+r_0}+\sqrt{\ell_*})^2.
$$

On the minus exterior $r_h^->4\ell_*$, while the source's normalization gives

$$
\lim_{r_0\to0^+}S_{\rm th}^{(0)}
=-\frac{16\pi\ell_*^2}{3G}.
$$

At $r_0=\ell_*$, where the exterior remains monotonic,
$S_{\rm th}^{(0)}/S_N=-(5+4\sqrt2)/3<0$.
This agrees with the negative portion of Fig. 2; it is not a plotting mistake. It shows that exterior regularity does not imply positivity of this normalized entropy.
An additive reference can change the sign without changing the fixed-profile first law, but it changes $\Psi_{\ell_*}$. No microscopic entropy interpretation or preferred reference is established.

# Logarithmic oscillations and presentation dependence

For

$$
q(r)=r+s\frac{\ell_*^{1-\alpha}}{\alpha}r^\alpha
[1+A\cos\theta+B\sin\theta],\qquad
\theta=\omega\log(r/\ell_\infty),
$$

$q'$ contains both the modulation and its phase derivative,

$$
q'=1+s\ell_*^{1-\alpha}r^{\alpha-1}
\left[F_\omega+\frac{\omega}{\alpha}
(-A\sin\theta+B\cos\theta)\right].
$$

For $K=(\alpha+1)^2+\omega^2$, the primitives are

$$
\int_0^{r_h}r^\alpha\cos\theta\,dr
=\frac{r_h^{\alpha+1}}K[(\alpha+1)\cos\theta_h+\omega\sin\theta_h],
$$

$$
\int_0^{r_h}r^\alpha\sin\theta\,dr
=\frac{r_h^{\alpha+1}}K[(\alpha+1)\sin\theta_h-\omega\cos\theta_h].
$$

Their lower-limit contributions vanish for $\alpha>-1$. Differentiating these expressions independently reproduces the integrands. Inserting them in $S_{\rm th}^{(0)}$ and differentiating with respect to $(\ell_*,\alpha,A,B,\omega,\ell_\infty)$ gives the extended identity coefficient by coefficient.

The source plots $\alpha=0.5$, $\ell_*=1$, with representative oscillatory values $A=0.12$, $B=0.08$, $\omega=3$, $\ell_\infty=\ell_*$.
Fig. 1 concerns $T_h/T_q=q'_h$; Fig. 2 concerns $S_{\rm th}^{(0)}/S_N$; Fig. 3 concerns $\ell_*\Psi_{\ell_*}/M$. The figures are illustrations on selected branches, not a proof of $q'>0$ for arbitrary amplitudes throughout an exterior.

At fixed $r_0$, the two presentations have the same $M,S_N$ but different prescribed thermal quantities. The average/half-spread
$\langle O\rangle_\pm=(O_++O_-)/2$ and
$\Delta_\pm O=|O_+-O_-|/2$
are definitions; interpreting them as stochastic uncertainty requires a microscopic model and probability law not supplied here. The leading infrared horizon shift is
$r_h=r_0-s\ell_*^{1-\alpha}r_0^\alpha/\alpha+\cdots$,
so relative profile effects decay for large $r_0/\ell_*$.

# Verification ledger

Checked — dedicated xAct-kernel component computation: constructed the ordinary Levi-Civita connection of the displayed pulled-back metric for symbolic $q(r)$. All 16 Ricci components vanish, and
$-\tfrac12(\nabla_a\xi_b)(\nabla^a\xi^b)=r_0^2/(4q^4)$.
The horizon value gives $\kappa_{\rm geom}^2=1/(4r_0^2)$.
This is a direct coordinate-array computation in the xAct runtime, not an abstract-tensor proof of the full multifractional variational formalism.

Checked — Mathematica: 27 labelled outputs. Twenty-five zero residuals cover the profile derivative, surface-gravity cancellation, canonical first law, mass limit, Wald density, radial entropy derivative, parameter-component identities, oscillatory primitives, entropy-reference freedom, half-exponent horizons and the negative-entropy witnesses. The other two outputs record the correct nonzero exterior-derivative coefficient and the failed source-sign residual. The parameter-component tests verify a constructed differential identity; they do not independently derive new thermodynamic physics.

Source-derived: the full $q$-action/GHY variational prescription, the standard covariant charge identity, the operational motivation for $T_h$, and the proposed interpretation of presentation spread. Rendered pages 7, 11 and 12 confirm the Euclidean distinction, sign error, normalization language and the negative entropy in Fig. 2.

Failed: Eq. (III.14)'s exterior-derivative sign. Its non-integrability conclusion survives. An unconditional uniqueness claim would also be false; the formulas are unique only after choosing (V.7).

Blocked: no supplied detector/QFT derivation selects $T_h$ instead of $T_q$; no dynamical profile sector or coupling-variation CPS derivation produces the response potentials; no physical principle fixes $C(\lambda)$ or establishes entropy positivity.

Verified: the stated local metric, charge-normalization and elementary differential/integral checks.

Assumptions: $G>0$, $r_0>0$, $0<\alpha<1$, positive length scales, undeformed time, normalized $\partial_t$, smooth monotonic exterior with $q'_h>0$, fixed profile in the canonical action variation, and the explicitly chosen entropy reference in the extended identity.

Not independently verified: quantum radiation in a fractional matter theory, global classification of oscillatory branches, full boundary/corner CPS, dynamical profile variation, microscopic entropy or charged/rotating extensions. No complete phase space or new charge algebra is constructed.

PDF extraction emitted a font mismatch warning; audited formulas were checked visually. Initial nested-square-root simplification and a hand-entered entropy-witness value were corrected by using the positive-root polynomial and the exact expression before recording final results.

# Use in the current project

This is a clean example of why action-derived charges, geometric temperature, an imposed thermodynamic prescription and an integrable state-function definition must be kept separate. The useful conclusion is the unchanged canonical Wald law plus a conditional response identity, not a new action-derived entropy inferred from integrability.
