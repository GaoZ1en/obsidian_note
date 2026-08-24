# Canonical Structure of the Finite Port Regulator

This note studies one finite system: the conforming $(2N+1)$-variable port Galerkin truncation of the centered interval scalar in [[Articles/Quantization in AdS/gluing/formalism|formalism]]. It proves that the port pair is nondegenerate at every finite $N$, constructs the exact canonical normal modes, and identifies the topology in which the port ceases to be an independent coordinate as $N\to\infty$.

The operator-feedback interpretation is derived separately in [[Articles/Quantization in AdS/gluing/archived/feedback-port-canonical-bridge|feedback-port-canonical-bridge]]. No regional product state is assumed here.

## Finite Port System

On each half interval $y\in[0,L]$, write

$$\begin{align}
\phi_i(t,y)&=\sum_{n=1}^Nc_{i,n}(t)u_n(y)+h(y)q(t),\\
u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}, &h(y)&=\frac yL.
\end{align}$$

Define

$$\begin{align}
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}, &k_n&=\frac{n\pi}{L}, &\omega_n^2&=k_n^2+m^2,\\
\boldsymbol d&=(A_1,\ldots,A_N,A_1,\ldots,A_N)^{\mathrm T},\\
\boldsymbol g&=(A_1k_1^2,\ldots,A_Nk_N^2,A_1k_1^2,\ldots,A_Nk_N^2)^{\mathrm T},\\
D_N&=\operatorname{diag}(\omega_1^2,\ldots,\omega_N^2,\omega_1^2,\ldots,\omega_N^2).
\end{align}$$

For $\boldsymbol x=(\boldsymbol c,q)^{\mathrm T}$, substitution into the summed regional action gives

$$\begin{align}
L_N&=\frac12\dot{\boldsymbol x}^{\mathrm T}M_N\dot{\boldsymbol x} -\frac12\boldsymbol x^{\mathrm T}K_N\boldsymbol x,\\
M_N&=
\begin{pmatrix}
\mathbf1&\boldsymbol d\\
\boldsymbol d^{\mathrm T}&2L/3
\end{pmatrix}, &
K_N&=
\begin{pmatrix}
D_N&m^2\boldsymbol d\\
m^2\boldsymbol d^{\mathrm T}&2(L^{-1}+m^2L/3)
\end{pmatrix}.
\end{align}$$

Both matrices are positive definite for every finite $N$. The finite theory therefore has $2N+1$ canonical pairs. Deleting the port or one Ritz mode changes the variational problem.

## Residual Inertia and Schur Variables

Set

$$\begin{align}
\boldsymbol r&:=\boldsymbol c+\boldsymbol d q, & \rho_N&:=\frac{2L}{3}-\boldsymbol d^{\mathrm T}\boldsymbol d =\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}>0.
\end{align}$$

Then

$$\begin{align}
\dot{\boldsymbol x}^{\mathrm T}M_N\dot{\boldsymbol x} &=\dot{\boldsymbol r}^{\mathrm T}\dot{\boldsymbol r}+\rho_N\dot q^2,
\end{align}$$

and the stiffness matrix becomes

$$\begin{align}
K_N'&=
\begin{pmatrix}
D_N&-\boldsymbol g\\
-\boldsymbol g^{\mathrm T}&(4N+2)L^{-1}+m^2\rho_N
\end{pmatrix}.
\end{align}$$

Thus the small kinetic direction is not a decoupled oscillator: its stiffness and its coupling to the common regional modes grow with $N$.

If $(\boldsymbol p_c,p_q)=M_N\dot{\boldsymbol x}$, the canonical momenta in the Schur variables are

$$\begin{align}
\boldsymbol\pi_r&=\boldsymbol p_c=\dot{\boldsymbol r}, & \pi_q&=p_q-\boldsymbol d^{\mathrm T}\boldsymbol p_c=\rho_N\dot q.
\end{align}$$

Hence

$$\begin{align}
\omega_N&=\delta\boldsymbol\pi_r^{\mathrm T}\wedge\delta\boldsymbol r +\delta\pi_q\wedge\delta q,\\
H_N&=\frac12\boldsymbol\pi_r^{\mathrm T}\boldsymbol\pi_r +\frac{\pi_q^2}{2\rho_N} +\frac12
\begin{pmatrix}\boldsymbol r\\
q\end{pmatrix}^{\mathrm T}
K_N'
\begin{pmatrix}\boldsymbol r\\
q\end{pmatrix}.
\end{align}$$

At finite $N$, $(q,\pi_q)$ is therefore an ordinary Darboux pair. The mass-normalized variables

$$\begin{align}
Q_{q,N}&=\sqrt{\rho_N}\,q, &P_{q,N}&=\frac{\pi_q}{\sqrt{\rho_N}}
\end{align}$$

are canonical, but this change of variables is singular as $N\to\infty$.

To display the unique small coefficient-norm direction, let $\widehat q=\sqrt Lq$ and $\widehat\rho_N=\rho_N/L$. Apart from $2N-1$ unit eigenvalues, the dimensionless mass matrix has

$$\begin{align}
\mu_{\pm,N}&=\frac12\left[\frac53\pm \sqrt{\frac19+4\frac{\boldsymbol d^{\mathrm T}\boldsymbol d}{L}}\right],\\
\mu_{+,N}\mu_{-,N}&=\widehat\rho_N, & \mu_{-,N}&=\frac{12}{5\pi^2N}+O(N^{-2}).
\end{align}$$

Thus $M_N$ is nondegenerate for every finite $N$, while its coefficient chart becomes singular linearly in $N$.

## Canonical Normal Modes

Choose generalized eigenvectors $z_{\alpha,N}$ satisfying

$$\begin{align}
K_Nz_{\alpha,N}&=\Omega_{\alpha,N}^2M_Nz_{\alpha,N}, & z_{\alpha,N}^{\mathrm T}M_Nz_{\beta,N}&=\delta_{\alpha\beta}.
\end{align}$$

The reconstructed Galerkin modes are

$$\begin{align}
E_{\alpha,N}(x)&=f_N(x)^{\mathrm T}z_{\alpha,N},
\end{align}$$

where $f_N$ is the column of regional sine functions together with the shared lifting. Their canonical coordinates are obtained by projection of the reconstructed field:

$$\begin{align}
Q_{\alpha,N}&=\langle E_{\alpha,N},\phi_N\rangle =z_{\alpha,N}^{\mathrm T}M_N\boldsymbol x,\\
P_{\alpha,N}&=\langle E_{\alpha,N},\dot\phi_N\rangle =z_{\alpha,N}^{\mathrm T}M_N\dot{\boldsymbol x}.
\end{align}$$

They obey

$$\begin{align}
[Q_{\alpha,N},P_{\beta,N}]&=i\delta_{\alpha\beta},\\
H_N&=\frac12\sum_{\alpha=1}^{2N+1} \left(P_{\alpha,N}^2+\Omega_{\alpha,N}^2Q_{\alpha,N}^2\right).
\end{align}$$

The finite annihilation operators are therefore

$$\begin{align}
a_{\alpha,N}&=\sqrt{\frac{\Omega_{\alpha,N}}2}Q_{\alpha,N} +\frac{i}{\sqrt{2\Omega_{\alpha,N}}}P_{\alpha,N}, & [a_{\alpha,N},a_{\beta,N}^{\dagger}]&=\delta_{\alpha\beta}.
\end{align}$$

This quantizes the positive port Hamiltonian itself. It supplies a compatible complex structure on all $2N+1$ pairs and does not require a factorized regional reference state. At finite $N$, $\Omega_{\alpha,N}$ are Ritz frequencies of this Galerkin space, not exact continuum frequencies inserted by hand.

## Continuum Meaning of the Port

Let

$$\begin{align}
P_Nh&=\sum_{n=1}^NA_nu_n, &\varepsilon_N&=h-P_Nh.
\end{align}$$

In Schur variables,

$$\begin{align}
\phi_i&=\sum_{n=1}^Nr_{i,n}u_n+q\varepsilon_N,
\end{align}$$

and

$$\begin{align}
2\|\varepsilon_N\|_{L^2(0,L)}^2&=\rho_N, & 2\|\varepsilon_N'\|_{L^2(0,L)}^2&=\frac{4N+2}{L}.
\end{align}$$

The pure residual direction is small in $L^2$ but leaves every bounded set in the energy seminorm. A general finite-energy field with nonzero trace $q$, however, contains correlated regional coefficients that cancel this pure-tail growth. Therefore $q$ must not be quotiented out.

The correct continuum configuration space is $H_0^1([-L,L])$, where $q=\phi(0)$ is a continuous trace. The finite-energy phase space is

$$\begin{align}
H_0^1([-L,L])\oplus L^2([-L,L]),
\end{align}$$

whose velocity component has no point trace. Thus neither $\dot q$ nor $\pi_q=\rho_N\dot q$ survives as an independent continuum point observable. The full convergence statement is proved in [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]].

The finite ground-state covariance is consistent numerically with

$$\begin{align}
\langle q^2\rangle_N&=\frac1{2\pi}\log N+O(1),
\end{align}$$

which is the ordinary point-field ultraviolet divergence. This observation is not needed for the finite canonical construction and is not an analytic convergence theorem.

## Verification Boundary

Verified analytically and by `numerics/port_canonical_normal_form_checks.wl`:

- the exact matrices $M_N,K_N$ and residual inertia $\rho_N$;
- the Schur mass and stiffness forms and Darboux momenta;
- positivity and nondegeneracy at every finite $N$;
- the same-regulator symplectic and Hamiltonian normal-mode map;
- the exact norms of the residual lifting function.

Assumptions: $L>0$, $m>0$, centered cut, physical outer Dirichlet conditions, lifting $h(y)=y/L$, and one common Galerkin space for the regional, reconstructed-field, and normal-mode descriptions.

Not proved here: a universal convergence rate, the numerical covariance coefficient for the port Galerkin sequence, an ordinary continuum point oscillator at the cut, or any continuum Fock-unitary comparison with independently chosen regional representations.
