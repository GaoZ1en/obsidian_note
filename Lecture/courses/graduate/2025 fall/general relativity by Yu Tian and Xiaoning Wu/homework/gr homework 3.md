# problem

the arc length of a curve can be expressed as

$$\begin{align}
S & =\int ^{\lambda _{f}}_{\lambda _{i}}\mathrm{d}s=\int ^{\lambda _{f}}_{\lambda _{i}}\sqrt{\left| g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\lambda}\frac{\mathrm{d}x^{\nu}}{\mathrm{d}\lambda} \right|}\mathrm{d}\lambda
\end{align}$$

derive the geodesic equation with parameter (1) arc length parameter $\displaystyle{s}$ (2) arbitrary parameter $\displaystyle{\lambda}$.

*sol*. we first assume that $\displaystyle{x^{\mu}(\lambda)}$ is a timelike curve. take a variation of the arc length

$$\begin{align}
\delta S & =-\int \mathrm{d}\lambda  \frac{-2g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\lambda} \frac{\mathrm{d}\delta x^{\nu}}{\mathrm{d}\lambda}-\partial _{\rho}g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\lambda} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\lambda}\delta x^{\rho}}{2\sqrt{ -g_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\lambda} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\lambda} }} \\
 & =\int \mathrm{d}\lambda E_{\sigma}\delta x^{\sigma}+(\text{boundary terms}) \\
E_{\sigma} & \propto -\frac{g_{\sigma \lambda}}{\sqrt{ -g_{\alpha \beta} \frac{\mathrm{d}x^{\alpha}}{\mathrm{d}\lambda} \frac{\mathrm{d}x^{\beta}}{\mathrm{d}\lambda} }}\left( \frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}\lambda ^{2}}+\Gamma ^{\lambda}_{~\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}\lambda} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}\lambda} \right) \\
 & \propto\frac{d}{d\lambda}\!\left[\ln\!\left(\frac{ds}{d\lambda}\right)\right] \frac{dx^\lambda}{d\lambda}
\end{align}$$

when $\displaystyle{\lambda=s}$, the geodesic equation is

$$\begin{align}
\frac{\mathrm{d}^{2}x^{\lambda}}{\mathrm{d}s^{2}}+\Gamma ^{\lambda}_{\mu \nu} \frac{\mathrm{d}x^{\mu}}{\mathrm{d}s} \frac{\mathrm{d}x^{\nu}}{\mathrm{d}s} & =\frac{\mathrm{d}x^{\rho}}{\mathrm{d}s}\nabla _{\rho} \frac{\mathrm{d}x^{\lambda}}{\mathrm{d}s}
\end{align}$$

