---
paper id: 2606.31070v1
title: Geometric formulation for Palatini-Cartan gravity
authors:
  - Jasel Berra-Montiel
  - Iván Cortes-Cruz
  - Alberto Molgado
publication date: 2026-06-30T02:58:03
abstract: |-
  The paper analyzes four-dimensional Palatini-Cartan gravity using geometric-covariant formalisms for classical field theory. It recovers the torsion-free and Einstein equations, constructs Lagrangian and multisymplectic momentum maps for gauge symmetries, treats the singular polysymplectic system through a Dirac-Poisson bracket built from a generalized Moore-Penrose inverse of second-class constraints, and performs a space-plus-time decomposition to recover the instantaneous Lagrangian, extended Hamiltonian, and gauge structure.
comments: "40 pages, no figures"
url: https://arxiv.org/abs/2606.31070v1
summary: "A geometric-covariant treatment of Palatini-Cartan gravity supplies a useful comparison point for momentum maps, Noether currents, multisymplectic data, and instantaneous Dirac-Hamiltonian structure."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. The paper is not primarily a new boundary-charge result, but it is useful as a formalism reference for comparing Lagrangian momentum maps, multisymplectic momentum maps, polysymplectic constraints, and instantaneous Hamiltonian data in first-order gravity.

# Geometric-covariant setup

The source begins with a review of geometric-covariant classical field theory. The field bundle, jet bundle, Lagrangian density, Poincare-Cartan form, multisymplectic phase space, polysymplectic constraint algorithm, and space-plus-time decomposition are set up before specializing to Palatini-Cartan gravity.

For local-vault purposes, the relevant pattern is:

$$\begin{align}
\text{covariant Lagrangian data} \quad\longrightarrow\quad \text{momentum map and Noether currents} \quad\longrightarrow\quad \text{multimomenta / polysymplectic constraints} \quad\longrightarrow\quad \text{instantaneous Hamiltonian data}.
\end{align}$$

This is valuable because it follows the same broad chain as CPS notes, but in a geometric mechanics language rather than the Lee-Wald/Iyer-Wald language.

# Palatini-Cartan variables and equations

The Palatini-Cartan model is the first-order tetrad/spin-connection formulation of four-dimensional gravity. The dynamical variables are the coframe and Lorentz connection. The Lagrangian-level analysis recovers:

- the torsion-free condition;
- the Einstein equations;
- gauge symmetries associated with the geometric frame;
- Noether currents from the Lagrangian momentum map.

The technical value is not the field equations themselves, but the way the paper organizes them through momentum maps. The Lagrangian momentum map is associated with the action of the gauge symmetry group on the configuration space, and its Noether currents provide a reference for comparing first-order gravity charge conventions.

# Multisymplectic and polysymplectic data

Within the multisymplectic approach, the paper studies the action of the gauge symmetry group on the multimomenta phase space and constructs an induced momentum map. The stated purpose is to recover the admissible Cauchy data of Palatini-Cartan gravity.

The polysymplectic treatment is important because the model is singular. To obtain the correct field equations, the paper introduces a nontrivial Dirac-Poisson bracket. The bracket is characterized by a generalized Moore-Penrose inverse of the matrix induced by second-class constraints.

For the vault, this is a compact reference for the following transfer:

$$\begin{align}
\text{first-order gravity constraints} \quad\leadsto\quad \text{Dirac-Poisson bracket} \quad\leadsto\quad \text{admissible instantaneous phase data}.
\end{align}$$

This can be compared with local notes where first-order gravity or BF-like systems require separating gauge directions, constraints, and true boundary or corner data.

# Space-plus-time decomposition

The paper finally uses the multisymplectic framework as the starting point for a space-plus-time decomposition. The output is:

- the instantaneous Lagrangian;
- the extended Hamiltonian;
- the gauge structure of the Palatini-Cartan model within an instantaneous Dirac-Hamiltonian formalism.

The local lesson is that the covariant momentum-map data and the instantaneous Hamiltonian data are meant to be compatible descriptions of the same first-order gravity system. This is useful for comparing covariant and canonical treatments of gravitational charges, especially when a boundary analysis later requires knowing which transformations are constraints and which have nontrivial momenta.

# Relation to current projects

- `T1-Wald-CPS` nearby: the paper is not written in Lee-Wald notation, but it handles the same structural question of how symmetries, momenta, and constraints organize first-order gravity.
- `T2-model`: Palatini-Cartan gravity is a direct first-order gravity testbed.
- `T1-symplectic` nearby: multisymplectic and polysymplectic structures are explicit, but the paper is not primarily a boundary symplectic-flux or charge-algebra construction.

This is not high-priority today because it does not center on finite-boundary charges, corner modes, or a new charge algebra. Its best use is as a formalism reference when a local first-order-gravity note needs a clean momentum-map or Dirac-bracket comparison.

# Verification note

No independent tensor or xAct verification was performed for this medium note. The technical chain above is source-derived from the official arXiv abstract and HTML structure. A useful later check would be to reproduce the Palatini-Cartan Euler-Lagrange equations and the second-class constraint matrix in xAct or Mathematica after fixing the paper's local index conventions.
