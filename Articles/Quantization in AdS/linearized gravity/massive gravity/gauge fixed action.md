## Linearized action

Set

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu}+h_{\mu\nu},\qquad h\equiv g^{(0)\mu\nu}h_{\mu\nu}.
\end{align}$$

The action through second order is written as

$$\begin{align}
I_{\rm GMG}=\frac{1}{16\pi G}\int d^3x\sqrt{-g^{(0)}}\left(\mathcal L^{(0)}+\mathcal L^{(1)}+\mathcal L^{(2)}\right)+\mathcal O(h^3),
\end{align}$$

The coefficients in this section are not TT-gauge-fixed, and no integration by parts has been performed.

with

$$\begin{align}
\mathcal L^{(n)}=\mathcal L_{\rm PG}^{(n)}+\frac{1}{\mu}L_{\rm CS}^{(n)}+\frac{1}{m^2}\mathcal L_{\rm NMG}^{(n)}.
\end{align}$$

Here $\mathcal L_{\rm PG}^{(n)}$ comes from $\sqrt{-g}(R+2)$, while $\mathcal L_{\rm NMG}^{(n)}$ comes from

$$\begin{align}
\sqrt{-g}\left[\frac{1}{2}-R_{\mu\nu}R^{\mu\nu}+\frac{3}{8}R^2\right].
\end{align}$$

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

$$\begin{align}
\sqrt{-g}\,L_{\rm CS}=\frac{1}{2}\tilde\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),\qquad \tilde\varepsilon^{\lambda\mu\nu}=\sqrt{-g^{(0)}}\,\varepsilon^{(0)\lambda\mu\nu}.
\end{align}$$

Thus no determinant expansion multiplies the CS coefficients after factoring out $\sqrt{-g^{(0)}}$. With

$$\begin{align}
\Gamma^\rho{}_{\mu\nu}=\Gamma^{(0)\rho}{}_{\mu\nu}+\Gamma^{(1)\rho}{}_{\mu\nu}+\Gamma^{(2)\rho}{}_{\mu\nu}+\mathcal O(h^3),
\end{align}$$

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

## TT gauge fixed action

now we will impose the TT gauge

$$\begin{align}
g^{(0)\mu \nu}h_{\mu \nu} & =0, & \nabla ^{(0)\mu}h_{\mu \nu} & =0
\end{align}$$

The gauge conditions are imposed directly on the unintegrated densities above. No integration by parts is used. The only additional simplifications are the unit-AdS$_3$ commutator consequences

$$\begin{align}
\nabla^{(0)}_\rho\nabla^{(0)}_\nu h_\mu{}^\rho&=-3h_{\mu\nu},& \nabla^{(0)}_\mu\nabla^{(0)\rho}h^{\mu\nu}&=-3h^{\rho\nu}.
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

For the CS contribution, keep the same unintegrated connection representative and restrict the perturbation to the TT slice. Denote the restricted connection coefficients by

$$\begin{align}
\Gamma_{\rm TT}^{(1)\rho}{}_{\mu\nu}&=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu h_{\sigma\nu}+\nabla^{(0)}_\nu h_{\mu\sigma}-\nabla^{(0)}_\sigma h_{\mu\nu}\right),\\
\Gamma_{\rm TT}^{(2)\rho}{}_{\mu\nu}&=\frac{1}{2}h^{\rho\alpha}\left(\nabla^{(0)}_\alpha h_{\mu\nu}-\nabla^{(0)}_\mu h_{\alpha\nu}-\nabla^{(0)}_\nu h_{\mu\alpha}\right),
\end{align}$$

with $\Gamma_{\rm TT}^{(1)\rho}{}_{\rho\mu}=0$. Then

$$\begin{align}
L_{\rm CS,TT}^{(0)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right),\\
L_{\rm CS,TT}^{(1)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\bigg[\Gamma_{\rm TT}^{(1)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma_{\rm TT}^{(1)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma_{\rm TT}^{(1)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma_{\rm TT}^{(1)\tau}{}_{\nu\rho}\right)\bigg],\\
L_{\rm CS,TT}^{(2)}&=\frac{1}{2}\varepsilon^{(0)\lambda\mu\nu}\bigg[\Gamma_{\rm TT}^{(2)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma^{(0)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma_{\rm TT}^{(1)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma_{\rm TT}^{(1)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma_{\rm TT}^{(1)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma_{\rm TT}^{(1)\tau}{}_{\nu\rho}\right)\\
&\qquad+\Gamma^{(0)\rho}{}_{\lambda\sigma}\left(\partial_\mu\Gamma_{\rm TT}^{(2)\sigma}{}_{\rho\nu}+\frac{2}{3}\Gamma_{\rm TT}^{(2)\sigma}{}_{\mu\tau}\Gamma^{(0)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma_{\rm TT}^{(1)\sigma}{}_{\mu\tau}\Gamma_{\rm TT}^{(1)\tau}{}_{\nu\rho}+\frac{2}{3}\Gamma^{(0)\sigma}{}_{\mu\tau}\Gamma_{\rm TT}^{(2)\tau}{}_{\nu\rho}\right)\bigg].
\end{align}$$

## xCPS symplectic form

Let $\delta h_{\mu\nu}$ denote the vertical one-form used by xCPS, and set $\Box\equiv\nabla^{(0)}_\rho\nabla^{(0)\rho}$. In the xCPS normal convention, the first variation of a gauge-fixed density takes the form

$$\begin{align}
\delta\mathcal L_X=\mathcal E_X^{\mu\nu}\delta h_{\mu\nu}+\nabla^{(0)}_\mu\Theta_X^\mu,
\end{align}$$

and the symplectic current is $j_X^\mu=\delta\Theta_X^\mu$. For the pure-gravity density,

$$\begin{align}
\Theta_{\rm PG}^\mu&=h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho}+\frac{1}{2}\delta h^{\nu\rho}\nabla^{(0)\mu}h_{\nu\rho}-\delta h^{\nu\rho}\nabla^{(0)}_\rho h^\mu{}_\nu,\\
j_{\rm PG}^\mu&=\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}+\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu.
\end{align}$$

For the NMG density,

$$\begin{align}
\Theta_{\rm NMG}^\mu&=-\frac{3}{2}h^{\nu\rho}\nabla^{(0)\mu}\delta h_{\nu\rho}+\frac{3}{4}\delta h^{\nu\rho}\nabla^{(0)\mu}h_{\nu\rho}+\frac{1}{2}\delta h^{\nu\rho}\nabla^{(0)\mu}\Box h_{\nu\rho}\\
&\quad+\frac{1}{2}\delta h^{\nu\rho}\nabla^{(0)}_\rho h^\mu{}_\nu-\frac{1}{2}\nabla^{(0)\mu}\delta h^{\nu\rho}\Box h_{\nu\rho},\\
j_{\rm NMG}^\mu&=-\frac{9}{4}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\Box\delta h_{\nu\rho}\\
&\quad-\frac{1}{2}\delta h^{\nu\rho}\wedge\nabla^{(0)}_\rho\delta h^\mu{}_\nu+\frac{1}{2}\nabla^{(0)\mu}\delta h^{\nu\rho}\wedge\Box\delta h_{\nu\rho}.
\end{align}$$

Thus the xCPS symplectic form for the tensorial PG and NMG gauge-fixed pieces is

$$\begin{align}
\Omega_{\rm PG+NMG}^{\rm xCPS}=\frac{1}{16\pi G}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu\left(j_{\rm PG}^\mu+\frac{1}{m^2}j_{\rm NMG}^\mu\right).
\end{align}$$

The raw Chern-Simons representative above is a connection expression containing $\partial_\mu\Gamma$ and background Christoffels, not a tensorial xCPS Lagrangian scalar. Therefore xCPS does not directly compute $j_{\rm CS}^\mu$ from $L_{\rm CS,TT}^{(n)}$ without either a coordinate-component treatment or replacing the CS density by a covariant representative differing by a total derivative.

## CS term

In this section consider the non-perturbative gravitational Chern-Simons term. Let $\Gamma^\rho{}_\sigma=\Gamma^\rho{}_{\mu\sigma}\mathrm{d}x^\mu$ be the Levi-Civita connection one-form and $R^\rho{}_\sigma=\mathrm{d}\Gamma^\rho{}_\sigma+\Gamma^\rho{}_\tau\wedge\Gamma^\tau{}_\sigma$. The CS action is

$$\begin{align}
S_{\text{CS}} & =\frac{1}{32\pi G\mu}\int \operatorname{Tr}\left(\Gamma\wedge\mathrm{d}\Gamma+\frac{2}{3}\Gamma\wedge\Gamma\wedge\Gamma\right).
\end{align}$$

After removing the overall prefactor, the first variation of the CS three-form is

$$\begin{align}
\delta\operatorname{Tr}\left(\Gamma\wedge\mathrm{d}\Gamma+\frac{2}{3}\Gamma\wedge\Gamma\wedge\Gamma\right)=2\operatorname{Tr}\left(\delta\Gamma\wedge R\right)-\mathrm{d}\operatorname{Tr}\left(\Gamma\wedge\delta\Gamma\right).
\end{align}$$

Thus the CS contribution to the Lee-Wald potential and symplectic current, with the overall prefactor included, is

$$\begin{align}
\boldsymbol{\Theta}_{\rm CS}&=-\frac{1}{32\pi G\mu}\operatorname{Tr}\left(\Gamma\wedge\delta\Gamma\right),\\
\boldsymbol{\omega}_{\rm CS}&=\delta\boldsymbol{\Theta}_{\rm CS}=-\frac{1}{32\pi G\mu}\operatorname{Tr}\left(\delta\Gamma\wedge\delta\Gamma\right).
\end{align}$$

Equivalently, for the density convention used above,

$$\begin{align}
\sqrt{-g}\,L_{\rm CS}=\frac{1}{2}\tilde\varepsilon^{\lambda\mu\nu}\Gamma^\rho{}_{\lambda\sigma}\left(\partial_\mu\Gamma^\sigma{}_{\rho\nu}+\frac{2}{3}\Gamma^\sigma{}_{\mu\tau}\Gamma^\tau{}_{\nu\rho}\right),
\end{align}$$

the variation is

$$\begin{align}
\delta\left(\sqrt{-g}\,L_{\rm CS}\right)=\frac{1}{2}\tilde\varepsilon^{\lambda\mu\nu}\delta\Gamma^\rho{}_{\lambda\sigma}R^\sigma{}_{\rho\mu\nu}+\partial_\mu\tilde\Theta^\mu_{\rm CS},
\end{align}$$

with

$$\begin{align}
\tilde\Theta^\mu_{\rm CS}&=-\frac{1}{2}\tilde\varepsilon^{\mu\nu\rho}\Gamma^\alpha{}_{\nu\beta}\delta\Gamma^\beta{}_{\rho\alpha},\\
\tilde j^\mu_{\rm CS}&=\delta\tilde\Theta^\mu_{\rm CS}=-\frac{1}{2}\tilde\varepsilon^{\mu\nu\rho}\delta\Gamma^\alpha{}_{\nu\beta}\wedge\delta\Gamma^\beta{}_{\rho\alpha}.
\end{align}$$

On the linearized phase space around $g^{(0)}_{\mu\nu}$, the quadratic symplectic current only needs the first-order connection variation

$$\begin{align}
\delta\Gamma^{(1)\rho}{}_{\mu\nu}=\frac{1}{2}g^{(0)\rho\sigma}\left(\nabla^{(0)}_\mu\delta h_{\sigma\nu}+\nabla^{(0)}_\nu\delta h_{\mu\sigma}-\nabla^{(0)}_\sigma\delta h_{\mu\nu}\right).
\end{align}$$

Therefore the CS current entering the quadratic GMG symplectic form is

$$\begin{align}
j_{\rm CS}^{(2)\mu}=-\frac{1}{2}\varepsilon^{(0)\mu\nu\rho}\delta\Gamma^{(1)\alpha}{}_{\nu\beta}\wedge\delta\Gamma^{(1)\beta}{}_{\rho\alpha},
\end{align}$$

and

$$\begin{align}
\Omega_{\rm CS}^{(2)}=\frac{1}{16\pi G\mu}\int_\Sigma\mathrm{d}^2x\sqrt{\sigma^{(0)}}\,\tau_\mu j_{\rm CS}^{(2)\mu}.
\end{align}$$
