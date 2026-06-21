# 1. A brief review of the covariant phase space formalism

In this section, we briefly review the aspects of the covariant phase space formalism that will be used later. We restrict the discussion to field theories without gauge redundancies, and refer to [14, 15] for fuller treatments and proofs.

## 1.1 The formalism

Conceptually, the covariant phase space formalism is a prescription for reformulating a Lagrangian system as a Hamiltonian system. The resulting Hamiltonian system is specified by two structures: the pre-phase space and the symplectic form. The pre-phase space is the space of solutions of the equations of motion, while the symplectic form is read off from the action.

The starting point is a Lagrangian field theory with fundamental fields $\phi^a(x)$, a Lagrangian density, and an action $S$ defined on a spacetime region $M$ bounded by an initial Cauchy surface $\Sigma_i$ and a final Cauchy surface $\Sigma_f$. One then introduces the configuration space, whose points are the allowed field configurations $\phi^a(x)$, and regards the action $S$ as a function on this space.

The prescription begins by varying the action:

$$\begin{align}
\delta S = \int_M \mathrm{d}^d x \, E_a[\phi; x] \delta \phi^a(x) + \theta[\phi; \delta\phi]\big|_{\Sigma_f} - \theta[\phi; \delta\phi]\big|_{\Sigma_i},
\end{align}$$

where suitable asymptotic boundary conditions are assumed so that boundary terms at spatial infinity vanish, leaving only contributions from $\Sigma_i$ and $\Sigma_f$.

From this expression one reads off the equations of motion

$$\begin{align}
E_a[\phi; x] = 0,
\end{align}$$

and the symplectic potential

$$\begin{align}
\theta \equiv \theta[\phi; \delta\phi]\big|_\Sigma,
\end{align}$$

which is a one-form on configuration space.

One then defines the pre-phase space $\widetilde{\mathcal{P}}$ as the space of solutions of the equations of motion. The symplectic form $\Omega$ is obtained by taking the exterior derivative of the symplectic potential on configuration space:

$$\begin{align}
\Omega = \delta \theta,
\end{align}$$

which is a two-form on configuration space. Pulling $\Omega$ back to $\widetilde{\mathcal{P}}$ gives the symplectic form of the pre-phase space, $\Omega|_{\widetilde{\mathcal{P}}}$, which is time independent:

$$\begin{align}
\Omega|_{\Sigma_f, \widetilde{\mathcal{P}}} = \Omega|_{\Sigma_i, \widetilde{\mathcal{P}}}.
\end{align}$$

The pair $\big(\widetilde{\mathcal{P}}, \Omega|_{\widetilde{\mathcal{P}}}\big)$ therefore defines a Hamiltonian system.

The Hamiltonian system obtained in this way can also be described in canonical language, where one works with the physical phase space and its brackets. In the present paper we only consider systems without gauge redundancies, so the symplectic form $\Omega|_{\widetilde{\mathcal{P}}}$ is non-degenerate. In that case the physical phase space coincides with the pre-phase space, and we denote it simply by $\mathcal{P}$. The bracket can then be expressed in terms of the symplectic form. For two observables $f$ and $g$ on $\mathcal{P}$,

$$\begin{align}
\{f, g\}|_{\mathcal{P}} = - X_f \cdot \delta g|_{\mathcal{P}} = X_g \cdot \delta f|_{\mathcal{P}},
\end{align}$$

where $X_f$ and $X_g$ are determined by the Hamiltonian equations

$$\begin{align}
X_f \cdot \Omega|_{\mathcal{P}} = - \delta f|_{\mathcal{P}},
\end{align}$$

$$\begin{align}
X_g \cdot \Omega|_{\mathcal{P}} = - \delta g|_{\mathcal{P}}.
\end{align}$$

## 1.2 Noether theorem

Within the covariant phase space formalism, Noether theorem admits a natural formulation in terms of symmetries and conserved charges. A continuous symmetry is represented by a vector field on configuration space,

$$\begin{align}
X_\lambda = \int \mathrm{d}^d x \Delta_\lambda \phi^a(x) \frac{\delta}{\delta \phi^a(x)},
\end{align}$$

where $\Delta_\lambda \phi^a(x)$ is the infinitesimal symmetry transformation of the field $\phi^a(x)$.

The transformation is a symmetry if its action on the Lagrangian reduces to boundary terms. Equivalently, the variation of the action must take the form

$$\begin{align}
X_\lambda \cdot \delta S = \alpha_\lambda\big|_{\Sigma_f} - \alpha_\lambda\big|_{\Sigma_i}.
\end{align}$$

In that case, the corresponding Noether charge is

$$\begin{align}
Q_\lambda = X_\lambda \cdot \theta - \alpha_\lambda.
\end{align}$$

Noether theorem then yields three standard statements.

(1) The Noether charge is time independent on shell:

$$\begin{align}
Q_\lambda|_{\Sigma_f, \mathcal{P}} = Q_\lambda|_{\Sigma_i, \mathcal{P}}.
\end{align}$$

(2) The vector field $X_\lambda$ is tangent to the physical phase space $\mathcal{P}$; namely, the symmetry maps a valid solution to another valid solution.

(3) The symmetry generator $X_\lambda$ and the Noether charge $Q_\lambda$ satisfy the Hamiltonian equation

$$\begin{align}
X_\lambda \cdot \Omega|_{\mathcal{P}} = - \delta Q_\lambda|_{\mathcal{P}}.
\end{align}$$

For a system without gauge redundancies, this Hamiltonian equation can be written directly in canonical form as

$$\begin{align}
\{Q_\lambda, \phi^a(x)\}|_{\mathcal{P}} = - \Delta_\lambda \phi^a(x)|_{\mathcal{P}}.
\end{align}$$
