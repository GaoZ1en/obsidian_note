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
\theta|_{\Sigma} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\left(\frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla^{\nu}\delta g_{\mu \nu}\phi-\frac{1}{2\pi \gamma}\tau^{\gamma}\nabla_{\gamma}(g^{\alpha \beta}\delta g_{\alpha \beta})\phi-\frac{1}{2\pi \gamma}\tau^{\alpha}\nabla^{\beta}\phi \delta g_{\alpha \beta}+\frac{1}{2\pi \gamma}\tau^{\alpha}\nabla_{\alpha}\phi g^{\alpha \beta}\delta g_{\alpha \beta}\right)
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
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)-\frac{1}{2\pi \gamma}R\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)\right) \\
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

on the other hand, we have

$$\tag{2.1}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}X_{\xi}\cdot \delta \phi-\frac{1}{4\pi}T^{\alpha \beta}X_{\xi}\cdot \delta g_{\alpha \beta}\right)+X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

$$\tag{2.2}
\begin{align}
\int_{M}\mathrm{d}^{2}x\sqrt{ -g } \frac{1}{2\pi}E_{\phi}X_{\xi}\cdot \delta \phi & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla^{2}\phi-\frac{1}{2\pi\gamma}R-\frac{\mu}{4\pi\gamma}e^{\gamma \phi}\right)\left(\xi^{\mu}\nabla_{\mu}\phi+\frac{2}{\gamma}\xi^{(1)}\right) \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla^{2}\phi \xi^{\mu}\nabla_{\mu}\phi+\frac{1}{\pi \gamma}\nabla^{2}\phi \xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\mu}\nabla_{\mu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma}\xi^{\mu}\nabla_{\mu}\phi e^{\gamma \phi}-\frac{\mu}{2\pi \gamma^{2}}e^{\gamma \phi}\xi^{(1)}\right)
\end{align}
$$

$$\tag{2.3}
\begin{align}
\int_{M}\mathrm{d}^{2}x\sqrt{ -g } -\frac{1}{4\pi}T^{\alpha \beta}X_{\xi}\cdot \delta g_{\alpha \beta} & =\int \mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\nabla^{\alpha}\phi \nabla^{\beta}\phi-\frac{1}{8\pi}g^{\alpha \beta}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{8\pi \gamma^{2}}g^{\alpha \beta}e^{\gamma \phi}-\frac{1}{2\pi\gamma}\nabla^{\alpha}\nabla^{\beta}\phi+\frac{1}{2\pi\gamma}g^{\alpha \beta}\nabla^{2}\phi\right)\left(\nabla_{\alpha}\xi_{\beta}+\nabla_{\beta}\xi_{\alpha}-g_{\alpha \beta}\xi^{(1)}\right) \\
 & =\int \mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\nabla^{\alpha}\phi \nabla^{\beta}\phi(\nabla_{\alpha}\xi_{\beta}+\nabla_{\beta}\xi_{\alpha}-g_{\alpha \beta}\xi^{(1)})-\frac{1}{4\pi}(\nabla^{\alpha}\xi_{\alpha}-\xi^{(1)})\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}(\nabla^{\alpha}\xi_{\alpha}-\xi^{(1)})\right. \\
 & \left. -\frac{1}{2\pi \gamma}\nabla^{\alpha}\nabla^{\beta}\phi(\nabla_{\alpha}\xi_{\beta}+\nabla_{\beta}\xi_{\alpha}-g_{\alpha \beta}\xi^{(1)})+\frac{1}{2\pi \gamma}\nabla^{\phi}\left(\nabla_{\alpha}\xi_{\beta}+\nabla_{\beta}\xi_{\alpha}-g_{\alpha \beta}\xi^{(1)}\right)\right)
\end{align}
$$

$$\tag{2.4}
\begin{align}
X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}} & =\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\nabla_{\mu}\phi X_{\xi}\cdot \delta \phi+\frac{1}{2\pi \gamma}\nabla^{\nu}X_{\xi}\cdot\delta g_{\mu \nu}\phi-\frac{1}{2\pi \gamma}g^{\alpha \beta}\phi\nabla_{\mu}X_{\xi}\cdot\delta g_{\alpha \beta}-\frac{1}{2\pi \gamma}\nabla^{\nu}\phi X_{\xi}\cdot\delta g_{\mu \nu}+\frac{1}{2\pi \gamma}\nabla_{\mu}\phi g^{\alpha \beta}X_{\xi}\cdot\delta g_{\alpha \beta}\right) \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\nabla_{\mu}\phi\xi^{\nu}\nabla_{\nu}\phi+\frac{1}{\pi \gamma}\nabla_{\mu}\phi \xi^{(1)}+\frac{1}{\pi \gamma}\nabla_{\mu}\nabla_{\nu}\xi^{\nu}\phi-\frac{1}{4\pi \gamma}R\xi_{\mu}\phi-\frac{1}{2\pi \gamma}\nabla_{\mu}\xi^{(1)}\phi-\frac{1}{2\pi \gamma}\phi\nabla_{\mu}(\nabla^{\rho}\xi_{\rho}-\xi^{(1)})\right. \\
 & \left.-\frac{1}{2\pi \gamma}\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)})+\frac{1}{2\pi \gamma}\nabla_{\mu}\phi(\nabla^{\rho}\xi_{\rho}-\xi^{(1)})\right)
\end{align}
$$

## $\displaystyle{\mathcal{L}_{\xi}}\delta S$

rewriting into a convenient way

$$\tag{3.1}
\begin{align}
S & =\int_{M}\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)\cdot \frac{1}{2!}\varepsilon^{M}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{3.2}
\begin{align}
\delta S & =\int_{M}\left(\frac{1}{2\pi}\mathbf{E}_{\phi}\delta \phi-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}\delta g_{\alpha \beta}\right)+\theta|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

where

$$\tag{3.3}
\begin{align}
\mathbf{E}_{\phi} & =\left(\nabla^{\rho}\nabla_{\rho}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi}\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\mathbf{E}_{g}^{\mu \nu} & =T^{\alpha \beta}\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =\left(-\nabla^{\alpha}\phi \nabla^{\beta}\phi+\frac{1}{2}g^{\alpha \beta}\nabla^{\rho}\phi \nabla_{\rho}\phi+\frac{\mu}{2\gamma^{2}}g^{\alpha \beta}e^{\gamma \phi}+\frac{2}{\gamma}\nabla^{\alpha}\nabla^{\beta}\phi-\frac{2}{\gamma}g^{\alpha \beta}\nabla^{\rho}\nabla_{\rho}\phi\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\theta|_{\Sigma} & =\int_{\Sigma}\left(\frac{1}{2\pi}g^{\mu \nu}\nabla_{\nu}\phi \delta \phi+\frac{1}{2\pi \gamma}g^{\mu \nu}\phi\nabla^{\rho}\delta g_{\nu \rho}-\frac{1}{2\pi \gamma}g^{\nu \rho}\phi\nabla^{\mu}\delta g_{\nu \rho}-\frac{1}{2\pi \gamma}g^{\mu \nu}\nabla^{\rho}\phi \delta g_{\nu \rho}+\frac{1}{2\pi \gamma}g^{\nu \rho}\nabla^{\mu}\phi \delta g_{\nu \rho}\right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{3.4}
\begin{align}
X_{\tilde{\xi}}\cdot \delta S & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M_{\varepsilon}}
\end{align}
$$

where

$$\tag{3.5}
\begin{align}
\alpha_{\xi}|_{\Sigma} & =\int_{\Sigma}\left(\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi \xi^{\mu}+\frac{1}{2\pi}R\phi \xi^{\mu}+\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\xi^{\mu}+\frac{1}{\pi \gamma}\nabla^{\mu}\xi^{(1)}\phi\right)\cdot \varepsilon_{\mu \mu_{1}}\mathrm{d}x^{1} \\
\beta_{\xi}|_{M} & =\int_{M} \frac{-1}{\pi \gamma^{2}}R\xi^{(1)}\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

on the one hand,

$$\tag{3.1}
\begin{align}
\mathcal{L}_{\xi}\delta S & =X_{\xi}\cdot \delta^{2}S+\delta(X_{\xi}\cdot \delta S) \\
 & =\delta(X_{\xi}\cdot \delta S) \\
 & =\delta \alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

on the other hand,

$$\tag{3.2}
\begin{align}
 X_{\xi}\cdot \delta^{2}S & =X_{\xi}\cdot \delta\left( \int_{M}\left( \frac{1}{2\pi}\mathbf{E}_{\phi}\delta \phi-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}\delta g_{\alpha \beta} \right) +\theta|_{\Sigma_{f}-\Sigma_{i}}\right) \\
 & =X_{\xi}\cdot \int_{M}\left(\frac{1}{2\pi}\delta\mathbf{E}_{\phi}\wedge\delta \phi-\frac{1}{4\pi}\delta\mathbf{E}^{\alpha \beta}_{g}\wedge \delta g_{\alpha \beta}\right)+X_{\xi}\cdot\delta \theta|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\int_{M}\left(\frac{1}{2\pi}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi-\frac{1}{2\pi}\delta \mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}(X_{\xi}\cdot \delta \mathbf{E}^{\alpha \beta}_{g})\delta g_{\alpha \beta}+\frac{1}{4\pi}\delta\mathbf{E}^{\alpha \beta}_{g}(X_{\xi}\cdot \delta g_{\alpha \beta})\right)+X_{\xi}\cdot \delta \theta|_{\Sigma_{f}-\Sigma_{i}} \\
\delta(X_{\xi}\cdot \delta S) & =\delta\left( \int_{M}\left(\frac{1}{2\pi}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}(X_{\xi}\cdot \delta g_{\alpha \beta})\right) \right)+\delta(X_{\xi}\cdot \theta)|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\int_{M}\left(\frac{1}{2\pi}\delta \mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)+\frac{1}{2\pi}\mathbf{E}_{\phi}\delta(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}\delta\mathbf{E}^{\alpha \beta}_{g}(X_{\xi}\cdot \delta g_{\alpha \beta})-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}\delta(X_{\xi}\cdot \delta g_{\alpha \beta})\right)+\delta(X_{\xi}\cdot \theta)|_{\Sigma_{f}-\Sigma_{i}} \\
 \mathcal{L}_{\xi}\delta S & =X_{\xi}\cdot \delta^{2}S+\delta(X_{\xi}\cdot \delta S) \\
 & =\int_{M}\left(\frac{1}{2\pi}(X_{\xi}\cdot \delta E_{\phi})\delta \phi+\frac{1}{2\pi}\mathbf{E}_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}(X_{\xi}\cdot \mathbf{E}^{\alpha \beta}_{g})\delta g_{\mu \nu}-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}(X_{\xi}\cdot \delta g_{\alpha \beta})\right)+(X_{\xi}\cdot \delta \theta|_{\Sigma_{f}-\Sigma_{i}}+\delta(X_{\xi}\cdot \theta)|_{\Sigma_{f}-\Sigma_{i}})
\end{align}
$$

we first consider terms supporting on $\displaystyle{M}$

$$\tag{3.3}
\begin{align} \\
\delta \mathbf{E}_{\phi} & = \delta\left(g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi}\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & +\left( \nabla^{\rho}\nabla_{\rho}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \right) \frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =\left(\delta g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}\phi-g^{\rho \sigma}\delta \Gamma^{\lambda}_{\rho \sigma}\nabla_{\lambda}\phi+\nabla^{\rho}\nabla_{\rho}\delta \phi-\frac{1}{\gamma}\nabla^{\mu}\nabla^{\nu}\delta g_{\mu \nu}+\frac{1}{\gamma}g^{\mu \nu}\nabla_{\rho}\nabla^{\rho}\delta g_{\mu \nu}-\frac{\mu}{2}e^{\gamma \phi}\delta \phi\right. \\
 & +\left. \frac{1}{2}g^{\mu \nu}\delta g_{\mu \nu}\nabla^{\rho}\nabla_{\rho}\phi-\frac{\mu}{4\gamma}g^{\mu \nu}\delta g_{\mu \nu}e^{\gamma \phi}\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\int_{M} \frac{1}{2\pi}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi & = \int_{M}\left(\frac{1}{2\pi}(X_{\xi}\cdot \delta g^{\rho \sigma})\nabla_{\rho}\nabla_{\sigma}\phi-\frac{1}{2\pi}g^{\rho \sigma}(X_{\xi}\cdot \delta \Gamma^{\lambda}_{\rho \sigma})\nabla_{\lambda}\phi+\frac{1}{2\pi}\nabla^{\rho}\nabla_{\rho}(X_{\xi}\cdot \delta \phi)-\frac{1}{2\pi \gamma}\nabla^{\mu}\nabla^{\nu}(X_{\xi}\cdot \delta g_{\mu \nu})\right. \\
 & \left.+\frac{1}{\pi \gamma}g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}(X_{\xi}\cdot \delta g_{\mu \nu})-\frac{\mu}{4\pi}e^{\gamma \phi}(X_{\xi}\cdot \delta \phi)+\frac{1}{4\pi}\nabla^{\rho}\nabla_{\rho}\phi g^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})-\frac{\mu}{8\pi \gamma}e^{\gamma \phi}g^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}}\mu_{1}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{3.4}
\begin{align}
\int_{M} \frac{1}{2\pi}\mathbf{E}_{\phi}\delta(X_{\xi}\cdot \delta \phi) & =\int_{M} \frac{1}{2\pi}\left( \nabla^{\rho}\nabla_{\rho}\phi-\frac{1}{\gamma}R -\frac{\mu}{2\gamma}e^{\gamma \phi}\right)\xi^{\sigma}\nabla_{\sigma}\delta\phi\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{3.5}
\begin{align}
\int_{M}-\frac{1}{4\pi}(X_{\xi}\cdot \delta\mathbf{E}^{\mu \nu}_{g})\delta g_{\mu \nu} & =
\end{align}
$$

$$\tag{3.3}
\begin{align}
\mathbf{E}_{\phi} & =\left(\nabla^{\rho}\nabla_{\rho}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi}\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\mathbf{E}_{g}^{\mu \nu} & =T^{\alpha \beta}\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =\left(-\nabla^{\alpha}\phi \nabla^{\beta}\phi+\frac{1}{2}g^{\alpha \beta}\nabla^{\rho}\phi \nabla_{\rho}\phi+\frac{\mu}{2\gamma^{2}}g^{\alpha \beta}e^{\gamma \phi}+\frac{2}{\gamma}\nabla^{\alpha}\nabla^{\beta}\phi-\frac{2}{\gamma}g^{\alpha \beta}\nabla^{\rho}\nabla_{\rho}\phi\right)\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\theta|_{\Sigma} & =\int_{\Sigma}\left(\frac{1}{2\pi}g^{\mu \nu}\nabla_{\nu}\phi \delta \phi+\frac{1}{2\pi \gamma}g^{\mu \nu}\phi\nabla^{\rho}\delta g_{\nu \rho}-\frac{1}{2\pi \gamma}g^{\nu \rho}\phi\nabla^{\mu}\delta g_{\nu \rho}-\frac{1}{2\pi \gamma}g^{\mu \nu}\nabla^{\rho}\phi \delta g_{\nu \rho}+\frac{1}{2\pi \gamma}g^{\nu \rho}\nabla^{\mu}\phi \delta g_{\nu \rho}\right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{3.6}
\begin{align}
\int_{M}-\frac{1}{4\pi}\mathbf{E}^{\mu \nu}_{g}(X_{\xi}\cdot \delta g_{\mu \nu}) & =
\end{align}
$$