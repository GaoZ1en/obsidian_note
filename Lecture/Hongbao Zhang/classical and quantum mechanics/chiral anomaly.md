## ABJ anomaly

the action is

$$\tag{7.1}
\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\left( i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma _{5})\psi\right)
\end{align}
$$

where $\displaystyle{\psi}$ and $\displaystyle{\bar{\psi}}$ are dynamical fields, and $\displaystyle{V_{\mu}}$ and $\displaystyle{A_{\mu}}$ are background fields. make a variation, we have

$$
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(i\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi+\delta \bar{\psi}\gamma ^{\mu}\psi V_{\mu}+\delta \bar{\psi}\gamma ^{\mu}\gamma _{5}\psi A_{\mu} \\
 & +\bar{\psi}\gamma ^{\mu}V_{\mu}\delta \psi+\bar{\psi}\gamma ^{\mu}\gamma _{5}A_{\mu}\delta \psi+\bar{\psi}\gamma ^{\mu}\psi \delta V_{\mu}+\bar{\psi}\gamma ^{\mu}\gamma _{5}\psi \delta A_{\mu})
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

consider the vector $\displaystyle{U(1)_{V}}$ symmetry

$$
\begin{align}
X^{V}_{\alpha}=\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\alpha \psi-i\alpha \bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\partial _{\mu}\alpha   \frac{\delta}{\delta V_{\mu}}\right)
\end{align}
$$

act it on the action, we have

$$\tag{7.4}
\begin{align}
X^{V}_{\alpha}\cdot \delta S & =0
\end{align}
$$
the corresponding Noether charge is

$$\tag{7.5}
\begin{align}
J^{V}_{\alpha} & =X_{\alpha}\cdot \theta-\alpha _{\alpha} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\alpha\bar{\psi}\gamma ^{\mu}\psi
\end{align}
$$

then consider the axial $\displaystyle{U(1)_{A}}$ symmetry

$$
\begin{align}
X^{A}_{\beta}=\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\beta \gamma _{5}\psi+i\beta \bar{\psi}\gamma _{5}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\partial _{\mu}\beta   \frac{\delta}{\delta A_{\mu}}\right)
\end{align}
$$

act it on the action, we have

$$\tag{7.6}
\begin{align}
X^{A}_{\beta}\cdot \delta S & =0
\end{align}
$$

then the corresponding Noether charge is

$$\tag{7.7}
\begin{align}
J^{A}_{\mu}=\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\beta \bar{\psi}\gamma ^{\mu}\gamma _{5}\psi
\end{align}
$$

and finally the diffeomorphism symmetry

$$\tag{7.8}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}\mathcal{L}_{\xi}\psi+\mathcal{L}_{\xi}\bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\mathcal{L}_{\xi}V_{\mu}\frac{\delta}{\delta V_{\mu}}+\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}\right) \\
\mathcal{L}_{\xi}\psi & =\xi ^{\mu}\partial _{\mu}\psi+\frac{1}{4}\partial _{\mu}\xi _{\nu}(\gamma ^{\mu}\gamma ^{\nu}-\gamma ^{\nu}\gamma ^{\mu})\psi \\
\mathcal{L}_{\xi}\bar{\psi} & =\bar{\psi}\overleftarrow\partial _{\mu}\xi ^{\mu}-\frac{1}{4}\partial _{\mu}\xi _{\nu}\bar{\psi}(\gamma ^{\mu}\gamma ^{\nu}-\gamma ^{\nu}\gamma ^{\mu}) \\
\mathcal{L}_{\xi}(V,A)_{\mu} & =\xi ^{\nu}\partial _{\nu}(V,A)_{\mu}+\partial _{\mu}(V,A)_{\nu}\xi ^{\nu}
\end{align}
$$

where $\displaystyle{\xi ^{\mu}}$ is a Killing vector, i.e., it satisfies the Killing equation

$$\tag{7.9}
\begin{align}
\partial _{\mu}\xi _{\nu}+\partial _{\nu}\xi _{\mu}=0
\end{align}
$$

we can verify that under such Lie derivatives, we have

$$\tag{7.9}
\begin{align}
\mathcal{L}_{\xi}(\bar{\psi}\psi) & =\xi ^{\mu}\partial _{\mu}(\bar{\psi}\psi) \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\psi) & =\mathcal{L}_{\xi}\bar{\psi}\gamma ^{\mu}\psi+\bar{\psi}\gamma ^{\mu}\mathcal{L}_{\xi}\psi \\
 & =\bar{\psi}\overleftarrow{\partial} _{\nu}\xi ^{\nu}\gamma ^{\mu}\psi-\frac{1}{4}\partial _{\nu}\xi _{\rho}\bar{\psi}(\gamma ^{\nu}\gamma ^{\rho}-\gamma ^{\rho}\gamma ^{\nu})\gamma ^{\mu}\psi \\
 & +\bar{\psi}\gamma ^{\mu}\left( \xi ^{\nu}\partial _{\nu}\psi+\frac{1}{4}\partial _{\nu}\xi _{\rho}(\gamma ^{\nu}\gamma ^{\rho}-\gamma ^{\rho}\gamma ^{\nu})\psi \right) \\
 & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)+\frac{1}{4}\bar{\psi}(\gamma ^{\mu}\gamma ^{\nu}\gamma ^{\rho}-\gamma ^{\mu}\gamma ^{\rho}\gamma ^{\nu}-\gamma ^{\nu}\gamma ^{\rho}\gamma ^{\mu}+\gamma ^{\rho}\gamma ^{\nu}\gamma ^{\mu})\psi\partial _{\nu}\xi _{\rho} \\
 & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)+\bar{\psi}(\gamma ^{\rho}\eta ^{\mu \nu}-\gamma ^{\nu}\eta ^{\mu \rho})\psi \partial _{\nu}\xi _{\rho} \\
 & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)+\bar{\psi}\gamma ^{\rho}\psi \partial ^{\mu}\xi _{\rho}-\bar{\psi}\gamma ^{\nu}\psi \partial _{\nu}\xi ^{\mu}
\end{align}
$$


$$\tag{.}
\begin{align}
[\gamma ^{\mu},\gamma ^{\nu}\gamma ^{\rho}]+[\gamma ^{\rho}\gamma ^{\nu},\gamma ^{\mu}] & =
\end{align}
$$


act it on the action, we have

$$\tag{7.9}
\begin{align}

\end{align}
$$