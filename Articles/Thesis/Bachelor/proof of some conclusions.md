## $\displaystyle{\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu}}$

in this section we will try to prove

$$
\tag{1.1}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu} & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}+\frac{1}{2}K^{\mu}_{\beta}\gamma^{\nu}_{\alpha}\delta g_{\mu \nu} \\
 & -\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}D_{\beta}(\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}\\
 & +\frac{1}{2N}D_{\beta}N\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2N}D_{\alpha}N\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}
\end{align}
$$

$$
\tag{1.2}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta(\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}) \\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta \gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}+\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\gamma^{\rho}_{\mu}\delta \gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}-\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta \Gamma^{\lambda}_{\rho \sigma}n_{\lambda}+\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}\delta n_{\sigma} \\
 & =-\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}(\nabla_{\mu}\delta g_{\rho \nu}+\nabla_{\nu}\delta g_{\mu \rho}-\nabla_{\rho}\delta g_{\mu \nu})-\nabla_{\eta}\delta g_{\rho \sigma})n_{\lambda}+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\nabla_{\mu}(n_{\nu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}) \\
 & =-\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}(\nabla_{\mu}\delta g_{\rho \nu}+\nabla_{\nu}\delta g_{\mu \rho}-\nabla_{\rho}\delta g_{\mu \nu})+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\nabla_{\mu}n_{\nu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma} \\
 & =-\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}(\nabla_{\mu}\delta g_{\rho \nu}+\nabla_{\nu}\delta g_{\mu \rho}-\nabla_{\rho}\delta g_{\mu \nu})+\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}
\end{align}
$$

$$
\tag{1.3}
\begin{align}
\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}\delta g_{\mu \nu} & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(g^{\sigma}_{\mu}g^{\lambda}_{\nu}\delta g_{\sigma \lambda}) \\
 & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}((\gamma^{\sigma}_{\mu}+n^{\sigma}n_{\mu})(\gamma^{\lambda}_{\nu}+n^{\lambda}n_{\nu})\delta g_{\sigma \lambda}) \\
 & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}n^{\lambda}n_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\lambda}_{\nu}n^{\sigma}n_{\mu}\delta g_{\sigma \lambda}) \\
 & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma_{\nu}^{\lambda}\delta g_{\sigma \lambda})+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}n_{\nu}\gamma^{\sigma}_{\mu}n^{\lambda}\delta g_{\sigma \lambda}+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}n_{\mu}\gamma^{\lambda}_{\nu}n^{\sigma}\delta g_{\sigma \lambda} \\
 & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}D_{\beta}\ln N\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2}D_{\alpha}\ln N\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}
\end{align}
$$

$$
\tag{1.4}
\begin{align}
-\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\mu}\delta g_{\rho \nu} & =-\frac{1}{2}\gamma^{\mu}_{\alpha}\nabla_{\mu}(\gamma^{\nu}_{\beta}n^{\rho}\delta g_{\rho \nu})+\frac{1}{2}\gamma^{\mu}_{\alpha}\nabla_{\mu}\gamma^{\nu}_{\beta}n^{\rho}\delta g_{\rho \nu}+\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\nabla_{\mu}n^{\rho}\delta g_{\rho \nu} \\
 & =-\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}\gamma^{\mu}_{\alpha}\nabla_{\mu}(n^{\nu}n_{\beta})n^{\rho}\delta g_{\rho \nu}+\frac{1}{2}K_{\alpha}^{\mu}\gamma^{\nu}_{\beta}\delta g_{\mu \nu} \\
 & =-\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}-\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}-\frac{1}{2}K^{\nu}_{\alpha}n_{\beta}n^{\rho}\delta g_{\rho \nu}
\end{align}
$$

where in the first equal-sign we have used the definition of $\displaystyle{K_{\mu \nu}}$; in the second equal-sign we have just expanded it; in the third equal-sign we have used that

$$
\tag{1.3}
\begin{align}
\gamma^{\mu}_{\alpha}\delta \gamma^{\rho}_{\mu} & =-\gamma^{\mu}_{\alpha}\delta(n_{\mu}n^{\rho})=0
\end{align}
$$

and

$$
\tag{1.4}
\begin{align}
\delta n_{\mu} & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}\delta g_{\rho \sigma}
\end{align}
$$

$$
\tag{1.1}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu} & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}+\frac{1}{2}K^{\mu}_{\beta}\gamma^{\nu}_{\alpha}\delta g_{\mu \nu} \\
 & -\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}D_{\beta}(\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}\\
 & +\frac{1}{2N}D_{\beta}N\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2N}D_{\alpha}N\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}
\end{align}
$$

$$
\tag{.}
\begin{align}
\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}-\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}) & =-\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu} \\
 & =-\frac{1}{2}D_{\alpha}\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu} \\
 & =-\frac{1}{2}\gamma^{\rho}_{\alpha}\nabla_{\rho}\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}
\end{align}
$$

## $\displaystyle{X_{\xi}\cdot\delta n_{\mu}}$, $\displaystyle{\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta \gamma_{\mu \nu}}$ and $\displaystyle{\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta K_{\mu \nu}}$

$$
\tag{2.1}
\begin{align}
X_{\xi}\cdot \delta n_{\mu} & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}X_{\xi}\cdot \delta g_{\rho \sigma} \\
 & =\frac{1}{2}n_{\mu}n^{\rho}n^{\sigma}(\nabla_{\rho}\xi_{\sigma}+\nabla_{\sigma}\xi_{\rho}) \\

\end{align}
$$

$$
\tag{2.2}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta \gamma_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta g_{\mu \nu} \\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}(\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}) \\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\nabla_{\mu}((\gamma_{\nu \rho}+n_{\nu}n_{\rho})\xi^{\rho})+\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\nabla_{\nu}((\gamma_{\mu \rho}+n_{\mu}n_{\rho})\xi^{\rho}) \\
 & =D_{\alpha}(\gamma_{\beta\gamma}\xi^{\gamma})+D_{\beta}(\gamma_{\alpha \gamma}\xi^{\gamma})+2K_{\alpha \beta}n_{\rho}\xi^{\rho}
\end{align}
$$

$$
\tag{2.3}
\begin{align}
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta K_{\mu \nu} & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \delta(\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}) \\
 & =\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}X_{\xi}\cdot \left(\delta \gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}+\gamma^{\rho}_{\mu}\delta \gamma^{\sigma}_{\nu}\nabla_{\rho}n_{\sigma}-\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\delta \Gamma^{\lambda}_{\rho \sigma}n^{\sigma}+\gamma^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\nabla_{\rho}\delta n_{\sigma}\right) \\
 & =-\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}
\end{align}
$$
