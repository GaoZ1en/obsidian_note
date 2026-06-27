By a detailed analysis, we can reformulated the action of pure $\mathrm{AdS}_{3}$ gravity as

$$
\tag{1.1}
\begin{align}
S_{\varepsilon} & =\frac{1}{16\pi G}\int_{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }(R+2)+\frac{1}{8\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left( K^{\Gamma}-1+\frac{1}{2}\log \varepsilon \tilde{R} \right)  \\
 & +\frac{1}{8\pi G}\int_{\Sigma_{f,\varepsilon},\Sigma_{i,\varepsilon}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\frac{1}{8\pi G}\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\mathrm{d}x\sqrt{ h }(\log \varepsilon K^{H}-\eta)
\end{align}
$$

where $\displaystyle{K^{\Gamma},K^{\Sigma},K^{H}}$ are defined as

$$
\tag{1.2}
\begin{align}
K_{ab}^{\Gamma}=\gamma^{c}_{a}\nabla_{c}^{\Gamma}n_{b},\quad K_{ab}^{\Sigma}=\sigma^{c}_{a}\nabla_{c}^{\Sigma}\tau_{b},\quad K^{H}_{ab}=h^{c}_{a}\nabla_{c}^{H}u_{b}
\end{align}
$$

and $\displaystyle{\eta}$ is defined as

$$
\tag{1.3}
\begin{align}
\eta=\mathrm{arcsinh}(\tau \cdot u)
\end{align}
$$

after a detailed analysis, we find that the action (1.1) is actually well-defined.

perform a variation, we have

$$
\tag{1.4}
\begin{align}
\delta S_{\varepsilon,1} & =\frac{1}{16\pi G}\int_{M_{\varepsilon}}\mathrm{d}^{3}x\delta\left( \sqrt{ -g }\left( R+2 \right) \right) \\
 & =\frac{1}{16\pi G}\int_{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }\left(-R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}+g^{\mu \nu}\right)\delta g_{\mu \nu}+\frac{1}{16\pi G}\int_{M_{\varepsilon}}\mathrm{d}^{3}x\sqrt{ -g }\nabla^{\mu}(\nabla^{\nu}\delta g_{\mu \nu}-g^{\nu \lambda}\nabla_{\mu}\delta g_{\nu \lambda})
\end{align}
$$

$$
\tag{1.5}
\begin{align}
\delta S_{\varepsilon,2} & =\frac{1}{8\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\delta\left( \sqrt{ -\gamma }(K^{\Gamma}-1+\frac{1}{2}\log \varepsilon \tilde{R}) \right) \\
 & =\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }(-K^{\Gamma,\mu \nu}+K^{\Gamma}\gamma^{\mu \nu}-\gamma^{\mu \nu})\delta g_{\mu \nu}-\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }n^{\mu}(\nabla^{\nu}\delta g_{\mu \nu}-g^{\nu \lambda}\nabla_{\mu}\delta g_{\nu \lambda}) \\
 & -\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }D_{\nu}(\gamma^{\mu \nu}n^{\lambda}\delta g_{\mu \lambda})+\frac{1}{16\pi G}\log \varepsilon \int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }(-\tilde{R}^{\mu \nu}+\frac{1}{2}\tilde{R}\gamma^{\mu \nu})\delta g_{\mu \nu}\\
& +\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }D^{\mu}(D^{\nu}\delta g_{\mu \nu}-\gamma^{\nu \lambda}D_{\mu}\delta g_{\nu \lambda})
\end{align}
$$

$$
\tag{1.6}
\begin{align}
\delta S_{\varepsilon,3} & =\frac{1}{8\pi G}\int_{\Sigma_{\varepsilon,f}-\Sigma_{\varepsilon,i}}\mathrm{d}^{2}x\delta(\sqrt{ \sigma }K^{\Sigma}) \\
 & =\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon,f}-\Sigma_{\varepsilon,i}}\mathrm{d}^{2}x\sqrt{ \sigma }(-K^{\Sigma,\mu \nu}+K^{\Sigma}\sigma^{\mu \nu})\delta g_{\mu \nu}-\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon,f}-\Sigma_{\varepsilon,i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau^{\mu}(\nabla^{\nu}\delta g_{\mu \nu}-g^{\nu \lambda}\nabla_{\mu}\delta g_{\nu \lambda}) \\
 & -\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon,f}-\Sigma_{\varepsilon,i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tilde{\nabla}_{\nu}(\sigma^{\mu \nu}\tau^{\lambda}\delta g_{\mu \lambda}) \\
\end{align}
$$

$$
\tag{1.7}
\begin{align}
\delta S_{\varepsilon,4} & =\frac{1}{8\pi G}\log \varepsilon\int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\delta(\sqrt{ h }K^{H}) \\
 & =\frac{1}{16\pi G}\log \varepsilon\int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h }(-K^{H,\mu \nu}+K^{H}h^{\mu \nu})\delta g_{\mu \nu}-\frac{1}{16\pi G}\log \varepsilon\int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h }u^{\mu}(\nabla^{\nu}\delta g_{\mu \nu}-g^{\nu \lambda}\nabla_{\mu}\delta g_{\nu \lambda}) \\
 & -\frac{1}{16\pi G}\log \varepsilon\int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h }\tilde{D}_{\nu}(h^{\mu \nu}u^{\lambda}\delta g_{\mu \lambda})
\end{align}
$$

and finally

$$
\tag{1.8}
\begin{align}
\delta S_{\varepsilon,5} & =-\frac{1}{8\pi G}\log \varepsilon \int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\delta(\sqrt{ h }\eta) \\
 & =-\frac{1}{16\pi G}\log \varepsilon \int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h }h^{\mu \nu}\eta \delta g_{\mu \nu}-\frac{1}{8\pi G}\log \varepsilon \int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h } \frac{\delta(g_{\mu \nu}\tau^{\mu}u^{\nu})}{\sqrt{ 1+(\tau \cdot u)^{2} }} \\
 & =-\frac{1}{16\pi G}\log \varepsilon \int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h }h^{\mu \nu}\eta \delta g_{\mu \nu}+\frac{1}{16\pi G}\log \varepsilon \int_{\partial \Sigma_{\varepsilon,f}-\partial \Sigma_{\varepsilon,i}}\mathrm{d}x\sqrt{ h } \frac{1}{\cosh \eta}\left( 2\tau^{\mu}u^{\nu}\delta g_{\mu \nu}+\sinh \eta\tau^{\alpha}\tau^{\beta}\delta g_{\alpha \beta}-\sinh \eta u^{\alpha}u^{\beta}\delta g_{\alpha \beta}\right)
\end{align}
$$

Here the corner embedding is held fixed, with $\tau^\mu\tau_\mu=-1$, $u^\mu u_\mu=1$, and $\tau\cdot u=\sinh\eta$.

then the total derivative terms in $\displaystyle{\delta S_{\varepsilon,2}}$ and $\displaystyle{\delta S_{\varepsilon,3}}$ are

$$
\tag{1.9}
\begin{align}
-\frac{1}{16\pi G}\int_{\Gamma_{\varepsilon}}\mathrm{d}^{2}x\sqrt{ -\gamma }D_{\nu}(\gamma^{\mu \nu}n^{\lambda}\delta g_{\mu \lambda})
\end{align}
$$

$$
\tag{1.10}
\begin{align}
-\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon,f}-\Sigma_{\varepsilon,i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tilde{\nabla}_{\nu}(\sigma^{\mu \nu}\tau^{\lambda}\delta g_{\mu \lambda} & )
\end{align}
$$
