# Regional Quantization with Lifting Operators

This note rewrites the nonhomogeneous-boundary part of `formalism.md` in a form that extends from an interval port $q_i(t)$ to a field-valued interface history $q_i(t,z)$. The lifting is auxiliary: it converts the nonhomogeneous regional boundary condition into a homogeneous one. It does not add an independent boundary oscillator.

## Regional Action and Boundary Data

Let

$$\begin{align}
M_i&\simeq \mathbb R\times\Sigma_i, &\partial\Sigma_i&=\Sigma_{i0}\cup\bigcup_{j\sim i}\Sigma_{ij},
\end{align}$$

where $\Sigma_{i0}$ is the physical boundary and $\Sigma_{ij}$ is an artificial interface. For a massive real scalar on the fixed static background

$$\begin{align}
\mathrm ds^2&=-\mathrm dt^2+\sigma_{ab}(x)\mathrm dx^a\mathrm dx^b,
\end{align}$$

take

$$\begin{align}
S_i[\phi_i] &=\frac12\int_{t_i}^{t_f}\mathrm dt\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma \left(\dot\phi_i^2-\sigma^{ab}\nabla_a\phi_i\nabla_b\phi_i-m^2\phi_i^2\right).
\end{align}$$

We keep the physical outer Dirichlet condition fixed and prescribe Dirichlet histories on the artificial interfaces,

$$\begin{align}
\left.\phi_i\right|_{\Sigma_{i0}}&=0, &\gamma_{ij}\phi_i:=\left.\phi_i\right|_{\Sigma_{ij}}&=q_{ij}(t,z), &z&\in\Sigma_{ij}.
\end{align}$$

Thus $q_{ij}$ depends on time and on coordinates tangent to the interface. It is not a function of a normal coordinate: that dependence appears only after the boundary datum has been extended into $\Sigma_i$.

For fixed $q_{ij}$, the allowed regional variations obey

$$\begin{align}
\left.\delta\phi_i\right|_{\Sigma_{i0}}&=0, &\gamma_{ij}\delta\phi_i&=\delta q_{ij}=0.
\end{align}$$

The corresponding regional theory is therefore a driven system with prescribed boundary histories.

## Trace Maps and Liftings

Let $V_i$ be the spatial energy space with the physical outer Dirichlet condition imposed. For a smooth boundary one may take

$$\begin{align}
V_i&=\left\{f\in H^1(\Sigma_i):\left.f\right|_{\Sigma_{i0}}=0\right\}.
\end{align}$$

The interface trace map is

$$\begin{align}
\gamma_i:V_i&\longrightarrow \mathcal Q_i:=\operatorname{Ran}\gamma_i
\subseteq\bigoplus_{j\sim i}H^{1/2}(\Sigma_{ij}), &\gamma_i f&=\left(\gamma_{ij}f\right)_{j\sim i}.
\end{align}$$

Choose once and for all a bounded linear right inverse

$$\begin{align}
\mathsf E_i:\mathcal Q_i&\longrightarrow V_i, &\gamma_i\mathsf E_i&=\operatorname{id}_{\mathcal Q_i}.
\end{align}$$

When the boundary faces are disjoint, or when the chosen port subspaces already enforce the required corner compatibility, one may equivalently introduce component liftings $\mathsf E_{ij}$ satisfying

$$\begin{align}
\gamma_{ik}\mathsf E_{ij} &=\delta_{jk}\operatorname{id}, &\left.\mathsf E_{ij}q_{ij}\right|_{\Sigma_{i0}}&=0,
\end{align}$$

and write

$$\begin{align}
\mathsf E_iq_i&=\sum_{j\sim i}\mathsf E_{ij}q_{ij}.
\end{align}$$

At corners where several boundary faces meet, the boundary histories must belong to the compatible trace space on which such a right inverse exists. This compatibility is part of the admissibility condition on $q_i$; it is not an equation produced by gluing.

Now decompose

$$\begin{align}
\boxed{\phi_i(t)=\psi_i(t)+\mathsf E_iq_i(t)}.
\end{align}$$

Then

$$\begin{align}
\left.\psi_i\right|_{\Sigma_{i0}}&=0, &\gamma_{ij}\psi_i&=0,
\end{align}$$

so $\psi_i$ satisfies homogeneous Dirichlet conditions on every boundary component of $\Sigma_i$.

The lifting is not unique. If $\widetilde{\mathsf E}_i$ is another right inverse, then

$$\begin{align}
J_i&:=\widetilde{\mathsf E}_i-\mathsf E_i, &\gamma_iJ_i&=0, &\widetilde\psi_i&=\psi_i-J_iq_i,
\end{align}$$

and hence

$$\begin{align}
\widetilde\psi_i+\widetilde{\mathsf E}_iq_i &=\psi_i+\mathsf E_iq_i=\phi_i.
\end{align}$$

Thus the exact reconstructed regional field is lifting-independent. A finite Galerkin space may nevertheless depend on the chosen lifting, so finite-cutoff lifting independence must not be asserted without a separate comparison.

## Homogeneous Modes and the Driven Equations

Let

$$\begin{align}
\mathcal K_i&=-\Delta_{\Sigma_i}+m^2
\end{align}$$

denote the spatial differential expression. Its homogeneous-Dirichlet self-adjoint realization has orthonormal eigenfunctions

$$\begin{align}
\mathcal K_i u_{i,n}&=\omega_{i,n}^2u_{i,n}, &\left.u_{i,n}\right|_{\partial\Sigma_i}&=0,\\
\left\langle u_{i,n},u_{i,m}\right\rangle_i&=\delta_{nm}, &\left\langle f,g\right\rangle_i &:=\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma\,fg.
\end{align}$$

Expand only the homogeneous field,

$$\begin{align}
\psi_i(t,x)&=\sum_{n=1}^{\infty}c_{i,n}(t)u_{i,n}(x).
\end{align}$$

Substitution of $\phi_i=\psi_i+\mathsf E_iq_i$ into

$$\begin{align}
\ddot\phi_i+\mathcal K_i\phi_i&=0
\end{align}$$

gives

$$\begin{align}
\ddot c_{i,n}+\omega_{i,n}^2c_{i,n} &=-\left\langle u_{i,n},(\partial_t^2+\mathcal K_i)\mathsf E_iq_i\right\rangle_i.
\end{align}$$

For a time-independent lifting, define the linear functionals

$$\begin{align}
a_{i,n}[q_i]&:=\left\langle u_{i,n},\mathsf E_iq_i\right\rangle_i, &b_{i,n}[q_i]&:=\left\langle u_{i,n},\mathcal K_i\mathsf E_iq_i\right\rangle_i.
\end{align}$$

Then the mode equation is

$$\begin{align}
\ddot c_{i,n}+\omega_{i,n}^2c_{i,n} &=-\ddot a_{i,n}[q_i]-b_{i,n}[q_i].
\end{align}$$

A useful choice is the Laplace-harmonic lifting

$$\begin{align}
-\Delta_{\Sigma_i}\mathsf E_iq_i&=0
\end{align}$$

with the prescribed interface traces and the homogeneous physical-boundary trace. In that case

$$\begin{align}
b_{i,n}[q_i]&=m^2a_{i,n}[q_i],\\
\ddot c_{i,n}+\omega_{i,n}^2c_{i,n} &=-a_{i,n}[\ddot q_i+m^2q_i].
\end{align}$$

This choice reproduces the interval formulas of `formalism.md`. A $\mathcal K_i$-harmonic lifting is also admissible, but then $b_{i,n}=0$ and the explicit forcing formula changes. The reconstructed field does not change when the corresponding homogeneous coefficients are transformed consistently.

At an initial time $t_0$, set

$$\begin{align}
c_{i,n}^{(0)} &=\left\langle u_{i,n},\phi_i(t_0)-\mathsf E_iq_i(t_0)\right\rangle_i,\\
v_{i,n}^{(0)} &=\left\langle u_{i,n},\dot\phi_i(t_0)-\mathsf E_i\dot q_i(t_0)\right\rangle_i.
\end{align}$$

The exact retarded solution is

$$\begin{align}
c_{i,n}(t) &=c_{i,n}^{(0)}\cos\omega_{i,n}(t-t_0) +\frac{v_{i,n}^{(0)}}{\omega_{i,n}}\sin\omega_{i,n}(t-t_0)\\
&\quad-\int_{t_0}^{t}\mathrm dt'\, \frac{\sin[\omega_{i,n}(t-t')]}{\omega_{i,n}} \left\langle u_{i,n},(\partial_{t'}^2+\mathcal K_i)\mathsf E_iq_i(t')\right\rangle_i.
\end{align}$$

For these strong retarded formulas, it is sufficient to take the prescribed history regular enough that the displayed forcing is defined; for example, $q_i\in H^2_{\mathrm{loc}}$ in time with values in the chosen interface trace space. The finite-energy equation itself may instead be understood weakly.

## Regional CPS Quantization at Fixed History

While quantizing a subregion, $q_i$ is prescribed and therefore

$$\begin{align}
\delta q_i&=0, &\delta\phi_i&=\delta\psi_i.
\end{align}$$

The regional symplectic form becomes

$$\begin{align}
\omega_i &=\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma\, \delta\dot\phi_i\wedge\delta\phi_i =\sum_{n=1}^{\infty}\delta v_{i,n}^{(0)}\wedge\delta c_{i,n}^{(0)}.
\end{align}$$

Hence the regional canonical quantization is

$$\begin{align}
[c_{i,n}^{(0)},v_{j,m}^{(0)}] &=i\delta_{ij}\delta_{nm},\\
d_{i,n} &=\sqrt{\frac{\omega_{i,n}}2}\,c_{i,n}^{(0)} +\frac{i}{\sqrt{2\omega_{i,n}}}\,v_{i,n}^{(0)},\\
[d_{i,n},d_{j,m}^{\dagger}]&=\delta_{ij}\delta_{nm}.
\end{align}$$

The state annihilated by all $d_{i,n}$ is a reference Gaussian state. For a nonconstant prescribed $q_i(t)$ it is not a stationary regional vacuum.

For later reconstruction define the full-field projections

$$\begin{align}
C_{i,n} &:=\left\langle u_{i,n},\phi_i(t_0)\right\rangle_i =c_{i,n}^{(0)}+a_{i,n}[q_i(t_0)]\mathbf 1,\\
V_{i,n} &:=\left\langle u_{i,n},\dot\phi_i(t_0)\right\rangle_i =v_{i,n}^{(0)}+a_{i,n}[\dot q_i(t_0)]\mathbf 1.
\end{align}$$

Since the prescribed histories are c-numbers at this stage,

$$\begin{align}
[C_{i,n},V_{j,m}]&=i\delta_{ij}\delta_{nm}.
\end{align}$$

This is a fixed-history statement. It does not prove that the same variables retain these commutators after the interface history is released and becomes part of the glued solution.

## Releasing the Common Interface History

Suppose $\Sigma_{ij}$ and $\Sigma_{ji}$ describe the same interface. Classical gluing first identifies

$$\begin{align}
q_{ij}(t,z)&=q_{ji}(t,z)=q_{ij}^{\mathrm{gl}}(t,z),\\
\delta q_{ij}(t,z)&=\delta q_{ji}(t,z)=\delta q_{ij}^{\mathrm{gl}}(t,z).
\end{align}$$

The common history is now allowed to vary. Let $\mathcal N_i\phi_i$ denote the conormal derivative computed using the outward normal of $\Sigma_i$. The interface part of the variation of $S_i+S_j$ is

$$\begin{align}
\left.\delta(S_i+S_j)\right|_{\Sigma_{ij}} &=-\int\mathrm dt\int_{\Sigma_{ij}}\mathrm d^{d-1}z\sqrt\gamma\, \left(\mathcal N_i\phi_i+\mathcal N_j\phi_j\right) \delta q_{ij}^{\mathrm{gl}}.
\end{align}$$

Arbitrariness of the common variation gives the matching equation

$$\begin{align}
\mathcal N_i\phi_i+\mathcal N_j\phi_j&=0.
\end{align}$$

Thus gluing releases a boundary trace that was fixed during regional quantization; it does not append an independent boundary action or postulate a new boundary oscillator. After solving the interface equation, one must reconstruct the connected field and derive the reduced canonical variables from its symplectic form.

For a harmonic history $q(t,z)=e^{-i\Omega t}q_{\Omega}(z)$, each region defines a Dirichlet-to-Neumann response

$$\begin{align}
\mathcal R_i(\Omega)q_{\Omega} &:=\mathcal N_i\phi_i[\Omega,q_{\Omega}].
\end{align}$$

The nonzero-trace part of the connected spectrum is determined by

$$\begin{align}
\left(\mathcal R_i(\Omega)+\mathcal R_j(\Omega)\right)q_{\Omega}&=0.
\end{align}$$

Poles of the regional response must still be returned to the original homogeneous amplitude equations: they can carry nontrivial connected modes with $q_{\Omega}=0$. The kernel of the summed response alone is therefore not the full glued spectrum.

## Finite Port Galerkin Regulator

Choose homogeneous regional modes $u_{i,n}$ with $n=1,\ldots,N_i$ and an interface basis $\chi_{\alpha}$ with $\alpha=1,\ldots,R$. Retain the finite common history

$$\begin{align}
q_N(t,z)&=\sum_{\alpha=1}^{R}q_{\alpha}(t)\chi_{\alpha}(z)
\end{align}$$

and its lifted functions

$$\begin{align}
w_{i,\alpha}&:=\mathsf E_i\chi_{\alpha}.
\end{align}$$

The conforming reconstructed field is

$$\begin{align}
\phi_{i,N}(t,x) &=\sum_{n=1}^{N_i}c_{i,n}(t)u_{i,n}(x) +\sum_{\alpha=1}^{R}q_{\alpha}(t)w_{i,\alpha}(x).
\end{align}$$

Insert this expression into the sum of the regional actions before varying. If $x_N$ denotes the vector of all regional coefficients and the retained common port coefficients, the finite Lagrangian has the form

$$\begin{align}
L_N &=\frac12\dot x_N^{T}M_N\dot x_N -\frac12x_N^{T}K_Nx_N,\\
(M_N)_{ab} &=\sum_i\left\langle f_{i,a},f_{i,b}\right\rangle_i,\\
(K_N)_{ab} &=\sum_i\int_{\Sigma_i}\mathrm d^dx\sqrt\sigma \left(\nabla f_{i,a}\cdot\nabla f_{i,b}+m^2f_{i,a}f_{i,b}\right),
\end{align}$$

where $f_{i,a}$ runs over the regional homogeneous modes and the lifted interface basis functions, with zero used in regions where a given coefficient has no support. Variation gives

$$\begin{align}
M_N\ddot x_N+K_Nx_N&=0.
\end{align}$$

The port coefficients $q_{\alpha}$ must be retained at finite cutoff. Their conjugate momenta arise from the full positive mass matrix,

$$\begin{align}
p_N&=M_N\dot x_N, &\omega_N&=\delta p_N^{T}\wedge\delta x_N.
\end{align}$$

They are regulator coordinates in the conforming reconstructed field, not additional oscillators of the continuum theory. One first solves

$$\begin{align}
K_Nz_{r,N}&=\Omega_{r,N}^2M_Nz_{r,N}, &z_{r,N}^{T}M_Nz_{s,N}&=\delta_{rs},
\end{align}$$

then constructs the normalized connected modes and their canonical variables. Eliminating the port coefficients by a strong normal-derivative constraint before varying defines a different finite system and does not inherit this reduced symplectic structure.

## Interval Specialization

For the interval $\Sigma_i=[0,L]$ with physical boundary at $y=0$ and interface at $y=L$, the trace space is one-dimensional. The lifting operator acts as

$$\begin{align}
(\mathsf E_iq_i)(y)&=h(y)q_i, &h(y)&=\frac yL.
\end{align}$$

This is the Laplace-harmonic lifting. With

$$\begin{align}
u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}, &k_n&=\frac{n\pi}{L}, &\omega_n^2&=k_n^2+m^2,
\end{align}$$

its $L^2$ projections are

$$\begin{align}
a_n[q_i] &=A_nq_i, &A_n&=\left\langle u_n,h\right\rangle =(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}.
\end{align}$$

Therefore the general lifting equation reduces exactly to

$$\begin{align}
\ddot c_{i,n}+\omega_n^2c_{i,n} &=-A_n(\ddot q_i+m^2q_i),
\end{align}$$

which is the driven regional equation in `formalism.md`. The equality

$$\begin{align}
h&=\sum_{n=1}^{\infty}A_nu_n
\end{align}$$

holds in $L^2(0,L)$. It must not be used as a boundary-trace identity: every finite partial sum and every individual $u_n$ vanishes at $y=L$, whereas $h(L)=1$. The nonzero interface trace is retained by keeping $\mathsf E_iq_i$ as a separate port term in the reconstructed field.

## Claim Boundary

Verified within this note: the lifting decomposition, the projected driven equations, the fixed-history regional symplectic form, the variational origin of oriented flux matching, and the reduction to the interval lifting $h(y)=y/L$.

Assumptions: a fixed static background; a non-gauge massive scalar; sufficiently regular timelike interfaces; admissible compatible Dirichlet histories; a bounded right inverse of the trace map; and a self-adjoint homogeneous-Dirichlet regional spatial operator.

Not verified here: existence and regularity of a lifting for arbitrary nonsmooth partitions; corner compatibility beyond its explicit assumption; cutoff-uniform convergence for a field-valued interface; lifting independence at finite cutoff; interacting theories; gauge constraints; gravity; or continuum Fock-space equivalence.
