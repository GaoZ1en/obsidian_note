---
paper id: 2607.26140v1
title: "CasimirRFM: A Mathematica package for Riemann-flat compactifications with Casimir energies"
authors:
  - Bruno Valeixo Bento
publication date: 2026-07-28T18:00
abstract: |-
  CasimirRFM is a Mathematica package for constructing Riemann-flat compactification manifolds and evaluating one-loop Casimir potentials and local energy densities for massless spectra with twisted boundary conditions. It combines finite affine quotient groups, invariant metrics and forms, spin structures, holonomy representation traces, and Ewald-accelerated lattice sums.
comments: "30 pages, 4 tables; GitHub link in the arXiv record"
url: https://arxiv.org/abs/2607.26140v1
summary: "A reusable Mathematica workflow that separates quotient geometry, spin and twist data, representation traces, and Ewald-accelerated Casimir sums."
tags: []
---

[[2026_07_30_overview|Back to the 2026-07-30 arXiv overview]]

This is a spectral-tooling note rather than a CPS note. Its useful abstraction is the reduction of a quotient-image sum to a holonomy character times a lower-dimensional shifted lattice sum on the invariant subspace of each group element.

# Riemann-Flat Quotients and Package Data

An orientable Riemann-flat manifold is represented as

$$\begin{align}
\mathcal F_k=T^k/\Gamma, \tag{2.1}
\end{align}$$

where each $\gamma\in\Gamma$ acts freely by

$$\begin{align}
z\longmapsto D_\gamma z+b_\gamma, \qquad D_\gamma\in SO(k)\cap SL(k,\mathbb Z). \tag{2.2}
\end{align}$$

The package represents a group element as

$$\begin{align}
g=\{D_\gamma,\{b_1,\ldots,b_k\},\sigma_\gamma\}, \tag{2.4}
\end{align}$$

including the sign of its spin lift.

The geometry workflow is:

1. `DefGenerator`, `GetAllowedShifts`, and `GetGroup` construct the affine group;
2. `ActsFreelyQ` tests whether the quotient action is free;
3. `GetInvariantMetric` solves

$$\begin{align}
D_\gamma^TGD_\gamma=G; \tag{2.14}
\end{align}$$

4. `GetModuliSpaceMetric` extracts the lower-dimensional scalar metric from the Einstein--Hilbert kinetic term;
5. `GetInvariantForms` computes point-group invariant real differential forms;
6. `SpinStructures` imposes the lattice and lift constraints.

The source explicitly warns that a symbolic invariant metric must still be restricted to its positive-definite region. Likewise, the returned invariant real forms need not form an integral cohomology basis suitable for flux quantization.

# Spin Structures, Spectra, and Holonomy Traces

A compatible spin structure is encoded by $h$ with

$$\begin{align}
(I-D_\gamma^T)h\in\mathbb Z^k, \tag{2.19}
\end{align}$$

and

$$\begin{align}
p\sigma_\gamma =h\cdot(pb_\gamma) \pmod{\mathbb Z}. \tag{2.20}
\end{align}$$

A spectrum is an association of bosonic and fermionic field records. Each record may specify multiplicity, tensor rank, self-duality or Weyl conditions, and a field-specific twist

$$\begin{align}
\texttt{"TwistedBoundaryConditions"}\to h.
\end{align}$$

The default is periodic bosons and the selected spin vector for fermions. Holonomy traces are evaluated in $SO(D-2)$ little-group representations, including symmetric traceless tensors, antisymmetric $p$-forms, spinors, Weyl spinors, and gamma-traceless Rarita--Schwinger fields.

This separation is important: the quotient geometry enters through $(D_\gamma,b_\gamma,G)$, the boundary condition through $h$, and the field content through representation characters.

# From the Image Sum to Casimir Branes

The lower-dimensional one-loop potential is

$$\begin{align}
V_{\mathrm{Cas}} =-\frac{\Gamma(s)}{2\pi^s|\Gamma|}
\sum_{\mathbf r,\gamma,n}^{\sim} \int_{[0,1]^k}d^kz\,\sqrt G\, \frac{ \operatorname{Tr}_{\mathbf r}(D_\gamma) e^{2\pi i h\cdot n}
}{ |z-(D_\gamma z+b_\gamma+n)|^D
}, \qquad s=\frac D2. \tag{2.21}
\end{align}$$

Projecting to the invariant subspace of $D_\gamma$ reduces one group-element contribution to

$$\begin{align}
\mathcal E(\gamma) =-\widehat\delta_h \frac{\Gamma(s_\gamma)}{2\pi^{s_\gamma}} \frac{\sqrt{G_\parallel}}{|\Gamma|}
\sum_{\xi\in\Xi_\gamma} \frac{ e^{2\pi i\beta_\gamma\cdot\xi}
}{ |\xi+b_\gamma^\parallel|_\parallel^{2s_\gamma}
}, \tag{2.22}
\end{align}$$

where

$$\begin{align}
s_\gamma =s-\frac{k-k'}{2}.
\end{align}$$

The selector $\widehat\delta_h$ is fixed by the integer solvability condition in Eq. (2.23). Each holonomy element therefore behaves like an effective $k'$-dimensional Casimir source supported on its invariant subspace.

`CasimirEnergyDensity` evaluates the integrand of Eq. (2.21) pointwise. It omits the factor $1/|\Gamma|$, because that factor belongs to replacing an integral over the quotient by an integral over the covering torus.

# Ewald Summation and Numerical Control

The shifted twisted lattice sum is split into a real-space incomplete-gamma sum, a reciprocal-space incomplete-gamma sum, and two correction terms in Eq. (2.24). The split parameter $\alpha$ cancels in the exact expression but redistributes numerical work after truncation.

Lattice points are enumerated in a metric ellipsoid,

$$\begin{align}
|n+c|_G^2<r^2, \tag{2.25}
\end{align}$$

rather than a rectangular box. A Schur-complement recursion gives coordinate bounds one dimension at a time, Eqs. (2.26)--(2.28).

For both Ewald branches, the omitted tail is approximated by a continuum radial integral. The requested tolerance $\varepsilon$ is split between the two sums, and the monotone incomplete-gamma estimates in Eqs. (2.29)--(2.32) determine cutoffs through `FindRoot`. The paper therefore describes $\varepsilon=10^{-p}$ as targeting roughly $p$ decimal digits, not as a certified error bound.

The implementation compiles its summation kernel to C with speed-oriented settings and `$MachinePrecision`. Practical precision is consequently limited to roughly sixteen decimal digits regardless of a more ambitious requested tolerance.

# Type-IIB Compactification Example

The worked example is Type IIB supergravity on $T^6/\mathbb Z_8$. Its generator has a $1/8$ shift in the sixth direction and spin lift $\sigma_g=1/2$. The package reports:

- eight affine group elements;
- five invariant metric moduli;
- four compatible spin structures;
- identity-holonomy bosonic and fermionic traces both equal to $128$;
- at $G=I$ and default $\varepsilon=10^{-4}$,

$$\begin{align}
V_{\mathrm{Cas}}=98697.9
\end{align}$$

  for the fully periodic choice;
- for

$$\begin{align}
h=(1/2,1/2,1/2,1/2,0,0),
\end{align}$$

$$\begin{align}
V_{\mathrm{Cas}}=51872.6;
\end{align}$$

- two generator-associated Casimir branes wrapping the last two directions.

The local bosonic and fermionic densities cancel at the second brane, explaining why it is absent from the total density plot. These values are demonstration outputs, not an external numerical benchmark.

# A Practical Mathematica Route

The intended end-to-end use is:

1. define the affine generators $(D_\gamma,b_\gamma,\sigma_\gamma)$;
2. construct $\Gamma$ and verify freeness;
3. enumerate compatible spin structures;
4. solve for symbolic invariant $G$ and choose a positive-definite numerical point;
5. define the massless spectrum and twists;
6. use `ReducedLatticeSum` for one holonomy element;
7. apply `TracedSum` after representation traces and `CasimirPotential` after the group sum;
8. use `CasimirEnergyDensity` and `CasimirBranes` for local profiles;
9. use `RFMGrad` and `RFMHessian` for numerical moduli derivatives.

Parallelization is expected to be supplied externally through `ParallelTable`, `ParallelSum`, or related Wolfram Language constructs.

# Verification Boundary

Checked with Sage: the $SO(8)$ little-group dimensions used in the identity-holonomy Type-IIB trace are

$$\begin{align}
\dim(\text{graviton})=35, \qquad \dim(\text{two-form})=28, \qquad \dim(\text{self-dual four-form})=35,
\end{align}$$

so

$$\begin{align}
35+28+28+35+2=128
\end{align}$$

bosonic degrees of freedom. A Weyl spinor has dimension $8$ and a gamma-traceless Weyl gravitino has dimension $8\cdot8-8=56$, giving

$$\begin{align}
2\cdot56+2\cdot8=128
\end{align}$$

fermionic degrees of freedom.

Not independently verified: the quotient-to-invariant-sublattice reduction, spin-lift enumeration, Ewald identity, cutoff estimates, package functions, numerical potentials, and density plots. The arXiv source contains the template and Type-IIB notebooks but not the `CasimirRFM.wl` implementation, so no package function was executed. The analytic lattice checks mentioned in the source are commented-out TeX rather than active benchmark output.
