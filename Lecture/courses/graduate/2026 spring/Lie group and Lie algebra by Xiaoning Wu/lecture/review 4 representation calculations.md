---
title: "Review 4: Representation calculations"
date: 2026-06-17
summary: "Practical toolkit for highest weights, Dynkin labels, Weyl dimension checks, tensor product decomposition, Casimir eigenvalues, and common exam calculations."
---

# Review 4: Representation calculations

This note collects calculation methods. The goal is not to prove theorems, but to make representation questions computable.

# Basic dictionary

| Object | Practical meaning |
|---|---|
| Cartan subalgebra $\mathfrak{h}$ | Maximal commuting diagonalizable subalgebra |
| Root | Weight of the adjoint representation |
| Weight | Simultaneous eigenvalue of $\mathfrak{h}$ on a representation |
| Positive roots | A chosen half of the root system |
| Simple roots | Positive roots that cannot be decomposed further |
| Fundamental weights | Basis dual to simple coroots |
| Dynkin labels | Coefficients of the highest weight in the fundamental-weight basis |
| Highest weight | Dominant weight that generates the irreducible representation |

# Highest-weight method

For a complex semisimple Lie algebra:

1. Choose a Cartan subalgebra.
1. Choose positive roots.
1. A finite-dimensional irreducible representation is determined by a dominant integral highest weight.
1. The lowering operators generate the remaining weights.

If

$$\begin{align}
\lambda=\sum_i a_i\omega_i,\qquad a_i\in\mathbb{Z}_{\ge 0},
\end{align}$$

then the Dynkin label is

$$\begin{align}
(a_1,\ldots,a_r).
\end{align}$$

# Weyl dimension formula

For highest weight $\lambda$,

$$\begin{align}
\dim V_\lambda=\prod_{\alpha\in\Phi^+}\frac{(\lambda+\rho,\alpha)}{(\rho,\alpha)},\qquad \rho=\frac{1}{2}\sum_{\alpha\in\Phi^+}\alpha.
\end{align}$$

Use this as a dimension check. In exams, the special formulas for $SU(2)$ and $SU(3)$ are usually faster:

$$\begin{align}
\dim_{SU(2)} V_m=m+1,
\end{align}$$

$$\begin{align}
\dim_{SU(3)}(p,q)=\frac{1}{2}(p+1)(q+1)(p+q+2).
\end{align}$$

# Quadratic Casimir

With the convention that long roots have length squared $2$, the quadratic Casimir on the highest-weight representation $V_\lambda$ is proportional to

$$\begin{align}
C_2(\lambda)=(\lambda,\lambda+2\rho).
\end{align}$$

The overall normalization depends on the generator convention used in the course.

For $SU(2)$ with spin $j$,

$$\begin{align}
C_2=j(j+1).
\end{align}$$

For $SU(3)$ with Dynkin label $(p,q)$ and the standard physics normalization,

$$\begin{align}
C_2(p,q)=\frac{1}{3}\left(p^2+q^2+pq+3p+3q\right).
\end{align}$$

Examples:

$$\begin{align}
C_2(1,0)=\frac{4}{3},\qquad C_2(1,1)=3.
\end{align}$$

# Tensor product strategy

The most reliable manual strategy is character subtraction:

1. Form all pairwise sums of weights of $V_\lambda$ and $V_\mu$.
1. The largest dominant weight is the highest weight of one component.
1. Subtract the full weight system of that component.
1. Repeat.

For small rank, weight diagrams make this visual.

# Fast tensor product rules

For $SU(2)$:

$$\begin{align}
V_m\otimes V_n=V_{m+n}\oplus V_{m+n-2}\oplus\cdots\oplus V_{|m-n|}.
\end{align}$$

For $SU(3)$:

$$\begin{align}
3\otimes 3=6\oplus\bar{3},
\end{align}$$

$$\begin{align}
3\otimes\bar{3}=8\oplus 1,
\end{align}$$

$$\begin{align}
8\otimes 3=15\oplus\bar{6}\oplus 3,
\end{align}$$

$$\begin{align}
8\otimes 8=27\oplus 10\oplus\overline{10}\oplus 8\oplus 8\oplus 1.
\end{align}$$

For $SO(5)\simeq Sp(2)$:

$$\begin{align}
5\otimes 4=16\oplus 4,
\end{align}$$

where $5$ is the vector representation and $4$ is the spin representation.

For $Sp(2)$ in its defining notation:

$$\begin{align}
4\otimes 4=10\oplus 5\oplus 1.
\end{align}$$

For $G_2$:

$$\begin{align}
7\otimes 7=27\oplus 14\oplus 7\oplus 1.
\end{align}$$

# Symmetric and antisymmetric parts

For a defining representation $V$:

- $V\otimes V=S^2V\oplus \wedge^2V$.
- For $SU(n)$, $\wedge^k V$ has highest weight $\omega_k$.
- For $SO(n)$, $\wedge^2 V$ is the adjoint representation.
- For $Sp(2n)$, $S^2V$ is the adjoint representation.

Useful consequences:

$$\begin{align}
SU(3):\quad 3\otimes 3=S^2 3\oplus \wedge^2 3=6\oplus\bar{3}.
\end{align}$$

$$\begin{align}
SO(N):\quad N\otimes N=S^2_0N\oplus \wedge^2N\oplus 1.
\end{align}$$

Here $S^2_0N$ is the symmetric traceless representation.

# Branching and restriction

When restricting a representation from $G$ to a subgroup $H$:

1. Restrict the Cartan weights of $G$ to the Cartan subalgebra of $H$.
1. Group the resulting weights into $H$-irreducible weight diagrams.
1. Check dimensions.

For example, the adjoint of $SU(3)$ restricted to the standard $SU(2)$ subgroup decomposes as

$$\begin{align}
8\to 3\oplus 2\oplus 2\oplus 1.
\end{align}$$

# Common checks

Use these checks before trusting a decomposition:

1. Dimension check: the total dimensions must match.
1. Highest-weight check: the largest weight in the product must appear.
1. Center check: for groups like $SU(n)$, center charges must match.
1. Reality check: real, complex, and pseudoreal properties must be compatible.
1. Multiplicity check: zero weights often have multiplicity greater than one.

# Exam moves

1. Start with the smallest faithful representation.
1. Compute rank and dimension before trying to identify a representation.
1. Use Dynkin labels for bookkeeping, but translate back to dimensions for sanity.
1. For $SU(3)$, memorize $3,\bar{3},6,\bar{6},8,10,\overline{10},15,27$ by labels.
1. When the answer is a tensor decomposition, write both the symbolic decomposition and the dimension check.
