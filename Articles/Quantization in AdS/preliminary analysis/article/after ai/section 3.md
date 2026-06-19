# Covariant Phase Space Formalism: Illustrative Examples

In this section, we explore concrete applications of the covariant phase space formalism developed previously. We situate our analysis within 4-dimensional Minkowski spacetime equipped with signature $\displaystyle{(-,+,+,+)}$. Throughout our examples, the Cauchy surfaces $\Sigma_t$ are chosen as constant-time hypersurfaces with normal vector $\displaystyle{\tau^{\mu}=(1,0,0,0)}$. To ensure mathematical well-definedness, we impose asymptotic boundary conditions where all dynamical fields vanish at spatial infinity. Our investigation begins with scalar field theory—the paradigmatic example of quantum field theory—before advancing to the more intricate case of Proca field theory, which describes massive vector bosons.

## Scalar Field Theory

The scalar field in 4-dimensional Minkowski spacetime represents the simplest relativistic field theory, governed by the action:

$$\tag{1.1}
\begin{align}
S & =-\frac{1}{2}\int_{M}\mathrm{d}^{4}x\left(\partial_{\mu}\phi \partial^{\mu}\phi+m^{2}\phi^{2}\right)
\end{align}
$$

Following our covariant formalism, we first perform a variation of this action:

$$\tag{1.2}
\begin{align}
\delta S & =\int_{M}\mathrm{d}^{4}x E_{\phi}\delta \phi+\theta|_{\Sigma_{f}}-\theta|_{\Sigma_{i}} \\
\end{align}
$$

Here, $\displaystyle{E_{\phi}=(\nabla^{2}-m^{2})\phi}$ constitutes the Euler-Lagrange operator, while the symplectic potential takes the form $\displaystyle{\theta=\int_{\Sigma}\mathrm{d}^{3}x\dot{\phi} \delta \phi}$. The symplectic form $\displaystyle{\omega}$, which encodes the phase space geometry, emerges naturally as the variation of this symplectic potential:

$$\tag{1.3}
\begin{align}
\omega & =\delta \theta =\int_{\Sigma}\mathrm{d}^{3}x\delta \dot{\phi}\wedge \delta \phi
\end{align}
$$

The dynamics of the field are governed by the equation of motion $\displaystyle{E_{\phi}=0}$, which corresponds to the familiar Klein-Gordon equation. The general solution to this equation can be elegantly expressed as a superposition of momentum modes:

$$\tag{1.4}
\begin{align}
\phi(x) & =\int \mathrm{d}^{3}\vec{k}(a_{k}\sigma_{k}(x)+a_{k}^{\dagger}\sigma^{*}_{k}(x))
\end{align}
$$

In this expansion, $\displaystyle{\sigma_{k}(x)=\frac{e^{ik\cdot x}}{(2\pi)^{3/2}\sqrt{2\omega_{k}}}}$ represents a complete orthonormal basis of the solution space. These basis functions satisfy the Klein-Gordon orthonormality condition:

$$\tag{1.5}
\begin{align}
(\sigma_{k},\sigma_{k'}) & =i \int_{\Sigma}\mathrm{d}^{3}x\left(\sigma_{k}^{*}\dot{\sigma}_{k'}-\sigma^{*}_{k'}\dot{\sigma}_{k}\right) \\
 & =\delta^{3}(\vec{k}-\vec{k}')
\end{align}
$$

This orthonormality allows us to express the symplectic form in terms of the mode coefficients:

$$\tag{1.6}
\begin{align}
\omega & =i\int \mathrm{d}^{3}\vec{k} \delta a_{k}^{\dagger}\wedge \delta a_{k}
\end{align}
$$

The Hamiltonian flow corresponding to the field $\displaystyle{\phi(x)}$ is then constructed as:

$$\tag{1.7}
\begin{align}
X_{\phi(x)} & =-i \int \mathrm{d}^{3}\vec{k}\left(\frac{\delta \phi(x)}{\delta a_{k}} \frac{\delta}{\delta a_{k}^{\dagger}}-\frac{\delta \phi(x)}{\delta a^{\dagger}_{k}} \frac{\delta}{\delta a_{k}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\left(\sigma_{k} \frac{\delta}{\delta a_{k}^{\dagger}}-\sigma^{*}_{k} \frac{\delta}{\delta a_{k}}\right)
\end{align}
$$

With these geometric structures in place, we can derive the fundamental commutation relation between field values at different spacetime points:

$$\tag{1.8}
\begin{align}
[\phi(x),\phi(y)] & =iX_{\phi(x)}\cdot X_{\phi(y)}\cdot \omega \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega_{k}}(e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

In this evaluation, the contour for $\displaystyle{k^{0}}$ integration is chosen as shown in the accompanying figure.

The time-ordered two-point correlation function, central to perturbative quantum field theory, emerges naturally within our framework:

$$\tag{1.9}
\begin{align}
\braket{0|\mathcal{T}\phi(x)\phi(y)|0} & =\theta(x^{0}-y^{0})\braket{0|\phi(x)\phi(y)|0}+\theta(y^{0}-x^{0})\braket{0|\phi(y)\phi(x)|0} \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega_{k}}(\theta(x^{0}-y^{0})e^{ik\cdot(x-y)}+\theta(y^{0}-x^{0})e^{-ik\cdot(x-y)}) \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}
\end{align}
$$

This expression yields the familiar Feynman propagator, a cornerstone of quantum field theory calculations.

## Proca Field Theory

### Canonical Quantization of the Proca Field

We now extend our analysis to the Proca field—a massive vector field that generalizes electromagnetism to include a mass term. The dynamics of this field are captured by the action:

$$\tag{1.10}
\begin{align}
S & =\int_{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$

where the field strength tensor $\displaystyle{F_{\mu\nu}}$ is defined as $\displaystyle{F_{\mu\nu}=\partial_{\mu}A_{\nu}-\partial_{\nu}A_{\mu}}$. Varying this action yields:

$$\tag{1.11}
\begin{align}
\delta S & =\int_{M}\mathrm{d}^{4}xE^{\nu}\delta A_{\nu}+\theta|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

with the Euler-Lagrange operator $\displaystyle{E^{\nu}=\partial_{\mu}F^{\mu\nu}-m^{2}A^{\nu}}$ and symplectic potential $\displaystyle{\theta=\int_{\Sigma}\mathrm{d}^{3}xF^{0\nu}\delta A_{\nu}}$. 

A crucial distinction from massless electromagnetism emerges when we apply $\displaystyle{\partial_{\nu}}$ to the equation of motion $\displaystyle{E^{\nu}=0}$, yielding the constraint:

$$\tag{1.12}
\begin{align}
m^{2}\partial_{\mu}A^{\mu}=0
\end{align}
$$

This constraint, valid for $m \neq 0$, reveals that $\partial_{\mu}A^{\mu} = 0$ is not a gauge choice but rather a consequence of the equations of motion. Incorporating this constraint into the field equations produces the Proca equation:

$$\tag{1.13}
\begin{align}
\nabla^{2}A^{\nu}-m^{2}A^{\nu} & =0
\end{align}
$$

The general solution can be expressed as a mode expansion:

$$\tag{1.14}
\begin{align}
A^{\mu}(x) & =\int \mathrm{d}^{3}\vec{k}\sum^{3}_{s=1} e^{s\mu}_{k}(\sigma_{k}a_{ks}+\sigma^{*}_{k}a^{\dagger}_{ks})
\end{align}
$$

where $\displaystyle{e^{s\mu}_{k}}$ represents the polarization vectors satisfying:

$$\tag{1.15}
\begin{align}
\sum^{3}_{s=1} e^{s}_{k\mu}e^{s*}_{k\nu} & =\eta_{\mu\nu} +\frac{k_{\mu}k_{\nu}}{m^{2}}
\end{align}
$$

The constraint equation further imposes the transversality condition $\displaystyle{k^{\mu}e^{s}_{k\mu}=0}$ for all polarization states $\displaystyle{s=1,2,3}$.

The symplectic form for the Proca field adopts the structure:

$$\tag{1.16}
\begin{align}
\omega & =i \int \mathrm{d}^{3}\vec{k} \sum^{3}_{s=1} \delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

while the Hamiltonian flow corresponding to $\displaystyle{A^{\mu}(x)}$ takes the form:

$$\tag{1.17}
\begin{align}
X_{A^{\mu}(x)} & =-i\int \mathrm{d}^{3}\vec{k}\sum^{3}_{s=1}\left(\frac{\delta A^{\mu}(x)}{\delta a_{ks}} \frac{\delta}{\delta a_{ks}^{\dagger}}-\frac{\delta A^{\mu}(x)}{\delta a_{ks}^{\dagger}} \frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum^{3}_{s=1} e^{s\mu}_{k}\left(\sigma_{k}(x) \frac{\delta}{\delta a^{\dagger}_{ks}}-\sigma^{*}_{k}(x) \frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

Upon canonical quantization, we derive the fundamental commutation relations between field components:

$$\tag{1.18}
\begin{align}
[A^{\mu}(x),A^{\nu}(y)] & =iX_{A^{\mu}(x)}\cdot X_{A^{\nu}(y)}\cdot \omega \\
 & =\int \mathrm{d}^{3}\vec{k}\sum^{3}_{s=1}e^{s\mu}_{k}e^{s\nu}_{k}\left(\sigma_{k}(x)\sigma^{*}_{k}(y)-\sigma^{*}_{k}(x)\sigma_{k}(y)\right) \\
 & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega_{k}}\left(\eta^{\mu\nu}+\frac{k^{\mu}k^{\nu}}{m^{2}}\right) (e^{ik\cdot(x-y)}-e^{-ik\cdot(x-y)}) \\
 & =\left(\eta^{\mu\nu}-\frac{\partial^{\mu}_{x}\partial^{\nu}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}} e^{ik\cdot(x-y)}
\end{align}
$$

The time-ordered two-point correlation functions for the various components of the Proca field reveal an intricate structure:

$$\tag{1.19}
\begin{align}
\braket{0|\mathcal{T}A^{i}(x)A^{j}(y)|0} & = \theta(x^{0}-y^{0})\braket{0|A^{i}(x)A^{j}(y)|0}+\theta(y^{0}-x^{0})\braket{0|A^{j}(y)A^{i}(x)|0} \\
 & =\left(\delta^{ij}-\frac{\partial^{i}_{x}\partial^{j}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{0|\mathcal{T}A^{i}(x)A^{0}(y)|0} & =\theta(x^{0}-y^{0})\braket{0|A^{i}(x)A^{0}(y)|0}+\theta(y^{0}-x^{0})\braket{0|A^{0}(y)A^{i}(x)|0} \\
 & =-\frac{\partial^{i}_{x}\partial^{0}_{x}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{0|\mathcal{T}A^{0}(x)A^{i}(y)|0} & =\theta(x^{0}-y^{0})\braket{0|A^{0}(x)A^{i}(y)|0}+\theta(y^{0}-x^{0})\braket{0|A^{i}(y)A^{0}(x)|0} \\
 & =-\frac{\partial^{i}_{x}\partial^{0}_{x}}{m^{2}}\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)} \\
\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0} & =\theta(x^{0}-y^{0})\braket{0|A^{0}(x)A^{0}(y)|0}+\theta(y^{0}-x^{0})\braket{0|A^{0}(y)A^{0}(x)|0} \\
 & =\left(-1-\frac{\partial^{0}_{x}\partial^{0}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}-\frac{i}{m^{2}}\delta^{4}(x-y)
\end{align}
$$

Consolidating these results, we can express the general time-ordered correlation function as:

$$\tag{1.20}
\begin{align}
\braket{0|\mathcal{T}A^{\mu}(x)A^{\nu}(y)|0} & =\left(\eta^{\mu\nu}-\frac{\partial^{\mu}_{x}\partial^{\nu}_{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon} e^{ik\cdot(x-y)}-\frac{i}{m^{2}}\delta^{4}(x-y)
\end{align}
$$

A striking feature of this result is the presence of a non-covariant contact term, which demands explanation through the path integral formalism.

### Path Integral Quantization of the Proca Field

To elucidate the origin of the contact term in our canonical approach, we now examine the Proca field through the lens of path integral quantization. We introduce the generating functional:

$$\tag{1.21}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)G^{\mu\nu}(x,y)J_{\nu}(y)\right)
\end{align}
$$

The Green's function $\displaystyle{G^{\mu\nu}(x,y)}$ appearing in this expression satisfies:

$$\tag{1.22}
\begin{align}
i(\partial_{\mu}\partial_{\nu}-\eta_{\mu\nu}(\nabla^{2}+m^{2}))G^{\nu\rho}(x,y) & =\delta^{\rho}_{\mu}\delta^{4}(x-y)
\end{align}
$$

Solving this equation yields:

$$\tag{1.23}
\begin{align}
G^{\mu\nu}(x,y) & = \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot(x-y)} \left(\eta^{\mu\nu} +\frac{k^{\mu}k^{\nu}}{m^{2}}\right)
\end{align}
$$

The correlation function derived from this path integral formalism is:

$$\tag{1.24}
\begin{align}
\braket{A^{\mu}(x)A^{\nu}(y)} & = \frac{\delta^{2}Z[J]}{i^{2}\delta J_{\mu}(x)\delta J_{\nu}(y)} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot(x-y)} \left(\eta^{\mu\nu} +\frac{k^{\mu}k^{\nu}}{m^{2}}\right)
\end{align}
$$

To establish the precise relationship between this path integral result and our canonical formalism, we examine the mixed-component correlation function:

$$\tag{1.25}
\begin{align}
\braket{A^{0}(x)A^{i}(y)} & =\frac{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}A^{0}(x)A^{i}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0}\partial_{j}A^{j}(z) \right)A^{i}(y)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}[A^{i}]}\right)}} \\
 & =-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{j,z}\braket{A^{j}(z)A^{i}(y)} \\
 & =-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{j,z}\braket{0|\mathcal{T}A^{j}(z)A^{i}(y)|0} \\
 & =\braket{0|\mathcal{T}\left(-\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{j,z}A^{j}(z) \right)A^{i}(y)|0} \\
 & =\braket{0|\mathcal{T}A^{0}(x)A^{i}(y)|0}
\end{align}
$$

In this derivation, $\mathcal{L}_{\mathrm{eff}}[A^{i}]$ represents the effective Lagrangian obtained by integrating out the $A^0$ component:

$$\tag{1.26}
\begin{align}
\mathcal{L}_{\mathrm{eff}} & =-\frac{1}{4}(\partial_{i}A^{j}-\partial_{j}A^{i})^{2}+\frac{1}{2}(\dot{A}^{i})^{2}-\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial_{x,i}G(\vec{x},\vec{y})\partial_{y,j}\dot{A}^{j}(y) \\
& +\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial_{x,i}G(\vec{x},\vec{y})\partial_{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial_{x,i}G(\vec{x},\vec{z})\partial_{z,k}\dot{A}^{k}(z) \\
 & +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial_{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{z,k}\dot{A}^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2}
\end{align}
$$

The Green's function $\displaystyle{G(\vec{x},\vec{y})}$ for the operator $\displaystyle{\vec{\nabla}^{2}+m^{2}}$ is given by:

$$\tag{1.27}
\begin{align}
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi} \frac{e^{-m|\vec{x}-\vec{y}|}}{|\vec{x}-\vec{y}|}
\end{align}
$$

For the purely temporal components, a more intricate calculation reveals:

$$\tag{1.28}
\begin{align}
\braket{A^{0}(x)A^{0}(y)} & = \frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A^{0}(x)A^{0}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}+\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left[ \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}A^{i}(z) \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w}A^{j}(w) \right)-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y}) \right]\exp\left(i \int \mathrm{d}^{4}\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & = \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w} \right)\braket{A^{i}(z)A^{j}(w)} -i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

Here, the second term arises from quantum fluctuations of $\displaystyle{A^{0}}$. Analyzing the first term:

$$\tag{1.29}
\begin{align}
 & \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w} \right)\braket{A^{i}(z)A^{j}(w)} \\
 & = \left( -\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z} \right)\left( -\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w} \right)\braket{0|\mathcal{T}A^{i}(z)A^{j}(w)|0} \\
 & =\left( -\int \mathrm{d}^{3}\vec{z} G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}\right)\braket{0|\mathcal{T}A^{i}(z)A^{0}(y)|0} \\
 & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}+\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{i,z}\braket{0|[A^{i}(z),A^{0}(y)]|0} \\
 & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}+\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\left(-\frac{i}{m^{2}}\vec{\nabla}_{z}^{2}\delta^{3}(\vec{z}-\vec{y})\right) \\
 & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}-\frac{i}{m^{2}}\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}\vec{\nabla}_{z}^{2}G(\vec{x},\vec{z})\delta^{3}(\vec{z}-\vec{y}) \\
 & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}+i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})+\frac{i}{m^{2}}\delta^{4}(x-y)
\end{align}
$$

Combining these results, we arrive at the key relation:

$$\tag{1.30}
\begin{align}
\braket{A^{0}(x)A^{0}(y)} & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}+\frac{i}{m^{2}}\delta^{4}(x-y)
\end{align}
$$

This analysis reveals that the contact term $\displaystyle{\frac{i}{m^{2}}\delta^{4}(x-y)}$ represents precisely the difference between the path integral correlation function $\displaystyle{\braket{A^{\mu}(x)A^{\nu}(y)}}$ in equation (1.24) and the time-ordered correlation function $\displaystyle{\braket{0|\mathcal{T}A^{\mu}(x)A^{\nu}(y)|0}}$ in equation (1.20). This discrepancy highlights a profound aspect of quantum field theory: different quantization approaches can yield equivalent physical predictions while differing in their treatment of singular contact terms.