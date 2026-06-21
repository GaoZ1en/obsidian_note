# Mock Group Theory Exam 5 (Hard Mode)

*Time Limit: 2.5 Hours | Focus: Calculation & Conceptual Depth*

## Part 1: Conceptual Foundations

1.  **[Topology & Algebra]**
    a) Explain why the rotation group $SO(3)$ is **not** simply connected, while $SU(2)$ is. relationships between them (Homomorphism kernel).
    b) For the Alternating Group $A_n$ (subgroup of even permutations in $S_n$), under what condition does a conjugacy class of $S_n$ **split** into two classes in $A_n$?
*sol*.
a) $SO(3)$ is not simply connected because it has a non-trivial fundamental group, specifically $\pi_1(SO(3)) \cong \mathbb{Z}_2$. This means there exist loops in $SO(3)$ that cannot be continuously contracted to a point. In contrast, $SU(2)$ is simply connected, meaning every loop can be contracted to a point. The relationship between them is given by the double cover homomorphism: $SU(2) \to SO(3)$, where each element of $SO(3)$ corresponds to two elements in $SU(2)$. The kernel of this homomorphism is $\{\pm I\}$, which reflects the two-to-one mapping.
b) A conjugacy class of $S_n$ splits into two classes in $A_n$ if and only if the permutations in that class can be expressed as products of an even number of transpositions and the cycle structure of the permutations is such that all cycles are of odd length or there are an even number of cycles of even length. This ensures that the permutations remain even when restricted to $A_n$.

1.  **[Point Group Structure $O$]**
    Consider the Octahedral Group $O$ (rotational symmetry of a cube, Order 24).
    a) Show that $O \cong S_4$ by identifying the objects being permuted.
    b) Identify a subgroup of $O$ isomorphic to $D_4$. Is it an invariant subgroup?
    c) Construct the **Type I** non-proper group $O_h$. What is its order?
*sol*.
a) the conjugate classes of $\displaystyle{S_{4}}$ and $\displaystyle{O}$ are
- $\displaystyle{S_{4}}$
    - $\displaystyle{E}$ itself
    - 6 transpositions $\displaystyle{(12)}$
    - 8 three-cycles $\displaystyle{(123)}$
    - 6 four-cycles $\displaystyle{(1234)}$
    - 3 double transpositions $\displaystyle{(12)(34)}$
- $\displaystyle{O}$
    - $\displaystyle{E}$ itself
    - 6 $\displaystyle{C_{2}}$ (180 deg rotations about axes through midpoints of opposite edges)
    - 8 $\displaystyle{C_{3}}$ (120 deg rotations about axes through opposite vertices)
    - 6 $\displaystyle{C_{4}}$ (90 deg rotations about axes through centers of opposite faces)
    - 3 $\displaystyle{C_{2}'}$ (180 deg rotations about axes through centers of opposite faces)
since the number and size of conjugacy classes match, and the group orders are the same, we conclude that $\displaystyle{O\cong S_{4}}$.
b) $\displaystyle{D_{4}}$ is not a invariant subgroup of $\displaystyle{O}$, since we cannot construct cosets that are preserved under conjugation by all elements of $\displaystyle{O}$.
c) $\displaystyle{O_{h}\cong O\times\left\{E,I\right\}}$, with order $\displaystyle{48}$. the character table of $\displaystyle{O}$ is given by

| irreps | E   | 8C3 | 6C2 | 6C4 | 3C2' |
| ------ | --- | --- | --- | --- | ---- |
| A1     | 1   | 1   | 1   | 1   | 1    |
| A2     | 1   | 1   | -1  | -1  | 1    |
| E      | 2   | -1  | 0   | 0   | 2    |
| T      | 3   | 0   | 1   | -1  | -1   |
| T      | 3   | 0   | -1  | 1   | -1   |

## Part 2: Representations & Projection Operators

1.  **[Function Space Projection]**
    Group $D_3$ (Order 6). Irreps: $A_1, A_2, E$.
    Consider the generic function $f(x,y,z) = x^2$.
    Use the **Projection Operator** method to construct the symmetry-adapted basis functions belonging to the **E representation** derived from $x^2$.
    *Formula*: $P^{(\mu)}_{ij} = \frac{d_\mu}{|G|} \sum_g D^{(\mu)}_{ij}(g)^* \hat{O}_g$.
    (You may just use the trace projection $P^{(\mu)} = \sum \chi^* \hat{O}_g$ if finding specific partners is too long calculation).
*sol*.
the character table of $\displaystyle{D_{3}}$ is given by

| Irrep | E   | $2C_3$ | $3C_2$ |
| :---- | :-- | :----- | :----- |
| A1    | 1   | 1      | 1      |
| A2    | 1   | 1      | -1     |
| E     | 2   | -1     | 0      |

we have

$$\begin{align}
P^{E} & =\frac{1}{6}\left(2P_{E}-P_{C_{3}}-P_{C_{3}^{-1}}\right)
\end{align}$$

picking the functions $\displaystyle{\phi _{1}=x^{2}+y^{2},\phi _{2}=2xy,\phi _{3}=x^{2}-y^{2}}$, then

$$\begin{align}
P^{E}\phi _{1} & = 0 \\
P^{E}\phi _{2} & =\frac{2}{3}xy-\frac{1}{3}\left(  -\frac{1}{2}xy-\frac{\sqrt{ 3 }}{2}(x^{2}-y^{2}) \right) -\frac{1}{3}\left(  -\frac{1}{2}xy+\frac{\sqrt{ 3 }}{2}(x^{2}-y^{2}) \right)  \\
 & = xy=\frac{1}{2}\phi _{2} \\
P^{E}\phi _{3} & =\frac{2}{3}(x^{2}-y^{2})-\frac{1}{3}\left(  -\frac{1}{2}(x^{2}-y^{2})+\sqrt{ 3 }xy \right) -\frac{1}{3}\left(  -\frac{1}{2}(x^{2}-y^{2})-\sqrt{ 3 }xy \right)  \\
 & = x^{2}-y^{2}=\phi _{3}
\end{align}$$

thus the symmetry-adapted basis functions belonging to the E representation derived from $x^2$ are $\{xy, x^2 - y^2\}$.

1.  **[Product Representation]**
    In the group $C_{4v}$ (Order 8), considering the irreps $A_1, A_2, B_1, B_2, E$.
    a) Determine the decomposition of the direct product $E \otimes E$.
    b) Determine the decomposition of $E \otimes B_1$.
    *Hint*: Use characters. $\chi_E(C_2) = -2, \chi_E(C_4)=0$... wait, check standard table.
*sol*.
a) the character table for $\displaystyle{C_{4v}}$ is given by

| Irrep                           | E   | $C_2$ | $2C_4$ | $2\sigma_v$ | $2\sigma_d$ |
| ------------------------------- | --- | ----- | ------ | ----------- | ----------- |
| A1                              | 1   | 1     | 1      | 1           | 1           |
| A2                              | 1   | 1     | 1      | -1          | -1          |
| B1                              | 1   | 1     | -1     | 1           | -1          |
| B2                              | 1   | 1     | -1     | -1          | 1           |
| E                               | 2   | -2    | 0      | 0           | 0           |
| $\displaystyle{E\otimes E}$     | 4   | 4     | 0      | 0           | 0           |
| $\displaystyle{E\otimes B_{1}}$ | 2   | -2    | 0      | 0           | 0           |

Wait, let's recheck the standard $C_{4v}$ table values you relied on.
Usually:
$A_1$: 1 1 1 1 1
$A_2$: 1 1 1 -1 -1
$B_1$: 1 1 -1 1 -1
$B_2$: 1 1 -1 -1 1
$E$: 2 -2 0 0 0

For $E \otimes E$:
$\chi(E) = (2)^2 = 4$.
$\chi(C_2) = (-2)^2 = 4$.
$\chi(2C_4) = 0$.
$\chi(2\sigma_v) = 0$.
$\chi(2\sigma_d) = 0$.
Vector: $(4, 4, 0, 0, 0)$.

Decomposition:
$n_{A_1} = \frac{1}{8}(1\cdot 4 + 1\cdot 4 + 0) = 1$.
$n_{A_2} = \frac{1}{8}(1\cdot 4 + 1\cdot 4 + 0) = 1$.
$n_{B_1} = \frac{1}{8}(1\cdot 4 + 1\cdot 4 + 0) = 1$.
$n_{B_2} = \frac{1}{8}(1\cdot 4 + 1\cdot 4 + 0) = 1$.
Sum: $1+1+1+1 = 4$. Correct.
$E \otimes E \cong A_1 \oplus A_2 \oplus B_1 \oplus B_2$.

For $E \otimes B_1$:
Character vector: $\chi_E \times \chi_{B_1} = (2\cdot 1, -2\cdot 1, 0, 0, 0) = (2, -2, 0, 0, 0)$.
This matches the vector for $E$ exactly.
$E \otimes B_1 \cong E$.

## Part 3: Symmetric Group $S_n$

1.  **[Complex Matrix Elements]**
    Consider the partition $\lambda = [3,1]$ of $S_4$.
    Label the standard tableaux $T_1, T_2, T_3$.
    a) Calculate the representation matrix for the **non-adjacent** transposition $(1,3)$ in the standard orthogonal representation.
    *Hint*: Use $(13) = (23)(12)(23)$ and matrix multiplication.
    b) Verify that the trace of your result matches the character $\chi^{[3,1]}((13))$.
*sol*.
a) use $\displaystyle{(13)=(23)(12)(23)}$, and we have

$$\begin{align}
D(12) & =\begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & -1
\end{pmatrix} \\
D(23) & =\begin{pmatrix}
1 & 0 & 0 \\
0 & -\frac{1}{2} & \frac{\sqrt{ 3 }}{2} \\
0 & \frac{\sqrt{ 3 }}{2} & -\frac{1}{2}
\end{pmatrix} \\
\implies D(13) & =D(23)D(12)D(23)
\end{align}$$

b) the character table of $\displaystyle{S_{4}}$ is given by

| Irrep     | E   | 6(12) | 8(123) | 6(1234) | 3(12)(34) |
| --------- | --- | ----- | ------ | ------- | --------- |
| [4]       | 1   | 1     | 1      | 1       | 1         |
| [1,1,1,1] | 1   | -1    | 1      | -1      | 1         |
| [2,2]     | 2   | 0     |        |         |           |
| [3,1]     | 3   | 1     |        |         |           |
| [2,1,1]   | 3   | -1    |        |         |           |

which gives $\displaystyle{\chi ^{[3,1]}((13))=1}$, matching the trace of our calculated matrix.

1.  **[Outer Product]**
    Consider the "Outer Product" of representations (related to Littlewood-Richardson).
    We take an irrep $[2]$ of $S_2$ acting on indices $\{1,2\}$ and $[1]$ of $S_1$ acting on $\{3\}$.
    Induce this product representation from $S_2 \times S_1$ up to $S_3$.
    Decompose the result into $S_3$ irreps.
我寻思着你倒是来点大点儿的群啊

## Part 4: Continuous Groups (SU(2)/SO(3))

1.  **[Inverse Problem]**
    Given the $SU(2)$ matrix:

$$
U = \begin{pmatrix} 0 & -i \\ -i & 0 \end{pmatrix}
$$

    a) Determine the rotation axis $\hat{n}$ and rotation angle $\theta$ corresponding to this element.
    b) If this operator acts on the spin state $|\psi\rangle = \binom{1}{0}$ (Spin Up along z), what is the expectation value $\langle S_y \rangle$ of the new state?
*sol*.
a) since $\displaystyle{U(\hat{n},\theta)=\cos \frac{\theta}{2}I-i\sin \frac{\theta}{2}\hat{n}\cdot \sigma}$, we haev $\displaystyle{\hat{n}=\hat{x},\theta=\pi}$
b) I don't want to do any more Dirac notation anymore...

1.  **[Clebsch-Gordan & Tensors]**
    Consider the product of two spin-1/2 states: $\frac{1}{2} \otimes \frac{1}{2} = 0 \oplus 1$.
    The triplet states $|1, m\rangle$ are symmetric, the singlet $|0,0\rangle$ is antisymmetric.
    Construct the explicit $4 \times 4$ matrix for the rotation operator $D^{(1/2 \otimes 1/2)}(\hat{z}, \alpha)$ and show it is block diagonal in the coupled basis.
*sol*.
we have

$$\begin{align}
D^{(1/2)}(\hat{z},\alpha) & =\begin{pmatrix}
e^{-i\alpha/2} & 0 \\ 0 & e^{i\alpha/2} \end{pmatrix} \\
\implies D^{(1/2\otimes 1/2)}(\hat{z},\alpha) & =D^{(1/2)}(\hat{z},\alpha)\otimes D^{(1/2)}(\hat{z},\alpha) \\
 & =\begin{pmatrix}
e^{-i\alpha} & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & e^{i\alpha}
\end{pmatrix}
\end{align}$$
