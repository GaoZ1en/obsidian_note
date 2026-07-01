---
paper id: 2606.30466v1
title: Holography and Kinematic Space for Gravitational Sub-regions in AdS
authors:
  - Debarshi Basu
  - Qiang Wen
publication date: 2026-06-29T15:29:53Z
abstract: |-
  The paper studies kinematic spaces for generic subregions in vacuum AdS. It proposes that partial-entanglement-entropy threads emanating from codimension-one surfaces cover gravitational subregions and reconstruct surface areas by Crofton-style intersection counting, then uses this structure to build PEE tensor-network models and generalized entanglement wedges.
comments: "25 pages, 12 figures, comments are welcome"
url: https://arxiv.org/abs/2606.30466v1
summary: "A medium-priority AdS subregion reconstruction reference based on PEE threads, kinematic-space measures, and Crofton intersection counts."
tags: []
---

Back to [[2026_06_30_overview]].

# Full AdS kinematic space and PEE threads

The starting point is the kinematic space of all geodesics in a maximally symmetric Riemannian manifold. For a codimension-one surface $\Sigma$ in a $d$-dimensional manifold $\mathcal M$, the Crofton formula is

$$
\operatorname{Area}(\Sigma)
=\frac12\frac{d-1}{\Omega_{d-2}}
\int_{\mathbb K_{\mathcal M}}\#(\Gamma\cap\Sigma)\,d\Gamma.
$$

On a static slice of vacuum AdS, geodesics are parameterized by boundary endpoints $\mathbf x,\mathbf y$, and the kinematic measure is

$$
d\Gamma
=\det\!\left(
\frac{\partial^2\ell(\mathbf x,\mathbf y)}
{\partial\mathbf x\,\partial\mathbf y}
\right)d\mathbf x\wedge d\mathbf y
=\frac{2^{d-1}}{|\mathbf x-\mathbf y|^{2d-2}}
d\mathbf x\wedge d\mathbf y.
$$

The two-point partial entanglement entropy density in the vacuum CFT is

$$
\mathcal I(\mathbf x,\mathbf y)
=\frac{c}{6}
\frac{2^{d-1}(d-1)}
{\Omega_{d-2}|\mathbf x-\mathbf y|^{2(d-1)}}.
$$

Thus the PEE density is proportional to the kinematic measure. The paper interprets the corresponding bulk geodesics as PEE threads.

# Kinematic space for a subregion

Let $\mathbf a$ be a connected AdS subregion with boundary $\partial\mathbf a$. Its kinematic space $\mathbb K_{\mathbf a}$ is not a new independent set of curves: it is the collection of portions of full-AdS geodesics lying inside $\mathbf a$.

In AdS3, if $\partial\mathbf a$ is parameterized by $s$, the proposed subregion measure is

$$
d\Gamma
=\frac12
\frac{\partial^2\ell(s_1,s_2)}
{\partial s_1\partial s_2}
\,ds_1\,ds_2.
$$

For nonconvex $\partial\mathbf a$, a single full geodesic may produce multiple chords inside $\mathbf a$, so parameterizing by endpoints on $\partial\mathbf a$ is cleaner than parameterizing by full-boundary endpoints.

# Reconstruction by intersection counting

The reconstruction statement is geometric. A surface $\Sigma$ reconstructs a region $W_\Sigma$ when the set of geodesics crossing $\Sigma$ uniformly covers $W_\Sigma$ in the Crofton sense: for any codimension-one surface inside $W_\Sigma$, its area is recovered by counting intersections with the relevant geodesics.

In higher dimensions the local measure is expressed through a hypersurface intersection measure. The source writes it in a form locally equivalent to

$$
d\Gamma_\Sigma'
=|\cos\alpha_d|\,d\sigma\,d\Omega_{d-1},
$$

where $\alpha_d$ is the angle between the geodesic direction and the normal to the surface element. The distinction from flux is important: PEE thread intersections are unoriented and count both crossing directions positively.

# Tensor network and generalized entanglement wedges

The paper then builds factorized PEE tensor-network models. Each PEE thread carries EPR-pair-like data, and contraction along the network leaves endpoint entanglement data on the chosen surface. The RT entropy is reproduced as a crossing count, not as a net conserved flux.

The generalized entanglement wedge discussion depends on which surface launches or bounds the PEE threads. The source emphasizes conditions such as convexity and totally geodesic boundaries; generic non-spherical boundary regions do not always allow the entanglement wedge to be reconstructed only from PEE threads associated with the boundary interval.

# Local use

This paper is not a CPS/charge source. Its value is a vocabulary for AdS subregion reconstruction:

- kinematic measure as geodesic density;
- PEE threads as geometric representatives of boundary two-point entanglement;
- crossing count as area/entropy;
- unoriented intersection counting as distinct from symplectic flux or charge flux.

That last distinction is useful when writing null-boundary or finite-boundary notes: a count of thread intersections is not a conservation law.

# Verification note

The formulas and conditions above were read from the TeX source. I did not independently verify Crofton normalizations, the CFT derivation of the PEE density, tensor-network entropy calculations, or the figure-dependent nonconvex examples.
