## Classical Liouville Theory

The action is
$$
S=-\frac{1}{4\pi}\int_M{\rm d}^2x\sqrt{-g}\left(g^{\mu\nu}\nabla_\mu\phi\nabla_\nu\phi+\frac{2}{\gamma}R\phi+\frac{\mu}{\gamma^2}e^{\gamma\phi}\right)
$$
Here, we view $\phi$ as a dynamical field and $g_{\mu\nu}$ as a background field. We define the system in the spacetime region $M$ sanwiched between the initial Cauchy surface $\Sigma_i$ and the final Cauchy surface $\Sigma_f$, and all of the spatial boundary effects are ignored.

The variation of the action is
$$
\begin{aligned}
\delta S&=-\frac{1}{4\pi}\int_M{\rm d}^2x\sqrt{-g}\left(2g^{\mu\nu}\nabla_\mu\phi\nabla_\nu\delta\phi+\frac{2}{\gamma}R\delta\phi+\frac{\mu}{\gamma}e^{\gamma\phi}\delta\phi\right)\\
&=\frac{1}{2\pi}\int_M{\rm d}^2x\sqrt{-g}\left(\nabla^2\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma\phi}\right)\delta\phi+\frac{1}{2\pi}\int_{\Sigma_f-\Sigma_i}{\rm d}x\sqrt{\sigma}\tau^\mu\nabla_\mu\phi\delta\phi
\end{aligned}
$$
Equation of motion
$$
E=\nabla^2\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma\phi}=0
$$
and the symplectic potential
$$
\theta=\frac{1}{2\pi}\int_{\Sigma}{\rm d}x\sqrt{\sigma}\tau^\mu\nabla_\mu\phi\delta\phi
$$
We represent the conformal symmetry as a vector of the set of configuration as
$$
X_\xi=\int_M{\rm d}^2x\left(\xi^\mu\nabla_\mu\phi+\frac{1}{\gamma}\nabla_\mu\xi^\mu\right)\frac{\delta}{\delta\phi(x)}
$$
where $\xi^\mu$ is a conformal Killing vector satisfying
$$
\nabla_\mu\xi_\nu+\nabla_\nu\xi_\mu-g_{\mu\nu}\nabla_\rho\xi^\rho=0
$$
Then
$$
\begin{aligned}
0&=\nabla^\nu\nabla_\mu\xi_\nu+\nabla^\nu\nabla_\nu\xi_\mu-\nabla_\mu\nabla_\rho\xi^\rho\\
&=[\nabla_\mu,\nabla_\nu]\xi^\nu+\nabla^2\xi_\mu=R_{\mu\nu}\xi^\nu+\nabla^2\xi_\mu\\
&=\nabla^2\xi_\mu+\frac{1}{2}R\xi_\mu
\end{aligned}
$$
And therefore
$$
\begin{aligned}
0&=\nabla^\mu\nabla^2\xi_\mu+\frac{1}{2}\nabla^\mu(R\xi_\mu)\\
&=[\nabla^\mu,\nabla^\nu\nabla_\nu]\xi_\mu+\nabla^2(\nabla_\mu\xi^\mu)+\frac{1}{2}\xi^\mu\nabla_\mu R+\frac{1}{2}R\nabla_\mu\xi^\mu\\
&=[\nabla^\mu,\nabla^\nu](\nabla_\nu\xi_\mu)+\nabla^2(\nabla_\mu\xi^\mu)+\xi^\mu\nabla_\mu R+R\nabla_\mu\xi^\mu\\
&=\nabla^2(\nabla_\mu\xi^\mu)+\xi^\mu\nabla_\mu R+R\nabla_\mu\xi^\mu
\end{aligned}
$$
We use
$$
R_{\mu\nu}=\frac{1}{2}Rg_{\mu\nu}
$$
which is generally true in two dimensional spacetime.

By acting the conformal symmetry to the action, we have
$$
\begin{aligned}
X_\xi\cdot\delta S&=-\frac{1}{2\pi}X_\xi\cdot\int_M{\rm d}^2x\sqrt{-g}\left(\nabla^\mu\phi\nabla_\mu\delta\phi+\frac{1}{\gamma}R\delta\phi+\frac{\mu}{2\gamma}e^{\gamma\phi}\delta\phi\right)\\
&=-\frac{1}{2\pi}\int_M{\rm d}^2x\sqrt{-g}\left(\nabla^\mu\phi\nabla_\mu\left(\xi^\nu\nabla_\nu\phi+\frac{1}{\gamma}\nabla_\nu\xi^\nu\right)+\frac{1}{\gamma}R\left(\xi^\nu\nabla_\nu\phi+\frac{1}{\gamma}\nabla_\nu\xi^\nu\right)\right.\\
&\left.+\frac{\mu}{2\gamma}e^{\gamma\phi}\left(\xi^\nu\nabla_\nu\phi+\frac{1}{\gamma}\nabla_\nu\xi^\nu\right)\right)\\
&=-\frac{1}{2\pi}\int_M{\rm d}^2x\sqrt{-g}\left(\frac{1}{2}\nabla^\mu\phi\nabla^\nu\phi\left(\nabla_\mu\xi_\nu+\nabla_\nu\xi_\mu-g_{\mu\nu}\nabla_\rho\xi^\rho\right)+\frac{1}{2}\nabla_\mu\left(\nabla_\nu\phi\nabla^\nu\phi\xi^\mu\right)\right.\\
&+\frac{1}{\gamma}\nabla_\mu(\phi\nabla^\mu\nabla_\nu\xi^\nu)-\frac{1}{\gamma}\phi(\nabla^2\nabla_\nu\xi^\nu+\xi^\mu\nabla_\mu R+R\nabla_\mu\xi^\mu)+\frac{1}{\gamma}\nabla_\mu(\phi\xi^\mu R)\\
&\left.+\frac{1}{\gamma^2}R\nabla_\nu\xi^\nu+\frac{\mu}{2\gamma^2}\nabla_\mu( e^{\gamma\phi}\xi^\mu)\right)\\
&=\int_{M}{\rm d}^2x\sqrt{-g}\nabla_\mu\left(-\frac{1}{4\pi}\nabla_\nu\phi\nabla^\nu\phi\xi^\mu-\frac{1}{2\pi\gamma}\phi\nabla^\mu\nabla_\nu\xi^\nu-\frac{1}{2\pi\gamma}\phi\xi^\mu R-\frac{\mu}{4\pi\gamma^2}e^{\gamma\phi}\xi^\mu\right)\\
&+\int_{M}{\rm d}^2x\sqrt{-g}-\frac{1}{2\pi\gamma^2}R\nabla_\nu\xi^\nu\\
&=\int_{\Sigma_f-\Sigma_i}{\rm d}x\sqrt{\sigma}\tau_\mu\left(\frac{1}{4\pi}\nabla_\nu\phi\nabla^\nu\phi\xi^\mu+\frac{1}{2\pi\gamma}\phi\nabla^\mu\nabla_\nu\xi^\nu+\frac{1}{2\pi\gamma}\phi\xi^\mu R+\frac{\mu}{4\pi\gamma^2}e^{\gamma\phi}\xi^\mu\right)\\
&+\int_{M}{\rm d}^2x\sqrt{-g}-\frac{1}{2\pi\gamma^2}R\nabla_\nu\xi^\nu
\end{aligned}
$$

$$
\begin{aligned}
\alpha_\xi&=\int_{\Sigma}{\rm d}x\sqrt{\sigma}\tau_\mu\left(\frac{1}{4\pi}\nabla_\nu\phi\nabla^\nu\phi\xi^\mu+\frac{1}{2\pi\gamma}\phi\nabla^\mu\nabla_\nu\xi^\nu+\frac{1}{2\pi\gamma}\phi\xi^\mu R+\frac{\mu}{4\pi\gamma^2}e^{\gamma\phi}\xi^\mu\right)\\
\beta_\xi&=\int_M{\rm d}^2x\sqrt{-g}(-1)\frac{1}{2\pi\gamma^2}R\nabla_\nu\xi^\nu
\end{aligned}
$$

$$
\begin{aligned}
Q_\xi&=X_\xi\cdot\theta-\alpha_\xi\\
&=\frac{1}{2\pi}\int_\Sigma{\rm d}x\sqrt{\sigma}\tau^\mu\nabla_\mu\phi\left(\xi^\nu\nabla_\nu\phi+\frac{1}{\gamma}\nabla_\nu\xi^\nu\right)\\
&-\int_{\Sigma}{\rm d}x\sqrt{\sigma}\tau_\mu\left(\frac{1}{4\pi}\nabla_\nu\phi\nabla^\nu\phi\xi^\mu+\frac{1}{2\pi\gamma}\phi\nabla^\mu\nabla_\nu\xi^\nu+\frac{1}{2\pi\gamma}\phi\xi^\mu R+\frac{\mu}{4\pi\gamma^2}e^{\gamma\phi}\xi^\mu\right)\\
&=\int_{\Sigma}{\rm d}x\sqrt{\sigma}\left(\frac{1}{2\pi}\tau^\mu\xi^\nu\nabla_\mu\phi\nabla_\nu\phi+\frac{1}{2\pi\gamma}\tau^\mu\nabla_\mu\phi\nabla_\nu\xi^\nu-\frac{1}{4\pi}\tau_\mu\xi^\mu\nabla_\nu\phi\nabla^\nu\phi\right.\\
&\left.-\frac{1}{2\pi\gamma}\phi\tau^\mu\nabla_\mu\nabla_\nu\xi^\nu-\frac{1}{2\pi\gamma}\tau_\mu\xi^\mu R\phi-\frac{\mu}{4\pi\gamma^2}\tau_\mu\xi^\mu e^{\gamma\phi}\right)\\
&=\int_{\Sigma}{\rm d}x\sqrt{\sigma}\left(-\frac{1}{2\pi}\tau^\mu\xi^\nu\left(-\nabla_\mu\phi\nabla_\nu\phi+\frac{1}{2}g_{\mu\nu}\nabla_\rho\phi\nabla^\rho\phi+\frac{2}{\gamma}\nabla_\mu\nabla_\nu\phi-\frac{2}{\gamma}g_{\mu\nu}\nabla^2\phi+\frac{\mu}{2\gamma^2}g_{\mu\nu}e^{\gamma\phi}\right)\right.\\
&-\frac{1}{2\pi\gamma}\tau^\mu\phi(\nabla_\nu\nabla^\nu\xi_\mu+\frac{1}{2}R\xi_\mu)+\frac{1}{2\pi\gamma}\tau^\mu\nabla^\nu\phi(\nabla_\mu\xi_\nu+\nabla_\nu\xi_\mu-g_{\mu\nu}\nabla_\rho\xi^\rho)\\
&\left.+\tau_\mu\nabla_\nu\left(\frac{1}{2\pi\gamma}\phi(\nabla^\nu\xi^\mu-\nabla^\mu\xi^\nu)+\frac{1}{\pi\gamma}(\nabla^\mu\phi\xi^\nu-\nabla^\nu\phi\xi^\mu)\right)\right)\\
&=\int_{\Sigma}{\rm d}x\sqrt{\sigma}\left(-\frac{1}{2\pi}\tau^\mu\xi^\nu\left(-\nabla_\mu\phi\nabla_\nu\phi+\frac{1}{2}g_{\mu\nu}\nabla_\rho\phi\nabla^\rho\phi+\frac{2}{\gamma}\nabla_\mu\nabla_\nu\phi-\frac{2}{\gamma}g_{\mu\nu}\nabla^2\phi+\frac{\mu}{2\gamma^2}g_{\mu\nu}e^{\gamma\phi}\right)\right)\\
&=\int_\Sigma{\rm d}x\sqrt{\sigma}(-1)\frac{1}{2\pi}\tau^\mu\xi^\nu T_{\mu\nu}
\end{aligned}
$$

where the stress tensor $T_{\mu\nu}$ is defined as
$$
T_{\mu\nu}=-\nabla_\mu\phi\nabla_\nu\phi+\frac{1}{2}g_{\mu\nu}\nabla_\rho\phi\nabla^\rho\phi+\frac{2}{\gamma}\nabla_\mu\nabla_\nu\phi-\frac{2}{\gamma}g_{\mu\nu}\nabla^2\phi+\frac{\mu}{2\gamma^2}g_{\mu\nu}e^{\gamma\phi}
$$
We used a fact that for a antisymmetric tensor ${\cal S}_{\mu\nu}$
$$
\begin{aligned}
\tau_\mu\nabla_\nu S^{\mu\nu}&=\tau_\mu\nabla_\nu[(\sigma^\mu_\rho-\tau^\mu\tau_\rho)(\sigma^\nu_\sigma-\tau^\nu\tau_\sigma)S^{\rho\sigma}]\\
&=\tau_\mu\nabla_\nu(\sigma^\mu_\rho\sigma^\nu_\sigma S^{\rho\sigma})-\tau_\mu\nabla_\nu(\sigma^\mu_\rho\tau^\nu\tau_\sigma S^{\rho\sigma})-\tau_\mu\nabla_\nu(\sigma^\nu_\sigma\tau^\mu\tau_\rho S^{\rho\sigma})\\
&=-\nabla_\nu\tau_\mu\sigma^\mu_\rho\sigma^\nu_\sigma S^{\rho\sigma}-\tau_\mu\tau^\nu\nabla_\nu(\sigma^\mu_\rho\tau_\sigma S^{\rho\sigma})+\nabla_\nu(\sigma^\nu_\sigma\tau_\rho S^{\rho\sigma})\\
&=-K_{\rho\sigma}S^{\rho\sigma}-\tau_\mu\tau^\nu\nabla_\nu(\sigma^\mu_\rho\tau_\sigma S^{\rho\sigma})-\nabla_\nu(\sigma^\mu_\rho\tau_\sigma S^{\rho\sigma})\\
&=-D_\mu(\sigma^\mu_\rho\tau_\sigma S^{\rho\sigma})
\end{aligned}
$$
We point out that the stress tensor satisfies the following relations
$$
\begin{aligned}
\nabla^\mu T_{\mu\nu}|_{\tilde{\cal P}}&=0\\
T_{\mu\nu}&=T_{\nu\mu}\\
g^{\mu\nu}T_{\mu\nu}|_{\tilde{\cal P}}&=-\frac{2}{\gamma^2}R
\end{aligned}
$$
and
$$
\begin{aligned}
Q_\xi|_{\Sigma_f,\tilde{\cal P}}-Q_\xi|_{\Sigma_i,\tilde{P}}&=-\frac{1}{2\pi}\int_{\Sigma_f-\Sigma_i}
\end{aligned}
$$

Then we will calculate the Poisson bracket of the conserved charges
