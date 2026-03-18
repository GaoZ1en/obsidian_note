# 1. A brief review of the covariant phase space formalism

In this section, we briefly review the covariant phase space formalism. Here, we only introduce the relevant notions and statements, tailoring the discussion towards field theories without gauge redundancies. We refer to [14, 15] for more details of the formalism and the proofs of the statements.

## 1.1 The formalism

From a conceptual perspective, the covariant phase space formalism is a prescription that reformulates a Lagrangian system to a Hamiltonian system. The Hamiltonian system is specified by two structures: the pre-phase space, and the symplectic form. The pre-phase space is defined as the set of solutions of the equations of motion, and the symplectic form can be read out from the action.

The starting point of the covariant phase space formalism is a Lagrangian system, which is specified by: the fundamental fields $\phi^a(x)$, the Lagrangian density, and the action $S$ which is an integral of the Lagrangian density in the region $M$ sandwiched between an initial Cauchy surface $\Sigma_i$ and a final Cauchy surface $\Sigma_f$. In this framework, one introduces the notion of the set of configurations, whose elements are the allowed configurations of the fundamental fields $\phi^a(x)$. One then views the action $S$ as a function of the set of configurations.

Starting from the Lagrangian system, the covariant phase space formalism can be used to reformulate it to a Hamiltonian system through the following prescription. One first takes a variation of the action
$$\delta S = \int_M \mathrm{d}^d x \, E_a[\phi; x] \delta \phi^a(x) + \theta[\phi; \delta\phi]\big|_{\Sigma_f} - \theta[\phi; \delta\phi]\big|_{\Sigma_i},$$
where we assume boundary terms at spatial infinity vanish by imposing appropriate asymptotic boundary conditions, keeping only the terms at the initial Cauchy surface $\Sigma_i$ and the final Cauchy surface $\Sigma_f$.

From the expression of the variation of the action, one reads out the equations of motion
$$E_a[\phi; x] = 0,$$
and reads out the symplectic potential
$$\theta \equiv \theta[\phi; \delta\phi]\big|_\Sigma,$$
which is a one-form field on the set of configurations. 

Next, one defines the pre-phase space $\mathcal{\tilde{P}}$ as the set of solutions of the equations of motion. One defines the symplectic form $\Omega$ as the exterior derivative of the symplectic potential $\theta$ in the set of configurations:
$$\Omega = \delta \theta,$$
which is a two-form field on the set of configurations. By taking a pull back of the symplectic form $\Omega$ from the set of configurations to the pre-phase space $\mathcal{\tilde{P}}$, one defines the symplectic form of the pre-phase space $\Omega|_{\mathcal{\tilde{P}}}$, which is time independent:
$$\Omega|_{\Sigma_f, \mathcal{\tilde{P}}} = \Omega|_{\Sigma_i, \mathcal{\tilde{P}}}.$$
The pre-phase space $\mathcal{\tilde{P}}$ and the symplectic form $\Omega|_{\mathcal{\tilde{P}}}$ together specify a Hamiltonian system.

The Hamiltonian system constructed from the covariant phase space formalism can also be represented in the canonical formalism, where a Hamiltonian system is specified by the physical phase space and the associated brackets. For the application of the current paper, we only consider a system with no gauge redundancies, where the symplectic form $\Omega|_{\mathcal{\tilde{P}}}$ is non-degenerate. For such a system, the physical phase space is exactly the pre-phase space, which we will simply denote as $\mathcal{P}$. The bracket can be represented in terms of the symplectic form. Specifically, given two observables $f$ and $g$ which are functions of the physical phase space, their bracket can be represented as
$$\{f, g\}|_{\mathcal{P}} = - X_f \cdot \delta g|_{\mathcal{P}} = X_g \cdot \delta f|_{\mathcal{P}},$$
where $X_f$ and $X_g$ are determined from $f$ and $g$ through the Hamiltonian equations
$$X_f \cdot \Omega|_{\mathcal{P}} = - \delta f|_{\mathcal{P}},$$
$$X_g \cdot \Omega|_{\mathcal{P}} = - \delta g|_{\mathcal{P}}.$$

## 1.2 The Noether's theorem

Associated with the covariant phase space formalism, there is an elegant formulation of Noether's theorem in terms of symmetries and conserved charges. In this framework, a continuous symmetry is represented as a vector field in the set of configurations
$$X_\lambda = \int \mathrm{d}^d x \Delta_\lambda \phi^a(x) \frac{\delta}{\delta \phi^a(x)},$$
where $\Delta_\lambda \phi^a(x)$ denotes the infinitesimal symmetry transformation of the field $\phi^a(x)$. 

The requirement for this transformation to be a symmetry is that its action on the Lagrangian translates to a shift on the boundaries. Specifically, the transformation of the action must only contain terms at the initial Cauchy surface $\Sigma_i$ and the final Cauchy surface $\Sigma_f$ as:
$$X_\lambda \cdot \delta S = \alpha_\lambda\big|_{\Sigma_f} - \alpha_\lambda\big|_{\Sigma_i}.$$

Under such a setup, the corresponding Noether charge is constructed as
$$Q_\lambda = X_\lambda \cdot \theta - \alpha_\lambda.$$

The Noether's theorem then provides the following three statements:
(1) The Noether charge is time independent under the on-shell condition
$$Q_\lambda|_{\Sigma_f, \mathcal{P}} = Q_\lambda|_{\Sigma_i, \mathcal{P}}.$$
(2) The vector field $X_\lambda$ is tangent to the physical phase space $\mathcal{P}$. Namely, the symmetry $X_\lambda$ maps a valid solution to another solution.
(3) The symmetry generator $X_\lambda$ and the Noether charge $Q_\lambda$ together satisfy the Hamiltonian equation
$$X_\lambda \cdot \Omega|_{\mathcal{P}} = - \delta Q_\lambda|_{\mathcal{P}}.$$

Moreover, for the system with no gauge redundancies, the Hamiltonian equation can be directly represented in the canonical formalism as
$$\{Q_\lambda, \phi^a(x)\}|_{\mathcal{P}} = - \Delta_\lambda \phi^a(x)|_{\mathcal{P}}.$$