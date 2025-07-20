# Cartan subalgebras

we will assume that $\displaystyle{F}$ is algebraically closed, which means that any algebraic equation with coefficiants in $\displaystyle{F}$ has a solution in $\displaystyle{F}$.

it can be shown that each semisimple Lie algebra $\displaystyle{\mathfrak{g}}$ over an algebraically closed field $\displaystyle{F}$ contains indeed ad-diagonalizable elements $\displaystyle{x}$, that satisfies $\displaystyle{[x,T^{a}]=\zeta T^{a}}$. one chooses a maximial set of linearly independent elements, denoted by $\displaystyle{H^{i}}$ satisfying

$$\tag{3.1}
\begin{align}
[H^{i},H^{j}] & =0, &  \forall i,j=1,2,\dots,r
\end{align}
$$

then $\displaystyle{\mathfrak{g}_{\circ}=\mathrm{span}_{F}\left\{H^{i}|i=1,2,\dots,r\right\}}$ is called a Cartan subalgebra of $\displaystyle{\mathfrak{g}}$. a Cartan subalgebra satisfies the following properties

1. a Cartan subalgebra of $\displaystyle{\mathfrak{g}}$ is a maximal abelian subalgebra consisting entirely of semisimple elemenets
2. a semisimple Lie algebra can possess many different Cartan subalgebras, related by automorphisms of $\displaystyle{\mathfrak{g}}$.
3. all Cartan subalgebras possess the same dimension $\displaystyle{r}$, which is called the rank of $\displaystyle{\mathfrak{g}}$.
	1. in particular, two Lie algebras can only be isomorphic if they have the same rank
4. $\displaystyle{r=\mathrm{rank}\mathfrak{g}}$ is the minimal dimension of all subalgebras $\displaystyle{\mathfrak{g}_{h}:=\left\{x \in \mathfrak{g}|[x,h]=0\right\}}$ of $\displaystyle{\mathfrak{g}}$, where $\displaystyle{h}$ is any semisimple element of $\displaystyle{\mathfrak{g}}$.
	1. if $\displaystyle{\dim\mathfrak{g}_{h}=r}$, then $\displaystyle{h}$ is called a regular element of $\displaystyle{\mathfrak{g}}$, and $\displaystyle{\mathfrak{g}_{h}}$ is a Cartan subalgebra of $\displaystyle{\mathfrak{g}}$ that contains $\displaystyle{h}$.

in physics terms, the rank $\displaystyle{r}$ of a semisimple Lie algebra $\displaystyle{\mathfrak{g}}$ is the maximal number of quantum numbers which can be used to label the states of a physical system that has $\displaystyle{\mathfrak{g}}$ as its symmetry algebra.

# Roots

since (3.1) holds for generators $\displaystyle{H^{i}}$ of a Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$, the adjoint map $\displaystyle{\mathrm{ad}_{h}}$ for all Cartan subalgebra elements $\displaystyle{h}$ are simultaneously diagonalizable. as a consequence, $\displaystyle{\mathfrak{g}}$ is spanned by such elements $\displaystyle{y}$ which are simultaneous eigenvectors of all the maps $\displaystyle{\mathrm{ad}_{h},h\in \mathfrak{g}_{\circ}}$, i.e., satisfy

$$\tag{3.2}
\begin{align}
[h,y] & =\mathrm{ad}_{h}y \\
 & =\alpha _{y}(h)y
\end{align}
$$

$\displaystyle{\alpha _{y}(h)}$ is a linear function $\displaystyle{\mathfrak{g}_{\mathrm{\circ}}\to \mathbb{C}}$. such a function $\displaystyle{\alpha}$ is called a root of the Lie algebra $\displaystyle{\mathfrak{g}}$ (since the eigenvalues of $\displaystyle{\mathrm{ad}_{h}}$ are the roots of the characterisitc equation for $\displaystyle{h}$). as $\displaystyle{\mathfrak{g}}$ is spanned by elements satisfying (3.2), it can be written as a direct sum of vector spaces $\displaystyle{\mathfrak{g}_{\alpha}}$ according to

$$\tag{3.3}
\begin{align}
\mathfrak{g} & =\mathfrak{g}_{\circ}\oplus\bigoplus_{\alpha}\mathfrak{g}_{\alpha} \\
\mathfrak{g}_{\alpha} & =\left\{x \in \mathfrak{g}|[h,x]=\alpha(h)x, \forall h\in \mathfrak{g}_{\circ}\right\}
\end{align}
$$

this splitting (3.3) is called the root space decomposition of $\displaystyle{\mathfrak{g}}$ relative to the Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$. this decomposition means in particular that there is a basis $\displaystyle{\mathcal{B}}$ of $\displaystyle{\mathfrak{g}}$ which apart from a basis $\displaystyle{\left\{H^{i}\right\}}$ of the Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$ consists entirely of elements $\displaystyle{E_{\alpha}}$ that satisfy

$$\tag{3.4}
\begin{align}
\left\{H^{i},E^{\alpha}\right\} & =\alpha ^{i}E^{\alpha}, & \forall i=1,2,\dots,r
\end{align}
$$

where for each $\displaystyle{\alpha}$ the eigenvalue $\displaystyle{\alpha ^{i}=\alpha(H^{i})}$ is non-vanishing for at least one value of $\displaystyle{i}$. the $\displaystyle{r}$-dimensional vector $\displaystyle{(\alpha ^{i})_{i=1,\dots,r}}$ of eigenvalues of $\displaystyle{E^{\alpha}}$ with respect to $\displaystyle{\mathrm{ad}_{H^{i}}}$ is called a root (vector) of $\displaystyle{\mathfrak{g}}$. the set of all roots of $\displaystyle{\mathfrak{g}}$ will be denoted by $\displaystyle{\Phi}$ and be called the root system of $\displaystyle{\mathfrak{g}}$. 

the basis $\displaystyle{\mathcal{B}}$ of $\displaystyle{\mathfrak{g}}$ can be summarized as

$$\tag{3.5}
\begin{align}
\mathcal{B} & =\left\{H^{i}|i=1,\dots,r\right\}\cup\left\{E^{\alpha}|\alpha \in \Phi\right\}
\end{align}
$$

a basis of this form, with $\displaystyle{H^{i}}$ and $\displaystyle{E^{\alpha}}$ obeying (3.1) and (3.4) is called a Cartan-Weyl basis of $\displaystyle{\mathfrak{g}}$. the $\displaystyle{\mathfrak{sl}(2)}$ algebra discussed before provides a simple example of a Cartan-Weyl basis, with $\displaystyle{H=L_{0},E^{+}=L_{+},E^{-}=L_{-}}$, and $\displaystyle{\alpha ^{1,2}=2}$.

# Killing form

for further analysis of root systems, it will be necessary to define an inner product on the space $\displaystyle{\mathfrak{g}^{\star}_{\circ}}$ of roots, which is called the Cartan-Killing form, defined as

$$\tag{3.6}
\begin{align}
\kappa(x,y) & =\mathrm{Tr}(\mathrm{ad}_{x}\circ\mathrm{ad}_{y})
\end{align}
$$

the Killing form is bilinear, symmetric, preserved by any automorphism of $\displaystyle{\mathfrak{g}}$ and

$$\tag{3.7}
\begin{align}
\kappa([x,y],z) & =\kappa(x,[y,z])
\end{align}
$$

given a basis $\displaystyle{T^{a}|a=1,\dots,d}$ of $\displaystyle{\mathfrak{g}}$, the Killing form is represented by the matrix

$$\tag{3.8}
\begin{align}
\kappa ^{ab} & =\frac{1}{I_{\mathrm{ad}}}\kappa(T^{a},T^{b})
\end{align}
$$

