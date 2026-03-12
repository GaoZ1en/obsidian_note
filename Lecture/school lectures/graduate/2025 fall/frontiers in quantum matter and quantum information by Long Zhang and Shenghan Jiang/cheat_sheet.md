# Quantum Matter & Information Cheat Sheet

## 1. Basics & Math
*   **Pauli Matrices**: $X=\begin{pmatrix}0&1\\1&0\end{pmatrix}, Y=\begin{pmatrix}0&-i\\i&0\end{pmatrix}, Z=\begin{pmatrix}1&0\\0&-1\end{pmatrix}$.
*   **Fourier**: $c_k = \frac{1}{\sqrt{L}}\sum_j c_j e^{-ikj}, c_j = \frac{1}{\sqrt{L}}\sum_k c_k e^{ikj}$. $\sum_j e^{i(k-k')j} = L\delta_{kk'}$.
*   **Perturbation**: $H_{\text{eff}} = P H_0 P + P V P - P V \frac{Q}{H_0-E_0} V P$.
    *   2nd order: $\Delta E = \sum_{n \neq 0} \frac{|\langle n|V|0\rangle|^2}{E_0 - E_n}$.

## 2. 1D Quantum Matter Models (Solutions)

### A. SSH Model (Free Fermion Topological)
$$ H = \sum_j -(t_1 c_{j,a}^\dagger c_{j,b} + t_2 c_{j,b}^\dagger c_{j+1,a} + h.c.) $$
1.  **Fourier Transform**:
    *   Unit cell $j$: $a_j, b_j$. $k \in [0, 2\pi)$.
    *   $H = \sum_k \Psi_k^\dagger H(k) \Psi_k$, where $\Psi_k = (c_{k,a}, c_{k,b})^T$.
    *   $H(k) = \begin{pmatrix} 0 & -t_1 - t_2 e^{-ik} \\ -t_1 - t_2 e^{ik} & 0 \end{pmatrix} = d_x(k)\sigma_x + d_y(k)\sigma_y$.
    *   $d_x = -(t_1 + t_2 \cos k), d_y = -t_2 \sin k$.
2.  **Spectrum**: $E(k) = \pm |\vec{d}(k)| = \pm \sqrt{t_1^2 + t_2^2 + 2t_1 t_2 \cos k}$.
    *   Gap closes at $k=\pi$ when $t_1 = t_2$.
3.  **Topology**:
    *   **Winding Number**: $\nu = \frac{1}{2\pi} \oint dk (\hat{d}_x \partial_k \hat{d}_y - \hat{d}_y \partial_k \hat{d}_x)$.
    *   $t_1 > t_2$: $\nu=0$ (Trivial). Origin outside loop.
    *   $t_1 < t_2$: $\nu=1$ (Topological). Origin inside loop.
4.  **Edge States** (Open Boundary):
    *   Limit $t_1=0$: $H = -t_2 \sum (c_{j,b}^\dagger c_{j+1,a} + h.c.)$.
    *   Sites $1a$ and $Lb$ are isolated (zero energy modes).
    *   General $t_1 < t_2$: Zero modes exponentially localized $\sim (-t_1/t_2)^x$.

### B. Transverse Field Ising Model (TFIM)
$$ H = -J \sum_j Z_j Z_{j+1} - h \sum_j X_j $$
1.  **Jordan-Wigner Transformation** (Map to Fermions):
    *   $X_j = 1 - 2 c_j^\dagger c_j$
    *   $Z_j = -(c_j^\dagger + c_j) \prod_{l<j} (1-2c_l^\dagger c_l)$
    *   $Z_j Z_{j+1} = (c_j^\dagger - c_j)(c_{j+1}^\dagger + c_{j+1})$
2.  **Fermionic Hamiltonian**:
    *   $H = \sum_j [ -J(c_j^\dagger c_{j+1}^\dagger + c_j^\dagger c_{j+1} + h.c.) - 2h c_j^\dagger c_j ] + \text{const}$.
    *   This is a **Bogoliubov-de Gennes (BdG)** Hamiltonian (superconductor-like).
3.  **Solution**:
    *   Fourier: $H = \sum_k \Psi_k^\dagger H_{BdG}(k) \Psi_k$, $\Psi_k = (c_k, c_{-k}^\dagger)^T$.
    *   $E_k = \pm \sqrt{(h - J \cos k)^2 + (J \sin k)^2}$.
    *   Gap closes at $h=J$ (Critical Point).
4.  **Phases**:
    *   $h \gg J$: Paramagnetic (Trivial). Ground state $\approx |\rightarrow\rightarrow\dots\rangle$.
    *   $J \gg h$: Ferromagnetic (SSB). Ground state $\approx |\uparrow\uparrow\dots\rangle$ or $|\downarrow\downarrow\dots\rangle$.
    *   **Duality**: $\tau^z_{j+1/2} = \prod_{i \le j} X_i, \tau^x_{j+1/2} = Z_j Z_{j+1}$. Maps $H(J, h) \to H(h, J)$.

### C. Heisenberg Model (from Hubbard)
$$ H_{\text{Hub}} = -t \sum_{\langle ij \rangle, \sigma} (c_{i\sigma}^\dagger c_{j\sigma} + h.c.) + U \sum_i n_{i\uparrow} n_{i\downarrow} $$
1.  **Large U Limit** ($U \gg t$):
    *   Low energy subspace: Single occupancy per site ($n_i=1$).
    *   Virtual hopping: $i \to j$ then $j \to i$. Intermediate state energy $U$.
2.  **Perturbation**:
    *   $H_{\text{eff}} = - \frac{t^2}{U} \sum_{\langle ij \rangle} \sum_{\sigma \sigma'} (c_{j\sigma'}^\dagger c_{i\sigma} c_{i\sigma}^\dagger c_{j\sigma'} + \dots)$.
    *   Using $\vec{S}_i = \frac{1}{2} c_{i\alpha}^\dagger \vec{\sigma}_{\alpha\beta} c_{i\beta}$, we get:
    *   $H_{\text{eff}} = J \sum_{\langle ij \rangle} (\vec{S}_i \cdot \vec{S}_j - \frac{1}{4})$, with $J = \frac{4t^2}{U} > 0$ (Antiferromagnetic).

### D. AKLT Model (Spin-1)
$$ H = \sum_j [\frac{1}{2} \vec{S}_j \cdot \vec{S}_{j+1} + \frac{1}{6} (\vec{S}_j \cdot \vec{S}_{j+1})^2 + \frac{1}{3}] = \sum_j P^{(S_{tot}=2)}_{j,j+1} $$
1.  **Construction**:
    *   Each Spin-1 site = Two Spin-1/2 virtual particles (symmetrized).
    *   Bond: Form a singlet $|S\rangle = \frac{|\uparrow\downarrow\rangle - |\downarrow\uparrow\rangle}{\sqrt{2}}$ between virtual spins of adjacent sites.
2.  **Properties**:
    *   **Ground State**: Unique (PBC), 4-fold degenerate (OBC, edge states).
    *   **Edge States**: Free Spin-1/2 at each end.
    *   **String Order**: $\langle S^z_i e^{i\pi \sum_{k=i+1}^{j-1} S^z_k} S^z_j \rangle \neq 0$. (Hidden AFM order: $\uparrow 0 0 \downarrow 0 \uparrow \downarrow \dots$).

## 3. Quantum Information & QEC

### A. Channels & Kraus Operators
*   **Definition**: $\mathcal{E}(\rho) = \text{Tr}_E [ U (\rho \otimes |0\rangle\langle 0|_E) U^\dagger ] = \sum_k M_k \rho M_k^\dagger$.
*   **Construction**: $M_k = \langle k|_E U |0\rangle_E$, where $\{|k\rangle_E\}$ is basis of environment.
*   **Completeness**: $\sum_k M_k^\dagger M_k = I$ (Trace preserving).
*   **Examples**:
    *   **Depolarizing**: $M_0 = \sqrt{1-p}I, M_{1,2,3} = \sqrt{p/3}\sigma_{x,y,z}$.
    *   **Amplitude Damping**: $M_0 = \begin{pmatrix}1&0\\0&\sqrt{1-\gamma}\end{pmatrix}, M_1 = \begin{pmatrix}0&\sqrt{\gamma}\\0&0\end{pmatrix}$.

### B. Classical Linear Codes (Prerequisite)
*   **$[n, k, d]$ Code**: Encodes $k$ bits into $n$ bits, distance $d$.
*   **Parity Check Matrix $H$**: $(n-k) \times n$ matrix. Codeword $c$ satisfies $H c = 0 \pmod 2$.
*   **Generator Matrix $G$**: $k \times n$ matrix. Rows are basis of code. $H G^T = 0$.
*   **Distance**: Min weight of non-zero codeword. Corrects $t = \lfloor (d-1)/2 \rfloor$ errors.

### C. Stabilizer Codes $[[n, k, d]]$
*   **Stabilizer Group $S$**: Abelian subgroup of Pauli group $\mathcal{P}_n$, $-I \notin S$.
    *   Code space $V_S = \{ |\psi\rangle : g |\psi\rangle = |\psi\rangle, \forall g \in S \}$.
    *   $m = n-k$ generators $S = \langle g_1, \dots, g_m \rangle$.
*   **Check Matrix**: $m \times 2n$ binary matrix $(X|Z)$. $g_i \leftrightarrow (x_i|z_i)$.
    *   Commutativity: $x_i z_j^T + z_i x_j^T = 0 \pmod 2$.
*   **Syndrome**: For error $E$, syndrome vector $\vec{s}$ where $g_i E = (-1)^{s_i} E g_i$.
*   **Logical Operators**: $\bar{X}_j, \bar{Z}_j \in N(S) \setminus S$.
    *   Commute with $S$, anticommute with each other ($\{\bar{X}_i, \bar{Z}_j\} = 0$ if $i=j$).

### D. CSS Codes (Calderbank-Shor-Steane)
*   **Construction**: Use two classical codes $C_X$ ($[n, k_X, d_X]$) and $C_Z$ ($[n, k_Z, d_Z]$).
    *   Condition: $C_Z^\perp \subseteq C_X \iff H_X H_Z^T = 0 \pmod 2$.
*   **Stabilizers**:
    *   $X$-stabilizers from $H_Z$: Replace $1 \to X$ in rows of $H_Z$.
    *   $Z$-stabilizers from $H_X$: Replace $1 \to Z$ in rows of $H_X$.
*   **Parameters**: $[[n, k_X+k_Z-n, \min(d_X, d_Z)]]$.

### E. Error Correction Conditions
*   **Knill-Laflamme**: $P E_a^\dagger E_b P = \alpha_{ab} P$.
*   **Stabilizer Distance**: $d = \min \text{wt}(E)$ for $E \in N(S) \setminus S$ (Logical operators).
*   **Correctable**: Set of errors $\mathcal{E}$ is correctable if $\forall E_a, E_b \in \mathcal{E}$, $E_a^\dagger E_b \notin N(S) \setminus S$.
    *   Either $E_a^\dagger E_b \in S$ (degenerate, same effect) or anticommutes with some $g$ (distinguishable).

### F. Fault Tolerance & Clifford Hierarchy
*   **Clifford Hierarchy**: $C_1 = \mathcal{P}$ (Pauli), $C_2 = \mathcal{C}$ (Clifford, maps $P \to P$), $C_3$ (maps $P \to C$, e.g., $T$, Toffoli).
*   **Transversal Gates**: $U = \bigotimes_i U_i$ (bitwise). FT because errors don't propagate between qubits in a block.
    *   CSS codes: Transversal CNOT.
    *   Steane [[7,1,3]]: Transversal Clifford group ($H, S, \text{CNOT}$).
*   **Universality**: Eastin-Knill theorem forbids transversal universal set.
*   **Magic State Distillation**: Prepare ancilla in eigenstate of non-Clifford gate (e.g., $|A\rangle = T|+\rangle$), verify/purify it, then use **Gate Teleportation** to apply gate.
