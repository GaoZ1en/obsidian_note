---
paper id: 2608.19309v1
title: 3D Einstein action from 6D Kodaira-Spencer gravity
authors:
  - Johanna Erdmenger
  - Jonathan Karl
  - Jani Kastikainen
  - Henri Scheppach
publication date: 2026-08-19T18:00
abstract: |-
  The paper identifies a constrained local subsector of six-dimensional Kodaira-Spencer gravity on H^3 x S^3, rewrites it as SL(2,C) holomorphic Chern-Simons theory, and reduces its SU(2)-invariant zero modes to chiral three-dimensional gravity. Two complex-conjugate copies plus a background volume term reproduce Euclidean 3D Einstein gravity in Chern-Simons form.
comments: "47 pages, 5 appendices"
url: https://arxiv.org/abs/2608.19309v1
summary: "A source-structured reconstruction of the locality constraint and action-level reduction from six-dimensional Kodaira-Spencer gravity to chiral and full Euclidean AdS3 gravity."
tags: []
---

## Result and relevance

The reusable result is an action-level chain

\[
\text{constrained KS}_{6}
\longrightarrow
\text{holomorphic CS}_{6}
\longrightarrow
\text{chiral CS}_{3},
\]

with two complex-conjugate six-dimensional copies producing the two $\mathfrak{sl}(2,\mathbb C)$ connections of Euclidean AdS$_3$ Einstein gravity. This is a `T2-model`, `T2-dS-BH-holography`, and `T3-math` paper rather than a direct CPS or surface-charge construction: it supplies an explicit first-order action dictionary, but it does not derive a reduced boundary symplectic form or quantum equivalence.

The central limitation is structural. Locality requires a constraint stronger than the ordinary Kodaira-Spencer cohomology condition, and after dimensional reduction this constraint still restricts the three-dimensional gauge field. The construction therefore embeds a nontrivial classical subsector, not the full off-shell field space or path integral of 3D gravity.

## Source map

- Section 1 motivates the twisted-holography embedding and states the action reduction, Newton-constant dictionary, and large-$N$ string-coupling relation.
- Section 2 defines Kodaira-Spencer gravity, introduces the locality constraint, rewrites the constrained action as holomorphic Chern-Simons theory, and derives the constrained variational problem.
- Section 3 reduces the $\mathrm{SU}(2)$-equivariant zero mode over $S^3$: one KS copy gives background-dependent chiral gravity; two conjugate copies plus the six-dimensional volume term give full Euclidean Einstein gravity.
- Section 4 isolates the field-space, Kaluza--Klein, and quantum/path-integral gaps.
- Appendix A fixes polyvector, contraction, trace, and Tian-lemma conventions.
- Appendix B varies the KS and holomorphic-CS actions and proves the relevant equation-of-motion equivalence.
- Appendix C derives the principal-bundle reduction, the Chern-Simons transgression identities, and the reduction of $\Omega\wedge\bar\Omega$.
- Appendix D translates Einstein--Palatini gravity, the GHY term, and the counterterm into the paper's Chern-Simons conventions.
- Appendix E relates flatness to Kodaira-Spencer integrability when the background volume form is not holomorphic.

## Six-dimensional fields and locality constraint

Let $P_6=\mathbb H_3\times S^3\simeq \mathrm{SL}(2,\mathbb C)$ and let

\[
\Sigma=M^{-1}dM,
\qquad
d\Sigma+\Sigma\wedge\Sigma=0,
\qquad
\Omega=\frac13\operatorname{tr}(\Sigma^3).
\]

A complex-structure deformation is a $(0,1)$-form valued in $(1,0)$ vectors,

\[
\alpha=\alpha_{\bar i}{}^j\,d\bar w^{\bar i}\otimes\partial_j,
\qquad
\mathcal A_{01}=\iota_\alpha\Sigma.
\]

The ordinary KS field equation is

\[
E_\alpha=\bar\partial\alpha-\frac12[\alpha,\alpha]=0.
\]

The paper restricts to

\[
\partial\mathcal A_{01}
+\mathcal A_{01}\wedge\Sigma
+\Sigma\wedge\mathcal A_{01}=0.
\tag{locality}
\]

This implies $\partial\eta(\alpha)=0$, which is needed to write $\eta(\alpha)=\partial\eta(\beta)$, but the converse is false. On this smaller field space the nonlocal KS functional becomes

\[
I_{\rm KS}
=-\frac{1}{2g_s^2}\int_{P_6}\Omega\wedge
\left[
\operatorname{tr}(\mathcal A_{01}\wedge\bar\partial\mathcal A_{01})
+\frac23\operatorname{tr}(\mathcal A_{01}^3)
\right],
\]

up to the boundary term needed to preserve the shift of the KS potential by a $\partial$-closed form.

The key identity relating the local curvature to the KS equation is

\[
\operatorname{tr}\!\left[
(\bar\partial\mathcal A_{01}+\mathcal A_{01}^2)
\wedge\Sigma\wedge\Sigma
\right]
=\bar\partial\eta(\alpha)
+\frac12\partial\eta(\alpha\wedge\alpha).
\]

Unconstrained variation would set the $(0,2)$ curvature to zero. Constrained variation is weaker: a $(2,2)$ Lagrange multiplier $Y$ enforces the locality condition, and solutions with $Y\ne0$ need not solve the original KS equation. The common classical subsector is obtained by imposing both flatness and locality; locally it contains

\[
\mathcal A_{01}=M^{-1}(H^{-1}\bar\partial H)M,
\qquad
\partial H=0.
\]

## Reduction to chiral 3D gravity

Complete $\mathcal A_{01}$ to an equivariant connection $\mathcal A$ on the principal $\mathrm{SU}(2)$ bundle and retain its zero mode. With $G\in\mathrm{SU}(2)$ along the fibre,

\[
\Sigma=G^{-1}(A_0+G^{-1}dG)G,
\qquad
\mathcal A=G^{-1}(A+G^{-1}dG)G,
\]

where $A_0$ is a fixed flat connection on $\mathbb H_3$ and

\[
A=A_0-c_i(A_0^i-\bar A_0^i).
\]

The appendix-level transgression calculation gives

\[
I_{\rm KS}
=\frac{2\operatorname{vol}(S^3)}{g_s^2}
\int_{\mathbb H_3}\operatorname{tr}\left[
\Delta A\wedge d_{A_0}\Delta A
+\frac23\Delta A\wedge\Delta A\wedge\Delta A
\right],
\qquad
\Delta A=A-A_0.
\]

This is a chiral Chern-Simons action expanded about the background solution. Flatness $F_A=0$ is equivalent to the KS equation only for equivariant fields satisfying the locality constraint and the stated nondegeneracy assumptions.

## Two copies and Euclidean Einstein gravity

Write

\[
A=W+iE,
\qquad
\bar A=W-iE,
\]

where $E$ is an invertible dreibein and $W$ is the dualized spin connection. With the paper's trace convention $\operatorname{tr}(\tau_i\tau_j)=-\delta_{ij}/2$, Einstein--Palatini gravity including its boundary terms is rewritten as the difference of the two Chern-Simons actions.

The six-dimensional parent is chosen as

\[
I[\beta,\bar\beta;\Omega,\bar\Omega]
=-\frac{i}{2}(I_{\rm KS}[\beta;\Omega]-I_{\rm KS}[\bar\beta;\bar\Omega])
+\frac{i}{4g_s^2}\int_{P_6}\Omega\wedge\bar\Omega.
\]

The volume term cancels the background Chern-Simons pieces. After reducing over $S^3$,

\[
I=-\frac{2i\operatorname{vol}(S^3)}{g_s^2}
\int_{\mathbb H_3}
(\operatorname{CS}[A]-\operatorname{CS}[\bar A])
+\text{boundary terms}.
\]

Matching to the paper's Euclidean Einstein convention gives

\[
G_N=-\frac{g_s^2}{32\pi^3}.
\]

The sign depends on the chosen orientation of $\mathbb H_3$ inside $\mathbb H_3\times S^3$. With unit AdS radius, Brown--Henneaux then gives

\[
c=\frac{3}{2G_N}=-\frac{48\pi^3}{g_s^2}.
\]

Matching the chiral beta-gamma value $c=-3(N^2-1)$ yields the exact algebraic relation

\[
g_s^2=\frac{16\pi^3}{N^2-1}
=\frac{16\pi^3}{N^2}+O(N^{-4}).
\]

## Translation to current vault work

The closest reusable pattern is not path-integral gluing but constrained first-order reduction:

1. specify the six-dimensional action and allowed variations;
2. impose the locality constraint before identifying the local Chern-Simons variables;
3. reduce only the equivariant zero mode;
4. retain the background connection and boundary transgression terms;
5. distinguish the common on-shell subsector from equality of off-shell phase spaces.

For boundary-data gluing, $A$ and $\bar A$ are candidate port fields only after a boundary action and reduced presymplectic form are supplied. This paper does not perform that step. Its result is therefore an action dictionary, not a canonical gluing or Hilbert-space equivalence theorem.

## Verification log

- `Source-derived`: The full section tree, locality constraint, constrained variational equation, zero-mode reduction, two-copy action, boundary-term role, and field-space limitations were reconstructed from the official v1 TeX source and checked against the rendered 48-page PDF.
- `Checked`: Mathematica reproduced $c=-48\pi^3/g_s^2$ from $G_N=-g_s^2/(32\pi^3)$ and $c=3/(2G_N)$, then solved $c=-3(N^2-1)$ to obtain $g_s^2=16\pi^3/(N^2-1)$ and its stated large-$N$ expansion.
- `Checked`: With $\tau_i=-i\sigma_i/2$, Mathematica reproduced $\operatorname{tr}(\tau_i\tau_j)=-\delta_{ij}/2$, $\operatorname{tr}(\tau_i\tau_j\tau_k)=-\varepsilon_{ijk}/4$, and the six-index Levi-Civita contraction used in the cubic hCS reduction as $12$.
- `Blocked`: A full independent replay of the constrained polyvector-to-form identities, the complete six-dimensional wedge-form transgression, and Appendix D's GHY conversion would require a dedicated exterior-calculus implementation with the paper's type decomposition and boundary pullbacks; those long chains remain source-derived.
- `Not independently verified`: The claimed equality of every displayed boundary counterterm, the existence and global completeness of the constrained solution family, and any quantum relation between the KS and Einstein path integrals.
