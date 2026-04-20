---
paper id: 2604.11884v2
title: Manifest duality and Lorentz covariance for linearised gravity as edge modes
authors: [Calvin Y. -R. Chen, Euihun Joung, Karapet Mkrtchyan]
publication date: 2026-04-13T18:00
abstract: "We present the first formulation of linearised gravity in four dimensions which is manifestly Lorentz covariant and democratic, i.e. treats the two frames related by electric-magnetic duality on equal footing. It is well-known that four-dimensional linearised gravity belongs to a class of singleton representations of the four-dimensional conformal algebra $\\mathfrak{so}(2,4)$. Our key insight is viewing this algebra as the isometry of $\\text{AdS}_5$ and realising the massless spin-2 field as an edge mode of a five-dimensional topological field taking values in a specific finite-dimensional representation of $\\mathfrak{so}(2,4)$. The desired four-dimensional action is then found by a covariant boundary reduction procedure."
comments: "6 pages + appendix; v2: formatting fixed"
pdf: "[[Attachments/Assets/Manifest duality and Lorentz covariance for linearised gravity as edge modes (2604.11884v2).pdf]]"
url: https://arxiv.org/abs/2604.11884v2
summary: "Constructs a manifestly Lorentz-covariant and duality-democratic formulation of four-dimensional linearised gravity from a five-dimensional topological edge-mode theory in AdS5."
tags: []
---

## What this paper does

This paper gives the first action formulation of four-dimensional linearised gravity that is simultaneously manifestly Lorentz covariant and democratic with respect to electric-magnetic duality. The key move is to reinterpret the free graviton as a singleton of the conformal algebra $\mathfrak{so}(2,4)$, realise it as a boundary edge mode of a five-dimensional topological theory on $\mathrm{AdS}_5$, and then obtain the four-dimensional boundary action by a covariant boundary reduction.

More concretely, the authors introduce a five-dimensional topological theory for a two-form valued in the antisymmetric rank-three representation of $\mathfrak{so}(2,4)$. After imposing specific asymptotic boundary conditions, the boundary equations reduce to the twisted self-duality relation for linearised gravity, so the electric and magnetic duality frames are treated on equal footing.

A central consistency check is that, after a non-covariant reduction and solving the boundary constraints, their covariant action reproduces the earlier Bunster-Henneaux democratic action. Since that action is known to be equivalent to linearised Einstein gravity, this shows that the new formulation has the correct propagating spin-2 degrees of freedom.

Conceptually, the paper is less about new dynamics for gravitons and more about a new covariant packaging of the same free theory. Its main payoff is to show that manifest duality and manifest Lorentz covariance are not incompatible for linearised gravity, and to suggest a route to analogous constructions for higher spins and higher-dimensional singleton-like fields.

## E-M duality in linearized gravity

we consider a four-dimensional Minkowski spacetime $\displaystyle{\mathbb{R}^{1,3}}$ with coordinates $\displaystyle{x^{\mu}}$ and dynamical field $\displaystyle{h_{\mu \nu}}$.  the linearised Riemann tensor is defined as

$$\begin{align}
R^{\mu \nu}_{~~~~\rho \sigma} & =-2\partial ^{[\mu}\partial _{[\rho}h_{\sigma]}^{~\nu]}
\end{align}$$

which satisfies the Bianchi identity

$$\begin{align}
R_{\mu[\nu \rho \sigma]}=0, \partial _{[\lambda}R_{\mu \nu]\rho \sigma} & =0
\end{align}$$

the eoms of linearised gravity can be written as

$$\begin{align}
R^{\mu \nu}_{~~~~\mu \rho} & =0
\end{align}$$

the magnetic dual of the linearised Riemann tensor is defined as

$$\begin{align}
\star R_{\mu \nu \rho \sigma} & \equiv \frac{1}{2}\varepsilon _{\mu \nu}^{~~~~\alpha \beta}R_{\alpha \beta \rho \sigma}
\end{align}$$

which is also a tensor with the same symmetries as $R_{\mu \nu \rho \sigma}$ and satisfies the same Bianchi identity and eoms. therefore, $\displaystyle{\mathrm{SO}(2)}$ rotations between $R_{\mu \nu \rho \sigma}$ and $\star R_{\mu \nu \rho \sigma}$

$$\begin{align}
\begin{pmatrix}
R \\
\star R
\end{pmatrix}\mapsto\begin{pmatrix}
\cos \theta & \sin \theta \\
-\sin \theta & \cos \theta
\end{pmatrix}\begin{pmatrix}
R \\
\star R
\end{pmatrix}
\end{align}$$

leave the dynamics invariant. actually, this duality transformation is actually a symmetry offshell, and associated with a non-vanishing conserved charge. we relabel

$$\begin{align}
R^{(1)}_{\mu \nu \rho \sigma} & \equiv R_{\mu \nu \rho \sigma}, & R^{(2)}_{\mu \nu \rho \sigma} & \equiv \star R_{\mu \nu \rho \sigma}
\end{align}$$

and the eoms can be written as

$$\begin{align}
\star R^{(a)} & =\varepsilon ^{a}_{~b}R^{(b)}
\end{align}$$

which is known as a twisted self-duality relation. this paper provides a manifestly Lorentz covariant action principle that yields this twisted self-duality relation as the eoms, and treats $R^{(1)}$ and $R^{(2)}$ on equal footing.

## setup

consider $\displaystyle{M=\mathrm{AdS}_{5}}$ with conformal boundary $\displaystyle{\partial M=\mathbb{R}^{1,3}}$. let $\displaystyle{x^{A}=(x^{\alpha},z),x^{\alpha}=(t,x^{i})}$ be coordinates on $\displaystyle{\mathrm{AdS}_{5}}$ and $\displaystyle{\mathbb{R}^{1,3}}$ respectively, such that the bulk metric takes the Fefferman-Graham form

$$\begin{align}
\mathrm{d}s^{2} & =\frac{\mathrm{d}z^{2}+\eta _{\alpha \beta}\mathrm{d}x^{\alpha}\mathrm{d}x^{\beta}}{z^{2}}
\end{align}$$

it is convenient to use the embedding space $\displaystyle{\mathbb{R}^{2,4}}$, on which we will pick coordinates $\displaystyle{x^{I}=(y,x^{A})}$. in that case, we will trade in the $\displaystyle{z}$- and $\displaystyle{y}$- coordinates for lightcone coordinates with $\displaystyle{x^{\pm}=\frac{z\pm y}{\sqrt{ 2 }}}$ such that $\displaystyle{x^{I}=(x^{-},x^{+},x^{\alpha})}$. we denote the $\displaystyle{\mathfrak{so}(2,4)}$-covariant derivative by $\displaystyle{\mathrm{D}}$, which acts on tensors via

$$\begin{align}
\mathrm{D}\cdot & =\mathrm{d}\cdot+[\Omega,\cdot]
\end{align}$$

where $\displaystyle{\Omega}$ is the $\displaystyle{\mathrm{AdS}_{5}}$ background connection taking value in the $\displaystyle{\mathfrak{so}(2,4)}$ algebra. since the connection is flat, the covariant derivative is nilpotent $\displaystyle{\mathrm{D}^{2}=0}$. 

consider a vector space $\displaystyle{V}$ of totally antisymmetric $\displaystyle{3}$-tensors of $\displaystyle{\mathfrak{so}(2,4)}$. we use underlined indices to denote elements of this vector space as

$$\begin{align}
A & =\frac{1}{3!}A_{\underline{IJK}}V^{\underline{IJK}}
\end{align}$$

where $\displaystyle{V^{\underline{IJK}}}$ are the generators of $\displaystyle{V}$. $\displaystyle{V}$ admits the invariant bilinear form

$$\begin{align}
\braket{ A,B }  & =\frac{1}{3!}A_{\underline{IJK}}B^{\underline{IJK}}
\end{align}$$

and the duality operator $\displaystyle{\underline{\star}}$ defined by

$$\begin{align}
\underline{\star}A & =\frac{1}{3!}\varepsilon _{\underline{IJK}}^{~~~~~~~~\underline{LMN}}A_{\underline{LMN}}V^{\underline{IJK}}
\end{align}$$

the duality operator satisfies $\displaystyle{\underline{\star}^{2}=-1}$, and the automorphism induced by $\displaystyle{\underline{\star}}$ on $\displaystyle{V}$ defines a complex structure, which allows us to decompose the vector space $\displaystyle{V}$ into two orthogonal vector spaces of anti-symmetric $\displaystyle{2}$-tensors. we can take these subspaces to be

$$\begin{align}
W^{(1)} & \equiv \mathrm{Span}_{\mathbb{R}}\left\{W^{(1)\underline{JK}}\equiv w_{\underline{I}}V^{\underline{IJK}}\right\} \\
W^{(2)} & \equiv \mathrm{Span}_{\mathbb{R}}\left\{W^{(2)\underline{JK}}\equiv w_{\underline{I}}(\star V)^{\underline{IJK}}\right\}
\end{align}$$

where $\displaystyle{w_{\underline{I}}}$ is an arbitrary $\displaystyle{\mathrm{SO(2,4)}}$ vector.

## theory

the theory of interest is a topological field theory on $\displaystyle{M}$, whose boundary dofs are expected to yield the desired formulation of linearised gravity. the bulk action is

$$\begin{align}
S & =\int _{M}\braket{ \underline{\star}B\wedge \mathrm{DB} } +\frac{1}{2}\int _{\partial M}\braket{ B\wedge \star B }  \\
 & =\frac{1}{3!}\left( \int _{M}\underline{\star}B_{\underline{IJK}}\wedge \mathrm{D}B^{\underline{IJK}}+\frac{1}{2}\int _{\partial M}B_{\underline{IJK}}\wedge \star B^{\underline{IJK}} \right)
\end{align}$$

where $\displaystyle{B\in \Omega ^2(M)\otimes V}$ is a two-form on the base $\displaystyle{\mathrm{AdS}_{5}}$ spacetime valued in the fibre $\displaystyle{V}$. the first term is a Chern-Simons-like topological term built from the flat $\displaystyle{\mathfrak{so}(2,4)}$ connection, while the second term is a boundary term chosen so that the boundary variational principle produces the twisted self-duality condition.

### variation of the action

to derive the equations of motion, vary $\displaystyle{B}$:

$$\begin{align}
\delta S_{\text{bulk}} & =\int _M \braket{ \underline{\star}\delta B\wedge DB+\underline{\star}B\wedge D\delta B }+\int _{\partial M}\braket{ \delta B\wedge \star B }  \\
 & =\int _{M}\braket{ 2\underline{\star}\delta B\wedge \mathrm{D}B }+\int _{\partial M}\braket{ \delta B\wedge (\star B+\underline{\star}B)}  
\end{align}$$

the bulk and boundary eoms are

$$\begin{align}
\mathrm{D}B & =0 \\
\star B+\underline{\star}B & =0
\end{align}$$

the first equation says that the bulk field is $\displaystyle{D}$-closed and therefore locally pure gauge because $\displaystyle{D^2=0}$. all local propagating information must therefore come from boundary data.

### Lorentz-covariant boundary reduction

define a foliation of $\displaystyle{\partial M}$ (extended into $\displaystyle{M}$) by picking a nowhere-null closed one-form $\displaystyle{v}$, so $\displaystyle{v^2\neq 0}$ and $\displaystyle{\mathrm{d}v=0}$. then $\displaystyle{B}$ can be decomposed into

$$\begin{align}
B & =C+v\wedge \tilde{R}
\end{align}$$

where $\displaystyle{C\in \Omega ^2(M)\otimes V}$ and $\displaystyle{\tilde{R}\in \Omega ^1(M)\otimes V}$. substituting the decomposition into the bulk action

$$\begin{align}
S & =\int _{M}\braket{ \underline{\star}B\wedge \mathrm{DB} } \\
 & =\int _{M}\left(\underline{\star}(C+v\wedge \tilde{R})\wedge \mathrm{D}(C+v\wedge \tilde{R})\right) \\
 & =\int _{M}\braket{ \underline{\star}C\wedge \mathrm{D}C-\underline{\star}C\wedge v\wedge\mathrm{D}\tilde{R}+v\wedge \star \tilde{R}\wedge \mathrm{D}C } \\
 & =\int _{M}\braket{ \underline{\star}C\wedge \mathrm{D}C-2v\wedge \tilde{R}\wedge \underline{\star}\mathrm{D}C }+\int _{M}\braket{ v\wedge \tilde{R}\wedge \underline{\star}\mathrm{D}C }
\end{align}$$

so in the reduced bulk action, $\displaystyle{\tilde{R}}$ appears linearly and acts as a Lagrange multiplier. varying with respect to $\displaystyle{\tilde{R}}$ imposes the constraint

$$\begin{align}
v\wedge \mathrm{D}C & =0 \\
\implies C & =\mathrm{D}A+v\wedge P
\end{align}$$

the second line follows from the fact that $\displaystyle{\mathrm{D}^{2}=0}$ and $\displaystyle{v\wedge v=0}$. this amounts to taking the ansatz

$$\begin{align}
B & =\mathrm{D}A+v\wedge R, &  R=\tilde{R}+P
\end{align}$$

and introducing the shorthand $\displaystyle{F=\mathrm{D}A}$, so $\displaystyle{\mathrm{D}F=0}$ automatically by nilpotency.

### pure boundary action

plugging $\displaystyle{B=F+v\wedge R}$ back into the action, all remaining bulk terms collapse to a total derivative. the resulting boundary action is

$$\begin{align}
S & =\frac{1}{2}\int _{\partial M}\braket{ (F+v\wedge R)\wedge \star(F+v\wedge R)+2v\wedge R\wedge \underline{\star}F } 
\end{align}$$

the paper therefore imposes the following asymptotic conditions by hand:

$$\begin{align}
v\wedge F_{-\alpha \beta} & =\mathcal{O}(z^{0}) \\
v\wedge F_{-+ \alpha} & =\mathcal{O}(z) \\
v\wedge F_{\alpha \beta \gamma} & =\mathcal{O}(z)
\end{align}$$

### gauge symmetries of the boundary action

the boundary action allows various gauge transformations:

- $\displaystyle{\mathrm{D}}$-exact shifts of $\displaystyle{A}$, $\displaystyle{\delta A=\mathrm{D}\alpha}$
- $\displaystyle{v}$-exact shifts of $\displaystyle{R}$, $\displaystyle{\delta R=v\wedge \rho}$
- combined shifts of $\displaystyle{A}$ and $\displaystyle{R}$ which leave $\displaystyle{B}$ invariant, $\displaystyle{\delta A=v\lambda,\delta R=\mathrm{D}\lambda}$.

with $\displaystyle{\alpha,\rho,\lambda}$ taking values in $\displaystyle{V}$.

### boundary equations of motion

define

$$\begin{align}
Q & \equiv \star(\mathrm{D}A+v\wedge R)+\underline{\star}(\mathrm{D}A+v\wedge R) .
\end{align}$$

varying the boundary action with respect to $\displaystyle{R}$ gives

$$\begin{align}
v\wedge Q & =0 .
\end{align}$$

since $\displaystyle{v}$ is nowhere null, the only way the wedge with $\displaystyle{v}$ can vanish for the allowed field configurations is that

$$\begin{align}
Q & =0 ,
\end{align}$$

namely

$$\begin{align}
\star(\mathrm{D}A+v\wedge R)+\underline{\star}(\mathrm{D}A+v\wedge R) & =0 .
\end{align}$$

this is the covariant twisted self-duality equation for the boundary field $\displaystyle{B|_{\partial M}=F+v\wedge R}$.

varying with respect to $\displaystyle{A}$ gives the $\displaystyle{D}$-closure of the same quantity,

$$\begin{align}
\mathrm{D}Q & =0 .
\end{align}$$

using $\displaystyle{Q=0}$ together with $\displaystyle{\mathrm{D}F=0}$ and $\displaystyle{\mathrm{D}v=0}$, the paper summarizes the consequence of the $\displaystyle{A}$-equation as

$$\begin{align}
v\wedge \mathrm{D}R & =0 .
\end{align}$$

locally this says that $\displaystyle{R}$ has no gauge-invariant curvature transverse to the foliation, so it is pure gauge up to the previously listed redundancies. one may therefore use the $\displaystyle{\delta R=v\wedge \rho}$ and $\displaystyle{\delta R=\mathrm{D}\lambda}$ gauge symmetries to remove $\displaystyle{R}$. after this gauge fixing, the twisted self-duality equation reduces to

$$\begin{align}
v\wedge(\star \mathrm{D}A+\underline{\star}\mathrm{D}A) & =0 \\
\implies \star \mathrm{D}A+\underline{\star}\mathrm{D}A & =0
\end{align}$$

which is exactly the manifestly Lorentz covariant version of the democratic twisted self-duality relation the authors wanted.

## non-covariant reduction

we pick  $\displaystyle{v=\mathrm{d}t}$ and $\displaystyle{w_{\underline{I}}=\delta ^{\underline{0}}_{\underline{I}}}$. this defines a foliation of the conformal boundary as

$$\begin{align}
\partial M & =\mathbb{R}^{1,3} & =R_{t}\times \Sigma _{t}
\end{align}$$

where $\displaystyle{\Sigma _{t}}$ are spatial slices normal to $\displaystyle{v}$. this choice breaks the isometry from $\displaystyle{\mathrm{SO}(2,4)}$ to $\displaystyle{\mathrm{SO}(1,4)}$. we fixt the gauge by taking

$$\begin{align}
\iota _{\partial _{t}}A & =0,  & \iota _{\partial _{t}}R & =0
\end{align}$$

the boundary action reduces to

$$\begin{align}
S & =\int _{\partial M}\mathrm{d}^{4}x\braket{  \frac{1}{2}\varepsilon ^{ijk}R_{i}(\underline{\star}F)_{jk}+\frac{1}{4}F_{\alpha \beta}F^{\alpha \beta}+R_{i}F^{-i}-\frac{1}{2}R_{i}R^{i} } \\
 & =\frac{1}{2}\int _{\partial M}\mathrm{d}^{4}x\braket{ F_{ij}F^{ij}+\epsilon ^{ijk}F^{0}_{~~i}(\underline{\star}F)_{jk} } 
\end{align}$$

in the second line, we have integrated out the non-dynamical field $\displaystyle{R_{i}}$. (Schwarz-Sen action?)

we use the decomposition $\displaystyle{V=W^{(1)}\oplus W^{(2)}}$ with respect to $\displaystyle{w}$ and perform the following asymptotic expansions in $\displaystyle{z}$

$$\begin{align}
A^{(a)}_{\underline{-i}} & =z^{+1}[Z_{\underline{i}}^{(a)}(x^{\alpha})+\mathcal{O}(z)] \\
A^{(a)}_{\underline{ij}} & =\frac{1}{\sqrt{ 2 }}\omega ^{(a)}_{\underline{ij}}(x^{\alpha})+\mathcal{O}(z) \\
A^{(a)}_{\underline{-+}} & =\frac{1}{\sqrt{ 2 }}\phi ^{(a)}(x^{\alpha})+\mathcal{O}(z) \\
A^{(a)}_{\underline{+i}} & =z^{-1}[S_{\underline{i}}^{(a)}(x^{\alpha}+\mathcal{O}(z))]
\end{align}$$

by some construction, we can show the boundary action reduces to the Bunster-Henneaux action for linearized gravity

$$\begin{align}
S & =-\int _{\partial M}\mathrm{d}^{4}x\left[\varepsilon ^{ijk}\epsilon _{ab}\partial _{0}Z^{(a)}_{mi}\partial _{j}S^{(b)m}{}_{k}+\frac{1}{2}\delta _{ab}S^{(a)\ell}{}_{i}\delta ^{ijk}_{\ell mn}\partial _{j}\omega ^{(b)\underline{mn}}{}_{k}\right]
\end{align}$$

