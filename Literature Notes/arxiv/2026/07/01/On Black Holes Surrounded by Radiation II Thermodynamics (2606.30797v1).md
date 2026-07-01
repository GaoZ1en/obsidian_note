---
paper id: 2606.30797v1
title: "On Black Holes Surrounded by Radiation II: Thermodynamics"
authors:
  - Marcos Riojas
  - Matthew J. Strassler
publication date: 2026-06-29T18:21:28
abstract: |-
  The paper studies the thermodynamics of hillingar black holes: Schwarzschild black holes of mass m surrounded by a thick ocean of massless orbiting particles, with ADM mass M. Assuming formal thermal equilibrium, the HBH has the same asymptotic temperature and coarse-grained entropy as an ordinary black hole of mass M, while AdS and finite-cavity versions have richer behavior and do not always preserve the mimicry.
comments: "52 pages, 5 figures"
url: https://arxiv.org/abs/2606.30797v1
summary: "The thermodynamic HBH paper explains how zero-radial-pressure radiation can make an extended photon-sphere system share Schwarzschild temperature and entropy at fixed ADM mass."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is useful for finite-radius black-hole thermodynamics, but the equilibrium assumption is strong and the paper is not a charge/CPS calculation.

# HBH mass profile and temperature

The system is the mass profile

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

The central black hole has mass $m$, but the full asymptotically flat solution has ADM mass $M$. The paper computes the Hawking temperature measured at infinity from the surface gravity at the central horizon and finds the $m$-independent result

$$
\begin{align}
T_H=\frac{1}{8\pi G M},
\end{align}
$$

matching an ordinary Schwarzschild black hole of mass $M$.

# Entropy from Euler relations and vanishing action

The source gives several checks of the entropy. The direct thermodynamic path uses power-law relations for self-gravitating fluids, an entropy-maximization argument, and local/global Euler relations between energy density, temperature, and entropy density.

The Euclidean-action path is especially compact. The null-cluster gas has traceless stress and zero radial pressure, with the free-energy density relation

$$
\begin{align}
\mathbf f=-P_r=\rho-Ts=0.
\end{align}
$$

Thus the matter action vanishes, and the remaining Gibbons-Hawking-York boundary term depends on the ADM mass $M$, not on the inner mass $m$. The result is the usual Schwarzschild entropy at mass $M$:

$$
\begin{align}
S=4\pi G M^2
\end{align}
$$

in units matching the source's conventions.

# York cavity and shell interpretation

The paper relates York's cavity thermodynamics to a thin shell at radius $r_0$. York's variables include

$$
\begin{align}
E,\quad T,\quad S,\quad A_0=4\pi r_0^2,
\end{align}
$$

and a surface pressure conjugate to $A_0$. The source interprets this surface pressure in Israel-shell language, where a shell with surface density $\sigma$ and transverse pressure $p$ is static at the cavity wall with local temperature

$$
\begin{align}
T_{\rm shell}=T(r_0)=\frac{T_H}{\sqrt{1-2M/r_0}}.
\end{align}
$$

At the Buchdahl radius $r_0=9M/4$, a traceless radiation shell gives a vanishing classical matter action. The HBH ocean is the continuum version of this zero-radial-pressure shell logic.

# AdS and finite-box behavior

The paper stresses that asymptotically flat mimicry does not simply persist in AdS. In AdS, entropy and temperature depend on both $m$ and $M$, and the solution space is richer.

The finite-box discussion is locally useful because it shows how the HBH may place an evaporation/information-puzzle-like setup inside a small cavity of radius at least $3M$, provided thermal equilibrium can actually be maintained.

# Verification note

No independent Euclidean-action or TOV calculation was performed for this medium note. The formulas above are source-derived from the official arXiv HTML. The main unverified assumptions are the existence and stability of the formal equilibrium state and the source's identification of coarse-grained entropy with the Euclidean/York thermodynamic result.
