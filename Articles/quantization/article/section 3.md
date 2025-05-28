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
\braket{ 0|\mathcal{T}A^{i}(x)A^{j}(y)|0 }  & = \theta(x^{0}-y^{0})\braket{ 0|A^{i}(x)A^{j}(y)|0 }+\theta(y^{0}-x^{0})\braket{  }  \\
  & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega _{k}}\left(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}\right) \\
 & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A^{i}(x)A^{0}(y) } & =\theta(x^{0}-y^{0})\braket{ 0|A^{i}(x)A^{0}(y)|0 } +\theta(y^{0}-x^{0})\braket{ 0|A^{0}(y)A^{i}(x)|0 } 
\end{align}
$$

### path integral quantization of Proca field

### discussion

