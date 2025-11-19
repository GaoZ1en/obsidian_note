# a system with second class constraints

## canonical formalism in covariant phase space

we consider a system with the following Lagrangian

$$\tag{1.1}
\begin{align}
L[x,\phi] & =\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}
\end{align}
$$

this action describes a harmonic oscillator with effective Lagrangian $\displaystyle{L[x]=\frac{1}{2}(m-\lambda ^{2})\dot{x}^{2}-\frac{1}{2}kx^{2}}$. here we assume that $\displaystyle{m-\lambda ^{2}>0}$. we take a variation of the Lagrangian as

$$\tag{1.2}
\begin{align}
\delta L & =E_{x}\delta x+ E_{\phi}\delta \phi+ \frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

with

$$\tag{1.3}
\begin{align}
E_{x} & =-(m\ddot{x}+kx-\lambda \dot{\phi}) \\
E_{\phi} & =\phi-\lambda \dot{x} \\
\theta & =m\dot{x}\delta x-\lambda \phi \delta x
\end{align}
$$

then the symplectic potential is given by

$$\tag{1.4}
\begin{align}
\omega & =m\delta \dot{x}\wedge \delta x-\lambda \delta \phi \wedge \delta x
\end{align}
$$

a general solution of the equations of motion $\displaystyle{E_{x}=E_{\phi}=0}$ is given by

$$\tag{1.5}
\begin{align}
x(t) & =\frac{1}{\sqrt{ 2m'\omega }}(ae^{-i \omega t}+a^{\dagger}e^{i \omega t}) \\
\phi(t) & =\frac{i\lambda \omega}{\sqrt{ 2m'\omega }}(-ae^{-i \omega t}+a^{\dagger}e^{i\omega t})
\end{align}
$$

where $\displaystyle{m'=m-\lambda ^{2},\omega=\sqrt{ k/m' }}$. then the symplectic form becomes

$$\tag{1.6}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

then the Hamiltonian flow corresponding to $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ is given by

$$\tag{1.7}
\begin{align}
X_{x(t)} & =i\left( \frac{\delta x(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta x(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =-\frac{i}{\sqrt{ 2m'\omega }}\left(e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}-e^{i \omega t} \frac{\delta}{\delta a}\right) \\
X_{\phi(t)} & =i\left( \frac{\delta \phi(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \phi(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =- \frac{\lambda \omega}{\sqrt{ 2m'\omega }}\left(e^{i \omega t} \frac{\delta}{\delta a}+e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

the commutators between $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ are then 

$$\tag{1.8}
\begin{align}
[x(t),x(t')] & =iX_{x(t)}\cdot X_{x(t')}\cdot \omega \\
 & =\frac{i}{m'\omega}\sin \omega(t-t') \\
[x(t),\phi(t')] & =iX_{x(t)}\cdot X_{\phi(t')}\cdot \omega \\
  & = \frac{i\lambda}{m'}\cos \omega(t-t')\\
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & = \frac{i\lambda ^{2}\omega}{m'}\sin(t-t')
\end{align}
$$

and the 2-point time ordered correlation functions are given by

$$\tag{1.9}
\begin{align}
\braket{ 0|\mathcal{T}x(t)x(t')|0 } & = \theta(t-t')\braket{ 0|x(t)x(t')|0 } +\theta(t'-t)\braket{ 0|x(t')x(t)|0 }  \\
 & =\frac{1}{2m'\omega}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =\frac{1}{im'} \int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} \\
\braket{ 0|\mathcal{T}x(t)\phi(t')|0 } & = \theta(t-t')\braket{ 0|x(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')x(t)|0 }  \\
 & =-\frac{i\lambda}{2m'}(\theta(t-t')e^{-i \omega(t-t')}-\theta(t'-t)e^{i \omega(t-t')}) \\ 
 & =-\frac{\lambda}{im'}\partial _{t}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} \\
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & = \theta(t-t')\braket{ 0|\phi(t)\phi(t')|0 } +\theta(t'-t)\braket{ 0|\phi(t')\phi(t)|0 }  \\
 & =\frac{\lambda ^{2}\omega}{2m'}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =-\frac{\lambda ^{2}}{im'}\partial _{t}^{2}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon} -\frac{i\lambda ^{2}}{m'}\delta(t-t')\\
\end{align}
$$

we note that the $\displaystyle{\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 }}$ contains a delta function, which can be explained in path integral formalism. 

## path integral formalism

consider the following generating functional

$$\tag{1.10}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\delta(L[x,\phi]+Jx+\eta \phi)\right) \\
 & =\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}\right)\exp\left(-\frac{1}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda \dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)
\end{align}
$$

where the Green function $\displaystyle{G(t,t')}$ satisfies

$$\tag{1.11}
\begin{align}
\left(m'\frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k-i\varepsilon\right)G(t,t')=\delta(t-t')
\end{align}
$$

and the solution is given by

$$\tag{1.12}
\begin{align}
G(t,t') & =\frac{1}{im}\int \frac{\mathrm{d}p_{0}}{2\pi} \frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega ^{2}-i\varepsilon}
\end{align}
$$

the correlation functions can be computed as

$$\tag{1.13}
\begin{align}
\braket{ x(t)x(t') } & =\frac{\delta ^{2}Z[J,\eta]}{i^{2}\delta J(t)\delta J(t')}\Big|_{J=\eta=0} \\
 & =G(t,t') \\
\braket{ x(t)\phi(t') } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta J(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\lambda \partial _{t}G(t,t') \\
\braket{ \phi(t)\phi(t') } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta \eta(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-i\delta(t-t')+\lambda ^{2} \frac{\partial^{2}}{\partial t\partial t'}G(t,t') \\
 & =-i\delta(t-t')-\lambda ^{2} \partial _{t}^{2}G(t,t')
\end{align}
$$

now we want relate the correlation functions (1.13) to the time ordered correlation functions (1.9). we note that the correlation functions containing $\displaystyle{\phi}$ in (1.13) are defined as

$$\tag{1.14}
\begin{align}
\braket{ x(t)\phi(t') } & =\frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)\phi(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}x \lambda x(t)\dot{x}(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda \partial _{t'}\braket{ x(t)\dot{x}(t') } \\
 & =\lambda \partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 }  \\
 & = \braket{ 0|\mathcal{T}x(t)(\lambda \dot{x}(t'))|0 }  \\
 & = \braket{ 0|\mathcal{T}x(t)\phi(t')|0 } 
\end{align}
$$

and

$$\tag{1.15}
\begin{align}
\braket{ \phi(t)\phi(t') } & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \phi(t)\phi(t')\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}x\left(\lambda ^{2}\dot{x}(t)\dot{x}(t')+i\delta(t-t')\right)\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}x\exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda ^{2}\partial _{t}\partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 } +i\delta(t-t')
\end{align}
$$

where the second term is contributed by quantum fluctuation of $\displaystyle{\phi}$. the first term is

$$\tag{1.16}
\begin{align}
\lambda ^{2}\partial _{t}\partial _{t'}\braket{ 0|\mathcal{T}x(t)x(t')|0 }  & =\lambda \partial _{t}\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }  \\
 & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\lambda \delta(t-t')\braket{ 0|[x(t),\phi(t')]|0 }  \\
 & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\frac{i\lambda ^{2}}{m'}\delta(t-t')
\end{align}
$$

finnally, we have

$$\tag{1.17}
\begin{align}
\braket{ \phi(t)\phi(t') } & =\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } +\frac{im}{m'}\delta(t-t')
\end{align}
$$

the extra term is exactly the difference between canonical formalism and the path integral formalism. 

## Dirac approach to system with second class constraints

(waiting to be completed)

## Faddeev-Senjanovic formalism


for a system with second class constraints, Faddeev and Senjanovic proposed a formalism to calculate the path integral as

$$\tag{1.18}
\begin{align}
Z & =\int \mathcal{D}\phi ^{a}\mathcal{D}\pi _{a}\prod _{i}\delta(\varphi _{i}) \det(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}})^{1/2} \exp\left(i \int \mathrm{d}^{d}x(\pi _{a}\phi ^{a}-H[\phi ^{a},\pi _{a}])\right)
\end{align}
$$

here $\displaystyle{\varphi _{i}}$ are second class constraints, $\displaystyle{\pi _{a}}$ is the canonical momentum corresponding to dynamical variable $\displaystyle{\phi ^{a}}$, and $\displaystyle{H[\phi ^{a},\pi _{a}]}$ is the Hamiltonian. $\displaystyle{\delta(\varphi _{i})}$ restrict the path integral to the subspace of phase space that satisfies the second class constraints, and $\displaystyle{\det(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}})^{1/2}}$ is the Phaffian of the Poisson bracket matrix $\displaystyle{\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}}}$, which accounts for the change of measure in the path integral.

having defined the path integral, we can first define the generating functional as

$$\tag{1.19}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}p_{x}\mathcal{D}\phi \mathcal{D}p_{\phi}\prod ^{2}_{i=1}\delta(\varphi _{i})\det\left(\left\{\varphi _{i},\varphi _{j}\right\}_{\mathrm{PB}}\right)^{1/2}\exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(p_{x}\dot{x}+p_{\phi}\dot{\phi}-H[x,\phi]+Jx+\eta \phi\right)\right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\lambda \dot{x}\phi\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}\phi ^{2}\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}kx^{2}+Jx+\eta \phi\right)\right) \\
 & =\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}\right)\exp\left(-\frac{1}{2}\int \mathrm{d}t\mathrm{d}t'(J-\lambda\dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)
\end{align}
$$

and the following discussion is the same as subsection 2.

cite [https://doi.org/10.1016/0003-4916(76)90062-2] and [Henneaux, Teitelboim]

