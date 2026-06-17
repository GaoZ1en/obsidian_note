---
title: "Review 6: How to analyze an unfamiliar Lie algebra"
date: 2026-06-17
summary: "Step-by-step exam workflow for identifying and analyzing an unfamiliar Lie group or Lie algebra from definitions, generators, commutators, roots, weights, and representations."
---

# Review 6: How to analyze an unfamiliar Lie algebra

This note gives a workflow. It is meant for questions of the form: a group or Lie algebra is defined by matrices, generators, preserved forms, or commutation relations; determine its type, structure, and basic representations.

# Step 1: Convert the group condition to the Lie algebra condition

If a Lie group is defined by a matrix equation, write

$$g(t)=I+tX+O(t^2).$$

Then expand the group condition to first order.

Examples:

$$g^\dagger g=I\quad\Rightarrow\quad X^\dagger+X=0.$$

$$\det g=1\quad\Rightarrow\quad \operatorname{tr}X=0.$$

$$g^TQg=Q\quad\Rightarrow\quad X^TQ+QX=0.$$

$$g^TJg=J\quad\Rightarrow\quad X^TJ+JX=0.$$

These give unitary, special linear, orthogonal, and symplectic Lie algebras.

# Step 2: Compute dimension and rank

Dimension is the number of independent generators. Rank is the dimension of a Cartan subalgebra.

For matrix algebras, count independent parameters:

$$\dim \mathfrak{sl}_N=N^2-1,$$

$$\dim \mathfrak{so}_N=\frac{N(N-1)}{2},$$

$$\dim \mathfrak{sp}_{2n}=n(2n+1).$$

Rank:

$$\operatorname{rank}\mathfrak{sl}_N=N-1,$$

$$\operatorname{rank}\mathfrak{so}_{2n+1}=n,\qquad \operatorname{rank}\mathfrak{so}_{2n}=n,$$

$$\operatorname{rank}\mathfrak{sp}_{2n}=n.$$

Dimension and rank often identify the candidate type up to low-rank isomorphisms.

# Step 3: Find a Cartan subalgebra

For classical matrix algebras, choose a maximal diagonal block whenever possible.

For $\mathfrak{sl}_N$:

$$\mathfrak{h}=\{\operatorname{diag}(h_1,\ldots,h_N)\mid \sum_i h_i=0\}.$$

For orthogonal and symplectic algebras, a convenient complex Cartan subalgebra has diagonal weights

$$\pm e_1,\ldots,\pm e_n,$$

with an extra zero weight in the defining representation of $B_n$.

# Step 4: Compute roots from commutators

A root vector $E_\alpha$ satisfies

$$[H,E_\alpha]=\alpha(H)E_\alpha,\qquad H\in\mathfrak{h}.$$

For $\mathfrak{sl}_N$, the off-diagonal matrix $E_{ij}$ gives

$$[H,E_{ij}]=(h_i-h_j)E_{ij},$$

so the root is

$$\alpha=\epsilon_i-\epsilon_j.$$

For orthogonal and symplectic algebras, roots are combinations of the form

$$\pm e_i\pm e_j,\qquad \pm e_i,\qquad \pm 2e_i,$$

depending on the type.

# Step 5: Choose simple roots and draw the Dynkin diagram

Choose a positive half of the roots and then find indecomposable positive roots. These are the simple roots.

The Dynkin diagram is determined by the Cartan matrix

$$A_{ij}=\frac{2(\alpha_i,\alpha_j)}{(\alpha_j,\alpha_j)}.$$

Recognition rules:

- Chain with single bonds: $A_n$.
- Orthogonal roots $\pm e_i\pm e_j$ plus $\pm e_i$: $B_n$.
- Orthogonal roots $\pm e_i\pm e_j$ plus $\pm 2e_i$: $C_n$.
- Orthogonal roots $\pm e_i\pm e_j$ only: $D_n$.
- Triple bond in rank $2$: $G_2$.

# Step 6: Identify basic representations

Start with the representation in which the algebra was given.

For classical types:

- $A_n$: defining representation has dimension $n+1$ and highest weight $\omega_1$.
- $B_n$: vector representation has dimension $2n+1$ and highest weight $\omega_1$.
- $C_n$: defining representation has dimension $2n$ and highest weight $\omega_1$.
- $D_n$: vector representation has dimension $2n$ and highest weight $\omega_1$.

Then identify the adjoint representation:

$$\dim \operatorname{ad}\mathfrak{g}=\dim\mathfrak{g}.$$

For simple $\mathfrak{g}$, the weights of the adjoint representation are the roots together with the zero weight of multiplicity equal to the rank.

# Step 7: Determine whether the algebra is simple or semisimple

Useful tests:

1. If the algebra has a nonzero abelian ideal, it is not semisimple.
2. If it splits as a direct sum, it is semisimple but not simple.
3. If the Killing form is nondegenerate, it is semisimple.
4. If the Dynkin diagram is connected, the complex semisimple algebra is simple.

Low-rank warning:

$$D_2\simeq A_1\oplus A_1$$

is semisimple but not simple.

# Step 8: Track the real form

The same complex Lie algebra can have different real forms.

Examples:

$$\mathfrak{sl}_2(\mathbb{C})\text{ as a complex algebra},\qquad \mathfrak{su}(2),\qquad \mathfrak{sl}_2(\mathbb{R})$$

are related but not identical as real Lie algebras.

For physics questions:

- Compact real forms usually describe internal symmetries.
- Noncompact real forms often describe spacetime symmetries or duality groups.
- The representation theory of compact groups is unitary and discrete.
- Noncompact groups require extra care; finite-dimensional nontrivial representations are usually not unitary.

# Step 9: Decompose representations

Use this checklist:

1. Write the highest weights of the input representations.
2. Add them to get the highest possible output weight.
3. Use known small decompositions if available.
4. Use dimension as a check.
5. If the group has a center, check center charges.
6. If the representation is real or pseudoreal, make sure the result respects that structure.

# Step 10: State the answer in a stable form

A good final answer contains:

1. Lie algebra type.
2. Rank and dimension.
3. Matrix model or defining condition.
4. Root system and Dynkin diagram type.
5. Fundamental representations used in the problem.
6. Any low-rank isomorphism or covering-group issue.

# Worked miniature examples

## Example 1: traceless 4 by 4 matrices

The algebra is

$$\mathfrak{sl}_4(\mathbb{C}).$$

Thus it is type $A_3$, with

$$\operatorname{rank}=3,\qquad \dim=4^2-1=15.$$

The low-rank isomorphism is

$$A_3\simeq D_3,$$

so the same complex algebra is also $\mathfrak{so}_6(\mathbb{C})$.

## Example 2: matrices preserving a symmetric form in dimension 5

The algebra is

$$\mathfrak{so}_5(\mathbb{C}).$$

Thus it is type $B_2$, with

$$\operatorname{rank}=2,\qquad \dim=\frac{5\cdot 4}{2}=10.$$

The low-rank isomorphism is

$$B_2\simeq C_2,$$

so this is also $\mathfrak{sp}_4(\mathbb{C})$.

## Example 3: a rank 2 root system with a triple bond

The only simple type with a triple bond is

$$G_2.$$

It has

$$\operatorname{rank}=2,\qquad \dim=14.$$

# Exam moves

1. Linearize the group condition first.
2. Count dimension and rank before drawing roots.
3. Use roots to identify the Dynkin type.
4. Use low-rank isomorphisms as a final check.
5. Keep real-form statements separate from complexified Lie algebra statements.
