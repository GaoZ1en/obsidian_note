Newtonian formalism, deterministic
Lagrangian formalism, equivalent to Newtonian formalism...?
Hamiltonian formalism, equivalent to Newtonian formalism...?

some standard computation for Lagrangian formalism.
related to path integral formalism

$$
\tag{1.1}
\begin{align}
\langle x(t_{f})|x(t_{i})\rangle\sim \int _{t_{i}}^{t_{f}} \mathcal{D}xe^{iS[x]}
\end{align}
$$

$$
\tag{.}
\begin{align}
\frac{8\times9}{12}=6
\end{align}
$$

field is a section of some bundle of spacetime.

some basic covariant phase space formalism.

the 2.1 section of my thesis

感觉没有明确的讲相空间是什么，下周补上

some Hamiltonian mechanics

$$
\tag{.}
\begin{align}
\mathcal{L}_{X_{\xi}}A=\mathcal{L}_{\xi}A
\end{align}
$$

is not always satisfied.

怎么理解$\displaystyle{\delta x(t)}$的矢量理解？

$$
\tag{.}
\begin{align}
\delta J_{\xi} & =\delta(X_{\xi}\cdot \Theta)-\delta(\xi \cdot \mathbf{L}) \\
 & =\delta(X_{\xi}\cdot \Theta)-\xi \cdot \delta \mathbf{L} \\
 & =\delta(X_{\xi}\cdot \Theta)-\xi \cdot(\mathbf{E}\delta \phi+\mathrm{d}\Theta) \\
 & =\mathcal{L}_{X_{\xi}}\Theta-X_{\xi}\cdot \Omega-\xi \cdot \mathbf{E}\delta \phi-\xi \cdot \mathrm{d}\Theta \\
 & =\mathcal{L}_{\xi}\Theta-\xi \cdot \mathrm{d}\Theta-X_{\xi}\cdot \Omega-\xi \cdot \mathbf{E}\delta \phi \\
 & \approx \mathrm{d}(\xi \cdot \Theta)-X_{\xi}\cdot \Omega
\end{align}
$$

考虑证明

$$
\tag{.}
\begin{align}
\dot{p}=\left\{p,H\right\}
\end{align}
$$

$$
\tag{.}
\begin{align}
H=\frac{p^2}{2m}+V(x)
\end{align}
$$

一般的解

$$
\tag{.}
\begin{align}
x(t)=x(x_{0},p_{0};t) \\
p(t)=p(x_{0},p_{0};t)
\end{align}
$$

那么

$$
\tag{.}
\begin{align}
\dot{p}=\left\{p,H\right\}=X_{\xi}\cdot \delta p|_{\tilde{\mathcal{P}}} & = \Omega ^{AB}(\delta p)_{A}(\delta H)_{B}|_{\tilde{\mathcal{P}}} \\
 &  =\left( \frac{\delta}{\delta x} \otimes \frac{\delta}{\delta p}-\frac{\delta}{\delta p}\otimes  \frac{\delta}{\delta x} \right)^{AB}(\delta p)_{A}\left( \frac{p\delta p}{m}+V'(x)\delta x \right)_{B}\Big|_{\tilde{\mathcal{P}}} \\
 & =\left( \frac{\delta}{\delta x} \otimes \frac{\delta}{\delta p}-\frac{\delta}{\delta p}\otimes  \frac{\delta}{\delta x} \right)^{AB}(\delta p)_{A}(V'(x)\delta x)_{B}\Big|_{\tilde{\mathcal{P}}} \\
 & =-V'(x)|_{\tilde{\mathcal{P}}}
\end{align}
$$

states and operators are the same classically
