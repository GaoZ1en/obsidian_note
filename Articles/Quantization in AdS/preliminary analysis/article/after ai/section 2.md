# Canonical Quantization in Covariant Phase Space Formalism

## Covariant Phase Space Formalism at the Classical Level

Consider an action $\displaystyle{S[\phi^a]}$ governing a $\displaystyle{d}$-dimensional system within the Lagrangian formalism:

$$
\tag{1.1}
\begin{align}
S[\phi^a] & =\int_{M} \mathbf{L}[\phi^a]
\end{align}
$$

Here, $\displaystyle{\phi^a}$ represents a collection of dynamical variables, with the configuration space encompassing all possible off-shell field configurations. The Lagrangian $\displaystyle{\mathcal{L}}$ manifests as a $\displaystyle{d}$-form on the spacetime manifold $\displaystyle{M}$, which admits a foliation by a family of Cauchy surfaces $\displaystyle{\Sigma_t}$ parameterized by a time function $\displaystyle{t}$. On the spatial boundary $\displaystyle{\Gamma}$ of $\displaystyle{M}$, appropriate boundary conditions constrain the dynamical fields $\displaystyle{\phi^a}$.

Performing a variation of the action $\displaystyle{S[\phi^a]}$ yields:

$$
\tag{1.2}
\begin{align}
\delta S[\phi^a] & =\int_{M}\mathbf{E}_{a}[\phi^a]\delta\phi^a+\theta[\phi^a,\delta\phi^a]|_{\Sigma_f}-\theta[\phi^a,\delta\phi^a]|_{\Sigma_i}
\end{align}
$$

where $\displaystyle{E_a[\phi^a]}$ denotes the Euler-Lagrange operator, whose vanishing determines the equations of motion $\displaystyle{E_a[\phi^a]=0}$. The term $\displaystyle{\theta[\phi^a,\delta\phi^a]}$ represents the symplectic potential—a 1-form on the configuration space. We introduce the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the manifold comprising all solutions to the equations of motion that satisfy the prescribed boundary conditions on $\displaystyle{\Gamma}$. The physical phase space $\displaystyle{\mathcal{P}}$ emerges as the quotient of this pre-phase space by gauge redundancies.

The pre-symplectic form $\displaystyle{\tilde{\omega}}$ arises naturally as the exterior derivative of the symplectic potential:

$$
\tag{1.3}
\begin{align}
\tilde{\omega} & =\delta\theta
\end{align}
$$

This pre-symplectic form constitutes a closed 2-form on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$:

$$
\tag{1.4}
\begin{align}
\delta^2\tilde{\omega} & =\delta^2\theta=0
\end{align}
$$

A crucial property of $\displaystyle{\tilde{\omega}}$ is its temporal invariance:

$$
\tag{1.5}
\begin{align}
\tilde{\omega}|_{\Sigma_1,\tilde{\mathcal{P}}}-\tilde{\omega}|_{\Sigma_2,\tilde{\mathcal{P}}}=0
\end{align}
$$

where the subscripts $\displaystyle{\Sigma_1}$ and $\displaystyle{\Sigma_2}$ denote evaluations on distinct Cauchy surfaces, with $\displaystyle{\tilde{\mathcal{P}}}$ indicating a pullback to the pre-phase space. However, $\displaystyle{\tilde{\omega}}$ fails to qualify as a genuine symplectic form due to its degeneracy on $\displaystyle{\tilde{\mathcal{P}}}$. We can construct the true symplectic form $\displaystyle{\omega}$ on the phase space $\displaystyle{\mathcal{P}}$ by projecting $\displaystyle{\tilde{\omega}}$ along the zero modes associated with gauge redundancies. For clarity in subsequent discussions, we shall assume that gauge redundancies have been eliminated, allowing us to work directly with the symplectic form $\displaystyle{\omega}$.

Suppose the general solution to the equations of motion $\displaystyle{E_a[\phi^a]=0}$ that respects the boundary conditions on $\displaystyle{\Gamma}$ admits the representation:

$$
\tag{1.6}
\begin{align}
\phi^a(x) & =\sum_n(a_{an}\sigma^a_n(x)+a^{\dagger}_{an}\sigma^{a*}_n(x))
\end{align}
$$

where we assume linear superposition of solutions. The functions $\displaystyle{\sigma^a_n(x)}$ constitute a complete orthonormal basis for the solution space $\displaystyle{\tilde{\mathcal{P}}}$, satisfying the orthonormality condition:

$$
\tag{1.7}
\begin{align}
\omega(\sigma^a_n,\sigma^b_m)=\delta_{nm}\delta^{ab}
\end{align}
$$

The notation $\displaystyle{\omega(\sigma^a_n,\sigma^b_m)}$ signifies the evaluation of the symplectic form $\displaystyle{\omega}$ with $\displaystyle{\delta\phi^a}$ replaced by $\displaystyle{\sigma^a_n}$ and $\displaystyle{\sigma^b_m}$. Under these conditions, the symplectic form assumes the canonical expression:

$$
\tag{1.8}
\begin{align}
\omega & =i\sum_{a,n}\delta a_{an}^{\dagger}\wedge\delta a_{an}
\end{align}
$$

For an observable $\displaystyle{\mathcal{O}[\phi^a]}$ evaluated on a time slice $\displaystyle{\Sigma}$, we define the corresponding Hamiltonian flow $\displaystyle{X_{\mathcal{O}}}$ as:

$$
\tag{1.9}
\begin{align}
X_{\mathcal{O},\Sigma} & = -i \sum_{a,n}\int_{\Sigma}\left(\frac{\delta\mathcal{O}}{\delta a_{an}^{\dagger}}\frac{\delta}{\delta a_{an}}-\frac{\delta\mathcal{O}}{\delta a_{an}}\frac{\delta}{\delta a^{\dagger}_{an}}\right)
\end{align}
$$

The Poisson bracket between two observables $\displaystyle{\mathcal{O}_1[\phi^a]}$ and $\displaystyle{\mathcal{O}_2[\phi^a]}$ is then defined by:

$$
\tag{1.10}
\begin{align}
\left\{\mathcal{O}_1|_{\Sigma},\mathcal{O}_2|_{\Sigma}\right\}_{\mathrm{PB}} & =X_{\mathcal{O}_1,\Sigma}\cdot X_{\mathcal{O}_2,\Sigma}\cdot\omega
\end{align}
$$

In particular, the fundamental Poisson brackets for the mode coefficients take the form:

$$
\tag{1.11}
\begin{align}
\left\{a_{an},a^{\dagger}_{am}\right\}_{\mathrm{PB}} & =\delta_{nm}\delta_{ab}
\end{align}
$$

## Covariant Phase Space Formalism at the Quantum Level

The transition to quantum theory proceeds by elevating the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ to a Hilbert space $\displaystyle{\mathcal{H}}$ through canonical quantization:

$$
\tag{1.12}
\begin{align}
\begin{cases}
[\mathcal{O}_1,\mathcal{O}_2]=i\left\{\mathcal{O}_1,\mathcal{O}_2\right\}_{\mathrm{PB}} & \text{for bosonic operators} \\
\left\{\mathcal{O}_1,\mathcal{O}_2\right\}=i\left\{\mathcal{O}_1,\mathcal{O}_2\right\}_{\mathrm{PB}} & \text{for fermionic operators}
\end{cases}
\end{align}
$$

*Footnote: The Groenewold-Van Hove theorem establishes the impossibility of a consistent quantization that preserves all Poisson bracket relations. We neglect higher-order terms that arise in geometric quantization or deformation quantization, as they are peripheral to our present discussion. Interested readers may consult specialized works on geometric quantization or deformation quantization for further details.*

In this quantum framework, the coefficients $\displaystyle{a_{an}}$ and $\displaystyle{a^{\dagger}_{an}}$ are promoted to operators—the annihilation and creation operators, respectively. The vacuum state $\displaystyle{|0\rangle}$ is characterized as the state annihilated by all annihilation operators $\displaystyle{a_{an}}$. The complete Fock space $\displaystyle{\mathcal{H}}$ encompasses the vacuum state $\displaystyle{|0\rangle}$, single-particle states $\displaystyle{|n\rangle}$ generated by applying creation operators $\displaystyle{a^{\dagger}_{an}}$ to the vacuum, and multi-particle states $\displaystyle{|n_1,n_2,\ldots\rangle}$ constructed as tensor products of single-particle states with appropriate symmetrization for bosons or anti-symmetrization for fermions.

Correlation functions, fundamental to connecting theory with observable phenomena, are defined as vacuum expectation values of operator products:

$$
\tag{1.13}
\begin{align}
\braket{\mathcal{O}_1\dots\mathcal{O}_n}= \braket{0|\mathcal{O}_1\dots\mathcal{O}_n|0}
\end{align}
$$

Time-ordered correlation functions, essential for perturbation theory, take the form:

$$
\tag{1.14}
\begin{align}
\braket{\mathcal{T}\mathcal{O}_1\dots\mathcal{O}_n} & =\braket{0|\mathcal{T}\mathcal{O}_1\dots\mathcal{O}_n|0}
\end{align}
$$

where the time-ordering operator $\displaystyle{\mathcal{T}}$ arranges operators according to their temporal arguments, with earlier times positioned to the right. A notable feature of these time-ordered correlation functions is their independence from the specific choice of time slices $\displaystyle{\Sigma_t}$.

## Noether Theorem and Ward Identity

We now examine symmetries and their associated conservation laws. A symmetry transformation can be represented by a vector field $\displaystyle{X_{\lambda}}$ acting on the configuration space:

$$
\tag{1.15}
\begin{align}
X_{\lambda} & =\int\mathrm{d}^{d}x\delta_{\lambda}\phi^a(x)\frac{\delta}{\delta\phi^a(x)}
\end{align}
$$

When this symmetry acts on the action $\displaystyle{S[\phi^a]}$, we obtain:

$$
\tag{1.16}
\begin{align}
X_{\lambda}\cdot S[\phi^a] & =\alpha_{\lambda}[\phi^a]|_{\Sigma_f}-\alpha_{\lambda}[\phi^a]|_{\Sigma_i}
\end{align}
$$

where we assume the absence of a classical anomaly term $\displaystyle{\beta_{\lambda}}$ (which would be configuration-independent and supported on $\displaystyle{M}$ and $\displaystyle{\Gamma}$). The Noether charge associated with this symmetry is defined as:

$$
\tag{1.17}
\begin{align}
H_{\lambda} & =X_{\lambda}\cdot\theta-\alpha_{\lambda}
\end{align}
$$

The Noether theorem can be formulated in two complementary parts:

1. The on-shell Noether charge $\displaystyle{H_{\lambda}}$ exhibits temporal invariance:

$$
\tag{1.18}
\begin{align}
H_{\lambda}|_{\Sigma_f,\mathcal{P}}-H_{\lambda}|_{\Sigma_i,\mathcal{P}} &=0
\end{align}
$$

1. The symmetry $\displaystyle{X_{\lambda}}$ and its associated Noether charge $\displaystyle{H_{\lambda}}$ satisfy the fundamental relation:

$$
\tag{1.19}
\begin{align}
(X_{\lambda}\cdot\omega+\delta H_{\lambda})|_{\mathcal{P}} & =0
\end{align}
$$

The classical Noether theorem embodied in equation (1.18) elevates to quantum Ward identities:

$$
\tag{1.20}
\begin{align}
\braket{H_{\lambda}\mathcal{O}_1\dots\mathcal{O}_n}|_{\Sigma_f,\mathcal{P}}-\braket{\mathcal{O}_1\dots\mathcal{O}_n H_{\lambda}}|_{\Sigma_i,\mathcal{P}}+\sum^n_{i=1}\braket{\mathcal{O}_1\dots(X_{\lambda}\cdot\delta\mathcal{O}_i)\dots\mathcal{O}_n}=0
\end{align}
$$

where $\displaystyle{X_{\lambda}\cdot\delta\mathcal{O}_i}$ represents the infinitesimal transformation of the operator $\displaystyle{\mathcal{O}_i}$ under the symmetry generated by $\displaystyle{X_{\lambda}}$.
