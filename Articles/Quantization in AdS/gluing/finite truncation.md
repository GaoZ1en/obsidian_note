# Finite-Mode Truncation Check: Gluing Two Neumann Intervals

Companion note to `continuous theory I` and to the script `finite_truncation.wl`. All numbers below are for $\displaystyle{L=\pi}$, $\displaystyle{m=1}$, and were produced by `wolframscript -file finite_truncation.wl`.

## 1. The Question

A colleague asks: *in 1+1 dimensions, for a massive free scalar, if one canonically quantizes the two intervals $\displaystyle{I_{1}=[-L,0]}$ and $\displaystyle{I_{2}=[0,L]}$ separately with Neumann boundary conditions, truncates each to a finite number of modes, then glues the two systems by adding a boundary interaction at $\displaystyle{x=0}$ and diagonalizes the truncated Hamiltonian — does this numerically reproduce the spectrum of the fully glued field theory?*

The concrete version of the idea is: expand the gluing Hamiltonian in the *decoupled* Neumann modes, truncate, and diagonalize the resulting finite quadratic form. This note records the check. The answer is **yes**, provided the boundary term is entered with the sign dictated by the covariant phase space (CPS) formalism.

## 2. Setup: the Decoupled Neumann Modes

The decoupled Neumann theory on each interval has the normalized modes ($\displaystyle{n=0,1,2,\dots}$, $n=0$ the constant mode)

$$\begin{align}
k_{n}=\frac{n\pi}{L},\qquad \omega_{n}=\sqrt{m^{2}+k_{n}^{2}},\qquad \omega_{0}=m,
\end{align}$$

with $\displaystyle{u_{1,n}(x)=\sqrt{2/L}\cos(k_{n}(x+L))}$ on $I_1$ and $\displaystyle{u_{2,n}(x)=\sqrt{2/L}\cos(k_{n}x)}$ on $I_2$.

## 3. The Glued Theory (Covariant Phase Space Conventions)

The interaction is $\displaystyle{S_{\mathrm{int}}=-\frac{\kappa}{2} (\phi_{1}-\phi_{2})^{2}\big|_{x=0}}$. Reading the interface conditions off the variation of the total action by a direct integration by parts ($\displaystyle{-\int_{I_1}\phi_{1}'\delta\phi_{1}'\,\ni\,-\phi_{1}'\delta\phi_{1}|_{0}}$, $\displaystyle{-\int_{I_2}\phi_{2}'\delta\phi_{2}'\,\ni\,+\phi_{2}'\delta\phi_{2}|_{0}}$), they read

$$\begin{align}
\phi_{1}'(0)=\phi_{2}'(0)=-\kappa\big(\phi_{1}(0)-\phi_{2}(0)\big).
\end{align}$$

The exact spectrum of this interface problem is:

- **even tower**: $\displaystyle{\omega_{n}}$, $n=0,1,2,\dots$, independent of $\kappa$ (the modes with $\phi_1(0)=\phi_2(0)$ have $[\phi]=0$ and hence $\phi_i'(0)=0$, i.e. they are exactly the decoupled Neumann modes, including the constant mode $n=0$);
- **odd tower**: $\displaystyle{\tan(kL)=+\frac{2\kappa}{k}}$, unique root in
  $\displaystyle{\big((n-1)\tfrac{\pi}{L},\,(n-\tfrac12)\tfrac{\pi}{L}\big)}$, $n=1,2,\dots$.

The gluing Hamiltonian is the CPS Noether charge of time translation, $H_t=X_t\cdot\theta-\alpha_t$ with $X_t\cdot\theta=\sum_i\int_{I_i}dx\,\dot\phi_i^2$ and $\alpha_t=L$ (since $X_t\cdot\delta S=[L]^{t_f}_{t_i}$), i.e.

$$\begin{align}
H=E_{\mathrm{bulk}}+\frac{\kappa}{2}\big(\phi_{1}(0)-\phi_{2}(0)\big)^{2},
\end{align}$$

which is **positive definite**. Both limits are smooth: $\kappa\to0$ gives the two decoupled Neumann theories (both constant modes recovered), $\kappa\to\infty$ gives a single Neumann interval on $\displaystyle{[-L,L]}$.

## 4. The Truncated Diagonalization

Expand the fields in the decoupled modes, $\displaystyle{\phi_{i}(x)=\sum_{n=0}^{N}Q_{i,n}u_{i,n}(x)}$, with canonical $[Q_{i,n},P_{j,m}]=i\delta_{ij}\delta_{nm}$. Restricted to the truncated space the gluing Hamiltonian is the quadratic form

$$\begin{align}
H_{N}=\frac12\sum_{i,n}P_{i,n}^{2}+\frac12\,Q^{\mathrm{T}}\big(\mathrm{diag}(\omega_{n}^{2})+\kappa\,cc^{\mathrm{T}}\big)Q,
\end{align}$$

where $\displaystyle{c}$ collects the boundary values $\displaystyle{u_{i,n}(0)}$ of the modes (with the relative sign for $\displaystyle{\phi_{1}-\phi_{2}}$). The truncated normal-mode frequencies are $\displaystyle{\sqrt{\mathrm{eig}(M)}}$ for the $\displaystyle{2(N+1)\times2(N+1)}$ mass matrix $M=\mathrm{diag}(\omega^2)+\kappa cc^{\mathrm{T}}$.

The even combinations $\displaystyle{s_{n}=(Q_{1,n}+(-1)^{n}Q_{2,n})/\sqrt2}$ decouple from the interaction identically, so the even tower is $\displaystyle{\omega_{n}}$ *exactly* at every $N$. Only the difference combinations $\displaystyle{d_{n}=(Q_{1,n}-(-1)^{n}Q_{2,n})/\sqrt2}$ feel the interaction.

## 5. Results

The truncated mass matrix is positive definite, every eigenvalue is real and positive, and the truncated frequencies reproduce the exact glued spectrum, with the even tower exact and the odd tower converging (here $\displaystyle{\kappa=1}$):

$$\begin{align}
N=10:\quad & |\Delta\omega|=\{\,0,\;0.0028,\;0,\;0.013,\;0\,\}\\
N=40:\quad & |\Delta\omega|=\{\,0,\;0.00072,\;0,\;0.0033,\;0\,\}
\end{align}$$

ordered by increasing frequency. There is **no spurious mode**: the lowest truncated frequency is exactly $\displaystyle{\omega_{0}=1}$. The agreement at $\displaystyle{\kappa=0.1,\,1,\,5}$ is of the same quality. This is the affirmative answer to the advisor's question.

## 6. Convergence Rate

The odd tower converges linearly in the truncation size, $\displaystyle{|\Delta\omega|\approx 0.028/N}$ at $\displaystyle{\kappa=1}$
(E.g. $0.0028,0.00072,0.00024,0.000096$ at $N=10,40,120,300$). This is a boundary-layer effect: every decoupled Neumann basis function has $\displaystyle{u'_{i,n}(0)=0}$, whereas the glued odd eigenfunctions have $\displaystyle{\phi'_{i}(0)=-\kappa(\phi_{1}(0)-\phi_{2}(0))\neq0}$. The derivative jump at the interface is built up from high-frequency modes, so the Galerkin error decays only like $1/N$ rather than exponentially. The even tower, whose modes already satisfy $\displaystyle{\phi'(0)=0}$, is unaffected.

## 7. A Cautionary Note on the Boundary-Term Sign

The sign of the interface term in the Hamiltonian matters. If one instead diagonalizes $E_{\mathrm{bulk}}-\frac{\kappa}{2}(\phi_1-\phi_2)^2|_{0}$ — which is *not* the CPS charge and does not follow from the action with the interface conditions above — the truncated quadratic form becomes indefinite: a spurious mode appears below the physical spectrum, real for small $\displaystyle{\kappa}$ and *tachyonic* (imaginary frequency) above a threshold, e.g. $\displaystyle{\kappa=1}$: $\omega_{\mathrm{sp}}^2\approx-2.9$, $\displaystyle{\kappa=5}$: $\omega_{\mathrm{sp}}^2\approx-89$ (for $L=\pi,m=1$). The flipped sign corresponds to the opposite sign of the interface term in the action (interface conditions $\phi_i'(0)=+\kappa[\phi]$, spectrum $\tan(kL)=-2\kappa/k$), which is the source of the "missing antisymmetric constant mode" and the "tachyonic truncation" that would arise if the boundary term were written with the opposite orientation convention. The CPS sign is the one that makes the truncated computation clean.

## 8. Companion Script

`finite_truncation.wl` reproduces all numbers above: it builds the decoupled Neumann basis, constructs the truncated mass matrix for both signs of the boundary term, diagonalizes it, compares with the exact interlaced CPS spectrum, and tracks the convergence of the odd tower and the spurious mode of the flipped-sign case. Run with

```bash
wolframscript -file finite_truncation.wl
```
