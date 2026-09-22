---
paper id: 2609.21398v1
title: "A Differential Form Description of Partial Entanglement Entropy: Testing a Killing Vector Construction in Covariant Phase Space"
authors:
  - Chuanjia Zhu
  - Dong-Hui Du
  - Wen-Cong Gan
  - Fu-Wen Shu
publication date: 2026-09-18T07:15
abstract: |-
  The authors formulate partial-entanglement-entropy thread flows as differential forms, reproduce the vacuum AdS3 interval entanglement contour from their flux, and test whether a finite current obtained by integrating Iyer-Wald surface-charge forms along a Rindler-AdS3 family can reproduce the central PEE flow. The tested exact-Killing-vector construction fails to match both Poincare components, while exact-form improvements, other currents, and more general generators remain open.
comments: "26 pages"
url: https://arxiv.org/abs/2609.21398v1
summary: "A direct CPS test whose useful result is a sharply delimited obstruction, not a no-go theorem for PEE currents."
tags: []
---

# Result

The technically useful statement is negative and narrow. A PEE flow on a static slice can indeed be represented by a closed differential form whose flux gives the entanglement contour. However, for the central source of a vacuum AdS$_3$ interval, the paper's finite candidate current does **not** reproduce the known PEE flow. The candidate is obtained by inserting, at each Rindler parameter $a$, an exact Killing vector of that background into the standard Iyer--Wald surface-charge form, holding that generator fixed during the phase-space variation, and then integrating in $a$.

This rules out that particular representative and prescription. It does not rule out

- an allowed exact-form improvement $\mathrm{d}\boldsymbol{Y}$;
- a different CPS current;
- a field-dependent-generator treatment including the missing $\delta\tilde\xi$ contribution;
- non-Killing generators satisfying the required closedness and flux conditions; or
- noncentral sources, higher dimensions, or time-dependent regions.

Reason codes: `T1-Wald-CPS`, `T1-boundary`, `T1-symplectic`.

# Source map

## Section 1: Introduction

Motivates a point-resolved refinement of bit threads. Ordinary bit-thread flows are nonunique; PEE threads are labelled by a boundary point and are intended to encode the local contribution to entanglement. The paper asks whether the differential form associated with a PEE flow can be realized by a CPS current.

## Section 2: Bit threads and PEE threads

- Reviews max-flow/min-cut and the norm bound on a divergenceless bit-thread field $V_A^a$.
- Defines the entanglement contour $s_A(x)$ and two-point PEE $\mathcal I(x,y)$.
- Uses the source-resolved flow $V_x^a$ and the superposition
  $$
  V_A^a(y,z)=\int_A \mathrm{d}^{d-1}x\,V_x^a(y,z).
  $$

## Section 3: Differential forms

- Reviews the bit-thread $(d-1)$-form $\boldsymbol w$ and its linear perturbation.
- Defines the PEE form $\boldsymbol{\tilde w}_x$ by Hodge duality.
- Shows that closedness is equivalent to $\nabla_aV_x^a=0$.
- Reconstructs the vacuum AdS$_3$ interval contour from the boundary flux.

## Section 4: CPS candidate and Rindler-AdS$_3$ test

- Starts from the Iyer--Wald surface-charge relation
  $$
  \boldsymbol{k}_\xi=\delta\boldsymbol{Q}_\xi-\xi\mathbin{\cdot}\boldsymbol\Theta.
  $$
- Proposes a representative-level identification of the PEE form with an integrable current, allowing in principle an exact improvement.
- Varies a Rindler-AdS$_3$ metric through the acceleration parameter $a$.
- Solves the exact Killing equations at each $a$, computes the surface-charge one-form, integrates it from $a=0$ to $a=1$, transforms the resulting vector field to Poincare coordinates, and compares it with the known central PEE flow.
- Finds that the available constants cannot make both Poincare components agree throughout the wedge.

## Section 5: Discussion

Interprets the mismatch as a failure of the tested construction rather than a general obstruction. It lists exact improvements, alternative currents, broader generators, arbitrary source points, higher dimensions, and time dependence as open directions.

## Appendix A: Differential-form bit threads

Derives the correspondence between divergenceless flows and closed forms and rewrites max-flow/min-cut as a constrained flux maximization.

## Appendix B: CPS review

Reviews $\delta\boldsymbol L=\boldsymbol E^\phi\delta\phi+\mathrm d\boldsymbol\Theta$, the symplectic current, Noether current and charge, and the fundamental identity
$$
\boldsymbol\omega(\phi,\delta\phi,\mathcal L_\xi\phi)
=\mathrm d\boldsymbol k_\xi.
$$

## Appendix C: Rindler-AdS$_3$ Killing fields

Solves all six Killing equations and parametrizes the nontrivial modes by four exponentials.

## Appendix D: Integrated candidate flow

Performs the $a$ integrals, expands them using incomplete beta functions, and gives $V^\rho_{\mathrm{cps},x}$ and $V^u_{\mathrm{cps},x}$ before the Poincare transformation.

# PEE forms and the contour check

On a $d$-dimensional spatial slice, the source-labelled PEE flow $V_x^a$ is mapped to a $(d-1)$-form
$$
\boldsymbol{\tilde w}_x
=\frac{1}{(d-1)!}\epsilon_{\mu_1\cdots\mu_{d-1}b}V_x^b
\,\mathrm dx^{\mu_1}\wedge\cdots\wedge\mathrm dx^{\mu_{d-1}}.
$$
The conventions are

- $\epsilon_{i_1\cdots i_{d-1}z}=\sqrt g$ for the tensor volume form;
- $\varepsilon_{i_1\cdots i_{d-1}z}=1$ for the alternating symbol; and
- the Hodge star is that of the spatial slice, not the full spacetime.

Then
$$
\mathrm d\boldsymbol{\tilde w}_x
=(\nabla_aV_x^a)\boldsymbol\epsilon.
$$
Thus a divergenceless flow gives a closed form. For a surface $\Sigma$ homologous to $A$,
$$
\int_A\boldsymbol{\tilde w}_x
=\int_\Sigma\boldsymbol{\tilde w}_x
=s_A(x).
$$

For the unit-radius Poincare-AdS$_3$ slice
$$
\mathrm ds^2=\frac{\mathrm dr^2+\mathrm dz^2}{z^2},
$$
the source-resolved flow quoted by the paper is
$$
V_{r_0}^{\mu}
=\frac{1}{4G_N}
\frac{2z^2(r-r_0)}{\big((r-r_0)^2+z^2\big)^2}
\left(z,\frac{z^2-(r-r_0)^2}{2(r-r_0)}\right),
$$
where the ordered components are $(V^r,V^z)$. The one-form is
$$
\boldsymbol{\tilde w}_{r_0}
=\frac{1}{z^2}\left(V^z_{r_0}\,\mathrm dr-V^r_{r_0}\,\mathrm dz\right).
$$
Its flux through the regulated boundary interval $[-R,R]$ is
$$
\frac{1}{z^2}\int_{-R}^{R}V^z_{r_0}\,\mathrm dr
=\frac{R(R^2-r_0^2+z^2)}
{2G_N\big((R-r_0)^2+z^2\big)\big((R+r_0)^2+z^2\big)}.
$$
Taking $z\to0^+$ gives
$$
s_A(r_0)=\frac{R}{2G_N(R^2-r_0^2)}
=\frac{c}{6}\frac{2R}{R^2-r_0^2},
\qquad c=\frac{3}{2G_N}.
$$

# The CPS ansatz and its ambiguity

For a diffeomorphism-invariant theory,
$$
\boldsymbol k_\xi
=\delta\boldsymbol Q_\xi-\xi\mathbin{\cdot}\boldsymbol\Theta.
$$
If the relevant potential is integrable, the paper writes $\boldsymbol k_\xi=\delta\boldsymbol j_\xi$ and proposes, on a spatial slice,
$$
\boldsymbol{\tilde w}_x
=\boldsymbol{\tilde j}_\Sigma+\mathrm d\boldsymbol Y,
\qquad
\boldsymbol{\tilde j}_\Sigma
=\left.\boldsymbol{\tilde j}_{\tilde\xi}\right|_\Sigma.
$$
For $\boldsymbol Y|_{\partial A}=0$, the exact term does not change the interval flux. The explicit calculation fixes a representative and sets this improvement aside.

There are two distinct dependencies in the construction:

1. The background metric $\hat g(a)$ varies with the Rindler parameter.
2. The exact Killing solution $\tilde\xi(a)$ also varies with $a$.

The paper retains the full $a$-dependence when evaluating $\boldsymbol k_{\tilde\xi(a)}[\partial_a g]$, but at each fixed $a$ uses the standard fixed-generator formula. It therefore omits a field-dependent-symmetry contribution proportional to $\delta\tilde\xi$. The integrated object is a candidate current for that prescription, not automatically a charge obtained by fully transporting every structure along the family.

# Rindler-AdS$_3$ calculation

The metric and exterior region are
$$
\mathrm ds^2=-F\,\mathrm d\tau^2+F^{-1}\mathrm d\rho^2+\rho^2\mathrm du^2,
\qquad
F=\frac{\rho^2}{L^2}-a^2,
\qquad \rho>aL.
$$
For $\delta g_{\mu\nu}=\partial_ag_{\mu\nu}\,\delta a$, raising both indices with the background metric gives
$$
h^{\tau\tau}=\frac{2a\,\delta a}{F^2},
\qquad
h^{\rho\rho}=2a\,\delta a,
\qquad
h^{uu}=0,
\qquad h=0.
$$
The nonzero derivatives needed by the charge form are
$$
\begin{aligned}
\nabla^\rho h^{\tau\tau}&=-\frac{4a\,\delta a\,\rho}{L^2F^2},
&\nabla^\rho h^{\rho\rho}&=-\frac{4a\,\delta a\,\rho}{L^2},\\
\nabla^\tau h^{\tau\rho}&=-\frac{4a\,\delta a\,\rho}{L^2F^2},
&\nabla^u h^{\rho u}&=\frac{2a\,\delta a}{\rho^3}.
\end{aligned}
$$

The Killing solution is
$$
\begin{aligned}
\tilde\xi^\tau&=A-\frac{\rho}{a^2\sqrt F}\partial_\tau f,\\
\tilde\xi^\rho&=\sqrt F\,f,\\
\tilde\xi^u&=B-\frac{\sqrt F}{a^2\rho}\partial_uf,
\end{aligned}
$$
with
$$
f(\tau,u)=\sum_{\sigma=\pm1}\sum_{\epsilon=\pm1}
c_{\sigma\epsilon}
\exp\left(\sigma\frac{a}{L}\tau+\epsilon au\right).
$$
On $\tau=0$, only
$$
C=c_{++}-c_{-+},
\qquad
D=c_{+-}-c_{--}
$$
enter the pulled-back current. The surface-charge components reduce to
$$
\begin{aligned}
\tilde k^{\tau\rho}
&=\left(\frac{aA}{8\pi\rho G_N}
-\frac{Ce^{au}+De^{-au}}{8\pi G_NL\sqrt F}\right)\delta a,\\
\tilde k^{\tau u}
&=-\frac{a(Ce^{au}-De^{-au})}{8\pi\rho G_NLF^{3/2}}\delta a.
\end{aligned}
$$
The pulled-back one-form is integrated from $a=0$ to $a=1$. The recurring monomial integral is
$$
\int_0^a\frac{x^n\,\mathrm dx}{\sqrt{E^2-x^2}}
=\frac{E^n}{2}
\boldsymbol B_{a^2/E^2}\left(\frac{n+1}{2},\frac12\right),
\qquad E=\frac\rho L.
$$
This produces a three-parameter family controlled by $A,C,D$.

# Why the matching fails

The known central PEE flow is obtained by setting $r_0=0$ above. The Rindler candidate is transformed to Poincare components through
$$
\begin{aligned}
V^z_{\mathrm{cps}}
&=-\frac{rz}{L}V^u_{\mathrm{cps}}
-\frac{2z^2}{\sqrt{(L^2+r^2+z^2)^2-4L^2r^2}}
\frac{L^2-r^2+z^2}{L^2-r^2-z^2}V^\rho_{\mathrm{cps}},\\
V^r_{\mathrm{cps}}
&=\frac{L^2-r^2+z^2}{2L}V^u_{\mathrm{cps}}
-\frac{4z^2}{\sqrt{(L^2+r^2+z^2)^2-4L^2r^2}}
\frac{zr}{L^2-r^2-z^2}V^\rho_{\mathrm{cps}}.
\end{aligned}
$$
Because both candidate components depend linearly on only $A,C,D$, equality throughout the wedge would put the known flow in a three-dimensional function space. The explicit comparison fails: parameters that improve one component or locus leave a residual in the other.

The correct interpretation is therefore:

> No $A,C,D$ reproduces both components of the central PEE flow throughout the relevant region for this integrated, unimproved, exact-Killing candidate.

It is not correct to rewrite this as “CPS cannot describe PEE threads.”

# Translation to the vault's CPS language

The paper is useful as a controlled example of a family-dependent construction. The background, Killing generator, Hodge star, and current representative all participate. A finite integral in the parameter $a$ should not be interpreted as canonical unless these structures are transported consistently.

For regional observable-algebra sewing, the exact-form ambiguity is also not merely cosmetic. Although $\int_A\mathrm d\boldsymbol Y$ vanishes when $\boldsymbol Y|_{\partial A}=0$, that boundary condition is an additional input. On a cut with corners or independently variable boundary data, the endpoint term can carry precisely the information one is trying to preserve.

Reusable objects are:

- the source-labelled closed form $\boldsymbol{\tilde w}_x$;
- the flux condition $\int_A\boldsymbol{\tilde w}_x=s_A(x)$;
- the decomposition $V_A=\int_A V_x$ and its linearization;
- the separation between representative ambiguity $\mathrm d\boldsymbol Y$ and field-dependent-generator terms; and
- the three-parameter obstruction test as a finite-dimensional diagnostic, not a structural theorem.

# Verification log

## Checked

- **PEE flow divergence:** Mathematica gives
  $$
  z^2\left[\partial_r(z^{-2}V^r)+\partial_z(z^{-2}V^z)\right]=0
  $$
  for $z>0$ and $r\ne r_0$.
- **Contour flux:** direct symbolic integration over $r\in[-R,R]$ reproduces the finite-$z$ expression above, and the $z\to0^+$ limit gives $R/[2G_N(R^2-r_0^2)]$.
- **Metric variation:** an independent Christoffel-symbol computation reproduces $h=0$ and all four displayed nonzero covariant derivatives.
- **Killing solution:** substituting one mode $e^{\sigma a\tau/L+\epsilon au}$ with $\sigma^2=\epsilon^2=1$ makes all six Killing-equation residuals vanish. Linearity then covers the four-mode sum.
- **Incomplete-beta identity:** Mathematica reduces the residual to zero for integer $n\ge0$ and $0<a<E$.
- **Mismatch sample:** with $L=G_N=1$ and the standard inverse Rindler map, a 50-digit evaluation at four interior points gives rank $3$ for the eight-by-three candidate matrix and rank $4$ after adjoining the known PEE target. The least-squares residual norm is approximately $0.1948$. This independently falsifies global equality for the three-parameter candidate, but is not a symbolic classification of every possible CPS improvement.

## Source-derived

- The Iyer--Wald component formula and its reduction to $\tilde k^{\tau\rho}$ and $\tilde k^{\tau u}$.
- The full incomplete-beta series for $V^\rho_{\mathrm{cps}}$ and $V^u_{\mathrm{cps}}$.
- The Poincare transformation formulas and the scope assigned to the mismatch by the authors.

## Assumptions

- Einstein gravity in three dimensions with the paper's Iyer--Wald normalization.
- Exterior Rindler region $\rho>aL$, positive $L$ and $G_N$, and a static $\tau=0$ slice.
- Pointwise fixed-generator variation: $\delta\tilde\xi$ is omitted at each $a$.
- The explicit comparison fixes the source at $r_0=0$ and the current representative with no fitted exact-form term.
- The flux-preserving improvement requires the stated endpoint condition on $\boldsymbol Y$.

## Not independently verified

- A complete symbolic proof of the nonmatching statement over the whole Rindler wedge.
- Whether the surface-charge component reduction contains no convention-dependent sign change relative to the cited normalization.
- Existence, admissibility, and boundary behavior of an exact improvement that repairs the mismatch.
- The assumed persistence of the source-wise decomposition $\delta V_A=\int_A\delta V_x$ for general perturbations.

# Reading verdict

Read Sections 3 and 4 plus Appendices B--D. The introductory bit-thread review can be skimmed. The main value is not a successful CPS construction; it is the explicit separation of (i) a valid closed-form description of PEE flows from (ii) a failed, carefully delimited attempt to obtain that form from an integrated exact-Killing Iyer--Wald current.
