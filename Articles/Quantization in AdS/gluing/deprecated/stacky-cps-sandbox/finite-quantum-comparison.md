# Finite Quantum Comparison on the Reduced CCR

> Status: exact at every fixed $N$ for the strong-flux constrained Galerkin regulator, after declaring a symplectic transport of the regional product reference structure. The relation to the naive retarded truncation and convergence of this particular transport are not proved. `continuum-endpoints.md` separately proves Fock failure for the natural parity-resolved continuum comparison.

## 1. Verdict

The finite-dimensional quantization problem has a precise solution, but not by treating the old regional coefficient brackets as unchanged.

1. The physical coefficient space carries the reduced symplectic matrix $J_{M_N}$, not the fixed-source product matrix $J_0$.
2. A regional product Fock reference can be put on this CCR only after choosing a symplectic transport. The positive-square-root transport below is explicit and preserves the regional oscillator labels in the resulting Darboux coordinates.
3. Relative to that declared reference, the global Galerkin vacuum is an exact finite squeezed state with computable Bogoliubov matrices.
4. Keeping the product covariance on the same coefficient labels without transporting it is not a canonical operation. In the tested sequence it violates the reduced uncertainty relation for every $N\geq2$.

Thus finite metaplectic compatibility is established for one explicit presentation. It does not yet prove that the chosen family of transports has a Fock-implementable continuum limit or that it is the unique physically preferred comparison.

## 2. Physical and Reference Phase Spaces

Let

$$
\boldsymbol x
:=
\begin{pmatrix}
\boldsymbol c\\
\boldsymbol v
\end{pmatrix}
\in\mathbb R^{4N}.
$$

For the strong-flux constrained Galerkin regulator of `finite-regulator-compatibility.md`, the physical symplectic matrix is

$$
J_{M_N}
=
\begin{pmatrix}
0&-M_N\\
M_N&0
\end{pmatrix}.
$$

The Darboux coordinates are

$$
\boldsymbol Q=M_N^{1/2}\boldsymbol c,
\qquad
\boldsymbol P=M_N^{1/2}\boldsymbol v.
$$

Let

$$
W_N
:=
\operatorname{diag}
(\omega_1,\ldots,\omega_N,\omega_1,\ldots,\omega_N),
\qquad
\omega_n=\sqrt{m^2+k_n^2},
$$

be the frequency matrix of the two decoupled regional Dirichlet oscillator families.

### Definition 2.1 — Transported Regional Product Reference

Start with canonical regional product coordinates $(\boldsymbol Q_{\mathrm D},\boldsymbol P_{\mathrm D})$ and map them into the physical coefficient space by

$$
T_N^{\mathrm{ref}}
=
\begin{pmatrix}
M_N^{-1/2}&0\\
0&M_N^{-1/2}
\end{pmatrix},
$$

so that

$$
\boldsymbol c=M_N^{-1/2}\boldsymbol Q_{\mathrm D},
\qquad
\boldsymbol v=M_N^{-1/2}\boldsymbol P_{\mathrm D}.
$$

It obeys

$$
\left(T_N^{\mathrm{ref}}\right)^{\mathrm T}
J_{M_N}T_N^{\mathrm{ref}}
=J_0.
$$

In the physical Darboux coordinates one simply has

$$
(\boldsymbol Q,\boldsymbol P)
=(\boldsymbol Q_{\mathrm D},\boldsymbol P_{\mathrm D}).
$$

This makes the meaning of “regional product reference” explicit: the product complex structure is transported to the reduced CCR. The transport changes the physical coefficient labels by $M_N^{-1/2}$; it is not the identity map on $(\boldsymbol c,\boldsymbol v)$.

The corresponding annihilation operators are

$$
\boldsymbol b
=\frac1{\sqrt2}
\left(
W_N^{1/2}\boldsymbol Q
+iW_N^{-1/2}\boldsymbol P
\right).
$$

## 3. Global Galerkin Complex Structure

Recall

$$
\mathcal K_N
=M_N^{-1/2}K_NM_N^{-1/2}.
$$

Choose a real orthogonal $O_N$ and a positive diagonal frequency matrix $\widetilde W_N$ such that

$$
O_N^{\mathrm T}\mathcal K_NO_N
=\widetilde W_N^2.
$$

The global normal coordinates and annihilation operators are

$$
\boldsymbol{\mathsf Q}=O_N^{\mathrm T}\boldsymbol Q,
\qquad
\boldsymbol{\mathsf P}=O_N^{\mathrm T}\boldsymbol P,
$$

and

$$
\boldsymbol a
=\frac1{\sqrt2}
\left(
\widetilde W_N^{1/2}\boldsymbol{\mathsf Q}
+i\widetilde W_N^{-1/2}\boldsymbol{\mathsf P}
\right).
$$

The Hamiltonian is exactly

$$
H_{\mathrm{red},N}
=\frac12
\left(
\boldsymbol{\mathsf P}^{\mathrm T}\boldsymbol{\mathsf P}
+\boldsymbol{\mathsf Q}^{\mathrm T}
\widetilde W_N^2\boldsymbol{\mathsf Q}
\right).
$$

This is an identity on the same constrained Galerkin regulator, not a comparison of its frequencies with those of the naive retarded truncation.

## 4. Exact Bogoliubov Transformation

Substitution of the regional reference quadratures gives

$$
\boldsymbol a
=\boldsymbol\alpha_N\boldsymbol b
+\boldsymbol\beta_N\boldsymbol b^\dagger,
$$

where

$$
\boldsymbol\alpha_N
=\frac12
\left(
\widetilde W_N^{1/2}O_N^{\mathrm T}W_N^{-1/2}
+\widetilde W_N^{-1/2}O_N^{\mathrm T}W_N^{1/2}
\right),
$$

and

$$
\boldsymbol\beta_N
=\frac12
\left(
\widetilde W_N^{1/2}O_N^{\mathrm T}W_N^{-1/2}
-\widetilde W_N^{-1/2}O_N^{\mathrm T}W_N^{1/2}
\right).
$$

### Theorem 4.1 — Fixed-$N$ Canonical and Gaussian Compatibility

For every finite $N$:

$$
\boldsymbol\alpha_N\boldsymbol\alpha_N^\dagger
-\boldsymbol\beta_N\boldsymbol\beta_N^\dagger
=\mathbf1,
$$

and

$$
\boldsymbol\alpha_N\boldsymbol\beta_N^{\mathrm T}
=\boldsymbol\beta_N\boldsymbol\alpha_N^{\mathrm T}.
$$

Consequently the real canonical transformation has a metaplectic lift, up to its standard double-cover ambiguity. Let

$$
Z_N:=\boldsymbol\alpha_N^{-1}\boldsymbol\beta_N.
$$

Then

$$
Z_N^{\mathrm T}=Z_N,
\qquad
\mathbf1-Z_NZ_N^\dagger>0,
$$

and the global Galerkin vacuum is, up to phase,

$$
|0_{\mathrm g,N}\rangle
=
\det(\mathbf1-Z_NZ_N^\dagger)^{1/4}
\exp\left(
-\frac12\boldsymbol b^\dagger Z_N\boldsymbol b^\dagger
\right)
|0_{\mathrm D,N}\rangle.
$$

It obeys

$$
(\boldsymbol\alpha_N\boldsymbol b
+\boldsymbol\beta_N\boldsymbol b^\dagger)
|0_{\mathrm g,N}\rangle=0.
$$

Its symmetrized covariance in $(\boldsymbol Q,\boldsymbol P)$ is

$$
V_{\mathrm g,N}
=\frac12
\begin{pmatrix}
O_N\widetilde W_N^{-1}O_N^{\mathrm T}&0\\
0&O_N\widetilde W_NO_N^{\mathrm T}
\end{pmatrix},
$$

which is the covariance obtained directly from the global reduced Hamiltonian.

#### Proof

Both $W_N$ and $\widetilde W_N$ are positive and $O_N$ is orthogonal. Direct multiplication gives the two Bogoliubov identities. They imply invertibility of $\boldsymbol\alpha_N$, symmetry of $Z_N$, and strict positivity of $\mathbf1-Z_NZ_N^\dagger$ in finite dimension. Commuting $\boldsymbol b$ through the displayed exponential proves the annihilation equation. The covariance is the standard oscillator covariance in $(\boldsymbol{\mathsf Q},\boldsymbol{\mathsf P})$ pulled back by $O_N$. ∎

## 5. Why the Same-Label Covariance Is Not the Reference State

The untransported regional product covariance in the coefficient labels would be

$$
V_{\mathrm{same},N}^{(c,v)}
=\frac12
\begin{pmatrix}
W_N^{-1}&0\\
0&W_N
\end{pmatrix}.
$$

But the physical canonical coordinates are obtained with

$$
C_N
=\operatorname{diag}(M_N^{1/2},M_N^{1/2}).
$$

Therefore the matrix that must satisfy the standard canonical uncertainty inequality is

$$
C_NV_{\mathrm{same},N}^{(c,v)}C_N^{\mathrm T}
+\frac{i}{2}\Omega_0
\geq0,
$$

where

$$
\Omega_0
=
\begin{pmatrix}
0&\mathbf1\\
-\mathbf1&0
\end{pmatrix}.
$$

There is no general reason for this inequality to hold. By contrast, the transported reference covariance in coefficient variables is

$$
V_{\mathrm{ref},N}^{(c,v)}
=\frac12
\begin{pmatrix}
M_N^{-1/2}W_N^{-1}M_N^{-1/2}&0\\
0&M_N^{-1/2}W_NM_N^{-1/2}
\end{pmatrix},
$$

and it is a pure Gaussian state on the reduced CCR by construction.

This distinction is structural. A Gaussian covariance is not merely a positive matrix; it must satisfy the uncertainty relation for the declared symplectic form.

## 6. Numerical Checks and Continuum Warning

The accompanying `finite_quantum_gaussian_checks.wl` verifies, at $L=m=1$:

- orthogonality and both Bogoliubov identities;
- symmetry and positivity of the squeezed-state kernel;
- the annihilation and determinant-normalization identities;
- the uncertainty relation for the global and transported reference covariances;
- the same-label uncertainty test;
- the finite particle-number diagnostic $\operatorname{tr}(\boldsymbol\beta_N\boldsymbol\beta_N^\dagger)$ and vacuum overlap.

The main numerical outputs are:

| $N$ | $\operatorname{tr}(\beta_N\beta_N^\dagger)$ | $|\langle0_{\mathrm D,N}|0_{\mathrm g,N}\rangle|$ | minimum same-label uncertainty eigenvalue |
|---:|---:|---:|---:|
| 1 | $0.0800386$ | $0.980935$ | $0$ within numerical precision |
| 2 | $0.312898$ | $0.933483$ | $-0.0664783$ |
| 4 | $0.966757$ | $0.836604$ | $-0.166299$ |
| 8 | $2.415528$ | $0.708186$ | $-0.273042$ |
| 16 | $5.357782$ | $0.571567$ | $-0.361144$ |
| 32 | $11.262135$ | $0.439449$ | $-0.421471$ |

The increasing $\beta$ norm and decreasing overlap are warnings, not by themselves a Shale--Stinespring verdict for this finite transport family. `continuum-endpoints.md` gives an analytic non-Hilbert--Schmidt theorem for the separately declared parity-resolved DD-to-DN continuum map. Relating that map to the positive-square-root transport here still requires a convergence theorem.

## 7. Verification Boundary

### Verified

- the reference transfer $T_N^{\mathrm{ref}}$ is symplectic from the product regional CCR to the physical reduced CCR;
- the fixed-$N$ Bogoliubov formulas and CCR identities;
- the finite squeezed-state kernel, annihilation equation, normalization, and global covariance;
- the numerical checks listed in Section 6 for $N=1,2,4,8,16,32$ at $L=m=1$;
- failure of the same-label covariance uncertainty test for the tested values $N=2,4,8,16,32$.

### Assumptions and Choices

- the strong-flux constrained Galerkin action is the common finite regulator;
- the regional product complex structure is transported by the positive-square-root map $T_N^{\mathrm{ref}}$;
- $\hbar=1$ and all oscillator frequencies are positive.

### Not Verified

- uniqueness or physical necessity of the chosen symplectic transport;
- compatibility with the naively truncated retarded evolution;
- convergence of $T_N^{\mathrm{ref}}$, $\boldsymbol\alpha_N$, or $\boldsymbol\beta_N$ on a declared continuum one-particle space;
- the Hilbert--Schmidt condition, continuum vacuum overlap, or continuum unitary implementability;
- an algebraic observable comparison if Fock implementability fails.
