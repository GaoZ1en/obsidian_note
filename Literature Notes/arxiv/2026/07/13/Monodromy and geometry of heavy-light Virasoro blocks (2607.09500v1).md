---
paper id: 2607.09500v1
title: Monodromy and geometry of heavy-light Virasoro blocks
authors:
  - Mikhail Belakovskiy
  - Vladimir Belavin
publication date: 2026-07-10T15:15
abstract: |-
  The paper relates the classical monodromy method for semiclassical heavy-light Virasoro blocks to geodesic networks in AdS3. In holographic coordinates, monodromy eigenvectors encode the two endpoints of a bulk geodesic. Flatness at cubic vertices then gives background-independent algebraic equations for the internal network. The construction reproduces known four-point blocks and yields the full non-vacuum five-point HHLLL block.
comments: "15 pages"
url: https://arxiv.org/abs/2607.09500v1
summary: "Monodromy eigenlines become geodesic endpoints in the uniformizing coordinate, reducing heavy-light Virasoro blocks to background-independent vertex equations plus additive geodesic actions."
tags: []
---

Back to [[2026_07_13_overview]].

## From the monodromy problem to a geodesic network

The paper has three technical stages. Section 2 rewrites the heavy-light monodromy problem in a uniformizing coordinate and identifies monodromy eigenvectors with geodesic endpoints. Section 3 reconstructs the same equations from Euclidean geometry in the two-heavy conical-defect background. Section 4 uses these vertex equations to compute non-vacuum four- and five-point blocks and to identify the analytic-computability threshold of the method.

The classical dimensions and block are normalized by

$$\begin{align}
\epsilon_i=\frac{6\Delta_i}{c}, \qquad \widetilde\epsilon_i=\frac{6\widetilde\Delta_i}{c}, \qquad \mathfrak F\sim\exp\!\left(\frac{c}{6}f\right).
\end{align}$$

Heavy dimensions scale with $c$ and determine a background stress tensor $T^{(0)}$. Light external and exchanged dimensions enter to first order through $T^{(1)}$.

The monodromy equation is

$$\begin{align}
\psi''(z)+T(z)\psi(z)=0, \qquad T(z)=\sum_i\left[ \frac{\epsilon_i}{(z-z_i)^2} -\frac{c_i}{z-z_i} \right], \tag{2.1}
\end{align}$$

where the accessory parameters satisfy

$$\begin{align}
c_i=-\partial_{z_i}f.
\end{align}$$

An exchanged dimension $\widetilde\epsilon_{k-1}$ fixes the eigenvalues of the corresponding monodromy matrix,

$$\begin{align}
\lambda_\pm^{(k-1)} =e^{i\pi(1\pm\sqrt{1-4\widetilde\epsilon_{k-1}})}.
\end{align}$$

The heavy background is explicitly solvable only while its Ward identities fix all accessory parameters. In this setup that restricts closed-form heavy backgrounds to at most three heavy insertions.

## Holographic coordinate and monodromy eigenlines

Let $\psi_1^{(0)}$ and $\psi_2^{(0)}$ be independent solutions of the heavy-background equation. The uniformizing or holographic coordinate is

$$\begin{align}
\mathfrak w(z) =\frac{\psi_1^{(0)}(z)}{\psi_2^{(0)}(z)}.
\end{align}$$

For a light insertion at $z_i$, denote the other endpoint of its bulk geodesic by $y_i$. To first order the monodromy is written as

$$\begin{align}
M_{\gamma_i} =\operatorname{Id} +2\pi i\epsilon_iP_i\Lambda P_i^{-1} +O(c^{-2}), \qquad \Lambda=\operatorname{diag}(1,-1), \tag{2.5}
\end{align}$$

with eigenvectors

$$
\begin{pmatrix}-1\\ \mathfrak w(z_i)\end{pmatrix},
\qquad
\begin{pmatrix}-1\\ \mathfrak w(y_i)\end{pmatrix}.
$$

Thus the two eigenlines of the monodromy matrix record the two boundary endpoints of the associated bulk geodesic. The same dictionary applies to an internal line, with its exchanged dimension and two auxiliary endpoints.

For two equal heavy insertions,

$$\begin{align}
T^{(0)}=\frac{\epsilon_h}{z^2}, \qquad \alpha=\sqrt{1-\frac{24\Delta_h}{c}}, \qquad \mathfrak w=z^\alpha.
\end{align}$$

The heavy background therefore enters through the map $z\mapsto\mathfrak w(z)$; the internal light-network equations will depend only on cross-ratios in the $\mathfrak w$ plane.

## Flatness at a cubic geodesic vertex

For three geodesics meeting at a cubic vertex, a product of contours that is contractible in the flat bulk connection has trivial holonomy:

$$\begin{align}
M_{\gamma_{z_1}}M_{\gamma_{z_2}}M_{\gamma_{z_3}} =\operatorname{Id}. \tag{2.8}
\end{align}$$

At light order this becomes

$$\begin{align}
\sum_{i=1}^3\epsilon_iP_i\Lambda P_i^{-1}=0. \tag{2.9}
\end{align}$$

Writing $\mathfrak w_i=\mathfrak w(z_i)$ and $\widehat{\mathfrak w}_i=\mathfrak w(y_i)$ gives the three scalar conditions

$$\begin{align}
\sum_i\epsilon_i \frac{\mathfrak w_i+\widehat{\mathfrak w}_i} {\mathfrak w_i-\widehat{\mathfrak w}_i}=0,
\end{align}$$

$$\begin{align}
\sum_i\epsilon_i \frac{1}{\mathfrak w_i-\widehat{\mathfrak w}_i}=0, \qquad \sum_i\epsilon_i \frac{\mathfrak w_i\widehat{\mathfrak w}_i}
{\mathfrak w_i-\widehat{\mathfrak w}_i}=0. \tag{2.10}
\end{align}$$

Their invariant form is the cross-ratio equation

$$\begin{align}
\bigl( \mathfrak w(z_i),\mathfrak w(z_{i+1});
\mathfrak w(y_{i+2}),\mathfrak w(z_{i+2})
\bigr) =- \frac{-\epsilon_i+\epsilon_{i+1}+\epsilon_{i+2}} {\epsilon_i-\epsilon_{i+1}+\epsilon_{i+2}}. \tag{2.12}
\end{align}$$

The right-hand side contains only line weights. This is the central simplification: solve the light geodesic network in the uniformized plane without carrying the heavy geometry through every vertex calculation.

Section 3 derives the same equation for two heavy insertions from a force triangle and circle geometry. For an internal vertex,

$$\begin{align}
(\mathfrak w_1,\mathfrak w_2;
\widetilde{\mathfrak w}_{12},\widetilde{\mathfrak w}_{11}) =- \frac{-\epsilon_1+\epsilon_2+\widetilde\epsilon_1} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1}. \tag{3.11}
\end{align}$$

This is a source-internal geometric rederivation, not an independent check performed in this note.

## Additive light action

Integrating the accessory parameters gives the three-line light action

$$
\begin{aligned}
f(z)={}&
\sum_{i=1}^3\epsilon_i\ln\mathfrak w_i'
-(\epsilon_1+\epsilon_2-\epsilon_3)
\ln(\mathfrak w_1-\mathfrak w_2)\\
&-(\epsilon_1-\epsilon_2+\epsilon_3)
\ln(\mathfrak w_1-\mathfrak w_3)
-(-\epsilon_1+\epsilon_2+\epsilon_3)
\ln(\mathfrak w_2-\mathfrak w_3).
\end{aligned}
\tag{2.15}
$$

On a constant-time bulk slice, $\mathfrak w_i=e^{i\theta_i}$, and the geodesic action becomes

$$
\begin{aligned}
f(\theta)={}&
\sum_{i=1}^3\epsilon_i\ln\mathfrak w_i
-(\epsilon_1+\epsilon_2-\epsilon_3)
\ln(\mathfrak w_1-\mathfrak w_2)\\
&-(\epsilon_1-\epsilon_2+\epsilon_3)
\ln(\mathfrak w_1-\mathfrak w_3)
-(-\epsilon_1+\epsilon_2+\epsilon_3)
\ln(\mathfrak w_2-\mathfrak w_3).
\end{aligned}
\tag{2.17}
$$

The practical algorithm is to decompose a network into vacuum four- and five-point building blocks, add their elementary actions, and subtract internal segments that were counted twice.

## Non-vacuum four-point block

For the internal line, the vertex cross-ratio is supplemented by zero angular momentum,

$$\begin{align}
\widetilde{\mathfrak w}_{11} +\widetilde{\mathfrak w}_{12}=0. \tag{4.2}
\end{align}$$

The physical endpoint is

$$\begin{align}
\widetilde{\mathfrak w}_{11} =\frac{ \beta(\mathfrak w_1-\mathfrak w_2) -\sqrt{\beta^2(\mathfrak w_1-\mathfrak w_2)^2 +4\mathfrak w_1\mathfrak w_2}
}{2}, \qquad \beta=\frac{\epsilon_2-\epsilon_1}{\widetilde\epsilon_1}. \tag{4.3}
\end{align}$$

Substitution into the additive action yields the known non-vacuum HHLL block. The bulk position of the internal geodesic has been replaced by an algebraic endpoint problem.

## Full five-point HHLLL block

Two cubic vertices give four cross-ratio constraints, collected in Eq. (4.5). After mapping the three external $\mathfrak w$ coordinates to $0$, $1$, and $\infty$, the system reduces to one quartic,

$$\begin{align}
P(x)= [\zeta+(b-\zeta u)x+ax^2] [\zeta+(d-\zeta u)x+cx^2] +\eta^2(1-ux)^2=0, \tag{4.8}
\end{align}$$

where

$$\begin{align}
u=\frac{2\widetilde\epsilon_1} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1}, \qquad a=\frac{\widetilde\epsilon_1-\epsilon_3+\widetilde\epsilon_2} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1},
\end{align}$$

$$\begin{align}
b=\frac{-\epsilon_1+\epsilon_2+\epsilon_3-\widetilde\epsilon_2} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1}, \qquad c=\frac{\widetilde\epsilon_1-\epsilon_3-\widetilde\epsilon_2} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1},
\end{align}$$

$$\begin{align}
d=\frac{-\epsilon_1+\epsilon_2+\epsilon_3+\widetilde\epsilon_2} {\epsilon_1-\epsilon_2+\widetilde\epsilon_1}. \tag{4.9}
\end{align}$$

For the cyclic ordering chosen in the paper, the quartic has a unique negative root. That root selects the physical auxiliary endpoint. Substitution into the invariant geodesic action gives the complete five-point action and block in Eqs. (4.10) and (4.11). In the limit

$$\begin{align}
\epsilon_3\to0, \qquad \widetilde\epsilon_1=\widetilde\epsilon_2,
\end{align}$$

the quartic and five-point action reduce to the four-point quadratic problem.

With $n$ light fields the number of auxiliary endpoints is $2n-2$, and the final elimination problem grows to degree $2^{n-1}$. Combining solvability by radicals in the light sector with the restriction to at most three explicitly solvable heavy insertions leads to the paper's HHHLLL six-point threshold for closed-form analytic computation.

## Use in AdS3 correlator calculations

The reusable dictionary is

$$\begin{align}
\text{monodromy eigenlines} \longleftrightarrow
\text{geodesic endpoints in }\mathfrak w,
\end{align}$$

followed by

$$\begin{align}
\text{flat vertex holonomy} \longrightarrow
\text{background-independent cross-ratio equations}.
\end{align}$$

This isolates heavy-background dependence in the uniformizing map, converts internal bulk positions into algebraic endpoint variables, and reconstructs a semiclassical block from additive geodesic actions. It is a useful bridge among accessory-parameter, worldline, Wilson-network, and Steiner-tree descriptions of AdS$_3$/CFT$_2$ correlators.

The paper does not construct a boundary phase space, presymplectic form, surface charge, edge mode, or asymptotic-symmetry algebra. Its relevance is therefore spectral and holographic-correlator based rather than CPS based.

## Verification boundary

The official HTML, PDF, and TeX source were used to inspect the complete section structure and to confirm the displayed equations and their numbering. The paper's Euclidean construction supplies its own second derivation of Eqs. (2.12) and (2.17).

No independent Mathematica or Sage reproduction was performed for the monodromy eigenvectors, the elimination from Eq. (2.10) to Eq. (2.12), the accessory-parameter integration, the quartic root structure, or the degeneration of Eqs. (4.10)-(4.11). These claims and formulas remain source-derived.
