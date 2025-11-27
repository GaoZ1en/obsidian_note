Noëther charge corresponding to $\displaystyle{\xi^{a}}$ is defined as

$$
\begin{align}
Q_{\xi} & =\lim_{ \varepsilon \to 0 } \frac{1}{8\pi G}\int_{\partial \Sigma_{\varepsilon}}(-K^{\mu \nu}+K\gamma^{\mu \nu}-\gamma^{\mu \nu})\gamma_{\mu \rho}\xi^{\rho}\varepsilon_{\mu \mu_{1}}^{\Gamma_{\varepsilon}}\mathrm{d}x^{\mu_{1}} \\
 & =-\frac{1}{2\pi}\int_{\partial \Sigma}\gamma^{ab}\xi^{c}T_{bc}\varepsilon^{\Gamma}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
T_{ab} & = \lim_{ \varepsilon \to 0 } \frac{1}{4G}(K_{ab}-K\gamma_{ab}+\gamma_{ab})|_{z=\varepsilon}
\end{align}
$$

The Poisson bracket $\displaystyle{\{Q_{\xi},Q_{\zeta}\}}$ is defined as

$$
\begin{align}
\{Q_{\xi},Q_{\zeta}\} & =X_{\zeta}\cdot \delta Q_{\xi}
\end{align}
$$

We first introduce some relevant quantities

$$
\begin{align}
X_{\xi}\cdot \delta \gamma_{ab} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta \gamma_{\mu \nu} \\
 & =D_{\alpha}\left(\gamma_{\beta \mu}\xi^{\mu}\right)+D_{\alpha}\left(\gamma_{\beta \mu}\xi^{\mu}\right)+2K_{\alpha \beta}n_{\mu}\xi^{\mu} \\
X_{\xi}\cdot \delta K_{\alpha \beta} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta K_{\mu \nu} \\
 & =K_{\alpha \mu}D_{\beta}\left(\gamma^{\mu}_{\nu}\xi^{\nu}\right)+K_{\beta \mu}D_{\alpha}\left(\gamma^{\mu }_{\nu}\xi^{\nu}\right)+D_{\mu}K_{\alpha \beta}\gamma^{\mu}_{\nu}\xi^{\nu} \\
 & -D_{\alpha}D_{\beta}\left(n_{\mu}\xi^{\mu}\right)+\left(\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}+2K_{\alpha \mu}K^{\mu}_{\beta}+D_{\alpha}a_{\beta}+a_{\alpha}a_{\beta}\right)\left(n_{\rho}\xi^{\rho}\right) \\
 X_{\xi}\cdot \delta K & =-K^{\mu \nu}X_{\xi}\cdot \delta \gamma_{\mu \nu}+\gamma^{\mu \nu}X_{\xi}\cdot \delta K_{\mu \nu} \\
 & =\gamma^{\mu \nu}\xi_{\mu}D_{\nu}K-D^{2}\left(n_{\mu}\xi^{\mu}\right)+\left(n^{\mu}\nabla_{\mu}K+D_{\mu}a^{\mu}+a_{\mu}a^{\mu}\right)n_{\nu}\xi^{\nu} \\
\left[\xi,\zeta\right]^{\left(0\right)a} & =\xi^{\left(0\right)b}D_{b}^{\left(0\right)}\zeta^{\left(0\right)a}-\zeta^{\left(0\right)b}D_{b}^{\left(0\right)a}\xi^{\left(0\right)a}+\xi^{\left(0\right)a}\zeta^{\left(1\right)z}-\zeta^{\left(0\right)a}\xi^{\left(1\right)z} +\mathcal{O}\left(z^{2}\right)\\
\left[\xi,\zeta\right]^{\left(1\right)z} & =\xi^{\left(0\right)a}D_{a}^{\left(0\right)}\zeta^{\left(1\right)z}-\zeta^{\left(0\right)a}D_{a}^{\left(0\right)}\xi^{\left(1\right)z}-z\xi^{\left(0\right)a}g_{za}\zeta^{\left(1\right)z}+z\zeta^{\left(0\right)a}g_{za}\xi^{\left(1\right)z}+\mathcal{O}\left(z^{2}\right)
\end{align}
$$

Then we will calculate $\displaystyle{\left\{Q_{\xi},Q_{\zeta}\right\}}$.

$$
\begin{align}
X_{\xi}\cdot \delta T_{ab} & =\frac{1}{4G}\lim_{ z \to 0 } X_{\xi}\cdot \delta (K_{\alpha \beta}-K\gamma_{\alpha \beta}+\gamma_{\alpha \beta}) \\
 & =\frac{1}{4G}\lim_{ z \to 0 } \left(X_{\xi}\cdot \delta K_{\alpha \beta}-X_{\xi}\cdot \delta K\gamma_{\alpha \beta}-X_{\xi}\cdot \delta \gamma_{\alpha \beta}K+X_{\xi}\cdot \delta \gamma_{\alpha \beta}\right) \\
 & =\frac{1}{4G}\lim_{ z \to 0 } \left((K_{\alpha \mu}-K\gamma_{\alpha \mu}+\gamma_{\alpha \mu})D_{\beta}(\gamma^{\mu}_{\nu}\xi^{\nu})+(K_{\beta \mu}-K\gamma_{\beta \mu}+\gamma_{\beta \mu})D_{\alpha}(\gamma^{\mu}_{\nu}\xi^{\nu})+\gamma^{\mu}_{\nu}\xi^{\nu}D_{\mu}(K_{\alpha \beta}-K\gamma_{\alpha \beta}+\gamma_{\alpha \beta})\right. \\
 & +2(K_{\alpha \mu}-K_{\alpha \mu}\gamma_{\alpha \mu}+\gamma_{\alpha \mu})K_{\beta}^{\mu}n_{\nu}\xi^{\nu}-D_{\alpha}D_{\beta}(n_{\mu}\xi^{\mu})+\gamma_{\alpha \beta}D^{2}(n_{\mu}\xi^{\mu}) \\
 & \left.(\gamma_{\alpha}^{\mu}\gamma_{\beta}^{\nu}n^{\rho}\nabla_{\rho}K_{\mu \nu}+D_{\alpha}a_{\beta}+a_{\alpha}a_{\beta})n_{\sigma}\xi^{\sigma}-\gamma_{\alpha \beta}(n^{\mu}\nabla_{\mu}K+D_{\mu}a^{\mu}+a_{\mu}a^{\mu})n_{\nu}\xi^{\nu}\right)
\end{align}
$$

$$
\begin{align}
\left\{Q_{\zeta},Q_{\xi}\right\} & =-\frac{1}{2\pi}\int_{\partial \Sigma}X_{\xi}\cdot\delta(\gamma^{ab}\zeta^{c}T_{bc}\varepsilon^{\Gamma}_{aa_{1}})\mathrm{d}x^{a_{1}} \\
 & =-\frac{1}{2\pi}\int_{\partial \Sigma}X_{\xi}\cdot\left(-\gamma^{ad}\gamma^{b e}\delta \gamma_{de}\zeta^{c}T_{bc}+\frac{1}{2}\gamma^{ab}\gamma^{de}\delta \gamma_{de}\zeta^{c}T_{bc}+\gamma^{ab}\zeta^{c}\delta T_{bc}\right)\varepsilon^{\Gamma}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & =-\frac{1}{2\pi}\int_{\partial \Sigma}\left(\left(-D^{a}(\gamma^{b}_{\mu}\xi^{\mu})-D^{b}(\gamma^{a}_{\mu}\xi^{\mu})+\gamma^{ab}D_{d}(\gamma^{d}_{\mu}\xi^{\mu})-2K^{ab}n_{\mu}\xi^{\mu}+K\gamma^{ab}n_{\mu}\xi^{\mu}\right)\zeta^{c}T_{bc}\right. \\
 & \left.+\gamma^{ab}\zeta^{c}\left(T_{bd}D_{c}^{(0)}\xi^{(0)d}+T_{cd}D_{b}^{(0)}\xi^{(0)d}+\xi^{(0)d}D_{d}^{(0)}T_{bc}+\frac{1}{8G}(D_{b}^{(0)}D_{c}^{(0)}D_{d}^{(0)}\xi^{(0)d}-g_{bc}^{(0)}g^{(0)de}D_{d}^{(0)}D_{e}^{(0)}D_{f}^{(0)}\xi^{(0)}f)\right)\right)\varepsilon^{\Gamma}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & = -\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T_{bc}[\zeta,\xi]^{(0)}+\frac{1}{32\pi G}\int_{\partial \Sigma}R^{(0)}(\xi^{(0)a}D^{(0)b}\zeta^{(0)b}-\zeta^{(0)b}D^{(0)}_{b}\xi^{(0)b})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & +\frac{1}{32\pi G}\int_{\partial \Sigma}(D^{(0)a}D_{b}^{(0)}\xi^{(0)b}D_{c}^{(0)}\zeta^{(0)c}-D^{(0)a}D_{b}^{(0)}\zeta^{(0)b}D_{c}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

The central extension term seem that do not satisfies the Jabobi identity. I have no idea how to deal with it.

$$\tag{ce term 1}
\begin{align}
 & R^{(0)}(\xi^{(0)a}D_{b}^{(0)}\zeta^{(0)b}-\zeta^{(0)a}D_{b}^{(0)}\xi^{(0)b})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
= & R^{(0)}(\xi^{(0)}_{c}D_{b}^{(0)}\zeta^{(0)b}-\zeta^{(0)}_{c}D_{b}^{(0)}\xi^{(0)b})\delta^{ac}\varepsilon_{ac_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
= & 2R^{(0)a}_{c}(\xi^{(0)c}D_{b}^{(0)}\zeta^{(0)b}-\zeta^{(0)c}D_{b}^{(0)}\xi^{(0)b})\varepsilon_{ca_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
= & R^{(0)}D_{b}^{(0)}(\xi^{(0)a}\zeta^{(0)b}-\zeta^{(0)a}\xi^{(0)b})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}+R^{(0)}[\xi,\zeta]^{(0)a}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$
The first term vanishes due to $\displaystyle{\int_{M}D_{a}\mathcal{S}^{ab}\varepsilon_{bc}\mathrm{d}x^{c}=0}$, and the second term explicitly satisfies the Jacobi identity.

$$\tag{ce term 2}
\begin{align}
 & D^{(0)a}D_{b}^{(0)}\xi^{(0)b}D_{c}^{(0)}\zeta^{(0)c}-D^{(0)a}D_{b}^{(0)}\zeta^{(0)b}D_{c}^{(0)}\xi^{(0)c} \\
= &  
\end{align}
$$