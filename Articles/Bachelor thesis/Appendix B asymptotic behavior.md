在本附录中，我们将在 $\displaystyle{(z,x^{a})}$ 中计算文中出现若干物理量的渐进行为。

考虑具有以下渐进行为的度规

$$\tag{B.1}
\begin{align}
g_{zz} & =\frac{1}{z^{2}}+\mathcal{O}(z^{0}) \\
g_{za} & =\mathcal{O}(z^{-1}) \\
g_{ab} & =\frac{1}{z^{2}}g_{ab}^{((0))}+\mathcal{O}(z^{0})
\end{align}
$$

其中 $\displaystyle{g^{(0)}_{ab}}$ 仅依赖于边界坐标 $\displaystyle{x^{a}}$。根据 $\displaystyle{g_{\mu \nu}g^{\nu \rho}=\delta^{\rho}_{\mu}}$，可以得到 $\displaystyle{g^{\mu \nu}}$ 的渐进行为

$$\tag{B.2}
\begin{align}
g^{zz} & =z^{2}-z^{4}\left( g_{zz}-\frac{1}{z^{2}} \right)+z^{6}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{6}) \\
g^{za} & =-z^{4}g^{(0)ab}g_{zb}+z^{6}\left( g_{zz}-\frac{1}{z^{2}} \right)g^{(0)ab}g_{zb}+z^{6}g^{(0)ab}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g^{(0)cd}g_{zd} \\
 & -z^{8}g^{(0)ab}g^{(0)cd}g_{zb}g_{zc}g_{zd}+\mathcal{O}(z^{7}) \\
g^{ab} & =z^{2}g^{(0)ab}-z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\frac{1}{z^{2}}g_{cd}^{(0)} \right)+z^{6}g^{(0)ac}g^{(0)bd}g_{zc}g_{zd}+\mathcal{O}(z^{6})
\end{align}
$$

其中 $\displaystyle{g^{(0)ab}}$ 为 $\displaystyle{g^{(0)}_{ab}}$ 的逆，即有 $\displaystyle{g^{(0)}_{ab}g^{(0)bc}=\delta^{c}_{a}}$。进而可以得到度规张量的行列式 $\displaystyle{\sqrt{ -g }}$，以及体元 $\displaystyle{\varepsilon_{\mu \nu \rho}}$ 的渐进行为

$$\tag{B.3}
\begin{align}
\sqrt{ -g } & =\frac{1}{z^{3}}\sqrt{ -g^{(0)} }\left[1+\frac{1}{2}z^{2}\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z^{2}g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z^{4}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{4})\right] \\
\varepsilon_{za_{0}a_{1}} & =-\frac{1}{z^{3}}\left[1+\frac{1}{2}z^{2}\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z^{2}g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z^{4}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{4})\right]\varepsilon^{(0)}_{a_{0}a_{1}}
\end{align}
$$

其中 $\displaystyle{\sqrt{ -g^{(0)} }}$ 和 $\displaystyle{\varepsilon^{(0)}_{a_{0}a_{1}}}$ 分别是渐进边界 $\displaystyle{\Gamma_z}$ 上的度规张量行列式与体元。然后根据 $\displaystyle{\Gamma^{\rho}_{~\mu \nu}=\frac{1}{2}g^{\rho \sigma}(\partial_{\mu}g_{\sigma \nu}+\partial_{\nu}g_{\mu \sigma}-\partial_{\sigma}g_{\mu \nu})}$，计算克氏符 $\displaystyle{\Gamma^{\rho}_{~\mu \nu}}$ 的渐进行为

$$\tag{B.4}
\begin{align}
\Gamma^{z}_{~zz} & =-\frac{1}{z}+z\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z^{2}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{3}g^{(0)ab}g_{za}g_{zb}-z^{4}g^{(0)ab}g_{za}\partial_{z}g_{zb}+\mathcal{O}(z^{3}) \\
\Gamma^{a}_{~zz} & =zg^{(0)ab}+z^{2}g^{(0)ab}\partial_{z}g_{zb}-\frac{1}{2}z^{2}g^{(0)ab}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{3}\left( g_{zz}-\frac{1}{z^{2}} \right)g^{(0)ab}g_{zb}-\frac{1}{2}z^{4}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)g^{(0)ab}g_{zb} \\
 & -z^{3}g^{(0)ab}g^{(0)cd}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{zd}-z^{4}g^{(0)ab}g^{(0)cd}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\partial_{z}g_{zd}+z^{5}g^{(0)ab}g^{(0)cd}g_{zb}g_{zc}g_{zd} \\
 & +z^{6}g^{(0)ab}g^{(0)cd}g_{zb}g_{zc}\partial_{z}g_{zd}+\mathcal{O}(z^{4}) \\
\Gamma^{z}_{~za} & =zg_{za}+\frac{1}{2}z^{2}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{3}\left( g_{zz}-\frac{1}{z^{2}} \right)g_{za}-z^{3}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)g^{(0)bc}g_{zc}-\frac{1}{2}z^{4}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)bc}g_{zc} \\
 & -\frac{1}{2}z^{4}g^{(0)bc}D_{a}^{(0)}g_{zb}g_{zc}+\frac{1}{2}z^{4}g^{(0)bc}D_{b}^{(0)}g_{za}g_{zc}+z^{5}g^{(0)bc}g_{za}g_{zb}g_{zc}+\mathcal{O}(z^{4}) \\
\Gamma^{b}_{~za} & =-\frac{1}{z}\delta^{b}_{a}+zg^{(0)bc}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)+\frac{1}{2}z^{2}g^{(0)bc}\partial_{z}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)+\frac{1}{2}z^{2}g^{(0)bc}D_{a}^{(0)}g_{zc}-\frac{1}{2}z^{2}g^{(0)bc}D_{c}^{(0)}g_{za} \\
 & -z^{3}g^{(0)bc}g_{za}g_{zc}+\mathcal{O}(z^{3}) \\
\Gamma^{z}_{~ab} & =\frac{1}{z}g^{(0)}_{ab}-zg^{(0)}_{ab}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}z^{2}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+\frac{1}{z^{2}}D_{a}^{(0)}g_{zb}+\frac{1}{z^{2}}D_{b}^{(0)}g_{za}+z^{3}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{3}) \\
\Gamma^{c}_{~ab} & =z\Gamma^{(0)c}_{~~~~~~ab}-zg^{(0)}_{ab}g^{(0)cd}g_{zd}+\frac{1}{2}z^{2}g^{(0)cd}\left[D_{a}^{(0)}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)+D_{b}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)-D_{d}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)\right] \\
 & +z^{3}g^{(0)}_{ab}g^{(0)cd}g_{zd}\left( g_{zz}-\frac{1}{z^{2}} \right)+z^{3}g^{(0)}_{ab}g^{(0)cd}g^{(0)ef}\left( g_{de}-\frac{1}{z^{2}}g^{(0)}_{de} \right)g_{zf}+\frac{1}{2}z^{4}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g^{(0)cd}g_{zd} \\
 & -\frac{1}{2}z^{4}g^{(0)cd}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zd}-z^{5}g^{(0)}_{ab}g^{(0)cd}g^{(0)ef}g_{zd}g_{ze}g_{zf}+\mathcal{O}(z^{4})
\end{align}
$$

其中 $\displaystyle{\Gamma^{(0)c}_{~~~~~~ab}}$ 为渐进边界 $\displaystyle{\Gamma_z}$ 上关于 $\displaystyle{g^{(0)}_{ab}}$ 的克氏符，定义为

$$\tag{B.5}
\begin{align}
\Gamma^{(0)c}_{~~~~~~ab} & =\frac{1}{2}g^{(0)cd}(\partial_{a}g_{bd}^{(0)}+\partial_{b}g_{ad}^{(0)}-\partial_{d}g_{ab}^{(0)})
\end{align}
$$

$\displaystyle{D^{(0)}_{a}}$ 是对应于 $\displaystyle{\Gamma^{(0)c}_{~~~~~~ab}}$ 的协变导数。进一步根据 $\displaystyle{R^{\rho}_{~\sigma \mu \nu}=\partial_{\mu}\Gamma^{\rho}_{~\sigma \nu}-\partial_{\nu}\Gamma^{\rho}_{~\mu \sigma}+\Gamma^{\rho}_{~\mu \lambda}\Gamma^{\lambda}_{~\nu \sigma}-\Gamma^{\rho}_{~\nu \lambda}\Gamma^{\lambda}_{~\mu \sigma}}$，计算Riemann张量 $\displaystyle{R^{\rho}_{~\sigma \mu \nu}}$ 的渐进行为

$$\tag{B.6}
\begin{align}
R^{\rho}_{~\sigma zz} & =0 \\
R^{z}_{~zza} & =-g_{za}-\frac{1}{2}z^{3}g_{za}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{3}{2}z^{3}g^{(0)bc}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}+\frac{1}{2}z^{3}g^{(0)bc}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc} \\
 & -\frac{1}{2}z^{4}g^{(0)bc}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)g_{zc}+z^{4}g^{(0)bc}g_{za}g_{zb}g_{zc}+\frac{1}{2}z^{4}g^{(0)bc}\partial_{z}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc} \\
 & +z^{5}g^{(0)bc}g_{za}g_{zb}\partial_{z}g_{zc}+\mathcal{O}(z^{3}) \\
R^{z}_{~zab} & =\mathcal{O}(z^{2}) \\
R^{z}_{~cab} & =-zD_{a}^{(0)}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)+zD_{b}^{(0)}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)+\frac{1}{2}zg^{(0)}_{ac}D_{b}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}zg^{(0)}_{bc}D_{a}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right) \\
 & -\frac{1}{2}z^{2}R^{(0)d}_{~~~~~~cab}g_{zd}-\frac{1}{2}z^{2}\partial_{z}D_{a}^{(0)}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)+\frac{1}{2}z^{2}\partial_{z}D_{b}^{(0)}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)+\frac{1}{2}z^{2}(D_{a}^{(0)}D_{c}^{(0)}g_{zb}-D_{b}^{(0)}D_{c}^{(0)}g_{za}) \\
 & -z^{3}g^{(0)de}(g^{(0)}_{ac}D_{b}^{(0)}g_{zd}-g_{bc}^{(0)}D_{a}^{(0)}g_{zd})g_{ze}+\mathcal{O}(z^{3}) \\
R^{b}_{~zza} & = \frac{1}{z^{2}}\delta^{b}_{a}+\delta^{b}_{a}\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z\delta^{b}_{a}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{3}{2}zg^{(0)bc}\partial_{z}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)-\frac{1}{2}zg^{(0)bc}(D_{a}^{(0)}g_{zc}+D_{c}^{(0)}g_{za}) \\
 & +\frac{1}{2}z^{2}g^{(0)bc}\partial_{z}^{2}\left( g_{ac}-\frac{1}{z^{2}}g_{ac}^{(0)} \right)-z^{2}\delta^{b}_{a}g^{(0)cd}g_{zc}g_{zd}-\frac{1}{2}z^{2}g^{(0)bc}\partial_{z}(D_{a}^{(0)}g_{zc}+D_{c}^{(0)}g_{za})-z^{3}\delta^{b}_{a}g^{(0)cd}g_{zc}\partial_{z}g_{zd}+\mathcal{O}(z^{2}) \\
R^{b}_{~cza}  & =\delta^{b}_{a}g_{zc}+\frac{1}{2}z\delta^{b}_{a}D_{c}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}zg^{(0)}_{ac}g^{(0)bd}D_{d}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)+zg^{(0)bd}\left( D_{c}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)-D_{d}^{(0)}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right) \right) \\
 & +z^{2}g^{(0)bd}\left(\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)g_{zd}-\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)g_{zc}\right)-z^{2}\delta^{b}_{a}g^{(0)de}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)g_{ze}-z^{2}\delta^{b}_{a}g_{zc}\left( g_{zz}-\frac{1}{z^{2}} \right) \\
 & +z^{2}g^{(0)}_{ac}g^{(0)bd}g^{(0)ef}\left( g_{de}-\frac{1}{z^{2}}g^{(0)}_{de} \right)g_{zf}+z^{2}g^{(0)}_{ac}g^{(0)bd}g_{zb}\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z^{2}g^{(0)bd}(D_{a}^{(0)}D_{d}^{(0)}g_{zc}-D_{a}^{(0)}D_{c}^{(0)}g_{zd}) \\
 & +\frac{1}{2}z^{2}g^{(0)bd}\partial_{z}\left( D_{c}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)-D_{d}^{(0)}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right) \right)+\frac{1}{2}z^{3}g^{(0)bd}(D_{d}^{(0)}g_{za}+D_{a}^{(0)}g_{zd})g_{zc} \\
 & +\frac{1}{2}z^{3}g^{(0)}_{ac}g^{(0)bd}g^{(0)ef}(D_{d}^{(0)}g_{zf}-D_{f}^{(0)}g_{zd})g_{ze}-z^{3}g^{(0)bd}(D_{c}^{(0)}g_{za}+D_{a}^{(0)}g_{zc})g_{zd}-\frac{1}{2}z^{3}\delta^{b}_{a}g^{(0)de}(D_{c}^{(0)}g_{zd}-D_{d}^{(0)}g_{zc})g_{ze} \\
 & +2z^{3}g^{(0)bd}\partial_{z}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)g_{zd}-\frac{1}{2}z^{3}\delta^{b}_{a}g^{(0)de}\partial_{z}\left( g_{ce}-\frac{1}{z^{2}}g^{(0)}_{ce} \right)g_{zd}+\frac{1}{2}z^{3}g^{(0)}_{ac}g^{(0)bd}g_{zd}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right) \\
 & -\frac{1}{2}z^{3}g^{(0)bd}\partial_{z}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)g_{zc}+\frac{1}{2}z^{3}g^{(0)}_{ac}g^{(0)bd}g^{(0)ef}\partial_{z}\left( g_{de}-\frac{1}{z^{2}}g^{(0)}_{de} \right)g_{zf}+\frac{1}{2}z^{4}g^{(0)bd}\partial_{z}^{2}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)g_{zd} \\
 & +z^{4}\delta^{b}_{a}g^{(0)de}g_{zc}g_{zd}g_{ze}-2z^{4}g^{(0)}_{ac}g^{(0)bd}g^{(0)ef}g_{zd}g_{ze}g_{zf}-\frac{1}{2}z^{4}g^{(0)bd}\partial_{z}(D_{a}^{(0)}g_{zc}+D_{c}^{(0)}g_{za})g_{zd} \\
 & -z^{5}g^{(0)}_{ac}g^{(0)bd}g^{(0)ef}g_{zd}g_{ze}\partial_{z}g_{zf}+\mathcal{O}(z^{3}) \\
R^{c}_{~zab} & = -(\delta^{c}_{a}g_{zb}-\delta^{c}_{b}g_{za})+zg^{(0)cd}\left( D_{a}^{(0)}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-D_{b}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)+z^{2}(\delta^{c}_{a}g_{zb}-\delta^{c}_{b}g_{za})\left( g_{zz}-\frac{1}{z^{2}} \right) \\
 & -\frac{1}{2}z\left( \delta^{c}_{a}D_{b}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)-\delta^{c}_{a}D_{a}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right) \right)+z^{2}g^{(0)de}\left( \delta^{c}_{a}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-\delta^{c}_{b}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)g_{ze} \\
  & -z^{2}g^{(0)cd}\left( g_{za}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-g_{zb}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)+\frac{1}{2}z^{2}g^{(0)}_{cd}\partial_{z}\left( D_{a}^{(0)}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-D_{b}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right) \\
 & -\frac{1}{2}z^{2}g^{(0)cd}(D_{d}^{(0)}D_{a}^{(0)}g_{zb}-D_{d}^{(0)}D_{b}^{(0)}g_{za})+\frac{1}{2}z^{3}g^{(0)cd}(g_{za}D_{b}^{(0)}g_{zd}-g_{zb}D_{a}^{(0)}g_{zd})+\frac{1}{2}z^{3}g^{(0)de}(\delta^{c}_{a}D_{b}^{(0)}g_{zd}-\delta^{c}_{b}D_{a}^{(0)}g_{zd})g_{ze} \\
 & +\frac{1}{2}z^{3}g^{(0)de}(\delta^{c}_{a}D_{d}^{(0)}g_{zb}-\delta^{c}_{b}D_{d}^{(0)}g_{za})g_{ze}+\frac{1}{2}z^{3}g^{(0)cd}(g_{za}D_{d}^{(0)}g_{zb}-g_{zb}D_{d}^{(0)}g_{za})-z^{4}g^{(0)de}(\delta^{c}_{a}g_{zb}-\delta^{c}_{b}g_{za})g_{zd}g_{ze} \\
 & +\frac{1}{2}z^{3}g^{(0)de}\left( \delta^{c}_{a}\partial_{z}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-\delta^{c}_{b}\partial_{z}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)-\frac{1}{2}z^{3}g^{(0)cd}\left( g_{za}\partial_{z}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)-g_{zb}\partial_{z}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)+\mathcal{O}(z^{2}) \\
R^{c}_{~dab} & =R^{(0)c}_{~~~~~~dab}-\frac{1}{z^{2}}(\delta^{c}_{a}g^{(0)}_{bd}-\delta^{c}_{a}g^{(0)}_{ad})+(\delta^{c}_{a}g^{(0)}_{bd}-\delta^{c}_{b}g^{(0)}_{ad})\left( g_{zz}-\frac{1}{z^{2}} \right)-g^{(0)}_{ad}g^{(0)ce}\left( g_{be}-\frac{1}{z^{2}}g^{(0)}_{be} \right)+g^{(0)}_{bd}g^{(0)ce}\left( g_{ae}-\frac{1}{z^{2}}g^{(0)}_{ae} \right) \\
 & +\frac{1}{2}zg^{(0)ce}(g^{(0)}_{ad}D_{b}^{(0)}g_{ze}-g_{bd}^{(0)}D_{a}^{(0)}g_{ze})-\frac{1}{2}z(\delta^{c}_{a}D_{b}^{(0)}g_{zd}-\delta^{c}_{b}D_{a}^{(0)}g_{zd})+\frac{1}{2}zg^{(0)ce}(g^{(0)}_{ad}D_{e}^{(0)}g_{zb}-g^{(0)}_{bd}D_{e}^{(0)}g_{za}) \\
 & -\frac{1}{2}z(\delta^{c}_{a}D_{d}^{(0)}g_{zb}-\delta^{c}_{b}D_{d}^{(0)}g_{za})+\frac{1}{2}z\left( \delta^{c}_{a}\partial_{z}\left( g_{bd}-\frac{1}{z^{2}}g_{bd}^{(0)} \right)-\delta^{c}_{b}\partial_{z}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right) \right)-z^{2}g^{(0)ef}(\delta^{c}_{a}g^{(0)}_{bd}-\delta^{c}_{b}g^{(0)}_{ad})g_{ze}g_{zf} \\
 & -\frac{1}{2}zg^{(0)ce}\left( g_{ad}^{(0)}\partial_{z}\left( g_{be}-\frac{1}{z^{2}}g^{(0)}_{be} \right)-g^{(0)}_{bd}\partial_{z}\left( g_{ae}-\frac{1}{z^{2}}g^{(0)}_{ae} \right) \right)+\mathcal{O}(z^{2})\\
\end{align}
$$

其中 $\displaystyle{R^{(0)c}_{~~~~~~dab}}$ 为渐进边界 $\displaystyle{\Gamma_z}$ 上关于 $\displaystyle{g^{(0)}_{ab}}$ 的Riemann张量，定义为

$$\tag{B.7}
\begin{align}
R^{(0)c}_{~~~~~~dab} & =\partial_{a}\Gamma^{(0)c}_{~~~~~~bd}-\partial_{b}\Gamma^{(0)c}_{~~~~~~ad}+\Gamma^{(0)c}_{~~~~~~ae}\Gamma^{(0)e}_{~~~~~~bd}-\Gamma^{(0)c}_{~~~~~~be}\Gamma^{(0)e}_{~~~~~~ad}
\end{align}
$$

再对Riemann张量 $\displaystyle{R^{\rho}_{~\sigma \mu \nu}}$ 进行缩并，计算Ricci张量 $\displaystyle{R_{\mu \nu}=R^{\rho}_{~\mu \rho \nu}}$ 和Ricci标量 $\displaystyle{R=g^{\mu \nu}R_{\mu \nu}}$ 的渐进行为

$$\tag{B.8}
\begin{align}
R_{zz} & = -\frac{2}{z^{2}}-2\left( g_{zz}-\frac{1}{z^{2}} \right)-z\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{3}{2}zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z^{2}g^{(0)ab}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+zg^{(0)ab}D_{a}^{(0)}g_{zb} \\
 & +z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}+2z^{2}g^{(0)ab}g_{za}g_{zb}+2z^{3}g^{(0)ab}g_{za}\partial_{z}g_{zb}+\mathcal{O}(z^{2}) \\
R_{za} & = -2g_{za}-\frac{1}{2}zD_{a}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)-zg^{(0)bc}\left( D_{a}^{(0)}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)-D_{c}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right) +z^{2}g_{za}\left( g_{zz}-\frac{1}{z^{2}} \right)\\
 & -\frac{1}{2}z^{2}g^{(0)bc}\partial_{z}\left( D_{a}^{(0)}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)-D_{c}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right)-\frac{1}{2}z^{3}g_{za}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{3}{2}z^{3}g^{(0)bc}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc} \\
 & -\frac{1}{2}z^{4}g^{(0)bc}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}+z^{2}g^{(0)bc}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{zc}+\frac{1}{2}z^{3}g^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za}-z^{3}g^{(0)bc}g_{za}D_{b}^{(0)}g_{zc} \\
 & +\frac{1}{2}z^{2}g^{(0)bc}(D_{b}^{(0)}D_{a}^{(0)}g_{zc}-D_{b}^{(0)}D_{c}^{(0)}g_{za})+\frac{3}{2}z^{3}g^{(0)bc}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc}+\frac{1}{2}z^{4}g^{(0)bc}(D_{a}^{(0)}\partial_{z}g_{zb}+D_{b}^{(0)}\partial_{z}g_{za})g_{zc} \\
 & +z^{5}g^{(0)bc}g_{za}g_{zb}\partial_{z}g_{zc}+\mathcal{O}(z^{3})\\
R_{ab} & =\frac{1}{2}R^{(0)}g^{(0)}_{ab}-\frac{2}{z^{2}}g^{(0)}_{ab}+g^{(0)}_{ab}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}zg^{(0)}_{ab}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-2\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{3}{2}z\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & -\frac{1}{2}z^{2}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+g^{(0)}_{ab}g^{(0)cd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\frac{1}{2}zg^{(0)}_{ab}g^{(0)cd}\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\frac{1}{2}z(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za}) \\
 & +\frac{1}{2}z^{2}(D_{a}^{(0)}\partial_{z}g_{zb}+D_{b}^{(0)}\partial_{z}g_{za})-zg^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}g_{zd}+z^{3}g^{(0)}_{ad}g^{(0)cd}g_{zc}\partial_{z}g_{zd}+\mathcal{O}(z^{2}) \\
R & =-6+z^{2}R^{(0)}+2z^{2}\left( g_{zz}-\frac{1}{z^{2}} \right)+2z^{2}g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-2z^{3}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)-2z^{3}g^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & +2z^{4}g^{(0)ab}g_{za}g_{zb}+2z^{4}g^{(0)ab}\partial_{z}D_{a}^{(0)}g_{zb}-z^{4}g^{(0)ab}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)+4z^{5}g^{(0)ab}g_{za}\partial_{z}g_{zb}+\mathcal{O}(z^{4})
\end{align}
$$

其中 $\displaystyle{R^{(0)}_{ab}=R^{(0)c}_{~~~~~~acb}}$ 是渐进边界 $\displaystyle{\Gamma_z}$ 上关于 $\displaystyle{g^{(0)}_{ab}}$ 的Ricci张量，$\displaystyle{R^{(0)}=g^{(0)ab}R^{(0)}_{ab}}$ 是渐进边界 $\displaystyle{\Gamma_z}$ 上关于 $\displaystyle{g^{(0)}_{ab}}$ 的Ricci标量。这里我们使用了

$$\tag{B.9}
\begin{align}
R^{(0)}_{ab} & =\frac{1}{2}R^{(0)}g^{(0)}_{ab}
\end{align}
$$

(B,8)对一般的二维时空成立。最终得到运动方程 $\displaystyle{\tilde{E}_{\mu \nu}}$ 的渐进行为

$$\tag{B.10}
\begin{align}
\tilde{E}_{zz} & =\frac{1}{16\pi G}\left[\frac{1}{2}R^{(0)}+\left( g_{zz}-\frac{1}{z^{2}} \right)+g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+\frac{1}{2}zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-zg^{(0)ab}D_{a}^{(0)}g_{zb}-z^{2}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{2})\right] \\
\tilde{E}_{za} & =\frac{1}{16\pi G}\left[\frac{1}{2}zD_{a}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)+zg^{(0)bc}\left( D_{a}^{(0)}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)-D_{c}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right)+\frac{1}{2}z^{2}R^{(0)}g_{za}-\frac{1}{2}z^{3}g_{za}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right) \right. \\
 & +\frac{1}{2}z^{2}g^{(0)bc}\left( D_{a}^{(0)}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)-D_{c}^{(0)}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right)+\frac{3}{2}z^{3}g^{(0)bc}\left( \partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}-\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za} \right) \\
 & +\frac{1}{2}z^{4}g^{(0)bc}\left( \partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}-\partial_{z}^{2}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za} \right)-\frac{1}{2}z^{2}g^{(0)bc}(D_{b}^{(0)}D_{a}^{(0)}g_{zc}-D_{b}^{(0)}D_{c}^{(0)}g_{za})+z^{3}g^{(0)bc}g_{za}D_{b}^{(0)}g_{zc} \\
 & -\frac{1}{2}z^{3}g^{(0)bc}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc}+\frac{1}{2}z^{4}g^{(0)bc}(D_{a}^{(0)}\partial_{z}g_{zb}+D_{b}^{(0)}\partial_{z}g_{za})g_{zc}+z^{4}g^{(0)bc}g_{za}D_{b}^{(0)}\partial_{z}g_{zc}+z^{4}g^{(0)bc}g_{za}g_{zb}g_{zc} \\
 & \left.+z^{5}g^{(0)bc}g_{za}g_{zb}\partial_{z}g_{zc}+\mathcal{O}(z^{2})\right]
\end{align}
$$

接下来我们计算渐进边界 $\displaystyle{\Gamma_z}$ 上物理量的渐进行为。法余矢 $\displaystyle{n_{\mu}}$ 正交于 $\displaystyle{\Gamma_z}$，从而有 $\displaystyle{n_{a}=0}$；归一化要求 $\displaystyle{g^{\mu \nu}n_{\mu}n_{\nu}=1}$，由此得到

$$\tag{B.11}
\begin{align}
n_{z} & =-\frac{1}{z}-\frac{1}{2}z\left( g_{zz}-\frac{1}{z^{2}} \right)+\frac{1}{2}z^{3}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{3}) \\
n_{a} & =0 \\
n^{z} & =-z+\frac{1}{2}z^{3}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}z^{5}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{5}) \\
n^{a} & =z^{3}g^{(0)ab}g_{zb}-\frac{1}{2}z^{5}g^{(0)ab}g_{zb}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{5}g^{(0)ab}g^{(0)cd}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{zd}+\frac{1}{2}z^{7}g^{(0)ab}g^{(0)cd}g_{zb}g_{zc}g_{zd}+\mathcal{O}(z^{7})
\end{align}
$$

进而可以计算诱导度规 $\displaystyle{\gamma_{\mu \nu}=g_{\mu \nu}-n_{\mu}n_{\nu}}$ 的渐进行为

$$\tag{B.12}
\begin{align}
\gamma_{zz} & =z^{2}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{2}) \\
\gamma_{za} & =g_{za} \\
\gamma_{ab} & =\frac{1}{z^{2}}g^{(0)}_{ab}+\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)
\end{align}
$$

以及

$$\tag{B.13}
\begin{align}
\gamma^{z}_{z} & =0 \\
\gamma^{z}_{a} & =0 \\
\gamma^{a}_{z} & =z^{2}g^{(0)ab}g_{zb}-z^{4}g^{(0)ab}g^{(0)cd}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{zd}+\mathcal{O}(z^{5}) \\
\gamma^{a}_{b} & =\delta^{b}_{a} \\
\gamma^{zz} & =0 \\
\gamma^{za} & =0 \\
\gamma^{ab} & =z^{2}g^{(0)ab}-z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\mathcal{O}(z^{6})
\end{align}
$$

诱导度规 $\displaystyle{\gamma_{\mu \nu}}$ 的行列式以及 $\displaystyle{\varepsilon^{(\Gamma_{z})}_{\mu \nu}}$ 

进而可以得到关于 $\displaystyle{\gamma_{ab}}$ 的克氏符 $\displaystyle{\tilde{\Gamma}^{c}_{~ab}}$、Ricci张量 $\displaystyle{\tilde{R}_{ab}}$ 和Ricci标量 $\displaystyle{\tilde{R}}$ 的渐进行为

$$\tag{B.14}
\begin{align}
\tilde{\Gamma}^{c}_{~ab} & =\Gamma^{(0)c}_{~~~~~~ab}+\frac{1}{2}z^{2}g^{(0)cd}\left( D_{a}^{(0)}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)+D_{b}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)-D_{d}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right)+\mathcal{O}(z^{4}) \\
\tilde{R}_{ab} & =R^{(0)}_{ab}+\frac{1}{2}z^{2}g^{(0)cd}\left(D_{c}^{(0)}D_{a}^{(0)}\left( g_{bd}-\frac{1}{z^{2}}g^{(0)}_{bd} \right)+D_{c}^{(0)}D_{b}^{(0)}\left( g_{ad}-\frac{1}{z^{2}}g^{(0)}_{ad} \right)-D_{b}^{(0)}D_{a}^{(0)}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\right. \\
 & \left.-D_{c}^{(0)}D_{d}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right)+\mathcal{O}(z^{4}) \\
\tilde{R} & =z^{2}R^{(0)}-\frac{1}{2}z^{4}g^{(0)ab}g_{za}g_{zb}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{4}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}D_{d}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)+\mathcal{O}(z^{6}) \\

\end{align}
$$

进一步计算外曲率 $\displaystyle{K_{\mu \nu}=\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}}$ 的渐进行为

$$\tag{B.15}
\begin{align}
K_{zz} & =z^{2}g^{(0)ab}g_{za}g_{zb}-\frac{1}{2}z^{4}g^{(0)ab}g_{za}g_{zb}\left( g_{zz}-\frac{1}{z^{2}} \right)-2z^{4}g^{(0)ac}g^{(0)bd}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}g_{zd} \\
 & -\frac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}g_{zd}+z^{5}g^{(0)ac}g^{(0)bd}D_{a}^{(0)}g_{zb}g_{zc}g_{zd}+\frac{1}{2}z^{6}g^{(0)ab}g^{(0)cd}g_{za}g_{zb}g_{zc}g_{zd}+\mathcal{O}(z^{4}) \\
K_{za} & =g_{za}-\frac{1}{2}z^{2}g_{za}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{2}g^{(0)bc}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}-\frac{1}{2}z^{3}g^{(0)bc}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)g_{zc} \\
 & +\frac{1}{2}z^{3}g^{(0)bc}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc}+\frac{1}{2}z^{4}g^{(0)bc}g_{za}g_{zb}g_{zc}+\mathcal{O}(z^{3}) \\
K_{ab} & =\frac{1}{z^{2}}g^{(0)}_{ab}-\frac{1}{2}g^{(0)}_{ab}\left( g_{zz}-\frac{1}{z^{2}} \right)-\frac{1}{2}z\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+\frac{1}{2}z(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})+\frac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{2}) \\
K^{zz} & =0 \\
K^{za} & =0 \\
K^{ab} & =z^{2}g^{(0)ab}-\frac{1}{2}z^{4}g^{(0)ab}\left( g_{zz}-\frac{1}{z^{2}} \right)-2z^{4}g^{(0)ac}g^{(0)bd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)-\frac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g_{cd}^{(0)} \right) \\
 & +\frac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}(D_{c}^{(0)}g_{zd}+D_{d}^{(0)}g_{zc})+\frac{1}{2}z^{6}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{6})
\end{align}
$$

以及外曲率迹 $\displaystyle{K=\gamma^{\mu \nu}K_{\mu \nu}}$ 的渐进行为

$$\tag{B.16}
\begin{align}
K & =2-z^{2}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{2}g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z^{3}g^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \\
 & +z^{3}g^{(0)ab}D_{a}^{(0)}g_{zb}+z^{4}g^{(0)ab}g_{za}g_{zb}+\mathcal{O}(z^{4})
\end{align}
$$

最后我们计算能动张量 $\displaystyle{T_{\mu \nu}}$ 的渐进行为

$$\tag{B.17}
\begin{align}
T_{zz} & =\mathcal{O}(z^{2}) \\
T_{za} & =\frac{1}{4G}\left[\frac{1}{2}z^{2}g_{za}\left( g_{zz}-\frac{1}{z^{2}} \right)-z^{2}g^{(0)bc}\left(\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}-\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)g_{za}\right)-z^{3}g^{(0)bc}g_{za}D_{b}^{(0)}g_{zc}\right. \\
 & -\frac{1}{2}z^{3}g^{(0)bc}\left(\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)g_{zc}-\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g_{ab}^{(0)} \right)g_{za}\right)+\frac{1}{2}z^{3}g^{(0)bc}(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})g_{zc} \\
 & \left.-\frac{1}{2}z^{4}g^{(0)bc}g_{za}g_{zb}g_{zc}+\mathcal{O}(z^{3})\right] \\
T_{ab} & =\frac{1}{4G}\left[\frac{1}{2}g^{(0)}_{ab}\left( g_{zz}-\frac{1}{z^{2}} \right)-\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-\frac{1}{2}z\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+g^{(0)}_{ab}g^{(0)cd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\right. \\
 & \left.+\frac{1}{2}g^{(0)}_{ab}g^{(0)cd}\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\frac{1}{2}z(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})-zg^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}g_{zd}-\frac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}\partial_{z}g_{zd}+\mathcal{O}(z^{2})\right] \\
T^{zz} & =0 \\
T^{za} & =0 \\
T^{ab} & =\frac{1}{4G}\left[ \frac{1}{2}z^{4}g^{(0)ab}\left( g_{zz}-\frac{1}{z^{2}} \right)+z^{4}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)-z^{5}g^{(0)ab}g^{(0)cd}D_{c}^{(0)}g_{zd}\right. \\
 & +\frac{1}{2}z^{5}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)+\frac{1}{2}z^{5}g^{(0)ac}g^{(0)bd}(D_{c}^{(0)}g_{zd}+D_{d}^{(0)}g_{zc}) \\
 & \left.-\frac{1}{2}z^{6}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}+\mathcal{O}(z^{6})\right]
\end{align}
$$
