---
paper id: 2606.31705v1
title: Monitoring a de Sitter universe through an anti-de Sitter window
authors:
  - Sarah Hoback
  - Daniel L. Jafferis
  - Zixia Wei
publication date: 2026-06-30T14:11:52
abstract: |-
  The paper proposes that AdS3 gravity with dS2 end-of-the-world branes is dual to a unitary holographic CFT2 equipped with non-unitary conformal boundary conditions. These boundary conditions have complex g-functions in conjugate pairs, the gravitational path integral has complex rather than real saddles, and a dS-brane black-hole microstate is interpreted as unitary CFT time evolution of a pure state prepared by a Euclidean cylinder path integral. The construction predicts a boundary-condition-changing primary with h=-c/8 in the boundary sector.
comments: "Revtex, 8 pages, 3 figures"
url: https://arxiv.org/abs/2606.31705v1
summary: "A short dS/AdS interface proposal recasting dS2 branes behind AdS3 horizons as non-unitary boundary conditions inside a unitary CFT Hilbert space."
tags: []
---

Back to [[2026_07_01_overview]].

This is a medium-priority conceptual/technical note. It is relevant to dS/AdS state preparation and boundary-sector logic, but it is not a direct charge, CPS, or boundary-flux paper.

# dS brane behind an AdS3 black hole

The gravitational setup is AdS3 Einstein gravity coupled to a two-dimensional end-of-the-world brane. The brane obeys the Neumann-type condition

$$
\begin{align}
K_{ab}-(K-T)h_{ab}=0,
\end{align}
$$

where $T$ is the brane tension and $h_{ab}$ is the induced brane metric. The Lorentzian solution places a dS2 EOW brane behind the horizon of an AdS3 black hole.

The conceptual problem is Euclidean preparation: ordinary AdS/BCFT branes intersect the asymptotic AdS boundary and have a direct boundary-condition interpretation, but dS branes do not give a real Euclidean saddle intersecting the boundary in the same way.

# Complex saddles and boundary conditions

The proposed resolution is to use complex Euclidean saddles. For a Euclidean boundary manifold $\Sigma$, the holographic path integral is interpreted through

$$
\begin{align}
Z_{\rm AdS}[\Sigma]
=
\int_{\partial M=\Sigma}\mathcal D h\,\mathcal D g\,e^{-I_E},
\qquad
Z_{\rm CFT}[\Sigma]=Z_{\rm AdS}[\Sigma].
\end{align}
$$

The complex disk solutions define non-unitary conformal boundary conditions. Their disk amplitudes give complex boundary entropies or $g$-functions, denoted by a conjugate pair $g_+$ and $g_-$. The paper labels the corresponding boundary conditions as $B$ and $\bar B$.

# Disk and cylinder preparations

For disk $\Sigma$, the source constructs complex disk wedges. The boundary condition is non-unitary, in contrast with the unitary boundary conditions familiar from AdS2 branes in AdS3/BCFT2.

For cylinder $\Sigma$, the paper distinguishes $BB$ and $B\bar B$ boundary assignments. The $BB$ cylinder admits disconnected/connected complex saddle comparisons. The $B\bar B$ case is the one tied to the Lorentzian black-hole microstate with a dS2 brane behind the horizon.

The CFT state is prepared by a Euclidean cylinder with these boundary conditions and then evolved unitarily in the ordinary CFT Hilbert space. Thus the non-unitarity is attached to the boundary condition used in state preparation, not to the bulk CFT time evolution.

# Boundary-sector primary

The construction predicts a boundary-condition-changing primary with

$$
\begin{align}
h=-\frac{c}{8}.
\end{align}
$$

The source emphasizes that this operator lives in the boundary sector, not the bulk spectrum. That is the mechanism by which a negative conformal weight can coexist with unitarity of the underlying holographic CFT.

# Local use

The transferable idea is a clean separation between:

- the unitary bulk CFT Hilbert space;
- a non-unitary boundary condition used for Euclidean state preparation;
- complex gravitational saddles used to compute the preparation amplitude;
- dS dynamics encoded behind the AdS black-hole horizon.

This is useful for dS/AdS interface notes because it makes the "dS holography as state preparation" slogan precise enough to compare with boundary-condition sectors.

# Verification note

No independent gravitational action or conformal-block check was performed for this medium note. The note uses the official arXiv abstract and official PDF text because arXiv HTML was unavailable for this paper. The key formula-level statements above are source-derived, especially the Neumann brane condition and the predicted $h=-c/8$ boundary-changing primary.
