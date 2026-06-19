# A System with Second Class Constraints

## Canonical Formalism in Covariant Phase Space

We now examine a mechanical system characterized by the following Lagrangian:

$$\tag{1.1}
\begin{align}
L[x,\phi] & =\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi^{2}
\end{align}
$$

This action describes a modified harmonic oscillator with an effective Lagrangian $\displaystyle{L[x]=\frac{1}{2}(m-\lambda^{2})\dot{x}^{2}-\frac{1}{2}kx^{2}}$, where the auxiliary field $\phi$ introduces second-class constraints. Throughout our analysis, we assume that $\displaystyle{m-\lambda^{2}>0}$ to ensure the kinetic term remains positive definite. Performing a variation of the Lagrangian yields:

$$\tag{1.2}
\begin{align}
\delta L & =E_{x}\delta x+ E_{\phi}\delta \phi+ \frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

with the Euler-Lagrange operators and symplectic potential given by:

$$\tag{1.3}
\begin{align}
E_{x} & =-(m\ddot{x}+kx-\lambda \dot{\phi}) \\
E_{\phi} & =\phi-\lambda \dot{x} \\
\theta & =m\dot{x}\delta x-\lambda \phi \delta x
\end{align}
$$

The symplectic form, derived as the exterior derivative of this potential, takes the form:

$$\tag{1.4}
\begin{align}
\omega & =m\delta \dot{x}\wedge \delta x-\lambda \delta \phi \wedge \delta x
\end{align}
$$

The general solution to the equations of motion $\displaystyle{E_{x}=E_{\phi}=0}$ can be expressed as:

$$\tag{1.5}
\begin{align}
x(t) & =\frac{1}{\sqrt{2m'\omega}}(ae^{-i \omega t}+a^{\dagger}e^{i \omega t}) \\
\phi(t) & =\frac{i\lambda \omega}{\sqrt{2m'\omega}}(-ae^{-i \omega t}+a^{\dagger}e^{i\omega t})
\end{align}
$$

where $\displaystyle{m'=m-\lambda^{2}}$ represents the effective mass and $\displaystyle{\omega=\sqrt{k/m'}}$ denotes the natural frequency of oscillation. Under this parameterization, the symplectic form assumes the canonical expression:

$$\tag{1.6}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

The Hamiltonian flows corresponding to the dynamical variables $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ are constructed as:

$$\tag{1.7}
\begin{align}
X_{x(t)} & =i\left(\frac{\delta x(t)}{\delta a^{\dagger}}\frac{\delta}{\delta a}-\frac{\delta x(t)}{\delta a}\frac{\delta}{\delta a^{\dagger}}\right) \\
 & =-\frac{i}{\sqrt{2m'\omega}}\left(e^{-i \omega t}\frac{\delta}{\delta a^{\dagger}}-e^{i \omega t}\frac{\delta}{\delta a}\right) \\
X_{\phi(t)} & =i\left(\frac{\delta \phi(t)}{\delta a^{\dagger}}\frac{\delta}{\delta a}-\frac{\delta \phi(t)}{\delta a}\frac{\delta}{\delta a^{\dagger}}\right) \\
 & =-\frac{\lambda \omega}{\sqrt{2m'\omega}}\left(e^{i \omega t}\frac{\delta}{\delta a}+e^{-i \omega t}\frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

Upon quantization, these Hamiltonian flows yield the commutation relations between the dynamical variables:

$$\tag{1.8}
\begin{align}
[x(t),x(t')] & =iX_{x(t)}\cdot X_{x(t')}\cdot \omega \\
 & =\frac{i}{m'\omega}\sin \omega(t-t') \\
[x(t),\phi(t')] & =iX_{x(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =\frac{i\lambda}{m'}\cos \omega(t-t')\\
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =\frac{i\lambda^{2}\omega}{m'}\sin \omega(t-t')
\end{align}
$$

The two-point time-ordered correlation functions, fundamental to the quantum theory, are expressed as:

$$\tag{1.9}
\begin{align}
\braket{0|\mathcal{T}x(t)x(t')|0} & =\theta(t-t')\braket{0|x(t)x(t')|0}+\theta(t'-t)\braket{0|x(t')x(t)|0} \\
 & =\frac{1}{2m'\omega}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =\frac{1}{im'}\int\frac{\mathrm{d}p_{0}}{2\pi}\frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega^{2}-i\varepsilon} \\
\braket{0|\mathcal{T}x(t)\phi(t')|0} & =\theta(t-t')\braket{0|x(t)\phi(t')|0}+\theta(t'-t)\braket{0|\phi(t')x(t)|0} \\
 & =-\frac{i\lambda}{2m'}(\theta(t-t')e^{-i \omega(t-t')}-\theta(t'-t)e^{i \omega(t-t')}) \\ 
 & =-\frac{\lambda}{im'}\partial_{t}\int\frac{\mathrm{d}p_{0}}{2\pi}\frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega^{2}-i\varepsilon} \\
\braket{0|\mathcal{T}\phi(t)\phi(t')|0} & =\theta(t-t')\braket{0|\phi(t)\phi(t')|0}+\theta(t'-t)\braket{0|\phi(t')\phi(t)|0} \\
 & =\frac{\lambda^{2}\omega}{2m'}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =-\frac{\lambda^{2}}{im'}\partial_{t}^{2}\int\frac{\mathrm{d}p_{0}}{2\pi}\frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega^{2}-i\varepsilon}-\frac{i\lambda^{2}}{m'}\delta(t-t')
\end{align}
$$

A notable feature in these expressions is the presence of a delta function in $\displaystyle{\braket{0|\mathcal{T}\phi(t)\phi(t')|0}}$, which manifests the singular behavior characteristic of constrained systems. This singularity finds natural explanation within the path integral formalism, to which we now turn.

## Path Integral Formalism

To elucidate the quantum structure of this constrained system from a complementary perspective, we introduce the generating functional:

$$\tag{1.10}
\begin{align}
Z[J,\eta] & =\int\mathcal{D}x\mathcal{D}\phi\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t(L[x,\phi]+Jx+\eta\phi)\right) \\
 & =\exp\left(-\frac{i}{2}\int_{-\infty}^{+\infty}\mathrm{d}t\eta^{2}\right)\exp\left(-\frac{1}{2}\int_{-\infty}^{+\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda\dot{\eta})(t)G(t,t')(J-\lambda\dot{\eta})(t')\right)
\end{align}
$$

where the Green's function $\displaystyle{G(t,t')}$ satisfies the differential equation:

$$\tag{1.11}
\begin{align}
\left(m'\frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k-i\varepsilon\right)G(t,t')=\delta(t-t')
\end{align}
$$

This equation admits the solution:

$$\tag{1.12}
\begin{align}
G(t,t') & =\frac{1}{im'}\int\frac{\mathrm{d}p_{0}}{2\pi}\frac{e^{-ip_{0}(t-t')}}{-p_{0}^{2}+\omega^{2}-i\varepsilon}
\end{align}
$$

From this generating functional, we can derive correlation functions through functional differentiation:

$$\tag{1.13}
\begin{align}
\braket{x(t)x(t')} & =\frac{\delta^{2}Z[J,\eta]}{i^{2}\delta J(t)\delta J(t')}\Big|_{J=\eta=0} \\
 & =G(t,t') \\
\braket{x(t)\phi(t')} & =-\frac{\delta^{2}\log Z[J,\eta]}{\delta J(t)\delta\eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\lambda\partial_{t'}G(t,t') \\
\braket{\phi(t)\phi(t')} & =-\frac{\delta^{2}\log Z[J,\eta]}{\delta\eta(t)\delta\eta(t')}\Big|_{J=0,\eta=0} \\
 & =-i\delta(t-t')+\lambda^{2}\frac{\partial^{2}}{\partial t\partial t'}G(t,t') \\
 & =-i\delta(t-t')-\lambda^{2}\partial_{t}^{2}G(t,t')
\end{align}
$$

To establish the precise relationship between these path integral correlation functions and the time-ordered correlation functions derived in the canonical approach, we must analyze their explicit forms. For the mixed correlation function involving $x$ and $\phi$, we have:

$$\tag{1.14}
\begin{align}
\braket{x(t)\phi(t')} & =\frac{\displaystyle{\int\mathcal{D}x\mathcal{D}\phi\,x(t)\phi(t')\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda\dot{x}\phi+\frac{1}{2}\phi^{2}\right)\right)}}{\displaystyle{\int\mathcal{D}x\mathcal{D}\phi\exp\left(i\int^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda\dot{x}\phi+\frac{1}{2}\phi^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int\mathcal{D}x\,\lambda x(t)\dot{x}(t')\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int\mathcal{D}x\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda\partial_{t'}\braket{x(t)x(t')} \\
 & =\lambda\partial_{t'}\braket{0|\mathcal{T}x(t)x(t')|0} \\
 & =\braket{0|\mathcal{T}x(t)(\lambda\dot{x}(t'))|0} \\
 & =\braket{0|\mathcal{T}x(t)\phi(t')|0}
\end{align}
$$

This calculation demonstrates that the mixed correlation function in the path integral approach coincides with the time-ordered correlation function in the canonical formalism. For the self-correlation of the auxiliary field $\phi$, we find:

$$\tag{1.15}
\begin{align}
\braket{\phi(t)\phi(t')} & =\frac{\displaystyle{\int\mathcal{D}x\mathcal{D}\phi\,\phi(t)\phi(t')\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda\dot{x}\phi+\frac{1}{2}\phi^{2}\right)\right)}}{\displaystyle{\int\mathcal{D}x\mathcal{D}\phi\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda\dot{x}\phi+\frac{1}{2}\phi^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int\mathcal{D}x\left(\lambda^{2}\dot{x}(t)\dot{x}(t')+i\delta(t-t')\right)\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}}{\displaystyle{\int\mathcal{D}x\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}\right)\right)}} \\
 & =\lambda^{2}\partial_{t}\partial_{t'}\braket{0|\mathcal{T}x(t)x(t')|0}+i\delta(t-t')
\end{align}
$$

The second term in this expression, $i\delta(t-t')$, arises from quantum fluctuations of the auxiliary field $\phi$. Examining the first term more closely:

$$\tag{1.16}
\begin{align}
\lambda^{2}\partial_{t}\partial_{t'}\braket{0|\mathcal{T}x(t)x(t')|0} & =\lambda\partial_{t}\braket{0|\mathcal{T}x(t)\phi(t')|0} \\
 & =\braket{0|\mathcal{T}\phi(t)\phi(t')|0}+\lambda\delta(t-t')\braket{0|[x(t),\phi(t')]|0} \\
 & =\braket{0|\mathcal{T}\phi(t)\phi(t')|0}+\frac{i\lambda^{2}}{m'}\delta(t-t')
\end{align}
$$

Combining these results, we arrive at the fundamental relation:

$$\tag{1.17}
\begin{align}
\braket{\phi(t)\phi(t')} & =\braket{0|\mathcal{T}\phi(t)\phi(t')|0}+\frac{im}{m'}\delta(t-t')
\end{align}
$$

This equation reveals a profound insight: the path integral correlation function differs from the time-ordered correlation function by a contact term proportional to $\delta(t-t')$. This discrepancy illuminates the subtle interplay between different quantization schemes when handling constrained systems.

## Dirac Approach to Systems with Second Class Constraints

(This section awaits completion)

## Faddeev-Senjanovic Formalism

For systems exhibiting second class constraints, Faddeev and Senjanovic developed a rigorous path integral formulation:

$$\tag{1.18}
\begin{align}
Z & =\int\mathcal{D}\phi^{a}\mathcal{D}\pi_{a}\prod_{i}\delta(\varphi_{i})\det(\{\varphi_{i},\varphi_{j}\}_{\mathrm{PB}})^{1/2}\exp\left(i\int\mathrm{d}^{d}x(\pi_{a}\dot{\phi}^{a}-H[\phi^{a},\pi_{a}])\right)
\end{align}
$$

In this expression, $\displaystyle{\varphi_{i}}$ represents the collection of second class constraints, $\displaystyle{\pi_{a}}$ denotes the canonical momentum conjugate to the dynamical variable $\displaystyle{\phi^{a}}$, and $\displaystyle{H[\phi^{a},\pi_{a}]}$ is the Hamiltonian of the system. The delta functions $\displaystyle{\delta(\varphi_{i})}$ confine the integration to the constraint surface within phase space, while the factor $\displaystyle{\det(\{\varphi_{i},\varphi_{j}\}_{\mathrm{PB}})^{1/2}}$—the Pfaffian of the Poisson bracket matrix $\displaystyle{\{\varphi_{i},\varphi_{j}\}_{\mathrm{PB}}}$—accounts for the appropriate measure induced on this surface.

Applying this formalism to our model, we define the generating functional:

$$\tag{1.19}
\begin{align}
Z[J,\eta] & =\int\mathcal{D}x\mathcal{D}p_{x}\mathcal{D}\phi\mathcal{D}p_{\phi}\prod^{2}_{i=1}\delta(\varphi_{i})\det\left(\{\varphi_{i},\varphi_{j}\}_{\mathrm{PB}}\right)^{1/2} \\
& \times\exp\left(i\int^{+\infty}_{-\infty}\mathrm{d}t(p_{x}\dot{x}+p_{\phi}\dot{\phi}-H[x,\phi]+Jx+\eta\phi)\right) \\
 & =\int\mathcal{D}x\mathcal{D}\phi\exp\left(i\int_{-\infty}^{+\infty}\mathrm{d}t\left(\lambda\dot{x}\phi\left(\frac{m}{\lambda^{2}}-1\right)-\frac{1}{2}\phi^{2}\left(\frac{m}{\lambda^{2}}-1\right)-\frac{1}{2}kx^{2}+Jx+\eta\phi\right)\right) \\
 & =\exp\left(-\frac{i}{2}\int_{-\infty}^{+\infty}\mathrm{d}t\eta^{2}\right)\exp\left(-\frac{1}{2}\int\mathrm{d}t\mathrm{d}t'(J-\lambda\dot{\eta})(t)G(t,t')(J-\lambda\dot{\eta})(t')\right)
\end{align}
$$

The subsequent analysis proceeds identically to our discussion in the path integral formalism section, demonstrating the equivalence of these approaches when properly formulated.

*References:* 
- [Faddeev and Senjanovic, "Covariant Quantization of Gauge Theories with Second Class Constraints"](https://doi.org/10.1016/0003-4916(76)90062-2)
- Henneaux and Teitelboim, "Quantization of Gauge Systems", Princeton University Press (1992)