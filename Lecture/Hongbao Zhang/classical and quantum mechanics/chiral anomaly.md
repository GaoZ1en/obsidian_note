## ABJ anomaly

the action is

$$\tag{1.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left( \frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\bar{\psi}\gamma ^{\mu}\psi A_{\mu}-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \right)
\end{align}
$$

$$\tag{7.1}
\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\left( i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma ^{5})\psi\right)
\end{align}
$$

where $\displaystyle{\psi}$ and $\displaystyle{\bar{\psi}}$ are dynamical fields, and $\displaystyle{V_{\mu}}$ and $\displaystyle{A_{\mu}}$ are background fields. make a variation, we have

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi-\frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi\right. \\
 & \left.+\delta \bar{\psi}\gamma ^{\mu}\psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\delta \psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\psi \delta A_{\mu}-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\delta\psi-F^{\mu \nu}\partial _{\mu}\delta A_{\nu} \right) \\
 & =\int \mathrm{d}^{4}x(\delta \bar{\psi}E_{\psi}+E_{\bar{\psi}}\delta \psi+E_{A}^{\mu}\delta A_{\mu})+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

$$\tag{.}
\begin{align}
E_{\psi} & =i\gamma ^{\mu}\partial _{\mu}\psi+\gamma ^{\mu}A_{\mu}\psi \\
E_{\bar{\psi}} & =-i\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}+\bar{\psi}\gamma ^{\mu}A_{\mu} \\
E_{A}^{\mu} & =\bar{\psi}\gamma ^{\mu}\psi+\partial _{\nu}F^{\nu \mu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\delta \psi+F^{\mu \nu}\delta A_{\nu} \right)
\end{align}
$$

$$
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(i\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi+\delta \bar{\psi}\gamma ^{\mu}\psi V_{\mu}+\delta \bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi A_{\mu} \\
 & +\bar{\psi}\gamma ^{\mu}V_{\mu}\delta \psi+\bar{\psi}\gamma ^{\mu}\gamma ^{5}A_{\mu}\delta \psi+\bar{\psi}\gamma ^{\mu}\psi \delta V_{\mu}+\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi \delta A_{\mu})
\end{align}
$$

$$\tag{7.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(\delta \bar{\psi}E_{\psi}+E_{\bar{\psi}}\delta \psi)+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E_{\psi} & =i\gamma ^{\mu}\partial _{\mu}\psi+\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma ^{5})\psi \\
E_{\bar{\psi}} & =-i\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}+\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma ^{5}) \\
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
X^{A}_{\beta}=\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\beta \gamma ^{5}\psi+i\beta \bar{\psi}\gamma ^{5}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\partial _{\mu}\beta   \frac{\delta}{\delta A_{\mu}}\right)
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
J^{A}_{\mu}=\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\beta \bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi
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
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\psi) & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)-\bar{\psi}\gamma ^{\nu}\psi \partial _{\nu}\xi ^{\mu} \\
\mathcal{L}_{\xi}(\bar{\psi}\Sigma ^{\mu \nu}\psi) & =\xi ^{\rho}\partial _{\rho}(\bar{\psi}\Sigma ^{\mu \nu}\psi)-\bar{\psi}\Sigma ^{\rho \nu}\psi \partial _{\rho}\xi ^{\mu}-\bar{\psi}\Sigma ^{\mu \rho}\psi \partial _{\rho}\xi ^{\nu} \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi) & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi)-\bar{\psi}\gamma ^{\nu}\gamma ^{5}\psi \partial _{\nu}\xi ^{\mu} \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{5}\psi) & =\xi ^{\mu}\partial _{\mu}(\bar{\psi}\gamma ^{5}\psi)
\end{align}
$$

act it on the action, we have

$$\tag{7.9}
\begin{align}
X_{\xi}\cdot \delta S & =\int _{M} \mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}g_{\mu \nu}(i\bar{\psi}\gamma ^{\rho}\partial _{\rho}\psi+\bar{\psi}\gamma ^{\rho}\psi V_{\rho}+\bar{\psi}\gamma ^{\rho}\gamma ^{5}\psi A_{\rho})
\end{align}
$$

and the corresponding Noether charge

$$\tag{7.10}
\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( -i\bar{\psi}\gamma ^{\mu}\left( \xi ^{\rho}\partial _{\rho}\psi+\frac{1}{4}\partial _{\nu}\xi _{\rho}(\gamma ^{\nu}\gamma ^{\rho}-\gamma ^{\rho}\gamma ^{\nu})\psi \right) \right) \\
 & -\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}g_{\mu \nu}(i\bar{\psi}\gamma ^{\rho}\partial _{\rho}\psi+\bar{\psi}\gamma ^{\rho}\psi V_{\rho}+\bar{\psi}\gamma ^{\rho}\gamma ^{5}\psi A_{\rho}) \\
 & =
\end{align}
$$

$$\tag{7.1}
\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\left( i\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\bar{\psi}\gamma ^{\mu}(V_{\mu}+A_{\mu}\gamma ^{5})\psi\right) \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(-i\bar{\psi}\gamma ^{\mu}\delta \psi)
\end{align}
$$