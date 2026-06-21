# topology space and manifold

## problem 1

suppose $\displaystyle{X}$ is a metric space, $\displaystyle{d:X\times X\to \mathbb{R}}$ is the corresponding distance function. prove that

$$\begin{align}
d_{1}(x,y) & =\frac{d(x,y)}{1+d(x,y)} \\
d_{2}(x,y) & =\begin{cases}
d(x,y) & \text{if }d(x,y)\leqslant1 \\
1 & \text{if }d(x,y)>1
\end{cases}
\end{align}$$

are metrices on $\displaystyle{X}$ or not.

### relevant definition and theorem

a function $\displaystyle{d:X\times X\to \mathbb{R}}$ is called a metric if it satisfies the following conditions:
1. $\displaystyle{d(x,y)\geqslant0}$ for all $\displaystyle{x,y\in X}$, and $\displaystyle{d(x,y)=0}$ if and only if $\displaystyle{x=y}$.
1. $\displaystyle{d(x,y)=d(y,x)}$ for all $\displaystyle{x,y\in X}$ (symmetry).
1. $\displaystyle{d(x,z)\leqslant d(x,y)+d(y,z)}$ for all $\displaystyle{x,y,z\in X}$ (triangle inequality).

### solution

it is easy to see that $\displaystyle{d_{1}(x,y)}$ and $\displaystyle{d_{2}(x,y)}$ satisfy the first two conditions of the metric, and we only need to show that they satisfy the triangle inequality or not. for $\displaystyle{d_{1}(x,y)}$, we have for any $\displaystyle{a,b\geqslant 0}$,

$$\begin{align}
\frac{a+b}{1+a+b} = \frac{a}{1+a+b} + \frac{b}{1+a+b} \leqslant \frac{a}{1+a} + \frac{b}{1+b}
\end{align}$$

since $\displaystyle{d(x,z) \leqslant d(x,y)+d(y,z)}$ and the function $\displaystyle{f(t)=\frac{t}{1+t} = 1-\frac{1}{1+t}}$ is monotonically increasing for $\displaystyle{t\geqslant 0}$, we have

$$\begin{align}
d_{1}(x,z) = f(d(x,z)) \leqslant f(d(x,y)+d(y,z)) \leqslant f(d(x,y))+f(d(y,z)) = d_{1}(x,y)+d_{1}(y,z)
\end{align}$$

for $\displaystyle{d_{2}(x,y)}$, let

$$\begin{align}
g(x) & =\min(x,1)
\end{align}$$

since $\displaystyle{g(x+y)\leqslant g(x)+g(y)}$, we have $\displaystyle{d_{2}(x,z)\leqslant d_{2}(x,y)+d_{2}(y,z)}$, which means $\displaystyle{d_{2}(x,y)}$ also satisfies the triangle inequality. therefore, $\displaystyle{d_{1}(x,y)}$ and $\displaystyle{d_{2}(x,y)}$ are both metrics on $\displaystyle{X}$.

## problem 2

suppose $\displaystyle{X}$ is a point set, the complement of its subset $\displaystyle{A_{j}\subseteq X}$ is defined as $\displaystyle{A_{j}^{c}:= X-A_{j}}$, where $\displaystyle{j\in J}$. prove that

$$\begin{align}
(\bigcap_{j\in J}A_{j})^{c} & =\bigcup_{j\in J}A_{j}^{c} \\
(\bigcup_{j\in J}A_{j})^{c} & =\bigcap_{j\in J}A_{j}^{c}
\end{align}$$

### solution

let $\displaystyle{x\in(\bigcap_{j\in J}A_{j})^{c}}$, then $\displaystyle{x\notin\bigcap_{j\in J}A_{j}}$, which means there exists $\displaystyle{j_{0}\in J}$ such that $\displaystyle{x\notin A_{j_{0}}}$, which means $\displaystyle{x\in A_{j_{0}}^{c}}$, which means $\displaystyle{x\in\bigcup_{j\in J}A_{j}^{c}}$. therefore, $\displaystyle{(\bigcap_{j\in J}A_{j})^{c}\subseteq\bigcup_{j\in J}A_{j}^{c}}$.

let $\displaystyle{x\in\bigcup_{j\in J}A_{j}^{c}}$, then there exists $\displaystyle{j_{0}\in J}$ such that $\displaystyle{x\in A_{j_{0}}^{c}}$, which means $\displaystyle{x\notin A_{j_{0}}}$, which means $\displaystyle{x\notin\bigcap_{j\in J}A_{j}}$, which means $\displaystyle{x\in(\bigcap_{j\in J}A_{j})^{c}}$. therefore, $\displaystyle{\bigcup_{j\in J}A_{j}^{c}\subseteq(\bigcap_{j\in J}A_{j})^{c}}$. combining the above two results, we have $\displaystyle{(\bigcap_{j\in J}A_{j})^{c}=\bigcup_{j\in J}A_{j}^{c}}$.

let $\displaystyle{x\in(\bigcup_{j\in J}A_{j})^{c}}$, then $\displaystyle{x\notin\bigcup_{j\in J}A_{j}}$, which means for all $\displaystyle{j\in J}$, $\displaystyle{x\notin A_{j}}$, which means for all $\displaystyle{j\in J}$, $\displaystyle{x\in A_{j}^{c}}$, which means $\displaystyle{x\in\bigcap_{j\in J}A_{j}^{c}}$. therefore, $\displaystyle{(\bigcup_{j\in J}A_{j})^{c}\subseteq\bigcap_{j\in J}A_{j}^{c}}$.

let $\displaystyle{x\in\bigcap_{j\in J}A_{j}^{c}}$, then for all $\displaystyle{j\in J}$, $\displaystyle{x\in A_{j}^{c}}$, which means for all $\displaystyle{j\in J}$, $\displaystyle{x\notin A_{j}}$, which means $\displaystyle{x\notin\bigcup_{j\in J}A_{j}}$, which means $\displaystyle{x\in(\bigcup_{j\in J}A_{j})^{c}}$. therefore, $\displaystyle{\bigcap_{j\in J}A_{j}^{c}\subseteq(\bigcup_{j\in J}A_{j})^{c}}$. combining the above two results, we have $\displaystyle{(\bigcup_{j\in J}A_{j})^{c}=\bigcap_{j\in J}A_{j}^{c}}$.

## problem 3

prove that homeomorphism between topological spaces is an equivalence relation

### solution

let $\displaystyle{X}$ be a topological space, and $\displaystyle{\mathrm{id}:X\to X}$ be the identity map. then $\displaystyle{\mathrm{id}}$ is a homeomorphism between $\displaystyle{X}$ and $\displaystyle{X}$ since $\displaystyle{\mathrm{id}}$ is a bijection, and both $\displaystyle{\mathrm{id}}$ and $\displaystyle{\mathrm{id}^{-1}}$ are continuous. therefore, homeomorphism is reflexive.

let $\displaystyle{f:X\to Y}$ be a homeomorphism between topological spaces $\displaystyle{X}$ and $\displaystyle{Y}$. then $\displaystyle{f^{-1}:Y\to X}$ is a homeomorphism between $\displaystyle{Y}$ and $\displaystyle{X}$ since $\displaystyle{f^{-1}}$ is a bijection, and both $\displaystyle{f^{-1}}$ and $\displaystyle{(f^{-1})^{-1}=f}$ are continuous. therefore, homeomorphism is symmetric.

let $\displaystyle{f:X\to Y}$ be a homeomorphism between $\displaystyle{X}$ and $\displaystyle{Y}$, and $\displaystyle{g:Y\to Z}$ be a homeomorphism between $\displaystyle{Y}$ and $\displaystyle{Z}$. then $\displaystyle{g\circ f:X\to Z}$ is a homeomorphism between $\displaystyle{X}$ and $\displaystyle{Z}$ since $\displaystyle{g\circ f}$ is a bijection, and both $\displaystyle{g\circ f}$ and $\displaystyle{(g\circ f)^{-1}=f^{-1}\circ g^{-1}}$ are continuous. therefore, homeomorphism is transitive. combining the above three results, we have homeomorphism is an equivalence relation.

## problem 4

let $\displaystyle{\mathrm{id}_{X}:X\to X}$ be the identity map. prove that $\displaystyle{\mathrm{id}_{X}:X_{\tau _{1}}\to X_{\tau _{2}}}$ is continuous iff $\displaystyle{\tau _{2}\subseteq\tau _{1}}$.

### relevant definition

$\displaystyle{\tau _{1}\subseteq \tau _{2}}$ means that every open set in $\displaystyle{\tau _{1}}$ is also an open set in $\displaystyle{\tau _{2}}$.

a function $\displaystyle{f:X\to Y}$ between topological spaces $\displaystyle{X}$ and $\displaystyle{Y}$ is continuous if for every open set $\displaystyle{V\subseteq Y}$, the preimage $\displaystyle{f^{-1}(V)}$ is an open set in $\displaystyle{X}$.

### solution

suppose $\displaystyle{\mathrm{id}_{X}:X_{\tau _{1}}\to X_{\tau _{2}}}$ is continuous. then $\displaystyle{\forall V\in \tau _{2}}$, the preimage $\displaystyle{f^{-1}(V)\in \tau _{1}}$, which means $\displaystyle{\tau _{2}\subseteq \tau _{1}}$.

suppose $\displaystyle{\tau _{2}\subseteq \tau _{1}}$, then $\displaystyle{\forall V\in \tau _{2}}$, the preimage $\displaystyle{f^{-1}(V)=V\in \tau _{1}}$, which means $\displaystyle{\mathrm{id}_{X}:X_{\tau _{1}}\to X_{\tau _{2}}}$ is continuous. combining the above two results, we have $\displaystyle{\mathrm{id}_{X}:X_{\tau _{1}}\to X_{\tau _{2}}}$ is continuous iff $\displaystyle{\tau _{2}\subseteq \tau _{1}}$

## problem 5

suppose $\displaystyle{X,Y}$ are topological spaces. prove that $\displaystyle{f:X\to Y}$ is continuous iff for all closed set $\displaystyle{A\subseteq Y}$, the preimage $\displaystyle{f^{-1}(A)}$ is a closed set in $\displaystyle{X}$.

### solution

suppose $\displaystyle{f}$ is continuous, then for all closed set $\displaystyle{A\subseteq Y}$, the preimage $\displaystyle{f^{-1}(A)=(f^{-1}(A^{c}))^{c}}$ is a closed set in $\displaystyle{X}$.

suppose for all closed set $\displaystyle{A\subseteq Y}$, the preimage $\displaystyle{f^{-1}(A)}$ is a closed set in $\displaystyle{X}$. then for all open set $\displaystyle{V\subseteq Y}$, the preimage $\displaystyle{f^{-1}(V)=(f^{-1}(V^{c}))^{c}}$ is an open set in $\displaystyle{X}$, which means $\displaystyle{f:X\to Y}$ is continuous.

## problem 6

suppose point set $\displaystyle{X}$ is a infinite set.

$$\begin{align}
\tau _{1} & =\left\{U\subset X|U^{c}\text{ is a finite set or }X\text{ itself}\right\} \\
\tau _{2} & =\left\{U\subset X|U^{c}\text{ is infinite set or }\emptyset\right\} \\
\tau _{3} & =\left\{U\subset X|U^{c}\text{is countable or }X\text{ itself}\right\}
\end{align}$$

which of $\displaystyle{\tau _{1},\tau _{2},\tau _{3}}$ are topologies on $\displaystyle{X}$?

### solution

$\displaystyle{\tau _{1}}$ is a topology on $\displaystyle{X}$ since $\displaystyle{\emptyset,X\in \tau _{1}}$, and for any $\displaystyle{U,V\in \tau _{1}}$, we have $\displaystyle{(U\cap V)^{c}=U^{c}\cup V^{c}}$ is a finite set, which means $\displaystyle{U\cap V\in \tau _{1}}$, and for any $\displaystyle{\{U_{j}\}_{j\in J}\subseteq \tau _{1}}$, we have $\displaystyle{(\bigcup_{j\in J}U_{j})^{c}=\bigcap_{j\in J}U_{j}^{c}}$ is a finite set, which means $\displaystyle{\bigcup_{j\in J}U_{j}\in \tau _{1}}$.
$\displaystyle{\tau _{2}}$ is not a topology on $\displaystyle{X}$ since $\displaystyle{\emptyset\in \tau _{2}}$, but $\displaystyle{X\notin \tau _{2}}$.
$\displaystyle{\tau _{3}}$ is a topology on $\displaystyle{X}$ since $\displaystyle{\emptyset,X\in \tau _{3}}$, and for any $\displaystyle{U,V\in \tau _{3}}$, we have $\displaystyle{(U\cap V)^{c}=U^{c}\cup V^{c}}$ is a countable set, which means $\displaystyle{U\cap V\in \tau _{3}}$, and for any $\displaystyle{\{U_{j}\}_{j\in J}\subseteq \tau _{3}}$, we have $\displaystyle{(\bigcup_{j\in J}U_{j})^{c}=\bigcap_{j\in J}U_{j}^{c}}$ is a countable set, which means $\displaystyle{\bigcup_{j\in J}U_{j}\in \tau _{3}}$.
because it is not closed under arbitrary unions. Although $\displaystyle{\emptyset,X\in \tau _{2}}$ (since $\displaystyle{X^{c}=\emptyset}$ is finite), consider $\displaystyle{X=\mathbb{Z}}$. let $\displaystyle{U_{1}}$ be the set of all integers except non-negative even numbers, and $\displaystyle{U_{2}}$ be the set of all integers except positive odd numbers. both have infinite complements, so $\displaystyle{U_{1},U_{2}\in \tau _{2}}$. however, $\displaystyle{(U_{1}\cup U_{2})^{c}=\{0\}}$, which is finite and non-empty, so $\displaystyle{U_{1}\cup U_{2}

## problem 7

for Euclidean space $\displaystyle{\mathbb{R}^{n}}$ with norm $\displaystyle{\left\|x\right\|=\sqrt{ (x^{1})^{2}+\dots+(x^{n})^{2} }, \forall x=(x^{1},\dots,x^{n})\in \mathbb{R}}$. prove the Cauchy inequality

$$\begin{align}
\left(\sum ^{n}_{j=1} x^{j}y^{j}\right)^{2}\leqslant \left(\sum ^{n}_{j=1}(x^{j})^{2}\right)\left( \sum ^{n}_{j=1}(y^{j})^{2} \right)
\end{align}$$

and the Minkowski inequality

$$\begin{align}
\left\|x+y\right\|\leqslant \left\|x\right\|+\left\|y\right\|
\end{align}$$

### solution

for the Cauchy inequality, consider the quadratic function of $\displaystyle{t\in \mathbb{R}}$:

$$\begin{align}
f(t) = \sum ^{n}_{j=1} (tx^{j}-y^{j})^{2} = t^{2}\left(\sum ^{n}_{j=1}(x^{j})^{2}\right) - 2t\left(\sum ^{n}_{j=1}x^{j}y^{j}\right) + \sum ^{n}_{j=1}(y^{j})^{2} \geqslant 0
\end{align}$$

since $\displaystyle{f(t)\geqslant 0}$ for all $\displaystyle{t}$, the discriminant of this quadratic equation must be less than or equal to zero:

$$\begin{align}
\Delta = 4\left(\sum ^{n}_{j=1}x^{j}y^{j}\right)^{2} - 4\left(\sum ^{n}_{j=1}(x^{j})^{2}\right)\left(\sum ^{n}_{j=1}(y^{j})^{2}\right) \leqslant 0
\end{align}$$

which directly implies the Cauchy inequality.

for the Minkowski inequality, we expand $\displaystyle{\left\|x+y\right\|^{2}}$ and use the Cauchy inequality:

$$\begin{align}
\left\|x+y\right\|^{2} & = \sum ^{n}_{j=1} (x^{j}+y^{j})^{2} = \sum ^{n}_{j=1} (x^{j})^{2} + 2\sum ^{n}_{j=1} x^{j}y^{j} + \sum ^{n}_{j=1} (y^{j})^{2} \\
& \leqslant \left\|x\right\|^{2} + 2\sqrt{ \sum ^{n}_{j=1}(x^{j})^{2} }\sqrt{ \sum ^{n}_{j=1}(y^{j})^{2} } + \left\|y\right\|^{2} \\
& = \left\|x\right\|^{2} + 2\left\|x\right\|\left\|y\right\| + \left\|y\right\|^{2} = (\left\|x\right\|+\left\|y\right\|)^{2}
\end{align}$$

taking the square root on both sides gives $\displaystyle{\left\|x+y\right\|\leqslant \left\|x\right\|+\left\|y\right\|}$.

## problem 8

suppose the topology of $\displaystyle{\mathbb{R}}$ is the metric topology induced by the standard metric $\displaystyle{d(x,y)=\left|x-y\right|}$. determine the internal, the closure and the boundary of the rational number set $\displaystyle{\mathbb{Q}}$.

### relevant definition

the internal of a set $\displaystyle{A}$ is the largest open set contained in $\displaystyle{A}$, denoted as $\displaystyle{\mathrm{int}(A)}$.
the closure of a set $\displaystyle{A}$ is the smallest closed set containing $\displaystyle{A}$, denoted as $\displaystyle{\overline{A}}$.
the boundary of a set $\displaystyle{A}$ is the set of points that can be approached both from $\displaystyle{A}$ and from the complement of $\displaystyle{A}$, denoted as $\displaystyle{\partial A}$.

### solution

we have

$$\begin{align}
\mathrm{int}(\mathbb{Q}) & =\emptyset \\
\overline{\mathbb{Q}} & =\mathbb{R} \\
\partial \mathbb{Q} & =\mathbb{R}
\end{align}$$

## problem 9

prove that the unit open ball $\displaystyle{\mathbb{B}^{n}:=\left\{x \in \mathbb{R}^{n}|\left\|x\right\|< 1\right\}}$ of metric space $\displaystyle{\mathbb{R}^{n}}$ is homeomorphic to $\displaystyle{\mathbb{R}^{n}}$

### solution

consider the function

$$\begin{align}
f:\mathbb{B}^{n} & \to \mathbb{R}^{n} \\
f(x) & =x\tan\left(\frac{\pi}{2}\left\|x\right\|\right)
\end{align}$$

then $\displaystyle{f}$ is the required homeomorphism.

## problem 10

suppose topological space $\displaystyle{X}$ is Hausdorff, $\displaystyle{f:X\to X}$ is a continuous function. prove that the set of fixed points $\displaystyle{\mathcal{F}(f)=\{x\in X|f(x)=x\}}$ is a closed set in $\displaystyle{X}$.

### solution

we only need to prove that $\displaystyle{\mathcal{F}(f)^{c}}$ is a open set. let $\displaystyle{x\in \mathcal{F}(f)^{c}}$, then $\displaystyle{f(x)\neq x}$. since $\displaystyle{X}$ is Hausdorff, there exist disjoint open sets $\displaystyle{U,V\subseteq X}$ such that $\displaystyle{x\in U}$ and $\displaystyle{f(x)\in V}$. since $\displaystyle{f}$ is continuous, there exists an open set $\displaystyle{W\subseteq X}$ such that $\displaystyle{x\in W}$ and $\displaystyle{f(W)\subseteq V}$. then we have $\displaystyle{W\subseteq \mathcal{F}(f)^{c}}$, which means $\displaystyle{\mathcal{F}(f)^{c}}$ is an open set. therefore, $\displaystyle{\mathcal{F}(f)}$ is a closed set in $\displaystyle{X}$.

## problem 11

suppose $\displaystyle{\mathbb{S}^{n-1}=\left\{x=(x^{1},\dots,x^{n})\in \mathbb{R}^{n}|(x^{1})^{2}+\dots+(x^{n})^{2}=1\right\}}$ is the unit sphere in $\displaystyle{\mathbb{R}^{n}}$. prove that $\displaystyle{\mathbb{S}^{n-1}-\left\{\text{north/south pole}\right\}}$ is homeomorphic to $\displaystyle{\mathbb{R}^{n-1}}$.

### solution

the equation of line passing through $\displaystyle{(0,\dots,0,1)}$ and $\displaystyle{x=(x^{1},\dots,x^{n-1},0)}$ is

$$\begin{align}
\frac{y^{1}-0}{x^{1}-0} & =\dots=\frac{y^{n-1}-0}{x^{n-1}-0}=\frac{y^{n}-1}{0-1} \\
\implies y^{i} & =\frac{x^{i}}{1-x^{n}}, \quad i=1,\dots,n-1 \\
y^{n} & =\frac{1}{1-x^{n}}
\end{align}$$

this is the stereographic projection from $\displaystyle{\mathbb{S}^{n-1}}$ to $\displaystyle{\mathbb{R}^{n-1}}$ with the north pole $\displaystyle{(0,\dots,0,1)}$ as the projection point. for the south pole $\displaystyle{(0,\dots,0,-1)}$, we have

$$\begin{align}
y^{i} & =\frac{x^{i}}{1+x^{n}}, \quad i=1,\dots,n-1 \\
y^{n} & =\frac{1}{1+x^{n}}
\end{align}$$
