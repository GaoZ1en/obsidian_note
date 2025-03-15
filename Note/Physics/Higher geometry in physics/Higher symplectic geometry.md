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