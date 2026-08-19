# Off-Center Interval Cut

This note repeats the interval construction for

$$\begin{align}
[-L_1,0]\cup[0,L_2],\qquad L_1\ne L_2,
\end{align}$$

without using reflection parity. It also performs a structural audit of the finite-cutoff symplectic normalization. The classical spectrum and matching problem pass the test. The audit exposes a finite-regulator normalization ambiguity which is invisible at the level of frequencies alone.

## 1. Solve the undivided homogeneous system

Use coordinates $y_i\in[0,L_i]$ measured from each outer endpoint toward the interface. For a separated mode with $k^2=\Omega^2-m^2$,

$$\begin{align}
\phi_i(y_i)&=B_i\sin(ky_i).
\end{align}$$

Continuity and oriented flux matching give the undivided system

$$\begin{align}
B_1\sin(kL_1)-q&=0,\\
B_2\sin(kL_2)-q&=0,\\
kB_1\cos(kL_1)+kB_2\cos(kL_2)&=0.
\end{align}$$

Its determinant is proportional to

$$\begin{align}
k\sin[k(L_1+L_2)].
\end{align}$$

The $k=0$ solution is treated directly and is trivial. For $k\ne0$,

$$\begin{align}
k_r&=\dfrac{r\pi}{L_1+L_2}, & r&=1,2,\ldots.
\end{align}$$

Away from regional poles one may divide by the two sines and write

$$\begin{align}
D_1(\Omega)+D_2(\Omega)&=0, &
D_i(\Omega)&=k\cot(kL_i).
\end{align}$$

This divided equation is not the complete mode condition. If
$\sin(kL_1)=\sin(kL_2)=0$, the original system has a one-dimensional solution with $q=0$ and

$$\begin{align}
B_1\cos(kL_1)+B_2\cos(kL_2)&=0.
\end{align}$$

Only common regional poles survive; a pole belonging to just one region gives the trivial solution. Thus the complete spectrum is the connected Dirichlet spectrum, including every exceptional $q=0$ mode.

## 2. Finite feedback equations without parity

Keep $N$ strict-Dirichlet modes in each region and define the $2N$-vectors and matrices

$$\begin{align}
\boldsymbol c&=(\boldsymbol c_1,\boldsymbol c_2)^{\mathrm T}, &
\boldsymbol A&=(\boldsymbol A_1,\boldsymbol A_2)^{\mathrm T},\\
D&=\operatorname{diag}(D_1,D_2), &
\boldsymbol v&=D\boldsymbol A,\\
\lambda&=\dfrac1{L_1}+\dfrac1{L_2}, &
\boldsymbol h&=\dfrac{\boldsymbol v}{\lambda}.
\end{align}$$

Here $(D_i)_{nn}=(n\pi/L_i)^2$ and

$$\begin{align}
(A_i)_n&=(-1)^{n+1}\dfrac{\sqrt{2L_i}}{n\pi}.
\end{align}$$

The oriented flux condition is

$$\begin{align}
q&=\boldsymbol h^{\mathrm T}\boldsymbol c.
\end{align}$$

Substitution into the forced regional equations gives

$$\begin{align}
R\ddot{\boldsymbol c}+(m^2R+D)\boldsymbol c&=0, &
R&=\mathbf1+\boldsymbol A\boldsymbol h^{\mathrm T}.
\end{align}$$

Multiplication by $D$ yields the symmetric positive pencil

$$\begin{align}
M_\nabla&=DR=D+\dfrac{\boldsymbol v\boldsymbol v^{\mathrm T}}{\lambda},\\
K_\nabla&=D(m^2R+D)=m^2M_\nabla+D^2.
\end{align}$$

Its characteristic equation is

$$\begin{align}
0={}&\det[D(D-k^2\mathbf1)]\\
&\times\left[1-\dfrac{2k^2}{\lambda}
\left(\dfrac1{L_1}\sum_{n=1}^N\dfrac1{k_{1,n}^2-k^2}
+\dfrac1{L_2}\sum_{n=1}^N\dfrac1{k_{2,n}^2-k^2}
\right)\right].
\end{align}$$

Away from poles this is the zero of the sum of the two truncated Dirichlet-to-Neumann responses. At a common pole the determinant retains one zero and the corresponding eigenvector obeys $q=\boldsymbol h^{\mathrm T}\boldsymbol c=0$. The script verifies explicitly the example

$$\begin{align}
(L_1,L_2)&=(4/5,6/5), & k&=5\pi/2,
\end{align}$$

where the second left pole and third right pole coincide.

## 3. What the gradient symmetrizer normalizes

For a reconstructed configuration obeying the finite flux relation,

$$\begin{align}
\phi_i(y_i)&=\boldsymbol u_i(y_i)^{\mathrm T}\boldsymbol c_i
+\dfrac{y_i}{L_i}\boldsymbol h^{\mathrm T}\boldsymbol c.
\end{align}$$

Direct integration gives

$$\begin{align}
\sum_i\int_0^{L_i}(\partial_{y_i}\phi_i)^2dy_i
&=\boldsymbol c^{\mathrm T}M_\nabla\boldsymbol c.
\end{align}$$

Thus $M_\nabla$ is exactly the spatial-gradient Gram matrix. It is not the scalar field's $L^2$ kinetic Gram matrix. The latter is

$$\begin{align}
G_{L^2}&=\mathbf1+\boldsymbol A\boldsymbol h^{\mathrm T}
+\boldsymbol h\boldsymbol A^{\mathrm T}
+\dfrac{L_1+L_2}{3}\boldsymbol h\boldsymbol h^{\mathrm T}.
\end{align}$$

At finite $N$, $G_{L^2}R^{-1}(m^2R+D)$ is not symmetric. Therefore the pullback of the ordinary scalar equal-time form is not conserved by the truncated feedback dynamics. Frequencies alone do not determine a physical finite-cutoff symplectic form.

More generally, if $U^{-1}R^{-1}(m^2R+D)U=\Omega_N^2$, then every positive diagonal matrix $W$ defines a conserved quadratic realization

$$\begin{align}
M_W&=U^{-\mathrm T}WU^{-1}, &
K_W&=M_WU\Omega_N^2U^{-1}.
\end{align}$$

Consequently the diagonal multiplier $D$ may be a convenient symmetrizer, but it is not a uniqueness theorem for the canonical quantum normalization.

## 4. A modewise $L^2$-matched canonical regulator

Let $U_\nabla$ be $M_\nabla$-orthonormal generalized eigenvectors and define

$$\begin{align}
w_r&=(U_\nabla^{\mathrm T}G_{L^2}U_\nabla)_{rr}, &
V&=U_\nabla\operatorname{diag}(w_r^{-1/2}).
\end{align}$$

Every reconstructed column of $V$ has unit $L^2$ norm. Define

$$\begin{align}
M_{L^2,\mathrm{diag}}&=V^{-\mathrm T}V^{-1},\\
K_{L^2,\mathrm{diag}}&=V^{-\mathrm T}\Omega_N^2V^{-1}.
\end{align}$$

Then

$$\begin{align}
S_N&=\begin{pmatrix}V&0\\0&V^{-\mathrm T}\end{pmatrix}, &
S_N^{\mathrm T}JS_N&=J,\\
S_N^{\mathrm T}
\begin{pmatrix}K_{L^2,\mathrm{diag}}&0\\0&M_{L^2,\mathrm{diag}}^{-1}\end{pmatrix}
S_N&=\begin{pmatrix}\Omega_N^2&0\\0&\mathbf1\end{pmatrix}.
\end{align}$$

This supplies reduced canonical variables without parity. The global Gaussian vacuum has

$$\begin{align}
\Sigma_{\mathrm g}&=\dfrac12\operatorname{diag}
(\Omega_N^{-1},\Omega_N), &
\Sigma_{\mathrm{regional}}&=S_N\Sigma_{\mathrm g}S_N^{\mathrm T}.
\end{align}$$

It is pure at every tested cutoff. With $F^{(N)}(x)=\ell(x)^{\mathrm T}V$, its Wightman function is

$$\begin{align}
W_N(t,x;t',x')&=\sum_{r=1}^{2N}
\dfrac{F_r^{(N)}(x)F_r^{(N)}(x')}{2\Omega_{r,N}}
e^{-i\Omega_{r,N}(t-t')}.
\end{align}$$

The off-diagonal entries of $V^{\mathrm T}G_{L^2}V$ are not exactly zero at finite $N$. Hence this is a modewise $L^2$-matched canonical regulator, not an exact pullback of the finite Galerkin field action. Its merit is that the defect can be measured and tends to zero in every tested fixed low-mode window.

## 5. Cut-position test

Fix the uncut interval to $[-1,1]$, take the first six modes, and compare with the exact connected modes

$$\begin{align}
g_r(x)&=\sin\left[\dfrac{r\pi(x+1)}2\right], &
\Omega_r^2&=m^2+\left(\dfrac{r\pi}2\right)^2.
\end{align}$$

For the correlator test use $m=1$, $(x,x')=(-1/2,1/2)$ and $(t,t')=(0.37,-0.21)$. The numerical results are

| $(L_1,L_2)$ | $N$ | max low-frequency error | max low-mode $L^2$ off-diagonal | six-mode $|\Delta W|$ |
|---|---:|---:|---:|---:|
| $(0.8,1.2)$ | 4 | $4.352\times10^{-1}$ | $7.615\times10^{-2}$ | $1.740\times10^{-2}$ |
|  | 8 | $2.069\times10^{-1}$ | $4.216\times10^{-2}$ | $8.486\times10^{-3}$ |
|  | 16 | $1.046\times10^{-1}$ | $2.204\times10^{-2}$ | $4.336\times10^{-3}$ |
| $(0.7,1.3)$ | 4 | $2.649\times10^{-1}$ | $6.441\times10^{-2}$ | $1.548\times10^{-2}$ |
|  | 8 | $1.350\times10^{-1}$ | $3.760\times10^{-2}$ | $6.126\times10^{-3}$ |
|  | 16 | $6.900\times10^{-2}$ | $2.014\times10^{-2}$ | $3.172\times10^{-3}$ |
| $(0.65,1.35)$ | 4 | $4.000\times10^{-1}$ | $7.366\times10^{-2}$ | $1.285\times10^{-2}$ |
|  | 8 | $1.749\times10^{-1}$ | $4.014\times10^{-2}$ | $3.592\times10^{-3}$ |
|  | 16 | $8.516\times10^{-2}$ | $2.058\times10^{-2}$ | $1.654\times10^{-3}$ |

The exact continuum spectrum is analytically independent of the cut. The finite-$N$ errors depend on the cut, but all three sequences approach the same connected low-energy spectrum and correlator. This is the correct regulated meaning of cut independence.

## 6. Audit of the centered regulator

At $L_1=L_2=L$, transform the off-center gradient metric to symmetric and antisymmetric variables. One obtains

$$\begin{align}
H_{\mathrm{lr}}M_\nabla H_{\mathrm{lr}}
=\operatorname{diag}(D+L\boldsymbol v\boldsymbol v^{\mathrm T},D).
\end{align}$$

The earlier centered construction used

$$\begin{align}
\operatorname{diag}(D+L\boldsymbol v\boldsymbol v^{\mathrm T},\mathbf1)
\end{align}$$

instead. Its pole-sector unit metric is natural from regional $L^2$ normalization, but its affected sector retained gradient normalization. The resulting hybrid choice is not the continuous centered limit of the off-center gradient regulator. The script measures an $N=4$, $L=1$ maximum matrix mismatch of $1.5691\times10^2$.

The conclusion is not that the centered finite calculation is algebraically wrong. Its symplectic and Gaussian identities remain correct for its declared hybrid regulator. The conclusion is that its vacuum overlap, particle number, entropy and Fock-limit diagnostics are regulator-specific and have not established cut-independent scalar-field quantities. A physically matched continuation should use a single declared normalization prescription, such as the modewise $L^2$ prescription above, and recompute those diagnostics.

## 7. Verification and claim boundary

The script `numerics/off_center_cut.wl` verifies with 80-digit arithmetic:

- zeros of the summed truncated Dirichlet-to-Neumann response and the common-pole $q=0$ exception;
- the connected continuum spectrum from the undivided amplitude system;
- the no-parity symplectic map, Hamiltonian intertwining and pure Gaussian covariance;
- individual $L^2$ mode normalization and the measured off-diagonal defect;
- fixed-window spectral and Wightman convergence for three cut positions;
- the continuous centered limit of the gradient metric and its mismatch with the earlier hybrid metric.

Verified: the classical off-center construction, exceptional modes, a finite no-parity canonical Gaussian regulator, and controlled fixed-window cut independence.

Assumptions: the modewise $L^2$ diagonal prescription is used to choose one canonical structure from the family allowed by the truncated feedback dynamics.

Not verified: exact equality between that finite canonical form and the pullback of the truncated scalar action, uniform ultraviolet convergence, or cut independence of the earlier hybrid-regulator vacuum diagnostics.
