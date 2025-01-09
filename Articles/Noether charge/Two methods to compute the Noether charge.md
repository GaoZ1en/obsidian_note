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
X_{\xi}\cdot \omega & =X_{\xi}\cdot \delta \theta \\
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
-X_{\xi}\cdot \omega & =X_{\xi}\cdot\int_{\Sigma}\nabla^{\mu}\delta \phi \wedge \delta \phi \cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\int_{\Sigma}\left(\nabla^{\mu}(X_{\xi}\cdot \delta \phi)\delta \phi-\nabla^{\mu}\delta \phi(X_{\xi}\cdot \delta \phi)\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\int_{\Sigma}\left(\nabla^{\mu}(\xi^{\nu}\nabla_{\nu}\phi)\delta \phi-\nabla^{\mu}\delta \phi \xi^{\nu}\nabla_{\nu}\phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\delta \int_{\Sigma}\xi_{\nu}\left(-\nabla^{\mu}\phi \nabla^{\nu}\phi+\frac{1}{2}g^{\mu \nu}\nabla_{\rho}\phi \nabla^{\rho}\phi\right)\cdot \frac{1}{(d-1)!}\varepsilon_{\mu \mu_{1}\dots \mu_{d-1}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{d-1}} \\
 & =\delta Q_{\xi}
\end{align}
$$

this agree with the method discussed in the current work.

---
### classical Liouville theory

$$\tag{4.1}
\begin{align}
S & =\int_{M} \mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right) \\
\delta S & =\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(\frac{1}{2\pi}E_{\phi}\delta \phi-\frac{1}{4\pi}T^{\alpha \beta}\delta g_{\alpha \beta}\right)+\theta|_{\Sigma_{f}-\Sigma_{i}} \\
E_{\phi} & =\nabla^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \\
T^{\alpha \beta} & =-\nabla^{\alpha}\phi \nabla^{\beta}\phi+\frac{1}{2}g^{\alpha \beta}\nabla^{\rho}\phi \nabla_{\rho}\phi+\frac{\mu}{2\gamma^{2}}g^{\alpha \beta}e^{\gamma \phi}+\frac{2}{\gamma}\nabla^{\alpha}\nabla^{\beta}\phi-\frac{2}{\gamma}g^{\alpha \beta}\nabla^{2}\phi \\
\theta|_{\Sigma} & =\int_{\Sigma}\mathrm{d}x\sqrt{ \sigma }\left(\frac{1}{2\pi}\tau^{\mu}\nabla_{\mu}\phi \delta \phi+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla^{\nu}\delta g_{\mu \nu}\phi-\frac{1}{2\pi \gamma}\tau^{\gamma}\nabla_{\gamma}(g^{\alpha \beta}\delta g_{\alpha \beta})\phi\right. \\
 & \left.-\frac{1}{2\pi \gamma}\tau^{\alpha}\nabla^{\beta}\phi \delta g_{\alpha \beta}+\frac{1}{2\pi \gamma}\tau^{\mu}\nabla_{\mu}\phi g^{\alpha \beta}\delta g_{\alpha \beta}\right)
\end{align}
$$

consider the following symmetry

$$\tag{4.2}
\begin{align}
X_{\xi}=\int_{M}\mathrm{d}^{2}x\left(\left(\xi^{\mu}\nabla_{\mu}+\frac{1}{\gamma}\nabla_{\mu}\xi^{\mu}\right) \frac{\delta}{\delta \phi}+\left(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla_{\rho}\xi^{\rho}\right) \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

 