Consider the action

$$\begin{align}
S & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\left(\dfrac{1}{2}m\dot{x}^{2}-\dfrac{1}{2}kx^{2}+\dfrac{\lambda}{4}x^{2}\dot{x}^{2}\right)
\end{align}$$

take a variation, here $\displaystyle{\omega ^{2}=\dfrac{k}{m}}$

$$\begin{align}
\delta S & =\int _{t_{i}}^{t_{f}} \mathrm{d}tE\delta x+\theta|_{t_{f}-t_{i}} \\
E & =-m(\ddot{x}+\omega ^{2}x)-\dfrac{\lambda}{2}(x^{2}\ddot{x}+x\dot{x}^{2}) \\
\theta & =\left( m+\dfrac{\lambda}{2}x^{2} \right)\dot{x}\delta x \\
\implies \omega & =\delta \theta=m\delta \dot{x}\wedge \delta x+\dfrac{\lambda}{2}\delta(x^{2}\dot{x})\wedge \delta x
\end{align}$$

the linearized eom and symplectic form are

$$\begin{align}
-m(\ddot{x}+\omega ^{2}x) & =0 \\
\omega _{0} & =m\delta \dot{x}\wedge \delta x
\end{align}$$

## Solution

The normalized positive frequency solution is

$$\begin{align}
u_{0}(t) & = \dfrac{e^{-i\omega t}}{\sqrt{ 2m\omega }}
\end{align}$$

expand

$$\begin{align}
x(t) & = \dfrac{ae^{-i\omega t}+a^{\dagger}e^{i\omega t}}{\sqrt{ 2m\omega }}
\end{align}$$

insert into the linearized symplectic form, we have

$$\begin{align}
\omega_{0} & =i\delta a^{\dagger}\wedge \delta a
\end{align}$$

expand

$$\begin{align}
u(t) & =u_{0}(t)+\lambda u_{1}(t)+\mathcal{O}(\lambda ^{2})
\end{align}$$

and insert into the eom, expand to the $\displaystyle{\mathcal{O}(\lambda)}$ order, we have

$$\begin{align}
\ddot{u}_{1}+\omega ^{2}u_{1} & =\dfrac{1}{2m}(\omega ^{2}u_{0}^{3}-u_{0}\dot{u}_{0}^{2})
\end{align}$$

we will use the retarded Green function to solve this equation

$$\begin{align}
G_{R}(t,s) & =\theta(t-s) \dfrac{\sin \omega(t-s)}{\omega}
\end{align}$$

the initial data for $\displaystyle{u_{1}}$ and $\displaystyle{\dot{u}_{1}}$ is chosen to be

$$\begin{align}
u_{1}(0) & =0 \\
m\dot{u}_{1}(0)+\dfrac{1}{2}u_{0}(0)^{2}\dot{u}_{0}(0) & =0
\end{align}$$

therefore

$$\begin{align}
u_{1}(t) & =-\dfrac{u_{0}(0)^{2}\dot{u}_{0}(0)}{2m\omega}\sin \omega t \\
 & +\dfrac{1}{2m\omega}\int _{0}^{t}\mathrm{d}s\sin \omega(t-s)[\omega ^{2}u_{0}(s)^{3}-u_{0}(s)\dot{u}_{0}(s)^{2}] \\
 & =\dfrac{1}{m(2m\omega)^{3/2}}\left(\dfrac{1}{8}((a^{\dagger})^{3}e^{-i\omega t}-(a^{\dagger})^{3}e^{3i\omega t}+a^{3}e^{i\omega t}-a^{3}e^{-3i\omega t})\right. \\
 & \left.+\dfrac{i\omega t}{2}\left(a^{2}a^{\dagger}e^{-i\omega t}-a(a^{\dagger})^{2}e^{i\omega t}\right)\right)
\end{align}$$

plug this perturbed solution back into the symplectic form and expand it to order $\displaystyle{\mathcal{O}(\lambda)}$, we have

$$\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a+\mathcal{O}(\lambda ^{2})
\end{align}$$

## Noether Charge

Consider the time translation symmetry

$$\begin{align}
X & =\int \mathrm{d}t \dot{x} \dfrac{\delta}{\delta x}
\end{align}$$

the corresponding Noether charge (we will call it "Hamiltonian" in later sections) is given by

$$\begin{align}
H & =X\cdot \theta-\alpha \\
 & =\dfrac{1}{2}m\dot{x}^{2}+\dfrac{\lambda}{4}x^{2}\dot{x}^{2}+\dfrac{1}{2}kx^{2} \\
 & =\omega a^{\dagger}a+\dfrac{\lambda}{16m^{2}}(a^{4}-2a^{2}(a^{\dagger})^{2}+(a^{\dagger})^{4})+\mathcal{O}(\lambda ^{2})
\end{align}$$

## Quantization

Upon quantization, we lift the classical symplectic form to a quantum commutator, with the Weyl ordering prescription ensuring that the quantum Hamiltonian and operators are Hermitian and consistent with the classical limit. Therefore

$$\begin{align}
[a,a^{\dagger}]=1
\end{align}$$

define $\displaystyle{N=a^{\dagger}a}$, the Hamiltonian

$$\begin{align}
H & =\omega \left( N+\dfrac{1}{2} \right)+\dfrac{\lambda}{16m^{2}}(a^{4}+\left( a^{\dagger})^{4}-2\left( N^{2}+N+\dfrac{1}{2} \right) \right)+\mathcal{O}(\lambda ^{2})
\end{align}$$

diagonal elements gives the energy eigenvalues

$$\begin{align}
E_{n} & =\omega\left( n+\dfrac{1}{2} \right)-\dfrac{\lambda}{8m^{2}}\left( n^{2}+n+\dfrac{1}{2} \right)+\mathcal{O}(\lambda ^{2})
\end{align}$$

## Correlation Function

We lift the position

$$\begin{align}
x(t) & =u_{0}(t)+\lambda u_{1}(t)+\mathcal{O}(\lambda ^{2})
\end{align}$$

to Heisenberg operator

$$\begin{align}
x(t) & =u_{0}(t)+\lambda \mathcal{W}[u_{1}(t)]+\mathcal{O}(\lambda ^{2})
\end{align}$$

consider the correlation

$$\begin{align}
W^{+}(t,0)=\braket{ 0|x(t>0)x(0)|0 }  & =\braket{ 0|u_{0}(t)x(0)|0 }+ \lambda\braket{ 0|\mathcal{W}[u_{1}(t)]x(0)|0 } +\mathcal{O}(\lambda ^{2}) \\
 & =\dfrac{e^{-i\omega t}}{2m\omega}\left( 1+\dfrac{i\lambda t}{4m^{2}} \right)+\mathcal{O}(\lambda ^{2}) \\
\implies G_{F}(t) & =\theta(t)W^{+}(t,0)+\theta(-t)W^{+}(-t,0) \\
 & =\dfrac{e^{-i\omega|t|}}{2m\omega}\left( 1+\dfrac{i\lambda|t|}{4m^{2}} \right)+\mathcal{O}(\lambda ^{2})
\end{align}$$

after Wick rotation

$$\begin{align}
G_{E}(\tau) & =\dfrac{e^{-\omega|\tau|}}{2m\omega}\left( 1+\dfrac{\lambda|\tau|}{4m^{2}} \right)+\mathcal{O}(\lambda ^{2})
\end{align}$$
