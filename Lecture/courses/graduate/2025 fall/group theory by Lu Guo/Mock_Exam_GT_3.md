# Mock Group Theory Exam 3

*Based on Physics Department Formatting | Time: 2 Hours*

## Part 1: Concepts & Point Groups

1.  **[Short Answer]**
    a) State **Frobenius Reciprocity Theorem** relating induced representations and restricted representations.
    b) Can a group of order 6 be non-abelian? If so, which one?
*sol*.
a) Frobenius Reciprocity Theorem states that the number of times an irreducible representation $\mu$ of a subgroup $H$ appears in the restriction of an irreducible representation $\nu$ of the group $G$ is equal to the number of times $\nu$ appears in the induced representation from $\mu$ to $G$. Mathematically, this is expressed as:

$$\begin{align}
\langle \text{Res}^G_H \nu, \mu \rangle_H & = \langle \nu, \text{Ind}^G_H \mu \rangle_G
\end{align}$$

b) yes. for example, $\displaystyle{D_{3}}$.

*I want to say that Frobenius theorem seems not very important in this course...*

1.  **[Point Group $D_3$]**
    Consider the Dihedral group $D_3$ (Order 6).
    1.  List generators and rank.
    1.  Identify all conjugacy classes and invariant subgroups.
    1.  Construct the **Type P** non-proper point group $C_{3v}$ using the index-2 subgroup method relative to $D_3$? (Wait, $C_{3v}$ is usually isomorphic to $D_3$. Let's reverse: Construct **Type P** groups derived from $D_3$ extended by inversion $I$, i.e., inside $D_{3d}$).
    *Correction*: Construct all **Type I** and **Type P** non-proper point groups derived from $D_3$.
*sol*.
a) Generators: $C_3$ (120 deg rotation), $C_2'$ (reflection). Rank = 2.
b) $\displaystyle{\left\{E\right\},\left\{C_{3},C_{3}^{-1}\right\},\left\{3C_{2}'\right\}}$
c)
- Type I: $\displaystyle{D_{3d}=D_{3}\times \left\{ E,I\right\} }$.
- Type P: $\displaystyle{C_{3v}=H+\left(D_{3}-H\right)I}$, where $H=\left\{ E,C_{3},C_{3}^{-1}\right\} $.
    - however, $C_{3v}$ is isomorphic to $D_3$, so this is just a relabeling.

## Part 2: Character Tables & Functions

1.  **[Character Table $C_{4v}$]**
    Complete the character table for $C_{4v}$ (Order 8).
    Classes: $E$, $C_2$, $2C_4$, $2\sigma_v$, $2\sigma_d$.

| Irrep | E   | $C_2$ | $2C_4$ | $2\sigma_v$ | $2\sigma_d$ |
| :---- | :-- | :---- | :----- | :---------- | :---------- |
| $A_1$ | 1   | 1     | 1      | 1           | 1           |
| $A_2$ | 1   | 1     | 1      | -1          | -1          |
| $B_1$ | 1   | 1     | -1     | 1           | -1          |
| $B_2$ | 1   | 1     | -1     | -1          | 1           |
| $E$   | 2   | -2    | 0      | 0           | 0           |

1.  **[Function Space]**
    Group $D_3$ acts on the 2D function space spanned by $\phi_1 = 2xy$ and $\phi_2 = x^2 - y^2$.
    1.  Find the representation matrices for generators $C_3$ (z-axis) and $C_2'$ (x-axis).
    1.  Calculate the characters and decompose into irreps of $D_3$.
    1.  Is this representation irreducible?
*sol*.
a) we have

$$\begin{align}
C_{3} & =\begin{pmatrix} -\frac{1}{2} & -\frac{\sqrt{ 3 }}{2} \\
\frac{\sqrt{ 3 }}{2} & -\frac{1}{2}
\end{pmatrix} \\
C_{2}' & =\begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix}
\end{align}$$

thus

$$\begin{align}
D(C_{3})\phi _{1}(x,y) & =\phi _{1}(C_{3}^{-1}x,C_{3}^{-1}y) \\
 & =2\left(-\frac{1}{2}x+\frac{\sqrt{ 3 }}{2}y\right)\left(-\frac{\sqrt{ 3 }}{2}x-\frac{1}{2}y\right) \\
 & =\frac{\sqrt{ 3 }}{2}(x^{2}-y^{2})-xy \\
 & =\frac{\sqrt{ 3 }}{2}\phi _{2}-\frac{1}{2}\phi _{1} \\
D(C_{3})\phi _{2}(x,y) & =\left(-\frac{1}{2}x+\frac{\sqrt{ 3 }}{2}y\right)^{2}-\left(-\frac{\sqrt{ 3 }}{2}x-\frac{1}{2}y\right)^{2} \\
 & =-\frac{1}{2}(x^{2}-y^{2})-\sqrt{ 3 }xy \\
 & =-\frac{\sqrt{ 3 }}{2}\phi _{1}-\frac{1}{2}\phi _{2}
\end{align}$$

thus

$$\begin{align}
D(C_{3}) & =\begin{pmatrix} -\frac{1}{2} & \frac{\sqrt{ 3 }}{2} \\
-\frac{\sqrt{ 3 }}{2} & -\frac{1}{2}
\end{pmatrix} \\
D(C_{2}') & =\begin{pmatrix} -1 & 0 \\
0 & 1
\end{pmatrix}
\end{align}$$

b) the character table of $\displaystyle{D_{3}}$ is

| reps.\class. | E   | $2C_3$ | $3C_2'$ |
| ------------ | --- | ------ | ------- |
| A            | 1   | 1      | 1       |
| A            | 1   | 1      | -1      |
| E            | 2   | -1     | 0       |
| D            | 2   | -1     | 0       |

so this representation is isomorphic to the 2d irrep E.

## Part 3: Symmetric Groups

1.  **[Young Operators]**
    For $S_4$, consider partition $[3,1]$.
    1.  Write the Young Operator $\mathcal{Y}$ for the standard tableau $T = \begin{smallmatrix} 1 & 2 & 3 \\ 4 \end{smallmatrix}$. Express result as $\sum \sigma P \cdot \sum \tau Q$.
    1.  Calculate the matrix element $D(2,4)$ in the standard orthogonal representation. Note $(2,4)$ is **not** an adjacent transposition.
       *(Hint: $(24) = (34)(23)(34)$ or use direct action on basis).*
*sol*.
a) we have

$$\begin{align}
Y & =PQ \\
P & =e+(12)+(13)+(23)+(123)+(132) \\
Q & =e-(14)
\end{align}$$

b) we have $\displaystyle{(24)=(23)(34)}$. thus we have

$$\begin{align}
D(23) & =\begin{pmatrix}
1 & 0 & 0 \\
0 & -\frac{1}{2} & \frac{\sqrt{ 3 }}{2} \\
0 & \frac{\sqrt{ 3 }}{2} & \frac{1}{2}
\end{pmatrix} \\
D(34) & =\begin{pmatrix} -\frac{1}{3} & \frac{2\sqrt{ 2 }}{3} & 0 \\
\frac{2\sqrt{ 2 }}{3} & \frac{1}{3} & 0 \\
0 & 0 & 1
\end{pmatrix} \\
\implies D(24) & =D(23)D(34) \\
 & =\begin{pmatrix} -\frac{1}{3} & \frac{2\sqrt{ 2 }}{3} & 0 \\
0 & -\frac{1}{6} & \frac{\sqrt{ 3 }}{2} \\
 +\frac{2\sqrt{ 2 }}{3} & -\frac{1}{3} & 0
\end{pmatrix}
\end{align}$$

1.  **[Branching Rule]**
    Consider the irrep $[4,1]$ of $S_5$.
    Restrict this to the subgroup $S_4$ (acting on {1,2,3,4}).
    Decompose $(S_5 \downarrow S_4)_{[4,1]}$ into irreps of $S_4$.
*sol*. we have

$$\begin{align}
[4,1] & \cong [4]\oplus [3,1]
\end{align}$$

the dimension matches

## Part 4: Continuous Groups

1.  **[Euler Angles]**
    A rotation matrix is given by:

$$
R = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{pmatrix}
$$

    Find the corresponding Euler angles $(\alpha, \beta, \gamma)$ in the $Z-Y-Z$ convention.
*sol*. we have

$$\begin{align}
\cos \beta & =R_{33}=0\implies \beta=\frac{\pi}{2} \\
-\cos \gamma \sin \beta & =1\implies \cos \gamma=-1\implies \gamma=\pi \\
\sin \beta \sin \alpha & =1\implies \sin \alpha=1\implies \alpha=\frac{\pi}{2}
\end{align}$$

1.  **[Spinor Rotation]**
    Find the $SU(2)$ matrix corresponding to a rotation of $\theta = \pi/2$ about the y-axis.
    Verify that acting this on the spinor $\binom{1}{0}$ (spin up) gives a state with expectation value $\langle S_x \rangle = 1/2$ (or check direction).
*sol*. we have

$$\begin{align}
U(\hat{n},\theta) & =\exp\left(-i\frac{\theta}{2}\hat{n}\cdot \vec{\sigma}\right) \\
 & =\cos\left(\frac{\theta}{2}\right)I - i\sin\left(\frac{\theta}{2}\right)(\hat{n}\cdot \vec{\sigma}) \\
 & =\begin{pmatrix} \frac{\sqrt{ 2 }}{2} & 0 \\
0 & \frac{\sqrt{ 2 }}{2}
\end{pmatrix}+\frac{\sqrt{ 2 }}{2}\begin{pmatrix}
0 & 1 \\
-1 & 0
\end{pmatrix} \\
 & =\begin{pmatrix} \frac{\sqrt{ 2 }}{2} & \frac{\sqrt{ 2 }}{2} \\
-\frac{\sqrt{ 2 }}{2} & \frac{\sqrt{ 2 }}{2}
\end{pmatrix}
\end{align}$$

1.  **[Spherical Harmonics]**
    Express the eigenstate of angular momentum along the direction $\hat{n} = (1,0,0)$ (x-axis), with eigenvalue $m=1$ ($J=1$ system), as a linear combination of $Y_{1,1}, Y_{1,0}, Y_{1,-1}$.
*sol*. Dirac notation kill-all.
