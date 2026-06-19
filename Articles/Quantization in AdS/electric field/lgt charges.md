consider the Noether charge corresponding to the lgt $\displaystyle{\delta _{\Lambda}A_{\mu}=\nabla _{\mu}\Lambda}$, where $\displaystyle{\Lambda \sim \mathcal{O}(r^{0})}$ at the boundary

$$\begin{align}
Q_{\Lambda} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\nabla _{\nu}\Lambda \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}[\nabla _{\nu}\left(F^{\mu \nu}\Lambda\right)-\nabla _{\nu}F^{\mu \nu}\Lambda] \\
 & \approx \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}(F^{\mu \nu}\Lambda) \\
 & \propto \int _{\partial \Sigma}\mathrm{d}x\sqrt{ h }\tau _{\mu}n_{\nu}F^{\mu \nu}\Lambda
\end{align}$$

here $\displaystyle{h}$ is the induced metric on the corner

$$\begin{align}
\mathrm{d}s^{2}_{\partial \Sigma} & =h_{ij}\mathrm{d}x^{i}\mathrm{d}x^{j} \\
 & =r^{2}\mathrm{d}\phi ^{2}, \quad r\to \infty
\end{align}$$

$\displaystyle{\tau ^{\mu}}$ is the future-directed unit normal vector of the Cauchy surface

$$\begin{align}
\tau ^{\mu} & =\dfrac{1}{\sqrt{ 1+r^{2} }}\delta _{\tau}^{\mu}
\end{align}$$

and $\displaystyle{n^{\mu}}$ is the outward-directed unit normal vector of the spatial boundary $\displaystyle{\Gamma}$

$$\begin{align}
n^{\mu} & =\sqrt{ 1+r^{2} } \delta _{r}^{\mu}
\end{align}$$

choose the following asymptotic behavior of the field components

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}), & A^{r} & =o(r^{1}), & A^{\phi} & =\mathcal{O}(r^{-2}) \\
A_{t} & =\mathcal{O}(r^{0}), & A_{r} & =o(r^{-1}), & A_{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

and the field strength (relevant to our discussion)

$$\begin{align}
F_{tr} & =o(r^{-1}), \dots
\end{align}$$

then

$$\begin{align}
Q_{\Lambda} &  \propto \int _{0}^{2\pi}\mathrm{d}\phi r \dfrac{1}{\sqrt{ 1+r^{2} }} \sqrt{ 1+r^{2} } F_{tr} \Lambda \\
 & =\int _{0}^{2\pi}\mathrm{d}\phi ro(r^{-1}) \mathcal{O}(r^{0}) \\
 & =\int _{0}^{2\pi}\mathrm{d}\phi o(r^{0})=0
\end{align}$$

thus the Noether charge corresponds to lgts vanishes in general. on the other hand

$$\begin{align}
\omega[\nabla \Lambda,A]\propto Q_{\Lambda}=0
\end{align}$$

the symplectic form plugged in with a lgts also vanishes. lgts are non-physical