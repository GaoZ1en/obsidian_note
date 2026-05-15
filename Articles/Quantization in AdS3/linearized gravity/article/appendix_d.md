---
title: "Appendix D: Perturbation of geometric quantities"
date: 2026-05-15
summary: "Collects the metric, curvature, and extrinsic-curvature perturbation formulas used to obtain the linearized gravity action."
---

# Perturbation of geometric quantities

This appendix records the perturbative geometric formulas used in Section 1. Expand around the AdS$_3$ background

$$
g_{\mu\nu}=g_{\mu\nu}^{(0)}+h_{\mu\nu},
$$

with

$$
\begin{align}
R^{(0)}_{\mu\nu\rho\sigma}
&=g^{(0)}_{\mu\sigma}g^{(0)}_{\nu\rho}
-g^{(0)}_{\mu\rho}g^{(0)}_{\nu\sigma},\\
R^{(0)}_{\mu\nu}&=-2g^{(0)}_{\mu\nu},\\
R^{(0)}&=-6.
\end{align}
$$

Indices on $h_{\mu\nu}$ are raised and lowered with the background metric.

## Metric and volume element

The inverse metric expands as

$$
\begin{align}
g^{\mu\nu}
&=g^{(0)\mu\nu}-h^{\mu\nu}
+h^{\mu\alpha}h_\alpha{}^\nu
-h^{\mu\beta}h_\alpha{}^\nu h_\beta{}^\alpha
+h^{\mu\gamma}h_\alpha{}^\nu h_\beta{}^\alpha h_\gamma{}^\beta
+\mathcal{O}(h^5).
\end{align}
$$

The determinant and volume element are

$$
\begin{align}
g
&=g^{(0)}
\left(1+h+\frac{1}{2}h^2-\frac{1}{2}h_{\mu\nu}h^{\mu\nu}
+\mathcal{O}(h^3)\right),\\
\sqrt{-g}
&=\sqrt{-g^{(0)}}
\left(1+\frac{h}{2}-\frac{1}{4}h_{\mu\nu}h^{\mu\nu}
+\frac{1}{8}h^2+\mathcal{O}(h^3)\right),
\end{align}
$$

where

$$
h=g^{(0)\mu\nu}h_{\mu\nu}.
$$

## Connection and curvature

The Levi-Civita connection is

$$
\Gamma^\rho{}_{\mu\nu}
=\frac{1}{2}g^{\rho\sigma}
\left(\partial_\mu g_{\sigma\nu}
+\partial_\nu g_{\mu\sigma}
-\partial_\sigma g_{\mu\nu}\right).
$$

In terms of the background covariant derivative,

$$
\begin{align}
\Gamma^\rho{}_{\mu\nu}
&={\Gamma^{(0)}}^\rho{}_{\mu\nu}
+\frac{1}{2}g^{(0)\rho\sigma}
\left(
\nabla^{(0)}_\mu h_{\sigma\nu}
+\nabla^{(0)}_\nu h_{\mu\sigma}
-\nabla^{(0)}_\sigma h_{\mu\nu}
\right)\\
&\quad+\frac{1}{2}h^{\rho\alpha}
\left(
\nabla^{(0)}_\alpha h_{\mu\nu}
-\nabla^{(0)}_\mu h_{\alpha\nu}
-\nabla^{(0)}_\nu h_{\mu\alpha}
\right)\\
&\quad+\frac{1}{2}h_\alpha{}^\beta h^{\rho\alpha}
\left(
\nabla^{(0)}_\mu h_{\beta\nu}
+\nabla^{(0)}_\nu h_{\mu\beta}
-\nabla^{(0)}_\beta h_{\mu\nu}
\right)
+\mathcal{O}(h^4).
\end{align}
$$

The Ricci tensor is

$$
R_{\mu\nu}
=\partial_\rho\Gamma^\rho{}_{\mu\nu}
-\partial_\nu\Gamma^\rho{}_{\mu\rho}
+\Gamma^\rho{}_{\rho\lambda}\Gamma^\lambda{}_{\mu\nu}
-\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\rho}.
$$

Its linear part around AdS$_3$ is

$$
\begin{align}
R_{\mu\nu}
&=-2g^{(0)}_{\mu\nu}
+g^{(0)}_{\mu\nu}h-3h_{\mu\nu}
-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}\\
&\quad+\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\alpha h_\nu{}^\alpha
+\frac{1}{2}\nabla^{(0)}_\nu\nabla^{(0)}_\alpha h_\mu{}^\alpha
-\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h
+\mathcal{O}(h^2).
\end{align}
$$

The scalar curvature through the order needed for the quadratic action is

$$
\begin{align}
R
&=-6+2h-2h^{\mu\nu}h_{\mu\nu}
+\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}
-\nabla^{(0)2}h
+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h\\
&\quad-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h
-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)\rho}h_{\nu\rho}
+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)\rho}h_{\mu\rho}
-h^{\mu\nu}\nabla^{(0)\rho}\nabla^{(0)}_\nu h_{\mu\rho}
+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad-\frac{1}{2}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}
+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}
+\mathcal{O}(h^3).
\end{align}
$$

Combining this with the volume element gives the bulk Lagrangian density

$$
\begin{align}
\sqrt{-g}(R+2)
&=\sqrt{-g^{(0)}}\left[
-4
+\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}
-\nabla^{(0)2}h\right.\\
&\quad+\frac{1}{2}h^2-h_{\mu\nu}h^{\mu\nu}
+h^{\mu\nu}\nabla^{(0)}_\mu\nabla^{(0)}_\nu h
-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho
+\nabla^{(0)\mu}h\nabla^{(0)}_\nu h_\mu{}^\nu
-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho\\
&\quad-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho
+\frac{1}{2}h\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}
+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}\\
&\quad\left.
-\frac{1}{2}h\nabla^{(0)2}h
-\frac{1}{2}\nabla^{(0)}_\mu h_{\nu\rho}\nabla^{(0)\rho}h^{\mu\nu}
+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}
\right]
+\mathcal{O}(h^3).
\end{align}
$$

## Boundary normal and induced metric

For the radial boundary $\Gamma$, let $a,b\in\{t,\phi\}$. The outward pointing unit normal satisfies $g^{\mu\nu}n_\mu n_\nu=1$. Under the Brown-Henneaux falloffs,

$$
\begin{align}
n_r&=\frac{1}{r}+\frac{1}{2}rh_{rr}-\frac{1}{2r^3}
+\mathcal{O}(r^{-5}),\\
n_a&=0,\\
n^r&=r-\frac{1}{2}r^3h_{rr}+\frac{1}{2r}
+\mathcal{O}(r^{-3}),\\
n^a&=-\frac{1}{r}\gamma^{(0)ab}h_{rb}
+\mathcal{O}(r^{-6}).
\end{align}
$$

The induced metric is

$$
\begin{align}
\gamma_{rr}
&=g_{rr}-n_rn_r
=\frac{1}{r^2}\gamma^{(0)ab}h_{ra}h_{rb}
+\mathcal{O}(r^{-6}),\\
\gamma_{ra}&=h_{ra},\\
\gamma_{ab}&=r^2\gamma^{(0)}_{ab}+h_{ab}.
\end{align}
$$

The inverse induced metric on the boundary directions is

$$
\gamma^{ab}
=\frac{1}{r^2}\gamma^{(0)ab}
-\frac{1}{r^4}h^{ab}
+\mathcal{O}(r^{-6}),
$$

where $\gamma^{(0)ab}=\operatorname{diag}(-1,+1)$ in the leading boundary frame. The induced volume element is

$$
\sqrt{-\gamma}
=r^2+\frac{1}{2}\left(1+r^2g^{(0)}_{ab}h^{ab}\right)
+\mathcal{O}(r^{-2}).
$$

## Extrinsic curvature and boundary Lagrangian

The extrinsic curvature is

$$
K_{\mu\nu}
=\gamma_\mu{}^\rho\gamma_\nu{}^\sigma\nabla_\rho n_\sigma
=\gamma_\mu{}^\rho\gamma_\nu{}^\sigma
\left(\partial_\rho n_\sigma-\Gamma^\lambda{}_{\rho\sigma}n_\lambda\right).
$$

The large-radius expansion gives

$$
\begin{align}
K_{rr}
&=\frac{1}{r^2}\gamma^{(0)ab}h_{ra}h_{rb}
+\mathcal{O}(r^{-10}),\\
K_{ra}
&=h_{ra}+\mathcal{O}(r^{-5}),\\
K_{ab}
&=\left(r^2+\frac{1}{2}-\frac{r^4}{2}h_{rr}\right)\gamma^{(0)}_{ab}
+\frac{r}{2}\partial_r h_{ab}
+\mathcal{O}(r^{-2}).
\end{align}
$$

The trace is

$$
K
=2+\frac{1}{r^2}
\left(
-\gamma^{(0)ab}h_{ab}
+\frac{r}{2}\gamma^{(0)ab}\partial_r h_{ab}
-r^4h_{rr}
\right)
+\mathcal{O}(r^{-4}).
$$

Therefore the boundary action density has the asymptotic form

$$
\begin{align}
\sqrt{-\gamma}(K-1)
&=r^2+\frac{1}{2}
-\frac{1}{2}\gamma^{(0)ab}h_{ab}
+\frac{r}{2}\gamma^{(0)ab}\partial_r h_{ab}
-r^4h_{rr}\\
&\quad+r^2\gamma^{(0)ab}h_{ra}h_{rb}
-rD^{(0)a}h_{ra}
+\mathcal{O}(r^{-2}).
\end{align}
$$

This is the expansion of the Gibbons-Hawking plus counterterm contribution entering the radial variational problem.
