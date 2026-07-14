---
paper id: 2607.11322v1
title: "Belinfante Symmetrization from Metric-Affine Conservation Laws: Hypermomentum as the Improvement Term -- The Cases of QED and QCD"
authors:
  - Damianos Iosifidis
publication date: 2026-07-13T09:39
abstract: |-
  The paper derives the Belinfante--Rosenfeld improvement from a metric-affine balance law. Flat-space matter theories are lifted by coupling them to an independent affine connection; variation with respect to that connection defines hypermomentum. Returning to flat space expresses the canonical and metrical stress tensors through the divergence of hypermomentum. QED, QCD, and a nonmetric scalar coupling illustrate when this term is an identically conserved improvement.
comments: "14 pages, no figures"
url: https://arxiv.org/abs/2607.11322v1
summary: "A compact reconstruction of the affine-lift current dictionary, the off-shell double-divergence criterion, and the QED/QCD/scalar improvements, with explicit checks and source-level formula errors recorded."
tags: []
---

Back to [[2026_07_14_overview]].

The paper gives a useful current-improvement dictionary: canonical stress is the translation current, metrical stress is the response to the metric, and hypermomentum is the response to the independent affine connection. In flat space their metric-affine balance law becomes a Belinfante relation. This is relevant to the vault's diffeomorphism-current work because it makes the improvement term a variational current rather than an ad hoc superpotential.

# Metric-affine currents

Matter is coupled to independent variables $(g_{\mu\nu},\Gamma^\lambda{}_{\mu\nu},\Phi)$. The three responses are

$$
t^\mu{}_\nu
=\frac{\partial\mathcal L_M}{\partial(\partial_\mu\Phi)}
\partial_\nu\Phi-\delta^\mu_\nu\mathcal L_M,
$$

$$
T_{\mu\nu}
=-\frac{2}{\sqrt{-g}}
\frac{\delta S_M}{\delta g^{\mu\nu}},
$$

$$
\Delta_\lambda{}^{\mu\nu}
=-\frac{2}{\sqrt{-g}}
\frac{\delta S_M}{\delta\Gamma^\lambda{}_{\mu\nu}}.
$$

Here $t^\mu{}_\nu$ is the canonical energy--momentum tensor, $T_{\mu\nu}$ the metrical tensor, and $\Delta_\lambda{}^{\mu\nu}$ the hypermomentum current. Hypermomentum decomposes into spin, dilation, and shear pieces; the improvement criterion below concerns its last two indices and should not be confused with the spin antisymmetry in the first pair.

The metric-affine identity used by the paper is

$$
t^\mu{}_\lambda
=T^\mu{}_\lambda
-\frac{1}{2\sqrt{-g}}
(2S_\nu-\nabla_\nu)
\left(\sqrt{-g}\,\Delta_\lambda{}^{\mu\nu}\right),
\tag{2.8}
$$

supplemented by the general balance equation involving curvature, nonmetricity, torsion, and the three currents.

# Flat limit and the improvement criterion

Setting

$$
g_{\mu\nu}=\eta_{\mu\nu},
\qquad
\Gamma^\lambda{}_{\mu\nu}=0
$$

after the variations gives source Eqs. (2.12)--(2.13):

$$
\partial_\mu t^{\mu\nu}=0,
$$

$$
t^{\mu\nu}
=T^{\mu\nu}
+\frac12\partial_\alpha\Delta^{\nu\mu\alpha}.
\tag{2.13}
$$

Consequently

$$
T^{\mu\nu}
=t^{\mu\nu}
-\frac12\partial_\alpha\Delta^{\nu\mu\alpha}.
$$

The metrical tensor inherits conservation when

$$
\boxed{
\partial_\mu\partial_\nu
\Delta_\lambda{}^{\mu\nu}\equiv0
}
$$

off shell. Antisymmetry

$$
\Delta_\lambda{}^{\mu\nu}
=\Delta_\lambda{}^{[\mu\nu]}
$$

is sufficient but not necessary. The important logical distinction is:

- the affine lift defines $\Delta$;
- the flat balance identity relates $t$, $T$, and $\Delta$;
- the off-shell double-divergence condition makes the shift a genuine improvement that cannot spoil conservation.

# QED affine lift

The flat QED Lagrangian uses

$$
\mathcal L_{\mathrm{QED}}
=-\frac i2
\left(
\bar\psi\overrightarrow{\not D}\psi
-\bar\psi\overleftarrow{\not D}\psi
\right)
-im\bar\psi\psi
-\frac14F_{\mu\nu}F^{\mu\nu}.
$$

The affine lift replaces the Maxwell field strength by

$$
\mathbf F_{\mu\nu}
=\nabla_\mu A_\nu-\nabla_\nu A_\mu
=F_{\mu\nu}+2S_{\mu\nu}{}^\lambda A_\lambda
$$

and adds the spin connection to the fermion derivative. Varying the lifted action with respect to $\Gamma$ and only then taking $g=\eta$, $\Gamma=0$ gives

$$
\Delta_\lambda{}^{\mu\nu}
=2A_\lambda F^{\mu\nu}
-\frac i2\bar\psi
\left(
\gamma_\nu\Sigma^\mu{}_\lambda
+\Sigma^\mu{}_\lambda\gamma^\nu
\right)\psi.
$$

Substitution into the flat master relation yields the symmetric gauge-covariant tensor

$$
\begin{aligned}
T^{\mu\nu}
={}&F^{\mu\lambda}F^\nu{}_\lambda
+\eta^{\mu\nu}\mathcal L_{\mathrm{QED}}\\
&+\frac i4\left(
\bar\psi\gamma^\mu\overrightarrow D{}^\nu\psi
+\bar\psi\gamma^\nu\overrightarrow D{}^\mu\psi
-(\bar\psi\overleftarrow D{}^\nu)\gamma^\mu\psi
-(\bar\psi\overleftarrow D{}^\mu)\gamma^\nu\psi
\right),
\end{aligned}
$$

using the QED equations of motion. The mechanism is therefore on-shell at the final QED simplification, even though the improvement criterion itself is stated off shell.

# QCD extension

For QCD, $A_\mu$ becomes $A_\mu^aT^a$ and

$$
G_{\mu\nu}^a
=\partial_\mu A_\nu^a-\partial_\nu A_\mu^a
+g_sf^{abc}A_\mu^bA_\nu^c.
$$

The affine connection acts on spacetime indices, while the color connection remains inside $D_\mu$. The same torsion-sensitive lift of the spacetime one-form and the same spin-connection variation generate a hypermomentum whose divergence converts the canonical tensor into the standard symmetric gauge-invariant QCD tensor.

The transferable point is that the internal gauge group changes the covariant derivatives and self-interaction terms, but not the metric-affine origin of the spacetime-current improvement. The detailed QCD derivation in the source is less reliable than the QED one: one displayed fermion sign is inconsistent with the QED convention and the intermediate divergence chain is abbreviated.

# Nonmetricity can also generate an improvement

Torsion couplings automatically contribute a tensor antisymmetric in the relevant indices. A nonmetricity coupling can also work when its connection response has vanishing double divergence. The paper's scalar example is

$$
\mathcal L^Q
=Q_{[\nu\mu]\alpha}g^{\alpha\mu}\partial^\nu\phi.
$$

Its flat hypermomentum is

$$
\Delta_\lambda{}^{\mu\nu}
=-2\delta_\lambda^\mu\partial^\nu\phi
+\delta_\lambda^\nu\partial^\mu\phi
+\eta^{\mu\nu}\partial_\lambda\phi.
\tag{4.7}
$$

Commutativity of partial derivatives gives

$$
\partial_\mu\partial_\nu
\Delta_\lambda{}^{\mu\nu}
=(-2+1+1)\partial_\lambda\Box\phi=0.
$$

Adding the dimensionless interaction $\lambda\phi\mathcal L^Q$ to a free scalar produces

$$
T^{\mu\nu}
=\partial^\mu\phi\partial^\nu\phi
-\frac12\eta^{\mu\nu}(\partial\phi)^2
-\lambda\left(
\phi\partial^\mu\partial^\nu\phi
+\partial^\mu\phi\partial^\nu\phi
-\eta^{\mu\nu}(\partial\phi)^2
\right).
$$

On the free equation $\Box\phi=0$, imposing $T^\mu{}_\mu=0$ fixes

$$
\lambda=\frac{n-2}{2(n-1)}.
$$

Using the correct product rule then gives the CCJ form

$$
T^{\mu\nu}
=\partial^\mu\phi\partial^\nu\phi
-\frac12\eta^{\mu\nu}(\partial\phi)^2
-\frac14\frac{n-2}{n-1}
\left(
\partial^\mu\partial^\nu-eta^{\mu\nu}\Box
\right)\phi^2.
$$

The associated “improved Weyl derivative” is proposed as

$$
\mathbf D_\mu
=\partial_\mu
-\frac14\frac{n-2}{n-1}(Q_\mu-q_\mu).
$$

# Pseudo-gauge freedom and local use

The canonical tensor remains fixed under a simultaneous shift

$$
T^{\mu\nu}
\mapsto
T^{\mu\nu}-\frac12\partial_\alpha\chi^{\nu\mu\alpha},
$$

$$
\Delta^{\nu\mu\alpha}
\mapsto
\Delta^{\nu\mu\alpha}+\chi^{\nu\mu\alpha}.
$$

This is the paper's pseudo-gauge interpretation: different affine lifts redistribute local stress and hypermomentum while preserving the canonical translation current.

For current vault projects, the useful dictionary is:

| Metric-affine object | Local current language |
|---|---|
| $t^\mu{}_\nu$ | Canonical translation/diffeomorphism current |
| $T_{\mu\nu}$ | Metric response entering gravitational coupling |
| $\Delta_\lambda{}^{\mu\nu}$ | Connection response carrying spin, dilation, and shear |
| $-\frac12\partial\Delta$ | Belinfante improvement/superpotential divergence |
| $\partial\partial\Delta\equiv0$ | Off-shell condition that the improvement preserves conservation |
| $(T,\Delta)\mapsto(T-\partial\chi/2,\Delta+\chi)$ | Pseudo-gauge relocalization |

The paper does not derive a covariant phase-space potential, a boundary charge, or an integrability statement. Its value is a bulk current-improvement mechanism that can be inserted before analyzing CPS boundary terms.

# Verification note

Mathematica independently checked three algebraic steps:

1. the scalar hypermomentum gives the coefficient $-2+1+1=0$ in its double divergence;
2. the on-shell trace equation fixes $\lambda=(n-2)/(2(n-1))$;
3. the correct identity

   $$
   \partial^\mu\partial^\nu\phi^2
   =2\partial^\mu\phi\partial^\nu\phi
   +2\phi\partial^\mu\partial^\nu\phi
   $$

   has zero residual.

The QED/QCD gamma-matrix and equation-of-motion reduction was followed from the source but not independently reproduced. Several source issues constrain its use:

- the line before the displayed CCJ tensor omits the factor $\partial^\mu\phi\partial^\nu\phi$ and instead prints a second derivative of $\phi$; Mathematica gives a nonzero residual for that printed identity;
- the QCD fermion sign in one displayed equation conflicts with the QED convention;
- the QCD hypermomentum-divergence calculation is not displayed in full;
- an equation is referenced as “(18a)” although no such label exists;
- the concluding corollary points to the wrong earlier equation;
- the affine lift is not unique, as the paper's own pseudo-gauge transformation makes explicit.

These issues do not invalidate the flat metric-affine identity or the independently checked scalar double-divergence criterion, but they block treating every QED/QCD intermediate sign as verified.
