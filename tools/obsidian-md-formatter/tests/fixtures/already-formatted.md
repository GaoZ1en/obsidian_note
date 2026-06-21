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
