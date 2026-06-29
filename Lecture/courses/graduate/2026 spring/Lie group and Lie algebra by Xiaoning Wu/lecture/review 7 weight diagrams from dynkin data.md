---
title: "Review 7: Weight diagrams from Dynkin data"
date: 2026-06-29
summary: "Exam workflow for reading a Cartan matrix from a Dynkin diagram, reading simple roots in the fundamental-weight basis, generating small rank-two weight diagrams, and assigning lowering-operator arrows."
---

# Review 7: Weight diagrams from Dynkin Data

This note fixes the practical workflow for small rank-two weight diagrams. It is meant for exam problems where the input is a Dynkin diagram or a Cartan matrix and the output is a box weight diagram with lowering arrows.

# Convention

Use the course convention

$$\begin{align}
A_{ij}=\langle \alpha_i^\vee,\alpha_j\rangle =\frac{2(\alpha_i,\alpha_j)}{(\alpha_i,\alpha_i)}.
\end{align}$$

The fundamental weights satisfy

$$\begin{align}
\langle \alpha_i^\vee,\omega_j\rangle=\delta_{ij}.
\end{align}$$

Therefore, if

$$\begin{align}
\alpha_j=\sum_i c_i\omega_i,
\end{align}$$

then

$$\begin{align}
c_i=\langle \alpha_i^\vee,\alpha_j\rangle=A_{ij}.
\end{align}$$

So in this convention:

$$\begin{align}
\boxed{\alpha_j=\sum_i A_{ij}\omega_i.}
\end{align}$$

In words: read simple roots from the columns of the Cartan matrix.

# Reading the Cartan Matrix from a Dynkin Diagram

The diagonal entries are always

$$\begin{align}
A_{ii}=2.
\end{align}$$

For different nodes:

1. No edge:

$$\begin{align}
A_{ij}=A_{ji}=0.
\end{align}$$

1. Single edge:

$$\begin{align}
A_{ij}=A_{ji}=-1.
\end{align}$$

1. Double edge, arrow toward the short root. If $\alpha_i$ is long and $\alpha_j$ is short, then

$$\begin{align}
A_{ij}=-1,\qquad A_{ji}=-2.
\end{align}$$

1. Triple edge, arrow toward the short root. If $\alpha_i$ is long and $\alpha_j$ is short, then

$$\begin{align}
A_{ij}=-1,\qquad A_{ji}=-3.
\end{align}$$

In this convention, the short-root row is more negative.

# Dynkin Coordinates

If a weight is written as

$$\begin{align}
\mu=a_1\omega_1+\cdots+a_r\omega_r,
\end{align}$$

then its Dynkin coordinates are

$$\begin{align}
\mu=(a_1,\ldots,a_r).
\end{align}$$

The coordinate $a_i$ is exactly the coroot pairing:

$$\begin{align}
a_i=\langle\mu,\alpha_i^\vee\rangle.
\end{align}$$

Thus:

$$\begin{align}
\boxed{\text{columns give simple roots, coordinates give coroot pairings.}}
\end{align}$$

# Lowering Operators

The simple lowering operator $F_i$ moves a weight by subtracting the simple root:

$$\begin{align}
F_i:\mu\mapsto \mu-\alpha_i.
\end{align}$$

To decide whether $F_i|\mu\rangle$ is nonzero, do not only check the sign of $\langle\mu,\alpha_i^\vee\rangle$. The reliable test is:

$$\begin{align}
\boxed{\mu-\alpha_i\text{ must be a weight of the representation.}}
\end{align}$$

If the target point is not in the weight diagram, then

$$\begin{align}
F_i|\mu\rangle=0.
\end{align}$$

If the target point is present, draw an $F_i$ arrow from $\mu$ to $\mu-\alpha_i$.

# String Coefficients

Once the weight diagram is known, the coefficient on a simple-root string is a counting problem. For a fixed simple root $\alpha_i$, define

$$\begin{align}
p&=\max\{k\ge0\mid \mu+k\alpha_i\text{ is a weight}\},\\
q&=\max\{k\ge0\mid \mu-k\alpha_i\text{ is a weight}\}.
\end{align}$$

With the standard $\mathfrak{sl}_2$ normalization,

$$\begin{align}
F_i|\mu\rangle=\sqrt{(p+1)q}\,|\mu-\alpha_i\rangle.
\end{align}$$

If $\langle\mu,\alpha_i^\vee\rangle=0$, this only says $p=q$. It does not decide whether $F_i|\mu\rangle$ vanishes. The point may be isolated in the $\alpha_i$ direction, or it may be the middle of a string.

# Practical Exam Workflow

For a small rank-two representation:

1. Read the Cartan matrix from the Dynkin diagram.
1. Read each simple root from the corresponding column.
1. Write the highest weight $\lambda$ in Dynkin coordinates.
1. Use the dimension formula or known representation dimension to know how many boxes are needed.
1. Starting from $\lambda$, repeatedly test $\mu-\alpha_i$ for all simple roots.
1. Keep the target only if it belongs to the representation.
1. Stop when the number of boxes matches the dimension and the diagram has the expected Weyl symmetry.
1. Draw arrows by checking whether $\mu-\alpha_i$ is in the weight set.
1. Add coefficients by counting the corresponding $\alpha_i$-string.

# Example: $A_2$ Fundamental Representation

For

$$\begin{align}
A=\begin{pmatrix}
2&-1\\
-1&2
\end{pmatrix},
\end{align}$$

the simple roots are

$$\begin{align}
\alpha_1=(2,-1),\qquad \alpha_2=(-1,2).
\end{align}$$

For the representation $(1,0)$, the highest weight is

$$\begin{align}
\lambda=(1,0).
\end{align}$$

The lowering steps are

$$\begin{align}
(1,0)\xrightarrow{F_1}(-1,1)\xrightarrow{F_2}(0,-1).
\end{align}$$

There is no first $F_2$ arrow from $(1,0)$ because

$$\begin{align}
(1,0)-\alpha_2=(2,-2)
\end{align}$$

is not a weight of the fundamental representation.

# Example: $G_2$ Course Convention

For the course convention,

$$\begin{align}
A=\begin{pmatrix}
2&-1\\
-3&2
\end{pmatrix}.
\end{align}$$

Reading columns gives

$$\begin{align}
\alpha_1=2\omega_1-3\omega_2=(2,-3),\qquad \alpha_2=-\omega_1+2\omega_2=(-1,2).
\end{align}$$

Here $\alpha_1$ is long and $\alpha_2$ is short. In this course convention,

$$\begin{align}
(0,1)=7,\qquad (1,0)=14.
\end{align}$$

## The $7$-Dimensional Representation

For $(0,1)$, the highest weight is

$$\begin{align}
\lambda=(0,1).
\end{align}$$

The weight set is

$$\begin{align}
(0,1),\ (1,-1),\ (-1,2),\ (0,0),\ (1,-2),\ (-1,1),\ (0,-1).
\end{align}$$

The lowering arrows are

$$\begin{align}
(0,1)&\xrightarrow{F_2}(1,-1),\\
(1,-1)&\xrightarrow{F_1}(-1,2),\\
(-1,2)&\xrightarrow{F_2}(0,0),\\
(0,0)&\xrightarrow{F_2}(1,-2),\\
(1,-2)&\xrightarrow{F_1}(-1,1),\\
(-1,1)&\xrightarrow{F_2}(0,-1).
\end{align}$$

At the central weight $(0,0)$, both coroot pairings are zero. This does not determine the arrows. The actual check is

$$\begin{align}
(0,0)-\alpha_1=(-2,3)\notin \text{weights},\qquad (0,0)-\alpha_2=(1,-2)\in \text{weights}.
\end{align}$$

Therefore only the $F_2$ arrow exists from the central weight.

## The $14$-Dimensional Adjoint Representation

For $(1,0)$, the representation is the adjoint representation. Its nonzero weights are all roots, and the zero weight has multiplicity equal to the rank:

$$\begin{align}
m(0)=\operatorname{rank}G_2=2.
\end{align}$$

Thus the center of the box weight diagram has two boxes, often denoted

$$\begin{align}
0_1,\qquad 0_2.
\end{align}$$

Choose

$$\begin{align}
0_1\sim H_{\alpha_1},\qquad 0_2\sim H_{\alpha_2}.
\end{align}$$

Then the simple-root strings through the center are

$$\begin{align}
\alpha_1\xrightarrow{F_1}0_1\xrightarrow{F_1}-\alpha_1,
\end{align}$$

and

$$\begin{align}
\alpha_2\xrightarrow{F_2}0_2\xrightarrow{F_2}-\alpha_2.
\end{align}$$

For example,

$$\begin{align}
(2,-3)=\alpha_1\xrightarrow{F_1}0_1,
\end{align}$$

whereas

$$\begin{align}
(-1,2)=\alpha_2\xrightarrow{F_2}0_2.
\end{align}$$

The arrow from $\alpha_2$ goes to $0_2$, not to $0_1$, because

$$\begin{align}
[E_{-\alpha_2},E_{\alpha_2}]\sim H_{\alpha_2}.
\end{align}$$

# Role of GT Bases

Gelfand-Tsetlin bases are especially natural for type $A_n$, where the chain

$$\begin{align}
\mathfrak{gl}_1\subset\mathfrak{gl}_2\subset\cdots\subset\mathfrak{gl}_n
\end{align}$$

gives a systematic tableau model. For rank-two exam calculations outside type $A$, a box weight diagram is usually more practical: first find the points, then draw arrows, then count string lengths.
