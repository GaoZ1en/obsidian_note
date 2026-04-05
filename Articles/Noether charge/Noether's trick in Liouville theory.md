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
 & +\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\right. \\
 & +\frac{1}{2\pi \gamma}\phi g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)+\frac{1}{2}g^{\mu \nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
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

---

$$\tag{1.7}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)-\frac{1}{2\pi \gamma}R\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)}\right)\right) \\
 & +\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\right. \\
 & +\frac{1}{2\pi \gamma}\phi g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)+\frac{1}{2}g^{\mu \nu}\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)
\end{align}
$$

$$\tag{1.8}
\begin{align}
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\xi^{\nu}\nabla_{\nu}\phi-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\nabla_{\nu}\phi \xi^{\nu}-\frac{1}{\pi \gamma}\nabla^{\mu}\phi \nabla_{\mu}\xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\nu}\nabla_{\nu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}\right. \\
 & -\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\nabla_{\nu}\phi \xi^{\nu}-\frac{\mu}{2\pi \gamma^{2}}e^{\gamma \phi}\xi^{(1)}+\frac{1}{\pi \gamma}\phi \nabla^{\rho}\nabla_{\rho}(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})+(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})\left(-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
 & \left.+\frac{1}{4\pi}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})\right)
\end{align}
$$

$$\tag{1.9}
\begin{align}
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})-\frac{1}{2\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi \xi^{(1)}-\frac{1}{4\pi}\nabla_{\nu}(\nabla_{\mu}\phi \nabla^{\mu}\phi)\xi^{\nu}\right. \\
 & -\frac{1}{\pi \gamma}\nabla^{\mu}\phi \nabla_{\mu}\xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\nu}\nabla_{\nu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma^{2}}\nabla_{\mu}e^{\gamma \phi}\xi^{\mu}-\frac{\mu}{2\pi \gamma^{2}}e^{\gamma \phi}\xi^{(1)}+\frac{1}{\pi \gamma}\phi \nabla^{\rho}\nabla_{\rho}\nabla_{\mu}\xi^{\mu}-\frac{2}{\pi \gamma}\phi \nabla_{\rho}\nabla^{\rho}\xi^{(1)} \\
 & -\frac{1}{4\pi}\nabla^{\rho}\phi\nabla_{\rho}\phi \nabla_{\mu}\xi^{\mu}+\frac{1}{2\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi \xi^{(1)}-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\nabla_{\mu}\xi^{\mu}+\frac{\mu}{2\pi \gamma^{2}}e^{\gamma \phi}\xi^{(1)}+\frac{1}{4\pi}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})\nabla^{\mu}\phi \nabla^{\nu}\phi \\
 & \left.-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}\nabla_{\mu}\xi_{\nu}-\frac{1}{2\pi \gamma}\phi \nabla^{\mu}\nabla^{\nu}\nabla_{\nu}\xi_{\mu}+\frac{1}{\pi \gamma}\phi \nabla^{\mu}\nabla_{\mu}\xi^{(1)}\right) \\
& =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}\nabla_{\nu}(\nabla_{\mu}\phi \nabla^{\mu}\phi \xi^{\nu})-\frac{1}{\pi \gamma}\nabla^{\mu}(\phi \nabla_{\mu}\xi^{(1)})-\frac{1}{2\pi \gamma}\nabla_{\nu}(R\xi^{\nu}\phi)-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma^{2}}\nabla_{\mu}(e^{\gamma \phi}\xi^{\mu})\right) \\
 & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

here we insert

$$\tag{1.10}
\begin{align}
\nabla^{\mu}\nabla^{\nu}\nabla_{\mu}\xi_{\nu}+\nabla^{\mu}\nabla^{\nu}\nabla_{\nu}\xi_{\mu} & =2\nabla^{\mu}\nabla_{\mu}\nabla_{\nu}\xi^{\nu}+\xi^{\mu}\nabla_{\mu}R+2R_{\mu \nu}\nabla^{\mu}\xi^{\nu} \\
 & =2\nabla^{\mu}\nabla_{\mu}\nabla_{\nu}\xi^{\nu}+\xi^{\mu}\nabla_{\mu}R+R\nabla^{\mu}\xi_{\mu}
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
\int_{M}\mathrm{d}^{2}x\sqrt{ -g } \frac{1}{2\pi}E_{\phi}X_{\xi}\cdot \delta \phi & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla^{2}\phi-\frac{1}{2\pi \gamma}R-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\right)\left(\xi^{\mu}\nabla_{\mu}\phi+\frac{2}{\gamma}\xi^{(1)}\right) \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla^{\rho}\nabla_{\rho}\phi \xi^{\mu}\nabla_{\mu}\phi+\frac{1}{\pi \gamma}\nabla^{2}\phi \xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\mu}\nabla_{\mu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\xi^{\mu}\nabla_{\mu}\phi+\frac{\mu}{2\pi \gamma}e^{\gamma \phi}\xi^{(1)}\right) \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla_{\mu}(\nabla^{\mu}\phi \nabla^{\nu}\phi \xi_{\nu})-\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(2)})-\frac{1}{2\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi \xi^{(1)}-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\nabla_{\nu}\phi \xi^{\nu}\right. \\
 & \left.\frac{1}{\pi \gamma}\nabla_{\mu}(\xi^{(1)}\nabla^{\mu}\phi)-\frac{1}{\pi \gamma}\nabla_{\mu}\phi \nabla^{\mu}\xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\mu}\nabla_{\mu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}\nabla_{\mu}e^{\gamma \phi}-\frac{\mu}{2\pi \gamma}e^{\gamma \phi}\xi^{(1)}\right)
\end{align}
$$

$$\tag{2.3}
\begin{align}
\int_{M}\mathrm{d}^{2}x\sqrt{ -g }-\frac{1}{4\pi}T^{\mu \nu}X_{\xi}\cdot \delta g_{\mu \nu} & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\nabla^{\mu}\phi\nabla^{\nu}\phi-\frac{1}{8\pi}g^{\mu \nu}\nabla^{\rho}\phi \nabla_{\rho}\phi-\frac{\mu}{8\pi \gamma}g^{\mu \nu}e^{\gamma \phi}-\frac{1}{2\pi \gamma}\nabla^{\mu}\nabla^{\nu}\phi+\frac{1}{2\pi \gamma}g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\phi\right)\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\alpha \beta}\xi^{(1)}\right) \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi\left(\nabla^{\mu}\xi_{\mu}-2\xi^{(1)}\right)-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\left(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)}\right)\right. \\
 & -\frac{1}{2\pi \gamma}\nabla^{\mu}(\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}))+\frac{1}{2\pi \gamma}\nabla^{\nu}\phi \nabla^{\mu}(\nabla_{m\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})+\frac{1}{\pi \gamma}\nabla^{\rho}(\nabla_{\rho}\phi(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})) \\
 & \left.-\frac{1}{\pi \gamma}\nabla_{\rho}\phi \nabla^{\rho}(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})\right)
\end{align}
$$

$$\tag{2.4}
\begin{align}
X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}} & =\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\nabla_{\mu}\phi X_{\xi}\cdot \delta \phi+\frac{1}{2\pi \gamma}\nabla^{\nu}X_{\xi}\cdot \delta g_{\mu \nu}\phi-\frac{1}{2\pi \gamma}g^{\rho \sigma}\nabla_{\mu}X_{\xi}\cdot \delta g_{\rho \sigma}-\frac{1}{2\pi \gamma}\nabla^{\nu}\phi X_{\xi}\cdot \delta g_{\mu \nu}+\frac{1}{2\pi \gamma}\nabla_{\mu}\phi g^{\rho \sigma}X_{\xi}\cdot \delta g_{\rho \sigma}\right) \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\nabla_{\mu}\phi\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)+\frac{1}{2\pi \gamma}\nabla^{\nu}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})\phi-\frac{1}{\pi \gamma}\nabla_{\mu}(\nabla^{\nu}\xi_{\nu}-2\xi^{(1)})\phi\right. \\
 & \left.-\frac{1}{2\pi \gamma}\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)})+\frac{1}{\pi \gamma}\nabla_{\mu}\phi(\nabla^{\nu}\xi_{\nu}-2\xi^{(1)})\right)
\end{align}
$$

sum over (2.2-4), we have

$$\tag{2.5}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}X_{\xi}\cdot \delta \phi-\frac{1}{4\pi}T^{\mu \nu}X_{\xi}\cdot \delta g_{\mu \nu}\right)+X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}\nabla_{\mu}(\nabla^{\mu}\phi \nabla^{\nu}\phi \xi_{\nu})-\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(2)})-\frac{1}{2\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi \xi^{(1)}-\frac{1}{2\pi}\nabla^{\mu}\phi \nabla_{\mu}\nabla_{\nu}\phi \xi^{\nu}\right. \\
 & \left.\frac{1}{\pi \gamma}\nabla_{\mu}(\xi^{(1)}\nabla^{\mu}\phi)-\frac{1}{\pi \gamma}\nabla_{\mu}\phi \nabla^{\mu}\xi^{(1)}-\frac{1}{2\pi \gamma}R\xi^{\mu}\nabla_{\mu}\phi-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}-\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}\nabla_{\mu}e^{\gamma \phi}-\frac{\mu}{2\pi \gamma}e^{\gamma \phi}\xi^{(1)}\right) \\
 & +\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{4\pi}\nabla^{\mu}\phi \nabla^{\nu}\phi\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}\right)-\frac{1}{4\pi}\nabla^{\rho}\phi \nabla_{\rho}\phi\left(\nabla^{\mu}\xi_{\mu}-2\xi^{(1)}\right)-\frac{\mu}{4\pi \gamma}e^{\gamma \phi}\left(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)}\right)\right. \\
 & -\frac{1}{2\pi \gamma}\nabla^{\mu}(\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}))+\frac{1}{2\pi \gamma}\nabla^{\nu}\phi \nabla^{\mu}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})+\frac{1}{\pi \gamma}\nabla^{\rho}(\nabla_{\rho}\phi(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})) \\
 & \left.-\frac{1}{\pi \gamma}\nabla_{\rho}\phi \nabla^{\rho}(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})\right) \\
 & +\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\nabla_{\mu}\phi\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)+\frac{1}{2\pi \gamma}\nabla^{\nu}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)})\phi-\frac{1}{\pi \gamma}\nabla_{\mu}(\nabla^{\nu}\xi_{\nu}-2\xi^{(1)})\phi\right. \\
 & \left.-\frac{1}{2\pi \gamma}\nabla^{\nu}\phi(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\xi^{(1)})+\frac{1}{\pi \gamma}\nabla_{\mu}\phi(\nabla^{\nu}\xi_{\nu}-2\xi^{(1)})\right) \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}\nabla_{\rho}(\nabla^{\mu}\phi \nabla_{\mu}\phi \xi^{\rho})-\frac{1}{2\pi}\nabla_{\rho}(R\phi \xi^{\rho})-\frac{\mu}{4\pi \gamma^{2}}\nabla_{\mu}(\xi^{\mu}e^{\gamma \phi})-\frac{1}{\pi \gamma}\nabla_{\mu}(\nabla^{\mu}\xi^{(1)}\phi)-\frac{1}{\pi \gamma^{2}}R\xi^{(1)}\right) \\
 & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

---

however, the exact thing we want is to verify the Noether theorem

$$\tag{2.6}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}T^{\alpha \beta}(X_{\xi}\cdot \delta g_{\alpha \beta})\right)+X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{1}{4\pi}T^{\alpha \beta}(\nabla_{\alpha}\xi_{\beta}+\nabla_{\beta}\xi_{\alpha}-2g_{\alpha \beta}\xi^{(1)})\right)+X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}} \\
 & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}(E_{\phi}\nabla_{\mu}\phi+g^{\nu\rho}\nabla_{\rho}T_{\mu \nu})\xi^{\mu}+\frac{1}{2\pi}\left( g^{\mu \nu}T_{\mu \nu}+\frac{2}{\gamma}E_{\phi}\right)\xi^{(1)}\right) \\
 & +X_{\xi}\cdot \theta|_{\Sigma_{f}-\Sigma_{i}}+\int_{\Sigma_{f}-\Sigma_{i}}\mathrm{d}x\sqrt{ \sigma } \frac{1}{2\pi}T_{\mu \nu}\tau^{\mu}\xi^{\nu}
\end{align}
$$

by comparing (1.5) and (2.6), we have

$$\tag{2.7}
\begin{align}
g^{\nu \rho}\nabla_{\rho}T_{\mu \nu} & =-E_{\phi}\nabla_{\mu}\phi \\
g^{\mu \nu}T_{\mu \nu} & =-\frac{2}{\gamma}E_{\phi}-\frac{2}{\gamma^{2}}R \\
X_{\xi}\cdot \theta-\alpha_{\xi} & =-\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma } \frac{1}{2\pi}T_{\mu \nu}\tau^{\mu}\xi^{\nu}
\end{align}
$$

by restricting to equation of motions $\displaystyle{E_{\phi}|_{\mathcal{\tilde{P}}}=0}$, we have

$$\tag{2.8}
\begin{align}
g^{\nu \rho}\nabla_{\rho}T_{\mu \nu}|_{\tilde{\mathcal{P}}} & =0 \\
g^{\mu \nu}T_{\mu \nu}|_{\tilde{\mathcal{P}}} & =-\frac{2}{\gamma^{2}}R
\end{align}
$$

by requiring $\displaystyle{\xi^{(1)}=\frac{1}{2}\nabla_{\mu}\xi^{\mu}}$, we have

$$\tag{2.9}
\begin{align}
X_{\xi}\cdot \theta-\alpha_{\xi} & =-\frac{1}{2\pi}\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }T_{\mu \nu}\tau^{\mu}\xi^{\nu}
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
 & =\delta \alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\delta\beta_{\xi}|_{M}
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
 & =\int_{M}\left(\frac{1}{2\pi}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi+\frac{1}{2\pi}\mathbf{E}_{\phi}\delta(X_{\xi}\cdot \delta \phi)-\frac{1}{4\pi}(X_{\xi}\cdot \mathbf{E}^{\alpha \beta}_{g})\delta g_{\mu \nu}-\frac{1}{4\pi}\mathbf{E}^{\alpha \beta}_{g}\delta(X_{\xi}\cdot \delta g_{\alpha \beta})\right)+(X_{\xi}\cdot \delta \theta|_{\Sigma_{f}-\Sigma_{i}}+\delta(X_{\xi}\cdot \theta)|_{\Sigma_{f}-\Sigma_{i}})
\end{align}
$$

now consider terms support on $\displaystyle{M}$. 

$$\tag{3.3}
\begin{align}
\delta(X_{\xi}\cdot \delta \phi) & =\delta\left( \xi^{\mu}\nabla_{\mu}\phi+\frac{2}{\gamma}\xi^{(1)} \right)=\xi^{\mu}\nabla_{\mu}\delta \phi \\
\delta(X_{\xi}\cdot \delta g_{\mu \nu}) & =\delta(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)}) \\
 & =-2\delta \Gamma^{\rho}_{~\mu \nu}\xi_{\nu}-2\delta g_{\mu \nu}\xi^{(1)}+\nabla_{\mu}(\delta g_{\nu \rho}\xi^{\rho})+\nabla_{\nu}(\delta g_{\mu \rho}\xi^{\rho}) \\
 & =-g^{\rho \sigma}(\nabla_{\mu}\delta g_{\rho \nu}+\nabla_{\nu}\delta g_{\mu\rho}-\nabla_{\rho}\delta g_{\mu \nu})\xi_{\nu}-2\delta g_{\mu \nu}\xi^{(1)}+\nabla_{\mu}\delta g_{\nu \rho}\xi^{\rho}+\delta g_{\nu \rho}\nabla_{\mu}\xi^{\rho}+\nabla_{\nu}\delta g_{\mu \rho}\xi^{\rho}+\delta g_{\mu \rho}\nabla_{\nu }\xi^{\rho} \\
 & =\delta g_{\rho\nu}\nabla_{\mu}\xi^{\rho}+\delta g_{\mu \rho}\nabla_{\nu}\xi^{\rho}+\nabla_{\rho}\delta g_{\mu \nu}\xi^{\rho}-2\delta g_{\mu \nu}\xi^{(1)}
\end{align}
$$

terms proportional to $\displaystyle{\delta g_{\mu \nu}}$ are

$$\tag{3.4}
\begin{align}
\int_{M}\left(-\frac{1}{4\pi}(X_{\xi}\cdot \mathbf{E}^{\mu \nu}_{g})\delta g_{\mu \nu}-\frac{1}{4\pi}\mathbf{E}^{\mu \nu}_{g}\delta(X_{\xi}\cdot \delta g_{\mu \nu})\right) & =\int_{M}\left(-\frac{1}{4\pi}\left( X_{\xi}\cdot \delta T^{\mu \nu}+\frac{1}{2}g^{\rho \sigma}(X_{\xi}\cdot \delta g_{\rho \sigma})T^{\mu \nu} \right)\delta g_{\mu \nu}-\frac{1}{4\pi}T^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})\right)\varepsilon \\
 & =-\frac{1}{4\pi}\int_{M}\varepsilon\left((X_{\xi}\cdot \delta g^{\mu \rho})g^{\nu\sigma}T_{\rho \sigma}+g^{\mu \rho}(X_{\xi}\cdot \delta g^{\nu \sigma})T_{\rho \sigma}+g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta T_{\mu \nu})+(\nabla^{\rho}\xi_{\rho}-2\xi^{(1)})T^{\mu \nu}\right. \\
 & \left.+T^{\mu \nu}(\delta g_{\rho \nu}\nabla_{\mu}\xi^{\rho}+\delta g_{\mu \rho}\nabla_{\nu}\xi^{\rho}+\nabla_{\rho}\delta g_{\mu \nu}\xi^{\rho}-2\delta g_{\mu \nu}\xi^{(1)})\right) \\
 & = -\frac{1}{4\pi}\int_{M}\varepsilon\left(-(\nabla^{\mu}\xi^{\rho}+\nabla^{\rho}\xi^{\mu}-2g^{\mu \rho}\xi^{(1)})g^{\nu \sigma}T_{\rho \sigma}\delta g_{\mu \nu}-g^{\mu \rho}(\nabla^{\nu}\xi^{\sigma}+\nabla^{\sigma}\xi^{\nu}-2g^{\nu \sigma}\xi^{(1)})T_{\rho \sigma}\delta g_{\mu \nu}\right. \\
 & \left.+g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta T_{\rho \sigma})\delta g_{\mu \nu}+(\nabla^{\rho}\xi_{\rho}-2\xi^{(1)})T^{\mu \nu}\delta g_{\mu \nu}+T^{\mu \nu}(\delta g_{\rho \nu}\nabla_{\mu}\xi^{\rho}+\delta g_{\mu \rho}\nabla_{\nu}\xi^{\rho}+\nabla_{\rho}\delta g_{\mu \nu}\xi^{\rho}-2\delta g_{\mu \nu}\xi^{(1)})\right) \\
 & =-\frac{1}{4\pi}\int_{M}\varepsilon\left(g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta T_{\rho \sigma})-T^{\rho \nu}\nabla^{\mu}\xi_{\rho}-T^{\mu \rho}\nabla^{\nu}\xi_{\rho}+T^{\mu \nu}\nabla_{\rho}\xi^{\rho}\right)\delta g_{\mu \nu}+T^{\mu \nu}\nabla_{\rho}\delta g_{\mu \nu}\xi^{\rho} \\
 & =-\frac{1}{4\pi}\int_{M}\varepsilon(g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta T_{\rho \sigma})-T^{\rho \nu}\nabla^{\mu}\xi_{\rho}-T^{\mu \rho}\nabla^{\nu}\xi_{\rho}-\xi^{\rho}\nabla_{\rho}T^{\mu \nu})\delta g_{\mu \nu}+\frac{1}{4\pi}\int_{M}\varepsilon\nabla_{\rho}(T^{\mu \nu}\delta g_{\mu \nu}\xi^{\rho})
\end{align}
$$

$$\tag{3.4}
\begin{align}
\delta \beta_{\xi}|_{M} =\delta\int_{M}\frac{-1}{\pi \gamma^{2}}R\xi^{(1)}\varepsilon & =-\frac{1}{\pi \gamma^{2}}\int_{M}\xi^{(1)}(\nabla^{\mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\delta g_{\mu \nu})\varepsilon \\
 & =-\frac{1}{\pi \gamma^{2}}\int_{M}\varepsilon\left(\nabla^{\mu}(\xi^{(1)}\nabla^{\nu}\delta g_{\mu \nu})-\nabla^{\mu}\xi^{(1)}\nabla^{\nu}\delta g_{\mu \nu}-\nabla^{\rho}(\xi^{(1)}g^{\mu \nu}\nabla_{\rho}\delta g_{\mu \nu})+\nabla^{\rho}\xi^{(1)}g^{\mu \nu}\nabla_{\rho}\delta g_{\mu \nu}\right) \\
 & =-\frac{1}{\pi \gamma^{2}}\int_{M}\varepsilon\left(\nabla^{\mu}(\xi^{(1)}\nabla^{\nu}\delta g_{\mu \nu})-\nabla^{\rho}(\xi^{(1)}g^{\mu \nu}\nabla_{\rho}\delta g_{\mu \nu})-\nabla^{\nu}(\nabla^{\mu}\xi^{(1)}\delta g_{\mu \nu})+\nabla^{\rho}\nabla_{\rho}(\xi^{(1)}g^{\mu \nu}\delta g_{\mu \nu})\right. \\
 & \left.+(\nabla^{\mu}\nabla^{\nu}\xi^{(1)}-g^{\mu \nu}\nabla^{\rho}\nabla_{\rho}\xi^{(1)})\delta g_{\mu \nu}\right)
\end{align}
$$

then we have

$$\tag{3.5}
\begin{align}
X_{\xi}\cdot \delta T_{\mu \nu}=T_{\rho \nu}\nabla_{\mu}\xi^{\rho}+T_{\mu \rho}\nabla_{\nu}\xi^{\rho}+\xi^{\rho}\nabla_{\rho}T_{\mu \nu}+\frac{4}{\gamma^{2}}(\nabla_{\mu}\nabla_{\nu}\xi^{(1)}-g_{\mu \nu}\nabla^{\rho}\nabla_{\rho}\xi^{(1)})
\end{align}
$$

terms proportional to $\displaystyle{\delta \phi}$

$$\tag{3.5}
\begin{align}
\int_{M}\left(\frac{1}{2\pi}(X_{\xi}\cdot \delta \mathbf{E}_{\phi})\delta \phi+\frac{1}{2\pi}\mathbf{E}_{\phi}\delta(X_{\xi}\cdot \delta \phi)\right) & =\frac{1}{2\pi}\int_{M}\varepsilon\left((X_{\xi}\cdot \delta E_{\phi})\delta \phi+\frac{1}{2}E_{\phi}g^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})\delta \phi+E_{\phi}\delta(X_{\xi}\cdot \delta \phi)\right) \\
 & =\frac{1}{2\pi}\int_{M}\varepsilon\left((X_{\xi}\cdot \delta E_{\phi})\delta \phi+E_{\phi}(\nabla_{\mu}\xi^{\mu}-2\xi^{(1)})\delta \phi+E_{\phi}\xi^{\mu}\nabla_{\mu}\delta \phi\right) \\
 & =\frac{1}{2\pi}\int_{M}\varepsilon\left((X_{\xi}\cdot \delta E_{\phi})-\xi^{\mu}\nabla_{\mu}E_{\phi}-2E_{\phi}\xi^{(1)}\right)\delta \phi+\frac{1}{2\pi}\int_{M}\varepsilon \nabla_{\mu}(E_{\phi}\xi^{\mu}\delta \phi)
\end{align}
$$

then we have

$$\tag{3.6}
\begin{align}
X_{\xi}\cdot \delta E_{\phi} & =\xi^{\mu}\nabla_{\mu}E_{\phi}+2E_{\phi}\xi^{(1)}
\end{align}
$$


terms support on $\displaystyle{\Sigma}$ gives

$$\tag{2.7}
\begin{align}
X_{\xi}\cdot \omega & =-\delta(X_{\xi}\cdot \theta-\alpha_{\xi})+\int_{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}E_{\phi}\xi_{\mu}\delta \phi-\frac{1}{4\pi}T^{\rho \sigma}\xi_{\mu}\delta g_{\rho \sigma}\right. \\
 & \left.+\frac{1}{\pi \gamma^{2}}\nabla^{\nu}\delta g_{\mu \nu}-\frac{1}{\pi \gamma^{2}}g^{\nu \rho}\nabla^{\mu}\delta g_{\nu \rho}-\frac{1}{\pi \gamma^{2}}\delta g_{\mu \nu}\nabla^{\nu}\xi^{(1)}+\frac{1}{\pi \gamma^{2}}\nabla_{\mu}\xi^{(1)}g^{\nu \rho}\delta g_{\nu \rho}\right) \\
 & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau^{\mu}\left(\frac{1}{2\pi}\delta T_{\mu \nu}\xi^{\nu}+\frac{1}{4\pi}g^{\rho \sigma}\delta g_{\rho \sigma}T_{\mu \nu}\xi^{\nu}-\frac{1}{2\pi}T_{\rho \sigma}\xi^{\sigma}g^{\rho \nu}\delta g_{\mu \nu}-\frac{1}{4\pi}\xi_{\mu}T^{\rho \sigma}\delta g_{\rho \sigma}\right. \\
 & \left.+\frac{1}{2\pi}E\xi_{\mu}\delta \pi+\frac{1}{\pi \gamma^{2}}\nabla^{\nu}\delta g_{\mu \nu}-\frac{1}{\pi \gamma^{2}}g^{\nu \rho}\nabla^{\mu}\delta g_{\nu \rho}-\frac{1}{\pi \gamma^{2}}\delta g_{\mu \nu}\nabla^{\nu}\xi^{(1)}+\frac{1}{\pi \gamma^{2}}\nabla_{\mu}\xi^{(1)}g^{\nu \rho}\delta g_{\nu \rho}\right)
\end{align}
$$


---

direct calculation

$$\tag{4.1}
\begin{align}
X_{\xi}\cdot \delta E_{\phi} & =X_{\xi}\cdot \delta\left( \nabla^{2}\phi-\frac{1}{\gamma}R -\frac{\mu}{2\gamma}e^{\gamma \phi}\right) \\
 & =(X_{\xi}\cdot \delta g^{\rho \sigma})\nabla_{\rho}\nabla_{\sigma}\phi-g^{\rho \sigma}(X_{\xi}\cdot \delta \Gamma^{\lambda}_{\rho \sigma})\nabla_{\lambda}\phi+g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}(X_{\xi}\cdot \delta \phi)-\frac{1}{\gamma}X_{\xi}\cdot \delta R-\frac{\mu}{2}e^{\gamma \phi}(X_{\xi}\cdot \delta \phi) \\
 & =-(\nabla^{\rho}\xi^{\sigma}+\nabla^{\sigma}\xi^{\rho}-2g^{\rho \sigma}\xi^{(1)})\nabla_{\rho}\nabla_{\sigma}\phi-g^{\rho \sigma}\left(\frac{1}{2}g^{\lambda \eta}\nabla_{\rho}\nabla_{\sigma}\xi_{\eta}+\frac{1}{2}g^{\lambda \eta}\nabla_{\sigma}\nabla_{\rho}\xi_{\eta}+\frac{1}{2}R^{\lambda}_{\rho \sigma \eta}\xi^{\eta}+\frac{1}{2}R^{\lambda}_{\sigma \rho \eta}\xi^{\eta}-\delta^{\lambda}_{\rho}\nabla_{\sigma}\xi^{(1)}-\delta^{\lambda}_{\sigma}\nabla_{\rho}\xi^{(1)}+g_{\rho \sigma}\nabla^{\lambda}\xi^{(1)}\right)\nabla_{\lambda}\phi\\
 & +g^{\rho \sigma}\nabla_{\rho}\nabla_{\sigma}\left( \xi^{\lambda}\nabla_{\lambda}\phi+\frac{2}{\gamma}\xi^{(1)} \right) -\frac{1}{\gamma}(\xi^{\rho}\nabla_{\rho}R+2\nabla_{\rho}\nabla^{\rho}\xi^{(1)})-\frac{\mu}{2}e^{\gamma \phi}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma} \xi^{(1)}\right) \\
 & =\xi^{\lambda}\nabla_{\lambda}\left( \nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \right)-\frac{\mu}{2\gamma}e^{\gamma \phi}\cdot 2\xi^{(1)}-2\nabla^{\rho}\xi^{\sigma}\nabla_{\rho}\nabla_{\sigma}\phi+2\xi^{(1)}\nabla^{2}\phi-\nabla_{\rho}\nabla^{\rho}\xi^{\lambda}\nabla_{\lambda}\phi+\frac{1}{2}R\xi^{\rho}\nabla_{\rho}\phi \\
 & =\xi^{\lambda}\nabla_{\lambda}E_{\phi}+2\xi^{(1)}\left( \nabla^{2}\phi-\frac{\mu}{2\gamma}e^{\gamma \phi} \right)
\end{align}
$$

$$\tag{3.8}
\begin{align}
X_{\xi}\cdot \delta T_{\mu \nu} & =X_{\xi}\cdot \delta\left(-\nabla_{\mu}\phi \nabla_{\nu}\phi+\frac{1}{2}g^{\mu \nu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{\mu}{2\gamma^{2}}g^{\mu \nu}e^{\gamma \phi}+\frac{2}{\gamma}(g^{\mu \rho}g^{\nu \sigma}-g^{\mu \nu}g^{\rho \sigma})\nabla_{\rho}\nabla_{\sigma}\phi\right) \\
 & =-\nabla_{\mu}(X_{\xi}\cdot \delta \phi)\nabla_{\nu}\phi-\nabla_{\mu}\phi \nabla_{\nu}(X_{\xi}\cdot \delta \phi)+\frac{1}{2}(X_{\xi}\cdot \delta g^{\mu \nu})g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{1}{2}g^{\mu \nu}(X_{\xi}\cdot \delta g^{\rho \sigma})\nabla_{\rho}\phi \nabla_{\sigma}\phi &  \\
 & +g^{\mu \nu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}(X_{\xi}\cdot \delta \phi)+\frac{\mu}{2\gamma^{2}}(X_{\xi}\cdot \delta g^{\mu \nu})e^{\gamma \phi}+\frac{\mu}{2\gamma}g^{\mu \nu}g^{\gamma \phi}(X_{\xi}\cdot \delta \phi)+\frac{2}{\gamma}((X_{\xi}\cdot \delta g^{\mu \rho})g^{\nu \sigma}+g^{\mu \rho}(X_{\xi}\cdot \delta g^{\nu \sigma}) \\
 & -(X_{\xi}\cdot \delta g^{\mu \nu})g^{\rho \sigma}-g^{\mu \nu}(X_{\xi}\cdot \delta g^{\rho \sigma}))\nabla_{\rho}\nabla_{\sigma}\phi-\frac{2}{\gamma}(g^{\mu \rho}g^{\nu \sigma}-g^{\mu \nu}g^{\rho \sigma})\nabla_{\rho}\nabla_{\sigma}(X_{\xi}\cdot \delta \phi) \\
 & =-\nabla_{\mu}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma}\xi^{(1)} \right)\nabla_{\nu}\phi-\nabla_{\mu}\phi \nabla_{\nu}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma}\xi^{(1)}\right)-\frac{1}{2}(\nabla^{\mu}\xi^{\nu}+\nabla^{\nu}\xi^{\mu}-2g^{\mu \nu}\xi^{(1)})g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi \\
 & +\frac{1}{2}g^{\mu \nu}(\nabla^{\rho}\xi^{\sigma}+\nabla^{\sigma}\xi^{\rho}-2g^{\rho \sigma}\xi^{(1)})\nabla_{\rho}\phi \nabla_{\sigma}\phi+g^{\mu \nu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\left( \xi^{\lambda}\nabla_{\lambda}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{\mu}{2\gamma^{2}}(\nabla^{\mu}\xi^{\nu}+\nabla^{\nu}\xi^{\mu}-2g^{\mu \nu}\xi^{(1)})e^{\gamma \phi} \\
 & +\frac{\mu}{2\gamma}g^{\mu \nu}e^{\gamma \phi}\left( \xi^{\rho}\nabla_{\rho}\phi+\frac{2}{\gamma}\xi^{(1)} \right)-\frac{2}{\gamma}(g^{\mu \rho}g^{\nu \sigma}-g^{\mu \nu}g^{\rho \sigma})\nabla_{\rho}\nabla_{\sigma}\left( \xi^{\lambda}\nabla_{\lambda}\phi+\frac{2}{\gamma}\xi^{(1)} \right) \\
 & -\frac{2}{\gamma}((\nabla^{\mu}\xi^{\rho}+\nabla^{\rho}\xi^{\mu}-2g^{\mu \rho}\xi^{(1)})g^{\nu \sigma}+g^{\mu \rho}(\nabla^{\nu}\xi^{\sigma}+\nabla^{\sigma}\xi^{\nu}-2g^{\nu \sigma}\xi^{(1)}) \\
 & -(\nabla^{\mu}\xi^{\nu}+\nabla^{\nu}\xi^{\mu}-2g^{\mu \nu}\xi^{(1)})g^{\rho \sigma}-g^{\mu \nu}(\nabla^{\rho}\xi^{\sigma}+\nabla^{\sigma}\xi^{\rho}-2g^{\rho \sigma}\xi^{(1)}))\nabla_{\rho}\nabla_{\sigma}\phi
\end{align}
$$

here we use

$$\tag{4.3}
\begin{align}
X_{\xi}\cdot \delta g_{\mu \nu} & =\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-2g_{\mu \nu}\xi^{(1)} \\
X_{\xi}\cdot \delta g^{\mu \nu} & =-g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta g_{\rho \sigma}) \\
 & =-\nabla^{\mu}\xi^{\nu}-\nabla^{\nu}\xi^{\mu}+2g^{\nu \nu}\xi^{(1)} \\
X_{\xi}\cdot \delta \Gamma^{\rho}_{\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\nabla_{\mu}\delta(X_{\xi}\cdot g_{\sigma \nu})+\nabla_{\nu}(X_{\xi}\cdot \delta g_{\mu \sigma})-\nabla_{\sigma}(X_{\xi}\cdot \delta g_{\mu \nu})) \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}+\frac{1}{2}R^{\rho}_{\mu \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{\nu \mu \lambda}\xi^{\lambda}-g^{\rho \sigma}\left(\nabla_{\mu}(g_{\sigma \nu}\xi^{(1)})+\nabla_{\nu}(g_{\mu \sigma}\xi^{(1)})-\nabla_{\sigma}(g_{\mu \nu}\xi^{(1)})\right) \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}+\frac{1}{2}R^{\rho}_{\mu \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{\nu \mu \lambda}\xi^{\lambda}-\delta^{\rho}_{\mu}\nabla_{\nu}\xi^{(1)}-\delta^{\rho}_{\nu}\nabla_{\mu}\xi^{(1)}+g_{\mu \nu}\nabla^{\rho}\xi^{(1)} \\
X_{\xi}\cdot \delta R^{\rho}_{\sigma \mu \nu} & =\nabla_{\mu}(X_{\xi}\cdot \delta \Gamma^{\rho}_{\sigma \nu})-\nabla_{\nu}(X_{\xi}\cdot \delta \Gamma^{\rho}_{\mu \sigma}) \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{\sigma \mu \nu}-R^{\lambda}_{\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}+\nabla_{\mu}(-\delta^{\rho}_{\sigma}\nabla_{\nu}\xi^{(1)}-\delta^{\rho}_{\nu}\nabla_{\sigma}\xi^{(1)}+g_{\sigma \nu}\nabla^{\rho}\xi^{(1)})-\nabla_{\nu}(-\delta^{\rho}_{\sigma}\nabla_{\mu}\xi^{(1)}-\delta^{\rho}_{\mu}\nabla_{\sigma}\xi^{(1)}+g_{\sigma \mu}\nabla^{\rho}\xi^{(1)}) \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{\sigma \mu \nu}-R^{\lambda}_{\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}+\delta^{\rho}_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{(1)}-\delta^{\rho}_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{(1)}+g_{\sigma \nu}\nabla_{\mu}\nabla^{\rho}\xi^{(1)}-g_{\mu \sigma}\nabla_{\nu}\nabla^{\rho}\xi^{(1)} \\
 X_{\xi}\cdot \delta R_{\mu \nu}& =\xi^{\rho}\nabla_{\rho}R_{\mu \nu}+R_{\rho \nu}\nabla_{\mu}\xi^{\rho}+R_{\mu \rho}\nabla_{\nu}\xi^{\rho}+g_{\mu \nu}\nabla_{\rho}\nabla^{\rho}\xi^{(1)} \\
X_{\xi}\cdot \delta R & =\xi^{\rho}\nabla_{\rho}R+2\nabla_{\rho}\xi^{\rho}\xi^{(1)}
\end{align}
$$