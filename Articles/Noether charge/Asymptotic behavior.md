In this file, we will reexamine the asymptotic behavior of some relevant quantities, and recover some relations after expand all the terms. For future convenience, we make the following conventions

$$
\begin{align}
\Delta g_{zz}=g_{zz}-\frac{1}{z^{2}},\Delta g_{ab}=g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \\
\Delta \xi^{a}=\xi^{a}-\xi^{(0)a},\Delta \xi^{z}=\xi^{z}-\xi^{(1)z} \\
\Delta \xi_{a}=\xi_{a}-\xi^{(0)}_{a},\Delta \xi_{a}=\xi_{z}-\xi^{(1)}_{z}
\end{align}
$$

## Action

In $\mathrm{AdS}_{3}$ pure gravity, the action is defined as

$$
\begin{align}
S & =\lim_{ \varepsilon \to \infty } S_{\varepsilon} \\
S_{\varepsilon} & =\int_{M_{\varepsilon}} \mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell
\end{align}
$$

where $\mathbf{L}$ and $\ell$ are defined as

$$
\begin{align}
\mathbf{L} & =-\frac{1}{16\pi G}(R+2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\ell & =\frac{1}{8\pi G}(K-1+\log z \tilde{R}-2z\log z\gamma^{ab}D_{a}g_{zb})\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

For future convenience, we decompose $\ell$ into

$$
\begin{align}
\ell & =\ell_{1}+\ell_{2} \\
\ell_{1} & =\frac{1}{8\pi G}(K-1)\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\ell_{2} & =\frac{1}{8\pi G}\log z(\tilde{R}-2z\gamma^{ab}D_{a}g_{zb})\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

Expand $\mathbf{L}$ and $\ell$ we have

$$
\begin{align}
\mathbf{L} & =-\frac{1}{16\pi G}(R+2)\cdot \frac{1}{2!}\varepsilon_{za_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =\frac{1}{16\pi G}(4z^{-3}-z^{-1}R^{(0)}+2g^{(0)ab}\partial_{z}\Delta g_{ab}-4z^{2}g^{(0)ab}g_{za}\partial_{z}g_{zb}+2\partial_{z}g_{zz}-4zg^{(0)ab}g_{za}g_{zb} \\
 & -2zg^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}+zg^{(0)ab}\partial_{z}^{2}\Delta g_{ab}+\mathcal{O}(z))\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\ell_{1} & =\frac{1}{8\pi G}\left( z^{-2}-\frac{1}{2}g^{(0)ab}\Delta g_{ab}+z^{2}g^{(0)ab}g_{za}g_{zb}-\Delta g_{zz}+zg^{(0)ab}D_{a}^{(0)}g_{zb}-\frac{1}{2}zg^{(0)ab}\partial_{z}\Delta g_{ab} +\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\ell_{2} & =\frac{1}{8\pi G}\log z(R^{(0)}-2zD_{a}^{(0)}g_{zb})\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

## Variation of the Action

Take a variation of the action, we have

$$
\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta \\
(\Theta+\delta \ell)_{\Gamma_{\varepsilon}} & =(\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\mathbf{C})_{\Gamma_{\varepsilon}}
\end{align}
$$

where

$$
\begin{align}
\mathbf{E}^{\mu \nu} & =\frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}+g^{\mu \nu} \right)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\Theta & =\frac{1}{16\pi G}(g^{\rho \mu}\nabla^{\nu}\delta g_{\mu \nu}-g^{\mu \nu}\nabla^{\rho}\delta g_{\mu \nu})\cdot \frac{1}{2!}\varepsilon_{\rho \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
\mathbf{F}^{\mu \nu}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}(-K^{\mu \nu}+K\gamma^{\mu \nu}-\gamma^{\mu \nu})\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu_0\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\mathbf{C}|_{\Gamma_{\varepsilon}} & =-\frac{1}{16\pi G}\gamma^{\mu \nu}n^{\rho}\delta g_{\nu \rho}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}}+\frac{1}{16\pi G}\log z(\gamma^{ab}D^{c}\delta \gamma_{bc}0\gamma^{bc}D^{a}\delta \gamma_{bc})\varepsilon^{(\Gamma_{\varepsilon})}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & -\frac{1}{8\pi G}z\log z\left( \gamma^{ab}\delta g_{zb}-\gamma^{ac}\gamma^{bd}g_{zb}\delta \gamma_{cd}+\frac{1}{2} \gamma^{ab}\gamma^{cd}g_{zb}\delta \gamma_{cd}\right)\varepsilon^{(\Gamma_{\varepsilon})}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

For future convenience, we decompose $\mathbf{C}$ into

$$
\begin{align}
\mathbf{C} & =\mathbf{C_{1}}+\mathbf{C_{2}} \\
\mathbf{C_{1}} & =-\frac{1}{16\pi G}\gamma^{\mu \nu}n^{\rho}\delta g_{\nu \rho}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
\mathbf{C_{2}} & =\frac{1}{16\pi G}\log z(\gamma^{ab}D^{c}\delta \gamma_{bc}-\gamma^{bc}D^{a}\delta \gamma_{bc})\varepsilon^{(\Gamma_{\varepsilon})}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}z\log z(-2\gamma^{ab}\delta g_{zb}+2\gamma^{ac}\gamma^{bd}g_{zb}\delta \gamma_{cd}-\gamma^{ab}\gamma^{cd}g_{zb}\delta \gamma_{cd})\varepsilon^{(\Gamma_{\varepsilon})}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

In order to expand $\mathbf{E}^{\mu \nu}\delta g_{\mu \nu},\mathbf{F}^{\mu \nu}\delta g_{\mu \nu},\Theta$ and $\mathbf{C}$, we first introduce some relevant quantities

$$
\begin{align}
\nabla_{z}\delta g_{zz} & =\partial_{z}\delta g_{zz}+2z^{-1}\delta g_{zz}-2zg^{(0)ab}g_{za}-2z^{2}g^{(0)ab}\partial_{z}g_{za}\delta g_{zb}+\mathcal{O}(z) \\
\nabla_{z}\delta g_{za} & =\partial_{z}\delta g_{za}+2z^{-1}\delta g_{za}-z^{-1}g^{(0)bc}g_{zc}\delta g_{ab}^{(0)}-g^{(0)bc}\partial_{z}g_{zc}\delta g_{ab}^{(0)}+\mathcal{O}(z^{0}) \\
\nabla_{z}\delta g_{ab} & =\mathcal{O}(z^{-1}) \\
\nabla_{a}\delta g_{zz} & =2z^{-1}\delta g_{za}+\mathcal{O}(z^{0}) \\
\nabla_{a}\delta g_{zb} & =z^{-3}\delta g_{ab}^{(0)}+z^{-1}\delta \Delta g_{ab}-z^{-1}\Delta g_{zz}\delta g_{ab}^{(0)}-z^{-1}\delta\Delta g_{ac}g^{(0)cd}\Delta g_{bd}^{(0)}-\frac{1}{2}\partial_{z}\Delta g_{ac}g^{(0)cd}\delta g_{bd}^{(0)}+D_{a}^{(0)}\delta g_{za} \\
 & -\frac{1}{2}D_{a}^{(0)}g_{zc}g^{(0)cd}\delta g_{bd}^{(0)}+\frac{1}{2}D_{c}^{(0)}g_{za}g^{(0)cd}\delta g_{bd}^{(0)}-zg_{za}\delta g_{zb}+zg^{(0)}_{ab}g^{{(0)cd}}g_{zc}\delta g_{zd}+zg_{za}g^{(0)cd}g_{zc}\delta g_{bd}^{(0)}+\mathcal{O}(z) \\
\nabla_{a}\delta g_{bc} & =z^{-2}D_{a}^{(0)}\delta g_{bc}^{(0)}+z^{-1}g_{ab}^{(0)}g^{(0)de}g_{ze}\delta g_{cd}^{(0)}+z^{-1}g_{ac}^{(0)}g^{(0)de}g_{ze}\delta g_{bd}^{(0)}-z^{-1}g_{ab}^{(0)}\delta g_{zc}-z^{-1}g_{ac}^{(0)}\delta g_{zb}+\mathcal{O}(z^{0})
\end{align}
$$

Insert these into the definition, we have

$$
\begin{align}
\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\frac{1}{16\pi G}\left( -(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+\frac{3}{2}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)} \right. \\
 & +\frac{1}{2}g^{(0)ab}\partial_{z}g_{zz}\delta g_{ab}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}-z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}\partial_{z}g_{zb}\delta g^{(0)}_{cd} \\
 & \left.+\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}^{2}\Delta g_{ab}\delta g_{cd}^{(0)}-z^{2}g^{(0)ab}g^{(0)cd}g_{za}\partial_{z}g_{zb}\delta g_{cd}^{(0)}\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\Theta & =\frac{1}{16\pi G}\left(-z^{-1}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}\delta g^{(0)}_{cd}-g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}\delta g_{cd}^{(0)}\right. \\
 & \left.-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})g_{zb}\delta g_{cd}^{(0)}-g^{(0)ab}\delta g_{zb}+zg^{(0)ab}\partial_{z}\delta g_{zb}+\mathcal{O}(z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}z\wedge \mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}\left(-z^{-2}g^{(0)ab}\delta g_{ab}^{(0)}+2\delta g_{zz}+\frac{1}{2}\Delta g_{zz}g^{(0)ab}\delta g_{ab}^{(0)}+g^{(0)ab}\delta\Delta g_{ab}+zg^{(0)ab}\partial_{z}\delta\Delta g_{ab}\right. \\
 & -\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}-zg^{(0)ab}D_{a}^{(0)}\delta g_{zb}-4z^{2}g^{(0)ab}g_{za}\delta g_{zb} \\
 & -z(g^{(0)ab}g^{(0)cd}-g^{(0ac)g^{(0)bd}})g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}+2z^{2}g^{(0)ac}g^{(0)bd}g_{za}g_{zb}\delta g_{cd}^{(0)} \\
 & \left.-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathbf{F}^{\mu \nu}\delta g_{\mu \nu} & =\frac{1}{16\pi G}\left( \frac{1}{2}g^{(0)ab}\Delta g_{zz}\delta g_{ab}^{(0)}-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}+(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\Delta g_{ab}\delta g_{cd}^{(0)} \right. \\
 & \left.-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}\right)\cdot \frac{1}{2!}\varepsilon_{a_0a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathbf{C_{1}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}(zg^{(0)ab}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z))\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
\mathbf{C_{2}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\log z((g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}\delta g_{zb}+2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{2}))\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

Then we will verify that

$$
\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta \\
(\Theta+\delta \ell_{1})_{\Gamma_{\varepsilon}} & =(\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{dC_{1}})_{\Gamma_{\varepsilon}} \\
\delta \ell_{2}|_{\Gamma_{\varepsilon}} & =\mathrm{dC_{2}}|_{\Gamma_{\varepsilon}}
\end{align}
$$

$$
\begin{align}
\delta \mathbf{L} & =\frac{1}{16\pi G}\left(2z^{-3}g^{(0)ab}\delta g^{(0)}_{ab}+z^{-1}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}D_{b}^{(0)}\delta g_{cd}^{(0)}+2\partial_{z}\delta g_{zz}+\partial_{z}\Delta g_{zz}g^{(0)ab}\delta g_{ab}^{(0)}\right. \\
 & -2g^{(0)ac}g^{(0)bd}\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}+g^{(0)ab}g^{(0)cd}\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}-g^{(0)ac}g^{(0)bd}\partial_{z}^{2}\Delta g_{ab}\delta g_{cd}^{(0)}+\frac{1}{2}g^{(0)ab}g^{(0)cd}\partial_{z}^{2}\Delta g_{ab}\delta g_{cd}^{(0)} \\
 & +2g^{(0)ab}\partial_{z}\delta\Delta g_{ab}+zg^{(0)ab}\partial_{z}^{2}\delta\Delta g_{ab}+2zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}\partial_{z}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}D_{a}^{(0)}\partial_{z}g_{zb}\delta g_{cd}^{(0)} \\
 & +2zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}\partial_{z}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}D_{a}^{(0)}\partial_{z}\delta g_{zb}-8zg^{(0)ab}g_{za}\delta g_{zb} \\
 & -4z^{2}g^{(0)ab}\partial_{z}g_{za}\delta g_{zb}-4z^{2}g^{(0)ab}g_{za}\partial_{z}\delta g_{zb}+4zg^{(0)ac}g^{(0)bd}g_{za}g_{zb}\delta g_{cd}^{(0)}-2zg^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)} \\
 & \left.+4z^{2}g^{(0)ac}g^{(0)bd}g_{za}\partial_{z}g_{zb}\delta g_{cd}^{(0)}-2z^{2}g^{(0)ab}g^{(0)cd}g_{za}\partial_{z}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z)\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge\mathrm{d}x^{a_{1}}
\end{align}
$$

$$  
\begin{align}  
\delta \ell_{1}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\left(z^{-2}g^{(0)ab}\delta g_{ab}^{(0)}-2\delta g_{zz}-\Delta g_{zz}g^{(0)ab}\delta g_{ab}^{(0)}-g^{(0)ab}\delta \Delta g_{ab}-zg^{(0)ab}\partial_{z}\delta \Delta g_{ab}+g^{(0)ac}g^{(0)bd}\Delta g_{ab}\delta g_{cd}^{(0)}+zg^{(0)ac}g^{(0)bd}\partial_{z}\Delta g_{ab}\delta g_{ab}^{(0)}\right. \\  
 & -\frac{1}{2}g^{(0)ab}g^{(0)cd}\Delta g_{ab}\delta g^{(0)}_{cd}-\frac{1}{2}zg^{(0)ab}g^{(0)cd}\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}-2zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+zg^{(0)ab}g^{(0)cd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}-2zg^{(0)ac}g^{(0)bd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)} \\  
 & \left.+zg^{(0)ab}g^{(0)cd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}+2zg^{(0)ab}D_{a}^{(0)}\delta g_{zb}-2z^{2}g^{(0)ac}g^{(0)bd}g_{za}g_{zb}\delta g_{cd}^{(0)}+z^{2}g^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}+4z^{2}g^{(0)ab}g_{za}\delta g_{zb}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}  
\end{align}  
$$  
  
$$  
\begin{align}  
\mathrm{d}\ell_{2}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\log z\left( -(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}D_{b}^{(0)}\delta g_{cd}^{(0)}+2zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}\right. \\  
 & \left.+2zg^{(0)ac}g^{(0)bd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}D_{a}^{(0)}\delta g_{zb}\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}  
\end{align}
$$

$$
\begin{align}
\mathrm{d}\Theta & =\frac{1}{16\pi G}\left(z^{-1}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}D_{b}^{(0)}\delta g_{cd}^{(0)}+g^{(0)ab}g^{(0)cd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+g^{(0)ac}g^{(0)bd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}+zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}\partial_{z}g_{zb}+2zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}\right. \\
 & -zg^{(0)ab}g^{(0)cd}\partial_{z}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-\frac{1}{2}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}-\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}^{2}\Delta g_{ab}\delta g_{cd}^{(0)}+2g^{(0)ab}\partial_{z}\delta \Delta g_{ab}+zg^{(0)ab}\partial_{z}^{2}\delta \Delta g_{ab} \\
 & -2zg^{(0)ab}D_{a}^{(0)}\partial_{z}\delta g_{zb}-8zg^{(0)ab}g_{za}\delta g_{zb}-4z^{2}g^{(0)ab}\partial_{z}g_{za}\delta g_{zb}-4z^{2}g^{(0)ab}g_{za}\partial_{z}\delta g_{zb}+2z^{-3}g^{(0)ab}\delta g_{ab}^{(0)}+2\partial_{z}\delta g_{zz}+\frac{1}{2}\partial_{z}\Delta g_{zz}g^{(0)ab}\delta g_{ab}^{(0)} \\
 & \left.+4zg^{(0)ac}g^{(0)bd}g_{za}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}+4z^{2}g^{(0)ac}g^{(0)bd}g_{za}\partial_{z}g_{zb}\delta g_{cd}^{(0)}-z^{2}g^{(0)ab}g^{(0)cd}g_{za}\partial_{z}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z)\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathbf{F}^{\mu \nu}\delta g_{\mu \nu} & =\frac{1}{16\pi G}\left( \frac{1}{2}g^{(0)ab}\Delta g_{zz}\delta g_{ab}^{(0)}+(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\Delta g_{ab}\delta g_{cd}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)} \right. \\
 & \left.+\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\Delta g_{ab}\delta g_{cd}^{(0)}-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{za}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathbf{C_{1}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\left( zg^{(0)ab}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z) \right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
\mathbf{C_{2}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\log z \left( (g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}\delta g_{zb}+2zg^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{2})\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathrm{d}\mathbf{C_{1}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\left(-zg^{(0)ab}D_{a}^{(0)}\delta g_{zb}+zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+zg^{(0)ac}g^{(0)bd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}+\mathcal{O}(z)\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}\left(g^{(0)ab}\delta g_{zb}+zg^{(0)ab}\partial_{z}\delta g_{zb}-g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{0})\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}z\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathrm{d}\mathbf{C_{2}}|_{\Gamma_{\varepsilon}} & =\frac{1}{16\pi G}\log z(-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{a}^{(0)}D_{b}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}D_{a}^{(0)}\delta g_{zb}+2zg^{(0)ac}g^{(0)bd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)} \\
 & +2zg^{(0)ac}g^{(0)bd}g_{zb}D_{a}^{(0)}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}D_{a}^{(0)}g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z^{2}))\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}\left(z^{-1}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}-2zg^{(0)ab}+2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)} \right.\\
 & \left.+\log z(-2g^{(0)ab}\delta g_{zb}-2zg^{(0)ab}\partial_{z}\delta g_{zb}+2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}+2zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}\delta g_{cd}^{(0)}-g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}-zg^{(0)ab}g^{(0)cd}\partial_{z}g_{zb}\delta g_{cd}^{(0)})+\mathcal{O}(z\log z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

## Infinitesimal Transformations of the Action

Acting the diffeomorphism

$$
\begin{align}
\xi^{z} & =z\xi^{(1)z}+\mathcal{O}(z^{3}) \\
\xi^{a} & =\xi^{(0)a}+\mathcal{O}(z^{2}) 
\end{align}
$$

we have

$$
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} &  =\mathrm{d}(\xi \cdot \mathbf{L}) \\
\xi \cdot \mathbf{L}+X_{\xi}\cdot \delta \ell &  =\mathrm{d}\mu_{\xi}+\nu_{\xi}
\end{align}
$$

where

$$
\begin{align}
\mu_{\xi} & =\frac{1}{8\pi G}((K-1)\gamma^{\mu}_{\nu}\xi^{\nu}-D^{\mu}(n_{\nu}\xi^{\nu}))\varepsilon_{\mu \mu_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{\mu_{1}} \\
 & -\frac{1}{16\pi G}\log z (\gamma^{ab}\gamma^{cd}-\gamma^{ac}\gamma^{bd})D_{b}(X_{\xi}\cdot \delta \gamma_{cd})\varepsilon_{aa_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{1}} \\
 & -\frac{1}{8\pi G}z\log z\left( \gamma^{ab}(X_{\xi}\cdot \delta g_{zb})-\gamma^{ab}(X_{\xi}\cdot \delta \gamma_{bc})+\frac{1}{2}\gamma^{ab}\gamma^{cd}(X_{\xi}\cdot \delta g_{cd}) \right)\varepsilon_{aa_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{1}} \\
\nu_{\xi} & =\frac{1}{16\pi G}(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}\xi^{\rho}\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

For future convenience, we decompose $\mu_{\xi}$ into

$$
\begin{align}
\mu_{\xi} & =\mu_{\xi 1}+\mu_{\xi 2} \\
\mu_{\xi 1} & =\frac{1}{8\pi G}((K-1)\gamma^{\mu}_{\nu}\xi^{\nu}-\gamma^{\mu \nu}D_{\nu}(n_{\rho}\xi^{\rho}))\varepsilon_{aa_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{1}} \\
\mu_{\xi 2} & =\frac{1}{16\pi G}\log z(\gamma^{ac}\gamma^{bd}-\gamma^{ab}\gamma^{cd})D_{b}(X_{\xi}\cdot \gamma_{cd})\varepsilon_{aa_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}z\log z(-2\gamma^{ab}(X_{\xi}\cdot \delta g_{zb})+2\gamma^{ac}\gamma^{bd}g_{zb}(X_{\xi}\cdot \delta \gamma_{cd})-\gamma^{ab}\gamma^{cd}g_{zb}(X_{\xi}\cdot \delta \gamma_{cd}))\varepsilon_{aa_{1}}^{(\Gamma_{\varepsilon})}\mathrm{d}x^{a_{1}}
\end{align}
$$

In order to expand them, we introduce some relevant quantities

$$
\begin{align}
X_{\xi}\cdot \delta g_{zz} & =-2z^{-3}\Delta \xi^{a}+2\Delta g_{zz}\xi^{(1)z}+D_{a}^{(0)}\Delta g_{zz}\xi^{(0)a}+z\xi^{(1)z}\partial_{z}\Delta g_{zz}+2g_{za}\partial_{z}\Delta \xi^{a}+2z^{-2}\partial_{z}\Delta \xi^{a}+\mathcal{O}(z^{2}) \\
X_{\xi}\cdot \delta g_{za} & =g_{za}\xi^{(1)z}+{g_{zb}}D_{a}^{(0)}\xi^{(0)b}+z^{-1}D_{a}^{(0)}\xi^{(1)z}+\xi^{(0)b}D_{b}^{(0)}g_{za}+z\xi^{(1)z}\partial_{z}g_{za}+z^{-2}\partial_{z}\Delta \xi_{a}+\mathcal{O}(z) \\
X_{\xi}\cdot \delta g_{ab} & =-z^{-3}g_{ab}^{(0)}\Delta \xi^{z}+D_{a}^{(0)}\xi^{(0)c}\Delta g_{bc}+D_{b}^{(0)}\xi^{(0)c}\Delta g_{ac}+z^{-2}(D_{a}^{(0)}\Delta \xi_{b}+D_{b}^{(0)}\Delta \xi_{a})-2z^{-2}g_{ab}^{(0)}\xi^{(1)z} \\
 & +z^{-2}(D_{a}^{(0)}\xi_{b}^{(0)}+D_{b}^{(0)}\xi_{a}^{(0)})+\xi^{(0)c}D_{c}^{(0)}\Delta g_{ab}+zg_{za}D_{b}^{(0)}\xi^{(1)z}+zg_{zb}D_{a}^{(0)}\xi^{(1)z}+z\xi^{(1)z}\partial_{z}\Delta g_{ab}+\mathcal{O}(z^{2})
\end{align}
$$

Then

$$
\begin{align}
\mu_{\xi1} & = \frac{1}{16\pi G}\left(2z^{-2}\xi^{(0)a}-2\Delta g_{zz}\xi^{(0)a}-g^{(0)bc}\Delta g_{bc}\xi^{(0)a}-zg^{(0)bc}\Delta g_{bc}\xi^{(0)a}+2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}\right. \\
 & \left.+2z^{2}g^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+2z^{-2}\Delta \xi^{a}+2g^{(0)ab}D_{b}^{(0)}\xi^{(1)z}+2zg^{(0)ab}g_{zb}\xi^{(1)z}\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
\mu_{\xi 2} & =\frac{1}{16\pi G}\log z\left(D_{b}^{(0)}((g^{(0)bc}D_{c}^{(0)a}-g^{(0)ac}D_{c}^{(0)}\xi^{(0)b})+2z(g^{(0)bc}g_{zc}\xi^{(0)a}-g^{(0)ac}g_{zc}\xi^{(0)c}))\right. \\
 & \left.+R^{(0)}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2z^{-1}\partial_{z}\Delta \xi^{a}-2zg^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}+\mathcal{O}(z^{2}\log z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
\nu_{\xi} & =-\frac{1}{16\pi G}R^{(0)}\xi^{(1)z}\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}+\mathcal{O}(z^{2})
\end{align}
$$

$$
\begin{align}
\xi \cdot \mathbf{L} & =\frac{1}{16\pi G}\left(4z^{-2}-R^{(0)}\xi^{(1)z}+2zg^{(0)ab}\partial_{z}\Delta g_{ab}\xi^{(1)z}-4z^{3}g^{(0)ab}g_{za}\partial_{z}g_{zb}\xi^{(1)z}+2z\partial_{z}\Delta g_{zz}\xi^{(1)z}-4z^{2}g^{(0)ab}g_{za}g_{zb}\xi^{(1)z}-2z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}\xi^{(1)z}\right. \\
 & \left.+z^{2}g^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}+4z^{-3}\Delta \xi^{z}+\mathcal{O}(z)\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}+\frac{1}{16\pi G}\left(-4z^{-3}\xi^{(0)a}+z^{-1}R^{(0)}\xi^{(0)a}-2g^{(0)bc}\partial_{z}\Delta g_{bc}\xi^{(0)a}+4z^{2}g^{(0)bc}g_{zb}\partial_{z}g_{zc}\xi^{(0)a}\right. \\
 & \left.-2\partial_{z}\Delta g_{zz}\xi^{(0)a}+4zg^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(1)a}-zg^{(0)bc}\partial_{z}^{2}\Delta g_{bc}\xi^{(0)a}-4z^{-3}\Delta \xi^{a}+\mathcal{O}(z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}z\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathrm{d}(\xi \cdot \mathbf{L}) & =\frac{1}{16\pi G}\left(-8z^{-3}\xi^{(1)z}+2g^{(0)ab}\partial_{z}\Delta g_{ab}\xi^{(1)z}+2zg^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}-20z^{2}g^{(0)ab}g_{za}\partial_{z}g_{zb}\xi^{(1)z}-4z^{3}g^{(0)ab}\partial_{z}g_{za}\partial_{z}g_{zb}\xi^{(1)z}\right. \\
 & -4z^{3}g^{(0)ab}g_{za}\partial_{z}^{2}g_{zb}\xi^{(1)z}+2\partial_{z}\Delta g_{zz}\xi^{(1)z}+2z\partial_{z}^{2}\Delta g_{zz}\xi^{(1)z}-8zg^{(0)ab}g_{za}g_{zb}\xi^{(1)z}-4zg^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}\xi^{(1)z}-2z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}^{2}g_{zb}\xi^{(1)z} \\
 & +2zg^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}+z^{2}g^{(0)ab}\partial_{z}^{3}\Delta g_{ab}\xi^{(1)z}-12z^{-4}\Delta \xi^{z}+4z^{-3}\partial_{z}\Delta \xi^{z}+2g^{(0)bc}\partial_{z}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}+4z^{-3}D_{a}^{(0)}\xi^{(0)a}-z^{-1}D_{a}^{(0)}R^{(0)}\xi^{(0)a} \\
 & -z^{-1}R^{(0)}D_{a}^{(0)}\xi^{(0)a}+2g^{(0)bc}D_{a}^{(0)}\partial_{z}\Delta g_{bc}\xi^{(0)a}-4z^{2}g^{(0)bc}D_{a}^{(0)}g_{zb}\partial_{z}g_{zc}\xi^{(0)a}-4z^{2}g^{(0)bc}g_{zb}D_{a}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}+2D_{a}^{(0)}\partial_{z}\Delta g_{zz}\xi^{(0)a} \\
 & +2\partial_{z}\Delta g_{zz}D_{a}^{(0)}\xi^{(0)a}-8zg^{(0)bc}g_{zb}D_{a}^{(0)}g_{zc}\xi^{(0)a}-4zg^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}-2zg^{(0)bc}D_{a}^{(0)}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}D_{a}^{(0)}\xi^{(0)a} \\
 & \left.+zg^{(0)bc}D_{a}^{(0)}\partial_{z}^{2}\Delta g_{bc}\xi^{(0)a}+zg^{(0)bc}\partial_{z}^{2}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}+4z^{-3}D_{a}^{(0)}\Delta \xi^{a}-4z^{2}g^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}+\mathcal{O}(z^{0})\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\frac{1}{16\pi G}\left(-8z^{-3}\xi^{(1)z}+2g^{(0)ab}\partial_{z}\Delta g_{ab}\xi^{(1)z}+2zg^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}-20z^{2}g^{(0)ab}g_{za}\partial_{z}g_{zb}\xi^{(1)z}-4z^{3}g^{(0)ab}\partial_{z}g_{za}\partial_{z}g_{zb}\xi^{(1)z}\right. \\
 & -4z^{3}g^{(0)ab}g_{za}\partial_{z}^{2}g_{zb}\xi^{(1)z}+2\partial_{z}\Delta g_{zz}\xi^{(1)z}+2z\partial_{z}^{2}\Delta g_{zz}\xi^{(1)z}-8zg^{(0)ab}g_{za}g_{zb}\xi^{(1)z}-4zg^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}\xi^{(1)z}-2z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}^{2}g_{zb}\xi^{(1)z} \\
 & +2zg^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}+z^{2}g^{(0)ab}\partial_{z}^{3}\Delta g_{ab}\xi^{(1)z}-12z^{-4}\Delta \xi^{z}+4z^{-3}\partial_{z}\Delta \xi^{z}+2g^{(0)bc}\partial_{z}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}+4z^{-3}D_{a}^{(0)}\xi^{(0)a}-z^{-1}D_{a}^{(0)}R^{(0)}\xi^{(0)a} \\
 & -z^{-1}R^{(0)}D_{a}^{(0)}\xi^{(0)a}+2g^{(0)bc}D_{a}^{(0)}\partial_{z}\Delta g_{bc}\xi^{(0)a}-4z^{2}g^{(0)bc}D_{a}^{(0)}g_{zb}\partial_{z}g_{zc}\xi^{(0)a}-4z^{2}g^{(0)bc}g_{zb}D_{a}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}+2D_{a}^{(0)}\partial_{z}\Delta g_{zz}\xi^{(0)a} \\
 & +2\partial_{z}\Delta g_{zz}D_{a}^{(0)}\xi^{(0)a}-8zg^{(0)bc}g_{zb}D_{a}^{(0)}g_{zc}\xi^{(0)a}-4zg^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}-2zg^{(0)bc}D_{a}^{(0)}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}D_{a}^{(0)}\xi^{(0)a} \\
 & \left.+zg^{(0)bc}D_{a}^{(0)}\partial_{z}^{2}\Delta g_{bc}\xi^{(0)a}+zg^{(0)bc}\partial_{z}^{2}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}+4z^{-3}D_{a}^{(0)}\Delta \xi^{a}-4z^{2}g^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}+\mathcal{O}(z^{0})\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & =\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

$$
\begin{align}
X_{\xi}\cdot \delta \ell_{1} & = \frac{1}{16\pi G}\left(-4z^{-3}\Delta \xi^{z}-4\delta g_{zz}\xi^{(1)z}-g^{(0)bc}D_{a}^{(0)}\Delta g_{bc}\xi^{(0)a}-2D_{a}^{(0)}\Delta g_{zz}\xi^{(1)z}+2z^{-2}D_{a}^{(0)}\Delta \xi^{a}-g^{(0)bc}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}-2\Delta g_{zz}D_{a}^{(0)}\xi^{(0)a}-4z^{-2}\xi^{(1)z}\right. \\
 & +2z^{-2}D_{a}^{(0)}\xi^{(0)a}+2g^{(0)ab}D_{a}^{(0)}D_{b}^{(0)}x^{(1)z}+2z^{2}g^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}-4g_{za}\partial_{z}\Delta \xi^{a}+4z^{2}g^{(0)ab}g_{za}g_{zb}\xi^{(1)z}+4z^{2}g^{(0)bc}g_{zb}\xi^{(0)a}D_{a}^{(0)}g_{zc}+2zg^{(0)ab}g_{zb}D_{a}^{(0)}\xi^{(1)z} \\
 & +2zg^{(0)bc}D_{b}^{(0)}g_{zc}D_{a}^{(0)}\xi^{(0)a}+4z^{3}g^{(0)ab}g_{za}\partial_{z}g_{zb}\xi^{(1)z}+4g_{za}\partial_{z}\Delta \xi^{a}+2zg^{(0)ab}D_{a}^{(0)}g_{zb}\xi^{(1)z}+2zg^{(0)bc}D_{a}^{(0)}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2zg^{(0)ab}\partial_{z}g_{ab}\xi^{(1)z} \\
 & \left.-zg^{(0)bc}\partial_{z}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}-2z\partial_{z}\Delta g_{zz}\xi^{(1)z}-zg^{(0)bc}D_{a}^{(0)}\partial_{z}\Delta g_{bc}\xi^{(0)a}+2z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}\xi^{(1)z}-z^{2}g^{(0)ab}\partial_{z}^{2}\Delta g_{ab}\xi^{(1)z}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\begin{align}
\mathrm{d}\mu_{\xi 1} & =\frac{1}{16\pi G}\left(-2z^{-2}D_{a}^{(0)}\xi^{(0)a}+2D_{a}^{(0)}\Delta g_{zz}\xi^{(0)a}+2\Delta_{zz}D_{a}^{(0)}\xi^{(0)a}+g^{(0)bc}D_{a}^{(0)}\Delta g_{bc}\xi^{(0)a}+g^{(0)bc}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}+zg^{(0)bc}D_{a}^{(0)}\Delta g_{bc}\xi^{(0)a}+zg^{(0)bc}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)a}\right. \\
 & -2zg^{(0)bc}D_{a}^{(0)}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}g_{zc}D_{a}^{(0)}\xi^{(0)a}-4z^{2}g^{(0)bc}g_{zb}D_{a}^{(0)}g_{zc}\xi^{(0)a}-2z^{2}g^{(0)bc}g_{zb}g_{zc}D_{a}^{(0)}\xi^{(0)a}-2z^{-2}D_{a}^{(0)}\Delta \xi^{a}-2g^{(0)ab}D_{a}^{(0)}D_{b}^{(0)}\xi^{(1)z} -2zg^{(0)ab}D_{a}^{(0)}g_{zb}\xi^{(1)z}\\
 & \left.-2zg^{(0)ab}g_{zb}D_{a}^{(0)}\xi^{(1)z}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}+\frac{1}{16\pi G}\left(-4z^{-3}\xi^{(0)a}-2\partial_{z}\Delta g_{zz}\xi^{(0)a}-2g^{(0)bc}\partial_{z}\Delta g_{bc}\xi^{(0)a}-zg^{(0)bc}\partial_{z}^{2}\Delta g_{bc}\xi^{(0)a}+2g^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}\right. \\
 & \left.+2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}+4zg^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+4z^{2}g^{(0)bc}g_{zb}\partial_{z}g_{zc}\xi^{(0)a}-4z^{-3}\Delta \xi^{a}+2z^{-2}\partial_{z}\Delta \xi^{a}+2g^{(0)ab}D_{b}^{(0)}\xi^{(1)z}+2g^{(0)ab}g_{zb}\xi^{(1)z}+2zg^{(0)ab}\partial_{z}g_{zb}\xi^{(1)z}+\mathcal{O}(z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}z\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$
$$
\begin{align}
\mathrm{d}\mu_{\xi 2} & =\frac{1}{16\pi G}\left(z^{-1}D_{b}^{(0)}((g^{(0)bc}D_{c}^{(0)a}-g^{(0)ac}D_{c}^{(0)}\xi^{(0)b})+2z(g^{(0)bc}g_{zc}\xi^{(0)a}-g^{(0)ac}g_{zc}\xi^{(0)c}))\right. \\
 & \left.+z^{-1}R^{(0)}\xi^{(0)a}-2g^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2z^{-2}\partial_{z}\Delta \xi^{a}+2zg^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}+\mathcal{O}(z\log z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
\end{align}
$$

$$
\begin{align}
\mu_{\xi 2} & =\frac{1}{16\pi G}\log z\left(D_{b}^{(0)}((g^{(0)bc}D_{c}^{(0)}\xi^{(0)a}-g^{(0)ac}D_{c}^{(0)}\xi^{(0)b})+2z(g^{(0)bc}g_{zc}\xi^{(0)a}-g^{(0)ac}g_{zc}\xi^{(0)c}))\right. \\
 & \left.+R^{(0)}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2z^{-1}\partial_{z}\Delta \xi^{a}-2zg^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}+\mathcal{O}(z^{2}\log z)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

$$
\text{thank you}
$$