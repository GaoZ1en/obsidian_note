in this file we will perform the standard procedure of covariant phase space formalism on topological massive gravity.

## action

topological massive gravity is a 3-dimensional theory of gravity with negative cosmological constant and gravitational Chern-Simons term( for the present we do not consider the boundary term in the action )

$$\tag{1.1}
\begin{align}
S & =\frac{1}{16\pi G}\int_{M}(R-2\Lambda)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\frac{1}{32\pi G\mu}S_{CS} \\
S_{CS} & =\int_{M}\mathrm{Tr}\left( \Gamma \wedge \mathrm{d}\Gamma+\frac{2}{3}\Gamma \wedge \Gamma \wedge \Gamma \right) \\
 & =\int_{M}\left(\Gamma^{\mu}_{ \nu}\wedge \mathrm{d}\Gamma^{\nu}_{ \mu}+\frac{2}{3}\Gamma^{\mu}_{ \nu}\wedge \Gamma^{\nu}_{ \rho}\wedge \Gamma^{\rho}_{ \mu}\right) \\
 & =\int_{M}\left(\Gamma^{\mu}_{ \nu \sigma}\partial_{\lambda}\Gamma^{\nu}_{ \mu \tau}+\frac{2}{3}\Gamma^{\mu}_{ \nu \sigma}\Gamma^{\nu}_{ \rho \lambda }\Gamma^{\rho}_{ \mu \tau}\right)\mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\tau} \\
\Gamma^{\mu}_{ \nu} & =\Gamma^{\mu}_{ \nu \rho}\mathrm{d}x^{\rho}
\end{align}
$$

where $\displaystyle{\Gamma^{a}_{ b}}$ is the connection 1-form, and $\displaystyle{e^{a}_{\mu}}$ is the vielbein. then we will perform the standard procedure of covariant phase space formalism

$$\tag{1.2}
\begin{align}
\delta S & =\int_{M} \frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}-\Lambda g^{\mu \nu} \right)\delta g_{\mu \nu}\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +\int_{\partial M} \frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})\cdot \frac{1}{2!}\varepsilon_{\rho \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +\frac{1}{32\pi G\mu}\delta S_{CS}
\end{align}
$$

$$\tag{.}
\begin{align}
\delta S_{CS} & =\int_{M} \mathrm{Tr}\left( \delta \Gamma \wedge \mathrm{d}\Gamma+\Gamma \wedge \mathrm{d}\delta \Gamma+2\Gamma \wedge \Gamma \wedge \delta \Gamma \right) \\
 & =\int_{M}\mathrm{Tr}\left(\delta \Gamma \wedge \mathrm{d}\Gamma+\mathrm{d}(\Gamma \wedge \delta \Gamma)-\mathrm{d}\Gamma \wedge \delta \Gamma+2\Gamma \wedge \Gamma \wedge \delta \Gamma\right) \\
 & =\int_{\partial M}\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+2\int_{M}\mathrm{Tr}(\delta \Gamma \wedge \Omega) \\
 & =-\int_{\partial M} \varepsilon^{\lambda \rho \sigma}\Gamma^{\mu}_{~\nu \rho}\delta \Gamma^{\nu}_{~\mu \sigma}\cdot\frac{1}{3!}\varepsilon_{\lambda\rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}+\int_{M} \varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\delta \Gamma^{\nu}_{~\mu \lambda}\cdot \frac{1}{3!}\varepsilon_{\rho \sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
 & =-\int_{M}
\end{align}
$$

$$\tag{.}
\begin{align}
\varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\delta \Gamma^{\nu}_{~\mu \lambda} & =\varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\cdot \frac{1}{2}g^{\nu \eta}(\nabla_{\mu}\delta g_{\eta \lambda}+\nabla_{\lambda}\delta g_{\mu \eta}-\nabla_{\eta}\delta g_{\mu \lambda}) \\
 & =\frac{1}{2}\nabla_{\mu}(\varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\delta g_{\eta \lambda})+\frac{1}{2}\nabla_{\lambda}(\varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\delta g_{\mu \eta})-\frac{1}{2}\nabla_{\eta}(\varepsilon^{\rho \sigma \lambda}R^{\mu}_{~\nu \rho \sigma}\delta g_{\mu \lambda}) \\
 & -\frac{1}{2}\varepsilon^{\rho \sigma \lambda}\nabla_{\mu}R^{\mu}_{\nu \rho \sigma}\delta g_{\eta \lambda}-\frac{1}{2}\varepsilon^{\rho \sigma \lambda}\nabla_{\lambda}R^{\mu}_{~\nu \rho \sigma}\delta g_{\mu \eta}+\frac{1}{2}\varepsilon^{\rho \sigma \lambda}\nabla_{\eta}R^{\mu}_{~\nu \rho \sigma}\delta g_{\mu \lambda}
\end{align}
$$
