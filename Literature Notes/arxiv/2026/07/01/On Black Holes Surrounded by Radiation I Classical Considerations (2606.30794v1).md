---
paper id: 2606.30794v1
title: "On Black Holes Surrounded by Radiation: I. Classical Considerations"
authors:
  - Marcos Riojas
  - Matthew J. Strassler
publication date: 2026-06-29T18:20:57
abstract: |-
  The paper constructs static spherically symmetric Einstein solutions describing a Schwarzschild black hole surrounded by a thick shell or ocean of orbiting massless particles with zero radial pressure. The null-cluster gas extends the photon sphere into a finite-depth region, can be viewed as a marginally stable limit of an Einstein cluster, and optically mimics an ordinary black hole of the same ADM mass for observers at infinity.
comments: "45 pages, 8 figures"
url: https://arxiv.org/abs/2606.30794v1
summary: "The first HBH paper gives the classical geometry behind extended photon spheres and black-hole optical mimicry by zero-radial-pressure orbiting radiation."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is relevant to finite-radius black-hole physics and photon-sphere control, but it is not a boundary-charge or CPS construction.

# Null-cluster gas and extended photon spheres

The starting point is a static spherical metric written through the usual redshift function $f(r)=-g_{tt}$ and a mass function $\widehat m(r)$. The optical data are controlled by

$$
\begin{align}
h(r)=\frac{f(r)}{r^2}.
\end{align}
$$

For an ordinary photon sphere, $h(r)$ has a maximum. The HBH construction makes $h(r)$ constant over a radial interval. In that interval every radius is a circular null orbit, so the photon sphere is extended.

For a four-dimensional null-cluster gas, the source records the characteristic condition

$$
\begin{align}
\widehat m(r)=\frac{r}{3G},
\end{align}
$$

with zero radial pressure and transverse radiation stress. In units with $G=1$, the stress data in the ocean include

$$
\begin{align}
P_r=0,\qquad
\rho=2P_\perp=\frac{1}{12\pi r^2}.
\end{align}
$$

# Hillingar black-hole metric

The HBH has an inner Schwarzschild region of mass $m$, an ocean, and an exterior Schwarzschild region of ADM mass $M$. The companion thermodynamics paper writes the same mass profile as

$$
\begin{align}
\widehat m(r)=
\begin{cases}
m, & r\in(r_+,3m),\\
r/3, & r\in(3m,3M),\\
M, & r\in(3M,\infty).
\end{cases}
\end{align}
$$

The ocean is the extended photon-sphere region. Since $f(r)\propto r^2$ in that region, $h(r)$ is constant and the null-geodesic effective potential is flat.

# Geodesics and optical mimicry

The source derives null geodesics for the HBH and related self-similar gases. The key optical point is that an exterior observer sees the same critical impact parameter and shadow size as for a Schwarzschild black hole of mass $M$.

In the ocean, circular null geodesics are marginally stable. The paper emphasizes that the HBH appears optically indistinguishable from an ordinary black hole of the same ADM mass, despite the central black hole having mass $m$ and the exterior mass being $M$.

For local use, the compact dictionary is:

$$
\begin{align}
\text{extended photon sphere}
\quad\Longleftrightarrow\quad
h(r)=\frac{f(r)}{r^2}=\text{constant}
\quad\Longleftrightarrow\quad
\text{flat null effective potential}.
\end{align}
$$

# Relation to finite-radius thermodynamics

This first paper supplies the classical geometry used by the two companion thermodynamic papers. The technical bridge is that the same zero-radial-pressure matter which extends the photon sphere also makes the thermodynamic construction special: the matter is orbiting radiation, not an isotropic gas.

This is worth retaining for finite-radius black-hole notes because it separates three notions that are often conflated:

- event horizon data of the central black hole of mass $m$;
- optical shadow and photon-ring data controlled by the exterior mass $M$;
- the stress profile of the ocean that bridges the two.

# Verification note

No independent geodesic or Einstein-equation check was performed for this medium note. The formulas above are source-derived from the official arXiv HTML and companion-paper cross references. A later short check could verify that $f(r)\propto r^2$ makes $h(r)$ constant and that $\widehat m(r)=r/3$ gives the stated null-cluster stress profile under the source's metric convention.
