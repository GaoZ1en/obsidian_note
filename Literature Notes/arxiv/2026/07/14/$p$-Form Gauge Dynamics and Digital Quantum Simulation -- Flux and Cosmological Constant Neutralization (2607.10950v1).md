---
paper id: 2607.10950v1
title: $p$-Form Gauge Dynamics and Digital Quantum Simulation -- Flux and Cosmological Constant Neutralization
authors:
  - Soo-Jong Rey
publication date: 2026-07-12T22:57
abstract: |-
  The paper constructs a Hamiltonian for finite-group p-form gauge fields on oriented cell complexes, with gauge qudits on p-cells, charged boundary qudits on lower cells, and Gauss and magnetic checks determined by the cellular boundary maps. For a two-form Z2 theory in two spatial dimensions the Gauss law is solved exactly, reducing the redundant plaquette-plus-link encoding to a physical plaquette model. Tube and cap flux fillings with identical boundary loops then exhibit different quench dynamics in exact diagonalization, providing a discrete top-form discharge testbed.
comments: "33 pages; 5 figures"
url: https://arxiv.org/abs/2607.10950v1
summary: "A source-logic reconstruction of how a cellular boundary complex generates Gauss checks, dressed Wilson surfaces, exact physical-space reduction, and flux-domain dynamics."
tags: []
---

Back to [[2026_07_14_overview]].

This is useful as a discrete model of the question “is the boundary an independent degree of freedom or the boundary of a bulk flux region?” The unreduced register contains both plaquette flux and charged link variables; the Gauss law reconstructs the latter as the domain wall of the former. The paper does not develop covariant phase space, but its constraint and reduction chain is unusually explicit.

# Cellular gauge data

Let $\mathcal C$ be an oriented cell complex with boundary sequence

$$
C_{p+1}(\mathcal C;\mathbb Z_k)
\xrightarrow{\partial_{p+1}}
C_p(\mathcal C;\mathbb Z_k)
\xrightarrow{\partial_p}
C_{p-1}(\mathcal C;\mathbb Z_k),
\qquad
\partial_p\partial_{p+1}=0.
$$

A gauge qudit $(Z_f,X_f)$ sits on every $p$-cell $f$ and a charged boundary qudit $(z_a,x_a)$ on every $(p-1)$-cell $a$. Incidence signs $s_{af}$ and $s_{fc}$ are the matrix elements of the boundary maps. The operators carrying the construction are

$$
\mathcal G_a
=x_a\prod_fX_f^{s_{af}},
\tag{1}
$$

$$
\mathcal B_c
=\prod_fZ_f^{s_{fc}},
\tag{2}
$$

$$
\mathcal W_f
=Z_f\prod_a z_a^{-s_{af}},
\qquad
[\mathcal W_f,\mathcal G_a]=0,
\tag{3}
$$

$$
\mathcal K_f
=\prod_a x_a^{s_{af}}.
\tag{4}
$$

The chain condition makes the Gauss checks compatible with the magnetic checks. The dressed Wilson operator combines a bulk $p$-cell insertion with its charged cellular boundary; it is the discrete analogue of attaching boundary matter to an otherwise open gauge operator.

# Higher-form Hamiltonian

The general Hamiltonian is source Eq. (5):

$$
\begin{aligned}
H_{p,d}^{(k)}
={}&\frac{\varepsilon_E}{4}\sum_f(2-X_f-X_f^\dagger)
-\frac{J_B}{2}\sum_c(\mathcal B_c+\mathcal B_c^\dagger)\\
&+\frac m4\sum_a(2-x_a-x_a^\dagger)
-\frac t2\sum_f(\mathcal W_f+\mathcal W_f^\dagger)
-\frac\kappa2\sum_f(\mathcal K_f+\mathcal K_f^\dagger).
\end{aligned}
\tag{5}
$$

The terms respectively measure electric flux, magnetic curvature, charged boundary occupation, gauge-invariant surface motion, and boundary kinetic energy. When $p=d$, there are no spatial $(p+1)$-cells, so the magnetic term is absent. This top-form simplification is what makes the $p=d=2$ model exactly reducible.

# Two-form Gauss law on the square lattice

For $p=d=k=2$, plaquette Pauli matrices are $\sigma_p$ and link matrices are $\tau_\ell$. The one-form Gauss constraint is

$$
\mathcal G_\ell
=\tau_\ell^x\prod_{p\ni\ell}\sigma_p^x
=1.
\tag{11}
$$

Every link on the periodic square lattice bounds two plaquettes, so on the physical subspace

$$
\tau_\ell^x
=\sigma_{p_L(\ell)}^x\sigma_{p_R(\ell)}^x.
\tag{12}
$$

The link excitation is therefore the domain wall between adjacent plaquette-flux bits. For a region $R$ with boundary $\gamma=\partial R$, the gauge-invariant Wilson surface is

$$
\mathcal W[R,\gamma]
=\left(\prod_{p\in R}\sigma_p^z\right)
\left(\prod_{\ell\in\gamma}\tau_\ell^z\right).
\tag{13}
$$

The unreduced Hamiltonian is

$$
\begin{aligned}
H={}&\frac{\varepsilon_E}{2}\sum_p(1-\sigma_p^x)
-t\sum_p\sigma_p^z\prod_{\ell\in\partial p}\tau_\ell^z\\
&-\kappa\sum_p\prod_{\ell\in\partial p}\tau_\ell^x
+\frac m2\sum_\ell(1-\tau_\ell^x).
\end{aligned}
\tag{14}
$$

Solving the constraint gives the plaquette-only physical Hamiltonian

$$
\begin{aligned}
H_{\mathrm{phys}}
={}&\frac{\varepsilon_E}{2}\sum_p(1-\sigma_p^x)
+\frac m2\sum_\ell
\left(1-\sigma_{p_1(\ell)}^x\sigma_{p_2(\ell)}^x\right)\\
&-\kappa\sum_p\prod_{p'\sim p}\sigma_{p'}^x
-t\sum_p\bar\sigma_p^z.
\end{aligned}
\tag{15}
$$

The dressed plaquette flip becomes the physical $\bar\sigma_p^z$ operator. This is the paper's main transferable chain:

$$
\text{cellular Gauss operator}
\longrightarrow
\text{link reconstructed from adjacent fluxes}
\longrightarrow
\text{gauge-invariant surface flip}
\longrightarrow
\text{reduced Hamiltonian}.
$$

# Tube and cap flux fillings

The quench compares two configurations with the same pair of closed domain-wall loops but complementary flux fillings. Their initial energy difference is

$$
E_0^{\mathrm{cap}}-E_0^{\mathrm{tube}}
=\varepsilon_E
\left(|R_{\mathrm{cap}}|-|R_{\mathrm{tube}}|\right).
\tag{18}
$$

The observables are occupied flux area

$$
M(t)=\sum_p
\left\langle\frac{1-\sigma_p^x}{2}\right\rangle_t
\tag{20}
$$

and domain-wall length

$$
L(t)=\sum_\ell
\left\langle\frac{1-\tau_\ell^x}{2}\right\rangle_t.
\tag{21}
$$

Exact diagonalization on the reported finite tori finds that the cap loses roughly $20$--$37\%$ of its occupied area while the tube stays nearly pinned. A sweep of $m/\varepsilon_E$ gives the finite-volume dynamical crossover

$$
\left(\frac m{\varepsilon_E}\right)_c\simeq1.89.
\tag{43}
$$

The $4\times4$ and $6\times4$ early-time normalized trajectories are similar, but the $5\times5$ result deviates; the paper does not claim a controlled thermodynamic extrapolation.

# Boundary interpretation and Brown--Teitelboim analogy

The boundary map $\partial_p$ performs three jobs:

- it defines the Gauss constraint;
- it tells which lower-cell charge dresses an open $p$-form operator;
- after reduction, it reconstructs the charged boundary as the boundary of a flux domain.

This makes the model useful for edge-mode intuition. It also shows its limitation: the link qubits are not independent edge modes after Gauss reduction, although they remain useful in the redundant hardware encoding as local constraint checks.

The Brown--Teitelboim connection is kinematical. A top-form flux region changes through a charged boundary and can model discharge/neutralization. There is no dynamical spacetime metric or gravitational backreaction in the Hamiltonian, and an equal-time domain wall should not be identified directly with a full timelike membrane worldvolume.

# Verification note

Mathematica represented one link and its adjacent plaquettes by three qubits. For

$$
G=X_\ell X_{p_L}X_{p_R},
\qquad
W=Z_\ell Z_{p_L},
$$

it found $[G,W]=0$. With $P_{\mathrm{phys}}=(1+G)/2$, it also found

$$
\left(X_\ell-X_{p_L}X_{p_R}\right)P_{\mathrm{phys}}=0,
$$

independently confirming the local algebra behind Eqs. (11)--(13). The full many-body exact diagonalization, Krylov evolution, Trotter errors, hardware routing, and crossover fit were not rerun; all numerical percentages and scaling claims are source-derived.

Technical relevance is `T1-boundary`, `T1-symmetry`, `T1-charge`, and `T2-model`: the first three refer to the discrete Gauss/boundary/flux construction, not to a continuum CPS charge algebra. Soo-Jong Rey is separately an `A-big-name` signal. The paper remains medium rather than high because its main object is a lattice Hamiltonian and quantum-simulation protocol, not a covariant boundary phase space or asymptotic charge formalism.
