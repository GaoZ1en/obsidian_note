---
paper id: 2608.08292v1
title: "Complex CFTs: Holography and Interfaces"
authors:
  - Luis Camargo-Carlos
  - Michael Gutperle
publication date: 2026-08-08T18:59
abstract: |-
  The paper studies complex-conjugate CFTs and conformal interfaces through AdS3 scalar-gravity models and two-dimensional free fields. Holographic beta functions reproduce the leading Im-flip relation, imaginary Janus data give a real metric with nonunitary transmission and reflection coefficients, and numerical complex RG-flow interfaces connect conjugate extrema. On the CFT side, analytically continued free-boson and complex linear-dilaton interfaces admit folded boundary states, g-factors, and algebraic transmission/reflection coefficients.
comments: "32 pages, pdfLaTeX, 12 figures"
url: https://arxiv.org/abs/2608.08292v1
summary: "A reusable interface toolkit for complex-conjugate CFTs, with an important distinction between algebraic flux coefficients and probabilities and a defect in the appendix's claimed geodesic-distance interpretation."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Placement

Reason codes: `T2-dS-BH-holography`, `T1-boundary`, `T3-math`.

This is a medium-priority detailed note because its conformal-interface constructions, gluing matrices, boundary states, $g$-factors, and transmission formulas are reusable boundary data. It is not high priority for the current charge/CPS program: no covariant phase space, gravitational surface charge, edge-mode, or boundary-condition variational analysis is developed.

## Source map

- Section 1 reviews walking flows and the perturbative Im-flip relation.
- Section 2 introduces scalar-gravity domain walls, a fake-superpotential beta function, a holographic walking model, and the leading holographic Im-flip check.
- Section 3 constructs imaginary Janus and numerical complex RG-flow interfaces and computes holographic entropy and transport observables.
- Section 4 constructs the free-boson Janus interface and complex linear-dilaton interface, including boundary states, $g$, $\mathcal T$, and $\mathcal R$.
- Appendix A fixes free-boson and linear-dilaton conventions.
- Appendix B derives the linear-dilaton zero-mode state, Cardy normalization, and a modified reflection/transmission prescription.
- Appendix C treats nonlinear sigma-model scalars and proposes an “imaginary distance” bound.

## Complex fixed points and Im-flip

A walking beta function

$$
\beta(\lambda)=-x-\lambda^2+O(\lambda^3)
$$

has conjugate fixed points $\lambda=\pm i\sqrt{x}$ when $x>0$. For an almost marginal operator $\mathcal O$ with $\Delta_{\mathcal O}=2-i\epsilon$,

$$
\beta(g)=-i\epsilon g+\frac\pi2C_{\mathcal O\mathcal O\mathcal O}g^2.
$$

Identifying the nonzero fixed point with the conjugate CFT gives, to the first nontrivial order,

$$
\frac{\operatorname{Im}\Delta_{\mathcal O}}
{C_{\mathcal O\mathcal O\mathcal O}}
=
\frac{\operatorname{Im}\Delta_\psi}
{C_{\mathcal O\psi\psi}}.
$$

The relation assumes small imaginary data and nonproliferation of nearby complex fixed points. It is not claimed as an exact identity at finite imaginary separation.

In the holographic model,

$$
V=2\left(G^{ab}\partial_aW\partial_bW-W^2\right),
\qquad
\beta^a=-2G^{ab}\frac{\partial_bW}{W}.
$$

A two-scalar superpotential yields

$$
\operatorname{Im}\Delta_\phi=\mp\frac{4a\epsilon}{w_0},
\quad
\operatorname{Im}\Delta_\psi=\mp\frac{4c_3\epsilon}{w_0},
$$

$$
C_{\phi\phi\phi}=-\frac{4a}{\pi w_0},
\quad
C_{\psi\psi\phi}=-\frac{4c_3}{\pi w_0},
$$

which satisfy Im-flip through the stated order. The paper finds failure at $O(\epsilon^3)$, consistent with the perturbative scope.

## Imaginary Janus

For $V=-2$ and an AdS$_2$ slicing,

$$
ds^2=du^2+e^{2A(u)}\frac{dz^2-dt^2}{z^2},
$$

the Janus solution is analytically continued by $\alpha=i\gamma$:

$$
e^{2A}=\frac12\left(1+\sqrt{1+\gamma^2}\cosh2u\right).
$$

The scalar endpoints are conjugate imaginary sources, but the metric remains real. The half-separation used in the main text is

$$
\Delta\phi=\frac12(\phi_+-\phi_-)=i\arctan\gamma,
$$

and approaches $i\pi/2$.

For a symmetric interval, the defect entropy is

$$
\log g=-\frac{c}{12}\log(1+\gamma^2).
$$

For an interval ending at the interface,

$$
c_{\rm eff}
=c\sqrt{\frac{1+\sqrt{1+\gamma^2}}{2}}.
$$

The holographic transport coefficient is determined by

$$
\sigma=\int du\,(\phi')^2
=\frac8\gamma\arctan\frac{\gamma}{1+\sqrt{1+\gamma^2}}-4.
$$

For $\gamma\ne0$, $\mathcal T>1$ and $\mathcal R<0$. In a nonunitary theory these are Ward/flux coefficients, not positive probabilities.

## Complex RG-flow interfaces

With a potential possessing conjugate extrema $\phi_\pm$, the AdS radii and central charges are conjugate:

$$
L_\pm=\sqrt{-\frac2{V(\phi_\pm)}},
\qquad
c_\pm=\frac{3L_\pm}{2G_N}.
$$

The paper numerically shoots the second-order AdS$_2$-sliced equations using a quartic superpotential. The displayed flows connect $\phi_+$ to $\phi_-$ or return to the same complex vacuum and spiral near UV-attractive complex dimensions. Their strong sensitivity to initial data is documented in figures. No data files, integration code, tolerances, or numerical residual tables are supplied.

## Free-boson Janus interface

The two half-space stiffnesses are conjugate,

$$
k_L=k_0e^{-i\arctan\gamma_{\rm cft}},
\qquad
k_R=\bar k_L.
$$

Continuity of the field and weighted normal derivative gives amplitudes

$$
T=\frac{2k_L}{k_L+k_R},
\qquad
R=\frac{k_L-k_R}{k_L+k_R}.
$$

The bilinear energy coefficients are

$$
\mathcal T=\frac{4k_Lk_R}{(k_L+k_R)^2},
\qquad
\mathcal R=\left(\frac{k_L-k_R}{k_L+k_R}\right)^2,
$$

so

$$
\mathcal T=1+\gamma_{\rm cft}^2,
\qquad
\mathcal R=-\gamma_{\rm cft}^2,
\qquad
\mathcal T+\mathcal R=1.
$$

The sum rule is algebraic; the absence of complex conjugation in $R^2$ is precisely why it is not a probability statement.

After folding, the gluing matrix is

$$
S=\frac1{k_L+k_R}
\begin{pmatrix}
k_L-k_R&2\sqrt{k_Lk_R}\\
2\sqrt{k_Lk_R}&k_R-k_L
\end{pmatrix},
$$

and the noncompact boundary-state normalization gives

$$
g=\frac1{\sqrt{\sin2\theta}}
=\sqrt{\frac{k_L+k_R}{2\sqrt{k_Lk_R}}}.
$$

Matching the small-deformation holographic coefficient fixes a convention-dependent normalization $\gamma_{\rm cft}=\sqrt{8\pi/c}\,\gamma$; this is not an independently derived full dictionary.

## Complex linear-dilaton interface

The conjugate background charges are

$$
Q^{(1,2)}=q_R\pm iq_I,
$$

with

$$
c_{1,2}=1+6(Q^{(1,2)})^2.
$$

The folded total central charge is real. Virasoro gluing fixes the complex angle

$$
\tan\theta=\frac{Q^{(2)}}{Q^{(1)}}.
$$

The zero-mode boundary state includes the background-momentum shifts required by the linear-dilaton anomaly. Cardy matching yields the same normalization $g=1/\sqrt{\sin2\theta}$.

Because the vacuum overlap vanishes, Appendix B replaces it by a selected primary-state overlap in the Quella--Runkel--Watts construction. The resulting proposal is

$$
\mathcal T=\sin^2(2\theta),
\qquad
\mathcal R=\cos^2(2\theta),
$$

or, for $Q^{(1,2)}=re^{\pm i\varphi}$,

$$
\mathcal T=\sec^2(2\varphi),
\qquad
\mathcal R=-\tan^2(2\varphi).
$$

The independence from the auxiliary momentum supports but does not prove universality of the modified prescription.

## Verification log

### Checked

- Rendered PDF pages 1, 10, 20, 28, and 31; the Janus bound, linear-dilaton formulas, boundary-state normalization, and Appendix C equation agree with the TeX source.
- Mathematica independently simplified the free-boson formulas to $\mathcal T=1+\gamma^2$, $\mathcal R=-\gamma^2$, and $\mathcal T+\mathcal R=1$ for $\gamma>0$.
- For the single-scalar Janus path, direct integration gives total endpoint displacement $\int\phi' du=2i\arctan\gamma$, hence the paper's half-separation is $i\arctan\gamma$ and tends to $i\pi/2$.
- Numerical quadrature at $\gamma=0.5,2,10$ reproduced the source formula for $\int du\,(\phi')^2=\sigma$ to numerical precision.

### Source-derived

- The leading Im-flip check, holographic entropy formulas, folded boundary states, and linear-dilaton Cardy calculation were reconstructed from the source but not independently derived from correlation functions or cylinder amplitudes.
- The complex RG-flow interfaces are supported by source figures and stated initial conditions only.

### Blocked

- Numerical-flow reproduction is blocked by absent code, precision/tolerance choices, output data, and constraint-residual histories.
- Full holographic/CFT matching is blocked beyond quadratic order because the coupling normalization is fixed by matching and the models are not claimed to be exact dual pairs.
- The modified linear-dilaton reflection/transmission formula uses a chosen primary overlap; no independent bootstrap or Ward-identity derivation is supplied.

### Failed

- Appendix C Eq. (C.3) calls
  $$
  \int du\,G_{ab}\phi'^a\phi'^b
  $$
  the “total geodesic length” (written $\Delta s^2$). This is the integrated squared speed, not the square of path length, which would involve $(\int du\sqrt{G_{ab}\phi'^a\phi'^b})^2$. In the one-scalar imaginary Janus limit the three quantities differ: the total displacement tends to $i\pi$, its half-separation squared to $-\pi^2/4$, while Eq. (C.3) tends to $-4$. Thus the formula is valid as $\sigma$ but does not establish the claimed geodesic-distance bound.

## Likely use

The free-boson gluing matrix and linear-dilaton zero-mode construction are useful interface references, especially when analytic continuation makes the symplectic/energy pairing indefinite. The main caution is to keep algebraic transmission/reflection identities separate from positivity or probability, and to treat Appendix C's $-4<\sigma<0$ as an integrated kinetic bound rather than a geodesic-distance theorem.
