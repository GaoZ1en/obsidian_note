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

## variation of symplectic potential

in this section we will show that there exists a spacetime 1-form and configuration space 1-form  $\displaystyle{\mathbf{C}}$ that we have the following equation

$$\tag{.}
\begin{align}
\delta \Theta|_{\Gamma _{z}} =\mathrm{d}(\delta \mathbf{C})
\end{align}
$$


$$\tag{.}
\begin{align}
\Theta & = \frac{1}{16\pi G\mu}\varepsilon ^{\rho \sigma \nu}(S^{\mu}_{\sigma}\delta g_{\mu \nu}+\frac{1}{2}\Gamma ^{\mu}_{\nu \lambda}\delta \Gamma ^{\lambda}_{\mu \sigma})\cdot \frac{1}{2!}\varepsilon _{\rho \mu_0\mu_1}\mathrm{d} x^{\mu_0}\wedge \mathrm{d} x^{\mu_1}
\end{align}
$$

$$\tag{.}
\begin{align}
\delta \Theta & =\frac{1}{16\pi G\mu}\left( \delta S^{\mu}_{\sigma}\wedge \delta g_{\mu \nu}+\frac{1}{2}\delta \Gamma ^{\mu}_{\nu \lambda}\wedge \delta \Gamma ^{\lambda}_{\mu \sigma} \right)\mathrm{d}x^{\sigma}\wedge dx^{\nu} \\
 & =-\frac{1}{32\pi G\mu}\mathrm{Tr}(\delta \Gamma \wedge \delta \Gamma) \\
 \Theta _{\mathrm{gCS}} & =-\mathrm{Tr}(\Gamma \wedge \delta \Gamma)+\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}\varepsilon ^{\rho \sigma \lambda}\cdot \frac{1}{2!}\varepsilon _{\nu \mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\delta \Theta & =-\frac{1}{32\pi G}\mathrm{Tr}(\delta \Gamma \wedge \delta \Gamma)+\delta g_{\mu \rho}R^{\nu \mu}_{~~~~\sigma \lambda}
\end{align}
$$

$$\tag{.}
\begin{align}
\Omega ^{\mu}_{\nu} & =\frac{1}{2!}R^{\mu}_{\nu \rho \sigma}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma} \\
 & =\frac{1}{2!}\left( \delta ^{\mu}_{\rho}R_{\nu \sigma}+g_{\nu \sigma}R^{\mu}_{\rho}-\delta ^{\mu}_{\sigma}R_{\nu \rho}-g_{\nu \rho}R^{\mu}_{\sigma}-\frac{1}{2}R(\delta ^{\mu}_{\rho}g_{\nu \sigma}-\delta ^{\mu}_{\sigma}g_{\nu \rho}) \right)\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma} \\
 & =(R_{\nu \rho}\mathrm{d}x^{\mu}\wedge \mathrm{d}x^{\rho}+g_{\nu \sigma}R^{\mu}_{\rho}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma})-\frac{1}{2}Rg_{\nu \rho}\mathrm{d}x^{\mu}\wedge \mathrm{d}x^{\rho} \\
 & =S_{\nu \rho}\mathrm{d}x^{\mu}\wedge \mathrm{d}x^{\rho}+g_{\nu \sigma}S^{\mu}_{\rho}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}
\end{align}
$$

$$\tag{.}
\begin{align}
\Omega ^{\mu \nu} & =S^{\nu}_{\rho}\mathrm{d}x^{\mu}\wedge dx^{\rho}-S^{\mu}_{\rho}\mathrm{d}x^{\nu}\wedge \mathrm{d}x^{\rho} \\
 & =-2S^{[\mu}_{\rho}\mathrm{d}x^{\nu]}\wedge dx^{\rho}
\end{align}
$$
