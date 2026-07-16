---
paper id: 2607.14042v1
title: Negative shocks versus static patch holography
authors:
  - Yiming Chen
  - Douglas Stanford
  - Haifeng Tang
  - Zhenbin Yang
publication date: 2026-07-15T17:13
abstract: |-
  The paper tests the proposal that Euclidean de Sitter gravity with an observer worldline computes a positive cyclic trace. Two-point functions pass basic checks, but out-of-time-ordered four-point functions do not. Observer recoil and gravitational backreaction combine into a negative-shock eikonal problem with two lateral resummations exchanged by cyclicity; more decisively, the positive leading correction to a regularized OTOC violates the analyticity and positivity bounds obeyed by a Hilbert-space trace.
comments: "30 pages plus appendices"
url: https://arxiv.org/abs/2607.14042v1
summary: "A concrete negative-shock and maximum-modulus obstruction to interpreting the de Sitter observer-worldline path integral as a positive trace."
tags: []
---

[[2026_07_16_overview|Back to the daily overview]]

This paper is a useful test protocol rather than only another de Sitter OTOC computation. It separates two possible failures of static-patch holography: a Stokes/cyclicity ambiguity in resumming negative shocks, and a stronger positivity contradiction that survives any cyclic averaging of the two resummations.

## The observer necklace and the trace target

The conjectural dictionary equates a Euclidean sphere path integral with an observer worldline, fixed segment energies, and operator insertions to

$$
\operatorname{Tr}\!\left(\mathcal O_n\Pi_{m_n}\cdots\mathcal O_1\Pi_{m_1}\right).
$$

The weak version tested here assumes only:

$$
\operatorname{Tr}(ab)=\operatorname{Tr}(ba),
\qquad
\operatorname{Tr}(a^\dagger a)\ge0,
$$

plus analyticity expected for a finite-dimensional de Sitter Hilbert space. Two-point functions are compatible with this interpretation. At $G=0$ and large observer mass, the sphere transform gives

$$
\boldsymbol{\mathcal G}(m_1,m_2)
=Z_{\rm sphere}\!\left(\frac{m_1+m_2}{2}\right)
\int_{-\infty}^{\infty}\frac{dt}{2\pi}
e^{it(m_2-m_1)}G_\nu(\pi+it),
$$

which is symmetric and positive. Integrating over observer energies produces a smeared tracial correlator,

$$
\boldsymbol{\mathcal G}_{\rm tracial}(it)
=Z_{\rm sphere}(m_0)
\int\frac{dt'}{2\pi}
\frac{G_\nu(\pi+it')}{\pi^2+(t-t')^2}.
$$

This warmup explains why the four-point failure is nontrivial: it is not already visible in the spectral density of the two-point function.

## One shock operator contains recoil and gravity

In dS$_3$, an observer of mass $m$ produces a conical parameter

$$
\alpha=2\pi(1-4Gm).
$$

The horizon shock profile obeys

$$
2\left[-\frac{(2\pi)^2}{\alpha^2}\partial_\phi^2-1\right]X^+(\phi)
=8\pi G\,T_-(\phi).
$$

Its point-source Green function contains two physically distinct pieces. At small $Gm$,

$$
h(\phi)
=\frac1{2m}\cos\phi
-2G(\pi-|\phi|)\sin|\phi|+\cdots.
$$

The $\ell=1$ mode would be pure gauge without the observer; the observer lifts it and turns it into recoil. The angular mean is instead the gravitational mode,

$$
\langle h\rangle=-\frac{4\pi G}{\alpha}<0,
$$

whose sign gives a time advance rather than the black-hole time delay. This single kernel therefore organizes powers of both $e^t/m$ and $Ge^t$.

## Wrong-sign JT exposes the two lateral resummations

The paper first isolates the mechanism in a static-patch dS JT model. The eikonal integral is the ordinary JT integral analytically continued to an effective negative coupling $C<0$. The formal perturbative series is unchanged, but the Borel singularity moves onto the integration direction.

There are then two contour choices, denoted $\mathcal F_{12}$ and $\mathcal F_{14}$. They are two lateral continuations around the same branch point. In a hypergeometric representation,

$$
\frac{\mathcal F_{\rm JT}}{\langle WW\rangle\langle VV\rangle}
=\frac{U(2\Delta,1,1/z)}{z^{2\Delta}},
$$

and the two functions lie on different sheets of $U$. A cyclic permutation exchanges the sheets. Therefore no single natural lateral prescription is simultaneously the continuation preferred in every cyclic channel.

The point is not that the perturbative coefficients differ: $\mathcal F_{12}$ and $\mathcal F_{14}$ have the same asymptotic series. Their difference is nonperturbative Stokes data.

## Full eikonal OTOC and the recoil tetrahedron

For dS$_3$, the shock path integral yields the gravitational factor

$$
\exp\!\bigl(i p_+p_-h(\phi_1-\phi_2)\bigr).
$$

Horizon wavefunctions unzip the $WW$ and $VV$ two-point functions into definite null momenta; the shock factor is inserted; the momenta and impact parameters are integrated back. Positive and negative Lorentzian times require two eikonal expansions, combined by

$$
\mathcal F_{12}
=\mathcal F_{12}^{t>0}+\mathcal F_{12}^{t<0}
-\mathcal F_{\rm disc},
$$

and similarly for $\mathcal F_{14}$.

In energy space, the pure-recoil limit becomes a stationary-phase problem for a spherical tetrahedron whose six edge lengths are observer/field masses. The action is the Regge-like sum

$$
I_{\rm tet}=\sum_{i<j}m_{ij}d_{ij}.
$$

Different saddles and quadrants reproduce the two contour prescriptions. This geometric representation is helpful, but the paper's main no-go does not depend on trusting every tetrahedron branch.

## Positive coefficients are the warning sign

For the regularized OTOC, the combined recoil and gravitational expansion is schematically

$$
\mathrm{OTOC}
\sim1+Ge^t+\left(G^2+\frac{G}{m}+\frac1{m^2}\right)e^{2t}+\cdots.
$$

All coefficients have the sign that makes the correlator increase. For black-hole shocks the corresponding coefficients alternate and the OTOC decreases. Here the positive sign is the observable imprint of the de Sitter time advance.

The lateral ambiguity is already a problem for cyclicity, but one might try to average $\mathcal F_{12}$ and $\mathcal F_{14}$. The paper shows why that does not rescue a trace.

## Two Cauchy--Schwarz cuts and the positivity contradiction

Assume the energy-space four-point function really has a positive trace representation. Insert a Gaussian energy window

$$
\sigma=e^{-\delta^2(m-M)^2},
\qquad \delta\sim m^{-1/2},
$$

and form an analytic function $f$ from four alternating $W,V$ insertions and Euclidean evolutions. The two ways of cutting the trace give

$$
|\operatorname{Tr}(A_{12}^2)|
\le\operatorname{Tr}(A_{12}A_{12}^\dagger),
$$

and

$$
|\operatorname{Tr}(A_{14}^2)|
\le\operatorname{Tr}(A_{14}A_{14}^\dagger).
$$

Each cut controls a different edge of the strip

$$
-\frac\pi2<\operatorname{Im}t<\frac\pi2.
$$

Choosing the auxiliary Euclidean evolution appropriately gives $|f|\le1$ on both strip edges. If $f$ is analytic and bounded, the maximum-modulus/Phragmén--Lindelöf argument implies

$$
|f(t)|\le1
$$

throughout the strip. But the positive first eikonal correction makes $f$ exceed its early-time value inside the strip before perturbation theory breaks down. This is the contradiction.

The logic distinguishes the two issues cleanly:

- $\mathcal F_{12}$ satisfies the $A_{12}$ bound but not the $A_{14}$ bound;
- $\mathcal F_{14}$ satisfies the $A_{14}$ bound but not the $A_{12}$ bound;
- their average is cyclic, but violates both positivity bounds.

Thus positivity is the more robust obstruction.

## Verification note

Independent Mathematica checks reproduced:

1. the stated point-shock solution away from $\phi=0$, together with the derivative jump that gives the delta-function coefficient in the shock equation;
2. the exact moments

   $$
   \langle h\rangle=-\frac{4\pi G}{\alpha},
   \qquad
   \langle h^2\rangle
   =\frac{2\pi^2G^2[\alpha+\sin\alpha]}
   {\alpha\sin^2(\alpha/2)};
   $$

3. the small-$Gm$ expansion

   $$
   \langle h^2\rangle
   =\frac1{8m^2}-\frac{G}{2m}
   +\frac{2\pi^2-6}{3}G^2+\cdots;
   $$

4. the Fourier integral used in the two-point warmup,

   $$
   \int_{-\infty}^{\infty}d\omega\,
   e^{-\pi|\omega|+i\omega x}
   =\frac{2\pi}{\pi^2+x^2}.
   $$

The horizon Bessel transforms, all tetrahedron saddles, lateral Borel contours, and the analyticity/factorization assumptions entering the trace no-go are source-derived. No internal contradiction was found in the checked shock/moment chain.

## Local use

- The $\ell=1$ recoil mode is a concrete example of a would-be gauge mode made physical by an observer/boundary defect.
- The angular mean of the shock kernel separates the gravitational time-advance sign from recoil.
- When a perturbative expansion has same-sign coefficients, retain the lateral-contour label as physical data; do not identify the two resummations by their common series.
- For any proposed static-patch state/algebra, test both Cauchy--Schwarz cuts. Cyclicity alone is too weak.
