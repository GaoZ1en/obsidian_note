here we only consider the gravitational Chern-Simons term here

## action

$$
\begin{equation}\tag{1.1}
\begin{aligned}
S_{\text{gCS}} & = \int_{M}(\Gamma \wedge \mathrm{d}\Gamma+ \frac{2}{3}\Gamma \wedge \Gamma \wedge \Gamma) \\
  & = \int _{M}(\Gamma\wedge \Omega-\frac{1}{3}\Gamma \wedge \Gamma \wedge \Gamma)
\end{aligned}
\end{equation}
$$

make a variation

$$
\begin{equation}\tag{1.2}
\begin{aligned}
\delta S_{\text{gCS}} & = \int_{M}(\delta\Gamma\wedge\Omega+\Gamma\wedge\delta\Omega-\delta\Gamma\wedge\Gamma\wedge\Gamma) \\
  & = \int _{M}(-\mathrm{d}(\Gamma \wedge \delta\Gamma)+2\delta \Gamma \wedge \Omega)
\end{aligned}
\end{equation}
$$

where

$$\tag{1.3}
\begin{align}
2\delta \Gamma \wedge \Omega & =\delta \Gamma ^{\mu}_{\nu \rho}R^{\nu}_{\mu \sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =\frac{1}{2}(\nabla _{\nu}\delta g_{\mu \rho}+\nabla _{\rho}\delta g_{\mu \nu}-\nabla _{\mu}\delta g_{\nu \rho})R^{\nu \mu}_{~~~~\sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =\nabla _{\nu}\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =\nabla _{\nu}(R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho})\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}+\delta g_{\nu \rho}\nabla _{\mu}R^{\nu \mu}_{~~~~\sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =\nabla _{\nu}(\varepsilon ^{\rho \sigma \lambda}R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho}\varepsilon _{M})+C^{\mu \nu}\delta g_{\mu \nu}\varepsilon _{M}
\end{align}
$$

where

$$\tag{1.4}
\begin{align}
C^{\mu \nu}  & = \varepsilon ^{\mu\sigma \lambda}\nabla _{\rho}R^{\nu \rho}_{~~~~\sigma \lambda} \\
 & =\varepsilon ^{\mu \sigma \lambda}\nabla _{\sigma}\left( R^{\mu}_{\lambda}-\frac{1}{4}\delta ^{\mu}_{\lambda}R \right)
\end{align}
$$

is the Cotton tensor. we have used that

$$\tag{1.5}
\begin{align}
\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} & =\frac{1}{3!}\varepsilon ^{\rho \sigma \lambda}\varepsilon _{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
R^{\nu \mu}_{~~~~\sigma \lambda} & =(\delta ^{\nu}_{\sigma}R^{\mu}_{\lambda}+\delta ^{\mu}_{\lambda}R^{\nu}_{\sigma}-\delta ^{\nu}_{\lambda}R^{\mu}_{\sigma}-\delta ^{\mu}_{\sigma}R^{\nu}_{\rho})-\frac{1}{2}R(\delta ^{\nu}_{\sigma}\delta ^{\mu}_{\lambda}-\delta ^{\mu}_{\sigma}\delta ^{\nu}_{\lambda})
\end{align}
$$

the symplectic potential is

$$\tag{1.6}
\begin{align}
\Theta _{\text{gCS}} & =-\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+n_{\nu}\varepsilon ^{\rho \sigma \lambda}R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho}\varepsilon _{\Gamma} \\
 & =-\varepsilon _{\Gamma} ^{\rho \sigma}\Gamma ^{\mu}_{\nu \rho}\delta \Gamma ^{\nu}_{\mu \sigma}\varepsilon _{\Gamma}+n_{\nu}n^{\rho}\varepsilon ^{\sigma \lambda}_{\Gamma}R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho}\varepsilon _{\Gamma} \\
 & =-\varepsilon ^{\rho \sigma}_{\Gamma}\Gamma ^{\mu}_{\nu \rho}\delta \Gamma ^{\nu}_{\mu \sigma}\varepsilon _{\Gamma}+n_{\nu}n^{\rho}\varepsilon _{\Gamma}^{\sigma \lambda}R^{\nu \mu}_{~~~~\sigma \lambda}\delta g_{\mu \rho}\varepsilon _{\Gamma} \\
 & =-\varepsilon ^{\rho \sigma}_{\Gamma}\Gamma ^{\mu}_{\nu \rho}\delta \Gamma ^{\nu}_{\mu \sigma}\varepsilon _{\Gamma}+2\varepsilon ^{\rho\nu}_{\Gamma}S^{\mu}_{\rho}\delta g_{\mu \nu}\varepsilon _{\Gamma}
\end{align}
$$

where $\displaystyle{S^{\mu}_{\lambda}=R^{\mu}_{\lambda}-\frac{1}{4}R\delta ^{\mu}_{\lambda}}$ is the Schouten tensor.

$$\tag{1.7}
\begin{align}
-\varepsilon _{\Gamma}^{\rho \sigma}\Gamma ^{\mu}_{\nu \rho}\delta \Gamma ^{\nu}_{\mu \sigma} & =-\varepsilon ^{\rho \sigma}_{\Gamma}\Gamma ^{\mu}_{\nu \rho}\delta ^{\nu}_{\alpha}\delta ^{\beta}_{\mu}\delta ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & =-\varepsilon ^{\rho \sigma}_{\Gamma}\Gamma ^{\mu}_{\nu \rho}(\gamma ^{\nu}_{\alpha}+n^{\nu}n_{\alpha})(\gamma ^{\beta}_{\mu}+n^{\beta}n_{\mu})(\gamma ^{\nu}_{\sigma}+n^{\gamma}n_{\sigma})\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & =
\end{align}
$$