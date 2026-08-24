# From Operator Feedback to the Finite Port System

The quantize-first construction in [[Articles/Quantization in AdS/gluing/formalism|formalism]] begins with regional oscillators driven by a prescribed boundary history. After gluing, that history becomes operator-valued. This note proves that, at finite cutoff, the correctly regulated feedback equations are exactly the Euler--Lagrange equations of the conforming port Galerkin action.

The conclusion is

$$\begin{align}
\text{regulated feedback} &\equiv\text{finite port action}
\equiv\text{reconstructed Galerkin field}
\equiv\text{canonical normal modes}.
\end{align}$$

The finite port system itself is developed in [[Articles/Quantization in AdS/gluing/deprecated/port-canonical-normal-form|port-canonical-normal-form]].

## Regional Equations and the Port Equation

Use the common finite field

$$\begin{align}
\phi_i(t,y)&=\sum_{n=1}^Nc_{i,n}(t)u_n(y)+\frac yLq(t),\\
u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}.
\end{align}$$

With

$$\begin{align}
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}, & k_n&=\frac{n\pi}{L}, & \omega_n^2&=k_n^2+m^2,
\end{align}$$

define

$$\begin{align}
\boldsymbol d&=(A_1,\ldots,A_N,A_1,\ldots,A_N)^{\mathrm T},\\
\boldsymbol g&=(A_1k_1^2,\ldots,A_Nk_N^2,A_1k_1^2,\ldots,A_Nk_N^2)^{\mathrm T},\\
D_N&=\operatorname{diag}(\omega_1^2,\ldots,\omega_N^2,\omega_1^2,\ldots,\omega_N^2).
\end{align}$$

The first $2N$ Euler--Lagrange equations are

$$\begin{align}
\boldsymbol E_c &:=\ddot{\boldsymbol c}+\boldsymbol d\ddot q +D_N\boldsymbol c+m^2\boldsymbol d q=0,
\end{align}$$

or componentwise

$$\begin{align}
\ddot c_{i,n}+\omega_n^2c_{i,n} &=-A_n(\ddot q+m^2q).
\end{align}$$

These are exactly the truncated forced regional equations. Let $E_q=0$ be the last Euler--Lagrange equation. Since

$$\begin{align}
\rho_N&:=\frac{2L}{3}-\boldsymbol d^{\mathrm T}\boldsymbol d =\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}>0,\\
\mathcal F_N&:=\frac{2q}{L}-\boldsymbol g^{\mathrm T}\boldsymbol c,
\end{align}$$

direct subtraction gives

$$\begin{align}
E_q-\boldsymbol d^{\mathrm T}\boldsymbol E_c &=\rho_N(\ddot q+m^2q)+\mathcal F_N.
\end{align}$$

Therefore

$$
(\boldsymbol E_c,E_q)=0
\quad\Longleftrightarrow\quad
\begin{cases}
\boldsymbol E_c=0,\\
\rho_N(\ddot q+m^2q)+\mathcal F_N=0.
\end{cases}
$$

The finite port equation is not the strong truncated flux condition $\mathcal F_N=0$. Dropping the $\rho_N$ term changes the finite variational system.

If the retarded regional solutions are inserted into this equation, the finite common history depends on the symmetric regional homogeneous operators $\boldsymbol d_+$ and on the initial port pair:

$$\begin{align}
q_N=q_N[\boldsymbol d_+;q_N(t_i),\pi_{q,N}(t_i)], & \pi_{q,N}(t_i)=\rho_N\dot q_N(t_i).
\end{align}$$

Thus $q_N$ is not determined by the regional $d_+$ operators alone at finite $N$.

## Canonical Feedback Variables

Define the full-field regional projections

$$\begin{align}
r_{i,n}=C_{i,n} &:=\int_0^L\mathrm dy\,u_n(y)\phi_i(t,y) =c_{i,n}+A_nq,\\
\pi_{r,i,n}=V_{i,n} &:=\int_0^L\mathrm dy\,u_n(y)\dot\phi_i(t,y) =\dot r_{i,n}.
\end{align}$$

Together with

$$\begin{align}
\pi_q&=\rho_N\dot q,
\end{align}$$

they give the exact finite symplectic form

$$\begin{align}
\omega_N&=\sum_{i=1}^2\sum_{n=1}^N \delta\pi_{r,i,n}\wedge\delta r_{i,n} +\delta\pi_q\wedge\delta q.
\end{align}$$

Hence

$$\begin{align}
[C_{i,n},V_{j,m}]&=i\delta_{ij}\delta_{nm}, & [q,\pi_q]&=i,
\end{align}$$

with vanishing cross commutators. The fixed-history brackets of $(c_{i,n},\dot c_{i,n})$ do not survive unchanged; explicitly,

$$\begin{align}
\{c_a,\dot c_b\}&=\delta_{ab}+\frac{d_ad_b}{\rho_N}.
\end{align}$$

This is the precise canonical correction required when the prescribed history is promoted to a dynamical operator.

## Projection to Glued Normal Modes

Let $M_N,K_N$ be the port mass and stiffness matrices, and choose

$$\begin{align}
K_Nz_{\alpha,N}&=\Omega_{\alpha,N}^2M_Nz_{\alpha,N}, & z_{\alpha,N}^{\mathrm T}M_Nz_{\beta,N}&=\delta_{\alpha\beta}.
\end{align}$$

For the reconstructed modes $E_{\alpha,N}(x)=f_N(x)^{\mathrm T}z_{\alpha,N}$,

$$\begin{align}
Q_{\alpha,N}&=\langle E_{\alpha,N},\phi_N\rangle =z_{\alpha,N}^{\mathrm T}M_N\boldsymbol x,\\
P_{\alpha,N}&=\langle E_{\alpha,N},\dot\phi_N\rangle =z_{\alpha,N}^{\mathrm T}M_N\dot{\boldsymbol x}.
\end{align}$$

These are the canonical normal coordinates of the same finite Galerkin system:

$$\begin{align}
[Q_{\alpha,N},P_{\beta,N}]&=i\delta_{\alpha\beta},\\
a_{\alpha,N}&=\sqrt{\frac{\Omega_{\alpha,N}}2}Q_{\alpha,N} +\frac{i}{\sqrt{2\Omega_{\alpha,N}}}P_{\alpha,N}.
\end{align}$$

Consequently the quantize-first chain closes as

$$\begin{align}
(q,\boldsymbol c) \longrightarrow\phi_N \longrightarrow(Q_{\alpha,N},P_{\alpha,N}) \longrightarrow(a_{\alpha,N},a_{\alpha,N}^{\dagger}).
\end{align}$$

## Why the Port Terms Cannot Be Omitted

Let

$$\begin{align}
b_{i,n}&=\sqrt{\frac{\omega_n}{2}}r_{i,n} +\frac{i}{\sqrt{2\omega_n}}\pi_{r,i,n}.
\end{align}$$

In feedback variables the glued annihilators have the form

$$\begin{align}
\boldsymbol a_N &=\boldsymbol\alpha_N\boldsymbol b +\boldsymbol\beta_N\boldsymbol b^{\dagger} +\boldsymbol\gamma_Nq+i\boldsymbol\delta_N\pi_q.
\end{align}$$

The matrices are fixed by the normal-mode position and momentum projections. Their canonical identities are

$$\begin{align}
\boldsymbol\alpha_N\boldsymbol\alpha_N^{\mathrm T} -\boldsymbol\beta_N\boldsymbol\beta_N^{\mathrm T} +\boldsymbol\gamma_N\boldsymbol\delta_N^{\mathrm T} +\boldsymbol\delta_N\boldsymbol\gamma_N^{\mathrm T}&=\mathbf1,\\
\boldsymbol\alpha_N\boldsymbol\beta_N^{\mathrm T} -\boldsymbol\beta_N\boldsymbol\alpha_N^{\mathrm T} +\boldsymbol\delta_N\boldsymbol\gamma_N^{\mathrm T} -\boldsymbol\gamma_N\boldsymbol\delta_N^{\mathrm T}&=0.
\end{align}$$

These imply

$$\begin{align}
[a_{\alpha,N},a_{\beta,N}^{\dagger}]&=\delta_{\alpha\beta}, & [a_{\alpha,N},a_{\beta,N}]&=0.
\end{align}$$

Omitting the $q$ and $\pi_q$ terms leaves an order-one CCR defect. The finite port pair is therefore required by the canonical algebra, not added as an independent continuum degree of freedom.

## Continuum Boundary

At finite $N$, $(q,\pi_q)$ is retained. In the energy-space limit, $q(t)$ becomes the trace $\phi(t,0)$ of the connected weak solution, while the velocity has no generic point trace. The disappearance of an independent port pair is therefore a continuum completion statement, not a finite symplectic reduction.

The convergence theorem is [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]]. It proves convergence of energy-compatible reconstructed fields, traces, symplectic forms, and spatially smeared Gaussian correlators. It does not assert convergence of $\dot q_N$ as a point observable or unitary equivalence to a regional product Fock representation.

## Verification Boundary

Verified analytically and by `numerics/feedback_port_canonical_bridge_checks.wl`:

- the regulated-feedback identity;
- the identification $(C,V)=(r,\pi_r)$ with the additional pair $(q,\pi_q)$;
- the reconstructed-field projection formulas;
- the finite symplectic, Hamiltonian, and annihilator CCR identities;
- the nonzero CCR defect obtained by omitting the port terms.

Assumptions: $L>0$, $m>0$, centered cut, physical outer Dirichlet conditions, lifting $h(y)=y/L$, and feedback derived from the same truncated action as the port system.

Not proved here: a universal Galerkin convergence rate, an independent continuum limit for $\dot q_N$ or $\pi_{q,N}$, an unsmeared point covariance, or a continuum product-Fock unitary.
