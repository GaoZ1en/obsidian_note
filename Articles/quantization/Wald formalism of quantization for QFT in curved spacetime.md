# quantum mechanics

consider a system with action

$$\tag{1.1}
\begin{align}
S & =\int _{t_{i}}^{t_{f}}L[q(t)]\mathrm{d}t
\end{align}
$$

take a variation, we have eom and symplectic potential

$$\tag{1.2}
\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta q\mathrm{d}t+\theta|^{t_{f}}_{t_{i}} \\
E & =\frac{\delta L}{\delta q}-\frac{\mathrm{d}}{\mathrm{d}t} \frac{\delta L}{\delta \dot{q}} \\
\theta & =\frac{\delta L}{\delta\dot{q}}\delta q
\end{align}
$$

the symplectic form is obtained by taking a variation of the symplectic potential

$$\tag{1.3}
\begin{align}
\omega & =\delta \theta \\
 & =\delta\left( \frac{\delta L}{\delta \dot{q}} \right)\wedge \delta q
\end{align}
$$

suppose $\displaystyle{q(t)=q[p_{0},q_{0}]}$ solves the eom and the symplectic form can be written as

$$\tag{1.4}
\begin{align}
\omega & =\delta p_{0}\wedge \delta q_{0}
\end{align}
$$

suppose $\displaystyle{\frac{\partial}{\partial \tau}}$ generates a symmetry of the action, i.e., there is a vector field $\displaystyle{X_{\tau}}$ corresponding to $\displaystyle{\frac{\partial}{\partial \tau}}$

$$\tag{1.5}
\begin{align}
X_{\tau} & =\int \mathrm{d}\tau \dot{q} \frac{\delta}{\delta q}
\end{align}
$$

and satisfies

the corresponding Noether charge is

