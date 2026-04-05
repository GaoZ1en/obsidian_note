# problem 1

calculate

$$\begin{align}
\braket{ 0|\phi(x_{1})\bar{\psi}(x_{1})\psi(x_{1})\phi(x_{2})\bar{\psi}(x_{2})\psi(x_{2})|0 } 
\end{align}$$

using Wick theorem. here the Yukawa coupling interaction is given by

$$\begin{align}
\mathcal{L}_{\text{int}} & =-g\bar{\psi}\psi \phi
\end{align}$$

*sol*.

we have

$$\begin{align}
& \braket{ 0|\phi(x_{1})\bar{\psi}(x_{1})\psi(x_{1})\phi(x_{2})\bar{\psi}(x_{2})\psi(x_{2})|0 } \\
= & \braket{ 0|\phi(x_{1})\phi(x_{2})|0 }\braket{ 0|\bar{\psi}(x_{1})\psi(x_{1})\bar{\psi}(x_{2})\psi(x_{2})|0 } \\
= & \braket{ 0|\phi(x_{1})\phi(x_{2})|0 }(\braket{ 0|\bar{\psi}(x_{1})\psi(x_{1})|0 } \braket{ 0|\bar{\psi}(x_{2})\psi(x_{2})|0 }-\braket{ 0|\bar{\psi}(x_{1})\psi(x_{2})|0 } \braket{ 0|\bar{\psi}(x_{2})\psi(x_{1})|0 })  \\
= & -\braket{ 0|\phi(x_{1})\phi(x_{2})|0 }\braket{ 0|\bar{\psi}(x_{1})\psi(x_{2})|0 } \braket{ 0|\bar{\psi}(x_{2})\psi(x_{1})|0 } \\
= & -\Delta_{F}(x_{1}-x_{2})S_{F}(x_{1}-x_{2})S_{F}(x_{2}-x_{1})
\end{align}$$

where we have used the fact that $\braket{ 0|\bar{\psi}(x)\psi(x)|0 }=0$ since it is a normal ordered product. here $\Delta_{F}(x-y)$ and $S_{F}(x-y)$ are the Feynman propagators for scalar and Dirac fields respectively.

# problem 2

calculate

$$\begin{align}
[\phi(x),\phi(y)] \\
\braket{ 0|\phi(x)\phi(y)|0 }
\end{align}$$

and retarded propagator, advanced propagator, Feynman propagator and anti-Feynman propagator for a free real scalar field $\displaystyle{\phi}$ defined in 4d Minkowskian spacetime. 

*sol*.

$$\begin{align}
[\phi(x),\phi(y)] & =\int \frac{\mathrm{d}^{3}\vec{p}_{1}\mathrm{d}^{3}\vec{p}_{1}}{(2\pi)^{3}\sqrt{ 2\omega _{1}2\omega _{2} }} \left[a_{p_{1}}e^{ip_{1}\cdot x}+a_{p_{1}}^{\dagger}e^{-ip_{1}\cdot x},a_{p_{2}}e^{ip_{2}\cdot y}+a_{p_{2}}^{\dagger}e^{-ip_{2}\cdot y}\right] \\
 & =\int \frac{\mathrm{d}^{3}\vec{p}_{1}\mathrm{d}^{3}\vec{p}_{2}}{(2\pi)^{3}\sqrt{ 2\omega _{1}2\omega _{2} }}\delta ^{3}(\vec{p}_{1}-\vec{p}_{2})\left(e^{ip_{1}\cdot x-ip_{2}\cdot y}-e^{-ip_{1}\cdot x+ip_{2}\cdot y}\right) \\
 & =\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega}\left(e^{ip\cdot(x-y)}-e^{-ip\cdot(x-y)}\right) \\
 & =\int _{\mathcal{C}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

here the contour $\displaystyle{\mathcal{C}}$ for $\displaystyle{p_{0}}$ integration is chosen such that the poles $\displaystyle{p_{0}=\pm \sqrt{ \vec{p}^{2}+m^{2} }}$ are circled by the contour in the counter-clockwise direction.

$$\begin{align}
\braket{ 0|\phi(x)\phi(y)|0 }  & =\int \frac{\mathrm{d}^{3}\vec{p}_{1}\mathrm{d}^{3}\vec{p}_{2}}{(2\pi)^{3}\sqrt{ 2\omega _{1}2\omega _{2} }} \braket{ 0|(a_{p_{1}}e^{ip_{1}\cdot x}+a^{\dagger}_{p_{1}}e^{-ip_{1}\cdot x})(a_{p_{2}}e^{ip_{2}\cdot x}+a^{\dagger}_{p_{2}}e^{-ip_{2}\cdot y})|0 }  \\
 & =\int \frac{\mathrm{d}^{3}\vec{p}_{1}\mathrm{d}^{3}\vec{p}_{2}}{(2\pi)^{3}\sqrt{ 2\omega _{1}2\omega _{2} }}\braket{ 0|[a_{p_{1}},a_{p_{2}}^{\dagger}]|0 } e^{ip_{1}\cdot x-ip_{2}\cdot y} \\
 & =\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega} e^{ip\cdot(x-y)} \\
 & =\int _{\mathcal{C'}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

here the contour $\displaystyle{\mathcal{C'}}$ for $\displaystyle{p_{0}}$ integration is chosen such that only the pole $\displaystyle{p_{0}=+\sqrt{ \vec{p}^{2}+m^{2} }}$ is circled by the contour in the counter-clockwise direction.

retarded propagator is defined as

$$\begin{align}
\Delta _{R}(x-y) & =\int _{\mathcal{C}_{R}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

where the contour $\displaystyle{\mathcal{C}_{R}}$ for $\displaystyle{p_{0}}$ integration is chosen to be over the real axis. when $\displaystyle{x_{0}-y_{0}> 0}$, we close the contour in the upper half plane, thus both poles are outside the contour and the integral is zero. when $\displaystyle{x_{0}-y_{0}< 0}$, we close the contour in the lower half plane, thus both poles are inside the contour and we have

$$\begin{align}
\Delta _{R}(x-y) & =\theta(-t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega}(e^{ip\cdot(x-y)}-e^{-ip\cdot(x-y)}) \\
 & =-\theta(-t)[\phi(x),\phi(y)]
\end{align}$$

advanced propagator is defined as

$$\begin{align}
\Delta _{A}(x-y) & =\int _{\mathcal{C}_{A}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

where the contour $\displaystyle{\mathcal{C}_{A}}$ for $\displaystyle{p_{0}}$ integration is chosen to be over the real axis. when $\displaystyle{x_{0}-y_{0}< 0}$, we close the contour in the lower half plane, thus both poles are outside the contour and the integral is zero. when $\displaystyle{x_{0}-y_{0}> 0}$, we close the contour in the upper half plane, thus both poles are inside the contour and we have

$$\begin{align}
\Delta _{A}(x-y) & =\theta(t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega}(e^{ip\cdot(x-y)}-e^{-ip\cdot(x-y)}) \\
 & =\theta(t)[\phi(x),\phi(y)]
\end{align}$$

Feynman propagator is defined as

$$\begin{align}
\Delta _{F}(x-y) & =\int _{\mathcal{C}_{F}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

where the contour $\displaystyle{\mathcal{C}_{F}}$ for $\displaystyle{p_{0}}$ integration is chosen such that a little positive imaginary part is added to the pole at $\displaystyle{p_{0}=+\sqrt{ \vec{p}^{2}+m^{2} }}$ and a little negative imaginary part is added to the pole at $\displaystyle{p_{0}=-\sqrt{ \vec{p}^{2}+m^{2} }}$. when $\displaystyle{x_{0}-y_{0}> 0}$, we close the contour in the upper half plane, thus only the pole at $\displaystyle{p_{0}=+\sqrt{ \vec{p}^{2}+m^{2} }}$ is inside the contour and we have

$$\begin{align}
\Delta _{F}(x-y) & =\theta(t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega} e^{ip\cdot(x-y)}-\theta(-t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega} e^{-ip\cdot(x-y)} \\
 & =\braket{ 0|\mathcal{T}\phi(x)\phi(y)|0 }
\end{align}$$

and finally the anti-Feynman propagator is defined as

$$\begin{align}
\Delta _{\bar{F}}(x-y) & =\int _{\mathcal{C}_{\bar{F}}} \frac{\mathrm{d}^{4}p}{(2\pi)^{4}} \frac{i}{p^{2}+m^{2}} e^{ip\cdot(x-y)}
\end{align}$$

where the contour $\displaystyle{\mathcal{C}_{\bar{F}}}$ for $\displaystyle{p_{0}}$ integration is chosen such that a little negative imaginary part is added to the pole at $\displaystyle{p_{0}=+\sqrt{ \vec{p}^{2}+m^{2} }}$ and a little positive imaginary part is added to the pole at $\displaystyle{p_{0}=-\sqrt{ \vec{p}^{2}+m^{2} }}$. when $\displaystyle{x_{0}-y_{0}< 0}$, we close the contour in the lower half plane, thus only the pole at $\displaystyle{p_{0}=-\sqrt{ \vec{p}^{2}+m^{2} }}$ is inside the contour and we have

$$\begin{align}
\Delta _{\bar{F}}(x-y) & =\theta(-t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega} e^{-ip\cdot(x-y)}-\theta(t) \int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2\omega} e^{ip\cdot(x-y)} \\
 & =\braket{ 0|\bar{\mathcal{T}}\phi(x)\phi(y)|0 }
\end{align}$$

here $\displaystyle{\mathcal{T}}$ and $\displaystyle{\bar{\mathcal{T}}}$ are the time-ordering and anti-time-ordering operators respectively.

