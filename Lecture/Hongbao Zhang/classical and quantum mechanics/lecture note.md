### reference

1. nlab, phase space
2. covariant phase space with boundaries
3. 物理学家用微分几何
## some symplectic geometry, canonical phase space.

symplectic manifold is a even-dimensional manifold $\displaystyle{M}$ with a symplectic structure $\displaystyle{\omega}$, which is closed and non-degenerate 2-form.

$$\tag{1.1}
\begin{align}
\mathrm{d}\omega=0
\end{align}
$$

the simplest example is the cotangent bundle $\displaystyle{T^*M}$ of some manifold $\displaystyle{M}$, which is called the canonical phase space.

given a function $\displaystyle{H\in \Omega ^{0}(M):M\to \mathbb{R}}$, if we can define a Hamilton vector $\displaystyle{X_{H}\in TM}$, such that

$$\tag{1.2}
\begin{align}
X_{H}\cdot \omega=-\mathrm{d}H
\end{align}
$$

then we can define the Poisson bracket. for two functions $\displaystyle{f,g\in \Omega ^{0}(M)}$, we have

$$\tag{1.3}
\begin{align}
\left\{f,g\right\} & =\omega(X_{f},X_{g})
\end{align}
$$

in symplectic geometry, there always exists a local coordinates that $\displaystyle{\left\{q^{i},p_{i}\right\},i=1,2,\dots,n}$, such that the symplectic structure $\displaystyle{\omega}$, Hamilton vector $\displaystyle{X_{H}}$, and the Poisson bracket $\displaystyle{\left\{f,g\right\}}$ takes the form

$$\tag{1.4}
\begin{align}
\omega & =\mathrm{d}p_{i}\wedge dq^{i} \\
X_{H} & =\frac{\partial H}{\partial q^{i}} \frac{\partial}{\partial p_{i}}-\frac{\partial H}{\partial p_{i}} \frac{\partial}{\partial q^{i}} \\
\left\{f,g\right\} & =\frac{\partial f}{\partial q^{i}} \frac{\partial g}{\partial p_{i}}-\frac{\partial f}{\partial p_{i}} \frac{\partial g}{\partial q^{i}}
\end{align}
$$

then we return to the traditional Hamiltonian formalism.

## covariant phase space

what does the "covariant" stand for? the "covariant" in "covariant phase space" is to indicate that it is obtained without any choices of foliation of spacetime by Cauchy surfaces.

there are two routes to the construction of the covariant phase space, presymplectic structure and the Poisson structure(can not understand)

### 0+1 dimensional systems

spacetime, configuration, the set of configuration, target space.

Lagrangian

$$\tag{2.1}
\begin{align}
\mathbf{L} & =L[q(t)]\mathrm{d}t
\end{align}
$$

take a variation

$$\tag{2.2}
\begin{align}
\delta \mathbf{L}=\mathbf{E}\delta q+\mathrm{d}\Theta
\end{align}
$$

how to understand variation? 

where $\displaystyle{\mathbf{E}}$ is the Euler-Lagrange operator, and $\displaystyle{\Theta}$ is the presymplectic potential.

the presymplectic form is

$$\tag{2.3}
\begin{align}
\omega=\delta \Theta
\end{align}
$$

symmetric transformation can be represented as vector in 

$$\tag{2.4}
\begin{align}
X_{\xi} & =\int \mathrm{d}t\delta _{\xi}q(t) \frac{\delta}{\delta q(t)}
\end{align}
$$

act this symmetry on the Lagrangian

$$\tag{2.5}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\mathrm{d}\alpha _{\xi}+\beta _{\xi}
\end{align}
$$

and then define the Noether current

$$\tag{.}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \Theta-\alpha _{\xi}
\end{align}
$$

