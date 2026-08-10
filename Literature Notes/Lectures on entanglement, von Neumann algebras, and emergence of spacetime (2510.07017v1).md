---
paper id: 2510.07017v1
title: "Lectures on entanglement, von Neumann algebras, and emergence of spacetime"
authors: [Hong Liu]
publication date: 2025-10-08T13:43
abstract: |
  We review recent developments in the use of von Neumann algebras to analyze the entanglement structure of quantum gravity and the emergence of spacetime in the semi-classical limit. Von Neumann algebras provide a natural framework for describing quantum subsystems when standard tensor factorizations are unavailable, capturing both kinematic and dynamical aspects of entanglement.
    The first part of the review introduces the fundamentals of von Neumann algebras, including their classification, and explains how they can be applied to characterize entanglement. Topics covered include modular and half-sided modular flows and their role in the emergence of time, as well as the crossed-product construction of von Neumann algebras.
    The second part turns to applications in quantum gravity, including an algebraic formulation of AdS/CFT in the large-$N$ limit, the emergence of bulk spacetime structure through subregion-subalgebra duality, and an operator-algebraic perspective on gravitational entropy. It also discusses simple operator-algebraic models of quantum gravity, which provide concrete settings in which to explore these ideas. In addition, several original conceptual contributions are presented, including a diagnostic of firewalls and an algebraic formulation of entanglement islands. The review concludes with some speculative remarks on the mathematical structures underlying quantum gravity.
comments: "119 pages, 36 figures, comments welcome"
pdf: "[[Attachments/Assets/Lectures on entanglement, von Neumann algebras, and emergence of spacetime (2510.07017v1).pdf]]"
url: https://arxiv.org/abs/2510.07017v1
tags: []
---

# Type I and Type II Von Neumann Algebrs

A von Neumann algebra $\displaystyle{\mathcal{M}}$ defines a subsystem, and vice versa.

## Density Operators for Type I and II Algebras

Suppose the system is in a status $\displaystyle{\ket{\Psi}}$. When a von Neumann algebra $\displaystyle{\mathcal{M}}$ has a trace, it is possible to define a density operator $\displaystyle{\rho _{\mathcal{M}}}$ associated with $\displaystyle{\mathcal{M}}$ for $\displaystyle{\ket{\Psi}}$ as

$$\begin{align}
\mathrm{Tr}(A\rho _{\mathcal{M}}) & = \braket{ \Psi|A|\Psi },\quad \forall A\in \mathcal{M}
\end{align}$$

## Type I Algebras

For $\displaystyle{\mathcal{M}}$ being a type I factor, there exists a factorization of the Hilbert space $\displaystyle{\mathcal{H}=\mathcal{H}_{R}\otimes \mathcal{H}_{L}}$ such that

$$\begin{align}
\mathcal{M} & =\mathcal{B}(\mathcal{H}_{R})\otimes 1_{L}, & \quad \mathrm{Tr} & =\mathrm{Tr}_{\mathcal{H}_{R}}, & \mathcal{M'}=1_{R}\otimes \mathcal{B}(\mathcal{H}_{L})
\end{align}$$

given a state $\displaystyle{\ket{\Psi}}$ on $\displaystyle{\mathcal{H}}$, it can be seen that the density operator $\displaystyle{\rho _{\mathcal{M}}}$ defined above is the reduced density matrix obtained by tracing out $\displaystyle{\mathcal{H}_{L}}$:

$$\begin{align}
\braket{ \Psi|A|\Psi }  & =\mathrm{Tr}_{\mathcal{H}_{R}}(\rho _{R}A), \quad \forall A\in \mathcal{M}
\end{align}$$

we conclude that $\displaystyle{\rho _{\mathcal{M}}=\rho _{R}=\mathrm{Tr}_{\mathcal{H}_{L}}\ket{\Psi}\bra{\Psi}}$.

### Generic Type I

Consider a generic type I algebra $\displaystyle{\mathcal{M}}$ with non-trivial center. It can be shown that there exists a decomposition

$$\begin{align}
\mathcal{H} & =\oplus _{\alpha}\mathcal{H}_{\alpha}, & \mathcal{H}_{\alpha} & =\mathcal{H}_{R_{\alpha}}\otimes \mathcal{H}_{L_{\alpha}} \\
\mathcal{M} & =\oplus _{\alpha}(\mathcal{B}(\mathcal{H}_{R_{\alpha}})\otimes 1_{L_{\alpha}}) & \mathcal{M}' & =\oplus _{\alpha}(1_{R_{\alpha}}\otimes \mathcal{B}(\mathcal{H}_{L_{\alpha}}))
\end{align}$$

a trace on $\displaystyle{\mathcal{M}}$ can be defined as

$$\begin{align}
\mathrm{Tr}A & =\sum _{\alpha}\mathrm{Tr}_{\alpha}A_{\alpha} \\
 & \equiv \sum _{\alpha}\mathrm{Tr}_{\mathcal{H}_{R_{\alpha}}}A_{\alpha} \\
A & =\sum _{\alpha}(A_{\alpha}\otimes 1_{L_{\alpha}}),\quad A_{\alpha}\in \mathcal{B}(\mathcal{H}_{R_{\alpha}})
\end{align}$$

now consider a state $\displaystyle{\rho}$

$$\begin{align}
\rho & =\oplus _{\alpha}p_{\alpha}\rho _{\alpha}, & \sum _{\alpha}p_{\alpha} & =1, & p_{\alpha} & \in[0,1], & \mathrm{Tr}_{\alpha}\rho _{\alpha} & =1
\end{align}$$

then we have

$$\begin{align}
\rho _{\mathcal{M}} & =\sum _{\alpha}p_{\alpha}\rho _{R_{\alpha}}\otimes 1_{L_{\alpha}}, &  \rho _{R_{\alpha}} & =\mathrm{Tr}_{H_{L_{\alpha}}}\rho _{\alpha}\in \mathcal{B}(\mathcal{H}_{R_{\alpha}})
\end{align}$$

then the entanglement entropy of the subsystem $\displaystyle{\mathcal{M}}$ in the state $\displaystyle{\rho}$ is then given by

$$\begin{align}
S_{\mathcal{M}} & \equiv-\mathrm{Tr}\rho _{\mathcal{M}}\log \rho _{\mathcal{M}} \\
 & =-\sum _{\alpha}p_{\alpha}\log p_{\alpha}+\sum _{\alpha}p_{\alpha}S_{\alpha} \\
S_{\alpha} & =-\mathrm{Tr}_{\alpha}\rho _{R_{\alpha}}\log \rho _{R_{\alpha}}
\end{align}$$

where the first term comes from statistics, and the second term comes from entanglement.

## Type II Algebras

### Trace for $\displaystyle{\theta=\frac{\pi}{4}}$

What does $\displaystyle{\theta=\frac{\pi}{4}}$ mean? It means that we have a state

$$\begin{align}
\ket{\Psi_{\theta}} =\sum _{i=1}^{\infty}\left(\cos \theta \ket{0} _{L,i}\ket{0} _{R,i}+\sin \theta \ket{1} _{L,i}\ket{1}_{R,i}\right)
\end{align}$$

and when $\displaystyle{\theta=\frac{\pi}{4}}$, the $\displaystyle{R}$ system and $\displaystyle{L}$ system are maximally entangled. In this case, it is possible to define a trace on $\displaystyle{\mathcal{M}=\mathcal{M}_{R}}$ as

$$\begin{align}
\mathrm{Tr}A & =\braket{\Psi_{\pi /4}|A|\Psi_{\pi /4}},\quad \forall A\in \mathcal{M}
\end{align}$$

### Type II$_{1}$ for $\displaystyle{\theta=\frac{\pi}{4}}$

The maximal projection is the identity operator

$$\begin{align}
1 & =1_{2}\otimes 1_{2}\otimes \dots
\end{align}$$

and all other projections are subprojections of the identity operator. Thus, the algebra $\displaystyle{\mathcal{M}}$ is a type II$_{1}$ factor.

...

# Type III

For type III algebras, there is no trace. And it is not possible to define a density operator (even in the renormalized sense) associated with $\displaystyle{\mathcal{M}}$ for a state.

## Emergent Times, Modular Flows

We first turn to type I case and reformulate the chracterization of entanglement in terms of modular flows. We consider

$$\begin{align}
\rho _{R} & =\mathrm{Tr}_{L}\ket{\Psi} \bra{\Psi} \equiv e^{-K_{R}},  & K_{R}=-\log \rho _{R}
\end{align}$$

the information contained in $\displaystyle{S_{R}}$ and $\displaystyle{S_{R}^{(n)}}$ is fully captured by the spectrum of $\displaystyle{K_{R}}$ (entanglement spectrum). The flow is generated by $\displaystyle{K_{R}}$:

$$\begin{align}
A(s) & =e^{isK_{R}}Ae^{-isK_{R}},\quad \forall A\in \mathcal{M}=\mathcal{B}(\mathcal{H}_{R})\otimes 1_{L}
\end{align}$$

the flow acts within the system. Kubo-Martin-Schwinger relation? Similarly we introduce $\displaystyle{K_{L}=\log \rho _{L},\rho _{L}=\mathrm{Tr}_{R}\ket{\Psi}\bra{\Psi}}$. We can treat the $\displaystyle{R}$ and $\displaystyle{L}$ systems together by introducing

$$\begin{align}
\Delta _{\Psi} & =\rho _{R}\otimes \rho _{L}^{-1}, & -\log \Delta _{\Psi} & =K_{R}-K_{L}
\end{align}$$

that acts joint on both subsystems, with the flow and its counterpart in the $\displaystyle{L}$ subsystem written as

$$\begin{align}
\sigma _{s}(A) & =\Delta _{\Psi}^{-is}A\Delta _{\Psi}^{is}\in \mathcal{B}(\mathcal{H}_{R}), & \forall A\in \mathcal{B}(\mathcal{H}_{R}), s \in \mathbb{R} \\
\sigma _{s}(A') & =\Delta _{\Psi}^{-is}A'\Delta _{\Psi}^{is}\in \mathcal{B}(\mathcal{H}_{L}), & \forall A'\in \mathcal{B}(\mathcal{H}_{L})
\end{align}$$

$\displaystyle{\Delta _{\Psi}}$ is called the modular operator, the action $\displaystyle{\sigma _{s}}$ is called the modular flow, and $\displaystyle{s}$ the modular time.

The fact that in a pure state $\displaystyle{S_{R}=S_{L}}$ implies $\displaystyle{\Delta _{\Psi}}$ leaves $\displaystyle{\ket{\Psi}}$ invariant:

$$\begin{align}
\Delta _{\Psi}\ket{\Psi} & =\Delta _{\Psi}^{-1}\ket{\Psi} =\ket{\Psi} \implies (K_{R}-K_{L})\ket{\Psi} =0
\end{align}$$

which means the modular flow generated by $\displaystyle{\Delta _{\Psi}}$ is a symmetry of the state $\displaystyle{\ket{\Psi}}$. Since $\displaystyle{\Delta _{\Psi}}$ is well-defined only when $\displaystyle{\rho _{R}}$ and $\displaystyle{\rho _{L}}$ are invertible, the Hilbert spaces $\displaystyle{\mathcal{H}_{R}}$ and $\displaystyle{\mathcal{H}_{L}}$ have the same dimension. So it is possible to define a anti-unitary operator $\displaystyle{J_{\Psi}}$ that swaps the $\displaystyle{R}$ and $\displaystyle{L}$ systems:

$$\begin{align}
\ket{\phi}  & =\sum _{m,n}\phi _{mn}\ket{m} _{R}\otimes \ket{n} _{L}\in \mathcal{H} \\
J_{\Psi}\ket{\phi}  & =\sum _{m,n}\phi _{mn}^{*}\ket{n} _{R}\otimes \ket{m} _{L}
\end{align}$$

then $\displaystyle{J_{\Psi}}$ satisfies

$$\begin{align}
J_{\Psi}^{2} & =1
\end{align}$$

$\displaystyle{J_{\Psi}}$ is known as the modular conjugation operator. In order to generalize to the case of type III algebras, we introduce the notion of cyclic and separating vector. A state $\displaystyle{\ket{\Psi}}$ is called to be cyclic with respect to an algebra $\displaystyle{\mathcal{M}}$ if the set $\displaystyle{\left\{A\ket{\Psi},A\in \mathcal{M}\right\}}$ is dense in the Hilbert space $\displaystyle{\mathcal{H}}$. $\displaystyle{\rho _{R}}$ and $\displaystyle{\rho _{L}}$ are full-rank is equivalent to the statement that $\displaystyle{\ket{\Psi}}$ is cyclic with respect to $\displaystyle{\mathcal{M}=\mathcal{B}(\mathcal{H}_{R})\otimes 1_{L}}$ and its commutant $\displaystyle{\mathcal{M}'=1_{R}\otimes \mathcal{B}(\mathcal{H}_{L})}$. A state $\displaystyle{\ket{\Psi}}$ is called to be separating with respect to an algebra $\displaystyle{\mathcal{M}}$ if for any $A\in \mathcal{M}$, $A\ket{\Psi}=0$ implies $A=0$.

Tomita-Takesaki theory says that for a von Neumann algebra $\displaystyle{\mathcal{M}}$ with a cyclic and separating vector $\displaystyle{\ket{\Psi}}$
- there exists a positive modular operator $\displaystyle{\Delta _{\Psi}}$ leaving $\displaystyle{\ket{\Psi}}$ invariant

$$\begin{align}
\Delta _{\Psi}\ket{\Psi}  & =\ket{\Psi}
\end{align}$$

    and $\displaystyle{K_{\Psi}=-\log \Delta _{\Psi}}$ generates unitary automorpshisms (modular flows) for $\displaystyle{\mathcal{M}}$ and $\displaystyle{\mathcal{M}'}$

$$\begin{align}
\sigma _{s}(A) & \equiv \Delta _{\Psi}^{-is}A\Delta _{\Psi}^{is}\in \mathcal{M}, & \forall A\in \mathcal{M}, s\in \mathbb{R} \\
\sigma _{s}(A') & \equiv \Delta _{\Psi}^{-is}A'\Delta _{\Psi}^{is}\in \mathcal{M}', & \forall A'\in \mathcal{M}',
\end{align}$$

- there exists an anti-unitary modular conjugation operator $\displaystyle{J_{\Psi}}$, with the properties

$$\begin{align}
J_{\Psi}\ket{\Psi}  & =\ket{\Psi} , &  J_{\Psi} & =J_{\Psi}^{-1}=J_{\Psi}^{\dagger}, & J_{\Psi}\Delta _{\Psi}J_{\Psi}=\Delta _{\Psi}^{-1} \\
J_{\Psi}\mathcal{M}J_{\Psi} & =\mathcal{M}', & J_{\Psi}\mathcal{M}'J_{\Psi} & =\mathcal{M}
\end{align}$$

- the vector

$$\begin{align}
\Delta _{\Psi}^{-is}A\ket{\Psi}, A\in \mathcal{M}
\end{align}$$

    can be analytically continued to the strip $\displaystyle{0< \mathrm{Im}s< \frac{1}{2}}$ in the complex plane, and satisfies the Kubo-Martin-Schwinger (KMS) condition

$$\begin{align}
\Delta _{\Psi}^{-i(t+i/2)}A\ket{\Psi} & =\Delta _{\Psi}^{-it}J_{\Psi}A^{\dagger}\ket{\Psi} , t\in \mathbb{R}
\end{align}$$

- correlation functions of modular flowed operators

$$\begin{align}
f_{AB}(s) & =\braket{ \Psi|\sigma _{s}(A)B|\Psi } , &  A,B\in \mathcal{M}
\end{align}$$

    can be analytically continued into the strip $\displaystyle{0<\mathrm{Im}s< 1}$, and satisfy the KMS condition

$$\begin{align}
f_{AB}(s) & =f_{BA}(-s-i)
\end{align}$$

remark: the KMS condition is a generalization of the detailed balance condition for thermal equilibrium states, and it characterizes the thermal nature/emergent time of the modular flow.

### Classification of Type III Factors

Firstly, modular flows $\displaystyle{\sigma _{s}(\mathcal{M})}$ for all $\displaystyle{s \in \mathbb{R}}$ are inner automorphisms of $\displaystyle{\mathcal{M}}$ iff $\displaystyle{\mathcal{M}}$ is type I or II. We say $\displaystyle{\sigma _{s}}$ is an inner automorphism iff there exists a unitary operator $\displaystyle{U_{s}\in \mathcal{M}}$ such that

$$\begin{align}
\sigma _{s}(A) & \equiv \Delta _{\Psi}^{-is}A\Delta _{\Psi}^{is}=U^{\dagger}_{s}AU_{s},  & \forall A\in \mathcal{M}, s\in \mathbb{R}
\end{align}$$

for a different cyclic and separating vector $\displaystyle{\ket{\Omega}}$, we have the corresponding $\displaystyle{\Delta _{\Omega}}$ and $\displaystyle{\sigma _{s}^{\Omega}}$. It can be shown that $\displaystyle{\Delta _{\Psi},\Delta _{\Omega}}$ and $\displaystyle{\sigma _{s}^{\Psi},\sigma _{s}^{\Omega}}$ are related by inner automorphisms of $\displaystyle{\mathcal{M}}$. There exists a one-parameter unitaries $\displaystyle{u_{\Psi\Omega}(s)\in \mathcal{M}}$ that

$$\begin{align}
\sigma ^{\Psi}_{s}(A) & =u_{\Psi\Omega}(s)\sigma ^{\Omega}_{s}(A)u^{\dagger}_{\Psi\Omega}(s), \forall s \in \mathbb{R}, A\in \mathcal{M} \\
\implies \Delta _{\Psi}^{-is}A\Delta _{\Psi}^{is} & =u_{\Psi\Omega}(s)(\Delta _{\Omega}^{-is}A\Delta _{\Omega}^{is})u_{\Psi\Omega}^{\dagger}(s)
\end{align}$$

similarly, there exists a one-parameter family of unitaries $\displaystyle{u'_{\Psi\Omega}(s)\in \mathcal{M}'}$ relating modular flows of $\displaystyle{\mathcal{M}'}$ generated by $\displaystyle{\Delta _{\Omega}}$
