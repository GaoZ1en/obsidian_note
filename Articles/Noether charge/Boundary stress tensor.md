In this file we will prove that the Noether charge must agree with the boundary stree tensor

$$
\tag{1.1}
\begin{align}
Q_{\xi} & =\lim_{ \varepsilon \to 0 } \left[\frac{1}{16\pi G}\int_{\Sigma_{\varepsilon}}\left(R^{\mu \nu}-\frac{1}{2}Rg^{\mu \nu}-g^{\mu \nu}\right)\xi_{\nu}\varepsilon_{\mu \mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\frac{1}{8\pi G}\int_{\partial \Sigma_{\varepsilon}}\left(-K^{\mu \nu}+K\gamma^{\mu \nu}-\gamma^{\mu \nu}\right)\gamma_{\nu \rho}\xi^{\rho}\varepsilon_{\mu \mu_{1}}^{\Gamma_{\varepsilon}}\mathrm{d}x^{\mu_{1}}\right]
\end{align}
$$

$$
\tag{1.2}
\begin{align}
T_{\mu \nu}=\frac{1}{4G}\left(K_{\mu \nu}-K\gamma_{\mu \nu}+\gamma_{\mu \nu}\right)
\end{align}
$$

$$
\tag{1.3}
\begin{align}
\Theta|_{\Gamma_{\varepsilon}}+\delta \ell=\mathrm{d}\mathbf{C}-\frac{1}{4\pi}T^{\mu \nu}\delta g_{\mu \nu}\varepsilon_{\Gamma}
\end{align}
$$

We first choose two Cauchy slices $\displaystyle{\Sigma_{\pm}}$ with $\displaystyle{\Sigma_{+}}$ strictly in the future of $\displaystyle{\Sigma_{-}}$, and we then introduce a new quantity

$$
\tag{1.4}
\begin{align}
\tilde{S} & =\int_{M_{+ -}}\mathbf{L}+\int_{\Gamma_{+ -}}\ell
\end{align}
$$

where $\displaystyle{M_{+ -}}$ denotes the points in $\displaystyle{M}$ which lie between $\displaystyle{\Sigma_{-}}$ and $\displaystyle{\Sigma_{+}}$ and similar as $\displaystyle{\Gamma_{+ -}}$.

on the one hand

$$
\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta\tilde{S}_{\varepsilon} & =\int_{M_{\varepsilon}+ -}X_{\xi}\cdot \delta L+\int_{\Gamma_{\varepsilon}+ -}X_{\xi}\cdot \delta\ell +\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \delta \ell\\
 & =\int_{M_{\varepsilon}+ -}\mathrm{d}(\xi \cdot L)+\int_{\Gamma_{\varepsilon}+ -}X_{\xi}\cdot \delta \ell \\
 & =\int_{\partial M_{\varepsilon}+ -}\xi \cdot L+\int_{\Gamma_{\varepsilon}+ -}X_{\xi}\cdot \delta\ell \\
 & =\int_{\Sigma_{\varepsilon+}-\Sigma_{\varepsilon-}}\xi \cdot L+\int_{\Gamma_{\varepsilon}+ -}(\xi \cdot L+X_{\xi}\cdot \delta \ell)\\
 & =\int_{\Sigma_{\varepsilon+}-\Sigma_{\varepsilon-}}\xi \cdot L+\int_{\Gamma_{\varepsilon}+ -}(\mathrm{d}\mu_{\xi}+\nu_{\xi})\\
 & =\int_{\Sigma_{\varepsilon+}-\Sigma_{\varepsilon-}}\xi \cdot L-\int_{\partial \Sigma_{\varepsilon+}-\partial \Sigma_{\varepsilon-}}\mu_{\xi}+\int_{\Gamma_{\varepsilon}+ -}\nu_{\xi}
\end{align}
$$

here we use

$$
\tag{1.6}
\begin{align}
X_{\xi}\cdot \delta L=\mathrm{d}(\xi \cdot L) \\
(\xi \cdot L+X_{\xi}\cdot \delta \ell)|_{\Gamma_{\varepsilon}}=(\mathrm{d}\mu_{\xi}+\nu_{\xi})|_{\Gamma_{\varepsilon}}
\end{align}
$$

on the other hand

$$
\tag{1.7}
\begin{align}
X_{\xi}\cdot \delta \tilde{S} & =\int_{M+ -}X_{\xi}\cdot \delta L+\int_{\Gamma+ -}X_{\xi}\cdot \delta \ell \\
 & =\int_{M+ -}X_{\xi}\cdot (E^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta)+\int_{\Gamma+ -}X_{\xi}\cdot \delta \ell \\
 & \cong\int_{M+ -}\mathrm{d}(X_{\xi}\cdot \delta \Theta)+\int_{\Gamma+ -}X_{\xi}\cdot \delta \ell \\
 & =\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \Theta+\int_{\Gamma+ -}X_{\xi}\cdot (\Theta+\delta \ell) \\
 & =\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \Theta+\int_{\Gamma+ -}\mathrm{d}(X_{\xi}\cdot C)-\frac{1}{4\pi}\int_{\Gamma+ -}X_{\xi}\cdot(T^{\mu \nu}\delta g_{\mu \nu}\varepsilon_{\Gamma})\\
 & =\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \Theta-\int_{\partial \Sigma_{+}-\partial \Sigma_{-}}X_{\xi}\cdot C-\frac{1}{2\pi}\int_{\Gamma+ -}T^{\alpha \beta}D_{\alpha}\xi_{\beta}\varepsilon_{\Gamma}
\end{align}
$$

then we have

$$
\tag{1.8}
\begin{align}
Q_{\xi}|_{\Sigma_{+}-\Sigma_{-}} & =\int_{M}\nu_{\xi}+\frac{1}{2\pi}\int_{\Gamma+ -}T^{\alpha \beta}D_{\alpha}\xi_{\beta}\varepsilon_{\Gamma} -\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \delta \ell\\
 & =\beta_{\xi}+\frac{1}{2\pi}\int_{\partial \Sigma_{+}}\tau_{\alpha}\xi_{\beta}T^{\alpha \beta}\varepsilon_{\partial \Sigma_{+}}-\frac{1}{2\pi}\int_{\partial \Sigma_{-}}\tau_{\alpha}\xi_{\beta}T^{\alpha \beta}\varepsilon_{\partial \Sigma_{-}}-\frac{1}{2\pi}\int_{\Gamma+ -}\xi_{\beta}D_{\alpha}T^{\alpha \beta}\varepsilon_{\Gamma} \\
 & -\int_{\Sigma_{+}-\Sigma_{-}}X_{\xi}\cdot \delta \ell
\end{align}
$$

For the Brown-York charge below we take no independent Cauchy-slice boundary counterterm, so $X_{\xi}\cdot\delta\ell|_{\Sigma_{\pm}}=0$.

we use

$$
\tag{1.9}
\begin{align}
Q_{\xi} & =X_{\xi}\cdot \theta-\alpha_{\xi} \\
 & =\int_{\Sigma}X_{\xi}\cdot (\Theta-\mathrm{d}C)-\int_{\Sigma}(\xi \cdot L+X_{\xi}\cdot \delta \ell-\mathrm{d}\mu_{\xi}) \\
 & =\int_{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot L-X_{\xi}\cdot \delta \ell)+\int_{\partial \Sigma}(\mu_{\xi}-X_{\xi}\cdot C)
\end{align}
$$

and

$$
\tag{1.10}
\begin{align}
X_{\xi}\cdot \delta S & =\int_{M}X_{\xi}\cdot \delta L+\int_{\partial M}X_{\xi}\cdot \delta\ell \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}\xi \cdot L+\int_{\Gamma}\xi \cdot L+X_{\xi}\cdot \delta \ell+\int_{\Sigma_{f}-\Sigma_{i}}X_{\xi}\cdot \delta \ell \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}(\xi \cdot L+X_{\xi}\cdot \delta \ell-\mathrm{d}\mu_{\xi})+\int_{\Gamma}\nu_{\xi} \\
 & =\alpha_{\xi}|_{\Sigma_{f}-\Sigma_{i}}+\beta_{\xi}|_{M}
\end{align}
$$

to derive 1.8. by a similar argue we have

$$
\tag{1.11}
\begin{align}
Q_{\xi}|_{\Sigma_{+}} & =-\frac{1}{2\pi}\int_{\partial \Sigma_{+}}\tau_{\alpha}\xi_{\beta}T^{\alpha \beta}\varepsilon_{\partial \Sigma_{+}}
\end{align}
$$
