# Maxwell Theory on a Cut Cylinder

Consider compact \(U(1)\) Maxwell theory on the flat spacetime

$$\begin{align}
M&=\mathbb R_t\times[-L,L]_x\times S^1_R, &
\mathrm ds^2&=-\mathrm dt^2+\mathrm dx^2+\mathrm ds^2,
\end{align}$$

where \(s=R\theta\sim s+C\) and \(C=2\pi R\). The artificial interface is \(x=0\). At \(x=\pm L\) we fix the pullback of the gauge potential,

$$\begin{align}
A_t|_{x=\pm L}&=0, &A_s|_{x=\pm L}&=0.
\end{align}$$

The calculation follows the order of `formalism.md`: prescribe the pullback on each regional interface, solve and quantize each regional Maxwell problem, identify the two prescribed histories, vary their common value, reconstruct the connected vector potential, and only then define the connected annihilation operators.

## Regional Variational Problem

Use \(y_1=x+L\) and \(y_2=L-x\), so both regional coordinates increase toward the cut. In either region write

$$\begin{align}
E_y&=\dot A_y-\partial_yA_t, &
E_s&=\dot A_s-\partial_sA_t, &
B&=\partial_yA_s-\partial_sA_y.
\end{align}$$

The action is

$$\begin{align}
S_i&=\frac1{2e^2}\int\mathrm dt\int_0^L\mathrm dy\int_0^C\mathrm ds
\left(E_y^2+E_s^2-B^2\right).
\end{align}$$

At the physical outer cylinder fix \(A_t=A_s=0\). At the cut prescribe

$$\begin{align}
A_{t,i}(t,L,s)&=\alpha_i(t,s), &
A_{s,i}(t,L,s)&=q_i(t,s),
\end{align}$$

and hold \((\alpha_i,q_i)\) fixed during regional quantization. The interface part of the variation is

$$\begin{align}
\left.\delta S_i\right|_\Gamma
&=-\frac1{e^2}\int\mathrm dt\int_0^C\mathrm ds
\left(E_{y,i}\delta\alpha_i+B_i\delta q_i\right).
\end{align}$$

After deriving this equation, use a gauge transformation to set \(A_t=0\); this also replaces \(q_i\) by the corresponding temporal-gauge representative of the same prescribed pullback. Gauss law remains

$$\begin{align}
\partial_yE_y+\partial_sE_s&=0.
\end{align}$$

We use the Coulomb representative

$$\begin{align}
\partial_yA_y+\partial_sA_s&=0.
\end{align}$$

The residual transformations used to reach this Coulomb representative equal the identity at the physical and artificial boundaries. Large transformations affecting the spatially constant mode are treated separately below.

## Nonzero Angular Momentum

Use

$$\begin{align}
e_\ell(s)&=\frac{e^{ip_\ell s}}{\sqrt C}, &
p_\ell&=\frac{\ell}{R}, &
\ell&\in\mathbb Z.
\end{align}$$

For \(\ell\neq0\), every transverse regional solution can be written in terms of one master function \(v_{i,\ell}(t,y)\):

$$\begin{align}
A_{y,i,\ell}&=ip_\ell v_{i,\ell}e_\ell, &
A_{s,i,\ell}&=-\partial_yv_{i,\ell}e_\ell.
\end{align}$$

This solves Gauss law identically. Its fields are

$$\begin{align}
E_{y,i,\ell}&=ip_\ell\dot v_{i,\ell}e_\ell,\\
E_{s,i,\ell}&=-\partial_y\dot v_{i,\ell}e_\ell,\\
B_{i,\ell}&=\left(-\partial_y^2+p_\ell^2\right)v_{i,\ell}e_\ell.
\end{align}$$

The Maxwell equations reduce to

$$\begin{align}
\ddot v_{i,\ell}-\partial_y^2v_{i,\ell}+p_\ell^2v_{i,\ell}&=0.
\end{align}$$

The outer and prescribed cut conditions are

$$\begin{align}
\partial_yv_{i,\ell}(t,0)&=0, &
-\partial_yv_{i,\ell}(t,L)&=q_{i,\ell}(t).
\end{align}$$

### Quantize at Fixed \(q_{i,\ell}\)

Choose

$$\begin{align}
h_N(y)&=-\frac{y^2}{2L}, &
h_N'(0)&=0, &
h_N'(L)&=-1
\end{align}$$

and decompose

$$\begin{align}
v_{i,\ell}(t,y)
&=h_N(y)q_{i,\ell}(t)
+\sum_{n=0}^{\infty}c_{i,n\ell}(t)u_n^N(y),\\
u_0^N(y)&=\frac1{\sqrt L},\\
u_n^N(y)&=\sqrt{\frac2L}\cos(k_ny), &
k_n&=\frac{n\pi}{L},\qquad n\geq1.
\end{align}$$

Define

$$\begin{align}
H_n&=\int_0^L\mathrm dy\,u_n^N h_N, &
J_n&=\int_0^L\mathrm dy\,u_n^N h_N'',\\
H_0&=-\frac{L^{3/2}}6, &
J_0&=-\frac1{\sqrt L},\\
H_n&=-(-1)^n\frac{\sqrt2L^{3/2}}{n^2\pi^2}, &
J_n&=0,\qquad n\geq1.
\end{align}$$

With

$$\begin{align}
\kappa_{n\ell}&=\sqrt{p_\ell^2+k_n^2},
\end{align}$$

the exact driven oscillator equations are

$$\begin{align}
\ddot c_{i,n\ell}+\kappa_{n\ell}^2c_{i,n\ell}
&=-H_n\left(\ddot q_{i,\ell}+p_\ell^2q_{i,\ell}\right)
+J_nq_{i,\ell}.
\end{align}$$

Set

$$\begin{align}
c^{(0)}_{i,n\ell}&=c_{i,n\ell}(t_i), &
v^{(0)}_{i,n\ell}&=\dot c_{i,n\ell}(t_i).
\end{align}$$

Their retarded solutions are

$$\begin{align}
c_{i,n\ell}(t)
={}&c^{(0)}_{i,n\ell}\cos\kappa_{n\ell}(t-t_i)
+\frac{v^{(0)}_{i,n\ell}}{\kappa_{n\ell}}
\sin\kappa_{n\ell}(t-t_i)\\
&+\int_{t_i}^{t}\mathrm dt'\,
\frac{\sin[\kappa_{n\ell}(t-t')]}{\kappa_{n\ell}}
\left[
-H_n(\ddot q_{i,\ell}+p_\ell^2q_{i,\ell})
+J_nq_{i,\ell}
\right](t').
\end{align}$$

For variations at fixed \(q_{i,\ell}\), the reduced action of the homogeneous coefficients is

$$\begin{align}
S_{i,\ell}^{\mathrm{hom}}
&=\frac1{2e^2}\int\mathrm dt
\sum_{n=0}^{\infty}
\kappa_{n\ell}^2
\left(
|\dot c_{i,n\ell}|^2
-\kappa_{n\ell}^2|c_{i,n\ell}|^2
\right).
\end{align}$$

Thus the canonical regional variables are

$$\begin{align}
Q_{i,n\ell}&=\frac{\kappa_{n\ell}}e c_{i,n\ell}^{(0)}, &
P_{i,n\ell}&=\frac{\kappa_{n\ell}}e v_{i,n\ell}^{(0)},
\end{align}$$

with the usual reality relations between \(\ell\) and \(-\ell\). For each positive-frequency complex mode,

$$\begin{align}
d_{i,n\ell}
&=\sqrt{\frac{\kappa_{n\ell}}2}Q_{i,n\ell}
+\frac{i}{\sqrt{2\kappa_{n\ell}}}P_{i,n\ell},\\
[d_{i,n\ell},d_{j,m\ell'}^\dagger]
&=\delta_{ij}\delta_{nm}\delta_{\ell\ell'}.
\end{align}$$

The state annihilated by these \(d_{i,n\ell}\) is a reference state for the prescribed history. When \(q_{i,\ell}(t)\) is not constant, it is not stationary.

## Angular Zero Mode

For \(\ell=0\), Gauss law separates two different variables.

First, the tangential potential

$$\begin{align}
A_s(t,y,s)&=\frac{w_i(t,y)}{\sqrt C}
\end{align}$$

obeys

$$\begin{align}
\ddot w_i-\partial_y^2w_i&=0, &
w_i(t,0)&=0, &
w_i(t,L)&=q_{i,0}(t).
\end{align}$$

This is the massless Dirichlet problem. With

$$\begin{align}
w_i(t,y)&=\frac yLq_{i,0}(t)
+\sum_{n=1}^{\infty}c_{i,n0}(t)
\sqrt{\frac2L}\sin\frac{n\pi y}{L},
\end{align}$$

its fixed-history oscillators satisfy

$$\begin{align}
\ddot c_{i,n0}+k_n^2c_{i,n0}&=-A_n\ddot q_{i,0}, &
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi}.
\end{align}$$

The canonical coordinate is \(Q_{i,n0}=c_{i,n0}/e\), its frequency is \(k_n\), and its annihilation operator is defined in the standard way.

Second, the normal potential is independent of \(y\) and \(s\):

$$\begin{align}
A_y(t,y,s)&=\frac{a_i(t)}{L}.
\end{align}$$

Its exact regional action is

$$\begin{align}
S_{i,\mathrm{const}}
&=\int\mathrm dt\,\frac{C}{2e^2L}
\left(\dot a_i-\alpha_i\right)^2.
\end{align}$$

Hence

$$\begin{align}
\nu_i&=\frac{C}{e^2L}(\dot a_i-\alpha_i), &
a_i&\sim a_i+2\pi,\\
H_i&=\frac{e^2L}{2C}\nu_i^2+\alpha_i\nu_i, &
\nu_i&\in\mathbb Z.
\end{align}$$

This exhausts the \(\ell=0\) regional solutions.

## Gluing and the Connected Spectrum

Identify

$$\begin{align}
\alpha_1&=\alpha_2=\alpha, &
q_{1,\ell}&=q_{2,\ell}=q_\ell,
\end{align}$$

and now vary the common histories. The interface equations are

$$\begin{align}
E_{y,1}+E_{y,2}&=0, &
B_1+B_2&=0.
\end{align}$$

### Nonzero \(\ell\)

For a harmonic solution

$$\begin{align}
v_{i,\ell}(t,y)&=B_i\cos(ky)e^{-i\Omega t}, &
\Omega^2&=p_\ell^2+k^2,
\end{align}$$

continuity of \(A_s\) and the two interface equations reduce to

$$\begin{align}
k\sin(kL)(B_1-B_2)&=0,\\
\Omega^2\cos(kL)(B_1+B_2)&=0.
\end{align}$$

For \(k>0\) there are two branches:

$$\begin{array}{c|c|c}
\text{condition}&\text{amplitudes}&k\\ \hline
\cos(kL)=0&B_1=B_2&\dfrac{(2r+1)\pi}{2L}\\[6pt]
\sin(kL)=0&B_1=-B_2&\dfrac{r\pi}{L}
\end{array}
$$

and \(k=0\) belongs to the second branch with \(B_1=-B_2\). Their union is

$$\begin{align}
k_r&=\frac{r\pi}{2L}, &
r&=0,1,2,\ldots.
\end{align}$$

Define the connected master function by

$$\begin{align}
v_\ell(t,x)
&=\begin{cases}
v_{1,\ell}(t,x+L),&x\leq0,\\
-v_{2,\ell}(t,L-x),&x\geq0.
\end{cases}
\end{align}$$

The gluing equations state precisely that \(v_\ell\) and \(\partial_xv_\ell\) are continuous. The complete normalized connected vector modes are

$$\begin{align}
\boldsymbol U_{\ell0}(x,s)
&=\frac{e_\ell(s)}{\sqrt{2L}}\,\widehat{\boldsymbol x},
&\Omega_{\ell0}&=|p_\ell|,\\
\boldsymbol U_{\ell r}(x,s)
&=\frac{e_\ell(s)}{\sqrt L\,\Omega_{\ell r}}
\left[
ip_\ell\cos(k_r(x+L))\,\widehat{\boldsymbol x}
+k_r\sin(k_r(x+L))\,\widehat{\boldsymbol s}
\right],
&\Omega_{\ell r}&=\sqrt{p_\ell^2+k_r^2},
\quad r\geq1.
\end{align}$$

They obey

$$\begin{align}
\nabla\cdot\boldsymbol U_{\ell r}&=0, &
\boldsymbol U_{\ell r}\cdot\widehat{\boldsymbol s}|_{x=\pm L}&=0,\\
\nabla\times(\nabla\times\boldsymbol U_{\ell r})
&=\Omega_{\ell r}^2\boldsymbol U_{\ell r}, &
\int_{-L}^{L}\mathrm dx\int_0^C\mathrm ds\,
\boldsymbol U_{\ell r}^*\cdot\boldsymbol U_{\ell'r'}
&=\delta_{\ell\ell'}\delta_{rr'}.
\end{align}$$

### \(\ell=0\)

The tangential field glues by the Dirichlet calculation of `formalism.md`. Its connected modes are

$$\begin{align}
\boldsymbol U_{0r}(x,s)
&=\frac1{\sqrt{CL}}
\sin\left[\frac{r\pi(x+L)}{2L}\right]\widehat{\boldsymbol s},\\
\Omega_{0r}&=\frac{r\pi}{2L}, &
r&=1,2,\ldots.
\end{align}$$

For the spatially constant normal potential, varying the common \(\alpha\) gives

$$\begin{align}
\nu_1+\nu_2&=0.
\end{align}$$

Set

$$\begin{align}
\nu_1&=\nu, &\nu_2&=-\nu, &a&=a_1-a_2.
\end{align}$$

The connected action and spectrum are

$$\begin{align}
S_{\mathrm{const}}
&=\int\mathrm dt\,\frac{C}{4e^2L}\dot a^2,\\
H_{\mathrm{const}}
&=\frac{e^2L}{C}\nu^2, &
\nu&\in\mathbb Z.
\end{align}$$

The corresponding classical field is

$$\begin{align}
A_x(t,x,s)&=\frac{a(t)}{2L}, &
F_{tx}&=\frac{e^2}{C}\nu.
\end{align}$$

## Connected Quantization

For every oscillatory mode define

$$\begin{align}
Q_{\ell r}&=\frac1e\int\mathrm dx\,\mathrm ds\,
\boldsymbol U_{\ell r}^*\cdot\boldsymbol A,\\
P_{\ell r}&=\frac1e\int\mathrm dx\,\mathrm ds\,
\boldsymbol U_{\ell r}^*\cdot\dot{\boldsymbol A},\\
a_{\ell r}
&=\sqrt{\frac{\Omega_{\ell r}}2}Q_{\ell r}
+\frac{i}{\sqrt{2\Omega_{\ell r}}}P_{\ell r}.
\end{align}$$

Then

$$\begin{align}
[Q_{\ell r},P_{\ell'r'}^\dagger]
&=i\delta_{\ell\ell'}\delta_{rr'}, &
[a_{\ell r},a_{\ell'r'}^\dagger]
&=\delta_{\ell\ell'}\delta_{rr'}.
\end{align}$$

The connected vector potential is

$$\begin{align}
\boldsymbol A_{\mathrm{osc}}(t,x,s)
&=\sum_{\ell\neq0}\sum_{r=0}^{\infty}
\frac{e}{\sqrt{2\Omega_{\ell r}}}
\left(
a_{\ell r}\boldsymbol U_{\ell r}e^{-i\Omega_{\ell r}t}
+a_{\ell r}^\dagger\boldsymbol U_{\ell r}^*e^{i\Omega_{\ell r}t}
\right)\\
&\quad+\sum_{r=1}^{\infty}
\frac{e}{\sqrt{2\Omega_{0r}}}
\left(
a_{0r}\boldsymbol U_{0r}e^{-i\Omega_{0r}t}
+a_{0r}^\dagger\boldsymbol U_{0r}^*e^{i\Omega_{0r}t}
\right).
\end{align}$$

Together with the periodic coordinate \(a\) and integer momentum \(\nu\), these are all connected physical modes.

## Finite Common Regulator

Choose a finite symmetric set of angular momenta and truncate every regional radial basis at the same \(N\). For a transverse Dirichlet variable use

$$\begin{align}
f_A^D&=(u_1^D,\ldots,u_N^D,h_D), &
h_D(y)&=\frac yL,
\end{align}$$

with matrices

$$\begin{align}
M^{D}_{AB}
&=\frac1{e^2}\int_0^L\mathrm dy\,f_A^Df_B^D,\\
K^{D}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
\left[(f_A^D)'(f_B^D)'+p^2f_A^Df_B^D\right].
\end{align}$$

For a nonzero-\(\ell\) longitudinal-normal variable use

$$\begin{align}
f_A^M&=(u_0^N,\ldots,u_N^N,h_N), &
D_p&=-\partial_y^2+p^2,
\end{align}$$

with

$$\begin{align}
M^{M}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
\left[p^2f_A^Mf_B^M+(f_A^M)'(f_B^M)'\right],\\
K^{M}_{AB}(p)
&=\frac1{e^2}\int_0^L\mathrm dy\,
(D_pf_A^M)(D_pf_B^M).
\end{align}$$

For \(p\neq0\), both matrices are positive on the displayed finite space. In the summed two-region action the two copies share the final history coefficient. Vary that coefficient before diagonalizing the resulting generalized eigenproblem. This retains every regional coefficient and the common history coefficient; no mode is deleted by comparing dimensions.

## Verification Boundary

Derived here:

- the complete regional solution and quantization for every \(\ell\neq0\);
- the separate \(\ell=0\) tangential oscillators and spatially constant normal variable;
- the exact interface equations obtained by varying \(A_t|_\Gamma\) and \(A_s|_\Gamma\);
- the two spectral branches and their union \(k_r=r\pi/(2L)\);
- every normalized connected vector mode and its frequency;
- the connected oscillator algebra and the integer spectrum of the spatially constant normal variable.

Assumptions: flat cylinder, compact \(U(1)\), no charged matter, fixed \(A_t=A_s=0\) at the physical walls, topologically trivial bundle for the oscillatory modes, and Coulomb gauge imposed only after the variational equations and Gauss law have been obtained.

Not proved here: cutoff-uniform convergence of the finite vector-potential regulator, equivalence of independently chosen regional Fock representations, interacting charged matter, or a different physical wall condition.
