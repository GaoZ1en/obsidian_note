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
2. the simple roots are those positive roots which are closest to the hyperplane separating the positive and negative roots. however they are independent of the choice of hyperplane.
	1. the set of simple roots is denoted as $\displaystyle{\Phi _{\mathrm{s}}=\left\{\alpha ^{(i)}|i=1,\dots,r\right\}}$
3. the simple roots provide a basis for the root space $\displaystyle{\mathrm{span}_{\mathbb{R}}(\Phi _{\mathrm{s}})=\mathrm{span}_{\mathbb{R}}(\Phi)}$
4. any positive root is a linear combination of simple roots with non-negative integral coefficients.

generically the basis of simple roots is not orthonormal. the non-orthonormality is encoded in the Cartan matrix $\displaystyle{A}$ of $\displaystyle{\mathfrak{g}}$, defined as

$$\tag{3.20}
\begin{align}
A^{ij} & =2 \frac{(\alpha ^{(i)},\alpha ^{(j)})}{(\alpha ^{(j)},\alpha ^{(j)})}
\end{align}
$$

the Cartan matrix summarizes in fact the structure of a semisimple Lie algebra completely...

# root and weight lattices. the Dynkin basis

it is convenient to introduce for any root $\displaystyle{\alpha}$ another element

$$\tag{3.21}
\begin{align}
\alpha ^{\vee} & =\frac{2\alpha}{(\alpha,\alpha)}
\end{align}
$$

of $\displaystyle{\mathfrak{g}^{\star}_{\circ}}$. the vector $\displaystyle{\alpha ^{\vee}}$ is called the coroot of $\displaystyle{\alpha \in \Phi}$ and for a simple $\displaystyle{\alpha ^{(i)}}$ the vector $\displaystyle{{\alpha ^{(i)}}^{\vee}}$ is referred to as a simple coroot.

when one considers the root space as consisting of real linear combinations of the roots, then the dual space of the root space is called the weight space, and iits elements the weights of $\displaystyle{\mathfrak{g}}$. the weight space is spanned by the simple coroots $\displaystyle{{\alpha ^{(i)}}^{\vee}}$, with basis $\displaystyle{\mathcal{B}=\left\{{\alpha ^{(i)}}^{\vee}|i=1,\dots,r\right\}}$. the basis of the weight space which is dual to $\displaystyle{\mathcal{B}}$ then consists of those weights, denoted by $\displaystyle{\Lambda _{(i)}}$, which obey

$$\tag{3.22}
\begin{align}
\Lambda _{(i)}({\alpha ^{(j)}}^{\vee}) & =\delta ^{j}_{i}, & \forall i,j=1,\dots,r
\end{align}
$$

these $\displaystyle{r}$ weights $\displaystyle{\Lambda _{(i)}}$ are called the fundamental weights of the semisimple Lie algebra $\displaystyle{\mathfrak{g}}$, and the basis

$$\tag{3.23}
\begin{align}
\mathcal{B}^{\star} & =\left\{\Lambda _{(i)}|i=1,\dots,r\right\}
\end{align}
$$

is called the Dynkin basis. the components of a weight in the Dynkin basis are called Dynkin labels. the root system has the highly non-trivial property that all roots are not just arbitrary linear combinations of the simple roots, but even linear combinations with integral coefficients. this motivates us to consider a special subset of root space, namely the set of all linear combinations of simple roots with integral coefficients. these vectors form a lattice $\displaystyle{L(\mathfrak{g})=\mathrm{span}_{\mathbb{Z}}(\Phi _{s})}$, called root lattice. similarly we can define coroot lattice $\displaystyle{L^{\vee}(\mathfrak{g})=\mathrm{span}_{\mathbb{Z}}(\mathcal{B})}$, the integral span of simple coroots and the weight lattice $\displaystyle{L_{\mathrm{w}}(\mathfrak{g})=\mathrm{span}_{\mathbb{Z}}(\mathcal{B}^{\star})}$, the integral span of fundamental weights. the weight lattice $\displaystyle{L_{\mathrm{w}}(\mathfrak{g})}$ is the lattice dual to the coroot lattice, i.e.,

$$\tag{3.24}
\begin{align}
L_{\mathrm{w}}(\mathfrak{g}) & =(L^{\vee}(\mathfrak{g}))^{\star}=\left\{\lambda|\lambda(\alpha ^{\vee})\in \mathbb{Z},\forall \alpha \in \Phi\right\}
\end{align}
$$

consider a root lattice vector $\displaystyle{\beta=b_{i}\alpha ^{(i)}}$, the sum $\displaystyle{\sum ^{r}_{i=1}b_{i}}$ is called the height of $\displaystyle{\beta}$. since (3.11), the height defines a natural $\displaystyle{\mathbb{Z}}$-gradation of $\displaystyle{\mathfrak{g}}$, the so-called root space gradation, according to

$$\tag{3.25}
\begin{align}
\mathfrak{g}_{\left\{0\right\}} & =\mathfrak{g}_{\circ} \\
\mathfrak{g}_{(j)} & =\mathrm{span}_{\mathbb{C}}\left\{E^{\alpha}|\mathrm{height}(\alpha)=j\right\}
\end{align}
$$

for a simple $\displaystyle{\mathfrak{g}}$, there is a unique root, called the highest root of $\displaystyle{\mathfrak{g}}$ and denoted by $\displaystyle{\theta}$. $\displaystyle{\theta}$ also satisfies

$$\tag{3.26}
\begin{align}
(\theta,\theta) & \geqslant(\alpha,\alpha), & \forall \alpha \in \Phi
\end{align}
$$

furthermore, for any $\displaystyle{\beta \in \Phi _{+}-\left\{\theta\right\}}$, the root vector $\displaystyle{\theta-\beta}$ is still a linear combination of simple roots in which all coefficients are positive.

# the metric on weight space

for any element $\displaystyle{\beta}$ of the root space, the element $\displaystyle{\beta ^{\star}}$ in the weight space with which it is identified is characterized by the property that $\displaystyle{\beta ^{\star}(\gamma)=(\beta,\gamma), \forall \gamma \in \Phi}$. thus the roots themselves will be considered as weights (in fact they are the weights of the adjoint representation of $\displaystyle{\mathfrak{g}}$).

in the description of representations, the Dynkin components of a weight $\displaystyle{\lambda}$ play the role of eigenvalues with respect to the generators $\displaystyle{H^{i}}$ of the Cartan subalgebra.

all entries of the Cartan matrix are integers, and this implies that the Dynkin labels of any root are integral, too. in order to describe the inner products on the root and weight spaces explicitly, we express roots and weights through their components with respect to the basis of simple coroots and the Dynkin basis, respectively. thus we write

$$\tag{3.27}
\begin{align}
\lambda=\lambda _{i}{\alpha ^{(i)}}^{\vee}=\lambda ^{j}\Lambda _{(j)}
\end{align}
$$

with

$$\tag{3.28}
\begin{align}
\lambda _{i} & =(\lambda,\Lambda _{(i)}) \\
\lambda ^{i} & =(\lambda,{\alpha ^{(i)}}^{\vee})
\end{align}
$$

as a consequence of $\displaystyle{\Lambda _{(i)}({\alpha ^{(j)}}^{\vee})=\delta ^{j}_{i}}$, one has

$$\tag{3.29}
\begin{align}
({\alpha ^{(j)}}^{\vee})_{i} & =\delta ^{j}_{i}=(\Lambda _{(i)})^{j} \\
(\alpha ^{(j)})_{i} & =\frac{1}{2}(\alpha ^{(j)},\alpha ^{(j)})\delta ^{j}_{i}
\end{align}
$$

it is convenient to introduce $\displaystyle{G}$ to raise and lower indices

$$\tag{3.30}
\begin{align}
\lambda _{i} & =G_{ij}\lambda ^{j}, & \lambda ^{i}=G^{ij}\lambda _{j}
\end{align}
$$

the metric $\displaystyle{G}$ is defined as

$$\tag{3.31}
\begin{align}
G_{ij} & =(\Lambda _{(i)},\Lambda _{(j)}) \\
G^{ij} & =({\alpha ^{(i)}}^{\vee},{\alpha ^{(j)}}^{\vee})=\frac{2}{(\alpha ^{(i)},\alpha ^{(j)})}A^{ij}
\end{align}
$$

thus the inner product of two weights $\displaystyle{\lambda}$ and $\displaystyle{\mu}$ is given by

$$\tag{3.32}
\begin{align}
(\lambda,\mu) & =\lambda _{i}\mu ^{i} & =G_{ij}\lambda ^{i}\mu ^{j}=G^{ij}\lambda _{i}\mu _{j}
\end{align}
$$

the explicit form of the metric $\displaystyle{G}$ of all simple Lie algebras will be listed below. $\displaystyle{G^{ij}}$ coincides with the restriction of the Killing form to the Cartan subalgebra. in short, $\displaystyle{G_{ij}}$ is dual to the Killing form. then

$$\tag{3.33}
\begin{align}
(\alpha ^{(i)})^{j}=(\alpha ^{(i)})_{k}G^{jk}=A^{ij}
\end{align}
$$

in the case of simple roots $\displaystyle{\alpha=\alpha ^{(i)}}$, we have

$$\tag{3.34}
\begin{align}
[H^{i},E^{\alpha ^{(j)}}]=(\alpha ^{(j)})^{i}E^{\alpha ^{(j)}}=A^{ji}E^{\alpha ^{(j)}}
\end{align}
$$

# the Chevalley basis

so far the normalization of the step operators $\displaystyle{E^{\alpha}}$ has not been fully specified. now we fix $\displaystyle{c_{\beta}=\frac{1}{2}(\beta,\beta)}$, we then have

$$\tag{3.35}
\begin{align}
H^{\beta}=(\beta ^{\vee})_{i}H^{i}
\end{align}
$$

it follows that

$$\tag{3.36}
\begin{align}
\alpha(H^{\beta})=c_{\beta}^{-1}(\alpha,\beta) & =\frac{2(\alpha,\beta)}{(\beta,\beta)}
\end{align}
$$

which means the eigenvalues of $\displaystyle{H^{\beta}}$ in the adjoint representation are given by the inner product $\displaystyle{(\alpha,\beta ^{\vee})}$ with $\displaystyle{\alpha \in \Phi}$. the result above tell us that

$$\tag{3.37}
\begin{align}
[E^{\alpha},E^{-\alpha}] & =c_{\alpha}\kappa(E^{\alpha},E^{-\alpha})H^{\alpha} \\
 & =\kappa(E^{\alpha},E^{-\alpha}) \alpha _{i}H^{i}
\end{align}
$$

a convenient choice of normalization is to set $\displaystyle{\kappa(E^{\alpha},E^{-\alpha})=\frac{2}{(\alpha,\alpha)}}$, thus we have

$$\tag{3.38}
\begin{align}
[E^{\alpha},E^{-\alpha}] & =H^{\alpha} \\
[H^{\alpha},E^{\pm \alpha}] & =(\alpha ^{\vee})_{i}[H^{i},E^{\pm \alpha}]=\pm(\alpha,\alpha ^{\vee})E^{\pm \alpha} \\
 & =\pm 2E^{\pm \alpha}
\end{align}
$$

a Cartan-Weyl basis with this choice of normalization is called a Chevalley basis of $\displaystyle{\mathfrak{g}}$. in the case of simple roots $\displaystyle{\alpha ^{(i)}}$ the Chevalley generators $\displaystyle{H^{\alpha}}$

$$\tag{3.39}
\begin{align}
H^{\alpha ^{(i)}} & =({\alpha ^{(i)}}^{\vee})_{j}H^{j}=\delta ^{i}_{j}H^{j}=H^{i}
\end{align}
$$

it is then natural to introduce a special notation for the step operators

$$\tag{3.40}
\begin{align}
E^{i}_{\pm} & =E^{\pm \alpha ^{(i)}}
\end{align}
$$

these generators obey $\displaystyle{[E^{i}_{+},E^{j}_{-}]=0,\forall i\neq j}$ because $\displaystyle{\alpha ^{(i)}-\alpha ^{(j)}}$ is not a root. actually we have

$$\tag{3.41}
\begin{align}
[E^{i}_{+},E^{j}_{-}]=\delta ^{ij}H^{j}
\end{align}
$$

with the identification $\displaystyle{(3.39)}$, the metric $\displaystyle{G^{ij}}$ is nothing but the restriction of the Killing form to the Cartan subalgebra $\displaystyle{\mathfrak{g}_{\circ}}$. 

$$\tag{3.42}
\begin{align}
G^{ij} & =\kappa(H^{\alpha ^{(i)}},H^{\alpha ^{(j)}}) \\
 & =\kappa(H^{i},H^{j}) \\
 & =I_{\mathrm{ad}}\kappa ^{ij}
\end{align}
$$

moreover, we have

$$\tag{3.43}
\begin{align}
\kappa(E^{\alpha},E^{\beta})=\frac{2}{(\alpha,\alpha)}\delta _{\alpha,-\beta}
\end{align}
$$

in the Chevalley basis. as a summary

$$\tag{3.44}
\begin{align}
[H^{i},H^{j}] & =0 \\
[H^{i},E^{j}_{\pm}] & =\pm A^{ji}E^{j}_{\pm} \\
[E^{i}_{+},E^{j}_{-}] & =\delta _{ij}H^{j} \\
(\mathrm{ad}_{E^{i}_{\pm}})^{1-A^{ji}}E^{j}_{\pm} & =0
\end{align}
$$

in the Chevalley-Serre basis, and

$$\tag{3.43}
\begin{align}
[H^{\alpha},H^{\beta}] & =0 \\
[H^{\alpha},E^{\beta}] & =(\alpha ^{\vee},\beta)E^{\beta} \\
[E^{\alpha},E^{-\alpha}] & =H^{\alpha} \\
[E^{\alpha},E^{\beta}] & =e_{\alpha,\beta}E^{\alpha+\beta} & \text{ for }\alpha\neq-\beta
\end{align}
$$

# root strings

