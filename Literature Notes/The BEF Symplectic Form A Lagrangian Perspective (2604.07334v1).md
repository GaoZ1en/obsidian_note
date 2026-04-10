---
paper id: 2604.07334v1
title: "The BEF Symplectic Form: A Lagrangian Perspective"
authors: [Mohd Ali, Georg Stettinger]
publication date: 2026-04-08T17:49
abstract: |
  In 2025, Bernardes, Erler and Firat proposed a novel, elegant expression for the symplectic form on phase space applicable to non-local theories. We show that this BEF symplectic structure can be derived directly from an $L_\infty$-Lagrangian by following the covariant phase space approach. Moreover, we establish a precise relation between the BEF symplectic structure and the Barnich--Brandt symplectic form for general finite-derivative theories. In particular, we prove that for theories with second-order equations of motion, the BEF symplectic structure coincides with the Barnich--Brandt construction, thereby explaining the emergence of the canonical corner term in general relativity within the BEF approach.
    We further argue that the BEF symplectic structure naturally encodes information about generic corner terms and some information about boundary conditions. In addition, we develop a general expression for the Hamiltonian in theories in $L_\infty$-form and present several explicit examples illustrating the construction.
comments: "35 pages"
pdf: "[[Attachments/Assets/The BEF Symplectic Form A Lagrangian Perspective (2604.07334v1).pdf]]"
url: https://arxiv.org/abs/2604.07334v1
tags: []
---

## $\displaystyle{L_{\infty}}$-algebra

an $\displaystyle{L_{\infty}}$-algebra is somewhat like a generalization of a Lie algebra, where the Jacobi identity is relaxed and replaced by a series of higher homotopy relations. it consists of a graded vector space $\displaystyle{V}$ together with a collection of multilinear maps $\displaystyle{l_{n}:V^{\otimes n}\to V}$ for $\displaystyle{n\geq 1}$, called the higher brackets, which satisfy certain coherence conditions

$$\begin{align}
\sum _{i+j=n+1}\sum _{\sigma \in \mathrm{Sh}(i,n-i)}\epsilon (\sigma)(-1)^{i(j-1)}l_{j}(l_{i}(x_{\sigma (1)},\ldots ,x_{\sigma (i)}),x_{\sigma (i+1)},\ldots ,x_{\sigma (n)}) & =0
\end{align}$$

where $\displaystyle{\mathrm{Sh}(i,n-i)}$ denotes the set of $(i,n-i)$-shuffles and $\displaystyle{\epsilon (\sigma)}$ is the Koszul sign associated with the permutation $\displaystyle{\sigma}$. the first few relations are:

- for $\displaystyle{n=1}$, we have $\displaystyle{l_{1}(l_{1}(x))=0}$, which means that $\displaystyle{l_{1}}$ is a differential.
- for $\displaystyle{n=2}$, we have $\displaystyle{l_{1}(l_{2}(x,y))=l_{2}(l_{1}(x),y)+(-1)^{|x|}l_{2}(x,l_{1}(y))}$, which means that $\displaystyle{l_{1}}$ acts as a derivation with respect to $\displaystyle{l_{2}}$.
- for $\displaystyle{n=3}$, we have a relation that can be seen as a homotopy version of the Jacobi identity for $\displaystyle{l_{2}}$, involving $\displaystyle{l_{3}}$ as a correction term.
$$\begin{align}
l_{2}(l_{2}(x,y),z)+(-1)^{|x|(|y|+|z|)}l_{2}(l_{2}(y,z),x)+(-1)^{|z|(|x|+|y|)}l_{2}(l_{2}(z,x),y) & =-l_{1}(l_{3}(x,y,z)) \\
 & \quad +l_{3}(l_{1}(x),y,z)+(-1)^{|x|}l_{3}(x,l_{1}(y),z)+(-1)^{|x|+|y|}l_{3}(x,y,l_{1}(z))
\end{align}$$
- ...

for an ordinary Lie algebra, we have $\displaystyle{l_{1}=0}$, $\displaystyle{l_{2}}$ is the Lie bracket, and all higher brackets $\displaystyle{l_{n}}$ for $\displaystyle{n\geq 3}$ vanish. in an $\displaystyle{L_{\infty}}$-algebra, the higher brackets can be nontrivial and encode additional algebraic structure, allowing for a more flexible framework that can accommodate various types of symmetries and interactions in physics and mathematics, which plays a crucial role in the formulation of gauge theories, string field theory, and BV/deformation quantization, among other areas.

[how to formulate classical field theories as $L_\infty$-algebras](https://arxiv.org/pdf/1701.08824)

## $\displaystyle{A_{\infty}}$-algebras?

an $\displaystyle{A_{\infty}}$-algebra is the associative analogue of an $\displaystyle{L_{\infty}}$-algebra. it consists of a graded vector space $\displaystyle{A}$ together with multilinear maps

$$
\displaystyle{m_{n}:A^{\otimes n}\to A,\qquad n\geq 1}
$$

of degree $\displaystyle{2-n}$ satisfying the Stasheff identities

$$\begin{align}
\sum _{r+s+t=n}(-1)^{r+st}m_{r+1+t}(\mathbf{1}^{\otimes r}\otimes m_{s}\otimes \mathbf{1}^{\otimes t})=0.
\end{align}$$

the first few identities say:

- $\displaystyle{m_{1}^{2}=0}$, so $\displaystyle{m_{1}}$ is a differential.
- $\displaystyle{m_{1}}$ acts as a derivation of $\displaystyle{m_{2}}$.
- $\displaystyle{m_{2}}$ is associative only up to a homotopy controlled by $\displaystyle{m_{3}}$.

if $\displaystyle{m_{n}=0}$ for all $\displaystyle{n\geq 3}$, then one simply has a differential graded associative algebra.

the reason $\displaystyle{A_{\infty}}$-algebras appear in Chern-Simons theory is that ordinary Chern-Simons theory can already be written in terms of a cyclic differential graded associative algebra, which is a special case of a cyclic $\displaystyle{A_{\infty}}$-algebra. for example, if one takes the graded associative algebra of Lie-algebra-valued differential forms, then

$$
\displaystyle{m_{1}=\mathrm{d},\qquad m_{2}(\alpha ,\beta )=\alpha \wedge \beta}
$$

together with the invariant pairing

$$
\displaystyle{\langle \alpha ,\beta \rangle =\int _{M}\mathrm{Tr}(\alpha \wedge \beta )}
$$

gives the Chern-Simons action

$$\begin{align}
S[A]=\frac{1}{2}\langle A,m_{1}A\rangle +\frac{1}{3}\langle A,m_{2}(A,A)\rangle .
\end{align}$$

thus ordinary Chern-Simons theory does not require genuinely nontrivial higher products $\displaystyle{m_{3},m_{4},\ldots}$; it already sits in the simplest $\displaystyle{A_{\infty}}$ corner. however, after integrating out fields or in open string field theory, nonzero higher products naturally appear, and the action takes the more general cyclic $\displaystyle{A_{\infty}}$ form

$$\begin{align}
S[a]=\sum _{n\geq 1}\frac{1}{(n+1)!}\langle a,m_{n}(a,\ldots ,a)\rangle .
\end{align}$$

in this sense, cyclic $\displaystyle{A_{\infty}}$-algebras can formulate many theories besides ordinary Chern-Simons theory, especially theories of "open-string type" or theories organized by an associative product structure. important examples include open string field theory, holomorphic Chern-Simons theory, and effective theories obtained by homological perturbation from a simpler ultraviolet description.

still, one should not overstate the scope of $\displaystyle{A_{\infty}}$-algebras. for a generic classical gauge field theory, the more universal structure is usually $\displaystyle{L_{\infty}}$, not $\displaystyle{A_{\infty}}$. the reason is that gauge symmetries, equations of motion, Noether identities, and field-dependent closure are naturally controlled by homotopy Lie brackets rather than by homotopy associative products. roughly speaking:

- $\displaystyle{A_{\infty}}$ is the homotopy version of associativity.
- $\displaystyle{L_{\infty}}$ is the homotopy version of the Lie bracket and Jacobi identity.
- ordinary gauge theories are usually most naturally encoded by $\displaystyle{L_{\infty}}$ data.
- open string field theory is naturally cyclic $\displaystyle{A_{\infty}}$, while closed string field theory is naturally cyclic $\displaystyle{L_{\infty}}$.

the relation to the BV-BRST formalism is very close. in the BV language, one introduces fields, ghosts, and antifields and equips the full field space with an odd symplectic structure and the BV action $\displaystyle{S_{\mathrm{BV}}}$ satisfying the classical master equation

$$
\displaystyle{\{S_{\mathrm{BV}},S_{\mathrm{BV}}\}_{\mathrm{BV}}=0.}
$$

this determines a cohomological vector field

$$
\displaystyle{Q=\{S_{\mathrm{BV}},-\}_{\mathrm{BV}},\qquad Q^{2}=0.}
$$

when one expands $\displaystyle{Q}$ around a background, its Taylor coefficients produce the multilinear operations that define the relevant homotopy algebra. for a general gauge theory this usually gives an $\displaystyle{L_{\infty}}$-algebra on the BV-BRST complex. when, in addition, the theory carries a compatible cyclic associative structure, the same data can often be packaged as a cyclic $\displaystyle{A_{\infty}}$-algebra. in particular, the linear BRST operator is the first structure map $\displaystyle{m_{1}}$ or $\displaystyle{l_{1}}$, and the higher maps encode the nonlinear gauge structure and interaction vertices.

one can also pass from an $\displaystyle{A_{\infty}}$-algebra to an $\displaystyle{L_{\infty}}$-algebra by graded antisymmetrization of the products. so in many physical examples, the $\displaystyle{A_{\infty}}$ and $\displaystyle{L_{\infty}}$ descriptions are not competitors but different algebraic presentations of closely related BV data. the short version is:

- BV-BRST is the most systematic and universal framework.
- $\displaystyle{L_{\infty}}$ is the most natural algebraic language for generic classical gauge theories.
- cyclic $\displaystyle{A_{\infty}}$ is especially natural when the theory is built from an associative product, as in Chern-Simons-type and open-string field theories.

