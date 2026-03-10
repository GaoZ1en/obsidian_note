# problem 1

for $\displaystyle{f(R)}$ theory+SM, the action is given by

$$\begin{align}
S & =\int \mathrm{d}^{4}x\sqrt{ -g }\left(\frac{1}{16\pi G}f(R)+\mathcal{L}_{\text{SM}}\right)
\end{align}$$

derive the eom with respect to the metric $g_{\mu\nu}$.

## solution

take a variation of the action and ignore all the total derivative terms, we have

$$\begin{align}
\delta S & =\frac{1}{16\pi G} \int \mathrm{d}^{4}x\sqrt{ -g }f'(R)\left(-R^{\mu \nu}\delta g_{\mu \nu}+\nabla ^{\mu}\nabla ^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla ^{2}\delta g_{\mu \nu}\right) \\
 & +\frac{1}{32\pi G}\int \mathrm{d}^{4}x\sqrt{ -g }f(R)g^{\mu \nu}\delta g_{\mu \nu}-\frac{1}{2}\int \mathrm{d}^{4}x\sqrt{ -g }T^{\mu \nu}\delta g_{\mu \nu} \\
 & =\frac{1}{16\pi G}\int \mathrm{d}^{4}x\sqrt{ -g }\left(-f'(R)R^{\mu \nu}+\frac{1}{2}f(R)g^{\mu \nu}+(\nabla ^{\mu}\nabla ^{\nu}-g^{\mu \nu}\nabla ^{2})f'(R)-8\pi GT^{\mu \nu}\right)\delta g_{\mu \nu} \\
\implies & f'(R)R^{\mu \nu}-\frac{1}{2}f(R)g^{\mu \nu}-(\nabla ^{\mu}\nabla ^{\nu}-g^{\mu \nu}\nabla ^{2})f'(R)=8\pi GT^{\mu \nu}
\end{align}$$

# problem 2

consider the Weyl transformation of the metric

$$\begin{align}
\hat{g}^{\mu \nu} & =e^{2\sigma}g^{\mu \nu}
\end{align}$$

derive the transformation of the Ricci scalar $\hat{R}$ under this Weyl transformation.

## solution

the Christoffel symbol transforms as

$$\begin{align}
\hat{\Gamma}^{\rho}_{~\mu \nu} & =\frac{1}{2}\hat{g}^{\rho \sigma}\left(\partial _{\mu}\hat{g}_{\sigma \nu}+\partial _{\nu}\hat{g}_{\sigma \mu}-\partial _{\sigma}\hat{g}_{\mu \nu}\right) \\
 & =\Gamma ^{\rho}_{~\mu \nu}+(\partial _{\mu}\sigma \delta ^{\rho}_{~\nu}+\partial _{\nu}\sigma \delta ^{\rho}_{~\mu}-\partial ^{\rho}\sigma g_{\mu \nu})
\end{align}$$

and the Riemann tensor transforms as

$$\begin{align}
\hat{R}^{\rho}_{~\sigma \mu \nu} & =\partial _{\mu}\hat{\Gamma}^{\rho}_{~\nu \sigma}-\partial _{\nu}\hat{\Gamma} ^{\rho}_{~\mu \sigma}+\hat{\Gamma} ^{\rho}_{~\mu \lambda}\hat{\Gamma} ^{\lambda}_{~\nu \sigma}-\hat{\Gamma}^{\rho}_{~\nu \lambda}\hat{\Gamma}^{\lambda}_{~\mu \sigma} \\
 & =R^{\rho}_{~\sigma \mu \nu}+\partial _{\mu}\partial _{\nu}\sigma \delta ^{\rho}_{\sigma}+\partial _{\mu}\partial _{\sigma}\sigma \delta ^{\rho}_{\nu}-\partial _{\mu}\partial ^{\rho}\sigma g_{\nu \sigma}-\partial ^{\rho}\sigma \partial _{\mu}g_{\nu \sigma} \\
 & +\Gamma ^{\rho}_{~\mu \lambda}(\partial _{\nu}\sigma \delta ^{\lambda}_{\sigma}+\partial _{\sigma}\sigma \delta ^{\lambda}_{\nu}-\partial ^{\lambda}\sigma g_{\nu \sigma})+(\partial _{\mu}\sigma \delta ^{\rho}_{\lambda}+\partial _{\lambda}\sigma \delta ^{\rho}_{\mu}-\partial ^{\rho}\sigma g_{\mu \lambda})\Gamma ^{\lambda}_{~\nu \sigma} \\
 & +(\partial _{\mu}\sigma \delta ^{\rho}_{\lambda}+\partial _{\lambda}\sigma \delta ^{\rho}_{\mu}-\partial ^{\rho}\sigma g_{\mu \lambda})(\partial _{\nu}\sigma \delta ^{\lambda}_{\sigma}+\partial _{\sigma}\sigma \delta ^{\lambda}_{\nu}-\partial ^{\lambda}\sigma g_{\nu \sigma})-(\mu \leftrightarrow \nu) \\
 & =
\end{align}$$

# problem 3

the metric of the LTB model is given by

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+X^{2}(t,r)\mathrm{d}r^{2}+Y^{2}(t,r)\left(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}\right)
\end{align}$$

derive the Einstein tensor for this metric.

## solution

the non-zero Christoffel symbols are given by

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =\frac{1}{2}g^{\rho \sigma}\left(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu}\right)\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =g^{\rho \sigma}\mathrm{d}g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}$$

$$\begin{align}
\Gamma ^{t}_{~rr} & =\dot{X}X, \Gamma ^{t}_{~\theta \theta}=\dot{Y}Y, \Gamma ^{t}_{~\phi \phi}=\dot{Y}Y\sin ^{2}\theta
\end{align}$$

$$\begin{align}

\end{align}$$