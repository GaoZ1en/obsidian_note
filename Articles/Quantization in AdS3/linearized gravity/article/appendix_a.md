---
title: "Appendix A: Brown-Henneaux falloffs and boundary geometry"
date: 2026-05-15
summary: "Collects the Brown-Henneaux falloffs and the boundary geometry used in the linearized gravity article."
---

# Appendix A: Brown-Henneaux falloffs and boundary geometry

This appendix records the asymptotic estimates and boundary geometric data used in the main text.

## A.1 Boundary conditions

In global AdS$_3$,

$$
\mathrm{d}s^2=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2,
$$

the Brown-Henneaux boundary conditions are

$$
\begin{array}{c|ccc}
\mathcal{O}(r^n) & h_{tt},h_{t\phi},h_{\phi\phi} & h_{tr},h_{r\phi} & h_{rr}\\
\hline
 & 0 & -3 & -4
\end{array}
$$

After raising indices with the background metric, one obtains

$$
\begin{array}{c|ccc}
\mathcal{O}(r^n) & h^{tt},h^{t\phi},h^{\phi\phi} & h^{tr},h^{r\phi} & h^{rr}\\
\hline
 & -4 & -3 & 0
\end{array}
$$

The mixed components scale as

$$
\begin{array}{c|cccc}
\mathcal{O}(r^n)
& h_t{}^t,h_t{}^\phi,h_\phi{}^t,h_\phi{}^\phi
& h_t{}^r,h_\phi{}^r
& h_r{}^t,h_r{}^\phi
& h_r{}^r\\
\hline
& -2 & -1 & -5 & -2
\end{array}
$$

The trace and quadratic contraction obey

$$
h=\mathcal{O}(r^{-2}),\qquad
h_{\mu\nu}h^{\mu\nu}=\mathcal{O}(r^{-4}).
$$

The same falloffs are imposed on allowed variations $\delta h_{\mu\nu}$.

## A.2 Boundary geometry

The constant-$t$ Cauchy surface has induced metric

$$
\sigma^{(0)}_{ab}\mathrm{d}x^a\mathrm{d}x^b
=\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2,
$$

and unit normal

$$
\tau_\mu=(-\sqrt{1+r^2},0,0).
$$

The large-radius timelike boundary has induced metric

$$
\gamma^{(0)}_{ab}\mathrm{d}x^a\mathrm{d}x^b
=-(1+r^2)\mathrm{d}t^2+r^2\mathrm{d}\phi^2,
$$

with outward unit normal

$$
n_\mu=\left(0,\frac{1}{\sqrt{1+r^2}},0\right).
$$

The circle $\partial\Sigma$ at fixed $t$ and large $r$ has

$$
h^{(0)}_{\phi\phi}=r^2.
$$

## A.3 Use in radial power counting

The estimates above organize the large-radius behavior of the following quantities:

- radial boundary terms in the variation of the renormalized action;
- the symplectic potential and symplectic form;
- Brown-Henneaux surface charges;
- possible logarithmic terms in the quadratic action.
