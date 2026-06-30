---
title: One-Dimensional Quantum Matter And MPS
date: 2026-07-01
summary: "Curated reference on one-dimensional phases, SSH, Ising, AKLT, MPS, SPT order, and transfer-matrix diagnostics."
---

# One-Dimensional Quantum Matter And MPS

## Phase Types In One Dimension

For gapped one-dimensional systems, the durable distinction is:

- trivial phase: adiabatically connected to a product state;
- symmetry-breaking phase: local order parameter and degenerate ground states;
- symmetry-protected topological phase: no local order parameter, but protected edge states or projective virtual symmetry data.

## Standard Models

SSH model:

- free-fermion two-sublattice chain;
- chiral symmetry enables a winding number;
- topological phase supports boundary zero modes under open boundary conditions.

Transverse-field Ising model:

- competition between ferromagnetic order and transverse-field fluctuations;
- domain walls are the natural excitations in the ordered phase;
- duality relates strong- and weak-coupling descriptions.

AKLT model:

- spin-1 chain represented using virtual spin-$1/2$ degrees of freedom;
- valence-bond solid picture;
- edge spin-$1/2$ degrees of freedom and nonlocal string order.

## MPS Transfer Matrix

An MPS has the form

$$
\begin{align}
|\Psi\rangle=\sum_{\{s\}}\operatorname{Tr}(A^{s_1}A^{s_2}\cdots)|s_1s_2\cdots\rangle.
\end{align}
$$

The transfer matrix is

$$
\begin{align}
T=\sum_s A^s\otimes (A^s)^*.
\end{align}
$$

It controls:

- correlation lengths from the leading eigenvalues;
- SSB diagnostics from degeneracy of leading eigenvalues;
- SPT diagnostics from projective representations on the virtual legs.

If a symmetry $U_g$ acts on physical indices,

$$
\begin{align}
\sum_{s'}(U_g)_{ss'}A^{s'}=e^{i\theta_g}V_gA^sV_g^\dagger.
\end{align}
$$

The projective class of $V_g$ is the robust SPT datum.

## Quantum-Information Side Notes

The quantum-information side contains:

- quantum channels via Kraus operators;
- depolarizing, dephasing, and amplitude-damping channels;
- Knill-Laflamme error-correction condition as the criterion for correctable error sets;
- stabilizer-code language, logical operators, and syndrome measurement;
- transversal gates and magic-state injection as fault-tolerant-computing structures.

## Model Structures

The standard models emphasize different structures:

- SSH: Bloch Hamiltonian, chiral symmetry, winding number, boundary zero modes;
- Ising: spin variables, domain-wall variables, duality, symmetry breaking;
- AKLT: virtual spin-$1/2$ degrees of freedom, edge states, string order;
- MPS: transfer-matrix fixed points, correlation length, virtual symmetries;
- SPT: projective virtual symmetry representation instead of a local order parameter.
