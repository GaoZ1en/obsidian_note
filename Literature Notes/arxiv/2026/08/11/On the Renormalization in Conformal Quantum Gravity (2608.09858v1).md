---
paper id: 2608.09858v1
title: "On the Renormalization in Conformal Quantum Gravity"
authors:
  - Ioseph L. Buchbinder
  - Petr M. Lavrov
  - Thomas M. Sangy
  - Ilya L. Shapiro
publication date: 2026-08-10T17:16
abstract: |-
  The paper gives a BRST-based formal argument that one-loop divergences in four-dimensional Weyl-squared gravity, with or without conformal matter, obey the conformal Ward identity despite nonconformal gauge-fixing and ghost actions. It separates this statement about pole counterterms from the finite trace anomaly, classifies the allowed curvature counterterms, and discusses anomaly-induced actions and the ambiguity of the Box R term.
comments: "29 pages, LaTeX, no figures"
url: https://arxiv.org/abs/2608.09858v1
summary: "A useful BRST Ward-identity route to conformal one-loop counterterms in Weyl gravity, but with a gauge-condition conflation and an overgeneralized expectation-value identity that must be corrected."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Placement

Reason codes: `T3-math`, `T2-spectral`, `T2-model`.

This is a medium-priority detailed note. BRST control of gauge-fixing/ghost contributions and the separation between pole counterterms and the anomaly are reusable for quantum-gravity calculations. The paper has no direct covariant-phase-space, surface-charge, corner, or alternative-quantization construction. Ilya L. Shapiro is also an author signal for higher-derivative gravity, but authorship is not the reason for the technical tier.

## Source map

- Section 2 reviews Weyl weights, conformal matter actions, curvature invariants, and the diffeomorphism--Weyl gauge algebra.
- Sections 3--4 derive the semiclassical conformal Ward identity and use Yang--Mills BRST identities to remove one-loop-divergent gauge-fixing and ghost contributions.
- Section 5 treats pure Weyl-squared quantum gravity with a higher-derivative weight operator and gravitational BRST identities.
- Section 6 extends the argument to conformal gravity coupled to conformal scalars, spinors, and Yang--Mills fields.
- Section 7 distinguishes conformal pole terms from the finite anomaly, reviews the Paneitz-operator form of the anomaly-induced action, and discusses total-derivative ambiguities.
- The appendix reviews a nonlocal conformal reparametrization of the metric and explains why the authors regard it as unnecessary and not a standard regularization.

## Classical conformal data

In $n$ dimensions the matter weights are

$$
d_\varphi=\frac{2-n}{2},
\qquad
d_\psi=\frac{1-n}{2},
\qquad
d_A=0,
$$

and the conformal scalar coupling is

$$
\xi_{ij}=\frac{n-2}{4(n-1)}\delta_{ij}.
$$

The four-derivative vacuum basis in four dimensions is

$$
C^2,
\qquad
E_4=R_{\mu\nu\rho\sigma}^2-4R_{\mu\nu}^2+R^2,
\qquad
\Box R,
$$

with $R^2$ excluded from the classically conformal action. Pure conformal gravity is written as

$$
S_0=\int d^n x\sqrt{-g}
\left(-\frac{1}{2\lambda}C^2+\frac1\rho E_4+\tau\Box R\right).
$$

The paper's target statement is specifically about the coefficient of the one-loop pole:

$$
\mathcal C_4\,\bar\Gamma^{(1)}_{\mathrm{div}}=0.
$$

It does not claim that the finite one-loop effective action is Weyl invariant; its violation is the trace anomaly.

## Semiclassical BRST argument

For conformal matter in an external metric, the total gauge-fixed action is

$$
S_t=S_0+S_{\mathrm{gf}}+S_{\mathrm{gh}}.
$$

The Nakanishi--Lautrup formulation gives a conformal Ward identity containing matter terms plus expectation values from gauge fixing and ghosts. Yang--Mills BRST identities relate

$$
\left\langle(\nabla^\mu B^a)A^a_\mu
+(\nabla^\mu\bar C^a)D_\mu^{ab}C^b\right\rangle_J
$$

and $\langle B^aB^a\rangle_J$ to terms proportional to external sources. At one loop these contain only a single ghost propagator attached to a finite classical source and therefore do not contribute a closed ultraviolet-divergent loop. At the conformal scalar coupling and $n\to4$, the pole part is consequently Weyl invariant.

This reasoning depends on dimensional regularization, BRST-invariant measure assumptions, and the stated loop counting. It is not a regulator-independent theorem about arbitrary quantization schemes.

## Pure conformal gravity

The background split is $g'_{\mu\nu}=g_{\mu\nu}+h_{\mu\nu}$. Diffeomorphisms are fixed by

$$
\chi_\alpha=\nabla_\lambda h^\lambda{}_\alpha
+\beta\nabla_\alpha h,
$$

with higher-derivative weight

$$
Y^{\alpha\beta}=g^{\alpha\beta}\Box
+\gamma\nabla^\alpha\nabla^\beta.
$$

The trace condition $h=0$ fixes the linearized Weyl symmetry. Separately, the choice

$$
1+n\beta=0
$$

makes $\chi_\alpha$ invariant under the linearized Weyl transformation $\delta h_{\mu\nu}=2\sigma g_{\mu\nu}$.

With diffeomorphism ghost $C^\alpha$, antighost $\bar C^\alpha$, and $B^\alpha$, gravitational BRST gives the propagator identities

$$
\langle h_{\mu\nu}B_\alpha\rangle
=\langle(\nabla_\mu C_\nu)\bar C_\alpha\rangle
+\langle(\nabla_\nu C_\mu)\bar C_\alpha\rangle,
$$

$$
\langle B_\alpha B_\beta\rangle=0,
\qquad
\langle\chi_\alpha B_\beta\rangle
=\langle M_\alpha{}^\gamma C_\gamma\bar C_\beta\rangle.
$$

After a FieldsX-assisted reduction, the paper reports

$$
\mathcal C_n\Gamma
=(n-4)\langle\mathscr L_0(g')\rangle
+2\langle C_\alpha M^\alpha{}_{\gamma}
Y^\gamma{}_{\beta}\bar C^\beta\rangle
-2(1+n\beta)\left\langle\nabla_\alpha
\left(C^\alpha\nabla_\gamma Y^\gamma{}_{\beta}
\bar C^\beta\right)\right\rangle.
$$

The last term vanishes for $\beta=-1/n$. A ghost Schwinger--Dyson identity makes the middle term a contact term proportional to $\delta(0)$, which is set to zero in dimensional regularization. The resulting formal identity is

$$
\mathcal C_n\Gamma
=(n-4)\langle\mathscr L_0(g')\rangle.
$$

If the expectation value on the right has at most a simple one-loop pole, its product with $n-4$ is finite, so the pole part on the left obeys the four-dimensional conformal Ward identity. Power counting then excludes an $R^2$ one-loop divergence:

$$
\bar\Gamma^{(1)}_{\mathrm{div}}
=-\frac{\mu^{n-4}}{(4\pi)^2(n-4)}
\int d^n x\sqrt{-g}
\left(k_1C^2+k_2E_4+k_3\Box R\right).
$$

## Coupling to conformal matter

The coupled theory adds conformal scalars, spinors, Yang--Mills fields, Yukawa interactions, and quartic scalar interactions. The argument combines the matter and gravitational BRST identities. Source-dependent corrections begin beyond the one-loop order relevant to the pole analysis. At

$$
\xi_{ij}=\frac{n-2}{4(n-1)}\delta_{ij},
$$

the authors again conclude

$$
\mathcal C_4\bar\Gamma^{(1)}_{\mathrm{div}}=0.
$$

Thus the nonconformal structures $R^2$ and $R\varphi^i\varphi^j$ should not occur as one-loop pole counterterms if the calculation and BRST implementation are correct. No explicit new beta-function calculation is supplied; this is a structural Ward-identity result.

## Anomaly and induced action

The pole statement is compatible with a finite trace anomaly. The relevant geometric identity is

$$
\sqrt{-g}\left(E_4-\frac23\Box R\right)
=\sqrt{-\bar g}\left(
\bar E_4-\frac23\bar\Box\bar R+4\bar\Delta_4\sigma
\right),
$$

where

$$
\Delta_4=\Box^2+2R^{\mu\nu}\nabla_\mu\nabla_\nu
-\frac23R\Box+\frac13(\nabla^\mu R)\nabla_\mu.
$$

This yields the standard nonlocal anomaly-induced action through the Green function of $\Delta_4$, up to an arbitrary conformal functional. Total-derivative anomaly terms are more scheme-sensitive. In particular,

$$
-\frac2{\sqrt{-g}}g_{\mu\nu}
\frac{\delta}{\delta g_{\mu\nu}}
\int d^4x\sqrt{-g}\,R^2
=12\Box R.
$$

In semiclassical gravity a finite $R^2$ term shifts the $\Box R$ anomaly coefficient without changing the quantum matter content. In quantum conformal gravity, adding $R^2$ changes the gravitational theory and introduces a scalar degree of freedom, so the same scheme freedom has a different physical status.

## Verification log

### Checked

- Read the complete TeX source and visually checked representative PDF pages containing the gauge choice, gravitational Ward identity, contact-term argument, and anomaly-induced action.
- Mathematica verified that under $\delta h_{\mu\nu}=2\sigma g_{\mu\nu}$,

  $$
  \delta\chi_\alpha=2(1+n\beta)\nabla_\alpha\sigma,
  $$

  so $\beta=-1/n$ removes the linearized Weyl variation of the diffeomorphism gauge condition.
- Using $\delta\sqrt{-g}=4\sigma\sqrt{-g}$ and $\delta R=-2\sigma R-6\Box\sigma$, Mathematica reduced the Weyl variation of $\int\sqrt{-g}R^2$ to $-12\int\sqrt{-g}\sigma\Box R$, confirming the displayed $12\Box R$ trace identity with the paper's sign convention.
- Mathematica verified directly that

  $$
  P=1+\frac16(\Box-R/6)^{-1}R
  $$

  satisfies $(\Box-R/6)P=0$, subject to existence and boundary conditions for the inverse operator.

### Source-derived

- The long conformal variations of the gauge-fixing and ghost actions, their FieldsX reduction to the main identity, and the coupled-matter loop-counting cancellation are source-derived. The authors state that FieldsX was used but provide no notebook or machine-readable audit trail.
- The step $\delta(0)=0$ and the absence of a pole contribution from the resulting contact term are specific to dimensional regularization.

### Blocked

- The FieldsX computation leading to the central gravitational identity cannot be reproduced exactly because the source notebook, package setup, simplification rules, and intermediate tensors are not supplied.
- The proof assumes a BRST-preserving measure, ignores possible global or boundary contributions, and is formulated perturbatively around the chosen background split. It does not establish anomaly freedom of the finite effective action or higher-loop conformal renormalizability.
- The treatment of the algebraic Weyl gauge determinant and the use of linearized gravitational BRST transformations are not developed sufficiently to provide an independent BV-level proof.

### Failed

- The source says that imposing $h=0$ is equivalent to $1+n\beta=0$. This is incorrect. The trace condition fixes the Weyl gauge; the value $\beta=-1/n$ separately makes $\chi_\alpha$ invariant under a linearized Weyl transformation. The final cancellation uses the latter coefficient explicitly.
- In the general quantum-action-principle discussion, the source writes $\langle X(\phi)\rangle_J=X(\langle\phi\rangle_J)$. This is false for nonlinear $X$: for a Gaussian variable with mean $m$ and variance $v$, $\langle\phi^2\rangle-m^2=v$. The conformal transformations actually used there are linear, so this overgeneralized identity does not directly invalidate that restricted application.

## Relevance and limits

The strongest reusable point is the epistemic separation among classical Weyl symmetry, conformal covariance of the one-loop pole, and the finite trace anomaly. For BRST/CPS work it is also a reminder that cancellation of gauge-fixing dependence is a Ward-identity statement with regulator and boundary assumptions, not a termwise conformal invariance of the gauge-fixed action.

The paper does not compute a new full one-loop divergence, beta function, physical spectrum, unitarity criterion, boundary charge, or interacting nonperturbative completion. Its conclusion is one-loop and four-dimensional; higher loops are expected to generate symmetry-breaking effects through the anomaly.

## Next checks

- Reconstruct the FieldsX reduction from the displayed gauge-fixing and ghost actions and test the main identity before imposing $\beta=-1/n$.
- Reformulate the argument in BV language, including the Weyl ghost and possible boundary terms, to distinguish local BRST cohomology from regulator-specific contact terms.
- Compare the no-$R^2$ pole prediction against an explicit modern one-loop calculation for conformal gravity coupled to nontrivial matter.
