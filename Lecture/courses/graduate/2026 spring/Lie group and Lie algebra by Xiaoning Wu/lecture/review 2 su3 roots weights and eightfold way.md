---
title: "Review 2: SU(3), roots, weights, and the eightfold way"
date: 2026-06-17
summary: "Example-first review of SU(3) as the basic model for Cartan subalgebras, roots, weights, highest weights, Dynkin labels, and tensor product decompositions."
---

# Review 2: SU(3), roots, weights, and the eightfold way

$SU(3)$ is the first example where roots and weights become genuinely two-dimensional. It is the best place to learn the practical meaning of Cartan subalgebra, positive roots, highest weights, Dynkin labels, and weight diagrams.

# Matrix model

$$\begin{align}
SU(3)=\{U\in M_3(\mathbb{C})\mid U^\dagger U=1,\det U=1\}.
\end{align}$$

The Lie algebra is

$$\begin{align}
\mathfrak{su}(3)=\{X\in M_3(\mathbb{C})\mid X^\dagger=-X,\operatorname{tr}X=0\}.
\end{align}$$

After complexification,

$$\begin{align}
\mathfrak{su}(3)_\mathbb{C}\simeq \mathfrak{sl}_3(\mathbb{C})=\{X\in M_3(\mathbb{C})\mid \operatorname{tr}X=0\}.
\end{align}$$

For roots and weights, one usually works with $\mathfrak{sl}_3(\mathbb{C})$.

# Cartan subalgebra

A standard Cartan subalgebra is the diagonal traceless subalgebra

$$\begin{align}
\mathfrak{h}=\{\operatorname{diag}(h_1,h_2,h_3)\mid h_1+h_2+h_3=0\}.
\end{align}$$

Let $\epsilon_i$ be the functional extracting $h_i$. Since $h_1+h_2+h_3=0$, the weights live in the two-dimensional plane

$$\begin{align}
\epsilon_1+\epsilon_2+\epsilon_3=0.
\end{align}$$

# Roots

Let $E_{ij}$ be the matrix with a $1$ in the $(i,j)$ entry and zero otherwise. Then

$$\begin{align}
[H,E_{ij}]=(\epsilon_i-\epsilon_j)(H)E_{ij},\qquad H\in\mathfrak{h}.
\end{align}$$

Therefore the roots are

$$\begin{align}
\Phi=\{\epsilon_i-\epsilon_j\mid i\ne j\}.
\end{align}$$

A standard choice of simple roots is

$$\begin{align}
\alpha_1=\epsilon_1-\epsilon_2,\qquad \alpha_2=\epsilon_2-\epsilon_3.
\end{align}$$

The positive roots are

$$\begin{align}
\alpha_1,\qquad \alpha_2,\qquad \alpha_1+\alpha_2=\epsilon_1-\epsilon_3.
\end{align}$$

The Dynkin diagram is type $A_2$:

$$\begin{align}
\circ-\circ.
\end{align}$$

![A2 roots for SU(3)](../../../../../../Attachments/lie-su3-roots.png)

# Fundamental weights and Dynkin labels

The fundamental weights $\omega_1,\omega_2$ are defined by

$$\begin{align}
\frac{2(\omega_i,\alpha_j)}{(\alpha_j,\alpha_j)}=\delta_{ij}.
\end{align}$$

For $A_2$ one can write

$$\begin{align}
\omega_1=\frac{2\epsilon_1-\epsilon_2-\epsilon_3}{3},\qquad \omega_2=\frac{\epsilon_1+\epsilon_2-2\epsilon_3}{3}.
\end{align}$$

An irreducible representation is labelled by

$$\begin{align}
\lambda=p\omega_1+q\omega_2,\qquad (p,q)\in\mathbb{Z}_{\ge 0}^2.
\end{align}$$

The pair $(p,q)$ is the Dynkin label.

# Basic representations

The fundamental representation is

$$\begin{align}
3=(1,0).
\end{align}$$

Its weights are

$$\begin{align}
\epsilon_1,\qquad \epsilon_2,\qquad \epsilon_3,
\end{align}$$

understood modulo the relation $\epsilon_1+\epsilon_2+\epsilon_3=0$.

The conjugate fundamental representation is

$$\begin{align}
\bar{3}=(0,1).
\end{align}$$

![SU(3) fundamental and conjugate fundamental weight diagrams](../../../../../../Attachments/lie-su3-fundamental-weights.png)

The adjoint representation is

$$\begin{align}
8=(1,1).
\end{align}$$

Its nonzero weights are the six roots, and the zero weight has multiplicity $2$, equal to the rank.

# Dimension formula

For $SU(3)$, the irreducible representation with Dynkin label $(p,q)$ has dimension

$$\begin{align}
\dim(p,q)=\frac{1}{2}(p+1)(q+1)(p+q+2).
\end{align}$$

Examples:

$$\begin{align}
\dim(1,0)=3,\qquad \dim(0,1)=3,\qquad \dim(1,1)=8,\qquad \dim(2,0)=6.
\end{align}$$

# Tensor product examples

The most useful decompositions are

$$\begin{align}
3\otimes 3=6\oplus\bar{3},
\end{align}$$

$$\begin{align}
3\otimes\bar{3}=8\oplus 1,
\end{align}$$

$$\begin{align}
8\otimes 3=15\oplus \bar{6}\oplus 3,
\end{align}$$

$$\begin{align}
8\otimes 8=27\oplus 10\oplus\overline{10}\oplus 8\oplus 8\oplus 1.
\end{align}$$

The dimensions check as

$$\begin{align}
3\cdot 3=6+3,\qquad 3\cdot 3=8+1,\qquad 8\cdot 3=15+6+3,\qquad 8\cdot 8=27+10+10+8+8+1.
\end{align}$$

# How to decompose by highest weights

The practical algorithm is:

1. Add the highest weights to find the highest possible component.
1. Subtract the full weight diagram of that component from the product character.
1. Repeat with the highest remaining weight.
1. Stop when no weights remain.

For example,

$$\begin{align}
3\otimes\bar{3}=(1,0)\otimes(0,1).
\end{align}$$

The top component has highest weight

$$\begin{align}
\omega_1+\omega_2=(1,1),
\end{align}$$

which is the adjoint $8$. The dimensions leave one state, so

$$\begin{align}
3\otimes\bar{3}=8\oplus 1.
\end{align}$$

# Physical labels

In particle physics one often uses

$$\begin{align}
I_3=\frac{1}{2}\lambda_3,\qquad Y=\frac{1}{\sqrt{3}}\lambda_8,
\end{align}$$

where $\lambda_3,\lambda_8$ are Gell-Mann matrices. Weight diagrams are often drawn in the $(I_3,Y)$ plane.

The adjoint $8$ gives the standard octet pattern. The representation $10=(3,0)$ gives the decuplet pattern.

# Exam moves

1. If the object is diagonal, use its eigenvalues as weights.
1. If the object is off-diagonal $E_{ij}$, its root is $\epsilon_i-\epsilon_j$.
1. To identify the representation, find the highest weight and express it as $(p,q)$.
1. To check a proposed tensor decomposition, compare both the highest weights and the total dimension.
1. For $SU(3)$ dimensions, use $\dim(p,q)=\frac{1}{2}(p+1)(q+1)(p+q+2)$ before doing anything more elaborate.
