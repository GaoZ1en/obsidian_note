Set the AdS radius to one and use signature $\displaystyle{(-,+,+),\kappa ^{2}=16\pi G>0}$. For a real minimally coupled scalar, the action is

$$\begin{align}
S_{R}[g,\phi] & =\dfrac{1}{\kappa ^{2}} \int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(R+2\right)+\dfrac{2}{\kappa ^{2}}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-1) \\
 & -\dfrac{1}{2} \int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2}\right) \\
S & =\lim_{ R \to \infty } S_{R}
\end{align}$$

here $\displaystyle{M_{R}=\left\{r\leqslant R\right\}}$, $\displaystyle{\Gamma _{R}}$ is its timelike radial boundary, $\displaystyle{n^{\mu}}$ is the outward unit spacelike normal, $\displaystyle{\gamma _{\mu \nu}=g_{\mu \nu}-n_{\mu}n_{\nu}}$, and $\displaystyle{K_{\mu \nu}=\gamma _{\mu}^{~\rho}\gamma _{\nu}^{~\sigma}\nabla _{\rho}n_{\sigma}}$. The boundary action contains GHY and the AdS counterterm.

Use global coordinates $\displaystyle{(t,r,\varphi)}$, with $\displaystyle{t\in \mathbb{R},r\geqslant 0}$ and $\displaystyle{\varphi \sim \varphi+2\pi}$

$$\begin{align}
g^{(0)}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\varphi ^{2}
\end{align}$$

the metric perturbations and allowed variations obey the Brown-Henneaux falloffs

$$\begin{align}
h_{tt},h_{t\varphi},h_{\varphi \varphi} & =\mathcal{O}(r^{0}), & h_{rr} & =\mathcal{O}(r^{-4}), & h_{rt},h_{r\varphi} & =\mathcal{O}(r^{-3})
\end{align}$$

and likewise for $\displaystyle{k _{\mu \nu}}$. Regularity at the center is imposed. Here $\displaystyle{f(r)=\mathcal{O}(r^{k})}$ means

$$\begin{align}
\limsup_{r\to\infty}\left|f(r)r^{-k}\right| & <\infty
\end{align}$$

and we should notice that $\displaystyle{g(r)=o(r^{k})}$ means

$$\begin{align}
\lim_{ r \to \infty } g(r)r^{-k} & =0
\end{align}$$

no logarithmic or oscillatory terms are included in the falloffs. For the scalar, we choose the source-free standard boundary conditions

$$\begin{align}
m^{2} & >-1, &\Delta & =1+\sqrt{ 1+m^{2} }> 1 \\
\phi & =r^{-\Delta}\alpha(t,\varphi)+r^{-(2-\Delta)}\beta(t,\varphi)+\dots, & \beta & =\delta \beta=0
\end{align}$$

Both scalar coefficients below have the fast falloff and its differentiated falloffs. The scalar action is finite and its boundary variation is $O(R^{2-2\Delta})\to0$, so no scalar boundary term is required in this sector. The boundary prescription here is restricted to these conditions.

## Field and Action Expansion

Expand

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+\kappa h_{\mu \nu}+\kappa ^{2}k _{\mu \nu}+\mathcal{O}(\kappa ^{3}) \\
\phi & =\phi ^{(0)}+\kappa \phi ^{(1)}+\mathcal{O}(\kappa ^{2})
\end{align}$$

all perturbative indices are raised with $\displaystyle{g^{(0)}}$; $\displaystyle{\nabla ^{(0)}}$ is its connection, $\displaystyle{h=g^{(0)\mu \nu}h_{\mu \nu}}$ and $\displaystyle{k=g^{(0)\mu \nu}k _{\mu \nu}}$. The bulk action coefficients are as follows; $S_{\mathrm{dyn}}$ omits the field-independent background action, and $\simeq$ suppresses the boundary and endpoint terms inherited from $S_R$.

$$\begin{align}
S_{\mathrm{dyn}} & \simeq S^{(0)}+\kappa S^{(1)}+\mathcal{O}(\kappa ^{2}) \\
S^{(0)} & =-\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\dfrac{1}{2}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\nu}h^{\mu \rho}\right. \\
 & \left.+\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\nu}h-\dfrac{1}{2}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h-h^{2}+2h_{\mu \nu}h^{\mu \nu}\right) \\
 & -\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\mu}\phi ^{(0)}\nabla ^{(0)\mu}\phi ^{(0)}+m^{2}(\phi ^{(0)})^{2}\right) \\
S^{(1)} & =\dfrac{1}{4}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\left(\dfrac{h}{2}g^{(0)\mu \nu}g^{(0)\rho \alpha}g^{(0)\sigma \beta}-h^{\mu \nu}g^{(0)\rho \alpha}g^{(0)\sigma \beta}-g^{(0)\mu \nu}h^{\rho \alpha}g^{(0)\sigma \beta}-g^{(0)\mu \nu}g^{(0)\rho \alpha}h^{\sigma \beta}\right)\right. \\
& \times\left((\nabla _{\mu}^{(0)}h_{\sigma \alpha}+\nabla ^{(0)}_{\sigma}h_{\mu \alpha}-\nabla ^{(0)}_{\alpha}h_{\mu \sigma})(\nabla ^{(0)}_{\nu}h_{\rho \beta}+\nabla ^{(0)}_{\rho}h_{\nu \beta}-\nabla ^{(0)}_{\beta}h_{\nu \rho})\right. \\
& \left.-(\nabla _{\mu}^{(0)}h_{\nu \alpha}+\nabla ^{(0)}_{\nu}h_{\mu \alpha}-\nabla ^{(0)}_{\alpha}h_{\mu \nu})(\nabla ^{(0)}_{\rho}h_{\sigma \beta}+\nabla ^{(0)}_{\sigma}h_{\rho \beta}-\nabla ^{(0)}_{\beta}h_{\rho \sigma})\right) \\
& \left. +\dfrac{2}{3}h^{3}-4hh_{\mu \nu}h^{\mu \nu}+\dfrac{16}{3}h^{\mu}_{~\nu}h^{\nu}_{~\rho}h^{\rho}_{~\mu} \right)-\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\mu}\phi ^{(0)}\nabla ^{(0)\mu}\phi ^{(1)}+m^{2}\phi ^{(0)}\phi ^{(1)}\right) \\
 & +\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }h_{\mu \nu}T^{\mu \nu}_{(0)}+\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(-\dfrac{1}{2}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}k^{\mu \nu}+\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\nu}k^{\mu \rho}\right. \\
 & \left. -\dfrac{1}{2}\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\nu}k-\dfrac{1}{2}\nabla ^{(0)}_{\mu}k^{\mu \nu}\nabla ^{(0)}_{\nu}h+\dfrac{1}{2}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}k+hk-2h_{\mu \nu}k^{\mu \nu} \right) \\
T^{\mu \nu}_{(0)} & =\nabla ^{(0)\mu}\phi ^{(0)}\nabla ^{(0)\nu}\phi ^{(0)}-\dfrac{1}{2}g^{(0)\mu \nu}(\nabla ^{(0)}_{\rho}\phi ^{(0)}\nabla ^{(0)\rho}\phi ^{(0)}+m^{2}\phi ^{(0)2})
\end{align}$$

## Equations of Motion

The unperturbed eom is given by

$$\begin{align}
\mathcal{E}_{\mu \nu} & =R_{\mu \nu}-\dfrac{1}{2}g_{\mu \nu}R-g_{\mu \nu}=\dfrac{1}{2}\kappa ^{2}T_{\mu \nu} \\
\mathcal{E}_{\phi} & =\nabla ^{2}\phi-m^{2}\phi=0
\end{align}$$

expand the eoms, we have

$$\begin{align}
(\nabla ^{(0)2}-m^{2})\phi ^{(0)} & =0 \\
(\nabla ^{(0)2}-m^{2})\phi ^{(1)} & =h^{\mu \nu}\nabla _{\mu}^{(0)}\nabla _{\nu}^{(0)}\phi ^{(0)}+\left( \nabla _{\mu}^{(0)}h^{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)\nu}h \right)\nabla ^{(0)}_{\nu}\phi ^{(0)} \\
\mathcal{E}_{\mu \nu}^{(1)}[h] & =0 \\
\mathcal{E}^{(1)}_{\mu \nu}[k]+\mathcal{E}_{\mu \nu}^{(2)}[h,h] & =\dfrac{1}{2}T_{(0)\mu \nu}
\end{align}$$

## Pre-Symplectic Potential and Form

The unperturbed pre-symplectic potential and form are given by

$$\begin{align}
\theta & =-\dfrac{1}{\kappa ^{2}}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}g^{\mu \alpha}g^{\nu \beta}(\nabla _{\beta}\delta g_{\nu \alpha}-\nabla _{\alpha}\delta g_{\nu \beta})+\dfrac{1}{\kappa ^{2}}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}\gamma ^{\mu \nu}n^{\alpha}\delta g_{\nu \alpha} \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla ^{\mu}\phi \delta \phi \\
\omega & =\delta \theta
\end{align}$$

Expand the pre-symplectic potential/form, with $\delta g^{(0)}=0$, future-directed $\tau$, and the radial collar gauge stated below. Here $\ell_{\mu\nu}$ denotes the $\kappa^3$ coefficient in $g_{\mu\nu}$, and all $\Sigma$ integrals mean $\lim_{R\to\infty}\int_{\Sigma_R}$. We have

$$\begin{align}
\theta & =\kappa ^{-1}\theta ^{(-1)}+\theta ^{(0)}+\kappa \theta ^{(1)}+\mathcal{O}(\kappa ^{2}) \\
\omega & =\omega ^{(0)}+\kappa \omega ^{(1)}+\mathcal{O}(\kappa ^{2})
\end{align}$$

where

$$\begin{align}
\theta ^{(-1)} & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)\mu}\delta h) \\
\theta ^{(0)} & =-\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)}_{\mu}(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho})g^{(0)\alpha \nu}\left(g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta k _{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta k _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta k _{\alpha \beta})\right. \\
 & \left.-\delta h^{\rho \lambda}\left(\nabla ^{(0)}_{\alpha}h_{\beta \lambda}+\nabla ^{(0)}_{\beta}h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}h_{\alpha \beta}\right)-h^{\rho \lambda}\left(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta}\right)\right) \\
 & -\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)}_{\mu}\left(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho}\right)\left(\dfrac{h}{2}g^{(0)\alpha \nu}-h^{\alpha \nu}\right)g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta}) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)}_{\mu}\nabla ^{(0)\mu}\phi ^{(0)}\delta \phi ^{(0)} \\
\theta ^{(1)} & =-\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau ^{(0)}_{\mu}\left(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho}\right)g^{(0)\alpha \nu}\left(g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta \ell _{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta \ell _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta \ell _{\alpha \beta})\right. \\
 & -\delta h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}k _{\beta \lambda}+\nabla ^{(0)}_{\beta}k _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}k _{\alpha \beta})-h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta k _{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta k _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta k _{\alpha \beta}) \\
 & \left.+\left(\delta h^{\rho}_{\eta}h^{\eta \lambda}+h^{\rho}_{\eta}\delta h^{\eta \lambda}-\delta k ^{\rho \lambda}\right)(\nabla ^{(0)}_{\alpha}h_{\beta \lambda}+\nabla ^{(0)}_{\beta}h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}h_{\alpha \beta})+(h^{\rho}_{\eta}h^{\eta \lambda}-k^{\rho \lambda})\left(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta}\right)\right) \\
 & -\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho})\left(\left( \dfrac{h}{2}g^{(0)\alpha \nu}-h^{\alpha \nu} \right)\left(g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta k _{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta k _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta k _{\alpha \beta})\right.\right. \\
 & \left.-\delta h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}h_{\beta \lambda}+\nabla ^{(0)}_{\beta}h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}h_{\alpha \beta})-h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta})\right) \\
 & \left.+\left( \left( \dfrac{k}{2}+\dfrac{h^{2}}{8}-\dfrac{h_{\eta \xi}h^{\eta \xi}}{4} \right)g^{(0)\alpha \nu}-k^{\alpha \nu}-\dfrac{h}{2}h^{\alpha \nu}+h^{\alpha}_{\eta}h^{\eta \nu} \right)g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta})\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(\nabla ^{(0)\mu}\phi ^{(0)}\delta \phi ^{(1)}+\left( \nabla ^{(0)\mu}\phi ^{(1)}+\left( \dfrac{h}{2}g^{(0)\mu \nu}-h^{\mu \nu} \right)\nabla ^{(0)}_{\nu}\phi ^{(0)} \right)\delta \phi ^{(0)}\right)
\end{align}$$

and

$$\begin{align}
\omega ^{(0)} & =-\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho})\left(\dfrac{\delta h}{2}g^{(0)\alpha \nu}-\delta h^{\alpha \nu}\right)g^{(0)\rho \lambda} \\
 & \wedge(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta})+\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\nabla ^{(0)\mu}\delta \phi ^{(0)}\wedge \delta \phi ^{(0)} \\
\omega ^{(1)} & =-\dfrac{1}{2}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}(\delta ^{\mu}_{\rho}\delta ^{\beta}_{\nu}-\delta ^{\mu}_{\nu}\delta ^{\beta}_{\rho})\left(\left( \dfrac{\delta h}{2}g^{(0)\alpha \nu}-\delta h^{\alpha \nu} \right)\wedge\left(g^{(0)\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta k _{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta k _{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta k _{\alpha \beta})\right.\right. \\
 & \left.-\delta h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}h_{\beta \lambda}+\nabla ^{(0)}_{\beta}h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}h_{\alpha \beta})-h^{\rho \lambda}(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta})\right) \\
 & \left.+\left( \left( \dfrac{\delta k}{2}+\dfrac{h\delta h}{4}-\dfrac{h_{\eta \xi}\delta h^{\eta \xi}}{2} \right)g^{(0)\alpha \nu}-\delta k^{\alpha \nu}-\dfrac{\delta h}{2}h^{\alpha \nu}-\dfrac{h}{2}\delta h^{\alpha \nu}+\delta h^{\alpha}_{\eta}h^{\eta \nu}+h^{\alpha}_{\eta}\delta h^{\eta \nu} \right)g^{(0)\rho \lambda}\wedge(\nabla ^{(0)}_{\alpha}\delta h_{\beta \lambda}+\nabla ^{(0)}_{\beta}\delta h_{\alpha \lambda}-\nabla ^{(0)}_{\lambda}\delta h_{\alpha \beta})\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\left(\nabla ^{(0)\mu}\delta \phi ^{(0)}\wedge \delta \phi ^{(1)}+\left( \nabla ^{(0)\mu}\delta \phi ^{(1)}+\left( \dfrac{\delta h}{2}g^{(0)\mu \nu}-\delta h^{\mu \nu} \right)\nabla ^{(0)}_{\nu}\phi ^{(0)} +\left( \dfrac{h}{2}g^{(0)\mu \nu}-h^{\mu \nu} \right)\nabla ^{(0)}_{\nu}\delta \phi ^{(0)}\right)\wedge \delta \phi ^{(0)}\right)
\end{align}$$

## Perturbation Theory on the Solution Space

### Free Modes

We first choose the free solution coefficients as coordinates, then solve the sourced equation for $\displaystyle{k}$ and $\displaystyle{\phi ^{(1)}}$ as functions of those coefficients. Put $\displaystyle{f(r)=1+r^{2}}$, the regular, normalizable scalar modes are

$$\begin{align}
\phi _{nm}(t,r,\varphi) & =\sqrt{ \dfrac{n!\Gamma(n+\Delta+|m|)}{2\pi \Gamma(n+\Delta)\Gamma(n+1+|m|)} }e^{-i\omega _{nm}t+im\varphi}r^{|m|}f^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\dfrac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{nm} & =\Delta+2n+|m| \\
\phi ^{(0)} & =\sum _{n\geqslant 0, m\in \mathbb{Z}}(b_{nm}\phi_{nm}+b^{\dagger}_{nm}\phi _{nm}^{*})
\end{align}$$

here $\displaystyle{P_{n}^{(\alpha,\beta)}}$ is the Jacobi polynomial. The normlization constant is determined by the symplectic form as

$$\begin{align}
\omega ^{(0)}[\phi _{nm},\phi ^{*}_{n'm'}] & =i\delta _{nn'}\delta _{mm'}
\end{align}$$

for the gravitational modes, use the representatives $\displaystyle{\zeta _{A,n}}$ in [[Articles/Quantization in AdS/linearized gravity/all order perturbation result|all order perturbation result]]

$$\begin{align}
\zeta & =\sum _{A=L,R}\sum _{n\geqslant 0}(a_{A,n}\zeta _{A,n}+a^{\dagger}_{A,n}\zeta ^{*}_{A,n}), & h=\mathcal{L}_{\zeta}g^{(0)}
\end{align}$$

the frequency of $\displaystyle{\zeta _{A,n}}$ is $\displaystyle{n+2}$.

### Next-Order Solutions from Covariance

In this sector, covariance solves the vacuum-driven terms directly:

$$\begin{align}
(\nabla ^{(0)2}-m^{2})\mathcal{L}_{\zeta}\phi ^{(0)} & =h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\phi ^{(0)}+\left( \nabla ^{(0)}_{\mu}h^{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)\nu}h \right)\nabla ^{(0)}_{\nu}\phi ^{(0)} \\
\mathcal{E}\left[\dfrac{1}{2}\mathcal{L}^{2}_{\zeta}g^{(0)}\right]+\mathcal{E}^{(2)}[h,h] & =0
\end{align}$$

consequently, a solution of the retained equation is

$$\begin{align}
\phi ^{(1)} & =\mathcal{L}_{\zeta}\phi ^{(0)} \\
k & =\dfrac{1}{2}\mathcal{L}^{2}_{\zeta}g^{(0)}+k _{\phi}, & \mathcal{E}^{(1)}[k _{\phi}] & =\dfrac{1}{2}T_{(0)}
\end{align}$$

$$\begin{align}
k & =\mathcal{L}_{\zeta'}g^{(0)}+k _{\phi} \\
h & =\mathcal{L}_{\zeta}g^{(0)} \\
\zeta & =
\end{align}$$

$$\begin{align}
(k _{\phi})_{\mu \nu}(x) & =\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x'\sqrt{ -g^{(0)}(x') }G_{\mu \nu,\mu'\nu'}(x,x')T^{\mu'\nu'}_{(0)}(x') \\
 & \sim (\phi ^{(0)})^{2}
\end{align}$$

the remaining calculation is $\displaystyle{k _{\phi}}$. For circular free scalar $\displaystyle{\phi ^{(0)}(t,r)}$, use polar areal gauge for $\displaystyle{k _{\phi}}$:

$$\begin{align}
(k _{\phi})_{tt} & =M+2fD, & (k _{\phi})_{rr} & =\dfrac{M}{f^{2}}, & (k _{\phi})_{tr}=(k _{\phi})_{\mu \varphi}=0
\end{align}$$

The independent Einstein constraints() become

$$\begin{align}
\partial_r M&=\frac r2\left[ \frac{(\partial_t\phi^{(0)})^2}{f} +f(\partial_r\phi^{(0)})^2+m^2(\phi^{(0)})^2\right],\\
\partial_r D&=-\frac r2\left[ (\partial_r\phi^{(0)})^2+\frac{(\partial_t\phi^{(0)})^2}{f^2}\right],\\
\partial_t M&=rf\,\partial_t\phi^{(0)}\partial_r\phi^{(0)}. \\
\implies M(t,r) & =\dfrac{1}{2}\int _{0}^{r}\mathrm{d}ss\left(\dfrac{(\partial _{t}\phi ^{(0)}(t,s))^{2}}{1+s^{2}}+(1+s^{2})(\partial _{s}\phi ^{(0)}(t,s))^{2}+m^{2}(\phi ^{(0)}(t,s))^{2}\right) \\
D(t,r) & =\dfrac{1}{2}\int _{r}^{\infty}\mathrm{d}ss\left((\partial _{s}\phi ^{(0)}(t,s))^{2}+\dfrac{(\partial _{t}\phi ^{(0)}(t,s))^{2}}{(1+s^{2})^{2}}\right)
\end{align}$$

For the real lowest scalar mode, take

$$\begin{align}
\phi^{(0)}&=\dfrac{1}{\sqrt{ 2\pi }} f^{-\Delta/2}\cos(\Delta t),& m^2&=\Delta(\Delta-2),\qquad \Delta>1.
\end{align}$$

The radial integrals give

$$\begin{align}
M & =\dfrac{\Delta}{8\pi}(1-f^{1-\Delta}-r^{2}f^{-\Delta}\cos(2\Delta t)) \\
D & =\dfrac{\Delta}{8\pi}f^{-\Delta}\cos ^{2}(\Delta t)-\dfrac{\Delta ^{2}}{8\pi(\Delta+1)}f^{-\Delta-1}\cos(2\Delta t) \\
(k _{\phi})_{tt} & =\dfrac{\Delta}{8\pi}\left( 1-\dfrac{\Delta-1}{\Delta+1}f^{-\Delta}\cos(2\Delta t) \right) \\
(k _{\phi})_{rr} & =\dfrac{\Delta}{8\pi f^{2}}(1-f^{1-\Delta}-r^{2}f^{-\Delta}\cos(2\Delta t))
\end{align}$$

With $h=0$, our homogeneous-data convention gives $\phi^{(1)}=0$ while $k=k_\phi\neq0$. Arbitrary vacuum-graviton mode data can be added through the covariance formulas above, at the same retained orders.

Our goal is to calculate the two particle energy correction under $\displaystyle{h=0}$, which implies $\displaystyle{\phi ^{(1)}=0}$, and then the effective coupling action is

$$\begin{align}
S_{\mathrm{\text{eff}}} & \simeq S_{\text{eff}}^{(0)}+\kappa S_{\text{eff}}^{(1)}+\kappa ^{2}S_{\text{eff}}^{(2)}+\mathcal{O}(\kappa ^{3}) \\
S^{(0)}_{\text{eff}} & =-\dfrac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\mu}\phi ^{(0)}\nabla ^{(0)\mu}\phi ^{(0)}+m^{2}(\phi ^{(0)})^{2}\right) \\
S^{(1)}_{\text{eff}} & =0 \\
S^{(2)}_{\text{eff}} & =\dfrac{1}{4}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }k _{\phi,\mu \nu}[\phi]T_{(0)}^{\mu \nu}
\end{align}$$

---

## General Response in De Donder Gauge

For generic $\Delta>1$, with $\Delta\ne(1+\sqrt5)/2$, the [independent accessibility proof](de%20Donder%20gauge%20accessibility.md) gives the stated finite-time on-shell construction within the differentiable no-log expansion class. The exceptional-$\Delta$ limit remains deferred.

Use the [Einstein response kernel](Einstein%20response%20in%20de%20Donder%20gauge.md) to write the matter correction as

$$\begin{align}
q_{\mu\nu}&=(k_\phi)_{\mu\nu} =\mathcal B_{\mu\nu}[\phi^{(0)},\phi^{(0)}],\\
\mathcal B_{\mu\nu}[u,v](x) &=\frac12\int dV_{x'}\, G_{\mu\nu}{}^{\rho\sigma}(x,x')T_{\rho\sigma}[u,v](x'),\\
T_{\rho\sigma}[u,v] &=\nabla^{(0)}_{(\rho}u\,\nabla^{(0)}_{\sigma)}v -\frac12g^{(0)}_{\rho\sigma} \left(\nabla^{(0)}u\cdot\nabla^{(0)}v+m^2uv\right).
\end{align}$$

For an admissible conserved source $S$, the kernel is normalized by $\mathcal E^{(1)}[GS]=S$ and $C[GS]=0$. The [explicit kernel calculation](Einstein%20response%20kernel%20construction.md) supplies the auxiliary Euclidean coefficients. For a finite scalar-mode set, take $G=G_{\mathcal V}$ from the [scalar-source prescription](Einstein%20scalar%20response%20prescription.md): an explicit static seed and isometry recursion treat opposite-frequency pairs, a conserved Abel prescription treats same-sign pairs, and a finite source Gram matrix fixes the kernel's action on their real span $\mathcal V$. Its solutions obey the stated no-log boundary conditions and all Einstein constraints in the analytic domain specified there. Initial metric data are obtained by restricting these solutions, rather than set to zero. This does not assert a universal retarded convolution on arbitrary eternal histories.

The expression above uses our existing convention of assigning independent free data to $a,b$ and adding no independent higher-order homogeneous amplitudes. Pure-gauge homogeneous terms can be removed by proper residual transformations; physical boundary gravitons cannot. Hence writing $q^{\mathrm h}=0$ is a homogeneous-data convention together with a gauge choice, not a consequence of de Donder gauge alone. The leading physical gravitational modes remain in $h=\mathcal L_\zeta g^{(0)}$, and the complete retained response is $k=\tfrac12\mathcal L_\zeta^2g^{(0)}+q$.

## Verification Scope

- **Verified:** the retained 8 xAct checks pass, including the first/second Ricci coefficients, scalar wave-operator variation, stress conservation, minimal-coupling sign, quadratic/cubic Einstein densities with total derivatives, and Einstein potential. See [the check script](scripts/gravitation_scalar_interaction_checks.wl).
- **Assumptions:** unit AdS radius, positive Einstein coefficient, $m^2>-1$, source-free standard scalar condition and Brown–Henneaux falloffs. The explicit symplectic expansion uses the stated boundary gauge and the original potential without endpoint subtraction.
- **Verified:** 15 additional residual groups pass in [the solution check script](scripts/gravitation_scalar_solution_checks.wl): scalar/vacuum covariance identities, the circular Einstein constraints and their propagation, every Einstein component of the explicit lowest-mode response, the general Jacobi radial equation, lowest-mode KG normalization, and the displayed center/boundary limits. Tensor calculations use xAct/xTras and xCoba; scalar checks use Mathematica.
- **Assumptions:** the solution construction uses smooth vacuum-orbit gravitational data and the stated homogeneous-data convention. The radial matter solution is circularly symmetric, regular at the center, and uses fixed boundary time. The metric expansion applies where its corrections remain perturbatively small.
- **Verified:** the de Donder operator, on-shell boundary constraints, radial response matrices, and the closed non-circular pair are checked in [the on-shell response script](scripts/de_donder_onshell_response_checks.wl). The finite-time accessibility proof also uses the explicitly stated analytic energy-domain and asymptotic arguments.
- **Not computed:** a table of evaluated responses for all mode pairs or the full interacting Hamiltonian matrix. The subsequent leading scalar-primary spectral calculation is in [the spectrum note](Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/two%20particle%20spectrum.md), with its updated verification and scope in [the audit](closed%20form%20spectrum%20audit.md). The boundary/corner identity remains source-derived. The finite-order solutions do not establish long-time validity of the nonlinear evolution.
