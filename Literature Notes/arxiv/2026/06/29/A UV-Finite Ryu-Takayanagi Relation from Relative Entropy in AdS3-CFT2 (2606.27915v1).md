---
paper id: 2606.27915v1
title: A UV-Finite Ryu-Takayanagi Relation from Relative Entropy in AdS3/CFT2
authors:
  - Albert Much
  - Philipp Dorau
  - Leonardo Sangaletti
  - Rainer Verch
publication date: 2026-06-26T10:06:24
abstract: |-
  The paper replaces the UV-divergent interval entropy in AdS3/CFT2 by relative entropy. Hollands' chiral relative-entropy formula is adapted to a diamond region, where the boundary functional is written in terms of a Schwarzian derivative. Through the Fefferman-Graham dictionary for Banados geometries, the linearized boundary relative entropy matches the Ryu-Takayanagi geodesic-length variation divided by 4G_N.
comments: ""
url: https://arxiv.org/abs/2606.27915v1
summary: "A relative-entropy functional is matched to the linearized RT length variation in AdS3/CFT2."
tags: []
---

Back to [[2026_06_29_overview]].

# Relative Entropy Replaces Divergent Interval Entropy

The paper's main claim is a UV-finite version of the Ryu-Takayanagi relation in AdS3/CFT2:

$$\begin{align}
S_{\rm rel}^I(\omega_0\Vert\omega_f) =\frac{\delta\operatorname{Length}(\gamma_A)}{4G_N}.
\end{align}$$

The point is not to compute the divergent vacuum interval entropy. Instead, the boundary quantity is a relative entropy between the vacuum and a coherent state associated with a diffeomorphism.

# Boundary Modular Hamiltonian and Schwarzian Functional

For an interval of radius $\ell$ centered at $x_c$, the vacuum modular Hamiltonian is

$$\begin{align}
K^I=2\pi\int_{x_c-\ell}^{x_c+\ell} \frac{\ell^2-(x-x_c)^2}{2\ell}:T_{00}(x):\,dx .
\end{align}$$

The chiral Hollands formula used in the paper writes relative entropy as a Schwarzian functional. In centered coordinates this has the form

$$\begin{align}
S_{\rm rel} =-\frac{c}{12}\int_{-\ell}^{\ell} \frac{\ell^2-u^2}{2\ell}\{\rho(u),u\}\,du .
\end{align}$$

The kernel is the same interval weight that appears in the modular Hamiltonian. This shared kernel is what makes the comparison with geodesic length direct.

# Banados Data from the Chiral Stress Tensor

The bulk side is written in Banados form,

$$\begin{align}
g^B=\frac{R^2dz^2}{z^2} -\left(\frac{R^2}{z^2}+z^2L(u)\bar L(v)\right)du\,dv +L(u)du^2+\bar L(v)dv^2 .
\end{align}$$

The boundary stress tensor and the Banados function are related by

$$\begin{align}
T_{uu}=\frac{c}{6}L(u), \qquad T_{vv}=\frac{c}{6}\bar L(v),
\end{align}$$

up to the paper's normalization conventions. For the chiral diffeomorphism state, the Schwarzian relation is

$$\begin{align}
T(u)=-\frac{c}{24\pi}\{\rho,u\},
\end{align}$$

and the Fefferman-Graham dictionary gives

$$\begin{align}
T(u)=\frac{c}{12\pi}L_\rho(u), \qquad L_\rho(u)=-\frac12\{\rho,u\}.
\end{align}$$

# Linearized RT Geodesic Length

The unperturbed RT curve for the interval is the semicircle

$$\begin{align}
z_0(u)=\sqrt{\ell^2-u^2}.
\end{align}$$

For a right-moving chiral perturbation, the relevant metric perturbation is

$$\begin{align}
h_{uu}=L(u),
\end{align}$$

with the other components absent in the chosen sector. The induced perturbation on the geodesic gives a length variation

$$\begin{align}
\delta\operatorname{Length} =\frac{1}{R}\int_{-\ell}^{\ell} \frac{\ell^2-u^2}{2\ell}L(u)\,du .
\end{align}$$

The same interval kernel has appeared again, now on the bulk geodesic side.

# Matching the Two Integrals

Using

$$\begin{align}
L_\rho(u)=-\frac12\{\rho,u\},
\end{align}$$

the boundary relative entropy can be rewritten as

$$\begin{align}
S_{\rm rel} =\frac{c}{6}\int_{-\ell}^{\ell} \frac{\ell^2-u^2}{2\ell}L_\rho(u)\,du .
\end{align}$$

The Brown-Henneaux relation

$$\begin{align}
c=\frac{3R}{2G_N}
\end{align}$$

then turns the bulk length variation into

$$\begin{align}
\frac{\delta\operatorname{Length}}{4G_N} =\frac{c}{6}\int_{-\ell}^{\ell} \frac{\ell^2-u^2}{2\ell}L_\rho(u)\,du .
\end{align}$$

This reproduces the relative entropy expression at linear order.

# Relation to FLM and JLMS

The paper's construction is classical and pure-gravity on the bulk side: the Banados metric is an exact vacuum geometry, and the calculation compares boundary relative entropy to the linearized RT length. It is adjacent to FLM/JLMS logic but does not require bulk matter entropy in the displayed matching.

For the vault, this is useful as an operator-algebraic reference point: relative entropy gives a UV-finite boundary functional whose kernel and Fefferman-Graham data match a geometric variation.

# Verification Boundary

This note is source-derived from the official arXiv TeX source and the earlier official abs metadata captured in the daily run. I did not independently rederive Hollands' relative-entropy formula, the Schwarzian sign convention, or the Brown-Henneaux normalization. Before using the result in an AdS3 derivation note, the factor of $2\pi$ convention in the stress tensor and the sign in $L_\rho=-\frac12\{\rho,u\}$ should be checked against the paper's equations.
