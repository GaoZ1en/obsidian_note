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

here $\displaystyle{\xi _{\mu}}$ is a conformal Killing vector. the question is:

1. show that the conformal transformation $\displaystyle{X_{\xi}}$ is a symmetry. calculate corresponding $\displaystyle{\alpha _{\xi}}$ and $\displaystyle{\beta _{\xi}}$
2. calculate the corresponding Noether charge $\displaystyle{H_{\xi}}$, arrange your answer in the form $\displaystyle{H_{\xi}=\int _{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu} \frac{1}{2\pi}T_{\mu \nu}}$, where $\displaystyle{T_{\mu \nu}}$ is a symmetric tensor.

# answer

1. we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}}+\beta _{\xi}|_{M} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{1}{4\pi}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi +\frac{1}{2\pi \gamma}\phi \nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}+\frac{1}{2\pi \gamma}\xi ^{\mu}R\phi+\frac{\mu}{4\pi \gamma ^{2}}\xi ^{\mu}e^{\gamma \phi} \right) \\
\beta _{\xi} & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g } \frac{-1}{2\pi \gamma ^{2}}R\nabla _{\mu}\xi ^{\mu}
\end{align}$$

2. we have

$$\begin{align}
H_{\xi} & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g } \tau ^{\mu}\xi ^{\nu}\frac{1}{2\pi}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi\nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{2}{\gamma}\nabla _{\mu}\nabla _{\nu}\phi+\frac{2}{\gamma}g_{\mu \nu}\nabla ^{2}\phi-\frac{\mu}{2\gamma ^{2}}g_{\mu \nu}e^{\gamma \phi}
\end{align}$$
# solution

we follow the standard procedure of covariant phase space formalism to study the symmetry and conserved charge of classical Liouville theory. take a variation of the action

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{2}x\sqrt{ -g }E\delta \phi+\int _{\Sigma _{f}}\mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}\theta _{\mu} \\
E & =\frac{1}{2\pi}\left( \nabla ^{2}\phi-\frac{1}{\gamma}R-\frac{\mu}{2\gamma}e^{\gamma \phi} \right)\delta \phi \\
\theta _{\mu} & =\nabla _{\mu}\phi \delta \phi
\end{align}$$

act the symmetry vector

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{2}x\left(\xi ^{\mu}\nabla _{\mu}\phi+\frac{1}{\gamma}\nabla _{\mu}\xi ^{\mu}\right) \frac{\delta}{\delta \phi}
\end{align}$$

on the action, we have

$$\begin{align}
X_{\xi}\cdot \delta S & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}}+\beta _{\xi}|_{M} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}x\sqrt{ \sigma }\tau _{\mu}\left( \frac{1}{4\pi}\xi ^{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi +\frac{1}{2\pi \gamma}\phi \nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}+\frac{1}{2\pi \gamma}\xi ^{\mu}R\phi+\frac{\mu}{4\pi \gamma ^{2}}\xi ^{\mu}e^{\gamma \phi} \right) \\
\beta _{\xi} & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g } \frac{-1}{2\pi \gamma ^{2}}R\nabla _{\mu}\xi ^{\mu}
\end{align}$$

notice that $\displaystyle{\beta _{\xi}}$ does not depend on dynamical field $\displaystyle{\phi}$, so $\displaystyle{X_{\xi}}$ is a symmetry indeed. by definition, the corresponding Noether charge is given by

$$\begin{align}
H_{\xi} & =\int _{\Sigma} \mathrm{d}x\sqrt{ \sigma }\tau ^{\mu}(X_{\xi}\cdot \theta _{\mu})-\alpha _{\xi} \\
 & =\int _{M} \mathrm{d}^{2}x\sqrt{ -g } \tau ^{\mu}\xi ^{\nu}\frac{1}{2\pi}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi\nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\frac{2}{\gamma}\nabla _{\mu}\nabla _{\nu}\phi+\frac{2}{\gamma}g_{\mu \nu}\nabla ^{2}\phi-\frac{\mu}{2\gamma ^{2}}g_{\mu \nu}e^{\gamma \phi}
\end{align}$$

here algebraic calculation is simple.