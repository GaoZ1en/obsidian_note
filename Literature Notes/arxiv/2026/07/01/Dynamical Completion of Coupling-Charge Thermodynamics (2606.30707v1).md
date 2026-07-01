---
paper id: 2606.30707v1
title: Dynamical Completion of Coupling-Charge Thermodynamics
authors:
  - Kamal Hajian
  - Bayram Tekin
publication date: 2026-06-29T14:36:48
abstract: |-
  The scalar-gauge pair formulation promotes gravitational coupling constants to conserved charges in extended black-hole thermodynamics, but its original form keeps the auxiliary scalars rigid. This paper adds a local kinetic completion built from the defect between the top-form field strength and the gravitational density, so the scalar becomes a massive propagating excitation while the thermodynamic coupling remains a conserved integration constant and the constant-coupling black-hole sector keeps its first law and Smarr relation.
comments: "12 pages"
url: https://arxiv.org/abs/2606.30707v1
summary: "A defect-built kinetic completion lets coupling-charge thermodynamics acquire a local massive scalar without turning the thermodynamic coupling into a spacetime-dependent field."
tags: []
---

Back to [[2026_07_01_overview]].

# Couplings as form-field charges

The starting point is the scalar-gauge pair representation of dimensionful couplings. If the original $D$-form Lagrangian is split as

$$\begin{align}
\mathbf L=\mathbf L_0-\sum_i\alpha_i\mathbf L_i ,
\end{align}$$

the topological pair construction promotes each constant $\alpha_i$ to a scalar field and adds a $(D-1)$-form gauge potential $\mathbf A_i$,

$$\begin{align}
\widetilde{\mathbf L} =\mathbf L_0+\sum_i\alpha_i(x)(\mathbf F_i-\mathbf L_i), \qquad \mathbf F_i=d\mathbf A_i=F_i\boldsymbol\epsilon .
\end{align}$$

The pair equations impose $d\alpha_i=0$ and $\mathbf F_i=\mathbf L_i$. Then $\alpha_i\mathbf F_i=d(\alpha_i\mathbf A_i)$ is a boundary term on shell, and the remaining dynamics is the original constant-coupling theory. The global part of the form gauge symmetry $\mathbf A_i\mapsto\mathbf A_i+d\boldsymbol\lambda_i$ carries the coupling charge. In the black-hole sector this is the field-theoretic origin of treating couplings as thermodynamic charges.

The new paper asks for a local completion of this auxiliary sector while keeping that thermodynamic interpretation. The central restriction is that the new local scalar cannot simply replace $\alpha_i$ by $\alpha_i(x)$ in the original gravitational equations; otherwise the coupling-charge interpretation and the known black-hole first law would be lost.

# The defect variable

The safe local variable is the defect

$$\begin{align}
\boldsymbol\Delta_i:=\mathbf F_i-\mathbf L_i, \qquad \boldsymbol\Delta_i=\Delta_i\boldsymbol\epsilon, \qquad \Delta_i=F_i-\mathcal L_i .
\end{align}$$

The dynamical completion is

$$\begin{align}
\widetilde{\mathbf L}_{\rm dyn} =\mathbf L_0+\sum_i\alpha_i\boldsymbol\Delta_i -\frac12\sum_i\kappa_i\,d\alpha_i\wedge *d\alpha_i -\frac12\sum_i\hat\kappa_i\,\boldsymbol\Delta_i\wedge *\boldsymbol\Delta_i .
\end{align}$$

In scalar-density form the last term is $+\frac12\hat\kappa_i\Delta_i^2$. This apparent wrong sign is harmless only because the top-form has no local propagating mode: $\Delta_i$ is algebraic after the form equation is imposed.

The reason for using $\Delta_i$ instead of a bare $F_i^2$ term is important. On the original constant-coupling sector the pair demands $F_i=\mathcal L_i(x)$. For curvature densities such as Gauss-Bonnet, $\mathcal L_i(x)$ is not constant on a black-hole spacetime. A bare $F_i^2$ kinetic term would tend to force $F_i$ to be constant on constant-$\alpha_i$ backgrounds, obstructing the original sector. The defect condition $\Delta_i=0$ instead allows $F_i$ to track the local density.

# Top-form elimination and the massive scalar

The scalar-density equations are

$$\begin{align}
\Delta_i+\kappa_i\Box\alpha_i=0, \qquad \nabla_\mu\alpha_i+\hat\kappa_i\nabla_\mu\Delta_i=0 .
\end{align}$$

The form equation integrates locally to

$$\begin{align}
\alpha_i+\hat\kappa_i\Delta_i=\bar\alpha_i ,
\end{align}$$

where $\bar\alpha_i$ is constant on each connected component. Combining the two equations gives

$$\begin{align}
(\Box-m_i^2)(\alpha_i-\bar\alpha_i)=0, \qquad m_i^2=\frac{1}{\kappa_i\hat\kappa_i}.
\end{align}$$

Thus the propagating local field is $\alpha_i-\bar\alpha_i$, while the thermodynamic coupling charge is $\bar\alpha_i$. After eliminating the top-form, the pair contribution becomes the standard scalar representative

$$\begin{align}
\mathcal L_{\rm eff} =\mathcal L_0-\bar\alpha\mathcal L -\frac12\kappa\nabla_\mu\alpha\nabla^\mu\alpha -\frac{1}{2\hat\kappa}(\alpha-\bar\alpha)^2 .
\end{align}$$

The Hamiltonian density is bounded below for

$$\begin{align}
\kappa>0,\qquad \hat\kappa>0,
\end{align}$$

which is stronger than only requiring $m^2>0$.

# Metric and matter equations

The variation of

$$\begin{align}
\sqrt{-g}\left(\alpha_i\Delta_i+\frac12\hat\kappa_i\Delta_i^2\right)
\end{align}$$

with respect to the metric contains the locked coefficient $\alpha_i+\hat\kappa_i\Delta_i$. Using the form equation, the metric equation becomes

$$\begin{align}
\mathcal E^{(0)}_{\mu\nu} -\sum_i\bar\alpha_i\mathcal E^{(i)}_{\mu\nu} -\sum_i\kappa_i \left( \nabla_\mu\alpha_i\nabla_\nu\alpha_i -\frac12g_{\mu\nu}(\nabla\alpha_i)^2 -\frac12m_i^2(\alpha_i-\bar\alpha_i)^2g_{\mu\nu} \right) =0 .
\end{align}$$

The original geometric sector sees constant coefficients $\bar\alpha_i$. The local scalar contributes through its stress tensor,

$$\begin{align}
T^{(\alpha)}_{\mu\nu} =\kappa \left( \nabla_\mu\alpha\nabla_\nu\alpha -\frac12g_{\mu\nu}(\nabla\alpha)^2 -\frac12m^2(\alpha-\bar\alpha)^2g_{\mu\nu} \right),
\end{align}$$

whose divergence reduces to

$$\begin{align}
\nabla^\mu T^{(\alpha)}_{\mu\nu} =\kappa\nabla_\nu\alpha\left(\Box\alpha-m^2(\alpha-\bar\alpha)\right).
\end{align}$$

The same locking occurs for non-metric matter fields $\Psi$:

$$\begin{align}
\delta_\Psi\widetilde{\mathcal L}_{\rm dyn} =\delta_\Psi\mathcal L_0 -\sum_i(\alpha_i+\hat\kappa_i\Delta_i)\delta_\Psi\mathcal L_i \quad\longrightarrow\quad \delta_\Psi\mathcal L_0-\sum_i\bar\alpha_i\delta_\Psi\mathcal L_i .
\end{align}$$

This is the main conceptual result: local fluctuations of $\alpha_i(x)$ do not make the original coupling spacetime-dependent in the original equations.

# Boundary charge and CPS interpretation

The enlarged theory preserves the asymptotic coupling charge when the massive scalar is localized or normalizable. The source gives the asymptotically flat falloff

$$\begin{align}
\alpha_i(r)-\bar\alpha_i \sim\frac{e^{-m_ir}}{r^{(D-2)/2}},
\end{align}$$

and the AdS normalizable branch

$$\begin{align}
\alpha_i(r)-\bar\alpha_i\sim r^{-\delta_+}, \qquad \delta_+=\frac{D-1}{2} +\sqrt{\frac{(D-1)^2}{4}+m_i^2\ell^2}.
\end{align}$$

Then $\Delta_i=(\bar\alpha_i-\alpha_i)/\hat\kappa_i\to0$ at the boundary.

The auxiliary form-field contribution to the covariant phase-space potential is

$$\begin{align}
\widetilde\Theta_{\mathbf A} =\sum_i(\alpha_i+\hat\kappa_i\Delta_i)\delta\mathbf A_i .
\end{align}$$

On shell this becomes

$$\begin{align}
\widetilde\Theta_{\mathbf A}\big|_{\rm on\ shell} =\sum_i\bar\alpha_i\,\delta\mathbf A_i,
\end{align}$$

so the integrable global form-gauge charge is

$$\begin{align}
H_{\boldsymbol\lambda_i}=\bar\alpha_i .
\end{align}$$

The paper explicitly does not give the full surface-charge derivation for arbitrary boundary conditions. It states that this would require specifying allowed gauge parameters, boundary conditions on $\mathbf A_i$, and the representative of the CPS potential. The reliable local translation is therefore: the new scalar completion is compatible with the old coupling-charge boundary term, but only after the form equation locks the boundary coefficient to $\bar\alpha_i$.

# Cosmological and Gauss-Bonnet examples

For the cosmological term, set $\Delta_\Lambda=F_\Lambda-1$. The gauge equation gives

$$\begin{align}
\Lambda+\hat\kappa_\Lambda(F_\Lambda-1)=\bar\Lambda,
\end{align}$$

and hence

$$\begin{align}
(\Box-m_\Lambda^2)(\Lambda-\bar\Lambda)=0, \qquad m_\Lambda^2=\frac{1}{\kappa_\Lambda\hat\kappa_\Lambda}.
\end{align}$$

The metric equation is Einstein gravity with constant $\bar\Lambda$ plus the massive scalar stress tensor. This is not a quintessence model unless a separate cosmological analysis is done.

For a Gauss-Bonnet coupling,

$$\begin{align}
\mathcal L_{\rm GB}=\mathcal G =R^2-4R_{\mu\nu}R^{\mu\nu} +R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma}, \qquad \Delta_{\rm GB}=F_{\rm GB}-\mathcal G .
\end{align}$$

On the constant-coupling sector, $F_{\rm GB}=\mathcal G(x)$ and $\Delta_{\rm GB}=0$. This is the cleanest example of why the defect, rather than a bare top-form kinetic term, is necessary.

# Local translation

- The local-vault "charge" object is $\bar\alpha_i$, not $\alpha_i(x)$.
- The defect $\Delta_i$ is a constraint-deviation variable: it vanishes on the old black-hole sector and stores the local completion away from it.
- The new mode is a massive scalar backreaction, not a new locally varying gravitational coupling.
- The CPS boundary term is auxiliary and form-field based; it should be kept separate from gravitational CPS until the allowed form gauge parameters and boundary conditions are fixed.
- For finite-boundary notes, this paper is useful as a model of an auxiliary extension whose boundary charge survives while new bulk modes are arranged to vanish on the original sector.

# Verification log

## Checked

- Mathematica checked the algebraic elimination

$$\begin{align}
\Delta=\frac{\bar\alpha-\alpha}{\hat\kappa}, \qquad \Delta+\kappa\Box\alpha=0
\end{align}$$

  implies

$$\begin{align}
\Box\alpha=\frac{\alpha-\bar\alpha}{\kappa\hat\kappa}, \qquad (\Box-m^2)(\alpha-\bar\alpha)=0, \qquad m^2=\frac{1}{\kappa\hat\kappa}.
\end{align}$$

- Mathematica checked that substituting $\Delta=(\bar\alpha-\alpha)/\hat\kappa$ into $\alpha\Delta+\frac12\hat\kappa\Delta^2$ gives the expected quadratic effective representative up to the constant term carried by $-\bar\alpha\mathcal L$.

## Blocked

- The full black-hole first law and Smarr preservation is inherited from the earlier scalar-gauge pair literature and is only protected here on the constant-coupling sector. The paper does not rederive a complete black-hole CPS first law for scalar-excited solutions.
- The full surface-charge derivation is explicitly deferred by the source because it depends on boundary conditions, allowed form gauge parameters, and the CPS representative.
- The "admissible split" of which coupling densities may be promoted relies on an external constraint-analysis reference.
- I did not independently verify the Gauss-Bonnet constant-curvature formula because the source's curvature and cosmological-constant conventions must be fixed before a machine check is meaningful.

## Failed

- No independent check failed in the algebraic part attempted here.
