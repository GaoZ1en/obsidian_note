### reference

1. nlab, phase space
2. covariant phase space with boundaries
3. the following paper, not published
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

here we do not assume that the Lagrangian is covariant, i.e., we have

$$\tag{2.6}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L} & =\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

and then define the Noether current

$$\tag{2.6}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \Theta-\alpha _{\xi}
\end{align}
$$

we can see that (2.5) and (2.6) are some generalization of $\displaystyle{H_{\xi}=X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}}$.

then we can show that the Noether current satisfies the Noether theorem

1. $\displaystyle{\frac{\mathrm{d}}{\mathrm{d}t}H_{\xi}\Big|_{\tilde{\mathcal{P}}}=\beta _{\xi}}$
2. $\displaystyle{X_{\xi}\cdot \delta E|_{\tilde{\mathcal{P}}}=0}$
3. $\displaystyle{X_{\xi}\cdot \omega|_{\tilde{\mathcal{P}}}=-\delta H_{\xi}|_{\tilde{\mathcal{P}}}}$

here we give the prove...
#### example 1: particle with potential

consider the action

$$\tag{2.7}
\begin{align}
S=\int ^{t_{f}}_{t_{i}}\left( \frac{1}{2}m\dot{x}^{2}-V(x) \right)\mathrm{d}t=\int ^{t_{f}}_{t_{i}}\mathbf{L}[x(t);t]
\end{align}
$$

make a variation

$$\tag{2.8}
\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}\left(-m\ddot{x}-\frac{\partial V}{\partial x}\right)\delta t\delta x+m\dot{x}\delta x|^{t_{f}}_{t_{i}}
\end{align}
$$

in some articles, expecially in mathematical articles, one write down $\displaystyle{\{\mathrm{d},\delta\}=0}$, and we now have $\displaystyle{[\mathrm{d},\delta]=0}$. I think this is because they take integration-by-part into consideration, and change the definition of $\displaystyle{\mathrm{d}}$

$$\tag{2.9}
\begin{align}
\text{waiting to be completed}
\end{align}
$$

what is a symmetry?

consider the following symmetry transformation

$$\tag{2.10}
\begin{align}
X=\int \mathrm{d}t \dot{x}(t) \frac{\delta}{\delta x(t)}
\end{align}
$$

act this symmetry on the action, we have

$$\tag{2.11}
\begin{align}
X\cdot \delta S & =\int \mathrm{d}t'\dot{x}(t') \frac{\delta}{\delta x(t')}\cdot \int ^{t_{f}}_{t_{i}}\left( m\dot{x}\delta \dot{x}(t)-\frac{\partial V}{\partial x}\delta x(t) \right)\mathrm{d}t \\
 & =\int ^{t_{f}}_{t_{i}}\mathrm{d}t\int \mathrm{d}t'\delta(t-t')\left( m\dot{x}\ddot{x}(t')-\frac{\partial V}{\partial x}\dot{x}(t') \right) \\
 & =\int ^{t_{f}}_{t_{i}} \frac{\mathrm{d}}{\mathrm{d}t}\left( \frac{1}{2}m \dot{x}^{2}-V \right)\mathrm{d}t=\left( \frac{1}{2}m\dot{x}^{2}-V \right)\Big|^{t_{f}}_{t_{i}}=\alpha|^{t_{f}}_{t_{i}}
\end{align}
$$

then

$$\tag{2.12}
\begin{align}
H & = X\cdot \Theta-\alpha \\
 & = \int \mathrm{d}t'\dot{x}(t') \frac{\delta}{\delta x(t')}\cdot m\dot{x}\delta x(t)-\left( \frac{1}{2}m\dot{x}^{2}-V \right) \\
 & =\frac{1}{2}m\dot{x}^{2}+V(x)
\end{align}
$$

have got the usual result. suppose the potential $\displaystyle{V(x)}$ only depend on $\displaystyle{|x|}$, then consider the rotation transformation

I can not gives some natural example for $\displaystyle{\beta _{\xi}}$...

### 