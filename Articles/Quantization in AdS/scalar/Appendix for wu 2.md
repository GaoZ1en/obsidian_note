## A Realization of the Scalar Field with $\displaystyle{\dfrac{d}{2} < \Delta< \dfrac{d}{2}+1}$ in the Lagrangian Formalism

We take this opportunity to introduce a realization of the scalar field with $\displaystyle{\dfrac{d}{2}<\Delta<\dfrac{d}{2}+1}$ in the Lagrangian formalism. We consider regular off-shell fields satisfying

$$\begin{align}
\phi(x) & =r^{\Delta-d}\psi _{-}(t,\Omega)+r^{-\Delta}\psi _{+}(t,\Omega)+o(r^{-\Delta}),
\end{align}$$

and corresponding differentiated asymptotics, allowing both $\displaystyle{\psi _{-}}$ and $\displaystyle{\psi _{+}}$ to vary. We start with the action (reference) in Section 5.2 (reference), with its parameter $\displaystyle{\Delta}$ replaced by $\displaystyle{d-\Delta}$, and add a boundary Legendre term:

$$\begin{align}
S & =\lim_{ r_{\infty} \to \infty } \left[\int _{M_{r_{\infty}}}\mathrm{d}^{d+1}x\sqrt{ -g }\left(-\dfrac{1}{2}g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\phi-\dfrac{1}{2}\Delta(\Delta-d)\phi ^{2}\right)-\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{d}x\sqrt{ -\gamma }\left(\dfrac{d-\Delta}{2}\phi ^{2}-(n^{\mu}\nabla _{\mu}\phi+(d-\Delta)\phi)\phi\right)\right]
\end{align}$$

The action (reference) under the asymptotic boundary conditions (reference) is finite. In particular, the added boundary Legendre term is finite, as follows from

$$\begin{align}
\sqrt{ -\gamma }(n^{\mu}\nabla _{\mu}\phi+(d-\Delta)\phi)\phi & =\sqrt{\bar h}\,(d-2\Delta)\psi_-\psi_++o(r^0).
\end{align}$$

Taking a variation of the action with respect to $\displaystyle{\phi}$, we obtain

$$\begin{align}
\delta S & =\lim_{ r_{\infty} \to \infty } \left[\int _{M_{r_{\infty}}}\mathrm{d}^{d+1}x\sqrt{ -g }(\nabla ^{2}\phi-\Delta(\Delta-d)\phi)\delta \phi\right. \\
 & \left.+\int _{\Gamma _{r_{\infty}}}\mathrm{d}^{d}x\sqrt{ -\gamma }\phi \delta(n^{\mu}\nabla _{\mu}\phi+(d-\Delta)\phi)\right] \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi-\int _{\Sigma _{i}}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

The integrals in this expression converge under the asymptotic boundary conditions, as follows from

$$\begin{aligned}
\sqrt{-g}\bigl(\nabla^2\phi-\Delta(\Delta-d)\phi\bigr)\delta\phi &=o(r^{-1}),\\
\sqrt{-\gamma}\,\phi\bigl(n^\mu\nabla_\mu\delta\phi+(d-\Delta)\delta\phi\bigr) &=\sqrt{\bar h}\,(d-2\Delta)\psi_-\delta\psi_++o(r^0),\\
\sqrt{\sigma}\,\tau^\mu\nabla_\mu\phi\,\delta\phi &=\mathcal O(r^{2\Delta-d-3}).
\end{aligned}$$

From the variation of the action (reference), we read out the equations of motion

$$\begin{align}
(\nabla ^{2}\phi-\Delta(\Delta-d)\phi)|_{\tilde{\mathcal{P}}}=0
\end{align}$$

The unrestricted variations of $\displaystyle{\psi _{+}}$ give

$$\begin{align}
\psi _{-}|_{\tilde{\mathcal{P}}}=0
\end{align}$$

and hence the stronger asymptotic boundary conditions

$$\begin{align}
\phi|_{\tilde{\mathcal{P}}} & =(r^{-\Delta}\psi _{+}+o(r^{-\Delta}))|_{\tilde{\mathcal{P}}}
\end{align}$$

which is exactly the asymptotic boundary condition of the standard quantization.

For example, we take global $\displaystyle{\mathrm{AdS}_{3}}$ with $\displaystyle{1<\Delta<2}$ and truncate the off-shell mode expansion in fast-falloff modes as

$$\begin{align}
\phi _{N}(x) & =\sum _{m\in \mathbb{Z}} \dfrac{e^{im\varphi}}{\sqrt{ 2\pi }} \sum ^{N_{m}-1}_{n=0}q_{n,m}(t)f_{nm}(r).
\end{align}$$

The coefficients remain arbitrary off shell and satisfy $q_{n,-m}=q_{n,m}^*$, with $N_{-m}=N_m$, so that $\phi_N$ is real. Here, $\displaystyle{f_{nm}}$ are the fast-falloff modes (reference) with exponent $\displaystyle{\Delta}$, normalized by

$$\begin{align}
\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{1+r^{2}}f_{nm}(r)f_{km}(r) & =\delta _{nk}.
\end{align}$$

At fixed truncation, both boundary terms vanish as $r_\infty\to\infty$, since their integrands are $\mathcal O(r_\infty^{2-2\Delta})$. Substituting the truncated expansion into the action gives

$$\begin{align}
S_{N} & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\sum _{m\in \mathbb{Z}} \sum ^{N_{m}-1}_{n=0}[|\dot{q}_{n,m}|^{2}-(\Delta+|m|+2n)^{2}|q_{n,m}|^{2}].
\end{align}$$

Varying the remaining time-dependent coefficients, we obtain

$$\begin{align}
\ddot q_{n,m}+(\Delta+|m|+2n)^2q_{n,m}=0.
\end{align}$$

Thus every retained mode has exactly the standard-quantization value $\omega^2=(\Delta+|m|+2n)^2$, already at finite truncation.
