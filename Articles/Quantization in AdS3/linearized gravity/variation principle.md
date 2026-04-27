the full action is

$$\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\frac{1}{8\pi G}\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }(K-1)
\end{align}$$

where the linearized bulk action (after gauge fixing $\displaystyle{h=0,\nabla _{\mu}^{(0)}h^{\mu \nu}=0}$) is given by

$$\begin{align}
S_{\text{bulk}} & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left( -4+2h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}\right)
\end{align}$$

take a variation of the action with respect to $\displaystyle{h_{\mu \nu}}$

$$\begin{align}
\delta S_{\text{bulk}} & =\frac{1}{16\pi G}\left( \int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }E_{\mu \nu}\delta h^{\mu \nu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}^{(0)}\Theta ^{\mu}+\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma ^{(0)} }n_{\mu}^{(0)}\Theta ^{\mu}\right)\\
E_{\mu \nu} & =4h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)\rho}\nabla ^{(0)}_{\mu}h_{\nu \rho}+\frac{1}{2}\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho}\\
\Theta ^{\mu} & =h_{\nu \rho}\nabla ^{(0)\mu}\delta h^{\nu \rho}+\frac{1}{2}\delta h^{\nu \rho}\nabla ^{(0)\mu}h_{\nu \rho}-\delta h^{\nu \rho}\nabla ^{(0)}_{\rho}h^{\mu}{}_{\nu}
\end{align}$$

Here the background metric is fixed, so the variation is only with respect to $h_{\mu \nu}$. The result follows from the xCPS computation of `FirstVariation[{h}, CD][lag]`, whose boundary term is

$$\begin{align}
n_{\mu}\Theta ^{\mu} & =h_{\nu \rho}n^{\mu}\nabla ^{(0)}_{\mu}\delta h^{\nu \rho}+\frac{1}{2}\delta h^{\nu \rho}n^{\mu}\nabla ^{(0)}_{\mu}h_{\nu \rho}-\delta h^{\nu \rho}n^{\mu}\nabla ^{(0)}_{\rho}h_{\mu \nu}.
\end{align}$$

Using the TT conditions and $R_{\mu \nu \rho \sigma}^{(0)}=-(g_{\mu \rho}^{(0)}g_{\nu \sigma}^{(0)}-g_{\mu \sigma}^{(0)}g_{\nu \rho}^{(0)})$, the bulk equation reduces to

$$\begin{align}
E_{\mu \nu} & =\frac{1}{2}\left( \nabla ^{(0)2}+2 \right)h_{\mu \nu}.
\end{align}$$

Here $\displaystyle{\sigma ^{(0)}_{\mu \nu}}$ is the induced metric on the Cauchy surface $\displaystyle{\Sigma}$ and $\displaystyle{\tau _{\mu}^{(0)}}$ is the unit normal vector of $\displaystyle{\Sigma}$ with

$$\begin{align}
\mathrm{d}s^{2}_{\Sigma} & =\sigma ^{(0)}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}=\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2} \\
\tau _{\mu}^{(0)} & =(-\sqrt{ 1+r^{2} },0,0)
\end{align}$$

and $\displaystyle{\gamma ^{(0)}_{ab}}$ is the induced metric on the spatial boundary $\displaystyle{\Gamma}$ and $\displaystyle{n_{\mu}^{(0)}}$ is the unit normal vector of $\displaystyle{\Gamma}$ with

$$\begin{align}
\mathrm{d}s^{2}_{\Gamma} & =\gamma ^{(0)}_{ab}\mathrm{d}x^{a}\mathrm{d}x^{b}=-(1+r^{2})\mathrm{d}t^{2}+r^{2}\mathrm{d}\phi ^{2},\quad r\to \infty \\
n_{\mu}^{(0)} & =\left( 0, \frac{1}{\sqrt{ 1+r^{2} }}, 0 \right)
\end{align}$$

the linearized boundary action is given by

$$\begin{align}
S_{\text{bdy}} & =
\end{align}$$