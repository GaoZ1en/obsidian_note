# 3. Reformulating the model as a Hamiltonian system

In this section, we apply the covariant phase space formalism reviewed in Section 1 to the Proca-Chern-Simons model and rewrite it as a Hamiltonian system. We also discuss the Noether charges associated with the Killing symmetries. As shown in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_a|Appendix A]], the near-boundary contributions at spatial infinity $\Gamma$ vanish under our asymptotic boundary conditions.

## 3.1 The Hamiltonian system

We now apply the general prescription to the present model.

Following the prescription, we first take the variation of the action $S$ with respect to the dynamical field $A_\mu$:

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A_{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right)
\end{align}$$

Here, $\sigma_{ab}$ is the induced metric on the constant-$t$ Cauchy surfaces $\Sigma_{f,i}$:

$$\begin{align}
\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

The future-pointing unit normal vector orthogonal to these Cauchy surfaces is

$$\begin{align}
\tau ^{\mu} & =\frac{1}{1+r^{2}}\delta _{0}^{\mu}
\end{align}$$

The contributions from the near-boundary region are finite. In particular, the boundary term produced by integration by parts vanishes at spatial infinity, as verified in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/appendix_a|Appendix A]].

From this expression we read off the equations of motion $E^\mu = 0$:

$$\begin{align}
E^{\mu} & \equiv \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}=0
\end{align}$$

Taking the divergence of the equations of motion gives the Lorentz transversality constraint:

$$\begin{align}
-\mu ^{2}\nabla _{\mu}A^{\mu} & =0 & \implies &  & \nabla _{\mu}A^{\mu} & =0
\end{align}$$

The symplectic potential is

$$\begin{align}
\theta[A,\delta A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \right)
\end{align}$$

Here $\Sigma$ denotes a constant-$t$ Cauchy surface, and $\theta$ is a one-form on configuration space.

We define the pre-phase space $\widetilde{\mathcal{P}}$ as the space of solutions of the equations of motion obeying the asymptotic boundary conditions. Taking the exterior derivative of the symplectic potential on configuration space gives the symplectic form

$$\begin{align}
\Omega[\delta _{1} A,\delta _{2} A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta _{1} F^{\mu \nu}\delta _{2} A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta _{1}A_{\nu}\delta _{2}A_{\rho}\right)
\end{align}$$

which is a two-form on configuration space. Pulling it back to $\widetilde{\mathcal{P}}$ gives the symplectic form $\Omega|_{\widetilde{\mathcal{P}}}$ of the pre-phase space.

At this stage, the model has been reformulated as a Hamiltonian system specified by $\widetilde{\mathcal{P}}$ and $\Omega|_{\widetilde{\mathcal{P}}}$.

Because the theory is free, $\widetilde{\mathcal{P}}$ is naturally a linear space. We therefore identify a solution $A_i^\mu$ with the corresponding tangent vector on $\widetilde{\mathcal{P}}$,

$$\begin{align}
X_{A_{i}} & =\int \mathrm{d}^{3}xA_{i}^{\mu}(x) \frac{\delta}{\delta A^{\mu}(x)}
\end{align}$$

and evaluate the symplectic form on two such tangent vectors to obtain the bilinear pairing

$$\begin{align}
\Omega[A_{1},A_{2}] & =X_{A_{2}}\cdot X_{A_{1}}\cdot \Omega|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}(A_{1,\nu}A_{2,\rho}-A_{2,\nu}A_{1,\rho})\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}A_{1,\nu}A_{2,\rho}\right)
\end{align}$$

Here the point of $\widetilde{\mathcal{P}}$ is already regarded as a vector in the linear solution space. The bilinear form $\Omega[\cdot,\cdot]$ is finite and independent of the choice of Cauchy surface $\Sigma$. Later we will use $i\Omega[A_1^*,A_2]$ as the natural Hermitian inner product on the one-particle space.

## 3.2 Noether theorem for Killing symmetries

We now discuss the Noether charges associated with the Killing symmetries, which will play a central role in Section 4.

A Killing symmetry is represented on configuration space by the vector field

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\delta _{\xi}A^{\mu} \frac{\delta}{\delta A^{\mu}}
\end{align}$$

where the infinitesimal variation is generated by the Lie derivative:

$$\begin{align}
\delta _{\xi}A^{\mu} & =\mathcal{L}_\xi A^{\mu} \equiv \xi^\nu \nabla_\nu A^\mu - A^\nu \nabla_\nu \xi^\mu
\end{align}$$

Here $\xi ^{\mu}$ is a Killing field satisfying

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}$$

and the asymptotic falloffs

$$\begin{align}
\xi ^{t} & =\mathcal{O}(r^{0}) \\
\xi ^{r} & =\mathcal{O}(r) \\
\xi ^{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

These transformations preserve the asymptotic boundary conditions of the fields:

$$\begin{align}
X_{\xi}\cdot \delta A^{t} & =o(r^{-2}) \\
X_{\xi}\cdot \delta A^{r} & =o(r^{-1}) \\
X_{\xi}\cdot \delta A^{\phi} & =o(r^{-2})
\end{align}$$

To evaluate their action on the Lagrangian, we first compute the induced transformations of $A^{\mu}$, $A_{\mu}$, $F_{\mu \nu}$, and $F^{\mu \nu}$:

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

Therefore, the variation of the action under the Killing symmetry takes the form

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\xi ^{\rho}\nabla _{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\rho}\left(\xi ^{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)\right) \\
 & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

The contribution from spatial infinity $\Gamma$ is finite and vanishes because of the asymptotic behaviors of $\xi ^{\mu}$ and $A^{\mu}$. We therefore identify


$$\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

Following the prescription reviewed in Section 1, the corresponding Noether charge evaluated on $\widetilde{\mathcal{P}}$ is

$$\begin{align}
H_{\xi}|_{\widetilde{\mathcal{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & +\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left[ \nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho} \right] \right|_{\widetilde{\mathcal{P}}}\\
 & =\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right|_{\widetilde{\mathcal{P}}}
\end{align}$$

Here, $D_{\alpha}$ denotes the covariant derivative compatible with the induced metric $\sigma _{ab}$ on $\Sigma$. We have also used the following identity for an antisymmetric tensor $S^{\mu \nu}$ to convert the total-derivative term to a boundary term on $\Sigma$:

$$\begin{align}
\tau _{\mu}\nabla _{\nu}S^{\mu \nu} & =-D_{\alpha}(\sigma ^{\alpha}_{\mu}\tau _{\nu}S^{\mu \nu})
\end{align}$$

In the remainder of this section, we suppress the explicit restriction to $\widetilde{\mathcal{P}}$. As a consistency check, we now verify that the Killing symmetry $X_{\xi}$, the symplectic form $\Omega$, and the charge $H_{\xi}$ satisfy the Hamiltonian equation

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left((X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}-(X_{\xi}\cdot \delta A_{\nu})\delta F^{\mu \nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu} \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}[(X_{\xi}\cdot \delta A_{\nu})\delta A_{\rho}-(X_{\xi}\cdot \delta A_{\rho})\delta A_{\nu}] \\
 & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma } \Bigg[\tau _{\mu}\xi _{\nu}\left(\delta F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \rho}\delta F_{\nu}^{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\delta F^{\rho \sigma}+\mu ^{2}\delta A^{\mu}A^{\nu}+\mu ^{2}A^{\mu}\delta A^{\nu}-\mu ^{2}g^{\mu \nu}A_{\rho}\delta A^{\rho}\right) \\
 & \qquad +\tau _{\mu}\nabla _{\nu}\left(\delta F^{\mu \nu}\xi ^{\rho}A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+F^{\nu \rho}\xi ^{\mu}\delta A^{\rho}-F^{\mu \rho}\xi ^{\nu}\delta A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right) \\
 & \qquad +\tau ^{\mu}\nabla _{\rho}\xi ^{\rho}F_{\mu \nu}\delta A^{\nu}-\tau _{\mu}F_{\rho \nu}(\nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu})\delta A^{\nu}-\tau ^{\mu}F_{\mu \rho}(\nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu})\delta A_{\nu}+\tau ^{\mu}\delta F_{\mu \nu}A_{\rho}(\nabla ^{\rho}\xi ^{\nu}+\nabla ^{\nu}\xi _{\rho}) \\
 & \qquad -\tau ^{\mu}\xi _{\mu}\left( \nabla ^{\rho}F_{\rho \nu}-\mu ^{2}A_{\nu}+\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu}+\tau ^{\mu}\xi _{\nu}\left( \nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu} \\
 & \qquad +\left.\tau ^{\mu}\left( \nabla ^{\nu}\delta F_{\nu \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda} \right)A^{\rho}\xi _{\rho} \Bigg]\right|_{\widetilde{\mathcal{P}}} \\
 & =-\left.\delta \left( \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \right)\right|_{\widetilde{\mathcal{P}}} \\
 & =-\delta H_{\xi}
\end{align}$$

In deriving this relation, we use the cyclic identity of the Levi-Civita tensor in three dimensions:

$$\begin{align}
\xi _{\mu}\varepsilon _{\nu \rho \sigma}+\xi _{\nu}\varepsilon _{\rho \sigma \mu}+\xi _{\rho}\varepsilon _{\sigma \mu \nu}+\xi _{\sigma}\varepsilon _{\mu \nu \rho} & =0
\end{align}$$

Since the symplectic form $\Omega|_{\widetilde{\mathcal{P}}}$ is non-degenerate, the physical phase space coincides with the pre-phase space $\widetilde{\mathcal{P}}$.

For later use, it is convenient to record three immediate consequences for the bilinear symplectic pairing $\Omega[\cdot,\cdot]$.

First, inserting $\mathcal{L}_{\xi}A_{1}$ into one slot produces the bilinear form associated with the Noether charge:

$$\begin{align}
\Omega[\mathcal{L}_{\xi}A_{1},A_{2}] & =-\Omega[A_{1},\mathcal{L}_{\xi}A_{2}]=-H_{\xi}^{(2)}[A_{1},A_{2}]
\end{align}$$

Here the bilinear form is defined by

$$\begin{align}
H_{\xi}^{(2)}[A_{1},A_{2}] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F_{1}^{\mu \rho}F_{2,~\rho}^{\nu}+F_{2}^{\mu \rho}F_{1,~\rho}^{\nu}-\frac{1}{2}g^{\mu \nu}F_{1,\rho \sigma}F_{2}^{\rho \sigma}+\mu ^{2}A_{1}^{\mu}A_{2}^{\nu}+\mu ^{2}A_{2}^{\mu}A_{1}^{\nu}-\mu ^{2}g^{\mu \nu}A_{1,\rho}A_{2}^{\rho}\right)
\end{align}$$

and it is related to the charge itself by

$$\begin{align}
H_{\xi}^{(2)}[A,A] & =2H_{\xi}
\end{align}$$

Second, the Noether charge can be written compactly in terms of the symplectic pairing:

$$\begin{align}
H_{\xi} & =-\frac{1}{2}\Omega[\mathcal{L}_{\xi}A,A]=\frac{1}{2}\Omega[A,\mathcal{L}_{\xi}A]
\end{align}$$

Third, the symplectic pairing is invariant under the Killing flow:

$$\begin{align}
\Omega[\mathcal{L}_{\xi}A_{1},A_{2}]+\Omega[A_{1},\mathcal{L}_{\xi}A_{2}] & =0
\end{align}$$

The first statement follows from the same algebraic manipulations used in the Hamiltonian-equation check, while the second and third statements are immediate consequences of the first. These identities provide the bridge between the covariant Hamiltonian formulation of this section and the mode construction of Section 4.
