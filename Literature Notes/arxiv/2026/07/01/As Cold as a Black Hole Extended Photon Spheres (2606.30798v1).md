---
paper id: 2606.30798v1
title: "As Cold as a Black Hole: Extended Photon Spheres"
authors:
  - Marcos Riojas
publication date: 2026-06-29T18:21:55
abstract: |-
  The paper explains how photon-sphere physics controls Israel junction conditions, the Tolman-Oppenheimer-Volkoff equation, and finite-radius black-hole thermodynamics. It shows that the IJC and TOV equation are equivalent at zero radial pressure, uses this to compute coarse-grained entropies without a Euclidean path integral, and identifies hillingar black holes as the joint mechanical/thermodynamic stability-selected extended-photon-sphere configuration.
comments: "65 pages, 14 figures"
url: https://arxiv.org/abs/2606.30798v1
summary: "A technical companion to the HBH papers deriving extended-photon-sphere thermodynamics from Israel layers, TOV constraints, and finite-radius stability."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority technical note. It is substantial and formula-rich, but its main transfer is finite-radius black-hole thermodynamics rather than the user's immediate CPS/charge queue.

# York and shell stability obstruction

The source begins from the known tension between two stability requirements. York cavity thermodynamics gives stable thermal behavior when the cavity lies inside the appropriate photon-sphere-controlled region, while mechanical stability of shells around a black hole pushes massive shells outside the photon sphere unless the equation of state is special.

The shell variables are surface density $\sigma$ and surface pressure $p$. The mechanical-stability condition quoted in the introduction includes

$$
\begin{align}
\sigma\geq 2p
\end{align}
$$

unless one allows superluminal sound. Radiation at the limiting point has $\sigma\simeq 2p$.

# Time-dependent Israel layers

The paper derives time-dependent Israel junction conditions for spherically symmetric shells and then specializes to static shells. A central statement is that $Z_2$ static shells sit at the photon sphere and are pure tension.

For local reference, the shell/IJC part should be read as a finite-radius boundary mechanics model: the shell's allowed static positions and stability are controlled by the same geometric data that control photon orbits.

# TOV equals IJC at zero radial pressure

The technically useful result is the equivalence between the anisotropic TOV equation and the Israel junction conditions when the radial pressure vanishes:

$$
\begin{align}
P_r=0
\quad\Longrightarrow\quad
\text{TOV fixed-point data coincide with IJC shell data}.
\end{align}
$$

In the source's fixed-point variables, the photon sphere appears at

$$
\begin{align}
\alpha_\pm=\frac{1}{\sqrt 3}.
\end{align}
$$

For orbiting massless radiation, the relevant anisotropic equation-of-state data include

$$
\begin{align}
w_r=0,\qquad w_\perp=\frac12,\qquad \nu=\frac13,\qquad v_{\rm loc}=1.
\end{align}
$$

The HBH corresponds to the tangent point where the TOV solution curve meets the critical line.

# Entropy and extended photon spheres

The source identifies the scaling condition needed for black-hole-like entropy:

$$
\begin{align}
S\propto M^2
\quad\Longrightarrow\quad
\delta=2,
\end{align}
$$

which is also the photon-sphere condition for the self-similar family. The HBH satisfies

$$
\begin{align}
P_r=0,\qquad \delta=2,\qquad T^\mu{}_\mu=-\sigma+2p=0,
\end{align}
$$

and hence realizes the continuum of nested shell layers without extra edge walls.

The headline thermodynamic values inherited from the companion papers are

$$
\begin{align}
T=(8\pi M)^{-1},\qquad S=4\pi M^2
\end{align}
$$

in the source's units for the asymptotically flat HBH.

# Finite-radius lesson

The transferable point is that photon-sphere geometry is not only optical. In this paper it governs:

- mechanical stability of Israel layers;
- the zero-radial-pressure limit of anisotropic TOV;
- the sign and magnitude of finite-radius heat capacity;
- the coarse-grained entropy calculation without a Euclidean path integral.

This makes the paper a useful reference when finite radial walls, shells, or boxes appear in black-hole thermodynamic notes.

# Verification note

No independent IJC/TOV derivation was performed for this medium note. The equations and fixed-point statements are source-derived from the official arXiv HTML. A later useful check would verify the $P_r=0$ TOV-to-IJC reduction and the $\delta=2$ photon-sphere condition in the paper's dimensionless variables.
