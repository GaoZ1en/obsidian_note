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
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}
\end{align}
$$

act $\displaystyle{X_{\xi}}$ on $\displaystyle{\delta S}$, we have

$$\tag{1.16}
\begin{align}
X_{\xi}\cdot \delta S & =-\int _{M}\varepsilon \nabla _{\mu}\phi \nabla ^{\mu}(\xi ^{\nu}\nabla _{\nu}\phi) \\
 & =\int _{\Sigma _{f}}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi-\int _{\Sigma _{i}}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu} \frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi
\end{align}
$$

then the Noether charge is

$$\tag{1.17}
\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \right) \\
 & = \int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}
\end{align}
$$

