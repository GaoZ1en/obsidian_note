# problem 1

consider the Schwarzschild metric

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1-\frac{2M}{r} \right)\mathrm{d}t^{2}+\left( 1-\frac{2M}{r} \right)^{-1}\mathrm{d}r^{2}+r^{2}\mathrm{d}\Omega ^{2}
\end{align}$$

introduce a new radial coordinate $\displaystyle{\rho}$ and remain $\displaystyle{t,\theta,\phi}$ unchanged. we require that the metric is conformally flat in the $\displaystyle{t=\text{const}}$ hypersurfaces, i.e.,

$$\begin{align}
\mathrm{d}l^{2} & =\Psi(\rho)^{4}(\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\Omega ^{2})
\end{align}$$

1. prove that $\displaystyle{r=\rho\left( 1+\frac{M}{2\rho} \right)^{2}}$
1. insert this transformation into the Schwarzschild metric and show that

$$\begin{align}
\mathrm{d}s^{2} & =-\left( \frac{1-\frac{M}{2\rho}}{1+\frac{M}{2\rho}} \right)^{2}\mathrm{d}t^{2}+\left( 1+\frac{M}{2\rho} \right)^{4}(\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\Omega ^{2})
\end{align}$$

1. at $\displaystyle{\rho\to \infty}$, expand $\displaystyle{g_{tt}}$ to order $\displaystyle{\mathcal{O}(\rho ^{-1})}$. show that

$$\begin{align}
g_{tt}\approx -\left( 1-\frac{2M}{\rho} \right)+\mathcal{O}(\rho ^{-2})
\end{align}$$

and interpret this result that is consistent with the Newtonian limit $\displaystyle{\Phi(\rho)\approx -\frac{M}{\rho}}$.

*sol*.

## part 1

we start from the spatial part of the schwarzschild metric:

$$\begin{align}
\mathrm{d}l^{2} & =\left( 1-\frac{2M}{r} \right)^{-1}\mathrm{d}r^{2}+r^{2}\mathrm{d}\Omega ^{2} \\
 & =\left( 1-\frac{2M}{r} \right)^{-1} r'^{2}\mathrm{d}\rho ^{2}+r^{2}\mathrm{d}\Omega ^{2}
\end{align}$$

where $\displaystyle{r'=\frac{\mathrm{d}r}{\mathrm{d}\rho}}$. we want this to be conformally flat, i.e.,

$$\begin{align}
\mathrm{d}l^{2} & =\Psi(\rho)^{4}(\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\Omega ^{2}) \\
 & =\Psi(\rho)^{4}\mathrm{d}\rho ^{2}+\Psi(\rho)^{4}\rho ^{2}\mathrm{d}\Omega ^{2}
\end{align}$$

which gives

$$\begin{align}
\frac{\left( 1-\frac{2M}{r} \right)^{-1}r'^{2}}{r^{2}} & =\frac{\Psi^{4}}{\Psi^{4}\rho ^{2}} \\
\implies r & =\rho\left( 1+\frac{M}{2\rho} \right)^{2} \\
\Psi(\rho) & =1+\frac{M}{2\rho}
\end{align}$$

## part 2

we insert the transformation into the schwarzschild metric:

$$\begin{align}
\mathrm{d}s^{2}= & -\left( \frac{1-\frac{M}{2\rho}}{1+\frac{M}{2\rho}} \right)^{2}\mathrm{d}t^{2}+\left( 1+\frac{M}{2\rho} \right)^{4}(\mathrm{d}\rho ^{2}+\rho ^{2}\mathrm{d}\Omega ^{2})
\end{align}$$

# part 3

at $\displaystyle{\rho\to \infty}$, we expand $\displaystyle{g_{tt}}$ to order $\displaystyle{\mathcal{O}(\rho ^{-1})}$:

$$\begin{align}
g_{tt} & =-\left( \frac{1-\frac{M}{2\rho}}{1+\frac{M}{2\rho}} \right)^{2} \\
 & = -\left( 1-\frac{2M}{\rho}+\frac{2M^{2}}{\rho^{2}} \right)+\mathcal{O}(\rho ^{-3})
\end{align}$$

thus we have

$$\begin{align}
g_{tt} & \approx -\left( 1-\frac{2M}{\rho} \right)+\mathcal{O}(\rho ^{-2}) \\
 & \approx -1-2\Phi(\rho)
\end{align}$$

which gives the Newtonian potential

$$\begin{align}
\Phi(\rho) & =-\frac{M}{\rho}
\end{align}$$

consistent with the Newtonian limit.
