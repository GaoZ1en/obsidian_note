# Maxwell Theory on a Cut Slab Times a Two-Torus

Consider compact \(U(1)\) Maxwell theory on

$$\begin{align}
M&=\mathbb R_t\times[-L,L]_x\times T^2,\\
z^a&\sim z^a+C_a,\qquad a=1,2, &
V_\perp&=C_1C_2.
\end{align}$$

The artificial interface is \(x=0\). At the physical walls \(x=\pm L\), fix

$$\begin{align}
A_t&=0, &A_a&=0.
\end{align}$$

The gauge frames at the physical walls are fixed. During a regional problem the proper gauge quotient contains only transformations equal to the identity at both the physical wall and the chosen artificial-interface frame. Transformations with nonzero interface value are boundary-frame covariance. This choice makes the tangential pullback of the connection the prescribed regional history, in the compact-Abelian specialization of gauge-covariant sewing and reduction.md. The calculation below solves every regional and connected polarization explicitly.

## Action, Constraint, and Interface Variation

The action is

$$\begin{align}
S&=-\frac1{4e^2}\int_M\mathrm d^4x\,F_{\mu\nu}F^{\mu\nu}.
\end{align}$$

Use \(y_1=x+L\) and \(y_2=L-x\), so \(y_i\in[0,L]\) increases toward the cut. At the regional interface prescribe

$$\begin{align}
A_{t,i}(t,L,z)&=\alpha_i(t,z), &
A_{a,i}(t,L,z)&=q_{i,a}(t,z),
\end{align}$$

The affine connection history is \(a_i=\alpha_i\,\mathrm dt+q_{i,a}\,\mathrm dz^a\). Hold these functions fixed during regional quantization. Variation gives the interface term

$$\begin{align}
\left.\delta S_i\right|_\Gamma
&=-\frac1{e^2}\int\mathrm dt\,\mathrm d^2z
\left[
E_{y,i}\delta\alpha_i
+F_{ya,i}\delta q_i^a
\right].
\end{align}$$

After obtaining the variational equations, use a gauge transformation to set \(A_t=0\); the tangential history is thereby replaced by its temporal-gauge representative. Then impose Gauss law and Coulomb gauge:

$$\begin{align}
\partial_yE_y+\partial_aE^a&=0, &
\partial_yA_y+\partial_aA^a&=0.
\end{align}$$

## Transverse Fourier Decomposition

Let

$$\begin{align}
e_{\boldsymbol m}(z)
&=\frac{\exp(i\boldsymbol p_{\boldsymbol m}\cdot\boldsymbol z)}
{\sqrt{V_\perp}},\\
\boldsymbol p_{\boldsymbol m}
&=\left(\frac{2\pi m_1}{C_1},\frac{2\pi m_2}{C_2}\right),
&\boldsymbol m&\in\mathbb Z^2.
\end{align}$$

For \(\boldsymbol p\neq0\), define

$$\begin{align}
p&=|\boldsymbol p|, &
\widehat{\boldsymbol p}&=\frac{\boldsymbol p}{p}, &
\widehat{\boldsymbol e}&=\widehat{\boldsymbol x}\times\widehat{\boldsymbol p}.
\end{align}$$

Decompose the prescribed tangential history as

$$\begin{align}
\boldsymbol q_i
&=q_{i,L}\widehat{\boldsymbol p}
+q_{i,T}\widehat{\boldsymbol e}.
\end{align}$$

The two components produce two inequivalent regional boundary problems.

## Regional Transverse Polarization

Set

$$\begin{align}
A_y&=0, &
\boldsymbol A_\perp&=\widehat{\boldsymbol e}\,
w_{i,\boldsymbol p}(t,y)e_{\boldsymbol p}(z).
\end{align}$$

Gauss law is automatic and

$$\begin{align}
\ddot w_{i,\boldsymbol p}
-\partial_y^2w_{i,\boldsymbol p}
+p^2w_{i,\boldsymbol p}&=0,\\
w_{i,\boldsymbol p}(t,0)&=0, &
w_{i,\boldsymbol p}(t,L)&=q_{i,T}(t,\boldsymbol p).
\end{align}$$

Write

$$\begin{align}
w_{i,\boldsymbol p}(t,y)
&=\frac yLq_{i,T}(t,\boldsymbol p)
+\sum_{n=1}^{\infty}c^T_{i,n\boldsymbol p}(t)u_n^D(y),\\
u_n^D(y)&=\sqrt{\frac2L}\sin(k_ny), &
k_n&=\frac{n\pi}{L}.
\end{align}$$

With

$$\begin{align}
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}, &
\kappa_{n\boldsymbol p}&=\sqrt{p^2+k_n^2},
\end{align}$$

the exact driven equations are

$$\begin{align}
\ddot c^T_{i,n\boldsymbol p}
+\kappa_{n\boldsymbol p}^2c^T_{i,n\boldsymbol p}
&=-A_n\left(\ddot q_{i,T}+p^2q_{i,T}\right).
\end{align}$$

The exact retarded solutions are

$$\begin{align}
c^T_{i,n\boldsymbol p}(t)
={}&c^{T(0)}_{i,n\boldsymbol p}
\cos\kappa_{n\boldsymbol p}(t-t_i)
+\frac{\dot c^{T(0)}_{i,n\boldsymbol p}}
{\kappa_{n\boldsymbol p}}
\sin\kappa_{n\boldsymbol p}(t-t_i)\\
&-A_n\int_{t_i}^{t}\mathrm dt'\,
\frac{\sin[\kappa_{n\boldsymbol p}(t-t')]}
{\kappa_{n\boldsymbol p}}
\left(\ddot q_{i,T}+p^2q_{i,T}\right)(t').
\end{align}$$

At fixed \(q_{i,T}\), the canonical variables are

$$\begin{align}
Q^T_{i,n\boldsymbol p}
&=\frac1e c^{T(0)}_{i,n\boldsymbol p}, &
P^T_{i,n\boldsymbol p}
&=\frac1e\dot c^{T(0)}_{i,n\boldsymbol p},
\end{align}$$

and the regional annihilation operators are

$$\begin{align}
d^T_{i,n\boldsymbol p}
&=\sqrt{\frac{\kappa_{n\boldsymbol p}}2}Q^T_{i,n\boldsymbol p}
+\frac{i}{\sqrt{2\kappa_{n\boldsymbol p}}}
P^T_{i,n\boldsymbol p}.
\end{align}$$

## Regional Longitudinal-Normal Polarization

Introduce one master function:

$$\begin{align}
A_y&=ip\,v_{i,\boldsymbol p}e_{\boldsymbol p},\\
\boldsymbol A_\perp
&=-\widehat{\boldsymbol p}\,
\partial_yv_{i,\boldsymbol p}e_{\boldsymbol p}.
\end{align}$$

Then

$$\begin{align}
\partial_yA_y+\partial_aA^a&=0,\\
E_y&=ip\,\dot v\,e_{\boldsymbol p},\\
\boldsymbol E_\perp
&=-\widehat{\boldsymbol p}\,\partial_y\dot v\,e_{\boldsymbol p},\\
\boldsymbol B
&=\widehat{\boldsymbol e}
\left(-\partial_y^2+p^2\right)v\,e_{\boldsymbol p}.
\end{align}$$

The Maxwell equations reduce to

$$\begin{align}
\ddot v_{i,\boldsymbol p}
-\partial_y^2v_{i,\boldsymbol p}
+p^2v_{i,\boldsymbol p}&=0,
\end{align}$$

with

$$\begin{align}
\partial_yv_{i,\boldsymbol p}(t,0)&=0, &
-\partial_yv_{i,\boldsymbol p}(t,L)&=q_{i,L}(t,\boldsymbol p).
\end{align}$$

Using the Neumann lifting and basis

$$\begin{align}
h_N(y)&=-\frac{y^2}{2L},\\
v_{i,\boldsymbol p}
&=h_Nq_{i,L}
+\sum_{n=0}^{\infty}c^M_{i,n\boldsymbol p}u_n^N,
\end{align}$$

the coefficients satisfy

$$\begin{align}
\ddot c^M_{i,n\boldsymbol p}
+\kappa_{n\boldsymbol p}^2c^M_{i,n\boldsymbol p}
&=-H_n(\ddot q_{i,L}+p^2q_{i,L})
+J_nq_{i,L},
\end{align}$$

where

$$\begin{align}
u_0^N&=\frac1{\sqrt L}, &
u_n^N&=\sqrt{\frac2L}\cos(k_ny),\\
H_0&=-\frac{L^{3/2}}6, &
J_0&=-\frac1{\sqrt L},\\
H_n&=-(-1)^n\frac{\sqrt2L^{3/2}}{n^2\pi^2}, &
J_n&=0,\qquad n\geq1.
\end{align}$$

The exact retarded solutions are

$$\begin{align}
c^M_{i,n\boldsymbol p}(t)
={}&c^{M(0)}_{i,n\boldsymbol p}
\cos\kappa_{n\boldsymbol p}(t-t_i)
+\frac{\dot c^{M(0)}_{i,n\boldsymbol p}}
{\kappa_{n\boldsymbol p}}
\sin\kappa_{n\boldsymbol p}(t-t_i)\\
&+\int_{t_i}^{t}\mathrm dt'\,
\frac{\sin[\kappa_{n\boldsymbol p}(t-t')]}
{\kappa_{n\boldsymbol p}}
\left[
-H_n(\ddot q_{i,L}+p^2q_{i,L})
+J_nq_{i,L}
\right](t').
\end{align}$$

For fixed \(q_{i,L}\), the homogeneous action is

$$\begin{align}
S_{i,\boldsymbol p}^{M,\mathrm{hom}}
&=\frac1{2e^2}\int\mathrm dt
\sum_{n=0}^{\infty}
\kappa_{n\boldsymbol p}^2
\left(
|\dot c^M_{i,n\boldsymbol p}|^2
-\kappa_{n\boldsymbol p}^2
|c^M_{i,n\boldsymbol p}|^2
\right).
\end{align}$$

Therefore

$$\begin{align}
Q^M_{i,n\boldsymbol p}
&=\frac{\kappa_{n\boldsymbol p}}e
c^{M(0)}_{i,n\boldsymbol p}, &
P^M_{i,n\boldsymbol p}
&=\frac{\kappa_{n\boldsymbol p}}e
\dot c^{M(0)}_{i,n\boldsymbol p},
\end{align}$$

and

$$\begin{align}
d^M_{i,n\boldsymbol p}
&=\sqrt{\frac{\kappa_{n\boldsymbol p}}2}
Q^M_{i,n\boldsymbol p}
+\frac{i}{\sqrt{2\kappa_{n\boldsymbol p}}}
P^M_{i,n\boldsymbol p}.
\end{align}$$

Thus each nonzero transverse momentum has one transverse regional oscillator for every \(n\geq1\) and one longitudinal-normal regional oscillator for every \(n\geq0\).

## Zero Transverse Momentum

For \(\boldsymbol p=0\), there are two independent tangential potentials,

$$\begin{align}
\boldsymbol A_\perp
&=w_{i,1}(t,y)\widehat{\boldsymbol z}_1
+w_{i,2}(t,y)\widehat{\boldsymbol z}_2.
\end{align}$$

Each \(w_{i,a}\) obeys the massless Dirichlet regional problem and has the modes

$$\begin{align}
u_n^D(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L}, &
\omega_n&=\frac{n\pi}{L}, &
n&\geq1.
\end{align}$$

More explicitly,

$$\begin{align}
w_{i,a}(t,y)
&=\frac yLq_{i,a}(t)
+\sum_{n=1}^{\infty}c_{i,na}(t)u_n^D(y),\\
\ddot c_{i,na}+k_n^2c_{i,na}
&=-A_n\ddot q_{i,a},\\
Q_{i,na}&=\frac1e c_{i,na}^{(0)}, &
P_{i,na}&=\frac1e\dot c_{i,na}^{(0)}.
\end{align}$$

The remaining normal potential is constant:

$$\begin{align}
A_y(t,y,z)&=\frac{a_i(t)}L.
\end{align}$$

Its exact action, momentum, and regional energies are

$$\begin{align}
S_{i,\mathrm{const}}
&=\int\mathrm dt\,
\frac{V_\perp}{2e^2L}(\dot a_i-\alpha_i)^2,\\
\nu_i&=\frac{V_\perp}{e^2L}(\dot a_i-\alpha_i),\\
H_i&=\frac{e^2L}{2V_\perp}\nu_i^2+\alpha_i\nu_i, &
\nu_i&\in\mathbb Z.
\end{align}$$

These modes complete the regional solution space.

## Glue the Quantized Regions

Use the common interface frame \(h=1\). In a different fixed \(U(1)\) sewing chart, \(h=e^{i\varphi(t,z)}\) and connection descent reads \(a_2=a_1+\mathrm d_\Gamma\varphi\); no independent edge oscillator is added. Varying the complete common connection history gives both the normal-electric and tangential-conormal transmission equations below. The Cauchy-cut gauge moment map contains only \(E_{y,1}+E_{y,2}\), so full timelike sewing is not identical to gauge reduction.

Identify

$$\begin{align}
\alpha_1&=\alpha_2=\alpha, &
\boldsymbol q_1&=\boldsymbol q_2=\boldsymbol q,
\end{align}$$

and vary the common histories. The interface equations are

$$\begin{align}
E_{y,1}+E_{y,2}&=0, &
F_{ya,1}+F_{ya,2}&=0.
\end{align}$$

### Transverse Polarization

For

$$\begin{align}
w_i(t,y)&=B_i\sin(ky)e^{-i\Omega t}, &
\Omega^2&=p^2+k^2,
\end{align}$$

the gluing equations give

$$\begin{align}
\sin(kL)(B_1-B_2)&=0,\\
k\cos(kL)(B_1+B_2)&=0.
\end{align}$$

The two branches are

$$\begin{array}{c|c|c}
\text{condition}&\text{amplitudes}&k\\ \hline
\cos(kL)=0&B_1=B_2&\dfrac{(2r+1)\pi}{2L}\\[6pt]
\sin(kL)=0&B_1=-B_2&\dfrac{r\pi}{L},\quad r\geq1 .
\end{array}
$$

Together they give

$$\begin{align}
k_r&=\frac{r\pi}{2L}, &r&=1,2,\ldots.
\end{align}$$

### Longitudinal-Normal Polarization

For

$$\begin{align}
v_i(t,y)&=B_i\cos(ky)e^{-i\Omega t},
\end{align}$$

continuity of the tangential potential and the interface equations give

$$\begin{align}
k\sin(kL)(B_1-B_2)&=0,\\
\Omega^2\cos(kL)(B_1+B_2)&=0.
\end{align}$$

The same two branches now include \(k=0\):

$$\begin{align}
k_r&=\frac{r\pi}{2L}, &r&=0,1,2,\ldots.
\end{align}$$

The connected master function is

$$\begin{align}
v_{\boldsymbol p}(x)
&=\begin{cases}
v_{1,\boldsymbol p}(x+L),&x\leq0,\\
-v_{2,\boldsymbol p}(L-x),&x\geq0.
\end{cases}
\end{align}$$

The equations above are exactly continuity of \(v_{\boldsymbol p}\) and \(\partial_xv_{\boldsymbol p}\).

### Constant Normal Variable

For \(\boldsymbol p=0\), varying \(\alpha\) gives

$$\begin{align}
\nu_1+\nu_2&=0.
\end{align}$$

With

$$\begin{align}
\nu_1&=\nu, &\nu_2&=-\nu, &a&=a_1-a_2,
\end{align}$$

the connected Hamiltonian is

$$\begin{align}
H_{\mathrm{const}}
&=\frac{e^2L}{V_\perp}\nu^2, &
\nu&\in\mathbb Z.
\end{align}$$

## Complete Connected Mode Basis

Let

$$\begin{align}
X&=x+L, &
k_r&=\frac{r\pi}{2L}, &
\Omega_{\boldsymbol p r}&=\sqrt{p^2+k_r^2}.
\end{align}$$

For \(\boldsymbol p\neq0\), the normalized transverse modes are

$$\begin{align}
\boldsymbol U^T_{\boldsymbol p r}(x,z)
&=\frac{e_{\boldsymbol p}(z)}{\sqrt L}
\widehat{\boldsymbol e}\sin(k_rX), &
r&\geq1.
\end{align}$$

The normalized longitudinal-normal modes are

$$\begin{align}
\boldsymbol U^M_{\boldsymbol p0}(x,z)
&=\frac{e_{\boldsymbol p}(z)}{\sqrt{2L}}
\widehat{\boldsymbol x},\\
\boldsymbol U^M_{\boldsymbol p r}(x,z)
&=\frac{e_{\boldsymbol p}(z)}
{\sqrt L\,\Omega_{\boldsymbol p r}}
\left[
ip\cos(k_rX)\widehat{\boldsymbol x}
+k_r\sin(k_rX)\widehat{\boldsymbol p}
\right],
&r&\geq1.
\end{align}$$

For \(\boldsymbol p=0\), choose two orthonormal tangential vectors \(\widehat{\boldsymbol z}_a\). The oscillatory modes are

$$\begin{align}
\boldsymbol U^a_{0r}(x,z)
&=\frac1{\sqrt{V_\perp L}}
\widehat{\boldsymbol z}_a\sin(k_rX), &
a&=1,2,\qquad r\geq1.
\end{align}$$

Every displayed mode satisfies

$$\begin{align}
\nabla\cdot\boldsymbol U_\lambda&=0,\\
\boldsymbol U_{\lambda,\parallel}|_{x=\pm L}&=0,\\
\nabla\times(\nabla\times\boldsymbol U_\lambda)
&=\Omega_\lambda^2\boldsymbol U_\lambda,\\
\int_{-L}^{L}\mathrm dx\int_{T^2}\mathrm d^2z\,
\boldsymbol U_\lambda^*\cdot\boldsymbol U_{\lambda'}
&=\delta_{\lambda\lambda'}.
\end{align}$$

The complete count is:

$$\begin{array}{c|c|c}
\text{transverse momentum}&\text{modes}&\text{frequency}\\ \hline
\boldsymbol p\neq0,\ r\geq1
&\boldsymbol U^T_{\boldsymbol p r},\ \boldsymbol U^M_{\boldsymbol p r}
&\sqrt{p^2+k_r^2}\\
\boldsymbol p\neq0,\ r=0
&\boldsymbol U^M_{\boldsymbol p0}
&p\\
\boldsymbol p=0,\ r\geq1
&\boldsymbol U^1_{0r},\ \boldsymbol U^2_{0r}
&k_r\\
\boldsymbol p=0,\ r=0
&a,\ \nu
&H=e^2L\nu^2/V_\perp .
\end{array}
$$

No additional physical modes remain after Gauss law and the based gauge quotient.

## Connected Quantization

For each oscillatory mode \(\lambda\), define

$$\begin{align}
Q_\lambda
&=\frac1e\int_{\Sigma}\mathrm d^3x\,
\boldsymbol U_\lambda^*\cdot\boldsymbol A,\\
P_\lambda
&=\frac1e\int_{\Sigma}\mathrm d^3x\,
\boldsymbol U_\lambda^*\cdot\dot{\boldsymbol A},\\
a_\lambda
&=\sqrt{\frac{\Omega_\lambda}{2}}Q_\lambda
+\frac{i}{\sqrt{2\Omega_\lambda}}P_\lambda.
\end{align}$$

They satisfy

$$\begin{align}
[Q_\lambda,P_{\lambda'}^\dagger]
&=i\delta_{\lambda\lambda'}, &
[a_\lambda,a_{\lambda'}^\dagger]
&=\delta_{\lambda\lambda'}.
\end{align}$$

The connected vector potential and fields are

$$\begin{align}
\boldsymbol A_{\mathrm{osc}}
&=\sum_\lambda\frac{e}{\sqrt{2\Omega_\lambda}}
\left(
a_\lambda\boldsymbol U_\lambda e^{-i\Omega_\lambda t}
+a_\lambda^\dagger\boldsymbol U_\lambda^*e^{i\Omega_\lambda t}
\right),\\
\boldsymbol E_{\mathrm{osc}}&=\dot{\boldsymbol A}_{\mathrm{osc}}, &
\boldsymbol B_{\mathrm{osc}}&=\nabla\times\boldsymbol A_{\mathrm{osc}}.
\end{align}$$

The constant normal solution is

$$\begin{align}
A_x(t,x,z)&=\frac{a(t)}{2L}, &
F_{tx}&=\frac{e^2}{V_\perp}\nu.
\end{align}$$

## Finite Common Regulator

Truncate the transverse Fourier set symmetrically and use the same radial cutoff in both regions. For the transverse polarization take \(f_A^D=(u_1^D,\ldots,u_N^D,h_D)\), \(h_D=y/L\), and

$$\begin{align}
M^{T}_{AB}
&=\frac1{e^2}\int_0^L\mathrm dy\,f_A^Df_B^D,\\
K^{T}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
\left[(f_A^D)'(f_B^D)'+p^2f_A^Df_B^D\right].
\end{align}$$

For the longitudinal-normal polarization take \(f_A^M=(u_0^N,\ldots,u_N^N,h_N)\), \(D_p=-\partial_y^2+p^2\), and

$$\begin{align}
M^{M}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
\left[p^2f_A^Mf_B^M+(f_A^M)'(f_B^M)'\right],\\
K^{M}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
(D_pf_A^M)(D_pf_B^M).
\end{align}$$

For \(p\neq0\), these are positive restrictions of the electric and magnetic quadratic forms. In the summed action, identify the two final history coefficients before variation. Retain every common coefficient \(q_T(\boldsymbol p)\), \(q_L(\boldsymbol p)\), and the constant \(\alpha\) until the generalized eigenmodes have been constructed.

## Verification Boundary

Derived here:

- all regional transverse, longitudinal-normal, and zero-momentum solutions;
- their fixed-history oscillator equations and canonical normalizations;
- the interface equations from the common \(A_t\) and \(A_a\) variations;
- both glued spectral branches;
- the complete normalized connected basis, including the \(r=0\) mode for every nonzero transverse momentum and the spatially constant normal variable;
- the connected oscillator algebra.

Assumptions: flat slab times a rectangular two-torus, compact \(U(1)\), no charged matter, fixed tangential potential at the physical walls, topologically trivial bundle for oscillatory modes, and Coulomb gauge imposed after the action and Gauss constraint are fixed.

Gauge-language check: based regional proper gauge, boundary-frame covariance, fixed transition sewing, and the glued diagonal proper gauge are kept distinct. The displayed Maxwell equations are the Abelian realization of the general relation-level policy; they do not add an uncomputed edge variable.

Not proved here: cutoff-uniform convergence of the vector Galerkin sequence, other wall conditions, charged matter, nontrivial magnetic bundles, or any equivalence between independently declared regional Fock representations.
