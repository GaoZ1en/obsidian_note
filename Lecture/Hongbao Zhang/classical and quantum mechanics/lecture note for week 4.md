## conformally coupled scalar

the action is

$$\tag{1.1}
\begin{align}
S=-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\left( \nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-3}{4(d-2)}R\phi ^{2} \right)
\end{align}
$$

the variation of the action is

$$\tag{1.2}
\begin{align}
\delta S & =-\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \nabla _{\mu}\phi \nabla ^{\mu}\delta \phi+\frac{d-3}{4(d-2)}R\phi \delta \phi \right) \\
 & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \nabla ^{2}\phi-\frac{d-3}{4(d-2)}R\phi \right)\delta \phi \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

act the conformal transformation

$$\tag{1.3}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\left(\xi ^{\nu}\nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi}
\end{align}
$$

on the action, we have

$$\tag{1.4}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{1}{2}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8d}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})\phi ^{2} \right)
\end{align}
$$

noted that we have

$$\tag{1.5}
\begin{align}
\frac{d-2}{d}\nabla _{\mu}(\nabla _{\nu}\xi ^{\nu})+\nabla ^{\nu}\nabla _{\nu}\xi _{\mu}+R_{\mu \nu}\xi ^{\nu}=0
\end{align}
$$

then

$$\tag{1.6}
\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{1}{2}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8d} \right)
\end{align}
$$

another consideration

## (conformal) Killing vector

consider a Killing vector $\displaystyle{\xi _{\mu}}$ which satisfies

$$\tag{2.1}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}
$$

then we have

$$\tag{2.2}
\begin{align}
\nabla _{\mu}\nabla _{\nu}\xi _{\rho}=R_{\mu \nu \rho \sigma}\xi ^{\sigma}
\end{align}
$$

and if $\displaystyle{\xi _{\mu}}$ is a conformal Killing vector, which satisfies the conformal Killing equation

$$\tag{2.3}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}=0
\end{align}
$$

then we have a similar equation

$$\tag{2.4}
\begin{align}
\nabla _{\mu}\nabla _{\nu}\xi _{\rho} & = R_{\mu \nu \rho \sigma}\xi ^{\sigma}+\frac{1}{d}[g_{\mu \rho}\nabla _{\nu}\nabla _{\sigma}\xi ^{\sigma}+g_{\nu \rho}\nabla _{\mu}\nabla _{\sigma}\xi ^{\sigma}-g_{\mu \nu}\nabla _{\rho}\nabla _{\sigma}\xi ^{\sigma}]
\end{align}
$$
