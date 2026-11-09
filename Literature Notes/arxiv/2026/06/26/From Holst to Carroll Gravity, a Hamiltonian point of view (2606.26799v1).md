---
paper id: 2606.26799v1
title: From Holst to Carroll Gravity, a Hamiltonian point of view
authors:
  - J. Fernando Barbero G
  - Juan Margalef-Bentabol
  - Valle Varo
  - Eduardo J. S. Villaseñor
publication date: 2026-06-25T09:37
abstract: |-
  The paper gives a Hamiltonian analysis of the most general Carroll-invariant Lagrangian obtained from the Holst action. Using Cartan geometry, it identifies the constraint structure, gauge symmetries, Hamiltonian vector fields, and Ashtekar-like variables for the magnetic Carrollian regime.
comments: "21 pages, no figures"
url: https://arxiv.org/abs/2606.26799v1
summary: "A Holst-descended Carroll gravity model separates structure equations, Hamiltonian constraints, gauge directions, and a curvature-driven evolution term in first-order variables."
tags: []
---

Back to [[2026_06_26_overview]].

This is a medium-priority technical note. The paper is close to the Carroll/null-boundary project because it uses Carroll coframe/connection variables and a Hamiltonian constraint analysis, but it does not directly construct null-boundary charges or corner symplectic fluxes.

# Cartan Variables and Action

The basic fields are

$$\begin{align}
A,\Omega,e\in\Omega^1(M,\mathfrak{su}(2)),\qquad \tau\in\Omega^1(M).
\end{align}$$

Here $A$ is the rotational connection, $\Omega$ is the Carroll boost connection, $e$ is the spatial coframe, and $\tau$ is the clock form. The curvature and covariant derivative are

$$\begin{align}
F_A=dA+\frac12[A\wedge_\cdot A], \qquad d_A\Omega=d\Omega+[A\wedge_\cdot\Omega].
\end{align}$$

The Holst-descended Carroll-invariant action is

$$\begin{align}
S(A,\Omega,e,\tau)=\frac12\int_M\left[ \kappa^{-1}\left( 2\tau\wedge\langle e\wedge_\cdot F_A\rangle -\langle[e\wedge_\cdot e]\wedge_\cdot d_A\Omega\rangle \right) +\gamma^{-1}\langle[e\wedge_\cdot e]\wedge_\cdot F_A\rangle \right].
\end{align}$$

The parameter $\gamma$ is the Holst/Immirzi-like parameter. The source later sets $\kappa=1$ while retaining $\gamma$.

# Rotations, Carroll Boosts, and Field Equations

The internal rotation transformations are

$$\begin{align}
\delta_1(Z)A=d_AZ,\qquad \delta_1(Z)e=-[Z,e],\qquad \delta_1(Z)\Omega=-[Z,\Omega],\qquad \delta_1(Z)\tau=0.
\end{align}$$

The Carroll boosts are

$$\begin{align}
\delta_2(y)A=0,\qquad \delta_2(y)e=0,\qquad \delta_2(y)\Omega=d_Ay,\qquad \delta_2(y)\tau=-\langle y,e\rangle.
\end{align}$$

After simplifying the field equations, the useful form is

$$\begin{align}
d_Ae=0,\qquad d\tau+\langle\Omega\wedge_\cdot e\rangle=0,
\end{align}$$

and

$$\begin{align}
F_A\wedge\tau+[e\wedge_\cdot d_A\Omega]=0,\qquad \langle e\wedge_\cdot F_A\rangle=0.
\end{align}$$

The first two equations are the torsion-free Carroll structure equations. The last two equations are the curvature dynamics. The Immirzi parameter drops out of the field equations, while it remains visible in the presymplectic structure.

# Hamiltonian Constraint Mechanism

On a spatial slice $\Sigma$, the configuration variables are

$$\begin{align}
q=(e_t,e,A_t,A,\Omega_t,\Omega,\tau_t,\tau).
\end{align}$$

The velocities enter linearly, so the Legendre map is singular and the Gotay-Nester-Hinds/Dirac constrained algorithm is the appropriate language.

The secondary constraints are

$$\begin{align}
[e\wedge_\cdot(\gamma d_A\Omega-F_A)]+\gamma F_A\wedge\tau=0,
\end{align}$$

$$\begin{align}
d_A(2\gamma e\wedge\tau-[e\wedge_\cdot e]) +\gamma[\Omega\wedge_\cdot[e\wedge_\cdot e]]=0,
\end{align}$$

$$\begin{align}
d_A[e\wedge_\cdot e]=0,\qquad \langle e\wedge_\cdot F_A\rangle=0.
\end{align}$$

The Hamiltonian vector field is organized by a symmetry-adapted decomposition:

$$\begin{align}
X_A=\mathcal L_\xi A+d_A\Lambda+Z_A,
\end{align}$$

$$\begin{align}
X_\Omega=\mathcal L_\xi\Omega-[\Lambda\wedge_\cdot\Omega]+d_A\psi+Z_\Omega,
\end{align}$$

$$\begin{align}
X_e=\mathcal L_\xi e-[\Lambda\wedge_\cdot e]+Z_e,
\end{align}$$

$$\begin{align}
X_\tau=\mathcal L_\xi\tau-\langle\psi\wedge_\cdot e\rangle+dN+Z_\tau.
\end{align}$$

The parameters are

$$\begin{align}
\Lambda=A_t-\xi\lrcorner A,\qquad N=\tau_t-\xi\lrcorner\tau,\qquad \psi=\Omega_t-\xi\lrcorner\Omega,\qquad \xi=\langle e_t\wedge_\cdot e\rangle.
\end{align}$$

The non-gauge residues are

$$\begin{align}
Z_e=0,\qquad Z_A=0,\qquad Z_\tau=0,\qquad Z_\Omega=-N(\star_eF_A).
\end{align}$$

Thus the only true evolution term beyond diffeomorphism, rotation, and Carroll boost is the curvature-driven contribution in $X_\Omega$.

# Time Gauge and Ashtekar-Like Pair

In the time gauge

$$\begin{align}
\tau=0,
\end{align}$$

one has

$$\begin{align}
0=dN-\langle\psi\wedge_\cdot e\rangle =d\tau_t-\langle(\Omega_t-\xi\lrcorner\Omega)\wedge_\cdot e\rangle.
\end{align}$$

The densitized triad is defined as

$$\begin{align}
\widetilde E:=\frac12\left(\frac{\cdot\wedge[e\wedge_\cdot e]}{\mathrm{vol}_0}\right).
\end{align}$$

The presymplectic form becomes

$$\begin{align}
\omega_1=\int_\Sigma \left\langle d_I(A-\gamma\Omega)\wedge_\cdot d_I\left(\frac{1}{2\gamma}[e\wedge_\cdot e]\right) \right\rangle.
\end{align}$$

Using $d_Ae=0$ gives $A=\Gamma$, so the reduced form can be written as

$$\begin{align}
\widehat\omega_1=\int_\Sigma\langle d_I\widetilde E\wedge_\cdot d_I\Omega\rangle\,\mathrm{vol}_0.
\end{align}$$

The Ashtekar-like connection is $\Gamma-\gamma\Omega$, conjugate to $\gamma^{-1}\widetilde E$.

# Use for Carroll and CPS Notes

The paper is useful as a controlled Carrollian first-order model:

- $\tau$ and $e$ give the clock/spatial coframe split.
- $d_Ae=0$ and $d\tau+\langle\Omega\wedge e\rangle=0$ are structure equations.
- $[e\wedge d_A\Omega]+F_A\wedge\tau=0$ and $\langle e\wedge F_A\rangle=0$ are dynamics.
- The Hamiltonian vector field cleanly separates gauge directions from the curvature-driven evolution term $-N(\star_eF_A)$.
- The Immirzi-like parameter changes the symplectic structure without changing the field equations.

The main caution is that the paper assumes a closed orientable $\Sigma$. If the same variables are moved to a null boundary or a finite boundary with corners, the exact terms dropped in the closed-slice analysis may become edge or corner symplectic contributions.

# Verification Note

The formulas above are source-derived from official arXiv HTML/PDF sources. No Mathematica or xAct derivation of the variational equations, constraint algorithm, tangency conditions, or time-gauge reduction was completed.
