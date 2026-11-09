---
paper id: 2607.23912v1
title: "Corner contributions to Neumann jump determinants: three model calculations and a BFK conjecture"
authors:
  - Victor Kalvin
publication date: 2026-07-27T01:01
abstract: |-
  For a mirror double of a geodesic polygon with angles πα_j, the paper conjectures a canonical corner-renormalized Neumann jump determinant whose normalized value is one half times the product of α_j^{-1/2}. Flat polygons, spherical spindles, and spherical Coxeter triangles provide three model computations, while the intrinsic determinant itself remains to be constructed.
comments: "11 pages"
url: https://arxiv.org/abs/2607.23912v1
summary: "A compact spectral-gluing benchmark for how codimension-two corner angles should enter a BFK determinant formula."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

The transferable content is a sharply normalized conjectural corner factor. It is useful for boundary determinant calculations, but its main object is a spectral jump operator rather than a gravitational corner phase space.

# Smooth BFK Surgery and the Singular Seam

Let a closed surface $M$ be split along a smooth separating curve $\Gamma$ into $M_+$ and $M_-$. The smooth Burghelea--Friedlander--Kappeler formula is

$$\begin{align}
\frac{\operatorname{Det}'\Delta_M}{\operatorname{Area}(M)} = \operatorname{Det}\Delta_{M_+,D}\, \operatorname{Det}\Delta_{M_-,D}\, \frac{\operatorname{Det}'\mathcal N_\Gamma} {\operatorname{length}(\Gamma)}. \tag{1}
\end{align}$$

For boundary value $f$, the Neumann jump operator is

$$\begin{align}
\mathcal N_\Gamma f =\partial_{n_+}u_++\partial_{n_-}u_-,
\end{align}$$

where $u_\pm$ are its harmonic extensions. Constants form its kernel.

If the cut passes through conical points and is itself polygonal, $\mathcal N_\Gamma$ is no longer a classical pseudodifferential operator on a smooth closed curve. Mellin corner symbols and logarithmic heat/resolvent terms may occur, so the ordinary zeta determinant cannot simply be assumed to exist. Smoothing each vertex is also insufficient because zeta determinants need not be continuous under that singular limit.

# The Well-Defined Quotient and the Conjectural Determinant

Let $P$ be a simply connected constant-curvature surface with geodesic boundary angles

$$\begin{align}
\pi\alpha_1,\ldots,\pi\alpha_N, \qquad 0<\alpha_j<2,
\end{align}$$

and let $\widehat P=P\cup_{\partial P}P$ be its mirror double. Even before defining an intrinsic determinant of the nonsmooth jump operator, the Laplacian quotient

$$\begin{align}
\mathcal J_{\rm BFK}(P) := \frac{ \operatorname{Det}'\Delta_{\widehat P}/ \operatorname{Area}(\widehat P)} {\bigl(\operatorname{Det}\Delta_{P,D}\bigr)^2} \tag{2}
\end{align}$$

is well defined using Friedrichs extensions.

The conjecture is that a canonical corner-renormalized determinant exists and satisfies

$$\begin{align}
\boxed{ \frac{ \operatorname{Det}'_{\angle}\mathcal N_{\partial P}} {\operatorname{length}(\partial P)} = \mathcal J_{\rm BFK}(P) = \frac12\prod_{j=1}^{N}\alpha_j^{-1/2}.
}
\tag{3}
\end{align}$$

Only the normalized determinant is claimed to be purely local in the corner angles. The notation $\operatorname{Det}'_{\angle}$ is a placeholder for an object still to be constructed; Eq. (3) is not a theorem obtained from an existing zeta regularization.

# Flat Polygon: Cancellation of Global Moduli

For a Euclidean polygon $P$, its double is a flat conical sphere with cone angles $2\pi\alpha_j$. The calculation combines:

- a closed conical-sphere determinant;
- a Dirichlet polygon determinant;
- the Euclidean angle sum $\sum_j\alpha_j=N-2$.

After subtracting twice the Dirichlet formula from the doubled formula, the area and Schwarz--Christoffel moduli cancel and the source obtains

$$\begin{align}
\log\mathcal J_{\rm BFK}(P) =-\log 2-\frac12\sum_j\log\alpha_j. \tag{10}
\end{align}$$

Thus

$$\begin{align}
\mathcal J_{\rm BFK}(P) =\frac12\prod_j\alpha_j^{-1/2}.
\end{align}$$

This calculation is conditional on the determinant formula for the flat Dirichlet polygon that the source labels heuristic. It is evidence for the local factor, not an independent construction of $\operatorname{Det}'_{\angle}$.

# Spherical Spindle Cut into Lunes

A spindle with two conical angles $2\pi\alpha$ is cut along two meridians into congruent spherical lunes. Its spectrum separates into axial and non-axial modes. Comparing the spindle determinant to two lune Dirichlet determinants gives

$$\begin{align}
\mathcal J_{\rm BFK}=\frac{1}{2\alpha}. \tag{18}
\end{align}$$

This exactly matches Eq. (3) for two corners:

$$\begin{align}
\frac12(\alpha^{-1/2})^2 =\frac1{2\alpha}.
\end{align}$$

Unlike the flat-polygon computation, this model is obtained from an explicit spectral splitting and is the cleanest benchmark in the note.

# Spherical Coxeter Triangles

For a spherical triangle with angles

$$\begin{align}
\frac{\pi}{p},\qquad \frac{\pi}{q},\qquad \frac{\pi}{r},
\end{align}$$

the conjecture predicts

$$\begin{align}
\mathcal J_{\rm BFK} =\frac12\sqrt{pqr}.
\end{align}$$

The octant $(p,q,r)=(2,2,2)$ gives

$$\begin{align}
\mathcal J_{\rm BFK}=\sqrt2.
\end{align}$$

The source then uses parity decompositions of spherical harmonics under the finite reflection groups to cover the spherical Coxeter list. These computations again reproduce $\frac12\sqrt{pqr}$.

# What Transfers to Boundary and Corner Calculations

The useful structural lesson is that the singular seam contributes a dimensionless local factor

$$\begin{align}
\prod_j\alpha_j^{-1/2}
\end{align}$$

after the BFK quotient has removed area and boundary-length dimensions. This is a concrete comparison target for heat-kernel, determinant, or replica calculations in which conical points lie on the gluing surface.

The analogy with gravitational corners is limited. The paper has no symplectic potential, corner canonical pair, edge mode, boost angle, or surface-charge algebra. Its “corner contribution” is a spectral renormalization factor.

# Verification Note

- The source structure, Eqs. (1)--(3), and the spindle and Coxeter outputs were checked against the TeX source and rendered PDF.
- **Mathematica:** subtracting the two determinant expressions used in the flat model reproduces

$$\begin{align}
-\log2-\frac12\sum_j\log\alpha_j.
\end{align}$$

- **Sage:** the even/odd harmonic multiplicities used in the reflection split differ by the expected one mode for $r=1,\ldots,8$.
- The intrinsic corner determinant is not independently constructed; the flat Dirichlet determinant input remains heuristic as stated by the source.
