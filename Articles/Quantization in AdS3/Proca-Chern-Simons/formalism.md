the action is

$$\begin{align}
S & =-\frac{1}{4}\int \mathrm{d}^{3}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}\int \mathrm{d}^{3}x\sqrt{ -g }A_{\mu}A^{\mu}+\frac{k}{4\pi}\int \mathrm{d}^{3}x\sqrt{ -g }\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}
\end{align}$$

and the metric is

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{3}x\sqrt{ -g }E^{\mu}\delta A_{\mu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
E^{\mu} & =\nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \right)
\end{align}$$

and the symplectic form is

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( \delta F^{\mu \nu}\wedge \delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\nu}\wedge \delta A_{\rho} \right)
\end{align}$$

define the operator

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}
\end{align}$$

then the eom can be decomposed as

$$\begin{align}
(\mathcal{D}-\mu _{-})(\mathcal{D}+\mu _{+})A & =0 \\
\bar{\mu} & \equiv \sqrt{ \mu ^{2}+\frac{k^{2}}{16\pi ^{2}} } \\
\mu _{\pm} & =\bar{\mu}\pm\frac{k}{4\pi}
\end{align}$$

thus the solution space can be decomposed into two sectors, each sector satisfies the first order equation

$$\begin{align}
(\mathcal{D}\pm\mu _{\pm})A_{\pm} & =0
\end{align}$$

which corresponds to the $+$ branch with mass $\displaystyle{\mu _{+}}$ and the $-$ branch with mass $\displaystyle{\mu _{-}}$ respectively. the eigenvalue of the Casimir operator is given by

$$\begin{align}
\mathcal{C}A_{+}^{\mu} & =\left( -\frac{1}{4}\mu _{+}^{2}+\frac{1}{2}\mu _{+} \right)A_{+}^{\mu} \\
\mathcal{\bar{C}}A_{+}^{\mu} & =\left( -\frac{1}{4}\mu _{+}^{2}-\frac{1}{2}\mu _{+} \right)A_{+}^{\mu}
\end{align}$$

and

$$\begin{align}
\mathcal{C}A_{-}^{\mu} & =\left( -\frac{1}{4}\mu _{-}^{2}-\frac{1}{2}\mu _{-} \right)A_{-}^{\mu} \\
\mathcal{\bar{C}}A_{-}^{\mu} & =\left( -\frac{1}{4}\mu _{-}^{2}+\frac{1}{2}\mu _{-} \right)A_{-}^{\mu}
\end{align}$$

respectively. thus we can identify the conformal dimensions as (here we drop the cases with negative conformal dimensions, which are non-unitary)

$$\begin{align}
(h_{+},\bar{h}_{+}) & =\left(\frac{\mu _{+}}{2},1+\frac{\mu _{+}}{2}\right) \\
(h_{-},\bar{h}_{-}) & =\left(1+\frac{\mu _{-}}{2},\frac{\mu _{-}}{2}\right)
\end{align}$$

the positive frequency mode solutions are given by

$$\begin{align}
f_{+,n,\bar{n}}^{\mu} & = \sqrt{ \frac{1}{n!\bar{n}!(\mu _{+})_{n}(\mu _{+}+2)_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f^{\mu}_{+,0,0} \\
f_{+,0,0}^{\mu} & =\sqrt{ \frac{\mu _{+}+1}{\pi \bar{\mu}} }\frac{e^{-i(\mu _{+}+2)t}}{(1+r^{2})^{1+\mu _{+}/2}}\xi _{1}^{\mu}
\end{align}$$

and

$$\begin{align}
f_{-,n,\bar{n}}^{\mu} & = \sqrt{ \frac{1}{n!\bar{n}!(\mu _{-}+2)_{n}(\mu _{-})_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f^{\mu}_{-,0,0} \\
f_{-,0,0}^{\mu} & =\sqrt{ \frac{\mu _{-}+1}{\pi \bar{\mu}} }\frac{e^{-i(\mu _{-}+2)t}}{(1+r^{2})^{1+\mu _{-}/2}}\bar{\xi}_{1}^{\mu}
\end{align}$$

here the normalization constant determined by the symplectic form

$$\begin{align}
\omega[f_{+,n_{1},\bar{n}_{1}},f^{*}_{+,n_{2},\bar{n}_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}} \\
\omega[f_{-,n_{1},\bar{n}_{1}},f^{*}_{-,n_{2},\bar{n}_{2}}] & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

when $\displaystyle{k\to 0}$, we return to the Proca theory with $\displaystyle{\mu _{+}=\mu _{-}=\mu}$. take the following mode expansion

$$\begin{align}
A^{\mu} & =\sum _{n,\bar{n}=0}^{\infty}\left(a_{+,n,\bar{n}}f^{\mu}_{+,n,\bar{n}}+a^{\dagger}_{+,n,\bar{n}}f^{*\mu}_{+,n,\bar{n}}+a_{-,n,\bar{n}}f^{\mu}_{-,n,\bar{n}}+a^{\dagger}_{-,n,\bar{n}}f^{*\mu}_{-,n,\bar{n}}\right)
\end{align}$$

and promote $\displaystyle{a_{\pm,n,\bar{n}}}$ and $\displaystyle{a_{\pm,n,\bar{n}}^{\dagger}}$ to annihilation and creation operators, we can define the vacuum state $\displaystyle{\ket{\Omega}}$ as

$$\begin{align}
a_{\pm,n,\bar{n}}\ket{\Omega} & =0, \forall n,\bar{n}
\end{align}$$
