---
title: TMG
date: 2026-06-06
summary: "Takes the topologically massive gravity limit of the GMG linearized TT equation and records the admissible massive modes, logarithmic mode, symplectic form, and normalization on unit AdS3."
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

## TT gauge fixed action, symplectic form

The TMG quadratic action and symplectic form are the $m^2\to\infty$ limit of the GMG result. The curvature-squared NMG density is absent, while the CS contribution remains the connection-space contribution inherited from the non-perturbative gravitational Chern-Simons term.

Now impose the TT gauge

$$\begin{align}
g^{(0)\mu\nu}h_{\mu\nu}&=0,&\nabla^{(0)\mu}h_{\mu\nu}&=0.
\end{align}$$

The pure-gravity contribution becomes

$$\begin{align}
\mathcal L_{\rm PG,TT}^{(0)}&=-4,\\
\mathcal L_{\rm PG,TT}^{(1)}&=0,\\
\mathcal L_{\rm PG,TT}^{(2)}&=2h_{\mu\nu}h^{\mu\nu}+h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}-\frac{1}{2}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The total TMG symplectic form is

$$\begin{align}
\omega_{\rm TMG}&=\omega_{\rm PG}+\frac{1}{\mu}\omega_{\rm CS},\\
\omega_X&=\frac{1}{16\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\,\omega_X^\mu
\end{align}$$

The pure-gravity current is

$$\omega_{\rm PG}^\mu=-\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu.$$

For the CS piece, only the first-order connection variation is needed on the linearized phase space,

$$\delta\Gamma^{(1)\rho}{}_{\mu\nu}=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu\delta h_{\sigma\nu}+\nabla^{(0)}_\nu\delta h_{\mu\sigma}-\nabla^{(0)}_\sigma\delta h_{\mu\nu}\right),$$

and the $\mu$-independent CS current in the decomposition above is

$$\omega_{\rm CS}^{\mu}=\frac{1}{2}\varepsilon^{(0)\mu\nu\rho}\delta\Gamma^{(1)\alpha}{}_{\nu\beta}\wedge\delta\Gamma^{(1)\beta}{}_{\rho\alpha}.$$

## Symplectic inner product

Use the same normalization convention

$$\omega[h,h^*]=-i.$$

Let $\Delta=h+\bar h$, and let $\sigma=\pm1$ denote the phase label in $h^{(\sigma)}\sim e^{-i\Delta t+2i\sigma\phi}$. The TMG radial integrals are the $m^2\to\infty$ limit of the GMG integrals,

$$\begin{align}
I_{\rm PG}&=-i\frac{\Delta-1}{8(\Delta+1)},\\
I_{\rm CS}^{(\sigma)}&=i\sigma\frac{\Delta^2-2\Delta+2}{16(\Delta+1)}.
\end{align}$$

Therefore

$$\begin{align}
\omega[h^{(\sigma)}_{h,\bar h},h^{(\sigma)*}_{h,\bar h}]&=\frac{i}{128G(\Delta+1)}F^{\rm TMG}_\sigma(\Delta),\\
F^{\rm TMG}_\sigma(\Delta)&=-2(\Delta-1)+\frac{\sigma}{\mu}(\Delta^2-2\Delta+2).
\end{align}$$

For a non-null primary, the overall coefficient $C$ in $C\,h^{(\sigma)}_{h,\bar h}$ is fixed by

$$|C|^2=-\frac{128G(\Delta+1)}{F^{\rm TMG}_\sigma(\Delta)}$$

when the right-hand side is positive in the chosen convention.

At the TMG critical point, let $\Delta_*$ be the degenerate weight and define

$$h^{(\sigma)}_{\log,\mu\nu}=yh^{(\sigma)}_{\Delta_*,\mu\nu}=\partial_\Delta h^{(\sigma)}_{\Delta,\mu\nu}\big|_{\Delta=\Delta_*},\qquad H^{(\sigma)}=(h^{(\sigma)}_{\Delta_*},h^{(\sigma)}_{\log}).$$

The limiting GMG double-root matrix gives

$$\begin{align}
\omega[H_i^{(\sigma)},H_j^{(\sigma)*}]&=\frac{i}{256G(\Delta_*+1)^2}\begin{pmatrix}
2(\Delta_*+1)F^{\rm TMG}_\sigma(\Delta_*) & A^{\rm TMG}_\sigma(\Delta_*)\\
A^{\rm TMG}_\sigma(\Delta_*) & \dfrac{B^{\rm TMG}_\sigma(\Delta_*)}{\Delta_*+1}
\end{pmatrix},\\
A^{\rm TMG}_\sigma(\Delta)&=(\Delta+1)\frac{\mathrm{d}F^{\rm TMG}_\sigma}{\mathrm{d}\Delta}-F^{\rm TMG}_\sigma(\Delta),\\
B^{\rm TMG}_\sigma(\Delta)&=4+\frac{\sigma}{\mu}(\Delta^2+2\Delta+6).
\end{align}$$

For the lower-index critical branch used above, $\mu=1$, $\Delta_*=2$, and $\sigma=-1$. Thus

$$\omega[H_i^{(-)},H_j^{(-)*}]=-\frac{i}{6912G}\begin{pmatrix}72&24\\24&10\end{pmatrix},\qquad H^{(-)}=(h^{(-)}_{0,2},h^{\log}).$$
