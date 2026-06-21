# Mock Group Theory Exam 2

*Time Limit: 2 Hours*

## Part 1: Foundations & Point Groups

1.  **[Concepts]**
    a) State **Schur's Second Lemma** regarding the matrix that commutes with all matrices of an irreducible representation.
    b) Describe the **Regular Representation** of a finite group $G$. What is its dimension? How many times does each irrep $D^{(\mu)}$ appear in its decomposition?
*sol*.
a) Schur's Second Lemma states that if a matrix $M$ commutes with all matrices of an irreducible representation $D^{(\mu)}(g)$ of a group $G$, then $M$ must be a scalar multiple of the identity matrix. In other words, $M D^{(\mu)}(g) = D^{(\mu)}(g) M$ for all $g \in G$ implies that $M = \lambda I$ for some scalar $\lambda$.
b) The Regular Representation of a finite group $G$ is a representation that acts on the vector space spanned by the elements of the group itself. Its dimension is equal to the order of the group, $|G|$. In its decomposition into irreducible representations, each irrep $D^{(\mu)}$ appears a number of times equal to its dimension $d_\mu$. Thus, the Regular Representation contains every irrep of $G$ with multiplicity equal to its dimension.

1.  **[Point Group $C_{6v}$]**
    Consider the point group $C_{6v}$ (symmetry of a hexagon, Order 12).
    Generators: $C_6$ (rotation $60^\circ$), $\sigma_v$ (reflection).
    a) Identify the 6 conjugacy classes.
    b) Find a normal subgroup of index 2.
    c) Construct a **Type P** non-proper point group derived from $C_{6v}$.
*sol*.
a) The conjugacy classes of $C_{6v}$ are:
- $E$ (identity)
- $C_6, C_6^5$ (rotations by $60^\circ$ and $300^\circ$)
- $C_3, C_3^2$ (rotations by $120^\circ$ and $240^\circ$)
- $C_2$ (rotation by $180^\circ$)
- $3\sigma_v$ (reflections through vertical planes)
- $3\sigma_d$ (reflections through diagonal planes)
b) A normal subgroup of index 2 is the subgroup of rotations: $C_6 = \{E, C_6, C_6^2, C_6^3, C_6^4, C_6^5\}$.
c) that is, $\displaystyle{C_{6}+(C_{6v}-C_{6})I}$.

## Part 2: Character Tables & Functions

1.  **[Table Construction]**
    Consider the Tetrahedral group $T$ (Order 12).
    Classes: $E$ (1), $3C_2$ (3), $4C_3$ (4), $4C_3'$ (4).
    (Note: $C_3$ and $C_3'$ are inverse classes but not conjugate in $T$. $C_3$ is rotation by $120^\circ$, $C_3'$ by $240^\circ$. Wait, in $T$, are they separate?)
    a) Determine the dimensions of the irreducible representations.
    b) Fill in the character table. Note that some characters may be complex (separability of $C_3$ and $C_3^{-1}$).
    c) Verify the orthogonality of the rows.
*sol*.
a) 4 irreps with 3 1D and 1 3D.
b) we have

| irreps\classes | $\displaystyle{E}$ | $\displaystyle{3C_{2}}$ | $\displaystyle{4C_{3}}$       | $\displaystyle{4C_{3}^{-1}}$  |
| -------------- | ------------------ | ----------------------- | ----------------------------- | ----------------------------- |
| A1             | 1                  | 1                       | 1                             | 1                             |
| B1             | 1                  | 1                       | $\displaystyle{\omega}$       | $\displaystyle{\omega ^{-1}}$ |
| B2             | 1                  | 1                       | $\displaystyle{\omega ^{-1}}$ | $\displaystyle{\omega}$       |
| E              | 3                  | -1                      | 0                             | 0                             |
c) obvious.

1.  **[Tensor Product Space]**
    Group $D_3$ acts on standard vector space $V$ spanned by $(x, y, z)$.
    We know $z \sim A_2$ (Wait, verify $D_3$ definition: $C_2$ perpendicular to $C_3$. Usually $z \to -z$ under $C_2$, so $A_2$? Or $A_1$? Let's assume standard $D_3$: $z$ is odd parity under $C_2$, so $A_2$). $(x, y) \sim E$.
    Consider the space of rank-2 tensors $T_{ij} \sim V \otimes V$ (9 dimensional).
    a) Decompose the character of the product representation $\chi_{V \otimes V}$ into irreps of $D_3$.
    b) Identify which subspace corresponds to the "scalar" (trace) and which corresponds to the "antisymmetric tensor" ($L_z, L_x, L_y$).
*sol*.
a) The character of the product representation is simply the square of the character of $V$.
Assume $V \cong A_2 \oplus E$ (where $z \sim A_2, (x,y) \sim E$).
The characters for $D_3$ classes ($E, 2C_3, 3C_2$) are:
- $A_2$: $(1, 1, -1)$
- $E$: $(2, -1, 0)$
- $V = A_2 + E$: $\chi(V) = (3, 0, -1)$.
The character of $T = V \otimes V$ is $\chi^2(V)$:
- $\chi_{T}(E) = 3^2 = 9$.
- $\chi_{T}(C_3) = 0^2 = 0$.
- $\chi_{T}(C_2) = (-1)^2 = 1$.
Vector: $(9, 0, 1)$.

Decomposition $T = n_1 A_1 \oplus n_2 A_2 \oplus n_3 E$:
- $n_{A_1} = \frac{1}{6} (1\cdot 9 \cdot 1 + 2\cdot 0 \cdot 1 + 3\cdot 1 \cdot 1) = \frac{12}{6} = 2$.
- $n_{A_2} = \frac{1}{6} (1\cdot 9 \cdot 1 + 2\cdot 0 \cdot 1 + 3\cdot 1 \cdot (-1)) = \frac{6}{6} = 1$.
- $n_{E} = \frac{1}{6} (1\cdot 9 \cdot 2 + 2\cdot 0 \cdot (-1) + 3\cdot 1 \cdot 0) = \frac{18}{6} = 3$.
Result: $V \otimes V = 2A_1 \oplus A_2 \oplus 3E$.

b)
- **Scalar (Trace)**: Corresponds to the identity invariant, usually of symmetry type $A_1$. Specifically, $x^2+y^2$ ($A_1$) and $z^2$ ($A_1$).
- **Antisymmetric Tensor**: Corresponds to the vector cross product basis ($L_i$). The symmetric square extracts symmetric tensors, the antisymmetric square ($\frac{1}{2}(\chi^2(g) - \chi(g^2))$) extracts the rest.
  - $\chi_{antisym}(E) = \frac{1}{2}(9-3) = 3$.
  - $\chi_{antisym}(C_3) = \frac{1}{2}(0 - 0) = 0$.
  - $\chi_{antisym}(C_2) = \frac{1}{2}(1 - 3) = -1$ (Since $C_2^2=E$, $\chi(E)=3$).
  - Character $(3, 0, -1)$. This matches $A_2 \oplus E$.
  - Thus the antisymmetric tensor transforms like a vector ($A_2 \oplus E$).

## Part 3: Symmetric Groups

1.  **[Young Tableaux $S_4$]**
    Consider the partition $\lambda = [2,2]$ of $S_4$.
    a) Draw all Standard Young Tableaux (SYT).
    b) Construct the **Young Operator** for the tableau $T_1 = \begin{smallmatrix} 1 & 2 \\ 3 & 4 \end{smallmatrix}$.
    c) In the standard orthogonal representation, calculate the matrix element $D(1,2)$ for the transposition $(1,2)$ acting on the state $|T_1\rangle$.
    d) Calculate the matrix element $D(2,3)$ connecting $|T_1\rangle$ to other states.
*sol*.
a) The SYT for partition [2,2] of $\displaystyle{S_{4}}$ are:

$$\begin{align}
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}\begin{pmatrix}
1 & 3 \\
2 & 4
\end{pmatrix}
\end{align}$$

b) the Young operator for the tableau $\displaystyle{T_{1}}$ is

$$\begin{align}
\mathcal{Y} & =PQ \\
P & =e+(12)+(34)+(12)(34) \\
Q & =e-(13)-(24)+(13)(24)
\end{align}$$

c) we have

$$\begin{align}
D(12) & =\begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix}
\end{align}$$

d) we have

$$\begin{align}
D(23) & =\begin{pmatrix} -\frac{1}{2} & \frac{\sqrt{ 3 }}{2} \\
\frac{\sqrt{ 3 }}{2} & \frac{1}{2}
\end{pmatrix}
\end{align}$$

1.  **[Subgroup Restriction]**
    Consider the irrep $[3,1]$ of $S_4$ (Dimension 3).
    Restrict this to the subgroup $S_3$ (acting on particles 1,2,3).
    Decompose the result into irreps of $S_3$.
    (Hint: The characters of $S_4$ restricted to $S_3$ elements must be sums of $S_3$ characters).
*sol*. we have

$$\begin{align}
[3,1]\cong[2,1]\oplus [3]
\end{align}$$

## Part 4: Continuous Groups

1.  **[Lie Algebra]**
    The generators of a group satisfy $[J_i, J_j] = i \epsilon_{ijk} J_k$.
    Define raising and lowering operators $J_\pm = J_x \pm i J_y$.
    a) Calculate $[J_z, J_+]$ and $[J_+, J_-]$.
    b) What is the value of the Casimir operator $J^2$ on a state $|j, m\rangle$?
*sol*. we have $\displaystyle{[J_{z},J_{+}]=J_{z}}$, $\displaystyle{[J_{+},J_{-}]=2J_{z}}$, and $\displaystyle{J^{2}\ket{j,m}=j(j+1)\ket{j,m}}$

1.  **[Rotation of Eigenstates]**
    Consider a system with angular momentum $j=1$.
    We want to find the eigenstate of the operator $J_x$ corresponding to eigenvalue $+1$.
    Express this state $|j=1, m_x=+1\rangle$ as a linear combination of the standard $J_z$ eigenstates $|1, 1\rangle, |1, 0\rangle, |1, -1\rangle$.
    (Hint: You can diagonalize the $3 \times 3$ matrix of $J_x$ or apply a rotation of $\pi/2$ around $y$ to the state $|1, 1\rangle_z$).
*sol*. we have

$$\begin{align}
J_{x} & =\begin{pmatrix}
0 & \frac{1}{\sqrt{ 2 }} & 0 \\
\frac{1}{\sqrt{ 2 }} & 0 & \frac{1}{\sqrt{ 2 }} \\
0 & \frac{1}{\sqrt{ 2 }} & 0
\end{pmatrix}
\end{align}$$

and the eigenvector for eigenvalue $\displaystyle{1}$ is

$$\begin{align}
\begin{pmatrix} \frac{1}{2} \\
\frac{1}{\sqrt{ 2 }} \\
\frac{1}{2}
\end{pmatrix}
\end{align}$$
