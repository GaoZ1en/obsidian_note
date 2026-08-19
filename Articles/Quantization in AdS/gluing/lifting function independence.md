# Lifting-Function Independence

The regional decomposition

$$\begin{align}
\phi_i(t,y)&=\psi_i(t,y)+f_i(y)q(t), &
f_i(0)&=0, & f_i(L_i)&=1
\end{align}$$

uses an auxiliary lifting function. This note proves exact independence in the complete theory, exact finite-$N$ covariance when the change lies inside the retained Dirichlet span, and controlled fixed-window convergence for a general smooth change.

## 1. Feedback equations for a general lift

Let $u_{i,n}$ be the normalized strict-Dirichlet modes and define

$$\begin{align}
(a_i)_n&=\int_0^{L_i}u_{i,n}(y)f_i(y)dy,\\
(v_i)_n&=-u_{i,n}'(L_i),\\
\gamma_i&=f_i'(L_i),\\
(b_i)_n&=\int_0^{L_i}u_{i,n}(y)f_i''(y)dy.
\end{align}$$

Integration by parts gives

$$\begin{align}
\boldsymbol b_i&=\boldsymbol v_i-D_i\boldsymbol a_i.
\end{align}$$

After joining both regions into $2N$-vectors, let

$$\begin{align}
\gamma&=\gamma_1+\gamma_2, &
\boldsymbol h_f&=\dfrac{\boldsymbol v}{\gamma}.
\end{align}$$

The oriented flux condition is

$$\begin{align}
q&=\boldsymbol h_f^{\mathrm T}\boldsymbol c.
\end{align}$$

Projection of the bulk equation gives

$$\begin{align}
\ddot{\boldsymbol c}+(m^2\mathbf1+D)\boldsymbol c
&=-\boldsymbol a_f(\ddot q+m^2q)+\boldsymbol b_fq.
\end{align}$$

Eliminating $q$ therefore yields

$$\begin{align}
R_f\ddot{\boldsymbol c}+B_f\boldsymbol c&=0,\\
R_f&=\mathbf1+\boldsymbol a_f\boldsymbol h_f^{\mathrm T},\\
B_f&=m^2\mathbf1+D
+(m^2\boldsymbol a_f-\boldsymbol b_f)\boldsymbol h_f^{\mathrm T}.
\end{align}$$

For the linear lift $f_i=y/L_i$, one has
$\boldsymbol a_f=D^{-1}\boldsymbol v$, $\boldsymbol b_f=0$ and
$\gamma=L_1^{-1}+L_2^{-1}$, recovering `off-center interval cut.md`.

## 2. Exact change of coordinates

Let another lift be

$$\begin{align}
g_i&=f_i-s_i, & s_i(0)&=s_i(L_i)=0.
\end{align}$$

In the complete Dirichlet basis write

$$\begin{align}
s_i(y)&=\sum_n(s_i)_nu_{i,n}(y).
\end{align}$$

Equality of the reconstructed field requires

$$\begin{align}
\boldsymbol c_g&=\boldsymbol c_f+\boldsymbol s q
=T_{gf}\boldsymbol c_f,\\
T_{gf}&=\mathbf1+\boldsymbol s\boldsymbol h_f^{\mathrm T}.
\end{align}$$

Because $s_i'(L_i)=-\boldsymbol v_i^{\mathrm T}\boldsymbol s_i$,

$$\begin{align}
\gamma_g&=\gamma_f+\boldsymbol v^{\mathrm T}\boldsymbol s, &
\boldsymbol h_g^{\mathrm T}T_{gf}&=\boldsymbol h_f^{\mathrm T}.
\end{align}$$

The second identity proves that the operator-valued interface history is unchanged. Direct substitution gives

$$\begin{align}
R_g^{-1}B_gT_{gf}&=T_{gf}R_f^{-1}B_f.
\end{align}$$

Thus the spectrum and time evolution are conjugate. The cotangent lift

$$\begin{align}
S_{gf}&=\begin{pmatrix}T_{gf}&0\\0&T_{gf}^{-\mathrm T}\end{pmatrix}
\end{align}$$

is symplectic. For any canonical realization $(M_f,K_f)$ of the first feedback system,

$$\begin{align}
M_g&=T_{gf}^{-\mathrm T}M_fT_{gf}^{-1}, &
K_g&=T_{gf}^{-\mathrm T}K_fT_{gf}^{-1}
\end{align}$$

defines the equivalent realization of the second. Hence the reduced CCR and Gaussian covariance are related by an ordinary canonical coordinate change.

## 3. Reconstructed observables

Let $\ell_f(x)^{\mathrm T}$ be the regional field-evaluation row. Equality of the fields is

$$\begin{align}
\ell_g(x)^{\mathrm T}T_{gf}&=\ell_f(x)^{\mathrm T}.
\end{align}$$

It follows immediately that

$$\begin{align}
T_{gf}^{\mathrm T}G_{L^2,g}T_{gf}&=G_{L^2,f},
\end{align}$$

and that the Dirichlet-to-Neumann response, connected spectrum, modewise $L^2$ normalization, global covariance and all field correlators are unchanged. The verification script checks these identities exactly at finite $N$ for a change consisting of a retained left first mode plus a retained right second mode.

## 4. Generic smooth changes at finite cutoff

For a generic $s_i$, only its projection $P_Ns_i$ can be absorbed into the retained coefficients. The difference between the two reconstructed fields is the tail

$$\begin{align}
(s_i-P_Ns_i)q.
\end{align}$$

The boundary derivative trace is more singular than the bulk $L^2$ norm. Therefore convergence of $P_Ns_i$ in $L^2$ alone is insufficient; enough regularity is needed for

$$\begin{align}
(P_Ns_i)'(L_i)&\longrightarrow s_i'(L_i).
\end{align}$$

This is also why an all-mode coefficient maximum is not a meaningful convergence norm for the interface trace. The controlled statement uses a fixed low-energy window or smeared observables.

The numerical test changes only the left lift by

$$\begin{align}
s_1(y)&=\epsilon\dfrac y{L_1}\left(1-\dfrac y{L_1}\right), &
\epsilon&=0.1,\\
s_2(y)&=0, & (L_1,L_2)&=(0.8,1.2).
\end{align}$$

Its sine coefficients are

$$\begin{align}
(s_1)_n&=\epsilon\sqrt{2L_1}\,
\dfrac{2[1-(-1)^n]}{(n\pi)^3}.
\end{align}$$

For the first two reconstructed modes, the first four frequencies, and the first four terms of the Wightman function at the same separated points used in `off-center interval cut.md`, the defects are

| $N$ | interface-trace defect | low-frequency defect | reconstructed-field defect | four-mode $|\Delta W|$ |
|---:|---:|---:|---:|---:|
| 2 | $9.6185\times10^{-3}$ | $5.5321\times10^{-3}$ | $5.4275\times10^{-3}$ | $3.5297\times10^{-4}$ |
| 4 | $5.1863\times10^{-3}$ | $2.9723\times10^{-3}$ | $3.0885\times10^{-3}$ | $1.7038\times10^{-4}$ |
| 8 | $2.6707\times10^{-3}$ | $1.5212\times10^{-3}$ | $1.5836\times10^{-3}$ | $8.1974\times10^{-5}$ |
| 16 | $1.3510\times10^{-3}$ | $7.6610\times10^{-4}$ | $8.1583\times10^{-4}$ | $4.2836\times10^{-5}$ |
| 32 | $6.7885\times10^{-4}$ | $3.8395\times10^{-4}$ | $4.0877\times10^{-4}$ | $2.1240\times10^{-5}$ |

All four fixed-window defects decrease monotonically. The data are consistent with the expected $O(N^{-1})$ derivative-trace convergence for this smooth polynomial change.

## 5. Verification and claim boundary

The script `numerics/lifting_function_independence.wl` verifies:

- exact finite-span conjugacy of the feedback dynamics;
- preservation of the interface history and reconstructed $L^2$ Gram matrix;
- the cotangent-lift symplectic identity and Hamiltonian intertwining;
- equality of reconstructed fields and Wightman functions;
- decreasing trace, spectrum, field and correlator defects for a smooth infinite-tail change.

Verified: exact lifting independence in the complete theory and for retained-span changes, plus controlled fixed-window independence for the tested smooth change.

Assumptions: lifting functions have enough regularity for the boundary derivative trace to converge, and both calculations use the same canonical normalization prescription.

Not verified: uniform convergence over all ultraviolet modes or lifting independence for nonsmooth functions outside the boundary-trace domain.
