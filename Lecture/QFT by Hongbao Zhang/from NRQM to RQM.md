NRQM stands for non-relativistic quantum mechanics, and RQM stands for relativistic quantum mechanics.

focus on fundamental concepts/issues in QG, not on calculation and phenomenological applications.

we adopt the natural units, $\displaystyle{c=\hbar=G=1}$. $\displaystyle{(-,+,\dots,+)}$ signature for Minskowskian spacetime and $\displaystyle{(+,\dots,+)}$ for Euclidean spacetime.

references:
0. H. Zhang, Quantum Field Theory
1. R. M. Wald, General Relativity
2. R. P. Geroch, Special Topics in Particle Physics
3. R. M. Wald, Quantum Field Theory in Curved Spacetime and Black Hole Theromodynamics
4. S. Weinberg, The Quantum Theory of Fields
5. M. D. Schwartz, Quantum Field Theory and the Standard Model
6. A. Bilal, Advanced Quantum Field Theory, Renormalization, Non-Abelian Gauge Theory and Anomalies.
7. M. Srednicki, Quantum Field Theory
8. M. E. Peskin and D. U. Schroeder, An Introduction to Quantum Field Theory
9. A. Zee, Quantum Field Theory in a Nutshell

# Schrodinger's prescription for NRQM

classically, a state is described by a point $\displaystyle{(x,p)}$ in the phase space $\displaystyle{\Gamma}$, which is a cotangent bundle of configuration space $\displaystyle{\mathcal{C}}$, and its time evolution is described by Hamiltonian equations

$$\begin{align}
\dot{x} & =\frac{\partial H}{\partial p} \\
\dot{p} & =-\frac{\partial H}{\partial x} \\
H & =\frac{p^{2}}{2m}+V(x)
\end{align}$$

quantum mechanically, a state is described by a wave function $\displaystyle{\psi(x)}$ of configuration space, and its time evolution is described by Schrodinger equation

$$\begin{align}
i\frac{\partial \psi}{\partial t} & =H\left( x,-i\frac{\partial}{\partial x} \right)\psi \\
H\left( x,-i\frac{\partial}{\partial x} \right) & =-\frac{1}{2m}\frac{\partial ^{2}}{\partial x^{2}}+V
\end{align}$$

here we consider a classical action for schrodinger field $\displaystyle{\psi(x)}$

$$\begin{align}
S & =\int \mathrm{d}t\mathrm{d}^{d-1}x\left(\frac{i}{2}\left(\psi ^{*}\partial _{t}\psi-\psi \partial _{t}\psi\right)-\frac{1}{2m}\nabla \psi ^{*} \cdot \nabla \psi -V(x)\psi ^{*}\psi\right)
\end{align}$$

take an variation

$$\begin{align}
\delta S & =\int \mathrm{d}t\mathrm{d}^{d-1}x\left(\delta \psi ^{*}\left( i\partial _{t}\psi+\frac{1}{2m}\nabla ^{2}\psi-V(x)\psi \right)+\left( -i\partial _{t}\psi ^{*}+\frac{1}{2m}\nabla ^{2}\psi ^{*}-V(x)\psi ^{*} \right)\delta \psi\right) \\
 & -\int \mathrm{d}^{d-1}x \frac{i}{2}\left(\psi ^{*}\delta \psi+\delta \psi ^{*}\psi\right)\Big|^{t_{f}}_{i}
\end{align}$$

which gives the eoms and symplectic potential

$$\begin{align}
E_{\psi} & =i\partial _{t}\psi+\frac{1}{2m}\nabla ^{2}\psi-V(x)\psi \\
E_{\psi ^{*}} & =-i\partial _{t}\psi ^{*}+\frac{1}{2m}\nabla ^{2}\psi ^{*}-V(x)\psi ^{*} \\
\theta & =-\frac{i}{2}\int \mathrm{d}^{d-1}x (\psi ^{*}\delta \psi+\delta \psi ^{*}\psi)
\end{align}$$

take a further variation on the symplectic potential, we got the symplectic form

$$\begin{align}
\omega & =-i\int \mathrm{d}^{d-1}x\delta \psi ^{*}\wedge \delta \psi
\end{align}$$

then the symplectic form induces a inner product on the covariant phase space $\displaystyle{\mathcal{P}}$

$$\begin{align}
\left(\psi,\phi\right) & =i\omega[\psi,\phi ^{*}] \\
 & =\int \mathrm{d}^{d-1}x\psi ^{*}\phi
\end{align}$$

which is the usual inner product between wave functions, however here $\displaystyle{\psi }$ and $\displaystyle{\phi}$ are classical configurations. by the time invariance of the symplectic form $\displaystyle{\omega}$, the inner product is independent from time.

here we want find a natural interpretation of the current conservation

$$\begin{align}
i\frac{\partial(\psi ^{*}\phi)}{\partial t} & =-\nabla \cdot\left(  \frac{1}{2mi}\left(\psi ^{*}\nabla \phi-\phi \nabla \psi ^{*}\right) \right)
\end{align}$$

# Schrodinger's prescription for relativistic quantum mechanics

here we assume that the spacetime can be foliated by a series of spacelike hypersurfaces $\displaystyle{\left\{\Sigma _{t}\right\}}$ parameterized by $\displaystyle{t\in[t_{f},t_{i}]}$. the Klein-Gordon action reads

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\left( g^{\mu \nu}\nabla _{\mu}\phi\nabla _{\nu}\phi+m^{2}\phi ^{2} \right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(g^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\phi-m^{2}\phi\right)\delta \phi \\
 & -\int \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi\Big|^{\Sigma _{f}}_{\Sigma _{i}}
\end{align}$$

then we read out the eom and sympletic potential

$$\begin{align}

\end{align}$$