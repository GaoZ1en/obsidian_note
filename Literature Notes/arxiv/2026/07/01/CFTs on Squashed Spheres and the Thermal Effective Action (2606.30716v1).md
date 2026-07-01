---
paper id: 2606.30716v1
title: CFTs on Squashed Spheres and the Thermal Effective Action
authors:
  - Klaas Parmentier
  - Nikolay Bobev
publication date: 2026-06-29T18:00:00
abstract: |-
  The paper studies three-dimensional CFT partition functions near the round S^3 and in the small-fiber limit of Seifert manifolds. Near the round sphere, harmonic-space conformal perturbation theory gives a universal quadratic response to metric squashing proportional to c_T, plus cubic Hopf-squashing and scalar two-point corrections. In the small-fiber regime, the partition function is governed by a two-dimensional thermal effective action built from the Weyl-rescaled base metric and Kaluza-Klein field strength, with Wilson coefficients evaluated for free fields, large-N critical O(N) models, and holographic CFTs.
comments: "35 pages + appendices"
url: https://arxiv.org/abs/2606.30716v1
summary: "A compact technical source for squashed-sphere free-energy response and the two-dimensional thermal EFT governing large-squashing CFT partition functions."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is useful as partition-function technology for curved backgrounds, but it does not directly construct charges, fluxes, or phase-space generators.

# Round-sphere perturbation theory

The first regime is a small deformation of the round $S^3$. The free energy is expanded in sources coupled to CFT operators. For metric squashing, the second variation is governed by the stress-tensor two-point function,

$$
\begin{align}
\delta^2 F[g]
\sim
\int_{S^3}\!\int_{S^3}
\delta g\,\delta g\,
\langle T T\rangle ,
\end{align}
$$

and the source decomposes the metric deformation into scalar, vector, and spin-2 spherical harmonics. The universal result is that the quadratic response is proportional to the stress-tensor normalization $c_T$. For unitary CFTs, this makes the round-sphere free energy a local maximum in the space of metric deformations.

The same harmonic-space method extends to conserved spin-$s$ currents. The sign of the quadratic response alternates with spin, so the stress-tensor case is one instance of a broader harmonic response rule.

# Hopf squashing and cubic response

The concrete squashing example is the Hopf-fiber deformation of $S^3$. The quadratic term reproduces known $c_T$ control. The cubic metric response probes $\langle TTT\rangle$ data and, for Hopf squashing, is expressed in terms of the CFT data usually packaged by $c_T t_4$.

For later use, the main source logic is:

$$
\begin{align}
F_{\rm squashed}
=F_{S^3}
+F^{(2)}_{\rm harmonic}[c_T]
+F^{(3)}_{\rm Hopf}[c_T t_4]
+\cdots .
\end{align}
$$

The paper also computes the leading squashing correction to scalar two-point functions. The point to preserve is not just the coefficient, but the distributional treatment of $\langle T\mathcal O\mathcal O\rangle$ compatible with Ward identities.

# Small-fiber Seifert manifolds

The second regime treats a Seifert manifold as a circle fibration,

$$
\begin{align}
S^1\times_{\rm f}\mathcal M_2,
\end{align}
$$

with the small fiber interpreted as a thermal circle. In this limit the three-dimensional partition function is captured by a local two-dimensional effective action on the base. The source variables are:

- the Weyl-rescaled base metric;
- a Kaluza-Klein gauge field from the fibration;
- its field strength $F$;
- base curvature invariants.

The resulting EFT has a derivative expansion with Wilson coefficients multiplying terms of the schematic form

$$
\begin{align}
c_{n,m}\,R^n F^{2m}
\quad\text{and derivative corrections such as}\quad
(\nabla F)^2 .
\end{align}
$$

The paper determines these coefficients for conformally coupled scalars, massless fermions, the large-$N$ critical $\mathrm O(N)$ model, and holographic CFTs.

# Holographic and free-field data

For holographic CFTs, the gravitational saddles include AdS-Kerr and AdS-Taub-Bolt backgrounds. AdS-Taub-Bolt resums the non-derivative $c_{n,m}R^nF^{2m}$ sector, while AdS-Kerr fixes the leading derivative term involving $(\nabla F)^2$ and related subleading combinations.

For local spectral/thermal work, the transferable mechanism is the map

$$
\begin{align}
\text{large squashing of a 3d CFT background}
\quad\longrightarrow\quad
\text{thermal EFT on } \mathcal M_2 .
\end{align}
$$

This is likely useful when comparing heat-kernel or determinant calculations across squashed/lensed backgrounds and their high-temperature limits.

# Verification note

No independent harmonic-sum or thermal-EFT coefficient check was performed for this medium note. The technical chain above is source-derived from the official arXiv HTML. A later targeted check could reproduce one low harmonic eigenvalue response or one free scalar/fermion Wilson coefficient after fixing the source's normalization of $c_T$, $R$, and $F$.
