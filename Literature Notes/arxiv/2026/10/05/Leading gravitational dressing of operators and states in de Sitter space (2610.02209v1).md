---
paper id: 2610.02209v1
title: Leading gravitational dressing of operators and states in de Sitter space
authors:
  - Steven B. Giddings
  - Zi-Yue Wang
publication date: 2026-10-01T17:59
abstract: |-
  We describe construction of gravitationally dressed observables in de Sitter (dS) space, to leading non-trivial order in Newton's constant. We show that for an underlying field theory observable to be "gravitationally dressable," it must be dS invariant. If it satisfies this condition, its gravitational dressing can be constructed in terms of certain Green functions, by solving the condition that the dressed observable commute with the constraints. We provide a construction of the Green functions relevant for dressing observables lying on a time-symmetric slice. A simple example of a dS invariant observable is an operator creating a two-particle state of scalars. In the large mass limit, the particles are shown to be antipodally located, and the dressing of this operator (or corresponding state) can be explicitly constructed. Its behavior is diagnosed by certain correlators involving this state, and we check explicitly that these correlators then reproduce a linearized version of the Schwarzschild-dS solution. The underlying dS-invariant observables may be thought of as relational, and we argue can be generalized to include systems with properties of observers, which then could be likewise gravitationally dressed. We also briefly describe how such dressed observables can be related to alpha vacua, and discuss other questions regarding a more complete construction and role of such operators.
comments: "26 pages"
url: https://arxiv.org/abs/2610.02209v1
summary: "Projected constraint Green functions on a closed de Sitter slice, an invariant pair operator, and the precise boundary of its linearized Schwarzschild-de Sitter interpretation."
tags: []
---

# Closed-slice constraints and dressable observables

The reusable result is a projected inverse of the linearized gravitational constraints on the time-symmetric slice of global de Sitter space. The projection removes the de Sitter Killing charges; consequently, a matter operator must already commute with those charges before the leading dressing can be constructed. The antipodal two-particle example gives the spatial profile of the linearized Schwarzschild–de Sitter field. Its one-sided three-point diagnostic has half the classical field coefficient, as the source itself notes after Eq. (4.50).

This is a leading perturbative construction with distributional kernels. It does not by itself construct a Hilbert-space operator, a normalized invariant state, a positive physical inner product, or a regional sewing map. Source Eq. (2.2) also needs an explicit cosmological-term convention before its vacuum-background assumption is consistent.

Reason codes: `T1-Wald-CPS; T1-charge; T1-boundary; T2-dS-BH-holography`. The immediate use is to test when a proposed constraint Green operator really is an inverse and when a residual global-charge obstruction remains.

## Source map and how to read this paper

The official [v1 abstract](https://arxiv.org/abs/2610.02209v1), full PDF and TeX source were read. This note uses monograph-style organization because the constraint, harmonic and state chains depend on both appendices, despite the moderate page count. Printed page numbers below exclude the title page.

| Source section | Purpose and dependencies | Reading role |
| --- | --- | --- |
| §1, pp. 1–2 | Distinguishes gauge-invariant q-observables from actual measurements; motivates dressing on closed slices | Orientation |
| §2, pp. 2–6, Eqs. (2.1)–(2.25) | ADM constraints, canonical commutators, the Killing obstruction, projected Green equations | Essential |
| §3.1, pp. 6–7, Eqs. (3.1)–(3.11) | Scalar harmonics and the trace ansatz for the normal dressing | Essential, with Appendix B |
| §3.2, pp. 7–8, Eqs. (3.12)–(3.20) | Longitudinal/transverse decomposition of the spatial dressing | Essential |
| §4.1, pp. 9–11, Eqs. (4.1)–(4.20) | Group averaging, scalar modes, boost recurrence and invariant pair operator | Technical construction |
| §4.2, pp. 11–13, Eqs. (4.21)–(4.33) | Antipodal correlator, heavy-mass approximation and one-sided gravitational diagnostic | Essential, with domain cautions |
| §4.3, pp. 13–16, Eqs. (4.34)–(4.56) | SdS coordinate change, distributional source normalization, $d=2,3$ examples | Essential normalization check |
| §5, pp. 16–18 | Physical observers, multi-universe interpretation, general slices, complex structures and nonlinear limitations | Outlook, not a proved extension |
| Appendix A, pp. 18–20, Eqs. (A.1)–(A.16) | Real scalar/vector bases, degeneracies, addition theorem and completeness | Reference needed by §§3–4 |
| Appendix B, pp. 20–22, Eqs. (B.1)–(B.11) | Spectral inverse, generating-function integrals and closed kernels for $2\leq d\leq10$ | Reference and checkable kernel catalogue |

The dependency chain is

$$
\text{canonical constraint expansion}
\longrightarrow \text{Killing projection and }[Q_I,O]=0
\longrightarrow (H_{ij},G^{ijk})
\longrightarrow \widehat O_2
\longrightarrow \text{heavy-mass correlator}
\longrightarrow \text{SdS profile comparison}.
$$

# Canonical data and the zero-mode obstruction

## Conventions and the cosmological-term repair

Write $D=d+1$, $d\geq2$, use Lorentzian signature $(-+\cdots+)$, set the de Sitter radius to one and take

$$
\kappa^2=32\pi G,\qquad
 ds^2=-N^2dt^2+q_{ij}(dx^i+N^idt)(dx^j+N^jdt),\qquad
 n^\mu=N^{-1}(1,-N^i).
$$

The canonical perturbations are

$$
\widetilde q_{ij}=q_{ij}+\kappa h_{ij},\qquad
[p^{ij}(x),h_{kl}(x')]=-i\delta^i_{(k}\delta^j_{l)}\delta^d(x-x').
$$

Here $p^{ij}$ is a density; $h_{ij}$ is not. $D_i$ is the Levi-Civita derivative of $q$, $h=q^{ij}h_{ij}$, and $T_{n\mu}=n^\nu T_{\nu\mu}$. The scalar mass in §4 is $M^2=\mu^2+d^2/4$, with real positive $\mu$ for the massive principal-series example. The later SdS mass agrees with this particle mass in the large-$\mu$ approximation; the metric parameter $m$ is a different quantity.

**Failed, literal convention in Eq. (2.2).** The source prints

$$
 C_\mu=\sqrt q\left(-\frac{G_{\mu\nu}}{8\pi G}+T_{\mu\nu}\right)n^\nu
$$

and calls $G_{\mu\nu}$ the Einstein tensor, while subsequently requiring vacuum dS with zero matter stress. On the unit-radius background,

$$
 R_{\mu\nu}=d g_{\mu\nu},\quad
 R=d(d+1),\quad
 G_{\mu\nu}=-\frac{d(d-1)}2g_{\mu\nu}.
$$

Thus the displayed formula gives $C_n/\sqrt q=-d(d-1)/(16\pi G)\neq0$. The bounded repair is to use

$$
 \mathscr E_{\mu\nu}=G_{\mu\nu}+\Lambda g_{\mu\nu},\qquad
 \Lambda=\frac{d(d-1)}2,
 \qquad
 C_\mu=\sqrt q\left(-\frac{\mathscr E_{\mu\nu}}{8\pi G}+T_{\mu\nu}\right)n^\nu .
$$

Equivalently one could include the vacuum stress in $T$, but that would change the stated zero-matter convention. All subsequent statements here use the explicit $\mathscr E$ convention. xAct verifies its vanishing on dS. This is a repair of the background definition, not a refutation of the projected kernels derived later.

For this convention, the underlying minimally coupled model can be written

$$
 S=\int d^{d+1}x\sqrt{-g}
 \left[\frac{2}{\kappa^2}(R-2\Lambda)
 -\frac12(\nabla\phi)^2-\frac12M^2\phi^2\right].
$$

This action is a local convention translation; the paper begins its calculation with the canonical constraints rather than a full action variation.

## From the dressing ansatz to the residual charge

At the order considered, a matter operator is dressed by

$$
 \widehat O\simeq e^{iA}Oe^{-iA},\qquad
 A=\int d^dx\sqrt q\,V^\mu T_{n\mu},
$$

where

$$
 V^\mu(x)=\frac\kappa2\int d^dx'
 \left[H^\mu_{ij}(x',x)p^{ij}(x')+G^{ij\mu}(x',x)h_{ij}(x')\right].
$$

The notation is perturbative: the exponential does not assert a nonperturbative definition of an unbounded operator. Expanding the constraints as

$$
 \widetilde C_\mu=\kappa^{-1}L_\mu+\sqrt q(T_{n\mu}+t_{n\mu})
$$

gives, at order $\kappa^0$,

$$
 [\widetilde C_\mu(x),\widehat O]
 =\frac i\kappa\int d^dx' [L_\mu(x),V^\nu(x')]
 [\sqrt{q(x')}T_{n\nu}(x'),O]
 +[\sqrt{q(x)}T_{n\mu}(x),O]+O(\kappa).
$$

For every background Killing field $\xi_I$, a closed slice has

$$
 \int d^dx\,\xi_I^\mu L_\mu=0.
$$

An unprojected relation $[L_\mu/\kappa,V^\nu]=i\delta_\mu{}^\nu\delta^d$ would contradict this identity. The source instead uses

$$
 [L_\mu(x)/\kappa,V^\nu(x')]
 =i\bigl[\delta_\mu{}^\nu\delta^d(x-x')-c_\mu{}^\nu(x,x')\bigr],
$$

$$
 c_\mu{}^\nu(x,x')=\sqrt{q(x)}\,\xi_{I\mu}(x)(M^{-1})^{IJ}\xi_J^\nu(x'),
 \qquad M_{IJ}=\int d^dx\sqrt q\,\xi_I^\mu\xi_{J\mu}.
$$

Integrating against a Killing field gives the required cancellation. Substituting the projected relation into the expanded constraint leaves a linear combination of

$$
 [Q_I,O],\qquad Q_I=\int d^dx\sqrt q\,\xi_I^\mu T_{n\mu}.
$$

Therefore **within this leading matter-dressing problem**, the consistency condition is $[Q_I,O]=0$ for every $I$. This is the operator version of the linearization-stability obstruction. It does not say that every charged local field has become a gauge-invariant observable. Nor does it include a seed with independent graviton excitations without revisiting the gravitational stress contribution.

## Time-symmetric slice and kernel equations

On global dS,

$$
 ds^2=-d\tau^2+\cosh^2\tau\,d\Omega_d^2,
$$

choose $\tau=0$, so $N=1$, $N^i=0$, $K_{ij}=0$, and $R^q_{ij}=(d-1)q_{ij}$. Then

$$
 L_n=-2\sqrt q\,L^{ij}h_{ij},\qquad
 L_i=-2\sqrt q\,q_{ij}D_k(p^{jk}/\sqrt q),
$$

$$
 L^{ij}h_{ij}=D^iD^jh_{ij}-D^2h-R_q^{ij}h_{ij}.
$$

The mixed kernels may be set to zero on this slice, leaving

$$
 V^\tau=\frac\kappa2\int H_{ij}p^{ij},\qquad
 V^k=\frac\kappa2\int G^{ijk}h_{ij},
$$

with argument order as in the preceding definition. Equations (2.24)–(2.25) become

$$
 -\sqrt q\,L_x^{ij}H_{ij}(x,x')=\delta^d(x-x')-c_\tau{}^\tau(x,x'),
$$

$$
 q_{ij}(x)D_k^xG^{jkl}(x,x')=\delta_i{}^l\delta^d(x-x')-c_i{}^l(x,x').
$$

The derivative in the second equation must respect the density carried by $G$. Omitting its $\sqrt q$ factor would change the equation.

# Scalar and vector inverses on the sphere

## Harmonic normalization and the scalar family

Put $u(x,x')=\cos\gamma(x,x')$, $V_d=\operatorname{Vol}(S^d)$. Use real orthonormal scalar harmonics,

$$
 D^2Y_{\ell a}=-\ell(\ell+d-1)Y_{\ell a},\qquad
 \int\sqrt q\,Y_{\ell a}Y_{\ell'a'}=\delta_{\ell\ell'}\delta_{aa'},
$$

$$
 N_\ell=\frac{(2\ell+d-1)(\ell+d-2)!}{\ell!(d-1)!},\qquad
 \sum_aY_{\ell a}(x)Y_{\ell a}(x')
 =\frac{2\ell+d-1}{(d-1)V_d}C_\ell^{(d-1)/2}(u).
$$

Define $G_s^d$ by removing its entire degree-$s$ eigenspace:

$$
 \frac1{V_d}[D^2+s(s+d-1)]G_s^d(u)
 =\frac{\delta^d(x-x')}{\sqrt{q(x)}}-\sum_aY_{sa}(x)Y_{sa}(x').
$$

The no-$\ell=s$ solution is

$$
 G_s^d(u)=\sum_{\ell\geq0,\,\ell\neq s}
 \frac{(2\ell+d-1)C_\ell^{(d-1)/2}(u)}{(d-1)(s-\ell)(\ell+d+s-1)}.
$$

The denominator is the actual eigenvalue difference. The expression is a Green distribution, not an everywhere convergent pointwise expansion at coincidence.

Appendix B uses

$$
 \sum_{\ell\geq0}\frac{2\ell+d-1}{d-1}t^\ell C_\ell^{(d-1)/2}(u)
 =\frac{1-t^2}{(1-2ut+t^2)^{(d+1)/2}}
$$

to obtain

$$
 G_0^d(u)=\frac1{d-1}\int_0^1dt\,(t^{d-2}-t^{-1})
 \left[\frac{1-t^2}{(1-2ut+t^2)^{(d+1)/2}}-1\right],
$$

$$
 G_1^d(u)=\frac1d+\frac1{d+1}\int_0^1dt\,(t^{d-1}-t^{-2})
 \left[\frac{1-t^2}{(1-2ut+t^2)^{(d+1)/2}}-1-(d+1)ut\right].
$$

The subtractions remove both the forbidden mode and the apparent small-$t$ singularities. Useful low-dimensional representatives are

$$
 G_0^2=1+\log\frac{1-u}{2},\qquad
 G_1^2=1+\frac43u+u\log\frac{1-u}{2},
$$

$$
 G_0^3=\frac14-\frac{(\pi-\arccos u)u}{2\sqrt{1-u^2}},\qquad
 G_1^3=\frac u4+\frac{(\pi-\arccos u)(1-2u^2)}{2\sqrt{1-u^2}}.
$$

All 18 tabulated $s=0,1$, $d=2,\ldots,10$ formulas were independently tested: away from the source they obey $D^2G_0=-1$ and $(D^2+d)G_1=-(d+1)u$; their north-pole flux is $V_d$, their south-pole flux is zero, and their forbidden-mode moments vanish numerically. Thus these checks include source normalization and absence of an unintended antipodal source, not only the local ODE.

## Normal dressing and boost projector

Set $H_{ij}=q_{ij}\mathcal H(u)$. Covariant differentiation gives

$$
 L^{ij}(q_{ij}\mathcal H)=-(d-1)(D^2+d)\mathcal H.
$$

At $\tau=0$, rotation Killing fields are spatial and boost Killing fields have $\xi_{Ba}^\tau=Y_{1a}$, $\xi_{Ba}^i=0$. The Gram blocks are $M_B=-I$, $M_R=I$; the negative boost norm is cancelled by lowering the time index in the projector. Consequently,

$$
 \frac{c_\tau{}^\tau}{\sqrt q}=\sum_aY_{1a}(x)Y_{1a}(x')=\frac{d+1}{V_d}u,
 \qquad
 H_{ij}(x,x')=\frac{q_{ij}(x)}{(d-1)V_d}G_1^d(u).
$$

Adding a homogeneous kernel is a dressing freedom. The displayed representative fixes the scalar degree-one component to zero.

## Spatial dressing and rotation projector

The longitudinal harmonics are

$$
 Y^L_{i,\ell a}=\frac{D_iY_{\ell a}}{\sqrt{\ell(\ell+d-1)}},\quad \ell\geq1,
 \qquad D^2Y^L_i=[-\ell(\ell+d-1)+d-1]Y^L_i.
$$

The transverse family obeys

$$
 D^iY^T_{i,\ell\tilde a}=0,\quad
 D^2Y^T_{i,\ell\tilde a}=[-\ell(\ell+d-1)+1]Y^T_{i,\ell\tilde a},
$$

$$
 N_\ell^T=\frac{\ell(\ell+d-1)(2\ell+d-1)(\ell+d-3)!}{(d-2)!(\ell+1)!}.
$$

Its $\ell=1$ modes are the $d(d+1)/2$ rotation Killing fields. These, and only these, are subtracted from vector completeness. Use

$$
 G^{ijk}=\sqrt q\,[q^{ij}\mathcal T^k+2D^{(i}\mathcal G^{j)k}],\qquad D_j\mathcal G^{jk}=0.
$$

The covariant commutator on the unit sphere gives

$$
 \frac1{\sqrt q}D_jG_i{}^{jk}=D_i\mathcal T^k+(D^2+d-1)\mathcal G_i{}^k.
$$

The solution is

$$
 \mathcal T_i(x,x')=-\frac1{V_d}D_i^{x'}G_0^d(u),\qquad
 \mathcal G_i{}^j(x,x')=-\sum_{\ell\geq2,\tilde a}
 \frac{Y^T_{i,\ell\tilde a}(x)Y^{Tj}_{\ell\tilde a}(x')}{(\ell-1)(\ell+d)}.
$$

The sign follows from $-\ell(\ell+d-1)+d=-(\ell-1)(\ell+d)$. The $x'$-derivative in $\mathcal T_i$ should not be replaced by an $x$-derivative. xAct checks the divergence identity before imposing transversality, so the omitted term is explicitly $D_iD_j\mathcal G^{jk}$.

# Invariant pair operator and its domain

## Mode basis and boost recurrence

For the free scalar,

$$
 \phi(\tau,x)=\sum_{\ell a}\left[f_\ell(\tau)Y_{\ell a}(x)a_{\ell a}
 +f_\ell(\tau)^*Y_{\ell a}(x)a_{\ell a}^\dagger\right],
$$

$$
 f_\ell(\tau)=2^{-\ell-d/2}
 \frac{\sqrt{\Gamma(\ell+d/2+i\mu)\Gamma(\ell+d/2-i\mu)}}{\Gamma(\ell+(d+1)/2)}
 (\cosh\tau)^\ell
 {}_2F_1\left(\ell+\frac d2-i\mu,\ell+\frac d2+i\mu;
 \ell+\frac{d+1}2;\frac{1-i\sinh\tau}{2}\right).
$$

The wave equation and normalization are

$$
 \ddot f_\ell+d\tanh\tau\,\dot f_\ell+
 [M^2+\ell(\ell+d-1)\operatorname{sech}^2\tau]f_\ell=0,
 \qquad i\cosh^d\tau(f_\ell^*\dot f_\ell-\dot f_\ell^*f_\ell)=1.
$$

To diagonalize rotations about a boost axis, write

$$
 Y^d_{\ell k\alpha}=N_{\ell k}(\sin\chi)^k
 C_{\ell-k}^{k+(d-1)/2}(\cos\chi)Y^{d-1}_{k\alpha},
$$

$$
 N_{\ell k}=\frac{\Gamma(2k+d-1)}{2^{k+(d-1)/2}\Gamma(k+d/2)}
 \left[\frac{(2\ell+d-1)\Gamma(\ell-k+1)}{\Gamma(\ell+k+d-1)}\right]^{1/2}.
$$

For $B=\cos\chi\,\partial_\tau-\tanh\tau\sin\chi\,\partial_\chi$,

$$
 i\mathcal L_Bu_{\ell k\alpha}=\beta_{\ell k}u_{\ell+1,k\alpha}
 +\beta_{\ell-1,k}u_{\ell-1,k\alpha},
$$

$$
 \beta_{\ell k}^2=
 \frac{(\ell+k+d-1)(\ell-k+1)[(\ell+d/2)^2+\mu^2]}
 {(2\ell+d-1)(2\ell+d+1)}.
$$

A rotation-singlet pair is $|S_\ell\rangle=\sum_{k\alpha}(a^\dagger_{\ell k\alpha})^2|0\rangle$. The coefficient of $a^\dagger_{\ell+1,k\alpha}a^\dagger_{\ell k\alpha}|0\rangle$ in a boosted sum is proportional to $\beta_{\ell k}(q_\ell+q_{\ell+1})$. Thus $q_{\ell+1}=-q_\ell$, and the formal Hermitian operator is

$$
 O_2=\sum_{\ell a}(-1)^\ell
 \left[a_{\ell a}^2+(a_{\ell a}^\dagger)^2\right].
$$

The rotation invariance and one boost recurrence generate the full dS invariance formally. A hard cutoff does not preserve it: with modes through $L$, the uncancelled term is the boost from $L$ to $L+1$.

## The invariant vector is not a normalized Fock vector

The source's phrase “up to normalization” should not be read as the existence of a finite Fock norm. Orthogonality of oscillator states gives

$$
 \|O_{2,L}|0\rangle\|^2=2\sum_{\ell=0}^L N_\ell,
$$

which diverges as $L\to\infty$. For $d=3$, the exact values at $L=5,10,20$ are $182,1012,6622$. Accordingly, the formal invariant pair, the group average

$$
 O=\int_{SO(D,1)}d\Lambda\,U(\Lambda)^\dagger\overline O U(\Lambda),
$$

and the corresponding dressings require a distributional interpretation or an appropriate physical-state construction. The noncompact group integral is not automatically convergent. No invariant regulator, rigging map or physical inner product is supplied here. This is a **Blocked** boundary for claiming a normalized physical state, not a failure of the finite-mode recurrence.

# Antipodal diagnostic and the classical field

## Undressed two-point insertion

The source obtains

$$
 F(x_1,x_2):=\langle0|\phi(0,x_1)\phi(0,x_2)O_2|0\rangle
 =2\sum_{\ell a}(-1)^\ell f_\ell(0)^2Y_{\ell a}(x_1)Y_{\ell a}(x_2).
$$

Since $f_\ell(0)$ is real and $Y_{\ell a}(Ax)=(-1)^\ell Y_{\ell a}(x)$, this is twice the Bunch–Davies Wightman function with one spatial argument antipodally reflected. Its closed form follows from

$$
 W(Z)=\frac{\Gamma(d/2+i\mu)\Gamma(d/2-i\mu)}{(4\pi)^{(d+1)/2}\Gamma((d+1)/2)}
 {}_2F_1\left(\frac d2+i\mu,\frac d2-i\mu;\frac{d+1}2;\frac{1+Z}{2}\right),
$$

where $Z=-\sinh\tau_1\sinh\tau_2+\cosh\tau_1\cosh\tau_2u(x_1,x_2)$.

At fixed $\ell$, $f_\ell(0)^2=(2\mu)^{-1}+O(\mu^{-3})$. In a low-spatial-momentum or appropriately smeared heavy-mass limit,

$$
 F(x_1,x_2)\simeq\frac1\mu\frac{\delta^d(x_1-Ax_2)}{\sqrt{q(x_1)}}.
$$

The fixed-mode expansion is not uniform over all $\ell$: at $d=3,\mu=100$, the checked values of $2\mu f_\ell(0)^2$ are about $0.999963$ for $\ell=0$ and $0.703580$ for $\ell=100$. Thus replacing every coefficient in an unrestricted infinite sum requires a weak-limit argument beyond these finite checks. Pointwise delta localization is not a finite-mass assertion.

## Stress insertion and the factor of two

At leading heavy mass and with the vacuum normal-ordering constant removed,

$$
 \sqrt q\,T_{nn}(x)\simeq\mu\sqrt q
 \sum_{\ell a,\ell'a'}Y_{\ell a}(x)Y_{\ell'a'}(x)a^\dagger_{\ell a}a_{\ell'a'}.
$$

The $aa$ and $a^\dagger a^\dagger$ contributions cancel at this order between the mass and time-derivative terms; spatial gradients and $V^iT_{ni}$ are subleading in the same momentum regime. Consequently,

$$
 \langle\phi_1\phi_2[\sqrt q T_{nn}(x),O_2]\rangle
 \simeq\mu[\delta^d(x-x_1)+\delta^d(x-x_2)]F(x_1,x_2).
$$

On the time-reflection-symmetric Gaussian gravitational vacuum assumed in the source,

$$
 \langle h_{ij}p^{kl}\rangle=\tfrac12\langle[h_{ij},p^{kl}]\rangle.
$$

The one-sided correlator then is

$$
 \langle\phi_1\phi_2 h_{ij}(x_3)\widehat O_2\rangle
 \simeq-\frac{\kappa\mu}{4}
 [H_{ij}(x_3,x_1)+H_{ij}(x_3,x_2)]F(x_1,x_2).
$$

This is a gauge-dependent diagnostic of the formal dressed state: the three external insertions are not themselves dressed relational observables. Its coefficient is half the classical expression below. A single oscillator makes the reason transparent: for $[h,p]=i$ in its time-symmetric vacuum,

$$
 i\lambda\langle hp\rangle=-\lambda/2,
 \qquad i\lambda\langle[h,p]\rangle=-\lambda.
$$

The factor $1/2$ was checked exactly with oscillator matrices. It explains the contraction used by the source; it does not turn the one-sided diagnostic into a normalized physical expectation value. A fully relational, normalized observable comparison remains open.

## SdS coordinate transformation and distributional normalization

For

$$
 ds^2=-f(r)dt^2+f(r)^{-1}dr^2+r^2d\Omega_{d-1}^2,
 \quad f(r)=1-r^2-\frac{2m}{r^{d-2}},
 \quad m=\frac{8\pi GM}{(d-1)V_{d-1}},
$$

the small-$m$ cosmological horizon and surface gravity are

$$
 r_c=1-m+O(m^2),\qquad \alpha=1-(d-1)m+O(m^2).
$$

The source also gives the Kruskal coordinates $U=e^{\alpha(t-r_*)}$, $V=-e^{-\alpha(t+r_*)}$, $dr_*=dr/f$, yielding $ds^2=f\,dU\,dV/(\alpha^2UV)+r^2d\Omega_{d-1}^2$. The spatial comparison needs only the time-symmetric slice.

Putting $r=(1-m)\sin\chi+O(m^2)$ gives

$$
 \delta q_{ij}dx^idx^j=2m\left[
 \frac{\sin^{2-d}\chi-1}{\cos^2\chi}d\chi^2
 -\sin^2\chi\,d\Omega_{d-1}^2\right].
$$

The coordinate redefinition $\chi\mapsto\chi+m\tan\chi[C(\chi)+1]$ brings this to

$$
 \delta q_{ij}=2mC(\chi)q_{ij},\qquad
 \cos\chi\,C'+\sin\chi\,C=-\sin^{1-d}\chi.
$$

Choose the solution even about the equator and smooth there. Applying $\partial_\chi+(d-1)\cot\chi$ gives $(D^2+d)C=0$ away from the poles. The north-pole derivative $C'\sim-\chi^{1-d}$, and the analogous south-pole flux, give

$$
 (D^2+d)C=-V_{d-1}\left[
 \frac{\delta^d(x-x_0)}{\sqrt q}+\frac{\delta^d(x-Ax_0)}{\sqrt q}\right].
$$

The antipodal sum of $G_1^d$ cancels its odd degree-one projector, so

$$
 C=-\frac{V_{d-1}}{V_d}[G_1^d(u)+G_1^d(-u)],
$$

$$
 \delta q_{ij}=-16\pi GM[H_{ij}(x,x_0)+H_{ij}(x,Ax_0)],
 \qquad h_{ij}^{\mathrm{SdS}}=-\frac{\kappa M}{2}[H_{ij}(x,x_0)+H_{ij}(x,Ax_0)].
$$

The no-degree-one convention and antipodal symmetry remove the homogeneous ambiguity in this comparison. The perturbative metric is not valid arbitrarily close to the point sources; for $d>2$, the smallness condition includes $m/r^{d-2}\ll1$.

For $d=2$, $m=4GM$ and $C=u\operatorname{arctanh}u-1$. The exact conical angular rescaling has $\gamma^2=1-8GM$; its linearization gives

$$
 \delta q_{ij}=8GM(u\operatorname{arctanh}u-1)q_{ij}.
$$

For $d=3$, $m=GM$, $C=\cos(2\chi)/\sin\chi$, and

$$
 \delta q_{ij}=2GM\frac{\cos2\chi}{\sin\chi}q_{ij}.
$$

Both low-dimensional ODEs, the coordinate-shift equations and the conical expansion were checked independently.

# Translation to regional observables and remaining scope

The kernel $1-P_{\mathrm{Kill}}$ is the object to reuse in an observable construction. Solving a local constraint equation is insufficient unless its source lies in this projected range. A candidate local excitation can satisfy differential equations while still carrying a forbidden integrated Killing charge. The antipodal pair is an explicit example of cancelling the global obstruction rather than adding an asymptotic boundary.

The calculation supplies an elliptic inverse on a chosen Cauchy slice. It is not the retarded/advanced propagator of a hyperbolic field equation. Identifying it with a Peierls bracket kernel or a causal regional response map requires an additional evolution and gauge-fixing construction. Likewise, neither the canonical dressing conjugation nor its homogeneous freedom establishes a tensor-product split or a symplectic gluing theorem.

In §5 the authors propose replacing one particle by a composite physical observer, discuss coherent multi-universe states and alpha parameters, and suggest that high powers of dressed operators may strongly backreact. These are outlook claims. The paper leaves general slices, interacting complex structures, higher-order dressing, physical-state normalization and a nonperturbative observable algebra unresolved.

## Equation ledger and verification log

| Source chain | Independent evidence | Status and boundary |
| --- | --- | --- |
| Eq. (2.2), background assumption | xAct constant-curvature Einstein tensor; explicit normal contraction | **Failed** literally without $\Lambda$; **Checked** after the stated cosmological-term repair |
| Eqs. (2.11)–(2.18) | Substitution of the projected commutator and contraction with the Gram matrix | **Checked**, formal leading-order cancellation; assumes admissible smearing and a nondegenerate Killing Gram matrix on the selected slice |
| Eqs. (3.6), (3.18) | xAct `core`, explicit covariant derivatives, curvature substitution after canonicalization | **Checked**, both residuals zero for symbolic $d\geq2$ |
| Eqs. (3.4), (3.19)–(3.20), (B.4)–(B.8) | Mathematica eigenvalue factors and generating-function identity | **Checked**, algebraic reductions; infinite-series interpretation remains distributional |
| Eqs. (B.10)–(B.11) | 18 exact local ODE residuals, north/south flux limits, 18 forbidden-mode quadratures | **Checked** for every tabulated $d=2,\ldots,10$; quadrature residuals below $4\times10^{-36}$ at 40-digit working precision |
| Eqs. (4.4), (4.7), (4.11)–(4.12) | 18 mode ODE/Wronskian cases; 84 exact harmonic norms; 27 boost-action cases | **Checked**, finite cases only: modes $d=2,3,4$, $\ell=0,1,2$, $\mu=3,10$, $\tau=1/7$; norms $d=2,\ldots,5$, $\ell\leq5$, all (k$; boosts (d=2,3,4), (1\leq\ell\leq3), all (k$, (\mu=3), (\chi=3/7$ |
| Eqs. (4.18)–(4.20) | Polynomial realization of oscillator boost at cutoff $L=8$, explicit boundary term; exact pair norms | **Checked**, formal recurrence; **Blocked** as a normalized infinite-mode Fock vector |
| Eqs. (4.22)–(4.26) | Real-basis parity and finite heavy-mass coefficient evaluation | **Source-derived** closed Wightman sum; **Checked** parity and finite coefficient behavior; unrestricted weak-limit interchange not independently proved |
| Eqs. (4.29)–(4.33), (4.50) | Exact vacuum oscillator contraction gives ratio $1/2$ | **Checked** contraction mechanism under the stated vacuum assumption; full constrained gravitational state is not constructed |
| Eqs. (4.36), (4.40)–(4.48), (4.55)–(4.56) | Mathematica small-$m$ expansion, coordinate shift, ODE reduction and low-dimensional checks | **Checked**, linear perturbation and specified gauges; no nonlinear or near-source control |
| §5 | Full source reading | **Source-derived** proposals; **Not independently verified** observer implementation, multi-universe interpretation and nonlinear algebra |

Reproducible core checks use

```wolfram
lap[f_, d_] := (1-u^2) D[f,{u,2}] - d u D[f,u];
(* Insert a tabulated G0 or G1 from Appendix B. *)
FullSimplify[lap[G0,d]+1, -1<u<1]
FullSimplify[lap[G1,d]+d G1+(d+1)u, -1<u<1]
(* The normalized north-pole flux must be 1. *)
Limit[-(1-u^2)^(d/2) D[G1,u], u->1,
  Direction->"FromBelow"] VolSphere[d-1]/VolSphere[d]
```

Here `VolSphere[d_] := 2 Pi^((d+1)/2)/Gamma[(d+1)/2]`. The xAct check expands the two explicit derivative expressions before substituting $R_{ij}=(d-1)q_{ij}$. An initial substitution before canonicalization left Ricci terms unreduced; applying the curvature rule afterwards produced zero residuals. An initial mode check hit Mathematica's extra-precision warning and an invalid destructured `Table` iterator; a rerun with 65-digit numeric parameters and an explicit `Map` resolved both. The final mode and boost runs returned no such warnings.

**Verified:** the scoped identities and finite checks in the ledger, including all tabulated scalar Green functions. **Assumptions:** repaired cosmological convention, unit dS radius, $\tau=0$, real orthonormal harmonics, leading $\kappa$, free massive scalar, the stated Gaussian gravitational vacuum, and low spatial momentum for the heavy-mass diagnostic. **Not verified:** complete action-to-constraint quantization, a physical inner product/domain for the formal pair, unsmeared uniform large-mass convergence, higher-order constraints, arbitrary-slice dressing, or a causal/regional gluing theorem.

PDF text extraction reported `Syntax Warning: Mismatch between font type and embedded font file`. TeX and rendered PDF pages 4, 15, 16 and 23 (printed pp. 3, 14, 15, 22) were used to confirm the constraint convention, coordinate transformation, factor-of-two statement and the closed Green functions. Source reading, rendered confirmation and machine checks are distinguished above. Both PDF and source archive were retrieved successfully; no retrieval or computation-service blocker remains.
