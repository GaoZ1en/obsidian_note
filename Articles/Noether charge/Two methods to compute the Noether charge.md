## current method

this method is based on

$$\tag{1.1}
\begin{align}
Q_{\xi}=X_{\xi}\cdot \theta-\alpha_{\xi}
\end{align}
$$

where $\displaystyle{\theta}$ and $\displaystyle{\alpha_{\xi}}$ are defined as

$$\tag{1.2}
\begin{align}
\delta S & =E\delta \phi +\mathrm{d}\theta \\
X_{\xi}\cdot \delta S & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

## ordinary method

this ordinary method is based on the Noether theorem

$$\tag{2.1}
\begin{align}
-\delta Q_{\xi} & =X_{\xi}\cdot \Omega
\end{align}
$$

$$\tag{2.2}
\begin{align}
X_{\xi}\cdot \Omega & =X_{\xi}\cdot \delta \theta \\
 & =\mathcal{L}_{X_{\xi}}\theta-\delta(X_{\xi}\cdot \theta) \\
 & =\mathcal{L}_{\xi}\theta+X_{\delta \xi}\cdot \theta-\delta(X_{\xi}\cdot \theta) \\
 & =\mathrm{d}(\xi \cdot \theta)+\xi \cdot \mathrm{d}\theta+X_{\delta \xi}\cdot \theta-\delta(X_{\xi}\cdot \theta) \\
 & =\mathrm{d}(\xi \cdot \theta)+\xi \cdot \delta L+X_{\delta \xi}\cdot \theta-\delta(X_{\xi}\cdot \theta) \\
 & =\delta(\xi \cdot L-X_{\xi}\cdot \theta)-(\delta \xi \cdot L-X_{\delta \xi}\cdot \theta)+\mathrm{d}(\xi \cdot \theta)
\end{align}
$$

in pure AdS3 gravity, we have

$$\tag{2.3}
\begin{align}
\int_{\Sigma}\delta(X_{\xi}\cdot \theta-\xi \cdot L) & =\delta \int_{\partial\Sigma} \frac{1}{16\pi G}\varepsilon_{zab}(\nabla^{a}\xi^{z}-\nabla^{z}\xi^{a})\mathrm{d}x^{b} \\
 & =\frac{1}{16\pi G}\int_{\partial \Sigma}(\nabla^{a}\delta\xi^{z}-\nabla^{z}\delta \xi^{a}+g^{ab}\delta \Gamma^{z}_{bz}\xi^{z}+g^{ab}\delta \Gamma^{z}_{bc}\xi^{c}+g^{za}\delta \Gamma^{z}_{zz}\xi^{z}+g^{za}\delta \Gamma^{z}_{zb}\xi^{b} \\
 & -g^{zz}\delta \Gamma^{a}_{zz}\xi^{z}-g^{zz}\delta \Gamma^{a}_{zb}\xi^{b}-g^{zb}\delta \Gamma^{a}_{bz}\xi^{z}-g^{zb}\delta \Gamma^{a}_{bc}\xi^{c})\varepsilon_{zaa_{1}}\mathrm{d}x^{a_{1}} \\
 & =\frac{1}{16\pi G}\int_{\partial \Sigma}\left( 2z^{-2}\delta \xi^{a}-z^{-1}\partial_{z}\delta \xi^{a}-\xi^{(0)a}\delta g_{zz}-2\xi^{(0)b}g^{(0)ab}\delta g_{bc}+\xi^{(0)a}g^{(0)bc}\delta g_{bc} \right. \\
 & \left.-\frac{1}{2}zg^{(0)ab}\delta g_{zb}D_{c}^{(0)}\xi^{(0)c}+z\xi^{(0)c}g^{(0)ab}D_{b}^{(0)}\delta g_{zc}-z\xi^{(0)c}g^{(0)ab}\partial_{z}\delta g_{bc}+zg^{(0)bc}\delta g_{zb}D_{c}^{(0)}\xi^{(0)a}\right. \\
 & \left.+2z^{2}\xi^{(0)a}g^{(0)bc}g_{zb}\delta g_{zc}-\frac{1}{2}z^{2}g^{(0)ab}\partial_{z}\delta g_{zb}D_{c}^{(0)}\xi^{(0)c}+\mathcal{O}(z^{2})\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

$$\tag{2.4}
\begin{align}
\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L) & =\frac{1}{16\pi G}\int_{\partial \Sigma}(\nabla^{a}\delta \xi^{z}-\nabla^{z}\delta \xi^{a})\varepsilon_{zaa_{1}}\mathrm{d}x^{a_{1}} \\
 & =\frac{1}{16\pi G}\int_{\partial \Sigma}\left(2z^{-2}\delta \xi^{a}-z^{-1}\partial_{z}\delta \xi^{a}+\mathcal{O}(z^{2})\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

$$\tag{2.5}
\begin{align}
\int_{\Sigma}\mathrm{d}(\xi \cdot \theta) & =\int_{\partial \Sigma}\xi \cdot \theta \\
 & =\frac{1}{16\pi G}\int_{\partial \Sigma}\left(2\xi^{(0)a}\delta g_{zz}-4z^{2}\xi^{(0)a}g^{(0)cd}g_{zc}\delta g_{zd}-z\xi^{(0)a}g^{(0)cd}D_{d}^{(0)}\delta g_{zc}+\xi^{(0)a}g^{(0)cd}\delta g_{cd}\right. \\
 & \left.+z\xi^{(0)a}g^{(0)cd}\partial_{z}\delta g_{cd}-\frac{1}{2}zg^{(0)ad}\delta g_{zd}D_{c}^{(0)}\xi^{(0)c}+\frac{1}{2}z^{2}g^{(0)ad}\partial_{z}\delta g_{zd}D_{c}^{(0)}\xi^{(0)c}+\mathcal{O}(z^{2})\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

sum over (2.3-5), we have

$$\tag{2.6}
\begin{align}
-X_{\xi}\cdot \Omega & =\frac{1}{16\pi G}\int_{\partial \Sigma}\left(\xi^{(0)a}\delta g_{zz}+2\xi^{(0)a}g^{(0)cd}\delta g_{cd}-2\xi^{(0)c}g^{(0)ad}\delta g_{cd}-zg^{(0)ad}\delta g_{zd}D_{c}^{(0)}\xi^{(0)c}-z\xi^{(0)a}g^{(0)cd}D_{c}^{(0)}\delta g_{zd}\right. \\
 & \left.+z\xi^{(0)a}g^{(0)cd}\partial_{z}\delta g_{cd}+z\xi^{(0)c}g^{(0)ad}D_{d}^{(0)}\delta g_{zc}-z\xi^{(0)c}g^{(0)ad}\partial_{z}\delta g_{cd}+zg^{(0)cd}\delta g_{zc}D_{d}^{(0)}\xi^{(0)a}-2z^{2}\xi^{(0)a}g^{(0)cd}\delta g_{zc}g_{zd}+\mathcal{O}(z^{2})\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & =\delta\left(\frac{1}{16\pi G}\int_{\partial \Sigma}\left(\xi^{(0)a}\delta g_{zz}+2\xi^{(0)a}g^{(0)cd}g_{cd}-2\xi^{(0)c}g^{(0)ad}g_{cd}-zg^{(0)ad}g_{zd}D_{c}^{(0)}\xi^{(0)c}-z\xi^{(0)a}g^{(0)cd}D_{c}^{(0)}g_{zd}\right.\right. \\
 & \left.\left.-z\xi^{(0)a}g^{(0)cd}D_{c}^{(0)}g_{zd}+z\xi^{(0)c}g^{(0)ad}D_{d}^{(0)}g_{zc}+zg^{(0)cd}g_{zc}D_{d}^{(0)}\xi^{(0)a}-z^{2}\xi^{(0)a}g^{(0)cd}g_{zc}g_{zd}\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}\right)
\end{align}
$$

then

$$\tag{2.7}
\begin{align}
Q_{\xi} & =\lim_{ \varepsilon \to 0 } \frac{1}{16\pi G}\int_{\partial \Sigma}\left(\xi^{(0)a}\Delta g_{zz}+2\xi^{(0)a}g^{(0)cd}\Delta g_{cd}-2\xi^{(0)c}g^{(0)ad}\Delta g_{cd}-zg^{(0)ad}g_{zd}D_{c}\xi^{(0)c}-z\xi^{(0)a}g^{(0)cd}D_{c}^{(0)}g_{zd}\right. \\
 & \left.+z\xi^{(0)c}g^{(0)ad}D_{d}^{(0)}g_{zc}+zg^{(0)cd}g_{zc}D_{d}^{(0)}\xi^{(0)a}-z^{2}\xi^{(0)a}g^{(0)cd}g_{zc}g_{zd}\right)\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}|_{z=\varepsilon} \\
 & =\frac{1}{8\pi G}\int_{\partial \Sigma}\xi^{(0)d}g^{(0)ac}(K_{ab}-K\gamma_{ab}+\gamma_{ab})\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}+\lim_{ \varepsilon \to 0 } \frac{\varepsilon}{16\pi G}\int_{\partial \Sigma}D_{c}^{(0)}(\xi^{(0)a}g^{(0)cd}g_{zd}-\xi^{(0)c}g^{(0)ad}g_{zd})\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

the second term is a total derivative term, which vanishes under the assumption of compact $\displaystyle{\partial \Sigma}$

in deriving (2.3-4), we use the following argument

$$\tag{2.8}
\begin{align}
X_{\xi}\cdot \theta-\xi \cdot \mathbf{L} & =\mathrm{d}Q_{\xi}-\mathbf{E}^{\mu \nu}\xi_{\nu}\frac{1}{2!}\varepsilon_{\mu \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\mathrm{d}x^{\mu_{2}} \\
Q_{\xi} & =\frac{1}{32\pi G}(\nabla^{\nu}\xi^{\mu}-\nabla^{\mu}\xi^{\nu})\varepsilon_{\mu \nu \mu_{1}}\mathrm{d}x^{\mu_{1}}
\end{align}
$$

## other examples

### free scalar

$$\tag{3.1}
\begin{align}
S & =-\frac{1}{2}\int_{M} g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi \cdot \frac{1}{d!}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
\delta S & =-\int_{M} g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\delta \phi \cdot \frac{1}{d!}\varepsilon_{\mu_{0}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \mathrm{d}x^{\mu_{d-1}} \\
 & =\int_{M}E_{\phi}\mathrm{d}\phi+\theta|_{\Sigma_{f}-\Sigma_{i}} \\
\int_{M}E_{\phi}\delta \phi & =\int_{M}\nabla^{2}\phi \delta \phi \cdot \frac{1}{d!}\varepsilon_{\mu_{0}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{0}}\wedge\dots \wedge\mathrm{d}x^{\mu_{d-1}} \\
\theta & =-\int_{\Sigma}\nabla^{\mu}\phi \delta \phi \cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge\mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

then the (pre)symplectic form is given by

$$\tag{3.2}
\begin{align}
\omega=\delta \theta & =-\int_{\Sigma}\nabla^{\mu}\delta \phi \wedge \delta \phi \cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

this action is invariant under infinitesimal diffeomorphism generated by $\displaystyle{X_{\xi}=\int \mathrm{d}^{d}x \xi^{\mu}\nabla_{\mu}\phi \frac{\delta}{\delta \phi}}$, where $\displaystyle{\xi_{\mu}}$ satisfies the Killing equation $\displaystyle{\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}=0}$

$$\tag{3.3}
\begin{align}
-\delta \int_{\Sigma}(X_{\xi}\cdot \theta-\xi \cdot L) & =\delta \int_{\Sigma}\left(\nabla^{\mu}\phi(X_{\xi}\cdot \delta \phi)-\frac{1}{2}\xi^{\mu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\delta \int_{\Sigma}\left(\nabla^{\mu}\phi \xi^{\nu}\nabla_{\nu}\phi-\frac{1}{2}\xi^{\mu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\int_{\Sigma}(X_{\delta\xi}\cdot \theta-\delta \xi \cdot L)+\delta' \int_{\Sigma}\xi_{\nu}\left(\nabla^{\mu}\phi \nabla^{\nu}\phi-\frac{1}{2}g^{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L)+\delta'Q_{\xi}
\end{align}
$$

where

$$\tag{3.4}
\begin{align}
Q_{\xi} & =-\int_{\Sigma}T^{\mu \nu}\tau_{\nu} \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}}
\end{align}
$$

the third term vanishes under the assumption that $\displaystyle{\partial \Sigma}$ is compact. and this is consistent with the method discussed in the current work.

---
### classical Liouville theory

$$\tag{4.1}
\begin{align}
S & =\int_{M} \mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
\delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\frac{1}{2\pi}E_{\phi}\delta \phi+\theta|_{\Sigma_{f}-\Sigma_{i}} \\
E_{\phi} & =\nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \\
\theta|_{\Sigma} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi
\end{align}
$$

consider the following symmetry

$$\tag{4.2}
\begin{align}
X_{\xi}=\int_{M}\mathrm{d}^{2}x\left(\xi^{\mu}\nabla_{\mu}+\frac{1}{\gamma}\nabla_{\mu}\xi^{\mu}\right) \frac{\delta}{\delta \phi}
\end{align}
$$

with conformal Killing equation

$$\tag{4.3}
\begin{align}
\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho} & =0 \\
\implies \nabla^{\nu}\nabla_{\nu}\xi_{\mu}+\frac{1}{2}R\xi_{\mu} & =0 \\
\implies\nabla^{\nu}\nabla_{\nu}\nabla_{\mu}\xi^{\mu}+\xi^{\mu}\nabla_{\mu}R+R\nabla_{\mu}\xi^{\mu} & =0
\end{align}
$$

use

$$\tag{4.3}
\begin{align}
-X_{\xi}\cdot \omega =\delta(X_{\xi}\cdot \theta-\xi \cdot L)-(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L)-\mathrm{d}(\xi \cdot \theta)
\end{align}
$$

the first term gives that

$$\tag{.}
\begin{align}
-\int_{\Sigma}\xi \cdot L & =\int_{\Sigma}\left(\frac{1}{4\pi}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{1}{2\pi \gamma}R\phi+\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)\xi^{\mu}\varepsilon_{\mu \mu_{1}} \mathrm{d}x^{\mu_{1}}
\end{align}
$$

$$\tag{4.4}
\begin{align}
\delta\int_{\Sigma}(X_{\xi}\cdot \theta-\xi \cdot L) & =\delta \int_{\Sigma}\left(\frac{1}{2\pi}\nabla^{\mu}\phi(X_{\xi}\cdot \delta \phi)+\frac{1}{4\pi}\xi^{\mu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
 & =\delta\int_{\Sigma}\left(\frac{1}{2\pi}\nabla^{\mu}\phi\left( \xi^{\nu}\nabla_{\nu}\phi+\frac{1}{\gamma}\nabla_{\nu}\xi^{\nu} \right)+\frac{1}{4\pi}\xi^{\mu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
 & =\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L)+\delta\int_{\Sigma}
\end{align}
$$

$$\tag{4.4}
\begin{align}
\delta \int_{\Sigma}(X_{\xi}\cdot \theta-\xi \cdot L) & = \delta \int_{\Sigma}\left( -\frac{1}{2\pi}\nabla^{\mu}\phi(X_{\xi}\cdot \delta \phi)+\frac{1}{4\pi}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi \xi^{\mu}+\frac{1}{2\pi \gamma}R\phi \xi^{^{\mu}+\mu/4\pi \gamma^{2}}e^{\gamma \phi}\xi^{\mu} \right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
 & =\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L)+\delta'\int_{\Sigma}\left(-\frac{1}{2\pi}\nabla^{\mu}\phi\left(\xi^{\nu}\nabla_{\nu}\phi+\frac{1}{\gamma}\nabla_{\nu}\xi^{\nu}\right)+\frac{1}{4\pi}\xi^{\mu}g^{\rho \sigma}\nabla_{\rho}\phi \nabla_{\sigma}\phi+\frac{1}{2\pi \gamma}\xi^{\mu}R\phi+\frac{\mu}{4\pi \gamma^{2}}\xi^{\mu}e^{\gamma \phi}\right)\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
 & =\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot L)+\delta'\int_{\Sigma}T^{\mu \nu}\xi_{\nu}\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
Q_{\xi} & =-\frac{1}{2\pi}\int_{\Sigma}T^{\mu \nu}\xi_{\nu}\varepsilon_{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
T^{\mu \nu} & =-\nabla^{\mu}\phi \nabla^{\nu}\phi+\frac{1}{2}g^{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi+\frac{2}{\gamma}\nabla^{\mu}\nabla^{\nu}\phi-\frac{2}{\gamma}g^{\mu \nu}\nabla^{2}\phi+\frac{\mu}{2\gamma^{2}}g^{\mu \nu}e^{\gamma \phi}
\end{align}
$$
terms supports on $\displaystyle{\partial \Sigma}$ are neglected under the assumption that $\displaystyle{\partial \Sigma}$ is compact. this is also consistent with the result before

## discuss

it is seems that $\displaystyle{\delta}$ are not the same symbol in the ordinary method and our current method. in the ordinary method, $\displaystyle{\delta}$ acts not only on the dynamical variables, but also the vector $\displaystyle{\xi^{\mu}}$ introduced in the definition of $\displaystyle{X_{\xi}}$ in the ordinary approach, while $\displaystyle{\delta}$ acts only on the dynamical variables in our current approach...?

consider a exact 1-form of the configuration space $\displaystyle{\vartheta=\delta \phi}$, we have

$$\tag{5.1}
\begin{align}
\mathcal{L}_{X_{\xi}}\vartheta & =X_{\xi}\cdot \delta\vartheta+\delta(X_{\xi}\cdot \vartheta) \\
 & =\delta(X_{\xi}\cdot \vartheta)=\delta(\mathcal{L}_{\xi}\phi)=\delta(\xi^{\mu}\nabla_{\mu}\phi) \\
 & =\delta \xi^{\mu}\nabla_{\mu}\phi+\xi^{\mu}\nabla_{\mu}\delta\phi \\
 & =\mathcal{L}_{\xi}\delta \phi+X_{\delta \xi}\cdot \delta \phi=\mathcal{L}_{\xi}\vartheta+X_{\delta \xi}\cdot \vartheta
\end{align}
$$

