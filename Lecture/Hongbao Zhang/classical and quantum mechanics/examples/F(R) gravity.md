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
 & =\int _{\partial M}\mathrm{d}\Sigma _{\rho}(2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{\nu \sigma})-2\int _{M}\varepsilon \nabla _{\rho}P_{\mu}^{~\nu \rho \sigma}
\end{align}
$$

$$\tag{.}
\begin{align}
\delta R^{\rho}_{~\sigma \mu \nu} & =\nabla _{\mu}\delta \Gamma ^{\rho}_{~\sigma \nu}-\nabla _{\nu}\delta \Gamma ^{\rho}_{~\mu \sigma} \\
\delta \Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\nabla _{\mu}\delta g_{\sigma \nu}+\nabla _{\nu}\delta g_{\mu \sigma}-\nabla _{\sigma}\delta g_{\mu \nu})
\end{align}
$$

here $\displaystyle{\mathrm{d}\Sigma _{\mu}}$ is the outward-directed surface element on $\displaystyle{\partial M}$, and

$$\tag{1.3}
\begin{align}
\delta v^{\rho}=2P_{\mu}^{~\nu \rho \sigma}\delta \Gamma ^{\mu}_{~\nu \sigma}+2\delta g_{\nu \sigma}\nabla _{\mu}P^{\mu \nu \rho \sigma}
\end{align}
$$

with $\displaystyle{P^{\mu \nu \rho \sigma}=\frac{\delta F}{\delta R_{\mu \nu \rho \sigma}}}$. 

