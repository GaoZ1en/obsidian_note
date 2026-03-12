# 3. Reformulating the model to a Hamiltonian system

In this section, following the covariant phase space prescription, we formulate the Hamiltonian system for the Proca-Chern-Simons theory.

## 3.1 Variation and the Symplectic Form

We proceed by taking the variation of the full action to acquire the symplectic potential and the symplectic form. 

$$\delta S = \int \mathrm{d}^3x \sqrt{-g} \, E^\mu \delta A_\mu + \theta\big|_{\Sigma_f} - \theta\big|_{\Sigma_i}.$$

During the integration by parts, the variation leaves a boundary term on the constant-$t$ Cauchy surfaces $\Sigma_{f,i}$. We read off the symplectic potential as:

$$\theta = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left( F^{\mu\nu}\delta A_\nu + \frac{k}{4\pi} \varepsilon^{\mu\nu\rho} A_\nu \delta A_\rho \right),$$

where $\sigma_{ab}$ is the induced metric on $\Sigma$, and $\tau_\mu$ is the future-pointing unit normal vector orthogonal to $\Sigma$. Thus, the covariant symplectic two-form $\omega = \delta \theta$ evaluated on the physical configuration space $\mathcal{P}$ takes the modified form:

$$\omega(A; \delta_1 A, \delta_2 A) = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left( \delta_1 F^{\mu\nu} \wedge \delta_2 A_\nu + \frac{k}{4\pi} \varepsilon^{\mu\nu\rho} \delta_1 A_\nu \wedge \delta_2 A_\rho \right).$$

Because of the mass term leaving no residual gauge freedom, the symplectic form is non-degenerate. $\omega$ is independent of the choice of Cauchy slice $\Sigma$ provided $A_\mu$ satisfies the equations of motion and decays smoothly at the AdS asymptotic boundary.

## 3.2 Symmetries and Noether Charges

The global AdS$_3$ spacetime exhibits exact Killing symmetries mapped to the $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$ algebra. Each Killing vector field $\xi^\mu$ gives rise to an exact symmetry of the field configuration defined by the Lie derivative:

$$\delta_\xi A_\mu = \mathcal{L}_\xi A_\mu \equiv \xi^\nu \nabla_\nu A_\mu + A_\nu \nabla_\mu \xi^\nu.$$

Through the standard Noether procedure $Q_\xi = \int_\Sigma (\theta[\delta_\xi A] - j^\xi)$, taking into account the topological current from Chern-Simons modifications, the corresponding conserved Noether charge evaluated on a spatial slice $\Sigma$ becomes:

$$Q_\xi = \int_\Sigma \mathrm{d}^2x \sqrt{\sigma} \, \tau_\mu \left[ F^{\mu\nu}(\mathcal{L}_\xi A_\nu) + \frac{k}{4\pi} \varepsilon^{\mu\nu\rho} A_\nu (\mathcal{L}_\xi A_\rho) - \frac{1}{2} \xi^\mu \left( -\frac{1}{2}F_{\alpha\beta}F^{\alpha\beta} - \mu^2 A_\alpha A^\alpha + \frac{k}{2\pi}\varepsilon^{\alpha\beta\gamma} A_\alpha \nabla_\beta A_\gamma \right) \right].$$

These conserved charges constitute the classical Hamiltonian ($H \equiv Q_{\partial_t}$) and angular momentum ($J \equiv Q_{\partial_\phi}$) of the theory. Promoting these classical currents to quantum operators will naturally reveal the underlying Hilbert space representations dictated by conformal weights $(h, \bar{h})$.