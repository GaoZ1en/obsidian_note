## general comment for variational principle of gravitational theory.

consider a bulk action (take $\displaystyle{F(R)}$ gravity as example)

$$\tag{1.1}
\begin{align}
S_{\text{bulk}} & =\int _{M}\varepsilon F(R_{\mu \nu \rho \sigma},g_{\mu \nu})
\end{align}
$$

with $\displaystyle{F}$ an arbitrary function of $\displaystyle{R_{\mu \nu \rho \sigma}}$ and $\displaystyle{g_{\mu \nu}}$. its variation can be obtained as

$$\tag{1.2}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon E^{\mu \nu}\delta g_{\mu \nu}+\int _{\partial M}\delta v^{\mu}\mathrm{d}\Sigma _{\mu}
\end{align}
$$

$$\tag{1.2*}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon \left(  P_{\mu}^{~\nu \rho \sigma}\delta R^{\mu}_{~\nu \rho \sigma}+\frac{\delta F}{\delta g_{\mu \nu}}\delta g_{\mu \nu}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{M}\varepsilon \left( 2P_{\mu}^{~\nu \rho \sigma}\nabla _{\rho}\delta \Gamma ^{\mu}_{~\nu \sigma}+\frac{\delta F}{\delta g_{\mu \nu}}\delta g_{\mu \nu}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu}\right) \\
 & =\int _{M}\varepsilon\left( 2\nabla _{\rho}(P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma})-2\nabla _{\rho}P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma}+\frac{\delta F}{\delta g_{\mu \nu}}\delta g_{\mu \nu}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{\partial M}\mathrm{d}\Sigma _{\rho}(2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma})+\int _{M}\varepsilon \left( 2\nabla _{\rho}P^{\mu \nu \rho \sigma}\nabla _{\mu}\delta g_{\nu\sigma}+\frac{\delta F}{\delta g_{\mu \nu}}\delta g_{\mu \nu}+\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu} \right) \\
 & =\int _{\partial M}\mathrm{d}\Sigma _{\rho}(2\nabla _{\mu}P^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}+2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma})+\int _{M}\varepsilon\left( -2\nabla _{\mu}\nabla _{\rho}P^{\mu \nu \rho \sigma}\delta g_{\nu \sigma}+P^{\mu \nu}\delta g_{\mu \nu} +\frac{1}{2}Fg^{\mu \nu}\delta g_{\mu \nu}\right) \\
 & =\int _{M}\varepsilon E^{\mu \nu}\delta g_{\mu \nu}+\int _{\partial M}v^{\mu}\mathrm{d}\Sigma _{\mu}
\end{align}
$$

here we use

$$\tag{*}
\begin{align}
\delta R^{\rho}_{~\sigma \mu \nu} & =\nabla _{\mu}\delta \Gamma ^{\rho}_{~\sigma \nu}-\nabla _{\nu}\delta \Gamma ^{\rho}_{~\mu \sigma} \\
\delta \Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\nabla _{\mu}\delta g_{\sigma \nu}+\nabla _{\nu}\delta g_{\mu \sigma}-\nabla _{\sigma}\delta g_{\mu \nu})
\end{align}
$$

we define $\displaystyle{P^{\mu \nu \rho \sigma}=\frac{\delta F}{\delta R_{\mu \nu \rho \sigma}}, P^{\mu \nu}=\frac{\delta F}{\delta g_{\mu \nu}}}$, and $\displaystyle{\mathrm{d}\Sigma _{\mu}}$ is the outward-directed surface element on $\displaystyle{\partial M}$, and

$$\tag{1.3}
\begin{align}
\delta v^{\rho}=2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma}+2\delta g_{\nu \sigma}\nabla _{\mu}P^{\mu \nu \rho \sigma}
\end{align}
$$

in order to give rise to a well posed variational principle, we must supplement a boundary term $\displaystyle{S_{\text{boundary}}}$ such that

$$\tag{1.4}
\begin{align}
\delta S_{\text{boundary}} & =-\int _{\partial M}\delta v^{\mu}\mathrm{d}\Sigma _{\mu}+\int _{\partial M}p_{N}\delta q^{N}\mathrm{d}\Sigma
\end{align}
$$

with $\displaystyle{q^{N}}$ the intrinsic geometric quantity as well as its derivatives to the boundary, i.e., the induced metric $\displaystyle{\gamma ^{ab}, h^{ab}}$ and extrinsic curvature $\displaystyle{K^{ab}}$. if the boundary is smooth, the boundary terms involves only the surface term $\displaystyle{S_{\text{surface}}}$. and if the boundary is non-smooth, we need corner term $\displaystyle{S_{\text{corner}}}$ as well.

however this is hard to do with the original $\displaystyle{F(R)}$ gravity bulk action. this problem can be circumvented by introducing two auxiliary fields $\displaystyle{\psi _{\mu \nu \rho \sigma}}$ and $\displaystyle{\varrho _{\mu \nu \rho \sigma}}$, which have the same symmetries as $\displaystyle{R_{\mu \nu \rho \sigma}}$ and allows as to recast the original bulk action into the following form

$$\tag{1.5}
\begin{align}
S_{\text{bulk}} & =\int _{M}\varepsilon(F(\varrho _{\mu \nu \rho \sigma},g_{\mu \nu})-\psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma}))
\end{align}
$$

the variation of the new action can be expressed as

$$\tag{1.6}
\begin{align}
\delta S_{\text{bulk}} & =\int _{M}\varepsilon\left( \frac{\delta F}{\delta \varrho _{\mu \nu \rho \sigma}}\delta \varrho _{\mu \nu \rho \sigma}+\frac{\delta F}{\delta g_{\mu \nu}}\delta g_{\mu \nu}-\delta \psi ^{\mu \nu \rho \sigma}(\varrho _{\mu \nu \rho \sigma}-R_{\mu \nu \rho \sigma})-\psi ^{\mu \nu \rho \sigma}(\delta \varrho _{\mu \nu \rho \sigma}-\delta R_{\mu \nu \rho \sigma}) \right) \\
 & =
\end{align}
$$