# Electric Fields as a System with First-Class Constraints

This appendix examines the quantum structure of electric fields in different spacetime dimensions, highlighting the distinct features that emerge in reduced dimensionality versus the full four-dimensional theory.

## Electric Fields in 1+1 Dimensional Spacetime

We begin our investigation with electrodynamics confined to 1+1 dimensions, where space is compactified on a circle of radius $\displaystyle{R}$. The action governing this system takes the form:

$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{2}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{\Theta}{2\pi}F_{01}\right)
\end{align}
$$

where $\displaystyle{F_{\mu \nu}=\partial_{\mu}A_{\nu}-\partial_{\nu}A_{\mu}}$ represents the electromagnetic field strength tensor, and $\displaystyle{\Theta}$ denotes a constant parameter associated with a topological term analogous to the θ-term in four-dimensional gauge theories. Varying this action yields:

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{2}x\left(E_{1}\delta A^{1}+E_{0}\delta A^{0}\right)+\theta|_{\Sigma_{f}-\Sigma_{i}}
\end{align}
$$

with Euler-Lagrange operators $\displaystyle{E_{1}=-\partial_{0}(\dot{A}^{1}+\partial_{1}A^{0})}$ and $\displaystyle{E_{0}=-\partial_{1}(\dot{A}^{1}+\partial_{1}A^{0})}$, accompanied by the symplectic potential $\displaystyle{\theta}$. The equations of motion derived from these operators are:

$$\tag{1.3}
\begin{align}
\partial_{0}(\dot{A}^{1}+\partial_{1}A^{0})=\partial_{1}(\dot{A}^{1}+\partial_{1}A^{0})=0
\end{align}
$$

This system of equations admits the solution:

$$\tag{1.4}
\begin{align}
\dot{A}^{1}+\partial_{1}A^{0} & =-E_{0}
\end{align}
$$

where $E_0$ represents a constant electric field. Working in the Coulomb gauge $\displaystyle{\partial_{1}A^{1}=0}$ leads to the constraint $\displaystyle{A^{1}=0}$ for the local degrees of freedom. Consequently, the only physical degree of freedom resides in the zero mode of $\displaystyle{A^{1}}$, defined as:

$$\tag{1.5}
\begin{align}
\phi(t) & =\int_{0}^{2\pi R}\mathrm{d}x A^{1}(x,t)
\end{align}
$$

Under these considerations, the action simplifies dramatically to:

$$\tag{1.6}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{1}{4\pi R^{2}}\dot{\phi}^{2}+\frac{\Theta}{2\pi}\dot{\phi}\right)
\end{align}
$$

The equation of motion for this reduced system becomes:

$$\tag{1.7}
\begin{align}
E_{\phi} & =-\frac{1}{4\pi R^{2}}\ddot{\phi}=0
\end{align}
$$

yielding the linear solution $\displaystyle{\phi=E_{0}t+\phi_{0}}$, where $E_0$ represents the constant electric field in this one-dimensional universe and $\phi_0$ is an integration constant. The corresponding symplectic form takes the canonical structure:

$$\tag{1.8}
\begin{align}
\omega & =\frac{1}{2\pi R^{2}}\delta E_{0}\wedge \delta \phi_{0}
\end{align}
$$

From this symplectic form, we construct the Hamiltonian flow corresponding to $\displaystyle{\phi(t)}$:

$$\tag{1.9}
\begin{align}
X_{\phi(t)} & =2\pi R^{2}\left(\frac{\delta \phi}{\delta \phi_{0}}\frac{\delta}{\delta E_{0}}-\frac{\delta \phi}{\delta E_{0}}\frac{\delta}{\delta \phi_{0}}\right) \\
 & =2\pi R^{2}\left(\frac{\delta}{\delta E_{0}}-t\frac{\delta}{\delta \phi_{0}}\right)
\end{align}
$$

Upon quantization, this flow yields the commutation relation:

$$\tag{1.10}
\begin{align}
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =2\pi iR^{2}(t'-t)
\end{align}
$$

This unusual time-dependent commutator reflects the topological nature of gauge fields in 1+1 dimensions. The corresponding time-ordered two-point correlation function is:

$$\tag{1.11}
\begin{align}
\braket{0|\mathcal{T}\phi(t)\phi(t')|0} & =\theta(t-t')\braket{0|\phi(t)\phi(t')|0}+\theta(t'-t)\braket{0|\phi(t')\phi(t)|0} \\
 & =2\pi R^{2}[\theta(t-t')t'+\theta(t'-t)t]
\end{align}
$$

This result demonstrates that even in this highly simplified setting, quantum electrodynamics exhibits non-trivial structure.

## Electric Fields in 1+3 Dimensional Spacetime

We now transition to the more familiar setting of electrodynamics in 1+3 dimensional Minkowski spacetime with signature $\displaystyle{(-,+,+,+)}$. We choose constant-time hypersurfaces as our Cauchy surfaces, with normal vector $\displaystyle{\tau^{\mu}=(1,0,0,0)}$, and impose boundary conditions where all fields vanish at spatial infinity. The action for this system is the standard Maxwell action:

$$\tag{1.12}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}\right)
\end{align}
$$

### Canonical Formalism

Varying the action yields:

$$\tag{1.13}
\begin{align}
\delta S & =\int \mathrm{d}^{4}xE_{\nu}\delta A^{\nu}+\theta|_{\Sigma_{f}-\Sigma_{i}} \\
E_{\nu} & =\partial^{\mu}F_{\mu\nu} \\
\theta & =\int_{\Sigma}\mathrm{d}^{3}x\delta_{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

Working in the Coulomb gauge $\displaystyle{\vec{\nabla}\cdot\vec{A}=0}$, the equation of motion for $\displaystyle{A^{0}}$ reduces to Laplace's equation $\displaystyle{\vec{\nabla}^{2}A^{0}=0}$. Combined with our boundary condition that fields vanish at infinity, this implies $\displaystyle{A^{0}=0}$ throughout the domain. The general solution to the remaining equations of motion can be expressed as a mode expansion:

$$\tag{1.14}
\begin{align}
A^{i}(x) =&\int \mathrm{d}^{3}\vec{k}\sum^{2}_{s=1} e^{s,i}_{k}[a_{ks}\sigma_{k}(x)+a^{\dagger}_{ks}\sigma^{*}_{k}(x)]
\end{align}
$$

where the two polarization states reflect the physical degrees of freedom of the photon. The symplectic form for this system is:

$$\tag{1.15}
\begin{align}
\omega & =\delta \theta \\
 & =i\int \mathrm{d}^{3}\vec{k}\sum^{2}_{s=1} \delta a^{\dagger}_{ks}\wedge \delta a_{ks}
\end{align}
$$

The corresponding Hamiltonian flow for the vector potential is:

$$\tag{1.16}
\begin{align}
X_{A^{i}(x)} & =-i \int \mathrm{d}^{3}\vec{k}\sum^{2}_{s=1}\left(\frac{\delta A^{i}}{\delta a_{ks}}\frac{\delta}{\delta a^{\dagger}_{ks}}-\frac{\delta A^{i}}{\delta a^{\dagger}_{ks}}\frac{\delta}{\delta a_{ks}}\right) \\
 & =-i \int \mathrm{d}^{3}\vec{k}\sum^{2}_{s=1}\left(\sigma_{k}(x)\frac{\delta}{\delta a^{\dagger}_{ks}}-\sigma^{*}_{k}(x)\frac{\delta}{\delta a_{ks}}\right)
\end{align}
$$

Upon canonical quantization, this yields the transverse commutation relation:

$$\tag{1.17}
\begin{align}
[A^{i}(x),A^{j}(y)] & =iX_{A^{i}(x)}\cdot X_{A^{j}(y)}\cdot \omega \\
 & =\left(\delta^{ij}-\frac{\partial^{i}_{x}\partial^{j}_{x}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}\frac{i}{k^{2}}e^{ik\cdot(x-y)}
\end{align}
$$

where the contour for $\displaystyle{k^{0}}$ integration follows the standard Feynman prescription. The corresponding time-ordered two-point correlation function is:

$$\tag{1.18}
\begin{align}
\braket{0|\mathcal{T}A^{i}(x)A^{j}(y)|0} & =\theta(x^{0}-y^{0})\braket{0|A^{i}(x)A^{j}(y)|0}+\theta(y^{0}-x^{0})\braket{0|A^{j}(y)A^{i}(x)|0} \\
 & =\left(\delta^{ij}-\frac{\partial^{i}_{x}\partial^{j}_{x}}{\vec{\nabla}^{2}_{x}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}e^{-ik\cdot(x-y)}\left(\frac{i}{k^{2}-i\varepsilon}\right)
\end{align}
$$

This transverse projection reflects the physical polarization states of the photon in the Coulomb gauge.

### Path Integral Formalism

To complement our canonical analysis, we now examine electrodynamics through the Faddeev-Popov path integral formalism. The generating functional in the Coulomb gauge is:

$$\tag{1.19}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}-\frac{1}{2\xi}(\partial_{i}A^{i})^{2}+J_{\mu}A^{\mu}\right)\right)
\end{align}
$$

where $\displaystyle{-\frac{1}{2\xi}(\partial_{i}A^{i})^{2}}$ represents the gauge-fixing term. The ghost action decouples from the gauge fields and contributes only an overall normalization factor. The generating functional can be rewritten as:

$$\tag{1.20}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A^{\mu}D_{\mu\nu}A^{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)G^{\mu\nu}(x,y)J_{\nu}(y)\right)
\end{align}
$$

The differential operator $\displaystyle{D_{\mu\nu}}$ and the corresponding Green's function $\displaystyle{G^{\mu\nu}(x,y)}$ satisfy:

$$\tag{1.21}
\begin{align}
D_{\mu\nu} & =\begin{pmatrix}
\vec{\nabla}^{2} & \partial_{0}\partial_{i} \\
\partial_{0}\partial_{i} & \left(1-\frac{1}{\xi}\right)\partial_{i}\partial_{j}-\delta_{ij}(\vec{\nabla}^{2}-\partial_{0}^{2})
\end{pmatrix} \\
iD_{\mu\nu}G^{\nu\rho}(x,y) & =\delta^{\rho}_{\mu}\delta^{4}(x-y)
\end{align}
$$

The solution for the Green's function is:

$$\tag{1.22}
\begin{align}
G^{\mu\nu}(x,y) & =i \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}e^{ik\cdot(x-y)}\begin{pmatrix}
-\frac{1}{\vec{k}^{2}}\left(1-\frac{(k^{0})^{2}}{\vec{k}^{2}}\xi\right) & \frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi \\
\frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi & \frac{1}{k^{2}-i\varepsilon}\left(\delta^{ij}-\frac{k^{i}k^{j}}{\vec{k}^{2}}\left(1-\frac{k^{2}\xi}{\vec{k}^{2}}\right)\right)
\end{pmatrix}
\end{align}
$$

From this generating functional, we derive the correlation functions:

$$\tag{1.23}
\begin{align}
\braket{A^{\mu}(x)A^{\nu}(y)} & = \frac{\delta^{2}Z[J_{\mu}]}{i^{2}\delta J_{\mu}(x)\delta J_{\nu}(y)}\Big|_{J=0} \\
 & = G^{\mu\nu}(x,y) \\
 & =i \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}e^{ik\cdot(x-y)}\begin{pmatrix}
-\frac{1}{\vec{k}^{2}}\left(1-\frac{(k^{0})^{2}}{\vec{k}^{2}}\xi\right) & \frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi \\
\frac{k^{0}k^{i}}{(\vec{k}^{2})^{2}}\xi & \frac{1}{k^{2}-i\varepsilon}\left(\delta^{ij}-\frac{k^{i}k^{j}}{\vec{k}^{2}}\left(1-\frac{k^{2}\xi}{\vec{k}^{2}}\right)\right)
\end{pmatrix}
\end{align}
$$

To establish the connection with our canonical analysis, we examine the temporal component of the correlation function in the Landau gauge ($\xi=0$):

$$\tag{1.24}
\begin{align}
\braket{A^{0}(x)A^{0}(y)} & = \frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A^{0}(x)A^{0}(y)\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left[\left(\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}A^{i}(z)\right)\left(\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w}A^{j}(w)\right)-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})\right]\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & =\left(\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}\right)\left(\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w}\right)\braket{A^{i}(z)A^{j}(w)}-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

The second term, $-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})$, arises from quantum fluctuations of $A^0$ and represents a contact term. The effective Lagrangian $\mathcal{L}_{\mathrm{eff}}[A^{i}]$, obtained by integrating out $A^0$, is:

$$\tag{1.25}
\begin{align}
\mathcal{L}_{\mathrm{eff}}[A^{i}] & = \frac{1}{2}(\dot{A}^{i})^{2}-\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial_{i,x}G(\vec{x},\vec{y})\partial_{0}(\vec{\nabla}\cdot\vec{A})(y) \\
& +\frac{1}{2}\left(\int \mathrm{d}^{3}\vec{y}\partial_{i,x}G(\vec{x},\vec{y})\partial_{0}(\vec{\nabla}\cdot \vec{A})(y)\right)^{2}-\frac{1}{4}F_{ij}F^{ij}
\end{align}
$$

where $G(\vec{x},\vec{y})$ is the Green's function for the Laplacian operator:

$$\tag{1.26}
\begin{align}
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi}\frac{1}{|\vec{x}-\vec{y}|}
\end{align}
$$

Through careful analysis of the first term in equation (1.24), we obtain:

$$\tag{1.27}
\begin{align}
& \int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w}\braket{A^{i}(z)A^{j}(w)} \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial_{0,w}\partial_{j,w}\braket{0|\mathcal{T}A^{i}(z)A^{j}(w)|0} \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{0,z}\partial_{i,z}\braket{0|\mathcal{T}A^{i}(z)A^{0}(y)|0} \\
 & = \braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}+\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial_{i,z}\braket{0|[A^{i}(z),A^{0}(y)]|0} \\
 & = \braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}
\end{align}
$$

Substituting this result into equation (1.24), we establish the key relation:

$$\tag{1.28}
\begin{align}
\braket{A^{0}(x)A^{0}(y)} & =\braket{0|\mathcal{T}A^{0}(x)A^{0}(y)|0}-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

This equation reveals a profound insight: the path integral correlation function differs from the time-ordered correlation function by a contact term proportional to $\delta(x_{0}-y_{0})G(\vec{x},\vec{y})$. This discrepancy between the two quantization approaches reflects the subtleties involved in quantizing gauge theories, particularly regarding the treatment of unphysical degrees of freedom.