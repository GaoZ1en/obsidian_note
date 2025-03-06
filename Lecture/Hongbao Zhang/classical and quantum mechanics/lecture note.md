### reference

1. nlab
2. covariant phase space with boundaries
3. 物理学家用微分几何
## some symplectic geometry

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
X_{H} & =\left(\frac{\partial H}{\partial p_{i}} \frac{\partial}{\partial q^{i}}-\frac{\partial H}{\partial q^{i}} \frac{\partial}{\partial p_{i}}\right) \\
\left\{f,g\right\} & =\left(\frac{\partial f}{\partial q^{i}} \frac{\partial g}{\partial p_{i}}-\frac{\partial f}{\partial p_{i}} \frac{\partial g}{\partial q^{i}}\right)
\end{align}
$$