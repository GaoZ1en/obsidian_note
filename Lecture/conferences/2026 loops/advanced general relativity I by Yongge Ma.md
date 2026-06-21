so many people...

1. ideas of general relativity
1. Lagrangian formalism of general relativity
1. Hamiltonian formalism of general relativity
1. ideas of LQG
1. Palatini formalism of general relativity

---

## ideas of general relativity

*general relativity as a gauge theory*

suppose $\displaystyle{\phi:M\to M}$ is a diffeomorphism, and $\displaystyle{g}$ is a solution to the eom

$$\begin{align}
G_{\mu \nu}[g] & =0
\end{align}$$

then we have

$$\begin{align}
G_{\mu \nu}[\phi^{*}g]=\phi ^{*}G_{\mu \nu}[g]=0
\end{align}$$

so $\displaystyle{\phi ^{*}g}$ is also a solution to the eom.

*principle of general covariance*

Kretschmann states that "any physical theory originally written in a special coordiante system can be recast in geometric, coordinabte-free language", thus general covariance does not mean that any physical law are independent from the coordinate transformation.

Wald states that "spacetime metric and quantities derivable from it are the only spacetime quantities that can appear in the equation of physics"

Ma states that "*in the expressions of physics, only the dynamical variables, including the spacetime metric and quantities derivable from it, can exert substantial effects on other physical variables*". this may be the core idea of the general covariance.

*background independence*

required by general covariance and gauge redundancy.

## Lagrangian formalism of general relativity

see covariant phase space formalism with boundaries.

$$\begin{align}
S[g] & =\frac{1}{2\kappa}\int _{U} \mathrm{d}^{d}x\sqrt{ -g }R+\frac{1}{\kappa}\int _{\Gamma} \mathrm{d}^{d-1}x\sqrt{ -\gamma }K
\end{align}$$

here $\displaystyle{U}$ is a region of the spacetime $\displaystyle{M}$ and we assume its boundary $\displaystyle{\partial U}$ contains no null parts, and $\displaystyle{\Gamma}$ is the timelike part of $\displaystyle{\partial U}$.

when coupling to matter, we add matter action

$$\begin{align}
S[g,\phi] & =S[g]+S_{M}[\phi,g]
\end{align}$$

and the eom is given by

$$\begin{align}
G_{\mu \nu} & =\kappa T_{\mu \nu}
\end{align}$$

## Hamiltonian formalism of general relativity

constraints. primary constraints and secondary constraints. we denote all the constraints as $\displaystyle{\chi _{\alpha}, \alpha \in I}$. consider the Poisson brackets

$$\begin{align}
C_{\alpha \beta} & =\left\{\chi _{\alpha},\chi _{\beta}\right\}_{\text{P}}
\end{align}$$

if $\displaystyle{C_{\alpha \beta}}$ is non-invertible, then the system with constraints $\displaystyle{\left\{\chi _{\alpha}\right\}}$ is called the first class, or gauge systems, such as Yang-Mills theory and general relativity. if $\displaystyle{C_{\alpha \beta}}$ is invertible, then second class, such as the Proca theory.

now we consider the general relativity. see [[Note/useful results/ADM formalism|ADM formalism]].

---

the symplectic form is given by

$$\begin{align}
\omega & =\int \mathrm{d}^{d-1}x \delta h_{ab}\wedge \delta \tilde{\pi}^{cd}
\end{align}$$

the Poisson bracket

$$\begin{align}
\left\{h_{ab}(x),\tilde{\pi} ^{cd}(y)\right\} & =\delta ^{c}_{(a}\delta ^{d}_{b)} \delta ^{3}(x-y)
\end{align}$$

we have the hypersurface deformation algebra

$$\begin{align}
\left\{\mathcal{V}(\vec{N}),\mathcal{V}(\vec{N}')\right\} & =V([\vec{N},\vec{N}']) \\
\left\{\mathcal{V}(\vec{N}),\mathcal{S}(M)\right\} & =-S(\mathcal{L}_{\vec{N}}M) \\
\left\{\mathcal{S}(M),\mathcal{S}(N)\right\} & =-\mathcal{V}((N\nabla _{b}M-M\nabla _{b}N)h^{ab})
\end{align}$$

where $\displaystyle{\mathcal{V}(\vec{N})\equiv \int _{\Sigma}\mathrm{d}^{d-1}xN_{\mu}C^{b}}$ and $\displaystyle{\mathcal{S}(M)=\int _{\Sigma}\mathrm{d}^{d-1}xMC}$. the constraints generates gauge transformations, which can be summarized as vectors on the configuration space

$$\begin{align}
X_{\mathcal{V}(\vec{N})} & =\int _{\Sigma}\mathrm{d}^{3}x\left[\mathcal{L}_{\vec{N}}h_{ab} \frac{\delta}{\delta h_{ab}}+ \mathcal{L}_{\vec{N}} \pi ^{ab} \frac{\delta}{\delta \tilde{\pi}^{ab}}\right] \\
X_{\mathcal{S}(N)} & =\int _{\Sigma}\mathrm{d}^{3}x\left[\mathcal{L}_{N\tau}h_{ab} \frac{\delta}{\delta h_{ab}}+\mathcal{L}_{N\tau}\tilde{\pi} ^{ab} \frac{\delta}{\delta \tilde{\pi}^{ab}}\right]
\end{align}$$

## ideas of LQG

the idea is to combine basic principles of general relativity and quantum mechanics. and the dynamical dofs are chosen to be holonomies $\displaystyle{h(e)}$ and electric flux $\displaystyle{\tilde{E}(S)}$.
