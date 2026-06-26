---
paper id: 2606.26163v1
title: Large-$N$ Carrollian Thermodynamics from AdS Black-Hole Phase-Space Contractions
authors:
  - Yingnan Xu
  - Shuangshuang Chu
publication date: 2026-06-24T06:24
abstract: |-
  The paper develops a boundary and celestial interpretation of finite Carrollian black-hole thermodynamics. A phase-space contraction of the time generator and Newton constant produces a finite Carrollian first law, interpreted holographically as a low-temperature large-$N$ double scaling limit in which thermal products remain finite.
comments: "18 pages, 1 figure"
url: https://arxiv.org/abs/2606.26163v1
summary: "A finite Carrollian AdS black-hole first law is interpreted as a double-scaled low-temperature large-$N$ boundary ensemble whose Brown--York energy is a Carrollian supertranslation zero mode."
tags: []
---

Back to [[2026_06_26_overview]].

This is a medium-priority technical note. It is relevant because it connects Carrollian thermodynamics, Brown--York energy, and supertranslation zero modes, but the paper is a stationary thermodynamic construction rather than a new boundary charge algebra.

# Phase-space contraction

The finite sector is defined by the line

$$\begin{align}
\alpha+\gamma=1,
\end{align}$$

with contraction

$$\begin{align}
\xi_\lambda=c^{-\alpha}\partial_t=c^{1-\alpha}\partial_\tau, \qquad G_{d+1}=c^\gamma G_C.
\end{align}$$

In the Carrollian segment $\alpha<1$, $\gamma>0$, the temperature decreases while the entropy diverges:

$$\begin{align}
T_\lambda\sim c^{1-\alpha}\to0,\qquad S\sim c^{-\gamma}\to\infty,\qquad T_\lambda\delta S=O(1).
\end{align}$$

The finite limit is therefore not a trivial zero-temperature limit. It is a low-temperature/large-degeneracy compensation.

# Large-$N$ dictionary

The boundary degree-of-freedom normalization scales as

$$\begin{align}
N_{\rm eff}(c)\sim\frac{\ell^{d-1}}{G_{d+1}}\sim c^{-\gamma}.
\end{align}$$

For AdS$_5$/CFT$_4$,

$$\begin{align}
N^2=\frac{\pi}{2}\frac{\ell^3}{G_5}, \qquad G_5=c^\gamma G_{5C},
\end{align}$$

so $N^2\sim c^{-\gamma}$. For AdS$_3$/CFT$_2$,

$$\begin{align}
c_{\rm CFT}=\frac{3\ell}{2G_3}, \qquad G_3=c^\gamma G_{3C},
\end{align}$$

so $c_{\rm CFT}\sim c^{-\gamma}$.

The useful finite products are

$$\begin{align}
T_C N_{\rm eff}=O(1), \qquad T_C S_C=O(1).
\end{align}$$

# Brown--York tensor and boundary first law

After subtracting the AdS reference background, the finite Carrollian Brown--York variables for the static black hole include

$$\begin{align}
\mathcal E_C=\frac{(d-1)\mu}{16\pi G_C\ell^{d-1}}, \qquad \mathcal P_A^C=0, \qquad T^C_{AB}=\frac{\mu}{16\pi G_C\ell^{d-3}}q_{AB}.
\end{align}$$

The integrated charge is

$$\begin{align}
E_C=\frac{(d-1)\Omega_{d-1}}{16\pi G_C}\mu =\lim_{c\to0}H_\lambda \qquad(\alpha+\gamma=1).
\end{align}$$

Its variation is the finite contraction of the bulk first law:

$$\begin{align}
\delta E_C=\lim_{c\to0}(T_\lambda\delta S+V_\lambda\delta P).
\end{align}$$

# Boundary work term and Hawking--Page locus

The bulk pressure-volume term is rewritten in boundary variables:

$$\begin{align}
V_\partial=\Omega_{d-1}\ell^{d-1}, \qquad N_C=\frac{\ell^{d-1}}{G_C}, \qquad x=\frac{r_h}{\ell}.
\end{align}$$

The finite boundary first law is

$$\begin{align}
\delta E_C=\widehat T_C\delta S_C -p_\partial\delta V_\partial +\mu_{N_C}\delta N_C,
\end{align}$$

with

$$\begin{align}
V_C\delta P_C=-p_\partial\delta V_\partial+\mu_{N_C}\delta N_C.
\end{align}$$

The finite free energy obeys

$$\begin{align}
F_C=E_C-\widehat T_CS_C=N_C\mu_{N_C}.
\end{align}$$

Thus the Hawking--Page locus is the zero of $\mu_{N_C}$, equivalently $r_h=\ell$.

# Carroll charge and celestial variables

The global Brown--York energy is the Carrollian supertranslation zero mode:

$$\begin{align}
Q_C[f]=\int_{S^{d-1}}\sqrt{\sigma}\,f(x^A)\mathcal E_C(x^A), \qquad Q_C[1]=E_C.
\end{align}$$

For the stationary black-hole sector, $\mathcal P_A^C=0$, so the smeared charges are conserved. The paper contrasts this with generic null-infinity situations where a flux-balance term may appear:

$$\begin{align}
\partial_u\mathcal E+D_A\mathcal P^A=F_{\rm ren}.
\end{align}$$

In the celestial presentation, the finite thermal frequency window is

$$\begin{align}
\widehat\omega=N_{\rm eff}\omega, \qquad \widehat\beta_C=\frac{\beta_C}{N_{\rm eff}}.
\end{align}$$

The supertranslation Ward identity becomes a dimension-shift relation:

$$\begin{align}
\delta_f O^+_{\Delta,J}(z,\bar z) =-if(z,\bar z)O^+_{\Delta+1,J}(z,\bar z).
\end{align}$$

# Use for current projects

The useful distinction is that this AdS Carrollian construction describes a stationary zero-mode sector. It gives a clean Brown--York charge and a thermodynamic first law, while generic null boundaries require explicit flux/balance-law data. It is therefore a good comparison point for null-boundary notes, not a substitute for a full radiative CPS construction.

# Verification note

The formulas above are source-derived from official arXiv HTML/PDF sources. The Brown--York subtraction, extended first-law contraction, Cardy/Brown-Henneaux normalization, and celestial Mellin identities were not independently verified in this run.
