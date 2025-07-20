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
\kappa ^{ab} & =\frac{1}{I_{\mathrm{ad}}}\kappa(T^{a},T^{b}) \\
 & =\frac{1}{I_{\mathrm{ad}}}\mathrm{Tr}(\mathrm{ad}_{T^{a}}\circ\mathrm{ad}_{T^{b}}) \\
 & =\frac{1}{I_{\mathrm{ad}}}f^{ad}_{~~~~c}f^{bc}_{~~~~d}
\end{align}
$$

an important result is that for semisimple Lie algebra $\displaystyle{\mathfrak{g}}$, the Killing form is non-degenerate. now consider a Cartan-Weyl basis of a semisimple Lie algebra $\displaystyle{\mathfrak{g}}$, the restriction of the Killing form to the Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$ is non-degenerate as well. hence we are lead to associate to any root $\displaystyle{\alpha}$ an element $\displaystyle{H^{\alpha}}$ of $\displaystyle{\mathfrak{g}_{\circ}}$, which up to normalization is unique, such that

$$\tag{3.9}
\begin{align}
\alpha(h) & =c_{\alpha}\kappa(H^{a},h), &  \forall h\in \mathfrak{g}_{\circ}
\end{align}
$$

with the help of the element $\displaystyle{H^{\alpha}}$, one can then define a non-degenerate inner product on $\displaystyle{\mathfrak{g}^{\star}_{\circ}}$

$$\tag{3.10}
\begin{align}
(\alpha,\beta) & =c_{\alpha}c_{\beta}\kappa(H^{\alpha},H^{\beta}) \\
 & =c_{\alpha}\alpha(H^{\beta})
\end{align}
$$

for all roots $\displaystyle{\alpha,\beta}$. 

# some properties of roots and the root system

we list important properties of roots and the root system below:

1. the roots span all of $\displaystyle{\mathfrak{g}^{\star}_{\circ}}$: $\displaystyle{\mathrm{span}_{\mathbb{C}}(\Phi)=\mathfrak{g}^{\star}_{\circ}}$
2. the root space $\displaystyle{\mathfrak{g}_{\alpha}}$ are one-dimensional
3. the only multiplets of $\displaystyle{\alpha \in \Phi}$ which are roots are $\displaystyle{\pm \alpha}$
4. there is a basis $\displaystyle{\left\{H^{i}\right\},i=1,\dots,r}$ of the Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$ such that $\displaystyle{\beta(H^{i})}$ is an integer for all $\displaystyle{i}$ and for each root $\displaystyle{\beta \in \Phi}$.

# structure constants of the Cartan-Weyl basis

here we only present the result.

$$\tag{3.11}
\begin{align}
[E^{\alpha},E^{\beta}] & =e_{\alpha,\beta}E^{\alpha+\beta}, & \text{ for } \alpha+\beta \in \Phi \\
[E^{\alpha},E^{-\alpha}] & =\tilde{\alpha}_{i}H^{i}
\end{align}
$$

and thus

$$\tag{3.12}
\begin{align}
f^{ij}_{~~~~k}=f^{ij}_{~~~~\alpha} & =0 \\
f^{i\alpha}_{~~~~\beta} & =\alpha ^{i}\delta ^{\alpha}_{~\beta} \\
f^{\alpha \beta}_{~~~~i} & =\tilde{\alpha}_{i}\delta ^{\alpha,-\beta} \\
f^{\alpha \beta}_{~~~~\gamma} & =\begin{cases}
e_{\alpha,\beta}\delta ^{\alpha+\beta}_{~\gamma} & \text{ if } \alpha+\beta \in \Phi \\
0 & \text{ otherwise }
\end{cases}
\end{align}
$$

here $\displaystyle{e_{\alpha,\beta}}$ and $\displaystyle{\tilde{\alpha} _{i}}$ are not yet determined uniquely. inserting (3.12) into (3.8), we have

$$\tag{3.13}
\begin{align}
I_{\mathrm{ad}}\kappa ^{ab} & =\begin{cases}
\sum _{\alpha \in \Phi}\alpha ^{i}\alpha ^{j} & \text{ for }a=i,b=j \\
\left\{2(\alpha,\tilde{\alpha})+\sum _{\gamma}e_{\alpha,\gamma}e_{-\alpha,\alpha+\gamma}\right\}\delta _{\alpha,-\beta} & \text{ for }a=\alpha,b=\beta \\
0 & \text{ otherwise }
\end{cases}
\end{align}
$$

this result have many consequences. because of first line of (3.13), the inner product of two elements $\displaystyle{\lambda,\mu \in \mathfrak{g}^{\star}_{\circ}}$ can be computed as

$$\tag{3.14}
\begin{align}
(\lambda,\mu) & =\sum _{\alpha \in \Phi}(\alpha,\lambda)(\alpha,\mu)
\end{align}
$$

in particular

$$\tag{3.15}
\begin{align}
(\lambda,\lambda) & =\sum _{\alpha \in \Phi}(\alpha,\lambda)^{2}
\end{align}
$$

...

# positive roots

finite dimensional Lie algebras have only finitely many roots, and hence it is possible to find a hyperplane in root space which does not contain any root. this hyperplane divides the root space into two half-spaces, and one can choose one of the half-spaces to be the positive roots $\displaystyle{\Phi_{+}}$, with the other half-space being the negative roots $\displaystyle{\Phi_{-}=-\Phi_{+}}$. 

$$\tag{3.16}
\begin{align}
\Phi _{+} & =\left\{\alpha \in \Phi|\alpha>0\right\},  & \Phi _{-}=\Phi-\Phi _{+}
\end{align}
$$

we can write

$$\tag{3.17}
\begin{align}
\left\{E^{\alpha}|\alpha \in \Phi\right\} & =\left\{E^{\alpha}|\alpha>0\right\}\cup\left\{E^{-\alpha}|\alpha>0\right\}
\end{align}
$$

the step operator $\displaystyle{E^{\alpha}}$ associated to a positive root $\displaystyle{\alpha>0}$ is also called a raising operator, while the step operator $\displaystyle{E^{-\alpha}}$ associated to a negative root $\displaystyle{\alpha<0}$ is called a lowering operator. it follows that the number of elements of $\displaystyle{\Phi _{+}}$ is $\displaystyle{\frac{1}{2}(d-r)\in \mathbb{N}}$. given a Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$ of $\displaystyle{\mathfrak{g}}$, the subspaces of $\displaystyle{\mathfrak{g}}$ are spanned by the step operators for positive and negative roots, resp, are infact subalgebras

$$\tag{3.18}
\begin{align}
\mathfrak{g}_{\pm} & =\mathrm{span}_{\mathbb{C}}\left\{E^{\pm \alpha}|\alpha>0\right\}
\end{align}
$$

according to (3.3) and (3.17), the $\displaystyle{\mathfrak{g}}$ can be written in terms of vector space direct sum as

$$\tag{3.19}
\begin{align}
\mathfrak{g} & =\mathfrak{g}_{+}\oplus \mathfrak{g}_{\circ}\oplus \mathfrak{g}_{-}
\end{align}
$$

this is called the Gauss decomposition

# simple roots and the Cartan matrix

given the set of positive roots with respect to some chosen basis, a simple root of $\displaystyle{\mathfrak{g}}$ is by definition a positive root which cannot be obtained as a linear combination of other positive roots with positive coefficients. they possess the following properties:

1. the number of simple roots is $\displaystyle{r}$, the rank of $\displaystyle{\mathfrak{g}}$.
2. the simple roots are those positive roots which are closest to the hyperplane separating the positive and negative roots.