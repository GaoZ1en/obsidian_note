## ABJ anomaly

the action is

$$\tag{1.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left( \frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\bar{\psi}\gamma ^{\mu}\psi A_{\mu}-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \right)
\end{align}
$$

where $\displaystyle{\psi}$ and $\displaystyle{\bar{\psi}}$ are dynamical fields, and $\displaystyle{V_{\mu}}$ and $\displaystyle{A_{\mu}}$ are background fields. make a variation, we have

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M} \mathrm{d}^{4}x\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi-\frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\delta\psi\right. \\
 & \left.+\delta \bar{\psi}\gamma ^{\mu}\psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\delta \psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\psi \delta A_{\mu}-F^{\mu \nu}\partial _{\mu}\delta A_{\nu} \right) \\
 & =\int _{M} \mathrm{d}^{4}x(\delta \bar{\psi}E_{\psi}+E_{\bar{\psi}}\delta \psi+E_{A}^{\mu}\delta A_{\mu})+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

$$\tag{1.3}
\begin{align}
E_{\psi} & =i\gamma ^{\mu}\partial _{\mu}\psi+\gamma ^{\mu}A_{\mu}\psi \\
E_{\bar{\psi}} & =-i\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}+\bar{\psi}\gamma ^{\mu}A_{\mu} \\
E_{A}^{\mu} & =\bar{\psi}\gamma ^{\mu}\psi+\partial _{\nu}F^{\nu \mu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\delta \psi+F^{\mu \nu}\delta A_{\nu} \right)
\end{align}
$$

then we have the symplectic form

$$\tag{1.4}
\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}
$$

we notice that the symplectic form does not have terms involving $\displaystyle{\psi}$ and $\displaystyle{\bar{\psi}}$. consider the vector $\displaystyle{U(1)_{V}}$ symmetry

$$\tag{1.5}
\begin{align}
X^{V}_{\alpha}=\int _{M} \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\alpha \psi-i\alpha \bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\partial _{\mu}\alpha   \frac{\delta}{\delta A_{\mu}}\right)
\end{align}
$$

act it on the action, we have

$$\tag{1.6}
\begin{align}
X^{V}_{\alpha}\cdot \delta S & =\int _{M}\mathrm{d}^{4}x\left(\frac{1}{2}\alpha \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi-\frac{1}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}(\alpha \psi)-\frac{1}{2}(\alpha \bar{\psi})\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\frac{1}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\alpha \psi\right. \\
 & \left.-i\alpha \bar{\psi}\gamma ^{\mu}\psi A_{\mu}+i\alpha \bar{\psi}\gamma ^{\mu}\psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\psi \partial _{\mu}\alpha-F^{\mu \nu}\partial _{\mu}\partial _{\nu}\alpha\right) \\
 & =0
\end{align}
$$


the corresponding Noether charge is

$$\tag{1.7}
\begin{align}
J^{V}_{\alpha} & =X_{\alpha}\cdot \theta-\alpha _{\alpha} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\alpha\left(\bar{\psi}\gamma ^{\mu}\psi -\partial _{\nu}F^{\mu \nu}\right) \\
 & \approx \int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\alpha \bar{\psi}\gamma ^{\mu}\psi
\end{align}
$$

then consider the axial $\displaystyle{U(1)_{A}}$ symmetry

$$\tag{1.8}
\begin{align}
X^{A}_{\beta}=\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}i\beta \gamma ^{5}\psi+i\beta \bar{\psi}\gamma ^{5}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\gamma ^{5}\partial _{\mu}\beta   \frac{\delta}{\delta A_{\mu}}\right)
\end{align}
$$

act it on the action, we have

$$\tag{1.9}
\begin{align}
X^{A}_{\beta}\cdot \delta S & =\int _{M}\mathrm{d}^{4}x\left( -\frac{1}{2}\bar{\psi}\gamma ^{5}\gamma ^{\mu}\partial _{\mu}\psi-\frac{1}{2}\bar{\psi}\gamma ^{\mu}\gamma ^{5}\partial _{\mu}(\beta \psi)+\frac{1}{2}(\beta \bar{\psi})\gamma ^{5}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\frac{1}{2}\bar{\psi}\gamma ^{\mu}\gamma ^{5}\overleftarrow{\partial _{\mu}}\beta \psi \right. \\
 & \left.+i\bar{\psi}\gamma ^{5}\gamma ^{\mu}\psi A_{\mu}+i\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi \partial_{\mu}\beta-\gamma ^{5}F^{\mu \nu}\partial _{\mu}\partial _{\nu}\beta\right) \\
 & =0
\end{align}
$$

here we use $\displaystyle{\left\{\gamma ^{\mu},\gamma ^{5}\right\}=0}$

then the corresponding Noether charge is

$$\tag{1.10}
\begin{align}
J^{A}_{\mu} & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( -\frac{1}{2}\beta\bar{\psi}\gamma ^{5}\gamma ^{\mu}\psi+\frac{1}{2}\beta\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi+\gamma ^{5}F^{\mu \nu}\partial _{\nu}\beta\right) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\beta(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi-\partial _{\nu}F^{\mu \nu}) \\
 & \approx \int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\beta \bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi
\end{align}
$$



and finally the diffeomorphism symmetry

$$\tag{1.11}
\begin{align}
X_{\xi} & =\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}\mathcal{L}_{\xi}\psi+\mathcal{L}_{\xi}\bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\mathcal{L}_{\xi}V_{\mu}\frac{\delta}{\delta V_{\mu}}+\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}\right) \\
\mathcal{L}_{\xi}\psi & =\xi ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\Sigma ^{\mu \nu}\partial _{\mu}\xi _{\nu}\psi \\
\mathcal{L}_{\xi}\bar{\psi} & =\bar{\psi}\overleftarrow\partial _{\mu}\xi ^{\mu}+\frac{i}{2}\Sigma ^{\mu \nu}\partial _{\mu}\xi _{\nu}\psi \\
\mathcal{L}_{\xi}A_{\mu} & =\xi ^{\nu}\partial _{\nu}A_{\mu}+\partial _{\mu}A_{\nu}\xi ^{\nu}
\end{align}
$$

where $\displaystyle{\xi ^{\mu}}$ is a Killing vector, i.e., it satisfies the Killing equation

$$\tag{1.12}
\begin{align}
\partial _{\mu}\xi _{\nu}+\partial _{\nu}\xi _{\mu}=0
\end{align}
$$

we can verify that under such Lie derivatives, we have

$$\tag{1.13}
\begin{align}
\mathcal{L}_{\xi}(\bar{\psi}\psi) & =\xi ^{\mu}\partial _{\mu}(\bar{\psi}\psi) \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\psi) & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)-\bar{\psi}\gamma ^{\nu}\psi \partial _{\nu}\xi ^{\mu} \\
\mathcal{L}_{\xi}(\bar{\psi}\Sigma ^{\mu \nu}\psi) & =\xi ^{\rho}\partial _{\rho}(\bar{\psi}\Sigma ^{\mu \nu}\psi)-\bar{\psi}\Sigma ^{\rho \nu}\psi \partial _{\rho}\xi ^{\mu}-\bar{\psi}\Sigma ^{\mu \rho}\psi \partial _{\rho}\xi ^{\nu} \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi) & =\xi ^{\nu}\partial _{\nu}(\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi)-\bar{\psi}\gamma ^{\nu}\gamma ^{5}\psi \partial _{\nu}\xi ^{\mu} \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{5}\psi) & =\xi ^{\mu}\partial _{\mu}(\bar{\psi}\gamma ^{5}\psi)
\end{align}
$$

thus the Lagrangian is covariant. act it on the action, we have

$$\tag{1.14}
\begin{align}
X_{\xi}\cdot\delta S & =\int _{M}\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =-\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\eta _{\mu \nu}\left( \frac{i}{2}\bar{\psi}\gamma ^{\rho}\partial _{\rho}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\bar{\psi}\gamma ^{\rho}\psi A_{\rho}-\frac{1}{4}F_{\rho \sigma}F^{\rho \sigma} \right)
\end{align}
$$

and the corresponding Noether charge

$$\tag{1.15}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \delta \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{i}{2}\left( \bar{\psi}\overleftarrow{\partial _{\rho}}\xi ^{\rho}+\frac{i}{2}\partial _{\rho}\xi _{\sigma}\bar{\psi}\Sigma ^{\rho \sigma} \right)\gamma ^{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\left( \xi ^{\rho}\partial _{\rho}\psi-\frac{i}{2}\Sigma ^{\rho \sigma}\partial _{\rho}\xi _{\sigma}\psi \right) \right. \\
 & +F^{\mu \nu}(\xi ^{\rho}\partial _{\rho}A_{\nu}+\partial _{\nu}A_{\rho}\xi ^{\rho})+\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\eta _{\mu \nu}\left( \frac{i}{2}\bar{\psi}\gamma ^{\rho}\partial _{\rho}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\rho}\overleftarrow{\partial _{\rho}}\psi+\bar{\psi}\gamma ^{\rho}\psi A_{\rho}-\frac{1}{4}F_{\rho \sigma}F^{\rho \sigma} \right) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(- \frac{i}{2}\eta ^{\nu [\rho}\bar{\psi}\gamma ^{\mu]}\overleftrightarrow{\partial _{\rho}}\psi+F^{\mu \rho}F_{\rho}^{~\nu}-\frac{1}{4}\eta ^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma} \right)
\end{align}
$$

where $\displaystyle{\bar{\psi}\overleftrightarrow{\partial _{\rho}}\psi=\bar{\psi}\partial _{\rho}\psi-\bar{\psi}\overleftarrow{\partial _{\rho}}\psi}$

$$\tag{1.15}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \delta \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{i}{2}\left( +\frac{i}{2}\partial _{\rho}\xi _{\sigma}\bar{\psi}\Sigma ^{\rho \sigma} \right)\gamma ^{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\left( -\frac{i}{2}\Sigma ^{\rho \sigma}\partial _{\rho}\xi _{\sigma}\psi \right) \right. \\
  & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( -\frac{1}{4}\partial _{\rho}\xi _{\sigma}\bar{\psi}\left\{\Sigma ^{\rho \sigma},\gamma ^{\mu}\right\}\psi\right)
 
\end{align}
$$


$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi+\frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\delta \psi-\frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\delta \psi\right. \\
 & \left.+\delta \bar{\psi}\gamma ^{\mu}\psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\delta \psi A_{\mu}+\bar{\psi}\gamma ^{\mu}\psi \delta A_{\mu}-F^{\mu \nu}\partial _{\mu}\delta A_{\nu} \right) \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{i}{2}\delta \bar{\psi}\gamma ^{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\delta \psi+F^{\mu \nu}\delta A_{\nu} \right) \\
S & =\int _{M}\mathrm{d}^{4}x\left( \frac{i}{2}\bar{\psi}\gamma ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\partial _{\mu}}\psi+\bar{\psi}\gamma ^{\mu}\psi A_{\mu}-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \right) \\
X_{\xi} & =\int \mathrm{d}^{4}x\left(\overleftarrow{\frac{\delta}{\delta \psi}}\mathcal{L}_{\xi}\psi+\mathcal{L}_{\xi}\bar{\psi}\overrightarrow{\frac{\delta}{\delta \bar{\psi}}}+\mathcal{L}_{\xi}V_{\mu}\frac{\delta}{\delta V_{\mu}}+\mathcal{L}_{\xi}A_{\mu} \frac{\delta}{\delta A_{\mu}}\right) \\
\mathcal{L}_{\xi}\psi & =\xi ^{\mu}\partial _{\mu}\psi-\frac{i}{2}\Sigma ^{\mu \nu}\partial _{\mu}\xi _{\nu}\psi \\
\mathcal{L}_{\xi}\bar{\psi} & =\bar{\psi}\overleftarrow{\partial _{\mu}}\xi ^{\mu}+\frac{i}{2}\partial _{\mu}\xi _{\nu}\bar{\psi}\Sigma ^{\mu \nu} \\
\mathcal{L}_{\xi}A_{\mu} & =\xi ^{\nu}\partial _{\nu}A_{\mu}+\partial _{\mu}A_{\nu}\xi ^{\nu}
\end{align}
$$


$$\tag{.}
\begin{align}
\left\{AB,C\right\} & = A\left\{B,C\right\}+\left\{A,C\right\}B  \\
\left\{\Sigma ^{\rho \sigma},\gamma ^{\mu}\right\} & =
\end{align}
$$