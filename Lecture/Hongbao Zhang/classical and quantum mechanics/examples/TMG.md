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
& =2n_{\rho}\varepsilon ^{\rho \sigma \nu}\left( S^{\mu}_{\sigma}\delta g_{\mu \nu}+\frac{1}{2}\Gamma ^{\mu}_{\nu \lambda}\delta \Gamma ^{\lambda}_{\mu \sigma} \right)\varepsilon _{\Gamma}
\end{align}
$$

where $\displaystyle{S^{\mu}_{\lambda}=R^{\mu}_{\lambda}-\frac{1}{4}R\delta ^{\mu}_{\lambda}}$ is the Schouten tensor.

$$\tag{.}
\begin{align}
n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\delta \Gamma ^{\lambda}_{\mu \sigma} & =n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\delta ^{\lambda}_{\alpha}\delta ^{\beta}_{\mu}\delta ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & =n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}(\gamma ^{\lambda}_{\alpha}+n^{\lambda}n_{\alpha})(\gamma ^{\beta}_{\mu}+n^{\beta}n_{\mu})\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & =n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\lambda}_{\alpha}\gamma ^{\beta}_{\mu}\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & +n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\lambda}_{\alpha}\gamma ^{\gamma}_{\sigma}n^{\beta}n_{\mu}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & +n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\beta}_{\mu}\gamma ^{\gamma}_{\sigma}n^{\lambda}n_{\alpha}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & +n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\gamma}_{\sigma}n^{\lambda}n^{\beta}n_{\alpha}n_{\mu}\delta \Gamma ^{\alpha}_{\beta \gamma}
\end{align}
$$

where the first term is

$$\tag{.}
\begin{align}
n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\lambda}_{\alpha}\gamma ^{\beta}_{\mu}\gamma ^{\gamma}_{\sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} & =n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma _{\mu~\lambda}^{~~\nu}\gamma ^{\lambda}_{\alpha}\gamma ^{\beta \mu}\gamma ^{\gamma \sigma}\delta \Gamma ^{\alpha}_{\beta \gamma} \\
 & =\frac{1}{2}n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma ^{~~\nu}_{\mu~\lambda}\gamma ^{\alpha\lambda}\gamma ^{\beta \mu}\gamma ^{\gamma \sigma}(\nabla _{\beta}\delta g_{\alpha \gamma}+\nabla _{\gamma}\delta g_{\alpha \beta}-\nabla _{\alpha}\delta g_{\beta \gamma}) \\
 & =\frac{1}{2}n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma ^{~~\nu}_{\mu~\lambda}(K^{\mu \sigma}\delta A^{\lambda}-D^{\mu}\delta \gamma ^{\sigma\lambda}+K^{\sigma \mu}\delta A^{\lambda}-D^{\sigma}\delta \gamma ^{\mu \lambda}+D^{\lambda}\delta \gamma ^{\mu \sigma}) \\
 & =n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma ^{~~\nu}_{\mu~\lambda}K^{\mu \sigma}\delta A^{\lambda}-\frac{1}{2}n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma ^{~~\nu}_{\mu~\lambda}(D^{\mu}\delta \gamma ^{\sigma \lambda}+D^{\sigma}\delta \gamma ^{\mu \lambda}-D^{\lambda}\delta \gamma ^{\mu \sigma})
\end{align}
$$

the second term is

$$\tag{.}
\begin{align}
n_{\rho}\varepsilon ^{\rho \sigma \nu}\Gamma ^{\mu}_{\nu \lambda}\gamma ^{\lambda}_{\alpha}\gamma ^{\gamma}_{\sigma}n^{\beta}n_{\mu}\delta \Gamma ^{\alpha}_{\beta \gamma} & =n^{\rho}\varepsilon _{\rho \sigma \nu}\Gamma ^{~~\nu} _{\mu~\lambda}n^{\mu}(\gamma ^{\lambda}_{\alpha}\gamma ^{\gamma \sigma}n^{\beta}\delta \Gamma ^{\alpha}_{\beta \gamma})
\end{align}
$$