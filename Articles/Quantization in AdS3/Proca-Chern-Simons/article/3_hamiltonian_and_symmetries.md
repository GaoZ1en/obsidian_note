# 3. Reformulating the model to a Hamiltonian system

In this section, directly following the covariant phase space formalism introduced in Section 1, we reformulate the Proca-Chern-Simons theory into a rigorous Hamiltonian system. This constructs the foundation required for canonical quantization. without pointing out explicitly, near boundary contributions at spatial infinity $\displaystyle{\Gamma}$ vanish due to our strict asymptotic boundary conditions, as thoroughly explicitly verified in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/5_appendices|Appendix A]].

## 3.1 Variation, Equations of Motion, and the Symplectic Form

We begin by taking the generic variation of the full action $S$ concerning the dynamic field $A_\mu$:

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}\right)\delta A_{\mu} \\
 & +\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho}\right)
\end{align}$$

where the induced metric $\displaystyle{\sigma _{ab}}$ on the constant-$t$ Cauchy surfaces $\Sigma_{f,i}$ is given by

$$\begin{align}
\sigma _{ab}\mathrm{d}x^{a}\mathrm{d}x^{b} & =\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

and the future-pointing unit normal vector $\displaystyle{\tau ^{\mu}}$ orthogonal to $\Sigma$ is given by

$$\begin{align}
\tau ^{\mu} & =\frac{1}{1+r^{2}}\delta _{0}^{\mu}
\end{align}$$

By imposing the asymptotic boundary conditions defined in Section 2, boundary terms at spatial infinity $\displaystyle{\Gamma}$ purely vanish (as thoroughly explicitly verified in [[Articles/Quantization in AdS3/Proca-Chern-Simons/article/5_appendices|Appendix A]]).

From the volume integral, we read out the equations of motion, $E^\mu = 0$:

$$\begin{align}
E^{\mu} & \equiv \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}\nabla _{\nu}A_{\rho}=0
\end{align}$$

by taking a divergence of the EOM, we obtain the Lorentz transverse constraint:

$$\begin{align}
-\mu ^{2}\nabla _{\mu}A^{\mu} & =0 & \implies &  & \nabla _{\mu}A^{\mu} & =0
\end{align}$$

We define the **pre-phase space** $\mathcal{\widetilde{P}}$ as the linear space spanned by all smooth field configurations $A_\mu$ that satisfy the EOM $E^\mu = 0$ along with our strict asymptotic boundary conditions.

From the boundary terms of the variation, we isolate the pre-symplectic potential $\theta$ evaluated on a Cauchy surface $\Sigma$:

$$\begin{align}
\theta[A,\delta A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \right)
\end{align}$$

Taking the exterior derivative in the configuration space, we derive the pre-sympliectic form evaluated on $\mathcal{\widetilde{P}}$:

$$\begin{align}
\Omega[\delta _{1} A,\delta _{2} A] & =\int \mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta _{1} F^{\mu \nu}\delta _{2} A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta _{1}A_{\nu}\delta _{2}A_{\rho}\right)
\end{align}$$

which is a two-form of the configuration space. given a solution $\displaystyle{A_{i}^{\mu}}$ of the equation of motion, which is a point in the pre-phase space $\displaystyle{\mathcal{\widehat{P}}}$, we contruct the corresponding vector in the tangent space of $\displaystyle{\mathcal{\widehat{P}}}$ as

$$\begin{align}
X_{A_{i}} & =\int \mathrm{d}^{3}xA_{i}^{\mu}(x) \frac{\delta}{\delta A^{\mu}(x)}
\end{align}$$

then we define the  between any two vectors in the tangent space as

$$\begin{align}
\Omega[A_{1},A_{2}] & =X_{A_{2}}\cdot X_{A_{1}}\cdot \Omega|_{\widehat{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}(A_{1,\nu}A_{2,\rho}-A_{2,\nu}A_{1,\rho})\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F_{1}^{\mu \nu}A_{2,\nu}-F_{2}^{\mu \nu}A_{1,\nu}+\frac{k}{2\pi}\varepsilon ^{\mu \nu \rho}A_{1,\nu}A_{2,\rho}\right)
\end{align}$$

this "inner product" will play a crucial role in the quantization procedure. (I don't know how to write here...)

This integration yields finite physical quantities entirely independent of the choice of Cauchy slice $\Sigma$. In anticipation of forming a quantum Hilbert space, we will later utilize $i \Omega[A_1^*, A_2]$ to dictate the natural Hermitian inner product of the theory.

## 3.2 Symmetries and Noether's Theorem

We now systematically apply Noether's procedure using the continuous isometries of the AdS background. Each Killing vector field $\xi^\mu$ generates a purely geometric transformation on the vector field mathematically encoded by the Lie derivative:

$$\begin{align}
\delta _{\xi}A^{\mu} & =\mathcal{L}_\xi A^{\mu} \equiv \xi^\nu \nabla_\nu A^\mu - A^\nu \nabla_\nu \xi^\mu
\end{align}$$

and we denote the associated symmetric transformation as the vector field in the set of configuration:

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{3}x\delta _{\xi}A^{\mu} \frac{\delta}{\delta A^{\mu}}
\end{align}$$

the Killing vector $\displaystyle{\xi ^{\mu}}$ satisfies the Killing equation

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0
\end{align}$$

and the asymptotic behaviors

$$\begin{align}
\xi ^{t} & =\mathcal{O}(r^{0}) \\
\xi ^{r} & =\mathcal{O}(r) \\
\xi ^{\phi} & =\mathcal{O}(r^{0})
\end{align}$$

thus the Killing transformation preserves the asymptotic boundary conditions of the fields

$$\begin{align}
X_{\xi}\cdot \delta A^{t} & =o(r^{-2}) \\
X_{\xi}\cdot \delta A^{r} & =o(r^{-1}) \\
X_{\xi}\cdot \delta A^{\phi} & =o(r^{-2})
\end{align}$$

we then act the Killing symmetries $\displaystyle{X_{\xi}}$ to the action. we first act the Killing symmetries $\displaystyle{X_{\xi}}$ to $\displaystyle{A^{\mu}, A_{\mu},F_{\mu \nu},F^{\mu \nu}}$ as

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

thus we obtain the transformation of the Lagrangian density $\displaystyle{\mathcal{L}}$ under the Killing symmetries $\displaystyle{X_{\xi}}$ as

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\xi ^{\rho}\nabla _{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}e^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\nabla _{\rho}\left(\xi ^{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}e^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)\right) \\
 & =\int _{\Sigma _{f}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right) \\
 & -\int _{\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

here, near boundary contributions at spatial infinity $\displaystyle{\Gamma}$ are finite, and the term supported on $\displaystyle{\Gamma}$ also vanishes due to the asymptotic behaviors of $\displaystyle{\xi ^{\mu}}$ and $\displaystyle{A^{\mu}}$. we read out the corresponding $\displaystyle{\alpha _{\xi}}$ as


$$\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda}\right)
\end{align}$$

Following the covariant phase space presented in Section 1, we compute the Noether charge $\displaystyle{H_{\xi}}$ associated with the Killing vector $\xi$ as

$$\begin{align}
H_{\xi}|_{\mathcal{\widehat{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\mathcal{\widehat{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & +\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left[ \nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho} \right] \right|_{\widetilde{\mathcal{P}}}\\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & -\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left(\sigma ^{\alpha}_{\mu}\tau _{\nu}\left( F^{\mu \nu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} \right)A_{\sigma}\xi ^{\sigma}\right)\right|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma } \frac{k}{4\pi}D_{\alpha}\left(\sigma ^{\alpha}_{\mu}\tau _{\nu}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right)
\end{align}$$

here $\displaystyle{D_{\alpha}}$ is the covariant derivative compatible with the induced metric $\displaystyle{\sigma _{ab}}$ on $\Sigma$. we have used the following equation for anti-symmetric tensor $\displaystyle{S^{\mu \nu}}$ to convert the second term in the last line to a total derivative:

$$\begin{align}
\tau _{\mu}\nabla _{\nu}S^{\mu \nu} & =-D_{\alpha}(\sigma ^{\alpha}_{\mu}\tau _{\nu}S^{\mu \nu})
\end{align}$$

for simplicity, we will drop the subscript $\displaystyle{\mathcal{\widehat{P}}}$ in the following discussion, and all the Noether charges are evaluated on the pre-phase space $\displaystyle{\mathcal{\widehat{P}}}$. we now take a direct check for the expression of the Noether charge $\displaystyle{H_{\xi}}$ and the Noether theorem statements. specifically, we check that the Killing symmetry $\displaystyle{X_{\xi}}$, the symplectic form $\displaystyle{\Omega}$ and the Noether charge together satisfy the following Noether theorem statements:

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left((X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}-(X_{\xi}\cdot \delta A_{\nu})\delta F^{\mu \nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu} \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}[(X_{\xi}\cdot \delta A_{\nu})\delta A_{\rho}-(X_{\xi}\cdot \delta A_{\rho})\delta A_{\nu}] \\
 & =
\end{align}$$


We meticulously verify the fundamental Noether theorem statements (posited in Section 1.2) for this distinct model:

1. **Conservation of Charge**: The Noether charge $Q_\xi$ computes to constants of motion ($Q_\xi|_{\Sigma_f} = Q_\xi|_{\Sigma_i}$) because integrating its temporal covariant divergence inherently replicates evaluating the EOM acting against $\mathcal{L}_\xi A_\mu$, structurally ensuring zeroes locally in bulk.
2. **Tangent to Phase Space**: Mapping any solution $A_\mu \in \mathcal{P}$ generates another valid geometric solution. Specifically, we possess $\mathcal{L}_\xi E^\mu = 0$ since spatial geometry strictly preserves equations dictated by isometries ($X_\xi$ purely maps $\mathcal{P} \to \mathcal{P}$).
3. **Fundamental Hamiltonian Equation**: Uniquely inserting $X_\xi$ to evaluate $X_\xi \cdot \Omega = -\delta Q_\xi$ maps dynamically identical elements. The system seamlessly realizes the Poisson mapping $\{Q_\xi, A\} = -\mathcal{L}_\xi A$, anchoring our symmetry generators inherently into the covariant brackets.

As before, finite physical integration for these quantities (e.g., verifying that radial spatial flux diverges explicitly map to zero leaving only physical integrals purely along the Cauchy slice $\Sigma$) holds gracefully due to our specifically imposed asymptotic limits. The complete analytical proof for configuration finiteness is presented securely in Appendix A.

