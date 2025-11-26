consider the Lagrangian of 4d Maxwell theory

$$\begin{align}
\mathcal{L} & =-\frac{1}{4\pi}F\wedge \star F+\frac{\theta}{8\pi ^{2}}F\wedge F
\end{align}$$

take a variation

$$\begin{align}
\delta \mathcal{L} & =-\frac{1}{2\pi}\delta A\wedge \mathrm{d}\star F-\frac{1}{2\pi}\mathrm{d}(\delta A\wedge \star F)+\frac{\theta}{4\pi ^{2}}\mathrm{d}\delta A\wedge F \\
 & =-\frac{1}{2\pi}\delta A\wedge \mathrm{d}\left( \star F-\frac{\theta}{2\pi}F \right)-\mathrm{d}\left( \frac{1}{2\pi}\delta A\wedge \left( \star F-\frac{\theta}{2\pi}F \right) \right)
\end{align}$$

which gives the eom and sympletic potential

$$\begin{align}
E & =\frac{1}{2\pi}\left( \mathrm{d}\star F-\frac{\theta}{2\pi}\mathrm{d}F \right)=0 \\
\theta & =-\frac{1}{2\pi}\delta A\wedge\left(  \star F-\frac{\theta}{2\pi}F \right)
\end{align}$$

and the symplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\delta \theta=\frac{1}{2\pi}\int _{\Sigma}\left( \delta \star F+\frac{\theta}{2\pi}\delta F \right)\wedge \delta A
\end{align}$$

consider the 1-form electric symmetry

$$\begin{align}
A & \to A+\lambda ,\quad \mathrm{d}\lambda =0
\end{align}$$

which can be written as vector field on the configuration space

$$\begin{align}
X_{\lambda} & =\int \mathrm{d}^{4}x \lambda \frac{\delta}{\delta A}
\end{align}$$

act on the Lagrangian

$$\begin{align}
X_{\lambda}\cdot \delta \mathcal{L} & =-\frac{1}{2\pi}\mathrm{d}\lambda \wedge\left( \star F-\frac{\theta}{2\pi}F \right)=0
\end{align}$$

the corresponding Noether charge is

$$\begin{align}
H_{\lambda} & = X_{\lambda}\cdot \theta\\
 & =\frac{1}{2\pi}\int _{\Sigma}\left( \star F-\frac{\theta}{2\pi}F \right)\wedge \lambda
\end{align}$$

for a closed 2-surface $\displaystyle{C}$, we consider its Poincare dual $\displaystyle{\eta _{c}}$, which is the closed 1-form that satisfies

$$\begin{align}
\int _{C}\alpha & =\int _{\Sigma}\alpha \wedge \eta _{c}, \quad \forall \alpha \in H^{2}(\Sigma)
\end{align}$$

then the Noether charge becomes

$$\begin{align}
H[C] & =H_{\eta _{c}}=\frac{1}{2\pi}\int _{\Sigma}\left( \star F-\frac{\theta}{2\pi}F \right)\wedge \eta _{c} \\
 & =\frac{1}{2\pi}\int _{C}\left( \star F-\frac{\theta}{2\pi}F \right)
\end{align}$$

which is exactly the electric flux through $\displaystyle{C}$.
