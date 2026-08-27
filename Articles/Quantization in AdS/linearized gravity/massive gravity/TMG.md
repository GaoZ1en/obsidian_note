---
title: TMG
date: 2026-06-06
summary: "Takes the topologically massive gravity limit of the GMG linearized TT equation and records the admissible massive modes, logarithmic mode, symplectic form, and normalization on unit AdS3."
---

# Topologically Massive Gravity

This note takes the $m^2\to\infty$ limit of the GMG discussion, with the same unit-radius AdS$_3$ background, lower-index tensor convention, and $\mu>0$ assumption. All indices are moved with $g^{(0)}_{\mu\nu}$, and all covariant derivatives are $\nabla^{(0)}$.

## Action

The TMG action is

$$\begin{align}
I_{\rm TMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g}\left[\mathcal L_{\rm PG}+\frac{1}{\mu}L_{\rm CS}\right],
\end{align}$$

with

$$\begin{align}
\mathcal L_{\rm PG}&=R+2,\\
L_{\rm CS}&=\frac{1}{2}\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),\qquad \sqrt{-g}\,\varepsilon^{\lambda\mu\nu}=\tilde\varepsilon^{\lambda\mu\nu}.
\end{align}$$

## Linearized Eom

Define

$$\begin{align}
(Eh)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.
\end{align}$$

In TT gauge,

$$\begin{align}
\nabla^{(0)\mu}h_{\mu\nu}=0,\qquad h=0.
\end{align}$$

Taking the $m^2\to\infty$ limit of the GMG TT equation gives

$$\begin{align}
\mathcal E_{\rm TMG}^{\rm TT}{}_{\mu\nu}=-\frac{1}{2}(\nabla^{(0)2}+2)\left[h_{\mu\nu}+\frac{1}{\mu}(Eh)_{\mu\nu}\right],
\end{align}$$

so the TT equation is

$$\begin{align}
(\nabla^{(0)2}+2)\left[h_{\mu\nu}+\frac{1}{\mu}(Eh)_{\mu\nu}\right]=0.
\end{align}$$

On TT tensors in the unit AdS$_3$ background,

$$\begin{align}
E^2h_{\mu\nu}=(\nabla^{(0)2}+3)h_{\mu\nu}.
\end{align}$$

## First-Order Factorization

Define

$$\begin{align}
(D^L)_\mu{}^\nu&=\delta_\mu{}^\nu+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^R)_\mu{}^\nu&=\delta_\mu{}^\nu-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^\mu)_\mu{}^\nu&=\delta_\mu{}^\nu+\frac{1}{\mu}\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha.
\end{align}$$

In GMG the first-order massive roots obey

$$\begin{align}
m_1m_2=-m^2-\frac{1}{2},\qquad m_1+m_2=-\frac{m^2}{\mu}.
\end{align}$$

For $\mu>0$,

$$\begin{align}
\lim_{m^2\to\infty}m_+=\mu,\qquad \lim_{m^2\to\infty}\frac{1}{m_-}=0,
\end{align}$$

so the $D^{m_-}$ factor becomes the identity and

$$\begin{align}
(D^L D^R D^\mu h)_{\mu\nu}=0
\end{align}$$

is equivalent to the TT equation above. Explicitly,

$$\begin{align}
D^L D^R D^\mu h=-(\nabla^{(0)2}+2)\left[h+\frac{1}{\mu}Eh\right],
\end{align}$$

where the last line suppresses tensor indices.

## Highest-Weight Modes

The finite massive root is $m_+=\mu$. The highest-weight solution of $D^\mu h=0$ in the $\mu>0$ branch is

$$\begin{align}
h^{(-)}_{\frac{\mu-1}{2},\frac{\mu+3}{2},\mu\nu}\propto \frac{e^{-i(\mu+3)t}}{(1+r^2)^{(\mu+3)/2}}\xi_{1,\mu}\xi_{1,\nu}.
\end{align}$$

Its leading boundary behavior is controlled by

$$\begin{align}
h+\bar h=\mu+1.
\end{align}$$

Thus the Brown-Henneaux falloff condition keeps this massive primary for

$$\begin{align}
\mu\geqslant 1.
\end{align}$$

For $\mu>1$, the TT solution is the sum of the $D^L$, $D^R$, and $D^\mu$ sectors. The $D^L$ and $D^R$ sectors are the usual massless boundary-graviton sectors, while the finite massive primary above and its descendants give the propagating TMG branch.

## Critical Point

At

$$\begin{align}
\mu=1,
\end{align}$$

the finite massive factor coincides with $D^L$:

$$\begin{align}
(D^L D^R D^\mu h)_{\mu\nu}\big|_{\mu=1}=((D^L)^2D^R h)_{\mu\nu}.
\end{align}$$

Use the logarithmic factor

$$\begin{align}
y(t,r)=-it-\frac{1}{2}\log(1+r^2).
\end{align}$$

With the lower-index mode convention used here, the logarithmic partner is

$$\begin{align}
h^{\log}_{\mu\nu}=y\,h^{(-)}_{0,2,\mu\nu},
\end{align}$$

and it satisfies the Jordan-chain relations

$$\begin{align}
D^L(yh^{(-)}_{0,2})\propto h^{(-)}_{0,2},\qquad (D^L)^2(yh^{(-)}_{0,2})=0.
\end{align}$$

The logarithmic mode also satisfies the TT gauge condition,

$$\begin{align}
g^{(0)\mu\nu}h^{\log}_{\mu\nu}=0,\qquad \nabla^{(0)\mu}h^{\log}_{\mu\nu}=0.
\end{align}$$

There is no logarithm-squared primary in this TMG limit, because only one massive first-order factor remains finite and the critical factorization has only two coincident $D^L$ factors.

## TT Gauge Fixed Action, Symplectic Form

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

$$\begin{align}
\omega_{\rm PG}^\mu=-\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu.
\end{align}$$

For the CS piece, only the first-order connection variation is needed on the linearized phase space,

$$\begin{align}
\delta\Gamma^{(1)\rho}{}_{\mu\nu}=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu\delta h_{\sigma\nu}+\nabla^{(0)}_\nu\delta h_{\mu\sigma}-\nabla^{(0)}_\sigma\delta h_{\mu\nu}\right),
\end{align}$$

and the $\mu$-independent CS current in the decomposition above is

$$\begin{align}
\omega_{\rm CS}^{\mu}=\frac{1}{2}\varepsilon^{(0)\mu\nu\rho}\delta\Gamma^{(1)\alpha}{}_{\nu\beta}\wedge\delta\Gamma^{(1)\beta}{}_{\rho\alpha}.
\end{align}$$

## Symplectic Inner Product

Use the same normalization convention

$$\begin{align}
\omega[h,h^*]=-i.
\end{align}$$

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

$$\begin{align}
|C|^2=-\frac{128G(\Delta+1)}{F^{\rm TMG}_\sigma(\Delta)}
\end{align}$$

when the right-hand side is positive in the chosen convention.

At the TMG critical point, let $\Delta_*$ be the degenerate weight and define

$$\begin{align}
h^{(\sigma)}_{\log,\mu\nu}=yh^{(\sigma)}_{\Delta_*,\mu\nu}=\partial_\Delta h^{(\sigma)}_{\Delta,\mu\nu}\big|_{\Delta=\Delta_*},\qquad H^{(\sigma)}=(h^{(\sigma)}_{\Delta_*},h^{(\sigma)}_{\log}).
\end{align}$$

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

$$
\omega[H_i^{(-)},H_j^{(-)*}]=-\frac{i}{6912G}\begin{pmatrix}72&24\\24&10\end{pmatrix},\qquad H^{(-)}=(h^{(-)}_{0,2},h^{\log}).
$$
