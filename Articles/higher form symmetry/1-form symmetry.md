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

for a closed 2-surface $\displaystyle{S}$, we consider its Poincare dual $\displaystyle{\eta _{c}}$, which is the closed 1-form that satisfies

$$\begin{align}
\int _{S}\alpha & =\int _{\Sigma}\alpha \wedge \eta _{S}, \quad \forall \alpha \in \Lambda ^{2}(\Sigma)
\end{align}$$

then the Noether charge becomes

$$\begin{align}
H[S] & =H_{\eta _{S}}=\frac{1}{2\pi}\int _{\Sigma}\left( \star F-\frac{\theta}{2\pi}F \right)\wedge \eta _{S} \\
 & =\frac{1}{2\pi}\int _{S}\left( \star F-\frac{\theta}{2\pi}F \right)
\end{align}$$

which is exactly the electric flux through $\displaystyle{S}$.

---

generally for a $\displaystyle{p}$-form symmetry in $\displaystyle{d}$-dim spacetime, its conserved quantity is given by integrating the corresponding conserved current over a closed $\displaystyle{(d-p-1)}$-dim submanifold $\displaystyle{M^{d-p-1}}$. by Poincare duality, we can equivalently express the conserved quantity as an integral over a closed $\displaystyle{p+1}$-form $\displaystyle{\eta _{M}}$ that is dual to $\displaystyle{M^{d-p-1}}$:

$$\begin{align}
Q(M^{d-p-1}) & =\int _{M^{d-p-1}}\star j=\int _{\Sigma}\star j \wedge \eta _{M}
\end{align}$$

---

then we will consider the Poisson bracket between the conserved charge $\displaystyle{H_{C_{1}}}$ and $\displaystyle{H_{C_{2}}}$.

$$\begin{align}
\left\{H_{S_{1}},H_{S_{2}}\right\} & =X_{\eta _{S_{1}}}\cdot X_{\eta _{S_{2}}}\cdot \omega \\
  & =0
\end{align}$$

which shows that the 1-form electric symmetry is Abelian...

consider the action of $\displaystyle{H_{S}}$ on the Wilson loop $\displaystyle{W[C]=\mathcal{P}\exp\left(ie \oint _{C}A\right)}$, which reads

$$\begin{align}
\left\{H_{S},W[C]\right\} & =-X_{\eta _{S}}\cdot \delta W[C] \\
 & =-ie W[C]\oint _{C}X_{\eta _{S}}\cdot \delta A \\
 & =-ieW[C]\oint _{C}\eta _{S} \\
 & =ieI[S,C]W[C]
\end{align}$$

where $\displaystyle{I(C,S)}$ is the intersection number of loop $\displaystyle{C}$ and surface $\displaystyle{S}$.
