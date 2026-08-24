## Statement and Setup

Let

$$\begin{align}
x_{0}<x_{1}<x_{2}<x_{3} & , & I_{j} & =(x_{j-1},x_{j}), & j=1,2,3
\end{align}$$

with physical Dirichlet conditions at $\displaystyle{x_{0}}$ and $\displaystyle{x_{3}}$. Denote the two common cut histories by

$$\begin{align}
q_{1}(t) & =\phi(t,x_{1}), & q_{2}(t) & =\phi(t,x_{2})
\end{align}$$

The claim is that the two orders

$$\begin{align}
(I_1\mathbin{\#_{q_1}}I_2)\mathbin{\#_{q_2}}I_3, \qquad I_1\mathbin{\#_{q_1}}(I_2\mathbin{\#_{q_2}}I_3)
\end{align}$$

give the same connected theory. Here $\#_{q_a}$ means: identify the two traces at $x_a$, then vary their common value to derive the signed flux equation. At finite cutoff both common ports and their canonical momenta are retained, as in [[Articles/Quantization in AdS/gluing/formalism|formalism]].

On $I_j$ introduce the local coordinate $s=x-x_{j-1}\in[0,\ell_j]$, where

$$\begin{align}
\ell _{j} & =x_{j}-x_{j-1}, & h^{\mathrm{L}}_{j}(s) & =1-\dfrac{s}{\ell _{j}}, & h^{\mathrm{R}}_{j}(s) & =\dfrac{s}{\ell _{j}}.
\end{align}$$

## Regional Actions and Interface Variation

The regional actions are

$$\begin{align}
S_j[\phi_j] &=\frac12\int_{t_i}^{t_f}\mathrm dt\int_0^{\ell_j}\mathrm ds \left(\dot\phi_j^2-(\partial_s\phi_j)^2-m^2\phi_j^2\right), &m&>0.
\end{align}$$

Before gluing, prescribe both endpoint histories of each region and hold them fixed under the allowed regional variations. The physical histories are $q_0=q_3=0$, while the artificial-cut histories are temporarily independent copies. Varying the summed action and then identifying the two copies at each cut gives

$$\begin{align}
\delta\sum_{j=1}^3S_j &=\sum_{j=1}^3\int_{t_i}^{t_f}\mathrm dt\int_0^{\ell_j}\mathrm ds \left(-\ddot\phi_j+\partial_s^2\phi_j-m^2\phi_j\right)\delta\phi_j \nonumber\\
&\quad+\left.\sum_{j=1}^3\int_0^{\ell_j}\mathrm ds\,\dot\phi_j\delta\phi_j\right|_{t_i}^{t_f} \nonumber\\
&\quad-\int_{t_i}^{t_f}\mathrm dt \left[(\partial_s\phi_1)(\ell_1)-(\partial_s\phi_2)(0)\right]\delta q_1
\nonumber\\
&\quad-\int_{t_i}^{t_f}\mathrm dt \left[(\partial_s\phi_2)(\ell_2)-(\partial_s\phi_3)(0)\right]\delta q_2.
\end{align}$$

After identification, $\delta q_1$ and $\delta q_2$ are independent and arbitrary. Stationarity therefore gives continuity,

$$\begin{align}
\phi_1(\ell_1)&=\phi_2(0)=q_1, & \phi_2(\ell_2)&=\phi_3(0)=q_2,
\end{align}$$

and the two signed flux equations

$$\begin{align}
(\partial_s\phi_1)(\ell_1)-(\partial_s\phi_2)(0)&=0, & (\partial_s\phi_2)(\ell_2)-(\partial_s\phi_3)(0)&=0.
\end{align}$$

The two trace identifications and the two variations commute: either parenthesization gives the same four interface equations and the same summed action. This is the action-level origin of associativity.

For prescribed $q_1(t),q_2(t)$, each regional symplectic form

$$\begin{align}
\omega_j=\int_0^{\ell_j}\mathrm ds\,\delta\dot\phi_j\wedge\delta\phi_j
\end{align}$$

is conserved because the endpoint histories are fixed under regional variations. As in [[Articles/Quantization in AdS/gluing/formalism|formalism]], a nonconstant prescribed history is changed by time translation, so a region is driven and its regional energy satisfies the boundary-work law

$$\begin{align}
\frac{\mathrm dH_j}{\mathrm dt} =\left.(\partial_s\phi_j)\dot\phi_j\right|_{s=\ell_j} -\left.(\partial_s\phi_j)\dot\phi_j\right|_{s=0}.
\end{align}$$

After gluing, the work terms cancel pairwise by continuity and signed flux matching, and the connected energy is conserved independently of the order in which the cuts were imposed.

## Quantize the Regions with Prescribed Histories

Following [[Articles/Quantization in AdS/gluing/formalism|formalism]], first keep the endpoint histories prescribed and distinct. Write

$$\begin{align}
p_1^{\mathrm L}&=0, &p_1^{\mathrm R}&=\alpha, &p_2^{\mathrm L}&=\beta, &p_2^{\mathrm R}&=\gamma, &p_3^{\mathrm L}&=\delta, &p_3^{\mathrm R}&=0.
\end{align}$$

Thus $\alpha$ and $\beta$ are the two regional copies at $x_1$, while $\gamma$ and $\delta$ are the two copies at $x_2$. On every region write

$$\begin{align}
\phi _{j}(t,s) & =\sum ^{\infty}_{n=1} c_{j,n}(t)u_{j,n}(s)+h^{\mathrm{L}}_{j}(s)p_j^{\mathrm L}(t)+h^{\mathrm{R}}_{j}(s)p_j^{\mathrm R}(t), & s \in[0,\ell _{j}]
\end{align}$$

where

$$\begin{align}
u_{j,n}(s) & =\sqrt{ \dfrac{2}{\ell _{j}} } \sin k _{j,n}s, & k _{j,n} & =\dfrac{n\pi}{\ell _{j}} & n\in \mathbb{N}^{+}
\end{align}$$

expand $\displaystyle{h^{\mathrm{L}}_{j}(s)}$ and $\displaystyle{h^{\mathrm{R}}_{j}(s)}$ in $\displaystyle{u_{j,n}(s)}$, we have

$$\begin{align}
A^{\mathrm{L}}_{j,n} & =\int _{0}^{\ell _{j}} \mathrm{d}s u_{j,n}(s)h^{\mathrm{L}}_{j}(s) \\
A^{\mathrm{R}}_{j,n} & =\int _{0}^{\ell _{j}}\mathrm{d}s u_{j,n}(s)h^{\mathrm{R}}_{j}(s)
\end{align}$$

and hence

$$\begin{align}
A^{\mathrm L}_{j,n}&=\frac{\sqrt{2\ell_j}}{n\pi}, & A^{\mathrm R}_{j,n}&=(-1)^{n+1}\frac{\sqrt{2\ell_j}}{n\pi}.
\end{align}$$

Plug $\displaystyle{\phi _{j}}$ into the eom, we have

$$\begin{align}
\ddot{c}_{j,n}+\omega ^{2}_{j,n}c_{j,n} & =-A^{\mathrm{L}}_{j,n}(\ddot{p}_j^{\mathrm L}+m^{2}p_j^{\mathrm L})-A^{\mathrm{R}}_{j,n}(\ddot{p}_j^{\mathrm R}+m^{2}p_j^{\mathrm R}), & \omega ^{2}_{j,n} & =k _{j,n}^{2}+m^{2}
\end{align}$$

the initial data are obtained by

$$\begin{align}
c_{j,n}^{(0)} & =\int _{0}^{\ell _{j}}\mathrm{d}s u_{j,n}(s)\left(\phi _{j}(t_{i},s)-h^{\mathrm{L}}_{j}(s)p_j^{\mathrm L}(t_{i})-h^{\mathrm{R}}_{j}(s)p_j^{\mathrm R}(t_{i})\right) \\
v_{j,n}^{(0)} & =\int _{0}^{\ell _{j}}\mathrm{d}su_{j,n}(s)(\dot{\phi}_{j}(t_{i},s)-h^{\mathrm{L}}_{j}(s)\dot p_j^{\mathrm L}(t_i)-h^{\mathrm{R}}_{j}(s)\dot p_j^{\mathrm R}(t_i))
\end{align}$$

the retarded solution is then

$$\begin{align}
c_{j,n}(t) & =c_{j,n}^{(0)}\cos \omega _{j,n}(t-t_{i})+\dfrac{v^{(0)}_{j,n}}{\omega _{j,n}}\sin \omega _{j,n}(t-t_{i}) \\
 & -A_{j,n}^{\mathrm{L}}\int _{t_{i}}^{t} \mathrm{d}t' \dfrac{\sin[\omega _{j,n}(t-t')]}{\omega _{j,n}} (\ddot p_j^{\mathrm L}(t')+m^{2}p_j^{\mathrm L}(t')) \\
 & -A_{j,n}^{\mathrm{R}}\int _{t_{i}}^{t}\mathrm{d}t' \dfrac{\sin[\omega _{j,n}(t-t')]}{\omega _{j,n}}(\ddot p_j^{\mathrm R}(t')+m^{2}p_j^{\mathrm R}(t'))
\end{align}$$

hence

$$\begin{align}
\phi _{j}(t,s) & =\sum ^{\infty}_{n=1} c_{j,n}(t) u_{j,n}(s)+h^{\mathrm{L}}_{j}(s)p_j^{\mathrm L}(t)+h^{\mathrm{R}}_{j}(s)p_j^{\mathrm R}(t)
\end{align}$$

For fixed histories the independent initial data obey

$$\begin{align}
[c_{j,n}^{(0)},v_{k,r}^{(0)}]&=i\delta_{jk}\delta_{nr}.
\end{align}$$

These are driven regional reference representations. When any prescribed endpoint history is nonconstant, the state annihilated by the corresponding regional lowering operators is not a stationary regional vacuum. Gluing will impose $\alpha=\beta=q_1$ and $\gamma=\delta=q_2$. The resulting $q_1,q_2$ become operator-valued common histories, so the fixed-source commutators alone no longer establish the reduced CCR. The sequential finite-port reduction below supplies the required canonical variables.

## Sequential Finite-Regulator Gluing

Fix cutoffs $\boldsymbol N=(N_1,N_2,N_3)$ and collect all retained sine coefficients in $\boldsymbol c$. Before either gluing step, the four artificial endpoint values are

$$\begin{align}
\boldsymbol p_0=(\alpha,\beta,\gamma,\delta)^{\mathrm T}, & \boldsymbol x_0=(\boldsymbol c,\boldsymbol p_0)^{\mathrm T}.
\end{align}$$

The disconnected regional action restricts to

$$\begin{align}
L_0=\frac12\dot{\boldsymbol x}_0^{\mathrm T}M_0\dot{\boldsymbol x}_0 -\frac12\boldsymbol x_0^{\mathrm T}K_0\boldsymbol x_0.
\end{align}$$

At this stage $L_0$ is only the regional action evaluated on the finite ansatz as a quadratic function of the bulk coefficients and the four prescribed histories. It is not an autonomous pregluing phase space, and $\alpha,\beta,\gamma,\delta$ are not four independently quantized oscillators. In the first gluing step only the newly identified common history is allowed to vary; the histories at the other cut remain prescribed. The second common history is allowed to vary only in the second step.

Here $M_0$ and $K_0$ are the direct sums of the three regional mass and stiffness forms. Equivalently, with

$$
\mathsf D_0=
\begin{pmatrix}
\boldsymbol A_1^{\mathrm R}&0&0&0\\
0&\boldsymbol A_2^{\mathrm L}&\boldsymbol A_2^{\mathrm R}&0\\
0&0&0&\boldsymbol A_3^{\mathrm L}
\end{pmatrix},
$$

the port blocks are

$$
H_0=
\begin{pmatrix}
\ell_1/3&0&0&0\\
0&\ell_2/3&\ell_2/6&0\\
0&\ell_2/6&\ell_2/3&0\\
0&0&0&\ell_3/3
\end{pmatrix},
\qquad
G_0=
\begin{pmatrix}
\ell_1^{-1}&0&0&0\\
0&\ell_2^{-1}&-\ell_2^{-1}&0\\
0&-\ell_2^{-1}&\ell_2^{-1}&0\\
0&0&0&\ell_3^{-1}
\end{pmatrix},
$$

and

$$\begin{align}
M_0&=
\begin{pmatrix}
\mathbf 1&\mathsf D_0\\
\mathsf D_0^{\mathrm T}&H_0
\end{pmatrix},
& K_0&=
\begin{pmatrix}
\Omega_{\boldsymbol N}^2&m^2\mathsf D_0\\
m^2\mathsf D_0^{\mathrm T}&G_0+m^2H_0
\end{pmatrix}.
\end{align}$$

Both matrices are positive definite at every finite cutoff: they are the restrictions of the positive $L^2$ and massive energy forms to linearly independent regional basis functions.

### Left Parenthesization

First glue $I_1$ and $I_2$ at $x_1$. The identification $\alpha=\beta=q_1$ is the embedding

$$
T_1=
\begin{pmatrix}
1&0&0\\
1&0&0\\
0&1&0\\
0&0&1
\end{pmatrix},
\qquad
(\alpha,\beta,\gamma,\delta)^{\mathrm T}
=T_1(q_1,\gamma,\delta)^{\mathrm T}.
$$

Then glue the result to $I_3$ at $x_2$. The identification $\gamma=\delta=q_2$ is

$$
T_{2|1}=
\begin{pmatrix}
1&0\\
0&1\\
0&1
\end{pmatrix},
\qquad
(q_1,\gamma,\delta)^{\mathrm T}
=T_{2|1}(q_1,q_2)^{\mathrm T}.
$$

Thus the complete left route is

$$\begin{align}
T_{\mathrm L}=T_1T_{2|1}
=\begin{pmatrix}
1&0\\
1&0\\
0&1\\
0&1
\end{pmatrix}.
\end{align}$$

### Right Parenthesization

First glue $I_2$ and $I_3$ at $x_2$. The identification $\gamma=\delta=q_2$ is

$$
T_2=
\begin{pmatrix}
1&0&0\\
0&1&0\\
0&0&1\\
0&0&1
\end{pmatrix},
\qquad
(\alpha,\beta,\gamma,\delta)^{\mathrm T}
=T_2(\alpha,\beta,q_2)^{\mathrm T}.
$$

Then glue $I_1$ to the result at $x_1$:

$$
T_{1|2}=
\begin{pmatrix}
1&0\\
1&0\\
0&1
\end{pmatrix},
\qquad
(\alpha,\beta,q_2)^{\mathrm T}
=T_{1|2}(q_1,q_2)^{\mathrm T}.
$$

Therefore

$$\begin{align}
T_{\mathrm R}=T_2T_{1|2}
=\begin{pmatrix}
1&0\\
1&0\\
0&1\\
0&1
\end{pmatrix}
=T_{\mathrm L}.
\end{align}$$

This equality is the finite-regulator associativity statement. It is proved before restricting the bilinear forms and does not assume that the two final systems are already the same.

### Transitivity of the Restricted Action

For any port embedding $T$, let

$$
E(T)=
\begin{pmatrix}
\mathbf 1&0\\
0&T
\end{pmatrix},
$$

where the identity acts on $\boldsymbol c$. Restriction of a quadratic form is transitive. Along the left route,

$$\begin{align}
M_{\mathrm L} &=E(T_{2|1})^{\mathrm T} \left[E(T_1)^{\mathrm T}M_0E(T_1)\right] E(T_{2|1}) =E(T_{\mathrm L})^{\mathrm T}M_0E(T_{\mathrm L}),\\
K_{\mathrm L} &=E(T_{\mathrm L})^{\mathrm T}K_0E(T_{\mathrm L}).
\end{align}$$

Similarly,

$$\begin{align}
M_{\mathrm R}&=E(T_{\mathrm R})^{\mathrm T}M_0E(T_{\mathrm R}),\\
K_{\mathrm R}&=E(T_{\mathrm R})^{\mathrm T}K_0E(T_{\mathrm R}).
\end{align}$$

Since $T_{\mathrm L}=T_{\mathrm R}$,

$$\begin{align}
M_{\mathrm L}=M_{\mathrm R}, & K_{\mathrm L}=K_{\mathrm R}
\end{align}$$

in the common final ordering $(\boldsymbol c,q_1,q_2)$. If the two parenthesized presentations retain different temporary coordinate orderings, these equalities become

$$\begin{align}
M_{\mathrm R}=PM_{\mathrm L}P^{\mathrm T}, & K_{\mathrm R}=PK_{\mathrm L}P^{\mathrm T}
\end{align}$$

for the corresponding permutation matrix $P$.

The same calculation also derives the interface equations. If $\boldsymbol{\mathcal E}_0$ denotes the four endpoint Euler--Lagrange residuals before gluing, then variation after an embedding gives $T^{\mathrm T}\boldsymbol{\mathcal E}_0$. The transpose of $T_1$ adds the two residuals at $x_1$, producing the first signed flux equation; the transpose of $T_2$ does the same at $x_2$. Because $T_{\mathrm L}^{\mathrm T}=T_{\mathrm R}^{\mathrm T}$, the two flux equations are independent of the order of gluing.

## Canonical and Quantum Consequences

Let

$$\begin{align}
\boldsymbol x=(\boldsymbol c,q_1,q_2)^{\mathrm T}, & \boldsymbol p=M\dot{\boldsymbol x}.
\end{align}$$

The common final finite system has

$$\begin{align}
\omega_{\boldsymbol N}=\delta\boldsymbol p^{\mathrm T}\wedge\delta\boldsymbol x, & H_{\boldsymbol N} =\frac12\boldsymbol p^{\mathrm T}M^{-1}\boldsymbol p +\frac12\boldsymbol x^{\mathrm T}K\boldsymbol x.
\end{align}$$

Both port pairs $(q_1,p_{q_1})$ and $(q_2,p_{q_2})$ are retained in the final system. The sequential embeddings impose continuity at configuration level; their conjugate momenta are defined only after the corresponding common histories have been made dynamical in the restricted Lagrangian. Thus no momentum is identified by hand and no finite Ritz direction is deleted.

In the common final ordering the associator is the identity. With different parenthesized coordinate listings its phase-space representative is

$$\begin{align}
S_P=\begin{pmatrix}P&0\\
0&P\end{pmatrix},
& S_P^{\mathrm T}JS_P=J, & H_{\mathrm R}\circ S_P=H_{\mathrm L}.
\end{align}$$

Hence the finite reduced CCR algebras and positive Hamiltonian complex structures are canonically identical. If

$$\begin{align}
K\boldsymbol z_\lambda&=\Omega_\lambda^2M\boldsymbol z_\lambda, & \boldsymbol z_\lambda^{\mathrm T}M\boldsymbol z_\mu&=\delta_{\lambda\mu},
\end{align}$$

then

$$\begin{align}
Q_\lambda&=\boldsymbol z_\lambda^{\mathrm T}M\boldsymbol x, & P_\lambda&=\boldsymbol z_\lambda^{\mathrm T}\boldsymbol p, & [Q_\lambda,P_\mu]&=i\delta_{\lambda\mu},\\
a_\lambda&=\sqrt{\frac{\Omega_\lambda}{2}}Q_\lambda +\frac{i}{\sqrt{2\Omega_\lambda}}P_\lambda, & [a_\lambda,a_\mu^\dagger]&=\delta_{\lambda\mu}.
\end{align}$$

The two parenthesizations therefore give the same normalized modes, annihilation operators, finite Gaussian state and correlation functions after the canonical relabeling. This is an exact finite-dimensional result, not an inference from equality of spectra.

## Continuum Associativity

Let

$$\begin{align}
V_0=\{(u_1,u_2,u_3):u_j\in H^1(I_j),\ u_1(x_0)=u_3(x_3)=0\}
\end{align}$$

be the disconnected configuration form domain, and define the two closed trace conditions

$$\begin{align}
C_1&=\{u\in V_0:u_1(x_1)=u_2(x_1)\},\\
C_2&=\{u\in V_0:u_2(x_2)=u_3(x_2)\}.
\end{align}$$

Sequential gluing is successive restriction of the summed regional form. Since intersection of the two conditions is associative and commutative,

$$\begin{align}
(V_0\cap C_1)\cap C_2 =V_0\cap(C_1\cap C_2) =(V_0\cap C_2)\cap C_1 \cong H_0^1(x_0,x_3).
\end{align}$$

This is again a statement about successive restriction. After imposing only $C_1$, the two histories at $x_2$ remain prescribed boundary data; one does not form an autonomous intermediate operator by varying those traces. The same condition applies with $x_1$ and $x_2$ exchanged in the other parenthesization.

The restricted form is therefore exactly the connected form

$$\begin{align}
\mathfrak a[u,v] =\int_{x_0}^{x_3}\mathrm dx \left(\partial_xu\,\partial_x\overline v+m^2u\overline v\right), & D(\mathfrak a)&=H_0^1(x_0,x_3),
\end{align}$$

independently of parenthesization. The associated operator is

$$\begin{align}
A=-\partial_x^2+m^2, & D(A)=H^2(x_0,x_3)\cap H_0^1(x_0,x_3).
\end{align}$$

For each fixed finite partition, the sequential port-Galerkin spaces are the same final conforming spaces and are form-dense in $H_0^1(x_0,x_3)$. The Mosco, strong-resolvent, energy-space wave, trace, symplectic and spatially smeared correlator convergence therefore follows by the argument of [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]]. This establishes associativity of the intrinsic connected continuum theory. It does not assert unitary equivalence between separately chosen regional product Fock representations.
