# Three-Region Associativity

This note cuts one Dirichlet interval into three consecutive regions of lengths $L_1,L_2,L_3$ and compares

$$\begin{align}
(\Sigma_1\cup\Sigma_2)\cup\Sigma_3
\qquad\text{with}\qquad
\Sigma_1\cup(\Sigma_2\cup\Sigma_3).
\end{align}$$

Both constructions use the same $N$ strict-Dirichlet modes per region, the same two interface histories, and the same final coordinate ordering. Associativity is the equality of two Schur-complement elimination orders.

## 1. Three regional fields

Use a global coordinate from the left outer boundary. Let $q_1$ and $q_2$ be the values at the first and second cuts. In local left-to-right coordinates,

$$\begin{align}
\phi_1(y)&=\boldsymbol u_1(y)^{\mathrm T}\boldsymbol c_1
+\dfrac y{L_1}q_1,\\
\phi_2(y)&=\boldsymbol u_2(y)^{\mathrm T}\boldsymbol c_2
+\left(1-\dfrac y{L_2}\right)q_1+\dfrac y{L_2}q_2,\\
\phi_3(y)&=\boldsymbol u_3(y)^{\mathrm T}\boldsymbol c_3
+\left(1-\dfrac y{L_3}\right)q_2.
\end{align}$$

The two values are shared from the start, so continuity is built into the reconstruction.

## 2. Coupled interface equation

Let

$$\begin{align}
\boldsymbol v_i^{\mathrm R}&=-\boldsymbol u_i'(L_i), &
\boldsymbol v_i^{\mathrm L}&=\boldsymbol u_i'(0).
\end{align}$$

Continuity of the global spatial derivative at both cuts gives

$$\begin{align}
\Lambda\boldsymbol q&=B\boldsymbol c, &
\boldsymbol q&=(q_1,q_2)^{\mathrm T},
\end{align}$$

with

$$\begin{align}
\Lambda&=
\begin{pmatrix}
L_1^{-1}+L_2^{-1}&-L_2^{-1}\\
-L_2^{-1}&L_2^{-1}+L_3^{-1}
\end{pmatrix},\\
B&=\begin{pmatrix}
(\boldsymbol v_1^{\mathrm R})^{\mathrm T}&
(\boldsymbol v_2^{\mathrm L})^{\mathrm T}&0\\
0&(\boldsymbol v_2^{\mathrm R})^{\mathrm T}&
(\boldsymbol v_3^{\mathrm L})^{\mathrm T}
\end{pmatrix}.
\end{align}$$

Since all $L_i$ are positive, $\Lambda$ is positive definite and

$$\begin{align}
\boldsymbol q&=H\boldsymbol c, & H&=\Lambda^{-1}B.
\end{align}$$

## 3. The two Schur orders

Write

$$\begin{align}
\Lambda&=\begin{pmatrix}a&b\\b&d\end{pmatrix}, &
B&=\begin{pmatrix}B_1\\B_2\end{pmatrix}.
\end{align}$$

Eliminating $q_1$ first gives

$$\begin{align}
H_2^{(1)}&=\dfrac{B_2-(b/a)B_1}{d-b^2/a}, &
H_1^{(1)}&=\dfrac{B_1-bH_2^{(1)}}a.
\end{align}$$

Eliminating $q_2$ first gives

$$\begin{align}
H_1^{(2)}&=\dfrac{B_1-(b/d)B_2}{a-b^2/d}, &
H_2^{(2)}&=\dfrac{B_2-bH_1^{(2)}}d.
\end{align}$$

Direct algebra yields

$$\begin{align}
\begin{pmatrix}H_1^{(1)}\\H_2^{(1)}\end{pmatrix}
=\Lambda^{-1}B
=\begin{pmatrix}H_1^{(2)}\\H_2^{(2)}\end{pmatrix}.
\end{align}$$

This is the finite-dimensional form of associativity. No limiting argument is required for equality of the two orders.

## 4. Common feedback dynamics

Let $A$ be the $3N\times2$ matrix of overlaps with the two piecewise-linear hat functions. Projecting the regional field equations gives

$$\begin{align}
(\mathbf1+AH)\ddot{\boldsymbol c}
+[m^2(\mathbf1+AH)+D]\boldsymbol c&=0.
\end{align}$$

Because both Schur orders give the same $H$, they give the same feedback dynamics and spectrum before any canonical normalization is chosen.

The reconstructed $L^2$ Gram matrix is

$$\begin{align}
G_{L^2}&=\mathbf1+AH+H^{\mathrm T}A^{\mathrm T}
+H^{\mathrm T}QH,\\
Q&=\begin{pmatrix}
(L_1+L_2)/3&L_2/6\\
L_2/6&(L_2+L_3)/3
\end{pmatrix}.
\end{align}$$

The off-diagonal entry $L_2/6$ is the overlap of the two hat functions in the middle region.

## 5. Canonical map, vacuum and correlators

Use the same modewise $L^2$ prescription as in `off-center interval cut.md`. If $V$ is the matrix of individually $L^2$-normalized feedback modes, define

$$\begin{align}
M&=V^{-\mathrm T}V^{-1}, &
K&=V^{-\mathrm T}\Omega_N^2V^{-1},\\
S_N&=\begin{pmatrix}V&0\\0&V^{-\mathrm T}\end{pmatrix}.
\end{align}$$

Then

$$\begin{align}
S_N^{\mathrm T}JS_N&=J, &
S_N^{\mathrm T}\operatorname{diag}(K,M^{-1})S_N
&=\operatorname{diag}(\Omega_N^2,\mathbf1).
\end{align}$$

The two gluing orders have the same $V$ up to signs and changes of basis inside any degenerate eigenspace. Therefore they have the same global spectrum, regional quadratic Hamiltonian, pure global-vacuum covariance and reconstructed field correlators. In the common nondegenerate numerical ordering, the covariance matrices and Wightman functions agree directly.

A metaplectic operator was not separately constructed. If lifts of the two finite symplectic compositions are chosen, their equality in the symplectic group implies equality up to the usual overall metaplectic sign, which has no effect on the covariance or correlators.

## 6. Numerical convergence

Take

$$\begin{align}
(L_1,L_2,L_3)&=(0.6,0.7,0.7), & m&=1.
\end{align}$$

The total length is $2$. Compare the first six modes and the six-mode Wightman function at

$$\begin{align}
(x,x')&=(0.3,1.7), & (t,t')&=(0.37,-0.21)
\end{align}$$

with the uncut Dirichlet interval. The two gluing orders agree to the displayed numerical precision at every cutoff. Their common continuum errors are

| $N$ per region | max low-frequency error | six-mode $|\Delta W|$ |
|---:|---:|---:|
| 2 | $6.5182\times10^{-1}$ | $1.5658\times10^{-2}$ |
| 4 | $3.5666\times10^{-1}$ | $7.6263\times10^{-3}$ |
| 8 | $1.8724\times10^{-1}$ | $4.2948\times10^{-3}$ |
| 16 | $9.6064\times10^{-2}$ | $2.2488\times10^{-3}$ |

Both errors decrease monotonically. Thus order independence is exact at fixed regulator, while convergence to the uncut physical answer is a separate fixed-window statement.

## 7. Verification and claim boundary

The script `numerics/three_region_associativity.wl` checks $N=2,4,8,16$ with 80-digit arithmetic. It verifies:

- equality of the two Schur-complement interface maps;
- equality of the feedback dynamics and spectrum;
- symplecticity and Hamiltonian intertwining for both constructions;
- equality of the global-vacuum regional covariance matrices;
- equality of the reconstructed Wightman functions;
- decreasing fixed-window errors relative to the uncut interval.

Verified: finite-regulator associativity of the classical feedback reduction, canonical map, Gaussian covariance and two-point function in the stated common regulator.

Assumptions: both grouping orders use identical regional cutoffs, lifting functions, canonical normalization and final coordinate ordering.

Not verified: a regulator-independent metaplectic phase, uniform ultraviolet associativity, or interacting-theory associativity.
