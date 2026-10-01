---
paper id: 2609.27454v1
title: "Conserved charges and the first law of black holes for field dependent symmetry generators in the covariant phase space formalism"
authors:
  - Hai-Feng Ding
publication date: 2026-09-23T07:19:56Z
abstract: "In this paper, we generalize the covariant phase space formalism conjugate to field dependent vectors to include internal gauge transformations when gauge fields are present. In our formalism, the symmetry generators are combination of diffeomorphisms plus internal gauge transformations and depend on the field configuration. When the field dependence of the symmetry generators is considered in the covariant phase space formalism, the first law of black hole thermodynamics is a direct result for generally invariant gravitational theories. To check the validity of our formalism, we investigate the conserved charges and the first laws of thermodynamics for a torus-like black hole in Einstein-Maxwell theory and a charged Einstein-Euler-Heisenberg AdS black hole in Einstein-Euler-Heisenberg nonlinear electrodynamics."
comments: "21 pages, no figures"
url: https://arxiv.org/abs/2609.27454v1
summary: "Frozen-generator charge subtraction is reusable; component and EEH sign inconsistencies obstruct the universal first-law claim."
tags: []
---

# Field-dependent generators: result and scope

**Correct under precise conditions:** the frozen-generator surface-charge formula is useful for a smooth family of solutions with linearized variations, locally defined Noether potentials, admissible boundary conditions, and an integrable charge one-form. The printed component formulas and the claimed universal first-law proof are not mutually consistent as written. In particular, the Einstein–Euler–Heisenberg example fails its own displayed first law at generic charge.

This note reconstructs the [official v1](https://arxiv.org/abs/2609.27454v1), issued on 24 September and read on 25 September. The immediate use is to separate variation of a generator from variation of the field when comparing boundary Hamiltonians. A charge identity does not establish a regional sewing map or select the boundary ensemble.

# Source map and conventions

| Source | Role and dependencies |
|---|---|
| §1, pp.2–4 | CPS/SPSM motivation and field-dependent generators; not a new proof of all cited results. |
| §2, Eqs.(3)–(33), pp.4–9 | Variation of the action, anomaly descent, corrected surface-charge one-form, integrability and surface transport. |
| §3, Eqs.(34)–(37), pp.9–11 | Entropy generator as a parameter-dependent combination of mass, rotation and gauge generators. |
| §4.1, Eqs.(38)–(50), pp.11–13 | Einstein–Maxwell potential, Noether charge and claimed component charge density. |
| §4.1.1, Eqs.(51)–(60), pp.13–14 | Compact torus example, charge normalization and horizon differentiation. |
| §4.2 and §4.2.1, Eqs.(61)–(73), pp.15–17 | Nonlinear electrodynamics and spherical EEH example. |
| §5, pp.17–18 | Proposed non-Abelian and higher-form extensions; not derived in this paper. |
| References, pp.18–21 | Supporting literature; no appendices. |

The spacetime Lagrangian is an $n$-form $\boldsymbol L$, with

$$\delta\boldsymbol L=E_\Phi\delta\Phi+d\boldsymbol\Theta(\delta\Phi;\Phi).$$

The field-space and spacetime differentials are distinct. On-shell equalities require both $E_\Phi=0$ and the linearized equations for the variation. A generator is $\epsilon=(\xi,\lambda)$, acting on an Abelian gauge field by

$$\delta_\epsilon A=\mathcal L_\xi A+d\lambda
=\iota_\xi F+d(\iota_\xi A+\lambda),\qquad
\delta_\epsilon g=\mathcal L_\xi g.$$

In the examples $G=1$, $h_{\mu\nu}=\delta g_{\mu\nu}$, $h^{\mu\nu}=-\delta g^{\mu\nu}$, $h=g^{\mu\nu}h_{\mu\nu}$; brackets have unit-weight antisymmetrization. Couplings and coordinate identifications are fixed. The source uses $\delta^{[\Phi]}$ for explicit field variation at fixed generator, so

$$\delta Q_\epsilon=\delta^{[\Phi]}Q_\epsilon+Q_{\delta\epsilon}.$$

For noncommuting field-space directions, the exterior derivative of $\Theta$ includes its contraction with their commutator. The source's fixed-generator convention must be retained when using Eq.(25); Eq.(6) with ordinary commuting variations cannot simply be applied unchanged to arbitrary field-dependent vector fields.

# Noether descent and the charge one-form

**Source-derived, §§2–3.** Allow invariance only up to a total derivative:

$$\delta_\epsilon\boldsymbol L=dM_\epsilon,\qquad
M_\epsilon=\iota_\xi\boldsymbol L+\Xi_\xi+\lambda dC_{n-2}.$$

Here $\Xi_\xi$ accounts for gravitational Chern–Simons noncovariance and $C_{n-2}$ for the Abelian matter descent used in the paper. Then

$$J_\epsilon=\Theta(\delta_\epsilon\Phi)-M_\epsilon,
\qquad dJ_\epsilon=-E_\Phi\delta_\epsilon\Phi,
\qquad J_\epsilon\simeq dQ_\epsilon.$$

Local exactness is sufficient for this derivation; it does not supply a globally defined charge on arbitrary bundles. Define $\Pi_\epsilon$ by $\delta_\epsilon\Theta=\mathcal L_\xi\Theta+\Pi_\epsilon$. Equations (19)–(20) introduce a local primitive

$$\delta^{[\Phi]}\Xi_\xi+\lambda d\delta C_{n-2}-\Pi_\epsilon
\simeq d\Sigma_\epsilon.$$

Combining this identity with Cartan's formula and varying $J_\epsilon$ gives the central chain

$$\begin{aligned}
\delta J_\epsilon
&=\omega(\delta\Phi,\delta_\epsilon\Phi)+J_{\delta\epsilon}
+d(\iota_\xi\Theta-\Sigma_\epsilon),\\
\omega(\delta\Phi,\delta_\epsilon\Phi)&\simeq dk_\epsilon,\\
k_\epsilon&=\delta Q_\epsilon-Q_{\delta\epsilon}
-\iota_\xi\Theta+\Sigma_\epsilon
=\delta^{[\Phi]}Q_\epsilon-\iota_\xi\Theta+\Sigma_\epsilon.
\end{aligned}$$

The $Q_{\delta\epsilon}$ subtraction is essential: coefficients depending on solution parameters must not contribute product-rule terms to the charge one-form. With fixed orientation, $\not\!\delta H_\epsilon=\oint_C k_\epsilon$. The slash emphasizes that integrability has not yet been established.

Equation (30) states the integrability condition as the vanishing surface integral of

$$\iota_\xi\omega(\delta_1,\delta_2)
+k_{\delta_1\epsilon}(\delta_2)-k_{\delta_2\epsilon}(\delta_1).$$

For integrable one-forms the source integrates through parameter space from a reference solution, Eq.(33). Separate global path-independence from this local closedness criterion. Surface independence requires $dk_\epsilon\simeq0$ in the interpolating region, e.g. an exact or appropriate symplectic symmetry, and homologous surfaces without intervening sources, singularities or flux. The paper's word “arbitrary” cannot remove these requirements. Boundary terms, corner terms and falloff conditions are not selected by this formula.

# Entropy generator and the first-law argument

The paper fixes

$$\eta_M=(\partial_t,0),\quad
\eta_{J_i}=(-\partial_{\phi_i},0),\quad
\eta_{Q_a}=(0,-1_a).$$

For spacetime-constant but parameter-dependent coefficients, linearity gives

$$\eta_S=\frac{\eta_M-\Omega_H^i\eta_{J_i}-\Phi_H^a\eta_{Q_a}}{T_H},
\qquad
\not\!\delta H_{\eta_S}
=\frac{\delta M-\Omega_H^i\delta J_i-\Phi_H^a\delta Q_a}{T_H}.$$

This becomes $\delta S$ only after integrability and identification with the intended horizon entropy. It presupposes $T_H\ne0$, suitable normalization of time and gauge potential, and a stationary family. The equality is not an independent existence theorem for entropy or the first law on every boundary ensemble.

**Failed as printed:** Eq.(34)'s first line has gauge component $-\Phi_H/T_H$, whereas its second line and $\eta_Q=(0,-1)$ give $+\Phi_H/T_H$. The torus example uses the latter sign. Equations (35)–(36) also replace the $+\Sigma$ of Eq.(27) by $-\Sigma$ without redefining its descent convention. Their examples have $\Sigma=0$, so they cannot test this anomaly-sign extension.

# Einstein–Maxwell charge density and the torus

The action is $\boldsymbol L=(R-2\Lambda-F^2)\epsilon/(16\pi)$. The source supplies

$$\Theta^\mu=\frac{\nabla_\nu h^{\mu\nu}-\nabla^\mu h-4F^{\mu\nu}\delta A_\nu}{16\pi},
\qquad
Q^{\mu\nu}_\epsilon=-\frac{2\nabla^{[\mu}\xi^{\nu]}+4F^{\mu\nu}(A\cdot\xi+\lambda)}{16\pi}.$$

**Checked correction to Eq.(50):** its final gravitational term $-\nabla^{[\mu}\delta\xi^{\nu]}/(8\pi)$ and final electromagnetic term

$$-\frac{F^{\mu\nu}}{4\pi}(A\cdot\delta\xi+\delta\lambda)$$

cannot survive in a formula for $\delta Q-Q_{\delta\epsilon}-\iota_\xi\Theta$. Varying the displayed $Q$ at fixed fields in the generator direction gives exactly these terms; $Q_{\delta\epsilon}$ subtracts them. They should be absent in the frozen-generator component expression. The same problem recurs in Eq.(66). This is independent of an overall orientation choice.

For the torus, both angular periods are $2\pi$ and

$$ds^2=-fdt^2+f^{-1}dr^2+r^2(d\theta^2+d\phi^2),\quad
f=-\frac{\Lambda r^2}{3}-\frac{2m}{\pi r}+\frac{4q^2}{\pi r^2},\quad
A_t=-\frac{2q}{\sqrt\pi r}.$$

A parametric variation at fixed $r$ has zero trace. For $\eta_M$, the radial density reduces to

$$k_g^{tr}=-\frac{\delta f}{8\pi r},\qquad
k_A^{tr}=-\frac{A_t\delta A_t'}{4\pi}.$$

Integration with area factor $4\pi^2r^2$ cancels the $q\delta q/r$ contributions and gives $\delta M=\delta m$ at every regular finite radius. The same convention gives $\delta Q=2\sqrt\pi\delta q$, rather than identifying the parameter $q$ itself as the charge.

On the nondegenerate horizon,

$$m_H=\frac{2q^2}{r_H}-\frac{\pi\Lambda r_H^3}{6},\quad
T_H=\frac{f'(r_H)}{4\pi},\quad
\Phi_H=\frac{2q}{\sqrt\pi r_H},\quad S=\pi^2r_H^2.$$

Differentiating $f(r_H;m,q)=0$ produces Eq.(58). Direct differentiation of $m_H$ verifies

$$d m_H=T_Hd(\pi^2r_H^2)+\Phi_Hd(2\sqrt\pi q).$$

The check fixes the compactification normalization, not merely the functional form of the first law. For an inner horizon, one must choose signed surface gravity consistently; the nonnegative square-root definition printed in Eq.(56) is not automatically the signed $f'/2$ on both horizons.

# Euler–Heisenberg example: reconstruction and failure boundary

The source defines $X=F^2/4$, $Y=F\star F/4$ and

$$L=\frac{R-2\Lambda-4\mathcal L(X,Y)}{16\pi},\quad
\mathcal L=-X+\frac{\mathcal A}{2}X^2+\frac{\mathcal B}{2}Y^2,
\quad \mathcal B=\frac74\mathcal A.$$

With $\mathcal F^{\mu\nu}=\mathcal L_XF^{\mu\nu}+\mathcal L_Y\star F^{\mu\nu}$, the source replaces $F$ by $\mathcal F$ in its gauge potential and charge. The electromagnetic variation at fixed metric obeys $\delta X=F^{\mu\nu}\delta F_{\mu\nu}/2$; xAct reproduces this contraction and the variation of $-4\mathcal L$ in the purely electric sector.

**Failed Maxwell-limit match:** $-4\mathcal L\to+4X=+F^2$, whereas §4.1 uses $-F^2$. Thus the printed EEH action does not tend to the preceding Einstein–Maxwell theory with the same metric/sign conventions. This cannot be repaired solely by changing $A\to-A$.

The displayed spherical family is

$$f=1-\frac{2m}{r}+\frac{q^2}{r^2}-\frac{\Lambda r^2}{3}
-\frac{\mathcal A q^4}{20r^6},\qquad
A_t=\frac qr-\frac{\mathcal A q^3}{10r^5}.$$

Equations (69)–(73) identify $M=m$, $Q=q$, $S=\pi r_H^2$, and $\Phi_H=-q/r_H+\mathcal A q^3/(10r_H^5)$. Solving the horizon equation gives

$$m_H=\frac{r_H}{2}+\frac{q^2}{2r_H}-\frac{\Lambda r_H^3}{6}
-\frac{\mathcal A q^4}{40r_H^5}.$$

**Checked / Failed:** at fixed $\Lambda,\mathcal A$,

$$\partial_{r_H}m_H-T_H\partial_{r_H}(\pi r_H^2)=0,
\qquad
\partial_qm_H-\Phi_H=\frac{2q}{r_H}-\frac{\mathcal A q^3}{5r_H^5}\ne0.$$

Changing the chemical potential to $-\Phi_H$ repairs this algebraic first-law residual, but it does not repair the action, charge and potential conventions as a package. No fully corrected EEH model is asserted here. As a limited consistency check, the electric flux $r^2\mathcal L_XA_t'$ is $q+O(\mathcal A^2)$ for the displayed potential. The metric/potential contain a perturbative Euler–Heisenberg truncation; they should not be promoted to an exact all-orders solution.

# Translation into the vault's boundary-Hamiltonian workflow

Use $k_\epsilon$ as a field-space one-form with a specified generator transport rule. When the vault uses $\delta H=-\iota_X\Omega$, antisymmetry gives the same pairing as $\Omega(\delta,X)$ here. Keep the integration orientation and electric generator sign together. A boundary clock rescaling is a change of $\epsilon(\Phi)$ and requires the frozen-generator subtraction, not an extra product-rule contribution to the Hamiltonian variation.

The reusable objects are the pair $(\xi,\lambda)$, the correction $Q_{\delta\epsilon}$, the anomaly primitive $\Sigma_\epsilon$, and the compact torus normalization test. Reuse requires fixing the actual boundary action/ensemble, checking flux and integrability, and tracking nontrivial gauge patches. None of the paper's stationary examples establishes general corner factorization, source release, non-Abelian gluing or a quantum charge algebra.

# Verification log

- **Source-derived:** complete §§1–5 and reference map from official PDF and TeX. PDF pp.10, 13, 15, 17 visually confirm the disputed signs and component terms. Poppler font warning did not prevent inspection.
- **Checked:** Mathematica reproduced the generator product-rule cancellation; torus finite-radius $\delta M=\delta m$, $\delta Q=2\sqrt\pi\delta q$; both torus horizon first-law coefficients; the EEH radial coefficient and nonzero charge coefficient; Maxwell-limit sign difference $8X$; electric flux through first order in $\mathcal A$. xAct reproduced $\delta X=F\cdot\delta F/2$ and its Lagrangian contraction with zero residuals.
- **Failed:** Eq.(34)'s two gauge signs disagree; Eqs.(35)–(36) use the opposite anomaly sign from Eq.(27); Eqs.(50),(66) retain generator-variation terms already removed by $Q_{\delta\epsilon}$; the stated EEH $M,Q,S,\Phi$ fail Eq.(73) at generic nonzero $q$; the printed EEH Maxwell limit has the opposite action sign.
- **Blocked:** a consistent EEH repair requires a common corrected choice of matter action, charge sign and gauge potential. The source does not provide that choice; dependent radius-independence and entropy claims are not used as verified evidence.
- **Not independently verified:** a complete tensor derivation of all component terms, noncovariant Chern–Simons descent, global bundle patching, all-order EEH field equations, and the proposed non-Abelian/higher-form extensions.

**Verified:** the explicit local algebra and reduced examples above. **Assumptions:** smooth stationary solution families, fixed couplings, nondegenerate horizon, stated orientation and torus periods; purely electric EEH expansion at first order. **Not verified:** a universal first-law theorem independent of integrability, entropy identification and boundary conditions.
