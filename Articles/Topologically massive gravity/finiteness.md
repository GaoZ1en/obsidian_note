in this section we will consider the finiteness of quantities appeared in the procedure of covariant phase space formalism.

we choose the $\displaystyle{(z,x^{a})}$ local coordinates, and the metric takes the asymptotic behavior

$$\tag{0.1}
\begin{align}
g_{zz} & =\frac{1}{z^{2}}+\mathcal{O}(z^{0}) \\
g_{za} & =\mathcal{O}(z^{-1}) \\
g_{ab} & =\frac{1}{z^{2}}g^{(0)}_{ab}+\mathcal{O}(z^{0})
\end{align}
$$

## action

consider the action with boundary term (counter term for infrared divergence needed, but not added so f)

$$\tag{1.1}
\begin{align}
S & =\lim_{ \varepsilon \to 0 } S_{\varepsilon} \\
S_{\varepsilon} & = \int_{M_{\varepsilon}}\mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell
\end{align}
$$
$$\tag{1.1}
\begin{align}
S_{\varepsilon} & =\int_{M_{\varepsilon}} \frac{1}{16\pi G}(R+2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\int_{\Gamma_{\varepsilon}} \frac{1}{8\pi G}(K-1)\cdot\frac{1}{2!}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & +\int_{M_{\varepsilon}} \frac{1}{32\pi G\mu}\varepsilon^{\rho \sigma \lambda}\left( \Gamma^{\mu}_{~\nu \rho}\partial_{\sigma}\Gamma^{\nu}_{~\mu \lambda}+\frac{2}{3}\Gamma^{\mu}_{~\nu \rho}\Gamma^{\nu}_{~\eta\sigma}\Gamma^{\eta}_{~\mu \lambda} \right)\cdot \frac{1}{3!}\varepsilon_{\rho \sigma \lambda}\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda}
\end{align}
$$

with bulk and boundary Lagrangian

$$\tag{1.3}
\begin{align}
\mathbf{L} & =\frac{1}{16\pi G}(R+2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & +\frac{1}{32\pi G\mu}\left( \Gamma^{\mu}_{~\nu \rho}\partial_{\sigma}\Gamma^{\nu}_{~\mu \lambda}+\frac{2}{3}\Gamma^{\mu}_{~\nu \rho}\Gamma^{\nu}_{~\eta \sigma}\Gamma^{\eta}_{~\mu \lambda} \right)\mathrm{d}x^{\rho}\wedge \mathrm{d}x^{\sigma}\wedge \mathrm{d}x^{\lambda} \\
\ell|_{\Gamma_{\varepsilon}} & =\frac{1}{8\pi G}(K-1)\cdot \frac{1}{2!}\varepsilon^{(\Gamma_{\varepsilon})}_{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}
\end{align}
$$

introduce the factorization

$$\tag{1.4}
\begin{align}
\int_{M_{\varepsilon}}\mathbf{L} & =\int_{M_{z_{0}}}\mathbf{L}+\int_{M_{\varepsilon}-M_{z_{0}}}\mathbf{L} \\
 & =\int_{M_{z_{0}}}\mathbf{L}+\int_{\Gamma}\int^{z_{0}}_{\varepsilon}\mathrm{d}z\mathbf{L}_{z_{0}a_{0}a_{1}}\cdot \frac{1}{2!}\mathrm{d}x^{a_{0}}\wedge \mathrm{d}x^{a_{1}}
\end{align}
$$
we first compute the asymptotic behavior of the Chern-Simons term, since other terms have been computed.

$$\tag{1.5}
\begin{align}
S_{CS} & =S_{CS,z_{0}}+\frac{1}{32\pi G\mu}\int_{\varepsilon}^{z_{0}}\mathrm{d}z\int_{\Gamma_{z}} \frac{1}{2}\varepsilon^{(\Gamma_{z})ab}(\Gamma^{\rho}_{z\sigma}(\partial_{a}\Gamma^{\sigma}_{b\rho}-\partial_{b}\Gamma^{\sigma}_{a\rho})+\Gamma^{\rho}_{a\sigma}(\partial_{b}\Gamma^{\sigma}_{z\rho}-\partial_{z}\Gamma^{\sigma}_{b\rho}) \\
 & +\Gamma^{\rho}_{b\sigma}(\partial_{z}\Gamma^{\sigma}_{a\rho}-\partial_{a}\Gamma^{\sigma}_{z\rho})+2\Gamma^{\rho}_{z\sigma}(\Gamma^{\sigma}_{a\tau}\Gamma^{\tau}_{b\rho}-\Gamma^{\sigma}_{b\tau}\Gamma^{\tau}_{a\rho}))\cdot\frac{1}{2!}\varepsilon_{ab}^{(\Gamma_{z})}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b} \\
 & =S_{CS,z_{0}}+\frac{1}{32\pi G\mu}\int_{\varepsilon}^{z_{0}}\mathrm{d}z\int_{\Gamma_{z}}
\end{align}
$$

first term

$$\tag{.}
\begin{align}
\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{\rho}_{z\sigma}(\partial_{a}\Gamma^{\sigma}_{b\rho}-\partial_{b}\Gamma^{\sigma}_{a\rho}) & =\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{zz}(\partial_{a}\Gamma^{z}_{zb}-\partial_{b}\Gamma^{z}_{za})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{zz}(\partial_{a}\Gamma^{z}_{bc}-\partial_{b}\Gamma^{z}_{ac}) \\
 & +\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{zc}(\partial_{a}\Gamma^{c}_{zb}-\partial_{b}\Gamma^{c}_{za})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{zd}(\partial_{a}\Gamma^{d}_{bc}-\partial_{b}\Gamma^{d}_{ac}) \\
 & =
\end{align}
$$

$$\tag{.}
\begin{align}
\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{\rho}_{a\sigma}(\partial_{b}\Gamma^{\sigma}_{z\rho}-\partial_{z}\Gamma^{\sigma}_{b\rho}) & =\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{za}(\partial_{b}\Gamma^{z}_{zz}-\partial_{z}\Gamma^{z}_{zb})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{za}(\partial_{b}\Gamma^{z}_{zc}-\partial_{z}\Gamma^{z}_{bc}) \\
 & +\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{ac}(\partial_{b}\Gamma^{c}_{zz}-\partial_{z}\Gamma^{c}_{zb})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{ad}(\partial_{b}\Gamma^{d}_{zd}-\partial_{z}\Gamma^{d}_{bd})
\end{align}
$$

$$\tag{.}
\begin{align}
\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{\rho}_{b\sigma}(\partial_{z}\Gamma^{\sigma}_{a\rho}-\partial_{a}\Gamma^{\sigma}_{z\rho}) & =\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{zb}(\partial_{z}\Gamma^{z}_{za}-\partial_{a}\Gamma^{z}_{zz})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{zb}(\partial_{z}\Gamma^{z}_{ac}-\partial_{a}\Gamma^{z}_{zc}) \\
 & +\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{z}_{bc}(\partial_{z}\Gamma^{c}_{za}-\partial_{a}\Gamma^{c}_{zz})+\frac{1}{2}\varepsilon^{(0)ab}\Gamma^{c}_{bd}(\partial_{z}\Gamma^{d}_{ac}-\partial_{a}\Gamma^{d}_{zc})
\end{align}
$$

$$\tag{.}
\begin{align}
\varepsilon^{(0)ab}\Gamma^{\rho}_{z\sigma}(\Gamma^{\sigma}_{a\tau}\Gamma^{\tau}_{b\rho}-\Gamma^{\rho}_{b\tau}\Gamma^{\tau}_{a\rho}) & =\varepsilon^{(0)ab}\Gamma^{\rho}_{z\sigma}(\Gamma^{\sigma}_{za}\Gamma^{z}_{b\rho}-\Gamma^{\sigma}_{zb}\Gamma^{z}_{a\rho})+\varepsilon^{(0)ab}\Gamma^{\rho}_{z\sigma}(\Gamma^{\sigma}_{ac}\Gamma^{c}_{b\rho}-\Gamma^{\sigma}_{bc}\Gamma^{c}_{a\rho}) \\
 & =\varepsilon^{(0)ab}\Gamma^{z}_{zz}(\Gamma^{z}_{za}\Gamma^{z}_{bz}-\Gamma^{z}_{zb}\Gamma^{z}_{za})+\varepsilon^{(0)ab}\Gamma^{c}_{zz}(\Gamma^{z}_{za}\Gamma^{z}_{bc}-\Gamma^{z}_{zb}\Gamma^{z}_{ac}) \\
 & +\varepsilon^{(0)ab}\Gamma^{z}_{zc}(\Gamma^{c}_{za}\Gamma^{z}_{zb}-\Gamma^{c}_{zb}\Gamma^{z}_{za})+\varepsilon^{(0)ab}\Gamma^{c}_{zd}(\Gamma^{d}_{za}\Gamma^{z}_{bc}-\Gamma^{d}_{zb}\Gamma^{z}_{ac}) \\
 & +\varepsilon^{(0)ab}\Gamma^{z}_{zz}(\Gamma^{z}_{ac}\Gamma^{c}_{zb}-\Gamma^{z}_{bc}\Gamma^{c}_{za})+\varepsilon^{(0)ab}\Gamma^{d}_{zz}(\Gamma^{z}_{ac}\Gamma^{c}_{bd}-\Gamma^{z}_{bc}\Gamma^{c}_{ad}) \\
 & +\varepsilon^{(0)ab}\Gamma^{z}_{zd}(\Gamma^{d}_{ac}\Gamma^{c}_{zb}-\Gamma^{d}_{bc}\Gamma^{c}_{za})+\varepsilon^{(0)ab}\Gamma^{d}_{ze}(\Gamma^{d}_{ac}\Gamma^{c}_{bd}-\Gamma^{e}_{bc}\Gamma^{c}_{ad})
\end{align}
$$

这里写的代码似乎错误的用$\displaystyle{D^{(0)}_{a}}$代替了$\displaystyle{\partial_{a}}$，一会儿改一下

the final result is

$$\tag{.}
\begin{align}
\mathbf{L}_{CS} & =
\end{align}
$$
