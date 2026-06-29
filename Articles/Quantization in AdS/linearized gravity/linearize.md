---
title: "Linearized Einstein gravity around AdS3"
date: 2026-06-15
summary: "Organizes the perturbative expansion of the Einstein-Hilbert action around AdS3, the linearized equation of motion, the gauge-fixed quadratic action, the symplectic form, and the large-radius boundary action."
---

# Linearized Einstein gravity around AdS3

## Background conventions

$$\begin{align}
R^{(0)}_{\mu \nu \rho \sigma} & =g^{(0)}_{\mu \sigma}g^{(0)}_{\nu \rho}-g^{(0)}_{\mu \rho}g^{(0)}_{\nu \sigma} \\
R^{(0)}_{\mu \nu} & =-2g^{(0)}_{\mu \nu} \\
R^{(0)} & =-6
\end{align}$$

The perturbation is defined by

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+h_{\mu \nu}
\end{align}$$

## Bulk perturbative expansion

### Inverse metric and volume element

The inverse metric is obtained iteratively from $g^{\mu\nu}g_{\nu\rho}=\delta^\mu_\rho$:

$$\begin{align}
g^{\mu \nu}g_{\nu \rho} & = \delta^\mu_\rho \\
\implies g^{\mu \nu}(g^{(0)}_{\nu \rho}+h_{\nu \rho}) & = \delta^\mu_\rho  \\
\implies (g^{(0)\mu \nu}-h^{\mu \nu}+\delta g^{\mu \nu})(g^{(0)}_{\nu \rho}+h_{\nu \rho}) & =\delta ^{\mu}_{\rho} \\
=\delta ^{\mu}_{~\rho}-h^{\mu \nu}h_{\nu \rho}+\delta g^{\mu \nu}g_{\nu \rho}^{(0)}+\delta g^{\mu \nu}h_{\nu \rho} & =\delta ^{\mu}_{\rho} \\
\implies \delta g^{\mu \nu} & = h^{\mu \alpha}h_{\alpha}^{~\nu}-\delta g^{\mu \alpha}h_{\alpha}^{~\nu} \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h_{\alpha}^{~\nu}(h^{\mu \beta}h_{\beta}^{~\alpha}-\delta g^{\mu \beta}h_{\beta}^{~\alpha}) \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}(h^{\mu \gamma}h_{\gamma}^{~\beta}-\delta g^{\mu \gamma}h_{\gamma}^{~\beta}) \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h^{\mu \gamma}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}h_{\gamma}^{~\beta}+\mathcal{O}(h^{5})
\end{align}$$

Thus

$$\begin{align}
g^{\mu \nu} & =g^{(0)\mu \nu}-h^{\mu \nu}+h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h^{\mu \gamma}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}h_{\gamma}^{~\beta}+\mathcal{O}(h^{5}) \\
h^{\mu \nu} & =g^{(0)\mu \alpha}g^{(0)\nu \beta}h_{\alpha \beta}
\end{align}$$

$$\begin{align}
g & =g^{(0)}\left( 1+h+ \frac{1}{2}h^{2}-\frac{1}{2}h_{\mu \nu}h^{\mu \nu}+\mathcal{O}(h^{3}) \right) \\
\sqrt{ -g } & =\sqrt{ -g^{(0)} }\left( 1+\frac{h}{2}-\frac{1}{4}h_{\mu \nu}h^{\mu \nu}+\frac{1}{8}h^{2}+\mathcal{O}(h^{3}) \right)
\end{align}$$

### Connection and Ricci tensor

The full connection is

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu})
\end{align}$$

Expanded around the background, this gives

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & ={\Gamma ^{(0)}}^{\rho}_{~\mu \nu}+\frac{1}{2}g^{(0)\rho \sigma}(\nabla ^{(0)}_{\mu}h_{\sigma \nu}+\nabla _{\nu}^{(0)}h_{\mu \sigma}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}) \\
 & +\frac{1}{2}h^{\rho \alpha}(\nabla ^{(0)}_{\alpha}h_{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\alpha \nu}-\nabla ^{(0)}_{\nu}h_{\mu \alpha}) \\
 & +\frac{1}{2}h_{\alpha}^{~\beta}h^{\rho \alpha}(\nabla ^{(0)}_{\mu}h_{\beta \nu}+\nabla ^{(0)}_{\nu}h_{\mu \beta}-\nabla ^{(0)}_{\beta}h_{\mu \nu})+\mathcal{O}(h^{4})
\end{align}$$

The Ricci tensor is computed from

$$\begin{align}
R_{\mu \nu} & =\partial _{\rho}\Gamma ^{\rho}_{~\mu \nu}-\partial _{\nu}\Gamma ^{\rho}_{~\mu \rho}+\Gamma ^{\rho}_{~\rho \lambda}\Gamma ^{\lambda}_{~\mu \nu}-\Gamma ^{\rho}_{~\nu \lambda}\Gamma ^{\lambda}_{~\mu \rho}
\end{align}$$

The perturbative expression before using the AdS$_3$ curvature identities is

$$\begin{align}
R_{\mu \nu} & =R^{(0)}_{\mu \nu}+\frac{1}{2}(h_{\nu}^{~\alpha}R_{\mu \alpha}^{(0)}+h_{\mu}^{~\alpha}R^{(0)}_{\nu \alpha}-2h^{\alpha \beta}R^{(0)}_{\mu \alpha \nu \beta}-\nabla^{(0)}_{\alpha}\nabla^{(0)\alpha}h_{\mu \nu}+\nabla_{\mu}^{(0)}\nabla^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla^{(0)}_{\nu}\nabla^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla_{\nu}^{(0)}\nabla_{\mu}^{(0)}h) \\
 & +\frac{1}{4}(-2h^{\beta \gamma}h_{\nu}^{~\alpha}R_{\mu \beta \alpha \gamma}^{(0)}+4h_{\alpha}^{~\gamma}h^{\alpha \beta}R^{(0)}_{\mu \beta \nu \gamma}-2h^{\beta \gamma}h_{\mu}^{~\alpha}R^{(0)}_{\nu \beta \alpha \gamma}-\nabla^{(0)}_{\alpha}h\nabla^{(0)\alpha}h_{\mu \nu}+2\nabla^{(0)\alpha}h_{\mu \nu}\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}+2h^{\alpha \beta}\nabla^{(0)}_{\beta}\nabla^{(0)}_{\alpha}h_{\mu \nu} \\
 & -2\nabla^{(0)}_{\alpha}h_{\nu \beta}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+2\nabla^{(0)}_{\beta}h_{\nu \alpha}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\beta}h_{\nu \alpha}+\nabla^{(0)}_{\mu}h^{\alpha \beta}\nabla^{(0)}_{\nu}h_{\alpha \beta} \\
 & +\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\nu}h_{\mu}^{\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{\beta}\nabla^{(0)}_{\nu}h_{\mu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\beta}h_{\mu \alpha}+2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\mu}h_{\alpha \beta})+\mathcal{O}(h^{3})
\end{align}$$

Using the AdS$_3$ background curvature conventions, this reduces to

$$\begin{align}
 & =-2g^{(0)}_{\mu \nu}+g^{(0)}_{\mu \nu}h-3h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h \\
 & -g^{(0)}_{\mu \nu}h_{\alpha \beta}h^{\alpha \beta}+hh_{\mu \nu}-\frac{1}{4}\nabla ^{(0)}_{\alpha}h\nabla ^{(0)\alpha}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)\rho}h_{\mu \nu}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}+\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h_{\mu \nu} \\
 & -\frac{1}{2}\nabla ^{(0)}_{\rho}h_{\nu \sigma}\nabla ^{(0)\sigma}h_{\mu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\nu \rho}\nabla ^{(0)\sigma}h_{\mu}^{~\rho}+\frac{1}{4}\nabla ^{(0)}_{\rho}h\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho} \\
 & -\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\sigma}h_{\nu \rho}+\frac{1}{4}\nabla ^{(0)}_{\mu}h^{\rho \sigma}\nabla ^{(0)}_{\nu}h_{\rho \sigma}+\frac{1}{4}\nabla ^{(0)}_{\rho}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho} \\
 & -\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\sigma}h_{\mu \rho}+\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h_{\rho \sigma}+\mathcal{O}(h^{3})
\end{align}$$

### Scalar curvature

Contracting the algebraic curvature terms gives

$$\begin{align}
 & (g^{(0)\mu \nu}-h^{\mu \nu}+h^{\mu \alpha}h_{\alpha}^{~\nu})(-2g_{\mu \nu}^{(0)}+g^{(0)}_{\mu \nu}h-3h_{\mu \nu}-g^{(0)}_{\mu \nu}h_{\rho \sigma}h^{\rho \sigma}+hh_{\mu \nu}) \\
= & -6+3h-3h-3h_{\mu \nu}h^{\mu \nu}+h^{2}+2h-h^{2}+3h_{\mu \nu}h^{\mu \nu}-2h_{\mu \nu }h^{\mu \nu} \\
= & -6+2h-2h_{\mu \nu}h^{\mu \nu}
\end{align}$$

$$\begin{align}
R & =R^{(0)}-h^{\mu \nu}R^{(0)}_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h \\
 & +2R^{(0)}_{\mu \nu}h^{\mu \alpha}h^{\nu}_{~\alpha}-R^{(0)}_{\mu \nu \rho \sigma}h^{\mu \rho}h^{\nu \sigma}+\frac{1}{4}(-\nabla ^{(0)}_{\alpha}h\nabla ^{(0)\alpha}h \\
 & +4\nabla ^{(0)\alpha}h\nabla ^{(0)}_{\beta}h_{\alpha}^{~\beta}+4h^{\alpha \beta}\nabla ^{(0)}_{\alpha}\nabla ^{(0)}_{\beta}h-2\nabla ^{(0)}_{\alpha}h_{\mu\beta}\nabla ^{(0)\beta}h^{\mu\alpha} \\
 & +3\nabla ^{(0)}_{\mu}h^{\alpha \beta}\nabla ^{(0)\mu}h_{\alpha \beta} \\
 & -4\nabla ^{(0)}_{\beta}h_{\alpha}^{~\beta}\nabla ^{(0)\mu}h_{\mu}^{~\alpha}-8h^{\alpha \beta}\nabla ^{(0)\mu}\nabla ^{(0)}_{\beta}h_{\mu \alpha}+4h^{\alpha \beta}\nabla ^{(0)2}h_{\alpha \beta})+\mathcal{O}(h^{3})
\end{align}$$

$$\begin{align}
 & =-6+2h-2h^{\mu \nu}h_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)\rho}h_{\nu \rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\nu}\nabla ^{(0)\rho}h_{\mu \rho}-h^{\mu \nu}\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu} \\
 & -\frac{1}{2}\nabla ^{(0)}_{\nu}h_{\mu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}
\end{align}$$

## Linearized Einstein equation

The linearized equation follows from expanding the Einstein tensor with cosmological term:

$$\begin{align}
R_{\mu \nu}-\frac{1}{2}Rg_{\mu \nu}-g_{\mu \nu} & =-h_{\mu \nu}-\frac{1}{2}h_{\mu \nu}R^{(0)}-\frac{1}{2}g^{(0)}_{\mu \nu}\left( -h^{\alpha \beta}R_{\alpha \beta}-\nabla ^{(0)2}h+\nabla ^{(0)}_{\alpha}\nabla ^{(0)}_{\beta}h^{\alpha \beta} \right) \\
 & \left.+\frac{1}{2}(h_{\nu}^{~\alpha}R^{(0)}_{\mu \alpha}+h_{\mu}^{~\alpha}R^{(0)}_{\nu \alpha}-2h^{\alpha \beta}R_{\mu \alpha \nu \beta}-\nabla ^{(0)2}h_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\right) \\
 & =-h_{\mu \nu}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h+\mathcal{O}(h^{3})
\end{align}$$

## Bulk Lagrangian

$$\begin{align}
L & =\sqrt{ -g }(R+2) \\
 & =\sqrt{ -g^{(0)} }\left( -4 \right)+\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h) \\
 & +\sqrt{ -g^{(0)} }\left(\frac{1}{2}h^{2}-h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h\right. \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \\
 & \left.+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}h\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}+\mathcal{O}(h^{3})\right) \\
 & := \sqrt{ -g^{(0)} }\mathcal{L}
\end{align}$$

The linearized equation of motion reads

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h=0
\end{align}$$

Taking the trace gives

$$\begin{align}
-h+\frac{1}{2}\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}=0 \\
\implies \nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}=\nabla ^{(0)2}h-2h
\end{align}$$

Substituting the trace equation back into the equation of motion gives

$$\begin{align}
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h & =0 \\
\implies -h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\nabla ^{(0)}_{(\mu}(\nabla ^{(0)}_{\rho}h_{\nu)}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu)}h) & =0
\end{align}$$

## TT gauge and gauge-fixed action

Impose the TT gauge condition

$$\begin{align}
\nabla ^{(0)}_{\mu}h^{\mu \nu}=0 \\
g^{(0)}_{\mu \nu}h^{\mu \nu}=0
\end{align}$$

The last term then vanishes, leading to

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu} & =0
\end{align}$$

After gauge fixing, the action becomes

$$\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left( -4+2h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}\right)
\end{align}$$

## Symplectic potential and symplectic form

Varying the gauge-fixed action gives the equation of motion and the boundary term on the initial and final Cauchy surfaces:

$$\begin{align}
\delta S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }E_{\mu \nu}\delta h^{\mu \nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
\theta & =-\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\left( h_{\nu \rho}\nabla ^{\mu}\delta h^{\nu \rho}+\frac{1}{2}\delta h^{\nu \rho}\nabla ^{(0)\mu}h_{\nu \rho}-\delta h^{\nu \rho}\nabla ^{(0)}_{\rho}h^{\mu}_{~\nu} \right) \\
\omega & =\delta \theta \\
 & =-\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\left(\frac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}+\delta h^{\nu \rho}\wedge\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}\right) \\
 & =-\frac{1}{32\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}+\frac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}n_{\nu}\delta h^{\mu}_{~\rho}\wedge \delta h^{\nu \rho}
\end{align}$$

Here $\displaystyle{h^{(0)}}$ is the induced metric on $\displaystyle{\partial \Sigma}$:

$$\begin{align}
\mathrm{d}s^{2}_{\partial \Sigma} & =h^{(0)}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =r^{2}\mathrm{d}\phi ^{2}|_{r\to \infty}
\end{align}$$

The unit normal covectors used in the surface decomposition are

$$\begin{align}
\tau _{\mu} & =\left(-\sqrt{ 1+r^{2} },0,0\right) \\
n_{\mu} & =\left(0,\frac{1}{\sqrt{ 1+r^{2} }},0\right)
\end{align}$$

## Cutoff boundary action

Consider the GHY term plus the standard AdS$_3$ counterterm on the large-radius cutoff surface $\Gamma$:

$$\begin{align}
S_{\Gamma} & =\frac{1}{8\pi G}\int_{\Gamma}\mathrm{d}^{2}x\sqrt{-\gamma}(K-1),
\end{align}$$

First, take the outward pointing unit normal $\displaystyle{n_{\mu}}$, normalized by $\displaystyle{g^{\mu \nu}n_{\mu}n_{\nu}=1}$. Its large-radius expansion is

$$\begin{align}
n_{r} & =\frac{1}{r}+\frac{1}{2}rh_{rr}-\frac{1}{2r^{3}}+\mathcal{O}\left( r^{-5} \right) \\
n_{a} & =0 \\
n^{r} & =r-\frac{1}{2}r^{3}h_{rr}+\frac{1}{2r}+\mathcal{O}\left( r^{-3} \right) \\
n^{a} & =-\frac{1}{r}\gamma ^{(0)ab}h_{rb}+\mathcal{O}(r^{-6})
\end{align}$$

The induced metric on $\Gamma$ is

$$\begin{align}
\gamma _{rr} & =g_{rr}-n_{r}n_{r} \\
 & =\frac{1}{r^{2}}\gamma ^{(0)ab}h_{ra}h_{rb}+\mathcal{O}(r^{-6}) \\
\gamma _{ra} & =g_{ra}-n_{r}n_{a} \\
 & =h_{ra} \\
 \gamma _{ab} & =g_{ab}-n_{a}n_{b} \\
 & =r^{2}\gamma^{(0)}_{ab}+h_{ab}
\end{align}$$

$$\begin{align}
\gamma _{r}^{~r} & =0 \\
\gamma _{r}^{~a} & =\frac{1}{r^{2}}\gamma ^{(0)ab}h_{rb}-\frac{1}{r^{4}}\gamma ^{(0)ab}\gamma ^{(0)cd}h_{bc}h_{rd}+\mathcal{O}(r^{-7}) \\
\gamma _{a}^{~r} & =0 \\
\gamma _{a}^{~b} & =\delta _{a}^{~b}
\end{align}$$

$$\begin{align}
\gamma ^{r}_{~r} & =0 \\
\gamma ^{r}_{~a} & =0 \\
\gamma ^{a}_{~r} & =\frac{1}{r^{2}}\gamma ^{(0)ab}h_{rb}-\frac{1}{r^{4}}\gamma ^{(0)ab}\gamma ^{(0)cd}h_{bc}h_{rd}+\mathcal{O}(r^{-7}) \\
\gamma ^{a}_{~b} & =\delta ^{a}_{~b}
\end{align}$$

$$\begin{align}
\gamma ^{rr} & =0 \\
\gamma ^{ra} & =0 \\
\gamma ^{ab} & =\frac{1}{r^{2}}\gamma ^{(0)ab}-\frac{1}{r^{4}}h^{ab}+\mathcal{O}(r^{-6})
\end{align}$$

Here $\displaystyle{\gamma ^{(0)ab}=\mathrm{diag}(-1,+1)}$. The determinant of the induced metric gives

$$\begin{align}
\sqrt{-\gamma}& =r^{2}+\frac{1}{2}\left(1+r^{2}g^{(0)}_{ab}h^{ab}\right)+\mathcal{O}(r^{-2})
\end{align}$$

The extrinsic curvature is

$$\begin{align}
K_{\mu \nu} & =\gamma _{\mu}^{~\rho}\gamma _{\nu}^{~\sigma}\nabla _{\rho}n_{\sigma} \\
 & =\gamma _{\mu}^{~\rho}\gamma _{\nu}^{~\sigma}(\partial _{\rho}n_{\sigma}-\Gamma ^{\lambda}_{~\rho \sigma}n_{\lambda})
\end{align}$$

Its covariant components are

$$\begin{align}
K_{rr} & =\frac{1}{r^{2}}\gamma ^{(0)ab}h_{ra}h_{rb}+\mathcal{O}(r^{-10}) \\
K_{ra} & =h_{ra}+\mathcal{O}(r^{-5}) \\
K_{ab} & =\left( r^{2}+\frac{1}{2} -\frac{r^{4}}{2}h_{rr}\right)\gamma ^{(0)}_{ab}+\frac{r}{2}\partial _{r}h_{ab}+\mathcal{O}(r^{-2})
\end{align}$$

The raised components are

$$\begin{align}
K^{rr} & =\frac{1}{2}[(1-r^{4}h_{rr})\gamma ^{(0)ab}h_{ra}h_{rb}+r\gamma ^{(0)ab}\gamma ^{(0)cd}h_{ra}h_{rc}\partial _{r}h_{cd}]+\mathcal{O}(r^{-8}) \\
K^{ra} & =\frac{1}{2r^{2}}[(1-r^{4}h_{rr})\gamma ^{(0)ab}h_{rb}-r \gamma ^{(0)ab}\gamma ^{(0)cd}h_{rc}\partial _{r}h_{ad}]+\mathcal{O}(r^{-7}) \\
K^{ab} & =\frac{1}{r^{2}}\gamma ^{(0)ab}+\frac{1}{r^{4}}\left[ 2\delta ^{a}_{t}\delta ^{b}_{t}+\frac{1}{2}\gamma ^{(0)ab}-2\gamma ^{(0)ab}\gamma ^{(0)cd}h_{cd}+\frac{r}{2}\gamma ^{(0)ab}\gamma ^{(0)cd}\partial _{r}h_{cd}-\frac{r^{4}}{2}\gamma ^{(0)ab}h_{rr} \right]+\mathcal{O}(r^{-6})
\end{align}$$

The trace is

$$\begin{align}
K & =2+\frac{1}{r^{2}}\left( -\gamma ^{(0)ab}h_{ab}+\frac{r}{2}\gamma ^{(0)ab}\partial _{r}h_{ab}-r^{4}h_{rr} \right)+\mathcal{O}(r^{-4})
\end{align}$$

Therefore the boundary action is

$$\begin{align}
S_{\text{bdy}} & =\frac{1}{8\pi G}\int _{\Gamma} \mathrm{d}^{2}x\sqrt{ -\gamma }(K-1) \\
 & =\frac{1}{8\pi G}\int _{\Gamma}\mathrm{d}^{2}x\left(r^{2}+\frac{1}{2}-\frac{1}{2}\gamma ^{(0)ab}h_{ab}+\frac{r}{2}\gamma ^{(0)ab}\partial _{r}h_{ab}-r^{4}h_{rr}+r^{2}\gamma ^{(0)ab}h_{ra}h_{rb}-rD^{(0)a}h_{ra}+\mathcal{O}\left(r^{-2} \right)\right)
\end{align}$$

This boundary action does not contribute to the symplectic form.
