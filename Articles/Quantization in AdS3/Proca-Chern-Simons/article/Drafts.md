# action

by defining

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}
\end{align}$$

then we can write

$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\frac{1}{2}\mathcal{D}_{\mu}^{~\nu}A_{\nu}D^{\mu \rho}A_{\rho}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}A_{\mu}\mathcal{D}^{\mu \nu}A_{\nu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\mathcal{D}_{\mu}^{~\nu}A_{\nu}\mathcal{D}^{\mu \rho}\delta A_{\rho}-\mu ^{2}A^{\mu}\delta A_{\mu}+\frac{k}{4\pi}\delta A_{\mu}\mathcal{D}^{\mu \nu}A_{\nu}+\frac{k}{4\pi}A_{\mu}\mathcal{D}^{\mu \nu}\delta A_{\nu}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\left( \mathcal{D}^{\rho \mu}\mathcal{D}_{\rho}^{~\nu}A_{\nu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\mathcal{D}^{\mu \nu}A_{\nu} \right)\delta A_{\mu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\varepsilon ^{\mu \nu \rho}\left(\mathcal{D}_{\nu}^{~\sigma}+\frac{k}{4\pi}\delta _{\nu}^{~\sigma}\right)A_{\sigma}\delta A_{\rho}
\end{align}$$

and then the symplectic form

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\varepsilon ^{\mu \nu \rho}\left( \mathcal{D}_{\nu}^{~\sigma}+\frac{k}{4\pi}\delta _{\nu}^{~\sigma} \right)\delta A_{\sigma}\wedge \delta A_{\rho}
\end{align}$$

we first consider the Noether charge defined in the Proca theore, which is the special case of our Proca-Chern-Simons theory with $k=0$. the Noether charge is defined as

# Noether charge

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\frac{1}{4}\xi ^{\mu}F_{\rho \sigma}F^{\rho \sigma}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\nu}(F^{\mu \nu}A_{\rho}\xi ^{\rho})+(\nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu})A_{\rho}\xi ^{\rho})
\end{align}$$

the first term in the last line is a total derivative by

$$\begin{align}
\tau _{\nu}\nabla _{\mu}S^{\mu \nu} & =D_{\alpha}(\sigma ^{\alpha}_{~\mu}\tau _{\nu}S^{\mu \nu})
\end{align}$$

and the second term vanishes by the eom. now consider the general case with  $\displaystyle{k\neq 0}$.

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\mathcal{L}_{\xi}A_{\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}-\frac{k}{4\pi}\xi _{\nu}g^{\mu \nu}\varepsilon ^{\alpha \beta \lambda}A_{\alpha}\nabla _{\beta}A_{\lambda}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho}\right)
\end{align}$$

# Noether theorem check

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( \mathcal{L}_{\xi}F^{\mu \nu}\delta A_{\nu}-\delta F^{\mu \nu}\mathcal{L}_{\xi}A_{\nu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\mathcal{L}_{\xi}A_{\nu}\delta A_{\rho} \right)
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\mathcal{L}_{\xi}F_{\mu \nu}\delta A^{\nu}-\delta F_{\mu \nu}\mathcal{L}_{\xi}A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\mathcal{L}_{\xi}A^{\nu}\delta A^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\right)
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\xi ^{\rho}\nabla _{\rho}F_{\mu \nu}\delta A^{\nu}+F_{\rho \nu}\nabla _{\mu}\xi ^{\rho}\delta A^{\nu}+F_{\mu \rho}\nabla _{\nu}\xi ^{\rho}\delta A^{\nu}-\delta F_{\mu \nu}\xi ^{\rho}\nabla _{\rho}A^{\nu}+\delta F_{\mu \nu}A^{\rho}\nabla _{\rho}\xi ^{\nu}\right) \\
 & +\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\xi ^{\lambda}\nabla _{\lambda}A^{\nu}\delta A^{\rho}-\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}A^{\lambda}\nabla _{\lambda}\xi ^{\nu}\delta A^{\rho}
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\rho}(\xi ^{\rho}F_{\mu \nu}\delta A^{\nu})-\nabla _{\rho}\xi ^{\rho}F_{\mu \nu}\delta A^{\nu}-\xi ^{\nu}F_{\mu \rho}\nabla _{\nu}\delta A^{\rho}) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(F_{\rho \nu}(\nabla _{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi _{\mu})\delta A^{\nu}- \nabla ^{\rho}(F_{\rho \nu}\xi _{\mu}\delta A^{\nu})+\left( \nabla ^{\rho}F_{\rho \nu}-\mu ^{2}A_{\nu}+\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\xi _{\mu}\delta A^{\nu}+\frac{1}{2}\xi _{\mu}\delta(F_{\nu \rho}F^{\nu \rho})+\frac{1}{2}\mu ^{2}\xi _{\mu}\delta(A_{\nu}A^{\nu})\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(F_{\mu \rho}( \nabla _{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi _{\nu})\delta A^{\nu}-\nabla ^{\rho}\left(F_{\mu \rho}\xi _{\nu}\delta A^{\nu}\right)-\left(\nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma}\right)\xi _{\nu}\delta A^{\nu}+F_{\mu \rho}\xi _{\nu}\nabla ^{\rho}\delta A^{\nu}-\mu ^{2}\xi _{\nu}A_{\mu}\delta A^{\nu} \right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(-\delta F_{\mu \nu}\xi ^{\rho}F_{\rho}^{~\nu}-\nabla ^{\nu}(\delta F_{\mu \nu}\xi ^{\rho}A_{\rho})+\delta F_{\mu \nu}A^{\rho}(\nabla _{\rho}\xi ^{\nu}+\nabla ^{\nu}\xi _{\rho})-\left( \nabla ^{\nu}\delta F_{\nu \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda} \right)A^{\rho}\xi _{\rho}-\mu ^{\mu}\delta A_{\mu}A^{\nu}\xi _{\nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( -\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma}\xi_{\mu}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma}\xi _{\nu}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda}A^{\rho}\xi _{\rho} \right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( \frac{k}{2\pi} \varepsilon _{\mu \nu \rho}\xi ^{\lambda}\nabla _{\lambda}A_{\nu}\delta A_{\rho}+\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}A_{\lambda}\nabla _{\nu}\xi ^{\lambda}\delta A_{\rho} \right)
\end{align}$$

$$\begin{align}
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(+\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\xi ^{\lambda}\nabla _{\lambda}A^{\nu}\delta A^{\rho}+\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}A^{\lambda}\nabla _{\lambda}\xi ^{\rho}\delta A^{\nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left( -\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma}\xi_{\mu}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma}\xi _{\nu}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda}A^{\rho}\xi _{\rho} \right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\nabla _{\lambda}(\xi ^{\lambda}A^{\nu}\delta A^{\rho})-\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\nabla _{\lambda}\xi ^{\lambda}A^{\nu}\delta A^{\rho}-\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}\xi ^{\lambda}A^{\nu}\nabla _{\lambda}\delta A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}A^{\lambda}(\nabla _{\lambda}\xi ^{\rho}+\nabla ^{\rho}\xi _{\lambda})\delta A^{\nu}-\frac{k}{2\pi}\varepsilon _{\mu \nu \rho}A^{\lambda}\nabla ^{\rho}\xi _{\lambda}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma}\xi _{\nu}\delta A^{\nu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda}A^{\rho}\xi _{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\left(-\frac{k}{4\pi}\xi _{\mu}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma}\delta A^{\nu}+\frac{k}{4\pi}\xi _{\mu}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\nu}\delta A^{\sigma}\right)
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\mathcal{L}_{\xi}\phi \delta \phi-\nabla _{\mu}\delta\phi \mathcal{L}_{\xi}\phi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}(\xi ^{\nu}\nabla _{\nu}\phi)\delta \phi-\nabla _{\mu}\delta \phi \xi ^{\nu}\nabla _{\nu}\phi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\xi ^{\nu}\nabla _{\nu}\phi \delta \phi+\xi ^{\nu}\nabla _{\mu}\nabla _{\nu}\phi \delta \phi-\nabla _{\mu}\delta \phi \xi ^{\nu}\nabla _{\nu}\phi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}((\nabla _{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi _{\mu})\nabla _{\nu}\phi \delta \phi-\nabla ^{\nu}\xi _{\mu}\nabla _{\nu}\phi \delta \phi+\nabla _{\nu}(\xi ^{\nu}\nabla _{\mu}\phi \delta \phi)-\nabla _{\nu}\xi ^{\nu}\nabla _{\mu}\phi \delta \phi-\xi ^{\nu}\nabla _{\mu}\phi \nabla _{\nu}\delta \phi-\nabla _{\mu}\delta \phi \xi ^{\nu}\nabla _{\nu}\phi) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}((\nabla _{\mu}\xi ^{\nu}+\nabla ^{\nu}\xi _{\mu})\nabla _{\nu}\phi \delta \phi-\nabla ^{\nu}(\xi _{\mu}\nabla _{\nu}\phi \delta \phi)+\xi _{\mu}\nabla ^{2}\phi \delta \phi+\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\delta \phi \\
  & +\nabla _{\nu}(\xi ^{\nu}\nabla _{\mu}\phi \delta \phi)-\nabla _{\nu}\xi ^{\nu}\nabla _{\mu}\phi \delta \phi-\xi ^{\nu}\nabla _{\mu}\phi \nabla _{\nu}\delta \phi-\nabla _{\mu}\delta \phi \xi ^{\nu}\nabla _{\nu}\phi)
\end{align}$$
