consider the action

$$\begin{align}
S[g,\phi] & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2)-\frac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}$$

Use the normalization $\kappa ^{2}=8\pi G$, so the gravitational part is

$$\begin{align}
S_{\mathrm{grav}}[g] & =\frac{1}{2\kappa ^{2}}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2).
\end{align}$$

expand around a unit AdS$_3$ background $g^{(0)}_{\mu\nu}$,

$$\begin{align}
R^{(0)}_{\mu\nu} & =-2g^{(0)}_{\mu\nu},& R^{(0)} & =-6,
\end{align}$$

as

$$\begin{align}
g_{\mu\nu} & =g^{(0)}_{\mu\nu}+\kappa h_{\mu\nu}+\kappa ^{2}k_{\mu\nu}+\mathcal{O}(\kappa ^{3}), \\
\phi & =\varphi+\mathcal{O}(\kappa).
\end{align}$$

All indices are raised and lowered with $g^{(0)}_{\mu\nu}$, and $\nabla _{\mu}$ denotes the background covariant derivative. Define

$$\begin{align}
h & =g^{(0)\mu\nu}h_{\mu\nu},& k & =g^{(0)\mu\nu}k_{\mu\nu}.
\end{align}$$

For any symmetric tensor $X_{\mu\nu}$, write $X=g^{(0)\mu\nu}X_{\mu\nu}$. The metric expansion gives

$$\begin{align}
g^{\mu\nu} & =g^{(0)\mu\nu}-\kappa h^{\mu\nu}+\kappa ^{2}\left(h^{\mu}{}_{\rho}h^{\rho\nu}-k^{\mu\nu}\right)+\mathcal{O}(\kappa ^{3}), \\
\sqrt{ -g } & =\sqrt{ -g^{(0)} }\left[1+\frac{\kappa}{2}h+\kappa ^{2}\left(\frac{1}{2}k-\frac{1}{4}h_{\mu\nu}h^{\mu\nu}+\frac{1}{8}h^{2}\right)\right]+\mathcal{O}(\kappa ^{3}).
\end{align}$$

For the bulk gravitational density write

$$\begin{align}
\sqrt{ -g }(R+2) & =\sqrt{ -g^{(0)} }\left[\mathcal{L}_{\mathrm{g}}^{(0)}+\kappa \mathcal{L}_{\mathrm{g}}^{(1)}[h]+\kappa ^{2}\left(\mathcal{L}_{\mathrm{g}}^{(1)}[k]+\mathcal{L}_{\mathrm{g}}^{(2)}[h]\right)\right]+\mathcal{O}(\kappa ^{3}), \\
\mathcal{L}^{(0)}_{g} & =-4 \\
\mathcal{L}^{(1)}_{g}[X] & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X^{\mu \nu}-\nabla ^{(0)2}X \\
\mathcal{L}^{(2)}_{g}[X] & =\dfrac{1}{2}X^{2}-X_{\mu \nu}X^{\mu \nu}+X^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X-\dfrac{1}{4}\nabla ^{(0)}_{\mu}X\nabla ^{(0)\mu}X \\
 & -\nabla ^{(0)}_{\mu}X^{\mu \nu}\nabla ^{(0)}_{\rho}X_{\nu}^{~\rho}+\nabla ^{(0)\mu}X\nabla ^{(0)}_{\nu}X_{\mu}^{~\nu}-X^{\mu \nu}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}X_{\mu}^{~\rho} \\
 & -X^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}X_{\mu}^{~\rho}+\dfrac{1}{2}X\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X^{\mu \nu}+X^{\mu \nu}\nabla ^{(0)2}X_{\mu \nu} \\
 & -\dfrac{1}{2}X\nabla ^{(0)2}X-\dfrac{1}{2}\nabla ^{(0)}_{\mu}X_{\nu \rho}\nabla ^{(0)\rho}X^{\mu \nu}+\dfrac{3}{4}\nabla ^{(0)}_{\rho}X_{\mu \nu}\nabla ^{(0)\rho}X^{\mu \nu}
\end{align}$$

Thus the action expands as

$$\begin{align}
S[g,\phi]&=\frac{1}{2\kappa ^{2}}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}_{\mathrm{g}}^{(0)}+\frac{1}{2\kappa}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\mathcal{L}_{\mathrm{g}}^{(1)}[h] \\
&\quad+S^{(0)}[h,k,\varphi]+\mathcal{O}(\kappa),
\end{align}$$

with finite part

$$\begin{align}
S^{(0)}[h,k,\varphi]&=\frac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\mathcal{L}_{\mathrm{g}}^{(1)}[k]+\mathcal{L}_{\mathrm{g}}^{(2)}[h]\right) \\
&\quad-\frac{1}{2}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(\nabla _{\mu}\varphi \nabla ^{\mu}\varphi+m^{2}\varphi ^{2}\right).
\end{align}$$

---

For this step analyze only the finite action $S^{(0)}[h,k,\varphi]$. Its CPS variation is

$$\begin{align}
\delta S^{(0)}&=\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left(E^{(h)}_{\mu\nu}\delta h^{\mu\nu}+E^{(k)}_{\mu\nu}\delta k^{\mu\nu}+E^{(\varphi)}\delta \varphi\right) \\
&\quad+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\Theta ^{\mu}, \\
E^{(h)}_{\mu\nu} &=-\frac{1}{2}\left(-h_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}\right. \\
 & \qquad\left.-\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h+\dfrac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h-\dfrac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\right), \\
E^{(k)}_{\mu\nu} &=0, \\
E^{(\varphi)} &=\nabla ^{2}\varphi-m^{2}\varphi. \\
\Theta ^{\mu} & =-\dfrac{1}{2}(\nabla ^{(0)}_{\nu}\delta k^{\mu \nu}-\nabla ^{(0)\mu}\delta k)+\nabla ^{\mu}\varphi \delta \varphi \\
 & -\dfrac{1}{2}\left(h^{\mu \nu}\nabla ^{(0)}_{\nu}\delta h-\dfrac{1}{2}h\nabla ^{(0)\mu}\delta h+h^{\nu \rho}\nabla ^{(0)\mu}\delta h_{\nu \rho}-h^{\nu \rho}\nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}\right. \\
 & \left.-h^{\mu \nu}\nabla ^{(0)}_{\rho}\delta h_{\nu}^{~\rho}+\dfrac{1}{2}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)\mu}h_{\nu \rho}\delta h^{\nu \rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}-\nabla ^{(0)}_{\rho}h^{\nu \rho}\delta h^{\mu}_{~\nu}\right)
\end{align}$$

thus the symplectic form is given by

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\delta \Theta ^{\mu} \\
 & =\nabla ^{\mu}\delta \varphi \wedge \delta \varphi-\dfrac{1}{2}\left(\delta h^{\mu \nu}\wedge\nabla ^{(0)}_{\nu}\delta h-\dfrac{1}{2}\delta h\wedge\nabla ^{(0)\mu}\delta h+\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}-\delta h^{\nu \rho}\wedge \nabla ^{(0)}_{\rho}\delta h^{\mu}_{~\nu}\right. \\
 & \left.-\delta h^{\mu \nu}\wedge \nabla ^{(0)}_{\rho}\delta h_{\nu}^{~\rho}+\dfrac{1}{2}\delta h\wedge \nabla ^{(0)}_{\nu}\delta h^{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)\mu}\delta h_{\nu \rho}\wedge \delta h^{\nu \rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}\delta h\wedge \delta h^{\mu \nu}-\nabla ^{(0)}_{\rho}\delta h^{\nu \rho}\wedge \delta h^{\mu}_{~\nu}\right)
\end{align}$$

consider a diffeomorphism generated by a Killing vector $\displaystyle{\xi ^{\mu}}$, we write

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\left(\mathcal{L}_{\xi}h_{\mu \nu} \dfrac{\delta}{\delta h_{\mu \nu}}+\mathcal{L}_{\xi}k _{\mu \nu} \dfrac{\delta}{\delta k_{\mu \nu}}+\mathcal{L}_{\xi}\varphi \dfrac{\delta}{\delta \varphi}\right)
\end{align}$$

and act this vector on the action $\displaystyle{S^{(0)}}$, we have

$$\begin{align}
X_{\xi}\cdot \delta S^{(0)} & =-\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\xi ^{\mu}\mathcal{L}[h,k,\varphi]
\end{align}$$

then the corresponding Noether charge is given by

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}(X_{\xi}\cdot \Theta ^{\mu}+\xi ^{\mu}\mathcal{L}[h,k,\varphi] ) \\
&=H_{\xi,h}+H_{\xi,k}+H_{\xi,\varphi}.
\end{align}$$

where

$$\begin{align}
H_{\xi,h} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\mathcal{H}_{\xi,h}^{\mu} \\
\mathcal{H}_{\xi,h}^{\mu} & =-\dfrac{1}{2}\left(h^{\mu \nu}\nabla ^{(0)}_{\nu}\mathcal{L}_{\xi}h-\dfrac{1}{2}h\nabla ^{(0)\mu}\mathcal{L}_{\xi}h+h^{\nu \rho}\nabla ^{(0)\mu}\mathcal{L}_{\xi}h_{\nu \rho}-h^{\nu \rho}\nabla ^{(0)}_{\rho}\mathcal{L}_{\xi}h^{\mu}_{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\rho}\mathcal{L}_{\xi}h_{\nu}^{~\rho}\right. \\
 & \left.+\dfrac{1}{2}h\nabla ^{(0)}_{\nu}\mathcal{L}_{\xi}h^{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)\mu}h_{\nu \rho}\mathcal{L}_{\xi}h^{\nu \rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}h\mathcal{L}_{\xi}h^{\mu \nu}-\nabla ^{(0)}_{\rho}h^{\nu \rho}\mathcal{L}_{\xi}h^{\mu}_{~\nu}+\dfrac{1}{2}\xi ^{\mu}\mathcal{L}^{(2)}_{g}[h]\right) \\
 &=\xi_{\nu}T_{(h)}^{\mu\nu}+\nabla^{(0)}_{\nu}S_{\xi}^{\mu\nu}+\mathcal{R}_{\xi,h}^{\mu}
\end{align}$$

here

$$\begin{align}
T_{(h)}^{\mu \nu} & =-\mathcal{E}^{(2)\mu \nu}[h,h] \\
\mathcal{E}_{\mu \nu}^{(2)}[h,h] & =R^{(2)}_{\mu \nu}[h,h]-\dfrac{1}{2}g^{(0)}_{\mu \nu}R^{(2)}[h,h]-\dfrac{1}{2}h_{\mu \nu}R^{(1)}[h] \\
R^{(2)}_{\mu \nu}[X,X] & =\nabla ^{(0)}_{\rho}\Gamma ^{(2)}[X,X]^{\rho}_{~\nu \mu}-\nabla ^{(0)}_{\nu}\Gamma ^{(2)}[X,X]^{\rho}_{~\rho \mu} \\
 & +\Gamma ^{(1)}[X]^{\rho}_{~\rho \lambda}\Gamma ^{(1)}[X]^{\lambda}_{~\nu \mu}-\Gamma ^{(1)}[X]^{\rho}_{~\nu \lambda}\Gamma ^{(1)}[X]^{\lambda}_{~\rho \mu} \\
R^{(2)}[X,X] & =g^{(0)\mu \nu}R^{(2)}_{\mu \nu}[X,X]-X^{\mu \nu}R^{(1)}_{\mu \nu}[X]-2X_{\mu \nu}X^{\mu \nu} \\
R^{(1)}_{\mu \nu}[X] & =\dfrac{1}{2}(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\mu}X^{\rho}_{~\nu}+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}X^{\rho}_{~\mu}-\nabla ^{(0)2}X_{\mu \nu}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X) \\
R^{(1)}[X] & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X^{\mu \nu}-\nabla ^{(0)2}X+2X \\
\Gamma ^{(2)}[X,X]^{\rho}_{~\mu \nu} & =-\dfrac{1}{2}X^{\rho \sigma}(\nabla ^{(0)}_{\mu}X_{\sigma \nu}+\nabla ^{(0)}_{\nu}X_{\mu \sigma}-\nabla ^{(0)}_{\sigma}X_{\mu \nu}) \\
\Gamma ^{(1)}[X]^{\rho}_{~\mu \nu} & =\dfrac{1}{2}(\nabla ^{(0)}_{\mu}X^{\rho}_{~\nu}+\nabla ^{(0)}_{\nu}X^{\rho}_{~\mu}-\nabla ^{(0)\rho}X_{\mu \nu})
\end{align}$$

and

$$\begin{align}
S_{\xi}^{\mu \nu} & =s_{2}\nabla ^{(0)[\mu}\xi ^{\nu]}+\dfrac{1}{2}hD_{1,\xi}^{[\mu \nu]}+D_{2,\xi}^{\mu \nu} \\
s_{2} & =-\dfrac{1}{4}h_{\rho \sigma}h^{\rho \sigma}+\dfrac{1}{8}h^{2} \\
D_{1,\xi}^{\mu \nu} & =-h^{\mu \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}+\Gamma ^{(1)}[h]^{\nu \mu}_{~~~\rho}\xi ^{\rho} \\
D_{2,\xi}^{\mu \nu} & =h^{\mu}_{~\lambda}h^{\lambda \rho}\nabla ^{(0)}_{\rho}\xi ^{\nu}-h^{\mu \rho}\Gamma ^{(1)}[h]^{\nu}_{~\rho \sigma}\xi ^{\sigma}+\Gamma ^{(2)}[h,h]^{\nu \mu}_{~~~\rho}\xi ^{\rho}
\end{align}$$

and

$$\begin{align}
\mathcal{R}^{\mu}_{\xi,h} & =-2\xi ^{\rho}h^{\mu \sigma}\mathcal{E}_{\rho \sigma}^{(1)}[h]-\dfrac{1}{2}h\xi _{\nu}\mathcal{E}^{(1)\mu \nu}[h] \\
\mathcal{E}^{(1)}_{\mu \nu}[X] & =-X_{\mu \nu}-\dfrac{1}{2}\nabla ^{(0)2}X_{\mu \nu}+\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}X_{\nu}^{~\rho}+\dfrac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}X_{\mu}^{~\rho} \\
 & -\dfrac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}X+\dfrac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}X-\dfrac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}X^{\rho \sigma}
\end{align}$$

The $k$ contribution is

$$\begin{align}
H_{\xi,k}&=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma^{(0)}}\tau_{\mu}\mathcal{H}^{\mu}_{\xi,k}, \\
\mathcal{H}^{\mu}_{\xi,k}&=-\frac{1}{2}\left(\nabla^{(0)}_{\nu}\Delta_{\xi}k^{\mu\nu}-\nabla^{(0)\mu}\Delta_{\xi}k\right)+\frac{1}{2}\xi^{\mu}\mathcal{L}_{\mathrm{g}}^{(1)}[k]. \\
 & =\nabla _{\nu}^{(0)}S_{\xi,k}^{\mu \nu} \\
S_{\xi,k}^{\mu \nu} & =\xi ^{[\mu}(\nabla ^{(0)}_{\rho}k^{\nu]\rho}-\nabla ^{(0)\nu]}k)
\end{align}$$


The scalar contribution is

$$\begin{align}
H_{\xi,\varphi}&=\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma^{(0)}}\tau_{\mu}\mathcal{H}^{\mu}_{\xi,\varphi}, \\
\mathcal{H}^{\mu}_{\xi,\varphi}&=\xi_{\nu}T^{\mu\nu}_{(\varphi)} \\
T^{\mu \nu}_{(\varphi)} & =\nabla ^{(0)\mu}\varphi \nabla ^{(0)\nu}\varphi-\dfrac{1}{2}g^{(0)\mu \nu}\left(\nabla ^{(0)}_{\rho}\varphi \nabla ^{(0)\rho}\varphi+m^{2}\varphi ^{2}\right)
\end{align}$$
