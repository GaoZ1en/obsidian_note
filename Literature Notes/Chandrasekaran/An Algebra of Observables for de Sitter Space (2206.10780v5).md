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

# Preliminaries

## Von Neumann Algebra

A von Neumann algebra $\mathcal{M}$ is a subalgebra of the algebra of bounded operators $\mathcal{B}(\mathcal{H})$ on a Hilbert space $\mathcal{H}$ that is:
1. self-adjoint: if $\displaystyle{A\in \mathcal{M}}$, then $\displaystyle{A^{\dagger}\in \mathcal{M}}$
1. closed in the wrak operator topology: this means if a sequence of operators $\displaystyle{A_{n}\in \mathcal{M}}$ converges to $\displaystyle{A}$ in the sense that $\displaystyle{\braket{ \psi|A_{n}|\phi }\to\braket{ \psi|A|\phi },\forall \psi,\phi \in \mathcal{H}}$, then $\displaystyle{A\in \mathcal{M}}$.
1. identified by the bicommutant theorem: $\displaystyle{\mathcal{M}=\mathcal{M}''}$, where $\displaystyle{\mathcal{M}'}$ is the commutant (set of operators commuting with evertthing in $\displaystyle{\mathcal{M}}$).

### Classification

A von Neumann algebra is a factor (just like simple group to group) if its center is trivial

$$\begin{align}
\mathcal{Z}(\mathcal{M}) & =\mathcal{M}\cap \mathcal{M}' \\
 & =\mathbb{C}\cdot I
\end{align}$$

factors can be classified by the range of their projections (or equivalently, the properties of their trace). In a factor, we can compare the size of any two projections using Murray-von Neumann equivalence.

- equivalence: two projections $\displaystyle{P,Q}$ are equivalent if $\displaystyle{\exists V\in \mathcal{M}}$ is a partial isometry mapping the subspace $\displaystyle{P\mathcal{H}}$ to $\displaystyle{Q\mathcal{H}}$, i.e., we have $\displaystyle{V^{\dagger}V=P}$ and $\displaystyle{VV^{\dagger}=Q}$.

This allows us to define a ordering on projections: $\displaystyle{P\preceq Q}$ if $\displaystyle{P}$ is equivalent to a sub-projection of $\displaystyle{Q}$, and any two projections in a factor are comparable: either $\displaystyle{P\preceq Q}$ or $\displaystyle{Q\preceq P}$. And we can define a unique dimension function $\displaystyle{D(P)}$ on the set of projections, and the range of this function determines the type of the factor:

| Type                                  | range of dimension $D(P)$                                                                           | properties                                                                              | examples                                                                                                          |
| :------------------------------------ | :-------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| $\displaystyle{\mathrm{I}}$           | $\displaystyle{\left\{0,1,2,\dots,n\right\}}$ or $\displaystyle{\left\{0,1,2,\dots,\infty\right\}}$ | "atomic" projections exist.                                                             | matrix algebras $\displaystyle{M_{n}(\mathbb{C})}$, typical $\mathcal{B}(\mathcal{H})$ on separable Hilbert space |
| $\displaystyle{\mathrm{II}_{1}}$      | $\displaystyle{[0,1]}$                                                                              | no atomic projections. the identity $\displaystyle{I}$ has finite dimension 1           | isomorphic to infinite tensor product of qubits/fermionic modes                                                   |
| $\displaystyle{\mathrm{II}_{\infty}}$ | $\displaystyle{[0,\infty)}$                                                                         |                                                                                         | similar to Type II$\displaystyle{_1}$ tensor some infinite space                                                  |
| $\displaystyle{\mathrm{III}}$         | $\displaystyle{\left\{0,\infty\right\}}$                                                            | all non-zero projections are equivalent to identity (infinite). no trace so no entropy. | Local QFT(more precisely, Type III$\displaystyle{_{1}}$)                                                          |

In this paper, by including an observer, we dress the operators to the observer's worldline, and the algebra of observables in the de Sitter static patch becomes a Type II$_1$ von Neumann algebra by crossed product and positive projection. This allows us to define a notion of entropy for states of this algebra, which matches the expected generalized entropy in de Sitter space.

## Tomita-Takesaki Theory

In standard quantum mechanics (Type I), a state is defined by a density matrix $\displaystyle{\rho}$, and the expectation value of an operator $\displaystyle{A}$ is given by $\displaystyle{\langle A\rangle =\mathrm{Tr}(\rho A)}$. However, in quantum field theory of Type III, the trace is infinite and $\displaystyle{\rho}$ does not exist. Tomita-Takesaki theory proves that there exists an operator $\displaystyle{\Delta}$ that behaves like $\displaystyle{\rho}$ in generating dynamics.

for a von Neumann algebra $\displaystyle{\mathcal{M}}$ acting on a Hilbert space $\displaystyle{\mathcal{H}}$ with a cyclic (which means$\displaystyle{\mathcal{M}|\Omega\rangle}$ is dense in $\displaystyle{\mathcal{H}}$) and separating (which means $\displaystyle{A|\Omega\rangle=0}$ implies $\displaystyle{A=0}$) vector $\displaystyle{|\Omega\rangle}$ (the vacuum), we can define the Tomita operator $\displaystyle{S}$ as

$$\begin{align}
S(A\ket{\Omega} )=A^{\dagger}\ket{\Omega} ,\forall A\in \mathcal{M}
\end{align}$$

and the modular operator $\displaystyle{\Delta}$ is defined as

$$\begin{align}
\Delta & =S^{\dagger}S
\end{align}$$

# Main Discussion

## Static Patch

![image](http://koishiminipc:8080/i/597f896d-4df0-48b0-94a1-362d31c2949d.png)

Consider an observer who enters a $\displaystyle{D}$-dimensional dS space $\displaystyle{X}$ at $\displaystyle{p}$ in past infinity, exits at $\displaystyle{q}$ in future infinity and travels on some worldline $\displaystyle{\gamma}$. $\displaystyle{P}$ is the static patch of the observer, which is causally accessible to the observer (can see and influence), and $\displaystyle{P'}$ is the complementary static patch.

Consider first an ordinary qft on $\displaystyle{X}$. Such a theory has a Hilbert space $\displaystyle{\mathcal{H}}$ of physical states, and the algebra of observables in any local region is a von Neumann algebra of Type III (due to UV divergence?). In particular, we call the algebra of observables in the region $\displaystyle{P}$ as $\displaystyle{\mathcal{A}}$, and algebra in the region $\displaystyle{P'}$ is then $\displaystyle{\mathcal{A}'}$, since $\displaystyle{P}$ and $\displaystyle{P'}$ has no causal accessibility. The Tyle III nature of $\displaystyle{\mathcal{A}}$ and $\displaystyle{\mathcal{A}'}$ means that there is no natural notion of entropy for a state of either of these algebras, which is the goal of this paper to fix.

## The Thermal Nature of the De Sitter Space

The Hilbert space $\displaystyle{\mathcal{H}}$ of a qft in a fixed de Sitter background contains a distinguished state $\displaystyle{\Psi_{\text{dS}}}$, the Bunch-Davies state, which is the natural "vacuum" of a qft in a background de Sitter space, and is invariant under the full automorphism group $\displaystyle{G_{\text{dS}}=\mathrm{SO}(1,D)}$ (or a double cover) of the de Sitter space.

Once we choose to focus on a particular static patch $\displaystyle{P}$, what is relavant is not the full de Sitter automorphism group,  but the subgroup $\displaystyle{G_{P}}$ that consists of automorphisms of $\displaystyle{P}$, which is $\displaystyle{G_{P}\cong\mathbb{R}_{t}\times \mathrm{SO}(D-1)}$. The $\displaystyle{\mathbb{R}_{t}}$ factor corresponds to the time translation symmetry of the static patch, and if the worldline $\displaystyle{\gamma}$ is chosen to be geodesic from $\displaystyle{p}$ to $\displaystyle{q}$, then $\displaystyle{\mathbb{R}_{t}}$ is the group of translations along $\displaystyle{\gamma}$. And the $\displaystyle{\mathrm{SO}(D-1)}$ factor is the rotations around $\displaystyle{\gamma}$. $\displaystyle{\mathbb{R}_{t}}$ is generated by a Killing vector field $\displaystyle{V}$ that we can choose to be future directed timelike in the static patch $\displaystyle{P}$ and past-directed timelike in the complementary patch $\displaystyle{P'}$.

The Bunch-Davies state $\displaystyle{\Psi_{\text{dS}}}$ has a thermal interpretation: after analytic continuation to Euclidean signature, $\displaystyle{V}$ becomes the generator of a rotation of $\displaystyle{S^{D}}$. As a result, correlation functions in the state $\displaystyle{\Psi_{\text{dS}}}$ can be analytically continued to a periodic functions in imaginary time and can be interpreted as correlation functions in a thermal ensemble with a Hamiltonian $\displaystyle{H_{P}}$ and inverse temperature $\displaystyle{\beta _{\text{dS}}=2\pi r_{\text{dS}}}$. Here $\displaystyle{H_{P}}$ generates time translation of the static patch and $\displaystyle{r_{\text{dS}}}$ is the radius of the curvature of the de Sitter space.

...

## The Algebra of Observables

Timelike tbe theorem states that the algebra of observables in ordinary qft in an arbitrarilu small neighborhood of $\displaystyle{\gamma}$ is the same as the algebra of observables in the static patch.

Now suppose that gravity is also one of the fields that we want to consider in dS space. We assume that the Planck length $\displaystyle{\ell}$ is much less than $\displaystyle{r_{\text{dS}}}$, then gravity is very weakly coupled and can be treated perturbatively. In leading order, we make a quadratic approximation to the gravitational action and quantize gravitational perturbations in de Sitter space in a free field approximation. This leads to the construction of a Hilbert space $\displaystyle{\mathcal{H}_{\text{grav}}}$ that describes gravitational fluctuations. Thus the full Hilbert space is

$$\begin{align}
\mathcal{H} & =\mathcal{H}_{\text{matt}}\otimes \mathcal{H}_{\text{grav}}
\end{align}$$

where now $\displaystyle{\mathcal{H}_{\text{matt}}}$ is the Hilbert space obtained by quantizing the matter fields.

The thing is that as dS space is a closed universe, with compact spatial sections, the automorphism of dS space have to be treated as gauge constraints. This means that the Hilbert space that describes quantum fields and gravity in dS space, in the limit $\displaystyle{G_{N}\to 0}$, is not $\displaystyle{\mathcal{H}}$ but rather is a Hilbert space $\displaystyle{\widehat{\mathcal{H}}}$ that is constructed from $\displaystyle{\mathcal{H}}$ by imposing the dS generators as constraints. Our goal is to construct the algebra of observables $\displaystyle{\widehat{\mathcal{A}}}$ that acts on $\displaystyle{\widehat{\mathcal{H}}}$ and corresponds to the static patch $\displaystyle{P}$...

## Including an Observer

Instead of imposing constraints on the states (BRST procedure...), We will impose constraints on the algebra of observables.

In the case of the static patch, imposing time translations as a constraint means replacing $\displaystyle{\mathcal{A}}$ by $\displaystyle{\mathcal{A}^{H}}$, its subalgebra consisting of operators that commute with $\displaystyle{H}$. However, the only $\displaystyle{H}$-invariant elements of $\displaystyle{\mathcal{A}}$ are $\displaystyle{c}$-numbers, which means $\displaystyle{\mathcal{A}^{H}}$ is trivial. The solution is to include the dofs of the observer.

Suppose the Hamiltonian of the observer is $\displaystyle{H_{\text{obs}}=q}$, where $\displaystyle{q\geqslant 0}$. Then the Hilbert space of the observer is $\displaystyle{\mathcal{H}_{\text{obs}}=L^{2}(\mathbb{R}_{+})}$. We assume that the observer has access to any operator acting on $\displaystyle{\mathcal{H}_{\text{obs}}}$. Therefore, after including the observer, but prior to imposing the constraint, the algebra of observables is $\displaystyle{\mathcal{A}\otimes \mathcal{B}(L^{2}(\mathbb{R}_{+}))}$.

Now we have to impose the constraint. The simplest model is to assume that the appropriate constraint operator is simply the sum of the Hamiltonian of the static patch and the Hamiltonian of the observer:

$$\begin{align}
\hat{H} & =H+H_{\text{obs}}=H+q
\end{align}$$

in this model, the algebra of observables, after imposing the constraint, is the $\displaystyle{\widehat{H}}$-invariant part of $\displaystyle{\mathcal{A}\otimes \mathcal{B}(L^{2}(\mathbb{R}_{+}))}$:

$$\begin{align}
\widehat{\mathcal{A}} & =(\mathcal{A}\otimes \mathcal{B}(L^{2}(\mathbb{R}_{+})))^{\hat{H}}
\end{align}$$

we first ignore the condition $\displaystyle{q\geqslant 0}$ and study the case that $\displaystyle{q}$ is real-valued, that is the $\displaystyle{\hat{H}}$-invariant part of the algebra $\displaystyle{\mathcal{A}\otimes \mathcal{B}(L^{2}(\mathbb{R}))}$. Let $\displaystyle{p=-i \frac{\mathrm{d}}{\mathrm{d}q}}$, then such an algebra $\displaystyle{\mathcal{A}^{\hat{H}}}$ can be characterized as $\displaystyle{\left\{e^{ipH}ae^{-ipH},q\right\}}$, that is, the von Neumann algebra generated by operators $\displaystyle{e^{ipH}ae^{-ipH},a\in \mathcal{A}}$, along with bounded functions of $\displaystyle{q}$. This algebra is actually the crossed product of $\displaystyle{\mathcal{A}}$ by the modular automorphism group generated by $\displaystyle{H}$, and is known to be of Type II$\displaystyle{_{\infty}}$. We will denote this crossed product algebr as $\displaystyle{\mathcal{A}_{\text{cr}}}$. Since we have not imposed the constraint $\displaystyle{q\geqslant 0}$, conjugating by $\displaystyle{e^{-ipH}}$ leads to an equivalent description in which $\displaystyle{\mathcal{A}_{\text{cr}}}$ is generated by operators $\displaystyle{a}$ and $\displaystyle{q-H}$. In this description the constraint becomes $\displaystyle{q-H\geqslant 0}$. For future convenience, we define $\displaystyle{x=-q}$, and $\displaystyle{\mathcal{A}_{\text{cr}}}$ is the algebra $\displaystyle{\left\{a,H+x\right\}}$ generated by operators $\displaystyle{a}$ and $\displaystyle{H+x}$, with the constraint $\displaystyle{H+x\leqslant 0}$.

---

A simple check

$$\begin{align}
[H+q,\hat{a}] & =[H+q,e^{ipH}ae^{-ipH}] \\
 & =e^{ipH}[H,a]e^{-ipH}-e^{ipH}Hae^{-ipH}+e^{ipH}aHe^{-ipH} \\
 & =0
\end{align}$$

thus the gravitational dressing by the observer allows us to construct non-trivial operators that commute with the constraint $\displaystyle{\hat{H}}$, and hence we can have a non-trivial algebra of observables after imposing the constraint.

---

the trace in the Type II$\displaystyle{_{\infty}}$ algebra $\displaystyle{\mathcal{A}_{\text{cr}}}$ can be described as follows. in general, an element $\displaystyle{\hat{a}\in \mathcal{A}_{\text{cr}}}$ is an $\displaystyle{\mathcal{A}}$-valued function of $\displaystyle{H+x}$. but since $\displaystyle{H\ket{\Psi_{\text{dS}}}=0}$, when we evaluate a matrix element $\displaystyle{\braket{ \Psi_{\text{dS}}|\hat{a}|\Psi_{\text{dS}} }}$, we can set $\displaystyle{H=0}$ and view $\displaystyle{\hat{a}}$ as an $\displaystyle{\mathcal{A}}$-valued function of $\displaystyle{x}$. then we can define the trace of $\displaystyle{\hat{a}}$ as

$$\begin{align}
\mathrm{Tr}\hat{a} & =\int ^{\infty}_{-\infty}\beta _{\text{dS}}\mathrm{d}x e^{\beta _{\text{dS}}x}\braket{ \Psi_{\text{dS}}|a(x)|\Psi_{\text{dS}} }
\end{align}$$

the factor $\displaystyle{e^{\beta _{\text{dS}}x}}$ comes from Boltzmann weight of the observer's energy, and ensures that the trace is cyclic. But since we have not yet imposed the constraint $\displaystyle{H+x\leqslant 0}$, the integral is over the whole real line, and thus $\displaystyle{\mathrm{Tr}(1)=\infty}$, which is consistent with $\displaystyle{\mathcal{A}_{\text{cr}}}$ being Type II$\displaystyle{_{\infty}}$.

Then we will impose the constraint $\displaystyle{q\geqslant 0}$. To do so, let $\displaystyle{\Theta(q)}$ be the function that is $\displaystyle{1}$ for $\displaystyle{q\geqslant0}$ and $\displaystyle{0}$ for $\displaystyle{q< 0}$. Multiplication by $\displaystyle{\Theta(q)}$ is a projection $\displaystyle{\Pi}$ on the algebra $\displaystyle{\mathcal{A}_{\text{cr}}}$, acting on $\displaystyle{\mathcal{H}\otimes L^{2}(\mathbb{R})}$. Then the algebra of observables after imposing the constraint is $\displaystyle{\widehat{\mathcal{A}}=\Pi \mathcal{A}_{\text{cr}}\Pi}$, which is a von Neumann algebra acting on the Hilbert space

$$\begin{align}
\Pi(\mathcal{H}\otimes L^{2}(\mathbb{R})) & =\mathcal{H}\otimes L^{2}(\mathbb{R}_{+})
\end{align}$$

$\displaystyle{\widehat{\mathcal{A}}}$ automatically comes with a trace, which is the restriction of the trace on $\displaystyle{\mathcal{A}_{\text{cr}}}$:

$$\begin{align}
\mathrm{Tr}_{\widehat{\mathcal{A}}}\hat{a} & =\mathrm{Tr}_{\mathcal{A}_{\text{cr}}}\Pi\hat{a}\Pi
\end{align}$$

so we have

$$\begin{align}
\mathrm{Tr}_{\widehat{\mathcal{A}}}1 & =\mathrm{Tr}_{\mathcal{A}_{\text{cr}}}\Pi \\
 & =\int ^{\infty}_{-\infty}\beta _{\text{dS}}\mathrm{d}xe^{\beta _{\text{dS}}x}\braket{ \Psi_{\text{dS}}|\Theta(-H-x)|\Psi_{\text{dS}} }  \\
 & =\int _{-\infty}^{0}\beta _{\text{dS}}\mathrm{d}xe^{\beta _{\text{dS}}x} \\
  & =1
\end{align}$$

which means $\displaystyle{\widehat{A}}$ is a Type II$_1$ von Neumann algebra.

A Type II$\displaystyle{_{1}}$ algebra has a state of maximum entropy, namely the state with density matrix $\displaystyle{\rho=1}$. To understand this state, we can compute expectation values in this state. For any $\displaystyle{a\in \mathcal{A}}$, we have

$$\begin{align}
\mathrm{Tr}a\rho & =\mathrm{Tr}a \\
 & =\int ^{0}_{-\infty}\beta _{\text{dS}}\mathrm{d}xe^{\beta _{\text{dS}}x}\braket{ \Psi_{\text{dS}}|a|\Psi_{\text{dS}} }  \\
  & =\braket{ \Psi_{\text{dS}}|a|\Psi_{\text{dS}} }
\end{align}$$

on the other hand, consider an operator of the form $\displaystyle{G(-H-x)}$, where $\displaystyle{G}$ is some bounded function. We have

$$\begin{align}
\mathrm{Tr}G(-H-x)\rho & =\mathrm{Tr}G(-H-x) \\
 & =\int _{-\infty}^{0}\beta _{\text{dS}}\mathrm{d}xe^{\beta _{\text{dS}}x}\braket{ \Psi_{\text{dS}}|G(-H-x)|\Psi_{\text{dS}} }  \\
 & =\int _{-\infty}^{0}\beta _{\text{dS}}\mathrm{d}xe^{\beta _{\text{dS}}x}\braket{ \Psi_{\text{dS}}|G(-x)|\Psi_{\text{dS}} } \\
 & = \int ^{\infty}_{0} \beta _{\text{dS}}\mathrm{d}qe^{-\beta _{\text{dS}}q} G(q)
\end{align}$$

thus we can think of the maximum entropy syate as the ordinary dS state $\displaystyle{\Psi_{\text{dS}}}$ of the quantum fields, tensored with a thermal energy distribution $\displaystyle{p(q)=\beta _{\text{dS}}e^{-\beta _{\text{dS}}q}}$ for the observer. More formally, the maximum entropy energy state has the following purification: the Hilbert space is $\displaystyle{\mathcal{H}\otimes L^{2}(\mathbb{R}_{-})}$ (for $\displaystyle{x\leqslant 0}$ ) and $\displaystyle{\widehat{\mathcal{A}}}$ acts on the first factor $\displaystyle{\mathcal{H}}$ as $\displaystyle{\mathcal{A}}$ and acts on the second factor $\displaystyle{L^{2}(\mathbb{R}_{-})}$ by multiplication. The purification of the maximum entropy state is then

$$\begin{align}
\Psi_{\text{max}} & =\Psi_{\text{dS}}\sqrt{ \beta _{\text{dS}} }e^{\beta _{\text{dS}}x/2}
\end{align}$$

and for any $\displaystyle{\mathbf{x}\in\widehat{A}}$, we have

$$\begin{align}
\mathrm{Tr}\mathbf{x} & =\mathrm{Tr}\mathbf{x}\rho _{\text{max}} \\
 & =\braket{ \Psi_{\text{max}}|\mathbf{x}|\Psi_{\text{max}} }
\end{align}$$

Rényi entropies can be defined as

$$\begin{align}
S_{\alpha}(\rho) & =\frac{1}{1-\alpha}\log \mathrm{Tr}\rho ^{\alpha}
\end{align}$$

and all Rényi entropies of the maximum entropy state vanish.

---

Here we give a brief review of entanglement spectrum. In standard QM, for a density matrix $\displaystyle{\rho}$ with eigenvalues $\displaystyle{\lambda _{i}}$, the entanglement spectrum is the set of values $\displaystyle{\xi _{i}=-\log \lambda _{i}}$. If all non-zero eigenvalues are equal, the spectrum is called flat. And for a flat spectrum, the Rényi entropies $\displaystyle{S_{\alpha}}$ are independent of $\displaystyle{\alpha}$.

---

# A Bulk Formula for the Entropy

We will consider states of the form

$$\begin{align}
\widehat{\Phi}=\Phi \otimes f(x)
\end{align}$$

where $\displaystyle{\Phi \in \mathcal{H},f(x)\in L^{2}(\mathbb{R})}$. Because of the projection operator $\displaystyle{\Pi}$, it is natural to assume the function $\displaystyle{f(x)}$ has only support for $\displaystyle{x<0}$. We assume a normalization condition

$$\begin{align}
\braket{ \Phi|\Phi } =1=\int _{-\infty}^{0}\mathrm{d}x|f(x)|^{2}
\end{align}$$

assume the function $\displaystyle{f(x)}$ should be slowly varying. We choose

$$\begin{align}
f(x) & =\varepsilon ^{1/2}g(\varepsilon x),\varepsilon\ll \beta _{\text{dS}}
\end{align}$$

where $\displaystyle{g(x)}$ is a smooth, bounded function with support for $\displaystyle{x< 0}$ and $\displaystyle{\varepsilon}$ is a small parameter. In a state of this kind, $\displaystyle{p\approx 0}$, with an uncertainty of order $\displaystyle{\varepsilon}$. After this state evolves for a time $\displaystyle{t}$ with Hamiltonian $\displaystyle{H_{\text{obs}}=q}$, it has $\displaystyle{p\approx -t}$. With the same uncertainty. Such a function $\displaystyle{f(x)}$ is mostly supported for $\displaystyle{x \sim -\frac{1}{\varepsilon}\ll 0}$, and hence $\displaystyle{\Phi \otimes f(x)}$ is approximately invariant under the projection operator $\displaystyle{\Pi=\Theta(-H-x)}$. So we can view $\displaystyle{\widehat{\Phi}=\Phi \otimes f(x)}$ as an element of $\displaystyle{\widehat{\mathcal{H}}=\Pi(\mathcal{H}\otimes L^{2}(\mathbb{R}))}$ (however the maximal entropic state $\displaystyle{\Psi_{\text{max}}}$ is not a state of this form)

To compute the entropy of the state $\displaystyle{\widehat{\Phi}}$, we will first find an approximate formula for its density matrix $\displaystyle{\rho _{\widehat{\Phi}}}$ and then evaluate the von Neumann entropy $\displaystyle{S(\widehat{\Phi})=-\mathrm{Tr}(\rho _{\widehat{\Phi}}\log \rho _{\widehat{\Phi}})}$. Let $\displaystyle{\Psi_{\text{dS}}\in \mathcal{H}}$ be the Bunch-Davies state, and let $\displaystyle{\Delta _{\Psi_{\text{dS}}}:\mathcal{H}\to \mathcal{H}}$ be its modular operator for the algebra $\displaystyle{\mathcal{A}}$. For simplicity we drop the $\displaystyle{\text{dS}}$ subscript in the following discussion.

The modular Hamiltonian $\displaystyle{h_{\Psi}}$ is defined as

$$\begin{align}
h_{\Psi} & =-\ln \Delta _{\Psi}
\end{align}$$

we will also need the corresponding relative modular operator $\displaystyle{\Delta _{\Phi|\Psi}:\mathcal{H}\to \mathcal{H}}$ for the algebra $\displaystyle{\mathcal{A}}$ and the states $\displaystyle{\Phi}$ and $\displaystyle{\Psi}$. this operator is defined by $\displaystyle{\Delta _{\Phi|\Psi}=S^{\dagger}_{\Phi|\Psi}S_{\Phi|\Psi}}$, where the relative Tomita operator $\displaystyle{S_{\Phi|\Psi}}$ is antilinear and satisfies $\displaystyle{S_{\Phi|\Psi}a\Psi=a^{\dagger}\Phi,\forall a\in \mathcal{A}}$. from this it follows that

$$\begin{align}
\braket{ \Psi|\Delta _{\Phi|\Psi}a|\Psi }  & = \braket{ \Psi|S^{\dagger}_{\Phi|\Psi}S_{\Phi|\Psi}a|\Psi }  \\
 & = \braket{ \Psi|S^{\dagger}_{\Phi|\Psi}a^{\dagger}|\Phi }  \\
 & = \overline{\braket{ \Phi|a^{\dagger}|\Phi } } \\
 & = \braket{ \Phi|a|\Phi } , \forall a\in \mathcal{A}
\end{align}$$

we write $\displaystyle{\Delta _{\Phi|\Psi}=e^{-h_{\Phi|\Psi}}}$, where $\displaystyle{h_{\Phi|\Psi}}$ is the relative modular Hamiltonian.

The desired density matrix $\displaystyle{\rho _{\widehat{\Phi}}}$ is supposed to satisfy

$$\begin{align}
\braket{ \widehat{\Phi}|\hat{a}|\widehat{\Phi} } & =\mathrm{Tr}_{\rho _{\widehat{\Phi}}}\hat{a}, \forall\hat{a}\in \widehat{A}
\end{align}$$

but $\displaystyle{\mathrm{Tr}\rho _{\widehat{\Phi}}\hat{a}=\braket{ \Psi_{\text{max}}|\rho _{\widehat{\Phi}}\hat{a}|\Psi_{\text{max}} }}$. so the condition can be rewritten as

$$\begin{align}
\braket{ \widehat{\Phi}|\hat{a}|\widehat{\Phi} } & =\braket{ \Psi_{\text{max}}|\rho _{\widehat{\Phi}}\hat{a}|\Psi_{\text{max}} }, \forall\hat{a}\in \widehat{A}
\end{align}$$

one can find an approximation to the density matrix:

$$\begin{align}
\rho _{\Phi} & =\frac{1}{\beta} \bar{f}(x+h_{\Psi}/\beta)e^{-\beta x}\Delta _{\Phi|\Psi}f(x+h_{\Psi}/\beta)+\mathcal{O}(\varepsilon)
\end{align}$$

---

How is this density matrix derived? The logic here is a "guess and verify" procedure. Our goal is to find a density matrix $\displaystyle{\rho_{\widehat{\Phi}}}$ that satisfies the defining equation:

$$\begin{align}
\braket{ \Psi_{\text{max}}|\rho _{\widehat{\Phi}}\hat{a}|\Psi_{\text{max}} } & = \braket{ \widehat{\Phi}|\hat{a}|\widehat{\Phi} }, \forall\hat{a}\in \widehat{A}
\end{align}$$

notice the striking similarity between this goal and the defining property of the relative modular operator $\displaystyle{\Delta_{\Phi|\Psi}}$ in Tomita-Takesaki theory:

$$\begin{align}
\braket{ \Psi|\Delta _{\Phi|\Psi}a|\Psi } & = \braket{ \Phi|a|\Phi }, \forall a\in \mathcal{A}
\end{align}$$

this suggests that we can construct $\displaystyle{\rho_{\widehat{\Phi}}}$ by "dressing" the relative modular operator $\displaystyle{\Delta_{\Phi|\Psi}}$ to account for the observer. The necessary modifications are:

1. **upgrading the state**: the QFT state $\displaystyle{\Phi}$ becomes the semiclassical state $\displaystyle{\widehat{\Phi} = \Phi \otimes f(x)}$. The vacuum $\displaystyle{\Psi}$ becomes the maximum entropy state $\displaystyle{\Psi_{\text{max}} = \Psi \otimes \sqrt{\beta}e^{\beta x / 2}}$.
1. **compensating the thermal factor**: since $\displaystyle{\Psi_{\text{max}}}$ contains a thermal weight $\displaystyle{e^{\beta x/2}}$, its inner product inherently produces a factor of $\displaystyle{\beta e^{\beta x}}$. To cancel this out and recover the correct matrix elements, we must manually insert a compensating factor $\displaystyle{\frac{1}{\beta} e^{-\beta x}}$ into our ansatz for $\displaystyle{\rho_{\widehat{\Phi}}}$.
1. **including the observer's wavefunction**: we need to wrap the operator with the observer's wavefunction $\displaystyle{f}$. However, a pure $\displaystyle{x}$ is not in the observable algebra $\displaystyle{\widehat{\mathcal{A}}}$. The invariant combination is $\displaystyle{x + h_{\Psi}/\beta}$.

Combining these ingredients, we guess the form:

$$\begin{align}
\rho _{\widehat{\Phi}} & \approx \frac{1}{\beta} \bar{f}(x+h_{\Psi}/\beta)e^{-\beta x}\Delta _{\Phi|\Psi}f(x+h_{\Psi}/\beta)
\end{align}$$

since we assumed $\displaystyle{f(x)}$ is highly semiclassical (a slowly varying function, meaning the uncertainty in the observer's energy is very small), $\displaystyle{f(x+h_{\Psi}/\beta)}$ approximately commutes with $\displaystyle{\Delta_{\Phi|\Psi}}$. this allows us to combine the wavefunctions into $\displaystyle{|f(x+h_{\Psi}/\beta)|^2}$:

$$\begin{align}
\rho _{\widehat{\Phi}} & = \frac{1}{\beta} |f(x+h_{\Psi}/\beta)|^{2}e^{-\beta x}\Delta _{\Phi|\Psi}+\mathcal{O}(\varepsilon)
\end{align}$$

---

It suffices to verify

$$\begin{align}
\braket{ \widehat{\Phi}|\hat{a}|\widehat{\Phi} } & =\braket{ \Psi_{\text{max}}|\rho _{\widehat{\Phi}}\hat{a}|\Psi_{\text{max}} }
\end{align}$$

for $\displaystyle{\hat{a}=ae^{iu(\beta x+h_{\Psi})}, a\in \mathcal{A},u\in \mathbb{R}}$. we have chosen the state $\displaystyle{f(x)}$ of the observer's clock so that $\displaystyle{|p|\lesssim \varepsilon}$, but multiplication by $\displaystyle{e^{iu\beta x}}$ shifts $\displaystyle{p}$ by $\displaystyle{-u\beta}$. as a result, the LHS and RHS vanish exponentially unless $\displaystyle{|u|\lesssim \varepsilon/\beta}$, so we can restrict to that range of $\displaystyle{u}$. we have

$$\begin{align}
\braket{ \widehat{\Phi}|\hat{a}|\widehat{\Phi} } & =\int _{-\infty}^{0}\mathrm{d}x|f(x)|^{2}\braket{ \Phi|ae^{iu(h_{\Psi}+\beta x)}|\Phi } \\
 & \approx \int _{-\infty}^{0} \mathrm{d}x|f(x)|^{2}e^{iu\beta x}\braket{ \Phi|a|\Phi } +\mathcal{O}(\varepsilon) \\
 & =\int _{-\infty}^{0}\mathrm{d}x|f(x)|^{2}e^{iu\beta x}\braket{ \Psi|\Delta _{\Phi|\Psi}a|\Psi } +\mathcal{O}(\varepsilon) \\
 & =\int _{-\infty}^{0} \mathrm{d}x\braket{ \Psi||f(x+h_{\Psi}/\beta)|^{2}\Delta _{\Phi|\Psi}\hat{a}|\Psi } +\mathcal{O}(\varepsilon) \\
 & =\int _{-\infty}^{0}\beta\mathrm{d}xe^{\beta x}\braket{ \Psi| \frac{1}{\beta}|f(x+h_{\Psi}/\beta)|^{2}e^{-\beta x}\Delta _{\Phi|\Psi}\hat{a}|\Psi }+\mathcal{O}(\varepsilon) \\
 & = \braket{ \Psi_{\text{max}}| \frac{1}{\beta}|f(x+h_{\Psi}/\beta)|^{2}e^{-\beta x}\Delta _{\Phi|\Psi}\hat{a}|\Psi_{\text{max}} } +\mathcal{O}(\varepsilon)
\end{align}$$

thus we have verified the defining equation for $\displaystyle{\rho_{\widehat{\Phi}}}$, and hence justified our guess for the density matrix. The von Neumann entropy of the state $\displaystyle{\widehat{\Phi}}$ is then given by

$$\begin{align}
S(\rho _{\widehat{\Phi}}) & =-\mathrm{Tr}(\rho _{\widehat{\Phi}}\log \rho _{\widehat{\Phi}}) \\
 & = -\braket{ \widehat{\Phi}|\log \rho _{\widehat{\Phi}}|\widehat{\Phi} }
\end{align}$$

to leading order in $\displaystyle{\varepsilon}$, we have

$$\begin{align}
-\log \rho _{\widehat{\Phi}} & =h_{\Phi|\Psi}+\beta x-\log|f(x)|^{2}+\log \beta
\end{align}$$

and the entropy is

$$\begin{align}
S(\rho _{\widehat{\Phi}}) & = \braket{ \Phi|h_{\Phi|\Psi}|\Phi }+\int _{-\infty}^{0}\mathrm{d}s|f(x)|^{2}(\beta x-\log|f(x)|^{2}+\log \beta) \\
 & = \braket{ \Phi|h_{\Phi|\Psi}|\Phi }+\braket{ \widehat{\Phi}|\beta x|\widehat{\Phi} }+\int _{-\infty}^{0}\mathrm{d}x|f(x)|^{2}\left(-\log|f(x)|^{2}+\log \beta\right) \\
 & = -\braket{ \Phi|h_{\Psi|\Phi}|\Phi }+\braket{ \widehat{\Phi}|h_{\Psi}+\beta x|\widehat{\Phi} } +\int _{-\infty}^{0}\mathrm{d}x|f(x)|^{2}(-\log|f(x)|^{2}+\log \beta)
\end{align}$$

---

In gravitation theory, we have to impose some extrinsic or intrinsic reference (observer, conserved charges, algebras, etc.) to define a Type II von Neumann algebra to avoid the UV divergence of the entropy.
