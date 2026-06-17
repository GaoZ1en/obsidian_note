---
title: "Review 1: SU(2), SO(3), and rotations"
date: 2026-06-17
summary: "Compact result sheet for SU(2), SO(3), and the rotation example used as the entry point for Lie groups, Lie algebras, roots, weights, and spin representations."
---

# Review 1: SU(2), SO(3), and rotations

This note is only a result sheet. The main role of this example is to fix notation for later simple Lie algebras.

# Groups and Lie algebras

$$SU(2)=\{U\in M_2(\mathbb{C})\mid U^\dagger U=1,\det U=1\},\qquad SO(3)=\{R\in M_3(\mathbb{R})\mid R^T R=1,\det R=1\}.$$

Their Lie algebras are

$$\mathfrak{su}(2)=\{X\in M_2(\mathbb{C})\mid X^\dagger=-X,\operatorname{tr}X=0\},\qquad \mathfrak{so}(3)=\{A\in M_3(\mathbb{R})\mid A^T=-A\}.$$

For physics conventions one often uses Hermitian generators $J_i$ with

$$[J_i,J_j]=i\epsilon_{ijk}J_k.$$

The anti-Hermitian mathematical generators are $T_i=-iJ_i$ and satisfy

$$[T_i,T_j]=\epsilon_{ijk}T_k.$$

# Covering relation

The adjoint action of $SU(2)$ on $\mathfrak{su}(2)$ gives a surjective homomorphism

$$SU(2)\to SO(3),\qquad \ker=\{\pm I_2\}.$$

Thus

$$SO(3)\simeq SU(2)/\mathbb{Z}_2.$$

For representation theory this means that every $SO(3)$ representation is an $SU(2)$ representation, but only integer-spin $SU(2)$ representations descend to $SO(3)$.

# Cartan, root, and weights

Use

$$J_\pm=J_1\pm iJ_2,\qquad H=2J_3.$$

Then

$$[H,J_\pm]=\pm 2J_\pm,\qquad [J_+,J_-]=H.$$

The root system is type $A_1$:

$$\Phi=\{\alpha,-\alpha\},\qquad \alpha(H)=2.$$

An irreducible representation is labelled by a nonnegative integer $m=2j$. Its highest weight is $m$, its spin is $j=m/2$, and its dimension is

$$\dim V_m=m+1=2j+1.$$

The weights are

$$m,m-2,m-4,\ldots,-m.$$

# Casimir

The standard quadratic Casimir is

$$J^2=J_1^2+J_2^2+J_3^2.$$

On the spin-$j$ representation,

$$J^2=j(j+1).$$

In the highest-weight label $m=2j$ this is

$$j(j+1)=\frac{m(m+2)}{4}.$$

# Tensor products

The Clebsch-Gordan rule is

$$V_{j_1}\otimes V_{j_2}=\bigoplus_{j=|j_1-j_2|}^{j_1+j_2}V_j,$$

where $j$ increases in integer steps. In highest-weight labels,

$$V_m\otimes V_n=V_{m+n}\oplus V_{m+n-2}\oplus\cdots\oplus V_{|m-n|}.$$

Common examples:

$$2\otimes 2=3\oplus 1,\qquad 3\otimes 3=5\oplus 3\oplus 1,\qquad 2\otimes 3=4\oplus 2.$$

# Exam moves

1. To pass from $SU(2)$ to $SO(3)$, check whether the representation has integer spin.
2. To decompose a tensor product, use the Clebsch-Gordan interval.
3. To find the weights, start from the highest weight and subtract the simple root.
4. To identify the adjoint representation, use spin $1$, dimension $3$.
