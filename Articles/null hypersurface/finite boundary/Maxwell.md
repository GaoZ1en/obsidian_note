in this file we consider source-free $\displaystyle{\mathrm{U}(1)}$ Maxwell theory in a finite region with a null boundary component

$$\begin{align}
\mathcal{N} & \cong [u_i,u_f]\times S^1,&
C_u & =\{u\}\times S^1 .
\end{align}$$

The goal is parallel to the Chern-Simons note: choose a local null collar, solve the equations of motion in that collar, write the symplectic form, normalize the modes, and identify the Noether charge balance law. The main difference is that Maxwell theory has a local radiative degree of freedom, so the null flux is physical rather than only an edge-source balance.

## local null collar

Choose Gaussian null coordinates near $\displaystyle{\mathcal{N}}$,

$$\begin{align}
x^\mu & =(u,\rho,\phi),&
\mathcal{N} & =\{\rho=0\},&
\phi & \sim \phi+2\pi ,
\end{align}$$

with orientation $\displaystyle{\mathrm{d}u\wedge \mathrm{d}\rho\wedge \mathrm{d}\phi}$ and local metric

$$\begin{align}
\mathrm{d}s^2 & =-2\,\mathrm{d}u\,\mathrm{d}\rho+R_{\mathcal{N}}^2\mathrm{d}\phi^2 .
\end{align}$$

Thus $\displaystyle{\ell^a\partial_a=\partial_u}$ is the null generator of $\displaystyle{\mathcal{N}}$ and the Carroll data on the boundary are

$$\begin{align}
q_{ab}\mathrm{d}x^a\mathrm{d}x^b & =R_{\mathcal{N}}^2\mathrm{d}\phi^2,&
q_{ab}\ell^b & =0 .
\end{align}$$

This is a local collar model. Global regularity at the center of the disk may impose additional restrictions on the allowed radial representatives.

## action and covariant phase space

The Maxwell action is

$$\begin{align}
S[A] & =-\frac{1}{2}\int_R F\wedge *F,&
F & =\mathrm{d}A .
\end{align}$$

With the convention

$$\begin{align}
\delta S & =\int_R \delta A\wedge \mathrm{d}(*F)+\int_{\partial R}\theta[A,\delta A],&
\theta[A,\delta A] & =-\delta A\wedge *F ,
\end{align}$$

the equation of motion and symplectic current are

$$\begin{align}
\mathrm{d}(*F) & =0,&
\omega[A;\delta_1A,\delta_2A] & =-\delta_1A\wedge \delta_2(*F)+\delta_2A\wedge \delta_1(*F).
\end{align}$$

On $\displaystyle{\mathcal{N}}$ the presymplectic potential is

$$\begin{align}
\left.\theta\right|_{\mathcal{N}} & =\left[(*F)_u\delta A_\phi-(*F)_\phi\delta A_u\right]\mathrm{d}u\wedge \mathrm{d}\phi .
\end{align}$$

Therefore Maxwell theory has a genuine symplectic flux through the null boundary unless one imposes a flux-free boundary condition. This is already different from the Chern-Simons edge-mode model, where the bulk equation is flatness and the non-trivial modes are boundary gauge modes.

## dual scalar form

In three dimensions a source-free Maxwell field can be written locally as

$$\begin{align}
F & =*\,\mathrm{d}\psi .
\end{align}$$

The Maxwell equation $\displaystyle{\mathrm{d}(*F)=0}$ is automatic, while the Bianchi identity gives the scalar wave equation

$$\begin{align}
\Box \psi & =0 .
\end{align}$$

In the collar coordinates above this becomes

$$\begin{align}
2\partial_u\partial_\rho\psi-\frac{1}{R_{\mathcal{N}}^2}\partial_\phi^2\psi & =0 .
\end{align}$$

The field strength components are

$$\begin{align}
F_{u\rho} & =\frac{1}{R_{\mathcal{N}}}\partial_\phi\psi,&
F_{u\phi} & =R_{\mathcal{N}}\partial_u\psi,&
F_{\rho\phi} & =-R_{\mathcal{N}}\partial_\rho\psi .
\end{align}$$

The null symplectic form becomes the scalar null symplectic form

$$\begin{align}
\Omega_{\mathcal{N}} & =-R_{\mathcal{N}}\int_{\mathcal{N}}\delta\psi\wedge \partial_u\delta\psi\,\mathrm{d}u\,\mathrm{d}\phi .
\end{align}$$

Thus the radiative Maxwell data on $\displaystyle{\mathcal{N}}$ are carried by the gauge-invariant boundary value of $\displaystyle{\psi}$.

## local modes

Let

$$\begin{align}
T & =u_f-u_i .
\end{align}$$

For an explicit mode normalization, impose a periodic box in the null direction,

$$\begin{align}
\psi(u_f,\rho,\phi) & =\psi(u_i,\rho,\phi),
\end{align}$$

and set

$$\begin{align}
\omega_n & =\frac{2\pi n}{T},&
n & =1,2,\ldots .
\end{align}$$

The local positive-frequency radiative modes are

$$\begin{align}
\psi_{n m}(u,\rho,\phi) & =C_n\exp\left[-i\omega_n u+im\phi-\frac{im^2}{2\omega_n R_{\mathcal{N}}^2}\rho\right],&
m & \in \mathbb{Z}.
\end{align}$$

They solve the wave equation because

$$\begin{align}
2\partial_u\partial_\rho\psi_{n m}-\frac{1}{R_{\mathcal{N}}^2}\partial_\phi^2\psi_{n m} & =0 .
\end{align}$$

The corresponding Maxwell field is

$$\begin{align}
F_{u\rho}^{(n m)} & =\frac{im}{R_{\mathcal{N}}}\psi_{n m},&
F_{u\phi}^{(n m)} & =-i\omega_n R_{\mathcal{N}}\psi_{n m},&
F_{\rho\phi}^{(n m)} & =\frac{im^2}{2\omega_n R_{\mathcal{N}}}\psi_{n m}.
\end{align}$$

For $\displaystyle{m\neq0}$ a radial-gauge representative is

$$\begin{align}
A_\rho^{(n m)} & =0,&
A_u^{(n m)} & =\frac{2\omega_n R_{\mathcal{N}}}{m}\psi_{n m},&
A_\phi^{(n m)} & =-R_{\mathcal{N}}\psi_{n m}.
\end{align}$$

The $\displaystyle{m=0}$ mode is better represented directly by its field strength,

$$\begin{align}
F_{u\phi}^{(n0)} & =-i\omega_n R_{\mathcal{N}}\psi_{n0},&
F_{u\rho}^{(n0)} & =0,&
F_{\rho\phi}^{(n0)} & =0 .
\end{align}$$

Its vector-potential representative depends on the global extension away from the null collar.

## symplectic normalization

The modes are normalized by the convention

$$\begin{align}
\Omega_{\mathcal{N}}\!\left[\psi_{n m},\psi_{n' m'}^*\right] & =-i\delta_{n n'}\delta_{m m'} .
\end{align}$$

Using the periodic box,

$$\begin{align}
\Omega_{\mathcal{N}}\!\left[\psi_{n m},\psi_{n' m'}^*\right] & =-4\pi i R_{\mathcal{N}}T\omega_n |C_n|^2\delta_{n n'}\delta_{m m'} .
\end{align}$$

Therefore

$$\begin{align}
C_n & =\frac{1}{\sqrt{4\pi R_{\mathcal{N}}T\omega_n}} .
\end{align}$$

The real Maxwell field is expanded as

$$\begin{align}
\psi & =\sum_{n=1}^{\infty}\sum_{m\in\mathbb{Z}}\left(a_{n m}\psi_{n m}+a_{n m}^*\psi_{n m}^*\right),&
F & =*\,\mathrm{d}\psi .
\end{align}$$

This is the radiative oscillator phase space. It is not a Kac-Moody edge phase space.

## gauge transformations and charges

Gauge transformations act by

$$\begin{align}
\delta_\epsilon A & =\mathrm{d}\epsilon,&
\delta_\epsilon F & =0,&
\delta_\epsilon\psi & =0 .
\end{align}$$

Their Hamiltonian variation is a cut term:

$$\begin{align}
\delta Q_\epsilon[C_u] & =\int_{C_u}\epsilon\,\delta(*F),&
Q_\epsilon[C_u] & =\int_{C_u}\epsilon\,{*F}.
\end{align}$$

In the dual scalar convention $\displaystyle{*F=-\mathrm{d}\psi}$, this is

$$\begin{align}
Q_\epsilon[C_u] & =-\int_0^{2\pi}\epsilon\,\partial_\phi\psi\,\mathrm{d}\phi .
\end{align}$$

Since $\displaystyle{\delta_\epsilon F=0}$, the gauge-charge algebra has no central term:

$$\begin{align}
\{Q_\epsilon,Q_\eta\} & =0 .
\end{align}$$

Proper gauge transformations are those for which $\displaystyle{\delta Q_\epsilon[C_u]=0}$ on the chosen boundary phase space. If the electric flux $\displaystyle{(*F)_\phi}$ is allowed to vary at the cut, non-constant boundary values of $\displaystyle{\epsilon}$ label boundary electric multipole charges. If $\displaystyle{(*F)_\phi}$ is fixed as boundary data, these same transformations are proper. In the smooth source-free disk sector, the constant mode has

$$\begin{align}
Q_1[C_u] & =\int_{C_u}{*F}=0,
\end{align}$$

unless charged matter or a puncture is added.

## Noether balance law and null flux

On shell, the cut charge satisfies

$$\begin{align}
Q_\epsilon[C_f]-Q_\epsilon[C_i] & =\int_{\mathcal{N}}\mathrm{d}_{\mathcal{N}}(\epsilon {*F})\\
 & =\int_{\mathcal{N}}\left[\partial_u(\epsilon (*F)_\phi)-\partial_\phi(\epsilon (*F)_u)\right]\mathrm{d}u\,\mathrm{d}\phi\\
 & =\int_{\mathcal{N}}\left[(\partial_u\epsilon)(*F)_\phi-(\partial_\phi\epsilon)(*F)_u\right]\mathrm{d}u\,\mathrm{d}\phi .
\end{align}$$

The last line uses $\displaystyle{\mathrm{d}(*F)=0}$. In dual-scalar variables,

$$\begin{align}
Q_\epsilon[C_f]-Q_\epsilon[C_i] & =-\int_{\mathcal{N}}\left[(\partial_u\epsilon)\partial_\phi\psi-(\partial_\phi\epsilon)\partial_u\psi\right]\mathrm{d}u\,\mathrm{d}\phi .
\end{align}$$

For a constant gauge parameter the charge is conserved. For a non-constant boundary parameter the right-hand side is a genuine boundary flux term.

The stress-tensor flux along the null generator is

$$\begin{align}
T_{uu}\big|_{\mathcal{N}} & =F_{u\alpha}F_u{}^\alpha=\frac{1}{R_{\mathcal{N}}^2}F_{u\phi}^2=(\partial_u\psi)^2 .
\end{align}$$

Thus Maxwell theory differs from the Chern-Simons model in two ways. First, the normalized modes are radiative scalar modes rather than pure gauge edge modes. Second, the null boundary generically carries physical energy and symplectic flux; a flux-free sector is an additional boundary condition, not the default Maxwell phase space.
