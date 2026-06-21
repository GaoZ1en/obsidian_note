---
title: "Review 5: Exceptional Lie algebras and recognition"
date: 2026-06-17
summary: "Compact recognition guide for G2, F4, E6, E7, and E8, emphasizing ranks, dimensions, smallest representations, and what is usually needed for exams."
---

# Review 5: Exceptional Lie algebras and recognition

The exceptional complex simple Lie algebras are

$$\begin{align}
G_2,\qquad F_4,\qquad E_6,\qquad E_7,\qquad E_8.
\end{align}$$

For an exam based on physical group theory, the usual goal is recognition rather than construction from first principles.

# Summary table

| Type | Rank | Dimension | Smallest nontrivial representation | Key feature |
|---|---:|---:|---:|---|
| $G_2$ | 2 | 14 | $7$ | Automorphisms of octonions; subgroup of $SO(7)$ |
| $F_4$ | 4 | 52 | $26$ | Exceptional Jordan algebra |
| $E_6$ | 6 | 78 | $27$ and $\overline{27}$ | Complex fundamental representation |
| $E_7$ | 7 | 133 | $56$ | Symplectic-type fundamental representation |
| $E_8$ | 8 | 248 | $248$ | Adjoint is the smallest nontrivial representation |

# G2

$G_2$ has rank $2$ and dimension $14$. Its root system has $12$ roots:

$$\begin{align}
\#\Phi(G_2)=12,\qquad \dim G_2=\#\Phi+\operatorname{rank}=12+2=14.
\end{align}$$

![G2 root system](../../../../../../Attachments/lie-g2-roots.png)

There are two root lengths, with squared length ratio $3:1$. The Dynkin diagram has two nodes joined by a triple bond, with the arrow pointing to the short root.

The most useful representations are

$$\begin{align}
7,\qquad 14.
\end{align}$$

The representation $14$ is the adjoint. A standard tensor product is

$$\begin{align}
7\otimes 7=27\oplus 14\oplus 7\oplus 1.
\end{align}$$

This also splits into symmetric and antisymmetric parts:

$$\begin{align}
S^2 7=27\oplus 1,\qquad \wedge^2 7=14\oplus 7.
\end{align}$$

# F4

$F_4$ has rank $4$ and dimension $52$. Its root system has $48$ roots:

$$\begin{align}
\dim F_4=48+4=52.
\end{align}$$

It has two root lengths. The smallest nontrivial representation has dimension $26$, and the adjoint has dimension $52$.

Exam recognition signs:

- Rank $4$.
- Dimension $52$.
- A $26$-dimensional fundamental representation.
- A Dynkin diagram with four nodes and one double bond.

# E6

$E_6$ has rank $6$ and dimension $78$. The smallest nontrivial representations are

$$\begin{align}
27,\qquad \overline{27}.
\end{align}$$

The adjoint representation is $78$.

Exam recognition signs:

- Rank $6$.
- Dimension $78$.
- Complex conjugate pair $27,\overline{27}$.
- Common in grand-unified model-building.

# E7

$E_7$ has rank $7$ and dimension $133$. Its smallest nontrivial representation has dimension $56$, and the adjoint representation has dimension $133$.

Exam recognition signs:

- Rank $7$.
- Dimension $133$.
- Fundamental $56$.
- Often appears together with a symplectic invariant on the $56$.

# E8

$E_8$ has rank $8$ and dimension $248$. The adjoint representation $248$ is the smallest nontrivial representation.

Exam recognition signs:

- Rank $8$.
- Dimension $248$.
- No smaller fundamental representation like $27$ or $56$.
- All roots have the same length.
- Important in heterotic string theory through $E_8\times E_8$.

# What to memorize

The most useful compact table is

$$\begin{align}
G_2:(2,14,7),\qquad F_4:(4,52,26),\qquad E_6:(6,78,27),\qquad E_7:(7,133,56),\qquad E_8:(8,248,248).
\end{align}$$

The entries are

$$\begin{align}
(\operatorname{rank},\dim,\text{smallest nontrivial representation}).
\end{align}$$

# Exam moves

1. If rank is $2$ and the diagram has a triple bond, the answer is $G_2$.
1. If the dimension is $52$, think $F_4$.
1. If $27$ and $\overline{27}$ appear, think $E_6$.
1. If $56$ appears with dimension $133$, think $E_7$.
1. If $248$ is both the adjoint and the smallest nontrivial representation, think $E_8$.
1. For exceptional algebras, use tables for detailed decompositions unless the course explicitly trained a computation.
