---
title: Root Systems And Representations
date: 2026-07-01
summary: "Reference tables for classical and exceptional root systems, low-rank isomorphisms, Weyl dimensions, and small tensor products."
---

# Root Systems And Representations

## Classical Root Systems

Let $e_i$ be an orthonormal basis. For $A_n$, work in the hyperplane $\sum_i e_i=0$ inside $\mathbb R^{n+1}$.

| Type | Complex Lie algebra | Rank | Root system |
|---|---:|---:|---|
| $A_n$ | $\mathfrak{sl}_{n+1}$ | $n$ | $\{e_i-e_j\mid i\ne j\}$ |
| $B_n$ | $\mathfrak{so}_{2n+1}$ | $n$ | $\{\pm e_i\pm e_j\}_{i<j}\cup\{\pm e_i\}$ |
| $C_n$ | $\mathfrak{sp}_{2n}$ | $n$ | $\{\pm e_i\pm e_j\}_{i<j}\cup\{\pm2e_i\}$ |
| $D_n$ | $\mathfrak{so}_{2n}$ | $n$ | $\{\pm e_i\pm e_j\}_{i<j}$ |

Root counts and dimensions:

| Type | Number of roots | Dimension |
|---|---:|---:|
| $A_n$ | $n(n+1)$ | $n(n+2)$ |
| $B_n$ | $2n^2$ | $n(2n+1)$ |
| $C_n$ | $2n^2$ | $n(2n+1)$ |
| $D_n$ | $2n(n-1)$ | $n(2n-1)$ |

## Matrix Recognition

| Condition | Type |
|---|---|
| $\operatorname{tr}X=0$ on $(n+1)\times(n+1)$ matrices | $A_n$ |
| $X^TQ+QX=0$, $\dim Q=2n+1$, $Q$ symmetric | $B_n$ |
| $X^TQ+QX=0$, $\dim Q=2n$, $Q$ symmetric | $D_n$ |
| $X^TJ+JX=0$, $\dim J=2n$, $J$ skew-symmetric | $C_n$ |

## Low-Rank Isomorphisms

| Isomorphism | Meaning |
|---|---|
| $A_1\simeq B_1\simeq C_1$ | $\mathfrak{sl}_2\simeq\mathfrak{so}_3\simeq\mathfrak{sp}_2$ |
| $D_2\simeq A_1\oplus A_1$ | $\mathfrak{so}_4\simeq\mathfrak{sl}_2\oplus\mathfrak{sl}_2$ |
| $B_2\simeq C_2$ | $\mathfrak{so}_5\simeq\mathfrak{sp}_4$ |
| $D_3\simeq A_3$ | $\mathfrak{so}_6\simeq\mathfrak{sl}_4$ |
| $D_4$ triality | $8_v,8_s,8_c$ are permuted |

## Exceptional Recognition

| Type | Rank | Dimension | Roots | Smallest nontrivial representation |
|---|---:|---:|---:|---:|
| $G_2$ | 2 | 14 | 12 | 7 |
| $F_4$ | 4 | 52 | 48 | 26 |
| $E_6$ | 6 | 78 | 72 | 27 |
| $E_7$ | 7 | 133 | 126 | 56 |
| $E_8$ | 8 | 248 | 240 | 248 |

## Representation Data

For a highest weight $\lambda$,

$$
\begin{align}
\dim V_\lambda=\prod_{\alpha\in\Phi^+}
\frac{(\lambda+\rho,\alpha)}{(\rho,\alpha)},\qquad
\rho=\frac12\sum_{\alpha\in\Phi^+}\alpha.
\end{align}
$$

The tensor product weight set is the multiset sum of the weights of the two factors. Its irreducible decomposition is governed by the dominant highest weights that can be extracted from this multiset, together with their multiplicities.
