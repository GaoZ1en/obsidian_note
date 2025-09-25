linear space $\displaystyle{V}$ over a field $\displaystyle{F}$ with characteristic $\displaystyle{0}$ together with binary function $\displaystyle{F\times V\ni(\lambda,\vec{a})\mapsto \lambda \vec{a}\in V}$ and binary operation $\displaystyle{V\times V\ni(\vec{a},\vec{b})\mapsto\vec{a}+\vec{b}\in V}$ satisfies the following axioms

1. $\displaystyle{\forall \vec{a},\vec{b},\vec{c}\in V, \vec{a}+(\vec{b}+\vec{c})=(\vec{a}+\vec{b})+\vec{c}}$
2. $\displaystyle{\forall \vec{a},\vec{b}\in V,\vec{a}+\vec{b}=\vec{b}+\vec{a}}$
3. $\displaystyle{\exists\vec{0}\in V,\forall \vec{a}\in V, \vec{a}+\vec{0}=\vec{a}}$
4. $\displaystyle{\forall \vec{a}\in V, \exists-\vec{a}\in V,\vec{a}+(-\vec{a})=\vec{0}}$
5. $\displaystyle{\forall a,b\in F,\forall \vec{a}\in V,a(b\vec{a})=(ab)\vec{a}}$
6. $\displaystyle{\forall \vec{a}\in V,1\vec{a}=\vec{a}}$
7. $\displaystyle{\forall a\in F,\forall \vec{a},\vec{b}\in V,a(\vec{a}+\vec{b})=a\vec{a}+a\vec{b}}$
8. $\displaystyle{\forall a,b\in F,\forall \vec{a}\in V,(a+b)\vec{a}=a\vec{a}+b\vec{a}}$

we can choose a set of basis vectors $\displaystyle{\left\{\vec{e}_{i}\right\}}$, such that any vector $\displaystyle{\vec{a}\in V}$ can be expressed as a linear combination of basis vectors, i.e. $\displaystyle{\vec{a}=\sum _{i}a^{i}\vec{e}_{i}}$, where $\displaystyle{a^{i}\in F}$ are called components of vector $\displaystyle{\vec{a}}$ in basis $\displaystyle{\left\{\vec{e}_{i}\right\}}$. the dimension of $\displaystyle{V}$ is defined as the number of basis vectors in $\displaystyle{\left\{\vec{e}_{i}\right\}}$.

subspace, sum, direct sum. 

linear transformation is a map $\displaystyle{T:V\to W}$ between two linear spaces $\displaystyle{V}$ and $\displaystyle{W}$ over the same field $\displaystyle{F}$, such that for any $\displaystyle{\vec{a},\vec{b}\in V}$ and $\displaystyle{\lambda \in F}$, we have $\displaystyle{T(\vec{a}+\vec{b})=T(\vec{a})+T(\vec{b})}$ and $\displaystyle{T(\lambda \vec{a})=\lambda T(\vec{a})}$. if we choose basis $\displaystyle{\left\{\vec{e}_{i}\right\}}$ for $\displaystyle{V}$ and basis $\displaystyle{\left\{\vec{f}_{j}\right\}}$ for $\displaystyle{W}$, then the linear transformation can be represented by a matrix $\displaystyle{M_{ji}}$, such that

$$\begin{align}
T(\vec{e}_{i}) & =\sum _{j}M_{ji}\vec{f}_{j} \\
T(\vec{a}) & =\sum _{i}a^{i}T(\vec{e}_{i})=\sum _{i,j}M_{ji}a^{i}\vec{f}_{j}
\end{align}$$

