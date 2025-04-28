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
\phi(x)=\int \mathrm{d}^{3}\vec{k}(\sigma _{k}(x)a_{k}+\sigma _{k}^{*}(x)a_{k}^{\dagger})
\end{align}
$$

where $\displaystyle{\sigma _{k}(x)=\frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}}$s are solutions of Klein-Gordon equation and form a complete basis of the space of solutions. then the symplectic form becomes

$$\tag{1.5}
\begin{align}
\omega & =\int _{\Sigma} \mathrm{d}^{3}x \int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'(\partial _{0}\sigma _{k}\delta a_{k}+\partial _{0}\sigma _{k}^{*}\delta a_{k}^{\dagger} )\wedge(\sigma _{k'}\delta a_{k'}+\sigma _{k'}^{*}\delta a_{k'}^{\dagger}) \\
 & =\int _{\Sigma}\mathrm{d}^{3}x \int \mathrm{d}^{3}\vec{k} \mathrm{d}^{3}\vec{k}' \left(\partial _{0}\sigma _{k}^{*}\sigma _{k'} -\sigma ^{*}_{k}\partial _{0}\sigma _{k'}\right)\delta a_{k}^{\dagger}\wedge \delta a_{k'} \\
 & =i \int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\delta ^{3}(\vec{k}-\vec{k}')\delta a_{k}^{\dagger}\wedge \delta a_{k'} \\
 & =i \int \mathrm{d}^{3}\vec{k} \delta a_{k}^{\dagger}\wedge \delta a_{k}
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
 & =\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\mathrm{d}^{3}\vec{k}'' \left(\sigma _{k}(x) \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma _{k}^{*}(x) \frac{\delta}{\delta a_{k}}\right)\cdot \\
 & \left( \sigma _{k'}(y) \frac{\delta}{\delta a_{k'}^{\dagger}}-\sigma _{k'}^{*}(y) \frac{\delta}{\delta a_{k'}} \right)\cdot \delta a_{k''}^{\dagger}\wedge \delta a_{k''} \\
 & =\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\mathrm{d}^{3}\vec{k}'' \left(\sigma _{k}(x)\sigma ^{*}_{k'}(y)-\sigma ^{*}_{k}(x)\sigma _{k'}(y)\right)\delta ^{3}(\vec{k}'-\vec{k}'')\delta ^{3}(\vec{k}-\vec{k}'') \\
 & =\int \mathrm{d}^{3}\vec{k}(\sigma _{k}(x)\sigma _{k}^{*}(y)-\sigma ^{*}_{k}(x)\sigma _{k}(y)) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(e^{ik\cdot (x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}}e^{ik\cdot (x-y)}
\end{align}
$$

with the following contour for $\displaystyle{k^{0}}$

![[Attachments/Pasted image 20250425232210.png]]

and the Feynman propagator is

$$\tag{1.11}
\begin{align}
\braket{ \phi(x)\phi(y) }  & = \braket{ 0|\mathcal{T}\phi(x)\phi(y)|0 } \\
 & =\braket{ 0|\theta(x^{0}-y^{0})\phi(x)\phi(y)+\theta(y^{0}-x^{0})\phi(y)\phi(x)|0 } \\
 & = \theta(x^{0}-y^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'(\sigma _{k}(x)a_{k}+\sigma _{k}^{*}(x)a_{k}^{\dagger})(\sigma _{k'}(y)a_{k'}+\sigma ^{*}_{k'}(y)a_{k'}^{\dagger})|0 } \\
 & + \theta(y^{0}-x^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'(\sigma _{k}(y)a_{k}+\sigma _{k}^{*}(y)a_{k}^{\dagger})(\sigma _{k'}(x)a_{k'}+\sigma ^{*}_{k'}(x)a_{k'}^{\dagger})|0 } \\
 & =\theta(x^{0}-y^{0})\int \mathrm{d}^{3}\vec{k}\sigma _{k}(x)\sigma _{k}^{*}(y)+\theta(y^{0}-x^{0})\int \mathrm{d}^{3}\vec{k}\sigma _{k}(y)\sigma _{k}^{*}(x) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
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
\omega = \delta \theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta F^{0\mu}\wedge \delta A_{\mu}
\end{align}
$$

make the following mode expansion of $\displaystyle{A_{\mu}(x)}$

$$\tag{2.6}
\begin{align}
A_{\mu}(x)=\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1}e^{s}_{k\mu}(\sigma _{k}a_{ks}+\sigma ^{*}_{k}a^{\dagger}_{ks})
\end{align}
$$

where $\displaystyle{e^{s}_{k\mu}}$ satisfies $\displaystyle{k^{\mu}e^{s}_{k\mu}=0}$.

then the symplectic form becomes

$$\tag{2.6}
\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{3}x (\partial ^{0}\delta A^{\mu}-\partial ^{\mu}\delta A^{0})\wedge \delta A_{\mu} \\
 & =\int _{\Sigma}\mathrm{d}^{3}x\partial ^{0}\delta A^{i}\wedge \delta A_{i} \\
 & =i \int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1}\delta a_{ks}^{\dagger}\wedge \delta a_{ks}
\end{align}
$$

then we read out the Poisson brackets

$$\tag{2.7}
\begin{align}
\left\{a_{ks},a_{k's'}\right\} & =\{a_{ks}^{\dagger},a_{k's'}^{\dagger}\}=0 \\
\{a_{ks},a_{k's'}^{\dagger}\} & =-i \delta _{ss'}\delta ^{3}(\vec{k}-\vec{k}')
\end{align}
$$

after quantization, we have the following commutators

$$\tag{2.8}
\begin{align}
[a_{ks},a_{k's'}] & =[a_{ks}^{\dagger},a_{k's'}^{\dagger}]=0 \\
[a_{ks},a_{k's'}^{\dagger}] & =\delta _{ss'}\delta ^{3}(\vec{k}-\vec{k}')
\end{align}
$$

we write down the Hamilton vector corresponding to $\displaystyle{A_{i}(x)}$

$$\tag{2.9}
\begin{align}
X_{A_{\mu}(x)} & =-i\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1}\left(\frac{\delta A_{\mu}(x)}{\delta a_{ks}} \frac{\delta}{\delta a_{ks}^{\dagger}}-\frac{\delta A_{\mu}(x)}{\delta a_{ks}^{\dagger}} \frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1} e^{s}_{k\mu}\left(\sigma _{k}(x) \frac{\delta}{\delta a^{\dagger}_{ks}}-\sigma _{k}^{*}(x) \frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

then we have the following commutator

$$\tag{2.10}
\begin{align}
[A_{\mu}(x),A_{\nu}(y)] & =iX_{A_{\mu}(x)}\cdot X_{A_{\nu}(x)}\cdot \omega \\
 & =\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\mathrm{d}^{3}\vec{k}''\sum _{s,s',s''}e^{s}_{k\mu}e^{s'}_{k'\nu}\left(\sigma _{k}(x) \frac{\delta}{\delta a^{^{\dagger}}_{ks}}-\sigma ^{*}_{k}(x) \frac{\delta}{\delta a_{ks}}\right)\cdot \\
 & \left( \sigma _{k'}(y) \frac{\delta}{\delta a_{k's'}^{\dagger}}-\sigma ^{*}_{k'}(y) \frac{\delta}{\delta a_{k's}} \right)\cdot\delta a_{k''s''}^{\dagger}\wedge \delta a_{k''s''} \\
 & =\int \mathrm{d}^{3}\vec{k}\sum _{s=1}^{3}e^{s}_{k\mu}e^{s}_{k\nu}\left(\sigma _{k}(x)\sigma _{k}^{*}(y)-\sigma ^{*}_{k}(x)\sigma _{k}(y)\right) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left( \eta_{\mu \nu}+\frac{k_{\mu}k_{\nu}}{m^{2}} \right) (e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\left( \eta _{\mu \nu}-\frac{\partial ^{x}_{\mu}\partial _{\nu}^{x}}{m^{2}} \right)\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}} (e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\left( \eta _{\mu \nu}-\frac{\partial ^{x}_{\mu}\partial ^{x}_{\nu}}{m^{2}} \right) \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

here we used

$$\tag{2.11}
\begin{align}
\sum ^{3}_{s=1}e^{s}_{k\mu}e^{s}_{k\nu}=\eta _{\mu \nu}+\frac{k_{\mu}k_{\nu}}{m^{2}}
\end{align}
$$

and the Feynman propagator is

$$\tag{2.12}
\begin{align}
\braket{ A_{i}(x)A_{j}(y) } & = \braket{ 0|\mathcal{T}A_{i}(x)A_{j}(y)|0 } \\
 & =\theta(x^{0}-y^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\sum _{s,s'=1}^{3}e^{s}_{ki}e^{s'}_{k'j}(\sigma _{k}(x)a_{ks}+\sigma _{k}^{*}(x)a_{ks}^{\dagger})(\sigma _{k'}(y)a_{k's'}+\sigma _{k'}^{*}(y)a_{k's'}^{\dagger})|0 } \\
 & +\theta(y^{0}-x^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\sum _{s,s'=1}^{3}e^{s}_{ki}e^{s'}_{k'j}(\sigma _{k}(y)a_{ks}+\sigma _{k}^{*}(y)a_{ks}^{\dagger})(\sigma _{k'}(x)a_{k's'}+\sigma _{k'}^{*}(x)a_{k's'}^{\dagger})|0 } \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left( \delta_{ij}+\frac{k_{i}k_{j}}{m^{2}} \right)(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\left( \delta _{ij}-\frac{\partial ^{x}_{i}\partial ^{x}_{j}}{m^{2}} \right) \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\left( \delta _{ij}-\frac{\partial ^{x}_{i}\partial ^{x}_{j}}{m^{2}} \right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}  \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}
\end{align}
$$

$$\tag{2.12}
\begin{align}
\braket{ A_{0}(x)A_{i}(y) } & = \braket{ 0|\mathcal{T}A_{0}(x)A_{i}(y)|0 } \\
 & =\theta(x^{0}-y^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\sum _{s,s'=1}^{3}e^{s}_{k0}e^{s'}_{k'i}(\sigma _{k}(x)a_{ks}+\sigma _{k}^{*}(x)a_{ks}^{\dagger})(\sigma _{k'}(y)a_{k's'}+\sigma _{k'}^{*}(y)a_{k's'}^{\dagger})|0 } \\
 & +\theta(y^{0}-x^{0})\braket{ 0|\int \mathrm{d}^{3}\vec{k}\mathrm{d}^{3}\vec{k}'\sum _{s,s'=1}^{3}e^{s}_{k0}e^{s'}_{k'i}(\sigma _{k}(y)a_{ks}+\sigma _{k}^{*}(y)a_{ks}^{\dagger})(\sigma _{k'}(x)a_{k's'}+\sigma _{k'}^{*}(x)a_{k's'}^{\dagger})|0 } \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\frac{k_{0}k_{i}}{m^{2}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =-\frac{\partial ^{x}_{0}\partial ^{x}_{i}}{m^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & + \frac{\partial _{i}^{x}}{m^{2}} \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\partial ^{x}_{0}\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\partial _{0}^{x}\theta(x^{0}-y^{0})e^{-ik\cdot(x-y)}) \\
 & =-\frac{\partial ^{x}_{0}\partial ^{x}_{i}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}  \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
 & +\frac{\partial _{i}^{x}}{m^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\delta(x^{0}-y^{0})-\delta(x^{0}-y^{0}))e^{ik\cdot(x-y)} \\
 & =-\frac{\partial ^{x}_{0}\partial ^{x}_{i}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}  \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}
\end{align}
$$

(2.12) is only right for $\displaystyle{ij}$ and $\displaystyle{0i}$ components. for $\displaystyle{00}$ components, we have (?)

$$\tag{2.13}
\begin{align}
\braket{ A_{0}(x)A_{0}(y) } & = \int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left( -1+\frac{\omega _{k}^{2}}{m^{2}} \right)(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}} \frac{k^{2}}{m^{2}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =-\frac{\nabla ^{2}_{x}}{m^{2}}\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =-\frac{\nabla ^{2}_{x}}{m^{2}} \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
 & =\left( \eta _{00}+\frac{\partial ^{x}_{0}\partial ^{x}_{0}}{m^{2}} \right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{ik\cdot(x-y)}-\frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

where $\displaystyle{\nabla ^{2}_{x}=\delta ^{ij}\partial ^{x}_{i}\partial ^{x}_{j}}$, and finally we have

$$\tag{2.14}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(y) }  & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{ik\cdot(x-y)}\left( \eta _{\mu \nu}+\frac{k_{\mu}k_{\nu}}{m^{2}} \right)-\frac{i}{m^{2}}\delta ^{0}_{\mu}\delta ^{0}_{\nu}\delta ^{4}(x-y)
\end{align}
$$

---

or we should add $\displaystyle{\frac{\lambda}{2}(\partial _{\mu}A^{\mu})^{2}}$ term in the Lagrangian (2.1), where $\displaystyle{\lambda}$ is a Lagrangian multiplier.

$$\tag{3.1}
\begin{align}
S & =\int _{M} \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}+\frac{\lambda}{2}(\partial _{\mu}A^{\mu})^{2}\right)
\end{align}
$$

make a variation

$$\tag{3.2}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x\left(-F^{\mu \nu}\partial _{\mu}\delta A_{\nu}+m^{2}A^{\mu}\delta A_{\mu}+\lambda \eta ^{\mu \nu}\partial _{\rho}A^{\rho}\partial _{\mu}\delta A_{\nu}\right) \\
 & =\int _{M}\mathrm{d}^{4}xE^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\nu} & =\partial _{\mu}F^{\mu \nu}+m^{2}A^{\nu}-\lambda \eta ^{\mu \nu}\partial _{\nu}(\partial _{\rho}A^{\rho}) \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\tau _{\mu}\left(F^{\mu \nu}\delta A_{\nu}-\lambda \eta ^{\mu \nu}\partial _{\rho}A^{\rho}\delta A_{\nu}\right)
\end{align}
$$
