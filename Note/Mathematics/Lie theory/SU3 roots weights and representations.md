---
title: SU3 Roots Weights And Representations
date: 2026-07-01
summary: "A practical SU(3) note covering the A2 root system, weights, Dynkin labels, dimensions, and first tensor products."
---

# SU3 Roots Weights And Representations

## Rank-Two Geometry

$SU(2)$ is rank one, so weights lie on a line. $SU(3)$ is rank two, so roots, weights, Weyl chambers, highest weights, and tensor products become genuinely geometric.

After complexification,

$$
\begin{align}
\mathfrak{su}(3)_\mathbb C\simeq \mathfrak{sl}_3(\mathbb C).
\end{align}
$$

Use the diagonal traceless Cartan subalgebra

$$
\begin{align}
\mathfrak h=\{\operatorname{diag}(h_1,h_2,h_3)\mid h_1+h_2+h_3=0\}.
\end{align}
$$

Let $\epsilon_i(H)=h_i$. The weights live in the plane

$$
\begin{align}
\epsilon_1+\epsilon_2+\epsilon_3=0.
\end{align}
$$

## Roots

For the matrix unit $E_{ij}$,

$$
\begin{align}
[H,E_{ij}]=(\epsilon_i-\epsilon_j)(H)E_{ij}.
\end{align}
$$

Thus

$$
\begin{align}
\Phi=\{\epsilon_i-\epsilon_j\mid i\ne j\}.
\end{align}
$$

A standard positive system is

$$
\begin{align}
\alpha_1=\epsilon_1-\epsilon_2,\qquad
\alpha_2=\epsilon_2-\epsilon_3,\qquad
\alpha_1+\alpha_2=\epsilon_1-\epsilon_3.
\end{align}
$$

The Dynkin type is $A_2$.

## Fundamental Weights And Dynkin Labels

The fundamental weights satisfy

$$
\begin{align}
\frac{2(\omega_i,\alpha_j)}{(\alpha_j,\alpha_j)}=\delta_{ij}.
\end{align}
$$

For $A_2$,

$$
\begin{align}
\omega_1=\frac{2\epsilon_1-\epsilon_2-\epsilon_3}{3},\qquad
\omega_2=\frac{\epsilon_1+\epsilon_2-2\epsilon_3}{3}.
\end{align}
$$

An irreducible finite-dimensional representation is labelled by

$$
\begin{align}
\lambda=p\omega_1+q\omega_2,\qquad p,q\in\mathbb Z_{\ge0}.
\end{align}
$$

The pair $(p,q)$ is the Dynkin label.

## Dimension Formula

For $SU(3)$,

$$
\begin{align}
\dim(p,q)=\frac{1}{2}(p+1)(q+1)(p+q+2).
\end{align}
$$

Useful cases:

| Dynkin label | Common name | Dimension |
|---|---|---:|
| $(1,0)$ | fundamental $3$ | 3 |
| $(0,1)$ | anti-fundamental $\bar 3$ | 3 |
| $(1,1)$ | adjoint $8$ | 8 |
| $(2,0)$ | symmetric $6$ | 6 |

## First Tensor Products

The smallest decompositions are

$$
\begin{align}
(1,0)\otimes(1,0)&=(2,0)\oplus(0,1),\\
(1,0)\otimes(0,1)&=(1,1)\oplus(0,0).
\end{align}
$$

In physics notation,

$$
\begin{align}
3\otimes 3=6\oplus \bar 3,\qquad
3\otimes \bar 3=8\oplus 1.
\end{align}
$$
