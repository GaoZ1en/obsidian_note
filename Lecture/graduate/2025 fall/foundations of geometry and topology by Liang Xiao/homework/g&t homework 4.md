# problem 1

find a open cover of $\displaystyle{\mathbb{R}}$ that has no finite subcover. do it for $\displaystyle{[0,1)}$ and $\displaystyle{(0,1]}$ as well.

*sol*.

consider $\displaystyle{\left\{(-\infty,n)|n\in \mathbb{Z}\right\}}$. it is a open cover of $\displaystyle{\mathbb{R}}$ since for any $\displaystyle{x\in \mathbb{R}}$, we can find an integer $\displaystyle{n}$ such that $\displaystyle{x<n}$. however, there is no finite subcover since for any finite selection of sets $\displaystyle{\left\{(-\infty,n_1),(-\infty,n_2),\ldots,(-\infty,n_k)\right\}}$, we can find an integer $\displaystyle{m}$ such that $\displaystyle{m>\max(n_1,n_2,\ldots,n_k)}$, and thus $\displaystyle{m}$ is not covered by the selected sets.

for $\displaystyle{[0,1)}$, consider $\displaystyle{\left\{(1-\frac{1}{n},1)|n\in \mathbb{N}\right\}}$. it is an open cover of $\displaystyle{[0,1)}$ since for any $\displaystyle{x\in [0,1)}$, we can find a natural number $\displaystyle{n}$ such that $\displaystyle{x>1-\frac{1}{n}}$. however, there is no finite subcover since for any finite selection of sets $\displaystyle{\left\{(1-\frac{1}{n_1},1),(1-\frac{1}{n_2},1),\ldots,(1-\frac{1}{n_k},1)\right\}}$, we can find a natural number $\displaystyle{m}$ such that $\displaystyle{m>\max(n_1,n_2,\ldots,n_k)}$, and thus $\displaystyle{1-\frac{1}{m}}$ is not covered by the selected sets. similar for $\displaystyle{(0,1]}$, consider $\displaystyle{\left\{(0,\frac{1}{n})|n\in \mathbb{N}\right\}}$. it is an open cover for $\displaystyle{(0,1]}$ but has no finit subcover.

# problem 2

is $\displaystyle{\mathbb{R}}$ with the finite complement topology compact? and is $\displaystyle{\mathbb{R}}$ with the half-open interval topology compact?

*sol*.

since the complement of any open set in the finite complement topology is finite, any open cover must contain at least one open set whose complement is finite. thus, we can always select that open set along with finitely many other open sets to cover $\displaystyle{\mathbb{R}}$. therefore, $\displaystyle{\mathbb{R}}$ with the finite complement topology is compact.

for the half-open interval topology, consider the open cover $\displaystyle{\left\{[n,n+1)|n\in \mathbb{Z}\right\}}$. it is an open cover of $\displaystyle{\mathbb{R}}$ since for any $\displaystyle{x\in \mathbb{R}}$, we can find an integer $\displaystyle{n}$ such that $\displaystyle{n\leq x<n+1}$. however, there is no finite subcover since for any finite selection of sets $\displaystyle{\left\{[n_1,n_1+1),[n_2,n_2+1),\ldots,[n_k,n_k+1)\right\}}$, we can find an integer $\displaystyle{m}$ such that $\displaystyle{m>\max(n_1,n_2,\ldots,n_k)}$, and thus $\displaystyle{m}$ is not covered by the selected sets. therefore, $\displaystyle{\mathbb{R}}$ with the half-open interval topology is not compact.

# problem 3

prove that if $\displaystyle{f:X\to Y}$ is continuous, and $\displaystyle{X}$ is compact, $\displaystyle{Y}$ is Hausdorff, then $\displaystyle{f}$ is a closed map.

*sol*. consider a closed set $\displaystyle{C\subseteq X}$. since $\displaystyle{X}$ is compact, then $\displaystyle{C}$ is also compact. since $\displaystyle{f}$ is continuous, then $\displaystyle{f(C)}$ is also compact. since $\displaystyle{Y}$ is Hausdorff, then $\displaystyle{f(C)}$ is closed. therefore, $\displaystyle{f}$ is a closed map.

# problem 4

using soldering lemma, prove that $\displaystyle{[0,1)\times[0,1)}$ is homeomorphic to $\displaystyle{[0,1]\times[0,1)}$

*sol*.

# probelm 5

let $\displaystyle{f:S^{1}\to E^{1}}$ be a continuous funtion. prove that $\displaystyle{\exists x \in S^{1}, \text{ s.t. } f(x)=f(-x)}$

*sol*.

consider the funtion $\displaystyle{F(x)=f(x)-f(-x)}$. since $\displaystyle{f}$ is continuous, then $\displaystyle{F}$ is also continuous. note that $\displaystyle{F(-x)=-F(x)}$. thus, since $\displaystyle{S^{1}}$ is compact, by the intermediate value theorem, there exists $\displaystyle{x\in S^{1}}$ such that $\displaystyle{F(x)=0}$, which implies that $\displaystyle{f(x)=f(-x)}$.

# problem 6

suppose $\displaystyle{X=\left\{(x,y)|x \in \mathbb{Q} \text{ or }y\in \mathbb{Q}\right\}}$. prove that $\displaystyle{X}$ is connected as a subset of $\displaystyle{\mathbb{R}^{2}}$ with the standard topology.

*sol*. consider two points $\displaystyle{(x_1,y_1),(x_2,y_2)\in X}$.

# problem 7

suppose $\displaystyle{S^{2}}$ is unit sphere in $\displaystyle{\mathbb{R}^{3}}$. define $\displaystyle{f:S^{2}\to \mathbb{E}^{4}}$ by $\displaystyle{f(x,y,z)=(x^{2}-y^{2},xy,xz,yz)}$. prove that $\displaystyle{f}$ induces a embedding of the real projective plane $\displaystyle{\mathbb{R}P^{2}}$ into $\displaystyle{\mathbb{R}^{4}}$.

*sol*.

# problem 8

prove that any infinite point set of closed intervals has a limit point.

*sol*.

# problem 9

reformulate the definition of compactness using closed sets

*sol*.

a topological space $\displaystyle{X}$ is compact if and only if for any collection of closed sets $\displaystyle{\{F_{\alpha}\}_{\alpha \in A}}$ in $\displaystyle{X}$ that $\displaystyle{\bigcap _{\alpha \in A}F_{\alpha}=\emptyset}$, there exists a finite subcollection $\displaystyle{\left\{F_{\alpha}\right\}_{\alpha \in A'},A'\subseteq A\}}$ such that $\displaystyle{\bigcap _{\alpha \in A}F_{\alpha}=\emptyset}$.

# problem 10

prove the Dirichlet's prime number theorem: if $\displaystyle{a,b}$ are coprime, then there are infinitely many primes of the form $\displaystyle{an+b}$, where $\displaystyle{n\in \mathbb{N}}$.