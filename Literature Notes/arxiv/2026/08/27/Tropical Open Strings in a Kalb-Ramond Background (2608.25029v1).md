---
paper id: 2608.25029v1
title: Tropical Open Strings in a Kalb-Ramond Background
authors:
  - Sarthak Duary
  - Vi Hong
  - Sourav Maji
publication date: 2026-08-25T18:16
abstract: |-
  The paper studies an analytically continued tropical open string coupled to a constant Kalb-Ramond field. It proposes a generic sector with a nonlocal bracket proportional to (1-b)^(-1), a distinct constrained sector at b=1, and a bulk-boundary decomposition of the canonical symplectic form.
comments: "17 pages"
url: https://arxiv.org/abs/2608.25029v1
summary: "The boundary variational problem changes at b=1, but the central generic-versus-critical Hamiltonian split fails because the Legendre map is already degenerate for every b."
tags: []
---

See the daily placement and audit in [[2026_08_27_overview]].

# Verdict

**Incorrect.** The endpoint boundary condition changes at (b=1), and the critical-sector Dirac calculation is internally consistent once its constraints are assumed. However, the paper's main Hamiltonian claim is false: the Legendre map does not first drop rank at (b=1). For the gauge-fixed Lagrangian

$$
\mathcal L
=\frac12\dot\Theta^2-\frac12X'^2
+(b-1)\dot X\Theta'-bX'\dot\Theta,
$$

the velocity Hessian is

$$
\frac{\partial^2\mathcal L}
{\partial(\dot X,\dot\Theta)^2}
=\begin{pmatrix}0&0\\0&1\end{pmatrix},
$$

which has rank one for every (b). Thus

$$
\phi_1=P_X-(b-1)\Theta'\approx0
$$

is a primary constraint for every (b), not an invertible momentum definition in the generic sector. Solving it for (Theta') and then imposing an unreduced canonical bracket, as in Eqs. (3.14)--(3.21), omits constraint preservation and does not establish the claimed factor ((1-b)^{-1}).

Carrying the Dirac-Bergmann step through at generic (b) gives

$$
\mathcal H_c
=\frac12P_\Theta^2+bP_\Theta X'
+\frac{b^2+1}{2}X'^2
$$

and the secondary constraint

$$
\phi_2=P_\Theta'+(b+1)X''\approx0.
$$

Their bulk constraint bracket is

$$
\{\phi_1(r),\phi_2(s)\}
=-2\partial_r^2\delta(r-s),
$$

independent of (b). Therefore the asserted divergence of the generic bracket as (b\to1) is an artifact of a partial reduction. The boundary variational problem can still distinguish (b=1), but the advertised singular-to-finite phase-space transition is not proven by the current calculation.

# How to read this paper

1. Read Sec. 3 through the boundary variation, Eq. (3.10); that is the valid source of the endpoint discontinuity at (b=1).
2. Stop at the sentence following Eq. (3.12). (P_X=(b-1)\Theta') contains no (dot X), so it is a primary constraint for all (b).
3. Read Sec. 3.2 as a special-case constrained calculation. Its Hamiltonian, secondary constraint, Neumann Green function, and coefficient (1/2) are consistent, but they do not rescue the omitted generic-sector reduction.
4. Read Sec. 4 as a formal pullback/decomposition of the canonical two-form. The (b)-dependent boundary term is useful, but it does not independently validate Eq. (3.21).

# Complete source map

## 1. Introduction

- Motivates tropical worldsheets as candidate descriptions of the Schwinger-Keldysh wedge region.
- Connects tropological sigma models to foliated/Carrollian structures and to open-string noncommutativity.
- Announces generic and critical (B)-field sectors and a boundary symplectic interpretation.

## 2. Review of tropological open strings

### 2.1 Tropological sigma models

- Tropicalizes the worldsheet and target complex structures to rank-one nilpotent endomorphisms.
- Gives the localization equations and local solutions (X_0(r)), (Theta_0(r)+\theta X_0'(r)).
- Introduces the residual (alpha)-symmetry and the Euclidean bosonic action.

### 2.2 Analytic continuation

- Continues the leaf coordinate (	heta\to it) and adds a pulled-back two-form to keep the action real.
- Derives the Lorentzian equations and two endpoint variational problems.
- Reviews Neumann-like and Dirichlet-like mode solutions and their earlier canonical quantization.

## 3. Tropical open strings in a constant B-field

- Adds $B=b\,dX\wedge d\Theta$, gauge-fixes $\beta=0$, and obtains the $b$-independent bulk equations.
- Derives the endpoint conditions
  $$
  X'+b\dot\Theta=0,
  \qquad
  (b-1)\dot X=0.
  $$

### 3.1 Generic sector (b\neq1)

- Defines (P_X=(b-1)\Theta'), (P_\Theta=\dot\Theta-bX').
- Treats the first relation as invertible on nonzero modes and reconstructs (Theta) from (P_X).
- Claims the nonlocal commutator
  $$
  [X(s),\Theta(r)]
  =-\frac{i}{1-b}
  \left(\vartheta(r-s)-\frac r\pi\right).
  $$
- This is the failed step: the primary constraint is solved only partially and its time preservation is omitted.

### 3.2 Critical sector (b=1)

- Sets (P_X\approx0), builds the total Hamiltonian, and obtains
  $$
  \phi_2=P_\Theta'+2X''\approx0.
  $$
- Inverts the second-class constraint matrix modulo the Neumann zero mode.
- Derives a finite Dirac bracket with coefficient (1/2).
- Proposes a topological boundary gauge theory as an open direction.

## 4. Boundary symplectic structure

### Mathematical preliminaries

- Reviews exact symplectic potentials, closed/nondegenerate two-forms, and the Poisson inverse.

### 4.1 Canonical symplectic structure

- Defines the field-space Liouville potential and canonical two-form for ((X,\Theta;P_X,P_\Theta)).

### 4.2 Bulk-boundary decomposition

- Pulls the canonical form back using the momentum relations.
- Integrates by parts to obtain a (b)-independent bulk term and
  $$
  \Omega_\partial=(1-b)[\delta X\wedge\delta\Theta]_0^\pi.
  $$
- Interprets constant (b) as changing endpoint symplectic data rather than local bulk dynamics.

## 5. Conclusion

- Restates the proposed ((1-b)^{-1}) generic bracket and finite critical Dirac bracket.
- Attributes their difference to cancellation of the first-order coupling at (b=1).
- Leaves the boundary gauge theory and Schwinger-Keldysh interpretation open.

# Theory and conventions

The worldsheet is a strip with

$$
t\in\mathbb R,
\qquad
r\in[0,\pi],
$$

and target coordinates (X) transverse to the tropical leaves and (Theta) along them. A dot and prime denote (partial_t) and (partial_r). The constant Kalb-Ramond background is

$$B=b\,dX\wedge d\Theta.$$

After the stated (alpha)-gauge choice, the action density is

$$
\mathcal L
=\frac12\dot\Theta^2-\frac12X'^2
+(b-1)\dot X\Theta'-bX'\dot\Theta.
$$

The bulk Euler-Lagrange equations are independent of (b):

$$
X''+\dot\Theta'=0,
\qquad
\ddot\Theta-\dot X'=0.
$$

All explicit (b)-dependence is locally a total derivative, but it affects the canonical potential and endpoint variational conditions.

# Endpoint variational problem

The boundary variation is

$$
\delta S\big|_{\partial_r}
=\int dt\left[
(-X'-b\dot\Theta)\delta X
+(b-1)\dot X\delta\Theta
\right]_{0}^{\pi}.
$$

For freely varying (X,Theta),

$$
X'+b\dot\Theta=0,
\qquad
(b-1)\dot X=0
$$

at the endpoints. Hence (b\neq1) enforces (dot X=0) at the boundary, while (b=1) removes this particular endpoint condition. This is a real discontinuity in the allowed boundary data.

It does not imply a discontinuity in the rank of the bulk Legendre map. Boundary-condition rank and velocity-Hessian rank are different statements.

# Generic Dirac-Bergmann analysis

The momenta are

$$
P_X=(b-1)\Theta',
\qquad
P_\Theta=\dot\Theta-bX'.
$$

Since (P_X) contains no (dot X), the primary constraint is

$$
\boxed{
\phi_1=P_X-(b-1)\Theta'\approx0
}
$$

for every (b). Eliminating (dot\Theta=P_\Theta+bX') gives

$$
H_T=\int_0^\pi dr\left[
\frac12P_\Theta^2+bP_\Theta X'
+\frac{b^2+1}{2}X'^2+u\phi_1
\right].
$$

Preservation of (phi_1) yields

$$
\begin{aligned}
\dot\phi_1
&=\{\phi_1,H_T\}\\
&=\partial_rP_\Theta+(b+1)\partial_r^2X
\approx0,
\end{aligned}
$$

so

$$
\boxed{
\phi_2=P_\Theta'+(b+1)X''\approx0
}.
$$

Using

$$
\{X(r),P_X(s)\}=\delta(r-s),
\qquad
\{\Theta(r),P_\Theta(s)\}=\delta(r-s),
$$

one finds

$$
\begin{aligned}
\{\phi_1(r),\phi_2(s)\}
={}&-(b+1)\partial_s^2\delta(r-s)\\
&+(b-1)\partial_s^2\delta(r-s)\\
={}&-2\partial_s^2\delta(r-s).
\end{aligned}
$$

The same second-class differential operator therefore appears for all (b), modulo the boundary-condition-dependent zero modes. The exact inverse kernel must be chosen for the allowed generic endpoint variations; it cannot be obtained by keeping only (phi_1).

If one adopts the same Neumann projector used in Sec. 3.2,

$$
-\partial_r^2G(r,s)=\delta(r-s)-\frac1\pi,
$$

then (C^{12}=-G/2) and the full Dirac bracket has the critical-sector coefficient

$$
\{X(r),\Theta(s)\}_D
=\frac12\partial_sG(r,s)
=-\frac12\left(\vartheta(s-r)-\frac s\pi\right),
$$

not the claimed ((1-b)^{-1}) coefficient. Because the generic endpoint domain is different, a final generic kernel requires a boundary-aware reduction, but the paper's displayed result has already failed before that choice: it was derived without (phi_2).

# Critical sector

At (b=1), the general constraints reduce to

$$
\phi_1=P_X\approx0,
\qquad
\phi_2=P_\Theta'+2X''\approx0,
$$

exactly as in Sec. 3.2. With the Neumann Green function, the paper obtains

$$
\{X(r),\Theta(s)\}_D
=-\frac12\left(\vartheta(s-r)-\frac s\pi\right).
$$

This calculation is consistent as a special case. What fails is the contrast with the generic sector: (b=1) changes the coefficients and boundary conditions, but not the existence or rank of the primary constraint.

# Symplectic bulk-boundary decomposition

The canonical two-form is

$$
\Omega=\int_0^\pi dr\left(
\delta P_X\wedge\delta X
+\delta P_\Theta\wedge\delta\Theta
\right).
$$

Substituting the momentum relations and integrating by parts yields

$$
\Omega=\Omega_{\rm bulk}+\Omega_\partial,
$$

with

$$
\Omega_{\rm bulk}
=\int_0^\pi dr\left[
\delta\Theta\wedge\partial_r\delta X
+\delta\dot\Theta\wedge\delta\Theta
\right]
$$

and

$$
\Omega_\partial
=(1-b)[\delta X\wedge\delta\Theta]_0^\pi.
$$

The algebraic decomposition is correct. Its interpretation is more limited than the paper claims:

- vanishing of (Omega_\partial) at (b=1) is a statement about this endpoint term;
- it does not make the full pulled-back form nondegenerate or perform the Dirac reduction;
- it does not validate the generic bracket obtained from only the primary relation;
- the relevant inverse depends on constraints, zero modes, and the endpoint domain.

# Equation ledger and derivation map

| source equation(s) | input | output | status |
|---|---|---|---|
| (2.4)--(2.10) | tropical limit of A-model data | foliated fields and alpha symmetry | Source-derived |
| (2.12)--(2.27) | analytic continuation | Lorentzian action and prior mode algebra | Source-derived |
| (3.1)--(3.10) | constant (B)-field | bulk equations and endpoint conditions | Checked algebraically |
| (3.12)--(3.21) | generic momentum relation | claimed ((1-b)^{-1}) bracket | Failed |
| (3.23)--(3.35) | (b=1) action | primary/secondary constraints | Checked |
| (3.36)--(3.44) | Neumann Green function | critical Dirac bracket | Checked |
| (4.7)--(4.20) | canonical Liouville form | bulk-boundary decomposition | Checked algebraically |

# Translation into the vault's symplectic language

- A momentum relation without a velocity is a constraint, even if it can be solved for a spatial derivative on nonzero modes.
- Solving one constraint is not the same as constructing the reduced symplectic form. Constraint preservation and the full Dirac matrix must be included before quantization.
- The Neumann zero-mode projector is regulator and boundary data. Changing the endpoint variational problem can change the Green kernel even when the local differential operator is the same.
- The endpoint condition at (b=1) is a genuine boundary statement; it should not be promoted into a bulk Legendre-rank statement.
- The nonlocal step-function kernel, when valid, is a kinematical inverse of a derivative operator. It is not evidence for dynamical signal propagation or a tensor-product factorization.

# Verification log

## Checked

- **Mathematica, exact velocity Hessian:** obtained
  $$
  \operatorname{Hess}_{(\dot X,\dot\Theta)}\mathcal L
  =\begin{pmatrix}0&0\\0&1\end{pmatrix}
  $$
  with rank one independently of (b).
- **Mathematica, Legendre transform:** reproduced
  $$
  \mathcal H_c
  =\frac12P_\Theta^2+bP_\Theta X'
  +\frac{b^2+1}{2}X'^2.
  $$
- **Mathematica, constraint preservation coefficients:** reproduced (phi_2=P_\Theta'+(b+1)X'').
- **Exact distributional algebra:** reproduced the cancellation of all (b)-dependence in (C_{12}=-2\partial_r^2\delta).
- **Green-function check:** with the paper's Neumann projector, reproduced
  $$
  \frac12\partial_sG(r,s)
  =-\frac12\left(\vartheta(s-r)-\frac s\pi\right).
  $$
- **Rendered PDF and TeX comparison:** visually confirmed the gauge-fixed action, boundary conditions, generic momentum step, critical constraints, and symplectic decomposition on PDF pages 7--14.

## Source-derived

- The tropicalization of the A-model, alpha-symmetry, and analytic-continuation prescription.
- The earlier open tropical-string mode solutions and their claimed physical quantization.
- The proposed relation to Schwinger-Keldysh wedge worldsheets and a future topological boundary gauge theory.

## Blocked

- A corrected full reduced phase space for generic (b\neq1) was not completed because the proper Green domain must be derived together with the generic endpoint conditions and zero-mode treatment. This is a new calculation, not a missing algebraic simplification.
- The status of the alpha-symmetry after time-boundary terms and the completeness of the gauge choice $\beta=0$ were not independently reconstructed from the BRST theory.

## Failed

- **Legendre-rank claim:** the Hessian is singular for every (b), contradicting the claim that degeneracy appears only at (b=1).
- **Generic commutator:** Eq. (3.21) follows from imposing a canonical bracket after solving only the primary relation. The omitted secondary constraint changes the reduced bracket, so the ((1-b)^{-1}) result is not established.
- **Naive-limit diagnosis:** the divergence as (b\to1) is produced by the incomplete generic reduction and cannot be used as evidence that the critical sector has a newly finite phase space.

## Not independently verified

- Whether a different, fully boundary-aware generic reduction yields another (b)-dependent kernel.
- Existence or topological character of the proposed boundary gauge theory.
- The global Schwinger-Keldysh interpretation of the tropical worldsheet.

# Bottom line for current projects

The paper contains a useful boundary-variation example but not a valid generic-versus-critical reduced-phase-space theorem. The safe reusable statement is:

$$
b=1\text{ removes one endpoint condition and the explicit boundary two-form,}
$$

while the bulk Legendre map remains constrained for all (b). Any future use of the nonlocal bracket should begin from the full constraint set, specify the endpoint domain and zero-mode projector, and invert the reduced symplectic form only after those choices are fixed.
