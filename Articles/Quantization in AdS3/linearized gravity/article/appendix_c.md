---
title: "Appendix C: Highest-weight modes and pure-gauge representatives"
date: 2026-05-15
summary: "Derives the normalized left and right boundary-graviton modes and records their large-diffeomorphism representatives."
---

# Highest-weight modes and pure-gauge representatives

This appendix summarizes the construction of the boundary-graviton modes used in Section 2.

## Highest-weight conditions

Consider a separated contravariant metric perturbation

$$
h^{\mu\nu}=e^{-i\omega t}e^{im\phi}f^{\mu\nu}(r).
$$

The left-moving primary is defined by

$$
\mathcal{L}_{\xi_1}h_{L,0}^{\mu\nu}=0,\qquad
\mathcal{L}_{\xi_0}h_{L,0}^{\mu\nu}=-2ih_{L,0}^{\mu\nu},\qquad
\mathcal{L}_{\bar\xi_a}h_{L,0}^{\mu\nu}=0,\quad a=0,\pm1.
$$

These conditions imply $\omega=m=2$. Solving the radial equations gives

$$
h_{L,0}^{\mu\nu}
=C\,\frac{e^{-4it}}{(1+r^2)^2}\bar{\xi}_1^\mu\bar{\xi}_1^\nu.
$$

Similarly, the right-moving primary obeys

$$
\mathcal{L}_{\bar\xi_1}h_{R,0}^{\mu\nu}=0,\qquad
\mathcal{L}_{\bar\xi_0}h_{R,0}^{\mu\nu}=-2ih_{R,0}^{\mu\nu},\qquad
\mathcal{L}_{\xi_a}h_{R,0}^{\mu\nu}=0,\quad a=0,\pm1,
$$

and is

$$
h_{R,0}^{\mu\nu}
=C\,\frac{e^{-4it}}{(1+r^2)^2}\xi_1^\mu\xi_1^\nu.
$$

Both modes satisfy the TT conditions

$$
g^{(0)}_{\mu\nu}h^{\mu\nu}=0,\qquad
\nabla^{(0)}_\mu h^{\mu\nu}=0,
$$

and solve

$$
(\nabla^{(0)2}+2)h_{\mu\nu}=0.
$$

## Normalization and descendants

The normalization constant is fixed by

$$
\Omega[h_{L,0},h_{L,0}^*]=-i,\qquad
\Omega[h_{R,0},h_{R,0}^*]=-i,
$$

which gives

$$
C=8\sqrt{3G}.
$$

The normalized descendants are

$$
\begin{align}
h_{L,n}^{\mu\nu}
&=\sqrt{\frac{6}{n!(n+3)!}}\,
\mathcal{L}_{\xi_{-1}}^n h_{L,0}^{\mu\nu},\\
h_{R,\bar n}^{\mu\nu}
&=\sqrt{\frac{6}{\bar n!(\bar n+3)!}}\,
\mathcal{L}_{\bar\xi_{-1}}^{\bar n}h_{R,0}^{\mu\nu}.
\end{align}
$$

They obey

$$
\Omega[h_{L,n},h^*_{L,m}]=-i\delta_{nm},\qquad
\Omega[h_{R,\bar n},h^*_{R,\bar m}]=-i\delta_{\bar n\bar m},\qquad
\Omega[h_{L,n},h_{R,\bar m}]=0.
$$

## Pure-gauge representatives

The primary modes can be written as diffeomorphisms of the background:

$$
h_{L,0}^{\mu\nu}
=\nabla^{(0)\mu}\zeta_{L,0}^{\nu}
+\nabla^{(0)\nu}\zeta_{L,0}^{\mu},
$$

with

$$
\begin{align}
\zeta_{L,0}^{t}
&=\frac{i\sqrt{3G}\,e^{-2it+2i\phi}r^4}{3(1+r^2)^2},\\
\zeta_{L,0}^{r}
&=-\frac{\sqrt{3G}\,e^{-2it+2i\phi}r(3+2r^2)}{3(1+r^2)},\\
\zeta_{L,0}^{\phi}
&=-\frac{i\sqrt{3G}\,e^{-2it+2i\phi}(3+r^2)}{3(1+r^2)}.
\end{align}
$$

Similarly,

$$
h_{R,0}^{\mu\nu}
=\nabla^{(0)\mu}\zeta_{R,0}^{\nu}
+\nabla^{(0)\nu}\zeta_{R,0}^{\mu},
$$

with

$$
\begin{align}
\zeta_{R,0}^{t}
&=\frac{i\sqrt{3G}\,e^{-2it-2i\phi}r^4}{3(1+r^2)^2},\\
\zeta_{R,0}^{r}
&=-\frac{\sqrt{3G}\,e^{-2it-2i\phi}r(3+2r^2)}{3(1+r^2)},\\
\zeta_{R,0}^{\phi}
&=\frac{i\sqrt{3G}\,e^{-2it-2i\phi}(3+r^2)}{3(1+r^2)}.
\end{align}
$$

The descendant gauge parameters are

$$
\begin{align}
\zeta_{L,n}^{\mu}
&=\sqrt{\frac{6}{n!(n+3)!}}\,
\mathcal{L}_{\xi_{-1}}^n\zeta_{L,0}^{\mu},\\
\zeta_{R,\bar n}^{\mu}
&=\sqrt{\frac{6}{\bar n!(\bar n+3)!}}\,
\mathcal{L}_{\bar\xi_{-1}}^{\bar n}\zeta_{R,0}^{\mu}.
\end{align}
$$

These diffeomorphisms are pure gauge in the bulk, but their parameters approach non-trivial functions at the AdS boundary. This is why the associated perturbations survive as physical edge modes in the Brown-Henneaux phase space.
