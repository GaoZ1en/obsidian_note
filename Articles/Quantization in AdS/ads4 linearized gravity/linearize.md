---
title: "Linearized Einstein gravity around AdS4"
date: 2026-06-15
summary: "Sets up global AdS4, the perturbative Einstein equation, de Donder and TT reductions, and radial cutoff geometry for later mode analysis."
---

# Linearized Einstein gravity around AdS4

## Background conventions

The bulk action is

$$S_{\mathrm{bulk}}=\frac{1}{16\pi G_{4}}\int_{M}\mathrm{d}^{4}x\sqrt{-g}\,(R+6).$$

The equation of motion is

$$R_{\mu\nu}-\frac{1}{2}Rg_{\mu\nu}-3g_{\mu\nu}=0.$$

Use global AdS$_4$ coordinates

$$\mathrm{d}s^{2}=-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\theta^{2}+r^{2}\sin^{2}\theta\,\mathrm{d}\phi^{2}.$$

The determinant and inverse metric are

$$\sqrt{-g^{(0)}}=r^{2}\sin\theta,\qquad {g^{(0)}}^{\mu\nu}=\mathrm{diag}\left(-\frac{1}{1+r^{2}},1+r^{2},\frac{1}{r^{2}},\frac{1}{r^{2}\sin^{2}\theta}\right).$$

The non-vanishing Christoffel symbols are

$$\begin{align}
{\Gamma^{(0)}}^{t}_{tr}={\Gamma^{(0)}}^{t}_{rt}&=\frac{r}{1+r^{2}},&
{\Gamma^{(0)}}^{r}_{tt}&=r(1+r^{2}),&
{\Gamma^{(0)}}^{r}_{rr}&=-\frac{r}{1+r^{2}},\\
{\Gamma^{(0)}}^{r}_{\theta\theta}&=-r(1+r^{2}),&
{\Gamma^{(0)}}^{r}_{\phi\phi}&=-r(1+r^{2})\sin^{2}\theta,&
{\Gamma^{(0)}}^{\theta}_{r\theta}={\Gamma^{(0)}}^{\theta}_{\theta r}&=\frac{1}{r},\\
{\Gamma^{(0)}}^{\theta}_{\phi\phi}&=-\sin\theta\cos\theta,&
{\Gamma^{(0)}}^{\phi}_{r\phi}={\Gamma^{(0)}}^{\phi}_{\phi r}&=\frac{1}{r},&
{\Gamma^{(0)}}^{\phi}_{\theta\phi}={\Gamma^{(0)}}^{\phi}_{\phi\theta}&=\cot\theta.
\end{align}$$

The curvature convention is

$$\begin{align}
R^{(0)}_{\mu\nu\rho\sigma}&=g^{(0)}_{\mu\sigma}g^{(0)}_{\nu\rho}-g^{(0)}_{\mu\rho}g^{(0)}_{\nu\sigma},\\
R^{(0)}_{\mu\nu}&=-3g^{(0)}_{\mu\nu},\\
R^{(0)}&=-12.
\end{align}$$

## Perturbative expansion

Define the metric perturbation by

$$g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu}.$$

The inverse metric and volume element are

$$\begin{align}
g^{\mu\nu}&={g^{(0)}}^{\mu\nu}-h^{\mu\nu}+h^{\mu\alpha}h_{\alpha}^{~\nu}+\mathcal{O}(h^{3}),\\
\sqrt{-g}&=\sqrt{-g^{(0)}}\left(1+\frac{1}{2}h-\frac{1}{4}h_{\mu\nu}h^{\mu\nu}+\frac{1}{8}h^{2}+\mathcal{O}(h^{3})\right),
\end{align}$$

where $h={g^{(0)}}^{\mu\nu}h_{\mu\nu}$.

The linearized connection is

$$\delta\Gamma^{\rho}_{~\mu\nu}=\frac{1}{2}{g^{(0)}}^{\rho\sigma}\left(\nabla^{(0)}_{\mu}h_{\sigma\nu}+\nabla^{(0)}_{\nu}h_{\mu\sigma}-\nabla^{(0)}_{\sigma}h_{\mu\nu}\right).$$

Before using the AdS$_4$ curvature identities, the linearized Ricci tensor is

$$\begin{align}
\delta R_{\mu\nu}=\frac{1}{2}\bigl(&h_{\nu}^{~\alpha}R^{(0)}_{\mu\alpha}+h_{\mu}^{~\alpha}R^{(0)}_{\nu\alpha}-2h^{\alpha\beta}R^{(0)}_{\mu\alpha\nu\beta}-\nabla^{(0)2}h_{\mu\nu}\\
&+\nabla^{(0)}_{\mu}\nabla^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla^{(0)}_{\nu}\nabla^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h\bigr).
\end{align}$$

Using the AdS$_4$ background curvature gives

$$\begin{align}
\delta R_{\mu\nu}&=g^{(0)}_{\mu\nu}h-4h_{\mu\nu}-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}+\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\alpha}h_{\nu}^{~\alpha}\\
&\quad+\frac{1}{2}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h,\\
\delta R&=3h+\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h^{\mu\nu}-\nabla^{(0)2}h.
\end{align}$$

## Linearized Einstein equation

The linearized Einstein tensor with cosmological term is

$$E_{\mu\nu}:=\delta R_{\mu\nu}-\frac{1}{2}g^{(0)}_{\mu\nu}\delta R-\frac{1}{2}R^{(0)}h_{\mu\nu}-3h_{\mu\nu}.$$

Equivalently,

$$\begin{align}
E_{\mu\nu}=&-h_{\mu\nu}-\frac{1}{2}g^{(0)}_{\mu\nu}h-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}h\\
&-\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}h^{\rho\sigma}+\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\rho}h_{\nu}^{~\rho}\\
&+\frac{1}{2}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h.
\end{align}$$

The equation of motion is

$$E_{\mu\nu}=0.$$

Introduce the de Donder functional

$$B_{\nu}:=\nabla^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla^{(0)}_{\nu}h.$$

Then the same equation can be written as

$$E_{\mu\nu}=-h_{\mu\nu}-\frac{1}{2}g^{(0)}_{\mu\nu}h-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}h-\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}h^{\rho\sigma}+\nabla^{(0)}_{(\mu}B_{\nu)}.$$

Taking the trace gives

$$-3h+\nabla^{(0)2}h-\nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}h^{\rho\sigma}=0.$$

## TT gauge

in TT gauge

$$\begin{align}
E_{\mu \nu}^{(1)}= -h_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)2}h_{\mu \nu}=0
\end{align}$$

with gauge conditions

$$\begin{align}
\nabla _{\mu}^{(0)}h^{\mu \nu} & =0, & h=0
\end{align}$$

## Quadratic action and symplectic current

Expand the Einstein-Hilbert density directly:

$$\sqrt{-g}(R+6)=\sqrt{-g^{(0)}}\left(-6+\mathcal{L}_{1}+\mathcal{L}_{2}+\mathcal{O}(h^{3})\right),\qquad \mathcal{L}_{1}=\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h^{\mu\nu}-\nabla^{(0)2}h.$$

The quadratic density is

$$\begin{align}
\mathcal{L}_{2}={}&-\frac{11}{2}h_{\mu\nu}h^{\mu\nu}+\frac{7}{4}h^{2}+h^{\mu\nu}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\mu}h-\frac{1}{4}\nabla^{(0)}_{\mu}h\nabla^{(0)\mu}h\\
&-\nabla^{(0)}_{\mu}h^{\mu\nu}\nabla^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla^{(0)\mu}h\nabla^{(0)}_{\rho}h_{\mu}^{~\rho}-2h^{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\nu}h_{\mu}^{~\rho}\\
&+\frac{1}{2}h\nabla^{(0)}_{\rho}\nabla^{(0)}_{\nu}h^{\nu\rho}+h^{\mu\nu}\nabla^{(0)2}h_{\mu\nu}-\frac{1}{2}h\nabla^{(0)2}h\\
&-\frac{1}{2}\nabla^{(0)}_{\nu}h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_{\rho}h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The quadratic action is

$$S_{2}=\frac{1}{16\pi G_{4}}\int_{M}\mathrm{d}^{4}x\sqrt{-g^{(0)}}\,\mathcal{L}_{2}.$$

The first variation is

$$\begin{align}
\delta S_{2} & =-\dfrac{1}{16\pi G_{4}} \int _{M}\mathrm{d}^{4}x\sqrt{ -g^{(0)} }E_{\mu \nu}\delta h^{\mu \nu} \\
 & +\dfrac{1}{16\pi G_{4}}\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\Theta ^{\mu} \\
E_{\mu \nu} & =-h_{\mu\nu}-\frac{1}{2}g^{(0)}_{\mu\nu}h-\frac{1}{2}\nabla^{(0)2}h_{\mu\nu}+\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)2}h\\
&-\frac{1}{2}g^{(0)}_{\mu\nu}\nabla^{(0)}_{\rho}\nabla^{(0)}_{\sigma}h^{\rho\sigma}+\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\rho}h_{\nu}^{~\rho}\\
&+\frac{1}{2}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\nu}h. \\
\Theta ^{\mu} & =-h^{\nu \rho}\nabla ^{(0)\mu}\delta h_{\nu \rho}+\dfrac{1}{2}h\nabla ^{(0)\mu}\delta h-\dfrac{1}{2}\delta h^{\nu \rho}\nabla ^{(0)\mu}h_{\nu \rho} \\
 & -h^{\mu}_{~\nu}\nabla ^{(0)\nu}\delta h-\dfrac{1}{2}\delta h^{\mu}_{~\nu}\nabla ^{(0)\nu}h+2h^{\nu \rho}\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu} \\
 & -\dfrac{1}{2}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\delta h^{\nu \rho}\nabla ^{(0)}_{\rho}h^{\mu}_{~\nu}-2\delta h^{\mu}_{~\nu}\nabla ^{(0)}_{\rho}h^{\nu \rho}
\end{align}$$

terms support on the spatial boundary is ommited here. the corresponding symplectic form is

$$\begin{align}
\omega & =\dfrac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\delta \Theta ^{\mu} \\
\delta \Theta ^{\mu} & = -\dfrac{1}{2}\delta h^{\mu}_{~\nu}\wedge \nabla ^{(0)\nu}\delta h-2\delta h^{\mu}_{~\nu}\wedge \nabla ^{(0)}_{\rho}\delta h^{\nu \rho}+\dfrac{1}{2}\delta h\wedge \nabla ^{(0)\mu}\delta h \\
 & -\dfrac{1}{2}\delta h\wedge \nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\dfrac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-3\delta h^{\nu \rho}\wedge \nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}
\end{align}$$

after gauge fixing, we have

$$\begin{align}
\omega & =\dfrac{1}{16\pi G} \int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left(-\dfrac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-3\delta h^{\nu \rho}\wedge \nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}\right)
\end{align}$$

## Radial cutoff geometry

On a large-radius cutoff surface $\Gamma_{R}$ with coordinates $(t,\theta,\phi)$, the induced metric is

$$\gamma^{(0)}_{ab}\mathrm{d}x^{a}\mathrm{d}x^{b}=-(1+R^{2})\mathrm{d}t^{2}+R^{2}\mathrm{d}\theta^{2}+R^{2}\sin^{2}\theta\,\mathrm{d}\phi^{2}.$$

The outward unit normal is

$$n_{\mu}=\left(0,\frac{1}{\sqrt{1+r^{2}}},0,0\right),\qquad n^{\mu}=\left(0,\sqrt{1+r^{2}},0,0\right).$$

The background extrinsic curvature components are

$$\begin{align}
K^{(0)}_{tt}&=-r\sqrt{1+r^{2}},&
K^{(0)}_{\theta\theta}&=r\sqrt{1+r^{2}},&
K^{(0)}_{\phi\phi}&=r\sqrt{1+r^{2}}\sin^{2}\theta.
\end{align}$$

The trace is

$$K^{(0)}=\frac{2+3r^{2}}{r\sqrt{1+r^{2}}}=3+\frac{1}{2r^{2}}+\mathcal{O}(r^{-4}).$$

For the Dirichlet variational problem and holographic renormalization, the AdS$_4$ cutoff action uses the GHY term together with the standard three-dimensional boundary counterterms. This differs from the AdS$_3$ case because the boundary curvature counterterm already contributes at leading finite order.
