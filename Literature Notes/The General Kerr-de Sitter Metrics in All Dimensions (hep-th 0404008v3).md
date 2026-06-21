---
paper id: hep-th/0404008v3
title: "The General Kerr-de Sitter Metrics in All Dimensions"
authors: G. W. Gibbons, H. Lu, D. N. Page, C. N. Pope
publication date: 2004-04-01T20:59:05Z
abstract: "We give the general Kerr-de Sitter metric in arbitrary spacetime dimension Dge 4, with the maximal number [(D-1)/2] of independent rotation parameters. We obtain the metric in Kerr-Schild form, where it is written as the sum of a de Sitter metric plus the square of a null geodesic vector, and in generalised Boyer-Lindquist coordinates. The Kerr-Schild form is simpler for verifying that the Einstein equations are satisfied, and we have explicitly checked our results for all dimensions Dle 11. We discuss the global structure of the metrics, and obtain formulae for the surface gravities and areas of the event horizons. We also obtain the Euclidean-signature solutions, and we construct complete non-singular compact Einstein spaces on associated S^{D-2} bundles over S^2, infinitely many for each odd D ge 5."
comments: "Latex, 27 pages, typos corrected, version to appear in J. Geom. Phys"
pdf: "[[Attachments/Assets/The General Kerr-de Sitter Metrics in All Dimensions (hep-th 0404008v3).pdf]]"
url: https://arxiv.org/abs/hep-th/0404008v3
tags: []
---

# intro

the Kerr metric can be cast into the so called Kerr-Schild form

$$\begin{align}
\mathrm{d}s^{2} & =g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =\eta _{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}+\frac{2M}{U}(k_{\mu}\mathrm{d}x^{\mu})^{2}
\end{align}$$

where

$$\begin{align}
k & =k _{\mu}\mathrm{d}x^{\mu} \\
 & =\mathrm{d}t+\frac{r(x\mathrm{d}x+y\mathrm{d}y)+a(x\mathrm{d}y-y\mathrm{d}x)}{r^{2}+a^{2}}+\frac{z\mathrm{d}z}{r} \\
U & =r+\frac{a^{2}z^{2}}{r^{3}} \\
 & =\frac{1}{r}\left( 1-\frac{a^{2}(x^{2}+y^{2})}{(r^{2}+a^{2})^{2}}  \right)(r^{2}+a^{2})
\end{align}$$

and $\displaystyle{r}$ is defined by

$$\begin{align}
\frac{x^{2}+y^{2}}{r^{2}+a^{2}}+\frac{z^{2}}{r^{2}}=1
\end{align}$$

Myers and Perry gives a simple generalization of this ansatz that for even space dimensions $\displaystyle{D=2n\geqslant 4}$, we have

$$\begin{align}
k & =k _{\mu}\mathrm{d}x^{\mu} \\
 & =\mathrm{d}t+\sum ^{n-1}_{i=1} \frac{r(x_{i}\mathrm{d}x_{i}+y_{i}\mathrm{d}y_{i})+a_{i}(x_{i}\mathrm{d}y_{i}-y_{i}\mathrm{d}x_{i})}{r^{2}+a_{i}^{2}}+\frac{z\mathrm{d}z}{r} \\
U & =\frac{1}{r}\left(1-\sum ^{n-1}_{i=1} \frac{a_{i}^{2}(x_{i}^{2}+y_{i}^{2})}{(r^{2}+a_{i}^{2})^{2}}\right)\prod ^{n-1}_{j=1}(r^{2}+a_{j}^{2})
\end{align}$$

and

$$\begin{align}
\sum ^{n-1}_{i=1} \frac{x_{i}^{2}+y_{i}^{2}}{r^{2}+a_{i}^{2}}+\frac{z^{2}}{r^{2}}=1
\end{align}$$

if $\displaystyle{D=2n+1}$, there is no $\displaystyle{z}$ coordinates, the terms involving $\displaystyle{z}$ are omitted, and $\displaystyle{U}$ is then

$$\begin{align}
U & =\frac{1}{r}\prod ^{n-1}_{j=1}(r^{2}+a_{j}^{2})
\end{align}$$
