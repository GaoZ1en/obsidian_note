in this file we will calculate the time-ordered correlation function of Proca field via canonical quantization in CPS formalism. as a simplified version, we will first consider the scalar field.

## scalar

consider a free scalar in $\displaystyle{d}$-dimension

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\varepsilon(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & = \int _{M}\varepsilon(\nabla ^{2}-m^{2})\phi \delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
 & =\int _{M}\mathbf{E}\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

then the symplectic form is

$$\tag{1.3}
\begin{align}
\omega=\delta \theta & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\delta \pi \wedge \delta \phi
\end{align}
$$

here we define the momentum $\displaystyle{\pi}$ conjugate to $\displaystyle{\phi}$ as $\displaystyle{\pi=\tau ^{\mu}\nabla _{\mu}\phi}$. the Hamilton vector $\displaystyle{X_{f}}$ corresponding observable $\displaystyle{f[\phi,\pi]}$ can be written as

$$\tag{1.4}
\begin{align}
X_{f}
 & =\int _{M,\Sigma?}\varepsilon\left( \frac{\delta f}{\delta \phi} \frac{\delta}{\delta \pi}- \frac{\delta f}{\delta \pi} \frac{\delta}{\delta \phi}\right)
\end{align}
$$

then the Poisson bracket between $\displaystyle{f}$ and $\displaystyle{g}$ is defined as

$$\tag{1.5}
\begin{align}
\left\{f,g\right\} &=X_{f}\cdot X_{g}\cdot \omega \\
 & =\int _{M}\varepsilon\left(\frac{\delta f}{\delta \phi} \frac{\delta g}{\delta \pi}-\frac{\delta f}{\delta \pi} \frac{\delta g}{\delta \phi}\right) 
\end{align}
$$

