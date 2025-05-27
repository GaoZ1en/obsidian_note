## Canonical quantization in covariant phase space formalism

### covariant phase space formalism in classical level

let $\displaystyle{S[\phi ^{a}]}$ be a action of a $\displaystyle{d}$ dimensional system in the Lagrangian formalism

$$\tag{1.1}
\begin{align}
S[\phi ^{a}] & =\int _{M} \mathbf{L}[\phi ^{a}]
\end{align}
$$

here $\displaystyle{\phi ^{a}}$ is a collection of dynamical variables, the set of configuration is defined as the space of all 
off-shell configurations $\displaystyle{\phi ^{a}}$. $\displaystyle{\mathcal{L}}$ is a Lagrangian $\displaystyle{d}$-form. the spacetime region $\displaystyle{M}$ is a $\displaystyle{d}$ dimensional manifold which is foliated by a family of Cauchy surfaces $\displaystyle{\Sigma _{t}}$ parameterized by a time function $\displaystyle{t}$. on the spatial boundary $\displaystyle{\Gamma}$ of $\displaystyle{M}$, we may adopt suitable boundary conditions for the dynamical fields $\displaystyle{\phi ^{a}}$. 

we first make a variation of the action $\displaystyle{S[\phi ^{a}]}$. we have

$$\tag{1.2}
\begin{align}
\delta S[\phi ^{a}] & =\int _{M}\mathbf{E}_{a}[\phi ^{a}]\delta \phi ^{a}+\theta[\phi ^{a},\delta\phi ^{a}]|_{\Sigma _{f}}-\theta[\phi ^{a},\delta\phi ^{a}]|_{\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{a}[\phi ^{a}]}$ is the Euler-Lagrange operator, which defines the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ for $\displaystyle{\phi ^{a}}$. and $\displaystyle{\theta[\phi ^{a},\delta \phi ^{a}]}$ is called the sympectic potential, which is a 1-form of the set of configurations. we define the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the space of all solutions of the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfy the boundary condition on $\displaystyle{\Gamma}$, and the phase space $\displaystyle{\mathcal{P}}$ is defined as the quotient space of the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ by the gauge redundancies. we define the pre-symplectic form $\displaystyle{\tilde{\omega}}$ as the variation of the symplectic potential

$$\tag{1.3}
\begin{align}
\tilde{\omega} & =\delta \theta
\end{align}
$$

the pre-symplectic form $\displaystyle{\tilde{\omega}}$ is a closed 2-form on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$

$$\tag{1.4}
\begin{align}
\delta ^{2}\tilde{\omega} & =\delta ^{2}\theta=0
\end{align}
$$

and we point out that $\displaystyle{\tilde{\omega}}$ is independent of time

$$\tag{1.5}
\begin{align}
\tilde{\omega}|_{\Sigma _{1},\tilde{\mathcal{P}}}-\tilde{\omega}|_{\Sigma _{2},\tilde{\mathcal{P}}}=0
\end{align}
$$

here the subscript $\displaystyle{\Sigma _{1}}$ and $\displaystyle{\Sigma _{2}}$ denote two different Cauchy surfaces, and $\displaystyle{\tilde{\mathcal{P}}}$ denotes a pullback to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$. however the pre-symplectic form $\displaystyle{\tilde{\omega}}$ is not a symplectic form, because it is degenerate on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$. we can define the symplectic form $\displaystyle{\omega}$ on the phase space $\displaystyle{\mathcal{P}}$ as the quotient of the pre-symplectic form $\displaystyle{\tilde{\omega}}$ by zero modes related to gauge redundancies. without loss of generality, in the following discussion, we will assume that we have already removed the gauge redundancies and defined the symplectic form $\displaystyle{\omega}$ for simplicity.

suppose the general solution of the equation of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfies the boundary condition on $\displaystyle{\Gamma}$ is given by

$$\tag{1.6}
\begin{align}
\phi ^{a}(x) & =\sum _{n}(a_{an}\sigma ^{a} _{n}(x)+a^{\dagger}_{an}\sigma ^{a*}_{n}(x))
\end{align}
$$

here we assume that such solutions can be superposed. and $\displaystyle{\sigma ^{a}_{n}(x)}$ is a set of complete orthonormal basis of the solution space $\displaystyle{\tilde{\mathcal{P}}}$, which satisfies suitable orthonormality condition

$$\tag{1.7}
\begin{align}
\omega(\sigma ^{a}_{n},\sigma ^{b}_{m})=\delta _{nm}\delta ^{ab}
\end{align}
$$

here $\displaystyle{\omega(\sigma ^{a}_{n},\sigma ^{b}_{m})}$ means that we replace $\displaystyle{\delta \phi ^{a}}$ appeared in the symplectic form $\displaystyle{\omega}$ with $\displaystyle{\sigma ^{a}_{n}}$ and $\displaystyle{\sigma ^{b}_{m}}$. then the symplectic form can be written in a standard form

$$\tag{1.8}
\begin{align}
\omega & =i\sum _{a,n}\delta a_{an}^{\dagger}\wedge \delta a_{an}
\end{align}
$$

we define the Hamiltonian flow $\displaystyle{X_{\mathcal{O}}}$ corresponding to an observable $\displaystyle{\mathcal{O}[\phi ^{a}]}$ at time slice $\displaystyle{\Sigma}$ as

$$\tag{1.9}
\begin{align}
X_{\mathcal{O},\Sigma} & = i \sum _{a,n}\int _{\Sigma}\left(  \frac{\delta \mathcal{O}}{\delta a_{an}^{\dagger}} \frac{\delta}{\delta a_{an}}-\frac{\delta \mathcal{O}}{\delta a_{an}} \frac{\delta}{\delta a^{\dagger}_{an}}\right)
\end{align}
$$

then the Poisson bracket of two observables $\displaystyle{\mathcal{O}_{1}[\phi ^{a}]}$ and $\displaystyle{\mathcal{O}_{2}[\phi ^{a}]}$ is defined as

$$\tag{1.10}
\begin{align}
\left\{\mathcal{O}_{1}|_{\Sigma},\mathcal{O}_{2}|_{\Sigma}\right\}_{\mathrm{PB}} & =X_{\mathcal{O}_{1},\Sigma}\cdot X_{\mathcal{O}_{2},\Sigma}\cdot \omega
\end{align}
$$

in particular, we have

$$\tag{1.11}
\begin{align}
\left\{a_{an},a^{\dagger}_{am}\right\}_{\mathrm{PB}} & =\delta _{nm}\delta _{ab} \\
\end{align}
$$

### covariant phase space formalism in quantum level

we promote the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ to a Hilbert space $\displaystyle{\mathcal{H}}$ by imposing canonical quantization

$$\tag{1.12}
\begin{align}
\begin{cases}
[\mathcal{O}_{1},\mathcal{O}_{2}]=i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{PB}}  & \text{ for bosonic operators } \\
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}=i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{PB}} & \text{ for fermionic operators } \\
\end{cases}
\end{align}
$$

footnote: the [[Groenewold-Van Hove theorem]] points out the impossibility of consistent quantization preserving all Poisson bracket relations. here we ignore the higher order terms appearing in the geometric quantization or the deformation quantization, which is irrelevant to our discussion. one may refer to [geometric quantization or deformation quantization] for more details.

the coefficients $\displaystyle{a_{an}}$ and $\displaystyle{a^{\dagger}_{an}}$ are promoted to operators, which is called the creation and annihilation operators. the vacuum state $\displaystyle{|0\rangle}$ is defined as the state that annihilated by all annihilation operators $\displaystyle{a_{an}}$. the Fock space $\displaystyle{\mathcal{H}}$ is spanned by the vacuum state $\displaystyle{|0\rangle}$, single particle states $\displaystyle{|n\rangle}$ which are defined by the action of the creation operators $\displaystyle{a^{\dagger}_{an}}$ on the vacuum state $\displaystyle{\ket{0}}$, and multi-particle states $\displaystyle{|n_{1},n_{2},\ldots \rangle}$, which are defined by tensor products of single particle states and suitable symmetrization for bosons or anti-symmetrization for fermions.

correlation functions are defined as the expectation value of the product of operators in the vacuum state as usual

$$\tag{1.13}
\begin{align}
\braket{ \mathcal{O}_{1}\dots \mathcal{O}_{n} }= \braket{ 0|\mathcal{O}_{1}\dots \mathcal{O}_{n}|0 } 
\end{align}
$$

time ordered correlation functions are defined as

$$\tag{1.14}
\begin{align}
\braket{ \mathcal{T}\mathcal{O}_{1}\dots \mathcal{O}_{n} } & =\braket{ 0|\mathcal{T}\mathcal{O}_{1}\dots \mathcal{O}_{n}|0 }
\end{align}
$$

where the time ordering operator $\displaystyle{\mathcal{T}}$ orders the operators according to their time arguments, with the earliest time on the right. we emphasize that the time ordering correlation function is independent of the choice of time slices $\displaystyle{\Sigma _{t}}$.