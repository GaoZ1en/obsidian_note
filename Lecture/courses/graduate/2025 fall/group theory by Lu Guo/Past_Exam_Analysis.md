# Group Theory Exam Analysis & SOP (Standard Operating Procedures)

## I. High-Frequency Topics Checklist

Based on Exam 1 & 2, these are the **guaranteed** questions:
1.  **Definitions**: Rearrangement Thm, Homomorphism Kernel, Class/Subgroup properties.
1.  **Point Group Reduction**: Given basis functions (like $x^2, xy$), find matrices, characters, reduce to Irreps, and find new basis.
1.  **Young Tableaux**: Draw Tableau $\to$ Write Operator $\to$ Find Representation Matrix (Orthogonal form).
1.  **Branching Rules**: $S_{m+n} \downarrow S_m \times S_n$ reduction.
1.  **Rotations**: Euler Angles from Matrix, Axis-Angle representation of SU(2), Rotating Spherical Harmonics.

---

## II. Topic-by-Topic SOP (How to solve)

### Topic 1: Non-Proper Point Groups (I-type & P-type)

**Definition**:
-   **Type I**: $G' = G + GI$ (where $I$ is inversion). Construct by adding inversion to a proper point group.
    -   *Recipe*: Take any proper point group (e.g., $D_3$), add $I$. $D_{3d} = D_3 \times \{E, I\}$.
-   **Type P (Permutation)**: $G' = H + (G-H)I$. Subgroup $H$ stays proper, remaining elements multiply by $I$.
    -   *Recipe*: Take $D_4$. Find a subgroup of index 2 (e.g., $C_4$). Keep $C_4$ as is. Multiply elements in $D_4 \setminus C_4$ by $I$.

### Topic 2: Character Table Completion

**SOP**:
1.  **Row Orthogonality**: $\sum_{classes} n_k \chi_i(C_k) \chi_j^*(C_k) = |G| \delta_{ij}$.
1.  **Column Orthogonality**: $\sum_{irreps} \chi_i(C_k) \chi_i^*(C_l) = \frac{|G|}{n_k} \delta_{kl}$.
1.  **Dimensions**: $\sum d_i^2 = |G|$.
*Example (Exam 1 Q3)*:
The table has $E, 3C_4^2, 8C_3', 6C_4, 6C_2''$. Total elements = $1+3+8+6+6 = 24$.
Row 2 (B): $1^2 \cdot 1 + 1^2 \cdot 3 + 1^2 \cdot 8 + (-1)^2 \cdot 6 + x^2 \cdot 6 = 24 \implies 18 + 6x^2 = 24 \implies x^2=1$.
Since $B \ne A$, $x$ must make it orthogonal to A.
$\sum n_k \chi_A \chi_B = 1(1) + 3(1) + 8(1) + 6(-1) + 6(x) = 6 + 6x = 0 \implies x = -1$.

### Topic 3: Function Base Reduction (The $D_3$ Problem)

**Problem**: Basis $\psi_1=x^2-y^2, \psi_2=2xy, \psi_3=x^2+y^2$. Group $D_3$.
**SOP**:
1.  **Apply Generators**:
    -   $\hat{R} f(x,y) = f(R^{-1}x, R^{-1}y)$.
    -   For $D_3$, generators are usually $C_3$ (120 deg) and $C_2'$ (flip $y$ or $x$).
1.  **Find Matrix**:
    -   If $\hat{R} \psi_j = \sum D_{ij} \psi_i$, write down $3 \times 3$ matrix.
    -   *Shortcut*: Observe $\psi_3 = x^2+y^2$ is rotationally invariant ($A_1$). It forms a 1D block.
    -   The other two usually form a 2D rep (likely $E$).
1.  **Trace & Character**: Sum diagonal elements.
1.  **Reduction Formula**: $n_\mu = \frac{1}{|G|} \sum_i n_i \chi(C_i) \chi^{(\mu)*}(C_i)$.

### Topic 4: Young Operators & Matrix Calculation

**Problem**: $S_5$, partition $[2,2,1]$. Element $(2,3)$.
**SOP**:
1.  **Tableau**: Fill $1,3,5$ (row 1,2,3) or standard order.
    Max Tableau $T_0$:
    1 2
    3 4
    5
1.  **Young Operator**: $\hat{Y} = P Q$.
    -   $P$ (Row Symmetrizer): $e + (12) + (34) + (12)(34)$.
    -   $Q$ (Col Antisymmetrizer): $(e-(13)-(135)-\dots) \dots$.
1.  **Matrix Entry**:
    -   Using **Yamanouchi Basis** (iterative method) is safer than full operator expansion for matrices.
    -   *Axial Distance*: $\rho_{ij} = (c_j - c_i) - (r_j - r_i)$.
    -   **Adjacent Transposition Formula**: For $(k, k+1)$,
        -   If $k, k+1$ in same row: $D=1$.
        -   If in same col: $D=-1$.
        -   Else: $\begin{pmatrix} -1/\rho & \sqrt{1-1/\rho^2} \\ \sqrt{1-1/\rho^2} & 1/\rho \end{pmatrix}$.

### Topic 5: Branching Rule $S_6 \to S_3 \times S_3$

**SOP**:
1.  **Outer Product**: The character of $S_3 \times S_3$ in $S_6$ comes from restricting the $S_6$ character.
    -   However, usually this problem asks for the **Outer Tensor Product** Rep of $S_3 \otimes S_3$ induced *up* to $S_6$, OR $S_6$ restricted *down*.
    -   *Correction*: The question asks for Subgroup Reduction (Restriction).
    -   The class $(1^3)(1^3)$ in subgroup corresponds to identity in $S_6$.
    -   You need to map classes of $S_3 \times S_3$ to classes of $S_6$.
    -   Example: Class $((12), e)$ in sub is type $(2,1,1,1,1)$ in $S_6$.
    -   Then compute inner product with irreps of subgroup (e.g., $[3]\otimes[3], [2,1]\otimes[3]$, etc.).

### Topic 6: SU(2) Rotations & Spherical Harmonics

**SOP**:
1.  **SU(2) Matrix**:
    $U = \exp(-i \frac{\omega}{2} \hat{n} \cdot \vec{\sigma}) = \cos(\frac{\omega}{2}) I - i \sin(\frac{\omega}{2}) (\hat{n} \cdot \vec{\sigma})$.
    -   Remember $\vec{\sigma}$ are Pauli matrices.
1.  **Rotating $Y_{lm}$**:
    -   The question asks to find standard functions along a new axis.
    -   *Theory*: An eigenstate $|j, m\rangle_{\hat{n}}$ along axis $\hat{n}$ is just a rotated state $R(\alpha, \beta, \gamma) |j, m\rangle_{\hat{z}}$.
    -   So, $|m\rangle_{\hat{n}} = \sum_{m'} D_{m'm}^j(\alpha, \beta, \gamma) |m'\rangle_{\hat{z}}$.
    -   Just calculate the D-matrix elements.

---

# Practice Instructions

I will now generate **Mock Exam 6 (The "Real Deal")**. It will mirror Exam 1/2 structure exactly.
Strategy:
1.  **D4 point group**: Be ready to list classes.
1.  **Fill Table**: I'll give you a slightly broken table (like Exam 1 Q3).
1.  **Rep Reduction**: I'll use $D_4$ or $C_{4v}$ instead of $D_3$, and bases like $xz, yz$.
1.  **Young Operator**: Change shape to $[3,1]$ or $[2,2]$.
1.  **SU(2)**: Change axis to $\frac{1}{\sqrt{2}}(\hat{e}_1 + \hat{e}_3)$.
