## $\displaystyle{n}$-plectic geometry

### linear theory

>[!Definition 1.1]
> an $\displaystyle{(n+1)}$-form $\displaystyle{\omega}$ on a vector space is $\displaystyle{n}$-plectic iff it is nondegenerate, i.e.
> $$\begin{align}\forall v\in V, \iota _{v}\omega=0\implies v=0\end{align}$$
> if $\displaystyle{\omega}$ is an $\displaystyle{n}$-plectic form on $\displaystyle{V}$, then we call the pair $\displaystyle{(V,\omega)}$ an $\displaystyle{n}$-plectic vector space.

this is a direct generalization of symplectic vector space. notice that $\displaystyle{n}$-plectic structures do not exists on vector spaces of dimension $\displaystyle{n+2}$. for $\displaystyle{n=1}$ case, we know that symplectic vector space cannot be odd dimensional.

>[!Definition 1.2]
> let $\displaystyle{(V,\omega)}$ be an $\displaystyle{n}$-plectic vector space and $\displaystyle{W\subseteq V}$ be a subspace. the $\displaystyle{k}$-orthogonal complement of $\displaystyle{W}$ is the subspace
> $$\begin{align}W^{\bot,k}=\left\{v\in V|\omega(w,\omega_{1},\dots,\omega _{k})=0, \forall w_{1},\dots,\omega _{k}\in W\right\}\end{align}$$

>[!Definition 1.3]
> a subspace $\displaystyle{W}$ of an $\displaystyle{n}$-plectic vector space $\displaystyle{(V,\omega)}$ is $\displaystyle{k}$-isotropic iff $\displaystyle{W\subseteq W^{\bot,k}}$, and $\displaystyle{k}$-Lagrangian iff $\displaystyle{W=W^{\bot,k}}$

direct generalization of isotropic and Lagrangian subspaces.

>[!Proposition 1.4]
> let $\displaystyle{(V,\omega)}$ be an $\displaystyle{n}$-plectic vector space. if $\displaystyle{W\subseteq V}$ is a $\displaystyle{k}$-isotropic subspace, then for all $\displaystyle{k'\geqslant k}$ there exists a $\displaystyle{k'}$-Lagrangian subspace containing $\displaystyle{W}$

>[!Proposition 1.5]
> if $\displaystyle{(V,\omega)}$ is an $\displaystyle{n}$-plectic vector space with $\displaystyle{\dim V=n+1}$, then a subspace $\displaystyle{W\subseteq V}$ is $\displaystyle{n}$-Lagrangian iff $\displaystyle{\dim W=n}$

### $\displaystyle{n}$-plectic manifold

>[!Defnition 1.6]
> an $\displaystyle{(n+1)}$-form $\displaystyle{\omega}$ on a smooth manifold $\displaystyle{M}$ is $\displaystyle{n}$-plectic, or more specifically an $\displaystyle{n}$-plectic structure, if it is both closed
> $$\begin{align}\mathrm{d}\omega & =0\end{align}$$
> and nondegenerate:
> $$\begin{align}\forall x \in M \forall v\in T_{x}M, \iota _{v}\omega=0\implies v=0\end{align}$$
> if $\displaystyle{\omega}$ is an $\displaystyle{n}$-plectic form on $\displaystyle{M}$ we call the pair $\displaystyle{(M,\omega)}$ an $\displaystyle{n}$-plectic manifold.

generalization of symplectic manifold. notice that there is no Darboux-like theorem for a general $\displaystyle{n}$-plectic manifold. the simplest example is any manifold with a volume-form. 

>[!Example]
> simple Lie group, related to Maurer-Cartan form

>[!Example]
> exterior powers of cotangent bundles

>[!Example]
>hyper-Kahler manifolds

### $\displaystyle{k}$-Lagrangian submanifolds and $\displaystyle{k}$-polarizations

I do not know why Lagrangian submanifold are invented.

## algebraic structures on $\displaystyle{n}$-plectic manifolds

let $\displaystyle{\mathfrak{X}(M)}$ be the $\displaystyle{C^{\infty}(M)}$-module of vector fields on a manifold $\displaystyle{M}$ and let

$$\tag{2.1}
\begin{align}
\mathfrak{X}^{\wedge \cdot}(M) & =\bigoplus^{\dim M}_{k=0}\wedge ^{k}(\mathfrak{X}(M))
\end{align}
$$

be the graded commutative algebra of multivector fields. there is a $\displaystyle{\mathbb{R}}$-bilinear map $\displaystyle{[\cdot,\cdot]:\mathfrak{X}^{\wedge\cdot}(M)\times \mathfrak{X}^{\wedge\cdot}(M)\to \mathfrak{X}^{\wedge\cdot}(M)}$ called the Schouten bracket, which gives $\displaystyle{\mathfrak{X}^{\wedge\cdot}(M)}$ the structure of a Gerstenhaber algebra (graded Lie algebra). the Schouten bracket

$$\tag{2.2}
\begin{align}
[u_{1}\wedge\dots \wedge u_{m},v_{1}\wedge\dots \wedge v_{n}] & =\sum ^{m}_{i=1}\sum ^{n}_{j=1}(-1)^{i+j}[u_{i},v_{j}]\wedge u_{1}\wedge\dots \wedge u_{m}\wedge v_{1}\wedge\dots \wedge v_{n}
\end{align}
$$

where $\displaystyle{[u_{i},u_{j}]}$ is the Lie brackets of vector fields. then given a form $\displaystyle{\alpha \in \Omega ^{\cdot}(M)}$, the interior product of a decompoable multivector field $\displaystyle{v_{1}\wedge\dots \wedge v_{n}}$ with $\displaystyle{\alpha}$ is

$$\tag{2.3}
\begin{align}
\iota(v_{1}\wedge\dots \wedge v_{n})\alpha & =\iota _{v_{n}}\dots \iota _{v_{1}}\alpha
\end{align}
$$

then the Lie derivative $\displaystyle{\mathcal{L}_{v}}$ of a form $\displaystyle{\alpha}$ along a multivector $\displaystyle{v\in \mathfrak{X}^{\wedge\cdot}(M)}$ is defined as a generalization of the Cartan magic formula

$$\tag{2.4}
\begin{align}
\mathcal{L}_{v}\alpha & =\mathrm{d}\iota _{v}\alpha-(-1)^{|v|}\iota _{v}\mathrm{d}\alpha
\end{align}
$$

and we have a generalization of $\displaystyle{\iota _{[u,v]}\alpha=\mathcal{L}_{u}\iota _{v}\alpha-\iota _{v}\mathcal{L}_{u}\alpha}$

$$\tag{2.5}
\begin{align}
\iota _{[u,v]}\alpha  & =(-1)^{(|u|-1)|v|}\mathcal{L}_{u}\alpha-\iota _{v}\mathcal{L}_{u}\alpha
\end{align}
$$

>[!Definition 2.1]
> let $\displaystyle{(M,\omega)}$ be an $\displaystyle{n}$-plectic manifold. an $\displaystyle{(n-1)}$-form $\displaystyle{\alpha}$ is Hamiltonian iff there exists a vector fields $\displaystyle{v_{\alpha}\in \mathfrak{X}(M)}$ such that
> $$\begin{align}\mathrm{d}\alpha & =-i_{v_{\alpha}}\omega\end{align}$$
> we say $\displaystyle{v_{\alpha}}$ is the Hamiltonian vector field corresponding to $\displaystyle{\alpha}$. the set of Hamiltonian $\displaystyle{(n-1)}$-forms and the set of Hamiltonian vector fields on an $\displaystyle{n}$-plectic manifold are both vector spaces and are denoted as $\displaystyle{\Omega ^{n-1}(\mathrm{Ham})(M)}$ and $\displaystyle{\mathfrak{X}_{\mathrm{Ham}}(M)}$, respectively.

and we have a generalization of the Liouville theory, i.e., the Hamiltonian vector field preserved the $\displaystyle{n}$-plectic structure.

>[!Lemma 2.2]
> if $\displaystyle{v_{\alpha}}$ is a Hamiltonian vector field, then $\displaystyle{\mathcal{L}_{v_{\alpha}}\omega=0}$

proof. $$
\begin{align}
\mathcal{L}_{v_{\alpha}}\omega=\iota _{v_{\alpha}}\mathrm{d}\omega+\mathrm{d}(i_{v_{\alpha}}\omega)=-\mathrm{d}^{2}\alpha=0
\end{align}
$$

>[!Definition 2.3 (Poisson) bracket]
>given $\displaystyle{\alpha,\beta \in\Omega ^{n-1}_{\mathrm{Ham}}(M)}$, the Poisson bracket $\displaystyle{\left\{\alpha,\beta\right\}}$ is the $\displaystyle{n-1}$-form given by
> $$\begin{align}\left\{\alpha,\beta\right\} & =\iota _{v_{\beta}}\iota _{v_{\alpha}}\omega\end{align}$$

>[!Proposition 2.4]
> let $\displaystyle{\alpha,\beta \in \Omega ^{n-1}_{\mathrm{Ham}}(M)}$ and $\displaystyle{v_{\alpha},v_{\beta}}$ be their respective Hamiltonian vector fields. the bracket $\displaystyle{\left\{\cdot,\cdot\right\}}$ has the following properties.
> 1. the brackets is skew-symmetric: $\displaystyle{\left\{\alpha,\beta\right\}=-\left\{\alpha,\beta\right\}}$
> 2. the bracket of Hamiltonian forms is Hamiltonian: $\displaystyle{\mathrm{d}\left\{\alpha,\beta\right\}=-\iota _{\left\{\alpha,\beta\right\}}\omega}$, in particular we have $\displaystyle{v_{\left\{\alpha,\beta\right\}}=[v_{\alpha},v_{\beta}]}$
 
proof. the first statement follows from the antisymmetry of $\displaystyle{\omega}$, and the second statement.

$$
\begin{align}
\mathrm{d}\left\{\alpha,\beta\right\} & =\mathrm{d}(\iota _{v_{\beta}}\iota _{v_{\alpha}}\omega) \\
 & =\mathcal{L}_{v_{\beta}}(\iota _{v_{\alpha}}\omega)-\iota _{v_{\beta}}\mathrm{d}\iota _{v_{\alpha}}\omega \\
 & =\iota _{[v_{\beta},v_{\alpha}]}\omega+\iota _{v_{\beta}}\mathcal{L}_{v_{\alpha}}\omega \\
 & =-\iota _{[v_{\alpha},v_{\beta}]}\omega
\end{align}
$$

>[!Proposition 2.5 Jacobi identity]
> the bracket $\displaystyle{\left\{\cdot,\cdot\right\}}$ satisfies the Jacobi identity up to an exact $\displaystyle{(n-1)}$-form:
> $$\begin{align}\left\{\alpha_{1},\left\{\alpha_{2},\alpha_{3}\right\}\right\}+\left\{\alpha_{2},\left\{\alpha_{3},\alpha_{1}\right\}\right\}+\left\{\alpha_{3},\left\{\alpha_{1},\alpha_{2}\right\}\right\}=-\mathrm{d}\iota _{v_{\alpha_{1}}\wedge v_{\alpha_{2}}\wedge v_{\alpha_{3}}}\omega\end{align}$$

>[!Lemma 2.6]
> if $\displaystyle{(M,\omega)}$ is an $\displaystyle{n}$-plectic manifold and $\displaystyle{v_{1},\dots,v_{m}\in \mathfrak{X}_{\mathrm{Ham}}(M)}$ with $\displaystyle{m\geqslant 2}$, then
> $$\begin{align}\mathrm{d}\iota _{v_{1}\wedge\dots \wedge v_{m}}\omega=(-1)^{m}\sum _{1\leqslant i<j\leqslant m}(-1)^{i+j}\iota _{[v_{i},v_{j}]\wedge v_{1}\wedge\dots v_{m}}\omega\end{align}$$

### $\displaystyle{L_{\infty}}$-algebras and Lie $\displaystyle{n}$-algebras

let $\displaystyle{V}$ be a graded vector space. let $\displaystyle{x_{1},\dots,x_{n}}$ be elements of $\displaystyle{V}$ and $\displaystyle{\sigma \in \mathcal{S}_{n}}$ a permutation. the Koszul sign $\displaystyle{\varepsilon(\sigma)}$ is defined as

$$
\begin{align}
x_{1}\wedge\dots \wedge x_{n}=\varepsilon(\sigma)x_{\sigma(1)}\wedge\dots \wedge x_{\sigma(n)}
\end{align}
$$

we say $\displaystyle{\sigma \in \mathcal{S}_{p+q}}$ is a $\displaystyle{(p,q)}$-unshuffle iff $\displaystyle{\sigma(i)<\sigma(i+1)}$ whenever $\displaystyle{i\neq p}$. the set of $\displaystyle{(p,q)}$-unshuffles is denoted by $\displaystyle{\mathrm{Sh}(p,q)}$.

if $\displaystyle{V}$ and $\displaystyle{W}$ are graded vector spaces, a linear map $\displaystyle{f:V^{\otimes n}\to W}$ is skew-symmetric iff

$$
\begin{align}
f(v_{\sigma(1)},\dots,v_{\sigma(n)})=(-1)^{\sigma}\varepsilon(\sigma)f(v_{1},\dots,v_{n})
\end{align}
$$

for all $\displaystyle{\sigma \in \mathcal{S}_{n}}$. proposition 2.5 implies that we should not expecy $\displaystyle{\Omega ^{n-1}_{\mathrm{Ham}}(M)}$ to be a Lie algebra unless $\displaystyle{n=1}$, however it suggests we conisder what are known as strongly homotopy Lie algebras, or $\displaystyle{L_{\infty}}$-algebras.

>[!Definition 2.7]
> an $\displaystyle{L_{\infty}}$-algebra is a graded vector space $\displaystyle{L}$ equipped with a collection
> $$\tag(2.6)\begin{align}\left\{l_{k}:L^{\otimes k}\to L|1\leqslant k<\infty\right\}\end{align}$$
> of skew-symmetric linear maps with $\displaystyle{|l_{k}|=k-2}$ such that the following identity holds for $\displaystyle{1\leqslant m<\infty}$:
> $$\begin{align}\sum _{i+j=m+1,\sigma \in \mathrm{Sh}(i,m-i)}(-1)^{\sigma}\varepsilon(\sigma)(-1)^{i(j-1)}l_{j}(l_{i}(x_{\sigma(1)},\dots,x_{\sigma(i)}),x_{\sigma(i+1),\dots,x_{\sigma(m)}})=0\end{align}$$

>[!Definition 2.8]
> an $\displaystyle{L_{\infty}}$-algebra $\displaystyle{(L,\left\{l_{k}\right\})}$ is a Lie $\displaystyle{n}$-algebra iff the underlying graded vector space $\displaystyle{L}$ is concentrated in degrees $\displaystyle{0,\dots,n-1}$.

we will feel the definition in the following subsections.

#### Lie 2-algebras

>[!Proposition 2.10]
> a Lie 2-algebra is a 2-term chain complex of vector spaces $\displaystyle{L=(L_{1}\overset{\mathrm{d}}{\to}L_{0})}$ equipped with:
> 1. skew-symmetric chain map: $\displaystyle{[\cdot,\cdot]:L\otimes L\to L}$ called the brackets;
> 2. an skew-symmetric chain homotopy $\displaystyle{J:L\otimes L\otimes L\to L}$ from the chain map
> $$\begin{align}L\otimes L\otimes L & \to L \\x\otimes y\otimes z & \mapsto [x,[y,z]]\end{align}$$
> to the chain map
> $$\begin{align}L\otimes L\otimes L & \to L \\x\otimes y\otimes z & \mapsto -[y,[z,x]]-[z,[x,y]]\end{align}$$
> called the Jacobiator, such that the following equation holds:
> $$\begin{align}[x,J(y,z,w)]+J(x,[y,z],w)+J(x,z,[y,w])+[J(x,y,z),w]+[z,J(x,y,w)] \\
=J(x,y,[z,w])+J([x,y],z,w)+[y,J(x,z,w)]+J(u,[x,z],w)+J(y,z,[x,w])\end{align}$$

>[!Definition 2.11]
> given Lie 2-algebras $\displaystyle{L=(L,[\cdot,\cdot],J)}$ and $\displaystyle{L'=(L',[\cdot,\cdot]',J')}$ a morphism from $\displaystyle{L}$ to $\displaystyle{L'}$ consists of
> 1. a chain map $\displaystyle{\phi:L\to L'}$
> 2. a chain homotopy $\displaystyle{\Phi:L\otimes L\to L'}$ from the chain map
> $$\begin{align}L\otimes L & \to L' \\x\otimes y & \mapsto \phi([x,y])\end{align}$$
> to the chain map
> $$\begin{align}L\otimes L & \to L' \\x\otimes y & \mapsto [\phi(x),\phi(y)]'\end{align}$$
> such that the following equation holds:
> $$\begin{align}\phi_{1}(J(x,y,z))-J'(\phi_{0}(x),\phi_{0}(y),\phi_{0}(z)) \\=\Phi(x,[y,z])+\Phi(y,[z,x])+\Phi(z,[x,y])+[\phi_{0}(x),\Phi(y,z)]'+[\phi_{0}(y),\Phi(z,x)]'+[\phi_{0}(z),\Phi(x,y)]'\end{align}$$
> we say a morphism is strict iff $\displaystyle{\Phi=0}$

>[!Definition 2.12]
> a Lie 2-algebra morphism $\displaystyle{(\phi,\Phi):L\to L'}$ is a quasi-isomorphism iff the chain map $\displaystyle{\phi}$ induces an isomorphism on the homology of the underlying chain complexes of $\displaystyle{L}$ and $\displaystyle{L'}$

### Lie $\displaystyle{n}$-algebras from $\displaystyle{n}$-plectic manifolds

for an $\displaystyle{n}$-plectic manifold, we should look for Lie $\displaystyle{n}$-algebra structures on the chain complex

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
C^{\infty}(M)\ar[r,"\mathrm{d}"] & \Omega^{1}(M)\ar[r,"\mathrm{d}"] & \dots\ar[r,"\mathrm{d}"] & \Omega^{n-2}(M)\ar[r,"\mathrm{d}"] & \Omega^{n-1}_{\mathrm{Ham}}(M)
\end{tikzcd}\end{document}
```

with the $\displaystyle{l_{1}}$ map equal to $\displaystyle{\mathrm{d}}$. we denote this complex as $\displaystyle{(L,\mathrm{d})}$. Note that here we are using the de Rham differential as a degree-1 operator. hence$\displaystyle{L_{0}=\Omega ^{n-1}_{\mathrm{Ham}}(M)}$, while $\displaystyle{L_{n-1}=C^{\infty}(M)}$.

the bracket induces a well-defined bracket $\displaystyle{[\cdot,\cdot]'}$ on the quotient

$$
\begin{align}
\mathfrak{g} & =\Omega ^{n-1}_{\mathrm{Ham}}(M)/\mathrm{d}\Omega ^{n-2}(M)
\end{align}
$$

then $\displaystyle{(\mathfrak{g},[\cdot,\cdot])}$ is a Lie algebra.

if $\displaystyle{M}$ is contractible, then the homology of $\displaystyle{(L,\mathrm{d})}$ is

$$
\begin{align}
H_{0}(L) & =\mathfrak{g} \\
H_{k}(L) & =0 & \text{for }0<k<n-1 &  \\
H_{n-1} & =\mathbb{R}
\end{align}
$$

therefore the augmented complex

