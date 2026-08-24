## Setup and Quantize Subregions

Consider the connected interval

$$\begin{align}
I&=[x_0,x_2], & a&=x_1, & \ell_1&=a-x_0, & \ell_2&=x_2-a,
\end{align}$$

with $x_0<a<x_2$, $\ell_i>0$, and physical Dirichlet conditions at $x_0$ and $x_2$. Introduce regional coordinates

$$\begin{align}
y_1&=x-x_0\in[0,\ell_1], & y_2&=x_2-x\in[0,\ell_2],
\end{align}$$

Decompose

$$\begin{align}
\phi_i(t,y_i)&=\psi_i(t,y_i)+h_i(y_i)q_i(t), & h_i(y_i)&=\frac{y_i}{\ell_i},
\end{align}$$

where $\psi_i$ obeys homogeneous Dirichlet conditions at both ends. Use the normalized basis

$$\begin{align}
\psi_i(t,y_i)&=\sum_{n=1}^{\infty}c_{i,n}(t)u_{i,n}(y_i),\\
u_{i,n}(y_i)&=\sqrt{\frac{2}{\ell_i}}\sin(k_{i,n}y_i), & k_{i,n}&=\frac{n\pi}{\ell_i},\\
h_i(y_i)&=\sum_{n=1}^{\infty}A_{i,n}u_{i,n}(y_i), & A_{i,n}&=(-1)^{n+1}\frac{\sqrt{2\ell_i}}{n\pi}.
\end{align}$$

For

$$\begin{align}
\omega_{i,n}^2&=k_{i,n}^2+m^2,
\end{align}$$

the regional equations are

$$\begin{align}
\ddot c_{i,n}+\omega_{i,n}^2c_{i,n} &=-A_{i,n}(\ddot q_i+m^2q_i).
\end{align}$$

At an initial time $t_0$, define

$$\begin{align}
c_{i,n}^{(0)}&=\int_0^{\ell_i}\mathrm dy_i\,u_{i,n}(y_i) \left[\phi_i(t_0,y_i)-h_i(y_i)q_i(t_0)\right],\\
v_{i,n}^{(0)}&=\int_0^{\ell_i}\mathrm dy_i\,u_{i,n}(y_i) \left[\dot\phi_i(t_0,y_i)-h_i(y_i)\dot q_i(t_0)\right].
\end{align}$$

The exact retarded solution is

$$\begin{align}
c_{i,n}(t;q_i) &=c_{i,n}^{(0)}\cos\omega_{i,n}(t-t_0) +\frac{v_{i,n}^{(0)}}{\omega_{i,n}}\sin\omega_{i,n}(t-t_0)\\
&\quad-A_{i,n}\int_{t_0}^{t}\mathrm dt'\, \frac{\sin[\omega_{i,n}(t-t')]}{\omega_{i,n}}
[\ddot q_i(t')+m^2q_i(t')].
\end{align}$$

Because $q_i$ is fixed at this stage, the regional symplectic form reduces to

$$\begin{align}
\omega_i&=\sum_{n=1}^{\infty}\delta v_{i,n}^{(0)}\wedge\delta c_{i,n}^{(0)}.
\end{align}$$

Quantization therefore gives

$$\begin{align}
[c_{i,n}^{(0)},v_{j,m}^{(0)}]&=i\delta_{ij}\delta_{nm},\\
d_{i,n}&=\sqrt{\frac{\omega_{i,n}}{2}}c_{i,n}^{(0)} +\frac{i}{\sqrt{2\omega_{i,n}}}v_{i,n}^{(0)}, & [d_{i,n},d_{j,m}^{\dagger}]&=\delta_{ij}\delta_{nm}.
\end{align}$$

For nonconstant prescribed $q_i(t)$, the state annihilated by all $d_{i,n}$ is a reference Gaussian state for the fixed-history problem, not a stationary regional vacuum. In the Heisenberg picture,

$$\begin{align}
c_{i,n}(t;q_i) &=\frac{d_{i,n}e^{-i\omega_{i,n}(t-t_0)} +d_{i,n}^{\dagger}e^{i\omega_{i,n}(t-t_0)}}{\sqrt{2\omega_{i,n}}}\\
&\quad-\frac{A_{i,n}}{\omega_{i,n}}\int_{t_0}^{t}\mathrm dt'\, \sin[\omega_{i,n}(t-t')][\ddot q_i(t')+m^2q_i(t')]\mathbf 1.
\end{align}$$

Now identify

$$\begin{align}
q_1(t)&=q_2(t)=q(t)
\end{align}$$

At finite regulator, or on the spatial graph core where the normal-derivative traces exist, flux matching gives

$$\begin{align}
0&=\left(\frac1{\ell_1}+\frac1{\ell_2}\right)q(t) -\sum_{i=1}^2\sum_{n=1}^{\infty} A_{i,n}k_{i,n}^2c_{i,n}(t;q).
\end{align}$$

Take a homogeneous-frequency ansatz

$$\begin{align}
q(t)&=qe^{-i\Omega t}, & c_{i,n}(t;q)&=c_{i,n}e^{-i\Omega t}, & k^2&=\Omega^2-m^2\geq0.
\end{align}$$

Away from the regional Dirichlet poles $k^2=k_{i,n}^2$, the forced equations give

$$\begin{align}
c_{i,n}&=\frac{A_{i,n}k^2}{k_{i,n}^2-k^2}q,
\end{align}$$

Thus the nonzero-interface branch obeys

$$\begin{align}
k[\cot(k\ell_1)+\cot(k\ell_2)]q&=k \dfrac{\sin[k(\ell_{1}+\ell_{2})]}{\sin k\ell_{1}\sin k\ell_{2}}q=0.
\end{align}$$

Hence, the complete nonzero spatial spectrum is

$$\begin{align}
k_r&=\frac{r\pi}{\ell_1+\ell_2}, & \Omega_r^2&=m^2+k_r^2, & r&\in\mathbb N^+,
\end{align}$$

which is exactly the spectrum of the uncut Dirichlet interval.

## Finite Truncation

Choose independent cutoffs $N_1,N_2$ and truncate the reconstructed field as

$$\begin{align}
\phi_i(t,y_i)&=\sum_{n=1}^{N_i}c_{i,n}(t)u_{i,n}(y_i)+h_i(y_i)q(t).
\end{align}$$

Collect all regional coefficients into $\boldsymbol c$ and define

$$\begin{align}
\boldsymbol d&=(A_{1,1},\ldots,A_{1,N_1},A_{2,1},\ldots,A_{2,N_2})^{\mathrm T},\\
\boldsymbol g&=(A_{1,1}k_{1,1}^2,\ldots,A_{1,N_1}k_{1,N_1}^2, A_{2,1}k_{2,1}^2,\ldots,A_{2,N_2}k_{2,N_2}^2)^{\mathrm T},\\
D&=\operatorname{diag}(\omega_{1,1}^2,\ldots,\omega_{1,N_1}^2, \omega_{2,1}^2,\ldots,\omega_{2,N_2}^2),\\
h_{\mathrm p}&=\frac{\ell_1+\ell_2}{3}, & g_{\mathrm p}&=\frac1{\ell_1}+\frac1{\ell_2}.
\end{align}$$

Substitution into the summed regional action before variation gives

$$\begin{align}
L_{N_1,N_2} &=\frac12\left(\dot{\boldsymbol c}^{\mathrm T}\dot{\boldsymbol c} +2\dot q\,\boldsymbol d^{\mathrm T}\dot{\boldsymbol c} +h_{\mathrm p}\dot q^2\right)\\
&\quad-\frac12\left(\boldsymbol c^{\mathrm T}D\boldsymbol c +2m^2q\,\boldsymbol d^{\mathrm T}\boldsymbol c +(g_{\mathrm p}+m^2h_{\mathrm p})q^2\right).
\end{align}$$

The regional equations remain the truncated forced equations. Eliminating them from the $q$ equation gives

$$\begin{align}
\rho_{N_1,N_2}(\ddot q+m^2q)+\mathcal F_{N_1,N_2}&=0,\\
\mathcal F_{N_1,N_2}&=g_{\mathrm p}q-\boldsymbol g^{\mathrm T}\boldsymbol c,\\
\rho_{N_1,N_2} &=h_{\mathrm p}-\boldsymbol d^{\mathrm T}\boldsymbol d\\
&=\sum_{i=1}^{2}\frac{2\ell_i}{\pi^2}
\sum_{n>N_i}\frac1{n^2}>0.
\end{align}$$

Therefore the finite variational system does not impose the strong truncated flux equation $\mathcal F_{N_1,N_2}=0$. The residual term supplies the finite port pair and must be retained.

Introduce the Schur variables

$$\begin{align}
\boldsymbol C&=\boldsymbol c+\boldsymbol d q, & \boldsymbol V&=\dot{\boldsymbol C}, & \pi_q&=\rho_{N_1,N_2}\dot q.
\end{align}$$

The finite symplectic form is

$$\begin{align}
\omega_{N_1,N_2} &=\sum_a\delta V_a\wedge\delta C_a+\delta\pi_q\wedge\delta q.
\end{align}$$

Consequently

$$\begin{align}
[C_a,V_b]&=i\delta_{ab}, & [q,\pi_q]&=i,
\end{align}$$

with all other elementary commutators vanishing. The fixed-history commutators of $(c_{i,n},\dot c_{i,n})$ cannot simply be reused after $q$ becomes operator-valued.

Let

$$\begin{align}
M_{N_1,N_2}&=
\begin{pmatrix}
I&\boldsymbol d\\
\boldsymbol d^{\mathrm T}&h_{\mathrm p}
\end{pmatrix}, &
K_{N_1,N_2}&=
\begin{pmatrix}
D&m^2\boldsymbol d\\
m^2\boldsymbol d^{\mathrm T}&g_{\mathrm p}+m^2h_{\mathrm p}
\end{pmatrix}.
\end{align}$$

Both matrices are positive definite at every finite cutoff. Choose an $M_{N_1,N_2}$-orthonormal generalized eigenbasis

$$\begin{align}
K_{N_1,N_2}z_{\alpha}=\Omega_{\alpha}^2M_{N_1,N_2}z_{\alpha}, & z_{\alpha}^{\mathrm T}M_{N_1,N_2}z_{\beta}=\delta_{\alpha\beta}.
\end{align}$$

Projection of the reconstructed field onto these normal modes gives canonical variables

$$\begin{align}
Q_{\alpha}&=z_{\alpha}^{\mathrm T}M_{N_1,N_2}\boldsymbol x, & P_{\alpha}&=z_{\alpha}^{\mathrm T}M_{N_1,N_2}\dot{\boldsymbol x}, &
\boldsymbol x&=\begin{pmatrix}\boldsymbol c\\
q\end{pmatrix},
\end{align}$$

and hence

$$\begin{align}
[Q_{\alpha},P_{\beta}]&=i\delta_{\alpha\beta},\\
a_{\alpha}&=\sqrt{\frac{\Omega_{\alpha}}2}Q_{\alpha} +\frac{i}{\sqrt{2\Omega_{\alpha}}}P_{\alpha}, & [a_{\alpha},a_{\beta}^{\dagger}]&=\delta_{\alpha\beta}.
\end{align}$$

This is the non-central-cut version of the canonical sequence

$$\begin{align}
(q,c_i)\longrightarrow\phi_{\mathrm{glued}} \longrightarrow(Q_{\alpha},P_{\alpha}) \longrightarrow(a_{\alpha},a_{\alpha}^{\dagger}).
\end{align}$$

## Continuum Cut-Position Independence

For each fixed generic $a\in(x_0,x_2)$ satisfying $\ell_1/\ell_2\notin\mathbb Q$, let $W_{N_1,N_2}(a)$ be the reconstructed port space above, regarded as a subspace of

$$\begin{align}
V&=H_0^1(x_0,x_2).
\end{align}$$

Every element of $W_{N_1,N_2}(a)$ is continuous at $a$, vanishes at the physical endpoints, and is therefore a conforming element of $V$. Conversely, for any $\phi\in V$, set $q=\phi(a)$. The regional remainders

$$\begin{align}
\psi_i&=\phi_i-h_iq
\end{align}$$

belong to $H_0^1(0,\ell_i)$ and can be approximated in $H^1$ by their regional sine expansions. Hence

$$\begin{align}
\overline{\bigcup_{N_1,N_2}W_{N_1,N_2}(a)}^{\,H^1} &=H_0^1(x_0,x_2)
\end{align}$$

for every fixed generic interior cut $a$.

Restrict the connected quadratic form

$$\begin{align}
\mathfrak a[\phi]&=\int_{x_0}^{x_2}\mathrm dx\, (|\partial_x\phi|^2+m^2|\phi|^2)
\end{align}$$

to these nested conforming spaces. Form density implies Mosco convergence to the same form $\mathfrak a$, independently of the chosen generic $a$. Therefore every fixed generic cut position gives the same connected self-adjoint operator in the limit, and hence the same:

1. strong-resolvent limit;
2. finite-energy wave evolution;
3. connected equal-time symplectic form;
4. convergence of the cut-dependent trace $q_a(t)=\phi(t,a)$ to the value of that same global solution at the chosen cut;
5. intrinsic spatially smeared Gaussian correlation functions.

The finite matrices, residual inertia, mode count split, and convergence rate may depend on $a$, $N_1$, $N_2$, and the chosen lifting. No cut-position-uniform convergence rate is asserted as $a$ approaches a physical endpoint. Cut-position independence is a statement about the reconstructed continuum theory, not equality of finite coefficient presentations and not unitary equivalence to a declared regional product Fock representation.
