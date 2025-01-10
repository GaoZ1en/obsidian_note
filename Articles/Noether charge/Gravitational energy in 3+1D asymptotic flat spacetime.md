in this file we will repeat the result in 9403028

the Lagrangian is

$$\tag{1.1}
\begin{align}
\mathbf{L} & =\frac{1}{16\pi}R\varepsilon \\
\varepsilon & =\frac{1}{4!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}\mu_{3}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}\wedge \mathrm{d}x^{\mu_{3}}
\end{align}
$$

then

$$\tag{1.2}
\begin{align}
\delta \mathbf{L} & =\mathbf{E}^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta\\
\mathbf{E}^{\mu \nu} & =\frac{1}{16\pi G}\left( -R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu} \right)\varepsilon \\
\Theta & =\frac{1}{16\pi}\left(g^{\mu \rho}g^{\nu \sigma}-g^{\mu \nu}g^{\rho \sigma}\right)\nabla_{\nu}\delta g_{\rho \sigma}\cdot \frac{1}{3!}\varepsilon_{\mu \mu_{1}\mu_{2}\mu_{3}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}\wedge \mathrm{d}x^{\mu_{3}}
\end{align}
$$

$$\tag{1.3}
\begin{align}
-\delta Q_{\xi} & =X_{\xi}\cdot \Omega \\
-X_{\xi}\cdot \omega & =\delta(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})-(X_{\delta \xi}\cdot \Theta-\delta \xi \cdot \mathbf{L})-\mathrm{d}(\xi \cdot \Theta) \\
X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L} & =\mathrm{d}Q_{\xi}-\tilde{E}
\end{align}
$$

where $\displaystyle{\omega=\delta \Theta}$ and $\displaystyle{\Omega=\int_{\Sigma}\omega}$

consider the following asymptotic flat spacetime metric

$$\tag{1.4}
\begin{align}
g_{\mu \nu} & =\eta_{\mu \nu}+\mathcal{O}(r^{-1}) \\
\partial_{\alpha}g_{\mu \nu} & =\mathcal{O}(r^{-2})
\end{align}
$$

$$\tag{1.5}
\begin{align}
\int_{\Sigma}\delta(X_{\xi}\cdot \theta-\xi \cdot \mathbf{L}) & =\delta \int_{\partial\Sigma} \frac{1}{16\pi}\varepsilon_{\mu \nu \mu_{1}}(\nabla^{\nu}\xi^{\mu}-\nabla^{\mu}\xi^{\nu})\mathrm{d}x^{\mu_{1}} \\
 & =\int_{\Sigma}(X_{\delta \xi}\cdot \theta-\delta \xi \cdot \mathbf{L})+\delta'\int_{\partial \Sigma} \frac{1}{16\pi}\varepsilon_{\mu \nu \mu_{1}}(\nabla^{\nu}\xi^{\mu}-\nabla^{\mu}\xi^{\nu})\mathrm{d}x^{\mu_{1}}
\end{align}
$$

again we again take that terms supports on $\displaystyle{\partial \Sigma}=S_{2}|_{r=\infty}$  vanishes due to the compactness of $\displaystyle{\partial \Sigma}$.  if we choose $\displaystyle{\xi^{\mu}=(\partial_{t})^{\mu}}$, we have simply

$$\tag{1.6}
\begin{align}
H & =-\frac{1}{16\pi}\int_{\partial \Sigma}\varepsilon_{\mu \nu \mu_{1}}(\nabla^{\nu}\xi^{\mu}-\nabla^{\mu}\xi^{\nu})\mathrm{d}x^{\mu_{1}} \\
 & =-\frac{1}{16\pi}\lim_{ r \to \infty } \int_{S_{2}}\mathrm{d}S
\end{align}
$$