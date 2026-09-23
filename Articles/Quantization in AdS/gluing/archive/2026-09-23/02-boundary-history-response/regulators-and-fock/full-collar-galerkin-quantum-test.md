# Full-Collar Galerkin Quantum Test

> Status: a complete mass-lumped collar discretization, including every collar cell, is compared with an explicitly declared three-region Neumann product reference. The finite-dimensional symplectic and Bogoliubov identities are exact. At every fixed $\epsilon>0$, however, the energy-form condition number diverges as the mesh is refined and one collar-mode column of $\beta$ is analytically not in $\ell^2$. This reference prescription therefore fails before the $\epsilon\to0$ limit is taken.

## 1. Verdict

Fix $0<\epsilon<L$ and retain

$$\begin{align}
[-L,L]
&=[-L,-\epsilon]\cup[-\epsilon,\epsilon]\cup[\epsilon,L]
\end{align}$$

as three genuine regions. A common cell-centered Galerkin lattice gives the connected theory and the declared regional reference theory the same finite phase-space dimension. The collar contains $2\epsilon/h$ independent cells; no collar mode and no interface Ritz value is removed.

The finite-dimensional comparison is canonical. Nevertheless, the natural product prescription obtained by cutting the two bonds at $x=\pm\epsilon$ does **not** have a Hilbert--Schmidt continuum Bogoliubov block. The obstruction is already present in the spatially constant Neumann mode of the collar:

$$\begin{align}
\sum_{\substack{r\leq R\\r\ \mathrm{odd}}}
|\beta_{r0}|^2
&=
\frac{1}{4\pi m\epsilon}\log R+O(1).
\end{align}$$

Thus, in the required order of limits,

$$\begin{align}
\epsilon>0\ \text{fixed},
\qquad N\to\infty,
\qquad \text{then }\epsilon\to0,
\end{align}$$

the first limit already fails the Shale--Stinespring test. Positive collar width by itself does not select a satisfactory product complex structure. A different split prescription must correlate or smoothly interpolate the fields across the two collar boundaries.

This is a negative result for the declared three-region Neumann product state, not a no-go theorem for all collar split states.

## 2. Declared Complete-Collar Regulator

Divide $[-L,L]$ into $N$ equal cells of width

$$\begin{align}
h&=\frac{2L}{N}
\end{align}$$

and use the cell values

$$\begin{align}
\boldsymbol q&=(q_1,\ldots,q_N)^{\mathrm T}
\end{align}$$

as configuration variables. The collar boundaries lie on cell edges, so

$$\begin{align}
N_C&:=\frac{2\epsilon}{h}\in\mathbb N,
&N-N_C&\in2\mathbb N.
\end{align}$$

The mass-lumped kinetic term is

$$\begin{align}
\frac12\dot{\boldsymbol q}^{\mathrm T}M_N\dot{\boldsymbol q},
&\qquad
M_N=h\mathbf1_N.
\end{align}$$

Let $B_N$ be the discrete difference matrix. Its internal rows are

$$\begin{align}
(B_N\boldsymbol q)_j&=q_{j+1}-q_j,
\end{align}$$

while the two outer rows are $\sqrt2q_1$ and $\sqrt2q_N$. The factor $\sqrt2$ implements the physical outer Dirichlet condition over the two half cells. The connected stiffness matrix is

$$\begin{align}
K_{G,N}
&=\frac1hB_N^{\mathrm T}B_N+m^2M_N.
\end{align}$$

Every internal bond, including every bond inside the collar, is retained.

## 3. Declared Three-Region Reference

The collar width alone does not specify a product state. For a concrete falsifiable benchmark, remove only the two difference rows crossing $x=-\epsilon$ and $x=+\epsilon$. If $W_{N,\epsilon}$ is diagonal with zeros on those two rows and ones elsewhere, define

$$\begin{align}
K_{R,N,\epsilon}
&=\frac1hB_N^{\mathrm T}W_{N,\epsilon}B_N+m^2M_N.
\end{align}$$

This is the direct sum of:

1. a Dirichlet--Neumann left exterior chain;
2. a Neumann--Neumann collar chain containing all $N_C$ collar cells;
3. a Neumann--Dirichlet right exterior chain.

For $m>0$, all three blocks are positive. Their ground states define the declared regional product Gaussian state. This prescription is natural for a bond cut, but it is not selected canonically by the algebraic split property.

## 4. Exact Mass Spectrum

The mass spectrum is

$$\begin{align}
\operatorname{spec}M_N&=\{h,\ldots,h\},
&\operatorname{cond}M_N&=1.
\end{align}$$

Equivalently, $M_N/h=\mathbf1_N$. Hence no coefficient-mass degeneration analogous to the point-port inertia $\rho_N\sim N^{-1}$ occurs. Any continuum failure below comes from comparing the two energy forms and complex structures, not from losing collar kinetic degrees of freedom.

## 5. Exact Finite-Dimensional Symplectic Map

Set

$$\begin{align}
C_{G,N}&=M_N^{-1/2}K_{G,N}M_N^{-1/2},
&C_{R,N,\epsilon}&=M_N^{-1/2}K_{R,N,\epsilon}M_N^{-1/2}.
\end{align}$$

Choose orthogonal eigenvector matrices

$$\begin{align}
O_G^{\mathrm T}C_{G,N}O_G&=\Omega_N^2,
&O_R^{\mathrm T}C_{R,N,\epsilon}O_R&=\omega_{N,\epsilon}^2,
\end{align}$$

where $\Omega_N$ and $\omega_{N,\epsilon}$ are positive diagonal frequency matrices. With canonical momentum

$$\begin{align}
\boldsymbol p&=M_N\dot{\boldsymbol q},
\end{align}$$

define the two normal-coordinate systems

$$\begin{align}
\boldsymbol Q_A&=O_A^{\mathrm T}M_N^{1/2}\boldsymbol q,
&\boldsymbol P_A&=O_A^{\mathrm T}M_N^{-1/2}\boldsymbol p,
&A&=G,R.
\end{align}$$

Their overlap is

$$\begin{align}
U_{N,\epsilon}&=O_G^{\mathrm T}O_R,
&U_{N,\epsilon}^{\mathrm T}U_{N,\epsilon}&=\mathbf1_N,
\end{align}$$

and

$$\begin{align}
\begin{pmatrix}\boldsymbol Q_G\\
\boldsymbol P_G\end{pmatrix}
&=
S_{N,\epsilon}
\begin{pmatrix}\boldsymbol Q_R\\
\boldsymbol P_R\end{pmatrix},
&
S_{N,\epsilon}
&=
\begin{pmatrix}
U_{N,\epsilon}&0\\
0&U_{N,\epsilon}
\end{pmatrix}.
\end{align}$$

Therefore

$$\begin{align}
S_{N,\epsilon}^{\mathrm T}J_0S_{N,\epsilon}&=J_0
\end{align}$$

exactly. This is a symplectic identification of the common finite phase space. It does not intertwine $H_R$ and $H_G$, because those are deliberately different quadratic Hamiltonians.

## 6. Bogoliubov Matrices

Let $a_G$ and $a_R$ be the annihilation operators selected by the two positive Hamiltonians. Then

$$\begin{align}
\boldsymbol a_G
&=\alpha_{N,\epsilon}\boldsymbol a_R
+\beta_{N,\epsilon}\boldsymbol a_R^\dagger,
\end{align}$$

with

$$\begin{align}
\alpha_{N,\epsilon}
&=\frac12\left(
\Omega_N^{1/2}U_{N,\epsilon}\omega_{N,\epsilon}^{-1/2}
+\Omega_N^{-1/2}U_{N,\epsilon}\omega_{N,\epsilon}^{1/2}
\right),
\\
\beta_{N,\epsilon}
&=\frac12\left(
\Omega_N^{1/2}U_{N,\epsilon}\omega_{N,\epsilon}^{-1/2}
-\Omega_N^{-1/2}U_{N,\epsilon}\omega_{N,\epsilon}^{1/2}
\right).
\end{align}$$

At every finite $(N,\epsilon)$,

$$\begin{align}
\alpha\alpha^{\mathrm T}-\beta\beta^{\mathrm T}&=\mathbf1_N,
&\alpha\beta^{\mathrm T}-\beta\alpha^{\mathrm T}&=0.
\end{align}$$

Thus the finite-dimensional transformation has a metaplectic implementer. This statement alone says nothing about the limit of $\|\beta_{N,\epsilon}\|_{\mathrm{HS}}$.

## 7. Energy-Topology Condition Number

Let $\boldsymbol b_L$ and $\boldsymbol b_R$ be the two deleted difference rows. Then

$$\begin{align}
K_{G,N}
&=K_{R,N,\epsilon}
+\frac1h\left(
\boldsymbol b_L\boldsymbol b_L^{\mathrm T}
+\boldsymbol b_R\boldsymbol b_R^{\mathrm T}
\right).
\end{align}$$

Consequently, the generalized form comparison has $N-2$ eigenvalues equal to one. The remaining two are controlled by the boundary Green matrix of the disconnected reference operator.

Write $a=L-\epsilon$. In the continuum reference problem, the exterior Dirichlet--Neumann boundary Green value is

$$\begin{align}
G_{DN}(a,a)&=\frac{\tanh(ma)}m.
\end{align}$$

For the Neumann--Neumann collar of length $2\epsilon$,

$$\begin{align}
G_{NN}(0,0)&=G_{NN}(2\epsilon,2\epsilon)
=\frac{\coth(2m\epsilon)}m,
\\
G_{NN}(0,2\epsilon)&=\frac{\operatorname{csch}(2m\epsilon)}m.
\end{align}$$

Using

$$\begin{align}
\coth(2z)+\operatorname{csch}(2z)&=\coth z,
\\
\coth(2z)-\operatorname{csch}(2z)&=\tanh z,
\end{align}$$

the larger boundary eigenvalue is

$$\begin{align}
s_{\max}(\epsilon)
&=\frac1m\left[
\tanh(m(L-\epsilon))+\coth(m\epsilon)
\right].
\end{align}$$

The energy-form condition number therefore obeys

$$\begin{align}
\kappa_E(N,\epsilon)
&=\frac{s_{\max}(\epsilon)}h+O(1),
&N&\to\infty,
\end{align}$$

for fixed $\epsilon>0$. The two forms are not uniformly equivalent. Moreover,

$$\begin{align}
s_{\max}(\epsilon)
&=\frac1{m^2\epsilon}+O(1),
&\epsilon&\to0.
\end{align}$$

The second limit worsens the coefficient rather than repairing it.

## 8. Analytic Non-Hilbert--Schmidt Column

The collar reference operator has the normalized constant mode

$$\begin{align}
v_0(x)
&=\frac1{\sqrt{2\epsilon}}\mathbf1_{[-\epsilon,\epsilon]}(x),
&\omega_0&=m.
\end{align}$$

As an element of $L^2([-L,L])$, this mode is discontinuous at both collar boundaries. For the connected Dirichlet modes

$$\begin{align}
e_r(x)&=\frac1{\sqrt L}\sin[k_r(x+L)],
&k_r&=\frac{r\pi}{2L},
&\Omega_r&=\sqrt{m^2+k_r^2},
\end{align}$$

the overlap is

$$\begin{align}
O_{r0}
&=\frac{2\sin(k_rL)\sin(k_r\epsilon)}
{k_r\sqrt{2\epsilon L}}.
\end{align}$$

It vanishes for even $r$. For odd $r$,

$$\begin{align}
|\beta_{r0}|^2
&=\frac{O_{r0}^2}{4}
\left(\sqrt{\frac{\Omega_r}{m}}
-\sqrt{\frac{m}{\Omega_r}}\right)^2
\\
&=\frac{\sin^2\left(\frac{r\pi\epsilon}{2L}\right)}
{\pi m\epsilon\,r}+O(r^{-2}).
\end{align}$$

For $0<\epsilon<L$,

$$\begin{align}
\sum_{\substack{r\leq R\\r\ \mathrm{odd}}}
\frac{\sin^2\left(\frac{r\pi\epsilon}{2L}\right)}r
&=\frac14\log R+O(1).
\end{align}$$

Indeed, write $\sin^2z=(1-\cos2z)/2$. The odd harmonic sum contributes $\frac14\log R$, while the cosine-weighted odd harmonic sum converges for $0<\epsilon<L$. Hence

$$\begin{align}
\sum_{\substack{r\leq R\\r\ \mathrm{odd}}}|\beta_{r0}|^2
&=\frac{1}{4\pi m\epsilon}\log R+O(1).
\end{align}$$

A single column of the continuum creation block is not in $\ell^2$. Therefore the full $\beta_\epsilon$ is not Hilbert--Schmidt for any fixed $\epsilon>0$ under this product prescription.

## 9. Numerical Results at $L=m=1$

For $\epsilon=1/4$:

| $N$ | collar cells | $\kappa_E$ | $h\kappa_E$ | $\|\beta_{N,\epsilon}\|_{\mathrm{HS}}^2$ | collar constant column |
|---:|---:|---:|---:|---:|---:|
| $64$ | $16$ | $151.003$ | $4.71885$ | $2.33338$ | $1.15412$ |
| $128$ | $32$ | $301.972$ | $4.71832$ | $3.07661$ | $1.37453$ |
| $256$ | $64$ | $603.927$ | $4.71818$ | $3.91743$ | $1.59510$ |
| $512$ | $128$ | $1207.846$ | $4.71815$ | $4.85568$ | $1.81572$ |

The analytic coefficient is

$$\begin{align}
s_{\max}(1/4)
&=\tanh(3/4)+\coth(1/4)
=4.718137\ldots.
\end{align}$$

The continuum collar-column doubling slopes are:

| $\epsilon$ | final measured slope | $1/(4\pi\epsilon)$ |
|---:|---:|---:|
| $1/2$ | $0.159146$ | $0.159155$ |
| $1/4$ | $0.318292$ | $0.318310$ |
| $1/8$ | $0.636584$ | $0.636620$ |

The full finite-matrix Hilbert--Schmidt sums also grow throughout the tested $N=64,128,256,512$ window. No asymptotic coefficient for the full two-index sum is claimed; the analytic single-column lower bound already decides non-implementability.

## 10. Ordered-Limit Verdict

The requested order gives:

1. fix $\epsilon>0$;
2. refine the complete collar lattice, $N\to\infty$;
3. test energy-form control and the Hilbert--Schmidt property;
4. only if both pass, study $\epsilon\to0$.

For the declared reference, Step 3 fails twice:

$$\begin{align}
\kappa_E(N,\epsilon)&\sim\frac{s_{\max}(\epsilon)}h\to\infty,
\\
\sum_r|\beta_{r0}|^2&=\infty.
\end{align}$$

The $\epsilon\to0$ quantum comparison is therefore not defined in this representation. A table at fixed $N$ with decreasing $\epsilon$ cannot override this ordered-limit obstruction.

## 11. What Failed and What Remains Open

The failure is caused by sharply turning a connected field into a product of three Neumann theories. The collar constant mode is extended by zero and therefore jumps at $x=\pm\epsilon$. Retaining all collar modes removes the finite-dimensional port mismatch, but it does not smooth those two new cuts.

A viable collar split prescription would have to specify a different complex structure or covariance that:

1. keeps the collar degrees of freedom;
2. correlates the collar with the exterior theories near both boundaries;
3. agrees with the desired exterior state away from the collar;
4. yields a bounded comparison on a declared energy or graph topology;
5. has Hilbert--Schmidt $\beta_\epsilon$ at every fixed $\epsilon>0$.

The algebraic split property suggests that such interpolating states may exist under additional hypotheses, but it does not select one. `smooth-interface-gaussian-regulator.md` tests the minimal explicitly smooth alternative without introducing a third tensor factor. A normalized lower-order interface potential has equivalent energy norms and Hilbert--Schmidt creation block at every finite coupling, including its finite-strength point-interaction limit. This supplies a controlled connected Gaussian bridge, but not a split state. Its exact-decoupling strong-coupling limit is singular and non-Hilbert--Schmidt. The remaining collar problem is therefore narrower: specify an actual type-I split factor and a correlated state adapted to it, rather than infer factorization from smoothness alone.

## Verified

- The complete-collar mass matrix $M_N=h\mathbf1_N$ and its condition number one.
- The exact finite-dimensional symplectic map between connected and regional normal coordinates.
- The finite-dimensional Bogoliubov identities for the declared connected and three-region Hamiltonians.
- The rank-two energy-form comparison and the coefficient $s_{\max}(\epsilon)$.
- The exact collar-constant-mode overlap and its logarithmically divergent Bogoliubov column.
- `numerics/full_collar_galerkin_checks.wl` returns exit code zero and `AllChecksPassed -> True`.

## Assumptions

- $L>0$, $m>0$, $0<\epsilon<L$, physical outer Dirichlet conditions, and a centered collar.
- Cell-centered mass lumping with collar boundaries on cell edges.
- The declared reference state is the product of Dirichlet--Neumann, Neumann--Neumann, and Neumann--Dirichlet ground states.
- Displayed finite-matrix data use $L=m=1$ and machine-precision symmetric eigensystems through $N=512$.

## Not Verified

- Hilbert--Schmidt implementability for a smoothly correlated collar split state.
- Uniform energy or graph-topology control for any alternative split covariance.
- A preferred type-I factor or canonical split state supplied by the collar geometry alone.
- The $\epsilon\to0$ limit of a successful fixed-$\epsilon$ split construction.
- Full exterior entropy, Rényi entropy, modular Hamiltonian, or mutual information.
