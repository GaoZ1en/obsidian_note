$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu} \\
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu} \\
\implies \omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

consider the transformation of $\displaystyle{S}$ under $\displaystyle{X_{\xi}=\int \mathrm{d}^{3}x\mathcal{L}_{\xi}A_{\mu}\frac{\delta}{\delta A_{\mu}}}$ 

$$\begin{align}
X_{\xi}\cdot \delta S & =\int \mathcal{L}_{\xi}\mathbf{L}=\int\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left(\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

then the Noether charge corresponds to the Killing vector $\displaystyle{\xi ^{\mu}}$ is

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}(X_{\xi}\cdot \delta A_{\nu})-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \left( \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} +\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \left( \frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\frac{1}{2}\mu^{2}g_{\mu \nu}A_{\rho}A^{\rho} \right)\\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu}_{~~\rho}F^{\nu\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} -\frac{1}{2}\mu^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)
\end{align}$$

---

then we will calculate the expression 