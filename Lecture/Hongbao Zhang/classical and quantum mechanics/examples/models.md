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
X_{\xi}\cdot \delta S & =-\int _{M}\varepsilon \partial _{\mu}\phi \partial^{\mu}(\xi ^{\nu}\partial_{\nu}\phi) \\
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
H_{\Omega} & =X_{\Omega}\cdot \theta-\alpha _{\Omega} \\
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
H'_{\xi} & =H_{\xi}+\frac{1}{\gamma}H_{\partial \xi}\\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \partial_{\mu}\phi \partial_{\nu}\phi-\frac{1}{2}g_{\mu \nu}\partial_{\rho}\phi \partial^{\rho}\phi \right) \\
 & +\frac{1}{\gamma}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\partial_{\nu}\xi ^{\nu}\partial_{\mu}\phi-\phi \partial_{\mu}\partial_{\nu}\xi ^{\nu}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\Theta _{\mu \nu} \\
\Theta _{\mu \nu} & =\partial _{\mu}\phi \partial _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\partial _{\rho}\phi \partial ^{\rho}\phi-\frac{2}{\gamma}\partial _{\mu}\partial _{\nu}\phi
\end{align}
$$

$$\tag{.}
\begin{align}
H'_{\xi}|_{\Sigma _{f}}-H'_{\xi}|_{\Sigma _{i}}=0
\end{align}
$$

and finally we will consider the Poisson brackets between Noether charges.

$$\tag{1.23}
\begin{align}
\left\{H_{\xi}',H_{\zeta}'\right\} & =X'_{\zeta}\cdot \delta H_{\xi}' \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\partial _{\rho}\Theta _{\mu \nu}+\Theta _{\rho \nu}\partial _{\mu}\zeta ^{\rho}+\Theta _{\mu \rho}\partial _{\nu}\zeta ^{\rho}) \\
 & +\frac{1}{\gamma ^{2}}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\partial _{\nu}\xi ^{\nu}\partial _{\mu}\partial _{\rho}\zeta ^{\rho}-\partial _{\nu}\zeta ^{\nu}\partial _{\mu}\partial _{\rho}\zeta ^{\rho}) \\
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

the action of a conformally coupled scalar is

$$\tag{2.1}
\begin{align}
S & =-\frac{1}{2}\int \varepsilon\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-2}{4(d-1)}R\phi ^{2}\right)
\end{align}
$$

the variation of the action is

$$\tag{2.2}
\begin{align}
\delta S & =-\int _{M}\varepsilon\left( \nabla _{\mu}\phi \nabla ^{\mu}\delta \phi+\frac{d-2}{4(d-1)}R\phi \delta \phi \right) \\
 & =\int _{M}\varepsilon\left( \nabla ^{2}\phi-\frac{d-2}{4(d-1)}R\phi \right)\delta \phi +\int _{\Sigma _{f}}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi-\int _{\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

consider a conformal transformation

$$\tag{2.3}
\begin{align}
g_{\mu \nu} & \mapsto e^{2\sigma}g_{\mu \nu} \\
\phi & \mapsto e^{-(d-2)\sigma/2}\phi
\end{align}
$$

under this transformation, we have

$$\tag{2.4}
\begin{align}
\tilde{\Gamma}^{\rho}_{~\mu \nu} & =\Gamma ^{\rho}_{~\mu \nu}+\delta ^{\rho}_{\mu}\nabla _{\nu}\sigma+\delta ^{\rho}_{\nu}\nabla _{\mu}\sigma+g_{\mu \nu}\nabla ^{\rho}\sigma \\
\tilde{R}_{\mu \nu \rho \sigma} & =R_{\mu \nu \rho \sigma}+g_{\mu \rho}\nabla _{\nu}\nabla _{\sigma}\sigma-g_{\nu \rho}\nabla _{\mu}\nabla _{\sigma}\sigma+g_{\nu \sigma}\nabla _{\mu}\nabla _{\rho}\sigma-g_{\mu \sigma}\nabla _{\nu}\nabla _{\rho}\sigma \\
 & +g_{\mu \rho}\nabla _{\nu}\sigma \nabla _{\sigma}\sigma-g_{\nu \rho}\nabla _{\mu}\sigma \nabla _{\sigma}\sigma+g_{\nu \sigma}\nabla _{\mu}\sigma \nabla _{\rho}\sigma-g_{\mu \sigma}\nabla _{\nu}\sigma \nabla _{\rho}\sigma \\
 & -(g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})\nabla _{\lambda}\sigma \nabla ^{\lambda}\sigma \\
\tilde{R}_{\mu \nu} & =R_{\mu \nu}-(d-2)\nabla _{\mu}\nabla _{\nu}\sigma-g_{\mu \nu}\nabla ^{2}\sigma+(d-2)\nabla _{\mu}\sigma \nabla _{\nu}\sigma-(d-2)g_{\mu \nu}\nabla _{\rho}\sigma \nabla ^{\rho}\sigma \\
\tilde{R} & =e^{-2\sigma}(R-2(d-1)\nabla ^{2}\sigma-(d-1)(d-2)\nabla _{\mu}\sigma \nabla ^{\mu}\sigma) \\
\tilde{\nabla}_{\mu}\tilde{\phi} & =e^{-(d-2)\sigma/2}\left( \nabla _{\mu}\phi-\frac{d-2}{2}\nabla _{\mu}\sigma \phi \right) \\
\tilde{\nabla}_{\mu}\tilde{\nabla}_{\nu}\tilde{\phi} & =e^{-(d-2)\sigma/2}\left( \nabla _{\mu}\nabla _{\nu}\phi-\frac{d}{2}\nabla _{\mu}\sigma \nabla _{\nu}\phi-\frac{d}{2}\nabla _{\mu}\phi \nabla _{\nu}\sigma+g_{\mu \nu}\nabla ^{\rho}\sigma \nabla _{\rho}\phi \right. \\
 &\left.  \frac{1}{4}(d-2)(d+2)\nabla _{\mu}\sigma \nabla _{\nu}\sigma \phi-\frac{d-2}{2}g_{\mu \nu}\nabla _{\rho}\sigma \sigma ^{\rho}\sigma \phi-\frac{d-2}{2}\nabla _{\mu}\nabla _{\nu}\sigma \phi \right) \\
\tilde{\nabla}^{2}\tilde{\phi} & =e^{-(d+2)\sigma/2}\left( \nabla ^{2}\phi-\frac{d-2}{2}\nabla ^{2}\sigma \phi-\frac{1}{4}(d-2)^{2}\nabla _{\mu}\sigma \nabla ^{\mu}\sigma \phi \right)
\end{align}
$$

then

$$\tag{2.5}
\begin{align}
\tilde{S} & =-\frac{1}{2}\int _{M}\tilde{\varepsilon}\left( \tilde{\nabla}_{\mu}\tilde{\phi}\tilde{\nabla}^{\mu}\tilde{\phi}+\frac{d-2}{4(d-1)}\tilde{R}\tilde{\phi}^{2} \right) \\
 & =S+\frac{d-2}{4}\int _{M}\varepsilon \nabla _{\mu}(\nabla ^{\mu}\sigma \phi ^{2})
\end{align}
$$

the action invariant up to a term supports on the Cauchy surface.

generally speaking, the conformal transformation can be viewed as a diffeomorphism together with a Weyl transformation. we denote the origin metric as $\displaystyle{g_{\mu \nu}}$ and the dynamical field as $\displaystyle{\phi(x)}$. under a diffeomorphism

$$\tag{2.6}
\begin{align}
x\mapsto f^{-1}(x)=x-\xi
\end{align}
$$

the metric and the dynamical field transform to

$$\tag{2.7}
\begin{align}
g'_{\mu \nu}(x)=g_{\alpha \beta}(f(x)) \frac{\partial f^{\alpha}}{\partial x^{\mu}} \frac{\partial f^{\beta}}{\partial x^{\nu}}, \phi'(x)=\phi(f(x))
\end{align}
$$

then under an associated Weyl transformation, the metric and the dynamical fields transform to

$$\tag{2.8}
\begin{align}
g''_{\mu \nu}(x) & =e^{2\sigma}g_{\mu \nu}'(x) \\
 & =e^{2\sigma}g_{\alpha \beta}(f(x)) \frac{\partial f^{\alpha}}{\partial x^{\mu}} \frac{\partial f^{\beta}}{\partial x^{\nu}} \\
 & =g_{\mu \nu}+2\sigma g_{\mu \nu}+\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} \\
\phi'(x) & =e^{-(d-2)\sigma/2}\phi'(x) \\
 & =e^{-(d-2)\sigma/2}\phi(f(x)) \\
 & =\phi-\frac{d-2}{2}\sigma \phi+\xi ^{\mu}\nabla _{\mu}\phi
\end{align}
$$

we would like to consider a special class of transformation such that the metric is invariant, and actually, only such transformation can be viewed as a symmetry in the sense of Noether theorem. (why?) then we have

$$\tag{2.9}
\begin{align}
\sigma=-\frac{2}{d}\nabla _{\rho}\xi ^{\rho}
\end{align}
$$

and $\displaystyle{\xi ^{\mu}}$ satisfies the conformal Killing equation

$$\tag{2.10}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0
\end{align}
$$

and the transformation of $\displaystyle{\phi}$ is

$$\tag{2.11}
\begin{align}
\phi''=\phi+\xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\phi
\end{align}
$$

therefore we consider the symmetry vector

$$\tag{2.12}
\begin{align}
X_{\xi} & =\int _{M} \mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi}
\end{align}
$$

we have the following two equations as the corollaries of (2.12)

$$\tag{2.13}
\begin{align}
\frac{d-2}{d}\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}+\nabla ^{2}\xi _{\mu}+R_{\mu \nu}\xi ^{\nu}=0 \\
\frac{2(d-1)}{d}\nabla ^{2}(\nabla _{\mu}\xi ^{\mu})+\xi ^{\mu}\nabla _{\mu}R+\frac{2}{d}R\nabla _{\mu}\xi ^{\mu} =0
\end{align}
$$

act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{2.14}
\begin{align}
X_{\xi}\cdot \delta S & =-\int _{M} \varepsilon \nabla _{\mu}\phi\nabla ^{\mu}\left( \xi ^{\nu}\nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\nu}\xi ^{\nu}\phi \right) \\
 & -\int _{M}\varepsilon \frac{(d-2)}{4(d-1)}R\phi\left( \xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi \right) \\
 & =-\int _{M}\varepsilon \nabla ^{\mu}\left( \frac{1}{2}\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}\phi ^{2} \right) \\
 & +\frac{d-2}{8(d-1)}\int _{M}\varepsilon \phi ^{2}\left(  \frac{2(d-1)}{d}\nabla ^{2}(\nabla _{\nu}\xi ^{\nu}) +\xi ^{\mu}\nabla _{\mu}R+\frac{2}{d}R\nabla _{\mu}\xi ^{\mu}\right) \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\left( \frac{1}{2}\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}\phi ^{2} \right)
\end{align}
$$

and the corresponding Noether charge is

$$\tag{2.15}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\left( \xi ^{\nu}\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi-\frac{d-2}{8(d-1)}R\xi _{\mu}\phi ^{2}\right. \\
 & \left.-\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}\phi ^{2}+\frac{d-2}{4d}\nabla _{\mu}\phi ^{2}\nabla _{\nu}\xi ^{\nu}\right) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi +\frac{d-2}{4(d-1)}G_{\mu \nu}\phi ^{2}\right. \\
 & \left.-\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\phi ^{2}+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{2}\phi ^{2}\right) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

finally we consider the Poisson bracket between Noether charges.

$$\tag{2.16}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =X_{\zeta}\cdot \delta H_{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}(\zeta ^{\rho}\nabla _{\rho}T_{\mu \nu}+T_{\rho \nu}\nabla _{\mu}\zeta ^{\rho}+T_{\mu \rho}\nabla _{\nu}\zeta ^{\rho}) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(\xi ^{\rho}\nabla _{\rho}\zeta ^{\nu}-\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu})T_{\mu \nu} \\
 & = H_{\left\{\xi,\zeta\right\}}
\end{align}
$$

## Liouville theory

the action of classcal Liouville theory is

$$\tag{3.1}
\begin{align}
S & =\int _{M}\varepsilon\left( -\frac{1}{2}g^{\mu \nu}\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{\gamma}R\phi-\frac{\mu}{2\gamma ^{2}}e^{\gamma \phi} \right)
\end{align}
$$

the variation of the action is

$$\tag{3.2}
\begin{align}
\delta S & =\int _{M}\varepsilon\left( \nabla ^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma ^{2}}e^{\gamma \phi} \right)+\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}
$$

consider a conformal transformation

$$\tag{3.3}
\begin{align}
g_{\mu \nu} & \mapsto e^{2\sigma}g_{\mu \nu} \\
\phi & \mapsto \phi-\frac{2\sigma}{\gamma}
\end{align}
$$

the action transforms as

$$\tag{3.4}
\begin{align}
\tilde{S} & =S-\int _{M}\varepsilon\left( -\frac{2}{\gamma}\nabla _{\mu}(\phi \nabla ^{\mu}\sigma)+\frac{2}{\gamma ^{2}}\nabla _{\mu}(\sigma \nabla ^{\mu}\sigma)-\frac{2}{\gamma ^{2}}(R-\nabla ^{2}\sigma)\sigma \right)
\end{align}
$$

is not invariant up to a term supports on the Cauchy surface. however

$$\tag{3.5}
\begin{align}
\tilde{E} & =e^{-2\sigma}E
\end{align}
$$

the equation of motion holds under the conformal transformation. following the same procedure, we have the symmetry vector

$$\tag{3.6}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{2}x\left( \xi ^{\mu}\nabla _{\mu}\phi+\frac{1}{\gamma}\nabla _{\rho}\xi ^{\rho} \right) \frac{\delta}{\delta \phi}
\end{align}
$$

where $\displaystyle{\xi ^{\mu}}$ satisfies the conformal Killing equation

$$\tag{3.7}
\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0
\end{align}
$$

and two equations as the corollaries of (3.7)

$$\tag{3.8}
\begin{align}
\nabla ^{2}\xi _{\mu}+\frac{1}{2}R\xi _{\mu} & =0 \\
\nabla ^{2}(\nabla _{\mu}\xi ^{\mu})+\xi ^{\mu}\nabla _{\mu}R+R\nabla _{\mu}\xi ^{\mu} & =0
\end{align}
$$

act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{3.9}
\begin{align}
X_{\xi}\cdot \delta S & =-\int _{M}\varepsilon \left( \nabla _{\mu}\phi \nabla ^{\mu}(X_{\xi}\cdot \delta \phi)+\frac{1}{\gamma}R(X_{\xi}\cdot \delta \phi)+\frac{\mu}{2\gamma}e^{\gamma \phi}(X_{\xi}\cdot \delta \phi)\right) \\
 & =\int _{\Sigma _{f}-\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\left( \frac{1}{2}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{1}{\gamma}\phi \nabla _{\mu}(\nabla _{\nu}\xi ^{\nu})+\frac{1}{\gamma}R\xi _{\mu}\phi +\frac{1}{\gamma ^{2}}R\xi _{\mu}+\frac{\mu}{2\gamma ^{2}}e^{\gamma \phi}\xi _{\mu}\right) \\
 & +\frac{1}{ \gamma ^{2}}\int _{M}\varepsilon \xi ^{\mu}\nabla _{\mu}R
\end{align}
$$

then the Noether charge is

$$\tag{3.10}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon \tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
 T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{\mu}{2\gamma ^{2}}g_{\mu \nu}e^{\gamma \phi} +\frac{2}{\gamma}(g_{\mu \nu}\nabla ^{2}\phi-\nabla _{\mu}\nabla _{\nu}\phi)
\end{align}
$$

note that the energy momentum tensor satisfies

finally we consider the Poisson bracket between Noether charges. we have

$$\tag{3.11}
\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & = X_{\zeta}\cdot \delta H_{\xi}\\
 & =H_{\left\{\xi,\zeta\right\}}-\frac{1}{\gamma ^{2}}\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}(R(\xi _{\mu}\nabla _{\nu}\zeta ^{\nu}-\zeta _{\mu}\nabla _{\nu}\xi ^{\nu})+\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}-\nabla _{\mu}\nabla _{\nu}\zeta ^{\rho}\nabla _{\nu}\xi ^{\rho})
\end{align}
$$

and this is a Virasoro algebra with $\displaystyle{c=\frac{48\pi}{\gamma ^{2}}}$

## JT gravity

consider a JT gravity in asymptotic $\displaystyle{\mathrm{AdS}_{2}}$ with Lagrangian

$$\tag{4.1}
\begin{align}
L & =\Phi\left( R+2 \right)\varepsilon \\
\ell |_{\Gamma} & =\Phi(K-1)\varepsilon
\end{align}
$$

make a variation

$$\tag{4.2}
\begin{align}
\delta L & =E_{\Phi}\delta \Phi+E^{\mu \nu}\delta g_{\mu \nu}+\mathrm{d}\Theta \\
(\Theta+\delta \ell)|_{\Gamma} & =F_{\Phi}\delta \Phi+F^{\alpha \beta}\delta g_{\alpha \beta}+\mathrm{d}C
\end{align}
$$

where

$$\tag{4.3}
\begin{align}
E_{\Phi}\delta \Phi & =(R+2)\delta \Phi \frac{1}{2!}\varepsilon _{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
E^{\mu \nu}\delta g_{\mu \nu} & =(\nabla ^{\mu}\nabla ^{\nu}\Phi-\nabla ^{2}\Phi g^{\mu \nu}+\Phi g^{\mu \nu})\delta g_{\mu \nu}\cdot \frac{1}{2!}\varepsilon _{\mu_{0}\mu_{1}}\mathrm{d}x^{\mu_{0}}\wedge \mathrm{d}x^{\mu_{1}} \\
\Theta & =[\Phi(g^{\mu \alpha}\nabla ^{\beta}-g^{\alpha \beta}\nabla ^{\mu})\delta g_{\alpha \beta}+(\nabla ^{\mu}\Phi g^{\alpha \beta}-\nabla ^{\alpha}\Phi g^{\mu \beta})\delta g_{\alpha \beta}]\varepsilon _{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
F_{\Phi}\delta \Phi & =2(K-1)\delta \Phi \\
F^{\alpha \beta}\delta \gamma _{\alpha \beta} & =(n^{\mu}\nabla _{\mu}\Phi-\Phi)\gamma ^{\alpha \beta}\delta \gamma _{\alpha \beta} \varepsilon _{\gamma}\mathrm{d}x^{\gamma} \\
C & =-\Phi \gamma ^{\mu \nu}n^{\alpha}\delta g_{\nu \alpha}\varepsilon _{\mu}
\end{align}
$$

then the symplectic potential is

$$\tag{4.4}
\begin{align}
\theta & =\int _{\Sigma}\Theta-\int _{\partial \Sigma}C \\
 & =\int _{\Sigma}[\Phi(g^{\mu \alpha}\nabla ^{\beta}-g^{\alpha \beta}\nabla ^{\mu})\delta g_{\alpha \beta}+(\nabla ^{\mu}\Phi g^{\alpha \beta}-\nabla ^{\alpha}\Phi g^{\mu \beta})\delta g_{\alpha \beta}]\varepsilon _{\mu \mu_{1}}\mathrm{d}x^{\mu_{1}} \\
 & -\Phi \gamma ^{\mu \nu}n^{\alpha}\delta g_{\nu \alpha}\varepsilon _{\mu}
\end{align}
$$

and the symplectic form

$$\tag{.}
\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}[\delta \Phi \wedge(g^{\mu \alpha}\nabla ^{\beta}-g^{\alpha \beta}\nabla ^{\mu})\delta g_{\mu \alpha}+\Phi(\delta g^{\mu \alpha}\wedge\nabla ^{\beta}-\delta g^{\alpha \beta}\wedge \nabla ^{\mu})\delta g_{\alpha \beta}]
\end{align}
$$

## a better interpretation of the conformal transformation

for a Lagrangian $\displaystyle{\mathbf{L}[\phi,g_{ab}]}$. it is called conformal invariant iff under conformal transformation

$$\tag{5.1}
\begin{align}
g_{ab}\mapsto e^{2\sigma}g_{ab} \\
\phi\mapsto e^{-(d-2)\sigma/2}\phi
\end{align}
$$

we have

$$\tag{5.2}
\begin{align}
\mathbf{L}[\phi',g_{ab}'] & =\mathbf{L}[\phi,g_{ab}]+\mathrm{d}\Lambda _{\xi}
\end{align}
$$

consider a infinitesimal diffeomorphism $\displaystyle{f_{\xi}}$ generated by $\displaystyle{\xi _{a}}$, and require it to be a conformal diffeomorphism, i.e.,

$$\tag{5.3}
\begin{align}
f^{*}_{\xi}g_{ab}=e^{2\sigma _{\xi}}g_{ab}
\end{align}
$$

$$\tag{5.4}
\begin{align}
\sigma _{\xi}=\frac{1}{d}\nabla _{a}\xi ^{a}
\end{align}
$$

then we have

$$\tag{5.5}
\begin{align}
f^{*}_{\xi}\mathbf{L}[\phi,g_{ab}] & =\mathbf{L}[f^{*}_{\xi}\phi,f^{*}_{\xi}g_{ab}] \\
 & =\mathbf{L}[e^{(d-2)\sigma _{\xi}/2}f^{*}_{\xi}\phi,g_{ab}]+\mathrm{d}\Lambda _{\xi}
\end{align}
$$

$$\tag{5.6}
\begin{align}
e^{(d-2)\sigma _{\xi}/2}f^{*}_{\xi}\phi & \approx \left( 1+\frac{d-2}{2d}\nabla _{a}\xi ^{a} +\mathcal{O}(\xi ^{2})\right)(\phi+\mathcal{L}_{\xi}\phi+\mathcal{O}(\xi ^{2})) \\
 & =\phi+\xi ^{a}\nabla _{a}\phi+\frac{d-2}{2d}\nabla _{a}\xi ^{a}\phi+\mathcal{O}(\xi ^{2})
\end{align}
$$

define $\displaystyle{\delta _{\xi}\phi=\xi ^{a}\nabla _{a}\phi+\frac{d-2}{2d}\nabla _{a}\xi ^{a}\phi}$. then we have

$$\tag{5.7}
\begin{align}
\mathcal{L}_{\xi}\mathbf{L} & =\mathrm{d}(\xi \cdot \mathbf{L}) \\
 & =\mathbf{L}\left[\phi+\delta _{\xi}\phi,g_{ab} \right]+\mathrm{d}\Lambda _{\xi}-\mathbf{L}[\phi,g_{ab}] \\
 & =\frac{\delta \mathbf{L}}{\delta \phi}\delta _{\xi}\phi+\frac{\delta \mathbf{L}}{\delta(\nabla _{a}\phi)}\nabla _{a}\delta _{\xi}\phi+\mathrm{d}\Lambda _{\xi} \\
 & =\mathbf{E}\delta _{\xi}\phi+\mathrm{d}\left( \Lambda _{\xi}+\frac{\delta \mathbf{L}}{\delta(\nabla _{a}\phi)}\delta _{\xi}\phi \right) \\
\implies J^{a} & =\frac{\delta \mathbf{L}}{\delta(\nabla _{a}\phi)}\delta _{\xi}\phi-\xi \cdot \mathbf{L}+\Lambda _{\xi}
\end{align}
$$
