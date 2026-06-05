---
title: GMG
date: 2026-06-04
summary: "Organizes generalized massive gravity linearized action and TT equations on unit AdS3 by pure-gravity, Chern-Simons, and NMG contributions."
---

# Generalized massive gravity

This note records the GMG linearized action and TT equations using the same background curvature and index conventions as `linearize.md`. All indices are moved with $g^{(0)}_{\mu\nu}$, and all covariant derivatives are $\nabla^{(0)}$.

## Action

For the unit-radius AdS$_3$ expansion set

$$\lambda=-1-\frac{1}{4m^2}.$$

Then the action is organized by source as

$$I_{\rm GMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g}\left[\mathcal L_{\rm PG}+\frac{1}{\mu}L_{\rm CS}+\frac{1}{m^2}\mathcal L_{\rm NMG}\right],$$

with

$$\begin{align}
\mathcal L_{\rm PG}&=R+2,\\
L_{\rm CS}&=\frac{1}{2}\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),\qquad \sqrt{-g}\,\varepsilon^{\lambda\mu\nu}=\tilde\varepsilon^{\lambda\mu\nu},\\
\mathcal L_{\rm NMG}&=\frac{1}{2}-R_{\mu\nu}R^{\mu\nu}+\frac{3}{8}R^2.
\end{align}$$

## Linearized action

Set

$$g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu},\qquad h\equiv g^{(0)\mu\nu}h_{\mu\nu}.$$

The action through second order is written as

$$I_{\rm GMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g^{(0)}}\left(\mathcal L^{(0)}+\mathcal L^{(1)}+\mathcal L^{(2)}\right)+\mathcal O(h^3),$$

The coefficients in this section are not TT-gauge-fixed, and no integration by parts has been performed.

with

$$\mathcal L^{(n)}=\mathcal L_{\rm PG}^{(n)}+\frac{1}{\mu}L_{\rm CS}^{(n)}+\frac{1}{m^2}\mathcal L_{\rm NMG}^{(n)}.$$

Here $\mathcal L_{\rm PG}^{(n)}$ comes from $\sqrt{-g}(R+2)$, while $\mathcal L_{\rm NMG}^{(n)}$ comes from

$$\sqrt{-g}\left[\frac{1}{2}-R_{\mu\nu}R^{\mu\nu}+\frac{3}{8}R^2\right].$$

The pure-gravity contribution is

$$\begin{align}
\mathcal L_{\rm PG}^{(0)}&=-4,\\
\mathcal L_{\rm PG}^{(1)}&=\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}-\nabla^{(0)2}h,\\
\mathcal L_{\rm PG}^{(2)}&=-h_{\mu\nu}h^{\mu\nu}+\frac{1}{2}h^2+h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\mu h-h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho-\frac{1}{4}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h\\
&\quad-\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho+\nabla^{(0)\nu}h\nabla^{(0)}_\rho h_\nu{}^\rho-h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho+\frac{1}{2}h\nabla^{(0)}_\rho\nabla^{(0)}_\nu h^{\nu\rho}\\
&\quad+h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}-\frac{1}{2}h\nabla^{(0)}_\rho\nabla^{(0)\rho}h-\frac{1}{2}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}+\frac{3}{4}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}.
\end{align}$$

The NMG contribution is

$$\begin{align}
\mathcal L_{\rm NMG}^{(0)}&=2,\\
\mathcal L_{\rm NMG}^{(1)}&=-\frac{1}{2}\left(\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}-\nabla^{(0)2}h\right),\\
\mathcal L_{\rm NMG}^{(2)}&=-\frac{7}{2}h_{\mu\nu}h^{\mu\nu}+\frac{5}{4}h^2+\frac{3}{2}h\left(\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}-\nabla^{(0)2}h\right)+\frac{3}{8}\left(\nabla^{(0)}_\mu\nabla^{(0)}_\nu h^{\mu\nu}-\nabla^{(0)2}h\right)^2+\frac{3}{2}h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\mu h\\
&\quad+\frac{1}{2}h^{\mu\nu}\nabla^{(0)}_\nu\nabla^{(0)}_\rho h_\mu{}^\rho+\frac{1}{8}\nabla^{(0)}_\mu h\nabla^{(0)\mu}h+\frac{1}{2}\nabla^{(0)}_\mu h^{\mu\nu}\nabla^{(0)}_\rho h_\nu{}^\rho-\frac{1}{2}\nabla^{(0)\nu}h\nabla^{(0)}_\rho h_\nu{}^\rho\\
&\quad-\frac{7}{2}h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho-\frac{1}{4}h\nabla^{(0)}_\rho\nabla^{(0)}_\nu h^{\nu\rho}+\frac{3}{2}h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}+\frac{1}{4}h\nabla^{(0)}_\rho\nabla^{(0)\rho}h\\
&\quad+\frac{1}{4}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}-\frac{3}{8}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}-\frac{1}{4}\nabla^{(0)}_\rho\nabla^{(0)}_\nu h\nabla^{(0)\rho}\nabla^{(0)\nu}h\\
&\quad-\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)}_\nu h_\rho{}^\sigma+\frac{1}{2}\nabla^{(0)\rho}\nabla^{(0)\nu}h\nabla^{(0)}_\sigma\nabla^{(0)}_\nu h_\rho{}^\sigma\\
&\quad-\frac{1}{2}\nabla^{(0)}_\mu\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)}_\rho h_\nu{}^\sigma+\frac{1}{2}\nabla^{(0)\rho}\nabla^{(0)\nu}h\nabla^{(0)}_\sigma\nabla^{(0)}_\rho h_\nu{}^\sigma\\
&\quad-\frac{1}{4}\nabla^{(0)}_\rho\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)\sigma}h_{\mu\nu}+\nabla^{(0)}_\mu\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)\sigma}h_{\nu\rho}\\
&\quad-\frac{1}{2}\nabla^{(0)\rho}\nabla^{(0)\nu}h\nabla^{(0)}_\sigma\nabla^{(0)\sigma}h_{\nu\rho}.
\end{align}$$

For the Chern-Simons density, use the convention in the action:

$$\sqrt{-g}\,L_{\rm CS}=\frac{1}{2}\tilde\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),\qquad \tilde\varepsilon^{\lambda\mu\nu}=\sqrt{-g^{(0)}}\,\varepsilon^{(0)\lambda\mu\nu}.$$

Thus no determinant expansion multiplies the CS coefficients after factoring out $\sqrt{-g^{(0)}}$. With

$$\Gamma^\rho{}_{\mu\nu}=\Gamma^{(0)\rho}{}_{\mu\nu}+\Gamma^{(1)\rho}{}_{\mu\nu}+\Gamma^{(2)\rho}{}_{\mu\nu}+\mathcal O(h^3),$$

where

$$\begin{align}
\Gamma^{(1)\rho}{}_{\mu\nu}&=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu h_{\sigma\nu}+\nabla^{(0)}_\nu h_{\mu\sigma}-\nabla^{(0)}_\sigma h_{\mu\nu}\right),\\
\Gamma^{(2)\rho}{}_{\mu\nu}&=\frac{1}{2}h^{\rho\alpha}\left(\nabla^{(0)}_\alpha h_{\mu\nu}-\nabla^{(0)}_\mu h_{\alpha\nu}-\nabla^{(0)}_\nu h_{\mu\alpha}\right).
\end{align}$$

the CS coefficients are

$$\begin{align}
L_{\rm CS}^{(0)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right),\\
L_{\rm CS}^{(1)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\bigg[\Gamma^{(1)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(1)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(1)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(1)\tau}{}_{\nu\rho}\right)\bigg],\\
L_{\rm CS}^{(2)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\bigg[\Gamma^{(2)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma^{(1)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(1)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(1)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(1)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(2)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(2)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(1)\sigma}{}_{\mu\tau}\Gamma^{(1)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(2)\tau}{}_{\nu\rho}\right)\bigg].
\end{align}$$

## Linearized eom

Define the first-order parity operator

$$(Eh)_{\mu\nu}\equiv \varepsilon_\mu{}^{\alpha\beta}\nabla^{(0)}_\alpha h_{\beta\nu}.$$

In TT gauge,

$$\nabla^{(0)\mu}h_{\mu\nu}=0,\qquad h=0.$$

the three contributions to the linearized equation are

$$\begin{align}
\mathcal E_{\rm PG}^{\rm TT}{}_{\mu\nu}&=-\frac{1}{2}(\nabla^{(0)2}+2)h_{\mu\nu},\\
\mathcal E_{\rm CS}^{\rm TT}{}_{\mu\nu}&=-\frac{1}{2\mu}(\nabla^{(0)2}+2)(Eh)_{\mu\nu},\\
\mathcal E_{\rm NMG}^{\rm TT}{}_{\mu\nu}&=\frac{1}{2m^2}\left[(\nabla^{(0)2})^2+\frac{9}{2}\nabla^{(0)2}+5\right]h_{\mu\nu}.
\end{align}$$

The sum gives

$$\mathcal E_{\rm GMG}^{\rm TT}{}_{\mu\nu}=\frac{1}{2m^2}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\frac{m^2}{\mu}(Eh)_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right],$$

so the TT equation is

$$(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h_{\mu\nu}-\frac{m^2}{\mu}(Eh)_{\mu\nu}-\left(m^2-\frac{5}{2}\right)h_{\mu\nu}\right]=0.$$

On TT tensors in the unit AdS$_3$ background,

$$E^2h_{\mu\nu}=(\nabla^{(0)2}+3)h_{\mu\nu}.$$

## First-order factorization

Define

$$\begin{align}
(D^L)_\mu{}^\nu&=\delta_\mu{}^\nu+\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^R)_\mu{}^\nu&=\delta_\mu{}^\nu-\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\\
(D^{m_i})_\mu{}^\nu&=\delta_\mu{}^\nu+\frac{1}{m_i}\varepsilon_\mu{}^{\alpha\nu}\nabla^{(0)}_\alpha,\qquad i=1,2.
\end{align}$$

The first-order masses satisfy

$$\begin{align}
m_1m_2&=-m^2-\frac{1}{2},\\
m_1+m_2&=-\frac{m^2}{\mu}.
\end{align}$$

Then

$$(D^L D^R D^{m_1}D^{m_2}h)_{\mu\nu}=0$$

is equivalent to the TT equation above. Explicitly,

$$D^L D^R D^{m_1}D^{m_2}h=-\frac{1}{m_1m_2}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h-\frac{m^2}{\mu}Eh-\left(m^2-\frac{5}{2}\right)h\right],$$

where the last line suppresses tensor indices.
