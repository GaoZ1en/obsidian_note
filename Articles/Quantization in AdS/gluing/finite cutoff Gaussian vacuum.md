# Finite-Cutoff Gaussian Vacuum

This note constructs the global vacuum of the reduced $2N$-mode feedback regulator as a squeezed state over a product regional reference state. It uses the reduced canonical variables of `finite cutoff canonical gluing.md`; the fixed-source momenta and fixed-source operators are not reused after gluing.

## 1. Left and right reduced canonical variables

Collect the symmetric and antisymmetric reduced coordinates as

$$\begin{align}
\boldsymbol c_{\mathrm{pm}}&=(\boldsymbol c_+,\boldsymbol c_-)^{\mathrm T}, &
\boldsymbol p_{\mathrm{pm}}&=(\boldsymbol p_+,\boldsymbol p_-)^{\mathrm T}.
\end{align}$$

The orthogonal parity matrix

$$\begin{align}
H_{\mathrm{lr}}&=\dfrac1{\sqrt2}
\begin{pmatrix}\mathbf1_N&\mathbf1_N\\
\mathbf1_N&-\mathbf1_N\end{pmatrix}
\end{align}$$

defines left and right reduced variables by

$$\begin{align}
\boldsymbol c_{\mathrm{lr}}&=H_{\mathrm{lr}}\boldsymbol c_{\mathrm{pm}}, &
\boldsymbol p_{\mathrm{lr}}&=H_{\mathrm{lr}}\boldsymbol p_{\mathrm{pm}}.
\end{align}$$

Because the same orthogonal matrix acts on coordinates and momenta, these variables obey

$$\begin{align}
[c_{i,n},p_{j,m}]&=i\delta_{ij}\delta_{nm}.
\end{align}$$

Here $\boldsymbol p_+=(M_+\dot{\boldsymbol c}_+)$, so $\boldsymbol p_{1,2}$ are not the fixed-source velocities $\boldsymbol v_{1,2}$. This distinction is what makes the following regional operators compatible with the reduced CCR.

## 2. Product regional reference state

Let

$$\begin{align}
\Omega_{\mathrm D}&=\operatorname{diag}(\omega_1,\ldots,\omega_N,
\omega_1,\ldots,\omega_N), &
\omega_n^2&=m^2+k_n^2.
\end{align}$$

Define the reduced regional annihilation operators

$$\begin{align}
\boldsymbol b&=\dfrac1{\sqrt2}
\left(\Omega_{\mathrm D}^{1/2}\boldsymbol c_{\mathrm{lr}}
+i\Omega_{\mathrm D}^{-1/2}\boldsymbol p_{\mathrm{lr}}\right).
\end{align}$$

They satisfy $[b_A,b_B^\dagger]=\delta_{AB}$, where $A=(i,n)$. The product reference state is

$$\begin{align}
\ket{0_{\mathrm D}^{(N)}}&=\ket{0_1^{(N)}}\otimes
\ket{0_2^{(N)}}, &
b_A\ket{0_{\mathrm D}^{(N)}}&=0.
\end{align}$$

This state is a chosen zero-mean Gaussian reference for the reduced regional CCR. It is not a claim that the nonconstant prescribed-history regional problem has a stationary vacuum.

## 3. Bogoliubov matrices

Let $T_N$ be the configuration-space map from the interlaced global coordinates to $(\boldsymbol c_+,\boldsymbol c_-)$, as defined in `finite cutoff canonical gluing.md`. Set

$$\begin{align}
C_N&=H_{\mathrm{lr}}T_N.
\end{align}$$

The global and regional variables obey

$$\begin{align}
\boldsymbol c_{\mathrm{lr}}&=C_N\boldsymbol Q, &
\boldsymbol p_{\mathrm{lr}}&=C_N^{-\mathrm T}\boldsymbol P,\\
\boldsymbol Q&=C_N^{-1}\boldsymbol c_{\mathrm{lr}}, &
\boldsymbol P&=C_N^{\mathrm T}\boldsymbol p_{\mathrm{lr}}.
\end{align}$$

With

$$\begin{align}
\Omega_N&=\operatorname{diag}(\Omega_{1,N},\ldots,\Omega_{2N,N}),\\
\boldsymbol a&=\dfrac1{\sqrt2}
\left(\Omega_N^{1/2}\boldsymbol Q
+i\Omega_N^{-1/2}\boldsymbol P\right),
\end{align}$$

one obtains

$$\begin{align}
\boldsymbol a&=\boldsymbol\alpha_N\boldsymbol b
+\boldsymbol\beta_N\boldsymbol b^\dagger,\\
\boldsymbol\alpha_N&=\dfrac12\left(
\Omega_N^{1/2}C_N^{-1}\Omega_{\mathrm D}^{-1/2}
+\Omega_N^{-1/2}C_N^{\mathrm T}\Omega_{\mathrm D}^{1/2}
\right),\\
\boldsymbol\beta_N&=\dfrac12\left(
\Omega_N^{1/2}C_N^{-1}\Omega_{\mathrm D}^{-1/2}
-\Omega_N^{-1/2}C_N^{\mathrm T}\Omega_{\mathrm D}^{1/2}
\right).
\end{align}$$

The finite-dimensional symplectic identity is equivalent to

$$\begin{align}
\boldsymbol\alpha_N\boldsymbol\alpha_N^\dagger
-\boldsymbol\beta_N\boldsymbol\beta_N^\dagger&=\mathbf1_{2N},\\
\boldsymbol\alpha_N\boldsymbol\beta_N^{\mathrm T}
-\boldsymbol\beta_N\boldsymbol\alpha_N^{\mathrm T}&=0.
\end{align}$$

## 4. Squeezed global vacuum

Define

$$\begin{align}
\boldsymbol Z_N&=\boldsymbol\alpha_N^{-1}\boldsymbol\beta_N.
\end{align}$$

The canonical identities imply

$$\begin{align}
\boldsymbol Z_N^{\mathrm T}&=\boldsymbol Z_N, &
\mathbf1_{2N}-\boldsymbol Z_N\boldsymbol Z_N^\dagger&>0.
\end{align}$$

The normalized squeezed state

$$\begin{align}
\ket{0_{\mathrm{global}}^{(N)}}
&=\det(\mathbf1_{2N}-\boldsymbol Z_N\boldsymbol Z_N^\dagger)^{1/4}
\exp\left[-\dfrac12\boldsymbol b^{\dagger\mathrm T}
\boldsymbol Z_N\boldsymbol b^\dagger\right]
\ket{0_{\mathrm D}^{(N)}}
\end{align}$$

obeys

$$\begin{align}
\boldsymbol a\ket{0_{\mathrm{global}}^{(N)}}&=0
\end{align}$$

because $\boldsymbol b$ acting on the exponential gives
$-\boldsymbol Z_N\boldsymbol b^\dagger$ and
$\boldsymbol\alpha_N\boldsymbol Z_N=\boldsymbol\beta_N$.

The normalization can equivalently be written as

$$\begin{align}
F_N&=\left|\braket{0_{\mathrm D}^{(N)}|0_{\mathrm{global}}^{(N)}}\right|\\
&=\det(\mathbf1_{2N}-\boldsymbol Z_N\boldsymbol Z_N^\dagger)^{1/4}
=\dfrac1{\sqrt{|\det\boldsymbol\alpha_N|}}.
\end{align}$$

If a prescribed boundary history has a nonzero classical mean, its effect is a separate Weyl displacement of this zero-mean squeezed state. The displacement does not change $\boldsymbol Z_N$ or the covariance produced by gluing.

## 5. Independent covariance check

The global vacuum covariance in global normal coordinates is

$$\begin{align}
\Sigma_{\mathrm g}&=\dfrac12\operatorname{diag}
(\Omega_N^{-1},\Omega_N).
\end{align}$$

In left-right reduced variables it is

$$\begin{align}
\Sigma_{\mathrm{lr}}&=
\begin{pmatrix}C_N&0\\0&C_N^{-\mathrm T}\end{pmatrix}
\Sigma_{\mathrm g}
\begin{pmatrix}C_N^{\mathrm T}&0\\0&C_N^{-1}\end{pmatrix}.
\end{align}$$

All matrices in the interval regulator can be chosen real. The covariance obtained directly from the squeezed state is block diagonal, with

$$\begin{align}
\Sigma_{qq}^{(Z)}&=\dfrac12\Omega_{\mathrm D}^{-1/2}
(\mathbf1+\boldsymbol Z_N)^{-1}(\mathbf1-\boldsymbol Z_N)
\Omega_{\mathrm D}^{-1/2},\\
\Sigma_{pp}^{(Z)}&=\dfrac12\Omega_{\mathrm D}^{1/2}
(\mathbf1-\boldsymbol Z_N)^{-1}(\mathbf1+\boldsymbol Z_N)
\Omega_{\mathrm D}^{1/2},\\
\Sigma_{qp}^{(Z)}&=0.
\end{align}$$

The script verifies

$$\begin{align}
\Sigma_{\mathrm{lr}}&=\Sigma^{(Z)}.
\end{align}$$

Thus the squeezed-state covariance agrees with the vacuum covariance obtained directly from the global Hamiltonian.

## 6. Regulated diagnostics

The regional occupation matrix and excitation energy are

$$\begin{align}
\mathcal N_N&=\braket{\boldsymbol b^\dagger\boldsymbol b}
=\boldsymbol\beta_N^\dagger\boldsymbol\beta_N,\\
N_{\mathrm{regional}}^{(N)}&=\operatorname{Tr}\mathcal N_N,\\
E_{\mathrm{regional}}^{(N)}&=
\operatorname{Tr}(\Omega_{\mathrm D}\mathcal N_N).
\end{align}$$

They are reproduced independently from the covariance:

$$\begin{align}
\mathcal N_N={}&\dfrac12\left(
\Omega_{\mathrm D}^{1/2}\Sigma_{qq}\Omega_{\mathrm D}^{1/2}
+\Omega_{\mathrm D}^{-1/2}\Sigma_{pp}\Omega_{\mathrm D}^{-1/2}
-\mathbf1_{2N}\right),\\
E_{\mathrm{regional}}^{(N)}={}&\dfrac12\operatorname{Tr}
(\Sigma_{pp}+\Omega_{\mathrm D}^2\Sigma_{qq})
-\dfrac12\operatorname{Tr}\Omega_{\mathrm D}.
\end{align}$$

The vacuum overlap is also reproduced from the two pure covariances:

$$\begin{align}
F_N&=\det(\Sigma_{\mathrm D}+\Sigma_{\mathrm{lr}})^{-1/4}, &
\Sigma_{\mathrm D}&=\dfrac12\operatorname{diag}
(\Omega_{\mathrm D}^{-1},\Omega_{\mathrm D}).
\end{align}$$

For $L=m=1$, the finite-cutoff values are

| $N$ | $F_N$ | $\operatorname{Tr}(\beta_N^\dagger\beta_N)$ | $E_{\mathrm{regional}}^{(N)}$ |
|---:|---:|---:|---:|
| 2 | $3.442354\times10^{-1}$ | $1.937505\times10^1$ | $1.107742\times10^2$ |
| 4 | $5.789390\times10^{-2}$ | $1.045974\times10^2$ | $1.088895\times10^3$ |
| 8 | $5.237101\times10^{-4}$ | $6.396173\times10^2$ | $1.263798\times10^4$ |
| 16 | $3.457601\times10^{-9}$ | $4.304222\times10^3$ | $1.657126\times10^5$ |
| 32 | $7.621759\times10^{-22}$ | $3.098287\times10^4$ | $2.357106\times10^6$ |
| 64 | $7.323290\times10^{-52}$ | $2.330050\times10^5$ | $3.526578\times10^7$ |

An extended 50-digit calculation at $N=128$ gives

$$\begin{align}
F_{128}&=2.040710\times10^{-121},\\
N_{\mathrm{regional}}^{(128)}&=1.799779\times10^6,\\
E_{\mathrm{regional}}^{(128)}&=5.435811\times10^8.
\end{align}$$

The successive effective powers

$$\begin{align}
p_X(N)&=\dfrac{\log[X_N/X_{N/2}]}{\log2}
\end{align}$$

approach $p_N=3$ for the particle number and $p_E=4$ for the energy. At the largest pair $(64,128)$ they are approximately $2.95$ and $3.95$. Thus the numerical sequence supports

$$\begin{align}
N_{\mathrm{regional}}^{(N)}&\sim N^3, &
E_{\mathrm{regional}}^{(N)}&\sim N^4
\end{align}$$

for this regulator. These powers are numerical asymptotics, not regulator-independent continuum observables.

### 6.1 Analytic overlap bound

The antisymmetric sector is a passive identity transformation with the same frequencies on the regional and global sides, so only the $N$ symmetric modes contribute to $\boldsymbol\beta_N$. Since $U^{\mathrm T}M_+U=\mathbf1_N$,

$$\begin{align}
|\det U|&=(\det M_+)^{-1/2}.
\end{align}$$

The matrix determinant lemma and $A_n^2k_n^2=2/L$ give the exact identity

$$\begin{align}
\det M_+&=\det D\left(1+L\boldsymbol v^{\mathrm T}D^{-1}\boldsymbol v\right)\\
&=\left(\dfrac{\pi}{L}\right)^{2N}(N!)^2(1+2N).
\end{align}$$

In the active symmetric sector, factor

$$\begin{align}
\boldsymbol\alpha_+
&=\dfrac12\Omega_+^{1/2}U^{-1}\Omega_{\mathrm D}^{-1/2}
(\mathbf1_N+X_N),\\
X_N&=\Omega_{\mathrm D}^{1/2}U\Omega_+^{-1}
U^{\mathrm T}\Omega_{\mathrm D}^{1/2}>0.
\end{align}$$

It follows that

$$\begin{align}
F_N&=2^{N/2}\left(\dfrac{\det\Omega_{\mathrm D}}
{\det\Omega_+}\right)^{1/4}
(\det M_+)^{-1/4}\det(\mathbf1_N+X_N)^{-1/2}.
\end{align}$$

The $j$th feedback zero lies between the adjacent regional poles, so

$$\begin{align}
1<\dfrac{\det\Omega_{\mathrm D}}{\det\Omega_+}
<\dfrac{\omega_N}{m}.
\end{align}$$

Using $\det(\mathbf1_N+X_N)\geq1$ therefore gives

$$\begin{align}
F_N&\leq
2^{N/2}\left(\dfrac{L}{\pi}\right)^{N/2}
\dfrac{(\omega_N/m)^{1/4}}
{\sqrt{N!}(1+2N)^{1/4}}.
\end{align}$$

Stirling's formula proves

$$\begin{align}
\log F_N&\leq-\dfrac12N\log N+O(N),
\end{align}$$

so the regulated overlap tends to zero.

### 6.2 Hilbert--Schmidt and energy conclusions

The canonical identity gives

$$\begin{align}
F_N&=\det(\mathbf1+\boldsymbol\beta_N
\boldsymbol\beta_N^\dagger)^{-1/4}.
\end{align}$$

Since $\log(1+x)\leq x$ for $x\geq0$,

$$\begin{align}
\operatorname{Tr}(\boldsymbol\beta_N^\dagger\boldsymbol\beta_N)
&\geq\log\det(\mathbf1+\boldsymbol\beta_N
\boldsymbol\beta_N^\dagger)\\
&=-4\log F_N\longrightarrow\infty.
\end{align}$$

Thus the Bogoliubov antilinear part is not Hilbert--Schmidt in this sharp-interface feedback regulator, and the finite-$N$ metaplectic unitaries do not converge to a unitary equivalence of the corresponding continuum Fock representations. This is stronger than merely observing a small finite-cutoff overlap.

The regional excitation energy obeys the separate bound

$$\begin{align}
E_{\mathrm{regional}}^{(N)}
&\geq\omega_1\operatorname{Tr}
(\boldsymbol\beta_N^\dagger\boldsymbol\beta_N),
\end{align}$$

and therefore also diverges. Its observed $N^4$ growth is stronger than the observed $N^3$ Hilbert--Schmidt norm because the regional frequency weights grow with mode number.

## 7. Verification and claim boundary

The script `numerics/finite_cutoff_gaussian_vacuum.wl` checks the Bogoliubov identities, the symmetry and positivity of $\boldsymbol Z_N$, the annihilation equation, determinant normalization, covariance equality, and independent occupation, overlap and energy formulas through $N=16$. It also records the diagnostic sequence and effective exponents through $N=64$; the displayed $N=128$ point is an extended high-precision control.

Verified: the zero-mean finite-$N$ global squeezed vacuum relative to the stated reduced regional product reference, including its normalization and covariance matrix; vanishing of the regulated overlap; failure of the Hilbert--Schmidt condition in this regulator; and divergence of the regional excitation energy.

Assumptions: the reduced symplectic normalization and common regulator are those of `finite cutoff canonical gluing.md`; $L=m=1$ only for the displayed numerical table.

Not verified: a rigorous proof of the observed $N^3$ particle-number and $N^4$ energy exponents, or regulator independence of these powers.
