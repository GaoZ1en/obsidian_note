# Finite-Cutoff Regional Entanglement

This note restricts the global vacuum of the $2N$-mode feedback regulator to either set of reduced left or right canonical variables. Every statement is at fixed cutoff. A sharp-cut continuum entropy is not assigned without a separate ultraviolet analysis.

## 1. Regional covariance matrices

Use the left-right canonical ordering

$$\begin{align}
\boldsymbol z_{\mathrm{lr}}&=(\boldsymbol c_1,\boldsymbol c_2,
\boldsymbol p_1,\boldsymbol p_2)^{\mathrm T}
\end{align}$$

and the global-vacuum covariance $\Sigma_{\mathrm{lr}}$ constructed in `finite cutoff Gaussian vacuum.md`. The left and right phase-space coordinates are

$$\begin{align}
\boldsymbol z_1&=(\boldsymbol c_1,\boldsymbol p_1)^{\mathrm T}, &
\boldsymbol z_2&=(\boldsymbol c_2,\boldsymbol p_2)^{\mathrm T}.
\end{align}$$

After reordering the full covariance into subsystem order, write

$$\begin{align}
\Sigma_{12}&=
\begin{pmatrix}
\Sigma_1&C_{12}\\
C_{12}^{\mathrm T}&\Sigma_2
\end{pmatrix}.
\end{align}$$

The regional Gaussian states have zero mean and covariances $\Sigma_1$ and $\Sigma_2$.

## 2. Symplectic spectrum and entropies

Let

$$\begin{align}
J_N&=\begin{pmatrix}0&\mathbf1_N\\-\mathbf1_N&0\end{pmatrix}.
\end{align}$$

The symplectic eigenvalues $\nu_j$ are the positive eigenvalues of $|iJ_N\Sigma_1|$. The uncertainty relation requires

$$\begin{align}
\nu_j&\geq\dfrac12.
\end{align}$$

The von Neumann and Rényi entropies are

$$\begin{align}
S_1&=\sum_{j=1}^N\left[
(\nu_j+\tfrac12)\log(\nu_j+\tfrac12)
-(\nu_j-\tfrac12)\log(\nu_j-\tfrac12)
\right],\\
S_1^{(\alpha)}&=\dfrac1{\alpha-1}\sum_{j=1}^N
\log\left[(\nu_j+\tfrac12)^\alpha
-(\nu_j-\tfrac12)^\alpha\right].
\end{align}$$

The full finite-$N$ global state is pure, so the left and right symplectic spectra agree and

$$\begin{align}
S_1&=S_2, &
I(1:2)&=S_1+S_2-S_{12}=2S_1.
\end{align}$$

## 3. Gaussian modular Hamiltonian

The centered regional density matrix can be written

$$\begin{align}
\rho_1&=Z_1^{-1}\exp\left[-\dfrac12
\boldsymbol z_1^{\mathrm T}G_1\boldsymbol z_1\right].
\end{align}$$

In the convention $[z_{1,a},z_{1,b}]=i(J_N)_{ab}$, its modular matrix is

$$\begin{align}
G_1&=2iJ_N\operatorname{arccoth}(2i\Sigma_1J_N).
\end{align}$$

The inverse relation is

$$\begin{align}
\Sigma_1&=\dfrac{i}{2}
\operatorname{coth}\left(\dfrac{i}{2}J_NG_1\right)J_N.
\end{align}$$

At every tested cutoff $G_1$ is real, symmetric and positive definite. The numerical check evaluates the inverse matrix function by high-precision eigendecomposition to avoid instability from nearly repeated eigenvalues.

## 4. Purity and cross-region correlations

The full covariance satisfies

$$\begin{align}
\Sigma_{12}J_{2N}\Sigma_{12}&=\dfrac14J_{2N}.
\end{align}$$

In regional blocks this gives

$$\begin{align}
\Sigma_1J_N\Sigma_1+C_{12}J_NC_{12}^{\mathrm T}
&=\dfrac14J_N,\\
\Sigma_1J_NC_{12}+C_{12}J_N\Sigma_2&=0.
\end{align}$$

These identities show directly that the reduced covariance fails the pure-state identity because $C_{12}$ is nonzero. The same cross-region covariance which appears in the field correlators therefore controls the mixedness of either regional state.

## 5. Numerical values

For $L=m=1$ the first fixed-cutoff results are

| $N$ | left symplectic eigenvalues | $S_1$ | $S_1^{(2)}$ | $I(1:2)$ |
|---:|---|---:|---:|---:|
| 1 | $\{1.13619\}$ | $1.09333$ | $0.820826$ | $2.18666$ |
| 2 | $\{1.01606,2.07639\}$ | $2.69304$ | $2.13286$ | $5.38608$ |
| 4 | $\{0.981943,1.79416,2.65139,3.99202\}$ | $6.85676$ | $5.69829$ | $13.7135$ |
| 8 | $\{0.966483,1.75017,2.55418,3.36651,4.18695,5.02019,5.88286,7.91890\}$ | $17.4852$ | $15.1091$ | $34.9704$ |

The growth with $N$ is expected for a sharp interface, but these values do not yet define a cutoff-independent continuum entropy.

## 6. Verification and claim boundary

The script `numerics/finite_cutoff_entanglement.wl` checks $N=1,2,4,8$ with 80-digit arithmetic. It verifies:

- purity and the uncertainty relation for the full covariance;
- positivity and mixedness of each reduced covariance;
- equality of the left and right symplectic spectra;
- the von Neumann, Rényi-2 and mutual-information formulas;
- reality, symmetry and positivity of the modular matrix;
- reconstruction of $\Sigma_1$ from $G_1$;
- both purity block identities involving $C_{12}$.

Verified: the finite-$N$ reduced regional Gaussian states, their symplectic spectra, entanglement and Rényi-2 entropies, mutual information, and Gaussian modular Hamiltonian.

Assumptions: the subsystem split uses the reduced left-right canonical variables defined by the common feedback regulator.

Not verified: a regulator-independent sharp-cut entropy, a continuum modular Hamiltonian, or an area-law coefficient.
