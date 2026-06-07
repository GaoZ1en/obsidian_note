---
title: TMG
date: 2026-06-06
summary: "Takes the topologically massive gravity limit of the GMG linearized TT equation and records the admissible massive and logarithmic modes on unit AdS3."
---

# Topologically massive gravity

This note takes the $m^2\to\infty$ limit of the GMG discussion, with the same unit-radius AdS$_3$ background, lower-index tensor convention, and $\mu>0$ assumption. All indices are moved with $g^{(0)}_{\mu\nu}$, and all covariant derivatives are $\nabla^{(0)}$.

## Action

The TMG action is

$$I_{\rm TMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g}\left[\mathcal L_{\rm PG}+\frac{1}{\mu}L_{\rm CS}\right],$$

with

$$\begin{align}
\mathcal L_{\rm PG}&=R+2,\\
L_{\rm CS}&=\frac{1}{2}\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),\qquad \sqrt{-g}\,\varepsilon^{\lambda\mu\nu}=\tilde\varepsilon^{\lambda\mu\nu}.
\end{align}$$

## Linearized eom

Define

$$(Eh)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.$$

In TT gauge,

$$\nabla^{(0)\mu}h_{\mu\nu}=0,\qquad h=0.$$

Taking the $m^2\to\infty$ limit of the GMG TT equation gives

$$\mathcal E_{\rm TMG}^{\rm TT}{}_{\mu\nu}=-\frac{1}{2}(\nabla^{(0)2}+2)\left[h_{\mu\nu}+\frac{1}{\mu}(Eh)_{\mu\nu}\right],$$

so the TT equation is

$$(\nabla^{(0)2}+2)\left[h_{\mu\nu}+\frac{1}{\mu}(Eh)_{\mu\nu}\right]=0.$$

On TT tensors in the unit AdS$_3$ background,

$$E^2h_{\mu\nu}=(\nabla^{(0)2}+3)h_{\mu\nu}.$$

## First-order factorization

Define

$$\begin{align}
(D^L)_\mu{}^\nu&=\delta_\mu{}^\nu+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^R)_\mu{}^\nu&=\delta_\mu{}^\nu-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^\mu)_\mu{}^\nu&=\delta_\mu{}^\nu+\frac{1}{\mu}\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha.
\end{align}$$

In GMG the first-order massive roots obey

$$m_1m_2=-m^2-\frac{1}{2},\qquad m_1+m_2=-\frac{m^2}{\mu}.$$

For $\mu>0$,

$$\lim_{m^2\to\infty}m_+=\mu,\qquad \lim_{m^2\to\infty}\frac{1}{m_-}=0,$$

so the $D^{m_-}$ factor becomes the identity and

$$(D^L D^R D^\mu h)_{\mu\nu}=0$$

is equivalent to the TT equation above. Explicitly,

$$D^L D^R D^\mu h=-(\nabla^{(0)2}+2)\left[h+\frac{1}{\mu}Eh\right],$$

where the last line suppresses tensor indices.

## Highest-weight modes

The finite massive root is $m_+=\mu$. The highest-weight solution of $D^\mu h=0$ in the $\mu>0$ branch is

$$h^{(-)}_{\frac{\mu-1}{2},\frac{\mu+3}{2},\mu\nu}\propto \frac{e^{-i(\mu+3)t}}{(1+r^2)^{(\mu+3)/2}}\xi_{1,\mu}\xi_{1,\nu}.$$

Its leading boundary behavior is controlled by

$$h+\bar h=\mu+1.$$

Thus the Brown-Henneaux falloff condition keeps this massive primary for

$$\mu\geqslant 1.$$

For $\mu>1$, the TT solution is the sum of the $D^L$, $D^R$, and $D^\mu$ sectors. The $D^L$ and $D^R$ sectors are the usual massless boundary-graviton sectors, while the finite massive primary above and its descendants give the propagating TMG branch.

## Critical point

At

$$\mu=1,$$

the finite massive factor coincides with $D^L$:

$$(D^L D^R D^\mu h)_{\mu\nu}\big|_{\mu=1}=((D^L)^2D^R h)_{\mu\nu}.$$

Use the logarithmic factor

$$y(t,r)=-it-\frac{1}{2}\log(1+r^2).$$

With the lower-index mode convention used here, the logarithmic partner is

$$h^{\log}_{\mu\nu}=y\,h^{(-)}_{0,2,\mu\nu},$$

and it satisfies the Jordan-chain relations

$$D^L(yh^{(-)}_{0,2})\propto h^{(-)}_{0,2},\qquad (D^L)^2(yh^{(-)}_{0,2})=0.$$

The logarithmic mode also satisfies the TT gauge condition,

$$g^{(0)\mu\nu}h^{\log}_{\mu\nu}=0,\qquad \nabla^{(0)\mu}h^{\log}_{\mu\nu}=0.$$

There is no logarithm-squared primary in this TMG limit, because only one massive first-order factor remains finite and the critical factorization has only two coincident $D^L$ factors.
