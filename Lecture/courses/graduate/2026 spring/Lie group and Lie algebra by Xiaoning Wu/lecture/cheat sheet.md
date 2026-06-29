---
title: "Lie group and Lie algebra cheat sheet"
date: 2026-06-28
summary: "Closed-book review sheet distilled from the homework: rotation and SU(2) identities, Cartan-Weyl data, classical and exceptional Lie algebra recognition, and representation calculation templates."
---

# Lie Group and Lie Algebra Cheat Sheet

This sheet is distilled from the homework. It is written as a closed-book rehearsal checklist: first identify the problem type, then apply the corresponding calculation template, then run the dimension or normalization check.

# First move by problem type

| Prompt type | First move | Final check |
|---|---|---|
| Group homomorphism | Define the image on generators and check relations | Kernel is normal; image has the right order |
| Matrix group | Write $g(t)=I+tX+O(t^2)$ and linearize the defining equation | Count independent parameters |
| $SU(2)$ or $SO(3)$ rotations | Use Pauli matrices, Euler angles, or Rodrigues' formula | Match trace, axis, and determinant |
| Semidirect product algebra | Write the brackets among translation and rotation generators | Check Jacobi or representation action |
| Adjoint representation | Use $\operatorname{ad}_X(Y)=[X,Y]$ | $[\operatorname{ad}_X,\operatorname{ad}_Y]=\operatorname{ad}_{[X,Y]}$ |
| Killing form | Compute $B_{AB}=C_{AD}^{\ \ C}C_{BC}^{\ \ D}$ | Degenerate iff not semisimple |
| Root system | Choose Cartan, positive roots, simple roots | Cartan integers and root count |
| Irrep dimension | Translate label to highest weight | Weyl or hook dimension formula |
| Tensor product | Add highest weights, then use characters or LR rule | Total dimensions match |
| CG coefficients | Solve $E_{\alpha_i}v=0$ in each candidate highest-weight space | Orthogonalize if multiplicity is greater than $1$ |
| Spinor or Lorentz problem | Use the relevant double cover | Separate real form from complexified algebra |

# Conventions

Physics Hermitian generators usually satisfy

$$\begin{align}
[J_i,J_j]=i\epsilon_{ijk}J_k.
\end{align}$$

The corresponding anti-Hermitian mathematical generators are $T_i=-iJ_i$.

In the homework convention for Cartan matrices,

$$\begin{align}
A_{ij}=\langle \alpha_i^\vee,\alpha_j\rangle =\frac{2(\alpha_i,\alpha_j)}{(\alpha_i,\alpha_i)}.
\end{align}$$

Since $\langle \alpha_i^\vee,\omega_j\rangle=\delta_{ij}$, the columns of $A$ give the simple roots in the fundamental-weight basis:

$$\begin{align}
\alpha_j=\sum_i A_{ij}\omega_i.
\end{align}$$

When using tables or software, check whether the author uses $A_{ij}$ or its transpose.

# Rotation and SU(2) identities

The Pauli matrices satisfy

$$\begin{align}
\sigma_i\sigma_j=\delta_{ij}\mathbf{1}+i\epsilon_{ijk}\sigma_k,
\end{align}$$

hence

$$\begin{align}
(\vec{\sigma}\cdot\vec{n})(\vec{\sigma}\cdot\vec{m}) =\mathbf{1}(\vec{n}\cdot\vec{m})+i\vec{\sigma}\cdot(\vec{n}\times\vec{m}).
\end{align}$$

The $SU(2)$ axis-angle parametrization used in the homework is

$$\begin{align}
A(\vec{n},\theta)=\cos\frac{\theta}{2}-i\vec{\sigma}\cdot\vec{n}\sin\frac{\theta}{2}.
\end{align}$$

For

$$\begin{align}
\vec{n}=(\sin\psi\cos\phi,\sin\psi\sin\phi,\cos\psi),
\end{align}$$

the invariant volume form derived from $A^{-1}dA$ is

$$\begin{align}
d\mu=\frac{1}{2}\sin^2\frac{\theta}{2}\sin\psi\,d\theta\,d\psi\,d\phi.
\end{align}$$

The $SO(3)$ Euler convention in the homework is

$$\begin{align}
R(\alpha,\beta,\gamma)=R_3(\alpha)R_2(\beta)R_3(\gamma).
\end{align}$$

If $\sin\beta\ne 0$, a quick extraction is

$$\begin{align}
\beta=\arccos R_{33},\qquad \alpha=\operatorname{atan2}(R_{23},R_{13}),\qquad \gamma=\operatorname{atan2}(R_{32},-R_{31}).
\end{align}$$

Rodrigues' formula is

$$\begin{align}
R(\vec{n},\omega)=I+\sin\omega\,N+(1-\cos\omega)N^2,
\end{align}$$

where

$$\begin{align}
N=\begin{pmatrix}
0&-n_z&n_y\\
n_z&0&-n_x\\
-n_y&n_x&0
\end{pmatrix}.
\end{align}$$

# Basic Lie algebra templates

For the Euclidean algebra $\mathcal{E}(3)=\mathbb{R}^3\rtimes\mathfrak{so}(3)$,

$$\begin{align}
[\hat e_i,\hat e_j]&=0,\\
[J_i,J_j]&=i\epsilon_{ijk}J_k,\\
[J_i,\hat e_j]&=i\epsilon_{ijk}\hat e_k.
\end{align}$$

Its Killing form is degenerate because the translation ideal is abelian.

For the Lorentz algebra in physics conventions,

$$\begin{align}
[J_i,J_j]&=i\epsilon_{ijk}J_k,\\
[J_i,K_j]&=i\epsilon_{ijk}K_k,\\
[K_i,K_j]&=-i\epsilon_{ijk}J_k.
\end{align}$$

After complexification,

$$\begin{align}
A_i=\frac{1}{2}(J_i+iK_i),\qquad B_i=\frac{1}{2}(J_i-iK_i)
\end{align}$$

give two commuting $\mathfrak{su}(2)$-type copies:

$$\begin{align}
[A_i,A_j]=i\epsilon_{ijk}A_k,\qquad [B_i,B_j]=i\epsilon_{ijk}B_k,\qquad [A_i,B_j]=0.
\end{align}$$

For the adjoint representation,

$$\begin{align}
\operatorname{ad}_{x_i}x_j=[x_i,x_j]=C_{ij}^{\ \ k}x_k,
\end{align}$$

so the matrix entries are

$$\begin{align}
(\operatorname{ad}_{x_i})_j^{\ k}=C_{ij}^{\ \ k}.
\end{align}$$

# Classical simple Lie algebras

| Type | Complex algebra | Rank | Dimension | Roots | Defining representation |
|---|---:|---:|---:|---|---:|
| $A_n$ | $\mathfrak{sl}_{n+1}$ | $n$ | $n(n+2)$ | $\epsilon_i-\epsilon_j$ | $n+1$ |
| $B_n$ | $\mathfrak{so}_{2n+1}$ | $n$ | $n(2n+1)$ | $\pm e_i\pm e_j,\ \pm e_i$ | $2n+1$ |
| $C_n$ | $\mathfrak{sp}_{2n}$ | $n$ | $n(2n+1)$ | $\pm e_i\pm e_j,\ \pm 2e_i$ | $2n$ |
| $D_n$ | $\mathfrak{so}_{2n}$ | $n$ | $n(2n-1)$ | $\pm e_i\pm e_j$ | $2n$ |

Standard simple roots:

$$\begin{align}
A_n:\quad &\alpha_i=\epsilon_i-\epsilon_{i+1},\\
B_n:\quad &\alpha_i=e_i-e_{i+1}\ (i<n),\quad \alpha_n=e_n,\\
C_n:\quad &\alpha_i=e_i-e_{i+1}\ (i<n),\quad \alpha_n=2e_n,\\
D_n:\quad &\alpha_i=e_i-e_{i+1}\ (i<n),\quad \alpha_n=e_{n-1}+e_n.
\end{align}$$

Low-rank isomorphisms to remember:

$$\begin{align}
A_1\simeq B_1\simeq C_1,\qquad D_2\simeq A_1\oplus A_1,
\end{align}$$

$$\begin{align}
A_3\simeq D_3,\qquad B_2\simeq C_2.
\end{align}$$

In compact group language:

$$\begin{align}
Spin(3)\simeq SU(2),\quad Spin(4)\simeq SU(2)\times SU(2),\quad Spin(5)\simeq Sp(2),\quad Spin(6)\simeq SU(4).
\end{align}$$

# Cartan-Weyl mechanics

The root decomposition is

$$\begin{align}
\mathfrak{g}=\mathfrak{h}\oplus\bigoplus_{\alpha\in\Phi}\mathfrak{g}_\alpha,\qquad [H,E_\alpha]=\alpha(H)E_\alpha.
\end{align}$$

For a root string through $\alpha$ in the $\beta$ direction,

$$\begin{align}
\alpha-q\beta,\ldots,\alpha,\ldots,\alpha+p\beta,
\end{align}$$

the root string theorem gives

$$\begin{align}
q-p=\langle\alpha,\beta^\vee\rangle.
\end{align}$$

For reduced crystallographic root systems, every rank-two slice is one of

$$\begin{align}
A_1\times A_1,\qquad A_2,\qquad B_2=C_2,\qquad G_2,
\end{align}$$

so a root string has length at most $4$.

For a simple algebra, the adjoint representation has weights

$$\begin{align}
\Phi\quad \text{plus zero weight of multiplicity }\operatorname{rank}\mathfrak{g}.
\end{align}$$

# C3 example

For $C_3=\mathfrak{sp}(6)$, choose

$$\begin{align}
\alpha_1=e_1-e_2,\qquad \alpha_2=e_2-e_3,\qquad \alpha_3=2e_3.
\end{align}$$

Then

$$\begin{align}
A=\begin{pmatrix}
2&-1&0\\
-1&2&-2\\
0&-1&2
\end{pmatrix},
\end{align}$$

and

$$\begin{align}
\Phi(C_3)=\{\pm 2e_i,\ \pm e_i\pm e_j\mid 1\le i<j\le 3\}.
\end{align}$$

There are $18$ roots and

$$\begin{align}
\dim\mathfrak{sp}(6)=18+3=21.
\end{align}$$

The fundamental weights are

$$\begin{align}
\omega_1=e_1,\qquad \omega_2=e_1+e_2,\qquad \omega_3=e_1+e_2+e_3.
\end{align}$$

# G2 convention

The homework convention uses

$$\begin{align}
A=\begin{pmatrix}
2&-1\\
-3&2
\end{pmatrix},\qquad
\alpha_1=2\omega_1-3\omega_2,\qquad \alpha_2=-\omega_1+2\omega_2.
\end{align}$$

Here $\alpha_1$ is long and $\alpha_2$ is short. The positive roots are

$$\begin{align}
\alpha_2,\quad \alpha_1+\alpha_2,\quad \alpha_1+2\alpha_2,\quad \alpha_1,\quad \alpha_1+3\alpha_2,\quad 2\alpha_1+3\alpha_2.
\end{align}$$

In this course convention,

$$\begin{align}
(0,1)=7,\qquad (1,0)=14.
\end{align}$$

Sage/Bourbaki uses the opposite order for these two labels, so translate by

$$\begin{align}
(a,b)_{\text{course}}\longleftrightarrow (b,a)_{\text{Sage}}.
\end{align}$$

# Highest weights and dimensions

A finite-dimensional irreducible representation is determined by a dominant integral highest weight

$$\begin{align}
\lambda=\sum_{i=1}^r a_i\omega_i,\qquad a_i\in\mathbb{Z}_{\ge 0}.
\end{align}$$

The tuple $(a_1,\ldots,a_r)$ is the Dynkin label.

Weyl's dimension formula is

$$\begin{align}
\dim V_\lambda=\prod_{\alpha\in\Phi^+}\frac{(\lambda+\rho,\alpha)}{(\rho,\alpha)},\qquad \rho=\frac{1}{2}\sum_{\alpha\in\Phi^+}\alpha.
\end{align}$$

Special cases:

$$\begin{align}
SU(2):\quad \dim V_m=m+1=2j+1.
\end{align}$$

$$\begin{align}
SU(3):\quad \dim(p,q)=\frac{1}{2}(p+1)(q+1)(p+q+2).
\end{align}$$

For $SU(N)$ Young diagrams,

$$\begin{align}
\dim_N\lambda=\prod_{(i,j)\in\lambda}\frac{N+j-i}{h_{ij}}.
\end{align}$$

The Dynkin label of a Young diagram $\lambda=[\lambda_1,\lambda_2,\ldots]$ is

$$\begin{align}
(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\ldots).
\end{align}$$

For $SU(N)$, a full column of height $N$ is the determinant representation and may be removed.

For $USp(2r)$, a Young diagram $\lambda=[\lambda_1,\ldots,\lambda_r]$ has $C_r$ Dynkin label

$$\begin{align}
(\lambda_1-\lambda_2,\ldots,\lambda_{r-1}-\lambda_r,\lambda_r).
\end{align}$$

For $SO(6)\simeq D_3$, an ordinary tensor Young diagram $\lambda=[\lambda_1,\lambda_2,\lambda_3]$ maps in the homework convention to

$$\begin{align}
(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\lambda_2+\lambda_3).
\end{align}$$

A positive spinor-tensor label adds $1$ to the last entry:

$$\begin{align}
[+s(\lambda)]\longleftrightarrow
(\lambda_1-\lambda_2,\lambda_2-\lambda_3,\lambda_2+\lambda_3+1).
\end{align}$$

# Young, GT, and weight diagrams

For $SU(3)$,

$$\begin{align}
\text{Young diagram}\Longleftrightarrow \text{GT pattern}\Longleftrightarrow
\text{semistandard Young tableau}\Longleftrightarrow \text{weight diagram}.
\end{align}$$

For a GT pattern

$$
\Lambda=\begin{matrix}
m_{13} && m_{23} && m_{33}\\
& m_{12} && m_{22}\\
&& m_{11}
\end{matrix},
$$

define row sums

$$\begin{align}
S_1=m_{11},\qquad S_2=m_{12}+m_{22},\qquad S_3=m_{13}+m_{23}+m_{33}.
\end{align}$$

The corresponding $U(3)$ weight is

$$\begin{align}
(n_1,n_2,n_3)=(S_1,S_2-S_1,S_3-S_2),
\end{align}$$

and the $SU(3)$ plane weight can be recorded as

$$\begin{align}
(n_1-n_2,n_2-n_3)=(2S_1-S_2,2S_2-S_1-S_3).
\end{align}$$

For weight diagrams, remember:

1. A plane weight diagram records weights and multiplicities.
1. A box weight diagram records basis states, so repeated weights become repeated boxes.
1. A root generator $E_\alpha$ can only connect $\ket{\mu,r}$ to $\ket{\mu+\alpha,s}$.
1. If the target weight is absent, the matrix element is zero.

For an $\mathfrak{sl}_2$ string in standard normalization,

$$\begin{align}
p=\max\{k\mid \mu+k\alpha_i\text{ is a weight}\},\qquad q=\max\{k\mid \mu-k\alpha_i\text{ is a weight}\},
\end{align}$$

then

$$\begin{align}
f_i\ket{\mu}=\sqrt{(p+1)q}\,\ket{\mu-\alpha_i}.
\end{align}$$

# Tensor products

The stable workflow is

$$\begin{align}
V_\lambda\otimes V_\mu=\bigoplus_\nu N_{\lambda\mu}^{\nu}V_\nu.
\end{align}$$

1. The top component $V_{\lambda+\mu}$ appears at least once.
1. Use characters:

$$\begin{align}
\chi_\lambda\chi_\mu=\sum_\nu N_{\lambda\mu}^{\nu}\chi_\nu.
\end{align}$$

1. For $SU(N)$, use Littlewood-Richardson and remove full height-$N$ columns.
1. For $SO(N)$, $USp(2r)$, $G_2$, and $F_4$, use Dynkin labels and Weyl characters.
1. Always check

$$\begin{align}
\dim V_\lambda\dim V_\mu=\sum_\nu N_{\lambda\mu}^{\nu}\dim V_\nu.
\end{align}$$

If CG coefficients are required, solve

$$\begin{align}
E_{\alpha_i}v=0\qquad \text{for all simple roots }\alpha_i.
\end{align}$$

If $N_{\lambda\mu}^{\nu}>1$, choose an orthonormal basis in the corresponding highest-weight null space.

# Tensor products to memorize

For $SU(2)$,

$$\begin{align}
V_m\otimes V_n=V_{m+n}\oplus V_{m+n-2}\oplus\cdots\oplus V_{|m-n|}.
\end{align}$$

For $SU(3)$,

$$\begin{align}
3\otimes 3&=6\oplus\bar{3},\\
3\otimes\bar{3}&=8\oplus 1,\\
8\otimes 3&=15\oplus\bar{6}\oplus 3,\\
8\otimes 8&=27\oplus 10\oplus\overline{10}\oplus 8\oplus 8\oplus 1.
\end{align}$$

Homework Young-diagram examples:

$$\begin{align}
3^{\otimes 4}=[4]\oplus 3[3,1]\oplus 2[2,2]\oplus 3[2,1,1].
\end{align}$$

For $SU(3)$, $[2,1,1]\sim[1]$, so the dimension check is

$$\begin{align}
15+3\cdot 15+2\cdot 6+3\cdot 3=81.
\end{align}$$

Another homework example is

$$\begin{align}
[3,1]\otimes[2,1]=[5,2]\oplus[4]\oplus[4,3]\oplus 2[3,1]\oplus[2,2]\oplus[1],
\end{align}$$

with

$$\begin{align}
42+15+24+2\cdot 15+6+3=120=15\cdot 8.
\end{align}$$

For $G_2$ in the course convention,

$$\begin{align}
7\otimes 7&=27\oplus 14\oplus 7\oplus 1,\\
14\otimes 14&=1\oplus 14\oplus 27\oplus 77\oplus 77,\\
14\otimes 7&=7\oplus 27\oplus 64.
\end{align}$$

In Dynkin labels of the course convention,

$$\begin{align}
(1,0)\otimes(1,0)&=(0,0)\oplus(1,0)\oplus(0,2)\oplus(0,3)\oplus(2,0),\\
(1,0)\otimes(0,1)&=(0,1)\oplus(0,2)\oplus(1,1).
\end{align}$$

For $F_4$,

$$\begin{align}
26\otimes 26=1\oplus 26\oplus 52\oplus 273\oplus 324.
\end{align}$$

# Symmetric and antisymmetric squares

For a defining representation $V$,

$$\begin{align}
V\otimes V=S^2V\oplus \wedge^2V.
\end{align}$$

Useful cases:

$$\begin{align}
SU(n):\quad &\wedge^k V\text{ has highest weight }\omega_k,\\
SO(n):\quad &\wedge^2V\simeq \operatorname{ad},\\
Sp(2n):\quad &S^2V\simeq \operatorname{ad}.
\end{align}$$

For $SO(N)$,

$$\begin{align}
N\otimes N=S^2_0N\oplus\wedge^2N\oplus 1.
\end{align}$$

For $G_2$,

$$\begin{align}
S^2 7=27\oplus 1,\qquad \wedge^2 7=14\oplus 7.
\end{align}$$

# Invariant tensor identity

With fundamental $SU(N)$ generators normalized by

$$\begin{align}
\operatorname{tr}(T_AT_B)=\frac{1}{2}\delta_{AB},
\end{align}$$

the completeness relation is

$$\begin{align}
\sum_{A=1}^{N^2-1}(T_A)_a^{\ c}(T_A)_b^{\ d} =\frac{1}{2}\delta_a^d\delta_b^c-\frac{1}{2N}\delta_a^c\delta_b^d.
\end{align}$$

The quick derivation is:

1. The tensor is $SU(N)$ invariant.
1. The invariant $(2,2)$ tensors are spanned by $\delta_a^c\delta_b^d$ and $\delta_a^d\delta_b^c$.
1. Tracelessness and normalization fix the two coefficients.

# Spinors and covers

For $SO(2\ell+1)$, the basic spinor has dimension

$$\begin{align}
2^\ell
\end{align}$$

and weights

$$\begin{align}
\left(\pm\frac{1}{2},\ldots,\pm\frac{1}{2}\right).
\end{align}$$

For $SO(2\ell)$, the Dirac spinor splits into two Weyl spinors, each of dimension

$$\begin{align}
2^{\ell-1}.
\end{align}$$

The two chiralities are distinguished by whether the number of minus signs is even or odd.

For $SO(4)$,

$$\begin{align}
Spin(4)\simeq SU(2)_L\times SU(2)_R,\qquad SO(4)\simeq \frac{SU(2)_L\times SU(2)_R}{\mathbb{Z}_2}.
\end{align}$$

An irrep is

$$\begin{align}
D^{jk}=D_L^j\otimes D_R^k,
\end{align}$$

and it descends to $SO(4)$ when

$$\begin{align}
j+k\in\mathbb{Z}.
\end{align}$$

If a rotation has two plane angles $\theta_1,\theta_2$, then

$$\begin{align}
\theta_L=\theta_1+\theta_2,\qquad \theta_R=\theta_1-\theta_2.
\end{align}$$

The character is

$$\begin{align}
\chi_{jk}(\theta_1,\theta_2) =\frac{\sin((2j+1)(\theta_1+\theta_2)/2)}{\sin((\theta_1+\theta_2)/2)} \times \frac{\sin((2k+1)(\theta_1-\theta_2)/2)}{\sin((\theta_1-\theta_2)/2)}
\end{align}$$

with multiplication between the two fractions understood:

$$\begin{align}
\chi_{jk}=\chi_j(\theta_L)\chi_k(\theta_R).
\end{align}$$

# Exceptional recognition

| Type | Rank | Dimension | Smallest nontrivial representation | Quick sign |
|---|---:|---:|---:|---|
| $G_2$ | $2$ | $14$ | $7$ | Triple bond, automorphisms of octonions |
| $F_4$ | $4$ | $52$ | $26$ | One double bond, exceptional Jordan algebra |
| $E_6$ | $6$ | $78$ | $27,\overline{27}$ | Complex fundamental pair |
| $E_7$ | $7$ | $133$ | $56$ | Symplectic-type fundamental |
| $E_8$ | $8$ | $248$ | $248$ | Adjoint is smallest |

# Final checks before trusting an answer

1. Dimension: tensor products and decompositions must match total dimension.
1. Rank: the zero weight in the adjoint has multiplicity equal to the rank.
1. Center charge: for $SU(N)$, full columns and conjugation must be compatible.
1. Root length: double and triple bonds require the correct long-short convention.
1. Real form: do not confuse a compact real algebra with its complexification or with a noncompact real form.
1. Generator normalization: Casimir and Fierz coefficients change if $\operatorname{tr}(T_AT_B)$ changes.
1. Euler angles: extraction formulas fail at $\sin\beta=0$ and need a separate convention.

# Verification notes

Checked with Sage 10.9:

1. $SU(3)$ dimensions and tensor products listed above, including $3\otimes 3$, $3\otimes\bar{3}$, $8\otimes 8$, and $[3,1]\otimes[2,1]$.
1. $C_3$ root count $18$, rank $3$, and adjoint dimension $21$.
1. $G_2$ dimensions and tensor products after translating the course labels by $(a,b)_{\text{course}}\leftrightarrow(b,a)_{\text{Sage}}$.
1. $F_4$ decomposition $26\otimes 26=1\oplus 26\oplus 52\oplus 273\oplus 324$.
1. $SU(6)$, $SO(6)$, and $USp(2r)$ homework dimension examples used as label-conversion checks.
1. Pauli multiplication and the $SU(N)$ completeness identity for $N=2,3,4$ with the stated normalization.

Not machine-verified here: covering-space statements, root string theorem, and the derivation of the Haar volume form. These are structural theorem or derivation items copied from the homework workflow.
