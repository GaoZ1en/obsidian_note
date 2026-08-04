---
paper id: 2608.01372v1
title: "Quantization of Galilean Electrodynamics: a non-trivially trivial theory"
authors:
  - Rafael Hernández
  - Juan Miguel Nieto García
  - Ander Urtiaga
publication date: 2026-08-02T16:46
abstract: |-
  Starting from null-reduced five-dimensional Maxwell theory, the paper applies the Dirac--Bergmann algorithm to Galilean electrodynamics, separates its first- and second-class constraints, and argues that there are no local propagating field degrees of freedom. With restrictive spatial boundary conditions, the constrained path integral reduces to a spatially homogeneous quantum-mechanical mode.
comments: "19 pages. LaTeX"
url: https://arxiv.org/abs/2608.01372v1
summary: "A useful constraint-analysis warning: generic-momentum degree counting and quadratic-kernel inversion miss the boundary-sensitive spatial zero mode."
tags: []
---

Back to [[2026_08_04_overview]].

The technically useful distinction is

$$
\text{no local modes at }\vec k\ne0
\quad\not\Longrightarrow\quad
\text{empty global reduced phase space}.
$$

The paper's constraint count is a nonzero-momentum rank statement. Its own path integral retains a spatially homogeneous pair \((q(t),p(t))\), precisely where the Laplacian and the longitudinal/transverse decomposition lose rank.

# Null reduction and Galilean field content

Five-dimensional Maxwell theory is written in coordinates

$$
x^\mu=(x^a,t,s),
$$

with null metric

$$
g_{\mu\nu}
=\begin{pmatrix}
I_{3\times3}&0&0\\
0&0&-1\\
0&-1&0
\end{pmatrix}.
\tag{2.1}
$$

For the massless Galilean sector, \(p_s=-m=0\), so the reduction imposes \(\partial_sA_\mu=0\). The five-dimensional potential is decomposed as

$$
A^\mu=(A^a,\phi_e,\phi_m),
\qquad
A_\mu=(A_a,-\phi_m,-\phi_e).
\tag{2.9}
$$

The reduced Lagrangian is

$$
\mathcal L_{\mathrm{GED}}
=-\frac14F_{ab}F^{ab}
+(\partial_a\phi_m+\partial_tA_a)\partial_a\phi_e
+\frac12(\partial_t\phi_e)^2.
\tag{2.11}
$$

The important structural point is its degenerate velocity dependence: \(\dot A_a\) appears only linearly and \(\dot\phi_m\) does not appear.

# Singular Legendre transform and constraint chain

The momenta are

$$
\pi_a=\partial_a\phi_e,
\qquad
\pi_4=\partial_t\phi_e,
\qquad
\pi_5=0,
\tag{2.13}
$$

and on the primary surface the Hamiltonian is

$$
H_{\mathrm{GED}}
=\int d^3x\left[
\frac12\pi_4^2+\frac14F_{ab}F^{ab}
-\partial_a\phi_m\partial_a\phi_e
\right].
\tag{2.14}
$$

The primary constraints are

$$
\chi_1=\pi_5,
\qquad
\chi_{2,a}=\pi_a-\partial_a\phi_e.
\tag{3.2}
$$

Stabilizing them gives

$$
\chi_3=\partial_a\partial_a\phi_e,
\qquad
\chi_{4,a}=\partial_a\pi_4-\partial_bF^{ba}.
\tag{3.11--3.12}
$$

A naive classification of these eight components produces an odd-dimensional reduced phase space. The missing first-class combination is

$$
\chi_5
=\partial_a\chi_{2,a}+\chi_3
=\partial_a\pi_a.
$$

Together, \(\chi_1\) and \(\chi_5\) are first class, while six independent combinations are second class at generic nonzero spatial momentum. The local count is therefore

$$
10-2(2)-6=0.
$$

The qualifier “at generic nonzero momentum” is essential. At \(\vec k=0\), every constraint containing a spatial derivative changes rank, so this algebraic count cannot decide the global zero-mode sector.

# Gauge generator and surface qualification

Castellani's construction gives one gauge-parameter chain,

$$
G[\alpha]
=\int d^3x\left[
\alpha\,\partial_a\pi_a
+(\partial_t\alpha)\pi_5
\right].
\tag{3.25}
$$

The Hamilton gauge \(\phi_m=0\) must be combined with either Coulomb or Lorenz gauge under the paper's assumptions. On a space with boundary, integration by parts gives

$$
\int_\Sigma\alpha\,\partial_a\pi_a
=-\int_\Sigma(\partial_a\alpha)\pi_a
+\int_{\partial\Sigma}\alpha\pi^an_a.
$$

The paper's compact-support conditions suppress the last term. If those conditions are relaxed, differentiability of the generator requires a boundary prescription and the surface term becomes the natural place to search for edge data or charges. This boundary question is outside the paper's reduction.

# Elliptic field equations and the loss of plane-wave modes

The field equations are

$$
\nabla^2\phi_e=0,
\tag{3.32}
$$

$$
\nabla^2\phi_m+\partial_t^2\phi_e
+\partial_a\partial_tA^a=0,
\tag{3.33}
$$

$$
\nabla^2A^a
-\partial^a(\partial_bA^b+\partial_t\phi_e)=0.
\tag{3.34}
$$

In Coulomb plus Hamilton gauge, boundedness/compact-support assumptions for the gauge-invariant electric and magnetic fields leave

$$
A^a=\partial^ag,
\qquad
\phi_e=\alpha+\beta t,
\qquad
\phi_m=0.
\tag{3.40}
$$

Thus the generic spatial dependence is pure gauge and the gauge-invariant equations are elliptic rather than wave equations. This conclusion depends on the chosen behavior at spatial infinity. Harmonic, asymptotic, or boundary-supported solutions are not classified.

# Constrained path integral and the surviving spatial zero mode

For mixed first- and second-class systems, the phase-space measure has the schematic form

$$
\begin{aligned}
Z={}&\int D\psi\,D\pi\,
\prod_i|\det\{\varphi_i,\rho_j\}|
\delta(\varphi_i)\delta(\rho_i)\\
&\times
\prod_A|\det\{\chi_A,\chi_B\}|^{1/2}
\delta(\chi_A)
e^{i\int(\pi\dot\psi-H)}.
\end{aligned}
\tag{4.1}
$$

After imposing Coulomb gauge and the paper's boundary conditions,

$$
\phi_e=q(t),
\qquad
\pi_4=p(t),
\qquad
A_a=\partial_ag,
$$

and the dynamical part reduces to

$$
S_{\mathrm{red}}
=V\int dt\left(p\dot q-\frac12p^2\right).
\tag{from 4.4}
$$

Therefore the reduced CPS data of this global mode are

$$
\Theta_{\mathrm{red}}=Vp\,\delta q,
\qquad
\Omega_{\mathrm{red}}=V\,\delta p\wedge\delta q.
$$

The source-dependent generating functional yields

$$
\langle\phi_e\phi_e\rangle
\sim\frac{\delta^3(\vec k)}{\omega^2}.
\tag{4.6}
$$

This is not a propagator for local spatial modes. It is the free-particle Green function of the surviving homogeneous coordinate.

# Constraint rank versus the zero mode

At nonzero \(\vec k\), rotate the momentum to \((0,0,k)\). One independent second-class basis is

$$
\left(
\pi_1,\pi_2,-k^2\phi_e,
k^2A_1,k^2A_2,ik\pi_4
\right).
$$

Its Poisson-bracket matrix has determinant

$$
\det C=-k^{14},
$$

so it has rank six for \(k\ne0\). The two first-class constraints can be represented by \(\pi_5\) and \(ik\pi_3\). At \(k=0\), the displayed second-class matrix vanishes. This makes explicit why the local count and the global pair \((q,p)\) are compatible rather than contradictory.

# Relevance to null and boundary gauge models

The reusable workflow is

$$
\text{degenerate quadratic action}
\longrightarrow
\text{complete Dirac chain}
\longrightarrow
\text{generic-}\vec k\text{ rank}
\oplus
\vec k=0\text{ kernel}
\longrightarrow
\text{boundary-conditioned reduced phase space}.
$$

It is useful for Carrollian/Galilean limits and null reductions because it prevents three common identifications:

1. an inverse gauge-fixed kinetic kernel is not automatically a physical propagator;
2. zero local degrees of freedom do not imply an empty boundary or zero-mode sector;
3. a bulk first-class generator is not differentiable until its boundary term has been controlled.

For the vault's boundary/CPS projects, the natural continuation is to replace compact support by a stated asymptotic phase space and redo the rank, differentiability, and reduced-symplectic analysis with the boundary modes retained.

# Verification note

## Checked

- **Mathematica:** direct differentiation of Eq. (2.11) with respect to \(\dot A_a,\dot\phi_e,\dot\phi_m\) reproduced Eq. (2.13). The Legendre transform on the primary surface returned Eq. (2.14).
- **Mathematica:** for \(\vec k=(0,0,k)\), the six-by-six Poisson-bracket matrix of the independent second-class basis above has determinant \(-k^{14}\). Hence it has rank six for \(k\ne0\), while both \(\pi_5\) and \(ik\pi_3\) commute with that basis. At \(k=0\) the matrix rank collapses to zero.
- **Mathematica:** the projector printed in Eq. (3.18),
  \[
  P^{T,+}_{ab}=\delta_{ab}+\frac{k_ak_b}{k^2},
  \]
  acts on \(k_b\) as \(2k_a\). Replacing the plus by a minus gives zero, as a transverse projector must.
- **Distributional check:** \(G(t)=|t|/2\) has a unit jump in \(G'(t)\), hence \(G''=\delta\). Therefore an inverse of \(\partial_t^2\) is piecewise linear, up to sign, boundary prescription, and homogeneous additions; it is not proportional to \(t^2\).

## Blocked

- The complete second-class functional determinant is absorbed into the source's \(D\mu\) and never evaluated. Consequently Eqs. (4.4)--(4.6) are not independently established at the full measure level.
- The paper does not state an asymptotic phase space broad enough to test edge modes. The compact-support reduction cannot decide whether boundary charges survive under weaker falloffs.
- A unique inverse of \(\partial_t^2\) requires temporal boundary conditions or an \(i\epsilon\) prescription, which the paper does not state.

## Failed or source defects

- **Eq. (3.18) fails the projector test.** With the paper's spatial conventions, the displayed plus sign does not annihilate a gradient. The transverse projector required by Eqs. (3.20)--(3.21) has a minus sign.
- **The position-space claim after Eq. (4.6) fails.** The standard one-dimensional inverse of \(\partial_t^2\) is proportional to \(|t-t'|\), modulo prescription and homogeneous terms, not \(t^2\). The momentum-space zero-mode statement can still be retained with its prescription left explicit.
- Calling the theory simply “zero-dimensional” suppresses the surviving canonical pair \((q,p)\). The defensible conclusion is “no local propagating modes under the stated boundary conditions, with a spatial zero-mode quantum mechanics remaining.”
