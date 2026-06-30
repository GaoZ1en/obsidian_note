---
title: Standard Spaces
date: 2026-07-01
summary: "Homology, homotopy, and structural data for common spaces in geometry and topology."
---

# Standard Spaces

## Standard Homology Patterns

For spheres,

$$
\begin{align}
H_k(S^n;\mathbb Z)\cong
\begin{cases}
\mathbb Z,& k=0,n,\\
0,& \text{otherwise}.
\end{cases}
\end{align}
$$

For complex projective space,

$$
\begin{align}
H_k(\mathbb{CP}^n;\mathbb Z)\cong
\begin{cases}
\mathbb Z,& k=0,2,4,\ldots,2n,\\
0,& \text{otherwise}.
\end{cases}
\end{align}
$$

For an orientable genus-$g$ surface $\Sigma_g$,

$$
\begin{align}
H_0(\Sigma_g)=\mathbb Z,\qquad
H_1(\Sigma_g)=\mathbb Z^{2g},\qquad
H_2(\Sigma_g)=\mathbb Z.
\end{align}
$$

For the $n$-torus,

$$
\begin{align}
H_k(T^n;\mathbb Z)\cong \mathbb Z^{\binom nk}.
\end{align}
$$

## Cellular Homology

$\mathbb{RP}^n$ has one cell in each dimension $0,\ldots,n$. With integral coefficients, the cellular differential alternates between multiplication by $2$ and $0$:

$$
\begin{align}
\partial_k=1+(-1)^k.
\end{align}
$$

$\mathbb{CP}^n$ has one cell in each even real dimension $0,2,\ldots,2n$, and the cellular differentials vanish for degree reasons.

## Hopf Fibration

The Hopf fibration

$$
\begin{align}
S^1\hookrightarrow S^{2n+1}\twoheadrightarrow \mathbb{CP}^n
\end{align}
$$

gives the low-degree exact sequence

$$
\begin{align}
\pi_2(S^{2n+1})\to \pi_2(\mathbb{CP}^n)\to \pi_1(S^1)\to \pi_1(S^{2n+1})\to \pi_1(\mathbb{CP}^n).
\end{align}
$$

Since $\pi_2(S^{2n+1})=0$ and $\pi_1(S^{2n+1})=0$ for $n\ge1$, this gives

$$
\begin{align}
\pi_2(\mathbb{CP}^n)\cong\mathbb Z,\qquad \pi_1(\mathbb{CP}^n)=0.
\end{align}
$$

## Additional Structures

- de Rham cohomology of $S^1$ and $T^2$;
- cellular homology of $\mathbb{RP}^n$ and $\mathbb{CP}^n$;
- Mayer-Vietoris computation of the Klein bottle;
- Lie derivative and Cartan-formula computations;
- Hodge-star signs;
- Fubini-Study metric in affine coordinates.
