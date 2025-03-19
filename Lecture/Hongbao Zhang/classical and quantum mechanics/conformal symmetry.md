## free scalar

the action of a free scalar is

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\varepsilon g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\phi
\end{align}
$$

where $\displaystyle{\phi}$ is the dynamical field, and $\displaystyle{g_{\mu \nu}}$ is the background metric. $\displaystyle{\phi}$ falls down quickly while approaching to space boundary $\displaystyle{\Gamma}$ that we do not consider terms support on $\displaystyle{\Gamma}$ .the variation of this action is

$$\tag{1.2}
\begin{align}
\delta S & =-\int \varepsilon g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\delta \phi \\
 & =\int _{M}\mathbf{E}\delta \phi+\theta |_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

where 

$$\tag{1.3}
\begin{align}
\mathbf{E} & =\nabla ^{2}\phi \varepsilon \\
\theta & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

consider a diffeomorphism parameterized by $\displaystyle{\xi ^{\mu}}$

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x \mathcal{L}_{\xi}\phi  \frac{\delta}{\delta \phi} \\
 & =\int _{M}\mathrm{d}^{d}x \xi ^{\mu}\nabla _{\mu}\phi  \frac{\delta}{\delta \phi}
\end{align}
$$

where $\displaystyle{\xi ^{\mu}}$ satisfies the Killing equation

$$\tag{1.5}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}=0
\end{align}
$$

then act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{1.6}
\begin{align}
X_{\xi}\cdot \delta S & =-\int _{M}\varepsilon \nabla _{\mu}\phi \nabla ^{\mu}(\xi ^{\rho}\nabla _{\rho}\phi) \\
 & =-\frac{1}{2}\int _{M}\varepsilon \nabla _{\mu}(\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi) \\
 & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}} \\
\alpha _{\xi} & =\frac{1}{2}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi
\end{align}
$$

then the Noether charge is

$$\tag{1.7}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \right) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

then we consider the Poisson brackets between Noether charges. 

$$\tag{1.8}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =X_{\xi}\cdot X_{\zeta}\cdot \omega=X_{\zeta}\cdot \delta H_{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(X_{\zeta}\cdot \delta T_{\mu \nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+T_{\rho \nu}\nabla _{\mu}\zeta ^{\rho}+T_{\mu \rho}\nabla _{\nu}\zeta ^{\rho}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\xi ^{\rho}\nabla _{\rho}\zeta ^{\nu}-\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu})T_{\mu \nu}=H_{\left\{\xi,\zeta\right\}}
\end{align}
$$

which satisfies the Lie algebra.

### a general consideration

in this subsection we will consider why CPS formalism always gives the right answer. consider a general action with dynamic fields $\displaystyle{\psi}$ and $\displaystyle{g_{\mu \nu}}$

$$\tag{1.9}
\begin{align}
S & =\int _{M}\mathbf{L}[\psi,g_{\mu \nu}]
\end{align}
$$

the variation of this action is

$$\tag{1.10}
\begin{align}
\delta S & =\int _{M}\left( \mathbf{E}_{\psi}\delta \psi-\frac{1}{2}T^{\mu \nu}\delta g_{\mu \nu} \right)+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}
\end{align}
$$

consider a symmetry transformation parameterized by $\displaystyle{\xi ^{\mu}}$

$$\tag{1.11}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x\left( \mathcal{L}_{\xi}\psi  \frac{\delta}{\delta \psi}+\mathcal{L}_{\xi}g_{\mu \nu}  \frac{\delta}{\delta g_{\mu \nu}}\right)
\end{align}
$$

act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{1.12}
\begin{align}
X_{\xi}\cdot \delta S & =X_{\xi}\cdot \theta|_{\Sigma _{f}}-\int _{\Sigma _{f}} \varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}-X_{\xi}\cdot \theta|_{\Sigma _{i}}-\int _{\Sigma _{i}} \varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

then the Noether charge is

$$\tag{1.13}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

### 2-dimensional free scalar

for 2-dimensional free scalar, the action allows a conformal transformation

$$\tag{1.14}
\begin{align}
X_{\xi}=\int _{M}\mathrm{d}^{2}x\mathcal{L}_{\xi}\phi  \frac{\delta}{\delta \phi}
\end{align}
$$

where $\displaystyle{\xi ^{\mu}}$ satisfies the conformal Killing equation

$$\tag{1.15}
\begin{align}
\partial _{\mu}\xi _{\nu}+\partial_{\nu}\xi _{\mu}-g_{\mu \nu}\partial_{\rho}\xi ^{\rho}=0
\end{align}
$$

we have the following corollary

$$\tag{1.15'}
\begin{align}
\partial ^{\nu}\partial _{\nu}\xi ^{\mu}=0 
\end{align}
$$

act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{1.16}
\begin{align}
X_{\xi}\cdot \delta S & =-\int _{M}\varepsilon \nabla _{\mu}\phi \partial^{\mu}(\xi ^{\nu}\partial_{\nu}\phi) \\
 & =\int _{\Sigma _{f}}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{2}g_{\mu \nu}\partial_{\rho}\phi \partial^{\rho}\phi-\int _{\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{2}g_{\mu \nu}\partial_{\rho}\phi \partial^{\rho}\phi
\end{align}
$$

then the Noether charge is

$$\tag{1.17}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \partial_{\mu}\phi \partial_{\nu}\phi-\frac{1}{2}g_{\mu \nu}\partial_{\rho}\phi \partial^{\rho}\phi \right) \\
 & = \int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

action (1.14) allows another translation symmetry

$$\tag{1.18}
\begin{align}
X_{\Omega}=\int \mathrm{d}^{2}x\Omega  \frac{\delta}{\delta \phi}
\end{align}
$$

where $\displaystyle{\Omega}$ satisfies $\displaystyle{\nabla ^{2}\Omega=0}$. act this symmetry on the action, we have

$$\tag{1.19}
\begin{align}
X_{\Omega}\cdot \delta S & =-\int _{M}\varepsilon \partial_{\mu}\phi \partial^{\mu}\Omega \\
 & =\int _{\Sigma _{f}}\varepsilon _{\Sigma}\tau ^{\mu}\partial_{\mu}\Omega \phi-\int _{\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\partial_{\mu}\Omega \phi
\end{align}
$$

and the corresponding Noether charge is

$$\tag{1.20}
\begin{align}
H'_{\Omega} & =X_{\Omega}\cdot \theta-\alpha _{\Omega} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\Omega \partial_{\mu}\phi -\phi \partial_{\mu}\Omega)
\end{align}
$$

finally consider a combined symmetry

$$\tag{1.21}
\begin{align}
X_{\xi}' & =X_{\xi}+\frac{1}{\gamma}X_{\partial \xi} \\
 & =\int _{M}\mathrm{d}^{2}x\left( \xi ^{\rho}\partial_{\rho}\phi+\frac{1}{\gamma}\partial_{\rho}\xi ^{\rho} \right) \frac{\delta}{\delta \phi}
\end{align}
$$

then the corresponding Noether charge is

$$\tag{1.22}
\begin{align}
H'_{\xi} & =H_{\xi}+\frac{1}{\gamma}H_{\partial \xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \partial_{\mu}\phi \partial_{\nu}\phi-\frac{1}{2}g_{\mu \nu}\partial_{\rho}\phi \partial^{\rho}\phi \right)+\frac{1}{\gamma}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\partial_{\nu}\xi ^{\nu}\partial_{\mu}\phi-\phi \partial_{\mu}\partial_{\nu}\xi ^{\nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\Theta _{\mu \nu} \\
\Theta _{\mu \nu} & =\partial _{\mu}\phi \partial _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\partial _{\rho}\phi \partial ^{\rho}\phi-\frac{2}{\gamma}\partial _{\mu}\partial _{\nu}\phi
\end{align}
$$

and finally we will consider the Poisson brackets between Noether charges.

$$\tag{1.23}
\begin{align}
\left\{H_{\xi}',H_{\zeta}'\right\} & =X_{\zeta}\cdot \delta H_{\xi}' \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\partial _{\rho}\Theta _{\mu \nu}+\Theta _{\rho \nu}\partial _{\mu}\zeta ^{\rho}+\Theta _{\mu \rho}\partial _{\nu}\zeta ^{\rho})+\frac{1}{\gamma ^{2}}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\partial _{\nu}\xi ^{\nu}\partial _{\mu}\partial _{\rho}\zeta ^{\rho}-\partial _{\nu}\zeta ^{\nu}\partial _{\mu}\partial _{\rho}\zeta ^{\rho}) \\
 & =H'_{\left\{\xi,\zeta\right\}}+\frac{1}{\gamma ^{2}}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\partial _{\nu}\xi ^{\nu}\partial _{\mu}\partial _{\rho}\zeta ^{\rho}-\partial _{\nu}\zeta ^{\nu}\partial _{\mu}\partial _{\rho}\xi ^{\rho})
\end{align}
$$

compactify the space coordiante $\displaystyle{\phi}$ to $\displaystyle{S^{1}}$, and the spacetime topology becomes $\displaystyle{\mathbb{R}\times S^{1}}$, we have conformal Killing fields

$$\tag{1.24}
\begin{align}
A_{n,a}=A_{-n,a} & =\cos nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\sin nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
B_{n,a}=B_{-n,a} & =\sin nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}-\cos nt\cos n\phi \left(\frac{\partial}{\partial \phi} \right)_{a}\\
C_{n,a}=-C_{-n,a} & =\sin nt\cos n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\cos nt\sin n\phi \left(\frac{\partial}{\partial \phi}\right)_{a} \\
D_{n,a}=-D_{-n,a} & =\cos nt\sin n\phi \left(\frac{\partial}{\partial t}\right)_{a}+\sin nt\cos n\phi \left(\frac{\partial}{\partial \phi}\right)_{a}
\end{align}
$$

then

$$\tag{1.25}
\begin{align}
\left\{A_{m},A_{n}\right\} & =+\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{A_{m},B_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}-\frac{1}{2}(m+n)D_{m-n} \\
\left\{A_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)A_{m+n}+\frac{1}{2}(m+n)A_{m-n} \\
\left\{A_{m},D_{n}\right\} & =+\frac{1}{2}(m-n)B_{m+n}-\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},B_{n}\right\} & =+\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{B_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)B_{m+n}+\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},D_{n}\right\} & =+\frac{1}{2}(m-n)A_{m+n}-\frac{1}{2}(m+n)A_{m-n} \\
\left\{C_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m+n} \\
\left\{C_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}+\frac{1}{2}(m+n)D_{m-n} \\
\left\{D_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n}
\end{align}
$$

then we have

$$\tag{1.26}
\begin{align}
\left\{H_{A_{m}}',H_{A_{n}}'\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{A_{m}}',H_{B_{n}}'\right\} & =-\frac{1}{2}(m-n)H_{D_{m+n}}-\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{A_{m}}',H_{C_{n}}'\right\} & =\frac{1}{2}(m-n)H_{A_{m+n}}+\frac{1}{2}(m+n)H_{A_{m-n}}+\frac{4\pi}{\gamma ^{2}}m^{3}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{A_{m}}',H_{D_{n}}'\right\} & =\frac{1}{2}(m-n)H_{B_{m+n}}+\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}}',H_{B_{n}}'\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{B_{m}}',H_{C_{n}}'\right\} & =\frac{1}{2}(m-n)H_{B_{m+n}}+\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}}',H_{D_{n}}'\right\} & =\frac{1}{2}(m-n)H_{A_{m+n}}+\frac{1}{2}(m+n)H_{A_{m-n}}-\frac{4\pi}{\gamma ^{2}}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{C_{m}}',H_{C_{n}}'\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{C_{m}}',H_{D_{n}}'\right\} & =\frac{1}{2}(m-n)H_{D_{m+n}}+\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{D_{m}}',H_{D_{n}}'\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} 
\end{align}
$$

define Virasoro modes as

$$\tag{1.27}
\begin{align}
L_{n} & =\frac{1}{2}H_{A_{n}}+\frac{1}{2}H_{B_{n}}+\frac{i}{2}H_{C_{n}}-\frac{i}{2}H_{D_{n}}+\frac{2\pi}{\gamma ^{2}}\delta _{n,0} \\
\bar{L}_{n} & =\frac{1}{2}H_{A_{n}}-\frac{1}{2}H_{B_{n}}+\frac{i}{2}H_{C_{n}}+\frac{i}{2}H_{D_{n}}+\frac{2\pi}{\gamma ^{2}}\delta _{n,0}
\end{align}
$$

then we have

$$\tag{1.28}
\begin{align}
\left\{L_{m},L_{n}\right\} & =-i(m-n)L_{m+n}+\frac{4\pi}{\gamma ^{2}}m(m^{2}-1)\delta _{m,-n} \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}+\frac{4\pi}{\gamma ^{2}}m(m^{2}-1)\delta _{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

which is exactly the Virasoro algebra with central charge $\displaystyle{c=\frac{48\pi}{\gamma ^{2}}}$

## conformally coupled scalar

