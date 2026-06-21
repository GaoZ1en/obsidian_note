# problem 1

find a open cover of $\displaystyle{\mathbb{R}}$ that has no finite subcover. do it for $\displaystyle{[0,1)}$ and $\displaystyle{(0,1]}$ as well.

*sol*. consider $\displaystyle{\left\{(-\infty,n)|n\in \mathbb{Z}\right\}}$. it is a open cover of $\displaystyle{\mathbb{R}}$ since for any $\displaystyle{x\in \mathbb{R}}$, we can find an integer $\displaystyle{n}$ such that $\displaystyle{x<n}$. however, there is no finite subcover since for any finite selection of sets $\displaystyle{\left\{(-\infty,n_1),(-\infty,n_2),\ldots,(-\infty,n_k)\right\}}$, we can find an integer $\displaystyle{m}$ such that $\displaystyle{m>\max(n_1,n_2,\ldots,n_k)}$, and thus $\displaystyle{m}$ is not covered by the selected sets.

for $\displaystyle{[0,1)}$, consider $\displaystyle{\left\{[0,1-\frac{1}{n})|n\in \mathbb{N}, n \ge 2\right\}}$. it is an open cover of $\displaystyle{[0,1)}$ (in the subspace topology) since for any $\displaystyle{x\in [0,1)}$, we can find a natural number $\displaystyle{n}$ such that $\displaystyle{x<1-\frac{1}{n}}$. however, there is no finite subcover since the union of any finite subcollection is $\displaystyle{[0, 1-\frac{1}{M})}$ for some $M$, which fails to cover points close to 1.

similar for $\displaystyle{(0,1]}$, consider $\displaystyle{\left\{(\frac{1}{n},1]|n\in \mathbb{N}, n \ge 2\right\}}$. it is an open cover for $\displaystyle{(0,1]}$ but has no finite subcover (misses points close to 0).

# problem 2

is $\displaystyle{\mathbb{R}}$ with the finite complement topology compact? and is $\displaystyle{\mathbb{R}}$ with the half-open interval topology compact?

*sol*. since the complement of any open set in the finite complement topology is finite, any open cover must contain at least one open set whose complement is finite. thus, we can always select that open set along with finitely many other open sets to cover $\displaystyle{\mathbb{R}}$. therefore, $\displaystyle{\mathbb{R}}$ with the finite complement topology is compact.

for the half-open interval topology, consider the open cover $\displaystyle{\left\{[n,n+1)|n\in \mathbb{Z}\right\}}$. it is an open cover of $\displaystyle{\mathbb{R}}$ since for any $\displaystyle{x\in \mathbb{R}}$, we can find an integer $\displaystyle{n}$ such that $\displaystyle{n\leq x<n+1}$. however, there is no finite subcover since for any finite selection of sets $\displaystyle{\left\{[n_1,n_1+1),[n_2,n_2+1),\ldots,[n_k,n_k+1)\right\}}$, we can find an integer $\displaystyle{m}$ such that $\displaystyle{m>\max(n_1,n_2,\ldots,n_k)}$, and thus $\displaystyle{m}$ is not covered by the selected sets. therefore, $\displaystyle{\mathbb{R}}$ with the half-open interval topology is not compact.

# problem 3

prove that if $\displaystyle{f:X\to Y}$ is continuous, and $\displaystyle{X}$ is compact, $\displaystyle{Y}$ is Hausdorff, then $\displaystyle{f}$ is a closed map.

*sol*. consider a closed set $\displaystyle{C\subseteq X}$. since $\displaystyle{X}$ is compact, then $\displaystyle{C}$ is also compact. since $\displaystyle{f}$ is continuous, then $\displaystyle{f(C)}$ is also compact. since $\displaystyle{Y}$ is Hausdorff, then $\displaystyle{f(C)}$ is closed. therefore, $\displaystyle{f}$ is a closed map.

# problem 4

using soldering lemma, prove that $\displaystyle{[0,1)\times[0,1)}$ is homeomorphic to $\displaystyle{[0,1]\times[0,1)}$

*sol*.
first, observe that $\displaystyle{[0,1)}$ is homeomorphic to $\displaystyle{[0,\infty)}$ (e.g., via $x \mapsto x/(1-x)$). thus, the problem is equivalent to showing $\displaystyle{[0,\infty) \times [0,\infty)}$ (the first quadrant) is homeomorphic to $\displaystyle{[0,1] \times [0,\infty)}$.

let $\displaystyle{Q = \{(r, \theta) \mid r \ge 0, 0 \le \theta \le \pi/2\}}$. let $\displaystyle{S = [0,1] \times [0,\infty)}$. we can construct a homeomorphism using the Soldering Lemma by decomposing both spaces. cut the quadrant $Q$ along the ray $\theta = \pi/4$. $Q_1 = \{(r, \theta) \mid 0 \le \theta \le \pi/4\}$, $Q_2 = \{(r, \theta) \mid \pi/4 \le \theta \le \pi/2\}$. cut the strip $S$ along the line $x=1/2$. $S_1 = [0, 1/2] \times [0,\infty)$, $S_2 = [1/2, 1] \times [0,\infty)$.

construct homeomorphisms $h_1: S_1 \to Q_1$ and $h_2: S_2 \to Q_2$ that match on the boundary ($x=1/2$ maps to $\theta=\pi/4$).
for example, map vertical lines in $S$ to rays in $Q$. $h(x, y) = (y+1, \frac{\pi}{2} x)$. check boundary: $x=0 \implies \theta=0$, $x=1 \implies \theta=\pi/2$. this map $h(x,y)$ is a continuous bijection from $[0,1] \times [0,\infty)$ to $\{(r,\theta) \mid r \ge 1, 0 \le \theta \le \pi/2\}$.

thus, the spaces are homeomorphic.

# probelm 5

let $\displaystyle{f:S^{1}\to E^{1}}$ be a continuous funtion. prove that $\displaystyle{\exists x \in S^{1}, \text{ s.t. } f(x)=f(-x)}$

*sol*. consider the funtion $\displaystyle{F(x)=f(x)-f(-x)}$. since $\displaystyle{f}$ is continuous, then $\displaystyle{F}$ is also continuous. note that $\displaystyle{F(-x)=-F(x)}$. thus, since $\displaystyle{S^{1}}$ is compact, by the intermediate value theorem, there exists $\displaystyle{x\in S^{1}}$ such that $\displaystyle{F(x)=0}$, which implies that $\displaystyle{f(x)=f(-x)}$.

# problem 6

suppose $\displaystyle{X=\left\{(x,y)|x \in \mathbb{Q} \text{ or }y\in \mathbb{Q}\right\}}$. prove that $\displaystyle{X}$ is connected as a subset of $\displaystyle{\mathbb{R}^{2}}$ with the standard topology.

*sol*. consider $\displaystyle{(x,y)\in X}$. we will show that there is a path in $\displaystyle{X}$ connecting $\displaystyle{(x,y)}$ to either the x-axis or the y-axis, therefore any two points in $\displaystyle{X}$ can be connected via the axes, which is connected.

if $\displaystyle{x \in \mathbb{Q}}$, then the vertical line segment from $\displaystyle{(x,y)}$ to $\displaystyle{(x,0)}$ lies entirely in $\displaystyle{X}$ since all points on this segment have rational x-coordinates. similarly, if $\displaystyle{y \in \mathbb{Q}}$, then the horizontal line segment from $\displaystyle{(x,y)}$ to $\displaystyle{(0,y)}$ lies entirely in $\displaystyle{X}$ since all points on this segment have rational y-coordinates. thus, any point in $\displaystyle{X}$ can be connected to either the x-axis or the y-axis by a path in $\displaystyle{X}$.

moreover, the union of the x-axis and y-axis is connected, therefore any two points in $\displaystyle{X}$ can be connected via the axes. hence, $\displaystyle{X}$ is connected.

# problem 7

suppose $\displaystyle{S^{2}}$ is unit sphere in $\displaystyle{\mathbb{R}^{3}}$. define $\displaystyle{f:S^{2}\to \mathbb{E}^{4}}$ by $\displaystyle{f(x,y,z)=(x^{2}-y^{2},xy,xz,yz)}$. prove that $\displaystyle{f}$ induces a embedding of the real projective plane $\displaystyle{\mathbb{R}P^{2}}$ into $\displaystyle{\mathbb{R}^{4}}$.

*sol*. notice that $\displaystyle{f(-x,-y,-z)=f(x,y,z)}$, this means $\displaystyle{f}$ descends to a well-defined map $\displaystyle{\bar{f}:\mathbb{R}P^{2}\to \mathbb{R}^{4}}$. we will show that $\displaystyle{\bar{f}}$ is an embedding. since $\displaystyle{f}$ is continuous, so is $\displaystyle{\bar{f}}$ (by the definition of the quotient topology). suppose $\displaystyle{f(x,y,z)=f(a,b,c)}$, then we have

$$\begin{align}
x^{2}-y^{2} & =a^{2}-b^{2} \\
xy & =ab \\
xz & =ac \\
yz & =bc
\end{align}$$

from the second equation, if $\displaystyle{ab \neq 0}$, then $\displaystyle{x/a=y/b}$. similarly, from the third and fourth equations, we get $\displaystyle{x/a=z/c}$ and $\displaystyle{y/b=z/c}$. thus, $\displaystyle{(x,y,z)=k(a,b,c)}$ for some scalar $\displaystyle{k}$. since both points lie on the unit sphere, we must have $\displaystyle{k=\pm 1}$, hence $\displaystyle{(x,y,z)=\pm (a,b,c)}$. if any of $\displaystyle{a,b,c}$ is zero, we can do a case analysis to show the same conclusion holds. therefore, $\displaystyle{\bar{f}}$ is injective.

finally, since $\displaystyle{\mathbb{R}P^{2}}$ is compact (as a quotient of the compact space $\displaystyle{S^{2}}$) and $\displaystyle{\mathbb{R}^{4}}$ is Hausdorff, a continuous bijection from a compact space to a Hausdorff space is a homeomorphism onto its image. thus, $\displaystyle{\bar{f}}$ is an embedding.

# problem 8

prove that any infinite point set of closed intervals has a limit point.

*sol*. consider the closed interval $\displaystyle{[a,b]}$ with $\displaystyle{a<b}$ and a set of points $\displaystyle{S\subseteq [a,b]}$ that is infinite. divide $\displaystyle{[a,b]}$ into two halves: $\displaystyle{[a,\frac{a+b}{2}]}$ and $\displaystyle{[\frac{a+b}{2},b]}$. at least one of these halves must contain infinitely many points of $\displaystyle{S}$. denote this half as $\displaystyle{I_1}$. repeat this process on $\displaystyle{I_1}$ to get a smaller interval $\displaystyle{I_2}$ that also contains infinitely many points of $\displaystyle{S}$. continue this process to get a nested sequence of closed intervals $\displaystyle{I_n}$ such that each $\displaystyle{I_n}$ contains infinitely many points of $\displaystyle{S}$ and the length of $\displaystyle{I_n}$ approaches zero as $\displaystyle{n}$ approaches infinity. by the nested interval property, the intersection of all $\displaystyle{I_n}$ contains exactly one point, denoted as $\displaystyle{x}$. since each $\displaystyle{I_n}$ contains infinitely many points of $\displaystyle{S}$, for any neighborhood of $\displaystyle{x}$, there exists an $\displaystyle{I_N}$ such that the neighborhood contains $\displaystyle{I_N}$, which in turn contains infinitely many points of $\displaystyle{S}$. thus, $\displaystyle{x}$ is a limit point of $\displaystyle{S}$.

# problem 9

reformulate the definition of compactness using closed sets

*sol*. a topological space $\displaystyle{X}$ is compact if and only if for any collection of closed sets $\displaystyle{\{F_{\alpha}\}_{\alpha \in A}}$ in $\displaystyle{X}$ such that $\displaystyle{\bigcap _{\alpha \in A}F_{\alpha}=\emptyset}$, there exists a finite subcollection $\displaystyle{\left\{F_{\alpha}\right\}_{\alpha \in A'},A'\subseteq A, |A'|<\infty}$ such that $\displaystyle{\bigcap _{\alpha \in A'}F_{\alpha}=\emptyset}$.

# problem 10

prove that there are infinitely many primes of the form $\displaystyle{an+b}$ where $\displaystyle{a,b}$ are coprime positive integers.

*sol*. define $\displaystyle{U_{a,b}=\left\{an+b|n\in \mathbb{Z}\right\}}$. $\displaystyle{\left\{U_{a,b}\right\}}$ forms a basis for a topology on $\displaystyle{\mathbb{Z}}$, since the intersection of two arithmetic progressions is either empty or another arithmetic progression. thus, we can define a topology on $\displaystyle{\mathbb{Z}}$ with basis $\displaystyle{\left\{U_{a,b}\right\}}$. each $\displaystyle{U_{a,b}}$ is both open and closed, since its complement is a union of other arithmetic progressions. moreover $\displaystyle{\mathbb{Z}}$ is compact under this topology

assume that for coprime positive integers $\displaystyle{a}$ and $\displaystyle{b}$, there are only finitely many primes of the form $\displaystyle{an+b}$, say $\displaystyle{p_1, p_2, \dots, p_k}$. consider the following sets:

$$\begin{align}
V & = \bigcup_{i=1}^k U_{p_i, 0} \\
W & = \bigcup_{\substack{q \text{ prime},\ q \neq p_i, \\
q \not\equiv b \pmod{a}}} U_{q, 0}
\end{align}$$

the $\displaystyle{V}$ is the set of multiples of these primes. since $\displaystyle{V}$ is a finite union of closed sets, it is closed. the $\displaystyle{W}$ is the union of multiples of all primes not in the residue class $\displaystyle{b \pmod{a}}$ (and distinct from the $\displaystyle{p_i}$). this is an open set.

we claim that $\displaystyle{U_{a,b}\subseteq V\cup W}$. take $\displaystyle{\forall x \in U_{a,b}}$, if $\displaystyle{x}$ is a multiple of some $\displaystyle{p_i}$, then $\displaystyle{x\in V}$. otherwise, $\displaystyle{x}$ is not divisible by any $\displaystyle{p_i}$. if $\displaystyle{x}$ were prime, then by assumption it would equal some $\displaystyle{p_i}$, contradiction. hence $\displaystyle{x}$ is composite, so it has a prime divisor $\displaystyle{q}$. since $\displaystyle{x}$ is not divisible by any $\displaystyle{p_i}$, we have $\displaystyle{q \notin \{p_i\}}$. if $\displaystyle{q \equiv b \pmod{a}}$, then $\displaystyle{q \in U_{a,b}}$, so by assumption $\displaystyle{q}$ is one of the $\displaystyle{p_i}$, contradiction. therefore $\displaystyle{q \not\equiv b \pmod{a}}$, and thus $\displaystyle{x \in U_{q,0} \subseteq W}$. this proves the claim.

now $\displaystyle{U_{a,b}}$ is closed, and since $\displaystyle{\mathbb{Z}}$ is compact, $\displaystyle{U_{a,b}}$ is also compact as a closed subset. hence the open cover $\displaystyle{\{V, W\}}$ of $\displaystyle{U_{a,b}}$ admits a finite subcover. but $\displaystyle{W}$ is a union of infinitely many open sets, so there exist finitely many primes $\displaystyle{q_1, q_2, \dots, q_m}$, each satisfying $\displaystyle{q_j \not\equiv b \pmod{a}}$, such that

$$\begin{align}
U_{a,b} & \subseteq V \cup \bigcup_{j=1}^m U_{q_j,0}
\end{align}$$

now construct an integer $\displaystyle{x}$ satisfying the following systems of congruences:

$$\begin{align}
x & \equiv b \pmod{a}, \\
x & \equiv 1 \pmod{p_i} \quad (i=1,\dots,k), \\
x & \equiv 1 \pmod{q_j} \quad \forall q_{j} \text{ with } q_{j} \nmid a
\end{align}$$

for those $\displaystyle{q_{j}}$ dividing $\displaystyle{a}$, no extra condition is needed, because from $\displaystyle{x \equiv b \pmod{a}}$ we get $\displaystyle{x \equiv b \pmod{q_{j}}}$, and since $\displaystyle{\gcd(a,b)=1}$, we have $\displaystyle{b \not\equiv 0 \pmod{q_{j}}}$; hence $\displaystyle{x}$ is not divisible by such $\displaystyle{q_{j}}$. the moduli $\displaystyle{a, p_1, \dots, p_k}$ and all $\displaystyle{q_{j}}$ with $\displaystyle{q_{j} \nmid a}$ are pairwise coprime (these primes are distinct and coprime to $\displaystyle{a}$), so by the Chinese Remainder Theorem such an $\displaystyle{x}$ exists.

now check the properties of $\displaystyle{x}$:
1. from $\displaystyle{x\equiv b\pmod{a}}$, we have $\displaystyle{x\in U_{a,b}}$
1. for each $\displaystyle{p_i}$, we have $\displaystyle{x\equiv 1\pmod{p_i}}$, so $\displaystyle{x\notin U_{p_i,0}}$; thus $\displaystyle{x\notin V}$
1. for each $\displaystyle{q_j}$: if $\displaystyle{q_j \nmid a}$, then $\displaystyle{x\equiv 1\pmod{q_j}}$, so $\displaystyle{x\notin U_{q_j,0}}$; if $\displaystyle{q_j \mid a}$, then $\displaystyle{x\equiv b\pmod{q_j}}$ with $\displaystyle{b \not\equiv 0\pmod{q_j}}$, so again $\displaystyle{x\notin U_{q_j,0}}$. hence $\displaystyle{x}$ is not in any $\displaystyle{U_{q_j,0}}$.

therefore $\displaystyle{x\not\in V\cup\left(\bigcup ^{m}_{j=1}U_{q_{j},0}\right)}$, contradicting the fact that $\displaystyle{x\in U_{a,b}\subseteq V\cup\left(\bigcup ^{m}_{j=1}U_{q_{j},0}\right)}$. hence our assumption is false: there must be infinitely many primes of the form $\displaystyle{an+b}$.

# problem 11

suppose $\displaystyle{A}$ is a compact subset of metric space $\displaystyle{X}$.
1. prove $\displaystyle{\exists x,y\in A, \text{ s.t. } d(x,y)}$ equals the diameter of $\displaystyle{A}$.
1. prove that $\displaystyle{\forall x\in X}$, $\displaystyle{\exists y\in A\text{ s.t. }d(x,A)=d(x,y)}$.
1. prove that $\displaystyle{\forall B\subset X}$ that is closed and disjoint from $\displaystyle{A}$, $\displaystyle{d(A,B)> 0}$.

*sol*.

# problem 12

suppose $\displaystyle{F:E^{1}\times E^{1}\to E^{1}}$ is defined as

$$\begin{align}
F(x,y) & =\begin{cases} \frac{xy}{x^{2}+y^{2}} & (x,y)\neq (0,0) \\
0 & (x,y)=(0,0)
\end{cases}
\end{align}$$

1. prove that $\displaystyle{F}$ is separately continuous
1. calculate $\displaystyle{g:E^{1}\to E^{1}}$ defined by $\displaystyle{g(x)=F(x,x)}$
1. prove that $\displaystyle{F}$ is not continuous

*sol*.
1. for fixed $y_0 \neq 0$, $F(x, y_0) = \frac{x y_0}{x^2 + y_0^2}$ is a rational function with non-zero denominator, hence continuous. At $y_0=0$, $F(x,0) = 0$ for all $x$, which is constant and continuous. same for fixed $x_0$.
1. $\displaystyle{g(x)=F(x,x)=\frac{x^2}{x^2+x^2}=\frac{1}{2}}$ for $\displaystyle{x\neq 0}$, and $\displaystyle{g(0)=0}$.
1. if $F$ were continuous at $(0,0)$, then $\lim_{x \to 0} g(x) = \lim_{x \to 0} F(x,x)$ should equal $F(0,0) = 0$. however, for $x \neq 0$, $g(x) = 1/2$, so the limit is $1/2 \neq 0$. thus $F$ is not continuous.

# problem 13

prove that $\displaystyle{S^{n}}$ is path-connected for all $\displaystyle{n\in \mathbb{N}^{+}}$.

*sol*. when $\displaystyle{n\geqslant 1}$, discard one point from $\displaystyle{S^{n}}$, the remaining space is homeomorphic to $\displaystyle{\mathbb{R}^{n}}$, which is path-connected, by stereographic projection. thus $\displaystyle{S^{n}}$ is path-connected.

# problem 14

prove that the product of two path-connected spaces is path-connected.

*sol*. suppose $\displaystyle{(x_{1},y_{1})}$ and $\displaystyle{(x_{2},y_{2})}$ are two points in $\displaystyle{X\times Y}$, where $\displaystyle{X,Y}$ are path-connected, then there exists a path $\displaystyle{f:[0,1]\to X}$ such that $\displaystyle{f(0)=x_{1}}$ and $\displaystyle{f(1)=x_{2}}$, and there exists a path $\displaystyle{g:[0,1]\to Y}$ such that $\displaystyle{g(0)=y_{1}}$ and $\displaystyle{g(1)=y_{2}}$. define a path $\displaystyle{h:[0,1]\to X\times Y}$ by

$$\begin{align}
h(t) & =\begin{cases}
(f(2t),y_{1}) & 0\leq t \leq \frac{1}{2} \\
(x_{2},g(2t-1)) & \frac{1}{2}\leq t \leq 1 \\
\end{cases}
\end{align}$$

then $\displaystyle{h(0)=(x_{1},y_{1})}$ and $\displaystyle{h(1)=(x_{2},y_{2})}$, thus $\displaystyle{X\times Y}$ is path-connected.

# problem 15

if we glue the Mobius band to itself along its boundary, what surface do we get?

*sol*. real projective plain $\displaystyle{\mathbb{R}P^{2}}$

# problem 16

describe the following spaces:

1. cylinder $\displaystyle{S^{1}\times[0,1]}$, and gluing its every boundary component to a point
1. torus $\displaystyle{T^{2}}$, and gluing the subset consisting of a meridian and a longitude to a point
1. sphere $\displaystyle{S^{2}}$, and gluing its equator to a point
1. $\displaystyle{E^{2}}$, and gluing every circle $\displaystyle{\{(x,y)|x^{2}+y^{2}=r^{2}\}}$ to a point for every $\displaystyle{r>0}$

*sol*.
1. **Sphere $S^2$**. (Collapsing the top circle to a point gives a cone/disk, collapsing the bottom circle gives another cone/disk. Two cones glued at their base form a sphere. Alternatively, this is the suspension of $S^1$, which is $S^2$.)
1. **Sphere $S^2$**. (The meridian and longitude form a wedge of two circles $S^1 \vee S^1$. The torus $T^2$ can be viewed as a cell complex $e^0 \cup e^1_1 \cup e^1_2 \cup e^2$. Collapsing the 1-skeleton ($S^1 \vee S^1$) to a point contracts everything except the interior of the 2-cell. The result is homeomorphic to $S^2$.)
1. **Wedge of two spheres $S^2 \vee S^2$**. (The equator divides the sphere into two hemispheres. Identifying the equator to a point pinches the sphere in the middle, resulting in two spheres touching at that point.)
1. **Half-line $[0,\infty)$**. (Each circle $x^2+y^2=r^2$ is identified to a point $r$. The origin is identified to $0$. The topology is the quotient topology, which corresponds to the standard topology on $[0,\infty)$.)

# problem 17

prove that $\displaystyle{\mathbb{Z}}$ with arithmetic progression topology is not connected, and every connected component is a single point.

*sol*. we have shown that each $\displaystyle{U_{a,b}}$ is both open and closed in $\displaystyle{\mathbb{Z}}$ with the arithmetic progression topology. then consider $\displaystyle{2\mathbb{Z}}$ and $\displaystyle{2\mathbb{Z}+1}$, they are disjoint and their union is $\displaystyle{\mathbb{Z}}$, thus they form a separation of $\displaystyle{\mathbb{Z}}$. hence $\displaystyle{\mathbb{Z}}$ is not connected.

$\displaystyle{\forall x,y\in \mathbb{Z}}$, let prime $\displaystyle{p>|x-y|}$, then $\displaystyle{x\not \equiv y\pmod{p}}$, so $\displaystyle{x \in U_{p,x\pmod{p}}}$ and $\displaystyle{y \in U_{p,y\pmod{p}}}$. these two open sets are disjoint, thus the space is Hausdorff.

let $\displaystyle{C}$ be a connected component containing $\displaystyle{x}$. if $\displaystyle{y\in C}$ and $\displaystyle{y\neq x}$, we can find disjoint open sets $\displaystyle{U,V}$ separating $\displaystyle{x}$ and $\displaystyle{y}$ as shown above. $\displaystyle{C\subset U\cup V}$ implies $\displaystyle{C=(C\cap U)\cup(C\cap V)}$. since $\displaystyle{C}$ is connected, one must be empty, contradiction. so connected components are indeed single points.

# problem 18

suppose $\displaystyle{f:X\to Y}$ is continuous and closed, the coimage of $\displaystyle{y\in Y}$ is compact in $\displaystyle{X}$. prove that if $\displaystyle{K}$ is compact in $\displaystyle{Y}$, then $\displaystyle{f^{-1}(K)}$ is compact in $\displaystyle{X}$.

*sol*. for $\displaystyle{y\in Y}$, consider open cover $\displaystyle{U_{\alpha},\alpha \in A}$ of $\displaystyle{f^{-1}(y)}$. since $\displaystyle{f\left( X-\bigcup _{\alpha \in A}U_{\alpha} \right)}$ is closed, $\displaystyle{\exists V_{y}\subset Y,\text{ s.t. }f^{-1}(V_{y})\subset \bigcup _{\alpha \in A}U_{\alpha}}$, then $\displaystyle{\left\{V_{y}|y\in K\right\}}$ is an open cover of $\displaystyle{K}$. since $\displaystyle{K}$ is compact, $\displaystyle{\exists y_1,y_2,\ldots,y_n\in K}$ such that $\displaystyle{K\subseteq \bigcup _{i=1}^{n}V_{y_i}}$. thus, $\displaystyle{f^{-1}(K)\subseteq \bigcup _{i=1}^{n}f^{-1}(V_{y_i})\subseteq \bigcup _{\alpha \in A}U_{\alpha}}$. since each $\displaystyle{f^{-1}(V_{y_i})}$ can be covered by finitely many $\displaystyle{U_{\alpha}}$, we conclude that $\displaystyle{f^{-1}(K)}$ is compact.
