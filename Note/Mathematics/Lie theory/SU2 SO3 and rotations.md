---
title: SU2 SO3 And Rotations
date: 2026-07-01
summary: "Entry point to Lie groups through SU(2), SO(3), the double cover, rotations, weights, and the A1 root system."
---

# SU2 SO3 And Rotations

## Main Picture

$SU(2)$ is the simplest non-Abelian compact Lie group. $SO(3)$ is the physical rotation group in three real dimensions. Their Lie algebras are locally the same, but the groups differ globally:

$$
\begin{align}
SO(3)\simeq SU(2)/\{\pm I\}.
\end{align}
$$

The representation-theory consequence is the useful one:

- every $SO(3)$ representation gives an $SU(2)$ representation;
- only integer-spin $SU(2)$ representations descend to $SO(3)$;
- half-integer spinors are representations of $SU(2)$, not honest representations of $SO(3)$.

## Lie Algebras And Conventions

The matrix groups are

$$
\begin{align}
SU(2)&=\{U\in M_2(\mathbb C)\mid U^\dagger U=1,\det U=1\},\\
SO(3)&=\{R\in M_3(\mathbb R)\mid R^T R=1,\det R=1\}.
\end{align}
$$

Their Lie algebras are

$$
\begin{align}
\mathfrak{su}(2)&=\{X\in M_2(\mathbb C)\mid X^\dagger=-X,\operatorname{tr}X=0\},\\
\mathfrak{so}(3)&=\{A\in M_3(\mathbb R)\mid A^T=-A\}.
\end{align}
$$

Physics convention uses Hermitian generators $J_i$:

$$
\begin{align}
[J_i,J_j]=i\epsilon_{ijk}J_k.
\end{align}
$$

Mathematics convention uses anti-Hermitian generators $T_i=-iJ_i$:

$$
\begin{align}
[T_i,T_j]=\epsilon_{ijk}T_k.
\end{align}
$$

Always check this convention before comparing signs.

## The A1 Root System

Set

$$
\begin{align}
J_\pm=J_1\pm iJ_2,\qquad H=2J_3.
\end{align}
$$

Then

$$
\begin{align}
[H,J_\pm]=\pm2J_\pm,\qquad [J_+,J_-]=H.
\end{align}
$$

This is the Cartan-Weyl form of type $A_1$:

$$
\begin{align}
\Phi=\{\alpha,-\alpha\},\qquad \alpha(H)=2.
\end{align}
$$

An irreducible representation is labelled by a nonnegative integer $m=2j$. The weights are

$$
\begin{align}
m,\ m-2,\ m-4,\ldots,-m,
\end{align}
$$

and the dimension is

$$
\begin{align}
\dim V_m=m+1=2j+1.
\end{align}
$$

## Rotation Formula Conventions

The Pauli matrices satisfy

$$
\begin{align}
\sigma_i\sigma_j=\delta_{ij}\mathbf{1}+i\epsilon_{ijk}\sigma_k,
\end{align}
$$

so

$$
\begin{align}
(\vec\sigma\cdot\vec n)(\vec\sigma\cdot\vec m)
=\mathbf{1}(\vec n\cdot\vec m)+i\vec\sigma\cdot(\vec n\times\vec m).
\end{align}
$$

The standard $SU(2)$ axis-angle parametrization is

$$
\begin{align}
U(\vec n,\theta)=\cos\frac{\theta}{2}\,\mathbf{1}-i(\vec\sigma\cdot\vec n)\sin\frac{\theta}{2}.
\end{align}
$$

The corresponding $SO(3)$ rotation can be computed by the adjoint action on Pauli matrices.
