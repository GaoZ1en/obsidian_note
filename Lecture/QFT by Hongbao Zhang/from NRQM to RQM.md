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

here we assume that the spacetime can be foliated by a series of timelike hypersurfaces $\displaystyle{\left\{\Sigma _{t}\right\}}$ parameterized by $\displaystyle{t\in[t_{f},t_{i}]}$. the Klein-Gordon action reads

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{d}x\sqrt{ -g }\left( g^{\mu \nu}\nabla _{\mu}\phi\nabla _{\nu}\phi+m^{2}\phi ^{2} \right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(g^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\phi-m^{2}\phi\right)\delta \phi \\
 & -\int \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi\Big|^{\Sigma _{f}}_{\Sigma _{i}}
\end{align}$$

here $\displaystyle{\tau ^{\mu}}$ is a future directed timelike vector, which is the normal vector of each slice $\displaystyle{\Sigma _{t}}$. then we read out the eom and sympletic potential

$$\begin{align}
E_{\phi} & =g^{\mu \nu}\nabla _{\mu}\nabla _{\nu}\phi-m^{2}\phi \\
\theta & =-\int _{\Sigma} \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

then the symplectic form is given by

$$\begin{align}
\omega & =-\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

which induces a inner product of positive frequency part of the covariant phase space $\displaystyle{\mathcal{P}}$

$$\begin{align}
\left(\psi,\varphi\right) & =i\omega[\psi,\varphi ^{*}] \\
 & =-i \int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}(\nabla _{\mu}\psi \varphi ^{*}-\nabla _{\mu}\varphi ^{*}\psi)
\end{align}$$

same properties share.

# Minkowski spacetime

now we will focus on Minkowski spacetime. make the following Fourier transformation

$$\begin{align}
\phi(x) & =\frac{1}{(2\pi)^{d/2}}\int _{\mathcal{M}=\mathcal{M}^{+}\cup \mathcal{M}^{-}} \frac{\mathrm{d}^{d-1}k}{2\omega _{k}}\tilde{\phi}(k)e^{-ik\cdot x}
\end{align}$$

where $\displaystyle{\mathcal{M}}$ is the mass shell, and $\displaystyle{\mathcal{M}^{\pm}}$ is the positive/negative frequency mass shell. then the inner product becomes

$$\begin{align}
(\varphi,\phi) & =\int _{\mathcal{M}^{+}}\mathrm{d}\mu\tilde{\varphi}^{*}(k)\tilde{\phi}(k)-\int _{\mathcal{M}^{-}}\mathrm{d}\mu\tilde{\varphi}^{*}(k)\tilde{\phi}(k)
\end{align}$$

where $\displaystyle{\mu}$ is the measure of massshell $\displaystyle{\mathcal{M}}$.

one problem is that what are the position and momentum operator. we make a general discussion below. a Hilbert space with an inner product

$$\begin{align}
(\varphi,\phi) & =\int _{\mathcal{M}}\mathrm{d}\mu \varphi ^{*}\phi
\end{align}$$

where $\displaystyle{\varphi,\phi}$ is somehow a method to denote a state. a linear Hermitian operator $\displaystyle{V}$ acting $\displaystyle{\phi}$ can be expressed as

$$\begin{align}
V(\phi) & :=v^{a}\nabla _{a}\phi+v\phi
\end{align}$$

where $\displaystyle{\nabla _{a}}$ is compatitive with the measure $\displaystyle{\mu}$. Hermitian requires that

$$\begin{align}
(\varphi,V\phi) & =(V\varphi,\phi)
\end{align}$$

which gives

$$\tag{.}\begin{align}
\int _{\mathcal{M}}\mathrm{d}\mu \varphi ^{*}(v^{a}\nabla _{a}\phi+v\phi) & =\int _{M}\mathrm{d}\mu (v^{a}\nabla _{a}\varphi+v\varphi)^{*}\phi \\
 & =\int _{M}\mathrm{d}\mu (v^{*a}\nabla _{a}\varphi ^{*}+v^{*}\varphi ^{*})\phi \\
 & =\int _{M}\mathrm{d}\mu \varphi ^{*}(-v^{*a}\nabla _{a}\phi+(-\nabla _{a}v^{*a}+v^{*})\phi) \\
\implies & \begin{cases}
v^{a}=-v^{*a} \\
v-v^{*}=-\nabla _{a}v^{*a}=\nabla _{a}v^{a}
\end{cases}
\end{align}$$

and the commutator of two operators $\displaystyle{[V,U]}$ can be expressed as

$$\begin{align}
(\varphi,[V,U]\phi) & =(\varphi,(VU-UV)\phi) \\
 & =\int _{M}\mathrm{d}\mu \varphi ^{*}(v^{a}\nabla _{a}(u^{b}\nabla _{b}\phi+u\phi)+v(u^{b}\nabla _{b}\phi+u\phi)) \\
 & -\int _{M}\mathrm{d}\mu \varphi ^{*}(u^{a}\nabla _{a}(v^{b}\nabla _{b}\phi+v\phi)+u(v^{b}\nabla _{b}\phi+v\phi)) \\
 & =\int _{M}\mathrm{d}\mu \varphi ^{*}[v,u]^{a}\nabla _{a}\phi
\end{align}$$

we want a position operator and a momentum operator that satisfy

$$\begin{align}
[\hat{x},\hat{p}_{x}] & =i
\end{align}$$

we first define the momentum operator

$$\begin{align}
P(p^{a})\phi(k) & =-p^{a}k _{a}\phi(k)
\end{align}$$

where $\displaystyle{p^{a}}$ is the reference vector of measure. and the position operator is determined by $\displaystyle{X^{a}}$, where to measure, $\displaystyle{t^{a}}$, when to measure and $\displaystyle{q^{a}}$ (spacelike), which direction to measture. assume

$$\begin{align}
X(0,t^{a},q^{a})\phi & =x^{a}\nabla _{a}\phi+x\phi
\end{align}$$

here we set $\displaystyle{X^{a}=0}$. the result is

$$\begin{align}
x^{a} & =i\left( q^{a}-t^{a} \frac{q\cdot k}{t\cdot k} \right) \\
x & =\frac{i}{2} \frac{q\cdot k}{(t\cdot k)^{2}}
\end{align}$$

this is the expression of position operator in the momentum space. it can be verified that it satisfies

$$\begin{align}
[P(p^{a}),P(p'^{a})] & =0 \\
[X(0,t^{a},q^{a}),X(0,t^{a},q'^{a})] & =0 & t^{a}q_{a}=t^{a}q'_{a}=0 \\
[X(0,t^{a},q^{a}),P(p^{a})] & =ip^{a}q_{a} & t^{a}p_{a}=0 \\
[X(0,t^{a},q^{a}),P(t^{a})] & =i\frac{q\cdot k}{t\cdot k}
\end{align}$$

$\displaystyle{P(t^{a})}$ is the Hamiltonian with respect to the direction $\displaystyle{t^{a}}$. the Heisenberg equation gives that

$$\begin{align}
\dot{P}(p^{a}) & =0 \\
\dot{X}(0,t^{a},q^{a}) & =\frac{q\cdot k}{t\cdot k}
\end{align}$$

where $\displaystyle{\frac{q\cdot k}{t\cdot k}}$ is exactly the speed... then we will find the eigenstates of these operators. the wave function of eigenstate of $\displaystyle{P(p^{a})}$ with eigenvalue $\displaystyle{\vec{k}'}$ is

$$\begin{align}
\vec{K}(k) & =\sqrt{ 2\omega _{k'} }\delta(\vec{k}'-\vec{k}) \\
\vec{k}'(x) & =\frac{1}{(2\pi)^{d/2}\sqrt{ 2\omega _{k'} }}e^{-ik'_{a} x^{a}}
\end{align}$$

and the wave function of eigenstate of $\displaystyle{X(0,t^{a},q^{a})}$ with eigenvalue $\displaystyle{\vec{x}'}$ is

$$\begin{align}
\vec{x}'(k) & =\frac{\sqrt{ 2\omega _{k'} }}{(2\pi)^{d/2}}e^{-i\vec{x}'\cdot \vec{k}} \\
\vec{x}'(x) & =\frac{1}{(2\pi)^{d/2}}\int \frac{\mathrm{d}^{d-1}k}{\sqrt{ 2\omega _{k} }}e^{-ik _{a}(x^{a}-x'^{a})}
\end{align}$$



(here some signal may be wrong)

