## Direct computation

consider the boundary stress tensor $\displaystyle{T_{\mu \nu}=\frac{1}{4G}(K_{\mu \nu}-K\gamma_{\mu \nu}+\gamma_{\mu \nu})}$, its diffeomorphism is given by

$$\tag{1.1}
\begin{align}
4G\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta T_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\left(X_{\xi}\cdot \delta K_{\mu \nu}-X_{\xi}\cdot \delta K\gamma_{\mu \nu}-X_{\xi}\cdot \gamma_{\mu \nu}K+X_{\xi}\cdot \delta \gamma_{\mu \nu}\right)\\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta K_{\mu \nu}-\gamma^{\mu \nu}\gamma_{\alpha \beta}X_{\xi}\cdot \delta K_{\mu \nu}+K^{\mu \nu}\gamma_{\alpha \beta}X_{\xi}\cdot \delta \gamma_{\mu \nu}-K\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta \gamma_{\mu \nu}+\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta \gamma_{\mu \nu}\\
 & =K_{\alpha \mu}D_{\beta}(\gamma^{\mu}_{\nu}\xi^{\nu})+K_{\mu \beta}D_{\alpha}(\gamma^{\mu}_{\nu}\xi^{\nu})+D_{\mu}K_{\alpha \beta}\gamma^{\mu}_{\nu}\xi^{\nu}-D_{\alpha}D_{\beta}(n_{\mu}\xi^{\mu})+\left( \gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}K_{\mu \nu}+2K_{\alpha \mu}K^{\mu}_{\beta}+\frac{1}{N}D_{\alpha}D_{\beta}N \right)n_{\sigma}\xi^{\sigma} \\
 & -2\gamma_{\alpha \beta}K^{\mu \nu}D_{\mu}(\gamma_{\nu \rho}\xi^{\rho})-\gamma_{\alpha \beta}D_{\mu}K\gamma^{\mu}_{\nu}\xi^{\nu}+\gamma_{\alpha \beta}D^{2}(n_{\mu}\xi^{\mu})-\gamma_{\alpha \beta}\left( n^{\rho}\nabla_{\rho}K+2K_{\mu \nu}K^{\mu \nu}+\frac{1}{N}D^{2}N \right)n_{\sigma}\xi^{\sigma} \\
 & +2\gamma_{\alpha \beta}K^{\mu \nu}D_{\mu}(\gamma_{\nu \rho}\xi^{\rho})+2\gamma_{\alpha \beta}K_{\mu \nu}K^{\mu \nu}n_{\rho}\xi^{\rho}-(K-1)\left(D_{\alpha}(\gamma_{\beta \gamma}\xi^{\gamma})+D_{\beta}(\gamma_{\beta \gamma}\xi^{\gamma})+2K_{\alpha \beta}n_{\rho}\xi^{\rho}\right) \\
 & =4G(T_{\alpha \mu}D_{\beta}(\gamma^{\mu}_{\nu}\xi^{\nu})+T_{\mu \beta}D_{\alpha}(\gamma^{\mu}_{\nu}\xi^{\nu})+D_{\mu}T_{\alpha \beta}\gamma^{\mu}_{\nu}\xi^{\nu})-D_{\alpha}D_{\beta}(n_{\mu}\xi^{\mu})+\gamma_{\alpha \beta}D^{2}(n_{\mu}\xi^{\mu}) \\
 & +16\pi G\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\left( R_{\mu \nu}-\frac{1}{2}Rg_{\mu \nu} +g_{\mu \nu}\right)n_{\rho}\xi^{\rho}+\left( 2K_{\alpha \mu}K^{\mu}_{\beta}-3KK_{\alpha \beta}+2K_{\alpha \beta}+\left( \frac{1}{2}K^{2}+\frac{1}{2}K_{\mu \nu}K^{\mu \nu}-1 \right)\gamma_{\alpha \beta} \right)n_{\rho}\xi^{\rho}
\end{align}
$$

here we use

$$\tag{1.2}
\begin{align}
\gamma^\mu_\alpha\gamma^\nu_\beta R_{\mu\nu} & =\tilde R_{\alpha\beta}+\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}+2K_{\alpha\gamma}K^{\gamma}_\beta-KK_{\alpha\beta}-\frac{1}{N}D_\beta D_\alpha N \\
R & =\tilde{R}-K^{2}-K_{\alpha \beta}K^{\alpha \beta}-2n^{\mu}\nabla_{\mu}K-\frac{2}{N}D^{2}N
\end{align}
$$

and

$$\tag{1.3}
\begin{align}
\gamma^\mu_\alpha\gamma^\nu_\beta(X_\xi\cdot\delta\gamma_{\mu\nu})&=D_\alpha(\gamma_{\beta\gamma}\xi^\gamma)+D_\beta(\gamma_{\alpha\gamma}\xi^\gamma)+2K_{\alpha\beta}n_\gamma\xi^\gamma \\
\gamma^\mu_\alpha\gamma^\nu_\beta(X_\xi\cdot\delta K_{\mu\nu})&=K_{\alpha\mu}D_\beta(\gamma^\mu_\nu\xi^\nu)+K_{\beta\mu}D_\alpha(\gamma^\mu_\nu\xi^\nu)+D_\mu K_{\alpha\beta}\gamma^\mu_\nu\xi^\nu-D_\alpha D_\beta(n_\mu\xi^\mu)\\
&+(\gamma^\mu_\alpha\gamma^\nu_\beta n^\rho\nabla_\rho K_{\mu\nu}+2K_{\alpha\mu}K_\beta^\mu+\frac{1}{N}D_\alpha D_\beta N)n_\sigma\xi^\sigma
\end{align}
$$

## via $\displaystyle{\mathcal{L}_{\xi}\delta S_{\varepsilon}}$

$$\tag{2.1}
\begin{align}
S_{\varepsilon} & =\int_{M_{\varepsilon}}\mathbf{L}+\int_{\Gamma_{\varepsilon}}\ell \\ \\
\delta S_{\varepsilon} & =\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta \gamma_{\mu \nu}+\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\Theta-\int_{\partial\Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\mathbf{C}_{\varepsilon} \\
X_{\xi}\cdot\delta S_{\varepsilon} & =\int_{M_{\varepsilon}}\mathrm{d}(\xi \cdot \mathbf{L})+\int_{\Gamma}X_{\xi}\cdot \delta \ell \\
 & =\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\xi \cdot \mathbf{L}+\int_{\Gamma_{\varepsilon}}(\xi \cdot \mathbf{L}+X_{\xi}\cdot \delta \ell) \\
 & =\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\xi \cdot \mathbf{L}+\int_{\Gamma_{\varepsilon}}\nu_{\xi}+\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\mu_{\xi}
\end{align}
$$

consider the Lie derivative of $\displaystyle{\delta S_{\varepsilon}}$ with respect to $\displaystyle{X_{\xi}}$. on the one hand

$$\tag{2.2}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S_{\varepsilon} & =X_{\xi}\cdot \delta^{2}S_{\varepsilon}+\delta(X_{\xi}\cdot \delta S_{\varepsilon})=\delta(X_{\xi} \cdot \delta S_{\varepsilon}) \\
 & =\delta \left(\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\xi \cdot \mathbf{L}+\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\mu_{\xi}+\int_{\Gamma_{\varepsilon}}\nu_{\xi}\right) \\
 & =\int_{\Gamma_{\varepsilon}}\delta \nu_{\xi}+\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\delta(\xi \cdot \mathbf{L})+\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\delta \mu_{\xi}
\end{align}
$$

on the other hand

$$\tag{2.3}
\begin{align}
\delta^{2}S_{\varepsilon} & =\delta\left(\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta \gamma_{\mu \nu}+\int_{\Sigma_{f,\varepsilon},\Sigma_{i,\varepsilon}}\Theta-\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\mathbf{C}_{\varepsilon}\right) \\
 & =\int_{M_{\varepsilon}}\delta \mathbf{E}^{\mu \nu}\wedge \delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\delta\mathbf{F}^{\mu \nu}\wedge \delta \gamma_{\mu \nu}+\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\delta \Theta-\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}\delta\mathbf{C}_{\varepsilon} \\
X_{\xi}\cdot \delta^{2}S_{\varepsilon} & =\int_{M_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu})\delta g_{\mu \nu}-\int_{M_{\varepsilon}}\delta\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta \gamma_{\mu \nu}-\int_{\Gamma_{\varepsilon}}\delta \mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta \gamma_{\mu \nu}) \\
 & +\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}X_{\xi}\cdot \delta \Theta-\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}X_{\xi}\cdot \delta \mathbf{C}_{\varepsilon}
\end{align}
$$

$$\tag{2.4}
\begin{align}
\delta(X_{\xi}\cdot \delta S_{\varepsilon}) & =\delta\left(\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta\gamma_{\mu \nu})+\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}X_{\xi}\cdot \Theta-\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}X_{\xi}\cdot \mathbf{C}_{\varepsilon}\right) \\
 & =\int_{M_{\varepsilon}}(\delta \mathbf{E}^{u\nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu}))+\int_{\Gamma_{\varepsilon}}(\delta \mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta \gamma_{\mu \nu})+\mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta \gamma_{\mu \nu})) \\
 & +\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\delta(X_{\xi}\cdot \Theta)-\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}(X_{\xi}\cdot \delta \mathbf{C}_{\varepsilon})
\end{align}
$$

summing over (2.4) and (2.5), we have

$$\tag{2.5}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S_{\varepsilon} & =X_{\xi}\cdot \delta^{2}S_{\varepsilon}+\delta(X_{\xi}\cdot \delta S_{\varepsilon}) \\
 & =\int_{M_{\varepsilon}}((X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu})\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu}))+\int_{\Gamma_{\varepsilon}}((X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta \gamma_{\mu \nu}+\mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta \gamma_{\mu \nu})) \\
 & +\int_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}(X_{\xi}\cdot \delta \Theta+\delta(X_{\xi}\cdot \Theta))+\int_{\partial \Sigma_{f,\varepsilon}-\partial \Sigma_{i,\varepsilon}}(X_{\xi}\cdot \mathbf{C}_{\varepsilon}+\delta(X_{\xi}\cdot \mathbf{C}_{\xi}))
\end{align}
$$

now we will direct calculate each term in (2.5). we first consider terms supporting on $\displaystyle{M_{\varepsilon}}$

$$\tag{2.6}
\begin{align}
X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu}\delta g_{\mu \nu} & =\left( X_{\xi}\cdot \delta(g^{\mu \rho}g^{\nu \sigma}\tilde{E}_{\rho \sigma})+\frac{1}{2}\tilde{E}^{\mu \nu}g^{\rho \sigma}X_{\xi}\cdot\delta g_{\rho \sigma}\right)\delta g_{\mu \nu}\varepsilon \\
 & =\left( g^{\nu \sigma}\tilde{E}_{\rho \sigma}(X_{\xi}\cdot \delta g^{\mu \rho})+g^{\mu \rho}\tilde{E}_{\rho \sigma}(X_{\xi}\cdot \delta g^{\nu \sigma})+g^{\mu \rho}g^{\nu \sigma}(X_{\xi}\cdot \delta \tilde{E}_{\rho \sigma})+\frac{1}{2}\tilde{E}^{\mu \nu}g^{\rho \sigma}(X_{\xi}\cdot \delta g_{\rho \sigma}) \right)\delta g_{\mu \nu}\varepsilon \\
 & =\left(-g^{\nu \sigma}\tilde{E}_{\rho \sigma}(\nabla^{\mu}\xi^{\rho}+\nabla^{\rho}\xi^{\mu})-g^{\mu \rho}\tilde{E}_{\rho \sigma}(\nabla^{\nu}\xi^{\sigma}+\nabla^{\sigma}\xi^{\nu})+(\xi^{\rho}\nabla_{\rho}\tilde{E}^{\mu \nu}+\tilde{E}^{\mu \rho}\nabla^{\nu}\xi_{\rho}+\tilde{E}^{\rho \nu}\nabla^{\mu}\xi_{\rho})+\tilde{E}^{\mu \nu}\nabla^{\rho}\xi_{\rho}\right)\delta g_{\mu \nu}\varepsilon \\
 & =\left(-\tilde{E}^{\rho \nu}\nabla_{\rho}\xi^{\mu}-\tilde{E}^{\mu \rho}\nabla_{\rho}\xi^{\nu}+\xi^{\rho}\nabla_{\rho}\tilde{E}^{\mu \nu}+\tilde{E}^{\mu \nu}\nabla_{\rho}\xi^{\rho}\right)\delta g_{\mu \nu}\varepsilon \\
 & =-\mathbf{E}^{\rho \nu}\nabla_{\rho}\xi^{\mu}\delta g_{\mu \nu}-\mathbf{E}^{\mu \rho}\nabla_{\rho}\xi^{\nu}\delta g_{\mu \nu}+\xi^{\rho}\nabla_{\rho}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}\nabla_{\rho}\xi^{\rho}\delta g_{\mu \nu}
\end{align}
$$

here we use

$$\tag{2.7}
\begin{align}
X_{\xi}\cdot \delta g_{\mu \nu} & =\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu} \\
X_{\xi}\cdot \delta g^{\mu \nu} & =-\nabla^{\mu}\xi^{\nu}-\nabla^{\nu}\xi^{\mu} \\
X_{\xi}\cdot \delta \tilde{E}_{\mu \nu} & =\mathcal{L}_{\xi}\tilde{E}_{\mu \nu}\\
 & =\xi^{\rho}\nabla_{\rho}\tilde{E}_{\mu \nu}+\tilde{E}_{\rho \nu}\nabla_{\mu}\xi^{\rho}+\tilde{E}_{\mu \rho}\nabla_{\nu}\xi^{\rho} \\
\end{align}
$$

$$\tag{2.8}
\begin{align}
\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu}) & =\mathbf{E}^{\mu \nu}\delta(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}) \\
 & =\mathbf{E}^{\mu \nu}\nabla_{\mu}(\delta g_{\rho \nu}\xi^{\rho})+\mathbf{E}^{\mu \nu}\nabla_{\nu}(\delta g_{\mu\rho}\xi^{\rho})-2\mathbf{E}^{\mu \nu}\delta \Gamma^{\rho}_{\mu \nu}\xi_{\rho} \\
 & =\mathbf{E}^{\mu \nu}\nabla_{\mu}\delta g_{\rho \nu}\xi^{\rho}+\mathbf{E}^{\mu \nu}\nabla_{\mu}\xi^{\rho}\delta g_{\rho \nu}+\mathbf{E}^{\mu \nu}\nabla_{\nu}\delta g_{\mu \rho}\xi^{\rho}+\mathbf{E}^{\mu \nu}\nabla_{\nu}\xi^{\rho}\delta g_{\mu \rho}-\mathbf{E}^{\mu \nu}g^{\rho \sigma}(\nabla_{\mu}\delta g_{\sigma \nu}+\nabla_{\nu}\delta g_{\mu \sigma}-\nabla_{\sigma}\delta g_{\mu \nu})\xi_{\rho} \\
 & =\mathbf{E}^{\rho \nu}\nabla_{\rho}\xi^{\mu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \rho}\nabla_{\rho}\xi^{\nu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}\xi^{\rho}\nabla_{\rho}\delta g_{\mu \nu}
\end{align}
$$
here we use

$$\tag{2.9}
\begin{align}
\delta \Gamma^{\rho}_{\mu \nu} & = \frac{1}{2}g^{\rho \sigma}(\nabla_{\mu}\delta g_{\sigma \nu}+\nabla_{\nu}\delta g_{\mu \sigma}-\nabla_{\sigma}\delta g_{\mu \nu})
\end{align}
$$

sum over (2.6) and (2.8), we have

$$\tag{2.9}
\begin{align}
(X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu})\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu}) & =-\mathbf{E}^{\rho \nu}\nabla_{\rho}\xi^{\mu}\delta g_{\mu \nu}-\mathbf{E}^{\mu \rho}\nabla_{\rho}\xi^{\nu}\delta g_{\mu \nu}+\xi^{\rho}\nabla_{\rho}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}\nabla_{\rho}\xi^{\rho}\delta g_{\mu \nu} \\
 & +\mathbf{E}^{\rho \nu}\nabla_{\rho}\xi^{\mu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \rho}\nabla_{\rho}\xi^{\nu}\delta g_{\mu \nu}+\mathbf{E}^{\mu \nu}\xi^{\rho}\nabla_{\rho}\delta g_{\mu \nu} \\
 & =\mathrm{d}(\xi \cdot\mathbf{E}^{\mu \nu}\delta g_{\mu \nu})
\end{align}
$$

we then consider terms supporting on $\displaystyle{\Gamma_{\varepsilon}}$

$$\tag{2.10}
\begin{align}
4\pi(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta \gamma_{\mu \nu} & =-X_{\xi}\cdot \delta(\gamma^{\mu \rho}\gamma^{\nu \sigma}T_{\rho \sigma}\varepsilon^{\Gamma_{\varepsilon}})\cdot \delta\gamma_{\mu \nu} \\
 & =-X_{\xi}\cdot \delta \gamma^{\mu \rho}\gamma^{\nu \sigma}T_{\rho\sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-\gamma^{\mu \rho}X_{\xi}\cdot \delta \gamma^{\nu \sigma}T_{\rho \sigma}\delta \gamma_{\mu \nu} \varepsilon^{\Gamma_{\varepsilon}}-\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}- X_{\xi}\cdot \delta \varepsilon^{\Gamma_{\varepsilon}}T^{\mu \nu}\delta \gamma_{\mu \nu} \\
 & =\gamma^{\mu \rho}X_{\xi}\cdot \delta \gamma_{\rho \sigma}T^{\sigma\nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+\gamma^{\nu \sigma}X_{\xi}\cdot \delta \gamma_{\rho \sigma}T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-\frac{1}{2}T^{\mu \nu}\gamma^{\rho \sigma}X_{\xi}\cdot \delta \gamma_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & =\gamma^{\mu \rho}(D_{\rho}(\gamma_{\sigma \lambda}\xi^{\lambda})+D_{\sigma}(\gamma_{\rho \lambda}\xi^{\lambda})+2K_{\rho \sigma}n_{\lambda}\xi^{\lambda})T^{\sigma \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+\gamma^{\nu \sigma}(D_{\rho}(\gamma_{\sigma \lambda}\xi^{\lambda})+D_{\sigma}(\gamma_{\rho \lambda}\xi^{\lambda})+2K_{\rho \sigma}n_{\lambda}\xi^{\lambda}) \\
 & -\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-\frac{1}{2}T^{\mu \nu}\gamma^{\rho \sigma}(D_{\rho}(\gamma_{\sigma \lambda}\xi^{\lambda})+D_{\sigma}(\gamma_{\rho \lambda}\xi^{\lambda})+2K_{\rho \sigma}n_{\lambda}\xi^{\lambda})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & =D^{\mu}(\gamma_{\rho\sigma}\xi^{\sigma})T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+2K^{\mu}_{\rho}n_{\sigma}\xi^{\sigma}T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +D^{\nu}(\gamma_{\rho \sigma}\xi^{\sigma})T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+2K^{\nu}_{\rho}n_{\sigma}\xi^{\sigma}T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & -\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}D_{\rho}(\gamma^{\rho}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}Kn_{\rho}\xi^{\rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}
\end{align}
$$

here we use

$$\tag{2.11}
\begin{align}
X_{\xi}\cdot \delta \gamma_{\mu \nu} & =D_{\mu}(\gamma_{\nu \rho}\xi^{\rho})+D_{\nu}(\gamma_{\mu \rho}\xi^{\rho})+2K_{\mu \nu}n_{\rho}\xi^{\rho} \\
X_{\xi}\cdot \delta \gamma^{\mu \nu} & =-\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta \gamma_{\rho \sigma}
\end{align}
$$

$$\tag{2.12}
\begin{align}
4\pi \mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta \gamma_{\mu \nu})\varepsilon^{\Gamma_{\varepsilon}} & =-T^{\mu \nu}\delta(X_{\xi}\cdot \delta \gamma_{\mu \nu})\varepsilon^{\Gamma_{\varepsilon}} \\
 & =-T^{\mu \nu}\delta(D_{\mu}(\gamma_{\rho\nu}\xi^{\rho})+D_{\nu}(\gamma_{\mu \rho}\xi^{\rho})+2K_{\mu \nu}n_{\rho}\xi^{\rho})\varepsilon^{\Gamma_{\varepsilon}} \\
 & =-T^{\mu \nu}D_{\mu}\delta \gamma_{\rho \nu}\gamma^{\rho}_{\sigma}\xi^{\sigma}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}D_{\mu}(\gamma^{\rho}_{\sigma}\xi^{\sigma})\delta \gamma_{\rho \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}D_{\nu}\delta \gamma_{\mu \rho}\gamma^{\rho}_{\sigma}\xi^{\sigma}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}D_{\nu}(\gamma^{\rho}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \rho}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +2T^{\mu \nu}\delta\tilde{\Gamma}^{\sigma}_{\mu \nu}\gamma_{\rho \sigma}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}-2T^{\mu \nu}\delta K_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}\\
 & =-T^{\rho \nu}D_{\rho}\delta \gamma_{\mu \nu}\gamma^{\mu}_{\sigma}\xi^{\sigma}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \rho}D_{\rho}\delta \gamma_{\mu \nu}\gamma^{\nu}_{\sigma}\xi^{\sigma}\varepsilon^{\Gamma_{\varepsilon}}-T^{\rho \nu}D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \rho}D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +T^{\mu \nu}\gamma^{\sigma \lambda}(D_{\mu}\delta \gamma_{\lambda \nu}+D_{\nu}\delta \gamma_{\mu \lambda}-D_{\lambda}\delta \gamma_{\mu \nu})\gamma_{\rho \sigma}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}-2T^{\mu \nu}\delta K_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}\\
 & =-T^{\rho \nu}D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \rho}D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}\gamma^{\rho}_{\sigma}\xi^{\sigma}D_{\rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-2T^{\mu \nu}\delta K_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}
\end{align}
$$

here we use

$$\tag{2.13}
\begin{align}
\delta \tilde{\Gamma}^{\rho}_{\mu \nu} & =\frac{1}{2}\gamma^{\rho \sigma}(D_{\mu}\delta \gamma_{\sigma \nu}+D_{\nu}\delta \gamma_{\mu \sigma}-D_{\sigma}\delta \gamma_{\mu \nu})
\end{align}
$$

$$\tag{2.14}
\begin{align}
-16\pi G\delta\nu_{\xi} & =-\delta\left((\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}\right) \\
 & =-\delta(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}-\frac{1}{2}(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}\xi^{\rho}\gamma^{\mu \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & =-\left( -\frac{1}{2}\tilde{R}\gamma^{\mu \nu}\delta \gamma_{\mu \nu}+D^{\mu}D^{\nu}\delta \gamma_{\mu \nu}-\gamma^{\mu \nu}D^{2}\delta \gamma_{\mu \nu}-2K^{\mu \nu}\delta K_{\mu \nu}+2K^{\mu \rho}K^{\nu}_{~\rho}\delta \gamma_{\mu \nu}+2(K-1)\delta K_{\mu \nu}\gamma^{\mu \nu}+2(K-1)K_{\mu \nu}\delta \gamma^{\mu \nu} \right)n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}} \\
 & -\frac{1}{2}(\tilde{R}-K_{\mu \nu}K^{\mu \nu}+K^{2}-2K+2)n_{\rho}\xi^{\rho}\gamma^{\rho \sigma}\delta \gamma_{\rho \sigma}\varepsilon^{\Gamma_{\varepsilon}}\\
 & =-D^{\mu}D^{\nu}\delta \gamma_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}+\gamma^{\mu \nu}D^{2}\delta \gamma_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}+\left(8GT^{\mu \nu}\delta K_{\mu \nu}+2K^{\mu \rho}K^{\nu}_{\rho}\delta \gamma_{\mu \nu}-2KK_{\mu \nu}\delta \gamma^{\mu \nu}+2K_{\mu \nu}\delta \gamma^{\mu \nu}\right. \\
 & \left.+\left( \frac{1}{2}K_{\rho \sigma}K^{\rho \sigma}-\frac{1}{2}K^{2}+K-1 \right)\gamma^{\mu \nu}\delta \gamma_{\mu \nu}\right)n_{\lambda}\xi^{\lambda}\varepsilon^{\Gamma_{\varepsilon}}
\end{align}
$$

here we use

$$\tag{2.15}
\begin{align}
\delta \tilde{R} & =-\tilde{R}^{\mu \nu}\delta \gamma_{\mu \nu}+D^{\mu}D^{\nu}\delta \gamma_{\mu \nu}-\gamma^{\mu \nu}D^{2}\delta \gamma_{\mu \nu} \\
 \tilde{R}^{\mu \nu} & =\frac{1}{2}\tilde{R}\gamma^{\mu \nu}
\end{align}
$$

summing over (2.10), (2.12) and (2.14), we have

$$\tag{2.13}
\begin{align}
 0 & =4\pi(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta \gamma_{\mu \nu}+4\pi \mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta \gamma_{\mu \nu})-4\pi \delta \nu_{\xi}+4\pi \xi \cdot \mathbf{E}^{\mu \nu}\delta g_{\mu \nu} \\
 & =D^{\mu}(\gamma_{\rho\sigma}\xi^{\sigma})T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+2K^{\mu}_{\rho}n_{\sigma}\xi^{\sigma}T^{\rho \nu}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +D^{\nu}(\gamma_{\rho \sigma}\xi^{\sigma})T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}+2K^{\nu}_{\rho}n_{\sigma}\xi^{\sigma}T^{\mu \rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & -\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}D_{\rho}(\gamma^{\rho}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}Kn_{\rho}\xi^{\rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & -T^{\rho \nu}D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \rho}D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-T^{\mu \nu}\gamma^{\rho}_{\sigma}\xi^{\sigma}D_{\rho}\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}}-2T^{\mu \nu}\delta K_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +\frac{1}{4G}\left(-D^{\mu}D^{\nu}\delta \gamma_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}+\gamma^{\mu \nu}D^{2}\delta \gamma_{\mu \nu}n_{\rho}\xi^{\rho}\varepsilon^{\Gamma_{\varepsilon}}\right)+\frac{1}{4G}\left(8GT^{\mu \nu}\delta K_{\mu \nu}+2K^{\mu \rho}K^{\nu}_{\rho}\delta \gamma_{\mu \nu}-2KK_{\mu \nu}\delta \gamma^{\mu \nu}+2K_{\mu \nu}\delta \gamma^{\mu \nu}\right. \\
 & \left.+\left( \frac{1}{2}K_{\rho \sigma}K^{\rho \sigma}-\frac{1}{2}K^{2}+K-1 \right)\gamma^{\mu \nu}\delta \gamma_{\mu \nu}\right)n_{\lambda}\xi^{\lambda}\varepsilon^{\Gamma_{\varepsilon}}+4\pi \xi \cdot \mathbf{E}^{\mu \nu}\delta g_{\mu \nu} \\
 & =\left(-\gamma^{\mu \rho}\gamma^{\nu \sigma}X_{\xi}\cdot \delta T_{\rho \sigma}+T^{\rho \nu}D_{\rho}(\gamma^{\mu}_{\sigma}\xi^{\sigma})+T^{\mu \rho}D_{\rho}(\gamma^{\nu}_{\sigma}\xi^{\sigma})+\gamma^{\rho}_{\sigma}\xi^{\sigma}D_{\rho}T^{\mu \nu}+\frac{1}{4G}(-D^{\mu}D^{\nu}(n_{\rho}\xi^{\rho})+\gamma^{\mu \nu}D^{2}(n_{\rho}\xi^{\rho}))\right. \\
 & \left.+\frac{1}{4G}\left( 2K^{\mu \rho}K^{\nu}_{\rho}-3KK^{\mu \nu}+2K^{\mu \nu}+\gamma^{\mu \nu}\left(\frac{1}{2}K_{\rho \sigma}K^{\rho \sigma}+\frac{1}{2}K^{2}-1\right) \right)n_{\rho}\xi^{\rho}+4\pi \gamma^{\mu}_{\rho}\gamma^{\nu}_{\sigma}\tilde{E}^{\rho \sigma}n_{\lambda}\xi^{\lambda}\right)\delta \gamma_{\mu \nu}\varepsilon^{\Gamma_{\varepsilon}} \\
 & +\mathrm{d}\left(-\xi \cdot \mathbf{F}^{\mu \nu}\delta \gamma_{\mu \nu}\right)-\left(\frac{1}{4G}D^{\mu}(D^{\nu}(\delta \gamma_{\mu \nu}n_{\rho}\xi^{\rho})-2D^{\nu}(n_{\rho}\xi^{\rho})\delta \gamma_{\mu \nu})-\frac{1}{4G}D_{\rho}\left(D^{\rho}(\gamma^{\mu \nu}\delta \gamma_{\mu \nu}n_{\sigma}\xi^{\sigma})-2\gamma^{\mu \nu}D^{\rho}(n_{\sigma}\xi^{\sigma})\delta \gamma_{\mu \nu}\right)\right)\varepsilon^{\Gamma_{\varepsilon}} \\
\implies \gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}X_{\xi}\cdot \delta T_{\rho \sigma} & =4G(T_{\alpha \mu}D_{\beta}(\gamma^{\mu}_{\nu}\xi^{\nu})+T_{\mu \beta}D_{\alpha}(\gamma^{\mu}_{\nu}\xi^{\nu})+D_{\mu}T_{\alpha \beta}\gamma^{\mu}_{\nu}\xi^{\nu})-D_{\alpha}D_{\beta}(n_{\mu}\xi^{\mu})+\gamma_{\alpha \beta}D^{2}(n_{\mu}\xi^{\mu}) \\
 & +16\pi G\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\left( R_{\mu \nu}-\frac{1}{2}Rg_{\mu \nu} +g_{\mu \nu}\right)n_{\rho}\xi^{\rho}+\left( 2K_{\alpha \mu}K^{\mu}_{\beta}-3KK_{\alpha \beta}+2K_{\alpha \beta}+\left( \frac{1}{2}K^{2}+\frac{1}{2}K_{\mu \nu}K^{\mu \nu}-1 \right)\gamma_{\alpha \beta} \right)n_{\rho}\xi^{\rho}
\end{align}
$$

## asymptotic behavior

$$\tag{3.1}
\begin{align}
4GT_{ab} & =K_{ab}-K\gamma_{ab}+\gamma_{ab} \\
 & =-\Delta g_{ab}+g^{(0)}_{ab}g^{(0)cd}\Delta g_{cd}-\frac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}g_{zd}+\frac{1}{2}g^{(0)}_{ab}\Delta g_{zz} \\
 & +\frac{1}{2}z(D_{a}^{(0)}g_{zb}+D_{b}^{(0)}g_{za})-zg^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}g_{zd}-\frac{1}{2}z\partial_{z}\Delta g_{ab}+\frac{1}{2}zg^{(0)}_{ab}g^{(0)cd}\partial_{z}\Delta g_{cd}+\mathcal{O}(z^{2})\\
4G\delta T_{ab} & =-\delta \Delta g_{ab}+\delta g_{ab}^{(0)}g^{(0)cd}\Delta g_{cd}+g^{(0)}_{ab}\delta g^{(0)cd}\Delta g_{cd}-\frac{1}{2}z^{2}\delta g^{(0)}_{ab}g^{(0)cd}\Delta g_{cd}-\frac{1}{2}z^{2}g^{(0)}_{ab}\delta g^{(0)cd}g_{zc}g_{zd} \\
 & -z^{2}g^{(0)}_{ab}g^{(0)cd}g_{zc}\delta g_{zd}+\frac{1}{2}\delta g^{(0)}_{ab}\Delta g_{zz}+\frac{1}{2}g^{(0)}_{ab}\delta \Delta g_{zz}+\frac{1}{2}z(D_{a}^{(0)}\delta g_{zb}+D_{b}^{(0)}\delta g_{za})+z\delta\Gamma^{(0)c}_{ab}g_{zc} \\
 & -z\delta g^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}g_{zd}-zg_{ab}^{(0)}\delta g^{(0)cd}D_{c}^{(0)}g_{zd}-zg^{(0)}_{ab}g^{(0)cd}D_{c}^{(0)}\delta g_{zd}-zg^{(0)}_{ab}g^{(0)cd}\delta \Gamma^{(0)e}_{cd}g_{ze} \\
 & -\frac{1}{2}z\partial_{z}\delta \Delta g_{ab}+\frac{1}{2}z\delta g_{ab}^{(0)}g^{(0)cd}\partial_{z}\Delta g_{cd}+\frac{1}{2}zg^{(0)}_{ab}\delta g^{(0)cd}\partial_{z}\Delta g_{cd}+\frac{1}{2}zg^{(0)}_{ab}g^{(0)cd}\partial_{z}\delta \Delta g_{cd}+\mathcal{O}(z^{2})
\end{align}
$$

and contract with $\displaystyle{X_{\xi}}$, we have

$$\tag{3.2}
\begin{align}
4GX_{\xi}\cdot \delta T_{ab} & =
\end{align}
$$

on the other hand

$$\tag{3.3}
\begin{align}
 & 4G(T^{(0)}_{ac}D_{b}^{(0)}\xi^{(0)c}+T_{cb}^{(0)}D_{a}^{(0)}\xi^{(0)c}+\xi^{(0)c}D_{c}^{(0)}T_{ab}^{(0)})+(D^{(0)}_{a}D_{b}^{(0)}\xi^{(1)z}-g^{(0)}_{ab}D_{c}^{(0)}D^{c(0)}\xi^{(1)z}) \\
= & -\Delta g_{ac}D_{b}^{(0)}\xi^{(0)c}-\Delta g_{bc}D_{a}^{(0)}\xi^{(0)c}-\xi^{(0)c}D_{c}^{(0)}\Delta g_{ab}+(D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a})g^{(0)cd}\Delta g_{cd} \\
 & +g^{(0)}_{ab}g^{(0)cd}\xi^{(0)e}D_{e}^{(0)}\Delta g_{cd}-\frac{1}{2}z^{2}(D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a})g^{(0)cd}g_{zc}g_{zd}-\frac{1}{2}z^{2}g^{(0)}_{ab}g^{(0)cd}\xi^{(0)e}D_{e}^{(0)}\Delta g_{cd} \\
 & +\frac{1}{2}(D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a})\Delta g_{zz}+\frac{1}{2}g^{(0)}_{ab}\xi^{(0)c}D_{c}^{(0)}\Delta g_{zz}+\frac{1}{2}z(D_{a}^{(0)}g_{zc}+D_{c}^{(0)}g_{za})D_{b}^{(0)}\xi^{(0)c} \\
 & +\frac{1}{2}z(D_{b}^{(0)}g_{zc}+D_{c}^{(0)}g_{zb})D_{a}^{(0)}\xi^{(0)c}+\frac{1}{2}z\xi^{(0)c}(D_{c}^{(0)}D_{a}^{(0)}g_{zb}+D_{c}^{(0)}D_{b}^{(0)}g_{za}) \\
 & -z(D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a})g^{(0)cd}D_{c}^{(0)}g_{zd}-zg^{(0)}_{ab}g^{(0)cd}\xi^{(0)e}D_{e}^{(0)}D_{c}^{(0)}g_{zd}-\frac{1}{2}\xi^{(0)c}D_{c}^{(0)}\partial_{z}\Delta g_{ab}\\
 & -\frac{1}{2}z(\partial_{z}\Delta g_{ac}D_{b}^{(0)}\xi^{(0)c}+\partial_{z}\Delta g_{bc}D_{a}^{(0)}\xi^{(0)c})+\frac{1}{2}z(D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a})g^{(0)cd}\partial_{z}\Delta g_{cd}\\
 & +D_{a}^{(0)}D_{b}^{(0)}\xi^{(1)z}-g^{(0)}_{ab}D_{c}^{(0)}D^{(0)c}\xi^{(1)z}+\mathcal{O}(z^{2})
\end{align}
$$

completed but waiting to be summarized.
## appendix H.3

with the result of the asymptotic behaviors, we can further get

$$\tag{4.1}
\begin{align}
X_{\xi}\cdot \delta T^{(0)}_{ab}|_{\tilde{\mathcal{P}}} & =T^{(0)}_{ac}D_{b}^{(0)}\xi^{(0)c}+T_{cb}^{(0)}D_{a}^{(0)}\xi^{(0)c}+\xi^{(0)c}D_{c}^{(0)}T_{ab}^{(0)}+\frac{1}{4G}(D^{(0)}_{a}D_{b}^{(0)}\xi^{(1)z}-g^{(0)}_{ab}D_{c}^{(0)}D^{c(0)}\xi^{(1)z})
\end{align}
$$

Apply the Lie algebra on $\displaystyle{\delta S=\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{\Gamma}}$.

$$\tag{4.2}
\begin{align}
\mathcal{L}_{X_{\xi}}\delta S & =X_{\xi}\cdot \delta \lim_{ \varepsilon \to 0 } \left(\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\theta|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\right) \\
 & +\delta\left(X_{\xi}\cdot\left(\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta g_{\mu \nu}+\theta|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\right)\right) \\
 & =\lim_{ \varepsilon \to 0 } \left( \int_{M_{\varepsilon}}(X_{\xi}\cdot\delta \mathbf{E}^{\mu \nu} )\delta g_{\mu \nu}-\int_{M_{\varepsilon}}\delta\mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}(X_{\xi}\cdot\delta\mathbf{F}^{\mu \nu}) \delta g_{\mu \nu}-\int_{\Gamma_{\varepsilon}}\delta \mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+X_{\xi}\cdot \delta \theta|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}} \right. \\
 & \left.+\int_{M_{\varepsilon}}\delta \mathbf{E}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}\delta \mathbf{F}^{\mu \nu}(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\delta(X_{\xi}\cdot \theta)|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\right) \\
 & =\lim_{ \varepsilon \to 0 } \left(\int_{M_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu})\delta g_{\mu \nu}+\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+(X_{\xi}\cdot \delta \theta+\delta(X_{\xi}\cdot \delta))_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}\right)
\end{align}
$$

on the other hand, we have

$$\tag{4.3}
\begin{align}
\mathcal{L}_{\xi}\delta S & =\delta(X_{\xi}\cdot \delta S)=\lim_{ \varepsilon \to 0 } (\delta \alpha_{\xi}|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}+\delta )\beta|_{\Gamma_{\varepsilon}}
\end{align}
$$

by comparing, we have

$$\tag{4.4}
\begin{align}
0 & =\lim_{ \varepsilon \to 0 } \left(\int_{M_{\varepsilon}}\mathbf{E}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{M_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{E}^{\mu \nu})\delta g_{\mu \nu}+\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta g_{\mu \nu}\right. \\
 & \left(\left.X_{\xi}\cdot \delta \theta+\delta(X_{\xi}\cdot \theta-\alpha_{\xi})\right)|_{\Sigma_{f,\varepsilon}-\Sigma_{i,\varepsilon}}-\delta \beta_{\xi}|_{\Gamma_{\varepsilon}}\right)
\end{align}
$$

then apply the Noether theorem and restrict to the prephase space $\displaystyle{\tilde{\mathcal{P}}}$, we have

$$\tag{4.5}
\begin{align}
0 & =\lim_{ \varepsilon \to 0 } \left(\int_{\Gamma_{\varepsilon}}\mathbf{F}^{\mu \nu}\delta(X_{\xi}\cdot \delta g_{\mu \nu})+\int_{\Gamma_{\varepsilon}}(X_{\xi}\cdot \delta \mathbf{F}^{\mu \nu})\delta g_{\mu \nu}-\delta \beta_{\xi}|_{\Gamma_{\varepsilon}}\right) \\
 & =\lim_{ \varepsilon \to 0 } \left(-\frac{1}{4\pi}\int_{\Gamma_{\varepsilon}}g^{(0)ac}g^{(0)bd}T_{ab}\delta(X_{\xi}\cdot \delta g^{(0)}_{cd})\varepsilon^{(0)}-\frac{1}{4\pi}\int_{\Gamma_{\varepsilon}}X_{\xi}\cdot \delta(g^{(0)ac}g^{(0)bd}T_{ab})\delta g_{cd}^{(0)}\varepsilon^{(0)}-\delta \beta_{\xi}|_{\Gamma_{\varepsilon}}\right)
\end{align}
$$

## brackets between Noether charges

Poisson brackets are always defined on-shell. now consider the brackets between two Noether charges

$$\tag{5.1}
\begin{align}
\left\{Q_{\xi},Q_{\zeta}\right\} & =X_{Q_{\zeta}}\cdot \delta Q_{\xi}=-X_{Q_{\zeta}}\cdot X_{\xi}\cdot \omega|_{\tilde{\mathcal{P}}}=X_{\xi}\cdot X_{Q_{\zeta}}\cdot \omega|_{\tilde{\mathcal{P}}}=-X_{\xi}\cdot \delta Q_{\zeta}|_{\tilde{\mathcal{P}}}=X_{\zeta}\cdot \delta Q_{\xi}|_{\tilde{\mathcal{P}}}
\end{align}
$$

then

$$\tag{5.2}
\begin{align}
\left\{Q_{\xi},Q_{\zeta}\right\} & =-X_{\xi}\cdot \delta Q_{\zeta}|_{\tilde{\mathcal{P}}} \\
 & =\left.\int_{\partial \Sigma} \frac{1}{2\pi}g^{(0)ab}(X_{\xi}\cdot \delta T^{(0)}_{bc})\zeta^{(0)c}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}}\right|_{\tilde{\mathcal{P}}} \\
 & =\frac{1}{2\pi}\int_{\partial \Sigma} g^{(0)ab}(T^{(0)}_{dc}D_{b}^{(0)}\xi^{(0)d}\zeta^{(0)c}+T^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}\zeta^{(0)c}+\xi^{(0)d}D_{d}^{(0)}T^{(0)}_{bc}\zeta^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & \left. \frac{1}{16\pi G}\int_{\partial \Sigma}\left(g^{(0)ab}D_{b}^{(0)}D_{c}^{(0)}D_{d}^{(0)}\xi^{(0)d}\zeta^{(0)c}-\zeta^{(0)a}g^{(0)bc}D_{b}^{(0)}D_{c}^{(0)}D_{e}^{(0)}\xi^{(0)e}\right)\right|_{\tilde{\mathcal{P}}} \\
 & =\int_{\partial \Sigma}\left(-\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}(\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}-\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c}) \right.\\
 & +\frac{1}{4\pi}\xi^{(0)a}g^{(0)bc}T^{(0)}_{bc}D_{d}^{(0)}\zeta^{(0)d}+\frac{1}{2\pi}\xi^{(0)a}g^{(0)bc}D_{b}^{(0)}T^{(0)}_{cd}\zeta^{(0)d} \\
 & +\frac{1}{2\pi}g^{(0)ab}(g^{(0)}_{cd}D_{b}^{(0)}\xi^{(0)d}+g^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}-g^{(0)}_{bc}D_{d}^{(0)}\xi^{(0)d})g^{(0)ce}T^{(0)}_{ef}\zeta^{(0)f} \\
 & +\frac{1}{4\pi}\xi^{(0)a}T^{(0)}_{bc}g^{(0)bd}g^{(0)ce}(g^{(0)}_{ef}D_{d}^{(0)}\zeta^{(0)f}+g^{(0)}_{df}D_{e}^{(0)}\zeta^{(0)f}-g^{(0)}_{de}D_{f}^{(0)}\zeta^{(0)f}) \\
 & +\frac{1}{2\pi}D_{b}^{(0)}(g^{(0)ac}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b}-g^{(0)bc}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)a}) \\
 & \left.\left.+\frac{1}{16\pi G}(g^{(0)ab}D^{(0)}_{b}D_{c}^{(0)}D_{d}^{(0)}\xi^{(0)d}\zeta^{(0)c}-\zeta^{(0)a}g^{(0)bd}D_{b}^{(0)}D_{c}^{(0)}D_{e}^{(0)}\xi^{(0)e})\right)\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}}\right|_{\tilde{\mathcal{P}}} \\
 & =Q_{\left\{\xi,\zeta\right\}}+\int_{\partial \Sigma}\left(-\frac{1}{32\pi G}R^{(0)}\xi^{(0)a}D_{b}^{(0)}\zeta^{(0)b}+\frac{1}{16\pi G}(g^{(0)ab}D_{b}^{(0)}D_{c}^{(0)}D_{d}^{(0)}\xi^{(0)d}\zeta^{(0)c}-\zeta^{(0)a}g^{(0)bc}D_{b}^{(0)}D_{c}^{(0)}D_{e}^{(0)}\xi^{(0)e})\right)\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

原文中有少许typo

$$\tag{5.3}
\begin{align}
 & =-\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}+\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c} \\
 & +\frac{1}{4\pi}\xi^{(0)a}g^{(0)bc}T_{bc}^{(0)}D_{d}^{(0)}\zeta^{(0)d}+\frac{1}{2\pi}\xi^{(0)a}g^{(0)bc}D_{b}^{(0)}T_{cd}^{(0)}\zeta^{(0)d} \\
 & +\frac{1}{2\pi}g^{(0)ab}g^{(0)cd}D_{b}^{(0)}\xi^{(0)d}g^{(0)ce}T_{ef}^{(0)}\zeta^{(0)f}+\frac{1}{2\pi}g^{(0)ab}g^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}g^{(0)ce}T^{(0)}_{ef}\zeta^{(0)f}-\frac{1}{2\pi}g^{(0)ab}g^{(0)}_{bc}D_{d}^{(0)}\xi^{(0)d}g^{(0)ce}T^{(0)}_{ef}\zeta^{(0)f} \\
 & +\frac{1}{4\pi}\xi^{(0)a}T^{(0)}_{bc}g^{(0)bd}g^{(0)ce}g^{(0)}_{ef}D_{d}^{(0)}\zeta^{(0)f}+\frac{1}{4\pi}\xi^{(0)a}T_{bc}^{(0)}g^{(0)bd}g^{(0)ce}g_{df}^{(0)}D_{e}^{(0)}\zeta^{(0)f}-\frac{1}{4\pi}\xi^{(0)a}T_{bc}^{(0)}g^{(0)bd}g^{(0)ce}g_{de}^{(0)}D_{f}^{(0)}\zeta^{(0)f} \\
 & +\frac{1}{2\pi}D_{b}^{(0)}(g^{(0)ac}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b}-g^{(0)bc}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)a})
\end{align}
$$

$$\tag{5.4}
\begin{align}
& -\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}+\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c} \\
 & +\frac{1}{4\pi}\xi^{(0)a}g^{(0)bc}T_{bc}^{(0)}D_{d}^{(0)}\zeta^{(0)d}+\frac{1}{2\pi}\xi^{(0)a}g^{(0)bc}D_{b}^{(0)}T_{cd}^{(0)}\zeta^{(0)d} \\
 & +\frac{1}{2\pi}g^{(0)ab}D_{b}^{(0)}\xi^{(0)c}T_{cd}^{(0)}\zeta^{(0)d}+\frac{1}{2\pi}D^{(0)b}\xi^{(0)a}T^{(0)}_{bc}\zeta^{(0)c}-\frac{1}{2\pi}g^{(0)ab}D_{d}^{(0)}\xi^{(0)d}T^{(0)}_{bc}\zeta^{(0)c} \\
 & +\frac{1}{4\pi}\xi^{(0)a}T^{(0)}_{bc}D^{(0)b}\zeta^{(0)c}+\frac{1}{4\pi}\xi^{(0)a}T_{bc}^{(0)}D^{(0)c}\zeta^{(0)b}-\frac{1}{4\pi}\xi^{(0)a}T_{bc}^{(0)}g^{(0)bc}D_{d}^{(0)}\zeta^{(0)d} \\
 & +\frac{1}{2\pi}g^{(0)ac}D_{b}^{(0)}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b}+\frac{1}{2\pi}g^{(0)ac}T_{cd}^{(0)}D_{b}^{(0)}\zeta^{(0)d}\xi^{(0)b}+\frac{1}{2\pi}g^{(0)ac}T_{cd}^{(0)}\zeta^{(0)d}D_{b}^{(0)}\xi^{(0)b} \\
 & -\frac{1}{2\pi}g^{(0)bc}D_{c}^{(0)}T_{cd}^{(0)}\zeta^{(0)d}\xi^{(0)a}-\frac{1}{2\pi}g^{(0)bc}T^{(0)}_{cd}D_{c}^{(0)}\zeta^{(0)d}\xi^{(0)a}-\frac{1}{2\pi}g^{(0)bc}T^{(0)}_{cd}\zeta^{(0)d}D_{c}^{(0)}\xi^{(0)a}
\end{align}
$$

$$\tag{5.5}
\begin{align}
& \frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c}+\frac{1}{2\pi}g^{(0)ab}D_{b}^{(0)}\xi^{(0)c}T_{cd}^{(0)}\zeta^{(0)d} +\frac{1}{2\pi}g^{(0)ac}D_{b}^{(0)}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b} \\
= & \frac{1}{2\pi}g^{(0)ab}\left(T^{(0)}_{bd}\zeta^{(0)c}D_{c}^{(0)}\xi^{(0)d}+T_{dc}^{(0)}\zeta^{(0)c}D_{b}^{(0)}\xi^{(0)d}+\xi^{(0)d}D_{d}^{(0)}T^{(0)}_{bc}\zeta^{(0)c}\right)
\end{align}
$$

the basic idea is to gather terms that are proportional to the conformal Killing equation.

$$\tag{5.6}
\begin{align}
D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi^{(0)}_{a}-g^{(0)}_{ab}D_{c}^{(0)}\xi^{(0)c}=0
\end{align}
$$

we will consider another example to feel the idea. consider a current $\displaystyle{j^{a}}$ satisfying $\displaystyle{D_{a}^{(0)}j^{a}=0}$, and a vector satisfying $\displaystyle{D_{a}^{(0)}\xi^{(0)}_{b}+D_{b}^{(0)}\xi_{a}^{(0)}=0}$, then on the one hand

$$\tag{5.7}
\begin{align}
\int_{\partial \Sigma}\mathcal{L}_{\xi^{(0)}}j^{(0)a}\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} & =\int_{\partial \Sigma}(\xi^{(0)b}D_{b}^{(0)}j^{(0)a}-j^{(0)b}D_{b}^{(0)}\xi^{(0)a})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}\left(D_{b}^{(0)}(\xi^{(0)b}j^{(0)a}-j^{(0)b}\xi^{(0)a})-D_{b}^{(0)}\xi^{(0)b}j^{(0)a}+D_{b}^{(0)}j^{(0)b}\xi^{(0)a}\right)\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =0
\end{align}
$$

on the other hand

$$\tag{5.8}
\begin{align}
\int_{\partial \Sigma}g^{(0)ab}\mathcal{L}_{\xi^{(0)}}j^{(0)}_{b}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} & =\int_{\partial \Sigma}g^{(0)ab}(\xi^{(0)c}D_{c}^{(0)}j^{(0)}_{b}+j_{c}^{(0)}D_{b}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}D_{c}^{(0)}(g^{(0)ab}\xi^{(0)c}j^{(0)}_{b})-g^{(0)av}D_{c}^{(0)}\xi^{(0)c}j^{(0)}_{b} \\
 & +g^{(0)ab}j_{c}^{(0)}(D_{b}^{(0)}\xi^{(0)c}+D^{(0)c}\xi^{(0)b})-g^{(0)ab}j_{c}^{(0)}D^{(0)c}\xi^{(0)}_{b} )\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}\\
 & =\int_{\partial \Sigma}D_{c}^{(0)}(g^{(0)ab}\xi^{(0)c}j_{b}^{(0)}-g^{(0)ab}j^{(0)c}\xi_{b}^{(0)}) \\
 & +g^{(0)ab}j_{c}^{(0)}(D_{b}^{(0)}j^{(0)c}+D^{(0)c}j^{(0)}_{b})-g^{(0)ab}D_{c}^{(0)}\xi^{(0)c}j_{b}^{(0)}+g^{(0)ab}D_{c}^{(0)}j^{(0)c}\xi_{b}^{(0)})\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}}
\end{align}
$$

or another equivalent way

$$\tag{5.9}
\begin{align}
\int_{\partial \Sigma}g^{(0)ab}\mathcal{L}_{\xi^{(0)}}j_{b}^{(0)}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} & =\int_{\partial \Sigma}(\mathcal{L}_{\xi}^{(0)}(g^{(0)ab}j^{(0)}_{b})-j^{(0)}_{b}\mathcal{L}_{\xi^{(0)}}g^{(0)ab})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}(\xi^{(0)c}D_{c}^{(0)}(g^{(0)ab}j_{b}^{(0)})-g^{(0)bc}j^{(0)}_{c}D_{b}^{(0)}\xi^{(0)a}+g^{(0)ac}g^{(0)bd}(D_{c}^{(0)}\xi^{(0)}_{d}+D_{d}^{(0)}\xi_{c}^{(0)})j_{b}^{(0)})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}D_{c}^{(0)}(g^{(0)ab}j_{b}^{(0)}\xi^{(0)c})-g^{(0)bc}j_{b}^{(0)}D_{c}^{(0)}\xi^{(0)a}+D^{(0)a}\xi^{(0)b}j_{b}^{(0)}+D^{(0)b}\xi^{(0)a}j_{b}^{(0)} \\
 & -g^{(0)ab}j^{(0)}_{b}D_{c}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}D_{c}^{(0)}(g^{(0)ab}j_{b}^{(0)}\xi^{(0)c})-D_{c}^{(0)}(g^{(0)ab}\xi^{(0)}_{b}j^{(0)c})+g^{(0)ab}\xi^{(0)}_{b}D_{c}^{(0)}j^{(0)c} \\
 & +g^{(0)ab}j^{(0)c}(D_{b}^{(0)}\xi^{(0)}_{c}+D_{c}^{(0)}\xi_{b}^{(0)})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}
\end{align}
$$

now we will prove (5.2)

$$\tag{5.9}
\begin{align}
 & \frac{1}{2\pi}\int_{\partial \Sigma} g^{(0)ab}(T^{(0)}_{dc}D_{b}^{(0)}\xi^{(0)d}\zeta^{(0)c}+T^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}\zeta^{(0)c}+\xi^{(0)d}D_{d}^{(0)}T^{(0)}_{bc}\zeta^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}  \\
= & \frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}\mathcal{L}_{\xi^{(0)}}T^{(0)}_{bc}\zeta^{(0)c}\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}}=\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}(\mathcal{L}_{\xi^{(0)}}(T^{(0)}_{bc}\zeta^{(0)c})-T^{(0)}_{bc}\mathcal{L}_{\xi^{(0)}}\zeta^{(0)c})\varepsilon_{aa_{1}}\mathrm{d}x^{a_{1}} \\
= & \frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}(\xi^{(0)d}D_{d}^{(0)}(T^{(0)}_{bc}\zeta^{(0)c})+T_{dc}^{(0)}\zeta^{(0)c}D_{b}^{(0)}\xi^{(0)d})\varepsilon^{(0)}_{aa_{1}}\mathrm{d}x^{a_{1}} \\
 & -\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{bc}(\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}-\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
= & -\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{bc}(\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}-\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & \frac{1}{2\pi}\int_{\partial \Sigma}D_{b}^{(0)}(g^{(0)ac}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b})-\frac{1}{2\pi}\int_{\partial \Sigma}T^{(0)}_{bc}\zeta^{(0)c}D_{d}^{(0)}(g^{(0)ab}\xi^{(0)d})+\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{dc}\zeta^{(0)c}D_{b}^{(0)}\xi^{(0)d} \\
= & -\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{bc}(\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}-\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & +\frac{1}{2\pi}\int_{\partial \Sigma}g^{(0)ab}T^{(0)}_{bc}\zeta^{(0)}_{d}(-g^{(0)}D_{e}^{(0)}\xi^{(0)e})
\end{align}
$$

$$
\tag{5.2}
\begin{align}
 & \frac{1}{2\pi}\int_{\partial \Sigma} g^{(0)ab}(T^{(0)}_{dc}D_{b}^{(0)}\xi^{(0)d}\zeta^{(0)c}+T^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}\zeta^{(0)c}+\xi^{(0)d}D_{d}^{(0)}T^{(0)}_{bc}\zeta^{(0)c})\varepsilon_{aa_{1}}^{(0)}\mathrm{d}x^{a_{1}} \\
 & =\int_{\partial \Sigma}\left(-\frac{1}{2\pi}g^{(0)ab}T_{bc}^{(0)}(\xi^{(0)d}D_{d}^{(0)}\zeta^{(0)c}-\zeta^{(0)d}D_{d}^{(0)}\xi^{(0)c}) \right.\\
 & +\frac{1}{4\pi}\xi^{(0)a}g^{(0)bc}T^{(0)}_{bc}D_{d}^{(0)}\zeta^{(0)d}+\frac{1}{2\pi}\xi^{(0)a}g^{(0)bc}D_{b}^{(0)}T^{(0)}_{cd}\zeta^{(0)d} \\
 & +\frac{1}{2\pi}g^{(0)ab}(g^{(0)}_{cd}D_{b}^{(0)}\xi^{(0)d}+g^{(0)}_{bd}D_{c}^{(0)}\xi^{(0)d}-g^{(0)}_{bc}D_{d}^{(0)}\xi^{(0)d})g^{(0)ce}T^{(0)}_{ef}\zeta^{(0)f} \\
 & +\frac{1}{4\pi}\xi^{(0)a}T^{(0)}_{bc}g^{(0)bd}g^{(0)ce}(g^{(0)}_{ef}D_{d}^{(0)}\zeta^{(0)f}+g^{(0)}_{df}D_{e}^{(0)}\zeta^{(0)f}-g^{(0)}_{de}D_{f}^{(0)}\zeta^{(0)f}) \\
 & +\frac{1}{2\pi}D_{b}^{(0)}(g^{(0)ac}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)b}-g^{(0)bc}T^{(0)}_{cd}\zeta^{(0)d}\xi^{(0)a}) \\
\end{align}
$$
