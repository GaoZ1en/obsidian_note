in this file we will calculate the time-ordered correlation function of Proca field via canonical quantization in CPS formalism. as a simplified version, we will first consider the scalar field. we only consider systems in 4d Minkowski spacetime, the signature is $\displaystyle{(-,+,+,+)}$, the Cauchy surfaces $\displaystyle{\Sigma _{t}}$ are taken to be equal-t surfaces, and $\displaystyle{\tau ^{\mu}=(1,0,0,0)}$ is the normal vector of $\displaystyle{\Sigma _{t}}$. 

## scalar

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\mathrm{d}^{4}x (\partial _{\mu}\phi \partial ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x(\nabla ^{2}-m^{2})\phi \delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\partial _{0}\phi \delta \phi \\
 & =\int _{M}\mathrm{d}^{4}\phi E\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

then the symplectic form is

$$\tag{1.3}
\begin{align}
\omega =\delta \theta & =\int _{\Sigma}\mathrm{d}^{3}x\partial _{0}\delta \phi \wedge \delta \phi
\end{align}
$$

make the following parameterization

$$\tag{1.4}
\begin{align}
\phi(x)=\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}(\sigma _{k}(x)a_{k}+\sigma _{k}^{*}(x)a_{k}^{\dagger})
\end{align}
$$

where $\displaystyle{\sigma _{k}(x)=\frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{ 2 }}}$s are solutions of Klein-Gordon equation and form a complete basis of the space of solutions. then the symplectic form becomes

$$\tag{1.5}
\begin{align}
\omega & =i \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}} \delta a_{k}^{\dagger}\wedge \delta a_{k}
\end{align}
$$

here we use the Klein-Gordon inner product as

$$\tag{1.6}
\begin{align}
(\sigma _{k},\sigma _{k'})_{\mathrm{KG}} & =-i \int _{\Sigma}\mathrm{d}^{3}x(\sigma _{k}^{*}\partial _{0}\sigma _{k'}-\sigma ^{*}_{k'}\partial _{0}\sigma _{k}) \\
 & =\delta ^{3}(\vec{k}-\vec{k'})
\end{align}
$$

then we have the following Poisson brackets

$$\tag{1.7}
\begin{align}
\left\{a_{k},a_{k'}\right\} & =\{a_{k}^{\dagger},a_{k'}^{\dagger}\} =0 \\
\{a_{k},a_{k'}^{\dagger}\} & =-i\delta ^{3}(\vec{k}-\vec{k'})
\end{align}
$$

after canonical quantization, $\displaystyle{a_{k}}$ and $\displaystyle{a_{k}^{\dagger}}$ are promoted to operators, and Poisson brackets are replaced by commutators. we have the following commutation relations

$$\tag{1.8}
\begin{align}
\left[a_{k},a_{k'}\right] & =[a_{k}^{\dagger},a_{k'}^{\dagger}] =0 \\
[a_{k},a_{k'}^{\dagger}] & =i\delta ^{3}(\vec{k}-\vec{k'})
\end{align}
$$

we can consider the commutator between $\displaystyle{\phi(x),\phi(y)}$
