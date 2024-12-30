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
 & =\frac{1}{16\pi G}\int_{\partial \Sigma}\left(2\xi^{(0)a}\delta g_{zz}\right)
\end{align}
$$