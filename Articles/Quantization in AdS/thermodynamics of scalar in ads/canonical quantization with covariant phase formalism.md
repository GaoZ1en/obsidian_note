here we present a concise overview of canonical quantization using the covariant phase space formalism. we consider a free scalar field in global $\mathrm{AdS}_{d+1}$ spacetime with the metric

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\Omega _{d-1}^{2}
\end{align}$$

where we set the $\mathrm{AdS}$ radius to unity for simplicity. the action for a free scalar field $\phi$ with mass $m$ is given by

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{d+1}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+\mu^{2}\phi ^{2})
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S & =\int \mathrm{d}^{d+1}x\sqrt{ -g }E_{\phi}\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{\phi} & =\nabla ^{2}\phi-\mu^{2}\phi \\
\theta & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

the symplectic form $\displaystyle{\omega}$ is defined as the variation of the symplectic potential $\displaystyle{\theta}$

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{d}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

to give a parametrization of the covariant phase space, which is the solution space of the eom $\displaystyle{\nabla ^{2}\phi-\mu^{2}\phi=0}$ with asymptotic boundary condition,

$$\begin{align}
\varphi\to \mathcal{O}(r^{0}),r\to0 \\
\varphi\to \mathcal{o}(r^{-1}),r\to \infty
\end{align}$$

we expand the field in terms of normal modes, i.e., the complete set of solutions to the Klein-Gordon equation.

we first consider the $\mathrm{AdS}_{3}$ case. there are two methods to find the normal modes:

1. solve the eom directly using separation of variables. the final results are

$$\begin{align}
\phi _{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} } e^{-i\omega _{n,m}t}e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n,m} & =\Delta+2n+|m| \\
\Delta & =1+\sqrt{ 1+\mu^{2} } \\
m & \in \mathbb{Z}, n\in \mathbb{N}
\end{align}$$

1. use the representation theory of the isometry group $\mathrm{SO}(2,2)$ of $\mathrm{AdS}_{3}$. the normal modes can be labeled by two non-negative integers $\displaystyle{n,\bar{n}}$. the final results are

$$\begin{align}
\varphi _{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
\varphi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}}
\end{align}$$

where $\displaystyle{\xi _{-1},\bar{\xi}_{-1}}$ are two Killing vectors of $\mathrm{AdS}_{3}$. all the Killing vectors are

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

here we will adopt the second method for future convenience. write the field expansion in terms of the normal modes

$$\begin{align}
\phi(x) & =\sum _{n,\bar{n}=0}^{\infty}(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi ^{*}_{n,\bar{n}}(x))
\end{align}$$

then the symplectic form becomes

$$\begin{align}
\omega & =i\sum _{n,\bar{n}=0}^{\infty}\delta a^{\dagger}_{n,\bar{n}}\wedge \delta a_{n,\bar{n}}
\end{align}$$

here we used the orthonormality of the normal modes under the Klein-Gordon inner product

$$\begin{align}
\omega[\phi _{n_{1},\bar{n}_{1}},\phi _{n_{2},\bar{n}_{2}}^{*}] & =\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

the Hamiltonian vector field $\displaystyle{X_{\mathcal{O}}}$ corresponding to an observable $\displaystyle{\mathcal{O}}$ is defined by

$$\begin{align}
X_{\mathcal{O},\Sigma} & = -i \sum _{n,\bar{n}=0}^{\infty}\int _{\Sigma}\left(  \frac{\delta \mathcal{O}}{\delta a_{n,\bar{n}}^{\dagger}} \frac{\delta}{\delta a_{n,\bar{n}}}-\frac{\delta \mathcal{O}}{\delta a_{n,\bar{n}}} \frac{\delta}{\delta a^{\dagger}_{n,\bar{n}}}\right)
\end{align}$$

and the Poisson bracket between two observables $\displaystyle{\mathcal{O}_{1},\mathcal{O}_{2}}$ is given by

$$\begin{align}
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} & =X_{\mathcal{O}_{1}}\cdot X_{\mathcal{O}_{2}}\cdot \omega
\end{align}$$

in particular, we have

$$\begin{align}
\left\{a_{n_{1},\bar{n}_{1}},a^{\dagger}_{n_{2},\bar{n}_{2}}\right\} & =-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

upon quantization, we promote the fields to operators and replace the Poisson brackets by commutators. and we have the commutation relations

$$\begin{align}
\left[a_{n_{1},\bar{n}_{1}},a^{\dagger}_{n_{2},\bar{n}_{2}}\right] & =i\left\{a_{n_{1},\bar{n}_{1}},a^{\dagger}_{n_{2},\bar{n}_{2}}\right\}=\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

which is consistent with the usual canonical quantization results. the vacuum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a_{n,\bar{n}}\ket{0} & =0,\quad \forall n,\bar{n}\geq0
\end{align}$$

and the excited states can be constructed by acting the creation operators $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ on the vacuum state.
