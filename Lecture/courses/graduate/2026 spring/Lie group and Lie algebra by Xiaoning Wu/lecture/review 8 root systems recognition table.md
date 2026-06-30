---
title: "Review 8: Root systems and recognition table"
date: 2026-06-30
summary: "Closed-book recognition table for classical and exceptional simple Lie algebras, with root-system models, simple roots, low-rank isomorphisms, and exam-useful data."
---

# Review 8: Root systems and recognition table

This note collects the root-system models that are most useful for closed-book exam problems. The practical workflow is:

1. Recognize the type from the matrix condition, dimension, rank, or Dynkin diagram.
2. Write the standard root model.
3. Choose the standard simple roots.
4. Use the root model to draw the Dynkin diagram, distinguish long and short roots, and identify fundamental representations.

# Classical root systems

Let $e_1,\dots,e_n$ be an orthonormal basis of $\mathbb R^n$. For $A_n$, use $e_1,\dots,e_{n+1}$ restricted to the hyperplane $\sum_i e_i=0$.

| Type | Complex Lie algebra | Rank | Defining representation | Root system |
|---|---:|---:|---:|---|
| $A_n$ | $\mathfrak{sl}_{n+1}$ | $n$ | $n+1$ | $\{e_i-e_j\mid i\ne j,\ 1\le i,j\le n+1\}$ |
| $B_n$ | $\mathfrak{so}_{2n+1}$ | $n$ | $2n+1$ | $\{\pm e_i\pm e_j\}_{i<j}\cup\{\pm e_i\}$ |
| $C_n$ | $\mathfrak{sp}_{2n}$ | $n$ | $2n$ | $\{\pm e_i\pm e_j\}_{i<j}\cup\{\pm2e_i\}$ |
| $D_n$ | $\mathfrak{so}_{2n}$ | $n$ | $2n$ | $\{\pm e_i\pm e_j\}_{i<j}$ |

The root counts and dimensions are

| Type | Number of roots | Dimension |
|---|---:|---:|
| $A_n$ | $n(n+1)$ | $n(n+2)$ |
| $B_n$ | $2n^2$ | $n(2n+1)$ |
| $C_n$ | $2n^2$ | $n(2n+1)$ |
| $D_n$ | $2n(n-1)$ | $n(2n-1)$ |

# Standard simple roots

For $A_n$,

$$\begin{align}
\alpha_i=e_i-e_{i+1},\qquad i=1,\dots,n.
\end{align}$$

For $B_n$,

$$\begin{align}
\alpha_i=e_i-e_{i+1}\quad (i<n),\qquad \alpha_n=e_n.
\end{align}$$

For $C_n$,

$$\begin{align}
\alpha_i=e_i-e_{i+1}\quad (i<n),\qquad \alpha_n=2e_n.
\end{align}$$

For $D_n$,

$$\begin{align}
\alpha_i=e_i-e_{i+1}\quad (i<n),\qquad \alpha_n=e_{n-1}+e_n.
\end{align}$$

The short roots in $B_n$ are $\pm e_i$. The long roots in $C_n$ are $\pm2e_i$. Thus $B_n$ and $C_n$ have dual root systems, and only the low-rank case $B_2\simeq C_2$ gives an isomorphism of Lie algebras.

# Matrix-condition recognition

| Condition | Complex type | Rank | Dimension |
|---|---:|---:|---:|
| $\operatorname{tr}X=0$ on $(n+1)\times(n+1)$ matrices | $A_n$ | $n$ | $(n+1)^2-1$ |
| $X^TQ+QX=0$, $\dim Q=2n+1$ symmetric | $B_n$ | $n$ | $n(2n+1)$ |
| $X^TQ+QX=0$, $\dim Q=2n$ symmetric | $D_n$ | $n$ | $n(2n-1)$ |
| $X^TJ+JX=0$, $\dim J=2n$ skew-symmetric | $C_n$ | $n$ | $n(2n+1)$ |

# Low-rank isomorphisms

| Isomorphism | Useful meaning |
|---|---|
| $A_1\simeq B_1\simeq C_1$ | $\mathfrak{sl}_2\simeq\mathfrak{so}_3\simeq\mathfrak{sp}_2$ |
| $D_2\simeq A_1\oplus A_1$ | $\mathfrak{so}_4\simeq\mathfrak{sl}_2\oplus\mathfrak{sl}_2$ |
| $B_2\simeq C_2$ | $\mathfrak{so}_5\simeq\mathfrak{sp}_4$; Dynkin labels are exchanged |
| $D_3\simeq A_3$ | $\mathfrak{so}_6\simeq\mathfrak{sl}_4$; vector and spinors become $SU(4)$ fundamentals |
| $D_4$ triality | The three $8$-dimensional representations $8_v,8_s,8_c$ are permuted |

# Spinor representations for B and D

The spinor representations are naturally representations of $\operatorname{Spin}(N)$, and hence of the Lie algebra $\mathfrak{so}_N$. They need not descend to representations of $SO(N)$ itself.

They are constructed from the Clifford algebra

$$\begin{align}
\{\gamma_a,\gamma_b\}=2\delta_{ab}.
\end{align}$$

The corresponding $\mathfrak{so}(N)$ generators in the spinor representation are

$$\begin{align}
I_{ab}=\frac14[\gamma_a,\gamma_b].
\end{align}$$

Pairing gamma matrices gives creation and annihilation operators:

$$\begin{align}
a_i=\frac12(\gamma_{2i-1}+i\gamma_{2i}),\qquad a_i^\dagger=\frac12(\gamma_{2i-1}-i\gamma_{2i}).
\end{align}$$

This Fock-space construction explains why spinor weights are half-integer sign vectors.

For $B_n=\mathfrak{so}_{2n+1}$, there is one spinor representation:

| Type | Spinor | Dynkin label | Dimension | Weights |
|---|---|---|---:|---|
| $B_n$ | $S$ | $(0,\dots,0,1)$ | $2^n$ | $\frac12(\pm e_1\pm\cdots\pm e_n)$, all signs |

All $2^n$ sign choices occur in the same irreducible spinor representation.

For $D_n=\mathfrak{so}_{2n}$, the Dirac spinor splits into two half-spinor representations:

$$\begin{align}
S_{\mathrm{Dirac}}=S_+\oplus S_-.
\end{align}$$

With the convention used here,

| Type | Spinor | Dynkin label | Dimension | Weights |
|---|---|---|---:|---|
| $D_n$ | $S_+$ | $(0,\dots,0,1)$ | $2^{n-1}$ | $\frac12(\pm e_1\pm\cdots\pm e_n)$ with an even number of minus signs |
| $D_n$ | $S_-$ | $(0,\dots,1,0)$ | $2^{n-1}$ | $\frac12(\pm e_1\pm\cdots\pm e_n)$ with an odd number of minus signs |

Some authors exchange the names $S_+$ and $S_-$; the two Dynkin labels and the even/odd sign rule are the invariant data to track.

Useful examples:

$$\begin{align}
B_3=\mathfrak{so}_7:\qquad S=(0,0,1),\qquad \dim S=8.
\end{align}$$

$$\begin{align}
D_4=\mathfrak{so}_8:\qquad 8_v=(1,0,0,0),\quad 8_s=(0,0,0,1),\quad 8_c=(0,0,1,0).
\end{align}$$

The $D_4$ triality automorphism permutes these three $8$-dimensional representations.

# Exceptional Lie algebras

| Type | Rank | Dimension | Number of roots | Smallest nontrivial representation | Recognition sign |
|---|---:|---:|---:|---:|---|
| $G_2$ | 2 | 14 | 12 | 7 | Two nodes with a triple edge |
| $F_4$ | 4 | 52 | 48 | 26 | Four nodes with one double edge |
| $E_6$ | 6 | 78 | 72 | 27 | $E$-type diagram with six nodes |
| $E_7$ | 7 | 133 | 126 | 56 | $E$-type diagram with seven nodes |
| $E_8$ | 8 | 248 | 240 | 248 | Smallest nontrivial representation is adjoint |

# G2 model

With long simple root $\alpha_1$ and short simple root $\alpha_2$, use

$$\begin{align}
A=\begin{pmatrix}2&-1\\
-3&2\end{pmatrix}.
\end{align}$$

The positive roots are

$$\begin{align}
\Phi^+ =\{\alpha_1,\alpha_2,\alpha_1+\alpha_2,\alpha_1+2\alpha_2, \alpha_1+3\alpha_2,2\alpha_1+3\alpha_2\}.
\end{align}$$

The positive short roots are

$$\begin{align}
\alpha_2,\qquad \alpha_1+\alpha_2,\qquad \alpha_1+2\alpha_2,
\end{align}$$

and the positive long roots are

$$\begin{align}
\alpha_1,\qquad \alpha_1+3\alpha_2,\qquad 2\alpha_1+3\alpha_2.
\end{align}$$

In this course convention,

$$\begin{align}
(0,1)=7,\qquad (1,0)=14.
\end{align}$$

Common decompositions:

$$\begin{align}
7\otimes7&=1\oplus7\oplus14\oplus27,\\
14\otimes7&=7\oplus27\oplus64,\\
14\otimes14&=1\oplus14\oplus27\oplus77\oplus77'.
\end{align}$$

# F4 model

In $\mathbb R^4$, one convenient model is

$$\begin{align}
\Phi(F_4) =\{\pm e_i\}
\cup\{\pm e_i\pm e_j\}_{i<j} \cup\left\{\frac12(\pm e_1\pm e_2\pm e_3\pm e_4)\right\}.
\end{align}$$

This gives $8+24+16=48$ roots. The smallest nontrivial representation has dimension $26$, and the adjoint has dimension $52$.

The most useful low-dimensional tensor product is

$$\begin{align}
26\otimes26=1\oplus26\oplus52\oplus273\oplus324.
\end{align}$$

Dimension check:

$$\begin{align}
676=1+26+52+273+324.
\end{align}$$

# E8 model

In $\mathbb R^8$, one standard model is

$$\begin{align}
\Phi(E_8) =\{\pm e_i\pm e_j\}_{i<j} \cup \left\{ \frac12(\pm e_1\pm\cdots\pm e_8)
\ \middle|\
\text{the number of minus signs is even} \right\}.
\end{align}$$

The first part has $112$ roots and the second part has $128$ roots, for a total of $240$. Hence

$$\begin{align}
\dim E_8=240+8=248.
\end{align}$$

The root lattice and weight lattice of $E_8$ coincide, and $E_8$ has no nontrivial minuscule representation. Its smallest nontrivial representation is therefore the adjoint representation of dimension $248$.

# Exam checklist

For recognition problems, first decide:

- Is the bilinear form symmetric or skew-symmetric?
- Is the defining dimension odd or even?
- Is the algebra traceless matrices?
- Are there two root lengths?
- Is there a low-rank isomorphism that changes labels?

The closed-book core is

$$\begin{align}
A_n&:\ e_i-e_j,\\
B_n&:\ \pm e_i\pm e_j,\ \pm e_i,\\
C_n&:\ \pm e_i\pm e_j,\ \pm2e_i,\\
D_n&:\ \pm e_i\pm e_j.
\end{align}$$

For exceptional algebras, the essential data are

$$
\begin{array}{c|ccccc}
\mathfrak g & G_2 & F_4 & E_6 & E_7 & E_8\\
\hline
\mathrm{rank} & 2 & 4 & 6 & 7 & 8\\
\dim & 14 & 52 & 78 & 133 & 248\\
\text{smallest rep} & 7 & 26 & 27 & 56 & 248
\end{array}
$$
