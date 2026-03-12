# 2. The Proca-Chern-Simons theory in the global AdS$_3$ spacetime

In this section, we introduce our model: the topologically massive vector field, specifically the Proca-Chern-Simons theory, in the global AdS$_3$ spacetime.

## 2.1 Spacetime background

We define the global AdS$_3$ spacetime using the standard coordinate system $(t, r, \phi)$ where $t \in (-\infty, +\infty)$, $r \in (0, +\infty)$, and $\phi \sim \phi + 2\pi$. The background metric takes the form:

$$\mathrm{d}s^2 = -(1+r^2)\mathrm{d}t^2 + \frac{\mathrm{d}r^2}{1+r^2} + r^2 \mathrm{d}\phi^2.$$

This geometry possesses an $\mathrm{SL}(2, \mathbb{R}) \times \mathrm{SL}(2, \mathbb{R})$ isometry group, corresponding to standard Killing vector fields which we will utilize to classify the energy and angular momentum modes.

## 2.2 The Action and Asymptotic Boundary Conditions

We represent the dynamic variable of the theory as a massive vector field $A_\mu(x)$. The full action is given by the sum of a Maxwell term, a Proca mass term ($\mu > 0$), and a Chern-Simons term parameterized by a coupling $k$:

$$S = -\frac{1}{4}\int_M \mathrm{d}^3x \sqrt{-g} F_{\mu\nu} F^{\mu\nu} - \frac{1}{2}\mu^2 \int_M \mathrm{d}^3x \sqrt{-g} A_\mu A^\mu + \frac{k}{4\pi} \int_M \mathrm{d}^3x \sqrt{-g} \, \varepsilon^{\mu\nu\rho} A_\mu \nabla_\nu A_\rho,$$

where $F_{\mu\nu} = \nabla_\mu A_\nu - \nabla_\nu A_\mu$ is the field strength tensor, and $\varepsilon^{\mu\nu\rho}$ is the totally antisymmetric Levi-Civita tensor defined as $\varepsilon^{\mu\nu\rho} = \frac{1}{\sqrt{-g}} \hat{\epsilon}^{\mu\nu\rho}$.

To maintain a well-defined variational principle and normalizable mode solutions, we impose the following asymptotic boundary conditions as $r \to \infty$:

$$A_t = o(r^{-2}), \quad A_r = o(r^{-1}), \quad A_\phi = o(r^{-2}).$$

*(Note: Although the Chern-Simons term is introduced, these boundary conditions—the same as the ones for the pure Proca field—are sufficient to guarantee that all boundary terms at spatial infinity vanish. A rigorous verification is provided in Appendix A.)*

## 2.3 The Equations of Motion and Transverse Condition

By taking a generic variation of the action $\delta S$ with respect to the field $A_\mu$, we read out the equations of motion (EOM):

$$E^\mu \equiv \nabla_\nu F^{\nu\mu} - \mu^2 A^\mu + \frac{k}{2\pi} \varepsilon^{\mu\nu\rho} \nabla_\nu A_\rho = 0.$$

A remarkable and essential feature of this generic massive theory ($\mu \neq 0$) is that the system strictly lacks gauge redundancy. Unlike the pure Maxwell case ($k=0, \mu=0$) where one has to artificially pick a Lorentz gauge condition, here an intrinsic transverse condition is physically encoded within the dynamic equations. 

By applying the covariant divergence operator $\nabla_\mu$ to both sides of the EOM, we obtain:

$$\nabla_\mu \left( \nabla_\nu F^{\nu\mu} \right) + \frac{k}{2\pi} \nabla_\mu \left( \varepsilon^{\mu\nu\rho} \nabla_\nu A_\rho \right) - \mu^2 \nabla_\mu A^\mu = 0.$$

Since $F^{\nu\mu}$ and $\varepsilon^{\mu\nu\rho}$ are strictly antisymmetric in $(\mu, \nu)$, the divergences of the first and second terms automatically vanish. For $\mu > 0$, this rigorously yields the built-in Lorentz transverse constraint:

$$\nabla_\mu A^\mu = 0.$$

This non-trivial constraint removes one unphysical degree of freedom, restricting the field uniquely to physically propagating components.