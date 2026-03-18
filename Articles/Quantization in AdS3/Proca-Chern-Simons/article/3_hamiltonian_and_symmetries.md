# 3. Reformulating the model to a Hamiltonian system

In this section, by making use of the covariant phase space formalism introduced in Section 1, we reformulate our model into a Hamiltonian system. And we also provide a general discussion for the Noether's theorem associated with the Killing symmetries. As explicitly verified in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_a|Appendix A]], the near boundary contributions at spatial infinity $\displaystyle{\Gamma}$ vanish due to our asymptotic boundary conditions.

## 3.1 Reformulating the model to a Hamiltonian system

We now apply our model to the covariant phase space formalism.

Following the prescription, we first take the variation of the action $S$ with respect to the dynamical field $A_\mu$:

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A_{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right)
\end{align}$$

Here, $\displaystyle{\sigma _{ab}}$ is the induced metric of the constant $t$ Cauchy surfaces $\Sigma_{f,i}$ with the expression

$$\begin{align}
\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

$\displaystyle{\tau ^{\mu}}$ is the future-pointing unit normal vector orthogonal to the constant $t$ Cauchy surfaces with the expression

$$\begin{align}
\tau ^{\mu} & =\frac{1}{1+r^{2}}\delta _{0}^{\mu}
\end{align}$$

The near boundary region's contributions to the integrals over $M, \Sigma_{f,i}$ in the final expression are finite. In deriving the variation of the action, we have used that the asymptotic boundary term from the integration by parts vanishes (as explicitly verified in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_a|Appendix A]]).

From the variation of the action, we read out the equations of motion $E^\mu = 0$ as

$$\begin{align}
E^{\mu} & \equiv \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}=0
\end{align}$$

By taking a divergence of the EOM, we obtain the Lorentz transverse constraint:

$$\begin{align}
-\mu ^{2}\nabla _{\mu}A^{\mu} & =0 & \implies &  & \nabla _{\mu}A^{\mu} & =0
\end{align}$$

And we read out the symplectic potential as

$$\begin{align}
\theta[A,\delta A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \right)
\end{align}$$

Here, $\Sigma$ is a constant $t$ Cauchy surface. And $\theta$ is a one-form field of the set of configurations.

Then, we define the pre-phase space $\mathcal{\widetilde{P}}$ as the set of solutions of the equations of motion along with the asymptotic boundary conditions. By taking an exterior derivative of the symplectic potential in the set of configurations, we get the symplectic form

$$\begin{align}
\Omega[\delta _{1} A,\delta _{2} A] & =\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta _{1} F^{\mu \nu}\delta _{2} A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta _{1}A_{\nu}\delta _{2}A_{\rho}\right)
\end{align}$$

which is a two-form field of the set of configurations. And, by taking a pullback of the symplectic form from the set of configurations to the pre-phase space $\mathcal{\widetilde{P}}$, we get the symplectic form $\Omega|_{\mathcal{\widetilde{P}}}$ of the pre-phase space $\mathcal{\widetilde{P}}$.

So far, we have reformulated our model to a Hamiltonian system, which is specified by the pre-phase space $\mathcal{\widetilde{P}}$ and the symplectic form $\Omega|_{\mathcal{\widetilde{P}}}$.

We now point out more structures in the Hamiltonian system, which arise from that our model is a free theory. Specifically, we view the pre-phase space $\mathcal{\widetilde{P}}$ as a linear space. We construct an isomorphism between the pre-phase space $\mathcal{\widetilde{P}}$ and the tangent space at the individual point of the pre-phase space $\mathcal{\widetilde{P}}$ as the following: Given a solution $\displaystyle{A_{i}^{\mu}}$ of the equations of motion which is a point in the pre-phase space $\displaystyle{\mathcal{\widetilde{P}}}$, we construct the corresponding vector in the tangent space at the individual point of the pre-phase space $\displaystyle{\mathcal{\widetilde{P}}}$ as

$$\begin{align}
X_{A_{i}} & =\int \mathrm{d}^{3}xA_{i}^{\mu}(x) \frac{\delta}{\delta A^{\mu}(x)}
\end{align}$$

We also construct a two-form $\Omega[\cdot, \cdot]|_{\mathcal{\widetilde{P}}}$ of the pre-phase space $\mathcal{\widetilde{P}}$ as

$$\begin{align}
\Omega[A_{1},A_{2}] & =X_{A_{2}}\cdot X_{A_{1}}\cdot \Omega|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}(A_{1,\nu}A_{2,\rho}-A_{2,\nu}A_{1,\rho})\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}A_{1,\nu}A_{2,\rho}\right)
\end{align}$$

Here, the two-form $\Omega[\cdot, \cdot]|_{\mathcal{\widetilde{P}}}$ contracts with the point of the pre-phase space $\mathcal{\widetilde{P}}$ that is already viewed as a linear space. This bilinear form yields finite physical quantities entirely independent of the choice of Cauchy surface $\Sigma$. In anticipation of forming a quantum Hilbert space, we will later utilize $i \Omega[A_1^*, A_2]$ to dictate the natural Hermitian inner product of the theory.

## 3.2 The Noether's theorem associated with the Killing symmetries

For the application below, we now provide a general discussion for the Noether's theorem associated with the Killing symmetries.

We first represent the Killing symmetries. Specifically, we represent a Killing symmetry as a vector field in the set of configurations with the following expression:

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\delta _{\xi}A^{\mu} \frac{\delta}{\delta A^{\mu}}
\end{align}$$

Here, $\delta _{\xi}A^{\mu}$ is generated by the Lie derivative:

$$\begin{align}
\delta _{\xi}A^{\mu} & =\mathcal{L}_\xi A^{\mu} \equiv \xi^\nu \nabla_\nu A^\mu - A^\nu \nabla_\nu \xi^\mu
\end{align}$$

And $\displaystyle{\xi ^{\mu}}$ is a Killing field that satisfies the Killing equation

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}$$

and the asymptotic behaviors

$$\begin{align}
\xi ^{t} & =\mathcal{O}(r^{0}) \\
\xi ^{r} & =\mathcal{O}(r) \\
\xi ^{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

We now show that the Killing vectors $X_{\xi}$ generate symmetries in the sense of Noether's theorem. We first show that the Killing symmetries preserve the asymptotic boundary conditions of the fields as

$$\begin{align}
X_{\xi}\cdot \delta A^{t} & =o(r^{-2}) \\
X_{\xi}\cdot \delta A^{r} & =o(r^{-1}) \\
X_{\xi}\cdot \delta A^{\phi} & =o(r^{-2})
\end{align}$$

We then act the Killing symmetries $\displaystyle{X_{\xi}}$ to the action. In more detail, we first act the Killing symmetries $\displaystyle{X_{\xi}}$ to $\displaystyle{A^{\mu}, A_{\mu},F_{\mu \nu},F^{\mu \nu}}$ as

$$\begin{align}
X_{\xi}\cdot \delta A^{\mu} & =\mathcal{L}_{\xi}A^{\mu} \\
X_{\xi}\cdot \delta A_{\mu} & =g_{\mu \nu}X_{\xi}\cdot \delta A^{\nu} \\
 & =g_{\mu \nu}\left( \xi ^{\rho}\nabla _{\rho}A^{\nu}-A^{\rho}\nabla _{\rho}\xi ^{\nu} \right) \\
 & =\xi ^{\rho}\nabla _{\rho}A_{\mu}+A_{\rho}\nabla _{\mu}\xi ^{\rho}-A^{\rho}\left(\nabla _{\rho}\xi _{\mu}+\nabla _{\mu}\xi _{\rho}\right) \\
 & =\mathcal{L}_{\xi}A_{\mu} \\
X_{\xi}\cdot \delta F_{\mu \nu} & =\nabla _{\mu}X_{\xi}\cdot \delta A_{\nu}-\nabla _{\nu}X_{\xi}\cdot \delta A_{\mu} \\
 & =\nabla _{\mu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\nabla _{\nu}(\xi ^{\rho}\nabla _{\rho}A_{\mu}+A_{\rho}\nabla _{\mu}\xi ^{\rho}) \\
 & =\xi ^{\rho}\nabla _{\rho}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})+\nabla _{\mu}\xi ^{\rho}(\nabla _{\rho}A_{\nu}-\nabla _{\nu}A_{\rho})+\nabla _{\nu}\xi ^{\rho}(\nabla _{\mu}A_{\rho}-\nabla _{\rho}A_{\mu}) \\
 & +\xi ^{\rho}[\nabla _{\mu},\nabla _{\rho}]A_{\nu}-\xi ^{\rho}[\nabla _{\nu},\nabla _{\rho}]A_{\mu}+A_{\rho}[\nabla _{\mu},\nabla _{\nu}]\xi ^{\rho} \\
 & =\xi ^{\rho}\nabla _{\rho}F_{\mu \nu}+\nabla _{\mu}\xi ^{\rho}F_{\rho \nu}+\nabla _{\nu}\xi ^{\rho}F_{\mu \rho}+\xi ^{\rho}R_{\mu \rho \nu \sigma}A^{\sigma}-\xi ^{\rho}R_{\nu \rho \mu \sigma}A^{\sigma}+A^{\rho}R_{\mu \nu \rho \sigma}\xi ^{\sigma} \\
 & =\mathcal{L}_{\xi}F_{\mu \nu} \\
X_{\xi}\cdot \delta F^{\mu \nu} & =g^{\mu \rho}g^{\nu \sigma}X_{\xi}\cdot \delta F_{\rho \sigma} \\
 & =g^{\mu \rho}g^{\nu \sigma}(\xi ^{\lambda}\nabla _{\lambda}F_{\rho \sigma}+\nabla _{\rho}\xi ^{\lambda}F_{\lambda \sigma}+\nabla _{\sigma}\xi ^{\lambda}F_{\rho \lambda}) \\
 & =\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}-F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}-F^{\mu \rho}\nabla _{\rho}\xi ^{\nu}+F_{\rho}^{~\nu}(\nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu})+F^{\mu}_{~\rho}(\nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu}) \\
 & =\mathcal{L}_{\xi}F^{\mu \nu}
\end{align}$$

Thus, we obtain the transformation of the action $S$ under the Killing symmetries $\displaystyle{X_{\xi}}$ as

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\xi ^{\rho}\nabla _{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}e^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\rho}\left(\xi ^{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}e^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)\right) \\
 & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

Here, near boundary contributions at spatial infinity $\displaystyle{\Gamma}$ are finite, and the term supported on $\displaystyle{\Gamma}$ also vanishes due to the asymptotic behaviors of $\displaystyle{\xi ^{\mu}}$ and $\displaystyle{A^{\mu}}$. We read out the expression of the corresponding $\displaystyle{\alpha _{\xi}}$ as


$$\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

Following the covariant phase space formalism presented in Section 1, we compute the expression of the Noether charge $\displaystyle{H_{\xi}}$ associated with the Killing vector $\xi$ evaluated at the pre-phase space $\mathcal{\widetilde{P}}$ as

$$\begin{align}
H_{\xi}|_{\mathcal{\widetilde{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\mathcal{\widetilde{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & +\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left[ \nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho} \right] \right|_{\widetilde{\mathcal{P}}}\\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left(\sigma ^{\alpha}_{\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma}\right)\right|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma } \frac{k}{4\pi}D_{\alpha}\left(\sigma ^{\alpha}_{\mu}\tau _{\nu}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right)
\end{align}$$

Here, $\displaystyle{D_{\alpha}}$ is the covariant derivative compatible with the induced metric $\displaystyle{\sigma _{ab}}$ on $\Sigma$. We have used the following identity for an anti-symmetric tensor $\displaystyle{S^{\mu \nu}}$ to convert the second term in the last line to a total derivative:

$$\begin{align}
\tau _{\mu}\nabla _{\nu}S^{\mu \nu} & =-D_{\alpha}(\sigma ^{\alpha}_{\mu}\tau _{\nu}S^{\mu \nu})
\end{align}$$

For simplicity, we will drop the subscript $\displaystyle{\mathcal{\widetilde{P}}}$ in the following discussion, and all the Noether charges are evaluated on the pre-phase space $\displaystyle{\mathcal{\widetilde{P}}}$. We now provide a cross check for the expression of the Noether charge $\displaystyle{H_{\xi}}$ making use of the Noether's theorem statements. Specifically, we show that the Killing symmetry $\displaystyle{X_{\xi}}$, the symplectic form $\displaystyle{\Omega}$, and the Noether charge together satisfy the Hamiltonian equation:

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left((X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}-(X_{\xi}\cdot \delta A_{\nu})\delta F^{\mu \nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu} \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}[(X_{\xi}\cdot \delta A_{\nu})\delta A_{\rho}-(X_{\xi}\cdot \delta A_{\rho})\delta A_{\nu}] \\
 & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(\delta F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \rho}\delta F_{\nu}^{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\delta F^{\rho \sigma}+\mu ^{2}\delta A^{\mu}A^{\nu}+\mu ^{2}A^{\mu}\delta A^{\nu}-\mu ^{2}g^{\mu \nu}A_{\rho}\delta A^{\rho}\right. \\
 & +\tau _{\mu}\nabla _{\nu}\left(\delta F^{\mu \nu}\xi ^{\rho}A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+F^{\nu \rho}\xi ^{\mu}\delta A^{\rho}-F^{\mu \rho}\xi ^{\nu}\delta A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right) \\
 & +\tau ^{\mu}\nabla _{\rho}\xi ^{\rho}F_{\mu \nu}\delta A^{\nu}-\tau _{\mu}F_{\rho \nu}(\nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu})\delta A^{\nu}-\tau ^{\mu}F_{\mu \rho}(\nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu})\delta A_{\nu}+\tau ^{\mu}\delta F_{\mu \nu}A_{\rho}(\nabla ^{\rho}\xi ^{\nu}+\nabla ^{\nu}\xi _{\rho}) \\
 & -\tau ^{\mu}\xi _{\mu}\left( \nabla ^{\rho}F_{\rho \nu}-\mu ^{2}A_{\nu}+\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu}+\tau ^{\mu}\xi _{\nu}\left( \nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu} \\
 & \left.\left. +\tau ^{\mu}\left( \nabla ^{\nu}\delta F_{\nu \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda} \right)A^{\rho}\xi _{\rho} \right)\right|_{\widetilde{\mathcal{P}}} \\
 & =-\left.\delta \left( \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\sigma}\right)-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}\left(\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right) \right)\right|_{\widetilde{\mathcal{P}}} \\
 & =-\delta H_{\xi}
\end{align}$$

Here, in deriving the above relation, we have used the following cyclic identity of the Levi-Civita tensor for 3D spacetime:

$$\begin{align}
\xi _{\mu}\varepsilon _{\nu \rho \sigma}+\xi _{\nu}\varepsilon _{\rho \sigma \mu}+\xi _{\rho}\varepsilon _{\sigma \mu \nu}+\xi _{\sigma}\varepsilon _{\mu \nu \rho} & =0
\end{align}$$

We can represent the Hamiltonian system in the canonical formalism. Since the symplectic form $\Omega|_{\mathcal{\widetilde{P}}}$ is non-degenerate, the physical phase space is exactly the pre-phase space $\mathcal{\widetilde{P}}$.

For the practical application below, we now point out some statements in terms of the Killing symmetry $\displaystyle{X_{\xi}}$ and the two-form $\displaystyle{\Omega[\cdot, \cdot]}$. Specifically, the statements are the following:

(1) Acting the Killing symmetry $\displaystyle{X_{\xi}}$ to one slot of the two-form $\displaystyle{\Omega[\cdot, \cdot]}$ leads to an expression relevant to the Noether charge $\displaystyle{H_{\xi}}$ as

$$\begin{align}
\Omega[\mathcal{L}_{\xi}A_{1},A_{2}] & =-\Omega[A_{1},\mathcal{L}_{\xi}A_{2}]=-H_{\xi}^{(2)}[A_{1},A_{2}]
\end{align}$$

with the bilinear form defined as

$$\begin{align}
H_{\xi}^{(2)}[A_{1},A_{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F_{1}^{\mu \rho}F_{2,~\rho}^{\nu}+F_{2}^{\mu \rho}F_{1,~\rho}^{\nu}-\frac{1}{2}g^{\mu \nu}F_{1,\rho \sigma}F_{2}^{\rho \sigma}+\mu ^{2}A_{1}^{\mu}A_{2}^{\nu}+\mu ^{2}A_{2}^{\mu}A_{1}^{\nu}-\mu ^{2}g^{\mu \nu}A_{1,\rho}A_{2}^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\frac{k}{4\pi}D_{\alpha}\left(\sigma ^{\alpha}_{\mu}\tau _{\nu}\varepsilon ^{\mu \nu \rho}(A_{1,\rho}A_{2,\sigma}+A_{2,\rho}A_{1,\sigma})\xi ^{\sigma}\right)
\end{align}$$

Here, the expression $\displaystyle{H_{\xi}^{(2)}[\cdot, \cdot]}$ is directly connected to the Noether charge $\displaystyle{H_{\xi}}$ via

$$\begin{align}
H_{\xi}^{(2)}[A,A] & =2H_{\xi}
\end{align}$$

(2) The Noether charge $\displaystyle{H_{\xi}}$ can thus be elegantly expressed in terms of the two-form $\displaystyle{\Omega[\cdot, \cdot]}$ as

$$\begin{align}
H_{\xi} & =-\frac{1}{2}\Omega[\mathcal{L}_{\xi}A,A]=\frac{1}{2}\Omega[A,\mathcal{L}_{\xi}A]
\end{align}$$

(3) The two-form $\displaystyle{\Omega[\cdot, \cdot]}$ is strictly invariant under the Killing symmetry $\displaystyle{X_{\xi}}$, ensuring

$$\begin{align}
\Omega[\mathcal{L}_{\xi}A_{1},A_{2}]+\Omega[A_{1},\mathcal{L}_{\xi}A_{2}] & =0
\end{align}$$

Here, statement (1) can be proved with a similar algebraic procedure as the Hamiltonian equation check performed earlier. Statement (2) and statement (3) can be readily generalized from statement (1).

In the subsequent sections, we will utilize this coherent framework to construct the Hilbert space and the canonical variables, paving the road toward fully quantizing the Proca-Chern-Simons theory.
