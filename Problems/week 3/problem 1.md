# question

for field theory with action $\displaystyle{S[\phi]}$ defining in a spacetime region $\displaystyle{M}$ sandwiched by Cauchy surfaces $\displaystyle{\Sigma _{f}}$ and $\displaystyle{\Sigma _{i}}$, covariant phase space is defined as the space of solution $\displaystyle{\mathcal{\tilde{P}}}$ of the equation of motion for the dynamical fields $\displaystyle{\phi}$ with specific boundary condition on the spatial boundary $\displaystyle{\Gamma}$. the pre-symplectic form $\displaystyle{\omega}$ defined on $\displaystyle{\mathcal{\tilde{P}}}$ relies on the boundary terms $\displaystyle{\theta}$ (which is called) supported on $\displaystyle{\Sigma _{f}}$ and $\displaystyle{\Sigma _{i}}$ as

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }E_{\phi}[\phi]\delta \phi+\int _{\Sigma _{f}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\theta ^{\mu}[\phi,\delta \phi]-\int _{\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\theta ^{\mu}[\phi,\delta \phi] \\
\omega & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\delta \theta ^{\mu}
\end{align}$$

here $\displaystyle{g_{\mu \nu}}$ is the metric of the manifold $\displaystyle{M}$ of dimension $\displaystyle{d}$, with $\displaystyle{\sqrt{ -g }}$ the volume element. $\displaystyle{\sqrt{ \sigma }}$ is the induced volume element on Cauchy surface $\displaystyle{\Sigma}$, and $\displaystyle{\tau _{\mu}}$ is the future-directed unit norm vector of $\displaystyle{\Sigma}$. $\displaystyle{E_{\phi}[\phi]}$ is the equation of motion for dynamical field $\displaystyle{\phi}$, $\displaystyle{\theta ^{\mu}[\phi,\delta \phi]}$ is called the pre-symplectic potential. for an infinitesimal transformation $\displaystyle{\phi\to \phi+\delta _{\lambda}\phi}$, we can define a vector field of $\displaystyle{\mathcal{P}}$ as

$$\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d}x\delta _{\lambda}\phi(x) \frac{\delta}{\delta \phi(x)}
\end{align}$$

if we have

$$\begin{align}
X_{\lambda}\cdot \delta S & =\alpha _{\lambda}[\phi]|_{\Sigma _{f}}-\alpha _{\lambda}[\phi]|_{\Sigma _{i}}+\beta _{\lambda}|_{M}
\end{align}$$

where $\displaystyle{\beta _{\lambda}}$ is independent from $\displaystyle{\phi}$, then we call $\displaystyle{\phi\to \phi+\delta _{\lambda}\phi}$ is a symmetry. the corresponding Noether charge is given by

$$\begin{align}
H_{\lambda} & =X_{\lambda}\cdot \int _{\Sigma} \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\theta ^{\mu}-\alpha _{\lambda}[\phi]|_{\Sigma}
\end{align}$$

this definition of Noether charge is independent from the choice of Cauchy surface. by some calculation, we can show that the Poisson brackets between two Noether charge $\displaystyle{H_{\lambda}, H_{\mu}}$ is defined as

$$\begin{align}
\left\{H_{\lambda},H_{\mu}\right\} & =X_{\lambda}\cdot X_{\mu}\cdot \omega \\
 & =-X_{\lambda}\cdot \delta H_{\mu}
\end{align}$$

consider the following classical Liouville theory

$$\begin{align}
S=\int_{M}\mathrm{d}^{2}x\sqrt{ -g }\left(-\frac{1}{4\pi}g^{\mu \nu}\nabla_{\mu}\phi \nabla_{\nu}\phi-\frac{1}{2\pi \gamma}R\phi-\frac{\mu}{4\pi \gamma^{2}}e^{\gamma \phi}\right)
\end{align}$$

here $\displaystyle{\phi}$ is a real scalar field, which is the only dynamical degree of freedom, $\displaystyle{R}$ is the Ricci scalar of $\displaystyle{M}$, $\displaystyle{\mu,\gamma}$ are real parameters. this theory has a conformal transformation

$$\begin{align}
X_{\xi} & =\int_{M}\mathrm{d}^{2}x\left( \xi^{\mu}\nabla_{\mu}\phi+\frac{1}{\gamma}\nabla _{\mu}\xi ^{\mu}\right) \frac{\delta}{\delta \phi} \\
0 & =\nabla_{\mu}\xi_{\nu}+\nabla_{\nu}\xi_{\mu}-g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}
\end{align}$$

here $\displaystyle{\xi _{\mu}}$ is a conformal Killing vector. by some algebra, we can compute the corresponding Noether charge of $\displaystyle{X_{\xi}}$ as

$$\begin{align}
H_{\xi} & =\int _{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{2}{\gamma}\nabla _{\mu}\nabla _{\nu}\phi+\frac{2}{\gamma}g_{\mu \nu}\nabla ^{2}\phi-\frac{\mu}{2\gamma ^{2}}g_{\mu \nu}e^{\gamma \phi}
\end{align}$$

the question is:

1. calculate the Poisson bracket $\displaystyle{\left\{H_{\xi},H_{\zeta}\right\}}$, where $\displaystyle{\xi}$ and $\displaystyle{\zeta}$ are two conformal Killing vectors. in the derivation, you may need the following properties of conformal Killing vector $\displaystyle{\xi ^{\mu}}$

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0 \\
\nabla ^{2}\xi _{\mu}+\frac{1}{2}R\xi _{\mu} & =0 \\
\nabla ^{2}(\nabla _{\mu}\xi ^{\mu})+\xi ^{\mu}\nabla _{\mu}R+R\nabla _{\mu}\xi ^{\mu} & =0
\end{align}$$

and properties of the energy momentum tensor

$$\begin{align}
\nabla ^{\mu}T_{\mu \nu} & =0 \\
T_{\mu \nu} & =T_{\nu \mu} \\
g^{\mu \nu}T_{\mu \nu} & =\frac{2}{\gamma ^{2}}R
\end{align}$$

2. in the flat background

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}\varphi ^{2}, \quad\varphi \sim \varphi+2\pi
\end{align}$$

and the conformal Killing vectors can be represented as

$$\begin{align}
A_{n}=A_{-n} & =\cos(nt)\cos n\phi \frac{\partial}{\partial t}-\sin nt\sin n\phi \frac{\partial}{\partial \phi} \\
B_{n}=B_{-n} & =\sin(nt)\sin n\phi \frac{\partial}{\partial t}-\cos nt\cos n\phi \frac{\partial}{\partial \phi} \\
C_{n}=-C_{-n} & =\sin(nt)\cos n\phi \frac{\partial}{\partial t}+\cos nt\sin n\phi \frac{\partial}{\partial \phi} \\
D_{n}=-D_{-n} & =\cos(nt)\sin n\phi \frac{\partial}{\partial t}+\sin nt\cos n\phi \frac{\partial}{\partial \phi}
\end{align}$$

the corresponding Noether charges are denoted as $\displaystyle{H_{An},H_{Bn},H_{Cn},H_{Dn}}$. define

$$\begin{align}
L_{n} & =\frac{1}{2}H_{A_{n}}+\frac{1}{2}H_{B_{n}}+\frac{i}{2}H_{C_{n}}-\frac{i}{2}H_{D_{n}}+\frac{2\pi}{\gamma ^{2}}\delta _{n,0} \\
\bar{L}_{n} & =\frac{1}{2}H_{A_{n}}-\frac{1}{2}H_{B_{n}}+\frac{i}{2}H_{C_{n}}+\frac{i}{2}H_{D_{n}}+\frac{2\pi}{\gamma ^{2}}\delta _{n,0}
\end{align}$$

they form two copies of Virasoro algebra

$$\begin{align}
\left\{L_{m},L_{n}\right\} & =-i\left[ (m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta _{m,-n} \right] \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i\left[ (m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta _{m,-n} \right] \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}$$

compute the central charge $\displaystyle{c}$.

# answer

1. we have

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =H_{\left\{\xi,\zeta\right\}}-\frac{1}{\gamma ^{2}}\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}(R(\xi _{\mu}\nabla _{\nu}\zeta ^{\nu}-\zeta _{\mu}\nabla _{\nu}\xi ^{\nu})+\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}-\nabla _{\mu}\nabla _{\nu}\zeta ^{\nu}\nabla _{\rho}\xi ^{\rho})
\end{align}$$

2. we have $\displaystyle{c=\frac{48\pi}{\gamma ^{2}}}$

# solution

## question 1

according to the definition of Poisson brackets, we have

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =-X_{\xi}\cdot \delta H_{\zeta} \\
 & =-\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\zeta ^{\nu}X_{\xi}\cdot \delta T_{\mu \nu}
\end{align}$$

where

$$\begin{align}
X_{\xi}\cdot \delta T_{\mu \nu} & =\nabla _{\mu}(X_{\xi}\cdot \delta \phi)\nabla _{\nu}\phi+\nabla _{\mu}\phi \nabla _{\nu}(X_{\xi}\cdot \delta \phi)-g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}(X_{\xi}\cdot \delta \phi) \\
 & -\frac{2}{\gamma}\nabla _{\mu}\nabla _{\nu}(X_{\xi}\cdot \delta \phi)+\frac{2}{\gamma}g_{\mu \nu}\nabla ^{2}(X_{\xi}\cdot \delta \phi)-\frac{\mu}{2\gamma}g_{\mu \nu}e^{\gamma \phi}(X_{\xi}\cdot \delta \phi) \\
 & =T_{\mu \rho}\nabla _{\nu}\xi ^{\rho}+T_{\rho \nu}\nabla _{\mu}\xi ^{\rho}+\xi ^{\rho}\nabla _{\rho}T_{\mu \nu}-\frac{2}{\gamma ^{2}}(\nabla _{\mu}\nabla _{\nu}\nabla _{\rho}\xi ^{\rho}-g_{\mu \nu}\nabla ^{2}\nabla _{\rho}\xi ^{\rho})
\end{align}$$

here we have used the conformal Killing equation and its corollaries

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0 \\
\nabla ^{2}\xi _{\mu}+\frac{1}{2}R\xi _{\mu} & =0 \\
\nabla ^{2}(\nabla _{\mu}\xi ^{\mu})+\xi ^{\mu}\nabla _{\mu}R+R\nabla _{\mu}\xi ^{\mu} & =0
\end{align}$$

then

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =-\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\zeta ^{\nu}\left( T_{\mu \rho}\nabla _{\nu}\xi ^{\rho}+T_{\rho \nu}\nabla _{\mu}\xi ^{\rho}+\xi ^{\rho}\nabla _{\rho}T_{\mu \nu}-\frac{2}{\gamma ^{2}}(\nabla _{\mu}\nabla _{\nu}\nabla _{\rho}\xi ^{\rho}-g_{\mu \nu}\nabla ^{2}\nabla _{\rho}\xi ^{\rho}) \right) \\
 & =\int _{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}(\xi ^{\rho}\nabla _{\rho}\zeta ^{\nu}-\zeta ^{\rho}\nabla _{\rho}\xi ^{\nu})T_{\mu \nu} \\
 & -\frac{1}{\gamma ^{2}}\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}(R(\xi _{\mu}\nabla _{\nu}\zeta ^{\nu}-\zeta _{\mu}\nabla _{\nu}\xi ^{\nu})+\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}-\nabla _{\mu}\nabla _{\nu}\zeta ^{\rho}\nabla _{\rho}\xi ^{\rho}) \\
 & =H_{\left\{\xi,\zeta\right\}}-\frac{1}{\gamma ^{2}}\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}(R(\xi _{\mu}\nabla _{\nu}\zeta ^{\nu}-\zeta _{\mu}\nabla _{\nu}\xi ^{\nu})+\nabla _{\mu}\nabla _{\nu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}-\nabla _{\mu}\nabla _{\nu}\zeta ^{\rho}\nabla _{\rho}\xi ^{\rho})
\end{align}$$

which is the required form.

## question 2

by definition, we have the following algebra of conformal Killing vectors

$$\begin{align}
\left\{A_{m},A_{n}\right\} & =\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{A_{m},B_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}-\frac{1}{2}(m+n)D_{m-n} \\
\left\{A_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)A_{m+n}+\frac{1}{2}(m+n)A_{m-n} \\
\left\{A_{m},D_{n}\right\} & =\frac{1}{2}(m-n)B_{m+n}-\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},B_{n}\right\} & =\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{B_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)B_{m+n}+\frac{1}{2}(m+n)B_{m-n} \\
\left\{B_{m},D_{n}\right\} & =\frac{1}{2}(m-n)A_{m+n}-\frac{1}{2}(m+n)A_{m-n} \\
\left\{C_{m},C_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n} \\
\left\{C_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)D_{m+n}+\frac{1}{2}(m+n)D_{m-n} \\
\left\{D_{m},D_{n}\right\} & =-\frac{1}{2}(m-n)C_{m+n}+\frac{1}{2}(m+n)C_{m-n}
\end{align}$$

which gives the Poisson brackets

$$\begin{align}
\left\{H_{A_{m}},H_{A_{n}}\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{A_{m}},H_{B_{n}}\right\} & =-\frac{1}{2}(m-n)H_{D_{m+n}}-\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{A_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{A_{m+n}}+\frac{1}{2}(m+n)H_{A_{m-n}}+\frac{4\pi}{\gamma ^{2}}m^{3}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{A_{m}},H_{D_{n}}\right\} & =\frac{1}{2}(m-n)H_{B_{m+n}}-\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}},H_{B_{n}}\right\} & =\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{B_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{B_{m+n}}+\frac{1}{2}(m+n)H_{B_{m-n}} \\
\left\{H_{B_{m}},H_{D_{n}}\right\} & =\frac{1}{2}(m-n)H_{A_{m+n}}-\frac{1}{2}(m+n)H_{A_{m-n}}-\frac{4\pi}{\gamma ^{2}}m^{3}(\delta _{m,n}-\delta _{m,-n}) \\
\left\{H_{C_{m}},H_{C_{n}}\right\} & =-\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}} \\
\left\{H_{C_{m}},H_{D_{n}}\right\} & =-\frac{1}{2}(m-n)H_{D_{m+n}}+\frac{1}{2}(m+n)H_{D_{m-n}} \\
\left\{H_{D_{m}},H_{D_{n}}\right\} & =-\frac{1}{2}(m-n)H_{C_{m+n}}+\frac{1}{2}(m+n)H_{C_{m-n}}
\end{align}$$

then we can easily derive the Poisson brackets among $\displaystyle{L_{m}}$'s and $\displaystyle{\bar{L}_{m}}$'s

$$\begin{align}
\left\{L_{m},L_{n}\right\} & =-i\left[(m-n)L_{m+n}+\frac{4\pi}{\gamma ^{2}}m(m^{2}-1)\delta _{m,-n}\right] \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i\left[(m-n)\bar{L}_{m+n}+\frac{4\pi}{\gamma ^{2}}m(m^{2}-1)\delta _{m,-n}\right] \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}$$

so the central charge $\displaystyle{c=\frac{48\pi}{\gamma ^{2}}}$. this gives a classic example of classical anomaly.