---
paper id: 2609.05921v1
title: "Slow rotation of a localized Kalb-Ramond wormhole: Wald charges and fractional quadrupolar hair"
authors:
  - Sardor Murodov
publication date: 2026-09-05T06:29
abstract: |-
  An action-consistent slow-rotation branch of a phantom-scalar, localized-string, and nonminimally coupled Kalb-Ramond wormhole has vanishing resolved ADM mass but finite Iyer-Wald angular momentum. A matter-supported noninteger quadrupolar tail weakens the smoothness of spatial infinity, obstructing the standard isolated Geroch-Hansen or ACMC quadrupole while leaving global mass and angular momentum finite.
comments: "11 pages"
url: https://arxiv.org/abs/2609.05921v1
summary: "A useful charge-versus-asymptotic-regularity example whose analytic exponent chain checks, while its stationary branch and charge equality remain primarily numerical/source-derived."
tags: []
---

# Why this is high priority

Reason codes: `T1-charge`, `T1-Wald-CPS`, `T1-boundary`, `T2-model`.

The paper directly separates three statements that are often conflated: existence of ADM/Iyer--Wald charges, existence of a smooth conformal completion, and existence of the standard higher-multipole hierarchy. For the vault, the reusable point is that finite surface charges do not imply enough asymptotic regularity to define every higher observable.

# Source map

1. **Introduction:** motivates an action-based rotating wormhole and distinguishes global charges from smooth multipoles.
2. **Action and localization mechanism:** fixes the covariant metric--phantom-scalar--two-form--string system and its two nonminimal curvature couplings.
3. **Static localized wormhole:** solves the reflection-symmetric proper-radial boundary-value problem and selects a numerical codimension-two coupling root.
4. **First-order rotation:** constructs the regular axial mode and computes its Iyer--Wald angular momentum.
5. **Second-order monopole backreaction:** fixes the scalar-tail charge and reports vanishing resolved mass shift plus an increased throat area.
6. **Constrained quadrupolar sector:** treats the polar fields and string bending as a projected differential--algebraic boundary-value problem.
7. **Fractional Kalb--Ramond hair:** derives the noninteger far-field balance and contrasts it with the vacuum $R^{-3}$ quadrupole.
8. **Asymptotic charges and multipole obstruction:** translates the fractional tail into a $C^1$ but generically non-$C^2$ conformal completion.
9. **Validity, discussion, conclusion:** restricts the spin window and lists the unproved stability, uniqueness, UV-completion, and rapid-rotation questions.
10. **Appendix:** records fixed-norm corrections, quadratic field-strength sources, and the vacuum indicial polynomial.

# Theory, conventions, and boundary data

The signature is $(-,+,+,+)$ and $G=c=1$. The bulk action is

$$
S_{\mathrm{bulk}}=\frac{1}{2\kappa}\int \mathrm d^4x\sqrt{-g}\left[R-\frac1{12}H^2+\frac12(\nabla\phi)^2-\Lambda_B\bigl(B^2+b_0^2F(\phi)\bigr)+\xi_1B^2R+\xi_2X^{\mu\nu}R_{\mu\nu}\right],
$$

with $H=\mathrm dB$, $X^{\mu\nu}=B^{\mu\lambda}B^\nu{}_{\lambda}$, phantom scalar sign, and the fixed-norm constraint

$$
B^2=-b_0^2F(\phi),\qquad F(\phi)=\cos^2\!\left(\frac{\phi}{f_{\mathrm{loc}}}\right).
$$

The radial string congruence comes from a Nambu--Goto action with scalar-dependent tension. The displayed choice

$$
\mu_{\mathrm{eff}}(\phi)=\left[\frac14+\frac38\cos^2\!\left(\frac{\phi}{\sqrt3}\right)\right]F(\phi)
$$

is a benchmark model definition, not a universal localization law. The static proper-radial gauge is

$$
\mathrm ds^2=-N(l)^2\mathrm dt^2+\mathrm dl^2+R(l)^2\mathrm d\Omega^2,
\qquad B^{(0)}=-\beta(l)\,\mathrm dt\wedge\mathrm dl,
$$

with reflection conditions $R'(0)=N'(0)=0$, $R(0)=r_0$, $\phi(0)=0$, and localization $F\to0$ on both asymptotic ends. The numerical benchmark fixes $\alpha=\xi_2b_0^2=0.5$ and finds

$$
p_+=0.7936049731094987,\qquad F\sim R^{-2p_+},\qquad \beta\sim R^{-p_+}.
$$

# First-order charge construction

The axial perturbation is defined by

$$
g_{t\phi}=-\epsilon h(l)\sin^2\theta,
$$

together with $B^{(1)}_{l\phi}=\beta V\sin^2\theta$ and $B^{(1)}_{\theta\phi}=\beta w\sin\theta\cos\theta$. Its regular variables include $K=\xi_2\beta^2V$ and a field-strength combination $\bar Q$.

For a Lagrangian depending algebraically on curvature, the paper uses

$$
P^{abcd}=\frac{\partial\mathcal L}{\partial R_{abcd}}
=\frac{1+\xi_1B^2}{4\kappa}(g^{ac}g^{bd}-g^{ad}g^{bc})
+\frac{\xi_2}{8\kappa}\bigl(g^{ac}X^{bd}-g^{ad}X^{bc}-g^{bc}X^{ad}+g^{bd}X^{ac}\bigr).
$$

Both the $P\nabla\varphi$ and $\varphi\nabla P$ pieces of the Iyer--Wald potential are retained. Relative to the Einstein contribution,

$$
\frac{\mathcal I_{\xi_1}}{\mathcal I_{\mathrm{EH}}}=-\alpha\gamma F,
\qquad
\frac{\mathcal I_{\xi_2}}{\mathcal I_{\mathrm{EH}}}
=\frac{RK'}{-Rh'+2hR'}.
$$

The source-derived falloffs make both ratios vanish. With no linear surface contribution from the $H^2$ sector under the stated boundary conditions, the paper concludes

$$
J_{\mathrm{Wald}}=J_{\mathrm{metric}},
\qquad
\widehat j\equiv\frac{J}{r_0^2}=0.3423494582\,\epsilon+O(\epsilon^3).
$$

This equality is conditional on the selected branch, localization falloffs, axial Killing field, and boundary conditions; it is not a theorem for arbitrary nonminimally coupled two-form solutions.

# Second order and fractional multipole obstruction

At fixed scalar-tail charge $Q_\phi$, the reported monopole data are

$$
\delta M_{\mathrm{ADM/Wald}}^{(2)}=0,
\qquad
\frac{A_{\mathrm{th}}}{4\pi r_0^2}=1+(7.74723\pm0.02560)\widehat j^2+O(\widehat j^4).
$$

The quadrupolar system contains metric functions $(n_2,a_2,k_2)$, polar two-form response, scalar response, and string bending. Its numerical principal rank is five for six displayed evolution rows; three additional equations are treated as constraints and the Bianchi/two-form identities remove the apparent extra left-null condition. The resulting branch is numerical and requires parity-aware projection onto the affine constraint manifold.

The vacuum metric subsystem has

$$
\det\mathcal M(s)\propto(s-2)(s+3),
\qquad
(n_2,a_2,k_2)\propto(-1,1,1)R^{-3}
$$

for its decaying mode. The localized polar response instead obeys $d_2\sim R^{-1}$. Since the leading nonminimal source is $\beta d_2$, the metric balance gives

$$
q_{\mathrm{KR}}=1+p_+=1.793604973109499,
\qquad
a_2,k_2\sim R^{-q_{\mathrm{KR}}}.
$$

This tail precedes the vacuum $R^{-3}$ term. With $\rho=R^{-1}$, its compactified form is $\rho^{q_{\mathrm{KR}}}P_2(\cos\theta)$; generic second derivatives scale as $\rho^{q_{\mathrm{KR}}-2}=\rho^{-0.206395\ldots}$. Hence the completion is generically $C^1$ but not $C^2$, outside the smooth domain needed for the ordinary Geroch--Hansen/ACMC quadrupole.

# Independent checks

**Checked (Mathematica):**

- $2.920991916\times0.3423494582-1=-1.51\times10^{-10}$, consistent with the printed inverse spin conversion at the displayed precision.
- $1+p_+=1.7936049731094987$ and $1-2p_+=-0.5872099462189975$ reproduce the fractional-hair and mass-falloff exponents.
- $0.908(2.920991916)^2=7.747231946\ldots$ and $\frac34(-4.855020018059588)(2.920991916)^2=-31.067978676\ldots$ reproduce the area and throat-shape coefficients.
- Substitution of $(n_2,a_2,k_2)=(-1,1,1)R^{-3}$ into the displayed linearized Ricci scalar gives an exact zero residual.
- $q_{\mathrm{KR}}-2=-0.2063950269\ldots$, confirming the claimed divergence of generic second compactified derivatives.

**Source-derived:** the tuned static solution, ranks and intersections of the numerical DAE subspaces, reported residuals, the numerical Wald-integrand decay, vanishing resolved mass shift, and fractional-tail amplitudes. The archive supplies figures and TeX but no numerical code or data arrays, so these results were not replayed.

**Blocked:** a full xAct derivation of $P^{abcd}$, the complete Iyer--Wald surface charge, and the second-order projected DAE requires the paper's unreleased background/interpolation data and explicit reduced field equations. The available source does not expose enough intermediate tensor algebra to reconstruct those chains unambiguously.

**Not independently verified:** existence and uniqueness of the codimension-two stationary root, dynamical stability, robustness under different localization profiles, and continuation beyond $|\widehat j|\lesssim0.015$--$0.02$.

# Translation to the vault programme

This is a clean warning for observable-algebra sewing: a charge functional can exist on the declared asymptotic domain while sharper multipole observables fail because their domain requires extra regularity. In vault language, the charge algebra and the higher-composite completion should therefore be assigned different domains.

The paper does not construct regional algebras, exact trace/response sewing, or a quantum representation. Its numerical equality $J_{\mathrm{Wald}}=J_{\mathrm{metric}}$ should not be generalized beyond its localized branch. The reusable structural statement is narrower: noninteger matter-supported falloffs can preserve leading Hamiltonian charges while obstructing smoother asymptotic observables.

# Reading route

Read the action and boundary data first, then the Iyer--Wald subsection, the fractional-tail balance, and the compactification argument. Treat the long numerical DAE discussion as reference material unless reproducing the stationary branch; the missing code prevents an independent end-to-end replay.

Back to [[2026_09_09_overview]].
