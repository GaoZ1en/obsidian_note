在本附录中，我们将验证文中相关物理量的有限性。为了讨论的一致性，在本附录中我们将使用微分形式积分的语言

## 方法

首先我们介绍一种证明积分有限的方法

## 作用量

计算拉氏量密度 $\displaystyle{\mathbf{L}}$ 和 $\displaystyle{\ell}$ 的渐进行为

$$\tag{C.1}
\begin{align}
\mathbf{L} & =\frac{1}{16\pi G}\left[\frac{4}{z^{3}}-\frac{1}{z}R^{(0)}+2\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)+2g^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+zg^{(0)ab}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right. \\
 & \left.-2zg^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}-4zg^{(0)ab}g_{za}g_{zb}-4z^{2}g^{(0)ab}g_{za}\partial_{z}g_{zb}+\mathcal{O}(z)\right]\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\ell|_{\Gamma_{z}} & =\frac{1}{16\pi G}\left[ \frac{2}{z^{2}}-2\left( g_{zz}-\frac{1}{z^{2}} \right)-g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right) \right. \\
 & \left.+2zg^{(0)ab}D_{a}^{(0)}g_{zb}+2z^{2}g^{(0)ab}g_{za}g_{zb}+\log zR^{(0)}-2z\log zg^{(0)ab}D_{a}^{(0)}g_{zb}+\mathcal{O}(z^{2}\log z)\right]\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

那么对于作用量的体内项，可以做如下分解

$$\tag{C.2}
\begin{align}
\int_{M_{\varepsilon}}\mathbf{L} & =\int_{M_{z_{0}}}\mathbf{L}+\int_{M_{\varepsilon}-M_{z_{0}}}\mathbf{L} \\
 & =\int_{M_{z_{0}}}\mathbf{L}-\int_{\Gamma}\int_{\varepsilon}^{z_{0}}\mathrm{d}z\mathbf{L}_{za_{0}a_{1}}\cdot \frac{1}{2!}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

其中 $\displaystyle{M_{z_{0}}}$ 被 $\displaystyle{\Sigma_{f},\Sigma_{i}}$ 以及 $\displaystyle{\Gamma_{z_{0}}}$ 所包围。我们引入 $\displaystyle{H_{1}(z,x)}$ 使得

$$\tag{C.3}
\begin{align}
\mathbf{L}_{za_{0}a_{1}} & =\frac{1}{16\pi G}\left[\frac{4}{z^{3}}-\frac{1}{z}R^{(0)}+2\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)+2g^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+zg^{(0)ab}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right. \\
 & \left.-2zg^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}-4zg^{(0)ab}g_{za}g_{zb}-4z^{2}g^{(0)ab}g_{za}\partial_{z}g_{zb}+H(z,x)\right]\varepsilon_{a_{0}a_{1}}^{(0)}\\
H_{1}(z,x) &\sim \mathcal{O}(z)
\end{align}
$$

那么

$$\tag{C.4}
\begin{align}
\mathbf{L}_{za_{0}a_{1}} & =\frac{1}{16\pi G}\left[\partial_{z}\left(-\frac{2}{z^{2}}-\log zR^{(0)}+2\left( g_{zz}-\frac{1}{z^{2}} \right)+g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)+zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right.\right. \\
 & \left.\left.-2zg^{(0)ab}D_{a}^{(0)}g_{zb}+2z\log zg^{(0)ab}D_{a}^{(0)}g_{zb}-2z^{2}g^{(0)ab}g_{za}g_{zb}\right)-2\log zg^{(0)ab}D_{a}^{(0)}\partial_{z}(zg_{zb})+H_{1}(z,x)\right]\varepsilon_{a_{0}a_{1}}^{(0)} \\
\int_{M_{\varepsilon}}\mathbf{L} & =\int_{M_{z_{0}}}\mathbf{L}+\int_{\Gamma} \frac{1}{16\pi G}\left(\frac{2}{z^{2}}+\log zR^{(0)}-2\left( g_{zz}-\frac{1}{z^{2}} \right)-g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right. \\
 & \left.\left.+2zg^{(0)ab}D_{a}^{(0)}g_{zb}-2z\log zg^{(0)ab}D_{a}^{(0)}g_{zb}+2z^{2}g^{(0)ab}g_{za}g_{zb}\right)\right|_{z=z_{0}-z=\varepsilon}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & +\int_{\Gamma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(2\log zg^{(0)ab}D_{a}^{(0)}\partial_{z}(zg_{zb})-H_{1}(z,x)\right)\right]\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\int_{M_{\varepsilon}}\mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell & =\int_{M_{z_{0}}}\mathbf{L}+\int_{\Gamma} \frac{1}{16\pi G}\left(\frac{2}{z^{2}}+\log zR^{(0)}-2\left( g_{zz}-\frac{1}{z^{2}} \right)-g^{(0)ab}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)-zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\right. \\
 & \left.\left.+2zg^{(0)ab}D_{a}^{(0)}g_{zb}-2z\log zg^{(0)ab}D_{a}^{(0)}g_{zb}+2z^{2}g^{(0)ab}g_{za}g_{zb}\right)\right|_{z=z_{0}}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & +\int_{\Gamma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(2\log zg^{(0)ab}D_{a}^{(0)}\partial_{z}(zg_{zb})-H_{1}(z,x)\right)\right]\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

考虑将 $\displaystyle{g_{za}}$ 的渐进行为进一步展开为

$$\tag{C.5}
\begin{align}
g_{za} & =\frac{1}{z}g^{(-1)}_{za}+\mathcal{O}(z^{-1+s})
\end{align}
$$

其中 $\displaystyle{g^{(-1)}_{za}}$ 与 $\displaystyle{z}$ 无关，$\displaystyle{s>0}$。那么根据(C.?)，有

$$\tag{C.6}
\begin{align}
S-\int_{M_{\varepsilon}}\mathbf{L}-\int_{\Gamma_{\varepsilon}}\ell & =\int_{\Gamma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(2\log zg^{(0)ab}D_{a}^{(0)}\partial_{z}(zg_{zb})-H_{1}(z,x)\right)\right]\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon) \\
 & =\mathcal{O}(\varepsilon^{s}\log \varepsilon)+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

即有作用量 $\displaystyle{S=\lim_{ \varepsilon \to 0 }\left(\int_{M_{\varepsilon}}\mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell\right)}$

## 作用量的变分

首先我们给出 $\displaystyle{\delta g_{zz},\delta g_{za},\delta g_{ab}}$ 和 $\displaystyle{\delta g_{ab}-\frac{1}{z^{2}}\delta g^{(0)}_{ab}}$ 的渐进行为

$$\tag{C.7}
\begin{align}
\delta g_{zz} & =\mathcal{O}(z^{0}) \\
\delta g_{za} & =\mathcal{O}(z^{-1}) \\
\partial_{z}\delta g^{(0)}_{ab} & =0 \\
\delta g_{ab}-\frac{1}{z^{2}}\delta g^{(0)}_{ab} & =\mathcal{O}(z^{0})
\end{align}
$$

以及 $\displaystyle{\nabla_{\mu}\delta g_{\nu \rho}}$ 的渐进行为

$$\tag{C.8}
\begin{align}
\nabla_{z}\delta g_{zz} & =\partial_{z}\delta g_{zz}+\frac{2}{z}\delta g_{zz}-2zg^{(0)ab}g_{za}\delta g_{zb}-2z^{2}g^{(0)ab}\partial_{z}g_{za}\delta g_{zb}+\mathcal{O}(z) \\
\nabla_{z}\delta g_{za} & =\partial_{z}\delta g_{za}+\frac{2}{z}\delta g_{za}-\frac{1}{z}g^{(0)bc}g_{zc}\delta g_{ab}^{(0)}-g^{(0)bc}\partial_{zc}\delta g_{ab}^{(0)}+\mathcal{O}(z^{0}) \\
\nabla_{z}\delta g_{ab} & =\mathcal{O}(z^{-1}) \\
\nabla_{a}\delta g_{zz} & =\frac{2}{z}\delta g_{za}+\mathcal{O}(z^{0}) \\
\nabla_{a}\delta g_{zb} & =\frac{1}{z^{3}}\delta g^{(0)}_{ab}+\frac{1}{z}\left( \delta g_{ab}-\frac{1}{z^{2}}\delta g^{(0)}_{ab} \right)-\frac{1}{z}g^{(0)}_{ab}\delta g_{zz}-\frac{1}{z}g^{(0)cd}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)\delta g_{bd}^{(0)} \\
 & -\frac{1}{2}g^{(0)cd}\partial_{z}\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)\delta g_{bd}^{(0)}+D_{a}^{(0)}\delta g_{zb}-\frac{1}{2}g^{(0)cd}(D_{a}^{(0)}g_{zc}-D_{c}^{(0)}g_{za})\delta g^{(0)}_{bd} \\
 & -zg_{za}\delta g_{zb}+zg^{(0)}_{ab}g^{(0)cd}g_{zc}\delta g_{zd}+zg^{(0)cd}g_{za}g_{zc}\delta g^{(0)}_{cd}+\mathcal{O}(z) \\
\nabla_{a}\delta g_{bc} & =\frac{1}{z^{2}}D_{a}^{(0)}\delta g_{bc}^{(0)}+\frac{1}{z}g^{(0)}_{ab}g^{(0)de}g_{ze}\delta g^{(0)}_{cd}+\frac{1}{z}g^{(0)}_{ac}g^{(0)de}g_{ze}\delta g_{bd}^{(0)}-\frac{1}{z}g^{(0)}_{ab}\delta g_{zc}-\frac{1}{z}g^{(0)}_{ac}\delta g_{zb}+\mathcal{O}(z^{0})
\end{align}
$$

从而计算得到()中各量的渐进行为

$$\tag{C.9}
\begin{align}
\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\frac{1}{16\pi G}\left[\frac{1}{2}g^{(0)ab}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}+\frac{3}{2}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}\right. \\
 & +\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}^{2}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & -z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}\partial_{z}g_{zd}\delta g_{ab}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}-z^{2}g^{(0)ab}g^{(0)cd}g_{zc}\partial_{z}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.+\mathcal{O}(z)\right]\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}z\wedge \mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{1} \\
\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}|_{\Gamma_{z}} & =\frac{1}{16\pi G}\left[-\frac{1}{2}g^{(0)ab}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}\right. \\
 & -\frac{1}{2}zg^{(0)ab}g^{(0)cd}\partial_{Z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}+z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.+\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}+\mathcal{O}(z^{2})\right]\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\Theta & =\frac{1}{16\pi G}\left[-\frac{1}{z}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}g_{cd}-g^{(0)ab}\delta g_{zb}+zg^{(0)ab}\partial_{z}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}\delta g_{cd}^{(0)}\right. \\
 & \left.-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})g_{zb}\delta g_{cd}^{(0)}+\mathcal{O}(z)\right]\cdot \varepsilon_{aa_{1}}^{(0)}\mathrm{d}z\wedge \mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}\left[-\frac{1}{z^{2}}g^{(0)ab}\delta g_{ab}^{(0)}+2\delta g_{zz}+\frac{1}{2}g^{(0)ab}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}+g^{(0)ab}\left( \delta g_{ab}-\frac{1}{z^{2}}\delta g_{ab}^{(0)} \right)\right. \\
 & +zg^{(0)ab}\partial_{z}\left( \delta g_{ab}-\frac{1}{z^{2}}\delta g_{ab}^{(0)} \right)-\frac{1}{2}g^{(0)ab}g^{(0)cd}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}-\frac{1}{2}zg^{(0)ab}g^{(0)cd}\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right) \\
 & -zg^{(0)ab}g^{(0)cd}D_{a}^{(0)}\delta g_{zb}-z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})g_{zc}D_{d}^{(0)}\delta g_{ab}^{(0)}-4z^{2}g^{(0)ab}g_{za}\delta g_{zb} \\
 & \left.+2z^{2}g^{(0)ac}g^{(0)bd}g_{zc}g_{zd}\delta g_{ab}^{(0)}-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g^{(0)}_{ab}+\mathcal{O}(z^{2})\right]\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\mathbf{C}|_{\Gamma_{z}} & =\frac{1}{16\pi G}\left[zg^{(0)ab}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}\delta g_{zb}\delta g_{cd}^{(0)}\right.-\log z\left(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd}\right)D_{b}^{(0)}\delta g_{cd}^{(0)} \\
 & \left.+z\log z\left(-2g^{(0)ab}\delta g_{zb}+2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}\right)+\mathcal{O}(z^{2}\log z)\right]\cdot \varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

首先我们证明

$$\tag{C.10}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}
\end{align}
$$

的有限性。我们做类似于(C.2)的分解

$$\tag{C.11}
\begin{align}
\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\int_{M_{z_{0}}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}-\int_{\Gamma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z(\mathbf{E}^{\mu \nu}\delta g_{\mu \nu})_{za_{0}a_{1}}\right]\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

以及引入 $\displaystyle{H_{2}(z,x)}$ 使得

$$\tag{C.12}
\begin{align}
(\mathbf{E}^{\mu \nu}\delta g_{\mu \nu})_{za_{0}a_{1}} & =\frac{1}{16\pi G}\left[\frac{1}{2}g^{(0)ab}\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}+\frac{3}{2}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}\right. \\
 & +\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}^{2}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & -z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}\partial_{z}g_{zd}\delta g_{ab}^{(0)}-zg^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}-z^{2}g^{(0)ab}g^{(0)cd}g_{zc}\partial_{z}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.+H_{2}(z,x)\right]\varepsilon^{(0)}_{a_{0}a_{1}}\\
H_{2}(z,x) & \sim \mathcal{O}(z)
\end{align}
$$

那么将(C.12)重写为

$$\tag{C.13}
\begin{align}
(\mathbf{E}^{\mu \nu}\delta g_{\mu \nu})_{za_{0}a_{1}} & =\frac{1}{16\pi G}\left[\partial_{z}\left( \frac{1}{2}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}+(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g_{cd}^{(0)} \right)\delta g_{ab}^{(0)} \right)\right. \\
 & +\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}-z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.\left.-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}\right)+H_{2}(z,x)\right]\varepsilon_{a_{0}a_{1}}^{(0)}
\end{align}
$$

从而

$$\tag{C.14}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\int_{M_{z_{0}}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma} \frac{1}{16\pi G}\left( -\frac{1}{2}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g_{cd}^{(0)} \right)\delta g_{ab}^{(0)} \right) \\
 & -\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}+z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.\left.-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}\right)\right|_{z=z_{0}}\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
 & -\lim_{ \varepsilon \to 0 } \int_{\Gamma} \frac{1}{16\pi G}\left( -\frac{1}{2}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g_{cd}^{(0)} \right)\delta g_{ab}^{(0)} \right) \\
 & -\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}+z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.\left.-\frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}\right)\right|_{z=\varepsilon}\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}-\int_{\Gamma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}H_{2}(z,x)\right]\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

因此(C.10)是有限的。然后我们证明

$$\tag{C.15}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}
\end{align}
$$

的有限性。直接计算得到

$$\tag{C.16}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta g_{\mu \nu} & =\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\left(-\frac{1}{2}g^{(0)ab}\left( g_{zz}-\frac{1}{z^{2}} \right)\delta g_{ab}^{(0)}-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g^{(0)}_{ab}\right. \\
 & -\frac{1}{2}z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})\partial_{z}\left( g_{cd}-\frac{1}{z^{2}}g^{(0)}_{cd} \right)\delta g_{ab}^{(0)}+z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{c}^{(0)}g_{zd}\delta g_{ab}^{(0)} \\
 & \left.\left. \frac{1}{2}z^{2}g^{(0)ab}g^{(0)cd}g_{zc}g_{zd}\delta g_{ab}^{(0)}\right)\right|_{z=\varepsilon}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

因此(C.15)是有限的。最后我们证明

$$\tag{C.17}
\begin{align}
\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\Theta-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C}\right)
\end{align}
$$

的有限性。将(C.17)的 $\displaystyle{\Theta}$ 项分解为

$$\tag{C.18}
\begin{align}
\int_{\Sigma_{\varepsilon}}\Theta & =\int_{\Sigma_{z_{0}}}\Theta-\int_{\partial \Sigma}\left[ \int^{z_{0}}_{\varepsilon} \mathrm{d}z\Theta_{za_{1}}\right]\mathrm{d}x^{a_{1}}
\end{align}
$$

并引入 $\displaystyle{H_{3}^{a}(z,x)}$ 使得

$$\tag{C.19}
\begin{align}
\Theta_{za_{1}} & =\frac{1}{16\pi G}\left(-\frac{1}{z}(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}g_{cd}-g^{(0)ab}\delta g_{zb}+zg^{(0)ab}\partial_{z}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}\partial_{z}g_{zb}\delta g_{cd}^{(0)}\right. \\
 & \left.-(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})g_{zb}\delta g_{cd}^{(0)}+H_{3}^{a}(z,x)\right)\varepsilon_{aa_{1}}^{(0)} \\
H^{a}_{3}(z,x) & \sim \mathcal{O}(z)
\end{align}
$$

那么将(C.19)重写为

$$\tag{C.20}
\begin{align}
\Theta_{za_{1}} & =\frac{1}{16\pi G}\left(\partial_{z}\left(zg^{(0)ab}\delta g_{zb}-zg^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}-\log z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}\right.\right. \\
 & \left.z\log z\left(-2g^{(0)ab}\delta g_{zb}-g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}+2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}\right)\right)+2\log zg^{(0)ab}\partial_{z}(z\delta g_{zb}) \\
 & \left.+\log zg^{(0)ab}g^{(0)cd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}-2\log zg^{(0)ac}g^{(0)bd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}+H^{a}_{3}(z,x)\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

从而

$$\tag{C.21}
\begin{align}
\int_{\Sigma_{\varepsilon}}\Theta & =\int_{\Sigma_{z_{0}}}\Theta+\int_{\partial \Sigma} \frac{1}{16\pi G}\left(-zg^{(0)ab}\delta g_{zb}+zg^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)}+\log z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}\right. \\
 & \left.\left.+z\log z(2g^{(0)ab}\delta g_{zb}+g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}-2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)})\right)\right|_{z=z_{0}-z=\varepsilon}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & +\int_{\partial \Sigma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(-2\log zg^{(0)ab}\partial_{z}(z\delta g_{zb})-\log z g^{(0)ab}g^{(0)cd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}\right.\right. \\
 & \left.\left.+2\log zg^{(0)ac}g^{(0)bd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}-H_{3}^{a}(z,x)\right)\right]\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

另外 $\displaystyle{\mathbf{C}}$ 项给出

$$\tag{C.22}
\begin{align}
-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C} & =\int_{\partial \Sigma} \frac{1}{16\pi G}\left(-zg^{(0)ab}\delta g_{zb}+zg^{(0)ac}g^{(0)bd}g_{zb}\delta g^{(0)}_{cd}+\log z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}\right. \\
 & \left.\left.+z\log z(2g^{(0)ab}\delta g_{zb}+g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}-2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)})\right)\right|_{z=\varepsilon}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

将(C.21)和(C.22)相加，得到

$$\tag{C.23}
\begin{align}
\int_{\Sigma_{\varepsilon}}\Theta-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C} & =\int_{\Sigma_{z_{0}}}\Theta+\int_{\partial \Sigma} \frac{1}{16\pi G}\left(-zg^{(0)ab}\delta g_{zb}+zg^{(0)ac}g^{(0)bd}g_{zb}\delta g^{(0)}_{cd}+\log z(g^{(0)ab}g^{(0)cd}-g^{(0)ac}g^{(0)bd})D_{b}^{(0)}\delta g_{cd}^{(0)}\right. \\
 & \left.\left.+z\log z(2g^{(0)ab}\delta g_{zb}+g^{(0)ab}g^{(0)cd}g_{zb}\delta g_{cd}^{(0)}-2g^{(0)ac}g^{(0)bd}g_{zb}\delta g_{cd}^{(0)})\right)\right|_{z=z_{0}}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & +\int_{\partial \Sigma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(-2\log zg^{(0)ab}\partial_{z}(z\delta g_{zb})-\log z g^{(0)ab}g^{(0)cd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}\right.\right. \\
 & \left.\left.+2\log zg^{(0)ac}g^{(0)bd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}-H_{3}^{a}(z,x)\right)\right]\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

从而

$$\tag{C.24}
\begin{align}
\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\Theta-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C}\right)-\left(\int_{\Sigma_{\varepsilon}}\Theta-\int_{\partial \Sigma_{\varepsilon}}\mathbf{C}\right)  & =\int_{\partial \Sigma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(-2\log zg^{(0)ab}\partial_{z}(z\delta g_{zb})-\log z g^{(0)ab}g^{(0)cd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}\right.\right. \\
 & \left.\left.+2\log zg^{(0)ac}g^{(0)bd}\partial_{z}(zg_{zb})\delta g_{cd}^{(0)}-H_{3}^{a}(z,x)\right)\right]\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon) \\
 & =\mathcal{O}(\varepsilon^{s}\log \varepsilon)+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

因此(C.17)是有限的。

## 渐进对称性作用与作用量

对于以 $\displaystyle{\xi^{\mu}}$ 为参数的微分同胚，我们要求 $\displaystyle{\xi^{\mu}}$ 具有以下渐进行为

$$\tag{C.25}
\begin{align}
\xi^{z} & =z\xi^{(1)z}+\mathcal{O}(z^{3}) \\
\xi^{a} & =\xi^{(0)a}+\mathcal{O}(z^{2})
\end{align}
$$

其中 $\displaystyle{\xi^{(1)z}}$ 和 $\displaystyle{\xi^{(0)a}}$ 为任意无关于 $\displaystyle{z}$ 的函数。首先我们计算微分同胚作用于度规 $\displaystyle{g_{\mu \nu}}$ 的渐进行为

$$\tag{C.26}
\begin{align}
X_{\xi}\cdot \delta g_{zz} & =D_{a}^{(0)}\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}+2g_{za}\partial_{z}(\xi^{a}-\xi^{(0)a})+2\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(1)z}+z\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(1)z} \\
 & -\frac{2}{z^{3}}(\xi^{z}-z\xi^{(1)z})+\frac{2}{z^{2}}\partial_{z}(\xi^{z}-z\xi^{(1)z})+\mathcal{O}(z^{2}) \\
X_{\xi}\cdot \delta g_{za} & =D_{b}^{(0)}g_{zb}\xi^{(0)b}+g_{zb}D_{a}^{(0)}\xi^{(0)b}+\frac{1}{z^{2}}g^{(0)}_{ab}\partial_{z}(\xi^{b}-\xi^{(0)b})+g_{za}\xi^{(1)z}+z\partial_{z}g_{za}\xi^{(1)z}+\frac{1}{z}D_{a}\xi^{(1)z}+\mathcal{O}(z) \\
X_{\xi}\cdot \delta g_{ab} & =\frac{1}{z^{2}}(g^{(0)}_{bc}D_{a}^{(0)}\xi^{(0)c}+g_{ac}^{(0)}D_{b}^{(0)}\xi^{(0)c}-2g_{ab}^{(0)}\xi^{(1)z})+D_{c}^{(0)}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\xi^{(0)c}+\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)D_{a}^{(0)}\xi^{(0)c} \\
 & +\left( g_{ac}-\frac{1}{z^{2}}g^{(0)}_{ac} \right)D_{b}^{(0)}\xi^{(0)c}+\frac{1}{z^{2}}g^{(0)}_{bc}D_{a}^{(0)}(\xi^{c}-\xi^{(0)c})+\frac{1}{z^{2}}g_{ac}^{(0)}D_{b}^{(0)}(\xi^{c}-\xi^{(0)c})+z\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\xi^{(1)z} \\
 & +zg_{zb}D_{a}^{(0)}\xi^{(1)z}+zg_{za}D_{b}^{(0)}\xi^{(1)z}-\frac{2}{z^{3}}g^{(0)}_{ab}(\xi^{z}-z\xi^{(1)z})+\mathcal{O}(z^{2})
\end{align}
$$

然后我们计算得到()中各量的渐进行为

$$\tag{C.27}
\begin{align}
\xi \cdot \mathbf{L} & =\frac{1}{16\pi G}\left(-\frac{4}{z}\xi^{(0)a}+\frac{1}{z}R^{(0)}\xi^{(0)a}-2\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}-2g^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}-zg^{(0)bc}\partial_{z}^{2}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}\right. \\
 & \left.+2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}+4zg^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+4z^{2}g^{(0)bc}g_{zb}\partial_{z}g_{zc}\xi^{(0)c}-\frac{4}{z^{3}}(\xi^{a}-\xi^{(0)a})+\mathcal{O}(z)\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & +\frac{1}{16\pi G}\left(\frac{4}{z^{2}}\xi^{(1)z}-R^{(0)}\xi^{(1)z}+2z\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(1)z}+2zg^{(0)ab}\partial_{z}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\xi^{(1)z}+z^{2}g^{(0)ab}\partial_{z}^{2}\left( g_{ab}-\frac{1}{z^{2}}g^{(0)}_{ab} \right)\xi^{(1)z}\right. \\
 & \left.-2z^{2}g^{(0)ab}D_{a}^{(0)}\partial_{z}g_{zb}\xi^{(1)z}-4z^{2}g^{(0)ab}g_{za}g_{zb}\xi^{(1)z}-4z^{3}g^{(0)ab}g_{za}\partial_{z}g_{zb}\xi^{(1)z}+\frac{4}{z^{3}}(\xi^{z}-z\xi^{(1)z})+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon_{a_{0}a_{1}}^{(0)}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}} \\
\mu_{\xi}|_{\Gamma_{z}} & =\frac{1}{16\pi G}\left(\frac{2}{z^{2}}\xi^{(0)a}-2\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}-g^{(0)bc}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}-zg^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}+2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}\right. \\
 & +2z^{2}g^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+\frac{2}{z^{2}}(\xi^{a}-\xi^{(0)a})+2g^{(0)ab}D_{b}^{(0)}\xi^{(1)z}+2zg^{(0)ab}g_{zb}\xi^{(1)z}+\log z\left(D_{b}^{(0)}\left((g^{(0)bc}D_{c}^{(0)}\xi^{(0)a}-g^{(0)ac}D_{c}^{(0)}\xi^{(0)b})\right.\right. \\
 & \left.\left.+2z(g^{(0)bc}g_{zc}\xi^{(0)a}-g^{(0)ac}g_{zc}\xi^{(0)b})+R^{(0)}\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}-\frac{2}{z}\partial_{z}(\xi^{a}-\xi^{(0)a})-2zg^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z}\right)+\mathcal{O}(z^{2}\log z)\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
\varepsilon_{\xi}|_{\Gamma_{z}} & =\frac{1}{16\pi G}\left(-R^{(0)}\xi^{(0)a}+\mathcal{O}(z^{2})\right)\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

首先我们证明

$$\tag{C.28}
\begin{align}
\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma_{\varepsilon}}\mu_{\xi}\right)
\end{align}
$$

的有限性。我们做类似于(C.2)的分解

$$\tag{C.29}
\begin{align}
\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L} & =\int_{\Sigma_{z_{0}}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z(\xi \cdot \mathbf{L})_{za_{1}}\right]\mathrm{d}x^{a_{1}}
\end{align}
$$

并引入 $\displaystyle{H^{a}_{4}(z,x)}$ 使得

$$\tag{C.30}
\begin{align}
(\xi \cdot \mathbf{L})_{za_{1}} & =\frac{1}{16\pi G}\left(-\frac{4}{z^{3}}\xi^{(0)a}+\frac{1}{z}R^{(0)}\xi^{(0)a}-2\partial_{z}\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}-2g^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}-zg^{(0)bc}\partial_{z}^{2}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}\right. \\
 & \left.+2zg^{(0)bc}D_{b}^{(0)}\partial_{z}g_{zc}\xi^{(0)a}+4zg^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+4z^{2}g^{(0)bc}g_{zb}\partial_{z}g_{zc}\xi^{(0)a}-\frac{4}{z^{3}}(\xi^{a}-\xi^{(0)a})+H^{a}_{4}(z,x)\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
H^{a}_{4}(z,x) & \sim \mathcal{O}(z)
\end{align}
$$

将(C.30)改写为

$$\tag{C.31}
\begin{align}
(\xi \cdot \mathbf{L})_{za_{1}} & =\frac{1}{16\pi G}\left(\partial_{z}\left(\frac{2}{z^{^{2}}}\xi^{(0)a}-2\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}-g^{(0)bc}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}-zg^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}\right.\right. \\
 & \left.+2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}+2z^{2}g^{(0)bc}g_{zb}g_{zc}\xi^{(0)a}+\log z\left( R^{(0)}\xi^{(0)a}-2zg^{(0)bc}D^{(0)}_{b}g_{zc}\xi^{(0)a}-\frac{4}{z^{2}}(\xi^{a}-\xi^{(0)a}) \right)\right) \\
 & +2\log zg^{(0)bc}D_{b}^{(0)}\partial_{z}(zg_{zc})\xi^{(0)a}+4\log z\partial_{z}\left( \frac{1}{z^{2}}(\xi^{a}-\xi^{(0)a})+H^{a}_{4}(z,x) \right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

考虑将 $\displaystyle{\xi^{a}}$ 的渐进行为进一步展开为

$$\tag{C.32}
\begin{align}
\xi^{a} & =\xi^{(0)a}+z^{2}\xi^{(2)a}+\mathcal{O}(z^{2+s})
\end{align}
$$

其中 $\displaystyle{\xi^{(2)a}}$ 独立于 $\displaystyle{z}$。于是

$$\tag{C.33}
\begin{align}
\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma_{\varepsilon}}\mu_{\xi}& =\int_{\Sigma_{z_{0}}}\xi \cdot \mathbf{L}+\int_{\partial \Sigma} \frac{1}{16\pi G}\left(-\frac{2}{z^{2}}\xi^{(0)a}+2\left( g_{zz}-\frac{1}{z^{2}} \right)\xi^{(0)a}+g^{(0)bc}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}\right. \\
 & +zg^{(0)bc}\partial_{z}\left( g_{bc}-\frac{1}{z^{2}}g^{(0)}_{bc} \right)\xi^{(0)a}-2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}-2z^{2}g^{(0)bc}g_{zb}g_{zc}\xi^{(0)a} \\
 & \left.+\log z\left( -R^{(0)}\xi^{(0)a}+2zg^{(0)bc}D_{b}^{(0)}g_{zc}\xi^{(0)a}+\frac{4}{z^{2}}(\xi^{a}-\xi^{(0)a}) \right)\right|_{z=z_{0}}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & +\int_{\partial \Sigma}\frac{1}{16\pi G}\left(-\frac{2}{z^{2}}\xi^{(0)a}-2g^{(0)ab}D_{b}^{(0)}\xi^{(1)z}-2zg^{(0)ab}g_{zb}\xi^{(1)z}\right. \\
 & \left.\left.+\log z\left( 2z\partial_{z}\left( \frac{1}{z^{2}}(\xi^{a}-\xi^{(0)a}) \right)+2zg^{(0)ab}\partial_{z}(zg_{zb})\xi^{(1)z} \right)\right)\right|_{z=\varepsilon}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & +\int_{\partial \Sigma}\left[\int^{z_{0}}_{\varepsilon}\mathrm{d}z \frac{1}{16\pi G}\left(-2\log zg^{(0)bc}D_{b}^{(0)}\partial_{z}(zg_{zb})\xi^{(0)a}-4\log z\partial_{z}\left( \frac{1}{z^{2}}(\xi^{a}-\xi^{(0)a}) \right)\right.\right. \\
 & \left.\left.-H^{a}_{4}(z,x)\right)\right]\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

从而

$$\tag{C.34}
\begin{align}
\lim_{ \varepsilon \to 0 } \left(\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma_{\varepsilon}}\mu_{\xi}\right)-\left(\int_{\Sigma_{\varepsilon}}\xi \cdot \mathbf{L}-\int_{\partial \Sigma_{\varepsilon}}\mu_{\xi}\right) & =\mathcal{O}(\varepsilon^{s}\log \varepsilon)+\mathcal{O}(\varepsilon^{2}\log \varepsilon)
\end{align}
$$

因此(C.28)是有限的。最后证明

$$\tag{C.35}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\nu_{\xi}
\end{align}
$$

的有限性。直接计算得到

$$\tag{C.36}
\begin{align}
\lim_{ \varepsilon \to 0 } \int_{\Gamma_{\varepsilon}}\nu_{\xi} & =-\int_{\Gamma} \frac{1}{16\pi G}R^{(0)}\xi^{(1)z}\cdot \frac{1}{2!}\varepsilon^{(0)}_{a_{0}a_{1}}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$

因此(C.35)是有限的。
