# abstract

in this work we propose a novel approach to canonical quantization in the framework of covariant phase space formalism...

# Canonical quantization in covariant phase space formalism

## covariant phase space formalism in classical level

let $\displaystyle{S[\phi ^{a}]}$ be a action of a $\displaystyle{d}$ dimensional system in the Lagrangian formalism

$$\tag{1.1}
\begin{align}
S[\phi ^{a}] & =\int _{M} \mathbf{L}[\phi ^{a}]
\end{align}
$$

here $\displaystyle{\phi ^{a}}$ is a collection of dynamical variables, the set of configuration is defined as the space of all 
off-shell configurations $\displaystyle{\phi ^{a}}$. $\displaystyle{\mathcal{L}}$ is a Lagrangian $\displaystyle{d}$-form. the spacetime region $\displaystyle{M}$ is a $\displaystyle{d}$ dimensional manifold which is foliated by a family of Cauchy surfaces $\displaystyle{\Sigma _{t}}$ parameterized by a time function $\displaystyle{t}$. on the spatial boundary $\displaystyle{\Gamma}$ of $\displaystyle{M}$, we may adopt suitable boundary conditions for the dynamical fields $\displaystyle{\phi ^{a}}$. 

we first make a variation of the action $\displaystyle{S[\phi ^{a}]}$. we have

$$\tag{1.2}
\begin{align}
\delta S[\phi ^{a}] & =\int _{M}\mathbf{E}_{a}[\phi ^{a}]\delta \phi ^{a}+\theta[\phi ^{a},\delta\phi ^{a}]|_{\Sigma _{f}}-\theta[\phi ^{a},\delta\phi ^{a}]|_{\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{a}[\phi ^{a}]}$ is the Euler-Lagrange operator, which defines the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ for $\displaystyle{\phi ^{a}}$. and $\displaystyle{\theta[\phi ^{a},\delta \phi ^{a}]}$ is called the sympectic potential, which is a 1-form of the set of configurations. we define the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as the space of all solutions of the equations of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfy the boundary condition on $\displaystyle{\Gamma}$, and the phase space $\displaystyle{\mathcal{P}}$ is defined as the quotient space of the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ by the gauge redundancies. we define the pre-symplectic form $\displaystyle{\tilde{\omega}}$ as the variation of the symplectic potential

$$\tag{1.3}
\begin{align}
\tilde{\omega} & =\delta \theta
\end{align}
$$

the pre-symplectic form $\displaystyle{\tilde{\omega}}$ is a closed 2-form on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$

$$\tag{1.4}
\begin{align}
\delta ^{2}\tilde{\omega} & =\delta ^{2}\theta=0
\end{align}
$$

and we point out that $\displaystyle{\tilde{\omega}}$ is independent of time

$$\tag{1.5}
\begin{align}
\tilde{\omega}|_{\Sigma _{1},\tilde{\mathcal{P}}}-\tilde{\omega}|_{\Sigma _{2},\tilde{\mathcal{P}}}=0
\end{align}
$$

here the subscript $\displaystyle{\Sigma _{1}}$ and $\displaystyle{\Sigma _{2}}$ denote two different Cauchy surfaces, and $\displaystyle{\tilde{\mathcal{P}}}$ denotes a pullback to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$. however the pre-symplectic form $\displaystyle{\tilde{\omega}}$ is not a symplectic form, because it is degenerate on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$. we can define the symplectic form $\displaystyle{\omega}$ on the phase space $\displaystyle{\mathcal{P}}$ as the quotient of the pre-symplectic form $\displaystyle{\tilde{\omega}}$ by zero modes related to gauge redundancies. without loss of generality, in the following discussion, we will assume that we have already removed the gauge redundancies and defined the symplectic form $\displaystyle{\omega}$ for simplicity.

suppose the general solution of the equation of motion $\displaystyle{E_{a}[\phi ^{a}]=0}$ that satisfies the boundary condition on $\displaystyle{\Gamma}$ is given by

$$\tag{1.6}
\begin{align}
\phi ^{a}(x) & =\sum _{n}(a_{an}\sigma ^{a} _{n}(x)+a^{\dagger}_{an}\sigma ^{a*}_{n}(x))
\end{align}
$$

here we assume that such solutions can be superposed. and $\displaystyle{\sigma ^{a}_{n}(x)}$ is a set of complete orthonormal basis of the solution space $\displaystyle{\tilde{\mathcal{P}}}$, which satisfies suitable orthonormality condition

$$\tag{1.7}
\begin{align}
\omega(\sigma ^{a}_{n},\sigma ^{b}_{m})=\delta _{nm}\delta ^{ab}
\end{align}
$$

here $\displaystyle{\omega(\sigma ^{a}_{n},\sigma ^{b}_{m})}$ means that we replace $\displaystyle{\delta \phi ^{a}}$ appeared in the symplectic form $\displaystyle{\omega}$ with $\displaystyle{\sigma ^{a}_{n}}$ and $\displaystyle{\sigma ^{b}_{m}}$. then the symplectic form can be written in a standard form

$$\tag{1.8}
\begin{align}
\omega & =i\sum _{a,n}\delta a_{an}^{\dagger}\wedge \delta a_{an}
\end{align}
$$

we define the Hamiltonian flow $\displaystyle{X_{\mathcal{O}}}$ corresponding to an observable $\displaystyle{\mathcal{O}[\phi ^{a}]}$ at time slice $\displaystyle{\Sigma}$ as

$$\tag{1.9}
\begin{align}
X_{\mathcal{O},\Sigma} & = -i \sum _{a,n}\int _{\Sigma}\left(  \frac{\delta \mathcal{O}}{\delta a_{an}^{\dagger}} \frac{\delta}{\delta a_{an}}-\frac{\delta \mathcal{O}}{\delta a_{an}} \frac{\delta}{\delta a^{\dagger}_{an}}\right)
\end{align}
$$

then the Poisson bracket of two observables $\displaystyle{\mathcal{O}_{1}[\phi ^{a}]}$ and $\displaystyle{\mathcal{O}_{2}[\phi ^{a}]}$ is defined as

$$\tag{1.10}
\begin{align}
\left\{\mathcal{O}_{1}|_{\Sigma},\mathcal{O}_{2}|_{\Sigma}\right\}_{\mathrm{PB}} & =X_{\mathcal{O}_{1},\Sigma}\cdot X_{\mathcal{O}_{2},\Sigma}\cdot \omega
\end{align}
$$

in particular, we have

$$\tag{1.11}
\begin{align}
\left\{a_{an},a^{\dagger}_{am}\right\}_{\mathrm{PB}} & =\delta _{nm}\delta _{ab} \\
\end{align}
$$

## covariant phase space formalism in quantum level

we promote the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ to a Hilbert space $\displaystyle{\mathcal{H}}$ by imposing canonical quantization

$$\tag{1.12}
\begin{align}
\begin{cases}
[\mathcal{O}_{1},\mathcal{O}_{2}]=i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{PB}}  & \text{ for bosonic operators } \\
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}=i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\}_{\mathrm{PB}} & \text{ for fermionic operators } \\
\end{cases}
\end{align}
$$

footnote: the [Groenewold-Van Hove theorem] points out the impossibility of consistent quantization preserving all Poisson bracket relations. here we ignore the higher order terms appearing in the geometric quantization or the deformation quantization, which is irrelevant to our discussion. one may refer to [geometric quantization or deformation quantization] for more details.

the coefficients $\displaystyle{a_{an}}$ and $\displaystyle{a^{\dagger}_{an}}$ are promoted to operators, which is called the creation and annihilation operators. the vacuum state $\displaystyle{|0\rangle}$ is defined as the state that annihilated by all annihilation operators $\displaystyle{a_{an}}$. the Fock space $\displaystyle{\mathcal{H}}$ is spanned by the vacuum state $\displaystyle{|0\rangle}$, single particle states $\displaystyle{|n\rangle}$ which are defined by the action of the creation operators $\displaystyle{a^{\dagger}_{an}}$ on the vacuum state $\displaystyle{\ket{0}}$, and multi-particle states $\displaystyle{|n_{1},n_{2},\ldots \rangle}$, which are defined by tensor products of single particle states and suitable symmetrization for bosons or anti-symmetrization for fermions.

correlation functions are defined as the expectation value of the product of operators in the vacuum state as usual

$$\tag{1.13}
\begin{align}
\braket{ \mathcal{O}_{1}\dots \mathcal{O}_{n} }= \braket{ 0|\mathcal{O}_{1}\dots \mathcal{O}_{n}|0 } 
\end{align}
$$

time ordered correlation functions are defined as

$$\tag{1.14}
\begin{align}
\braket{ \mathcal{T}\mathcal{O}_{1}\dots \mathcal{O}_{n} } & =\braket{ 0|\mathcal{T}\mathcal{O}_{1}\dots \mathcal{O}_{n}|0 }
\end{align}
$$

where the time ordering operator $\displaystyle{\mathcal{T}}$ orders the operators according to their time arguments, with the earliest time on the right. we emphasize that the time ordering correlation function is independent of the choice of time slices $\displaystyle{\Sigma _{t}}$. 

## Noether theorem and Ward identity

now we consider symmetries and corresponding Noether charges. the symmetry can be represented by a vector field $\displaystyle{X_{\lambda}}$ on the the set of configuration

$$\tag{1.15}
\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d}x\delta _{\lambda}\phi ^{a}(x) \frac{\delta}{\delta \phi ^{a}(x)}
\end{align}
$$

and act on the action $\displaystyle{S[\phi ^{a}]}$, we have

$$\tag{1.16}
\begin{align}
X_{\lambda}\cdot S[\phi ^{a}] & =\alpha _{\lambda}[\phi ^{a}]|_{\Sigma _{f}}-\alpha _{\lambda}[\phi ^{a}]|_{\Sigma _{i}}
\end{align}
$$

here we assume that there is no classical anomaly term $\displaystyle{\beta _{\lambda}}$, which is configuration independent and supports on $\displaystyle{M}$ and $\displaystyle{\Gamma}$. then the Noether charge is defined as

$$\tag{1.17}
\begin{align}
H_{\lambda} & =X_{\lambda}\cdot \theta-\alpha _{\lambda}
\end{align}
$$

the Noether theorem can be stated as follows

1. the onshell Noether charge $\displaystyle{H_{\lambda}}$ is time independent

$$\tag{1.18}
\begin{align}
H_{\lambda}|_{\Sigma _{f},\mathcal{P}}-H_{\lambda}|_{\Sigma _{i},\mathcal{P}} &=0
\end{align}
$$

2. the symmetry $\displaystyle{X_{\lambda}}$ and the Noether charge $\displaystyle{H_{\lambda}}$ satisfy the following

$$\tag{1.19}
\begin{align}
(X_{\lambda}\cdot \omega+\delta H_{\lambda})|_{\mathcal{P}} & =0
\end{align}
$$

Noether theorem (1.15) in classical level can be promoted to Ward identities in quantum level as

$$\tag{1.20}
\begin{align}
\braket{ H_{\lambda}\mathcal{O}_{1}\dots \mathcal{O}_{n} }|_{\Sigma _{f},\mathcal{P}}-\braket{ \mathcal{O}_{1}\dots \mathcal{O}_{n}H_{\lambda} }|_{\Sigma _{i},\mathcal{P}}+\sum ^{n}_{i=1}\braket{ \mathcal{O}_{1}\dots (X_{\lambda}\cdot \delta\mathcal{O}_{i})\dots \mathcal{O}_{n} }=0
\end{align}
$$

where $\displaystyle{X_{\lambda}\cdot \delta \mathcal{O}_{i}}$ is the infinitesimal transformation of the operator $\displaystyle{\mathcal{O}_{i}}$ under the symmetry $\displaystyle{X_{\lambda}}$.

(proof)

# section 3

in this section we will consider several examples using the above framework. the spacetime is set to 4 dimensional Minskovski space with signature $\displaystyle{(-,+,+,+)}$. the Cauchy surfaces are chosen to be the constant time hypersurfaces with norm vector $\displaystyle{\tau ^{\mu}=(1,0,0,0)}$. the boundary condition is chosen to be that the dynamical fields vanish at infinity. we will first consider the scalar field theory, then we will extend our discussion to Proca field theory, which describes massive vector bosons.

## scalar field

the scalar field in 4 dimensional Minkowski space is described by the action

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\mathrm{d}^{4}x\left(\partial _{\mu}\phi \partial ^{\mu}\phi+m^{2}\phi ^{2}\right)
\end{align}
$$

we first take a variation of the action

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x E_{\phi}\delta \phi+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}} \\
\end{align}
$$

here $\displaystyle{E_{\phi}=(\nabla ^{2}-m^{2})\phi}$ is the Euler-Lagrange operator, and the symplectic potential is $\displaystyle{\theta=\int _{\Sigma}\mathrm{d}^{3}x\dot{\phi} \delta \phi}$. the symplectic form $\displaystyle{\omega}$ is given by the variation of the symplectic potential $\displaystyle{\theta}$

$$\tag{1.3}
\begin{align}
\omega & =\delta \theta =\int _{\Sigma}\mathrm{d}^{3}x\delta \dot{\phi}\wedge \delta \phi
\end{align}
$$

the equation of motion is given by $\displaystyle{E_{\phi}=0}$, which is the Klein-Gordon equation. the general solution of the Klein-Gordon equation is given by

$$\tag{1.4}
\begin{align}
\phi(x) & =\int \mathrm{d}^{3}\vec{k}(a_{k}\sigma _{k}(x)+a_{k}^{\dagger}\sigma ^{*}_{k}(x))
\end{align}
$$

here $\displaystyle{\sigma _{k}(x)=\frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}}$ is a complete orthonormal basis of the solution space, which satisfies the orthonormality condition in the sense of Klein-Gordon inner product

$$\tag{1.5}
\begin{align}
(\sigma _{k},\sigma _{k'}) & =i \int _{\Sigma}\mathrm{d}^{3}x\left(\sigma _{k}^{*}\dot{\sigma}_{k'}-\sigma ^{*}_{k'}\dot{\sigma} _{k}\right) \\
 & =\delta ^{3}(\vec{k}-\vec{k}')
\end{align}
$$

then we can express the symplectic form $\displaystyle{\omega}$ in terms of $\displaystyle{a_{k}}$ and $\displaystyle{a_{k}^{\dagger}}$ as

$$\tag{1.6}
\begin{align}
\omega & =i\int \mathrm{d}^{3}\vec{k} \delta a_{k}^{\dagger}\wedge \delta a_{k}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{\phi(x)}$ is defined as

$$\tag{1.7}
\begin{align}
X_{\phi(x)} & =-i \int \mathrm{d}^{3}\vec{k}\left(\frac{\delta \phi(x)}{\delta a_{k}} \frac{\delta}{\delta a_{k}^{\dagger}}-\frac{\delta \phi(x)}{\delta a^{\dagger}_{k}} \frac{\delta}{\delta a_{k}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\left(\sigma _{k} \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma ^{*}_{k} \frac{\delta}{\delta a_{k}}\right)
\end{align}
$$

then the commutation relation between $\displaystyle{\phi(x)}$ is defined as

$$\tag{1.8}
\begin{align}
[\phi(x),\phi(y)] & =iX_{\phi(x)}\cdot X_{\phi(y)}\cdot \omega \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

where the integral contour for $\displaystyle{k^{0}}$ is chosen to be as follows

![[Attachments/Pasted image 20250425232210.png]]

the time ordered 2-pt correlation function is defined as

$$\tag{1.9}
\begin{align}
\braket{ 0|\mathcal{T}\phi(x)\phi(y)|0 } & =\theta(x^{0}-y^{0})\braket{ 0|\phi(x)\phi(y)|0 }+\theta(y^{0}-x^{0})\braket{ 0|\phi(y)\phi(x)|0 } \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}
\end{align}
$$

## Proca field

### canonical quantization of Proca field

the Proca field is a massive vector field, which is described by the action

$$\tag{1.10}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$

where the field strength $\displaystyle{F_{\mu \nu}}$ is defined as $\displaystyle{F_{\mu \nu}=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}}$. we take a variation of the action

$$\tag{1.11}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}xE^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

here $\displaystyle{E^{\nu}=\partial _{\mu}F^{\mu \nu}-m^{2}A^{\nu}}$ is the Euler-Lagrange operator, and the symplectic potential $\displaystyle{\theta}$ is given by $\displaystyle{\theta=\int _{\Sigma}\mathrm{d}^{3}xF^{0\nu}\delta A_{\nu}}$. act $\displaystyle{\partial _{\nu}}$ on the equation of motion $\displaystyle{E^{\nu}=0}$, we get the constraint equation

$$\tag{1.12}
\begin{align}
m^{2}\partial _{\mu}A^{\mu}=0
\end{align}
$$

inserting this into the equation of motion, we get the Proca equation

$$\tag{1.13}
\begin{align}
\nabla ^{2}A^{\nu}-m^{2}A^{\nu} & =0
\end{align}
$$

the general solution of the Proca equation is given by

$$\tag{1.14}
\begin{align}
A^{\mu}(x) & =\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1} e^{s\mu}_{k}(\sigma _{k}a_{ks}+\sigma ^{*}_{k}a^{\dagger}_{ks})
\end{align}
$$

here $\displaystyle{e^{s\mu}_{k}}$ is the polarization vector, which satisfies the orthonormality condition

$$\tag{1.15}
\begin{align}
\sum ^{3}_{s=1} e^{s}_{k\mu}e^{s}_{k\nu} & =\eta _{\mu \nu} +\frac{k _{\mu}k _{\nu}}{m^{2}}
\end{align}
$$

and the constraint equation provides the condition that $\displaystyle{k^{\mu}e^{s}_{k\mu}=0}$ for all $\displaystyle{s=1,2,3}$. then the symplectic form $\displaystyle{\omega}$ is given by

$$\tag{1.16}
\begin{align}
\omega & =i \int \mathrm{d}^{3}\vec{k} \sum ^{3}_{s=1} \delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{A^{\mu}(x)}$ is defined as

$$\tag{1.17}
\begin{align}
X_{A^{\mu}(x)} & =-i\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1}\left(\frac{\delta A^{\mu}(x)}{\delta a_{ks}} \frac{\delta}{\delta a_{ks}^{\dagger}}-\frac{\delta A^{\mu}(x)}{\delta a_{ks}^{\dagger}} \frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1} e^{s\mu}_{k}\left(\sigma _{k}(x) \frac{\delta}{\delta a^{\dagger}_{ks}}-\sigma _{k}^{*}(x) \frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

after canonical quantization, we have the commutation relation between $\displaystyle{A^{\mu}(x)}$

$$\tag{1.18}
\begin{align}
[A^{\mu}(x),A^{\nu}(y)] & =iX_{A^{\mu}(x)}\cdot X_{A^{\nu}(y)}\cdot \omega \\
 & =\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1}e^{s\mu}_{k}e^{s\nu}_{k}\left(\sigma _{k}(x)\sigma ^{*}_{k}(y)-\sigma ^{*}_{k}(x)\sigma _{k}(y)\right) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left(\eta ^{\mu \nu}+\frac{k^{\mu}k^{\nu}}{m^{2}}\right) (e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\left(\eta ^{\mu}-\frac{\partial ^{\mu}_{x}\partial ^{\nu}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

here the contour for $\displaystyle{k^{0}}$ is chosen to be same as the scalar field case (1.8). the time ordered 2-pt correlation function is defined as

$$\tag{1.19}
\begin{align}
\braket{ 0|\mathcal{T}A^{i}(x)A^{j}(y)|0 }  & = \theta(x^{0}-y^{0})\braket{ 0|A^{i}(x)A^{j}(y)|0 }+\theta(y^{0}-x^{0})\braket{ 0|A^{j}(y)A^{i}(x)|0 }  \\
 & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A^{i}(x)A^{0}(y) } & =\theta(x^{0}-y^{0})\braket{ 0|A^{i}(x)A^{0}(y)|0 } +\theta(y^{0}-x^{0})\braket{ 0|A^{0}(y)A^{i}(x)|0 }  \\
 & =-\frac{\partial ^{i}_{x}\partial ^{0}_{x}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A^{0}(x)A^{i}(y) } & =\theta(x^{0}-y^{0})\braket{ 0|A^{0}(x)A^{i}(y)|0 } +\theta(y^{0}-x^{0})\braket{ 0|A^{i}(y)A^{0}(x)|0 }  \\
 & =-\frac{\partial ^{i}_{x}\partial ^{0}_{x}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y) } & =\theta(x^{0}-y^{0})\braket{ 0|A^{0}(x)A^{0}(y)|0 } +\theta(y^{0}-x^{0})\braket{ 0|A^{0}(y)A^{0}(x)|0 }  \\
 & =\left(-1 -\frac{\partial ^{0}_{x}\partial ^{0}_{x}}{m^{2}} \right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}-\frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

as a summary, we have

$$\tag{1.20}
\begin{align}
\braket{ 0|\mathcal{T}A^{\mu}(x)A^{\nu}(y)|0 } & =\left(\eta ^{\mu \nu}-\frac{\partial ^{\mu}_{x}\partial ^{\nu}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}-\frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

the time-ordered 2-pt correlation function $\displaystyle{(1.20)}$ has a non-covariant contact term, which can be interpreted via path integral formalism. 

### path integral quantization of Proca field

introduce the generating functional

$$\tag{1.21}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)G^{\mu \nu}(x,y)J_{\nu}(y)\right)
\end{align}
$$

here the Green functon $\displaystyle{G^{\mu \nu}(x,y)}$ satisfies

$$\tag{1.22}
\begin{align}
i(\partial _{\mu}\partial _{\nu}-\eta _{\mu \nu}(\nabla^{2}+m^{2}))G^{\nu \rho}(x,y) & =\delta ^{\rho}_{\mu}\delta ^{4}(x-y)
\end{align}
$$

solving this equation, we get

$$\tag{1.23}
\begin{align}
G^{\mu \nu}(x,y) & = \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot(x-y)} \left(\eta ^{\mu \nu} +\frac{k^{\mu}k^{\nu}}{m^{2}}\right)
\end{align}
$$

then the correlation function is given by

$$\tag{1.24}
\begin{align}
\braket{ A^{\mu}(x)A^{\nu}(y) }  & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J_{\mu}(x)\delta J_{\nu}(y)} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot(x-y)} \left(\eta ^{\mu \nu} +\frac{k^{\mu}k^{\nu}}{m^{2}}\right)
\end{align}
$$

now we consider the relationship between the correlation function $\displaystyle{\braket{ A^{\mu}(x)A^{\nu}(y) }}$ in (1.24) and the time-ordered 2-pt correlation function $\displaystyle{\braket{ 0|\mathcal{T}A^{\mu}(x)A^{\nu}(y)|0 }}$ in (1.20). for $\displaystyle{0i}$ components of $\displaystyle{\braket{ A^{\mu}(x)A^{\nu}(y) }}$, we have

$$\tag{1.25}
\begin{align}
\braket{ A^{0}(x)A^{i}(y) }  & =\frac{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}A^{0}(x)A^{i}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0}\partial _{j}A^{j}(z) \right)A^{i}(y)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}[A^{i}]}\right)}} \\
 & =-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{j,z}\braket{ A^{j}(z)A^{i}(y) }  \\
 & =-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{j,z}\braket{ 0|\mathcal{T}A^{j}(z)A^{i}(y)|0 }  \\
 & =\braket{ 0|\mathcal{T}\left(-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{j,z}A^{j}(z) \right)A^{i}(y)|0 }  \\
 & =\braket{ 0|\mathcal{T}A^{0}(x)A^{i}(y)|0 }
\end{align}
$$

here the effective Lagrangian is defined as

$$\tag{1.26}
\begin{align}
\mathcal{L}_{\mathrm{eff}} & =-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}(\dot{A}^{i})^{2}-\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{x,i}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z) \\
 & +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2}
\end{align}
$$

which is obtained by integrate out the $\displaystyle{A^{0}}$. and $\displaystyle{G(\vec{x},\vec{y})}$ is the Green function corresponding to operator $\displaystyle{\vec{\nabla}^{2}+m^{2}}$ is defined as

$$\tag{1.27}
\begin{align}
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi} \frac{e^{-m|\vec{x}-\vec{y}|}}{|\vec{x}-\vec{y}|}
\end{align}
$$

and for 00 component, we have

$$\tag{1.28}
\begin{align}
\braket{ A^{0}(x)A^{0}(y) }  & = \frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A^{0}(x)A^{0}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left[ \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}A^{i}(z) \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}A^{j}(w) \right)-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})C \right]\exp\left(i \int \mathrm{d}^{4}\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & = \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w} \right)\braket{ A^{i}(z)A^{j}(w) } -i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

here quantum fluctuation of $\displaystyle{A^{0}}$ contributes the second term. the first term is

$$\tag{1.29}
\begin{align}
 & \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w} \right)\braket{ A^{i}(z)A^{j}(w) } \\
 & = \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w} \right)\braket{ 0|\mathcal{T}A^{i}(z)A^{j}(w)|0 } \\
 & =\left( -\int \mathrm{d}^{3}\vec{z} G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\right)\braket{ 0|\mathcal{T}A^{i}(x)A^{0}(y)|0 }  \\
 & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 }+\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{i,z}\braket{ 0|[A^{i}(z),A^{0}(y)]|0 }  \\
 & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 }+\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\left(-\frac{i}{m^{2}}\vec{\nabla}_{z}^{2}\delta ^{3}(\vec{z}-\vec{y})\right) \\
 & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 }-\frac{i}{m^{2}}\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}\vec{\nabla}_{z}^{2}G(\vec{x},\vec{z})\delta ^{3}(\vec{z}-\vec{y}) \\
 & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } +i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})+\frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

and finally

$$\tag{1.30}
\begin{align}
\braket{ A^{0}(x)A^{0}(y) } & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } +\frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

the contact term $\displaystyle{\frac{i}{m^{2}}\delta ^{4}(x-y)}$ in (1.30) is exactly the difference between the correlation function $\displaystyle{\braket{ A^{\mu}(x)A^{\nu}(y) }}$ in (1.24) and the time-ordered 2-pt correlation function $\displaystyle{\braket{ 0|\mathcal{T}A^{\mu}(x)A^{\nu}(y)|0 }}$ in (1.20). 

### discussion

??

# a system with second class constraints

## canonical formalism in covariant phase space

we consider a system with the following Lagrangian

$$\tag{1.1}
\begin{align}
L[x,\phi] & =\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}
\end{align}
$$

this action describes a harmonic oscillator with effective Lagrangian $\displaystyle{L[x]=\frac{1}{2}(m-\lambda ^{2})\dot{x}^{2}-\frac{1}{2}kx^{2}}$. here we assume that $\displaystyle{m-\lambda ^{2}>0}$. we take a variation of the Lagrangian as

$$\tag{1.2}
\begin{align}
\delta L & =E_{x}\delta x+ E_{\phi}\delta \phi+ \frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

with

$$\tag{1.3}
\begin{align}
E_{x} & =-(m\ddot{x}+kx-\lambda \dot{\phi}) \\
E_{\phi} & =\phi-\lambda \dot{x} \\
\theta & =m\dot{x}\delta x-\lambda \phi \delta x
\end{align}
$$

then the symplectic potential is given by

$$\tag{1.4}
\begin{align}
\omega & =m\delta \dot{x}\wedge \delta x-\lambda \delta \phi \wedge \delta x
\end{align}
$$

a general solution of the equations of motion $\displaystyle{E_{x}=E_{\phi}=0}$ is given by

$$\tag{1.5}
\begin{align}
x(t) & =\frac{1}{\sqrt{ 2m'\omega }}(ae^{-i \omega t}+a^{\dagger}e^{i \omega t}) \\
\phi(t) & =\frac{i\lambda \omega}{\sqrt{ 2m'\omega }}(-ae^{-i \omega t}+a^{\dagger}e^{i\omega t})
\end{align}
$$

where $\displaystyle{m'=m-\lambda ^{2},\omega=\sqrt{ k/m' }}$. then the symplectic form becomes

$$\tag{1.6}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

then the Hamiltonian flow corresponding to $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ is given by

$$\tag{1.7}
\begin{align}
X_{x(t)} & =i\left( \frac{\delta x(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta x(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =-\frac{i}{\sqrt{ 2m'\omega }}\left(e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}-e^{i \omega t} \frac{\delta}{\delta a}\right) \\
X_{\phi(t)} & =i\left( \frac{\delta \phi(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \phi(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =- \frac{\lambda \omega}{\sqrt{ 2m'\omega }}\left(e^{i \omega t} \frac{\delta}{\delta a}+e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

the commutators between $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ are then 

$$\tag{1.8}
\begin{align}
[x(t),x(t')] & =iX_{x(t)}\cdot X_{x(t')}\cdot \omega \\
 & =\frac{i}{m'\omega}\sin \omega(t-t') \\
[x(t),\phi(t')] & =iX_{x(t)}\cdot X_{\phi(t')}\cdot \omega \\
  & = \frac{i\lambda}{m'}\cos \omega(t-t')\\
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & = \frac{i\lambda ^{2}\omega}{m'}\sin(t-t')
\end{align}
$$

and the 2-point time ordered correlation functions are given by

$$\tag{1.9}
\begin{align}
\braket{ 0|\mathcal{T}x(t)x(t')|0 } & = \theta(t-t')\braket{ 0|x(t)x(t')|0 } +\theta(t'-t)\braket{ 0|x(t')x(t)|0 }  \\
 & =\frac{1}{2m'\omega}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =\frac{1}{im'} \int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} \\
\braket{ 0|\mathcal{T}x(t)\phi(t')|0 } & = \theta(t-t')\braket{ 0|x(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')x(t)|0 }  \\
 & =-\frac{i\lambda}{2m'}(\theta(t-t')e^{-i \omega(t-t')}-\theta(t'-t)e^{i \omega(t-t')}) \\ 
 & =-\frac{\lambda}{im'}\partial _{t}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} \\
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & = \theta(t-t')\braket{ 0|\phi(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')\phi(t)|0 }  \\
 & =\frac{\lambda ^{2}\omega}{2m'}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =-\frac{\lambda ^{2}}{im'}\partial _{t}^{2}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} -\frac{i\lambda ^{2}}{m'}\delta(t-t')\\
\end{align}
$$

we note that the $\displaystyle{\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 }}$ contains a delta function, which can be explained in path integral formalism. 

## path integral formalism

consider the following generating functional

$$\tag{1.10}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\delta(L[x,\phi]+Jx+\eta \phi)\right) \\
 & =\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}\right)\exp\left(-\frac{1}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda \dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)
\end{align}
$$

where the Green function $\displaystyle{G(t,t')}$ satisfies

$$\tag{1.11}
\begin{align}
\left(m'\frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k-i\varepsilon\right)G(t,t')=\delta(t-t')
\end{align}
$$

and the solution is given by

$$\tag{1.12}
\begin{align}
G(t,t') & =\frac{1}{im}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon}
\end{align}
$$

the correlation functions can be computed as

$$\tag{1.13}
\begin{align}
\braket{ x(t)x(t') } & =\frac{\delta ^{2}Z[J,\eta]}{i^{2}\delta J(t)\delta J(t')}\Big|_{J=\eta=0} \\
 & =G(t,t') \\
\braket{ x(t)\phi(t') } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta J(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\lambda \partial _{t}G(t,t') \\
\braket{ \phi(t)\phi(t') } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta \eta(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-i\delta(t-t')+\lambda ^{2} \frac{\partial^{2}}{\partial t\partial t'}G(t,t') \\
 & =-i\delta(t-t')-\lambda ^{2} \partial _{t}^{2}G(t,t')
\end{align}
$$

now we want relate the correlation functions (1.13) to the time ordered correlation functions (1.9). we note that the correlation functions containing $\displaystyle{\phi}$ in (1.13) are defined as

$$\tag{1.14}
\begin{align}
\braket{ x(t)\phi(t') } & =\frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)\phi(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}x \lambda x(t)\dot{x}(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda \partial _{t'}\braket{ x(t)\dot{x}(t') } \\
 & =\lambda \partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 }  \\
 & = \braket{ 0|\mathcal{T}x(t)(\lambda \dot{x}(t'))|0 }  \\
 & = \braket{ 0|\mathcal{T}x(t)\phi(t')|0 } 
\end{align}
$$

and

$$\tag{1.15}
\begin{align}
\braket{ \phi(t)\phi(t') } & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \phi(t)\phi(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}x\left(\lambda ^{2}\dot{x}(t)\dot{x}(t')+i\delta(t-t')\right)\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda ^{2}\partial _{t}\partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 } +i\delta(t-t')
\end{align}
$$

where the second term is contributed by quantum fluctuation of $\displaystyle{\phi}$. the first term is

$$\tag{1.16}
\begin{align}
\lambda ^{2}\partial _{t}\partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 }  & =\lambda \partial _{t}\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }  \\
 & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\lambda \delta(t-t')\braket{ 0|[x(t),\phi(t')]|0 }  \\
 & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\frac{i\lambda ^{2}}{m'}\delta(t-t')
\end{align}
$$

finnally, we have

$$\tag{1.17}
\begin{align}
\braket{ \phi(t)\phi(t') } & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\frac{im}{m'}\delta(t-t')
\end{align}
$$

the extra term is exactly the difference between canonical formalism and the path integral formalism. 

## Dirac approach to system with second class constraints

(waiting to be completed)

## Faddeev-Senjanovic formalism


for a system with second class constraints, Faddeev and Senjanovic proposed a formalism to calculate the path integral as

$$\tag{1.18}
\begin{align}
Z & =\int \mathcal{D}\phi ^{a}\mathcal{D}\pi _{a}\prod _{i}\delta(\varphi _{i}) \det(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}})^{1/2} \exp\left(i \int \mathrm{d}^{d}x(\pi _{a}\phi ^{a}-H[\phi ^{a},\pi _{a}])\right)
\end{align}
$$

here $\displaystyle{\varphi _{i}}$ are second class constraints, $\displaystyle{\pi _{a}}$ is the canonical momentum corresponding to dynamical variable $\displaystyle{\phi ^{a}}$, and $\displaystyle{H[\phi ^{a},\pi _{a}]}$ is the Hamiltonian. $\displaystyle{\delta(\varphi _{i})}$ restrict the path integral to the subspace of phase space that satisfies the second class constraints, and $\displaystyle{\det(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}})^{1/2}}$ is the Phaffian of the Poisson bracket matrix $\displaystyle{\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}}}$, which accounts for the change of measure in the path integral.

having defined the path integral, we can first define the generating functional as

$$\tag{1.19}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}p_{x}\mathcal{D}\phi \mathcal{D}p_{\phi}\prod ^{2}_{i=1}\delta(\varphi _{i})\det\left(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}}\right)^{1/2}\exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(p_{x}\dot{x}+p_{\phi}\dot{\phi}-H[x,\phi]+Jx+\eta \phi\right)\right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\lambda \dot{x}\phi\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}\phi ^{2}\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}kx^{2}+Jx+\eta \phi\right)\right) \\
 & =\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}\right)\exp\left(-\frac{1}{2}\int \mathrm{d}t\mathrm{d}t'(J-\lambda\dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)
\end{align}
$$

and the following discussion is the same as subsection 2.

cite [https://doi.org/10.1016/0003-4916(76)90062-2] and [Henneaux, Teitelboim]

# eletric fields

in this appendix we discuss electric fields.

## electric fields in 1+1 dimensional spacetime

we first consider electric fields defined in 1+1 dimensional spacetime, and the space is a circle with radius $\displaystyle{R}$. the action is defined as follows:

$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{\Theta}{2\pi}F_{01}\right)
\end{align}
$$

where $\displaystyle{F_{\mu \nu}=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}}$ is the field strength, and $\displaystyle{\Theta}$ is a constant, which corresponds to a topological term. we first take a variation of the action

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{2}x\left(E_{1}\delta A^{1}+E_{0}\delta A^{0}\right)+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

where $\displaystyle{E_{1}=-\partial _{0}(\dot{A}^{1}+\partial _{1}A^{0})}$ and $\displaystyle{E_{0}=-\partial _{1}(\dot{A}^{1}+\partial _{1}A^{0})}$ are the Euler-Lagrangian operators, and $\displaystyle{\theta}$ is the symplectic potential. the equation of motion is given by

$$\tag{1.3}
\begin{align}
\partial _{0}(A^{1}+\partial _{1}A^{0})=\partial _{1}(A^{1}+\partial _{1}A^{0})=0
\end{align}
$$

which solves to

$$\tag{1.4}
\begin{align}
\dot{A}^{1}+\partial _{1}A^{0} & =-E_{0}
\end{align}
$$

we choose the Column gauge $\displaystyle{\partial _{1}A^{1}=0}$, which implies the constraints equation $\displaystyle{A^{1}=0}$. so there is no local degrees of freedom. and the only degree of freedom is the zero mode of $\displaystyle{A^{1}}$, which is defined as

$$\tag{1.5}
\begin{align}
\phi(t) & =\int_{0}^{2\pi R}\mathrm{d}xA^{1}(x,t)
\end{align}
$$

the action can be rewritten as

$$\tag{1.6}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{1}{4\pi R^{2}}\dot{\phi}^{2}+\frac{\theta}{2\pi}\dot{\phi}\right)
\end{align}
$$

the equation of motion for $\displaystyle{\phi}$ is then

$$\tag{1.7}
\begin{align}
E_{\phi} & =-\frac{1}{4\pi R^{2}}\ddot{\phi}=0
\end{align}
$$

which implies that $\displaystyle{\phi=E_{0}t+\phi_{0}}$. then the symplectic form is given by

$$\tag{1.8}
\begin{align}
\omega & =\frac{1}{2\pi R^{2}}\delta E_{0}\wedge \delta \phi_{0}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{\phi}$ is then defined as

$$\tag{1.9}
\begin{align}
X_{\phi(t)} & =2\pi R^{2}\left(\frac{\delta \phi}{\delta \phi_{0}} \frac{\delta}{\delta E_{0}}-\frac{\delta \phi}{\delta E_{0}} \frac{\delta}{\delta \phi _{0}}\right) \\
 & =2\pi R^{2}\left(\frac{\delta}{\delta E_{0}}-t \frac{\delta}{\delta \phi _{0}}\right)
\end{align}
$$

the commutation relation between $\displaystyle{\phi(t)}$ and $\displaystyle{\phi(t')}$ is given by

$$\tag{1.10}
\begin{align}
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =2\pi R^{2}(t'-t)
\end{align}
$$

and the time ordered 2-point correlation function is

$$\tag{1.11}
\begin{align}
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & =\theta(t-t')\braket{ 0|\phi(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')\phi(t)|0 }  \\
 & =2\pi R^{2}[\theta(t-t')t'+\theta(t'-t)t]
\end{align}
$$

## electric fields in 1+3 dimensional spacetime

in this subsection we will consider electric field in 1+3 dimensional spacetime. again the metric is flat with signature $\displaystyle{(-,+,+,+)}$. the Cauchy surfaces are chosen to be the constant time hypersurfaces with norm vector $\displaystyle{\tau ^{\mu}=(1,0,0,0)}$. the boundary condition is chosen to be that the dynamical fields vanish at infinity. the action is given by

$$\tag{1.12}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
\end{align}
$$

### canonical formalism

the variation of the action gives

$$\tag{1.13}
\begin{align}
\delta S & =\int \mathrm{d}^{4}xE_{\nu}\delta A^{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{\nu} & =\partial ^{\mu}F_{\mu \nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

impose Column gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, the equation of motion for $\displaystyle{A^{0}}$ implies $\displaystyle{\vec{\nabla}^{2}A^{0}=0}$. then by boundary condition, we have the constraint $\displaystyle{A^{0}=0}$. a general solution to the equation of motion is given by

$$\tag{1.14}
\begin{align}
A^{i}(x) =&\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1} e^{s,i}_{k}[a_{ks}\sigma _{k}(x)+a^{\dagger}_{ks}\sigma ^{*}_{k}(x)]
\end{align}
$$

then the symplectic form is defined as

$$\tag{1.15}
\begin{align}
\omega & =\delta \theta \\
 & =i\int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1} \delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{A^{i}(x)}$ is defined as

$$\tag{1.16}
\begin{align}
X_{A^{i}(x)} & =-i \int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}\left(\frac{\delta A^{i}}{\delta a_{ks}} \frac{\delta}{\delta a^{\dagger}_{ks}}-\frac{\delta A^{i}}{\delta a^{\dagger}_{ks}} \frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum ^{2}_{s=1}\left(\sigma _{k} \frac{\delta}{\delta a^{\dagger}_{ks}}-\sigma ^{*}_{k} \frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

after canonical quantization, we have the commutation relation

$$\tag{1.17}
\begin{align}
[A^{i}(x),A^{j}(y)] & =iX_{A^{i}(x)}\cdot X_{A^{j}(x)}\cdot \omega \\
 & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

here the contour for $\displaystyle{k^{0}}$ is the same as before. the time ordered 2-point correlation function is given by

$$\tag{1.18}
\begin{align}
\braket{ A^{i}(x)A^{j}(y) } & =\theta(x^{0}-y^{0})\braket{ A^{i}(x)A^{j}(y) } +\theta(y^{0}-x^{0})\braket{ A^{j}(y)A^{i}(x) }  \\
 & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} e^{-ik\cdot(x-y)} \left(\frac{i}{k^{2}-i\varepsilon}\right)
\end{align}
$$

### path integral formalism

in this subsection we will use the Faddeev-Popov formalism to quantize the electric field in the Column gauge. introduce the generating functional

$$\tag{1.19}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}+J_{\mu}A^{\mu}\right)\right)
\end{align}
$$

where the $\displaystyle{-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}}$ is the gauge-fixing term introduced by Faddeev-Popov formalism. ghosts action is absorbed into overall factor due to decouple with $\displaystyle{A^{\mu}}$. then we have

$$\tag{1.20}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A^{\mu}D_{\mu \nu}A^{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)G^{\mu \nu}(x,y)J_{\nu}(y)\right)
\end{align}
$$

here the operator $\displaystyle{D_{\mu \nu}}$ and the Green function $\displaystyle{G^{\mu \nu}(x,y)}$ satisfies

$$\tag{1.21}
\begin{align}
D_{\mu \nu} & =\begin{pmatrix}
\vec{\nabla}^{2} & \partial _{0}\partial _{i} \\
\partial _{0}\partial _{i} & \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})
\end{pmatrix} \\
iD_{\mu \nu}G^{\nu \rho}(x,y) & =\delta ^{\rho}_{\mu}\delta ^{4}(x-y)
\end{align}
$$

which solves to

$$\tag{1.22}
\begin{align}
G^{\mu \nu}(x,y) & =i \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}e^{ik\cdot(x-y)}\begin{pmatrix}
-\frac{1}{\vec{k}^{2}}\left(1-\frac{(k^{0})^{2}}{\vec{k}^{2}}\xi\right) & \frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi \\
\frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi & \frac{1}{k^{2}-i\varepsilon}\left( \delta ^{ij}-\frac{k^{i}k^{j}}{\vec{k}^{2}}\left( 1-\frac{k^{2}\xi}{\vec{k}^{2}} \right) \right)
\end{pmatrix}
\end{align}
$$

then the correlation functions are

$$\tag{1.23}
\begin{align}
\braket{ A^{\mu}(x)A^{\nu}(y) } & = \frac{\delta ^{2}Z[J_{\mu}]}{i^{2}\delta J_{\mu}(x)\delta J_{\nu}(y)}\Big|_{J=0} \\
 & = G^{\mu \nu}(x,y) \\
 & =i \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}e^{ik\cdot(x-y)}\begin{pmatrix}
-\frac{1}{\vec{k}^{2}}\left(1-\frac{(k^{0})^{2}}{\vec{k}^{2}}\xi\right) & \frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi \\
\frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi & \frac{1}{k^{2}-i\varepsilon}\left( \delta ^{ij}-\frac{k^{i}k^{j}}{\vec{k}^{2}}\left( 1-\frac{k^{2}\xi}{\vec{k}^{2}} \right) \right)
\end{pmatrix}
\end{align}
$$

finally we will return to the canonical formalism. here we choose Landau gauge, i.e., $\displaystyle{\xi=0}$, and consider the 00 component of the correlation function

$$\tag{1.24}
\begin{align}
\braket{ A^{0}(x)A^{0}(y) } & = \frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A^{0}(x)A^{0}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left[ \left(\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}A^{i}(z)\right)\left(\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}A^{j}(w)\right)-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y}) \right]\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)} \\
 & =\left(\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\right)\left(\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\right)\braket{ A^{i}(z)A^{j}(w) } -i\delta(x_{0}-y_{0})G(\vec{x},\vec{y}) 
\end{align}
$$

here the second term $\displaystyle{-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y}) }$ comes from the quantum fluctuation of $\displaystyle{A^{0}}$. effective Lagrangian $\displaystyle{\mathcal{L}_{\mathrm{eff}}[A^{i}]}$ is obtained by integrate out $\displaystyle{A^{0}}$

$$\tag{1.25}
\begin{align}
\mathcal{L}_{\mathrm{eff}}[A^{i}] & = \frac{1}{2}(\dot{A}^{i})^{2}-\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{i,x}G(\vec{x},\vec{y})\partial _{0}(\vec{\nabla}\cdot\vec{A})(y)+\frac{1}{2}\left( \int \mathrm{d}^{3}\vec{y}\partial _{i,x}G(\vec{x},\vec{y})\partial _{0}(\vec{\nabla}\cdot \vec{A})(y) \right)^{2}-\frac{1}{4}F_{ij}F^{ij}
\end{align}
$$

and the Green function $\displaystyle{G(\vec{x},\vec{y})}$ corresponding to $\displaystyle{\vec{\nabla}^{2}}$ is given by

$$\tag{1.26}
\begin{align}
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi} \frac{1}{|\vec{x}-\vec{y}|}
\end{align}
$$

the first term in (1.24) is then

$$\tag{1.27}
\begin{align}
& \int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\braket{ A^{i}(z)A^{j}(w) } \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\braket{ 0|\mathcal{T}A^{i}(z)A^{j}(w)|0 } \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\braket{ 0|\mathcal{T}A^{i}(z)A^{0}(y)|0 }  \\
 & = \braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } +\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z} G(\vec{x},\vec{z})\partial _{j,z}\braket{ 0|[A^{i}(z),A^{0}(y)]|0 } \\
 & = \braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } 
\end{align}
$$

so we have

$$\tag{1.28}
\begin{align}
\braket{ A^{0}(x)A^{0}(y) }  & =\braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y) }-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

the second term in (1.28) is exactly the difference between the correlation function defined in (1.23) and the time ordered 2-point correlation function defined in (1.18).
