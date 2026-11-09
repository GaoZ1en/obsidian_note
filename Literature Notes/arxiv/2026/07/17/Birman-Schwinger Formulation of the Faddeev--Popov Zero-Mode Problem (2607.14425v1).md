---
paper id: 2607.14425v1
title: Birman-Schwinger Formulation of the Faddeev--Popov Zero-Mode Problem
authors:
  - Daniel G. Tedesco
publication date: 2026-07-15T23:27
abstract: |-
  After constant gauge modes are removed, the Landau-gauge Faddeev--Popov operator is written as a congruence of the free Laplacian with a bounded dimensionless Birman--Schwinger operator. The Gribov horizon becomes the exact spectral threshold at which an eigenvalue crosses -1, while the usual ghost no-pole condition is recovered as a Born approximation. A periodic transverse SU(2) background supplies an exactly reducible Mathieu benchmark.
comments: ""
url: https://arxiv.org/abs/2607.14425v1
summary: "An exact Birman--Schwinger reformulation of the Gribov-horizon condition, with a solvable periodic SU(2) benchmark for Born and finite-mode approximations."
tags: []
---

Back to [[2026_07_17_overview]].

The paper replaces indirect criteria for the Gribov horizon by an exact spectral statement. Its most useful feature for the vault is the chain from the Faddeev--Popov operator to a bounded dimensionless operator, then to the ghost resolvent, and finally to a periodic $SU(2)$ example whose horizon crossing can be compared with controlled Fourier truncations.

# Removing Constant Modes from the Faddeev--Popov Operator

On a finite torus in Landau gauge, write the Faddeev--Popov operator as

$$\begin{align}
\mathcal M_A=H_0+V_A, \qquad H_0=-\partial^2.
\end{align}$$

The constant gauge modes lie in $\ker H_0$ independently of the background and must be removed before $H_0^{-1/2}$ is defined. On the orthogonal complement of those modes, introduce

$$\begin{align}
K_A=H_0^{-1/2}V_AH_0^{-1/2}.
\end{align}$$

The exact factorization is a congruence,

$$\begin{align}
\boxed{ \mathcal M_A = H_0^{1/2}(1+K_A)H_0^{1/2}}
\end{align}$$

rather than a unitary similarity. It therefore preserves nullity and the numbers of positive and negative directions, but not the numerical eigenvalues of $\mathcal M_A$.

# Landau Transversality and the Bounded Analytic Scale

The background-dependent part is first order in derivatives. Landau transversality $\partial_\mu A_\mu=0$ makes the two integrations by parts needed for

$$\begin{align}
\langle\phi,V_A\psi\rangle = \langle V_A\phi,\psi\rangle
\end{align}$$

agree, so the paper derives Hermiticity instead of imposing it separately. Sandwiched between two factors of $H_0^{-1/2}$, the first-order perturbation becomes an order-zero bounded operator.

This differs from the usual Schrödinger Birman--Schwinger construction, where a multiplicative potential is sandwiched by resolvents and the analytic scale is set by a second-order perturbation problem. Here the derivative in $V_A$ changes both the Sobolev bookkeeping and the momentum weights.

# The Gribov Horizon as the Threshold $-1$

The congruence gives the exact criterion

$$\begin{align}
\ker\mathcal M_A\neq0 \quad\Longleftrightarrow\quad -1\in\operatorname{spec}(K_A).
\end{align}$$

The first Gribov region corresponds to $1+K_A>0$. Crossing the horizon means that the lowest signed eigenvalue of $K_A$ reaches $-1$. This criterion retains directional information that is erased by criteria built only from quadratic averages of the background.

Because $K_A$ is compact in the finite-volume setting used by the paper, its nonzero eigenvalues can accumulate only at zero. Thus any wording suggesting that its negative spectrum accumulates at $-\infty$ must be read as a slip; the horizon is controlled by the extremal eigenvalue near $-1$, not by an unbounded negative tail.

# The Ghost Propagator and the Born No-Pole Condition

The inverse FP operator becomes

$$\begin{align}
\mathcal M_A^{-1} = H_0^{-1/2}(1+K_A)^{-1}H_0^{-1/2}.
\end{align}$$

Expanding

$$\begin{align}
(1+K_A)^{-1} = 1-K_A+K_A^2-\cdots
\end{align}$$

shows how the ghost dressing function is a diagonal matrix element of the same resolvent. The familiar no-pole estimate is the leading nontrivial Born truncation. It depends on a second moment of the background, so it can approximate the horizon for weak fields but cannot in general locate the signed extremal eigenvalue that actually crosses $-1$.

On a finite torus the true zero-momentum ghost mode has already been removed. Accordingly, expressions such as $\sigma(0,A)$ denote the limit through the smallest nonzero momenta, not evaluation on the deleted constant mode.

# A Periodic Transverse $SU(2)$ Background

The solvable benchmark chooses

$$\begin{align}
A_y^3=a\cos(Qx),
\end{align}$$

with all other components zero. Charged ghost components diagonalize the color structure, and after fixing the transverse momentum $m$ the zero-mode equation reduces to

$$\begin{align}
\left[-\frac{d^2}{dx^2}+m^2+ma\cos(Qx)\right]\phi(x)=0.
\end{align}$$

After a rescaling this is a Mathieu equation. In Fourier modes it becomes a tridiagonal Jacobi chain: the cosine couples momentum labels that differ by one unit. The exact horizon for $Q=m=1$ is determined by the Mathieu characteristic value

$$\begin{align}
a_0(2a_{\mathrm{crit}})=-4, \qquad a_{\mathrm{crit}}\simeq1.9053.
\end{align}$$

This provides a clean test of how quickly finite-mode and Born approximations converge.

# Three-Mode and Five-Mode Horizon Estimates

Keeping the central Fourier mode and its two nearest neighbors gives

$$\begin{align}
a_3^2=2(Q^2+m^2).
\end{align}$$

For $Q=m=1$, this yields $a_3=2$, the same scale as the leading Born estimate. Adding the next pair of modes gives

$$\begin{align}
a_5^2 = \frac{4(Q^2+m^2)(4Q^2+m^2)}{8Q^2+3m^2},
\end{align}$$

and hence $a_5\simeq1.907$ at $Q=m=1$, already close to the exact Mathieu threshold.

The comparison cleanly separates two approximations:

- Born order truncates the resolvent expansion in powers of $K_A$.
- Fourier truncation retains the exact operator dependence within a finite band of coupled modes.

Their similar lowest-order numbers in the benchmark should not be confused with an identity of the two schemes.

# Relation to the Recent Gribov Spectral Note

The July 16 note on the spectral geometry of the Gribov horizon approaches the problem through global spectral and geometric information. This paper supplies a complementary operator benchmark: the horizon is an exact $-1$ threshold of $K_A$, and the periodic background makes the departure from the no-pole approximation explicit.

For BRST work, the key caution is that identifying the boundary of the first Gribov region is not the same as constructing the BRST cohomology or proving a global gauge fixing. The periodic family is an exactly controlled local test, while extension to generic Yang--Mills configurations remains a separate claim.

# Verification Boundary

The congruence, the distinction between congruence and similarity, and the three- and five-mode formulas were independently checked by finite-matrix algebra. For $Q=m=1$, the reported values $a_3=2$ and $a_5\simeq1.907$ follow directly. The exact Mathieu value and the general compactness estimates were source-derived rather than independently reproved. The source's statement about negative-eigenvalue accumulation requires the compact-operator correction stated above.
