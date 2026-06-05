---
title: NMG
date: 2026-06-04
summary: "Records the new massive gravity limit of GMG, including the two parity-related massive branches, the critical point, and the logarithmic degeneration."
---

# New massive gravity

This note treats new massive gravity as the $\mu\to\infty$ limit of the GMG conventions in `GMG.md`. The primary reference for the AdS$_3$ mode conventions is Liu--Sun, [arXiv:0903.0536](https://arxiv.org/abs/0903.0536), with the GMG normalization matched to Liu--Sun, [arXiv:0904.0403](https://arxiv.org/abs/0904.0403).

## Limit from GMG

With the unit-radius AdS$_3$ input value of the cosmological coupling already substituted, the NMG action is

$$
I_{\rm NMG}
=
\frac{1}{16\pi G}
\int d^3x\sqrt{-g}
\left[
R+2+\frac{1}{2m^2}
-\frac{1}{m^2}
\left(
R_{\mu\nu}R^{\mu\nu}
-\frac{3}{8}R^2
\right)
\right],
$$

The GMG root relations become

$$
m_1+m_2=0,
\qquad
m_1m_2=-m^2-\frac{1}{2}.
$$

It is convenient to define the positive parameter

$$
M_N
=
\sqrt{m^2+\frac{1}{2}}.
$$

Then

$$
m_1=M_N,
\qquad
m_2=-M_N,
$$

and the TT equation factorizes as

$$
(D^L D^R D^{M_N}D^{-M_N}h)_{\mu\nu}=0.
$$

Equivalently,

$$
(\nabla^{(0)2}+2)
\left(
\nabla^{(0)2}-m^2+\frac{5}{2}
\right)
h_{\mu\nu}=0.
$$

## Massive helicity branches

The two massive first-order equations are

$$
D^{M_N}h=0,
\qquad
D^{-M_N}h=0.
$$

They are exchanged by parity and describe the two helicity branches of NMG. For $M_N>0$, their highest weights can be written as

$$
(h,\bar h)_+
=
\left(
\frac{3}{2}+\frac{M_N}{2},
-\frac{1}{2}+\frac{M_N}{2}
\right),
$$

and

$$
(h,\bar h)_-
=
\left(
-\frac{1}{2}+\frac{M_N}{2},
\frac{3}{2}+\frac{M_N}{2}
\right).
$$

Both branches have the same frequency

$$
\omega=h+\bar h=1+M_N,
$$

while their spins are opposite,

$$
j_+=2,
\qquad
j_-=-2.
$$

A primary in either branch generates the global descendants by

$$
h^\pm_{p,q}
=
\mathcal{L}_{\xi_{-1}}^p
\mathcal{L}_{\bar\xi_{-1}}^q
h^\pm_{0,0},
\qquad
p,q\geq 0.
$$

## Critical point and log modes

The Brown-Henneaux central charges are equal,

$$
c_L=c_R
=
\frac{3}{2G}
\left(
1-\frac{1}{2m^2}
\right).
$$

The critical point is

$$
m^2=\frac{1}{2}.
$$

At this value,

$$
M_N=1,
$$

so the massive weights reduce to the two massless weights,

$$
(h,\bar h)_+=(2,0),
\qquad
(h,\bar h)_-=(0,2).
$$

The first-order massive operators coincide with the two massless operators,

$$
D^{M_N}=D^L,
\qquad
D^{-M_N}=D^R,
$$

and the factorized equation becomes

$$
(D^L)^2(D^R)^2 h=0.
$$

In second-order form this is

$$
(\nabla^{(0)2}+2)^2h_{\mu\nu}=0.
$$

The logarithmic partners can be obtained by differentiating the massive branches with respect to $M_N$ at the critical point,

$$
h^{\log,L}_{\mu\nu}
=
\left.
\frac{\partial h^+_{\mu\nu}}{\partial M_N}
\right|_{M_N=1},
\qquad
h^{\log,R}_{\mu\nu}
=
\left.
\frac{\partial h^-_{\mu\nu}}{\partial M_N}
\right|_{M_N=1}.
$$

They obey the Jordan-chain relations

$$
D^L h^{\log,L}\propto h^L,
\qquad
(D^L)^2h^{\log,L}=0,
$$

and

$$
D^R h^{\log,R}\propto h^R,
\qquad
(D^R)^2h^{\log,R}=0.
$$

With strict Brown-Henneaux boundary conditions these logarithmic partners are excluded. With logarithmic boundary conditions they become the left and right log partners of the degenerate boundary-graviton branches.
