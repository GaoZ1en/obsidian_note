## ABJ anomaly

the action is

$$\tag{7.1}
\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\left( i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+i\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma _{5})\psi\right)
\end{align}
$$

where $\displaystyle{\psi}$ and $\displaystyle{\bar{\psi}}$ are dynamical fields, and $\displaystyle{V_{\mu}}$ and $\displaystyle{A_{\mu}}$ are background fields. make a variation, we have

$$
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(i\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi+i\delta \bar{\psi}\gamma ^{\mu}\psi V_{\mu}+i\delta \bar{\psi}\gamma ^{\mu}\gamma _{5}\psi A_{\mu} \\
 & +i\bar{\psi}\gamma ^{\mu}V_{\mu}\delta \psi+i\bar{\psi}\gamma ^{\mu}\gamma _{5}A_{\mu}\delta \psi+i\bar{\psi}\gamma ^{\mu}\psi \delta V_{\mu}+i\bar{\psi}\gamma ^{\mu}\gamma _{5}\psi \delta A_{\mu})
\end{align}
$$

$$\tag{7.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(\delta \bar{\psi}E_{\psi}+E_{\bar{\psi}}\delta \psi)+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E_{\psi} & =i\gamma ^{\mu}\partial _{\mu}\psi+\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma _{5})\psi \\
E_{\bar{\psi}} & =-i\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}+\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma _{5}) \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(-i\bar{\psi}\gamma ^{\mu}\delta \psi)
\end{align}
$$

then we have the symplectic form

$$\tag{7.3}
\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(-i\delta \bar{\psi}\gamma ^{\mu}\wedge\delta \psi-\delta F^{\mu \nu}\wedge \delta A_{\nu})
\end{align}
$$

consider the $\displaystyle{U(1)_{V}}$ symmetry

$$
\begin{align}
X^{V}_{\alpha}=\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\alpha \psi-i\alpha \bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\partial _{\mu}\alpha   \frac{\delta}{\delta V_{\mu}}\right)
\end{align}
$$

act it on the action, we have

$$\tag{7.4}
\begin{align}
X^{V}_{\xi}\cdot \delta S & =0
\end{align}
$$
the corresponding Noether charge (up to a constant) is

$$\tag{7.5}
\begin{align}
J^{V} & =X_{\alpha}\cdot \theta-\alpha _{\alpha} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\tau _{\mu}\bar{\psi}\gamma ^{\mu}\psi
\end{align}
$$