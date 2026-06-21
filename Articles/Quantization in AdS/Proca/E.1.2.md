# E.1.2 Case II: $0<\Delta\le 1$

We now introduce the model. Specifically, we adopt the following asymptotic boundary conditions

$$\begin{align}
\Phi &= \frac{1}{r^{\Delta}}\Psi(t,\phi)+o(r^{\Delta-2}).
\end{align}$$

And we represent the action as

$$\begin{align}
S &= \lim_{r_{\infty}\to\infty}\left[\int_{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{-g}\left(-\frac{1}{2}g^{\mu\nu}\nabla_{\mu}\Phi\nabla_{\nu}\Phi-\frac{1}{2}\Delta(\Delta-2)\Phi^{2}\right)+\int_{\Gamma_{r_{\infty}}}\mathrm{d}^{2}x\sqrt{-\gamma}\left(-\frac{\Delta}{2}\Phi^{2}\right)\right].
\end{align}$$

Here, we choose

$$\begin{align}
0<\Delta\le 1.
\end{align}$$

And we allow $\Psi(t,\phi)$ to vary under the variational principle.

We now apply the model to the covariant phase space formalism. By taking a variation of the action, we get

$$\begin{align}
\delta S &= \lim_{r_{\infty}\to\infty}\left[\int_{M_{r_{\infty}}}\mathrm{d}^{3}x\sqrt{-g}\left(\nabla^{2}\Phi-\Delta(\Delta-2)\Phi\right)\delta\Phi+\int_{\Gamma_{r_{\infty}}}\mathrm{d}^{2}x\sqrt{-\gamma}\left(-n^{\mu}\nabla_{\mu}\Phi-\Delta\Phi\right)\delta\Phi\right.\\
&\qquad\left.+\int_{\Sigma_{f,r_{\infty}}}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\nabla_{\mu}\Phi\,\delta\Phi-\int_{\Sigma_{i,r_{\infty}}}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\nabla_{\mu}\Phi\,\delta\Phi\right]\\
&= \int_{M}\mathrm{d}^{3}x\sqrt{-g}\left(\nabla^{2}\Phi-\Delta(\Delta-2)\Phi\right)\delta\Phi+\int_{\Sigma_{f}}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\nabla_{\mu}\Phi\,\delta\Phi-\int_{\Sigma_{i}}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\nabla_{\mu}\Phi\,\delta\Phi.
\end{align}$$

In the last equality the cutoff boundary term vanishes.

From the expression of $\delta S$, we read out the equations of motion

$$\begin{align}
\nabla^{2}\Phi-\Delta(\Delta-2)\Phi=0.
\end{align}$$

We define the pre-phase space $\widetilde{\mathcal{P}}$ as the set of solutions. And we read out the symplectic potential

$$\begin{align}
\theta &= \int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\nabla_{\mu}\Phi\,\delta\Phi.
\end{align}$$

The symplectic form is

$$\begin{align}
\Omega &= \int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\left(\tau^{\mu}\nabla_{\mu}\delta_{1}\Phi\,\delta_{2}\Phi-\delta_{1}\Phi\,\tau^{\mu}\nabla_{\mu}\delta_{2}\Phi\right).
\end{align}$$

By the same boundary estimate, $\Omega|_{\widetilde{\mathcal{P}}}$ is finite and independent of the choice of the Cauchy slice.

We now discuss the Killing symmetries of the model. Specifically, we represent the Killing symmetries as

$$\begin{align}
X_{\xi} &= \int\mathrm{d}^{3}x\,\mathcal{L}_{\xi}\Phi(x)\frac{\delta}{\delta\Phi(x)}.
\end{align}$$

Here $\xi^{\mu}$ satisfies the Killing equation and the asymptotic behavior used in Case I. For the leading boundary estimate we write

$$\begin{align}
\xi^{a} &= \zeta^{a}(t,\phi)+O(r^{-2}), & \xi^{r} &= -\frac{1}{2}D_{a}\zeta^{a}\,r+O(r^{-1}).
\end{align}$$

Then

$$\begin{align}
\mathcal{L}_{\xi}\Phi &= r^{-\Delta}\left(\zeta^{a}D_{a}\Psi+\frac{\Delta}{2}D_{a}\zeta^{a}\,\Psi\right)+o(r^{\Delta-2}),
\end{align}$$

so the Killing transformations preserve the asymptotic boundary condition.

Acting the Killing transformation on the action gives

$$\begin{align}
X_{\xi}\cdot\delta S &= \alpha_{\xi,r_{\infty}}\big|_{\Sigma_{f}}-\alpha_{\xi,r_{\infty}}\big|_{\Sigma_{i}}+\beta_{\xi,r_{\infty}},\\
\alpha_{\xi,r_{\infty}} &= \int_{\Sigma_{r_{\infty}}}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau_{\rho}\xi^{\rho}\left(\frac{1}{2}\nabla_{\mu}\Phi\nabla^{\mu}\Phi+\frac{1}{2}\Delta(\Delta-2)\Phi^{2}\right),\\
\beta_{\xi,r_{\infty}} &= -\int_{\Gamma_{r_{\infty}}}\mathrm{d}^{2}x\sqrt{-\gamma}\left[\frac{1}{2}n_{\rho}\xi^{\rho}\left(\nabla_{\mu}\Phi\nabla^{\mu}\Phi+\Delta(\Delta-2)\Phi^{2}\right)+\Delta\Phi\,\mathcal{L}_{\xi}\Phi\right].
\end{align}$$

Using the boundary condition,

$$\begin{align}
\beta_{\xi,r_{\infty}} &= -\frac{\Delta}{2}r_{\infty}^{2-2\Delta}\int_{\Gamma_{r_{\infty}}}\mathrm{d}t\,\mathrm{d}\phi\,D_{a}\left(\zeta^{a}\Psi^{2}\right)+o(1)\\
&= \frac{\Delta}{2}r_{\infty}^{2-2\Delta}\left(\int_{\partial\Sigma_{f}}\mathrm{d}\phi\,\zeta^{t}\Psi^{2}-\int_{\partial\Sigma_{i}}\mathrm{d}\phi\,\zeta^{t}\Psi^{2}\right)+o(1).
\end{align}$$

Thus $\beta_{\xi,r_{\infty}}$ is not zero as a cutoff expression. It is an endpoint contribution and combines with the endpoint divergence of $\alpha_{\xi,r_{\infty}}$. The finite Noether charge is therefore the improved charge

$$\begin{align}
Q_{\xi}\big|_{\widetilde{\mathcal{P}}} &= X_{\xi}\cdot\theta-\left(\alpha_{\xi}+\int_{\partial\Sigma}\mathrm{d}x\sqrt{h}\,\tau_{\mu}\xi^{\mu}\frac{\Delta}{2}\Phi^{2}\right)\bigg|_{\widetilde{\mathcal{P}}}\\
&= \left[\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\xi^{\nu}T_{\mu\nu}-\int_{\partial\Sigma}\mathrm{d}x\sqrt{h}\,\tau_{\mu}\xi^{\mu}\frac{\Delta}{2}\Phi^{2}\right]_{\widetilde{\mathcal{P}}},
\end{align}$$

where

$$\begin{align}
T_{\mu\nu} &= \nabla_{\mu}\Phi\nabla_{\nu}\Phi-\frac{1}{2}g_{\mu\nu}\left(\nabla_{\rho}\Phi\nabla^{\rho}\Phi+\Delta(\Delta-2)\Phi^{2}\right).
\end{align}$$

With this improvement, the charge is independent of the Cauchy slice. The proof is the same as Case I, except that the cutoff surface contribution is kept until the end and is cancelled by the boundary term in $Q_{\xi}$.

We can also check the Hamiltonian equation. Before the cutoff is removed,

$$\begin{align}
X_{\xi}\cdot\Omega\big|_{\widetilde{\mathcal{P}}} &= \left[-\delta\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\,\tau^{\mu}\xi^{\nu}T_{\mu\nu}-\int_{\partial\Sigma_{r_{\infty}}}\mathrm{d}x\sqrt{h}\,\tau_{\nu}\xi^{\nu}n^{\mu}\nabla_{\mu}\Phi\,\delta\Phi\right]_{\widetilde{\mathcal{P}}}.
\end{align}$$

Using $n^{\mu}\nabla_{\mu}\Phi+\Delta\Phi=o(r^{-\Delta})$ on the cutoff surface, the boundary term becomes

$$\begin{align}
\delta\int_{\partial\Sigma_{r_{\infty}}}\mathrm{d}x\sqrt{h}\,\tau_{\nu}\xi^{\nu}\frac{\Delta}{2}\Phi^{2}+o(1).
\end{align}$$

Therefore

$$\begin{align}
X_{\xi}\cdot\Omega\big|_{\widetilde{\mathcal{P}}} &= -\delta Q_{\xi}\big|_{\widetilde{\mathcal{P}}}.
\end{align}$$

We furthermore view the pre-phase space $\widetilde{\mathcal{P}}$ as a linear space. Under this viewpoint, we define a two form

$$\begin{align}
\widetilde{\Omega}[\Phi_{1};\Phi_{2}]\big|_{\widetilde{\mathcal{P}}} &= \left[\int_{\Sigma}\mathrm{d}^{2}x\sqrt{\sigma}\left(\tau^{\mu}\nabla_{\mu}\Phi_{1}\,\Phi_{2}-\Phi_{1}\tau^{\mu}\nabla_{\mu}\Phi_{2}\right)\right]_{\widetilde{\mathcal{P}}}.
\end{align}$$

We have the following relation in terms of the two form and the Killing symmetry:

$$\begin{align}
\widetilde{\Omega}[\mathcal{L}_{\xi}\Phi_{1};\Phi_{2}]\big|_{\widetilde{\mathcal{P}}} &= -\widetilde{\Omega}[\Phi_{1};\mathcal{L}_{\xi}\Phi_{2}]\big|_{\widetilde{\mathcal{P}}}\\
&= -Q_{\xi}^{(2)}[\Phi_{1};\Phi_{2}]\big|_{\widetilde{\mathcal{P}}},
\end{align}$$

with

$$\begin{align}
Q_{\xi}^{(2)}[\Phi_{1};\Phi_{2}]|_{\tilde{\mathcal{P}}} & =\lim_{ r_{\infty} \to \infty } \left[\int _{\Sigma _{r_{\infty}}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}(\nabla _{\mu}\Phi_{1}\nabla _{\nu}\Phi_{2}+\nabla _{\nu}\Phi_{1}\nabla _{\mu}\Phi_{2}-g_{\mu \nu}\nabla _{\rho}\Phi_{1}\nabla ^{\rho}\Phi_{2}-\Delta(\Delta-2)g_{\mu \nu}\Phi_{1}\Phi_{2})\right. \\
 & \left.-\int _{H_{r_{\infty}}}\mathrm{d}x\sqrt{ h } \hat{\tau}_{\mu}\gamma ^{\mu}_{~\nu}\xi ^{\nu}\Phi_{1}\Phi_{2}\right]
\end{align}$$

By applying $(\xi_{0},\Phi,\Phi^{*})$ and $(\bar{\xi}_{0},\Phi,\Phi^{*})$ to this relation, we get the following two renormalized quadratic expressions:

$$\begin{align}
-2\widetilde{\Omega}[\mathcal{L}_{\xi_{0}}\Phi;\Phi^{*}]\big|_{\widetilde{\mathcal{P}}} &= 2\widetilde{\Omega}[\Phi;\mathcal{L}_{\xi_{0}}\Phi^{*}]\big|_{\widetilde{\mathcal{P}}}\\
 & = \lim_{r_{\infty}\to\infty}\left\{\int_{0}^{r_{\infty}}\mathrm{d}r\int_{0}^{2\pi}\mathrm{d}\phi\left[\frac{r}{1+r^{2}}|\partial_{t}\Phi-\partial_{\phi}\Phi|^{2}+\frac{1}{r(1+r^{2})}|\partial_{\phi}\Phi|^{2}+r|\partial_{r}\Phi|^{2}\right.\right.\\
 &\qquad\left.\left.+(\Delta-1)^{2}r|\Phi|^{2}+r^{3}\left|\partial_{r}\Phi+\frac{1}{r}\Phi\right|^{2}\right]-(1-\Delta)\int_{0}^{2\pi}\mathrm{d}\phi\,r_{\infty}^{2}|\Phi|^{2}\right\}, \\
 & =\int _{0}^{\infty}\mathrm{d}t\int _{0}^{2\pi}\mathrm{d}\phi\left[\dfrac{r}{1+r^{2}}|\partial _{t}\Phi-\partial _{\phi}\Phi|^{2}+\dfrac{1}{r(1+r^{2})}|\partial _{\phi}\Phi|^{2}+r|\partial _{r}\Phi|^{2}+r^{3}|\partial _{r}\Phi+\dfrac{\Delta}{r}\Phi|^{2}\right]
\end{align}$$

and

$$\begin{align}
-2\widetilde{\Omega}[\mathcal{L}_{\bar{\xi}_{0}}\Phi;\Phi^{*}]\big|_{\widetilde{\mathcal{P}}} &= 2\widetilde{\Omega}[\Phi;\mathcal{L}_{\bar{\xi}_{0}}\Phi^{*}]\big|_{\widetilde{\mathcal{P}}}\\
&= \lim_{r_{\infty}\to\infty}\left\{\int_{0}^{r_{\infty}}\mathrm{d}r\int_{0}^{2\pi}\mathrm{d}\phi\left[\frac{r}{1+r^{2}}|\partial_{t}\Phi+\partial_{\phi}\Phi|^{2}+\frac{1}{r(1+r^{2})}|\partial_{\phi}\Phi|^{2}+r|\partial_{r}\Phi|^{2}\right.\right.\\
&\qquad\left.\left.+(\Delta-1)^{2}r|\Phi|^{2}+r^{3}\left|\partial_{r}\Phi+\frac{1}{r}\Phi\right|^{2}\right]-(1-\Delta)\int_{0}^{2\pi}\mathrm{d}\phi\,r_{\infty}^{2}|\Phi|^{2}\right\}. \\
& =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi\left[\dfrac{r}{1+r^{2}}|\partial _{t}\Phi+\partial _{\phi}\Phi|^{2}+\dfrac{1}{r(1+r^{2})}|\partial _{\phi}\Phi|^{2}+r|\partial _{r}\Phi|^{2}+r^{3}|\partial _{r}\Phi+\dfrac{\Delta}{r}\Phi|^{2}\right]
\end{align}$$

The subtraction term is absent at $\Delta=1$. For $0<\Delta<1$, it removes the cutoff divergence produced by the slow leading mode $r^{-\Delta}\Psi(t,\phi)$.
