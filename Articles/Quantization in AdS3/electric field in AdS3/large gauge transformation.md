we first write down the action

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu} \\
\theta & =\int _{\Sigma} \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

the symplectic form is

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

consider the gauge transformation

$$\begin{align}
X_{\Lambda} & =\int _{M}\mathrm{d}^{3}x\nabla _{\mu}\Lambda \frac{\delta}{\delta A_{\mu}}
\end{align}$$

acting on the variation of the action, we have

$$\begin{align}
X_{\Lambda}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }F^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\Lambda \\
 & =0
\end{align}$$

thus the corresponding Noether charge gives

$$\begin{align}
Q_{\Lambda} & =X_{\Lambda}\cdot \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\nabla _{\nu}\Lambda
\end{align}$$

---

$$\begin{align}
Q_{\Lambda} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\nabla _{\nu}\Lambda \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\nu}(F^{\mu \nu}\Lambda)-\nabla _{\nu}F^{\mu \nu}\Lambda) \\
 & =-\int _{\partial\Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}n_{\nu}F^{\mu \nu}\Lambda
\end{align}$$

the second term vanishes since the eom, and the first term

$$\begin{align}
Q_{\Lambda} & \sim \int _{0}^{2\pi} \mathrm{d}\phi rF_{tr}\Lambda \\
 & =\int ^{2\pi}_{0}\mathrm{d}\phi \mathcal{O}(r^{-2}\log r)=0
\end{align}$$

---

the Poisson brackets between two gauge transformations is

$$\begin{align}
\left\{Q_{\Lambda_{1}},Q_{\Lambda _{2}}\right\} & =X_{\Lambda _{1}}\cdot X_{\Lambda _{2}}\cdot \omega \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(X_{\Lambda _{2}}\cdot \delta F^{\mu \nu})\nabla _{\nu}\Lambda _{1} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla ^{\mu}\nabla ^{\nu}\Lambda _{2}-\nabla ^{\nu}\nabla ^{\mu}\Lambda _{2})\nabla _{\nu}\Lambda _{1} \\
 & =0
\end{align}$$

thus there is no central extension in the algebra of gauge transformations.

I think we should add some boundary Lagrangian such as

$$\begin{align}
S_{bdy} & =-\frac{1}{2}\int _{\partial M}\mathrm{d}^{2}x\sqrt{ -\gamma }\gamma ^{\mu \nu}(\partial _{\mu}\phi-A_{\mu})(\partial _{\nu}\phi-A_{\nu})
\end{align}$$
