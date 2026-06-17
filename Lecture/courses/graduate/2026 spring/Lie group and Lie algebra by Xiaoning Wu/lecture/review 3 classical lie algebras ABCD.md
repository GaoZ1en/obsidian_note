---
title: "Review 3: Classical Lie algebras ABCD"
date: 2026-06-17
summary: "Exam-oriented comparison of the classical simple complex Lie algebras A_n, B_n, C_n, and D_n through their matrix models, ranks, dimensions, roots, and basic representations."
---

# Review 3: Classical Lie algebras ABCD

The classical simple complex Lie algebras are

$$A_n=\mathfrak{sl}_{n+1}(\mathbb{C}),\qquad B_n=\mathfrak{so}_{2n+1}(\mathbb{C}),\qquad C_n=\mathfrak{sp}_{2n}(\mathbb{C}),\qquad D_n=\mathfrak{so}_{2n}(\mathbb{C}).$$

Compact Lie groups such as $SU(n)$, $SO(n)$, and $Sp(n)$ have compact real Lie algebras whose complexifications are of these types. Many representation-theory computations are done after complexification.

# Summary table

| Type | Lie algebra | Rank | Dimension | Defining representation |
|---|---:|---:|---:|---:|
| $A_n$ | $\mathfrak{sl}_{n+1}$ | $n$ | $(n+1)^2-1=n(n+2)$ | $n+1$ |
| $B_n$ | $\mathfrak{so}_{2n+1}$ | $n$ | $n(2n+1)$ | $2n+1$ |
| $C_n$ | $\mathfrak{sp}_{2n}$ | $n$ | $n(2n+1)$ | $2n$ |
| $D_n$ | $\mathfrak{so}_{2n}$ | $n$ | $n(2n-1)$ | $2n$ |

![Dynkin diagrams for the classical Lie algebras](../../../../../../Attachments/lie-classical-dynkin-diagrams.png)

The equality $\dim B_n=\dim C_n$ does not mean $B_n\simeq C_n$ in general. The exceptional low-rank isomorphism is

$$B_2\simeq C_2.$$

# Type A: sl(n+1)

The matrix model is

$$A_n=\mathfrak{sl}_{n+1}(\mathbb{C})=\{X\in M_{n+1}(\mathbb{C})\mid \operatorname{tr}X=0\}.$$

The Cartan subalgebra is diagonal traceless matrices. With coordinate weights $\epsilon_i$,

$$\Phi(A_n)=\{\epsilon_i-\epsilon_j\mid i\ne j,\ 1\le i,j\le n+1\}.$$

A standard simple-root system is

$$\alpha_i=\epsilon_i-\epsilon_{i+1},\qquad i=1,\ldots,n.$$

The Dynkin diagram is a chain:

$$\circ-\circ-\cdots-\circ.$$

Important representations:

- $\omega_1$: defining representation, dimension $n+1$.
- $\omega_k$: $k$-th exterior power of the defining representation.
- $\omega_n$: conjugate defining representation.
- $\omega_1+\omega_n$: adjoint representation.

For $SU(n+1)$, complex conjugation reverses Dynkin labels:

$$(a_1,\ldots,a_n)^*=(a_n,\ldots,a_1).$$

# Type B: so(2n+1)

The matrix model is the algebra preserving a nondegenerate symmetric bilinear form:

$$B_n=\mathfrak{so}_{2n+1}(\mathbb{C})=\{X\mid X^TQ+QX=0\}.$$

The root system can be written in an orthonormal basis $e_i$:

$$\Phi(B_n)=\{\pm e_i\pm e_j\ (i\ne j)\}\cup\{\pm e_i\}.$$

A standard simple-root system is

$$\alpha_i=e_i-e_{i+1}\quad (i=1,\ldots,n-1),\qquad \alpha_n=e_n.$$

The roots $\pm e_i$ are short roots. The roots $\pm e_i\pm e_j$ are long roots.

Important representations:

- $\omega_1$: vector representation, dimension $2n+1$.
- $\omega_n$: spin representation, dimension $2^n$.
- $\omega_2$: adjoint representation for $n\ge 3$.

The Lie group $Spin(2n+1)$ is the simply connected cover of $SO(2n+1)$.

# Type C: sp(2n)

The matrix model is the algebra preserving a nondegenerate skew-symmetric form $J$:

$$C_n=\mathfrak{sp}_{2n}(\mathbb{C})=\{X\in M_{2n}(\mathbb{C})\mid X^TJ+JX=0\}.$$

In an orthonormal basis $e_i$,

$$\Phi(C_n)=\{\pm e_i\pm e_j\ (i\ne j)\}\cup\{\pm 2e_i\}.$$

A standard simple-root system is

$$\alpha_i=e_i-e_{i+1}\quad (i=1,\ldots,n-1),\qquad \alpha_n=2e_n.$$

Here $\pm 2e_i$ are long roots.

Important representations:

- $\omega_1$: defining representation, dimension $2n$.
- $2\omega_1$: adjoint representation.
- $\omega_2$: traceless part of $\wedge^2$ of the defining representation.

For compact groups, physicists often write $Sp(n)$ for the compact group whose complexified Lie algebra is $\mathfrak{sp}_{2n}(\mathbb{C})$.

# Type D: so(2n)

The matrix model is

$$D_n=\mathfrak{so}_{2n}(\mathbb{C})=\{X\mid X^TQ+QX=0\}.$$

The root system is

$$\Phi(D_n)=\{\pm e_i\pm e_j\mid i\ne j\}.$$

A standard simple-root system is

$$\alpha_i=e_i-e_{i+1}\quad (i=1,\ldots,n-1),\qquad \alpha_n=e_{n-1}+e_n.$$

Important representations:

- $\omega_1$: vector representation, dimension $2n$.
- $\omega_{n-1}$ and $\omega_n$: two half-spin representations, each dimension $2^{n-1}$.
- $\omega_2$: adjoint representation for $n\ge 4$.

The two spin representations are exchanged by an outer automorphism. For $D_4$ there is a larger triality symmetry that permutes the vector and the two spin representations.

# Low-rank isomorphisms

These are useful in exams:

$$A_1\simeq B_1\simeq C_1,\qquad D_2\simeq A_1\oplus A_1,$$

$$A_3\simeq D_3,\qquad B_2\simeq C_2.$$

In group language, common compact versions include

$$Spin(3)\simeq SU(2),\qquad Spin(4)\simeq SU(2)\times SU(2),\qquad Spin(5)\simeq Sp(2),\qquad Spin(6)\simeq SU(4).$$

# How to recognize the type from roots

1. All roots have the same length and the diagram is a chain: usually $A_n$.
2. Roots are $\pm e_i\pm e_j$ only: type $D_n$.
3. Roots are $\pm e_i\pm e_j$ plus $\pm e_i$: type $B_n$.
4. Roots are $\pm e_i\pm e_j$ plus $\pm 2e_i$: type $C_n$.
5. A double bond in the Dynkin diagram means two root lengths. The arrow points toward the shorter root.

# Exam moves

1. First compute rank and dimension; this often narrows the answer sharply.
2. If a group preserves a symmetric form, expect orthogonal type $B$ or $D$.
3. If a group preserves a skew form, expect symplectic type $C$.
4. If the algebra is traceless matrices with no form preserved, expect type $A$.
5. Always check low-rank isomorphisms before declaring two answers different.
