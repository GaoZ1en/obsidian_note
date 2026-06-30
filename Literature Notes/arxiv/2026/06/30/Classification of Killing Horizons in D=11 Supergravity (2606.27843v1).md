---
paper id: 2606.27843v1
title: Classification of Killing Horizons in D=11 Supergravity
authors:
  - Jan Gutowski
  - Chettha Saelim
  - Martin Wolf
publication date: 2026-06-26T08:30:20
abstract: |-
  The paper classifies supersymmetric degenerate Killing horizons in eleven-dimensional supergravity with compact spatial cross section. In Gaussian null coordinates, solutions split according to the lightcone chirality of the Killing spinor at the horizon. A nonzero negative-chirality component forces the fields to be independent of the affine coordinate and hence gives a near-horizon geometry; when this component vanishes, high-supersymmetry solutions are constrained to pp-waves.
comments: "32 pages"
url: https://arxiv.org/abs/2606.27843v1
summary: "D=11 supersymmetric degenerate horizons are classified through Gaussian null data and lightcone spinor components."
tags: []
---

Back to [[2026_06_30_overview]].

# Gaussian null data for D=11 horizons

The horizon is described in Gaussian null coordinates $(u,r,y^i)$. The null coframe has the form

$$
e^+=du,
\qquad
e^-=-\frac12r^2\beta\,du+dr+r\alpha_i\,dy^i,
\qquad
e^a=e^a{}_i\,dy^i.
$$

The metric is

$$
g=2e^+e^-+\delta_{ab}e^ae^b.
$$

The near-horizon limit is the scaling

$$
(u,r,y^i)\mapsto (u/\epsilon,\epsilon r,y^i),
\qquad \epsilon\to0,
$$

which keeps only the leading horizon data. The classification asks when a general degenerate Killing horizon is forced to be equivalent to such a near-horizon geometry.

# Four-form decomposition and horizon equations

The eleven-dimensional four-form is decomposed relative to the null frame as

$$
F=du\wedge dr\wedge\Psi
+dr\wedge Z
+r\,du\wedge W
+X,
$$

where $\Psi$, $Z$, $W$, and $X$ live on the spatial cross section, with possible $r$-dependence before the near-horizon restriction is proven.

The Bianchi identity gives the source constraints

$$
\mathcal L_r(rW)=\tilde d\Psi,
\qquad
\tilde dW=0,
\qquad
\mathcal L_rX=\tilde dZ,
\qquad
\tilde dX=0.
$$

Together with the supergravity field equation and Einstein equation, these relations give the hierarchy that the Killing spinor identities constrain.

# Killing spinor split by lightcone chirality

The Killing spinor equation is

$$
\nabla_A\epsilon+
\left(
-\frac{1}{288}\Gamma_A{}^{BCDE}F_{BCDE}
+\frac{1}{36}F_{ABCD}\Gamma^{BCD}
\right)\epsilon=0.
$$

The spinor is decomposed by lightcone chirality,

$$
\epsilon=\epsilon_++\epsilon_-,
\qquad
\Gamma_\pm\epsilon_\pm=0.
$$

The central dichotomy is whether $\epsilon_-|_{r=0}$ vanishes. This is a geometric rather than merely algebraic split: the nonzero case produces integral identities on the compact cross section, while the zero case constrains the spinorial Lie derivative along the horizon generator.

# Nonzero epsilon_minus gives near-horizon geometry

If $\epsilon_-|_{r=0}\neq0$, the paper derives a compact-cross-section identity that first forces the trace of the radial derivative of the spatial metric to vanish,

$$
\dot\gamma^i{}_i=0,
$$

and then strengthens this to

$$
\dot\gamma_{ij}=0.
$$

The same chain sets

$$
Z=0,
\qquad
\dot\Psi=\dot W=\dot X=\dot\alpha=\dot\beta=0.
$$

An induction then shows that the remaining data are independent of $r$. Thus the full horizon geometry is isometric to the near-horizon limit, not merely tangent to it at $r=0$.

# Zero epsilon_minus and high supersymmetry

When $\epsilon_-|_{r=0}=0$, the analysis proceeds through spinor bilinears and the spinorial Lie derivative. The first conclusion is that the spinorial Lie derivative along the horizon-generating Killing vector vanishes.

For solutions preserving more than thirteen supersymmetries, the branch with $\beta\neq0$ is ruled out by the algebraic constraints on the spinors. This is the high-supersymmetry rigidity part of the paper: a large amount of supersymmetry leaves too little room for a nontrivial Gaussian null one-form $\beta$.

# pp-wave endpoint for N greater than 13

In the $\beta=0$ branch, the field equations and spinor constraints imply

$$
\Psi=0,
\qquad
W=0,
$$

and then further integral identities and algebraic spinor conditions remove the remaining non-pp-wave data. The endpoint metric is of pp-wave type,

$$
g=2\,du\,dr+\frac12\gamma_{ij}(r)\,dy^i\,dy^j,
$$

with the remaining flux data constrained accordingly. The classification statement is therefore:

$$
N>13
\quad\Longrightarrow\quad
\text{supersymmetric degenerate Killing horizon is a pp-wave in the zero-}\epsilon_-\text{ branch}.
$$

# Use in supergravity horizon notes

The paper is useful as a horizon-rigidity reference in supergravity. It gives a clean example of how Gaussian null data, compactness of the spatial cross section, and Killing spinor identities combine to force near-horizon geometry or pp-wave structure.

It remains medium priority because it is a classification theorem, not a charge, symplectic, or first-law construction. It is most useful when a future note needs reliable D=11 horizon geometry constraints.

# Verification boundary

This note is source-derived from the official arXiv TeX source. I did not independently verify the spinorial integrability identities, gamma-matrix algebra, or compact-cross-section integral estimates. The formulas here should be treated as a map of the classification proof, with the detailed spinor algebra still to be checked if imported into a supergravity derivation.
