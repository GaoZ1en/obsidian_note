# Advanced Techniques for Character Table Construction

*Refining the "Brute Force" Orthogonality Method*

Instead of blindly solving orthogonality equations $\sum \chi_i \chi_j^* = 0$, we can construct Character Tables physically using subgroup structures.

## Technique 1: Lifting from Quotient Group (The "Image" Method)

*Best for finding 1D representations (A, B types).*

**Concept**:
If $G$ has a normal subgroup $N$, then representations of the quotient group $G/N$ are also representations of $G$.

$$\begin{align}
\Gamma_{G}(g) = \Gamma_{G/N}(gN)
\end{align}$$

Essentially, elements belonging to the same coset of $N$ get the *same* character.

**Procedure**:
1.  Identify a Normal Subgroup $N$ (e.g., Rotation subgroup $C_n \triangleleft D_n$).
1.  Form the Quotient Group $Q = G/N$. Even if $Q$ is small (like $C_2$), utilize its table.
1.  **Lift**: Copy the character of $\bar{g} \in Q$ to all elements $g \in G$ that map to $\bar{g}$.

**Example: $D_3$ (or $C_{3v}$)**
-   Normal Subgroup: $C_3 = \{E, C_3, C_3^2\}$.
-   Quotient: $D_3 / C_3 \cong C_2 = \{\bar{E}, \bar{\sigma}\}$.
    -   $\bar{E}$ corresponds to $\{E, 2C_3\}$.
    -   $\bar{\sigma}$ corresponds to $\{3\sigma_v\}$.
-   $C_2$ has two irreps:
    -   Sym ($+$): $1, 1 \implies A_1: (1, 1, 1)$.
    -   Antisym ($-$): $1, -1 \implies A_2: (1, 1, -1)$.
    *(This instantly gives all 1D irreps without calculation).*

---

## Technique 2: Induced Representation from Permutation (The "Orbit" Method)

*Best for finding High-Dimensional representations (E, T types).*

**Concept**:
If $G$ acts transitively on a set $X$ (equivalent to cosets $G/H$ for some subgroup $H$), this action defines a **Permutation Representation** $\Gamma_{perm}$.

$$\begin{align}
\chi_{perm}(g) = \text{Number of elements in } X \text{ fixed by } g
\end{align}$$

**Procedure**:
1.  Choose a subgroup $H$ (usually a reflection plane or axis stabilizer). The set $X$ is the set of "objects" symmetric under $H$ but permuted by $G$ (e.g., atoms, vertices).
1.  Count fixed points for each class to get $\chi_{perm}$.
1.  **Reduce**: We know $\Gamma_{perm}$ always contains the trivial representation $A_1$ (sum of elements is invariant).

$$\begin{align}
\Gamma_{new} = \Gamma_{perm} - A_1
\end{align}$$

    Often, $\Gamma_{new}$ is the irreducible high-dim representation you are looking for.

**Example: $D_3$ (or $C_{3v}$)**
-   Action: $D_3$ permutes the 3 vertices of a triangle.
-   Fixed Point Counting $\chi_{perm}$:
    -   $E$: Fixes 3 vertices $\to 3$.
    -   $C_3$: Fixes 0 vertices $\to 0$.
    -   $\sigma_v$: Fixes 1 vertex (the one on the axis) $\to 1$.
-   Result: $\Gamma_{perm} = (3, 0, 1)$.
-   Subtract $A_1 = (1, 1, 1)$:

$$\begin{align}
\chi_E = (3, 0, 1) - (1, 1, 1) = (2, -1, 0)
\end{align}$$

    *(This instantly gives the 2D irrep $E$ without square root equations).*

---

## Technique 3: Direct Product Construction

*Best for $D_{nh}$ or groups with Inversion.*

If $G = H \times C_2$ (where $C_2 = \{E, I\}$ or $\{E, \sigma_h\}$):
The table of $G$ is just the tensor product of $H$'s table with $\begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix}$.
-   Each Rep $\Gamma_i$ of $H$ splits into two: $\Gamma_i^+$ (sym under $I$) and $\Gamma_i^-$ (antisym).
-   **Characters**:
    -   $\chi(g) = \chi_H(g)$ for $g$ (g parity)
    -   $\chi(gI) = \pm \chi_H(g)$ (u parity)

---

## Summary Checklist for Exam

When faced with a blank table:
1.  **Fill $A_1$**: All 1s.
1.  **Find Quotient $G/N$**: Lift its chars to get $A_2, B_1, B_2$ etc. (Look for $1, 1, \dots, -1, -1$).
1.  **Count Fixed Points**: Find a permutation rep (dim $>$ 1) and subtract $A_1$ to find $E$ or $T$.
1.  **Orthogonality Check**: Only use $\sum \chi_i \chi_j^* = 0$ as a final sanity check or to solve for a single missing variable.
