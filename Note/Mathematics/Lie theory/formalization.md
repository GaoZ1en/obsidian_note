# groups, rings, fields, vector spaces and algebras

here we present the definition of the relevant algebraic structures

1. group. a set $\displaystyle{G}$ with a product $\displaystyle{\cdot:G\times G\to G}$ that satisfies
	1. associativity: $\displaystyle{\forall x,y,z\in G,(x\cdot y)\cdot z=x\cdot(y\cdot z)}$
	2. unity: $\displaystyle{\exists e\in G,\text{ s.t. }\forall g\in G, e\cdot g=g\cdot e=g}$
	3. inverses: $\displaystyle{\forall g\in G,\exists g^{-1}\in G\text{ s.t. }g\cdot g^{-1}=g^{-1}\cdot g=e}$
2. ring. a group $\displaystyle{R}$ with a product $\displaystyle{\cdot:R\times R\to R}$ and an addition $\displaystyle{+:R\times R\to R}$ that satisfy
	1. $\displaystyle{(R,+)}$ is an Abelian group
	2. associative for $\displaystyle{\cdot}$
	3. distributative: $\displaystyle{\forall x,y,z\in R,\text{ s.t. }x\cdot(y+z)=x\cdot y+x\cdot z}$
3. field. a ring $\displaystyle{F}$ with a product $\displaystyle{\cdot:F\times F\to F}$ and an addition $\displaystyle{+:R\times R\to R}$ that satisfy
	1. $\displaystyle{(F,\cdot,+)}$ is a ring
	2. $\displaystyle{\cdot}$ is commutative
	3. $\displaystyle{\forall x \in F-\left\{0\right\},\exists x^{-1}\in F\text{ s.t. }x\cdot x^{-1}=x^{-1}\cdot x=e}$
4. vector space. a vector space $\displaystyle{V}$ over a field $\displaystyle{F}$ with an addition $\displaystyle{+:V\times V\to V}$ and a multiplication by elements of $\displaystyle{F}$ that satisfy
	1. (eight properties)
5. algebra. an algebra $\displaystyle{A}$ is a vector space endowed with an binary operation $\displaystyle{\diamond:A\times A\to A}$ that satisfies
	1. $\displaystyle{(x+y)\diamond z=x\diamond y+y\diamond z, x\diamond(y\diamond z)=x\diamond y+x\diamond z}$
	2. $\displaystyle{(\xi x)\diamond(\eta y)=\xi \eta(x\diamond y)}$

# Lie algebras

a Lie algebra $\displaystyle{\mathfrak{g}}$ is an algebra with the bilinear operation $\displaystyle{[\cdot,\cdot]:\mathfrak{g\times g\to g}}$ that satisfies

1. reflection: $\displaystyle{\forall g\in \mathfrak{g},[g,g]=0}$
2. Jabobi identity: $\displaystyle{\forall x,y,z\in \mathfrak{g}, [x,[y,z]]+[y,[z,x]]+[z,[x,y]]=0}$

the dimension $\displaystyle{d=\dim\mathfrak{g}}$ is the number of elements in a basis $\displaystyle{T^{a}}$s (also called generators) of $\displaystyle{\mathfrak{g}}$. the Lie algebra is abstractly defined through the structure constants $\displaystyle{f^{ab}_{~~~~c}}$ which is defined as

$$\tag{2.1}
\begin{align}
[T^{a},T^{b}] & =f^{ab}_{~~~~c}T^{c}
\end{align}
$$

the Jacobi identity can be expressed in terms of the structure constants as

$$\tag{2.2}
\begin{align}
f^{ab}_{~~~~c}f^{cd}_{~~~~e}+f^{da}_{~~~~c}f^{cb}_{~~~~e}+f^{dc}_{~~~~a}f^{ab}_{~~~~e} & =0
\end{align}
$$

# homomorphisms, isomorphisms and derivations

a homomorphism from the Lie algebra $\displaystyle{\mathfrak{g}}$ to the Lie algebra $\displaystyle{\mathfrak{h}}$ is a map $\displaystyle{\varphi:\mathfrak{g\to h}}$ that preserves the Lie bracket, i.e.,

$$\tag{2.3}
\begin{align}
\varphi([x,y]) & =[\varphi(x),\varphi(y)], \forall x,y\in \mathfrak{g}
\end{align}
$$

