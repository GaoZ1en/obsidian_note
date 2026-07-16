---
paper id: 2607.12798v1
title: "On interacting non-Abelian antisymmetric tensor field models"
authors:
  - I. Buchbinder
  - N. Kozyrev
publication date: 2026-07-14T14:14:10
abstract: |-
  The paper studies interacting antisymmetric-tensor models obtained by reducing a higher-dimensional Abelian p-form on a compact Lie-group manifold. The compactification scale becomes a non-Abelian coupling, while the reduced tensor tower acquires Yang--Mills-covariant transformations, Stückelberg fields, and reducible gauge-for-gauge symmetries. The main result is that the interacting tower retains the same reducibility stages as its free counterpart.
comments: "16 pages"
url: https://arxiv.org/abs/2607.12798v1
summary: "A concrete reducible non-Abelian tensor hierarchy whose explicit trivial parameters can be lifted directly into a BRST/BFV/BV ghost-for-ghost complex."
tags: []
---

Back to [[2026_07_15_overview]].

The durable value is the explicit reducibility tower. The paper does not construct a presymplectic form or a charge, but its gauge-for-gauge maps provide a useful testbed for the kernel of a future CPS form and for BRST ghosts, ghosts-for-ghosts, and higher-stage relations.

# Group-manifold reduction of a gravitationally coupled 3-form

The higher-dimensional starting point is an Abelian 3-form $C_{MNP}$ coupled to gravity:

$$\begin{align}
S =-\frac{1}{24}\int d^DX\sqrt{-G}\, F_{MNPQ}F^{MNPQ} -\int d^DX\sqrt{-G}\,R[G],
\end{align}$$

$$\begin{align}
F_{MNPQ}=4\partial_{[M}C_{NPQ]}. \tag{2.9}
\end{align}$$

The internal compact space is a Lie-group manifold. Its frame satisfies

$$\begin{align}
\partial_ae_{b\bar c}-\partial_be_{a\bar c} =-\kappa f_{\bar a\bar b\bar c} e_{a\bar a}e_{b\bar b},
\end{align}$$

$$\begin{align}
f_{\bar a\bar b\bar c}f_{\bar a\bar b\bar d} =2\delta_{\bar c\bar d}. \tag{2.14}
\end{align}$$

The dimensionful parameter $\kappa$ measures both the inverse compactification scale and the non-Abelian interaction strength.

The analysis freezes internal metric moduli and subsequently takes the external metric to be flat in the gauge-sector calculation. It should therefore be read as a controlled tensor/gauge reduction, not as a proof of a complete consistent gravitational truncation.

# Yang--Mills-covariant tensor basis

The Kaluza--Klein vector is a Yang--Mills connection. For an adjoint object $q_{\bar a}$,

$$\begin{align}
\nabla_\mu q_{\bar a} =\partial_\mu q_{\bar a} -f_{\bar a\bar m\bar n}A_{\mu\bar m}q_{\bar n},
\end{align}$$

and

$$\begin{align}
\mathcal F_{\mu\nu\bar a} =\partial_\mu A_{\nu\bar a} -\partial_\nu A_{\mu\bar a} -f_{\bar a\bar m\bar n} A_{\mu\bar m}A_{\nu\bar n}. \tag{2.23}
\end{align}$$

Its transformation is

$$\begin{align}
\delta A_{\mu\bar a} =\partial_\mu\lambda_{\bar a} +f_{\bar a\bar b\bar c} \lambda_{\bar b}A_{\mu\bar c}. \tag{2.24}
\end{align}$$

The components of the higher-dimensional 3-form are redefined into an external tensor tower

$$\begin{align}
B_{\mu\nu\rho},\qquad B_{\mu\nu\bar a},\qquad B_{\mu\bar a\bar b},\qquad B_{\bar a\bar b\bar c},
\end{align}$$

chosen so that Yang--Mills covariance is manifest.

Representative transformations are

$$\begin{align}
\delta B_{\mu\nu\bar a} =2\nabla_{[\mu}\widetilde\Lambda_{\nu]\bar a} +f_{\bar a\bar m\bar n} \lambda_{\bar m}B_{\mu\nu\bar n},
\end{align}$$

$$
\begin{aligned}
\delta B_{\mu\bar a\bar b}
={}&\nabla_\mu\widetilde\Lambda_{\bar a\bar b}
+\kappa f_{\bar a\bar b\bar c}
\widetilde\Lambda_{\mu\bar c}\\
&+2f_{[\bar a|\bar m\bar n}
\lambda_{\bar m}B_{\mu\bar n|\bar b]}.
\end{aligned}
\tag{2.22}
$$

The commutator parameters displayed in (2.29) close without using field equations. The resulting algebra is therefore off-shell closed at the level analyzed.

# Covariant curvatures and interacting action

The reduced field strengths $H$ combine exterior derivatives, Yang--Mills covariant derivatives, $\mathcal F$, and the internal structure constants. Their organization in (2.31) is triangular: a transformation of a lower-external-degree tensor is compensated by the next Stückelberg level.

The reduced action (2.33) is a sum of quadratic covariant curvatures, with a Yang--Mills term proportional to $6\mathcal F^2$. Interactions enter through:

- the connection inside $\nabla_\mu$;
- the non-Abelian curvature $\mathcal F$;
- the algebraic maps proportional to $\kappa f_{\bar a\bar b\bar c}$.

This is why reducibility can survive interaction: the differential complex is deformed covariantly rather than replaced by an unrelated non-Abelian ansatz.

# Gauge-for-gauge parameters and reducibility

For the 3-form tower, a set of trivial parameters is

$$\begin{align}
\lambda_{\bar a}^{\rm triv}=0,\qquad \widetilde\Lambda_{\mu\bar a}^{\rm triv} =\nabla_\mu\omega_{\bar a},
\end{align}$$

$$\begin{align}
\widetilde\Lambda_{\bar a\bar b}^{\rm triv} =-\kappa f_{\bar a\bar b\bar c}\omega_{\bar c},
\end{align}$$

$$\begin{align}
\widetilde\Lambda_{\mu\nu}^{\rm triv} =\kappa^{-1}\mathcal F_{\mu\nu\bar a}\omega_{\bar a} +2\partial_{[\mu}\zeta_{\nu]}, \qquad \zeta_\mu\sim\zeta_\mu+\partial_\mu\zeta. \tag{2.38}
\end{align}$$

Substituting these into the tensor transformations gives a vanishing field variation after Bianchi/Jacobi identities. The non-Abelian part is first-stage reducible, while the remaining Abelian 2-form parameter has its familiar second stage.

For the reduced 4-form, equations (3.53)--(3.55) display one additional stage:

- non-Abelian sector: second-stage reducible;
- Abelian sector: third-stage reducible.

The arbitrary-rank recursion in (4.58)--(4.67) continues the same pattern. The interaction changes the maps but not the number of reducibility stages inherited from the free higher form.

# Stückelberg fields and the mass projector

The adjoint Stückelberg vector is the structure-constant projection of $B_{\mu\bar a\bar b}$:

$$\begin{align}
S_{\mu\bar a} =\frac12f_{\bar a\bar b\bar c} B_{\mu\bar b\bar c}. \tag{2.41}
\end{align}$$

The complementary internal two-form components are selected by

$$\begin{align}
Q_{\bar a\bar b,\bar c\bar d} =\delta_{\bar a[\bar c}\delta_{\bar d]\bar b} -\frac12 f_{\bar m\bar a\bar b} f_{\bar m\bar c\bar d}. \tag{2.45}
\end{align}$$

This separates the structure-constant image, which participates in the Stückelberg mechanism, from the orthogonal internal tensor sector. The compactification scale $\kappa$ supplies the mass scale.

# BRST/BFV/BV data extracted from the tower

The displayed reducibility maps provide the following schematic complex:

$$\begin{align}
\text{fields}
\xleftarrow{R_0}
\text{gauge parameters}
\xleftarrow{R_1}
\text{gauge-for-gauge parameters}
\xleftarrow{R_2}\cdots .
\end{align}$$

A BRST implementation should introduce:

- a Yang--Mills ghost for $\lambda_{\bar a}$;
- tensor ghosts for each $\widetilde\Lambda$;
- adjoint ghosts-for-ghosts for $\omega_{\bar a}$;
- the Abelian tower generated by $\zeta_\mu\sim\zeta_\mu+\partial_\mu\zeta$;
- higher ghosts through the rank-dependent stage.

The off-shell closure of the gauge commutator is favorable for BFV/BV bookkeeping. A complete BV action would still need the explicit reducibility operators, their algebraic identities, and the field dependence of the commutator assembled consistently; the paper leaves that construction for future work.

# Relation to CPS and current projects

| Paper object | Potential local use |
|---|---|
| $\nabla_\mu$, $\mathcal F_{\mu\nu}$ | non-Abelian covariantization of a reducible higher-form testbed |
| $R_1(\omega,\zeta)$ from (2.38) | null directions expected in a presymplectic form |
| rank-dependent reducibility | ghost/ghost-for-ghost depth in BRST/BV |
| Stückelberg projection | separation of massive and residual gauge sectors |
| projector $Q$ | internal representation-space decomposition |

The paper supplies no spacetime boundary conditions, presymplectic potential, corner term, Hamiltonian generator, or charge. It is therefore a model/BRST reference rather than a Tier-1 CPS result.

# Verification boundary

- The section logic and equations above are source-derived from the official HTML; no Mathematica/xAct reconstruction was performed.
- The reducibility claims depend on the source's Bianchi and Jacobi identities. Their complete substitution through the arbitrary-rank recursion was not independently checked.
- Official HTML equation (2.22) writes the variation of $B_{\mu\nu\rho}$ with both $3\partial_{[\mu}\widetilde\Lambda_{\nu\rho]}$ and an additional $+\partial_\rho\widetilde\Lambda_{\mu\nu}$ term, which appears to duplicate one contribution. The note does not silently repair it; any BRST implementation should first check the PDF/TeX source.
- Frozen moduli and the external-flat restriction mean the displayed gauge model is not evidence for a fully consistent gravitational truncation.
