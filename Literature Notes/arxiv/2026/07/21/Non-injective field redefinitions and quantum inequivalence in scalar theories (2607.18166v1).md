---
paper id: 2607.18166v1
title: Non-injective field redefinitions and quantum inequivalence in scalar theories
authors:
  - Bin Zhu
publication date: 2026-07-20T17:09
abstract: |-
  The paper studies polynomial scalar-field redefinitions with unit Jacobian determinant that are local diffeomorphisms but not globally injective. Their pullback sigma models are locally free and canonically equivalent on each branch, while changing real-fiber multiplicity makes the global position spectrum and quantum Hilbert-space representation inequivalent to one ordinary free multiplet.
comments: "16 pages"
url: https://arxiv.org/abs/2607.18166v1
summary: "A sharp global obstruction to treating locally canonical field redefinitions as global quantum equivalences: nonconstant sheet multiplicity survives despite a unit Jacobian."
tags: []
---

Back to [[2026_07_21_overview]].

This paper is directly useful for perturbative formalism: it isolates a failure mode that is invisible to every local vertex, Jacobian, and canonical-commutator check. A field redefinition can be locally exact and volume preserving while its global fibers change multiplicity, so no single global unitary identifies the two coordinate descriptions.

# A unit-Jacobian map as a local field coordinate

Let

$$
\mathcal F:\mathbb R^n_\varphi\longrightarrow\mathbb R^n_{\mathcal Q},
\qquad
\mathcal Q^I=\mathcal F^I(\varphi),
$$

be polynomial with

$$
\det J_{\mathcal F}=1,
\qquad
(J_{\mathcal F})_{Ia}=\partial_a\mathcal F_I.
$$

The inverse-function theorem gives a local inverse branch \(\mathcal G_s:\mathcal V\to\mathcal U_s\) around every point, but says nothing about one global inverse. Pull back a free massive multiplet:

$$
S_n[\varphi]
=\frac{f_\phi^2}{2}\int d^dX\sqrt h
\left[
h^{\mu\nu}g_{ab}(\varphi)\partial_\mu\varphi^a\partial_\nu\varphi^b
+m^2|\mathcal F(\varphi)-\mathcal Q_\star|^2
\right],
$$

$$
g_{ab}
=\partial_a\mathcal F^I\partial_b\mathcal F^I
=(J_{\mathcal F}^{\mathsf T}J_{\mathcal F})_{ab}.
$$

On each branch this is exactly

$$
S_n
=\frac{f_\phi^2}{2}\int d^dX\sqrt h
\left[(\partial\mathcal Q^I)^2
+m^2(\mathcal Q^I-\mathcal Q_\star^I)^2\right].
$$

Moreover,

$$
\det g=(\det J_{\mathcal F})^2=1.
$$

Thus the field-space metric is locally flat and has unit volume density. Globally it is incomplete when the local coordinate map fails to cover target translations with one sheet.

# Local equations and equal-mass normal modes

Varying in the source variables factorizes the Euler--Lagrange equation:

$$
(J_{\mathcal F})_{Ia}
\left[-\nabla^2\mathcal Q^I
+m^2(\mathcal Q^I-\mathcal Q_\star^I)\right]=0.
$$

Pointwise invertibility then gives

$$
(-\nabla^2+m^2)(\mathcal Q^I-\mathcal Q_\star^I)=0.
$$

No global inverse is needed. If \(v_s\in\mathcal F^{-1}(\mathcal Q_\star)\), then

$$
\left.\partial_a\partial_bV\right|_{v_s}
=f_\phi^2m^2g_{ab}(v_s).
$$

Because the kinetic matrix is \(f_\phi^2g_{ab}(v_s)\), every local normal mode has physical mass \(m\). Multiple preimages are therefore locally indistinguishable perturbative vacua.

# Cotangent lift and formal canonical algebra

The local field change lifts to

$$
\mathcal Q=\mathcal F(\varphi),
\qquad
\Pi=J_{\mathcal F}^{-\mathsf T}\pi,
$$

and preserves the canonical one-form:

$$
\Pi_I\,d\mathcal Q^I=\pi_a\,d\varphi^a.
$$

In the finite-dimensional Schrödinger test,

$$
\widehat{\mathcal Q}_I=M_{\mathcal F_I},
\qquad
\widehat\Pi_I=-i\Delta_I,
\qquad
\Delta_I=(J_{\mathcal F}^{-\mathsf T})_{Ia}\partial_a.
$$

Because \(\det J=1\), the inverse is the cofactor matrix. The Piola identity

$$
\partial_a(\operatorname{cof}J_{\mathcal F})_{Ia}=0
$$

makes the momenta formally symmetric on compactly supported test functions. Pointwise duality

$$
\Delta_I\mathcal F_J=\delta_{IJ}
$$

gives the formal relations

$$
[\widehat{\mathcal Q}_J,\widehat\Pi_I]
=i\delta_{IJ},
\qquad
[\widehat\Pi_I,\widehat\Pi_J]=0.
$$

These statements remain local/formal: they do not prove essential self-adjointness, completeness of the momentum flows, or a regular global Weyl representation.

# The Alpöge cubic fiber

For three fields \(x,y,z\), set \(s=1+xy\) and

$$
A=s^3z+y^2s(4+3xy),
$$

$$
B=y+3xs^2z+3xy^2(4+3xy),
$$

$$
C=2x-3x^2y-x^3z.
$$

The normalized map

$$
\mathcal F_3=(-A/2,B,C)
$$

has

$$
\det J_{\mathcal F_3}=1.
$$

Nevertheless,

$$
v_0=(0,0,-1/4),\qquad
v_+=(1,-3/2,13/2),\qquad
v_-=(-1,3/2,13/2)
$$

all map to

$$
\mathcal Q_\star^{(3)}=(1/8,0,0).
$$

The fiber is encoded by

$$
P_{A,B,C}(T)=CT^3-2T^2+BT-2A.
$$

If \(\tau\) is a simple real root and \(\rho=P'(\tau)\), the preimage is reconstructed by

$$
x=\frac2\rho,\qquad
y=\tau-\frac\rho2,\qquad
z=\frac54\rho^2-\frac32\tau\rho-\frac C8\rho^3.
$$

A comparison target has

$$
P_0^{(3)}(T)=(T-1)(T^2-T+2),
$$

so only one root is real. The number of real sheets is therefore three on one regular open set and one on another.

The interacting-looking action

$$
\begin{aligned}
S_3=\frac{f_\phi^2}{2}\int d^dX\bigg[
&\frac14(\partial A)^2+(\partial B)^2+(\partial C)^2\\
&+m^2\left((-A/2-1/8)^2+B^2+C^2\right)
\bigg]
\end{aligned}
$$

is locally free in the variables

$$
q^I=f_\phi[\mathcal F_3^I(\varphi)-\mathcal Q_\star^{(3)I}],
$$

not in \(x,y,z\) separately.

# Spectral multiplicity as the global obstruction

Define

$$
\mathcal N_{\mathcal F}(\mathcal Q)
=\#\{\varphi:\mathcal F(\varphi)=\mathcal Q\}.
$$

The area formula decomposes the source Hilbert space almost everywhere over regular values as

$$
L^2(\mathbb R^n_\varphi)
\simeq
\int_{\mathbb R^n_{\mathcal Q}}^\oplus
\mathbb C^{\mathcal N_{\mathcal F}(\mathcal Q)}\,d^n\mathcal Q.
$$

Ordinary coordinate multiplication on \(L^2(\mathbb R^n_{\mathcal Q})\) has multiplicity one. A tuple whose joint spectral multiplicity changes from three to one cannot be globally unitarily conjugate to it. This is stronger and more precise than saying only that “the inverse is multivalued.”

The paper extends the construction to four fields. The fourth coordinate changes the generic fiber polynomial to degree five and is not a spectator; again one finds target regions with three versus one real preimage.

# Local equivalence versus global quantum equivalence

The source establishes the implication chain

$$
\det J_{\mathcal F}=1
\Longrightarrow
\text{local diffeomorphism and unit measure}
\Longrightarrow
g=J^{\mathsf T}J
\Longrightarrow
\text{local free equations and local canonical form}.
$$

What fails is the next step:

$$
\text{local canonical equivalence}
\centernot\Longrightarrow
\text{one global unitary equivalence}.
$$

Noninjectivity produces a varying sheet multiplicity, incomplete pullback geometry, incomplete translation flows, and a nonconstant joint spectral multiplicity. The formal CCR do not erase those global data.

# Transfer to perturbative field-redefinition work

1. A perturbative map \(u\mapsto u+\kappa v[u]\) may be perfectly valid on a local formal neighborhood while still lacking a global inverse. Claims should be restricted to that neighborhood unless properness/completeness is proved.
2. Equality of local symplectic forms and path-integral Jacobians is not a proof of global Hilbert-space equivalence.
3. The right global audit is a fiber/domain/completion audit: count branches, identify incomplete ends, determine momentum self-adjoint extensions, and compare spectral multiplicities.
4. This paper does not by itself invalidate the local equivalence theorem; it sharply states its scope.

# Verification note

**Checked.** Mathematica independently reproduced

$$
\det J_{\mathcal F_3}=1,
\qquad
\det(J_{\mathcal F_3}^{\mathsf T}J_{\mathcal F_3})=1,
$$

and verified that all three displayed points \(v_0,v_+,v_-\) map exactly to \((1/8,0,0)\).

**Source-derived.** The area-formula direct integral, global Riemannian covering argument, Stone--von Neumann multiplicity conclusion, four-field quintic analysis, and relation between incomplete geometry and incomplete momentum flow were not independently reproved.

**Open mathematical boundary.** Formal symmetry of \(-i\Delta_I\) does not decide its deficiency indices or essential self-adjointness. The paper also does not construct a completed functional Schrödinger representation or nonperturbative path integral for the full QFT.
