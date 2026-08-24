---
paper id: 2608.21121v1
title: Target-space fusion of classical topological defects
authors:
  - Saskia Demulder
  - Chuying Wang
publication date: 2026-08-21T22:00
abstract: |-
  Classical sigma-model defect fusion is formulated as a fibre-product reduction of target-space supports, intrinsic two-forms, and connection data. Curvature horizontality gives local descent, fibre holonomy supplies the global obstruction, and admissible loci can split into several classical non-invertible branches.
comments: "48 pages, 5 figures, 1 table"
url: https://arxiv.org/abs/2608.21121v1
summary: "A precise target-space descent algorithm that separates local two-form descent from global connection descent and exposes branch structure before quantization."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct as a classical target-space fusion prescription on regular descent-admissible strata, with separate local curvature and global connection conditions. The examples recover known $SU(2)$ and Hopf T-duality compositions and construct TsT and T-dual biconjugacy candidates. The paper does not prove a general associativity theorem, a quantum fusion rule, or dynamical CPS gluing.

Reason codes: `T1-boundary`, `T1-symplectic`, `T1-symmetry`, `T2-model`.

This is exceptionally relevant to the vault's gluing vocabulary because it makes three distinctions that must remain explicit: raw composition versus descended object, local two-form descent versus global connection descent, and one fusion branch versus a disjoint family. Its construction is nevertheless target-space/defect descent. It does not replace the action, allowed variations, reduced canonical variables, or response sewing needed in dynamical CPS gluing.

# Defect data and topologicality

A classical defect between sigma models with targets $X_L$ and $X_R$ is described by

$$
(Y,F,\nabla),
\qquad
Y\subset X_L\times X_R,
$$

where $Y$ is the support, $F$ is the intrinsic two-form, and $\nabla$ is the compatible rank-one connection data. With bulk fluxes $H_L,H_R$,

$$
dF=p_L^*H_L-p_R^*H_R.
$$

Locally, if $db_i=H_i$, then

$$
F=p_L^*b_L-p_R^*b_R+dA,
$$

and $\int_D A$ is the defect-line term in the action.

Using the neutral metric

$$
G=g_L\oplus(-g_R),
$$

the source quotes the intrinsic topologicality criterion

$$
(TY)^\perp\subset TY,
\qquad
\ker F=(TY)^\perp,
\qquad
(\widetilde G^{-1}\widetilde F)^2=\operatorname{id}
$$

on $TY/(TY)^\perp$. These conditions are checked after descent; conformality alone is weaker.

# Raw composition

For composable defects $(Y_{LI},F_{LI},\nabla_{LI})$ and $(Y_{IR},F_{IR},\nabla_{IR})$, the raw support is the fibre product

$$
Y_{LR}^{\rm raw}=Y_{LI}\times_{X_I}Y_{IR}.
$$

The raw differential data are

$$
F_{LR}^{\rm raw}
=\operatorname{pr}_{LI}^*F_{LI}
+\operatorname{pr}_{IR}^*F_{IR},
$$

$$
\nabla_{LR}^{\rm raw}
=\operatorname{pr}_{LI}^*\nabla_{LI}
\otimes\operatorname{pr}_{IR}^*\nabla_{IR}.
$$

The intermediate $H_I$ twists cancel. Projection forgets the intermediate target variable,

$$
\pi_{LR}(x_L,x_I,x_R)=(x_L,x_R),
$$

but its image alone is not yet the fused defect: the two-form and connection must be insensitive to motion along the factorization fibres.

# Local and global descent

Choose a smooth locus $Z\subset Y_{LR}^{\rm raw}$ such that $\pi_{LR}|_Z$ is a surjective submersion with embedded image. For every vertical vector

$$
V\in\ker d(\pi_{LR}|_Z),
$$

local curvature descent requires

$$
\iota_V(F_{LR}^{\rm raw}|_Z)=0.
$$

Because $dF_{LR}^{\rm raw}$ is pulled back from the external targets, Cartan's formula then also gives fibre invariance. Hence the restricted raw form is basic and uniquely descends:

$$
(\pi_{LR}|_Z)^*F_{LR}=F_{LR}^{\rm raw}|_Z.
$$

This does not suffice for the connection. Flatness along a factorization fibre can coexist with nontrivial holonomy. Global descent additionally requires

$$
\operatorname{Hol}_{\nabla_{LR}^{\rm raw}}(\gamma_{\rm fib})=1
$$

for every closed fibre loop. Disconnected fibres also require compatible identifications between their connection data.

The paper usefully reserves $\star_{\rm loc}$ for support/two-form reduction without global connection descent and $\star$ for full connection-level fusion. This is directly analogous to distinguishing a local formal sewing relation from a globally defined quantum or prequantum object.

# Branches and examples

Descent can hold only on several connected regular strata $Z_a$. Each yields a labelled branch

$$
(Y_{LR}^{(a)},F_{LR}^{(a)},\nabla_{LR}^{(a)}),
$$

and the fusion product is their collection after the topologicality test.

- For symmetry-preserving $SU(2)$ WZW bi-branes, the support reproduces the interval of biconjugacy classes and the intrinsic form descends branchwise.
- For a degree-$p$ Hopf T-duality defect composed with its reverse, curvature horizontality fixes a constant fibre shift and connection holonomy restricts it to $\mathbb Z_p$. The resulting $p$ graph defects are already a classical non-invertible decomposition.
- The TsT construction is locally defined for continuous deformation parameter $\zeta$, but full rank-one connection descent on compact tori occurs only on a discrete arithmetic locus with additional sheet identifications.
- The T-dual biconjugacy example has two regular sheets that coalesce at a fold; singular non-clean loci are explicitly kept separate from regular descent.

# Associativity boundary

The paper composes two defects at a time and supplies examples, but it does not state or prove that iterated fusion is independent of parenthesization after choices of regular strata, branch labels, and disconnected-fibre identifications. Fibre products are naturally associative before reduction, yet branchwise descent may interact with singular loci and global connection choices. Therefore this source should not be cited as a proof of the vault's sequential-gluing associativity theorem.

# Independent verification

## Source-derived

- The official 48-page PDF and complete TeX source were inspected.
- The raw fibre product, sum/tensor-product data, curvature horizontality, fibre holonomy, and final topologicality test appear as separate steps.
- The paper explicitly places quantization beyond scope and distinguishes $\star_{\rm loc}$ from full $\star$.

## Checked

- The twist cancellation follows directly:

$$
dF_{LI}+dF_{IR}
=p_L^*H_L-p_I^*H_I+p_I^*H_I-p_R^*H_R.
$$

- Cartan's formula confirms that horizontality plus externally pulled-back $dF^{\rm raw}$ implies vertical invariance.
- The need for holonomy beyond curvature is mathematically necessary: a flat connection on a circle can have nontrivial monodromy.

## Not independently verified

- The detailed $SU(2)$ two-form identities, Hopf connection normalizations, TsT integrality locus, and fold geometry were not recomputed symbolically.
- The claimed relation to quantum Verlinde fusion is contextual; no quantization or quantum equivalence is proved.
- No general clean-intersection, associativity, CPS, Hilbert-space, or continuum theorem was verified.

# Takeaway for gluing

Reuse the descent ledger:

1. form the raw composite;
2. identify vertical intermediate directions;
3. impose local horizontality;
4. impose global holonomy and disconnected-fibre compatibility;
5. retain regular branches and separately test the desired dynamics/topologicality;
6. do not infer associativity merely from the raw fibre product.

That ledger is valuable, but it supplements rather than replaces boundary-response dynamics.
