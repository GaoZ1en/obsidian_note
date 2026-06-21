### Variation and diffeomorphism

in this section we will prove that the diffeomorphism of Riemann curvature and related quantities, together with the components of the volume form $\displaystyle{\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}}$ with respect to $\displaystyle{\xi}$ equal their Lie derivatives with respect to $\displaystyle{\xi}$, i.e., we will prove the following equations

$$
\tag{1.1}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\mathcal{L}_{\xi}R^{\rho}_{~\sigma \mu \nu}=\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{~\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
X_{\xi}\cdot \delta R_{\mu \nu} & =\mathcal{L}_{\xi}R_{\mu \nu}=\xi^{\lambda}\nabla_{\lambda}R_{\mu \nu}+R_{\lambda \nu}\nabla_{\mu}\xi^{\lambda}+R_{\mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
X_{\xi}\cdot \delta R & =\mathcal{L}_{\xi}R=\xi^{\lambda}\nabla_{\lambda}R \\
X_{\xi}\cdot \delta \varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}=\xi^{\lambda}\nabla_{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}
\end{align}
$$

we first write down the variation of the Christoffel symbols.

$$
\tag{1.2}
\begin{align}
\delta \Gamma^{\rho}_{\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\delta g_{\sigma \nu}+\nabla_{\nu}\delta g_{\mu \sigma}-\nabla_{\sigma}\delta g_{\mu \nu}\right)
\end{align}
$$

Notice that the Riemann curvature tensor is

$$
\tag{1.3}
\begin{align}
R^{\rho}_{~\sigma \mu \nu} & =\partial_{\mu}\Gamma^{\rho}_{\nu \sigma}-\partial_{\nu}\Gamma^{\rho}_{\sigma \mu}+\Gamma^{\rho}_{\mu \lambda}\Gamma^{\lambda}_{\nu \sigma}-\Gamma^{\rho}_{\nu \lambda}\Gamma^{\lambda}_{\mu \sigma} \\
\end{align}
$$

Then the variation of the Riemann curvature tensor is

$$
\tag{1.4}
\begin{align}
\delta R^{\rho}_{~\sigma \mu \nu} & =\partial_{\mu}\delta\Gamma^{\rho}_{\nu \sigma}-\partial_{\nu}\delta\Gamma^{\rho}_{\sigma \mu}+\delta \Gamma^{\rho}_{\mu \lambda}\Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}-\delta \Gamma^{\rho}_{\nu \lambda}\Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma} \\
 & =\nabla_{\mu}\delta \Gamma^{\rho}_{\nu \sigma}-\nabla_{\nu}\delta \Gamma^{\rho}_{\sigma \mu}+\delta \Gamma^{\rho}_{\mu \lambda}\Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}-\delta \Gamma^{\rho}_{\nu \lambda}\Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma} \\
 & -\Gamma^{\rho}_{\mu \lambda}\delta \Gamma^{\lambda}_{\nu \sigma}+\Gamma^{\lambda}_{\mu \nu}\delta \Gamma^{\rho}_{\lambda \sigma}+\Gamma^{\lambda}_{\mu \sigma}\delta \Gamma^{\rho}_{\nu \lambda}+\Gamma^{\rho}_{\nu \lambda}\delta \Gamma^{\lambda}_{\mu \sigma}-\Gamma^{\lambda}_{\mu \nu}\delta \Gamma^{\rho}_{\lambda \sigma}-\Gamma^{\lambda}_{\nu \sigma}\delta \Gamma^{\rho}_{\mu \lambda} \\
 & =\nabla_{\mu}\delta \Gamma^{\rho}_{\nu \sigma}-\nabla_{\nu}\delta \Gamma^{\rho}_{\sigma \mu}
\end{align}
$$

As definition, we have

$$
\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta g_{\mu \nu}=\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}
\end{align}
$$

Then the diffeomorphism of the Christoffel symbols is

$$
\tag{1.6}
\begin{align}
X_{\xi}\cdot \delta\Gamma^{\rho}_{\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\nabla_{\mu}\nabla_{\sigma}\xi_{\nu}+\nabla_{\nu}\nabla_{\sigma}\xi_{\mu}+\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-\nabla_{\sigma}\nabla_{\mu}\xi_{\nu}-\nabla_{\sigma}\nabla_{\nu}\xi_{\mu}\right) \\
 & =\frac{1}{2}g^{\rho \sigma}\left(\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-R^{\lambda}_{\nu \mu \sigma}\xi_{\lambda}-R^{\lambda}_{\mu \nu \sigma}\xi_{\lambda}\right) \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}-\frac{1}{2}g^{\rho \sigma}R^{\lambda}_{\nu \mu \sigma}\xi_{\lambda}-\frac{1}{2}g^{\rho \sigma}R^{\lambda}_{\mu \nu \sigma}\xi_{\lambda} \\
 & =\frac{1}{2}g^{\rho \sigma}\nabla_{\mu}\nabla_{\nu}\xi_{\sigma}+\frac{1}{2}g^{\rho \sigma}\nabla_{\nu}\nabla_{\mu}\xi_{\sigma}+\frac{1}{2}R^{\rho}_{~\mu \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \mu \lambda}\xi^{\lambda}
\end{align}
$$

Therefore

$$
\tag{1.7}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\nabla_{\mu}(X_{\xi}\cdot\delta \Gamma^{\rho}_{\nu \sigma})-\nabla_{\nu}(X_{\xi}\cdot \delta \Gamma^{\rho}_{\mu \sigma}) \\
 & = \frac{1}{2}\left(\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho}-\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}-\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho}\right)+\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\nu \sigma \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \sigma \lambda}\nabla_{\mu}\xi^{\lambda} \\
 & +\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\sigma \nu \lambda}\nabla_{\mu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\mu \sigma \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\mu \sigma \lambda}\nabla_{\nu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\sigma \mu \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

the 3-derivative terms

$$
\tag{1.8}
\begin{align}
\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho} & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}[\nabla_{\sigma},\nabla_{\nu}]\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}(R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}) \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}+R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda} \\
\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho} & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+[\nabla_{\nu},\nabla_{\mu}]\nabla_{\sigma}\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}-R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\lambda}_{~\sigma \mu \nu }\nabla_{\lambda}\xi^{\rho}\\
\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho} & =\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\nu}[\nabla_{\sigma},\nabla_{\mu}]\xi^{\rho} \\
 & =\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}-R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\lambda}_{~\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+\nabla_{\nu}R^{\rho}_{~\lambda \sigma \mu}xo^{\rho}+R^{\rho}_{~\lambda \sigma \mu}\nabla_{\nu}\xi^{\rho}
\end{align}
$$

then

$$
\tag{1.9}
\begin{align}
 & \frac{1}{2}(\nabla_{\mu}\nabla_{\nu}\nabla_{\sigma}\xi^{\rho}+\nabla_{\mu}\nabla_{\sigma}\nabla_{\nu}\xi^{\rho}-\nabla_{\nu}\nabla_{\mu}\nabla_{\sigma}\xi^{\rho}-\nabla_{\nu}\nabla_{\sigma}\nabla_{\mu}\xi^{\rho}) \\
= & \frac{1}{2}\nabla_{\mu}R^{\rho}_{~\lambda \sigma \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\lambda \mu \sigma}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\lambda \sigma \mu}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda} \\
= & \frac{1}{2}\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \mu \sigma}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda}
\end{align}
$$

$$
\tag{1.10}
\begin{align}
 & \frac{1}{2}\nabla_{\mu}R^{\rho}_{~\nu \sigma \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\nu \sigma \lambda}\nabla_{\mu}\xi^{\lambda} +\frac{1}{2}\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\sigma \nu \lambda}\nabla_{\mu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\mu \sigma \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\mu \sigma \lambda}\nabla_{\nu}\xi^{\lambda}-\frac{1}{2}\nabla_{\nu}R^{\rho}_{~\sigma \mu \lambda}\xi^{\lambda}-\frac{1}{2}R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda} \\
= & \frac{1}{2}g^{\rho \lambda}(\nabla_{\mu}R_{\lambda\nu \sigma \alpha}+\nabla_{\nu}R_{\mu \lambda \sigma \alpha})\xi^{\alpha}+\frac{1}{2}(\nabla_{\mu}R^{\rho}_{~\sigma \nu \lambda}+\nabla_{\nu}R^{\rho}_{~\sigma \lambda \mu})\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda} \\
= & \frac{1}{2}\nabla^{\rho}R_{\mu \nu \sigma \alpha}\xi^{\alpha}+\frac{1}{2}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

and summing over all the terms

$$
\tag{1.11}
\begin{align}
X_{\xi}\cdot \delta R^{\rho}_{~\sigma \mu \nu} & =\frac{1}{2}\nabla^{\rho}R_{\mu \nu \sigma \alpha}\xi^{\alpha}+\frac{1}{2}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\nu \sigma \lambda}+R^{\rho}_{~\sigma \nu \lambda})\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}(R^{\rho}_{~\mu \lambda \sigma}+R^{\rho}_{~\sigma \lambda \mu})\nabla_{\nu}\xi^{\lambda} \\
 & +\frac{1}{2}\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \sigma \nu}\nabla_{\mu}\xi^{\lambda}+\frac{1}{2}R^{\rho}_{~\lambda \mu \sigma}\nabla_{\nu}\xi^{\lambda}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}-R^{\lambda}_{~\sigma \mu \nu}\nabla^{\rho}\xi_{\lambda} \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\sigma \mu \nu}-R^{\lambda}_{~\sigma \mu \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{~\lambda \mu \nu}\nabla_{\sigma}\xi^{\lambda}+R^{\rho}_{~\sigma \lambda \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\sigma \mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

Here we use the Bianchi identities

$$
\tag{1.12}
\begin{align}
 R^{\rho}_{~\sigma \mu \nu}+R^{\rho}_{~\mu \nu \sigma}+R^{\rho}_{~\nu \sigma \mu}=0 &  \\
\nabla_{\sigma}R^{\rho}_{~\lambda \mu \nu}+\nabla_{\mu}R^{\rho}_{~\lambda \nu \sigma}+\nabla_{\nu}R^{\rho}_{~\lambda \sigma \mu}=0
\end{align}
$$

Ricci tensor

$$
\tag{1.13}
\begin{align}
X_{\xi}\cdot \delta R_{\mu \nu} & =X_{\xi}\cdot \delta R^{\rho}_{~\mu \rho \nu} \\
 & =\xi^{\lambda}\nabla_{\lambda}R^{\rho}_{~\mu \rho \nu}-R^{\lambda}_{~\mu \rho \nu}\nabla_{\lambda}\xi^{\rho}+R^{\rho}_{~\lambda \rho \nu}\nabla_{\mu}\xi^{\lambda}+R^{\rho}_{~\mu \lambda \nu}\nabla_{\rho}\xi^{\lambda}+R^{\rho}_{~\mu \rho \lambda}\nabla_{\nu}\xi^{\lambda} \\
 & =\xi^{\lambda}\nabla_{\lambda}R_{\mu \nu}+R_{\lambda \nu}\nabla_{\mu}\xi^{\lambda}+R_{\mu \lambda}\nabla_{\nu}\xi^{\lambda}
\end{align}
$$

and Ricci scalar

$$
\tag{1.14}
\begin{align}
X_{\xi}\cdot \delta R & =g^{\mu \nu}X_{\xi}\cdot \delta R_{\mu \nu} -R_{\mu \nu}X_{\xi}\cdot \delta g^{\mu \nu}\\
 & =\xi^{\lambda}\nabla_{\lambda}R+2R_{\mu \lambda}\nabla^{\mu}\xi^{\lambda}-2R_{\mu \nu}\nabla^{\mu}\xi^{\nu}=\xi^{\lambda}\nabla_{\lambda}R
\end{align}
$$

the component of the volume form. notice that

$$
\tag{1.15}
\begin{align}
\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}X_{\xi}\cdot \delta \varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\nabla_{\lambda}\xi^{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} \\
 & =-d!\nabla_{\lambda}\xi^{\lambda} \\
\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}} & =\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\nabla_{\lambda}\varepsilon_{\mu_{0}\mu_{1}\dots \mu_{d-1}}\xi^{\lambda}+\sum^{d-1}_{k=0}\varepsilon^{\mu_{0}\mu_{1}\dots \mu_{d-1}}\varepsilon_{\mu_{0}\dots \lambda\dots \mu_{d-1}}\nabla_{\mu_{k}}\xi^{\lambda} \\
 & =\frac{1}{2}\nabla_{\lambda}(-d!)\xi^{\lambda}-(d-1)!\sum^{d-1}_{k=0}\delta^{\mu_{k}}_{\lambda}\nabla_{\mu_{k}}\xi^{\lambda} \\
 & =-d!\nabla_{\lambda}\xi^{\lambda}
\end{align}
$$

and remembering that all the total-antisymmetric tensors are always proportional to $\displaystyle{\varepsilon_{\mu_{0}\dots \mu_{d-1}}}$, we can make the comment that

$$
\tag{1.16}
\begin{align}
X_{\xi}\cdot \delta \varepsilon_{\mu_{1}\dots \mu_{d-1}} & =\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\dots \mu_{d-1}}
\end{align}
$$

the bulk Lagrangian. for simplicity we only consider the Einstein-Hilbert action with a cosmological constant

$$
\tag{1.17}
\begin{align}
\mathbf{L} & =\frac{1}{16\pi G}(R-2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}
\end{align}
$$

perform a diffeomorphism

$$
\tag{1.18}
\begin{align}
X_{\xi}\cdot \delta\mathbf{L} & =\frac{1}{16\pi G}X_{\xi}\cdot \delta R\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\frac{1}{16\pi G}(R-2)\cdot \frac{1}{3!}X_{\xi}\cdot \delta \varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =\frac{1}{16\pi G}\mathcal{L}_{\xi}R\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}+\frac{1}{16\pi G}(R-2)\cdot \frac{1}{3!}\mathcal{L}_{\xi}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =\mathcal{L}_{\xi}\left(\frac{1}{16\pi G}(R-2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}}\right)
\end{align}
$$

proof is validate for any dimension.

## Cartan's magic formula

we will give a direct proof for Cartan's magic formula below.

suppose $\displaystyle{\omega_{\mu_{1}\dots \mu_{k}}}$ are the components of a $\displaystyle{k}$-form field $\displaystyle{\omega}$ defined on $\displaystyle{M}$. on the one hand, by definition its Lie derivative with respect to $\displaystyle{\xi_{\rho}}$ is given by

$$
\tag{2.1}
\begin{align}
 & \mathcal{L}_{\xi}\omega_{\mu_{1}\dots \mu_{k}} \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
= & \xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}+\sum^{k}_{m=1}\omega_{\mu_{1}\dots \lambda \dots\mu_{k}}\nabla_{\mu_{m}}\xi^{\lambda}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

on the other hand

$$
\tag{2.2}
\begin{align}
i_{\xi}\mathrm{d}\omega_{\mu_{1}\dots \mu_{k}} \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}& =i_{\xi}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\lambda}\wedge\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & =\xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}+\sum^{k}_{m=1}(-1)^{m}\nabla_{\lambda}\omega_{\mu_{1}\dots \rho\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge \dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

$$
\tag{2.3}
\begin{align}
\mathrm{d}i_{\xi}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} & =\mathrm{d}\left(\sum^{k}_{m=1}(-1)^{m-1}\omega_{\mu_{1}\dots \rho\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}\right) \\
 & =\sum^{k}_{m=1}(-1)^{m-1}\nabla_{\lambda}\omega_{\mu_{1}\dots \rho\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & +\sum^{k}_{m=1}(-1)^{m-1}\omega_{\mu_{1}\dots \rho\dots \mu_{k}}\nabla_{\lambda}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu)k} \\
 & =\sum^{k}_{m=1}(-1)^{m-1}\nabla_{\lambda}\omega_{\mu_{1}\dots \rho\dots \mu_{k}}\xi^{\rho}\mathrm{d}x^{\lambda}\wedge \mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{m-1}}\wedge \mathrm{d}x^{\mu_{m+1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}} \\
 & +\sum^{k}_{m=1}\omega_{\mu_{1}\dots \lambda\dots \mu_{k}}\nabla_{\mu_{m}}\xi^{\lambda}\mathrm{d}x^{\mu_{1}}\wedge \dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

summing over, we have

$$
\tag{2.4}
\begin{align}
(\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d})\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge\mathrm{d}x^{\mu_{k}} & =\xi^{\lambda}\nabla_{\lambda}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{k}}+\sum^{k}_{m=1}\omega_{\mu_{1}\dots \lambda\dots \mu_{k}}\nabla_{\mu_{m}}\xi^{\lambda}\mathrm{d}x^{\mu_{1}}\wedge \dots \wedge\mathrm{d}x^{\mu_{k}} \\
 & =\mathcal{L}_{\xi}\omega_{\mu_{1}\dots \mu_{k}}\mathrm{d}x^{\mu_{1}}\wedge\dots \wedge \mathrm{d}x^{\mu_{k}}
\end{align}
$$

## bulk Lagrangian

we have

$$
\tag{3.1}
\begin{align}
\int_{M}X_{\xi}\cdot \mathbf{L} & =\int_{M}\mathcal{L}_{\xi}\mathbf{L} \\
 & =\int_{M}(\mathrm{d}i_{\xi}+i_{\xi}\mathrm{d})\mathbf{L} \\
 & =\int_{M}\mathrm{d}(i_{\xi}\mathbf{L}) \\
 & =\int_{M}\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\int_{\Sigma_{f}-\Sigma_{i}}\xi \cdot \mathbf{L}+\int_{\Gamma}\xi \cdot \mathbf{L}
\end{align}
$$

then we will argue that if $\displaystyle{\xi}$ is parallel with $\displaystyle{\Gamma}$, the $\displaystyle{\int_{\Gamma}\xi \cdot L}$ will vanish. we choose local coordinate $\displaystyle{(t,z,\phi)}$. at first sight, $\displaystyle{\xi}$ is parallel with $\displaystyle{\Gamma}$ means that $\displaystyle{\xi}$ satisfies that $\displaystyle{\xi^{\mu}n_{\mu}=0}$. then we have

$$
\tag{3.2}
\begin{align}
\int_{\Gamma}\xi \cdot \mathbf{L} & =\int_{\Gamma}\xi^{\mu} \frac{\partial}{\partial x^{\mu}}\cdot \frac{1}{16\pi G}(R-2)\cdot \frac{1}{3!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =\int_{\Gamma} \frac{1}{16\pi G}(R-2)\xi^{\mu_{0}}\cdot \frac{1}{2!}\varepsilon_{\mu_{0}\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{1}}\wedge \mathrm{d}x^{\mu_{2}} \\
 & =-\frac{1}{16\pi G}\int_{\Gamma}(R-2)\xi^{\mu_{0}}n_{\mu_{0}}\cdot \frac{1}{2!} \varepsilon^{\Gamma}_{\mu_{1}\mu_{2}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
 & =0
\end{align}
$$
