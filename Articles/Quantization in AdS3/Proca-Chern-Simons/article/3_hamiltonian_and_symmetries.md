# 3. Reformulating the model to a Hamiltonian system

In this section, directly following the covariant phase space formalism introduced in Section 1, we reformulate the Proca-Chern-Simons theory into a rigorous Hamiltonian system. This constructs the foundation required for canonical quantization.

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

From the volume integral, we read out the equations of motion (EOM), $E^\mu = 0$:

$$E^\mu \equiv \nabla_\nu F^{\nu\mu} - \mu^2 A^\mu + \frac{k}{2\pi} \varepsilon^{\mu\nu\rho} \nabla_\nu A_\rho = 0.$$

A remarkable feature of this massive geometry ($\mu > 0$) is that it possesses no gauge redundancies. By taking the covariant divergence of the EOM, we evaluate $\nabla_\mu E^\mu = 0$. Due to the strict antisymmetry of the field strength $F^{\nu\mu}$ and the Levi-Civita tensor $\varepsilon^{\mu\nu\rho}$, the derivatives of the kinetic and topological terms automatically vanish ($\nabla_\mu \nabla_\nu F^{\nu\mu} \equiv 0$ and $\nabla_\mu \varepsilon^{\mu\nu\rho} \nabla_\nu A_\rho \equiv 0$). This rigorously constrains the mass term:

$$-\mu^2 \nabla_\mu A^\mu = 0 \quad \implies \quad \nabla_\mu A^\mu = 0.$$

This intrinsic Lorentz transverse constraint dynamically removes the unphysical scalar degree of freedom, restricting the field uniquely to physically propagating components.

We define the **pre-phase space** $\mathcal{P}$ as the linear space spanned by all smooth field configurations $A_\mu$ that satisfy the EOM $E^\mu = 0$ along with our strict asymptotic boundary conditions. Because the system lacks local gauge redundancies, $\mathcal{P}$ simultaneously serves as the genuine physical phase space. 

From the boundary terms of the variation, we isolate the specific symplectic potential one-form $\theta$ evaluated on a Cauchy surface $\Sigma$:

$$\theta[\delta A] = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left( F^{\mu\nu}\delta A_\nu + \frac{k}{4\pi} \varepsilon^{\mu\nu\rho} A_\nu \delta A_\rho \right).$$

Taking the exterior derivative in the configuration space ($\Omega = \delta \theta$), we derive the crucial covariant symplectic two-form evaluated on $\mathcal{P}$:

$$\Omega[\delta_1 A, \delta_2 A] = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left( \delta_1 F^{\mu\nu} \delta_2 A_\nu - \delta_2 F^{\mu\nu} \delta_1 A_\nu + \frac{k}{2\pi} \varepsilon^{\mu\nu\rho} \delta_1 A_\nu \delta_2 A_\rho \right).$$

Because the theory is linear, vectors in the tangent space at any point in $\mathcal{P}$ are purely identifiable with solutions themselves. Therefore, this defines the exact conserved bilinear symplectic product between any two valid classical solutions $A_1$ and $A_2$:

$$\Omega[A_1, A_2] = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left( F_1^{\mu\nu} A_{2\nu} - F_2^{\mu\nu} A_{1\nu} + \frac{k}{2\pi} \varepsilon^{\mu\nu\rho} A_{1\nu} A_{2\rho} \right).$$

This integration yields finite physical quantities entirely independent of the choice of Cauchy slice $\Sigma$. In anticipation of forming a quantum Hilbert space, we will later utilize $i \Omega[A_1^*, A_2]$ to dictate the natural Hermitian inner product of the theory.

## 3.2 Symmetries and Noether's Theorem

We now systematically apply Noether's procedure using the continuous isometries of the AdS background. Each Killing vector field $\xi^\mu$ generates a purely geometric transformation on the vector field mathematically encoded by the Lie derivative:

$$\Delta_\xi A_\mu = \mathcal{L}_\xi A_\mu \equiv \xi^\nu \nabla_\nu A_\mu + A_\nu \nabla_\mu \xi^\nu.$$

We denote the associated symmetric transformation on the configuration space as the vector field $X_\xi = \int \mathrm{d}^3x \, \mathcal{L}_\xi A_\mu \frac{\delta}{\delta A_\mu}$. Since the Lagrangian density $\mathcal{L}$ behaves as a scalar density, its transformation under diffeomorphism generated by $\xi$ forms a pure total derivative: $X_\xi \cdot \delta S = \int_M \mathrm{d}^3x \sqrt{-g} \nabla_\mu (\xi^\mu \mathcal{L})$. Applying Stokes' Theorem strictly attributes this total variation to boundary terms $\alpha_\xi\big|_{\Sigma_f} - \alpha_\xi\big|_{\Sigma_i}$, reading:

$$\alpha_\xi = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \xi^\mu \left( -\frac{1}{4}F_{\alpha\beta}F^{\alpha\beta} - \frac{1}{2}\mu^2 A_\alpha A^\alpha + \frac{k}{4\pi}\varepsilon^{\alpha\beta\gamma} A_\alpha \nabla_\beta A_\gamma \right).$$

Following the covariant phase space prescription $Q_\xi = X_\xi \cdot \theta - \alpha_\xi$, the systematically conserved Noether charge associated with the isometry $\xi$ precisely resolves to:

$$Q_\xi = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left[ F^{\mu\nu}(\mathcal{L}_\xi A_\nu) + \frac{k}{4\pi} \varepsilon^{\mu\nu\rho} A_\nu (\mathcal{L}_\xi A_\rho) - \xi^\mu \mathcal{L} \right].$$

This elegantly constructs the classical energy/Hamiltonian when evaluated with $\xi = \partial_t$ ($H \equiv Q_{\partial_t}$) and angular momentum with $\xi = \partial_\phi$ ($J \equiv Q_{\partial_\phi}$). 

We meticulously verify the fundamental Noether theorem statements (posited in Section 1.2) for this distinct model:

1. **Conservation of Charge**: The Noether charge $Q_\xi$ computes to constants of motion ($Q_\xi|_{\Sigma_f} = Q_\xi|_{\Sigma_i}$) because integrating its temporal covariant divergence inherently replicates evaluating the EOM acting against $\mathcal{L}_\xi A_\mu$, structurally ensuring zeroes locally in bulk.
2. **Tangent to Phase Space**: Mapping any solution $A_\mu \in \mathcal{P}$ generates another valid geometric solution. Specifically, we possess $\mathcal{L}_\xi E^\mu = 0$ since spatial geometry strictly preserves equations dictated by isometries ($X_\xi$ purely maps $\mathcal{P} \to \mathcal{P}$).
3. **Fundamental Hamiltonian Equation**: Uniquely inserting $X_\xi$ to evaluate $X_\xi \cdot \Omega = -\delta Q_\xi$ maps dynamically identical elements. The system seamlessly realizes the Poisson mapping $\{Q_\xi, A\} = -\mathcal{L}_\xi A$, anchoring our symmetry generators inherently into the covariant brackets.

As before, finite physical integration for these quantities (e.g., verifying that radial spatial flux diverges explicitly map to zero leaving only physical integrals purely along the Cauchy slice $\Sigma$) holds gracefully due to our specifically imposed asymptotic limits. The complete analytical proof for configuration finiteness is presented securely in Appendix A.