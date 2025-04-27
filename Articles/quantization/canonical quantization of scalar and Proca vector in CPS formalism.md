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
\phi(x)=\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3/2}}(\sigma _{k}(x)a_{k}+\sigma _{k}^{*}(x)a_{k}^{\dagger})
\end{align}
$$

where $\displaystyle{\sigma _{k}(x)=\frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}}$s are solutions of Klein-Gordon equation and form a complete basis of the space of solutions. then the symplectic form becomes

$$\tag{1.5}
\begin{align}
\omega & =\int _{\Sigma} \mathrm{d}^{3}x \int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{3}}(\partial _{0}\sigma _{k}\delta a_{k}+\partial _{0}\sigma _{k}^{*}\delta a_{k}^{\dagger} )\wedge(\sigma _{k'}\delta a_{k'}+\sigma _{k'}^{*}\delta a_{k'}^{\dagger}) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x \int \frac{\mathrm{d}^{3}\vec{k} \mathrm{d}^{3}\vec{k}'}{(2\pi)^{3}} \left(\partial _{0}\sigma _{k}^{*}\sigma _{k'} -\sigma ^{*}_{k}\partial _{0}\sigma _{k'}\right)\delta a_{k}^{\dagger}\wedge \delta a_{k'} \\
 & =i \int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'}{(2\pi)^{3}}\delta ^{3}(\vec{k}-\vec{k}')\delta a_{k}^{\dagger}\wedge \delta a_{k'} \\
 & =i \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \delta a_{k}^{\dagger}\wedge \delta a_{k}
\end{align}
$$

here we use the Klein-Gordon inner product as

$$\tag{1.6}
\begin{align}
(\sigma _{k},\sigma _{k'})_{\mathrm{KG}} & =i \int _{\Sigma}\mathrm{d}^{3}x(\sigma _{k}^{*}\partial _{0}\sigma _{k'}-\sigma ^{*}_{k'}\partial _{0}\sigma _{k}) \\
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
[a_{k},a_{k'}^{\dagger}] & =\delta ^{3}(\vec{k}-\vec{k'})
\end{align}
$$

we can consider the commutator between $\displaystyle{\phi(x),\phi(y)}$. first we write down the Hamilton vector of $\displaystyle{\phi(x)}$

$$\tag{1.9}
\begin{align}
X_{\phi(x)} & =-i \int \mathrm{d}^{3}\vec{k}\left(\frac{\delta \phi(x)}{\delta a_{k}} \frac{\delta}{\delta a_{k}^{\dagger}}-\frac{\delta \phi(x)}{\delta a_{k}^{\dagger}} \frac{\delta}{\delta a_{k}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\left(\sigma _{k'} \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma _{k'}^{*} \frac{\delta}{\delta a_{k}}\right)\delta ^{3}(\vec{k}-\vec{k}') \\
 & =-i \int \mathrm{d}^{3}\vec{k} \left(\sigma _{k} \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma ^{*}_{k} \frac{\delta}{\delta a_{k}}\right)
\end{align}
$$

then we have the following commutator

$$\tag{1.10}
\begin{align}
[\phi(x),\phi(y)] & =iX_{\phi(x)}\cdot X_{\phi(y)}\cdot \omega \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\mathrm{d}^{3}\vec{k}'''}{(2\pi)^{3}} \left(\sigma _{k}(x) \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma _{k}^{*}(x) \frac{\delta}{\delta a_{k}}\right)\left( \sigma _{k'}(y) \frac{\delta}{\delta a_{k'}^{\dagger}}-\sigma _{k'}^{*}(y) \frac{\delta}{\delta a_{k'}} \right)\cdot \delta a_{k''}^{\dagger}\wedge \delta a_{k''} \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\mathrm{d}^{3}\vec{k}''}{(2\pi)^{3}} \left(\sigma _{k}(x)\sigma ^{*}_{k'}(y)-\sigma ^{*}_{k}(x)\sigma _{k'}(y)\right)\delta ^{3}(\vec{k}'-\vec{k}'')\delta ^{3}(\vec{k}-\vec{k}'') \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}}(\sigma _{k}(x)\sigma _{k}^{*}(y)-\sigma ^{*}_{k}(x)\sigma _{k}(y)) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(e^{ik\cdot (x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}}e^{ik\cdot (x-y)}
\end{align}
$$

and the Feynmann propagator is

$$\tag{1.11}
\begin{align}
\braket{ \phi(x)\phi(y) }  & = \braket{ 0|\mathcal{T}\phi(x)\phi(y)|0 }  \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot (x-y)}
\end{align}
$$

## Proca field

$$\tag{2.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$

where $\displaystyle{F_{\mu \nu}=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}}$. make a variation

$$\tag{2.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x E^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\nu} & =\partial _{\mu}F^{\mu \nu}+m^{2}A^{\nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}xF^{0\nu}\delta A_{\nu}
\end{align}
$$

from the equation of motion we have

$$\tag{2.3}
\begin{align}
\partial _{\nu}\partial _{\mu}F^{\mu \nu}+m^{2}\partial _{\mu}A^{\mu}=m^{2}\partial _{\mu}A^{\mu}=0\implies \partial _{\mu}A^{\mu}=0
\end{align}
$$

and the equation of motion becomes

$$\tag{2.4}
\begin{align}
E^{\nu}=\nabla ^{2}A^{\nu}+m^{2}A^{\nu}
\end{align}
$$

we choose $\displaystyle{A_{i},i=1,2,3}$ as independent variables. the symplectic form is

$$\tag{2.5}
\begin{align}
\omega = \delta \theta & =
\end{align}
$$