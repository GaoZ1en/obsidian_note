---
paper id: 2509.10921v1
title: "Gravitational Entropy"
authors: Sangmin Choi, Malcolm J. Perry
publication date: 2025-09-13T17:40:48Z
abstract: "We formulate the classical gravitational entropy of a horizon as a Noether charge that does not require the notion of a temperature, and which is applicable to horizons that are not necessarily associated with black holes. This introduces a correction to the covariant phase space formalism that accounts for the configuration-dependence of the generating vector field conjugate to the charge. The vector field is related to the proposal of Bousso that the gravitational entropy of a region is determined by the lightsheet at its boundary. We test the formula on various black hole and cosmological horizons."
comments: "23 pages"
pdf: "[[Attachments/Assets/Gravitational Entropy (2509.10921v1).pdf]]"
url: https://arxiv.org/abs/2509.10921v1
tags: []
---
# covariant phase space

$$\begin{align}
S & =\int _{M} L[\phi] \\
\delta S & =\int _{M} (E[\phi]\delta \phi+\mathrm{d}\theta[\phi,\delta \phi]) \\
\omega & =\int _{\Sigma}\delta \theta
\end{align}$$

consider the following symmetry transformation

$$\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x \mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}$$

act on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M} \mathrm{d}(\xi \cdot L)
\end{align}$$

then the corresponding Noether charge reads

$$\begin{align}
H_{\xi} & =\int _{\Sigma}X_{\xi}\cdot \theta-\xi \cdot L
\end{align}$$

which satisfies

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

