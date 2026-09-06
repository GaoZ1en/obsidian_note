Consider a massive real scalar on the interval $y\in[0,L]$ with action

$$\begin{align}
S &=\frac12\int_{t_i}^{t_f}\mathrm dt\int_0^L\mathrm dy \left(\dot\phi^2-\phi'^2-m^2\phi^2\right)
\end{align}$$

At the left endpoint impose the physical Dirichlet condition

$$\begin{align}
\phi(t,0)&=0.
\end{align}$$

The desired physical condition at the right endpoint is homogeneous Neumann,

$$\begin{align}
\phi'(t,L)&=0.
\end{align}$$

The construction has two logically separate stages. First prescribe the right-endpoint value

$$\begin{align}
\phi(t,L)&=\phi_0(t)
\end{align}$$

and quantize the resulting boundary-driven Dirichlet problem while keeping $\phi_0(t)$ fixed. Second, remove that restriction and let the same endpoint value vary. The action then determines $\phi_0(t)$ through the Neumann boundary equation. Thus $\phi_0(t)$ is a prescribed classical history in the conditional regional theory, but it becomes the dynamical endpoint trace in the final autonomous theory.

*For the strong retarded formulas below, take $\phi_0\in H^2_{\mathrm{loc}}$ in time and require the homogeneous-Dirichlet remainder to lie in $C(H_0^1)\cap C^1(L^2)$. Pointwise normal derivatives are used only on the stronger spatial graph core; on the full energy space the Neumann equation is understood weakly.*

---

Varying the action gives

$$\begin{align}
\delta S &=\int_{t_i}^{t_f}\mathrm dt\int_0^L\mathrm dy \left(-\ddot\phi+\phi''-m^2\phi\right)\delta\phi +\int_0^L\mathrm dy\,\dot\phi\,\delta\phi\big|_{t_i}^{t_f} -\int_{t_i}^{t_f}\mathrm dt\,\phi'(t,L)\delta\phi(t,L).
\end{align}$$

In the first stage,

$$\begin{align}
\delta\phi(t,L)&=\delta\phi_0(t)=0,
\end{align}$$

so the conditional phase space is

$$\begin{align}
\mathcal P[\phi_0] =\left\{ \phi\ \middle|\ -\ddot\phi+\phi''-m^2\phi=0,\quad \phi(t,0)=0,\quad \phi(t,L)=\phi_0(t) \right\}.
\end{align}$$

In the second stage, $\phi_0(t)$ is no longer prescribed. Since

$$\begin{align}
\delta\phi(t,L)&=\delta\phi_0(t)
\end{align}$$

is then arbitrary, the same boundary variation gives

$$\begin{align}
\phi'(t,L)&=0.
\end{align}$$

The endpoint value is therefore fixed only during the conditional quantization. It cannot remain fixed while the Neumann equation is derived by varying it.

## Conditional Quantization at Fixed $\phi_0(t)$

Introduce the strict-Dirichlet modes

$$\begin{align}
u_n(y)&=\sqrt{\frac2L}\sin(k_ny), &k_n&=\frac{n\pi}{L}, &n&=1,2,\ldots
\end{align}$$

and the lifting coefficients

$$\begin{align}
\frac yL&=\sum_{n=1}^{\infty}A_nu_n(y), &A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}.
\end{align}$$

For fixed $\phi_0(t)$, decompose

$$\begin{align}
\phi(t,y) &=\frac yL\phi_0(t)+\sum_{n=1}^{\infty}c_n(t)u_n(y).
\end{align}$$

Substitution into the equation of motion gives

$$\begin{align}
\ddot c_n+\omega_n^2c_n &=-A_n\left(\ddot\phi_0+m^2\phi_0\right), &\omega_n^2&=k_n^2+m^2.
\end{align}$$

At an initial time $t_i$, define

$$\begin{align}
c_n^{(0)} &=\int_0^L\mathrm dy\,u_n(y) \left[\phi(t_i,y)-\frac yL\phi_0(t_i)\right],\\
v_n^{(0)} &=\int_0^L\mathrm dy\,u_n(y) \left[\dot\phi(t_i,y)-\frac yL\dot\phi_0(t_i)\right].
\end{align}$$

The exact retarded solution is

$$\begin{align}
c_n(t) ={}&c_n^{(0)}\cos\omega_n(t-t_i) +\frac{v_n^{(0)}}{\omega_n}\sin\omega_n(t-t_i)\\
&-A_n\int_{t_i}^{t}\mathrm dt'\, \frac{\sin[\omega_n(t-t')]}{\omega_n} \left[\ddot\phi_0(t')+m^2\phi_0(t')\right].
\end{align}$$

Because $\phi_0$ is fixed under variations in $\mathcal P[\phi_0]$, the regional symplectic form is

$$\begin{align}
\omega[\phi_0] &=\sum_{n=1}^{\infty}\delta v_n^{(0)}\wedge\delta c_n^{(0)}.
\end{align}$$

Thus the conditional initial data may be quantized as

$$\begin{align}
[c_n^{(0)},v_m^{(0)}]&=i\delta_{nm},\\
d_n &=\sqrt{\frac{\omega_n}{2}}c_n^{(0)} +\frac{i}{\sqrt{2\omega_n}}v_n^{(0)}, &[d_n,d_m^\dagger]&=\delta_{nm}.
\end{align}$$

For a nonconstant prescribed $\phi_0(t)$, the state annihilated by every $d_n$ is a reference Gaussian state, not a stationary vacuum of an autonomous subsystem.

## Recovery of DN Spectrum

At the second stage, we allow $\displaystyle{\phi _{0}(t)}$ to vary, and the variational principle gives the Neumann boundary condition

$$\begin{align}
\phi'|_{y=L}=0
\end{align}$$

substituting the $\displaystyle{\phi}$ with the above solution, we have

$$\begin{align}
0=\phi'(t,y=L) & =\dfrac{\phi _{0}(t)}{L}-\sum ^{\infty}_{n=1}A_{n}k^{2}_{n}c_{n}(t;\phi _{0})
\end{align}$$

take

$$\begin{align}
\phi_0(t)&=q e^{-i\Omega t}, &c_n(t)&=c_ne^{-i\Omega t}, &k^2&=\Omega^2-m^2\neq k^{2}_{n},
\end{align}$$

plug back into $\displaystyle{\ddot{c}_{n}+\omega _{n}^{2}c_{n}=-A_{n}(\ddot{q}+m^{2}q)}$, we have

$$\begin{align}
c_n&=\frac{A_nk^2}{k_n^2-k^2}q
\end{align}$$

and hence

$$\begin{align}
0=\phi'(t,y=L) & =qe^{-i\Omega t}\left[\dfrac{1}{L}-k^{2}\sum ^{\infty}_{n=1} \dfrac{A_{n}^{2}k^{2}_{n}}{k^{2}_{n}-k^{2}}\right] \\
 & =k\cot(kL)qe^{-i\Omega t}
\end{align}$$

the zeros of $\displaystyle{k\cot(kL)}$ are

$$\begin{align}
k _{n} & =\dfrac{(2n+1)\pi}{2L}, & n\in \mathbb{N}
\end{align}$$

which reproduce the spectrum of DN problem.

## Finite Truncation

At finite $N$, substitute

$$\begin{align}
\phi_N(t,y) &=\sum_{n=1}^{N}c_n(t)u_n(y)+\frac yL\phi_0(t)
\end{align}$$

into the action. Define

$$\begin{align}
A&=(A_1,\ldots,A_N)^T, &g&=(A_1k_1^2,\ldots,A_Nk_N^2)^T,\\
D&=\operatorname{diag}(\omega_1^2,\ldots,\omega_N^2), &\rho_N&=\frac L3-A^TA>0,\\
\mathcal F_N&=\frac{\phi_0}{L}-g^Tc.
\end{align}$$

The finite Lagrangian is

$$\begin{align}
L_N ={}&\frac12\left( \dot c^T\dot c +2\dot\phi_0A^T\dot c +\frac L3\dot\phi_0^2 \right)\\
&-\frac12\left( c^TDc +2m^2\phi_0A^Tc +\left(\frac1L+\frac{m^2L}{3}\right)\phi_0^2 \right).
\end{align}$$

Its Euler--Lagrange equations are

$$\begin{align}
\ddot c+D c &=-A\left(\ddot\phi_0+m^2\phi_0\right),\\
A^T\ddot c+\frac L3\ddot\phi_0 +m^2A^Tc +\left(\frac1L+\frac{m^2L}{3}\right)\phi_0 &=0.
\end{align}$$

Using the first equation in the second gives

$$\begin{align}
\rho_N\left(\ddot\phi_0+m^2\phi_0\right) +\mathcal F_N&=0.
\end{align}$$

Introduce

$$\begin{align}
C&=c+A\phi_0, &V&=\dot C.
\end{align}$$

The finite symplectic form becomes

$$\begin{align}
\omega_N &=\sum_{n=1}^{N}\delta V_n\wedge\delta C_n +\rho_N\delta\dot\phi_0\wedge\delta\phi_0.
\end{align}$$

Writing $x=(c,\phi_0)^T$, the finite Lagrangian has the form

$$\begin{align}
L_N&=\frac12\dot x^TM_N\dot x-\frac12x^TK_Nx,
\end{align}$$

with

$$\begin{align}
M_N&=\begin{pmatrix}I&A\\
A^T&L/3\end{pmatrix},
&K_N&=\begin{pmatrix}D&m^2A\\
m^2A^T&1/L+m^2L/3\end{pmatrix}.
\end{align}$$

Both matrices are positive for $L>0$ and $m>0$. Let

$$\begin{align}
K_Nz_{\alpha,N} &=\Omega_{\alpha,N}^2M_Nz_{\alpha,N}, &z_{\alpha,N}^TM_Nz_{\beta,N}&=\delta_{\alpha\beta}.
\end{align}$$

Then

$$\begin{align}
Q_{\alpha,N}&=z_{\alpha,N}^TM_Nx, &P_{\alpha,N}&=z_{\alpha,N}^TM_N\dot x
\end{align}$$

obey

$$\begin{align}
[Q_{\alpha,N},P_{\beta,N}]&=i\delta_{\alpha\beta}
\end{align}$$

and diagonalize the same finite Hamiltonian. The annihilation operators are

$$\begin{align}
a_{\alpha,N} &=\sqrt{\frac{\Omega_{\alpha,N}}2}Q_{\alpha,N} +\frac{i}{\sqrt{2\Omega_{\alpha,N}}}P_{\alpha,N}.
\end{align}$$

## Numerical Results

For $L=1$ and $m=1$, the exact Dirichlet--Neumann frequencies are

$$\begin{align}
\Omega_{\alpha} &=\sqrt{1+\left(\alpha-\frac12\right)^2\pi^2}, &\alpha&=1,2,3,\ldots
\end{align}$$

The first three generalized eigenfrequencies obtained from $K_Nz=\Omega^2M_Nz$ are

| cutoff $N$ | $\Omega_{1,N}$ | $\Omega_{2,N}$ | $\Omega_{3,N}$ |
| ---------: | -------------: | -------------: | -------------: |
|        $4$ | $1.8623374944$ | $4.8253974027$ | $7.9614723811$ |
|        $8$ | $1.8621321536$ | $4.8184792498$ | $7.9230105961$ |
|       $16$ | $1.8621008640$ | $4.8174804018$ | $7.9181289582$ |
|      exact | $1.8620958891$ | $4.8173239358$ | $7.9173876694$ |

For these three fixed low modes, the finite-port frequencies approach the exact Dirichlet--Neumann spectrum from above as the cutoff increases.
