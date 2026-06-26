# homework 9

## problem

Write down the Cartan matrix of the Lie algebra $C_3$ and determine its root system.

### solution

Use the standard realization of $C_3=\mathfrak{sp}(6)$ in the Euclidean space with orthonormal basis $e_1,e_2,e_3$. Choose the simple roots

$$\begin{align}
\alpha_1=e_1-e_2,\qquad \alpha_2=e_2-e_3,\qquad \alpha_3=2e_3.
\end{align}$$

the Cartan matrix is

$$\begin{align}
A_{ij}=\langle \alpha_i^\vee,\alpha_j\rangle=\begin{pmatrix}
2 & -1 & 0\\
-1 & 2 & -2\\
0 & -1 & 2
\end{pmatrix}.
\end{align}$$

The fundamental weights are

$$\begin{align}
\omega_1=e_1,\qquad \omega_2=e_1+e_2,\qquad \omega_3=e_1+e_2+e_3.
\end{align}$$

Therefore the columns of $A$ give the simple roots in the fundamental-weight basis:

$$\begin{align}
\alpha_1&=2\omega_1-\omega_2,\\
\alpha_2&=-\omega_1+2\omega_2-\omega_3,\\
\alpha_3&=-2\omega_2+2\omega_3.
\end{align}$$

The full root system is

$$\begin{align}
\Phi(C_3)=\{\pm 2e_i,\ \pm e_i\pm e_j\mid 1\leq i<j\leq 3\}.
\end{align}$$

There are $18$ roots. The positive roots for the above choice of simple roots are

$$\begin{align}
\Phi^+(C_3)=\{& e_1-e_2,\ e_2-e_3,\ 2e_3,\ e_1-e_3,\ e_2+e_3,\ e_1+e_3,\\
&e_1+e_2,\ 2e_2,\ 2e_1\}.
\end{align}$$

Equivalently, in simple-root coordinates,

$$\begin{align}
\Phi^+(C_3)=\{& \alpha_1,\alpha_2,\alpha_3,\alpha_1+\alpha_2,\alpha_2+\alpha_3,\alpha_1+\alpha_2+\alpha_3,\\
&\alpha_1+2\alpha_2+\alpha_3,\ 2\alpha_2+\alpha_3,\ 2\alpha_1+2\alpha_2+\alpha_3\}.
\end{align}$$

# homework 10

## problem

For the Lie algebra $G_2$, suppose that

$$\begin{align}
A & =\begin{pmatrix}
2 & -1 \\
-3 & 2
\end{pmatrix},\quad \begin{matrix}
\vec{r}_{1}=2\vec{w}_{1}-3\vec{w}_{2} \\
\vec{r}_{2}=-\vec{w}_{1}+2\vec{w}_{2}
\end{matrix}
\end{align}$$

Draw the box weight diagrams of the fundamental representations $(0,1)$ and $(1,0)$, including the weight coefficients and multiplicities.

### solution

The displayed matrix means that the columns of $A$ give the simple roots in the fundamental-weight basis:

$$\begin{align}
\alpha_1=r_1=2\omega_1-3\omega_2,\qquad \alpha_2=r_2=-\omega_1+2\omega_2.
\end{align}$$

Thus $\alpha_1$ is the long simple root and $\alpha_2$ is the short simple root. The positive short roots are

$$\begin{align}
\alpha_2,\qquad \alpha_1+\alpha_2,\qquad \alpha_1+2\alpha_2,
\end{align}$$

with fundamental-weight coordinates

$$\begin{align}
(-1,2),\qquad (1,-1),\qquad (0,1).
\end{align}$$

The positive long roots are

$$\begin{align}
\alpha_1,\qquad \alpha_1+3\alpha_2,\qquad 2\alpha_1+3\alpha_2,
\end{align}$$

with fundamental-weight coordinates

$$\begin{align}
(2,-3),\qquad (-1,3),\qquad (1,0).
\end{align}$$

The course convention is that $(0,1)$ is the $7$-dimensional fundamental representation and $(1,0)$ is the $14$-dimensional adjoint representation.

The box weight diagram records one box for each basis vector. A label $(a,b)$ means the weight $a\omega_1+b\omega_2$.

![G2 7-dimensional box weight diagram](<./homework 9-10 assets/g2-7-weight-diagram.png>)

For $(0,1)$, the highest weight is

$$\begin{align}
\omega_2=\alpha_1+2\alpha_2.
\end{align}$$

The weights are

$$\begin{align}
0,\quad \pm\alpha_2,\quad \pm(\alpha_1+\alpha_2),\quad \pm(\alpha_1+2\alpha_2).
\end{align}$$

In fundamental-weight coordinates this is

$$
\begin{array}{c|c}
\text{weight} & \text{multiplicity}\\
\hline
(0,1),(1,-1),(1,-2),(0,-1),(-1,1),(-1,2),(0,0) & 1
\end{array}
$$

For the simple lowering operators, $f_i$ moves a box from $\mu$ to $\mu-\alpha_i$ whenever the target weight exists. In the standard $\mathfrak{sl}_2$ string normalization, if

$$\begin{align}
p=\max\{k\geq 0\mid \mu+k\alpha_i\text{ is a weight}\},\qquad q=\max\{k\geq 0\mid \mu-k\alpha_i\text{ is a weight}\},
\end{align}$$

then the lowering coefficient is

$$\begin{align}
f_i\ket{\mu}=\sqrt{(p+1)q}\,\ket{\mu-\alpha_i}.
\end{align}$$

For example, the highest weight $(0,1)$ has no solid outgoing arrow, so

$$\begin{align}
f_1\ket{(0,1)}=0.
\end{align}$$

It has one dashed outgoing arrow, and the edge label gives

$$\begin{align}
f_2\ket{(0,1)}=\ket{(1,-1)}.
\end{align}$$

For the $7$-dimensional representation this gives the nonzero simple-lowering coefficients

$$
\begin{array}{c|c|c}
\text{operator} & \mu\to \mu-\alpha_i & \text{coefficient}\\
\hline
f_1 & (1,-2)\to(-1,1) & 1\\
f_1 & (1,-1)\to(-1,2) & 1\\
f_2 & (0,1)\to(1,-1) & 1\\
f_2 & (-1,2)\to(0,0) & \sqrt{2}\\
f_2 & (0,0)\to(1,-2) & \sqrt{2}\\
f_2 & (-1,1)\to(0,-1) & 1
\end{array}
$$

For $(1,0)$, the highest weight is the highest long root

$$\begin{align}
\omega_1=2\alpha_1+3\alpha_2.
\end{align}$$

This is the adjoint representation. Hence the nonzero weights are all $12$ roots and the zero weight has multiplicity $2$.

![G2 14-dimensional box weight diagram](<./homework 9-10 assets/g2-14-weight-diagram.png>)

The multiplicity table is

$$
\begin{array}{c|c}
\text{weight} & \text{multiplicity}\\
\hline
(-2,3),(-1,0),(-1,1),(-1,2),(-1,3),(0,-1),(0,1),(1,-3),(1,-2),(1,-1),(1,0),(2,-3) & 1\\
(0,0) & 2
\end{array}
$$

The edge labels use the same $\mathfrak{sl}_2$ string normalization. Since the zero weight has multiplicity $2$, choose the central boxes so that $0_1$ belongs to the $\alpha_1$-string and $0_2$ belongs to the $\alpha_2$-string. The nonzero simple-lowering actions shown in the diagram are

$$
\begin{array}{c|c|c}
\text{operator} & \mu\to \mu-\alpha_i & \text{coefficient}\\
\hline
f_1 & (2,-3)\to 0_1 & \sqrt{2}\\
f_1 & 0_1\to(-2,3) & \sqrt{2}\\
f_1 & (1,0)\to(-1,3) & 1\\
f_1 & (1,-1)\to(-1,2) & 1\\
f_1 & (1,-2)\to(-1,1) & 1\\
f_1 & (1,-3)\to(-1,0) & 1\\
f_2 & (-1,3)\to(0,1) & \sqrt{3}\\
f_2 & (0,1)\to(1,-1) & 2\\
f_2 & (1,-1)\to(2,-3) & \sqrt{3}\\
f_2 & (-1,2)\to 0_2 & \sqrt{2}\\
f_2 & 0_2\to(1,-2) & \sqrt{2}\\
f_2 & (-2,3)\to(-1,1) & \sqrt{3}\\
f_2 & (-1,1)\to(0,-1) & 2\\
f_2 & (0,-1)\to(1,-3) & \sqrt{3}
\end{array}
$$

All other simple-lowering actions vanish because the target weight is not present in the representation.
