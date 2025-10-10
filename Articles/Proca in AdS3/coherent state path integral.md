we start from a harmonic ocsillator.

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}\right)
\end{align}$$

take a variation, we get the eom and symplectic potential

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta x+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E & =-\ddot{x}-\omega ^{2}x \\
\theta & =\dot{x}\delta x
\end{align}$$

take a further variation of the symplectic potential, we get the symplectic form

$$\begin{align}
\omega & =\delta \dot{x}\wedge \delta x
\end{align}$$

the general solution of the eom reads

$$\begin{align}
x & =\frac{1}{\sqrt{ 2\omega }}\left(ae^{-i\omega t}+a^{\dagger}e^{i\omega t}\right)
\end{align}$$

under this parametrization, the symplectic form becomes

$$\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}$$

which gives the standard Poisson bracket

$$\begin{align}
\left\{a^{\dagger},a\right\} & =-i
\end{align}$$

this system has a time translation symmetry

$$\begin{align}
X_{H} & =\int \mathrm{d}t \dot{x} \frac{\delta}{\delta x}
\end{align}$$

act this symmetry on the action

$$\begin{align}
X_{H}\cdot \delta S & =\alpha _{H}|_{t_{f}}-\alpha _{H}|_{t_{i}} \\
\alpha _{H} & =\frac{1}{2}\left(\dot{x}^{2}-\omega ^{2}x\right)
\end{align}$$

then the corresponding Noether charge (we identify it as Hamiltonian) is given by

$$\begin{align}
H & =X_{H}\cdot \theta-\alpha \\
 & =\frac{1}{2}\dot{x}^{2}+\frac{1}{2}\omega ^{2}x^{2} \\
 & =\omega\left(a^{\dagger}a+aa^{\dagger}\right)
\end{align}$$

we lift $\displaystyle{a}$ and $\displaystyle{a^{\dagger}}$ to operators and the commutation relation is given by

$$\begin{align}
[a^{\dagger},a] & =i\left\{a^{\dagger},a\right\}=1
\end{align}$$

vaccum state $\displaystyle{\ket{0}}$ is defined as

$$\tag{.}\begin{align}

\end{align}$$