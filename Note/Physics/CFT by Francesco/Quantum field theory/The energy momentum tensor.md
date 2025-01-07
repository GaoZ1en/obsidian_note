## the Belinfante tensor

in general, the canonical energy-momentum tensor $\displaystyle{T^{\mu \nu}_{c}}$ is not symmetric. however, we have the freedom to modify it by

$$\tag{1.5.1}
\begin{align}
T^{\mu \nu}_{B} & =T^{\mu \nu}_{c}+\partial_{\rho}B^{\rho \mu \nu} \\
B^{\rho \mu \nu} & =-B^{\mu \rho \nu}
\end{align}
$$

this addition does not affect the classical conservation law nor the Ward identity. if we succeed in finding $\displaystyle{B^{\rho \mu \nu}}$ such that the new $\displaystyle{T^{\mu \nu}_{B}}$ is a symmetric, then the latter is called ***Belinfante energy-momentum tensor***. in order to accomplish the argument, consider the conserved currents associated with Lorentz transformation, the associated canonical conserved current is

$$\tag{1.5.2}
\begin{align}
j^{\mu \nu \rho} & =T^{\mu \nu}_{c}x^{\rho}-T^{\mu \rho}_{c}x^{\nu}+\frac{1}{2}i \frac{\partial \mathcal{L}}{\partial(\partial_{\mu}\Phi)}S^{\nu \rho}\Phi
\end{align}
$$

we look for $\displaystyle{B^{\rho \mu \nu}}$ such that this current may be expressed as

$$\tag{1.5.3}
\begin{align}
j^{\mu \nu \rho} & =T^{\mu \nu}_{B}x^{\rho}-T^{\mu \rho}_{B}x^{\nu}
\end{align}
$$

which ensures that $\displaystyle{T^{\mu \nu}_{B}=T^{\nu \mu}_{B}}$.

$$\tag{1.5.4}
\begin{align}
B^{\mu \rho \nu} & =\frac{i}{4}\left\{\frac{\partial \mathcal{L}}{\partial(\partial_{\mu}\Phi)}S^{\nu \rho}\Phi+\frac{\partial \mathcal{L}}{\partial(\partial_{\rho}\Phi)}S^{\mu \nu}\Phi+\frac{\partial \mathcal{L}}{\partial(\partial_{\nu}\Phi)}S^{\mu \rho}\Phi\right\}
\end{align}
$$