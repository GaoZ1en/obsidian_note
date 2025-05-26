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

where $\displaystyle{E_{a}[\phi ^{a}]}$ is the Euler-Lagrange operator, which defines the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ for $\displaystyle{\phi ^{a}}$. and $\displaystyle{\theta[\phi ^{a},\delta \phi ^{a}]}$ is called the sympectic potential, which is a 1-form of the set of configurations. we define the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the space of all solutions of the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfy the boundary condition on $\displaystyle{\Gamma}$. we define the pre-symplectic form $\displaystyle{\tilde{\omega}}$ as the variation of the symplectic potential

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

here the subscript $\displaystyle{\Sigma _{1}}$ and $\displaystyle{\Sigma _{2}}$ denote two different Cauchy surfaces, and $\displaystyle{\tilde{\mathcal{P}}}$ denotes a pullback to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$.

suppose the general solution of the equation of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfies the boundary condition on $\displaystyle{\Gamma}$ is given by

$$\tag{1.6}
\begin{align}
\phi ^{a}(x) & =\sum _{n}(a_{an}\sigma ^{a} _{n}(x)+a^{\dagger}_{an}\sigma ^{a*}_{n}(x))
\end{align}
$$

here we assume that such solutions can be superposed, and $\displaystyle{\sigma ^{a}_{n}(x)}$s are 