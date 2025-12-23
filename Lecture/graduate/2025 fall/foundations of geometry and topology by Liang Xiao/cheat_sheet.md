suppose $\displaystyle{\vec{r}(t)}$ is a curve in $\displaystyle{\mathbb{R}^{3}}$ parameterized by $\displaystyle{t}$, we have the Frenet frame $\displaystyle{(\vec{T},\vec{N},\vec{B})}$ defined as

$$\begin{align}
\vec{T} & = \frac{\vec{r}'(t)}{|\vec{r}'(t)|} \\
\vec{N} & = \frac{\vec{T}'(t)}{|\vec{T}'(t)|} \\
\vec{B} & = \vec{T}\times \vec{N}
\end{align}$$

when parameterized by the arc length $\displaystyle{s}$, the Frenet frame is an orthonormal basis along the curve which satisfies the Frenet-Serret formulas

$$\begin{align}
\vec{T}' & =  & \kappa \vec{N} \\
\vec{N}' & =-\kappa \vec{T} &  & & +\tau \vec{B} \\
\vec{B}' & = & -\tau \vec{N}
\end{align}$$

where $\displaystyle{\kappa}$ is the curvature and $\displaystyle{\tau}$ is the torsion of the curve. when parameterized by a general parameter $\displaystyle{t}$, we have

$$\begin{align}
\vec{T}' & =  & \frac{\kappa}{|\vec{r}'|}\vec{N} \\
\vec{N}' & =-\frac{\kappa}{|\vec{r}'|}\vec{T} &  & & +\frac{\tau}{|\vec{r}'|}\vec{B} \\
\vec{B}' & = & -\frac{\tau}{|\vec{r}'|}\vec{N}
\end{align}$$

---

$$\begin{align}
x & =\int _{0}^{s}\cos \theta(s')\mathrm{d}s' \\
y & =\int _{0}^{s}\sin \theta(s')\mathrm{d}s' \\
\theta(s) & =\int _{0}^{s}\kappa (s')\mathrm{d}s'
\end{align}$$

---

surface parameterized by $\displaystyle{(u,v)}$. tangent vectors

$$\begin{align}
\vec{r}_{u} & =\frac{\partial \vec{r}}{\partial u} \\
\vec{r}_{v} & =\frac{\partial \vec{r}}{\partial v}
\end{align}$$

and the normal vector

$$\begin{align}
\vec{n} & =\frac{\vec{r}_{u}\times \vec{r}_{v}}{|\vec{r}_{u}\times \vec{r}_{v}|}
\end{align}$$

we have

$$\begin{align}
\vec{n}_{u} & =a_{11}\vec{r}_{u}+a_{12}\vec{r}_{v} \\
\vec{n}_{v} & =a_{21}\vec{r}_{u}+a_{22}\vec{r}_{v}
\end{align}$$

the eigenvalues of matrix $\displaystyle{(a_{ij})}$ are the principal curvatures $\displaystyle{\kappa _{1},\kappa _{2}}$. the mean curvature $\displaystyle{H}$ and Gaussian curvature $\displaystyle{K}$ are defined as

$$\begin{align}
H & =\frac{\kappa _{1}+\kappa _{2}}{2} \\
K & =\kappa _{1}\kappa _{2}
\end{align}$$

the first fundamental form is

$$\begin{align}
\mathrm{d}s^{2} & =E\mathrm{d}u^{2}+2F\mathrm{d}u\mathrm{d}v+G\mathrm{d}v^{2} \\
E & =\vec{r}_{u}\cdot \vec{r}_{u} \\
F & =\vec{r}_{u}\cdot \vec{r}_{v} \\
G & =\vec{r}_{v}\cdot \vec{r}_{v}
\end{align}$$

is actually the induced metric on the surface. the second fundamental form is

$$\begin{align}
\mathrm{d}n^{2} & =L\mathrm{d}u^{2}+2M\mathrm{d}u\mathrm{d}v+N\mathrm{d}v^{2} \\
L & =\vec{r}_{uu}\cdot \vec{n} \\
M & =\vec{r}_{uv}\cdot \vec{n} \\
N & =\vec{r}_{vv}\cdot \vec{n}
\end{align}$$

the mean curvature and Gaussian curvature can be expressed in terms of the first and second fundamental forms as

$$\begin{align}
K & =\frac{LN-M^{2}}{EG-F^{2}} \\
H & =\frac{GL-2FM+EN}{2(EG-F^{2})}
\end{align}$$

---

moving frame method:

$$\begin{align}
I & = \omega _{i}^{2} \\
II & = \omega _{i3}\omega _{i}
\end{align}$$

here $\displaystyle{\omega _{i},\omega _{ij}}$ satisfies the structure equations and the Gauss-Codazzi equations

$$\begin{align}
\mathrm{d}\omega _{i} & =\omega _{ij}\wedge \omega _{j} \\
\mathrm{d}\omega _{ij} & =\omega _{ik}\wedge \omega _{kj}
\end{align}$$

and the Gauss curvature is given by

$$\begin{align}
\mathrm{d}\omega _{12} & =-K\omega _{1}\wedge \omega _{2}
\end{align}$$

---

point set topology

open set, closed set, limit point, interior, closure, boundary.

topological space:
1. the union of any collection of open sets is open.
2. the finite intersection of open sets is open.
3. the empty set and the whole space are open.

topological basis:
- any open set can be expressed as a union of basis elements.

continuous function $\displaystyle{f:X\to Y}$
- the coimage of any open set in $\displaystyle{Y}$ is an open set in $\displaystyle{X}$.
- for any $\displaystyle{x\in X}$, for any neighborhood $\displaystyle{V}$ of $\displaystyle{f(x)}$, there exists a neighborhood $\displaystyle{U}$ of $\displaystyle{x}$ such that $\displaystyle{f(U)\subset V}$.

Hausdorff space: any two points have disjoint open neighborhoods.

what is neighborhood of a point? a set that contains an open set which contains the point.

---

compactness: any open cover has a finit subcover. 
- any open cover that consists of basis elements has a finite subcover.
- compact subset is compact under the subspace topology, that is, a open set of the subset is the intersection of the subset with a open set of the whole space.
- compact subset of a Hausdorff space is closed.
- the image of compact set under a continuous map is compact.
- closed subset of a compact set is compact.
- closed subset of Hausdorff space is compact
- continuous bijection from compact space to Hausdorff space is a homeomorphism.
- continuous real-valued function on a compact space attains its maximum and minimum.

connectedness: if $\displaystyle{X=A\cup B}$, then $\displaystyle{\bar{A}\cap B\neq \emptyset}$ or $\displaystyle{A\cap \bar{B}\neq \emptyset}$.
- when $\displaystyle{X}$ is not connected, $\displaystyle{X}$ can be decomposed into disjoint nonempty open sets (closed sets)
- the continuous image of connected set is connected.
- in a connected space, the only subsets that are both open and closed are the empty set and the whole space.
- middle value theorem: continuous function from connected space to $\displaystyle{\mathbb{R}}$ attains all intermediate values.
- $\displaystyle{X\times Y}$ is connected iff both $\displaystyle{X}$ and $\displaystyle{Y}$ are connected.

path connectedness: any two points can be connected by a continuous curve.
- path connectedness implies connectedness

soldering. suppose $\displaystyle{X}$ and $\displaystyle{Y}$ are subspaces of some topological space. suppose $\displaystyle{f:X\to Z,g:Y\to Z}$, and $\displaystyle{f=g, \forall x \in X\cap Y}$, define the soldered map as $\displaystyle{f\cup g:X\cup Y\to Z}$ in the natural way. the if $\displaystyle{X}$ and $\displaystyle{Y}$ are closed in $\displaystyle{X\cup Y}$, and $\displaystyle{f}$ and $\displaystyle{g}$ are continuous, then $\displaystyle{f\cup g}$ is continuous.


