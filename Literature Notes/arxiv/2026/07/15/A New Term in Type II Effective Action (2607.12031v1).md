---
paper id: 2607.12031v1
title: "A New Term in Type II Effective Action"
authors:
  - Ashoke Sen
publication date: 2026-07-13T18:00:04
abstract: |-
  The one-loop ten-dimensional type IIA and IIB effective actions contain a term proportional to the dilaton times the ten-dimensional Euler density. The apparently forbidden torus dilaton one-point function arises because odd-spin-structure beta-gamma superghost zero modes make the naive soft-dilaton argument a zero-times-infinity limit. A vertical-integration correction across the modular-domain boundary gives the nonzero coefficient and cancels a string-coupling-dependent term in compactified black-hole indices.
comments: "LaTeX file; 16 pages"
url: https://arxiv.org/abs/2607.12031v1
summary: "A compact one-loop calculation showing how superghost zero modes and modularly consistent PCO transport generate a dilaton--Euler-density coupling that resolves a black-hole-index puzzle."
tags: []
---

Back to [[2026_07_15_overview]].

The paper's reusable mechanism is vertical integration in the presence of picture-changing-operator patching. A bulk torus integral vanishes by ghost number, yet the modular-domain patch boundary contributes a finite term. This is a spectral/one-loop reference rather than a CPS charge paper.

# The soft-dilaton puzzle

The soft dilaton theorem multiplies a genus-$g$, $n$-point closed-string amplitude by

$$\begin{align}
2g-2+n.
\end{align}$$

For a torus one-point dilaton insertion viewed as the derivative of a vacuum amplitude, the naive coefficient vanishes. In the odd spin structure, however, the bosonic $\beta$--$\gamma$ superghost system has zero modes, so the formal argument encounters

$$\begin{align}
0\times\infty.
\end{align}$$

The direct computation is finite and produces the ten-dimensional effective-action term

$$\begin{align}
\boxed{ \Delta I_{\rm 1-loop} =\mp\frac{1}{24} \int d^{10}x\,\phi(x)\,\mathcal E(x)
}, \tag{1.1, 3.12}
\end{align}$$

with the upper/lower sign assigned by the source to type IIB/type IIA in its Euclidean-action convention.

After compactification on a Calabi--Yau threefold, a previous black-hole-index calculation contained

$$\begin{align}
\pm\frac{1}{12}\chi_{CY}\ln g_s.
\tag{1.2}
\end{align}$$

For the Euclidean black-hole geometry,

$$\begin{align}
\int d^{10}x\,\mathcal E=2\chi_{CY},
\end{align}$$

so the new term cancels the unwanted string-coupling dependence.

# Odd-spin-structure torus data

## Dilaton vertex and picture changing

The picture-changing operators are

$$\begin{align}
\mathcal X =c\partial\xi+e^\phi T_F -\frac14\partial\eta\,e^{2\phi}b -\frac14\partial(\eta e^{2\phi}b), \tag{2.1}
\end{align}$$

with an antiholomorphic counterpart. The zero-momentum dilaton vertex is

$$\begin{align}
V_D =-4\left( \eta c\,\bar c\bar\partial\bar\xi e^{-2\bar\phi} -\bar\eta\bar c\,c\partial\xi e^{-2\phi} \right). \tag{2.2}
\end{align}$$

Applying both picture-changing operators produces a sign opposite to a commonly quoted bosonic-string convention. The source keeps (2.2), whose normalization is fixed by comparison with the superstring field-theory action.

## Torus and ghost normalization

The torus coordinate obeys

$$\begin{align}
w\equiv w+1\equiv w+\tau, \tag{2.5}
\end{align}$$

and $z=2\pi w$ maps it to the closed-string cylinder convention. Consequently,

$$\begin{align}
b(w)=4\pi^2\sum_nb_ne^{2\pi inw}, \qquad c(w)=\frac{1}{2\pi}\sum_nc_ne^{2\pi inw}. \tag{2.8}
\end{align}$$

In the odd--odd spin structure, the matter partition function is a Witten index proportional to the target-space Euler number $\chi$. The relative sign follows from the opposite type-IIA/type-IIB GSO projections.

# Why the bulk modular integral vanishes

The fundamental domain is

$$\begin{align}
-\frac12\le\tau_1<\frac12,\qquad |\tau|\ge1. \tag{2.14}
\end{align}$$

Near the long-tube limit, both picture-changing operators are averaged over the $a$-cycle:

$$\begin{align}
\int_{c_1}^{c_1+1}dy_1\,\mathcal X(y_1)
\int_{c_2}^{c_2+1}dy_2\,\overline{\mathcal X}(y_2).
\tag{2.15}
\end{align}$$

The $b$-ghost insertions producing the modular measure are

$$\begin{align}
\mathcal B_\tau=2\pi ib_0,\qquad \mathcal B_{\bar\tau}=-2\pi i\bar b_0. \tag{2.17}
\end{align}$$

The bulk correlator (2.18) vanishes by left/right ghost-number conservation. This is not the final amplitude because the chosen PCO cycles are not globally compatible with modular identification.

# Modular patching and vertical integration

The transformation

$$\begin{align}
\tau\mapsto-\frac1\tau
\end{align}$$

identifies the two arcs of $|\tau|=1$ while exchanging the $a$ and $b$ cycles. Averaging the PCO over the $a$-cycle on both arcs is therefore not a modularly consistent section of PCO space.

Write

$$\begin{align}
\tau=re^{i\theta}. \tag{2.19}
\end{align}$$

Across

$$\begin{align}
r=1,\qquad \frac{\pi}{2}\le\theta\le\frac{2\pi}{3}, \tag{2.20}
\end{align}$$

vertical integration moves the PCO from the $a$-cycle to the $b$-cycle. Dropping the normal $\mathcal B_r$ insertion and replacing a PCO by the difference of its endpoint $\xi$ insertions gives

$$\begin{align}
\int_0^1ds\, \left[\xi(s\tau+c_3)-\xi(s+c_1)\right], \tag{3.3}
\end{align}$$

and an analogous antiholomorphic expression.

The first term in $V_D$ is paired with the holomorphic PCO jump. After ghost and matter contractions, the answer is expressed through three contour integrals $I_1,I_2,I_3$. Their evaluated combinations are

$$\begin{align}
I_2-I_1 =\frac{i}{\tau\,\eta(\tau)^3}, \tag{3.8}
\end{align}$$

$$\begin{align}
I_3 =-\frac{1}{\pi\,\eta(\tau)^3}. \tag{3.9}
\end{align}$$

Substitution cancels the $\tau$ and Dedekind factors and leaves a constant modular-boundary density:

$$\begin{align}
I =\mp\frac{\chi}{8\pi} \int_{\pi/2}^{2\pi/3}d\theta =\mp\frac{\chi}{48}. \tag{3.10}
\end{align}$$

The antiholomorphic PCO jump paired with the second term in $V_D$ gives the same contribution. Doubling produces

$$\begin{align}
\mp\frac{\chi}{24}, \tag{3.11}
\end{align}$$

and hence the effective-action term (3.12).

# Other spin structures

Section 4 checks that no additional contribution survives. Under modular transformations the three even spin structures permute, and their PCO contours must be patched as well. The relevant vertical correlator is odd under

$$\begin{align}
s\mapsto1-s
\end{align}$$

for a symmetric contour choice, so its integral vanishes. The same parity argument eliminates mixed odd/even sectors.

Thus the nonzero term is localized to the odd--odd sector and its superghost zero-mode/vertical-integration structure.

# Use in black-hole and one-loop calculations

The practical chain is

$$\begin{align}
\text{odd spin structure} \to\text{superghost zero modes} \to\text{PCO patching obstruction} \to\text{vertical boundary integral} \to\phi\,\mathcal E_{10}.
\end{align}$$

This is useful when:

- a soft theorem appears to set a one-loop coupling to zero;
- a modular integral is locally exact or ghost-number forbidden but the PCO section is only patchwise defined;
- a compactified black-hole index develops spurious $g_s$ dependence;
- a topological target-space invariant can arise from a worldsheet Witten index.

It does not by itself determine a spacetime boundary charge, symplectic flux, or Wald entropy correction. The connection to black holes is through the effective action and index, not through a new horizon CPS construction.

# Verification boundary

- Mathematica substituted (3.8)--(3.9) into the coefficient in (3.4), canceled the $\tau$ and $\eta$ factors, integrated over the arc of length $\pi/6$, and reproduced $\mp\chi/48$ for one jump and $\mp\chi/24$ after doubling.
- The theta-function contour evaluations leading to (3.8)--(3.9), the correlator normalizations, GSO signs, and the parity cancellation of all other spin structures remain source-derived.
- The PDF/TeX endpoint was unavailable in this run, so the detailed worldsheet sign conventions were not independently checked against rendered pages.
