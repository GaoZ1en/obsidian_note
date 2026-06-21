# Mock Group Theory Exam: The Final Check

*Scope: Point Groups (inc. Double Groups), Permutation Groups, Continuous Groups (Standard)*

## Part 1: Double Groups (The New Challenge)

1.  **[Concepts]**
    a) Why do we need **Double Groups** when treating fermions (spin-1/2 particles) in a crystal field?
    b) In a double group $G'$, a rotation by $2\pi$ is denoted as $R$ (or $\bar{E}$). Is $R$ always in the center of the group? Does it always form a class by itself?
    c) **Opechowski's Rules**: If a class $C$ in the original group consists of $C_2$ rotations where the axis is "bilateral" (i.e., there is a symmetry operation reversing the axis), does this class split or double in the double group?
*sol*.
a) Fermions (half-integer spin) have the property that their wavefunction changes sign upon a rotation by $2\pi$ ($\psi \to -\psi$). They only return to the original state after $4\pi$. The standard point groups $G \subset SO(3)$ identify $0$ and $2\pi$, which is valid only for integer spins (bosons). To assume a representation where $D(2\pi) = -I$, we must extend the group to distinguish between rotation by $\alpha$ and $\alpha+2\pi$, effectively "doubling" the group elements.
b) Yes, $R$ (rotation by $2\pi$) corresponds to $-I$ in spinor representations and commutes with all spatial rotations. Thus $zRz^{-1} = R$, so it is in the center. Consequently, $\{R\}$ forms a conjugacy class by itself (distinct from $\{E\}$).
c) If the axis is **bilateral**, the class **splits** into two classes: one containing the original axes $\{C_2, \dots\}$ and one containing the flipped versions $\{RC_2, \dots\}$. (If the axis were not bilateral, they would merge into a single class of double size).

1.  **[Constructing $D_3'$]**
    Consider the Double Group $D_3'$ (Order 12).
    The original $D_3$ has classes: $\{E\}$, $\{C_3, C_3^2\}$, $\{3C_2'\}$.
    a) Identify the classes of $D_3'$.
       *(Hint: $E$ and $R$ are separate. $C_3$ and $C_3^2$ are inverse in $D_3$. In $D_3'$, rotations are modulo $4\pi$. Is $C_3$ conjugate to $C_3^{-1}$? Is $C_3$ conjugate to $R C_3$? check bilaterally).*
    b) The "Spinor Representations" are the extra irreps needed to satisfy $\sum d_i^2 = 12$. Determine their dimensions.
    c) For the spinor representation $E_{1/2}$ (mimicking spin-1/2), determine the character for the rotation class $C_3$ (angle $2\pi/3$).
       *(Hint: $\chi^{(j)}(\alpha) = \frac{\sin((j+1/2)\alpha)}{\sin(\alpha/2)}$)*.
*sol*.
a) The classes of $D_3'$ (Order 12) are 6 in total:
   1. $\{E\}$
   1. $\{R\}$
   1. $\{C_3, C_3^2\}$ (Orbit of $C_3$ under conjugations. $C_2 c_3 C_2^{-1} = c_3^{-1} = c_3^2$. Is $R c_3$ reachable? No, $C_3$ is not bilateral in a way that mixes branches? Actually in $D_3$, $C_3$ and $C_3^{-1}$ are conjugate. In Double group, they remain conjugate. $ \{c_3, c_3^2\} $ are distinct from $\{R c_3, R c_3^2\}$. So $C_3$ splits). -> $\{C_3, C_3^2\}$ is class 3.
   1. $\{RC_3, RC_3^2\}$ is class 4.
   1. $\{3C_2', 3RC_2'\}$? The $C_2'$ axes in $D_3$ are bilateral (perpendicular to $C_3$). By Opechowski rules, bilateral $C_2$ classes SPLIT.
      So we have $\{3C_2'\}$ as class 5.
      And $\{3RC_2'\}$ as class 6.
b) Sum of squares: $12$.
   $D_3$ has representations $A_1(1), A_2(1), E(2)$. Sum $= 1+1+4=6$.
   Remaining sum $= 12 - 6 = 6$.
   Integer solutions for $\sum d_j^2 = 6$: only $1^2 + 1^2 + 2^2 = 6$.
   So there are 3 spinor representations with dimensions 1, 1, and 2.
c) For $E_{1/2}$ ($j=1/2$, dim 2):
   Angle of $C_3$ is $\alpha = 2\pi/3$.
   $\chi^{(1/2)}(2\pi/3) = \frac{\sin(1 \cdot 2\pi/3)}{\sin(\pi/3)} = \frac{\sin(2\pi/3)}{\sin(\pi/3)} = 1$.

## Part 2: Symmetric Groups

1.  **[Character Calculation without Table]**
    For the symmetric group $S_5$:
    Consider the irreducible representation $\lambda = [3,2]$.
    a) Calculate its dimension using the Hook Length formula.
    b) Calculate the character of the class of 3-cycles $(ijk)$ in this representation **without** constructing the full character table.
       **Task**: Use **Murnaghan-Nakayama rule** (removing rim hooks) to find $\chi^{[3,2]}((123))$.
*sol*.
a) **Hook Lengths**:
   Tableau Shape [3,2]:
   (0,0): Hook = 3 (right 2, down 1) + 1 = 4.
   (0,1): Hook = 2 (right 1, down 1) + 1 = 3.
   (0,2): Hook = 1.
   (1,0): Hook = 1 (right 1) + 1 = 2.
   (1,1): Hook = 1.
   Hooks: 4, 3, 1, 2, 1.
   Dim = $5! / (4 \cdot 3 \cdot 2 \cdot 1 \cdot 1) = 120 / 24 = 5$.
b) **Character of (123)** (Cycle type $\mu = (3, 1, 1)$):
   We successively remove rim hooks of length 3 from the shape $[3,2]$.
   Shape:
   X X X
   X X

   **Attempt 1**: Remove from bottom right.
   End at (1,1). Hook path (1,1) $\to$ (1,0) $\to$ (0,2)? No, discontinuous.
   End at (1,1). Hook path (1,1) $\to$ (0,1) $\to$ (0,2)? Yes. These cells are connected along the rim.
   Cells removed: (1,1), (0,1), (0,2).
   Number of rows spanned (height) = 2. Leg length $LL = \text{height} - 1 = 1$.
   Sign $(-1)^{LL} = -1$.
   Remaining Shape: Cells (0,0) and (1,0). Shape $[1,1]$ (vertical domino).
   The remaining cycles are $(1,1)$. Identity in $S_2$.
   Result: $-1 \cdot \text{dim}([1,1])_{S_2} = -1 \cdot 1 = -1$.

   **Attempt 2**: Remove starting from end of first row?
   End at (0,2). Path (0,2) $\to$ (0,1) $\to$ (0,0).
   Cells removed: Row 1.
   Number of rows spanned = 1. Leg length = 0.
   Sign $(-1)^0 = +1$.
   Remaining Shape: Cells (1,0) and (1,1). Shape $[2]$ (horizontal domino).
   Remaining cycles: $(1,1)$. Identity in $S_2$.
   Result: $+1 \cdot \text{dim}([2])_{S_2} = +1 \cdot 1 = 1$.

   Total Character $\chi = -1 + 1 = 0$.

1.  **[Inner Product]**
    In $S_4$, decompose the Kronecker product of the standard representation $[3,1]$ with itself.
    $[3,1] \otimes [3,1] = \dots$
    Verify the dimensions on both sides.
*sol*.
   Irreps of $S_4$: $[4] (1), [1^4] (1), [2,2] (2), [3,1] (3), [2,1,1] (3)$.
   Characters of $[3,1]$ (Standard rep $\chi = \text{fix} - 1$):
   $E$: 3.
   $(12)$: $2-1=1$.
   $(123)$: $1-1=0$.
   $(1234)$: $0-1=-1$.
   $(12)(34)$: $0-1=-1$.

   Squared Character $\chi^2$:
   $(9, 1, 0, 1, 1)$.

   Decomposition via orthogonality:
   $n_{[4]} = \frac{1}{24}(9 + 6(1) + 8(0) + 6(1) + 3(1)) = 1$.
   $n_{[1^4]} = \frac{1}{24}(9 - 6(1) + 0 - 6(1) + 3(1)) = 0$.
   $n_{[2,2]} = \frac{1}{24}(2(9) + 0 + 0 + 0 + 3(2)(1)) = \frac{24}{24} = 1$.
   $n_{[3,1]} = \frac{1}{24}(3(9) + 6(1)(1) + 0 + 6(-1)(1) + 3(-1)(1)) = \frac{24}{24} = 1$.
   $n_{[2,1,1]} = \frac{1}{24}(3(9) + 6(-1)(1) + 0 + 6(1)(1) + 3(-1)(1)) = \frac{24}{24} = 1$.

   Result: $[3,1] \otimes [3,1] \cong [4] \oplus [3,1] \oplus [2,1,1] \oplus [2,2]$.
   Dimensions: $3 \times 3 = 1 + 3 + 3 + 2 = 9$. Verified.

## Part 3: Continuous Groups (SU(2)/SO(3))

1.  **[Wigner-Eckart Theorem]**
    Consider a tensor operator $T^{(1)}_q$ (rank 1, spherical vector).
    We are interested in matrix elements between angular momentum states $|j, m\rangle$.
    a) Selection rules: For which $j', m'$ is $\langle j', m' | T^{(1)}_q | 1, 0 \rangle$ non-zero? (Initial state $j=1$).
    b) Calculate the ratio of matrix elements:

$$\begin{align}
\frac{\langle 1, 1 | T^{(1)}_1 | 1, 0 \rangle}{\langle 1, 1 | T^{(1)}_0 | 1, 1 \rangle}
\end{align}$$

       *(Hint: Express in terms of Clebsch-Gordan coefficients $\langle j_1 m_1 j_2 m_2 | J M \rangle$)*.
*sol*.
a) Selection rules:
   Triangle inequality for $j$: $|1-1| \le j' \le 1+1 \implies j' \in \{0, 1, 2\}$.
   Magnetic quantum number: $m' = m + q = 0 + q = q$.
b) Ratio:
   By Wigner-Eckart Thm: $\langle j' m' | T^k_q | j m \rangle = \frac{\langle j' || T^k || j \rangle}{\sqrt{2j'+1}} \langle j m k q | j' m' \rangle$.
   Reduced matrix elements cancel.
   Numerator: $j=1, m=0, k=1, q=1 \to j'=1, m'=1$. CG: $\langle 1 0 1 1 | 1 1 \rangle$.
   Denominator: $j=1, m=1, k=1, q=0 \to j'=1, m'=1$. CG: $\langle 1 1 1 0 | 1 1 \rangle$.
   Using $1 \otimes 1$ CG table for $J=1$ (antisymmetric combination):
   $|1,1\rangle_{tot} = \frac{1}{\sqrt{2}}(|1,1\rangle|1,0\rangle - |1,0\rangle|1,1\rangle)$.
   First index is system ($j=1$), second is tensor ($k=1$).
   Numerator term $(m, q) = (0, 1)$. Corresponds to $|1,0\rangle|1,1\rangle$. Coeff is $-1/\sqrt{2}$.
   Denominator term $(m, q) = (1, 0)$. Corresponds to $|1,1\rangle|1,0\rangle$. Coeff is $+1/\sqrt{2}$.
   Ratio = $-1$.

1.  **[SO(3) Homomorphism]**
    Consider the vector $\vec{v} = (x, y, z)$. Map it to a $2 \times 2$ traceless Hermitian matrix $X = \vec{v} \cdot \vec{\sigma}$.
    Show that the transformation $X' = U X U^\dagger$ (where $U \in SU(2)$) preserves the determinant of $X$.
    How does this relate to the invariance of the length of $\vec{v}$?
*sol*.
   We have $X' = U X U^\dagger$.
   $\det(X') = \det(U) \det(X) \det(U^\dagger)$.
   For $U \in SU(2)$, $\det(U) = 1$ and $\det(U^\dagger) = 1$.
   Thus $\det(X') = \det(X)$.
   Calculating the determinant explicitly:
   $X = \begin{pmatrix} z & x-iy \\ x+iy & -z \end{pmatrix}$.
   $\det(X) = -z^2 - (x^2+y^2) = -|\vec{v}|^2$.
   Preserving the determinant is equivalent to preserving the Euclidean norm $-|\vec{v}|^2$, which defines a rotation in 3D space.

## Part 4: Final Boss (Review)

1.  **[Degeneracy Lifting]**
    A particle with spin $s=1/2$ is in an orbital state with $l=1$ (p-orbital).
    The system has full rotational symmetry (total $J$ is conserved).
    a) Under $SO(3)$, what are the irreducible components of the total Hilbert space $1 \otimes 1/2$?
    b) Now turn on a crystal field with $O$ (cubic) symmetry.
       The $J=3/2$ level splits. Into what irreps of the Double Group $O'$?
       *(Hint: Decompose $D^{(3/2)}$ restricted to $O'$)*.
*sol*.
a) $1 \otimes 1/2 = 3/2 \oplus 1/2$. (Two levels, $j=3/2$ and $j=1/2$).
b) We decompose $D^{(3/2)}$ under $O'$.
   Characters of $D^{(3/2)}$ for rotations by $\alpha$: $\chi = \frac{\sin(2\alpha)}{\sin(\alpha/2)} = 4 \cos(\alpha/2) \cos(\alpha)$.
   Classes of $O$ (viewed in $O'$):
   $E (\alpha=0)$: $\chi = 4$.
   $8C_3 (\alpha=2\pi/3)$: $\chi(2\pi/3) = \frac{\sin(4\pi/3)}{\sin(\pi/3)} = -1$.
   $6C_4 (\alpha=\pi/2)$: $\chi(\pi/2) = \frac{\sin(2\pi)}{\dots} = 0$.
   $3C_2 (\alpha=\pi)$ (from $C_4^2$): $\chi(\pi) = 0$.
   $6C_2' (\alpha=\pi)$: $\chi(\pi) = 0$.
   Character vector on $O$ classes: $(4, -1, 0, 0, 0)$.
   This corresponds exactly to the 4-dimensional spinor representation $\Gamma_8$ (or $U'$) of the cubic double group.
   Conclusion: The $J=3/2$ level **does not split**. It transforms as the irreducible representation $\Gamma_8$.
