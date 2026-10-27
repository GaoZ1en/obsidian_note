---
paper id: 2610.21830v1
title: Thermodynamics of rotating black holes with constrained primary hair
authors:
  - Wentao Liu
  - Di Wu
  - Shao-Wen Wei
  - Yu-Xiao Liu
publication date: 2026-10-15T13:12:57
abstract: |-
  The paper selects an asymptotically flat subfamily of aligned null generalized-Proca solutions with an exact Killing horizon and surface gravity uniform through second order in rotation. Complete surface charges and entropy-charge integrability constrain the hair, yielding a logarithmic Hamiltonian entropy, a two-parameter first law and a coupling-sensitive Smarr relation at the retained order.
comments: "12 pages"
url: https://arxiv.org/abs/2610.21830v1
summary: "A checked example in which radial charge conservation and entropy integrability impose different conditions on a constrained null-vector solution space."
tags: []
---

# A two-parameter Hamiltonian entropy from constrained vector hair

**Correct under the following precise conditions:** the charge representative in Appendix C, fixed theory couplings, the specified null-vector solution family, and the expansion through $a^2$ for scalar state functions and through $a$ for angular momentum/potential. The supplied surface tensors reproduce the advertised radius-independent charges; the entropy curl, integrated entropy, fundamental relation and scale-corrected Smarr relation pass independent calculations. This does not establish exact finite-spin equilibrium, entropy on the unrestricted hair family, or a physical-process second law.

[Official paper](https://arxiv.org/abs/2610.21830v1). [[2026_10_16_overview]]

## How to read this paper

Although only 12 pages, the four appendices carry essential formula chains, so this note uses the dense-paper reconstruction format. For the CPS question, read IV A–B together with Appendix C first, then II B and Appendix D. Section III fixes the static normalization. IV C tests the resulting state function. Appendix A is a coordinate/reference calculation; Appendix B supplies the exterior domain. Section V's averaged-temperature proposal is future work.

| Full section tree | Purpose, input and later dependency |
|---|---|
| I Introduction | Separates exact solutions, equilibrium horizons and an integrable state space |
| II A Generalized Proca theory and exact rotating solutions | Action and aligned null Kerr–Schild family; input to all geometry |
| II B A rotating branch with an equilibrium outer horizon | Fixes angular hair and leading amplitude; leaves $u(R)$ for IV B |
| III A Exact static solution | Finite-hair background, temperature and curvature |
| III B Static thermodynamics | Complete energy variation, logarithmic entropy and its normalization |
| IV A Canonical surface charges | Radius conservation, $M=m$, $J=ma$, asymptotic generator |
| IV B Horizon integrability and entropy | Field-dependent normalized generator; curl selects $u$; exact geometric completion |
| IV C Fundamental relation and scaling | Entropy-radius inversion, thermodynamic potentials and coupling response |
| V Conclusion and discussion | Scope at second order; independent hair, stability, higher spin and second law left open |
| Appendix A Equivalent forms | Integrates the radial amplitude equation; Kerr-adapted coordinate transformation |
| Appendix B Horizon normality and exterior regularity | Exact normal and sufficient no-pole/nonextremal exterior bounds |
| Appendix C Surface charge on the null branch | Explicit $\Theta,Q$, amplitude expansion, cancellation of radius-dependent terms |
| Appendix D Independent second-order hair | Nonzero curl in the larger three-parameter space |

## Theory, coordinates and notation

Use signature $(-,+,+,+)$ and $G=c=\hbar=k_B=1$. The source action is

$$
I=\frac1{16\pi}\int d^4x\sqrt{-g}\left\{
G_2(X)+G_3(X)\nabla_\mu A^\mu+G_4(X)\mathcal R
+G_{4,X}\big[(\nabla\cdot A)^2-\nabla_\rho A^\sigma\nabla_\sigma A^\rho\big]\right\},
\qquad X=-\frac12A_\mu A^\mu.
$$

The general near-null coefficients are $G_2=O(X^2)$, $G_3=\alpha c_{3,1}X+O(X^2)$ and $G_4=1+\alpha c_{4,1}X+\alpha^2c_{4,2}X^2+O(X^3)$. The selected theory terminates at these orders with $G_2=0$, $c_{4,2}=-c_{4,1}^2/2$ and nonzero $c_{3,1},c_{4,1}$. Define

$$
k=\frac{4\alpha c_{4,1}^2}{c_{3,1}},\qquad
\gamma=\frac{\alpha c_{4,1}}{k^2},\qquad
\lambda=\gamma k^2=\alpha c_{4,1}.
$$

Here $[k]=L^2$, $[\gamma]=L^{-2}$. The auxiliary $\lambda$ in this note only shortens the surface tensors. Then $G_3=(4\lambda^2/k)X$, $G_4=1+\lambda X-\lambda^2X^2/2$. The source also embeds this sector in the regularized Lovelock–Proca tower (its (2)); that embedding is background motivation, not needed to infer a general Lovelock entropy here.

| Symbol | Meaning and scope |
|---|---|
| $\mathcal A(r,\theta)$ | Scalar amplitude of the aligned covector; distinct from $A_\mu$ |
| $\mathcal M(r,\theta)$ | Position-dependent Kerr–Schild mass function |
| $m=M$ | Mass integration constant and complete asymptotic Hamiltonian mass |
| $R$ | Geometric horizon radius; not the Ricci scalar $\mathcal R$ |
| $a$ | Rotation parameter; $a/R$ small |
| $b$ | Angularly constant horizon amplitude; later a function of $R,a$ |
| $u(R)$ | Initially free second-order amplitude on the selected two-parameter family |
| $y=\gamma R^2$ | Finite deformation variable; not expanded |
| $q_0=-R^3/k$ | Static amplitude inherited from the rotating equilibrium restriction |
| $\rho$ | Entropy-defined radius; differs from $R$ at order $a^2$ |
| $h_2$ | Independent second-order amplitude in Appendix D, not a metric perturbation |
| $h_{\mu\nu}=\delta g_{\mu\nu}$ | Metric variation in Appendix C; raised $h^{\mu\nu}=g^{\mu\alpha}g^{\nu\beta}h_{\alpha\beta}$, not $\delta g^{\mu\nu}$ |

Charges use ingoing coordinates $(v,r,\theta,\varphi)$, with $\varphi=-\widetilde\phi$ relative to the source's initial chart and $\epsilon_{vr\theta\varphi}=+\sqrt{-g}$. The asymptotic Kerr-adapted chart has $\partial_v=\partial_t$, $\partial_\varphi=\partial_\phi$. Keep these orientation signs when obtaining $\delta H_{\partial_\phi}=-\delta J$.

## II and Appendix A: integrate the amplitude before imposing equilibrium

Let $z=a\cos\theta$, $\Sigma=r^2+z^2$ and

$$
\mathcal F(r,z)=\int_r^\infty\frac{ds}{(s^2+z^2)^3}
=\frac{3}{8z^5}\arctan\frac zr-\frac{3r}{8z^4\Sigma}-\frac r{4z^2\Sigma^2},
\qquad \mathcal F(r,0)=\frac1{5r^5}.
$$

Both $\partial_r\mathcal F=-\Sigma^{-3}$ and the $z\to0$ limit were checked. The amplitude obeys

$$
\partial_r\mathcal A=\frac{kz^2}{\Sigma^3}\mathcal A^2,
\qquad
\mathcal A^{-1}=C(\theta)+kz^2\mathcal F(r,z),
\qquad
\mathcal M=m+\frac{\gamma k^2\mathcal A^2}{2r\Sigma}.
$$

The original angular data are $C=1/q(\theta)$. The source's auxiliary $\chi=8z^5\mathcal F$ transforms (7)–(8) into this form. These are exact background expressions; the complete nonlinear rotating field equations are imported from the cited solution construction, not rederived here.

The ingoing metric, in the standard azimuthal orientation used for charges, can be written

$$
ds^2=-H(dv-a\sin^2\theta\,d\varphi)^2
+2(dv-a\sin^2\theta\,d\varphi)(dr-a\sin^2\theta\,d\varphi)
+\Sigma(d\theta^2+\sin^2\theta\,d\varphi^2),
\quad H=1-\frac{2r\mathcal M}{\Sigma},
$$

with $A=(\mathcal A/\Sigma)(dv-a\sin^2\theta\,d\varphi)$. Its nullness is exact. With $\Delta_K=r^2-2mr+a^2$ and

$$
dv=dt+\frac{r^2+a^2}{\Delta_K}dr,\qquad
d\widetilde\phi=-d\phi-\frac a{\Delta_K}dr,
\qquad \ell=dt-a\sin^2\theta\,d\phi+\frac\Sigma{\Delta_K}dr,
$$

one obtains

$$
ds^2=ds^2_{\rm Kerr}+\frac{\gamma k^2\mathcal A^2}{\Sigma^2}\ell^2,
\qquad A=\frac{\mathcal A}{\Sigma}\ell.
$$

For finite angular amplitude at infinity the correction is $O(r^{-4})$. $\Delta_K=0$ is a chart singularity, not the physical horizon condition. Angular dependence in $\mathcal M$ generally breaks circularity.

## II B and Appendix B: Killing horizon first, isothermality second

A stationary axisymmetric null surface $r=H_0(\theta)$ satisfies $(H_0')^2+\Delta(H_0,\theta)=0$, with $\Delta=r^2+a^2-2r\mathcal M$. A constant-radius horizon is obtained by prescribing

$$
\mathcal A(R,\theta)=b\sqrt{\Sigma_H},\quad \Sigma_H=R^2+a^2\cos^2\theta,
\quad R^2-2mR+a^2-\gamma k^2b^2=0.
$$

Eliminating $C(\theta)$ gives

$$
\mathcal A(r,\theta)=\left\{\frac1{b\sqrt{\Sigma_H}}
-kz^2[\mathcal F(R,z)-\mathcal F(r,z)]\right\}^{-1}.
$$

The generator $\chi_H=\partial_v+\Omega_H\partial_\varphi$, $\Omega_H=a/(R^2+a^2)$, satisfies exactly

$$
\chi_H^2\big|_R=0,\qquad
(\chi_H)_\mu\big|_R=\frac{\Sigma_H}{R^2+a^2}\partial_\mu r.
$$

Both identities were checked from the full horizon metric. Normality plus stationarity establishes the Killing-horizon statement; it does not impose a constant surface gravity by itself in this matter setting.

The source's surface gravity is

$$
\kappa_H(\theta)=\frac{R-m-\gamma k^2b^2L_H(\theta)}{R^2+a^2},\qquad
L_H=\frac{kbz^2}{\Sigma_H^{5/2}}-\frac R{\Sigma_H}.
$$

Writing $b=b_0+O(a^2)$ yields $L_H=-R^{-1}+a^2\cos^2\theta\,R^{-3}(1+kb_0/R^2)+O(a^4)$. Nonzero hair and $\gamma\ne0$ therefore select $b_0=-R^2/k$. The next even coefficient remains free:

$$
b=-\frac{R^2}{k}\left(1+u(R)\frac{a^2}{R^2}\right)+O(a^4).
$$

The resulting arbitrary-$u$ expansions, independently reproduced, are

$$
M=\frac R2(1-y)+a^2\left(\frac1{2R}-\gamma R u\right)+O(a^4),
\quad
T_H=\frac{1+3y}{4\pi R}+\frac{a^2}{4\pi R^3}[-(2+3y)+6yu]+O(a^4).
$$

The horizon is exactly Killing for the prescribed angular data; only its isothermality is controlled to the displayed order.

## III: exact static member and entropy normalization

At $a=0$,

$$
A=\frac{q_0}{r^2}dv,\quad q_0=-\frac{R^3}{k},\quad
ds^2=-f(r)dv^2+2dv\,dr+r^2d\Omega_2^2,
$$

$$
f=1-\frac{2M_0}{r}-\frac{\gamma R^6}{r^4},\quad
M_0=\frac R2(1-y),\quad
T_0=\frac{1+3y}{4\pi R},\quad
\mathcal R=\frac{6\gamma R^6}{r^6}.
$$

The exterior diagonalization $dv=d\tau+dr/f$ gives a radial component of $A$; it is a coordinate change, not a Maxwell gauge transformation. The null vector is smooth at the future horizon in the ingoing chart. The constraint $q_0=-R^3/k$ comes from the rotating branch, not spherical symmetry alone.

**Checked:** xCoba gives $\mathcal R=6\lambda q^2/r^6$ for the more general static $f=1-2m/r-\lambda q^2/r^4$, $A=q,dv/r^2$. A reduced static action was varied with independent metric functions $f(r),h(r)$ in $ds^2=-f,dv^2+2h,dv,dr+r^2d\Omega^2$ and independent covector components $p(r),s(r)$. All four Euler–Lagrange residuals vanish after imposing $h=1$, $p=q/r^2$, $s=0$ and the displayed $f$. The null condition was imposed **after** variation. This tests the reduced static equations, not all nonlinear rotating equations.

The complete time-translation surface charge is $dM_0$, half from $\delta Q$ and half from $-\partial_v\cdot\Theta$. Thus

$$
dS_0=\frac{dM_0}{T_0}=\frac{2\pi R(1-3y)}{1+3y}dR,
\qquad
S_0=-\pi R^2+\frac{2\pi}{3\gamma}\ln(1+3\gamma R^2).
$$

The additive constant is fixed by the formal vanishing-size limit. In the stated domain $-0.1\le y<0$, $T_0>0$, $S_0'>0$, and $S_0>0$ by integration from zero. $\gamma\to0$ gives $\pi R^2$. The entropy is not obtained by assuming the area law.

## IV A and Appendix C: retain the complete surface variation

For fixed $\xi$, $k_\xi=\delta Q_\xi-\iota_\xi\Theta$. Spacetime closure on a linearized solution is distinct from closedness in parameter space. The former permits comparing homologous extraction spheres in a regular exterior; the latter is needed for a state function.

On the null family, $X=0=\delta X$, $G_4=1$, $G_{4,X}=\lambda$ and $G_3=0$. The $G_3$ terms produce no surface variation on these tangent vectors: $G_{3,X}\delta X\nabla\cdot A$ has no derivatives of variations and $\delta G_3=0$. The $\lambda$ terms **do not** vanish.

The source's potential is $\Theta_{abc}=(16\pi)^{-1}\epsilon_{dabc}\vartheta^d$, where

$$
\begin{aligned}
\vartheta^\rho={}&\nabla_\nu h^{\rho\nu}-\nabla^\rho h
+\lambda A^\alpha(g^{\nu\rho}\nabla^\sigma A_\alpha-g^{\sigma\nu}\nabla^\rho A_\alpha)h_{\sigma\nu}\\
&+\lambda(\nabla\cdot A)(2g^{\rho\sigma}\delta A_\sigma-2g^{\rho\sigma}A^\nu h_{\nu\sigma}+A^\rho h)\\
&-2\lambda\left[(\nabla^\sigma A^\rho)\delta A_\sigma
-A^\nu\nabla^{(\sigma}A^{\rho)}h_{\nu\sigma}
+\tfrac12A^\rho\nabla^\nu A^\sigma h_{\sigma\nu}\right].
\end{aligned}
$$

Its Noether form is $(Q_\xi)_{ab}=-(16\pi)^{-1}\epsilon_{ab\mu\nu}P_\xi^{\mu\nu}$, with

$$
\begin{aligned}
P_\xi^{\mu\nu}={}&\nabla^\mu\xi^\nu+2\lambda A^\alpha\nabla^\mu A_\alpha\xi^\nu
-2\lambda(\nabla\cdot A)A^\mu\xi^\nu\\
&-\frac\lambda2F^{\mu\nu}(A\cdot\xi)
+\lambda A^\mu(\nabla^\nu A^\alpha+\nabla^\alpha A^\nu)\xi_\alpha,
\qquad F_{\mu\nu}=2\nabla_{[\mu}A_{\nu]}.
\end{aligned}
$$

Antisymmetrization of $P^{\mu\nu}$ is effected by $\epsilon$. These are the supplied boundary representatives; their evaluation was independently reproduced with xCoba. Their complete unrestricted action-level variational derivation is not separately certified by that evaluation.

The amplitude needed for the computation is

$$
A_v=\frac{q_0}{r^2}+a^2[U(r)+V(r)\cos^2\theta]+O(a^4),\qquad
A_\varphi=-\frac{aq_0}{r^2}\sin^2\theta+O(a^3),
$$

$$
U=-\frac{Ru}{kr^2},\qquad
V=-\frac{3R}{10kr^2}-\frac{q_0}{r^4}-\frac{kq_0^2}{5r^7}.
$$

This expansion was also obtained directly from the exact horizon-prescribed amplitude, rather than assumed independently. In the ingoing chart $\sqrt{-g}=\Sigma\sin\theta$. xCoba evaluation of the general $H(r,\theta)$ and aligned amplitude first gives the components $P^{vr}-P^{rv}$ and $\vartheta^r$. Substituting the above fields and integrating over $\theta,\varphi$ at **fixed coordinate radius** gives

$$
\oint Q_{\partial_t}=\frac m2-\frac{\gamma k^3q_0^3a^2}{6r^8}+O(a^4),
\qquad \oint Q_{\partial_\phi}=-ma+O(a^3).
$$

For $\xi=\partial_t+\Omega\partial_\phi$, with $\Omega=O(a)$ held fixed during the variation,

$$
\begin{aligned}
\oint\delta Q_\xi&=\frac{\delta m}{2}-\Omega\delta(ma)-\delta\left(\frac{\gamma k^3q_0^3a^2}{6r^8}\right),\\
-\oint\iota_\xi\Theta&=\frac{\delta m}{2}+\delta\left(\frac{\gamma k^3q_0^3a^2}{6r^8}\right).
\end{aligned}
$$

Both integrals have independently zero residuals against Appendix C for arbitrary $u(R)$ and its derivative. The cancellation yields $\delta H_\xi=\delta m-\Omega\delta(ma)$, hence $M=m$, $J=ma+O(a^3)$. The absence of a Maxwell gauge symmetry in this derivative-coupled Proca theory prevents interpreting $A\cdot\chi_H$ as an electromagnetic chemical potential. It does not rule out another boundary-variation problem with independent hair.

Asymptotic $g_{tt}\to-1$ and a nonrotating frame fix $N=1$, $\Omega_{\rm int}=0$ in a candidate mass generator $N(\partial_t+\Omega_{\rm int}\partial_\phi)$. No solution-dependent time normalization is needed.

## IV B: field-dependent generator and the integrability constraint

For $\eta_H=\chi_H/T_H$, variations must subtract the variation of the symmetry label:

$$
k_{\eta_H}=\delta Q_{\eta_H}-Q_{\delta\eta_H}-\iota_{\eta_H}\Theta,
\qquad
\omega\equiv\oint k_{\eta_H}=\frac{dM-\Omega_HdJ}{T_H}.
$$

No $dT_H$ or $d\Omega_H$ term enters this surface variation. Their parameter dependence **does** enter $d\omega$. This distinction is essential. At fixed $\gamma,k$ and with $(R,a)$ independent,

$$
\partial_a\omega_R-\partial_R\omega_a
=\frac{16\pi\gamma Ra}{(1+3y)^2}[(3y-1)u-1]+O(a^3).
$$

Direct differentiation reproduces this expression, including cancellation of $u'(R)$. For nonzero deformation and the nonextremal domain it selects $u=(3y-1)^{-1}$. At $\gamma=0$ the displayed prefactor vanishes; the same selection is not forced by this curl in that degenerate limit.

The selected coefficients are

$$
\begin{aligned}
M_0&=\tfrac R2(1-y),& M_2&=\frac{1-y}{2R(1-3y)},\\
T_0&=\frac{1+3y}{4\pi R},& T_2&=-\frac{(1+3y)(2-3y)}{4\pi R^3(1-3y)},\\
J&=aM_0+O(a^3),&\Omega_H&=a/R^2+O(a^3).
\end{aligned}
$$

Integrating $\omega$ gives

$$
S_H=-\pi R^2+\frac{2\pi}{3\gamma}\ln(1+3\gamma R^2)
+\pi a^2\frac{1-y}{1-3y}+O(a^4).
$$

To see both directions rather than only one, write $S_H=S_0+a^2S_2$. The spin equation fixes $S_2=(2M_2-M_0/R^2)/(2T_0)$; the remaining radial consistency equation is

$$
M_2'-\frac{M_0'}{R^2}=T_0S_2'+T_2S_0'.
$$

Both residuals vanish. Errors are $O(a^4)dR+O(a^3)da$, rather than an exact first law at arbitrary spin.

The nonzero horizon contraction $A\cdot\chi_H=b\sqrt{\Sigma_H}/(R^2+a^2)$ obstructs a smooth stationary-vector extension to a bifurcation surface. The charge can instead be evaluated on regular exterior spheres and continued to a future-horizon section with the full potential retained. The source's entropy is this Lorentzian Hamiltonian state function. It is not independently derived from a smooth Euclidean saddle: already the static continued vector has nonzero holonomy around a shrinking thermal circle.

## Exact representative and the exterior bound

A convenient completion beyond the thermodynamic order is

$$
C_b=1+\frac{a^2}{R^2(1-3y)},\qquad b=-\frac{R^2}{kC_b},\qquad
U_b=\frac{C_b}{R^2\sqrt{\Sigma_H}}+z^2[\mathcal F(R,z)-\mathcal F(r,z)],
$$

$$
ds^2=ds^2_{\rm Kerr}+\frac\gamma{\Sigma^2U_b^2}\ell^2,
\qquad A=-\frac1{k\Sigma U_b}\ell.
$$

It has the selected expansion, but higher even coefficients of $b$ are not uniquely fixed. In the sufficient domain $k<0$, $\gamma<0$, $0<-\gamma R^2\le0.1$, $|a|/R\le0.1$, one has $C_b\ge1$, $U_b>0$ for $r\ge R$, and $0<\mathcal A\le R^3\sqrt{1.01}/|k|$.

The Appendix B bound can be reconstructed directly. Set $s=-\gamma R^2$. From the horizon relation, $2m\le R(1+0.01+s)$. Also $\mathcal A'=kz^2\mathcal A^2/\Sigma^3\le0$. Bounding the two negative derivative terms in $\Delta'=2r-2m+|\gamma|k^2\partial_r(\mathcal A^2/\Sigma)$ using $r\ge R$, $\Sigma\ge r^2$ and the amplitude bound yields

$$
\frac{\Delta'}R\ge0.99-s[1+2(1.01)+0.02(1.01)^{3/2}]>0.68.
$$

The endpoint inequality was checked exactly. Thus there are no further radial zeros of $\Delta$ or amplitude poles outside $R$. This is a sufficient exterior domain, not a maximal domain and not a bound on the neglected $a^4$ thermodynamic error. Angular variation of the exact $\kappa_H$ can return at fourth order.

## IV C: fundamental relation and the coupling scale

Define $\rho$ by $S_H=S_0(\rho;\gamma)$. Since $S_0'>0$,

$$
\rho=R+a^2\frac{S_2(R)}{S_0'(R)}+O(a^4),\qquad
M(S_H,J;\gamma)=\frac\rho2(1-\gamma\rho^2)
+\frac{J^2}{\rho^3(1-\gamma\rho^2)}+O(J^4).
$$

The useful cancellation is $M_2-T_0S_2=M_0/(2R^2)$. Differentiation at fixed coupling gives $T=(M_0'(\rho)+J^2c'(\rho))/S_0'(\rho)$ and $\Omega=2Jc(\rho)$ with $c=[\rho^3(1-\gamma\rho^2)]^{-1}$. Substitution back to $(R,a)$ reproduces $T_H$ through $a^2$ and $\Omega_H$ through $a$.

Under $(R,a,\gamma)\mapsto(\ell R,\ell a,\ell^{-2}\gamma)$, the computed state functions have weights $(S_H,J,M)=(2,2,1)$. With $\Pi_\gamma=(\partial M/\partial\gamma)_{S_H,J}$,

$$
M=2T_HS_H+2\Omega_HJ-2\gamma\Pi_\gamma+O(a^4),
$$

$$
\Pi_\gamma=\Pi_0\left[1-\frac{2-3y}{1-3y}\frac{a^2}{R^2}\right]+O(a^4),\quad
\Pi_0=\frac{(1+3y)\ln(1+3y)-3y-3y^2}{6\gamma^2R}.
$$

Independent Jacobian/derivative checks reproduce this response and the Smarr equation. This is a scaling identity across theories. An extended Hamiltonian first law varying the action couplings needs additional bulk terms; this paper's physical first law keeps $\gamma,k$ fixed. The formal Kerr limit gives $S_H=\pi(R^2+a^2)$ and $M^2=S_H/(4\pi)+\pi J^2/S_H+O(J^4)$.

## Appendix D and V: the larger hair space is a different problem

Allow $b=-R^2/k+a^2h_2+O(a^4)$ with $(R,a,h_2)$ independent. Then

$$
M_2=\frac1{2R}+\gamma kRh_2,\qquad
T_2=-\frac{2+3y}{4\pi R^3}-\frac{3\gamma kh_2}{2\pi R}.
$$

The same normalized charge obeys

$$
\partial_{h_2}\omega_R-\partial_R\omega_{h_2}
=\frac{8\pi\gamma kRa^2(1-3y)}{(1+3y)^2}+O(a^4),
$$

which was independently reproduced and is nonzero for rotating members of the stated domain. Its pullback to $h_2=1/[k(1-3y)]$ is integrable at the retained order. This does not prove that every possible boundary prescription or additional hair work term must fail.

The conclusion proposes an area-averaged surface gravity at higher spin, but provides no integrability result or physical interpretation for that proposal. Independent hair thermodynamics, a physical-process second law, dynamical stability and a smooth Euclidean description remain separate questions.

## Equation ledger and reuse in CPS work

| Chain | Reusable object | Verified extent |
|---|---|---|
| (10)–(19), A1–A5 | Integrated radial amplitude and horizon-prescribed angular data | Integral/limit, amplitude expansion, horizon normality |
| (21)–(24) | Isothermal second-order restriction | Coefficient expansion at finite $y$ |
| C1–C7 → (36)–(38) | Full $k_\xi$, including nonminimal vector terms | Independent xCoba component evaluation and sphere integrations through retained order |
| (41)–(46) | Field-dependent normalized generator and its curl | Fixed-label subtraction and explicit two-parameter derivative |
| (47)–(50) | Logarithmic entropy and two-direction consistency | All coefficient residuals zero |
| (56)–(64) | Fundamental relation, potentials, scaling | Radius inversion, derivatives and Smarr residuals zero |
| D1–D2 | Obstruction on the larger space | Three-parameter curl reproduced |

The direct application to regional/CPS work is a controlled example of two different closures: $d_{\rm spacetime}k_\xi=0$ and $d_{\rm solutions}\omega=0$. An exact symmetry and conserved extraction-sphere integral do not supply the latter. Also, $X=0$ on a solution does not authorize dropping $G_{4,X}$ from the surface tensors, and a solution-dependent generator must be varied with the $Q_{\delta\eta}$ subtraction.

For future use, carry the restricted tangent space and boundary representative along with the entropy. The paper does not derive $u(R)$ from an independently prescribed regional boundary condition, prove uniqueness under boundary-potential improvements, or supply a gluing law. The logarithmic result is a Hamiltonian entropy of this family and prescription.

## Verification ledger and limits

**Checked:** Mathematica reproduces ten geometry/entropy coefficient residuals, seven further fundamental-relation/Smarr/hair-curl/limit residuals, the exterior numerical-bound inequality, the horizon normal/null identities and the amplitude expansion. xCoba independently constructs the connection and evaluates the supplied $Q$ and $\Theta$ tensors for a generic ingoing aligned metric before series substitution; both integrated residuals against C7 vanish for arbitrary $u(R)$. Four reduced static Euler–Lagrange equations and the curvature expression also pass.

**Source-derived:** original exact rotating solution and its complete nonlinear field equations; the unrestricted action-level derivation of the Appendix C boundary representative; thermodynamic interpretation of the future-horizon charge. The reconstruction includes all sections and Appendices A–D.

**Failed:** none of the executed checks contradicts the specified formulas at the retained order.

**Blocked:** no retrieval or computation-service blocker. No unavailable external calculation is silently promoted to verification.

**Assumptions:** fixed $\gamma,k$, null branch and tangent variations $\delta X=0$, stated orientation and asymptotic frame, smooth regular exterior, and $|a|/R\ll1$ with finite $y$. Scalar errors $O(a^4)$ correspond to one-form errors $O(a^4)dR+O(a^3)da$.

**Not verified:** full all-spin nonlinear rotating equations, a finite-spin isothermal family, general off-family variational representatives, boundary-improvement uniqueness, extremal continuation, extended-coupling Hamiltonian work law, global Euclidean regularity, dynamical stability or any second-law statement. The source itself excludes several of these from its result.

Official PDF and TeX were available. The PDF font-type warning was handled by TeX comparison and visual inspection of rendered pp. 9–10, including C1–C7 and D1–D2. Temporary inputs/outputs are outside the vault at `/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/arxiv-daily-20261016-jmdo0ry0/2610.21830v1/` (`checks.wl`, `checks.json`). Frontmatter, same-day link, equations, whitespace, EOF and Pandoc parsing are checked before moving to the next paper.
