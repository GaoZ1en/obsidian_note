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

---

## how to formulate a classical field theory as an $L_\infty$-algebra

the cleanest way to think about an $L_\infty$ formulation is that one does not start from the abstract higher brackets and then try to guess the physics. instead, one starts from the ordinary data of a classical field theory:

- equations of motion,
- gauge transformations,
- closure of the gauge algebra,
- Noether identities and possible gauge-for-gauge relations.

the $L_\infty$ structure is a systematic way of packaging all of this data into a single graded object. roughly speaking, the linear pieces become $L_1$, the bilinear nonlinearities become $L_2$, the first homotopy corrections become $L_3$, and so on.

### the basic idea

suppose the theory is written in terms of fields $\phi$ and equations of motion

$$
E(\phi)=0.
$$

choose a background solution $\bar{\phi}$ and expand around it:

$$
\phi=\bar{\phi}+\varphi.
$$

then the equations of motion can be expanded in powers of the fluctuation $\varphi$:

$$
E(\bar{\phi}+\varphi)=L_1(\varphi)+\frac{1}{2!}L_2(\varphi,\varphi)+\frac{1}{3!}L_3(\varphi,\varphi,\varphi)+\cdots .
$$

here $L_1$ is the linearized equation-of-motion operator around the chosen background, while the higher multilinear maps $L_n$ encode the nonlinear interaction terms. if there is no gauge symmetry, this already gives the essential $L_\infty$ data on the field sector.

when gauge symmetry is present, the gauge transformation with parameter $\lambda$ is also expanded around the same background:

$$
\delta_\lambda \varphi
=
\ell_1(\lambda)+\ell_2(\varphi,\lambda)+\frac{1}{2!}\ell_3(\varphi,\varphi,\lambda)+\cdots .
$$

in practice one usually denotes all these multilinear maps by the same symbol $L_n$, with the understanding that their inputs can lie in different degrees of the graded vector space. then the $L_\infty$ identities express:

- gauge invariance of the equations of motion,
- closure of gauge transformations,
- Jacobi up to homotopy,
- Noether identities,
- higher gauge-for-gauge consistency if the theory is reducible.

so the slogan is: an $L_\infty$ algebra is the Taylor expansion of the full nonlinear gauge structure around a background.

### the graded complex for a general gauge theory

for a general gauge theory, the right object is not just the space of fields. one uses a graded complex that contains all levels of gauge data. a standard schematic form is

$$
\cdots \longrightarrow X_1 \xrightarrow{L_1} X_0 \xrightarrow{L_1} X_{-1} \xrightarrow{L_1} X_{-2} \xrightarrow{L_1} X_{-3} \longrightarrow \cdots
$$

with the interpretation

- $X_1$: gauge-for-gauge parameters when the symmetry is reducible,
- $X_0$: ordinary gauge parameters,
- $X_{-1}$: fields,
- $X_{-2}$: equations of motion,
- $X_{-3}$: Noether identities,
- and lower degrees if there are further reducibility relations.

the unary bracket $L_1$ is the differential of this complex. concretely:

- $L_1:X_1\to X_0$ gives gauge-for-gauge transformations,
- $L_1:X_0\to X_{-1}$ gives the linearized gauge transformation,
- $L_1:X_{-1}\to X_{-2}$ gives the linearized equations of motion,
- $L_1:X_{-2}\to X_{-3}$ gives the linearized Noether identities.

the higher brackets then describe all nonlinear couplings among these objects. for example:

- $L_2(\lambda_1,\lambda_2)$ encodes the gauge algebra bracket,
- $L_2(\varphi,\lambda)$ encodes field-dependent corrections to the gauge transformation,
- $L_2(\varphi_1,\varphi_2)$ contributes to the quadratic part of the equations of motion,
- $L_3$ and above encode the failure of strict Lie closure or strict Jacobi, and more generally all higher homotopies.

this is why the $L_\infty$ language is much more general than an ordinary Lie algebra description. a Lie algebra only captures a rigid bracket on gauge parameters, while a field theory usually has field-dependent transformations, equations of motion, and closure relations that may hold only on-shell.

### how one reads off the brackets in practice

in actual computations, the procedure is usually:

1. choose a background solution $\bar{\phi}$.
2. expand the equations of motion in powers of the fluctuation $\varphi$.
3. expand the gauge transformation in powers of $\varphi$ and the gauge parameter $\lambda$.
4. read off $L_1(\varphi)$ from the linearized equations of motion.
5. read off $L_n(\varphi,\dots,\varphi)$ from the $n$th-order nonlinear terms in the equations of motion.
6. read off $L_1(\lambda)$ and the higher $L_n(\varphi,\dots,\varphi,\lambda)$ from the gauge transformation.
7. read off $L_n$ with several gauge-parameter inputs from the closure of the gauge algebra and its higher consistency relations.

for example, if the commutator of two gauge transformations takes the form

$$
[\delta_{\lambda_1},\delta_{\lambda_2}]\varphi
=
\delta_{\lambda_{12}(\varphi)}\varphi
+\text{terms proportional to the equations of motion},
$$

then:

- the parameter $\lambda_{12}$ determines the bracket on gauge parameters and its field dependence,
- the terms proportional to the equations of motion tell you that the algebra closes only on-shell,
- this failure of strict off-shell closure is precisely what is absorbed by higher brackets in the $L_\infty$ description.

### the most general gauge-theory picture

for the most general gauge theory, one should distinguish several qualitatively different situations.

first, the gauge algebra may close off-shell or only on-shell.

- if it closes off-shell, then the lower brackets may already satisfy relatively simple relations.
- if it closes only on-shell, then the Jacobi and closure relations hold only up to terms proportional to the equations of motion, and these terms are encoded by higher homotopies such as $L_3$ and beyond.

second, the gauge transformations may be irreducible or reducible.

- in an irreducible theory, every nontrivial gauge parameter acts nontrivially on the fields.
- in a reducible theory, there are nonzero parameters that generate trivial gauge transformations, so one must add gauge-for-gauge generators in degree $+1$, and possibly still higher degrees.

third, the gauge algebra may be field-independent or field-dependent.

- in Yang-Mills-type examples, the gauge bracket is comparatively rigid.
- in gravity and more general theories, the effective bracket may depend on the dynamical fields or on the chosen background.

the most systematic framework for handling all of this is the BV-BRST formalism. in that language, one introduces the full graded space of fields, ghosts, antifields, and possibly higher ghosts, and defines a cohomological vector field $Q$ satisfying

$$
Q^2=0.
$$

expanding $Q$ around a background gives its Taylor coefficients, and those Taylor coefficients are exactly the multilinear brackets of the associated $L_\infty$ algebra. this is the cleanest general statement:

$$
\text{classical gauge theory} \quad \Longrightarrow \quad \text{BV cohomological vector field } Q \quad \Longrightarrow \quad L_\infty \text{ brackets}.
$$

so for a completely general gauge theory, the practical answer is:

- formulate the theory in BV-BRST form,
- identify the graded complex of ghosts, fields, equations, and antifields,
- expand the BRST/BV differential around a background,
- read off the Taylor coefficients as the higher brackets.

this explains why $L_\infty$ algebras appear so naturally in modern formulations of classical gauge theory: they are not extra structure added by hand, but a repackaging of the nonlinear BRST/BV data.

### example: scalar field theory

consider a scalar field with equation of motion

$$
(\Box -m^2)\phi-\frac{g}{2}\phi^2-\frac{h}{3!}\phi^3=0.
$$

expand around the background $\phi=0$. then one can read off

$$
L_1(\phi)=(\Box -m^2)\phi,
$$

$$
L_2(\phi_1,\phi_2)=-g\,\phi_1\phi_2,
$$

$$
L_3(\phi_1,\phi_2,\phi_3)=-h\,\phi_1\phi_2\phi_3,
$$

and all higher brackets vanish. there is no gauge-parameter sector, so the graded complex collapses to the field and equation-of-motion part. this is the simplest example showing that even an ordinary nonlinear equation can be viewed as $L_\infty$ data: the interaction terms are simply the higher brackets.

in this case the $L_\infty$ relations are also simple. there is no nontrivial gauge structure, so the main content is that $L_1$ is the differential and that the multilinear maps consistently reconstruct the nonlinear equation of motion. one can think of this as the minimal non-gauge version of the formalism.

### example: Yang-Mills theory

now consider Yang-Mills theory with gauge field $A$ valued in a Lie algebra $\mathfrak{g}$. the infinitesimal gauge transformation is

$$
\delta_\lambda A=d\lambda +[A,\lambda].
$$

already this formula shows two different types of brackets:

$$
L_1(\lambda)=d\lambda,
$$

which maps gauge parameters to fields, and

$$
L_2(A,\lambda)=[A,\lambda],
$$

which gives the first field-dependent correction to the gauge transformation.

the field strength is

$$
F=dA+\frac{1}{2}[A,A],
$$

so the nonlinear equation of motion $D^\mu F_{\mu\nu}=0$ can be expanded around $A=0$ into a linear part and interaction terms. schematically this gives

$$
L_1(A)=d^\dagger dA-\text{gauge-dependent linear terms},
$$

together with quadratic and cubic brackets such as

$$
L_2(A_1,A_2),\qquad L_3(A_1,A_2,A_3),
$$

coming from the nonabelian self-interactions.

the commutator of gauge transformations satisfies

$$
[\delta_{\lambda_1},\delta_{\lambda_2}]A=\delta_{[\lambda_1,\lambda_2]}A,
$$

so one also reads off the bracket on gauge parameters:

$$
L_2(\lambda_1,\lambda_2)=[\lambda_1,\lambda_2].
$$

because the Lie algebra bracket on $\mathfrak{g}$ already satisfies the Jacobi identity, Yang-Mills is comparatively rigid and many of the higher homotopies are simpler than in more general gauge theories. nevertheless, the $L_\infty$ formulation is still useful because it unifies:

- the action of gauge parameters on fields,
- the nonlinear equations of motion,
- the gauge algebra bracket,
- and the consistency relations among them.

in this sense, ordinary Yang-Mills theory is a good example of a gauge theory whose $L_\infty$ structure is nontrivial but still concrete enough to be read off directly from standard formulas.

### summary intuition

the main point to remember is that an $L_\infty$ formulation is not a mysterious alternative to ordinary field theory language. it is the organized multilinear expansion of the same familiar structures:

- linearized equations become $L_1$,
- nonlinear interaction vertices become $L_2,L_3,\ldots$,
- gauge transformations give brackets with one gauge-parameter input,
- gauge commutators give brackets with several gauge-parameter inputs,
- failure of strict closure or Jacobi is encoded by higher homotopies,
- reducible symmetries require extra positive-degree slots.

for ordinary theories this can often be read off directly from the equations and gauge transformations. for the most general gauge theories, the BV-BRST formalism gives the canonical and conceptually clean route to the full $L_\infty$ structure.

### example: Einstein-Hilbert theory

consider the Einstein-Hilbert action with cosmological constant

$$
S_{\mathrm{EH}}[g]=\frac{1}{16\pi G}\int d^dx\,\sqrt{-g}\,(R-2\Lambda).
$$

the dynamical field is the metric $g_{\mu\nu}$, and the equations of motion are

$$
G_{\mu\nu}(g)+\Lambda g_{\mu\nu}=0.
$$

to read off the $L_\infty$ structure, one chooses a background metric $\bar{g}_{\mu\nu}$ solving the Einstein equation and expands

$$
g_{\mu\nu}=\bar{g}_{\mu\nu}+h_{\mu\nu}.
$$

the field variable in the $L_\infty$ description is therefore the fluctuation $h_{\mu\nu}$, while the gauge parameter is a vector field $\xi^\mu$ generating infinitesimal diffeomorphisms.

the gauge symmetry is

$$
\delta_\xi g_{\mu\nu}=\mathcal{L}_\xi g_{\mu\nu},
$$

so after splitting $g=\bar{g}+h$ one finds

$$
\delta_\xi h_{\mu\nu}
=
\mathcal{L}_\xi \bar{g}_{\mu\nu}
+\mathcal{L}_\xi h_{\mu\nu}.
$$

this already determines the first brackets involving the gauge parameter:

$$
L_1(\xi)=\mathcal{L}_\xi \bar{g},
$$

$$
L_2(h,\xi)=\mathcal{L}_\xi h.
$$

the interpretation is straightforward. the unary bracket $L_1:X_0\to X_{-1}$ is the linearized gauge transformation of the field around the background, while $L_2(h,\xi)$ is the first nonlinear correction, which in gravity is again just the Lie derivative because diffeomorphisms act geometrically on the full metric.

now expand the equations of motion around $\bar{g}$. since $\bar{g}$ is on-shell, the zeroth-order term vanishes and one gets

$$
E(\bar{g}+h)
=
L_1(h)+\frac{1}{2!}L_2(h,h)+\frac{1}{3!}L_3(h,h,h)+\cdots .
$$

here $E(g)$ denotes the Einstein tensor plus cosmological term. the bracket $L_1(h)$ is the linearized Einstein operator acting on the metric fluctuation, namely the left-hand side of the linearized Einstein equation around the chosen background. the higher brackets $L_2(h,h)$, $L_3(h,h,h)$, and so on are obtained by multilinearizing the nonlinear dependence of the curvature on the metric.

schematically, one may think of this as follows:

$$
\delta G_{\mu\nu}[\bar{g};h] \sim L_1(h),
$$

$$
\delta^2 G_{\mu\nu}[\bar{g};h_1,h_2] \sim L_2(h_1,h_2),
$$

$$
\delta^3 G_{\mu\nu}[\bar{g};h_1,h_2,h_3] \sim L_3(h_1,h_2,h_3),
$$

and similarly for higher orders. the precise formulas become lengthy because the inverse metric, Christoffel symbols, and curvature tensors all depend nonlinearly on $h$, but conceptually nothing new happens: each higher variation gives one higher multilinear bracket.

the gauge algebra is determined by the commutator of infinitesimal diffeomorphisms:

$$
[\delta_{\xi_1},\delta_{\xi_2}]g
=
\delta_{[\xi_1,\xi_2]}g.
$$

therefore one reads off the bracket on gauge parameters as

$$
L_2(\xi_1,\xi_2)=[\xi_1,\xi_2],
$$

where the right-hand side is the ordinary Lie bracket of vector fields. this is the gravity analogue of the Lie-algebra bracket in Yang-Mills theory, except that now the gauge algebra is the algebra of diffeomorphisms of spacetime rather than an internal Lie algebra.

the main difference from Yang-Mills is not in the existence of the $L_\infty$ structure, but in the complexity of the higher brackets. in Yang-Mills the basic nonlinearity is controlled by the algebraic bracket and the covariant derivative. in gravity, the nonlinearity is geometric: curvature depends nonlinearly on the metric, index raising already uses the dynamical field, and the gauge symmetry acts by Lie derivatives on all tensorial structures. as a result, the explicit formulas for $L_2(h,h)$ and higher brackets are much more complicated.

still, the conceptual pattern is exactly the same:

- $L_1(\xi)$ gives the linearized diffeomorphism of the fluctuation,
- $L_2(h,\xi)$ gives the field-dependent gauge action,
- $L_2(\xi_1,\xi_2)$ gives the Lie bracket of vector fields,
- $L_1(h)$ gives the linearized Einstein equation,
- $L_2(h,h),L_3(h,h,h),\ldots$ encode the nonlinear gravitational self-interactions.

from the BRST/BV point of view this is especially natural. the ghost field $c^\mu$ is the degree-shifted version of the vector-field gauge parameter, and the BRST differential acts by diffeomorphism variations. expanding the BV cohomological vector field around a background therefore reproduces exactly the $L_\infty$ brackets described above. this is the correct general framework if one wants to include antifields, Noether identities, and possible higher homotopies systematically.

for Einstein-Hilbert theory, the moral is therefore very simple: general relativity can be formulated as an $L_\infty$ algebra because both its equations of motion and its gauge symmetry admit a consistent multilinear expansion around any background solution. the resulting brackets package the linearized Einstein operator, the nonlinear graviton interactions, and the diffeomorphism algebra into a single homotopy-algebraic structure.
