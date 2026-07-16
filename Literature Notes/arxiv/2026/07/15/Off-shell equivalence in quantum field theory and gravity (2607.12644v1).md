---
paper id: 2607.12644v1
title: "Off-shell equivalence in quantum field theory and gravity"
authors:
  - Iberê Kuntz
  - Stefano Liberati
publication date: 2026-07-14T11:23:30
abstract: |-
  Field redefinitions preserve on-shell physics but do not by themselves decide whether two quantum descriptions are equivalent off shell. The paper formulates an operational criterion using the Vilkovisky--DeWitt effective action and scalar observables obtained by pairing configuration-space tensors with transported probes. Examples in scalar theory and metric f(R) gravity distinguish direct, parent-mediated, local, branchwise, and global equivalence, and show why constrained auxiliary-field quantization is different from freely quantizing a scalar--tensor theory.
comments: ""
url: https://arxiv.org/abs/2607.12644v1
summary: "A useful rulebook for off-shell comparisons: transport the field-space geometry, probes, boundary conditions, branches, constraints, and path-integral measure rather than comparing expressions that merely have the same coordinate form."
tags: []
---

Back to [[2026_07_15_overview]].

The paper is relevant to the vault's “strictly off shell before EOM” rule, but its geometry is configuration-space geometry in the Vilkovisky--DeWitt sense. It does not compute a spacetime presymplectic potential, covariant phase-space current, or surface charge.

# Metric $f(R)$ as a constrained parent reduction

The clean starting point is the multiplier form of metric $f(R)$ gravity. Schematically,

$$\begin{align}
S_{\rm parent}[g,\chi,\lambda] =\int\sqrt{-g}\, \left[f(\chi)+\lambda(R-\chi)\right].
\end{align}$$

The multiplier equation imposes $\chi=R$, and the $\chi$ equation gives

$$\begin{align}
\lambda=f'(\chi).
\end{align}$$

Keeping the multiplier makes the equivalence to metric $f(R)$ a constrained parent reduction. Eliminating it first produces the two-field action

$$\begin{align}
S[g,\chi] =\int\sqrt{-g}\, \left[f(\chi)+f'(\chi)(R-\chi)\right],
\end{align}$$

whose $\chi$ equation is

$$\begin{align}
f''(\chi)(R-\chi)=0.
\end{align}$$

Thus the reduced description is equivalent only on a patch where $f''(\chi)\ne0$. At zeros of $f''$, extra branches can occur. The distinction is not cosmetic:

- the multiplier parent is globally constrained;
- the two-field action has a branch-dependent equation;
- a scalar--tensor path integral over independently fluctuating $g$ and $\chi$ is a different quantum object unless the parent constraint and its measure factors are retained.

# Jordan and Einstein frames on nondegenerate patches

The usual Legendre and Weyl maps require an invertible patch, including the positivity condition on the scalar multiplying the Ricci term. The paper treats an equivalence claim as a tuple, not just as a field map:

$$\begin{align}
(\text{fields},\,S,\,G_{AB},\,\text{domain},\, \text{boundary data},\,\text{probes},\,\text{measure}).
\end{align}$$

Every entry must be pushed forward or pulled back. A clock, ruler, matter coupling, source, or boundary condition kept in the same coordinate-looking form after the field redefinition generally defines a different experiment.

This is particularly important for gravitational energy. Equality of two local energy densities is not the correct test. One should transport the same charge or probe pairing and then compare its scalar value.

# LSZ equivalence versus off-shell response

A nonlinear scalar redefinition can leave S-matrix elements unchanged while altering a susceptibility computed from a source that is declared “linear” in both coordinate systems. The reason is simple: the two source couplings are not related by pullback.

If $\varphi=\varphi(\psi)$, then a source term

$$\begin{align}
\int J\varphi
\end{align}$$

becomes

$$\begin{align}
\int J\,\varphi(\psi),
\end{align}$$

not $\int J\psi$. The standard equivalence theorem is therefore an on-shell statement and cannot certify equality of arbitrary off-shell Green functions or response kernels.

The transferable lesson is:

$$\begin{align}
\text{same field-coordinate formula}
\ne
\text{same observable}.
\end{align}$$

# Vilkovisky--DeWitt covariant Hessian

The ordinary action Hessian is not a configuration-space tensor. Under a nonlinear field change it acquires a term proportional to the first derivative of the action. The VDW covariant Hessian is

$$\begin{align}
S_{;AB} =S_{,AB}-\Gamma^C{}_{AB}S_{,C}.
\end{align}$$

The connection term restores field-redefinition covariance away from shell. In a gauge theory the construction must also be horizontal with respect to gauge orbits; the metric, connection, measure, and allowed probes all participate.

This field-space connection should not be confused with:

- the spacetime Levi-Civita connection;
- the field-space exterior derivative used to define a CPS two-form;
- a boundary symplectic connection or edge-mode extension.

The paper's VDW result can organize an off-shell effective action, but it cannot replace a derivation of $\Theta$, $\omega$, or $Q_\xi$.

# Probe pairings and charge-type readouts

The operational observable is a scalar pairing of a configuration-space tensor with an admissible probe. The paper includes charge-like protocols of the form

$$\begin{align}
\mathcal O_{(\Sigma,\eta)} =\int_\Sigma\eta\,j\cdot d\Sigma,
\end{align}$$

where the hypersurface $\Sigma$ and smearing $\eta$ are part of the probe data. Under a field redefinition, comparing the same physical readout requires transporting all of $(j,\Sigma,\eta)$ and the boundary conditions that make the integral meaningful.

For the gravitational-energy project, this translates into a concrete audit:

1. specify the field map and its invertibility domain;
2. transport the asymptotic or finite-boundary source data;
3. transport the symmetry generator and charge smearing;
4. compare the same integrated observable;
5. only then use constraints or EOM according to the stated sector.

# Direct, parent-mediated, and branchwise equivalence

The paper separates several notions that are often conflated.

## Direct equivalence

There is an invertible map between the two field spaces and every part of the theory/probe tuple is transported.

## Parent-mediated equivalence

Two descriptions arise as reductions of a common constrained parent. Equality depends on how the constraint, determinant, and boundary data are implemented.

## Local or branchwise equivalence

The map is valid only where its Jacobian and the relevant Hessians do not degenerate. Distinct branches require distinct path integrals and gluing rules.

## Global equivalence

The local patches, branch identifications, gauge quotients, boundary conditions, and measures agree globally. Local agreement of equations does not establish this.

For a multibranch system, partition functions may be summed branchwise,

$$\begin{align}
Z=\sum_\alpha Z_\alpha,
\end{align}$$

but the connected generator

$$\begin{align}
W=-i\log Z
\end{align}$$

is not the sum of the individual $W_\alpha$. This blocks a common but incorrect shortcut in off-shell comparisons.

# Constrained parent quantization

At the quantum level, imposing an auxiliary equation inside the path integral requires the appropriate functional delta distribution and its Jacobian or determinant. Quantizing the enlarged field space freely and later imposing a quantum equation of motion does not reproduce the same measure.

The metric $f(R)$ conclusion is therefore precise:

- metric $f(R)$ and its properly constrained auxiliary parent can define the same quantum theory;
- the scalar--tensor action with independently integrated metric and scalar generally defines another quantum theory;
- an apparent “quantum inequivalence” can simply be a comparison between these two different objects.

Boundary terms and endpoint conditions are part of this statement. An integration by parts or field map that changes them can change the off-shell theory even when bulk EOM agree.

# Translation to the gravitational-energy project

| Off-shell-equivalence datum | Local gravitational-energy use |
|---|---|
| invertibility domain | state where the metric/auxiliary-field map is valid |
| branch label | do not combine disconnected solution sectors implicitly |
| transported probe | compare the same boundary charge or energy pairing |
| transported boundary condition | preserve fixed sources and admissible variations |
| VDW metric/connection | covariantize the effective action in field coordinates |
| parent constraint and determinant | distinguish reduction from free enlarged-field quantization |
| gauge-horizontal probe | quotient pure gauge directions before interpreting a response |

The paper is a methods reference for formulating an equivalence statement. It does not supply a new gravitational surface-charge formula, which is why it remains medium priority.

# Verification boundary

- The scalar field-redefinition example and the $f(R)$ branch logic were followed at the level of the displayed source equations.
- The VDW gauge-independence theorem, infinite-dimensional functional determinants, global branch gluing, endpoint-compatible parent measure, and real-time CTP extension were not independently reproduced.
- Standard VDW discussions in the paper are in-out/Euclidean. A causal gravitational-response calculation would need a separate CTP--VDW construction.
- No metadata or source-page inspection is counted as an independent mathematical check.
