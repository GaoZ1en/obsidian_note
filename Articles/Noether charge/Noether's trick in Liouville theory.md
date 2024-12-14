in this file, we will apply the trick in deriving the Noether theorem to the Liouville theory,

## Liouville theory

$$\tag{1.1}
\begin{align}
S=\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)
\end{align}
$$

here we view $\displaystyle{\phi}$ as dynamical field, and $\displaystyle{g_{\mu \nu}}$ as background field. then take a variation of the action (1.1)

$$\tag{1.2}
\begin{align}
\delta S & =\int_{M}\mathrm{d}x^{2}\sqrt{ -g }\left(-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\delta \phi-\frac{1}{2\pi \gamma}R\delta \phi-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\delta \phi\right) \\
 & +\int_{M}\mathrm{d}x^{2}\sqrt{ -g }\left(\frac{1}{4\pi}\delta g_{\mu \nu}\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi\left(-R^{\mu \nu}\delta g_{\mu \nu}+\nabla^{\mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{2}\delta g_{\mu \nu}\right)\right) \\
 & +\int_{M}\mathrm{d}x^{2}\sqrt{ -g } \frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
 & =\int_{M}\mathrm{d}x^{2}\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}\delta \phi-\frac{1}{4\pi}T^{\alpha \beta}\delta g_{\alpha \beta}\right)+\theta|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

where

$$\tag{1.3}
\begin{align}
E_{\phi} & =\nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \\
T^{\alpha \beta} & =-\nabla^{\alpha}\phi \nabla^{\beta}\phi+\frac{1}{2}g^{\alpha \beta}\nabla^{\rho}\phi \nabla_{\rho}\phi+\frac{\mu}{2\gamma^{2}}g^{\alpha \beta}e^{\gamma \phi}+\frac{2}{\gamma}\nabla^{\alpha}\nabla^{\beta}\phi-\frac{2}{\gamma}g^{\alpha \beta}\nabla^{2}\phi \\
\theta|_{\Sigma} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\left(\frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla^{\nu}\delta g_{\mu \nu}\phi-\frac{1}{2\pi \gamma}\tau^{\gamma}\nabla_{\gamma}(g^{\alpha \beta}\delta g_{\alpha \beta})-\frac{1}{2\pi \gamma}\tau^{\alpha}\nabla^{\beta}\phi \delta g_{\alpha \beta}+\frac{1}{2\pi \gamma}\tau^{\alpha}\nabla_{\alpha}\phi g^{\alpha \beta}\delta \gamma_{\alpha \beta}\right)
\end{align}
$$

consider the following symmetry

$$\tag{1.4}
\begin{align}
X_{\tilde{\xi}} & =\int_{M}\mathrm{d}^{2}x\left(\left( \xi^{\mu}\nabla_{\mu}\phi+\frac{2}{\gamma}\xi^{(1)} \right) \frac{\delta}{\delta \phi}+(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}) \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

by acting the symmetry to the action, we have

$$\tag{1.5}
\begin{align}
X_{\tilde{\xi}}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)-\frac{1}{2\pi \gamma}R\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)\right) \\
 & +\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)}\right)\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)}\right)\right. \\
 & +\frac{1}{2\pi \gamma}\phi g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)}\right)+\frac{1}{2}g^{\mu \nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)}\right)\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
 & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M_{\varepsilon}}
\end{align}
$$

where

$$\tag{1.6}
\begin{align}
\alpha_{\xi}|_{\Sigma} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\left(\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi \tau_{\alpha}\xi^{\alpha}+\frac{1}{2\pi}R\phi \tau_{\alpha}\xi^{\alpha}+\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\tau_{\alpha}\xi^{\alpha}+\frac{1}{\pi \gamma}\tau^{\mu}\nabla_{\mu}\xi^{(1)}\phi\right) \\
\beta_{\xi}|_{M} & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g } \frac{-1}{\pi \gamma^{2}}R\xi^{(1)}
\end{align}
$$

## $\displaystyle{X_{\xi}\cdot \delta S}$

