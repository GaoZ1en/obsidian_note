---
paper id: 2610.13284v1
title: The Casimir energy in Maxwell-Chern-Simons electrodynamics with various perfect electric or magnetic boundary condition
  combinations
authors:
- Philipe De Fabritiis
- Wellisson B. De Lima
- David Dudal
publication date: '2026-10-09'
abstract: We investigate the Casimir effect between two parallel wires in $(2+1)D$ Maxwell-Chern-Simons (MCS) electrodynamics
  under different boundary conditions and separated by a distance $L$. Using a functional approach in which the boundary constraints
  are implemented by auxiliary fields localized on the wires, we integrate out the gauge field and derive an effective boundary
  theory whose functional determinant allows us to compute the Casimir energy. We consider perfect electric conductor (PEC),
  perfect magnetic conductor (PMC), and infinitely permeable (PMC2) boundary conditions. For two PEC wires, we recover the
  known MCS result and show that it coincides with the result obtained in the Abelian limit of the Curci-Ferrari (CF) model,
  implying that the Casimir effect in this case probes the photon mass $\mu$ but not its origin. The same energy is obtained
  for two PMC2 wires. In sharp contrast, the Casimir energy vanishes identically for the covariant PMC condition in MCS theory,
  both for PMC-PMC and PEC-PMC. Since this cancellation does not occur in the CF model, it could provide a signature of the
  topological origin of the photon mass in $(2+1)D$. Finally, the PEC-PMC2 case yields a non-vanishing Casimir force and reproduces
  the known result for a perfectly conducting wire facing an infinitely permeable one. Interestingly enough, we show that
  for PEC-PMC2, the Casimir force in the MCS theory is smaller than the one of the CF model for any $L,\mu >0$. Our results
  thus show that, depending on the boundary conditions, the Casimir effect could probe not only the photon mass but also reveal
  signatures of its origin.
comments: 20 pages
url: https://arxiv.org/abs/2610.13284v1
summary: Explicit interface Gaussian kernels distinguish topological and parity-even masses through PMC cancellation and a
  checked mixed-boundary force inequality, with contact and massless-limit assumptions kept explicit.
tags: []
---

# The Casimir energy in Maxwell-Chern-Simons electrodynamics with various perfect electric or magnetic boundary condition combinations

## Result and boundary-theory use

The useful object is the Gaussian action for auxiliary fields imposing gauge-invariant constraints on two wires. Its normalized determinant distinguishes a topological photon mass from the parity-even massive propagator even when the bulk dispersion agrees. For $\mu>0$, Maxwell–Chern–Simons (MCS) gives the same attractive interaction for PEC–PEC and PMC2–PMC2, zero interaction for covariant PMC–PMC and PEC–PMC, and a repulsive interaction for PEC–PMC2. The last force is strictly smaller than its Abelian Curci–Ferrari (CF) counterpart at fixed $L,\mu>0$.

These determinant and force statements are independently checked below **within the paper's ideal-interface/contact-term prescription**. The wires are constraints embedded in all of $\mathbb R^3$, not the ends of a regional spacetime. Auxiliary boundary multipliers are not automatically physical edge modes. This distinction is essential if importing the calculation into action/CPS-first sewing. Reason codes: `T1-boundary; T2-model; T2-spectral`.

## Complete source map and reading guide

Sources: [abstract](https://arxiv.org/abs/2610.13284v1), [PDF](https://arxiv.org/pdf/2610.13284v1), [TeX](https://arxiv.org/src/2610.13284v1). The complete 20-page source and both appendices were read. PDF pages 4, 6, 10–12, 15–16 and 18 were rendered for boundary definitions, kernels, mixed determinants, mode constraints and inequality formulas. The text extractor emitted a font-type warning; TeX and rendered pages resolve the formulas.

| Section tree | Purpose and dependency |
|---|---|
| I Introduction | Material-interface viewpoint and distinction from a Symanzik/end-of-space construction. |
| II Theoretical setup; A MCS theory; B Geometry and boundary conditions | Euclidean action, propagator conventions and the three distinct constraints. Essential. |
| III Effective boundary action; A PEC; B PMC; C PMC2 | Integrates out the bulk field and contracts its propagator with constraint sources. Essential reusable calculation. |
| IV Casimir energy; A PEC; B PMC; C PMC2 | Normalized determinants, polylogarithms, zero modes and exact cancellation. |
| V Intermezzo | Uses bulk mode counting as intuition, while separating number of polarizations from the sign/magnitude of the force. |
| VI Mixed boundary conditions; A PEC–PMC; B PEC–PMC2 | Three-by-three and two-by-two kernels; a complex logarithm reduced to a real angular integral. |
| VII Conclusion | Table I and proposed extensions; no general reflection-positivity theorem. |
| Appendix A Counting degrees of freedom; 1 PEC; 2 PMC; 3 PMC2; 4 Mixed 1; 5 Mixed 2 | Minkowski first-order constraints, explicit amplitudes and generic mixed quantization condition. |
| Appendix B Force inequality | Pointwise integrand comparison and Maxwell upper bound. |

Read II–III and VI.B for the boundary-kernel method; IV.B isolates the distinctive MCS cancellation. Appendix A is a technical check with exceptional-momentum caveats, and Appendix B is needed for the strict inequality. The literature/experimental discussion in I and VII is background, not an independently verified material model.

## Euclidean theory and imposed interface data — II

The coordinates are $(t,x,y)$, the wires sit at $y_\pm=\pm L/2$, and their common normal convention is $n=(0,0,1)$. Greek indices run over three coordinates, $i,j$ over $(t,x)$. Set $\epsilon_{txy}=+1$, use Euclidean $\delta_{\mu\nu}$ and $\widetilde F_\mu=i\epsilon_{\mu\nu\rho}F_{\nu\rho}/2$. The action is
$$
S_0=\int d^3x\left[\frac14F_{\mu\nu}F_{\mu\nu}-\frac{i\mu}2\epsilon_{\mu\nu\rho}A_\mu\partial_\nu A_\rho
+ih\partial\cdot A+\frac\xi2h^2\right].
$$
Here $\mu>0$ is the mass scale; $\xi$ is the bulk gauge parameter and $h$ the Nakanishi–Lautrup field. Ghosts decouple in the unbounded Abelian bulk used here. Integrating $h$ gives $(\partial\cdot A)^2/(2\xi)$. The dual field satisfies a massive wave equation and carries one physical MCS polarization; this does not mean each interface condition admits it.

The boundary conditions are different physical assumptions:

| Name | Constraint on a wire | Multiplier |
|---|---|---|
| PEC | $\widetilde F\cdot n=0$, equivalently $E_x=0$ | scalar $b$ |
| PMC | $F_{\mu\nu}n_\nu=0$, equivalently $E_y=B=0$ | $b_t,b_x$ |
| PMC2 | $F_{x\nu}n_\nu=0$, equivalently $B=0$ | $b_x$ |

Thus PMC2 is infinitely permeable in the terminology of this paper; it is not the full covariant PMC constraint. Write
$$
S_{\rm BC}=\frac12\int d^3x\,H_{\mu\nu}F_{\mu\nu},\qquad
H_{\mu\nu}=\sum_{\gamma=\pm}\delta(y-y_\gamma)h^\gamma_{\mu\nu},
$$
with $h^\gamma_{\mu\nu}=i\epsilon_{\mu\nu\rho}n_\rho b^\gamma$ for PEC and $h^\gamma_{\mu\nu}=b^\gamma_\mu n_\nu-b^\gamma_\nu n_\mu$ for PMC, $b_y=0$. PMC2 follows by setting $b_t=0$ before integrating the remaining boundary variable. Multiplier contours enforcing delta constraints are implicit in the source's Gaussian prescription; a real Euclidean Lagrange multiplier with no appropriate contour does not by itself define a convergent delta-functional representation.

## Bulk inverse and effective boundary Gaussian — III

Use $k=(k_t,k_x,k_y)$, $\mathbf k=(k_t,k_x)$, $p=|\mathbf k|$, $\omega=\sqrt{p^2+\mu^2}$. With $C_{\mu\nu}=\epsilon_{\mu\rho\nu}k_\rho$,
$$
K_{\mu\nu}=k^2\delta_{\mu\nu}-(1-\xi^{-1})k_\mu k_\nu+\mu C_{\mu\nu},
$$
$$
D^{(\zeta)}_{\mu\nu}=\frac1{k^2+\mu^2}\left[\delta_{\mu\nu}+left(\xi-1+\frac{\xi\mu^2}{k^2}\right)\frac{k_\mu k_\nu}{k^2}-\zeta\frac\mu{k^2}C_{\mu\nu}\right].
$$
$D^{(1)}=K^{-1}$. The label $\zeta=0$ deletes the parity-odd propagator term to compare the transverse contractions with Abelian CF. It is not the inverse of the same MCS operator, nor a physical continuous limit changing the origin of its mass. The source explicitly uses it as a bookkeeping device.

The boundary source is $v_\nu=2ik_\mu H_{\mu\nu}$ and is transverse by antisymmetry. Completing the square in $S=\frac12\int(AKA+vA)$ gives
$$
S_b=-\frac18\int vDv=-\frac12\int\frac{d^3k}{(2\pi)^3}
[k_\mu H_{\mu\rho}(k)D_{\rho\sigma}(k)k_\nu H_{\nu\sigma}(-k)].
$$
The bulk determinant has no wire separation dependence after this shift. Every longitudinal $\xi$ term drops out of the boundary contractions. For PEC the odd term also drops out, leaving $p^2/(k^2+\mu^2)$. For PMC,
$$
Y_{ij}=\frac{k_i k_j+k_y^2\delta_{ij}+\zeta\mu k_y\epsilon_{ij}}{k^2+\mu^2},
\qquad\epsilon_{ij}=\epsilon_{yij},\quad\epsilon_{tx}=+1.
$$
The inverse and all three contractions (PEC, PMC and mixed) were checked componentwise in xAct/Mathematica with arbitrary $k,\xi,\mu$.

For $d=y_\gamma-y_\lambda$ the required transforms are
$$
\int\frac{dk_y}{2\pi}\frac{e^{ik_yd}}{k_y^2+\omega^2}=\frac{e^{-\omega|d|}}{2\omega},\quad
\int\frac{dk_y}{2\pi}\frac{k_y e^{ik_yd}}{k_y^2+\omega^2}=\frac i2\operatorname{sgn}(d)e^{-\omega|d|},
$$
$$
\int\frac{dk_y}{2\pi}\frac{k_y^2 e^{ik_yd}}{k_y^2+\omega^2}=\delta(d)-\frac\omega2e^{-\omega|d|}.
$$
The latter two follow by differentiating the first, retaining its distributional contact term. The paper discards the same-wire $\delta(0)$ in dimensional regularization. This prescription is an input to its finite self-blocks; arbitrary changes in self-blocks before taking a determinant can affect the interaction. No regulator-independent material-interface limit is demonstrated here.

Set $\Omega_{ij}=k_i k_j/p^2$, $\Theta=1-\Omega$. After the contact prescription,
$$
\begin{aligned}
\mathbb K^{\gamma\lambda}_{\rm PEC}&=\frac{p^2}{2\omega}e^{-\omega|d|},\\
\mathbb K^{\gamma\lambda}_{{\rm PMC},ij}&=\frac\omega2\left[\Theta_{ij}+\frac{\mu^2}{\omega^2}\Omega_{ij}-i\zeta\frac\mu\omega\epsilon_{ij}\operatorname{sgn}(d)\right]e^{-\omega|d|},\\
\mathbb K^{\gamma\lambda}_{\rm PMC2}&=\frac{k_t^2+\mu^2}{2\omega}e^{-\omega|d|}.
\end{aligned}
$$
These kernels are different, even when their normalized determinants agree. The $p=0$ projector notation is interpreted by a limiting direction; it does not define an extra propagating polarization.

## Normalized determinant and identical wires — IV

The observable is the interaction energy **per unit wire length**, not energy per three-volume:
$$
\mathcal E(L)=\frac12\int\frac{d^2\mathbf k}{(2\pi)^2}
\log\frac{\det\mathbb K(L,\mathbf k)}{\det\mathbb K(\infty,\mathbf k)},\qquad f=-\partial_L\mathcal E.
$$
The ratio removes bulk and isolated-wire self energies. Calling it simply “subtracting free space” should not conceal those isolated-wire normalizations.

Let $u=e^{-\omega L}$. PEC gives $\det\mathbb K=p^4(1-u^2)/(4\omega^2)$; PMC2 gives $(k_t^2+\mu^2)^2(1-u^2)/(4\omega^2)$. Both yield
$$
\mathcal E_- =\frac1{4\pi}\int_\mu^\infty d\omega\,\omega\log(1-e^{-2L\omega})
=-\frac{2L\mu\operatorname{Li}_2(e^{-2L\mu})+\operatorname{Li}_3(e^{-2L\mu})}{16\pi L^2}.
$$
The force is negative:
$$
f_-=-\frac1{2\pi}\int_\mu^\infty d\omega\,\frac{\omega^2}{e^{2L\omega}-1}
=\frac{2L^2\mu^2\log(1-e^{-2L\mu})-2L\mu\operatorname{Li}_2(e^{-2L\mu})-\operatorname{Li}_3(e^{-2L\mu})}{8\pi L^3}.
$$
Differentiating the polylogarithmic expression reproduces the force. At $\mu=0$, $\mathcal E_-=-\zeta(3)/(16\pi L^2)$.

For PMC write
$$
A=D=\frac\omega2(\Theta+\mu^2\Omega/\omega^2),\quad
B=(A-i\zeta\mu\epsilon/2)u,\quad C=(A+i\zeta\mu\epsilon/2)u.
$$
For $\mu\ne0$, the Schur complement and determinant are
$$
A-BD^{-1}C=[1-(1-\zeta^2)u^2]D,\qquad
\det\mathbb K_{\rm PMC}=\frac{\mu^4}{16}[1-(1-\zeta^2)u^2]^2.
$$
All entries of the complement identity and the determinant residual simplify to zero. At $\zeta=1$ the ratio is exactly one, so $\mathcal E=0$; at $\zeta=0$ it gives $2\mathcal E_-$. The cancellation uses the parity-odd cross-wire blocks as well as the even ones.

The derivation inverted a block proportional to $\mu^2$ in the longitudinal direction. At $\mu=0$, a boundary redundancy $b_i^\gamma\mapsto b_i^\gamma+\beta^\gamma k_i$ appears and requires a quotient/gauge fixing. Thus the strict Maxwell problem is distinct from blindly setting $\mu=0$ after the massive determinant. The massless PMC result is source-derived from the appropriate boundary-gauge treatment; it is not obtained from the zero MCS interaction by continuity.

## Mixed PEC–PMC — VI.A

Take PEC at $y_-$ and PMC at $y_+$. The scalar/vector kernel has blocks
$$
A=\frac{p^2}{2\omega},\quad D=\frac\omega2\Theta+\frac{\mu^2}{2\omega}\Omega,
$$
$$
B_j=i\left[-\frac{\zeta\mu}{2\omega}k_j-\frac i2 k_\ell\epsilon_{\ell j}\right]u,
\qquad
C_i=i\left[\frac{\zeta\mu}{2\omega}k_i-\frac i2\epsilon_{i\ell}k_\ell\right]u.
$$
The three-by-three determinant is
$$
\det\mathbb K_{\rm mix1}=\frac{\mu^2p^2}{8\omega}[1+(1-\zeta^2)u^2].
$$
Again MCS gives zero interaction. Deleting the parity-odd part gives the repulsive CF expression
$$
\mathcal E_+=\frac1{4\pi}\int_\mu^\infty d\omega\,\omega\log(1+e^{-2L\omega})
=-\frac{2L\mu\operatorname{Li}_2(-e^{-2L\mu})+\operatorname{Li}_3(-e^{-2L\mu})}{16\pi L^2}.
$$
The strict Maxwell result is $3\zeta(3)/(64\pi L^2)$ after treating its boundary zero mode. The earlier “infinitely permeable” result is no counterexample to the MCS cancellation: that is PMC2, not this two-component PMC constraint.

## Mixed PEC–PMC2 and the complex determinant — VI.B

Restrict the vector block to $x$. In the scalar/$b_x$ order,
$$
\mathbb K_{\rm mix2}=\frac1{2\omega}
\begin{pmatrix}
p^2 & (\omega k_t-i\zeta\mu k_x)u\\
-(\omega k_t-i\zeta\mu k_x)u & k_t^2+\mu^2
\end{pmatrix},
$$
$$
\det\mathbb K_{\rm mix2}=\frac{p^2(k_t^2+\mu^2)+u^2(\omega k_t-i\zeta\mu k_x)^2}{4\omega^2}.
$$
It is generally complex at fixed momentum, consistent with the Euclidean CS term; it should not be silently replaced by the determinant of a positive real kernel.

For $\zeta=0$, use $k_t=p\cos\theta$, $k_x=p\sin\theta$ and
$$
\int_0^{2\pi}d\theta\log(A\cos^2\theta+B)
=4\pi\log\frac{\sqrt B+\sqrt{A+B}}2,\qquad A\ge0,\ B>0.
$$
After subtraction of the isolated-wire term this gives
$$
\mathcal E_0^{\rm mix}=\frac1{2\pi}\int_\mu^\infty d\omega\,\omega
\log\frac{\mu+\omega\sqrt{1+e^{-2\omega L}}}{\mu+\omega},
$$
$$
f_0^{\rm mix}=\frac1{2\pi}\int_\mu^\infty d\omega\,
\frac{\omega^3}{\omega+e^{2\omega L}(\omega+\mu\sqrt{1+e^{-2\omega L}})}.
$$

For $\zeta=1$, set $Z=\omega k_t-i\mu k_x=|Z|e^{i\phi}$. Since $|Z|^2=p^2(k_t^2+\mu^2)$, the determinant ratio is $1+\chi e^{2i\phi}$ with $\chi=e^{-2\omega L}\in(0,1)$. It stays away from the nonpositive real logarithmic cut: its real part is at least $1-\chi>0$. Pairing $k_x$ with $-k_x$ therefore gives the real logarithm without branch ambiguity. The angular average reduces to
$$
\frac1{4\pi}\int_0^{2\pi}\!d\theta\,
\log(1+\chi^2+2\chi\cos2\phi)
=\log\left[1+\chi\frac{\omega-\mu}{\omega+\mu}\right].
$$
To derive it, write the logarithm as the difference for
$$
A=(1+\chi)^2p^2+4\chi\mu^2,\quad B=(1-\chi)^2\mu^2,
\qquad A'=p^2,\quad B'=\mu^2;
$$
then $\sqrt{A+B}=(1+\chi)\omega$ and $\sqrt B=(1-\chi)\mu$. The preceding real angular identity immediately gives the ratio $1+\chi(\omega-\mu)/(\omega+\mu)$.

Consequently,
$$
\mathcal E_1^{\rm mix}=\frac1{4\pi}\int_\mu^\infty d\omega\,\omega
\log\left[1+e^{-2\omega L}\frac{\omega-\mu}{\omega+\mu}\right],
$$
$$
f_1^{\rm mix}=\frac1{2\pi}\int_\mu^\infty d\omega\,
\frac{\omega^2(\omega-\mu)}{(\omega-\mu)+e^{2\omega L}(\omega+\mu)}.
$$
Both forces are positive. Their massless limits agree with $3\zeta(3)/(32\pi L^3)$. Three high-precision checks of the original complex angular integral agree with the real expression; they supplement the analytic reduction and do not establish it by sampling.

## The strict force inequality — Appendix B

Set $s=\sqrt{1+e^{-2\omega L}}\in(1,\sqrt2)$ and $\tau=\mu/\omega\in(0,1]$. Then
$$
f_I=\frac1{2\pi}\int_\mu^\infty d\omega\,\omega^2e^{-2\omega L}\varphi_I,
\qquad
\varphi_0=\frac1{s(s+\tau)},\quad
\varphi_1=\frac{1-\tau}{s^2(1-\tau)+2\tau}.
$$
The difference, checked algebraically, is
$$
\varphi_0-\varphi_1=
\frac{\tau[2-s(1-\tau)]}{s(s+\tau)[s^2(1-\tau)+2\tau]}>0.
$$
Also
$$
\frac1{s^2}-\varphi_0=\frac\tau{s^2(s+\tau)}>0,\qquad
\frac1{s^2}-\varphi_1=\frac{2\tau}{s^2[s^2(1-\tau)+2\tau]}>0.
$$
These formulas include the endpoint $\tau=1$, where $\varphi_1=0$; no division by $1-\tau$ is needed. Integrating, and extending the positive Maxwell comparison integral from $\mu$ down to zero, proves
$$
0<f_1^{\rm mix}(L,\mu)<f_0^{\rm mix}(L,\mu)<\frac{3\zeta(3)}{32\pi L^3},\qquad L,\mu>0.
$$
The lower-limit comparison is part of the upper-bound proof, not just the pointwise comparison at fixed $\omega$.

## Bulk modes and what the counting proves — V, Appendix A

Appendix A switches to Minkowski $\eta=(+--)$, $\epsilon^{012}=\epsilon_{012}=+1$, and $\widetilde F^\mu=\epsilon^{\mu\nu\rho}F_{\nu\rho}/2$ without the Euclidean factor $i$. Write $\widetilde F_\beta=G_\beta(y)e^{i\nu t+ik_xx}$, using $\nu$ here for its Lorentzian frequency to distinguish the Euclidean $\omega$. Then
$$
G_\beta''+k_y^2G_\beta=0,\quad k_y^2=\nu^2-k_x^2-\mu^2,
$$
$$
ik_xG_2-G_1'-\mu G_0=0,\quad
-i\nu G_2+G_0'+\mu G_1=0,\quad
i\nu G_1-ik_xG_0+\mu G_2=0,\quad
i\nu G_0-ik_xG_1-G_2'=0.
$$
For real nonzero $k_y$, $G_\beta=A_\beta\sin(k_yy)+B_\beta\cos(k_yy)$. The full first-order constraints, not just the massive wave equation, remove the extra polarizations.

For PEC, $G_2(\pm L/2)=0$ admits sine modes $k_y=2n\pi/L$ and cosine modes $k_y=(2n+1)\pi/L$; both branches are needed for the complete spectrum. The source selects the sine branch to count polarization. Its amplitudes can be written
$$
\begin{aligned}
G_0&=B_0[\cos(k_yy)-\mu k_x\sin(k_yy)/(\nu k_y)],\\
G_1&=B_0[k_x\cos(k_yy)/\nu-\mu\sin(k_yy)/k_y],\\
G_2&=\frac{i(\nu^2-k_x^2)}{\nu k_y}B_0\sin(k_yy).
\end{aligned}
$$
All four first-order equations vanish after imposing the dispersion relation. One free amplitude remains; the reality condition pairs $(\nu,k_x)$ with $(-\nu,-k_x)$ and gives one polarization, rather than two independent real polarizations.

For PMC, $G_0=G_1=0$ at a wire forces $G_2=0$ there if $\mu\ne0$. The differential constraints then force all first derivatives to vanish there. Uniqueness of the smooth constant-coefficient ODE gives the trivial bulk profile. One PMC endpoint is enough for this argument, covering PEC–PMC too. At $\mu=0$, the step $\mu G_2=0\Rightarrow G_2=0$ fails. This matches the noncommuting massless determinant problem.

For PMC2, $G_0(\pm L/2)=0$; on the sine branch $G_0=A_0\sin(k_yy)$ and
$$
B_2=\frac{ik_y\nu}{\mu^2-\nu^2}A_0,\quad
A_1=\frac{ik_x}{k_y}B_2,\quad B_1=-\frac\mu{i\nu}B_2,\quad
A_2=\frac{k_x\mu}{k_y\nu}B_2.
$$
These amplitudes also satisfy all four bulk constraints exactly in their nonsingular domain; one amplitude remains.

For PEC–PMC2 the generic solution is expressed through $(B_1,B_2)$:
$$
A_1=\frac{-\mu\nu B_1+i(k_x^2+\mu^2)B_2}{k_xk_y},\quad
A_2=\frac{\mu\nu B_2+i(k_y^2+\mu^2)B_1}{k_xk_y},\quad
A_0=\frac{-\mu B_1+i\nu B_2}{k_y},\quad B_0=\frac{\nu B_1-i\mu B_2}{k_x}.
$$
Impose $G_2(-L/2)=0$, $G_0(L/2)=0$. With $\gamma=k_yL/2$ the two-by-two determinant is
$$
k_xk_y[\mu k_x\sin(2\gamma)-\nu k_y\cos(2\gamma)].
$$
For $k_xk_y\ne0$ it gives $\tan(k_yL)=\nu k_y/(\mu k_x)$ and one generic polarization. Both the bulk-amplitude relations and determinant are independently checked. The exceptional cases $k_x=0$, $k_y=0$, $\nu=0$ or singular denominators must be solved before dividing, so this is not a full spectral completeness proof.

The source discards $G_2=0$, $\nu=\pm k_x$ surface profiles proportional to $e^{\mp\mu y}$ because they are not normalizable on the full line; on a finite interval their displayed dispersion is independent of $L$. This does not classify all possible modes of material interfaces with jump/source terms. Appendix A assumes a smooth bulk profile and supplies intuition for the determinant cancellations. It does not prove that a first-principles regional Hilbert space or arbitrary interface realization has no states.

## Energy ledger and translation to sewing — VII

| Pair | Maxwell $\mu=0$ | CF $\zeta=0,\mu>0$ | MCS $\zeta=1,\mu>0$ |
|---|---|---|---|
| PEC–PEC | $-\zeta(3)/(16\pi L^2)$ | $\mathcal E_-$ | $\mathcal E_-$ |
| PMC–PMC | $-\zeta(3)/(16\pi L^2)$ | $2\mathcal E_-$ | $0$ |
| PMC2–PMC2 | $-\zeta(3)/(16\pi L^2)$ | $\mathcal E_-$ | $\mathcal E_-$ |
| PEC–PMC | $3\zeta(3)/(64\pi L^2)$ | $\mathcal E_+$ | $0$ |
| PEC–PMC2 | $3\zeta(3)/(64\pi L^2)$ | $\mathcal E_0^{\rm mix}$ | $\mathcal E_1^{\rm mix}$ |

The derivation chain is: constraint source $H$ → transverse propagator contraction → normal-momentum transform plus contact prescription → boundary kernel → isolated-wire determinant ratio → energy/force. Appendix A and the force inequality are independent consistency/interpretive branches.

For a regional Gaussian calculation, the reusable structure is the contraction of a bulk inverse with boundary constraint maps, followed by a Schur complement. The chosen boundary maps retain or remove parity-odd information. Identical bulk dispersion and equal counts of propagating polarizations do not determine a common boundary determinant. To obtain an actual sewing construction, one still needs a regional action, boundary symplectic data, a gauge quotient and matching conditions; the paper explicitly does not undertake that variational-principle problem.

## Verification, corrections and limitations

**Verified:** exact bulk inverse at $\zeta=1$; gauge-parameter decoupling; PEC, PMC and mixed epsilon contractions; PMC Schur complement and determinant; both mixed determinants; PEC polylogarithmic energy/force consistency and the repulsive polylog lower-endpoint derivative; real angular-log integral; both mixed force derivatives; force-ordering algebra; generic PEC, PMC2 and mixed bulk mode constraints; mixed quantization determinant. Three 35-digit angular quadratures give residuals consistent with zero (imaginary residual below $10^{-39}$), separately identified as numerical checks.

**Assumptions:** $L,\mu>0$, unbounded flat bulk, ideal zero-width constraints, implicit multiplier contour, the source's dimensional-regularization contact subtraction, and isolated-wire normalization. The matrix inversions involving $\mu^{-2}$ exclude the massless boundary-gauge case. Generic mode formulas require their displayed denominators nonzero.

**Failed / corrected intermediate equations:** Eq. (91) has an extra factor two: its left side equals $2\pi/\sqrt{B(A+B)}$, and the correctly transformed single integral has no leading two. Its accompanying statement about integrating with respect to $A$ also requires the numerator $\cos^2\theta$ when differentiating the logarithm. Eq. (90) itself is correct and was independently integrated, so (92) and the downstream energy are unaffected. Appendix B (B3) prints $\varphi_0=1/s\,(s+\tau)$; the expression consistent with (93), (B5) and the upper bound is $1/[s(s+\tau)]$, used above. The source measure in the PEC action just before (29) also prints $(2\pi)^3$ under a two-dimensional integral; the reduced measure is $(2\pi)^2$, as in the subsequent energy calculation.

**Blocked:** no remaining retrieval or computation blocker. A syntax error in one local angular-check call was corrected before obtaining its result; an intermediate PMC2 residual was explicitly simplified with the dispersion assumption and vanished.

**Not verified:** universality under different contact prescriptions or finite-thickness material models; a convergent functional measure/contour construction; derivation of admissible end-of-space boundary conditions; complete exceptional/surface-mode spectra; BRST treatment of the exactly massless boundary redundancy; experimental realization; a reflection-positivity/no-repulsion theorem for parity-odd MCS. The source's comparative CF and strict-Maxwell interpretation is retained at the stated scope rather than inferred from an invalid continuous $\zeta$ deformation.

For reproducibility, all determinant calculations can be repeated from the explicit $A,B,C,D$ blocks above with independent symbols $(k_t,k_x,\omega,\mu,u,\zeta)$; no numerical integral is needed for the cancellations. The angular reduction and positive rational difference provide analytic checks of the remaining force statement. Source files, renders and CAS outputs were kept outside the vault.
