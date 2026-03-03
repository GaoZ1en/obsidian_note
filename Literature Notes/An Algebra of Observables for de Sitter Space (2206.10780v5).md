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
| $\displaystyle{\mathrm{III}}$         | $\displaystyle{\left\{0,\infty\right\}}$                                                            | all non-zero projections are equivalent to identity (infinite). no trace so no entropy. | Local QFT(more precisely, Type III$\displaystyle{_{1}}$)                                                          |

in this paper, by including an observer, we dress the operators to the observer's worldline, and the algebra of observables in the de Sitter static patch becomes a Type II$_1$ von Neumann algebra by crossed product and positive projection. this allows us to define a notion of entropy for states of this algebra, which matches the expected generalized entropy in de Sitter space.

## Tomita-Takesaki theory

in standard quantum mechanics (Type I), a state is defined by a density matrix $\displaystyle{\rho}$, and the expectation value of an operator $\displaystyle{A}$ is given by $\displaystyle{\langle A\rangle =\mathrm{Tr}(\rho A)}$. however, in quantum field theory of Type III, the trace is infinite and $\displaystyle{\rho}$ does not exist. Tomita-Takesaki theory proves that there exists an operator $\displaystyle{\Delta}$ that behaves like $\displaystyle{\rho}$ in generating dynamics.

for a von Neumann algebra $\displaystyle{\mathcal{M}}$ acting on a Hilbert space $\displaystyle{\mathcal{H}}$ with a cyclic (which means$\displaystyle{\mathcal{M}|\Omega\rangle}$ is dense in $\displaystyle{\mathcal{H}}$) and separating (which means $\displaystyle{A|\Omega\rangle=0}$ implies $\displaystyle{A=0}$) vector $\displaystyle{|\Omega\rangle}$ (the vacuum), we can define the Tomita operator $\displaystyle{S}$ as

$$\begin{align}
S(A\ket{\Omega} )=A^{\dagger}\ket{\Omega} ,\forall A\in \mathcal{M}
\end{align}$$

and the modular operator $\displaystyle{\Delta}$ is defined as

$$\begin{align}
\Delta & =S^{\dagger}S
\end{align}$$

# main discussion

## static patch

![image](http://koishiminipc:8080/i/597f896d-4df0-48b0-94a1-362d31c2949d.png)

consider an observer who enters a $\displaystyle{D}$-dimensional dS space $\displaystyle{X}$ at $\displaystyle{p}$ in past infinity, exits at $\displaystyle{q}$ in future infinity and travels on some worldline $\displaystyle{\gamma}$. $\displaystyle{P}$ is the static patch of the observer, which is causally accessible to the observer (can see and influence), and $\displaystyle{P'}$ is the complementary static patch.

consider first an ordinary qft on $\displaystyle{X}$. such a theory has a Hilbert space $\displaystyle{\mathcal{H}}$ of physical states, and the algebra of observables in any local region is a von Neumann algebra of Type III (due to UV divergence?). in particular, we call the algebra of observables in the region $\displaystyle{P}$ as $\displaystyle{\mathcal{A}}$, and algebra in the region $\displaystyle{P'}$ is then $\displaystyle{\mathcal{A}'}$, since $\displaystyle{P}$ and $\displaystyle{P'}$ has no causal accessibility. the Tyle III nature of $\displaystyle{\mathcal{A}}$ and $\displaystyle{\mathcal{A}'}$ means that there is no natural notion of entropy for a state of either of these algebras, which is the goal of this paper to fix.

## the thermal nature of the de Sitter space

the Hilbert space $\displaystyle{\mathcal{H}}$ of a qft in a fixed de Sitter background contains a distinguished state $\displaystyle{\Psi_{\text{dS}}}$, the Bunch-Davies state, which is the natural "vacuum" of a qft in a background de Sitter space, and is invariant under the full automorphism group $\displaystyle{G_{\text{dS}}=\mathrm{SO}(1,D)}$ (or a double cover) of the de Sitter space.

once we choose to focus on a particular static patch $\displaystyle{P}$, what is relavant is not the full de Sitter automorphism group,  but the subgroup $\displaystyle{G_{P}}$ that consists of automorphisms of $\displaystyle{P}$, which is $\displaystyle{G_{P}\cong\mathbb{R}_{t}\times \mathrm{SO}(D-1)}$. the $\displaystyle{\mathbb{R}_{t}}$ factor corresponds to the time translation symmetry of the static patch, and if the worldline $\displaystyle{\gamma}$ is chosen to be geodesic from $\displaystyle{p}$ to $\displaystyle{q}$, then $\displaystyle{\mathbb{R}_{t}}$ is the group of translations along $\displaystyle{\gamma}$. and the $\displaystyle{\mathrm{SO}(D-1)}$ factor is the rotations around $\displaystyle{\gamma}$. $\displaystyle{\mathbb{R}_{t}}$ is generated by a Killing vector field $\displaystyle{V}$ that we can choose to be future directed timelike in the static patch $\displaystyle{P}$ and past-directed timelike in the complementary patch $\displaystyle{P'}$. 

the Bunch-Davies state $\displaystyle{\Psi_{\text{dS}}}$ has a thermal interpretation: after analytic continuation to Euclidean signature, $\displaystyle{V}$ becomes the generator of a rotation of $\displaystyle{S^{D}}$. as a result, correlation functions in the state $\displaystyle{\Psi_{\text{dS}}}$ can be analytically continued to a periodic functions in imaginary time and can be interpreted as correlation functions in a thermal ensemble with a Hamiltonian $\displaystyle{H_{P}}$ and inverse temperature $\displaystyle{\beta _{\text{dS}}=2\pi r_{\text{dS}}}$. here $\displaystyle{H_{P}}$ generates time translation of the static patch and $\displaystyle{r_{\text{dS}}}$ is the radius of the curvature of the de Sitter space.

...

## the algebra of observables

timelike tbe theorem states that the algebra of observables in ordinary qft in an arbitrarilu small neighborhood of $\displaystyle{\gamma}$ is the same as the algebra of observables in the static patch.

now suppose that gravity is also one of the fields that we want to consider in dS space. we assume that the Planck length $\displaystyle{\ell}$ is much less than $\displaystyle{r_{\text{dS}}}$, then gravity is very weakly coupled and can be treated perturbatively. in leading order, we make a quadratic approximation to the gravitational action and quantize gravitational perturbations in de Sitter space in a free field approximation. this leads to the construction of a Hilbert space $\displaystyle{\mathcal{H}_{\text{grav}}}$ that describes gravitational fluctuations. thus the full Hilbert space is

$$\begin{align}
\mathcal{H} & =\mathcal{H}_{\text{matt}}\otimes \mathcal{H}_{\text{grav}}
\end{align}$$

where now $\displaystyle{\mathcal{H}_{\text{matt}}}$ is the Hilbert space obtained by quantizing the matter fields.

the thing is that as dS space is a closed universe, with compact spatial sections, the automorphism of dS space have to be treated as gauge constraints. this means that the Hilbert space that describes quantum fields and gravity in dS space, in the limit $\displaystyle{G_{N}\to 0}$, is not $\displaystyle{\mathcal{H}}$ but rather is a Hilbert space $\displaystyle{\widehat{\mathcal{H}}}$ that is constructed from $\displaystyle{\mathcal{H}}$ by imposing the dS generators as constraints. our goal is to construct the algebra of observables $\displaystyle{\widehat{\mathcal{A}}}$ that acts on $\displaystyle{\widehat{\mathcal{H}}}$ and corresponds to the static patch $\displaystyle{P}$...

## including an observer

instead of imposing constraints on the states (BRST procedure...), we will impose constraints on the algebra of observables.

in the case of the static patch, imposing time translations as a constraint means replacing $\displaystyle{\mathcal{A}}$ by $\displaystyle{\mathcal{A}^{H}}$, its subalgebra consisting of operators that commute with $\displaystyle{H}$. however, the only $\displaystyle{H}$-invariant elements of $\displaystyle{\mathcal{A}}$ are $\displaystyle{c}$-numbers, which means $\displaystyle{\mathcal{A}^{H}}$ is trivial. the solution is to include the dofs of the observer.

suppose the Hamiltonian of the observer is $\displaystyle{H_{\text{obs}}=q}$, where $\displaystyle{q\geqslant 0}$. then the Hilbert space of the observer is $\displaystyle{\mathcal{H}_{\text{obs}}=L^{2}(\mathbb{R}_{+})}$. we assume that the observer has access to any operator acting on $\displaystyle{\mathcal{H}_{\text{obs}}}$