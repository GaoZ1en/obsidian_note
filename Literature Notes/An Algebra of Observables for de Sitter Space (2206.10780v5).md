---
paper id: 2206.10780v5
title: An Algebra of Observables for de Sitter Space
authors: [Venkatesa Chandrasekaran, Roberto Longo, Geoff Penington, Edward Witten]
publication date: 2022-06-22T00:22
abstract: "We describe an algebra of observables for a static patch in de Sitter space, with operators gravitationally dressed to the worldline of an observer. The algebra is a von Neumann algebra of Type II$_1$. There is a natural notion of entropy for a state of such an algebra. There is a maximum entropy state, which corresponds to empty de Sitter space, and the entropy of any semiclassical state of the Type II$_1$ algebras agrees, up to an additive constant independent of the state, with the expected generalized entropy $S_{\\text{gen}}=(A/4G_N)+S_{\\text{out}}$. An arbitrary additive constant is present because of the renormalization that is involved in defining entropy for a Type II$_1$ algebra."
comments: "54 pages, v2: added references, v3,v4: minor corrections, v5: correction at end of section 2.4"
pdf: "[[Attachments/Assets/An Algebra of Observables for de Sitter Space (2206.10780v5).pdf]]"
url: https://arxiv.org/abs/2206.10780v5
tags: []
---

# preliminaries

## von Neumann algebra

a von Neumann algebra $\mathcal{M}$ is a subalgebra of the algebra of bounded operators $\mathcal{B}(\mathcal{H})$ on a Hilbert space $\mathcal{H}$ that is:
1. self-adjoint: if $\displaystyle{A\in \mathcal{M}}$, then $\displaystyle{A^{\dagger}\in \mathcal{M}}$
2. closed in the wrak operator topology: this means if a sequence of operators $\displaystyle{A_{n}\in \mathcal{M}}$ converges to $\displaystyle{A}$ in the sense that $\displaystyle{\braket{ \psi|A_{n}|\phi }\to\braket{ \psi|A|\phi },\forall \psi,\phi \in \mathcal{H}}$, then $\displaystyle{A\in \mathcal{M}}$. 
3. identified by the bicommutant theorem: $\displaystyle{\mathcal{M}=\mathcal{M}''}$, where $\displaystyle{\mathcal{M}'}$ is the commutant (set of operators commuting with evertthing in $\displaystyle{\mathcal{M}}$). 

### classification

a von Neumann algebra is a factor (just like simple group to group) if its center is trivial

$$\begin{align}
\mathcal{Z}(\mathcal{M}) & =\mathcal{M}\cap \mathcal{M}' \\
 & =\mathbb{C}\cdot I
\end{align}$$

factors can be classified by the range of their projections (or equivalently, the properties of their trace). in a factor, we can compare the size of any two projections using Murray-von Neumann equivalence.

- equivalence: two projections $\displaystyle{P,Q}$ are equivalent if $\displaystyle{\exists V\in \mathcal{M}}$ is a partial isometry mapping the subspace $\displaystyle{P\mathcal{H}}$ to $\displaystyle{Q\mathcal{H}}$, i.e., we have $\displaystyle{V^{\dagger}V=P}$ and $\displaystyle{VV^{\dagger}=Q}$.

this allows us to define a ordering on projections: $\displaystyle{P\preceq Q}$ if $\displaystyle{P}$ is equivalent to a sub-projection of $\displaystyle{Q}$, and any two projections in a factor are comparable: either $\displaystyle{P\preceq Q}$ or $\displaystyle{Q\preceq P}$. and we can define a unique dimension function $\displaystyle{D(P)}$ on the set of projections, and the range of this function determines the type of the factor:

| Type                                  | range of dimension $D(P)$                                                                           | properties                                                                              | examples                                                                                                          |
| :------------------------------------ | :-------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| $\displaystyle{\mathrm{I}}$           | $\displaystyle{\left\{0,1,2,\dots,n\right\}}$ or $\displaystyle{\left\{0,1,2,\dots,\infty\right\}}$ | "atomic" projections exist.                                                             | matrix algebras $\displaystyle{M_{n}(\mathbb{C})}$, typical $\mathcal{B}(\mathcal{H})$ on separable Hilbert space |
| $\displaystyle{\mathrm{II}_{1}}$      | $\displaystyle{[0,1]}$                                                                              | no atomic projections. the identity $\displaystyle{I}$ has finite dimension 1           | isomorphic to infinite tensor product of qubits/fermionic modes                                                   |
| $\displaystyle{\mathrm{II}_{\infty}}$ | $\displaystyle{[0,\infty)}$                                                                         |                                                                                         | similar to Type II$\displaystyle{_1}$ tensor some infinite space                                                  |
| $\displaystyle{\mathrm{III}}$         | $\displaystyle{\left\{0,\infty\right\}}$                                                            | all non-zero projections are equivalent to identity (infinite). no trace so no entropy. | Local QFT                                                                                                         |

in this paper, by including an observer, we dress the operators to the observer's worldline, and the algebra of observables in the de Sitter static patch becomes a Type II$_1$ von Neumann algebra by crossed product and positive projection. this allows us to define a notion of entropy for states of this algebra, which matches the expected generalized entropy in de Sitter space.


### Sub-classification of Type III Factors (Connes Classification)
You asked about **Type III$_1$**.  Alain Connes (1973) classified Type III factors further using a parameter $\lambda \in [0, 1]$. This classification is based on the **Modular Spectrum** $S(\mathcal{M})$ (the intersection of the spectra of modular operators $\Delta_\phi$ for all faithful normal states $\phi$).

*   **Type III$_\lambda$ ($0 < \lambda < 1$)**: The spectrum of the modular operator is discrete powers of $\lambda$: $S(\mathcal{M}) = \{ \lambda^n : n \in \mathbb{Z} \} \cup \{0\}$. The modular flow is periodic with period $- \ln \lambda$. This often appears in statistical mechanics lattice models at critical points.
*   **Type III$_0$**: The spectrum is minimal, $S(\mathcal{M}) = \{0, 1\}$.
*   **Type III$_1$**: The modular spectrum is the entire positive real line: $S(\mathcal{M}) = [0, \infty)$.
    *   **Physics Meaning**: This is the relevant case for **Local Quantum Field Theory** (including the de Sitter static patch).
    *   It implies the modular Hamiltonian $H_{mod} = -\ln \Delta$ has a continuous spectrum spanning $(-\infty, \infty)$.
    *   This reflects the fact that in a local region of QFT, one can boost modes to arbitrarily high or low energies. The algebra is "ergodic" under modular flow.
    *   Because it's the "worst" kind of Type III (most non-commutative, furthest from having a trace), standard entropy definitions fail completely here. This necessitates the Crossed Product construction to "break" this invariance and find a Type II subalgebra.

## Modular Theory: The Physical Intuition (Tomita-Takesaki)

To understand the Crossed Product, you **MUST** understand the **Modular Operator** $\Delta$. You can skip the deep math of the Modular Spectrum, but the operator is the engine of the entire construction.

### 1. The "Ghost" Density Matrix
In standard Quantum Mechanics (Type I), a state is defined by a density matrix $\rho$:
$$ \langle A \rangle = \text{Tr}(\rho A) $$
In QFT (Type III), **$\rho$ does not exist** (trace is infinite). However, Tomita-Takesaki theory proves that an operator $\Delta$ exists that behaves *exactly like* $\rho$ in generating dynamics.

### 2. Modular Hamiltonian $K$
We define the **Modular Hamiltonian** as:
$$ K = - \ln \Delta $$
*   In Type I, if $\rho = e^{-\beta H}$, then $K = \beta H$. So $K$ is just the (scaled) Hamiltonian.
*   In de Sitter space (Static Patch), strict math shows that for the vacuum state, **$K$ is exactly the generator of boost time translations** (the Killing vector field $\xi_t$).

### 3. Modular Flow $\sigma_t$
$\Delta$ generates a unitary evolution group called the **Modular Automorphism Group**:
$$ \sigma_t(A) = \Delta^{it} A \Delta^{-it} = e^{-iKt} A e^{iKt} $$
*   **Key Insight**: In this paper, **"Modular Flow" = "Time Evolution"**.
*   The Crossed Product $\mathcal{M} \rtimes_\sigma \mathbb{R}$ is literally mixing the algebra $\mathcal{M}$ with the "time translations" generated by this flow. This is why the Crossed Product naturally includes the Hamiltonian $H$.

### 4. Construction of $\Delta$ (Tomita-Takesaki Theorem)
You asked how $\Delta$ is constructed. It's built from the vacuum state $|\Omega\rangle$ and the algebra $\mathcal{M}$:
1.  **Antilinear Tomita Operator $S$**:
    Define an operator $S$ that maps an operator $A$ acting on the vacuum to its adjoint $A^\dagger$ acting on the vacuum:
    $$ S (A |\Omega\rangle) = A^\dagger |\Omega\rangle, \quad \forall A \in \mathcal{M} $$
    *(Note: This is well-defined only if $|\Omega\rangle$ is "cyclic" and "separating" for $\mathcal{M}$, which is true for the vacuum in QFT local algebras due to Reeh-Schlieder theorem).*
2.  **Polar Decomposition**:
    $S$ is usually unbounded and not self-adjoint. Decompose it into a positive self-adjoint part and an anti-unitary part:
    $$ S = J \Delta^{1/2} $$
    *   **$J$**: Modular Conjugation (anti-unitary). It maps the algebra to its commutant: $J \mathcal{M} J = \mathcal{M}'$. (In physics, this is often CPT or CRT symmetry).
    *   **$\Delta$**: **Modular Operator** (positive self-adjoint). $\Delta = S^\dagger S$.
    *   This $\Delta$ is the "Hamiltonian-like" generator.
    For standard thermal states $\rho = e^{-\beta H}$, one finds $\Delta = e^{-\beta H} \otimes e^{\beta H}$ (acting on thermofield double), so $\Delta^{1/2}$ relates ket and bra.

### Importance in this Paper
- **Problem**: The algebra of observables in a de Sitter static patch ($\mathcal{A}_{dS}$) is **Type III$_1$**. It has no trace, so we cannot define density matrices or von Neumann entropy $S = -\text{Tr}(\rho \log \rho)$.
- **Solution**: By including an observer (gravity constraints), we dress the operators to the observer's worldline.
- **Result**: The algebra transforms: $\text{Type III}_1 \xrightarrow{\text{Crossed Product}} \text{Type II}_\infty \xrightarrow{\text{Project } q \ge 0} \text{Type II}_1$.
- **Outcome**: Type II$_1$ algebras have a well-defined trace. We can now compute entropy, which matches the generalized entropy $A/4G + S_{matter}$. The "maximal entropy state" corresponds to empty de Sitter space ($\rho = \mathbb{1}$).
