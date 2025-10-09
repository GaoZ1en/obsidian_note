basically first and second class constraints and the geometry of constraint surface.

# basic notions

starting from a action

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}L(q,\dot{q})\mathrm{d}t
\end{align}$$

eom

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{\partial L}{\partial \dot{q}^{n}}\right)-\frac{\partial L}{\partial q^{n}} & =0, & n=1,\dots N
\end{align}$$

eom can be rewritten as (notice that $\displaystyle{\frac{\mathrm{d}}{\mathrm{d}t}=\dot{q}^{n}\frac{\partial}{\partial q^{n}}}+\ddot{q}^{n}\frac{\partial}{\partial \dot{q}^{n}}$, and assume there is no higher derivative dependence in $\displaystyle{L}$)

$$\begin{align}
\frac{\partial L}{\partial q^{n}}-\dot{q}^{n'} \frac{\partial ^{2}L}{\partial q^{n'}\partial \dot{q}^{n}} & = \ddot{q}^{n'}\frac{\partial ^{2}L}{\partial \dot{q}^{n'}\partial \dot{q}^{n}}
\end{align}$$

and iff the Hesse matrix $\displaystyle{\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}}$ can be inverted ($\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)\neq0}$), the $\displaystyle{\ddot{q}^{n}}$ at given time are uniquely determined by the $\displaystyle{q^{n}}$ and $\displaystyle{\dot{q}^{n}}$. on the other hand, if $\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)=0}$, the solution of eom could contain arbitrary functions of time. in Hamiltonian formalism, we define the canonical momenta by

$$\begin{align}
p_{n} & =\frac{\partial L}{\partial \dot{q}^{n}}
\end{align}$$

and $\displaystyle{\det\left(\frac{\partial ^{2}L}{\partial \dot{q}^{n}\partial \dot{q}^{n'}}\right)=0}$ means that $\displaystyle{q}$ and $\displaystyle{p}$ are constrained by relations

$$\begin{align}
\phi _{m}(q,p) & =0,  & m=1,\dots,M
\end{align}$$

these relations are called primary constraints, and the surface defined by these relations in phase space is called the primary constraint surface $\displaystyle{\Sigma _{1}}$. there are many equivalent ways to represent a primary constraint surface, and to pass to the Hamiltonian formalism, it is necessary to impose some restrictions (regularity conditions) on the choice of the functions $\displaystyle{\phi _{m}}$.:

1. anyhow they are independent and nonsingular

theorem: if a phase space function $\displaystyle{G}$ vanishes on the primary constraint surface $\displaystyle{\Sigma _{1}}$, then there exist functions $\displaystyle{u^{m}(q,p)}$ such that $\displaystyle{G=\sum _{m=1}^{M}u^{m}\phi _{m}}$ in some neighborhood of $\displaystyle{\Sigma _{1}}$.

theorem: if $\displaystyle{\lambda _{n}\delta q^{n}+\mu ^{n}\delta p_{n}=0}$ for arbitrary varaitions $\displaystyle{\delta q^{n},\delta p_{n}}$ tangent to the primary constraint surface $\displaystyle{\Sigma _{1}}$, then

$$\begin{align}
\lambda _{n} & \approx u^{m}\frac{\partial \phi _{m}}{\partial q^{n}} \\
\mu ^{n} & \approx u^{m}\frac{\partial \phi _{m}}{\partial p_{n}}
\end{align}$$

for some universal functions $\displaystyle{u^{m}}$. here $\displaystyle{\approx}$ means equality on $\displaystyle{\Sigma _{1}}$, and below we will use this symbol frequently. we will assume that the regularity conditions are satisfied throughout this note except where otherwise stated.

the canonical Hamiltonian is defined by

$$\begin{align}
H & =\dot{q}^{n}p_{n}-L
\end{align}$$

the eom is given by

$$\begin{align}
\dot{q}^{n} & =\frac{\partial H}{\partial p_{n}} \\
\dot{p}_{n} & =-\frac{\partial H}{\partial q^{n}}
\end{align}$$

the Hamiltonian is not unique, since we have $\displaystyle{M}$ primary constraints. the most general Hamiltonian is given by

$$\begin{align}
H & \to H+\lambda^{m}\phi _{m}
\end{align}$$

then the eom becomes

$$\begin{align}
\dot{q}^{n} & =\frac{\partial H}{\partial p_{n}}+\lambda ^{m}\frac{\partial \phi _{m}}{\partial p_{n}} \\
\dot{p}_{n} & =-\frac{\partial H}{\partial q^{n}}-\lambda ^{m}\frac{\partial \phi _{m}}{\partial q^{n}} \\
\phi _{m}(q,p) & =0
\end{align}$$

here we think $\displaystyle{H}$ a functional of variables $\displaystyle{q^{n},p_{n},\lambda ^{m}}$, which can be derived from the follwoing variational principle:

$$\begin{align}
\delta \int ^{t_{f}}_{t_{i}}\left(\dot{q}^{n}p_{n}-H-\lambda ^{m}\phi _{m}\right) & =0
\end{align}$$

for arbitrary variations $\displaystyle{\delta q^{n},\delta p_{n},\delta u_{m}}$. the eom of operator $\displaystyle{\mathcal{O}}$ is given by

$$\begin{align}
\mathcal{\dot{O}} & =[\mathcal{O},H]+u^{m}[\mathcal{O},\phi _{m}]
\end{align}$$

and the poisson bracket is defined as usual

$$\begin{align}
[F,G] & =\frac{\partial F}{\partial q^{n}}\frac{\partial G}{\partial p_{n}}-\frac{\partial F}{\partial p_{n}}\frac{\partial G}{\partial q^{n}}
\end{align}$$

a basic consistency requirement is that the primary constraints must be preserved in time, i.e.

$$\begin{align}
\dot{\phi} _{m} & =[\phi _{m},H]+u^{m'}[\phi _{m},\phi _{m'}]\approx 0
\end{align}$$

this equation can either reduce to a relation independent of $\displaystyle{u}$'s or it may impose a restriction on the $\displaystyle{u}$'s. in the former case, if the new relation is independent of the primary constraints, it is called a secondary constraint. and we can repeat the procedure until no new constraints arise. let $\displaystyle{\phi _{k}=0,k=M+1,\dots,M+K}$, where $\displaystyle{K}$ is the total number of secondary constricts. it is useful to be able to denote all constraints in a uniform way as

$$\begin{align}
\phi _{j} & =0, & j=1,\dots,J
\end{align}$$

and we assume that regularity conditions are satisfied for all constraints, and the rank of the matrix $\displaystyle{[\phi _{j},\phi _{j'}]}$ is constant throughout the constraint surface $\displaystyle{\Sigma }$ defined by all constraints. these constraints provide several restrictions on the Lagrange multipliers

$$\begin{align}
[\phi _{j},H]+\lambda^{m}[\phi _{j},\phi _{m}]\approx 0
\end{align}$$

the general solution is of the form

$$\begin{align}
\Lambda^{m}=U^{M}+v^{a}V_{a}^{m}
\end{align}$$

where $\displaystyle{U^{m}}$ is a particular solution of the inhomogeneous equation, and $\displaystyle{V_{a}^{m}}$ is a basis of the general solution of the corresponding homogeneous equation, $\displaystyle{v^{a}}$ is totallu arbitrary. 

$$\begin{align}
\dot{\mathcal{O}} & \approx[\mathcal{O},H+u^{m}\phi _{m}] \\
 & \approx[\mathcal{O},H'+v^{a}\phi _{a}]
\end{align}$$

where $\displaystyle{H'=H+U^{m}\phi _{m}, \phi _{a}=V^{m}_{a}\phi _{m}}$, and $\displaystyle{H_{T}=H'+v^{a}\phi _{a}}$ is called the total Hamiltonian.

$$\begin{align}
\dot{\mathcal{O}} & \approx[\mathcal{O},H_{T}]
\end{align}$$

an operator $\displaystyle{\mathcal{O}(q,p)}$ is said to be first class if its poisson bracket with all constraints vanishes on the constraint surface, i.e.

$$\begin{align}
[\mathcal{O},\phi _{j}] & \approx 0, & j=1,\dots,J
\end{align}$$

otherwise it is second class. first-class property is perserved under Poisson brackets. in other words the Poisson brackets of two first-class operators is still first class. suppose

$$\begin{align}
[F,\phi _{j}] & =f_{j}^{~j'}\phi _{j'}, & [G,\phi _{j}] & =g_{j}^{~j'}\phi _{j'}
\end{align}$$

thus

$$\begin{align}
[[F,G],\phi _{j}] & =[F,[G,\phi _{j}]]-[G,[F,\phi _{j}]] \\
 & =[F,g_{j}^{~j'}\phi _{j'}]-[G,f_{j}^{~j'}\phi _{j'}] \\
 & =\left([F,g_{j}^{~j'}] -[G,f_{j}^{~j'}]\right)\phi _{j'} +g_{j}^{~j'}[F,\phi _{j'}]-f_{j}^{~j'}[G,\phi _{j'}] \\
 & \approx 0
\end{align}$$

we have $\displaystyle{H'}$ and $\displaystyle{\phi _{a}}$ are first class

$$\begin{align}
[H',\phi _{j}] & =[H,\phi _{j}]+U^{m}[\phi _{m},\phi _{j}]=0 \\
[\phi _{a},\phi _{j}] & =V^{m}_{a}[\phi _{m},\phi _{j}]=0
\end{align}$$

## first class constraints

the presence of arbitrary functions $\displaystyle{v^{a}}$ in the total Hamiltonian tells us that not all variables $\displaystyle{q^{n},p_{n}}$ are observable. in fact, although physical state is uniquely defined by initial conditions, the converse is not true. consider time evolution of the operator $\displaystyle{\mathcal{O}}$, and determined by two sets of $\displaystyle{v^{a}}$ and $\displaystyle{\tilde{v}^{a}}$, we have

$$\begin{align}
\delta \mathcal{O} & =\delta v^{a}[\mathcal{O},\phi _{a}] \\
\delta v^{a} & =(\tilde{v}^{a}-v^{a})\delta t
\end{align}$$

therefore the transformation does not alter the physical state, i.e., first-class primary constraints generate gauge transformations. we have

1. the Poisson bracket $\displaystyle{[\phi _{a},\phi _{a'}]}$ of any two first-class primary constraints generates a gauge transformation

$$\begin{align}
\delta F & =\varepsilon ^{a}\eta ^{a'}[F,[\phi _{a},\phi _{a'}]]+\mathcal{O}(\varepsilon ^{2})+\mathcal{O}(\eta ^{2})
\end{align}$$

2. the Poisson bracket $\displaystyle{[\phi _{a},H']}$ of any first-class primary constraint with the first-class Hamiltonian generates a gauge transformation

the proof is similar to above. the two results indicate that we may expect some secondary first-class constraints to generate gauge transformations as well. 

Dirac conjecture states that all first-class constraints generate gauge transformations. we adopt this conjecture in the following discussions, however, it is not always true (for example, Henneaux-Teitelboim-Zanelli model, $\displaystyle{L=\frac{1}{2}e^{y}\dot{x}^{2}}$)...

ignoring these counterexamples, we denote first-class constraints as $\displaystyle{\gamma}$ (for generator or gauge) and second-class constraints as $\displaystyle{\chi}$. the extended Hamiltonian

$$\begin{align}
H_{E} & =H'+u^{a}\gamma _{a}
\end{align}$$

where $\displaystyle{a}$ runs over all first-class constraints. for gauge-invariant dynamical variables, the evolution generated by $\displaystyle{H',H_{T}}$ and $\displaystyle{H_{E}}$ is the same. and for any other kind of variable we must use $\displaystyle{H_{E}}$ to account for all gauge freedom.

the "extended" action principle is

$$\begin{align}
S_{E} & =\int\left(p_{n}\dot{q}^{n}-H'-u^{j}\phi _{j}\right)
\end{align}$$

where $\displaystyle{u^{j}=u^{a}A_{a}^{j}}$, and $\displaystyle{A^{j}_{a}}$ is determined by $\displaystyle{\gamma _{a}=A^{j}_{a}\phi _{j}}$, and $\displaystyle{u^{a}}$ are arbitrary, then the eom is given by

$$\begin{align}
\dot{\mathcal{O}} & \approx [\mathcal{O},H_{E}] \\
\phi _{j} & \approx0
\end{align}$$

## second class constraints, Dirac bracket

the Poisson brackets between second-class constraints $\displaystyle{C_{jj'}=[\phi _{j},\phi _{j'}]}$ does not vanish on the constraint surface $\displaystyle{\Sigma}$. we assume that the constraints are irreducible, and the rank of $\displaystyle{C_{jj'}}$ is constant on $\displaystyle{\Sigma}$. we have

theorem: if $\displaystyle{\det C_{jj'}\approx 0}$, there exits a first-class constraint in the set $\displaystyle{\phi _{j}}$.

by repeated use of the theorem, we can separate the set $\displaystyle{\phi _{j}}$ into first-class constraints $\displaystyle{\gamma _{a}}$ and second-class constraints $\displaystyle{\chi _{\alpha}}$, such that

$$\begin{align}
[\gamma _{a},\phi _{j}] & \approx 0 \\
[\chi _{\alpha},\chi _{\beta}] & \approx C_{\alpha \beta}, & \det C_{\alpha \beta} & \neq 0
\end{align}$$

denote the inverse of $\displaystyle{C_{\alpha \beta}}$ by $\displaystyle{C^{\beta \gamma}}$, i.e., $\displaystyle{C^{\beta \gamma}C_{\gamma \alpha}=\delta ^{\beta}_{\alpha}}$. we define the Dirac bracket by

$$\begin{align}
[F,G]_{\text{D}} & =[F,G]-[F,\chi _{\alpha}]C^{\alpha \beta}[\chi _{\beta},G]
\end{align}$$

the Dirac bracket has all the properties of the Poisson bracket, and in addition

$$\begin{align}
[F,\chi _{\alpha}]_{\text{D}} & \approx0 \\
[F,G]_{D} & \approx [F,G], & \text{for }G\text{ first class} \\
[R,[F,G]_{\text{D}}]_{\text{D}} & \approx [R,[F,G]], & \text{for }F,G\text{ first class}
\end{align}$$

## gauge fixation

we assume that the constraints are all independent. there are two properties that a satisfactory set

$$\begin{align}
C_{b}(q,p)\approx 0
\end{align}$$

of gauge conditions must satisfy

1. the chosen gauge must be accessble
2. the conditions must fix the gauge completely

these two conditions imply that the number of independent gauge conditions must be equal to the number of independent first-class constraints. and the second condition requires that the matrix $\displaystyle{[C_{b},\gamma _{a}]}$ should be invertible. thus we have

$$\begin{align}
\det[C_{b},\gamma _{a}]\neq 0
\end{align}$$

this condition precisely expresses that the constraints $\displaystyle{C_{b},\gamma _{a}}$ form together a second-class set. we can therefore use the Dirac bracket with respect to the complete set of second-class constraints.

there is a problem called Gribov obstruction, which means that a gauge condition may intersect a gauge orbit more than once. this problem is not yet fully understood. and this is a reason for developing a theory of first-class constraints without gauge fixing.

couting degrees of freedom:

the number of physical degrees of freedom is given by

$$\begin{align}
\#\text{d.o.f} & =N-\text{number of first-class constraints}-\frac{1}{2}\text{number of second-class constraints} \\
 & =N-\frac{1}{2}\text{number of all constraints}-\frac{1}{2}\text{number of first-class constraints}
\end{align}$$

where $\displaystyle{N}$ is the number of canonical pairs $\displaystyle{(q^{n},p_{n})}$.

## gauge invariant functions

the vector space $\displaystyle{C^{\infty}(P)}$ is endowed with two algebraic structrues:
1. pointwise product, for which $\displaystyle{C^{\infty}(P)}$ is a associative commutative algebra
2. Dirac bracket, for which $\displaystyle{C^{\infty}(P)}$ is a Lie algebra

the space $\displaystyle{C^{\infty}(\Sigma)}$ can be algebraically characterized as follows:
1. functions that vanish on $\displaystyle{\Sigma}$ form an ideal $\displaystyle{\mathcal{N}}$ of the algebra $\displaystyle{C^{\infty}(P)}$ with respect to pointwise product. such elements in $\displaystyle{\mathcal{N}}$ are of the form $\displaystyle{\lambda ^{a}\gamma _{a}+\lambda ^{\alpha}\chi _{\alpha}}$
2. the quotient algebra $\displaystyle{C^{\infty}(P)/\mathcal{N}=C^{\infty}(\Sigma)}$. 

a classical observable $\displaystyle{F}$ is a function on the constraint surface that is gauge invariant. 

$$\begin{align}
[F,\gamma _{a}]_{\text{D}} & \approx 0
\end{align}$$

we notice that $\displaystyle{\mathcal{N}}$ is not an ideal of $\displaystyle{C^{\infty}(P)}$ with respect to the Dirac bracket, since $\displaystyle{F\in C^{\infty}(P),G=\lambda ^{a}\gamma _{a}+\mu ^{\alpha}\chi _{\alpha}\in \mathcal{N}}$, then

$$\begin{align}
[F,G]_{\text{D}} & =[F,\lambda ^{a}\gamma _{a}+\mu ^{\alpha}\chi _{\alpha}]_{\text{D}} \\
 & =\lambda ^{a}[F,\gamma _{a}]_{\text{D}}\neq 0
\end{align}$$

but the gauge-invariant functions, i.e., observables, define the maximum subalgebra $\displaystyle{\mathcal{O}}$ containing $\displaystyle{\mathcal{N}}$ for which $\displaystyle{\mathcal{N}}$ is an ideal, i.e., $\displaystyle{[\mathcal{O},\mathcal{N}]_{\text{D}}\subset \mathcal{N}}$. for and only for these observables there is a well-defined bracket because of the equality

$$\begin{align}
[F+\lambda ^{a}\gamma _{a}+\mu ^{\alpha}\chi _{\alpha},F'+\lambda'^{a}\gamma _{a}+\mu'^{\alpha}\chi _{\alpha}]_{\text{D}} & \approx[F,F']_{\text{D}}
\end{align}$$

# geometry of the constraint surface

## induced two-form on the constraint surface

let $\displaystyle{x^{\lambda}=x^{\lambda}(y^{i})}$ be the parametric equations of a surface $\displaystyle{\Sigma}$ embedded in phase space. then the functions $\displaystyle{\sigma _{ij}}$ given by

$$\begin{align}
\sigma _{ij} & =\sigma _{\lambda \mu} \frac{\partial x^{\lambda}}{\partial y^{i}} \frac{\partial x^{\mu}}{\partial y^{j}} \\
\sigma _{\lambda \mu} & =[x^{\lambda},x^{\mu}] \\
x^{\lambda} & =(q^{i},p_{i})
\end{align}$$

we will refer to this tensor field as the induced 2-form. we have

$$\begin{align}
\sigma _{[ij,k]} & =0
\end{align}$$

but it may be degenerate. let $\displaystyle{N}$ and $\displaystyle{N-M}$ be the dimensions of phase space and of the surface $\displaystyle{\Sigma}$, respectively. then $\displaystyle{\sigma _{ij}}$ is an antisymmetric $\displaystyle{(N-M)\times(N-M)}$ matrix, and its rank is even and cannot exceed $\displaystyle{N-M}$. we have

$$\begin{align}
N-2M\leqslant \mathrm{rank}\sigma _{ij}\leqslant N-M
\end{align}$$

in general (when all constraints are first class, $\displaystyle{\mathrm{rank}\sigma _{ij}=N-2M}$, and when all constraints are second class, $\displaystyle{\mathrm{rank}\sigma _{ij}=N-M}$).

## first class constraint surface.

we first consider the case where all the constraints are first class. $\displaystyle{\gamma _{a},a=1,\dots,M}$ define vectors $\displaystyle{X^{\lambda}_{a}}$ through

$$\begin{align}
X^{\lambda}_{a} & =\sigma ^{\lambda \mu}\partial _{\mu}\gamma _{a}
\end{align}$$

by construction

$$\begin{align}
X^{\lambda}_{a}\partial _{\lambda}F=\partial _{a}F=[F,\gamma _{a}]
\end{align}$$

the vectors $\displaystyle{X^{\lambda}_{a}}$ are called Hamiltonian vector fields associated with $\displaystyle{\gamma _{a}}$, which generate gauge transformations. we have the following theorem

theorem: the induced two-form $\displaystyle{\sigma _{ij}}$ is maximally degenerate

$$\begin{align}
\mathrm{rank}\sigma _{ij} & =N-2M
\end{align}$$

and the null directions are spanned by the vectors $\displaystyle{X^{\lambda}_{a}}$.

we only need to show that there are $\displaystyle{M}$ independent null directions. notice that $\displaystyle{Y^{\lambda}}$ is tangent to $\displaystyle{\gamma _{a}=0}$ iff $\displaystyle{Y^{\lambda}\partial _{\lambda}\gamma _{a}\approx 0}$, this implies

1. $\displaystyle{X^{\lambda}_{a}}$ are tangent to $\displaystyle{\gamma _{a}=0}$, since $\displaystyle{X^{\lambda}_{b}\partial _{\lambda}\gamma _{b}=[\gamma _{b},\gamma _{a}]\approx 0}$
2. $\displaystyle{\sigma _{\lambda \mu}X^{\lambda}_{a}Y^{\mu}\approx 0}$ whenever $\displaystyle{Y^{\mu}}$ is tangent to the constraint surface, since $\displaystyle{\sigma _{\lambda \mu}X^{\lambda}_{a}Y^{\mu}= -Y^{\mu}\partial _{\mu}\gamma _{a}}$$\displaystyle{\implies}$ $\displaystyle{X^{\lambda}_{a}}$ are null directions of $\displaystyle{\sigma _{ij}}$.

on the constraint surface, the vectors $\displaystyle{X^{\lambda}_{a}}$ generate $\displaystyle{M}$-dimensional manifold by Frobenius theorem. we only need to show that

$$\begin{align}
[X_{a},X_{b}]^{\lambda} & =\sigma ^{\lambda \mu}[\gamma _{a},\gamma _{b}]_{,\mu} \\
 & =\sigma ^{\lambda \mu}(C_{ab}^{~~~c}\gamma _{c,\mu}+\partial _{\mu}C_{ab}^{~~~c}\gamma _{c}) \\
 & \approx C_{ab}^{~~~c}X^{\lambda}_{c}
\end{align}$$

where $\displaystyle{[\gamma _{a},\gamma _{b}]=C_{ab}^{c}\gamma _{c}}$.

by construction, any vector tangent to the $\displaystyle{M}$-dimensional surfaces spanned by the vectors $\displaystyle{X^{\lambda}_{a}}$ on the constraint surface is annihilated by the induced two-form $\displaystyle{\sigma _{ij}}$. for this reason we call these surface null surfaces. $\displaystyle{X^{\lambda}_{a}}$ also generate the gauge transformations, we see that the gauge orbits are precisely the null surfaces of the induced two-form.

if one factors out by the null surfaces, one gets a smaller space with an invertible 2-form and a well-defined Poisson bracket. the smaller space obtained by identifying all points on the same orbit is known as the reduced phase space. functions defined over the reduced phase space are gauge invariant functions, i.e., observables.

however if one takes the quotient of the constraint surface by the gauge orbits, one loses desirable features such as locality and manifest covariance. therefore it is often preferable to work on the full constraint surface and to deal with gauge invariance in some other way (BRST theory).
 (actually Dirac bracket)
## second class constraints

define

$$\begin{align}
X^{\lambda}_{\alpha} & =\sigma ^{\lambda \mu}\partial _{\mu}\chi _{\alpha}
\end{align}$$

these vectors are linearly independent by the regularity and irreducibility assumptions. second-class constraints differ from first-class constraints in that the vectors $\displaystyle{X^{\lambda}_{\alpha}}$ are not tangent to the constraint surface, since $\displaystyle{X^{\lambda}_{\alpha}\partial _{\lambda}\chi _{\beta}=[\chi _{\beta},\chi _{\alpha}]\approx C_{\alpha \beta}}$, and $\displaystyle{C_{\alpha \beta}}$ is invertible. we have the following

theorem: no linear conbination of the vectors $\displaystyle{X^{\lambda}_{\alpha}}$ is tangent to the constraint surface.

thus

theorem: a surface $\displaystyle{\chi _{\alpha}=0}$ is second class iff $\displaystyle{\sigma _{ij}}$ is of maximal rank $\displaystyle{N-M}$

## Dirac bracket

the Poisson bracket of two phase space functions $\displaystyle{F,G}$ are defined by induced two-form $\displaystyle{\sigma _{ij}}$ as

$$\begin{align}
[F,G]^{*} & =\sigma ^{ij} \partial _{i}F\partial _{j}G
\end{align}$$

we have the theorem

theorem: the Dirac bracket $\displaystyle{[F,G]_{D}}$ is equal to $\displaystyle{[F,G]^{*}}$ on the constraint surface, i.e.,

$$\begin{align}
[F,G]^{*} & \approx [f,g]_{\text{D}} \\
F & \approx f, G\approx g
\end{align}$$

the proof is straightforward. we take phase space coordinates $\displaystyle{y^{i}}$ and $\displaystyle{\chi _{\alpha}}$, then

$$\begin{align}
\sigma ^{\lambda \mu} & =\begin{pmatrix}
[y^{i},y^{j}] & 0 \\
0 & C_{\alpha \beta}
\end{pmatrix} \\
\sigma _{\lambda \mu} & =\begin{pmatrix}
\sigma _{ij} & 0 \\
0 & C^{\alpha \beta}
\end{pmatrix}
\end{align}$$

$$\begin{align}
[F,\chi _{\alpha}] & =\sigma ^{\lambda \mu}\partial _{\lambda}F\partial _{\mu}\chi _{\alpha} \\
 & \approx C_{a\beta}\partial ^{\beta}F
\end{align}$$

therefore

$$\begin{align}
[F,G]^{*} & = \sigma ^{\lambda \mu}\partial _{\lambda}F\partial _{\mu}G \\
 & =\sigma ^{ij}\partial _{i}F\partial _{j}G+C_{\alpha \beta}\partial ^{\alpha}F\partial ^{\beta}G \\
 & \approx \sigma ^{ij}\partial _{i}f\partial _{j}g+[F,\chi _{\alpha}]C^{\alpha \beta}[\chi _{\beta},G] \\
\implies [F,G]^{*} & \approx [f,g]_{\text{D}}
\end{align}$$

