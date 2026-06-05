---
title: TMG
date: 2026-06-04
summary: "Records the topologically massive gravity limit of GMG and the corresponding highest-weight massive branch, chiral point, and logarithmic degeneration."
---

# Topologically massive gravity

This note treats topologically massive gravity as the $m^2\to\infty$ limit of the GMG conventions in `GMG.md`. The primary references for the mode conventions are Li--Song--Strominger, [arXiv:0801.4566](https://arxiv.org/abs/0801.4566), Liu--Sun, [arXiv:0903.0536](https://arxiv.org/abs/0903.0536), and Liu--Sun, [arXiv:0904.0403](https://arxiv.org/abs/0904.0403).

## Limit from GMG

With the same unit-radius AdS$_3$ background and Einstein sign as `linearize.md`, the TMG action is

$$
I_{\rm TMG}
=
\frac{1}{16\pi G}
\int d^3x\sqrt{-g}
\left[
R+2+\frac{1}{\mu}L_{\rm CS}
\right].
$$

The GMG root relations are

$$
m_1m_2=-m^2-\frac{1}{2},
\qquad
m_1+m_2=-\frac{m^2}{\mu}.
$$

Taking $m^2\to\infty$ sends one root to infinity and leaves the finite root

$$
M=\mu.
$$

Thus the TT equation becomes

$$
(D^L D^R D^M h)_{\mu\nu}=0,
$$

with

$$
(D^M)_\mu{}^\nu
=
\delta_\mu{}^\nu
+\frac{1}{\mu}
\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha.
$$

Equivalently,

$$
(\nabla^{(0)2}+2)(D^M h)_{\mu\nu}=0.
$$

The massless operators are

$$
(D^L)_\mu{}^\nu
=
\delta_\mu{}^\nu
+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,
\qquad
(D^R)_\mu{}^\nu
=
\delta_\mu{}^\nu
-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha.
$$

## Highest-weight branches

In the orientation used here, the massless branches have highest weights

$$
(h,\bar h)_L=(2,0),
\qquad
(h,\bar h)_R=(0,2).
$$

For $\mu>0$, the massive branch selected by $D^Mh=0$ has

$$
(h,\bar h)_M
=
\left(
\frac{3}{2}+\frac{\mu}{2},
-\frac{1}{2}+\frac{\mu}{2}
\right).
$$

The corresponding global quantum numbers are

$$
\omega=h+\bar h=1+\mu,
\qquad
j=h-\bar h=2.
$$

A highest-weight primary $h^M_{0,0}$ generates descendants by acting with the two lowering operators,

$$
h^M_{p,q}
=
\mathcal{L}_{\xi_{-1}}^p
\mathcal{L}_{\bar\xi_{-1}}^q
h^M_{0,0},
\qquad
p,q\geq 0.
$$

The massless Brown-Henneaux branches are generated in the same way from the $(2,0)$ and $(0,2)$ primaries, with the pure Einstein theory retaining them as boundary gravitons rather than local bulk gravitons.

## Chiral point and log degeneration

The Brown-Henneaux central charges in these conventions are

$$
c_L=\frac{3}{2G}\left(1-\frac{1}{\mu}\right),
\qquad
c_R=\frac{3}{2G}\left(1+\frac{1}{\mu}\right).
$$

At the chiral point

$$
\mu=1,
$$

the left central charge vanishes and the massive highest weight becomes

$$
(h,\bar h)_M=(2,0).
$$

The finite massive operator coincides with the left massless operator,

$$
D^M=D^L,
$$

and the factorized equation degenerates to

$$
(D^L D^L D^R h)_{\mu\nu}=0.
$$

A logarithmic partner can be generated as the parameter derivative of the massive branch,

$$
h^{\log}_{\mu\nu}
=
\left.
\frac{\partial h^M_{\mu\nu}}{\partial \mu}
\right|_{\mu=1},
$$

up to an overall normalization. It obeys the Jordan-chain conditions

$$
D^L h^{\log}\propto h^L,
\qquad
(D^L)^2 h^{\log}=0,
\qquad
D^R h^{\log}\neq 0.
$$

The logarithmic mode has the same massless weights but carries the parameter derivative of the radial and time dependence of the massive solution. Under strict Brown-Henneaux boundary conditions it is excluded; under logarithmic boundary conditions it is retained as the logarithmic partner of the chiral boundary graviton.
