1. The Dirac equation for a particle of mass $\displaystyle{m}$ is

$$
\begin{align}
(i\gamma ^{\mu}\partial _{\mu}-m)\psi(x) & =0
\end{align}
$$

where $\displaystyle{\psi(x)}$ is the spinor wave function for the particle and the matrices, $\displaystyle{\left\{\gamma ^{\mu}\right\}}$ are given by

$$
\begin{align}
\gamma ^{0}=\begin{pmatrix}\mathbf{1} & 0 \\0 & -\mathbf{1}\end{pmatrix},\quad \gamma ^{j} & =\begin{pmatrix}0 & \sigma _{j} \\-\sigma _{j} & 0\end{pmatrix}
\end{align}
$$

Here $\displaystyle{\mathbf{1}}$ is the 2x2 unit matrix and $\displaystyle{\left\{\sigma _{j}\right\}}$ are the Pauli matrices which satisfy $\displaystyle{\sigma _{j}^{2}=\mathbf{1}}$ and $\displaystyle{\sigma _{i}\sigma _{j}=-\sigma _{j}\sigma _{i}=i\varepsilon _{ijk}\sigma_{k}}$. verify that

$$
\begin{align}
\left\{\gamma ^{\mu},\gamma ^{\nu}\right\} & =2g^{\mu \nu}
\end{align}
$$

where $\displaystyle{g^{\mu \nu}}$ is the standard Lorentz metric. use this result to show that $\displaystyle{\psi(x)}$ satisfies the Klein-Gordon equation for a relativistic particle of mass m.

Given that for a Lorentz transformation $\displaystyle{L^{\mu}_{~\nu}}$, there exists a 4x4 matrix $\displaystyle{S(L)}$ such that

$$
\begin{align}
S^{-1}(L)\gamma ^{\mu}S(L)=L^{\mu}_{~\nu}\gamma ^{\nu}
\end{align}
$$

show that the Dirac equation is invariant under Lorentz transformations.

An infinitesimal Lorentz transformation can be expressed in the form

$$
\begin{align}
L^{\mu}_{~\nu}=\delta ^{\mu}_{~\nu}+\omega ^{\mu}_{~\nu}
\end{align}
$$

where $\displaystyle{\omega _{\mu \nu}=-\omega _{\nu \mu}}$. the corresponding form for $\displaystyle{S(L)}$ is

$$
\begin{align}
S(L) =1-\frac{i}{4}\sigma ^{\mu \nu}\omega _{\mu \nu}
\end{align}
$$

where

$$
\begin{align}
\sigma ^{\mu \nu}=\frac{i}{2}[\gamma ^{\mu},\gamma ^{\nu}]
\end{align}
$$

show that

$$
\begin{align}
\frac{i}{4}[\sigma ^{\mu \nu}\omega _{\mu \nu},\gamma ^{\rho}]=\omega ^{\rho}_{~\nu}\gamma ^{\nu}
\end{align}
$$

obtain the solutions of the Dirac equation that represent a particle with 4-momentum $\displaystyle{p=(E,\vec{p})}$ and explain why the particle has spin 1/2.

2. The Lagrangian density for a complex scalar field $\displaystyle{\phi(x)}$ is

$$
\begin{align}
\mathcal{L}(x) & =\partial _{\mu}\phi ^{\dagger}(x)\partial ^{\mu}\phi(x)-m^{2}\phi ^{\dagger}(x)\phi(x)
\end{align}
$$

Obtain the fields $\displaystyle{\pi(x)}$ and $\displaystyle{\pi ^{\dagger}(x)}$ conjugate to $\displaystyle{\phi(x)}$ and $\displaystyle{\phi ^{\dagger}(x)}$ respectively. Write down the canonical equal time commutation relations satisfied by these fields in the Heisenberg Picture. Construct the Hamiltonian for the system and deduce the Heisenberg equations of motion for the fields. Explain why $\displaystyle{\phi(x)}$ can be expressed in the form

$$
\begin{align}
\phi(x) & =\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2E}(a(p)e^{-ip\cdot x}+b^{\dagger}(p)e^{ip\cdot x})
\end{align}
$$

where $\displaystyle{E=\sqrt{ \vec{p}^{2}+m^{2} }}$, $\displaystyle{p=(E,\vec{p})}$ and the operators $\displaystyle{a(p)}$, $\displaystyle{a^{\dagger}(p)}$, $\displaystyle{b(p)}$, $\displaystyle{b^{\dagger}(p)}$ satisfy the commutation relations

$$
\begin{align}
[a(p),a^{\dagger}(p')]=(2\pi)^{3}2E\delta ^{(3)}(\vec{p}-\vec{p}') \\
[b(p),b^{\dagger}(p')]=(2\pi)^{3}2E\delta ^{(3)}(\vec{p}-\vec{p}')
\end{align}
$$

all other commutators being zero.

Assuming that there is a ground state, $\displaystyle{\ket{0}}$, that satisfies

$$
\begin{align}
a(p)\ket{0} =b(p)\ket{0} =0
\end{align}
$$

show that the Hamiltonian can be expressed in the form

$$
\begin{align}
H=\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2E}E(a^{^{\dagger}}(p)a(p)+b^{\dagger}(p)b(p))
\end{align}
$$

after removal of the divergent ground state energy. Justify briefly this removal. Explain the particle interpretation of the theory.

Verify that the current

$$
\begin{align}
J^{\mu}(x)=i(\phi ^{\dagger}(x)\partial ^{\mu}\phi(x)-(\partial ^{\mu}\phi ^{\dagger}(x))\phi(x))
\end{align}
$$

satisfies

$$
\begin{align}
\partial _{\mu}J^{\mu}(x) & =0
\end{align}
$$

Show that the associated charge

$$
\begin{align}
Q=\int \mathrm{d}^{3}\vec{x}J^{0}(x)
\end{align}
$$

can be expressed in the form

$$
\begin{align}
Q=\int \frac{\mathrm{d}^{3}\vec{p}}{(2\pi)^{3}2E}(a^{\dagger}(p)a(p)-b^{\dagger}(p)b(p))
\end{align}
$$

Verify that

$$
\begin{align}
Qa^{\dagger}(p)=a^{\dagger}(Q+1),\quad Qb^{\dagger}(p)=b^{\dagger}(p)(Q-1)
\end{align}
$$

Explain why these results imply that the particles corresponding to a† carry a charge $\displaystyle{Q=+1}$ and those corresponding to b† carry a charge $\displaystyle{Q=-1}$.

3. A real scalar field has a a Lagrangian density

$$
\begin{align}
\mathcal{L})x & =\frac{1}{2}(\partial \phi(x))^{2}-\frac{1}{2}m^{2}(\phi(x))^{2}-\frac{\lambda}{4!}(\phi(x))^{4}
\end{align}
$$

Derive the Hamiltonian, $\displaystyle{H}$, for the theory and explain how it can be split so that

$$
\begin{align}
H=H_{0}+H_{I}
\end{align}
$$

where

$$
\begin{align}
H_{I}=-\int \mathrm{d}^{3}\vec{x}\mathcal{L}_{I}(x), \quad \mathcal{L}_{I}(x)=-\frac{\lambda}{4!}(\phi(x))^{4}
\end{align}
$$

and $\displaystyle{H_{0}}$ is the Hamiltonian for a non-interacting field with mass $\displaystyle{m}$.

Explain how the Interaction Picture is used to obtain the result

$$
\begin{align}
S & =T\exp\left\{i \int \mathrm{d}^{4}x\mathcal{L}_{I}(x)\right\}
\end{align}
$$

for the operator $\displaystyle{S}$ that describes the transition of the system from the far past to the far future.

Two particles with 4-momenta $\displaystyle{p_{1}}$ and $\displaystyle{p_{2}}$ scatter with final state 4-momenta $\displaystyle{p_{3}}$ and $\displaystyle{p_{4}}$. Show that

$$
\begin{align}
\braket{ p_{3},p_{4}|(S-I)|p_{1},p_{2} }  & =i(2\pi)^{4}\delta(p_{3}+p_{4}-p_{1}-p_{2})T 
\end{align}
$$

where to $\displaystyle{O(\lambda)}$,

$$
\begin{align}
T=-\lambda
\end{align}
$$

Deduce that in this approximation the cross-section for the scattering process is

$$
\begin{align}
\sigma=\frac{\lambda ^{2}}{32\pi s}
\end{align}
$$

where $\displaystyle{s=(p_{1}+p_{2})^{2}=(p_{3}+p_{4})^{2}}$

4. The Lagrangian density for the electromagnetic 4-vector potential $\displaystyle{A_{\mu}(x)}$ is

$$
\begin{align}
\mathcal{L}(x)=-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}
\end{align}
$$

where $\displaystyle{F_{\mu \nu}=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}}$ . Derive the equation of motion for $\displaystyle{A_{\mu}}$ . Describe the gauge invariance of the theory and explain its significance. Show that the choice of Lorentz gauge reduces the equation of motion to the standard wave equation

$$\tag{A}
\begin{align}
\partial ^{2}A_{\mu}=0
\end{align}
$$

Show that equation (A) can be obtained from the Lagrangian density

$$\tag{B}
\begin{align}
\mathcal{L}(x) & =-\frac{1}{2}\partial _{\mu}A_{\nu}\partial ^{\mu}A^{\nu}
\end{align}
$$

Starting from the Lagrangian density in equation (B) show that the canonical equal time commutation relations for the quantum field $\displaystyle{A_{\mu}(x)}$ are

$$
\begin{align}
[A_{\mu}(x),\Pi^{\nu}(x')]=i\delta ^{\nu}_{\mu}\delta ^{3}(\vec{x}-\vec{x}')
\end{align}
$$

where $\displaystyle{\Pi^{\nu}(x)=-\partial _{0}A^{\nu}(x)}$

Assuming that equation (A) is the Heisenberg equation of motion for $\displaystyle{A_{\mu}(x)}$ show that

$$
\begin{align}
A_{\mu}(x) & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}2\omega}(a_{\mu}(x)e^{-ik\cdot x}+a^{\dagger}(x)e^{ik\cdot x})
\end{align}
$$

where $\displaystyle{\omega=|\vec{k}|}$ and $\displaystyle{k=(\omega,\vec{k})}$. You may assume also that

$$
\begin{align}
[a_{\mu}(k),a^{\dagger}(k')]=-g_{\mu \nu}(2\pi)^{3}2\omega \delta ^{3}(\vec{k}-\vec{k}'),\quad[a(k),a(k')]=[a^{\dagger}(k),a^{\dagger}(k')]=0
\end{align}
$$

Given that there exists a vacuum state, $\displaystyle{\ket{0}}$, such that

$$
\begin{align}
a_{\mu}(k)\ket{0}  & =0
\end{align}
$$

explain how the Gupta-Bleuler method incorporates the Lorentz gauge condition. What are the resulting conditions on the state $\displaystyle{\ket{k,\varepsilon}=\varepsilon ^{\mu}a^{\dagger}_{\mu}(k)\ket{0}}$? What are the allowed
solutions for the polarisation vector ϵµ? Among the solutions identify the longitudinal
and transverse polarisations. Explain why longitudinal photons correpond to states of
zero norm and why the transverse photons represent the true physical states.
The contribution of O(e2) to the amplitude for the electron-positron annihilation
process
e−(p) + e+(q) →γ(k, ϵ) + γ(k′, ϵ′) ,
is
T = −e2¯v(q)Mu(p) ,
where
M = ϵ′.γ γ.(p −k) + m
(p −k)2 −m2 ϵ.γ + ϵ.γ γ.(p −k′) + m
(p −k′)2 −m2 ϵ′.γ ,
and where u(p) and v(q) are the electron and positron spinor wave functions respectively.
Verify that if ϵ is replaced by k then T = 0. What does this suggest about the production
of longitudinal photons in physical scattering processes?