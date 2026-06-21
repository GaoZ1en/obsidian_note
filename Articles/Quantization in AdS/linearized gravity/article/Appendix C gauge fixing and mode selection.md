---
title: "Appendix C gauge fixing and mode selection"
date: 2026-05-19
summary: "Discusses TT gauge, first-order factorization, highest-weight mode construction, and the selection of physical Brown-Henneaux boundary-graviton representatives."
---

# Gauge fixing and mode selection

This appendix collects the subtle points behind the mode construction in Section 2.

## TT gauge representatives

We follow the field-space decomposition used in [Acosta--Garbarz--Goya--Leston](https://arxiv.org/pdf/2109.06938). An off-shell metric perturbation is organized as

$$\begin{align}
h_{\mu\nu} =h_{\mu\nu}^{TT} +\Theta_{\mu\nu}\chi +\mathcal{L}_{V}g^{(0)}_{\mu\nu}.
\end{align}$$

Here

$$\begin{align}
\nabla^{(0)\mu}h_{\mu\nu}^{TT}=0,\qquad
g^{(0)\mu\nu}h_{\mu\nu}^{TT}=0,
\end{align}$$

and the last two terms are

$$\begin{align}
\Theta _{\mu \nu}\chi & =\frac{1}{2}(g_{\mu \nu}^{(0)}\nabla ^{(0)2}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu})\chi-g^{(0)}_{\mu \nu}\chi , \\
\mathcal{L}_{V}g^{(0)}_{\mu\nu} & =\nabla ^{(0)}_{\mu}V_{\nu}+\nabla ^{(0)}_{\nu}V_{\mu}
\end{align}$$

The boundary conditions are imposed on the three sectors in this decomposition. The TT sector is the transverse and traceless representative sector. The middle term is a transverse scalar sector: using $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$, one checks

$$\begin{align}
\nabla^{(0)\mu}\Theta_{\mu\nu}\chi=0,
\end{align}$$

while its trace is

$$\begin{align}
g^{(0)\mu\nu}\Theta_{\mu\nu}\chi =\left(\nabla^{(0)2}-3\right)\chi .
\end{align}$$

Thus $\Theta_{\mu\nu}\chi$ carries the scalar trace-type part of the square-integrable fluctuation, rather than a longitudinal diffeomorphism. The vector sector $\mathcal{L}_{V}g^{(0)}_{\mu\nu}$ is the proper diffeomorphism sector; $V$ is taken to be square-integrable, so this sector is quotiented as gauge redundancy. Brown-Henneaux asymptotic diffeomorphisms are not part of this proper sector and are therefore retained as boundary-graviton data.

For the physical normalizable modes considered below, the scalar sector is removed by the linearized Einstein equation. Equivalently, after choosing the de Donder representative, the trace equation sets the scalar trace part to zero. The remaining representative can therefore be chosen in TT gauge,

$$\begin{align}
h=0,\qquad \nabla^{(0)}_{\mu}h^{\mu\nu}=0 .
\end{align}$$

The highest-weight mode selection below is performed in this TT representative sector, with the square-integrable longitudinal sector quotiented and the Brown-Henneaux boundary-graviton sector kept.

## Casimir eigenvalues and highest weights

On TT perturbations, the two $\mathfrak{sl}(2,\mathbb{R})$ Casimirs may be expressed in terms of $\mathcal{D}$ as in Section 2. Substituting the first-order equations gives

$$
\begin{array}{c|cc}
&\mathcal{C}&\bar{\mathcal{C}}\\
\hline
h_{+,N}&0&-2\\
h_{-,N}&-2&0
\end{array}
$$

For a highest-weight state with weights $(h,\bar h)$,

$$\begin{align}
\mathcal{C} & =-h^{2}+h \\
\mathcal{\bar{C}} & =-\bar{h}^{2}+\bar{h}
\end{align}$$

The algebraic roots are therefore

$$\begin{align}
h_{+}:&\quad (h,\bar h)=(0,2),(0,-1),(1,2),(1,-1),\\
h_{-}:&\quad (h,\bar h)=(2,0),(-1,0),(2,1),(-1,1).
\end{align}$$

We keep only representatives that are regular in global AdS$_3$ and belong to the positive-energy linearized phase space. Equivalently, the quadratic generators associated with the two chiral translations are required to be non-negative on physical positive-frequency modes. Roots with a negative Cartan weight are therefore not admissible. The candidates left by these regularity and positivity requirements are

$$\begin{align}
(0,2),\qquad (2,0),\qquad (1,2),\qquad (2,1).
\end{align}$$

After the positivity condition above, the physical degrees of freedom are selected by two further requirements:

- the representative is regular in global AdS$_3$;
- the representative has non-vanishing symplectic norm, $\displaystyle{i\Omega[h,h^{*}]\neq 0}$.

The roots $(2,0)$ and $(0,2)$ discussed in the main body satisfy these conditions and generate the two chiral boundary-graviton towers. Their descendants are obtained by acting with the lowering operator in the non-trivial chiral copy:

$$\begin{align}
h_{-,n}^{\mu\nu} &=\sqrt{\frac{6}{n!(n+3)!}}\, \mathcal{L}_{\xi_{-1}}^n h_{-,0}^{\mu\nu},\\
h_{+,\bar n}^{\mu\nu} &=\sqrt{\frac{6}{\bar n!(\bar n+3)!}}\, \mathcal{L}_{\bar\xi_{-1}}^{\bar n}h_{+,0}^{\mu\nu}.
\end{align}$$

As for the roots $(1,2)$ and $(2,1)$, we first solve the primaries. For $\displaystyle{(1,2)}$, we write down the highest-weight conditions

$$\begin{align}
\mathcal{L}_{\xi_{0}}h_{(1,2),0}^{\mu \nu} & =-ih_{(1,2),0}^{\mu \nu} \\
\mathcal{L}_{\bar{\xi}_{0}}h_{(1,2),0}^{\mu \nu} & =-2ih_{(1,2),0}^{\mu \nu} \\
\mathcal{L}_{\xi _{1}}h_{(1,2),0}^{\mu \nu} & =\nabla ^{(0)\mu}\zeta ^{\nu}+\nabla ^{(0)\nu}\zeta ^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}h_{(1,2),0}^{\mu \nu} & =\nabla ^{(0)\mu}\zeta'^{\nu}+\nabla ^{(0)\nu}\zeta'^{\mu}
\end{align}$$

Here $\displaystyle{\zeta}$ and $\displaystyle{\zeta'}$ are generators of proper gauge transformations. For the mixed-root solution below, however, the strict raising conditions are already satisfied, so the proper-gauge terms vanish for this explicit representative. Up to an overall normalization, the primary is

$$\begin{align}
h^{\mu \nu}_{(1,2),0} &=\frac{e^{-i(3t+\phi)}}{(1+r^{2})^{5/2}}\begin{pmatrix} \frac{2ir}{1+r^{2}} & 1-r^{2} & -\frac{i}{r} \\
1-r^{2} & 2ir(1+r^{2}) & 1+r^{2} \\
-\frac{i}{r} & 1+r^{2} & 0
\end{pmatrix}^{\mu \nu}
\end{align}$$

Moreover, up to the same overall normalization, this solution is precisely the left descendant of the $(0,2)$ primary,

$$\begin{align}
h_{(1,2),0}^{\mu\nu}=\mathcal{L}_{\xi_{-1}}h_{+,0}^{\mu\nu}.
\end{align}$$

The corresponding gauge parameter is obtained by the same action on the $(0,2)$ parameter,

$$\begin{align}
\zeta_{(1,2),0}^{\mu} :=\mathcal{L}_{\xi_{-1}}\zeta_{+,0}^{\mu},
\end{align}$$

namely

$$\begin{align}
\zeta_{(1,2),0}^{t}&\sim e^{-i(3t+\phi)}\frac{r}{(1+r^2)^{5/2}},\\
\zeta_{(1,2),0}^{r}&\sim-i\,e^{-i(3t+\phi)}\frac{1}{(1+r^2)^{3/2}},\\
\zeta_{(1,2),0}^{\phi}&\sim -\,e^{-i(3t+\phi)}\frac{1}{r(1+r^2)^{3/2}}.
\end{align}$$

This gauge parameter vanishes at the boundary $\displaystyle{\Gamma}$, so the $(1,2)$ primary and its descendants are proper gauge modes.

Similarly, the $(2,1)$ primary is obtained by solving the right-left exchanged highest-weight conditions. Up to an overall normalization,

$$\begin{align}
h^{\mu \nu}_{(2,1),0} &=\frac{e^{-i(3t-\phi)}}{(1+r^{2})^{5/2}}\begin{pmatrix} \frac{2ir}{1+r^{2}} & 1-r^{2} & \frac{i}{r} \\
1-r^{2} & 2ir(1+r^{2}) & -(1+r^{2}) \\
\frac{i}{r} & -(1+r^{2}) & 0
\end{pmatrix}^{\mu \nu}.
\end{align}$$

With the corresponding normalization, it is the right descendant of the $(2,0)$ primary,

$$\begin{align}
h_{(2,1),0}^{\mu\nu} =\mathcal{L}_{\bar\xi_{-1}}h_{-,0}^{\mu\nu}.
\end{align}$$

The corresponding gauge parameter is

$$\begin{align}
\zeta_{(2,1),0}^{\mu} :=\mathcal{L}_{\bar\xi_{-1}}\zeta_{-,0}^{\mu},
\end{align}$$

with asymptotic behavior

$$\begin{align}
\zeta_{(2,1),0}^{t}&\sim e^{-i(3t-\phi)}\frac{r}{(1+r^2)^{5/2}},\\
\zeta_{(2,1),0}^{r}&\sim-i\,e^{-i(3t-\phi)}\frac{1}{(1+r^2)^{3/2}},\\
\zeta_{(2,1),0}^{\phi}&\sim e^{-i(3t-\phi)}\frac{1}{r(1+r^2)^{3/2}}.
\end{align}$$

This parameter also vanishes at $\displaystyle{\Gamma}$. Hence the mixed roots are regular solutions of the formal highest-weight problem, but their representatives have zero symplectic norm in the allowed Brown-Henneaux phase space and are removed by the proper-gauge quotient.
