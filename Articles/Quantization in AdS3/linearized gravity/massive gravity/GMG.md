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

we assume $\displaystyle{\mu>0}$ in the following discussion.

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

in the following discussion we denote the larger root as $\displaystyle{m_{+}}$ and the smaller root as $\displaystyle{m_{-}}$ (yes they may not be positive or negative, since $\displaystyle{m^{2}}$ may smaller than $\displaystyle{0}$). Then

$$(D^L D^R D^{m_+}D^{m_-}h)_{\mu\nu}=0$$

is equivalent to the TT equation above. Explicitly,

$$D^L D^R D^{m_+}D^{m_-}h=-\frac{1}{m_1m_2}(\nabla^{(0)2}+2)\left[\nabla^{(0)2}h-\frac{m^2}{\mu}Eh-\left(m^2-\frac{5}{2}\right)h\right],$$

where the last line suppresses tensor indices.

## solutions

### general discussion

for cases $\displaystyle{m_{1}\neq m_{2}}$ and $\displaystyle{m_{1},m_{2}\neq \pm 1}$, the general solution is sum of contributions from each root $\displaystyle{m_{i}}$ and $\displaystyle{\pm 1}$. we have already solves the first order equations $\displaystyle{D^{L/R}h=0}$ in [[Articles/Quantization in AdS3/linearized gravity/eom|eom]]. we follows the same steps to find the solutions $\displaystyle{D^{m_{\pm}}h=0}$. consider the Casimir

$$\begin{align}
\mathcal{C}h_{\mu \nu} & =-\frac{1}{4}\mathcal{D}_{\mu}^{~\alpha}\mathcal{D}_{\alpha}^{~\beta}h_{\beta \nu}-\frac{1}{2}\mathcal{D}_{\mu}^{~\alpha}h_{\alpha \nu}-\frac{1}{2}\mathcal{D}_{\nu}^{~\alpha}h_{\mu \alpha}-\frac{3}{4}h_{\mu \nu} \\
\mathcal{\bar{C}}h_{\mu \nu} & =-\frac{1}{4}\mathcal{D}_{\mu}^{~\alpha}\mathcal{D}_{\alpha}^{~\beta}h_{\beta \nu}+\frac{1}{2}\mathcal{D}_{\mu}^{~\alpha}h_{\alpha \nu}+\frac{1}{2}\mathcal{D}_{\nu}^{~\alpha}h_{\mu \alpha}-\frac{3}{4}h_{\mu \nu}
\end{align}$$

here

$$\begin{align}
\mathcal{D}_{\mu}^{~\alpha} & =\varepsilon _{\mu}^{~\nu \alpha}\nabla ^{(0)}_{\nu}
\end{align}$$

then

$$\begin{align}
\mathcal{C}h_{m_\pm,\mu \nu} & =\left(-\frac{1}{4}m_{\pm}^{2}+m_{\pm}-\frac{3}{4}\right)h_{\mu \nu} \\
\mathcal{\bar{C}}h_{m_\pm,\mu \nu} & =\left(-\frac{1}{4}m_{\pm}^{2}-m_{\pm}-\frac{3}{4}\right)h_{\mu \nu}
\end{align}$$

suppose the primary state $\displaystyle{h_{m_{\pm},0,\mu \nu}}$ has the conformal dimension $\displaystyle{(h_{m_{\pm}},\bar{h}_{m_{\pm}})}$, then

$$\begin{align}
\mathcal{C}h_{m_{\pm},0,\mu \nu} & =(-h_{m_{\pm}}^{2}+h_{m_{\pm}})h_{m_{\pm},0,\mu \nu} \\
\mathcal{\bar{C}}h_{m_{\pm},0,\mu \nu} & =(-\bar{h}_{m_{\pm}}^{2}+\bar{h}_{m_{\pm}})h_{m_{\pm},0,\mu \nu} \\
\implies h_{m_{\pm}} & = \frac{m_{\pm}-1}{2}, \frac{3-m_{\pm}}{2}\\
\bar{h}_{m_{\pm}} & = \frac{m_{\pm}+3}{2},-\frac{m_{\pm}+1}{2}
\end{align}$$

to avoid any exponential divergence at the boundary, the massive graviton solutions reduce to the following solutions with the following parameter regions

1. $\displaystyle{m^{2}>0}$ and $\displaystyle{1-\frac{1}{2m^{2}}-\frac{1}{\mu}\geqslant 0}$, with admissible $\displaystyle{(h,\bar{h})}$ to be

$$\begin{align}
(h,\bar{h}) & = \left( \frac{3-m_{-}}{2},\frac{-1-m_{-}}{2}\right) \\
(h,\bar{h}) & =\left(\frac{-1+m_{+}}{2},\frac{3+m_{+}}{2}\right)
\end{align}$$
![[Attachments/gmg-parameter-region-positive-m2.png]]
2. $\displaystyle{\mu\geqslant \frac{3}{4}}$ and $\displaystyle{m^{2}\leqslant -2\mu ^{2}-\mu \sqrt{ 4\mu ^{2}-2 }}$ and $\displaystyle{1-\frac{1}{2m^{2}}-\frac{1}{\mu}\geqslant 0}$, with admissible $\displaystyle{(h,\bar{h})}$ to be

$$\begin{align}
(h,\bar{h}) & =\left(\frac{m_{\pm}-1}{2},\frac{m_{\pm}+3}{2}\right)
\end{align}$$

![[Attachments/gmg-parameter-region-negative-m2.png]]

### highest-weight primary

For a primary tensor with conformal dimension $(h,\bar h)$, the highest-weight conditions are

$$\begin{align}
\mathcal L_{\xi_1}h_{h,\bar h,\mu\nu}&=0,&\mathcal L_{\bar\xi_1}h_{h,\bar h,\mu\nu}&=0,\\
\mathcal L_{\xi_0}h_{h,\bar h,\mu\nu}&=-ih\,h_{h,\bar h,\mu\nu},&\mathcal L_{\bar\xi_0}h_{h,\bar h,\mu\nu}&=-i\bar h\,h_{h,\bar h,\mu\nu}.
\end{align}$$

we have

$$\begin{align}
h^{(+)}_{h,\bar h,\mu\nu}&\propto \frac{e^{-i(h+\bar h+2)t}}{(1+r^{2})^{(h+\bar{h})/2+1}}\bar{\xi}_{1,\mu}\bar{\xi}_{1,\nu},\qquad h-\bar h=2,\\
h^{(-)}_{h,\bar h,\mu\nu}&\propto \frac{e^{-i(h+\bar h+2)t}}{(1+r^{2})^{(h+\bar{h})/2+1}}\xi_{1,\mu}\xi_{1,\nu},\qquad h-\bar h=-2.
\end{align}$$

These components are transverse and traceless with respect to the background metric:

$$g^{(0)\mu\nu}h^{(\sigma)}_{h,\bar h,\mu\nu}=0,\qquad \nabla^{(0)\mu}h^{(\sigma)}_{h,\bar h,\mu\nu}=0.$$

The leading boundary behavior is componentwise

$$h^{(\sigma)}_{h,\bar h,\mu\nu}\sim r^{2-h-\bar h}e^{-i(h+\bar h)t+2i\sigma\phi}\mathcal{O}(r^0)_{\mu\nu}$$

so avoiding exponential divergence at the boundary requires $h+\bar h\geqslant2$, which leads to the regions discussed above.

### double root

Use the logarithmic factor

$$y(t,r)=-it-\frac{1}{2}\log(1+r^2),$$

which is the $(t,r,\phi)$ form of $-i\tau-\log\cosh\rho$ with $r=\sinh\rho$.

In the parameter regions above with $\mu>0$, a massive factor coincides with a massless factor on the $D^{m_i}=D^L$ critical line. Algebraically,

$$D^{m_i}=D^L\Longleftrightarrow 1-\frac{1}{2m^2}-\frac{1}{\mu}=0.$$

With the lower-index mode convention used here, the $\mu>0$ logarithmic partner is the parameter derivative of the massive primary at the $D^{m_i}=D^L$ degenerate weight. Up to normalization,

$$D^L(yh_{0,2})\propto h_{0,2},\qquad (D^L)^2(yh_{0,2})=0.$$

When the two massive factors coincide with each other but not with a massless factor, $D^{m_+}=D^{m_-}=D^m$, the repeated first-order root in the second parameter region above is positive:

$$m_+=m_-=m=\mu+\frac{1}{2}\sqrt{4\mu^2-2}\geqslant1.$$

The endpoint $m=1$ is the triple root discussed below. Away from that endpoint the boundary-admissible massive primary is the $h^{(-)}$ branch, and the logarithmic partner is

$$\begin{align}
(D^m)(y\,h^{(-)}_{\frac{m-1}{2},\frac{m+3}{2}})&\propto h^{(-)}_{\frac{m-1}{2},\frac{m+3}{2}},& (D^m)^2(y\,h^{(-)}_{\frac{m-1}{2},\frac{m+3}{2}})&=0.
\end{align}$$

these logarithmic modes satisfy the TT gauge condition

$$\begin{align}
g^{(0)\mu \nu}h^{\log}_{\mu \nu} & =0, & \nabla ^{(0)\mu}h^{\log}_{\mu \nu} & =0
\end{align}$$

### triple root

At a three-factor degeneration, there is also a logarithm-squared partner. For the standing assumption $\mu>0$, the degeneration $D^{m_+}=D^{m_-}=D^L$ occurs at $m_+=m_-=1$, with $m^2=-3/2$ and $\mu=3/4$, and the logarithm-squared partner is $y^2h^{(-)}_{0,2}$.

The Jordan-chain relations are

$$D^L(y^2h^{(-)}_{0,2})\propto yh^{(-)}_{0,2},\qquad (D^L)^3(y^2h^{(-)}_{0,2})=0.$$

and the 2-log primary satisfies the TT gauge condition.

$$\begin{align}
g^{(0)\mu \nu}h^{2\log}_{\mu \nu} & =0, & \nabla ^{(0)\mu}h^{2\log}_{\mu \nu} & =0
\end{align}$$

## TT gauge fixed action, symplectic form

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

The NMG contribution becomes

$$\begin{align}
\mathcal L_{\rm NMG,TT}^{(0)}&=2,\\
\mathcal L_{\rm NMG,TT}^{(1)}&=0,\\
\mathcal L_{\rm NMG,TT}^{(2)}&=-2h_{\mu\nu}h^{\mu\nu}-\frac{3}{2}h^{\mu\nu}\nabla^{(0)}_\rho\nabla^{(0)\rho}h_{\mu\nu}+\frac{1}{4}\nabla^{(0)}_\nu h_{\mu\rho}\nabla^{(0)\rho}h^{\mu\nu}\\
&\quad-\frac{3}{8}\nabla^{(0)}_\rho h_{\mu\nu}\nabla^{(0)\rho}h^{\mu\nu}-\frac{1}{4}\nabla^{(0)}_\rho\nabla^{(0)\rho}h^{\mu\nu}\nabla^{(0)}_\sigma\nabla^{(0)\sigma}h_{\mu\nu}.
\end{align}$$

the Chern-Simons contribution will be discussed later. by standard CPS procedure, we obtain the symplectic form as

$$\begin{align}
\omega_{\rm GMG} & =\omega_{\rm PG}+\frac{1}{\mu}\omega_{\rm CS}+\frac{1}{m^2}\omega_{\rm NMG} \\
\omega & = \frac{1}{16\pi G} \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu} \omega ^{\mu}
\end{align}$$

For the pure-gravity piece, we have

$$\begin{align}
\omega ^{\mu}_{\mathrm{PG}} & =-\frac{1}{2}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-\delta h^{\nu \rho}\wedge \nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu} \\
\omega_{\rm PG} & =-\frac{1}{32\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\,\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}\\
&\quad+\frac{1}{16\pi G}\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,\tau_\mu n_\nu\,\delta h^\mu{}_\rho\wedge\delta h^{\nu\rho}.
\end{align}$$


For the NMG piece,

$$\begin{align}
\omega_{\rm NMG}^\mu&=\frac{9}{4}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}+\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\Box\delta h_{\nu\rho}\\
&\quad+\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu-\frac{1}{2}\nabla^{(0)\mu}\delta h^{\nu\rho}\wedge\Box\delta h_{\nu\rho}. \\
\omega _{\mathrm{NMG}} & =\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\omega ^{\mu}_{\mathrm{NMG}}
\end{align}$$

For Chern-Simons piece, we adopt another route. Start from the non-perturbative gravitational Chern-Simons action

$$S_{\text{CS}}=\frac{1}{32\pi G\mu}\int\operatorname{Tr}\left(\Gamma\wedge\mathrm{d}\Gamma+\frac{2}{3}\Gamma\wedge\Gamma\wedge\Gamma\right),$$

Thus the symplectic symplectic current are

$$\begin{align}
\boldsymbol{\omega}_{\rm CS}&=\frac{1}{32\pi G\mu}\operatorname{Tr}\left(\delta\Gamma\wedge\delta\Gamma\right).
\end{align}$$

equivalently in the tensor form.

$$\begin{align}
\omega^\mu_{\rm CS} & =\frac{1}{2}\tilde\varepsilon^{\mu\nu\rho}\delta\Gamma^\alpha{}_{\nu\beta}\wedge\delta\Gamma^\beta{}_{\rho\alpha}. \\
\omega _{\mathrm{CS}} & =\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\omega ^{\mu}_{\mathrm{CS}}
\end{align}$$

On the linearized phase space around $g^{(0)}_{\mu\nu}$, the quadratic symplectic current only needs

$$\delta\Gamma^{(1)\rho}{}_{\mu\nu}=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu\delta h_{\sigma\nu}+\nabla^{(0)}_\nu\delta h_{\mu\sigma}-\nabla^{(0)}_\sigma\delta h_{\mu\nu}\right).$$

Therefore the $\mu$-independent CS current in the decomposition above is

$$\begin{align}
\omega_{\rm CS}^{\mu} & =\frac{1}{2}\varepsilon^{(0)\mu\nu\rho}\delta\Gamma^{(1)\alpha}{}_{\nu\beta}\wedge\delta\Gamma^{(1)\beta}{}_{\rho\alpha} \\
\omega_{\rm CS} & =\frac{1}{16\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\omega_{\rm CS}^{\mu}.
\end{align}$$

## symplectic inner product

now we will find the normalization constant for a general $\displaystyle{(h,\bar{h})}$ primary and its descendants, and its log-partners. the normalization condition is defined by the symplectic form

$$\begin{align}
\omega[h,h^{*}] & =-i
\end{align}$$

Let $\Delta=h+\bar h$. Direct evaluation of the three pieces of the GMG symplectic form gives the radial integrals

$$\begin{align}
I_{\rm PG}&=-i\frac{\Delta-1}{8(\Delta+1)},\\
I_{\rm NMG}&=i\frac{(\Delta-1)(4\Delta^2-8\Delta+1)}{16(\Delta+1)},\\
I_{\rm CS}^{(\sigma)}&=i\sigma\frac{\Delta^2-2\Delta+2}{16(\Delta+1)}.
\end{align}$$

Direct evaluation gives that

$$\begin{align}
\omega[h^{(\sigma)}_{h,\bar{h}},h^{(\sigma)*}_{h,\bar{h}}] & =\frac{i}{128G(\Delta+1)}F_{\sigma}(\Delta) \\
F_{\sigma}(\Delta) & =-2(\Delta-1)+\frac{\sigma}{\mu}(\Delta ^{2}-2\Delta+2)+\frac{\Delta-1}{m^{2}}(4\Delta ^{2}-8\Delta+1)
\end{align}$$

this result matches the $\displaystyle{(2,0)}$ and $\displaystyle{(0,2)}$ normalization in the pure gravity limit.

At a double root, let $\Delta_*$ be the degenerate weight of the branch $\eta$. The logarithmic partner is

$$\begin{align}
h^{(\sigma)}_{\log,\mu \nu} & =yh ^{(\sigma)}_{\Delta _{*},\mu \nu}=\partial _{\Delta}h^{(\sigma)}_{\Delta,\mu \nu}|_{\Delta=\Delta _{*}}
\end{align}$$

denote

$$\begin{align}
H^{(\sigma)} & =(h^{(\sigma)}_{\Delta _{*},\mu \nu},h^{(\sigma)}_{\log,\mu \nu})
\end{align}$$

direct evaluation gives that

$$\begin{align}
\omega[H_{i}^{(\sigma)},H_{j}^{(\sigma)*}] & =\frac{i}{256G(\Delta _{*}+1)^{2}}\begin{pmatrix}
2(\Delta _{*}+1)F_{\sigma}(\Delta _{*}) & A_{\sigma}(\Delta _{*}) \\
A_{\sigma}(\Delta _{*}) & \dfrac{B_{\sigma}(\Delta _{*})}{\Delta _{*}+1}
\end{pmatrix} \\
A_{\sigma}(\Delta) & =(\Delta+1)F'_{\sigma}(\Delta)-F_{\sigma}(\Delta) \\
B_{\sigma}(\Delta) & =4+\frac{\sigma}{\mu}(\Delta ^{2}+2\Delta+6)+\frac{2}{m^{2}}(4\Delta ^{2}+8\Delta-9)
\end{align}$$

At the triple-root point recorded above, the parameters are given by

$$m^2=-\frac{3}{2},\qquad \mu=\frac{3}{4},\qquad \Delta_*=2,$$

denote

$$\begin{align}
H^{(-)} & =(h^{(-)}_{0,2},h^{(-)}_{\log},h^{(-)}_{2\log}), & h^{(-)}_{\log} & =yh ^{(-)}_{0,2}, & h^{(-)}_{2\log}=y^{2}h ^{(-)}_{0,2}
\end{align}$$

direct evaluation gives

$$\begin{align}
\omega[H^{(-)}_{i},H^{(-)*}_{j}] & =-\frac{i}{7776G}\begin{pmatrix}
108 & 90 & 78 \\
90 & 51 & -3 \\
78 & -3 & 2
\end{pmatrix}
\end{align}$$

## boundary algebra

see https://arxiv.org/abs/0904.0403. the central charge is

$$\begin{align}
c_{L} & =\frac{3}{2G}\left( 1-\frac{1}{2m^{2}}-\frac{1}{\mu} \right) \\
c_{R} & =\frac{3}{2G}\left( 1-\frac{1}{2m^{2}}+\frac{1}{\mu} \right)
\end{align}$$
