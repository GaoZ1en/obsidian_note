---
paper id: 2608.15393v1
title: Higher-order analogues of colour-kinematics duality in first-order Yang-Mills Feynman diagrams
authors:
  - Leron Borsten
  - Dimitri Kanakaris
  - Hyungrok Kim
publication date: 2026-08-15T19:52
abstract: |-
  Colour-kinematics duality is, even at tree level, not manifest from the standard Lagrangian of Yang-Mills theory in that the usual Feynman-diagram expansion does not follow the kinematic Jacobi identities. For a Lagrangian manifesting colour-kinematics duality, the kinematic Jacobi identities of the Feynman-diagram expansion follow from the existence of a second-order differential operator b acting on the algebra of colour-stripped fields that forms part of the data of a BV-square algebra. We argue that the existence of differential operators of order greater than two implies weaker but nontrivial fragments of kinematic Jacobi identities. We further show that a superspace formulation of the first-order Yang-Mills action in the Batalin--Vilkovisky formalism admits a differential operator of order six in every spacetime dimension. Therefore, the Feynman-diagram expansion of tree and loop scattering amplitudes of the first-order formulation of Yang--Mills theory automatically enjoys a weak form of colour-kinematics duality.
comments: 32 pages
url: https://arxiv.org/abs/2608.15393v1
summary: "A square-zero differential operator of exact order six on first-order Yang--Mills BV fields generates finite higher Koszul identities among b-decorated off-shell diagrams; these are weaker than ordinary numerator Jacobi identities and require a strongly compatible two-form K."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** work with pure first-order Yang--Mills theory in the BV formalism, perturb about the trivial bundle/vacuum, impose the authors' $\mathsf b$-gauge on external legs, and choose a background admitting a normalized two-form $K$ satisfying the stated compatibility conditions. Then the repaired degree-$-1$ operator $\mathsf b$ is square-zero and of exact differential order six, so the top nontrivial Koszul identity yields signed relations among combinations of rooted Feynman trees.

The statement should be rewritten as: **the construction gives a weak, higher-order analogue of colour--kinematics duality at the level of unregulated off-shell first-order Yang--Mills diagrammatics.** It does not give the ordinary graph-by-graph kinematic Jacobi identities, a double-copy construction, or a proof that regulated and renormalized loop amplitudes preserve the same identities.

“In every spacetime dimension” concerns the dimension of the first-order formulation, not arbitrary curved backgrounds. A constant compatible $K$ exists on flat space. On a curved background, the printed condition $\nabla_{[\mu}K_{\nu]\rho}=0$, together with antisymmetry of $K$, actually forces $\nabla K=0$; this is a strong holonomy restriction.

Relevance: **medium detailed** (`T2-model`, `T3-math`).

# From ordinary to higher colour--kinematics identities

For a second-order degree-$-1$ operator $\mathsf b$ on the colour-stripped field algebra, the derived binary bracket is

$$
\Phi_{\mathsf b}^{2}(x,y)
=\mathsf b(xy)-\mathsf b(x)y-(-1)^{|x|}x\mathsf b(y).
$$

If

$$
\mathsf b^2=0,
\qquad
[\mathsf b,Q]=\Box,
$$

the second-order property truncates the Koszul hierarchy after $\Phi_{\mathsf b}^2$ and its homotopy Jacobi relation becomes the kinematic Jacobi identity underlying ordinary colour--kinematics duality.

For a finite exact order $r>2$, the hierarchy instead contains

$$
\Phi_{\mathsf b}^{1},\ldots,\Phi_{\mathsf b}^{r},
\qquad
\Phi_{\mathsf b}^{r+1}=0.
$$

In $\mathsf b$-gauge, $\mathsf b(x_i)=0$ and therefore

$$
\Phi_{\mathsf b}^{2}(x,y)=\mathsf b(xy).
$$

The higher homotopy identities then become signed sums of rooted binary trees whose internal vertices are $\Phi_{\mathsf b}^{2}$ and whose terms carry one higher $\mathsf b$ insertion. The finite-order truncation makes the top identity non-tautological. This constrains combinations of off-shell diagrams, but does not make each cubic numerator obey an ordinary three-graph Jacobi relation.

# First-order Yang--Mills BV complex

The classical first-order action is

$$
S[A,B]
=\int_M \operatorname{tr}\left[
B\wedge\left(dA+\frac12[A,A]\right)
+\frac12g_{\mathrm{YM}}^2B\wedge *B
\right],
$$

where $A$ is a one-form and $B$ is a $(d-2)$-form. Eliminating $B$ gives the usual second-order Yang--Mills action, while the first-order form is cubic with one auxiliary field.

The authors package the BV fields into a subquotient of the thickened de Rham complex

$$
\Omega^\bullet(M)[\theta]/(\theta^2),
\qquad
|\theta|=3-d,
$$

with representative degrees

$$
c,
\qquad
A+B\theta,
\qquad
B^++A^+\theta,
\qquad
c^+\theta.
$$

The free BV differential is

$$
Q=d+g_{\mathrm{YM}}^2\,\partial_\theta *
\mathsf P_{\Omega^{d-2}\theta}.
$$

This construction assumes the trivial gauge bundle and expansion around the trivial vacuum; global bundle sectors are not included.

# Raw operator and square-zero repair

The initial operator is

$$
\widetilde{\mathsf b}
=\mathsf P_A d^\dagger\mathsf P_A
-g_{\mathrm{YM}}^2\partial_\theta *
\mathsf P_{\Omega^{d-1}\theta}
+g_{\mathrm{YM}}^{-2}\theta *^{-1}d^\dagger d
\mathsf P_{\Omega^2}.
$$

It satisfies

$$
[\widetilde{\mathsf b},Q]=\Box,
$$

but does not square to zero. The proposed repair is

$$
\mathsf b=\widetilde{\mathsf b}+[Q,\mathsf w],
\qquad
\mathsf w=K\mathbin{\lrcorner}
\left(\mathsf P_{\Omega^2}\mp\mathsf P_{\Omega^d\theta}\right),
$$

where the two-form $K$ obeys

$$
K\mathbin{\lrcorner}K=\pm1,
\qquad
[\Box,K\mathbin{\lrcorner}]\mathsf P_{\Omega^2}=0,
\qquad
[\Box,K\wedge]\mathsf P_{\Omega^0}=0.
$$

Since $Q^2=0$ and $\mathsf w$ has even degree,

$$
[Q,[Q,\mathsf w]]=0,
$$

so the $Q$-exact deformation preserves $[\mathsf b,Q]=\Box$. The appendix evaluates the block operator products and obtains $\mathsf b^2=0$ after imposing the normalization and commutator conditions.

The paper rewrites the compatibility as

$$
\Box K=0,
\qquad
\nabla_{[\mu}K_{\nu]\rho}=0.
$$

Let $T_{\mu\nu\rho}=\nabla_\mu K_{\nu\rho}$. The second equation makes $T$ symmetric in its first two slots, while the two-form property makes it antisymmetric in its last two slots. Cycling these symmetries gives $T=-T$, hence $\nabla K=0$. Flat space with constant $K$ is therefore a clean realization; a generic curved spacetime is not.

# Differential order and an internal contradiction

The appendix decomposes $\widetilde{\mathsf b}$ into terms of differential orders five, four, and six and concludes

$$
\operatorname{Order}(\widetilde{\mathsf b})=6.
$$

It then bounds the $[Q,\mathsf w]$ contribution and proves that the repaired operator remains of exact order six:

$$
\operatorname{Order}(\mathsf b)=6.
$$

This agrees with the paper's opening summary. It contradicts the main-text and conclusion statements that $\widetilde{\mathsf b}$ is of order four. The appendix's explicit term-by-term maximum supports order six for the raw operator; the order-four wording should be corrected.

# Tree and loop scope

Because the identities are off-shell relations among the same local numerator insertions, any larger tree or unintegrated loop graph containing such a subcombination inherits the vanishing signed sum. This is a diagrammatic algebra statement before integration.

At loop level the paper does not specify a regulator, measure, subtraction scheme, or anomaly analysis. A regulator or counterterm can fail to respect the higher identity. Accordingly, “tree and loop scattering amplitudes automatically enjoy” should not be read as a theorem about finite renormalized amplitudes in an arbitrary scheme.

# Likely use for current projects

- The thickened de Rham/BV presentation is a useful example of how an auxiliary first-order formulation can expose algebraic structure hidden in the second-order action.
- The distinction between an exact operator identity and its realization by regulated amplitudes is directly relevant to the vault's classical-versus-quantum claim discipline.
- The finite Koszul hierarchy provides algebraic background for homotopy-transfer questions, but it does not directly construct a boundary phase space, corner charge, gluing map, or AdS observable.

# Verification log

## Source-derived

- Read the complete 33-page PDF and complete 1,536-line TeX source.
- Visually inspected rendered pages containing the abstract, higher Koszul identities, compatibility conditions, conclusion, and appendix order computation.
- Traced the first-order BV field complex, raw operator, $Q$-exact repair, square-zero conditions, and differential-order argument in the source.

## Checked

Verified: Mathematica represented the two index symmetries of $T_{\mu\nu\rho}=\nabla_\mu K_{\nu\rho}$ on the exact six-element permutation orbit. The combined symmetry matrix had rank six and zero-dimensional nullspace, confirming $T=0$ and hence $\nabla K=0$.

Verified: the graded-commutator expansion gives

$$
[Q,[Q,\mathsf w]]=Q^2\mathsf w-\mathsf wQ^2=0
$$

for $Q^2=0$, so the repair does not alter $[\mathsf b,Q]=\Box$.

Verified: the appendix's displayed orders have maximum six and explicitly conclude both $\operatorname{Order}(\widetilde{\mathsf b})=6$ and $\operatorname{Order}(\mathsf b)=6$.

Assumptions: pure first-order Yang--Mills; trivial bundle/vacuum; $d\geq2$ so the $(d-2)$-form auxiliary field is defined; compatible Hodge structure and boundary/domain choices for $d^\dagger$; normalized parallel $K$; $\mathsf b$-gauge external states; and unregulated diagrammatic identities.

## Failed

Failed: the main text and conclusion call $\widetilde{\mathsf b}$ fourth order, whereas the summary and Appendix B.3 compute it to be sixth order. Both claims cannot be true with the displayed decomposition; the explicit appendix calculation supports sixth order.

## Blocked

Blocked: no regulator, renormalization prescription, or anomaly calculation is provided, so preservation of the higher identities by integrated and renormalized loop amplitudes cannot be checked.

Blocked: no explicit amplitude example or numerator dataset is supplied, so the proposed higher signed diagram relations were not benchmarked on a concrete nontrivial process.

## Not independently verified

Not verified: every graded sign in the general $r$-ary Koszul hierarchy and every block entry in the appendix calculation of $\mathsf b^2$.

Not verified: existence of the required normalized parallel two-form on curved backgrounds beyond the flat constant-$K$ realization.

Not verified: any ordinary colour--kinematics representation, double-copy gravity amplitude, or quantum-level anomaly-free extension; the paper does not claim to construct these.

# Bottom line

The paper gives a coherent higher-order weakening of colour--kinematics duality: a square-zero sixth-order operator yields finite Koszul identities among signed combinations of $\mathsf b$-decorated off-shell diagrams. Its useful content is algebraic and first-order-BV specific. The construction is strongest on flat space with constant $K$, is weaker than graphwise Jacobi, and has not been shown to survive loop regularization and renormalization. The raw operator's differential order is internally misstated in the main text; the appendix supports order six.
