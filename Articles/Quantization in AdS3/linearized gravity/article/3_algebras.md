---
title: 3_algebras
date: 2026-05-15
summary: derivation of the Virasoro algebra
---

# Virasoro algebra

## asymptotic Killing vectors

starting from the exact Killing fields $\displaystyle{\xi _{a}}$, $\displaystyle{\bar{\xi}_{a}}$ and the large-diffeomorphism parameters $\displaystyle{\zeta _{-,0}^{\mu}}$ and $\displaystyle{\zeta _{+,0}^{\mu}}$, we can construct the asymptotic Killing vectors as

$$\begin{align}
\xi _{-2} & =\frac{3}{2i\sqrt{ 3G }}\zeta _{L,0}, & \xi _{2} & =\xi _{-2}^{*} \\
\bar{\xi}_{-2} & =\frac{3}{2i\sqrt{ 3G }}\zeta _{R,0}, & \bar{\xi}_{2} & =\bar{\xi}_{-2}^{*}
\end{align}$$

higher asymptotic generators are defined recursively as

$$\begin{align}
\xi _{n+1} & =\frac{1}{i(n-1)}\mathcal{L}_{\xi_{1}}\xi _{n}, & \xi _{-(n+1)} & =-\frac{1}{i(n-1)}\mathcal{L}_{\xi _{-1}}\xi _{-n} \\
\bar{\xi}_{n+1} & =\frac{1}{i(n-1)}\mathcal{L}_{\bar{\xi}_{1}}\bar{\xi}_{n}, & \bar{\xi}_{-(n+1)} & =-\frac{1}{i(n-1)}\mathcal{L}_{\bar{\xi}_{-1}}\bar{\xi}_{-n}, & n\geqslant 2
\end{align}$$

these asymptotic generators obey two copies of the Witt algebra asymptotically,

$$\begin{align}
[\xi _{n},\xi _{m}] & =-i(n-m)\xi _{n+m}+\mathcal{O}(r^{-4}) \\
[\bar{\xi}_{n},\bar{\xi}_{m}] & =-i(n-m)\bar{\xi}_{n+m}+\mathcal{O}(r^{-4}) \\
[\xi _{n},\bar{\xi}_{m}] & =0,\quad n,m\in \mathbb{Z}
\end{align}$$

## Noether theorem for (asymptotic) Killing symmetries

we now discuss the Noether charges associated with the (asymptotic) Killing symmetries. a (asymptotic) Killing symmetry is represented on configuration space by the vector field

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\mathcal{L}_{\xi}g_{\mu \nu} \frac{\delta}{\delta g_{\mu \nu}} \\
 & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\xi}g^{(0)}_{\mu \nu} +\mathcal{L}_{\xi}h_{\mu \nu}+\mathcal{O}(h^{2})\right) \frac{\delta}{\delta h_{\mu \nu}}
\end{align}$$

here $\displaystyle{\xi ^{\mu}}$ is a (asymptotic) Killing symmetry, i.e.,the asymptotic behavior of $\displaystyle{\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}}$ satifies the Brown-Henneaux falloffs. the asymptotic behavior for $\displaystyle{\xi ^{\mu}}$ itself is

$$\begin{align}
\xi ^{t} & =\mathcal{O}(r^{0}), & \xi ^{r} & =\mathcal{O}(r), & \xi ^{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

which preserve the asymptotic boundary conditions of the field components of $\displaystyle{h_{\mu \nu}}$ as

$$\begin{align}
X_{\xi}\cdot \delta h_{tt} & =\mathcal{O}(r^{0}), & X_{\xi}\cdot \delta h_{tr} & =\mathcal{O}(r^{-3}), & X_{\xi}\cdot \delta h_{t\phi} & =\mathcal{O}(r^{0}) \\
 & & X_{\xi}\cdot \delta h_{rr} & =\mathcal{O}(r^{-4}), & X_{\xi}\cdot \delta h_{r\phi} & =\mathcal{O}(r^{-3}) \\
 &  &  &  & X_{\xi}\cdot \delta h_{\phi \phi} & =\mathcal{O}(r^{0})
\end{align}$$

act this symmetry vector $\displaystyle{X_{\xi}}$ on the bulk action, we have

$$\begin{align}
X_{\xi}\cdot \delta S_{\text{bulk}} & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}} \\
\alpha _{\xi} & =-\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)}_{\mu}\xi ^{\mu}\left(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\nabla ^{(0)2}h+\mathcal{O}(h^{2})\right)
\end{align}$$

then the corresponding Noether charge is

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)} _{\mu}\nabla ^{(0)} _{\nu}Q_{\xi}^{\nu \mu} \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}^{(0)}n^{(0)}_{\nu}Q_{\xi}^{\mu \nu}
\end{align}$$

here $\displaystyle{h^{(0)}_{ij}}$ is the induced metric on the $\displaystyle{\partial \Sigma=\Sigma \cap \Gamma}$

$$\begin{align}
\mathrm{d}s^{2}_{\partial \Sigma} & =h^{(0)}_{ij}\mathrm{d}x^{i}\mathrm{d}x^{j} \\
 & =r^{2}\mathrm{d}\phi ^{2}, \quad r\to \infty
\end{align}$$

and $\displaystyle{n^{(0)\mu}}$ is the outward-pointing unit normal vector orthogonal to the spatial boundary $\displaystyle{\Gamma}$, defined as

$$\begin{align}
n^{(0)\mu} & =\sqrt{ 1+r^{2} }\delta ^{\mu}_{r}
\end{align}$$

here the $\displaystyle{Q_{\xi}^{\mu \nu}}$ is defined as

$$\begin{align}
Q_{\xi}^{\mu \nu} & =\frac{1}{16\pi G}\left(A^{(1)\mu \nu}_{\xi}+\frac{1}{2}hA_{\xi}^{(0)\mu \nu}\right)+\mathcal{O}(h^{2}) \\
A_{\xi}^{(0)\mu \nu} & =\nabla ^{(0)\mu}\xi ^{\xi}-\nabla ^{(0)\nu}\xi ^{\mu} \\
A_{\xi}^{(1)\mu \nu} & =-h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+h^{\nu \rho}\nabla ^{(0)}_{\rho}\xi ^{\mu}+\xi ^{\rho}(\nabla ^{(0)\mu}h^{\nu}_{~\rho}-\nabla ^{(0)\nu}h^{\mu}_{~\rho})
\end{align}$$

higher order contributions are dropped since they does not affect our future discussion. to compute the Poisson brackets between Noether charges, we consider the variation of the Noether charge $\displaystyle{H_{\xi}}$

$$\begin{align}
\delta H_{\xi} & \approx \int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau ^{(0)} _{\mu}n^{(0)}_{\nu}\left(Q_{\xi}^{\mu \nu}-2\xi ^{[\mu}\theta ^{\nu]}\right) \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}k _{\xi}^{(0)\mu \nu}
\end{align}$$

where $\displaystyle{\xi ^{[\mu}\theta ^{\nu]}=\frac{1}{2}(\xi ^{\mu}\theta ^{\nu}-\xi ^{\nu}\theta ^{\mu})}$, and

$$\begin{align}
k _{\xi}^{\mu \nu} & =\delta Q_{\xi}^{\mu \nu}-2\xi ^{[\mu}\theta ^{\nu]} \\
 & =\frac{1}{16\pi G}\left[ \xi ^{\rho}(\nabla ^{(0)\mu}\delta h^{\nu}_{~\rho}-\nabla ^{(0)\nu}\delta h^{\mu}_{~\rho})+\frac{1}{2}\delta h\left(\nabla ^{(0)\mu}\xi ^{\nu}-\nabla ^{(0)\nu}\xi ^{\mu}\right) \right. \\
 & -\delta h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+\delta h^{\nu \rho}\nabla ^{(0)}_{\rho}\xi ^{\mu}+\xi ^{\mu}(\nabla ^{(0)}_{\rho}\delta h^{\nu \rho}-\nabla ^{(0)\nu}\delta h) \\
 & \left.-\xi ^{\nu}(\nabla ^{(0)}_{\rho}\delta h^{\mu \rho}-\nabla ^{(0)\mu}\delta h)\right]+\mathcal{O}(h\delta h)
\end{align}$$

again, higher order contributions are dropped. the Poisson bracket between two Noether charges $\displaystyle{H_{\xi}}$ and $\displaystyle{H_{\zeta}}$ corresponding to symmetry vectors $\displaystyle{X_{\xi}}$ and $\displaystyle{X_{\zeta}}$ are defined as

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =X_{\xi}\cdot X_{\zeta}\cdot \omega \\
 & \approx X_{\zeta}\cdot \delta H_{\xi} \\
 & =\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau ^{(0)}_{\mu}n^{(0)}_{\nu}(X_{\zeta}\cdot k _{\xi}^{\mu \nu})
\end{align}$$

the $\displaystyle{\approx}$ holds because of the Noether theorem proved in our previous paper.


## Virasoro algebra

following the discussion of Section 1.?, we now consider the algebras between Noether charges corresponding to these asymptotic Killing vectors. define the vector fields

$$\begin{align}
X_{\xi _{n}} & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\xi _{n}}g^{(0)}_{\mu \nu}+\mathcal{L}_{\xi _{n}}h_{\mu \nu}+\mathcal{O}(h^{2})\right) \frac{\delta}{\delta h_{\mu \nu}} \\
X_{\bar{\xi}_{n}} & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\bar{\xi}_{n}}g^{(0)}_{\mu \nu}+\mathcal{L}_{\bar{\xi}_{n}}h_{\mu \nu}+\mathcal{O}(h^{2})\right) \frac{\delta}{\delta h_{\mu \nu}}
\end{align}$$

and let $\displaystyle{H_{n}}$ and $\displaystyle{\bar{H}_{n}}$ be the Noether charges corresponding to $\displaystyle{X_{\xi _{n}}}$ and $\displaystyle{X_{\bar{\xi}_{n}}}$ respectively. after gauge fixing, we have

$$\begin{align}
H_{\xi} & \approx \frac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau ^{(0)}_{\mu}n^{(0)}_{\nu}\left(-h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+h^{\nu \rho}\nabla ^{(0)}_{\rho}\xi ^{\mu}+\xi ^{\rho}\left(\nabla ^{(0)\mu}h^{\nu}_{~\rho}-\nabla ^{(0)\nu}h^{\mu}_{~\rho}\right)+\mathcal{O}(h^{2})\right) \\
\delta H_{\xi} & \approx \frac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}^{(0)}n_{\nu}^{(0)}\left(-\delta h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+\delta h^{\nu \rho}\nabla ^{(0)}_{\rho}\xi ^{\mu}+\xi ^{\rho}(\nabla ^{(0)\mu}\delta h^{\nu}_{~\rho}-\nabla ^{(0)\nu}\delta h^{\mu}_{~\rho})+\mathcal{O}(h\delta h)\right)
\end{align}$$

the Poisson bracket between two Noether charges $\displaystyle{H_{\xi}}$ and $\displaystyle{H_{\zeta}}$ is defined as

$$\begin{align}
\{H_\xi,H_\zeta\}\approx X_\zeta\cdot\delta H_\xi.
\end{align}$$

by substituting $\displaystyle{\xi}$ and $\displaystyle{\zeta}$ into asymptotic Killing vectors $\displaystyle{\xi _{n}}$ and $\displaystyle{\bar{\xi}_{n}}$, we obtains the desired Virasoro algebra

$$\begin{align}
\{H_n,H_m\}&=-i(n-m)H_{n+m}-\frac{i}{8G}n(n^2-1)\delta_{n+m,0},\\
\{\bar H_n,\bar H_m\}&=-i(n-m)\bar H_{n+m}-\frac{i}{8G}n(n^2-1)\delta_{n+m,0},\\
\{H_n,\bar H_m\}&=0.
\end{align}$$

with central charge $\displaystyle{c=\frac{3}{2G}}$.
