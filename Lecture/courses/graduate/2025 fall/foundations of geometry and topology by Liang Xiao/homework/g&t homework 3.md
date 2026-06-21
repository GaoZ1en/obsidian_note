# problem 1

suppose $\displaystyle{X=\left\{a,b,c\right\}}$. let $\displaystyle{\tau_{1}=\left\{\emptyset,X,\left\{a\right\},\left\{a,b\right\}\right\}}$, $\displaystyle{\tau_{2}=\left\{\emptyset,X,\left\{a\right\},\left\{b,c\right\}\right\}}$. find the minimal topology $\displaystyle{\tau}$ on $\displaystyle{X}$ containing $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$, and the maximal topology $\displaystyle{\tau'}$ contained in both $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$.

*sol*.

notice that $\displaystyle{\tau_{1}\cup \tau_{2}=\left\{\emptyset,\left\{a\right\},\left\{a,b\right\},\left\{b,c\right\},X\right\}}$ is not a topology since $\displaystyle{\left\{a,b\right\}\cap\left\{b,c\right\}=\left\{b\right\}\not\in \tau_{1}\cup \tau_{2}}$. $\displaystyle{\tau=\left\{\emptyset,\left\{a\right\},\left\{b\right\},\left\{a,b\right\},\left\{b,c\right\},X\right\}}$ is exactly an topology containing both $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$. it is minimal since removing any element from $\displaystyle{\tau}$ will make it not a topology or not containing both $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$.

on the other hand $\displaystyle{\tau_{1}\cap \tau_{2}=\left\{\emptyset,\left\{a\right\},X\right\}}$ is a topology contained in both $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$. it is maximal since adding any element from either $\displaystyle{\tau_{1}}$ or $\displaystyle{\tau_{2}}$ will make it not contained in both $\displaystyle{\tau_{1}}$ and $\displaystyle{\tau_{2}}$.

# problem 2

find a family of closed set of $\displaystyle{\mathbb{R}}$, such that their union is not closed.

*sol*.

define

$$\begin{align}
F_{n} & =\left[ \frac{1}{n},1-\frac{1}{n} \right]
\end{align}$$

then

$$\begin{align}
\bigcup ^{\infty}_{n=1}F_{n} & =(0,1)
\end{align}$$

which is not closed in $\displaystyle{\mathbb{R}}$.

# problem 3

find the interior, closure, and boundary of the following point sets in $\displaystyle{\mathbb{R}^{2}}$:
1. $\displaystyle{A=\left\{(x,y)|1<x^{2}+y^{2}\leqslant 2\right\}}$
*sol*. $\displaystyle{\mathrm{int}A=\left\{(x,y)|1<x^{2}+y^{2}<2\right\},\bar{A}=\left\{(x,y)|1\leqslant x^{2}+y^{2}\leqslant 2\right\},\partial A=\left\{(x,y)|x^{2}+y^{2}=1\text{ or }2\right\}}$
1. $\displaystyle{B=\left\{(x,y)|x\neq 0 \text{ or }y\neq 0\right\}}$
*sol*. $\displaystyle{\mathrm{int}B=B,\bar{B}=\mathbb{R}^{2},\partial B=\left\{(x,y)|x=0\text{ or }y=0\right\}}$
1. $\displaystyle{C=\mathbb{R}^{2}-\left\{\left( x,\sin \frac{1}{x} \right)| x> 0\right\}}$
*sol*. $\displaystyle{\mathrm{int}C=\mathbb{R}^{2}-\left\{\left( x,\sin \frac{1}{x} \right)|x> 0\right\}\cup\left\{(0,y)|-1\leqslant y\leqslant 1\right\}, \bar{C}=\mathbb{R}^{2},\partial C=\left\{\left( x,\sin \frac{1}{x} \right)|x> 0\right\}\cup\left\{(0,y)|-1\leqslant y\leqslant 1\right\}}$

# problem 4

consider the following topology of $\displaystyle{\mathbb{R}}$: $\displaystyle{\tau_{1}}$ usual topology, $\displaystyle{\tau_{2}}$ finite complement topology, $\displaystyle{\tau_{3}}$ upper limit topology.
1. for each topology, find the closure of $\displaystyle{K=\left\{\frac{1}{n}|n\in \mathbb{Z}_{+}\right\}}$.
*sol*.
$\displaystyle{\tau_{1}}$: $\displaystyle{\bar{K}=K\cup \left\{0\right\}}$, since $\displaystyle{0}$ is a limit point of $\displaystyle{K}$ in the usual topology.
$\displaystyle{\tau_{2}}$: $\displaystyle{\bar{K}=\mathbb{R}}$, since in the finite complement topology, every non-empty open set is dense.
$\displaystyle{\tau_{3}}$: $\displaystyle{\bar{K}=K}$, since $\displaystyle{K}$ is closed in the upper limit topology.
1. which topology satisfies the Hausdorff axiom?
*sol*.
$\displaystyle{\tau_{1}}$: $\displaystyle{\forall x_{1},x_{2}\in \mathbb{R},x_{1}<x_{2}}$. let $\displaystyle{U_{x_{1}}=\left( x_{1}-\frac{\varepsilon}{3},x_{1}+\frac{\varepsilon}{3} \right)\in \tau_{1},U_{x_{2}}=\left( x_{2}-\frac{\varepsilon}{3},x_{2}+\frac{\varepsilon}{3} \right)\in \tau_{1},\varepsilon=x_{2}-x_{1}}$. then $\displaystyle{U_{x_{1}}\cap U_{x_{2}}=\emptyset}$. thus $\displaystyle{\tau_{1}}$ satisfies the Hausdorff axiom.
$\displaystyle{\tau_{2}}$: $\displaystyle{\forall x_{1}\ni U_{x_{1}}\in \tau_{2},x_{2}\ni U_{x_{2}}\in \tau_{2}}$, since the complements of $\displaystyle{U_{x_{1}}}$ and $\displaystyle{U_{x_{2}}}$ are finite, $\displaystyle{U_{x_{1}}\cap U_{x_{2}}\neq \emptyset}$. thus $\displaystyle{\tau_{2}}$ does not satisfy the Hausdorff axiom.
$\displaystyle{\tau_{3}}$ is similar to $\displaystyle{\tau_{1}}$, thus $\displaystyle{\tau_{3}}$ satisfies the Hausdorff axiom.

# problem 5

find the limit points of the following subsets of $\displaystyle{\mathbb{R}}$
1. $\displaystyle{\left\{\frac{1}{m}+\frac{1}{n}|m,n\in \mathbb{Z}_{+}\right\}}$
*sol*. $\displaystyle{\left\{\frac{1}{m}|m\in \mathbb{Z}_{+}\right\}}$
1. $\displaystyle{\left\{\frac{1}{n}\sin n|n=\mathbb{Z}_{+}\right\}}$
*sol*. $\displaystyle{\left\{0\right\}}$

# problem 6

suppose $\displaystyle{X}$ is the set of all real numbers, let $\displaystyle{\beta}$ be a collection of subsets of $\displaystyle{X}$ that consist of all intervals of the form $\displaystyle{[a,b)}$, where $\displaystyle{a<b}$ and $\displaystyle{a,b\in \mathbb{R}}$. prove that $\displaystyle{\beta}$ is a basis for a topology on $\displaystyle{X}$, and under this topology, $\displaystyle{\forall B\in \beta}$ is both open and closed.

*sol*.

to prove that $\displaystyle{\beta}$ is a basis for a topology on $\displaystyle{X}$, we need to verify the two conditions of a basis:
1. $\displaystyle{\forall x\in X}$, there exists at least one basis element $\displaystyle{B\in \beta}$ such that $\displaystyle{x\in B}$.
*proof*. for any $\displaystyle{x\in X}$, let $\displaystyle{B=[x,x+1)}$. then $\displaystyle{x\in B\in \beta}$. thus the first condition is satisfied.
1. $\displaystyle{\forall x\in B_{1}\cap B_{2}}$, where $\displaystyle{B_{1},B_{2}\in \beta}$, there exists a basis element $\displaystyle{B_{3}\in \beta}$ such that $\displaystyle{x\in B_{3}\subseteq B_{1}\cap B_{2}}$.
*proof*. let $\displaystyle{B_{1}=[a_{1},b_{1}),B_{2}=[a_{2},b_{2})}$. then $\displaystyle{B_{1}\cap B_{2}=[\max(a_{1},a_{2}),\min(b_{1},b_{2}))}$. let $\displaystyle{B_{3}=[x,\min(b_{1},b_{2}))}$. then $\displaystyle{x\in B_{3}\subseteq B_{1}\cap B_{2}}$. thus the second condition is satisfied.

then $\displaystyle{\beta}$ is a basis for a topology on $\displaystyle{X}$. we denote this topology as $\displaystyle{\tau}$. now we need to prove that $\displaystyle{\forall B\in \beta}$ is both open and closed in $\displaystyle{(X,\tau)}$. we only need to prove $\displaystyle{B}$ is closed in $\displaystyle{(X,\tau)}$, since by definition $\displaystyle{B}$ is open in $\displaystyle{(X,\tau)}$. suppose $\displaystyle{B=[a,b)}$ and the complement of $\displaystyle{B}$ is $\displaystyle{X-B=(-\infty,a)\cup[b,\infty)}$. define $\displaystyle{D_{n}=[-n,a),E_{n}=[b,n)}$, then $\displaystyle{X-B=\bigcup ^{\infty}_{n}D_{n}\cup E_{n}}$. so $\displaystyle{B}$ is also closed in $\displaystyle{(X,\tau)}$.

# problem 7

prove that $\displaystyle{h(x)=\frac{e^{x}}{1+e^{x}}}$ is a homeomorphism from $\displaystyle{\mathbb{R}}$ to $\displaystyle{(0,1)}$.

*sol*. $\displaystyle{h(x)}$ is a continuous function, and we can find its inverse function $\displaystyle{h^{-1}(y)=\ln \frac{y}{1-y}}$, which is also continuous. thus we only need to prove that $\displaystyle{h(x)}$ is a bijection:
$\displaystyle{\forall x_{1},x_{2}\in \mathbb{R},x_{1}\neq x_{2}}$, $\displaystyle{h(x_{1})-h(x_{2})=\frac{e^{x_{1}}-e^{x_{2}}}{(1+e^{x_{1}})(1+e^{x_{2}})}\neq 0}$, so $\displaystyle{h(x)}$ is injective.
for any $\displaystyle{y\in (0,1)}$, let $\displaystyle{x=\ln \frac{y}{1-y}}$, then $\displaystyle{h(x)=y}$, so $\displaystyle{h(x)}$ is surjective. thus $\displaystyle{h(x)}$ is a bijection.

# problem 8

suppose $\displaystyle{X}$ is the set of all real numbers with usual topology, and $\displaystyle{Y}$ is the set of all real numbers with finite complement topology. define $\displaystyle{f:X\to Y,f:x\mapsto x}$. prove that $\displaystyle{f}$ is continuous, but not a homeomorphism.

*sol*.

let $\displaystyle{U=Y-\left\{y_{1},y_{2},\dots,y_{n}\right\}\subseteq Y}$ be an open set, thus $\displaystyle{f^{-1}(U)=X-\left\{y_{1},y_{2},\dots ,y_{n}\right\}=(-\infty,y_{1})\cup(y_{1},y_{2})\cup\dots \cup(y_{n},+\infty)}$ is an open set in $\displaystyle{X}$. so $\displaystyle{f}$ is continuous. however, let $\displaystyle{V\subseteq X}$ be an open set, then $\displaystyle{f(V)}$ is not necessarily open in $\displaystyle{Y}$ since $\displaystyle{Y-f(V)}$ may be infinite. thus $\displaystyle{f}$ is not a homeomorphism.

# problem 9

let $\displaystyle{A}$ be a subset of a metric space. prove that $\displaystyle{d(x,A)=0\iff x \in \bar{A}}$.

*sol*.

$\displaystyle{\impliedby}$. suppose $\displaystyle{x\in \bar{A}}$, then $\displaystyle{\forall \varepsilon >0}$, $\displaystyle{B(x,\varepsilon)\cap A\neq \emptyset}$. thus $\displaystyle{\exists a\in A}$ such that $\displaystyle{d(x,a)<\varepsilon}$. so $\displaystyle{d(x,A)=\inf_{a\in A}d(x,a)\leqslant d(x,a)<\varepsilon}$. since $\displaystyle{\varepsilon}$ is arbitrary, $\displaystyle{d(x,A)=0}$.
$\displaystyle{\implies}$. suppose $\displaystyle{d(x,A)=0}$, then $\displaystyle{\forall \varepsilon >0}$, $\displaystyle{\exists a\in A}$ such that $\displaystyle{d(x,a)<\varepsilon}$. thus $\displaystyle{a\in B(x,\varepsilon)\cap A}$, so $\displaystyle{B(x,\varepsilon)\cap A\neq \emptyset}$. since $\displaystyle{\varepsilon}$ is arbitrary, $\displaystyle{x\in \bar{A}}$.

# problem 10

let $\displaystyle{A}$ and $\displaystyle{B}$ be subsets of a metric space. the distance $\displaystyle{d(A,B)}$ between $\displaystyle{A}$ and $\displaystyle{B}$ is defined as $\displaystyle{\inf_{x \in A,y\in B}d(x,y)}$. give an example to show that for two closed subset $\displaystyle{A,B}$, $\displaystyle{d(A,B)=0}$ does not imply $\displaystyle{A\cap B\neq \emptyset}$.

*sol*.

define $\displaystyle{A=\left\{(x,y)|y=\frac{1}{x},x>0\right\}}$ and $\displaystyle{B=\left\{(x,y)|y=0\right\}}$ in $\displaystyle{\mathbb{R}^{2}}$. both $\displaystyle{A}$ and $\displaystyle{B}$ are closed sets, however $\displaystyle{d(A,B)=0}$ since $\displaystyle{\forall \varepsilon >0}$, let $\displaystyle{x=\frac{1}{\varepsilon}}$, then $\displaystyle{d((x,\frac{1}{x}),(x,0))=\frac{1}{x}=\varepsilon}$. but $\displaystyle{A\cap B=\emptyset}$.

# problem 11

suppose $\displaystyle{\mathbb{Z}}$ is the set of integers. $\displaystyle{A_{a,b}=\left\{\dots,a-2b,a-b,a,a+b,\dots\right\}}$ is arithmetic sequence on $\displaystyle{\mathbb{Z}}$ that passes $\displaystyle{a}$, and $\displaystyle{b\neq 0}$. prove that
1. the collection of all such arithmetic sequences $\displaystyle{\beta}$ forms a basis of a topology on $\displaystyle{\mathbb{Z}}$. this topology is called arithmetic sequence topology.
*sol*. $\displaystyle{\forall x \in \mathbb{Z}}$, let $\displaystyle{A_{x,1}}$ be a basis element in $\displaystyle{\beta}$. then $\displaystyle{x\in A_{x,1}}$. $\displaystyle{\forall x \in A_{a_{1},b_{1}}\cap A_{a_{2},b_{2}}}$, where $\displaystyle{A_{a_{1},b_{1}},A_{a_{2},b_{2}}\in \beta}$, let $\displaystyle{b_{3}=\mathrm{lcm}(b_{1},b_{2})}$, and let $\displaystyle{a_{3}}$ be the unique integer such that $\displaystyle{a_{3}\equiv a_{1}\mod b_{1}}$ and $\displaystyle{a_{3}\equiv a_{2}\mod b_{2}}$. then $\displaystyle{x\in A_{a_{3},b_{3}}\subseteq A_{a_{1},b_{1}}\cap A_{a_{2},b_{2}}}$. thus $\displaystyle{\beta}$ forms a basis of a topology on $\displaystyle{\mathbb{Z}}$.
1. sequence $\displaystyle{\left\{n!\right\}}$ converges to $\displaystyle{0}$ under arithmetic sequence topology.
*sol*. $\displaystyle{\forall A_{0,b}\in \beta}$, let $\displaystyle{N=b}$, then $\displaystyle{\forall n>N}$, $\displaystyle{n!\equiv 0\mod b}$, so $\displaystyle{n!\in A_{0,b}}$. thus sequence $\displaystyle{\left\{n!\right\}}$ converges to $\displaystyle{0}$ under arithmetic sequence topology.
