$$\tag{1.1}
\begin{align}
L & =\frac{1}{2}m\dot{x}^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}-\frac{1}{2}kx^{2}
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta L & =-(m\ddot{x}+kx-\lambda \dot{\phi})\delta x+(\phi-\lambda \dot{x}) \delta \phi+\frac{\mathrm{d}}{\mathrm{d}t}(m\dot{x}\delta x-\lambda \phi \delta x)
\end{align}
$$

integrate out $\displaystyle{\phi}$, we have

$$\tag{1.3}
\begin{align}
\delta L & =-((m+\lambda ^{2})\ddot{x}+kx)\delta x + \frac{\mathrm{d}}{\mathrm{d}t}((m+\lambda ^{2})\dot{x}\delta x) \\
 & =E\delta x+\frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

then the symplectic form is

$$\tag{1.4}
\begin{align}
\omega=\delta \theta & =(m+\lambda ^{2})\delta \dot{x}\wedge \delta x
\end{align}
$$

make the following mode expansion

$$\tag{1.5}
\begin{align}
x= \frac{1}{}e^{i\omega t}a+ \frac{1}{}e^{-i\omega t}a^{\dagger}
\end{align}
$$