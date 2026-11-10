# Algebraic Topology of Four-Dimensional Manifolds

**AST-01 — DRAFT study chapter**

## Abstract

Four-dimensional manifolds can be studied through loops, higher-dimensional spheres, chains, cup products, and the behavior of neighborhoods at infinity. These constructions answer different questions: homology counts cycles, the fundamental group retains noncommutative loop information, and the intersection form records how two-dimensional cycles meet. This chapter develops the constructions needed to calculate these invariants for spheres, tori, products, and connected sums. Detailed examples include the Hopf fibration, the hyperbolic intersection forms of the four-torus and the product of two spheres, an explicit proof of the fixed-point theorem for the four-ball, and a quaternionic frame on the three-sphere. Relative homology explains boundary gluing and doubling. Characteristic classes distinguish spin structures and global time directions from purely topological data. The chapter also states the precise simply connected classification and smooth bordism results used here, while keeping torsion, smoothability, and noncompactness visible.

## 1. What Structure Is Being Studied?

A topological four-manifold is a Hausdorff, second-countable space in which every point has a neighborhood homeomorphic to an open subset of $\mathbb R^4$. A manifold with boundary instead permits charts in the half-space $\mathbb R^4_+=\{x_4\geq0\}$; its boundary consists of points corresponding to $x_4=0$. Unless stated otherwise, manifolds are connected. **Closed** means compact and without boundary, not merely a closed subset of a larger space.

A homeomorphism preserves the topology. A smooth structure specifies which coordinate changes are differentiable, and a diffeomorphism preserves that additional structure. A homotopy between maps $f_0,f_1:X\to Y$ is a continuous map $F:X\times[0,1]\to Y$ with endpoints $f_0,f_1$. A homotopy equivalence consists of maps in both directions whose compositions are homotopic to the identities. Homeomorphism implies homotopy equivalence; the converse generally fails.

We use integral homology and cohomology unless another coefficient group is displayed. Their ranks are the Betti numbers $b_k$. An orientation on a closed connected $n$-manifold selects a fundamental class $[M]\in H_n(M;\mathbb Z)$, represented informally by the sum of consistently oriented top-dimensional pieces. Reversing the orientation changes this class to $-[M]$. Product orientations put the oriented basis of the first factor before that of the second.

The examples considered below are ordinary smooth manifolds, but results about homeomorphisms, homology, and ends do not require a chosen smooth structure. Tangent vector fields, differential metrics, and the vector-bundle calculations in Section 10 do require one. An arbitrary topological four-manifold must not silently be treated as smooth.

A Lorentzian spacetime requires still more: a smooth metric of signature $(- ,+,+,+)$. A topological manifold is only a candidate underlying space. In particular, $S^4$ is a smooth oriented four-manifold but has no Lorentzian metric. The obstruction and the role of time orientation are explained in Section 10.

Finite products of the spheres $S^m$, circles $S^1$, and Euclidean spaces are smooth, second countable, orientable, and paracompact. The product charts prove the dimension formula. Thus

$$\begin{align}
\mathbb R^4,\quad \mathbb R\times S^3,\quad \mathbb R\times T^3,\quad S^4,\quad S^2\times S^2, \qquad T^m=(S^1)^m,
\end{align}$$

are four-manifolds. Second-countable manifolds are metrizable and paracompact; no general assertion that arbitrary products of paracompact spaces remain paracompact is needed.

## 2. Two Explicit Compactifications

Let $N=(0,0,0,0,1)\in S^4\subset\mathbb R^5$. The map

$$\begin{align}
s(x)=\left(\frac{2x}{1+|x|^2}, \frac{|x|^2-1}{1+|x|^2}\right) \tag{2.1}
\end{align}$$

identifies $\mathbb R^4$ with $S^4\setminus\{N\}$. Indeed, writing $r=|x|^2$, the squared norm of the right-hand side is

$$\begin{align}
\frac{4r+(r-1)^2}{(1+r)^2}=1.
\end{align}$$

If $(y,u)\in S^4$ and $u\ne1$, the inverse is $x=y/(1-u)$. Both maps are continuous and smooth on their domains. The analogous chart excluding the south pole completes an atlas.

In the one-point compactification of a locally compact noncompact Hausdorff space, a neighborhood of the added point is the complement of a compact subset. Since $s(x)\to N$ as $|x|\to\infty$, extending $s(\infty)=N$ is continuous for precisely this topology. It is a continuous bijection from a compact space to a Hausdorff space, hence a homeomorphism:

$$\begin{align}
(\mathbb R^4)^+\cong S^4.
 \tag{2.2}
\end{align}$$

There is a different compactification of a cylinder. The suspension of $S^3$ is the quotient

$$\begin{align}
\Sigma S^3=(S^3\times[-1,1])/\!\sim,
\end{align}$$

where each of the two end slices is collapsed to its own point. Define

$$\begin{align}
F(x,u)=(\sqrt{1-u^2}\,x,u). \tag{2.3}
\end{align}$$

This lies on $S^4$, is constant on each collapsed slice, and is one-to-one away from them: the last coordinate recovers $u$, and the first four recover $x$ when $|u|<1$. The induced continuous bijection is again a homeomorphism by compactness. Since $t\mapsto\tanh t$ identifies $\mathbb R$ with $(-1,1)$,

$$\begin{align}
\mathbb R\times S^3\cong S^4\setminus\{N,S\}.
 \tag{2.4}
\end{align}$$

Adding its two ends separately therefore gives $S^4$. It is not the one-point compactification of the cylinder: adding just one point identifies those two poles.

## 3. Chains, Homology, and Euler Characteristic

### 3.1 Cycles Modulo Boundaries

An oriented singular $k$-simplex in $X$ is a continuous map from the standard $k$-simplex to $X$. Finite integral linear combinations form $C_k(X)$. The boundary operator takes an alternating sum of face restrictions; each codimension-two face occurs twice with opposite signs, so $\partial^2=0$. Consequently boundaries are cycles, and

$$\begin{align}
H_k(X)=\ker(\partial:C_k\to C_{k-1})/ \operatorname{im}(\partial:C_{k+1}\to C_k). \tag{3.1}
\end{align}$$

A continuous map acts by composition on simplices, commutes with $\partial$, and induces a homomorphism on homology. Homotopic maps induce the same homomorphism. In particular, a deformation retraction may replace a space by a simpler subspace for these calculations.

For a path-connected space, $H_0\cong\mathbb Z$; in general there is one generator for each path component. Reduced homology $\widetilde H_0$ removes one such generator. Higher reduced homology agrees with ordinary homology.

For calculations, a CW complex builds a space by successively attaching disks along their boundary spheres. Its $k$-cells give a free cellular chain group. The cellular boundary records the signed degrees with which attaching maps meet the next lower cells. Cellular homology agrees with singular homology; this is the theorem that allows a finite cell diagram to replace the much larger singular chain complex [1, Chapters 0–2].

A sphere $S^m$, $m\geq1$, has a CW structure with one zero-cell and one $m$-cell. Its cellular boundaries vanish, giving

$$
H_k(S^m)=
 \begin{cases}\mathbb Z,& k=0,m,\\0,&\text{otherwise}.\end{cases}
 \tag{3.2}
$$

For $S^1$, the boundary of the one-cell vanishes because its two endpoints attach to the same vertex with opposite signs.

The usual cell structure on $T^2$ has one vertex, two edges $a,b$, and one face. The face attaches along $aba^{-1}b^{-1}$; its total exponent in each edge is zero. Thus both cellular boundary maps vanish, and

$$\begin{align}
(H_0,H_1,H_2)(T^2)=(\mathbb Z,\mathbb Z^2,\mathbb Z).
\end{align}$$

### 3.2 Products and the Model Calculations

For spaces of CW type whose relevant homology groups are free abelian, the Künneth theorem gives

$$\begin{align}
H_k(X\times Y)\cong \bigoplus_{p+q=k}H_p(X)\otimes H_q(Y). \tag{3.3}
\end{align}$$

Without the freeness assumption there are additional $\operatorname{Tor}$ terms; they may not be discarded. Iterating the free formula for circles amounts to choosing which circle factors contribute degree one:

$$\begin{align}
H_k(T^m)\cong\mathbb Z^{\binom{m}{k}}.
\end{align}$$

In particular,

$$\begin{align}
(b_0,b_1,b_2,b_3,b_4)(T^4)=(1,4,6,4,1). \tag{3.4}
\end{align}$$

The projection $\mathbb R\times Y\to Y$ is a homotopy equivalence, with homotopy $(t,y)\mapsto((1-s)t,y)$. The integral homology of the main models is therefore

| Space | Nonzero integral homology groups |
|---|---|
| $\mathbb R^4$ | $H_0=\mathbb Z$ |
| $\mathbb R\times S^3$ | $H_0=H_3=\mathbb Z$ |
| $\mathbb R\times T^3$ | $H_k=\mathbb Z^{\binom3k}$, $0\leq k\leq3$ |
| $S^4$ | $H_0=H_4=\mathbb Z$ |
| $S^2\times S^2$ | $H_0=H_4=\mathbb Z$, $H_2=\mathbb Z^2$ |
| $T^4$ | $H_k=\mathbb Z^{\binom4k}$ |

For a finite CW complex, or a space homotopy equivalent to one, define

$$\begin{align}
\chi(X)=\sum_k(-1)^k b_k(X).
\end{align}$$

It equals the alternating sum of cell numbers. To see this, set $Z_k=\ker\partial_k$ and $B_k=\operatorname{im}\partial_{k+1}$. The rank identities $\operatorname{rank}C_k=\operatorname{rank}Z_k+\operatorname{rank}B_{k-1}$ and $\operatorname{rank}Z_k=b_k+\operatorname{rank}B_k$ cancel all boundary ranks in the alternating sum.

The product cells have dimensions $p+q$, so

$$\begin{align}
\chi(X\times Y)= \sum_{p,q}(-1)^{p+q}n_p(X)n_q(Y)=\chi(X)\chi(Y). \tag{3.5}
\end{align}$$

Hence $\chi(T^4)=0$, $\chi(S^2\times S^2)=4$, $\chi(S^2\times I)=2$, and $\chi(S^3\times I)=0$, where $I=[0,1]$. The values $\chi(\mathbb R^4)=1$ and $\chi(\mathbb R\times S^3)=0$ refer to ordinary homology, not compactly supported cohomology. Closed-manifold vector-field formulas must not be applied to these noncompact examples without their hypotheses.

## 4. Loops, Coverings, and Higher Homotopy

### 4.1 Fundamental Groups and Covering Maps

The fundamental group $\pi_1(X,x_0)$ consists of based loops modulo homotopy fixing the base point. Multiplication traverses one loop after the other. For $k\geq2$, $\pi_k(X,x_0)$ similarly uses based maps $S^k\to X$; these groups are abelian. Unlike $H_1$, the fundamental group need not be abelian. In fact $H_1(X;\mathbb Z)$ is its abelianization for path-connected spaces.

A covering map is locally a disjoint union of copies of the base: paths and homotopies lift uniquely after an initial point is chosen. For $\mathbb R\to S^1$, $t\mapsto e^{it}$, a loop based at $1$ lifts from $0$ to $2\pi n$. Concatenation adds $n$, and the integer classifies loops. A map $S^k\to S^1$, $k\geq2$, lifts to $\mathbb R$ because $S^k$ is simply connected, and is null-homotopic there. Thus

$$\begin{align}
\pi_1(S^1)=\mathbb Z,\qquad \pi_k(S^1)=0\quad(k\geq2). \tag{4.1}
\end{align}$$

The van Kampen theorem computes $\pi_1(A\cup B)$ for path-connected open sets with path-connected intersection by identifying the two images of $\pi_1(A\cap B)$ in the free product of the two groups. Thickened hemispheres show $S^n$ is simply connected for $n\geq2$: each hemisphere is contractible and their overlap is path connected. For $T^2$, the square attaching word gives

$$\begin{align}
\pi_1(T^2)=\langle a,b\mid aba^{-1}b^{-1}=1\rangle=\mathbb Z^2.
\end{align}$$

Maps and homotopies into a product are specified coordinatewise, so

$$\begin{align}
\pi_k(X\times Y)\cong\pi_k(X)\times\pi_k(Y).
 \tag{4.2}
\end{align}$$

Consequently $\pi_1(T^m)=\mathbb Z^m$, with universal cover $\mathbb R^m$. For the cylinder over $T^3$, the covering is explicitly

$$\begin{align}
(t,\theta_1,\theta_2,\theta_3)\longmapsto
 (t,e^{i\theta_1},e^{i\theta_2},e^{i\theta_3}).
 \tag{4.3}
\end{align}$$

Deck transformations translate the three angles by $2\pi\mathbb Z^3$.

For connected manifolds, based connected coverings correspond to subgroups of the fundamental group; unbased connected coverings correspond to conjugacy classes of subgroups. All subgroups of $\mathbb Z^3$ are normal, and the deck group of the covering associated with $H\leq\mathbb Z^3$ is $\mathbb Z^3/H$. This describes coverings, not a classification of all manifolds having that fundamental group.

### 4.2 The First Homotopy Groups of Spheres

Cellular approximation says that a map between CW complexes is homotopic to one taking each skeleton into the corresponding skeleton. Since the $k$-skeleton of the two-cell structure on $S^n$ is a point for $k<n$,

$$\begin{align}
\pi_k(S^n)=0\qquad(1\leq k<n). \tag{4.4}
\end{align}$$

The Hurewicz theorem states that for an $(n-1)$-connected space of CW type, $n\geq2$, the natural map $\pi_n\to H_n(-;\mathbb Z)$ is an isomorphism. Applying it to the spheres gives

$$\begin{align}
\pi_n(S^n)=\mathbb Z\qquad(n\geq2). \tag{4.5}
\end{align}$$

The isomorphism is degree: $f_*[S^n]=\deg(f)[S^n]$, and the identity has degree one. These results determine the first nonzero group, not every higher homotopy group.

## 5. The Hopf Fibration, with Its Fibers and Linking Number

### 5.1 Constructing the Bundle

Write

$$\begin{align}
S^3=\{(z_1,z_2)\in\mathbb C^2:|z_1|^2+|z_2|^2=1\}.
\end{align}$$

The complex projective line $\mathbb{CP}^1$ is the set of one-dimensional complex subspaces of $\mathbb C^2$. Coordinates $[z_1:z_2]$ identify nonzero scalar multiples. Define

$$\begin{align}
h:S^3\longrightarrow\mathbb{CP}^1,\qquad h(z_1,z_2)=[z_1:z_2]. \tag{5.1}
\end{align}$$

Two unit vectors lie on the same complex line precisely when they differ by a phase. Each fiber is therefore a circle $\{(\lambda z_1,\lambda z_2):\lambda\in S^1\}$.

On $U_2=\{z_2\ne0\}$, put $w=z_1/z_2$. The map

$$\begin{align}
[w:1]\longmapsto \left(\frac{2\operatorname{Re}w}{1+|w|^2}, \frac{2\operatorname{Im}w}{1+|w|^2}, \frac{|w|^2-1}{1+|w|^2}\right)
 \tag{5.2}
\end{align}$$

identifies $\mathbb{CP}^1$ with $S^2$, taking $[1:0]$ to the north pole. Its inverse away from that pole is $w=(X+iY)/(1-Z)$. The norm and continuity checks are the two-dimensional versions of Section 2.

For actual local trivializations, choose sections

$$\begin{align}
s_2(w)=\frac{(w,1)}{\sqrt{1+|w|^2}},\qquad s_1(v)=\frac{(1,v)}{\sqrt{1+|v|^2}},\quad v=z_2/z_1.
\end{align}$$

The maps $(w,\lambda)\mapsto\lambda s_2(w)$ and $(v,\lambda)\mapsto\lambda s_1(v)$ are bundle charts. In the first chart the inverse reads off
$w=z_1/z_2$ and $\lambda=z_2/|z_2|$; the second reads off $\lambda=z_1/|z_1|$. On the overlap,

$$\begin{align}
s_1(1/w)=\frac{|w|}{w}s_2(w),\qquad \lambda_1=\frac{w}{|w|}\lambda_2. \tag{5.3}
\end{align}$$

This proves local product structure over a cover of the whole base, not merely over one coordinate patch. We have constructed the fiber bundle $S^1\hookrightarrow S^3\xrightarrow{h}S^2$.

### 5.2 Reading the Homotopy Exact Sequence

A fiber bundle has a long exact sequence of homotopy groups [1, Section 4.2]:

$$\begin{align}
\cdots\to\pi_k(F)\to\pi_k(E)\to\pi_k(B) \xrightarrow{\partial}\pi_{k-1}(F)\to\cdots. \tag{5.4}
\end{align}$$

Exact means that the image of one homomorphism is the kernel of the next. Geometrically the connecting map measures the obstruction to lifting a sphere in the base to a sphere in the total space.

For $k\geq3$, the two adjoining groups of the circle vanish, so

$$\begin{align}
0\longrightarrow\pi_k(S^3)\xrightarrow{h_*}\pi_k(S^2)
   \longrightarrow0.
 \tag{5.5}
\end{align}$$

Thus $h_*$ is an isomorphism. At $k=3$, it sends the identity of $S^3$ to $h$, giving

$$\begin{align}
\pi_3(S^2)=\mathbb Z, \qquad [h]\text{ is a generator}. \tag{5.6}
\end{align}$$

At $k=2$, cellular approximation and simple connectivity give

$$\begin{align}
0=\pi_2(S^3)\longrightarrow\pi_2(S^2) \xrightarrow{\partial}\pi_1(S^1)=\mathbb Z \longrightarrow\pi_1(S^3)=0.
\end{align}$$

Hence $\partial$ is an isomorphism and $\pi_2(S^2)=\mathbb Z$; its sign depends on orientation and generator choices.

As a further theorem, $\pi_4(S^3)=\mathbb Z/2$ [1, Section 4.2]. The suspension map from $\pi_3(S^2)$ is surjective, but surjectivity alone does not compute its kernel or establish the order two. The stated finite group is a separate classical sphere-homotopy calculation.

### 5.3 A Spanning Disk for a Hopf Fiber

For a smooth map $S^3\to S^2$, the inverse images of regular values are oriented links: generally finite unions of circles, not necessarily single circles. The Hopf invariant can be computed as the linking number of two such inverse images. This linking description is an established theorem [7]; a continuous map may first be replaced by a smooth representative of its homotopy class.

For $h$, choose the two fibers

$$\begin{align}
L_p=\{(e^{i\theta},0)\},\qquad L_q=\{(0,e^{i\varphi})\}.
\end{align}$$

A disk spanning $L_q$ is

$$\begin{align}
D=\{(\sqrt{1-|z|^2},z):|z|\leq1\}\subset S^3. \tag{5.7}
\end{align}$$

Its graph parameter is not a smooth boundary chart at $|z|=1$, but the surface itself is smooth: it is the hemisphere
$\{\operatorname{Im}z_1=0,\operatorname{Re}z_1\geq0\}\cap S^3$.
Near the boundary one can instead use $(s,\varphi)\mapsto(\cos s,\sin s\,e^{i\varphi})$.

The intersection with $L_p$ requires $z=0$ and gives exactly $(1,0)$. At that point, in coordinates $(x_1,y_1,x_2,y_2)$, the disk tangent plane is spanned by $\partial_{x_2},\partial_{y_2}$, while the circle tangent is $\partial_{y_1}$. They span $T_{(1,0)}S^3$, so the intersection is transverse. Orient $S^3$ as the boundary of the unit ball in this coordinate order, and orient both displayed circles by increasing phase. Orienting $D$ so its boundary is $L_q$ makes this intersection positive. Thus these oriented circles have linking number $+1$. With the compatible convention for the Hopf invariant,

$$\begin{align}
H(h)=1; \quad\text{reversing the relevant orientation convention changes the sign.} \tag{5.8}
\end{align}$$

The magnitude one is convention independent and agrees with the generator computation.

### 5.4 Homotopy Information for the Models

Contractible factors do not contribute homotopy groups. Combining Sections 4–5 gives

| Space | Homotopy groups determined here |
|---|---|
| $\mathbb R^4$ | $\pi_k=0$ for all $k\geq1$ |
| $\mathbb R\times S^3$ | $\pi_1=\pi_2=0$, $\pi_3=\mathbb Z$, $\pi_4=\mathbb Z/2$ |
| $\mathbb R\times T^3$ | $\pi_1=\mathbb Z^3$, $\pi_k=0$ for $k\geq2$ |
| $S^4$ | $\pi_k=0$ for $1\leq k<4$, $\pi_4=\mathbb Z$ |
| $S^2\times S^2$ | $\pi_1=0$, $\pi_2=\mathbb Z^2$, $\pi_3=\mathbb Z^2$ |

The higher groups of $T^3$ vanish because covering maps induce isomorphisms on $\pi_k$ for $k\geq2$, and its universal cover is contractible.

## 6. Cohomology, Duality, and the Intersection Form

### 6.1 Why Homology Groups Alone Are Not Enough

Cochains are homomorphisms $C_k(X)\to\mathbb Z$; their coboundary is dual to $\partial$. Their cohomology carries a cup product $H^p(X)\times H^q(X)\to H^{p+q}(X)$, which is natural under pullback. Its graded commutativity is

$$\begin{align}
\alpha\smile\beta=(-1)^{pq}\beta\smile\alpha. \tag{6.1}
\end{align}$$

For odd-degree $\alpha$, this implies only $2\alpha^2=0$. A zero square follows if the target group has no two-torsion, as it does for the tori.

The multiplicative Künneth theorem and the circle-factor pullbacks $\alpha_i$ give

$$\begin{align}
H^*(T^4;\mathbb Z)=\Lambda_{\mathbb Z}(\alpha_1,\alpha_2,\alpha_3,\alpha_4), \quad |\alpha_i|=1. \tag{6.2}
\end{align}$$

This is the exterior algebra: each increasing product of distinct generators gives a basis element, repeated generators vanish, and exchanging two generators changes the sign. Orient $T^4$ so $\langle\alpha_1\alpha_2\alpha_3\alpha_4,[T^4]\rangle=1$. For $S^2\times S^2$, pulling back the positive degree-two classes of the factors gives

$$\begin{align}
H^*(S^2\times S^2;\mathbb Z)=\mathbb Z[u,v]/(u^2,v^2), \quad |u|=|v|=2,\quad \langle uv,[S^2\times S^2]\rangle=1. \tag{6.3}
\end{align}$$

The relations follow from the dimension of each factor; the additive basis and the nonzero mixed product follow from Künneth. Graded commutativity alone would not determine either ring.

### 6.2 Poincaré Duality and Torsion

For a closed oriented $n$-manifold, cap product with its fundamental class is an isomorphism

$$\begin{align}
\operatorname{PD}:H^k(M;\mathbb Z)\xrightarrow{\ \cong\ }H_{n-k}(M;\mathbb Z).
 \tag{6.4}
\end{align}$$

For odd $n$, it implies $b_k=b_{n-k}$; opposite terms cancel in the Euler sum. Every closed oriented odd-dimensional manifold therefore has $\chi=0$, including a disconnected one by summing components.

Integral cohomology is related to homology by the universal coefficient exact sequence

$$\begin{align}
0\longrightarrow\operatorname{Ext}^1(H_{k-1}(M),\mathbb Z) \longrightarrow H^k(M) \longrightarrow\operatorname{Hom}(H_k(M),\mathbb Z)
 \longrightarrow0.
 \tag{6.5}
\end{align}$$

For finitely generated groups, $\operatorname{Ext}^1(\mathbb Z/r,\mathbb Z)=\mathbb Z/r$, whereas $\operatorname{Hom}(\mathbb Z/r,\mathbb Z)=0$. Thus replacing cohomology by the dual of homology loses torsion unless its absence has been established.

Write $T=\operatorname{Tor}H_1(M;\mathbb Z)$. In dimension four, the duality and coefficient theorems give the following group isomorphism types:

$$
\begin{aligned}
 H_0&=H_4=\mathbb Z, & H_1&=\mathbb Z^{b_1}\oplus T,\\
 H_3&=\mathbb Z^{b_1}, & H_2&\cong\mathbb Z^{b_2}\oplus T.
 \end{aligned}
 \tag{6.6}
$$

For example, $H_3\cong H^1\cong\operatorname{Hom}(H_1,\mathbb Z)$ is free, while the torsion of $H_2\cong H^2$ is $\operatorname{Ext}^1(H_1,\mathbb Z)$. The isomorphism between the two torsion groups need not be canonical.

### 6.3 The Free Intersection Lattice

In a closed oriented four-manifold define

$$\begin{align}
Q_M(a,b)=\langle a\smile b,[M]\rangle, \qquad a,b\in L_M=H^2(M;\mathbb Z)/\operatorname{Tor}. \tag{6.7}
\end{align}$$

It descends to the quotient because a torsion cup product evaluates to zero in $H^4(M)\cong\mathbb Z$. Degree two is even, so $Q_M$ is symmetric. Duality identifies it with the signed intersection number of the two dual two-dimensional homology classes. In smooth examples, transverse oriented representatives make this picture explicit; the cohomological definition also works without smooth representatives.

Duality and (6.5) imply that the map $L_M\to\operatorname{Hom}(L_M,\mathbb Z)$, $a\mapsto Q_M(a,-)$, is an isomorphism. This is an integral perfect pairing. If $A$ is its matrix in an integral basis, $A^{-1}$ has integral entries; hence

$$\begin{align}
\det A=\pm1. \tag{6.8}
\end{align}$$

Such a form is **unimodular**. This statement concerns the free lattice, not an attempted nondegenerate pairing on torsion classes.

Over $\mathbb R$, the form has $b_2^+$ positive and $b_2^-$ negative eigenvalues. Its signature is $\sigma=b_2^+-b_2^-$, and

$$
\begin{aligned}
 (b_0,b_1,b_2,b_3,b_4)&=(1,b_1,\operatorname{rank}Q_M,b_1,1),\\
 \chi(M)&=2-2b_1+b_2,\\
 \chi(M)-\sigma(M)&=2(1-b_1+b_2^-).
 \end{aligned}
 \tag{6.9}
$$

In particular $\chi\equiv\sigma\pmod2$. The Betti numbers are determined by $b_1$ and the form, but (6.6) shows exactly which extra torsion information is required for integral homology.

### 6.4 Worked Forms and Their Signs

On $S^2\times S^2$, use $x=[S^2\times\{p\}]$, $y=[\{q\}\times S^2]$. Moving $p$ to a different point gives a disjoint representative of $x$, so $x^2=0$; similarly $y^2=0$. The two factors meet in one positively oriented point, so

$$
Q_{S^2\times S^2}=H=\begin{pmatrix}0&1\\1&0\end{pmatrix},
 \qquad\det H=-1,\quad\sigma(H)=0.
 \tag{6.10}
$$

Every vector $(m,n)$ has square $2mn$, so $H$ is even.

For $T^4$, let $e_{ij}$ be the oriented coordinate two-torus in directions $i<j$. If two such tori share an active direction, at least one coordinate is inactive in both. Translate one representative in that common inactive coordinate to make them disjoint. This proves the zero intersection in that case; translating in a shared active direction would not separate them. Complementary pairs meet at one point, with signs

$$\begin{align}
e_{12}\cdot e_{34}=1,\qquad e_{13}\cdot e_{24}=-1,\qquad e_{14}\cdot e_{23}=1.
\end{align}$$

These are the signs of the corresponding permutations of $(1,2,3,4)$. Thus the ordered integral basis

$$\begin{align}
(e_{12},e_{34},\ e_{13},-e_{24},\ e_{14},e_{23})
\end{align}$$

gives

$$\begin{align}
Q_{T^4}\cong H\oplus H\oplus H, \qquad\det Q=-1,\quad\sigma=0. \tag{6.11}
\end{align}$$

The explicit sign change on $e_{24}$ is needed to make all three blocks the displayed $H$.

Finally $\mathbb{CP}^2$, with its complex orientation, has one cell in each of dimensions $0,2,4$. A projective line represents its degree-two generator. Two distinct projective lines intersect in one point; the intersection is positive because their normal and tangent coordinates are complex oriented. Consequently

$$\begin{align}
H^*(\mathbb{CP}^2;\mathbb Z)=\mathbb Z[h]/(h^3),\quad |h|=2, \quad\langle h^2,[\mathbb{CP}^2]\rangle=1, \quad Q_{\mathbb{CP}^2}=[1]. \tag{6.12}
\end{align}$$

This fixes the sign geometrically, independently of any choice of bordism generator.

| Closed oriented four-manifold | $Q_M$ | $\chi$ | $\sigma$ |
|---|---:|---:|---:|
| $S^4$ | empty rank-zero form | 2 | 0 |
| $T^4$ | $H^{\oplus3}$ | 0 | 0 |
| $S^2\times S^2$ | $H$ | 4 | 0 |
| $\mathbb{CP}^2$ | $[1]$ | 3 | 1 |

The closed-manifold unimodularity theorem is not automatically a theorem about noncompact manifolds. For $\mathbb R\times S^3$, the ordinary middle group happens to vanish, but identifying its end compactification with $S^4$ does not justify transporting all closed-manifold constructions to the cylinder.

## 7. Boundaries, Gluing, and Connected Sums

### 7.1 Relative Homology and Duality

For a pair $(X,A)$, quotient chains define $C_k(X,A)=C_k(X)/C_k(A)$. A relative cycle can have a boundary inside $A$. The short exact sequence of chain complexes gives

$$\begin{align}
\cdots\to H_k(A)\to H_k(X)\to H_k(X,A) \xrightarrow{\partial}H_{k-1}(A)\to\cdots. \tag{7.1}
\end{align}$$

The connecting map takes the boundary of a representative relative cycle. For a finite CW pair, cell counts immediately give

$$\begin{align}
\chi(X,A)=\chi(X)-\chi(A). \tag{7.2}
\end{align}$$

One uses the finite cellular complex here; the singular chain groups themselves have no finite cell counts.

For a compact oriented $n$-manifold $W$ with boundary, Poincaré–Lefschetz duality states

$$\begin{align}
H^k(W;\mathbb Z)\cong H_{n-k}(W,\partial W;\mathbb Z),\qquad H^k(W,\partial W;\mathbb Z)\cong H_{n-k}(W;\mathbb Z).
 \tag{7.3}
\end{align}$$

The relative fundamental class replaces the closed fundamental class. For example, $B^4/S^3\cong S^4$, so $H_k(B^4,S^3)=\widetilde H_k(S^4)$: only $H_4=\mathbb Z$ survives, dual to $H^0(B^4)$.

A compact oriented four-manifold with boundary also has an intersection pairing on its absolute two-dimensional classes, represented in the interior. It can be degenerate and need not be unimodular: the natural map from absolute to relative homology need not be an isomorphism. Its signature means the signature after quotienting the radical over $\mathbb R$.

### 7.2 Mayer–Vietoris and Euler Additivity

For an open cover $X=A\cup B$, Mayer–Vietoris gives

$$\begin{align}
\cdots\to H_k(A\cap B)\xrightarrow{(i_*,-j_*)}
 H_k(A)\oplus H_k(B)\to H_k(X) \to H_{k-1}(A\cap B)\to\cdots. \tag{7.4}
\end{align}$$

The same sequence applies to subcomplex covers and to boundary gluings after thickening by collars. For finite homology of bounded degree, alternating ranks in this sequence yield

$$\begin{align}
\chi(A\cup_C B)=\chi(A)+\chi(B)-\chi(C). \tag{7.5}
\end{align}$$

This requires a suitable gluing or excision setup and finite Euler sums; it is not an unrestricted formula for arbitrary subsets.

If connected three-manifolds are glued along a single boundary sphere $S^2$, the relevant part is

$$\begin{align}
0\to H_1(A)\oplus H_1(B)\to H_1(X)\to
 \mathbb Z\xrightarrow{1\mapsto(1,-1)}\mathbb Z\oplus\mathbb Z.
\end{align}$$

The last map is injective. Exactness makes the map from $H_1(X)$ to $\mathbb Z$ zero and the preceding injection surjective. Therefore

$$\begin{align}
H_1(A\cup_{S^2}B)\cong H_1(A)\oplus H_1(B).
 \tag{7.6}
\end{align}$$

There is no additional generator because the interface is connected and joins two separate pieces. Multiple interfaces can instead create cycles in the graph of pieces.

### 7.3 Gluing Four-Manifolds Along a Three-Sphere

Let $A,B$ be connected compact oriented four-manifolds with a selected boundary component $S^3$ in each. Glue them by an orientation-reversing boundary homeomorphism, using collars so the result $X$ is oriented. Van Kampen and the simple connectivity of the interface give

$$\begin{align}
\pi_1(X)\cong\pi_1(A)*\pi_1(B).
 \tag{7.7}
\end{align}$$

Mayer–Vietoris gives the complete middle-dimensional segment

$$\begin{align}
0=H_2(S^3)\to H_2(A)\oplus H_2(B)\to H_2(X) \to H_1(S^3)=0,
\end{align}$$

so

$$\begin{align}
H_2(X)\cong H_2(A)\oplus H_2(B),\qquad Q_X\cong Q_A\oplus Q_B.
 \tag{7.8}
\end{align}$$

For the pairing assertion, a collar allows representatives to be pushed into the interior of their own piece. Representatives from different pieces are disjoint; intersection numbers inside one piece do not change when it is included in $X$. This argument uses collaring, not a claim that the neck contains no closed two-chains: vanishing $H_2$ means those cycles bound, not that no cycles exist.

It follows that

$$\begin{align}
\chi(X)=\chi(A)+\chi(B),\qquad \sigma(X)=\sigma(A)+\sigma(B),\qquad b_2(X)=b_2(A)+b_2(B). \tag{7.9}
\end{align}$$

Other remaining boundary components are allowed, provided the potentially degenerate forms are interpreted as above. A connectedness assumption is necessary for the displayed fundamental-group formula without extra component bookkeeping.

For closed oriented $M,N$, remove an open four-ball from each and glue the resulting boundary spheres. This is the oriented connected sum $M\#N$. Excision identifies $H_k(M,M\setminus\operatorname{int}B^4)$ with $H_k(B^4,S^3)$, so puncturing does not change $H_2$. It also does not change $\pi_1$, by van Kampen across the ball and its collar. Since $\chi(M)=\chi(M\setminus\operatorname{int}B^4)+1$,

$$
\begin{aligned}
 Q_{M\#N}&\cong Q_M\oplus Q_N,\\
 \pi_1(M\#N)&\cong\pi_1(M)*\pi_1(N),\\
 \chi(M\#N)&=\chi(M)+\chi(N)-2,\\
 \sigma(M\#N)&=\sigma(M)+\sigma(N).
 \end{aligned}
 \tag{7.10}
$$

For $\mathbb{CP}^2\#\mathbb{CP}^2$, the form is $\operatorname{diag}(1,1)$, the signature is $2$, the Euler characteristic is $4$, and $b_2=2$. Reversing orientation negates the form and signature. Thus $S^2\times S^2$ and $\mathbb{CP}^2\#\overline{\mathbb{CP}^2}$ have the same integral homology, but their forms $H$ and $\operatorname{diag}(1,-1)$ have different parity. A homotopy equivalence preserves the cohomology ring, up to the sign of the fundamental class, so these two manifolds are not homotopy equivalent.

### 7.4 Doubling

The double of a compact oriented four-manifold is $DW=W\cup_{\partial W}(-W)$. Boundary collars ensure that this is a closed oriented manifold. Because each boundary component is a closed oriented three-manifold, its Euler characteristic vanishes, giving

$$\begin{align}
\chi(DW)=2\chi(W)-\chi(\partial W)=2\chi(W). \tag{7.11}
\end{align}$$

The involution exchanging the two copies reverses orientation; on a collar it reflects the normal coordinate. It therefore identifies the intersection form with its negative. Since signature changes sign under negation,

$$\begin{align}
\sigma(DW)=-\sigma(DW),\qquad \sigma(DW)=0. \tag{7.12}
\end{align}$$

Examples are $DB^4=S^4$ and $D(S^3\times I)=S^3\times S^1$. The latter has $b_1=1$, $\chi=0$, and $\sigma=0$.

## 8. Fixed Points from Homology

### 8.1 No Retraction of the Four-Ball onto Its Boundary

Suppose a continuous map $f:B^4\to B^4$, with $B^4$ now denoting the closed unit ball, has no fixed point. For each $x$, follow the ray from $f(x)$ through $x$ until it exits the ball. Put

$$\begin{align}
d=x-f(x),\qquad a=|d|^2>0,\quad b=f(x)\cdot d,\quad c=|f(x)|^2\leq1.
\end{align}$$

The exit parameter solves $at^2+2bt+c-1=0$. Its larger root is

$$\begin{align}
t(x)=\frac{-b+\sqrt{b^2+a(1-c)}}{a},\qquad r(x)=f(x)+t(x)d. \tag{8.1}
\end{align}$$

This is a continuous formula since $a>0$. It has $|r(x)|=1$. Furthermore, $t(x)\geq1$: the quadratic has nonpositive values at $0$ and $1$, and its leading coefficient is positive, so its exit root is at least $1$. If $c=1$, then
$b=f(x)\cdot x-1<0$, because equality for two vectors in the unit ball would force $x=f(x)$. Thus the larger root is still strictly positive in this boundary case.

If $|x|=1$, then $t=1$ is a root and the derivative there is
$2(1-f(x)\cdot x)>0$; it is the exit root. Hence $r(x)=x$ on $S^3$. We have constructed a retraction $r:B^4\to S^3$, meaning $r\circ i=\operatorname{id}_{S^3}$ for the boundary inclusion $i$.

Functoriality of homology would then give

$$\begin{align}
H_3(S^3)=\mathbb Z\xrightarrow{i_*}H_3(B^4)=0 \xrightarrow{r_*}H_3(S^3)=\mathbb Z, \qquad r_*i_*=\operatorname{id}_{\mathbb Z}. \tag{8.2}
\end{align}$$

A homomorphism factoring through zero cannot be the identity. This contradiction proves **Brouwer's fixed-point theorem for the four-ball**. The argument uses a retraction implied by the hypothetical fixed-point-free map; it does not assume the ball retracts onto its boundary.

### 8.2 Lefschetz Numbers

For a continuous self-map of a compact polyhedron, define the Lefschetz number using rational homology:

$$\begin{align}
L(f)=\sum_k(-1)^k\operatorname{tr}
       \big(f_*:H_k(X;\mathbb Q)\to H_k(X;\mathbb Q)\big). \tag{8.3}
\end{align}$$

The Lefschetz fixed-point theorem states that $L(f)\ne0$ implies a fixed point [1, Section 2.C]. The finite-dimensional rational groups make the traces unambiguous; torsion is not assigned an ordinary matrix trace here.

For $S^4$, the map acts as the identity on $H_0$ and by degree on $H_4$, so

$$\begin{align}
L(f)=1+\deg f. \tag{8.4}
\end{align}$$

Every map of degree other than $-1$ therefore has a fixed point. The antipodal map has degree $(-1)^5=-1$, because it is induced by the linear map $-I$ on $\mathbb R^5$, and is fixed-point free. A zero Lefschetz number alone does not imply absence of fixed points: the identity on $T^4$ has $L=\chi(T^4)=0$ and fixes every point.

## 9. What the Intersection Form Classifies

There are three different classification questions: homotopy equivalence, homeomorphism, and diffeomorphism. Keeping them separate is essential in dimension four.

For simply connected CW complexes, a specified map inducing isomorphisms on all integral homology groups is a homotopy equivalence. To see the role of the hypotheses, replace the map by the inclusion of its source into its mapping cylinder. The pair has zero relative homology; relative Hurewicz would identify any first nonzero relative homotopy group with a nonzero relative homology group. Since both spaces are simply connected, this forces all relative homotopy groups to vanish. The homotopy exact sequence then makes the map a weak homotopy equivalence, and Whitehead's theorem makes it a homotopy equivalence. The **existence of such a map** is part of the hypothesis. Abstractly isomorphic homology groups alone do not supply one, as the two rank-two examples in Section 7 demonstrate.

A more specialized theorem states that the oriented homotopy type of a simply connected closed oriented four-manifold is determined by the integral isometry class of its intersection form. Here an integral isometry is a lattice isomorphism preserving the bilinear pairing. The relevant standard homotopy-theoretic inputs can be stated concretely: a simply connected four-dimensional Poincaré complex has a homotopy model

$$\begin{align}
\left(\bigvee_{i=1}^{b_2}S_i^2\right)\cup_\alpha D^4,
\end{align}$$

and the group of attaching maps in degree three has generators given by the Hopf maps on the individual spheres and the Whitehead products between distinct sphere inclusions. In suitable compatible orientation conventions,

$$\begin{align}
\alpha=\sum_i q_{ii}\eta_i+ \sum_{i<j}q_{ij}[\iota_i,\iota_j]. \tag{9.1}
\end{align}$$

The cup-product matrix is precisely $(q_{ij})$. The cellular-model theorem and this computation of $\pi_3$ of a wedge of two-spheres are substantive inputs [5]; they are not consequences of equality of homology ranks. They explain why the full form, rather than just its rank and signature, controls the attaching map. Conversely, an integral isometry is realized on the wedge of spheres, matches the attaching maps, and extends over the four-cell to give an oriented homotopy equivalence. The empty wedge case gives the homotopy four-sphere.

For homeomorphism, Freedman's classification adds a second invariant, the Kirby–Siebenmann invariant $\kappa(M)\in H^4(M;\mathbb Z/2)\cong\mathbb Z/2$ [12]. For simply connected closed oriented topological four-manifolds, the pair $(Q_M,\kappa(M))$ is a complete oriented-homeomorphism invariant. Every symmetric unimodular integral form occurs. For an even form, $\kappa\equiv\sigma/8\pmod2$ and there is one oriented homeomorphism type; for an odd form, both values of $\kappa$ occur, giving two. A concise statement of these clauses is available in the [MathWorld account of Freedman's theorem](https://mathworld.wolfram.com/FreedmanTheorem.html).

A smooth manifold has $\kappa=0$. In dimension four, $\kappa=0$ is not by itself a guarantee of smoothability, and homeomorphic smooth manifolds need not be diffeomorphic. Thus the theorem is topological, not a smooth classification theorem. Nor does it apply unchanged when the fundamental group is nontrivial.

Four is the first positive dimension in which the middle-dimensional intersection pairing is a symmetric pairing on positive-dimensional cycles: in dimension $2$ it is alternating, and in dimension $4k$ it is symmetric. For a closed oriented surface, the alternating form has rank $2g$ and does record the genus. The distinct four-dimensional phenomenon is the richness of symmetric unimodular lattices together with the stated simply connected classification theorem, not the absence of any lower-dimensional classification data.

## 10. Tangent Bundles, Spin, and Lorentzian Time Directions

### 10.1 Euler Class and an Explicit Frame

A rank-$r$ real vector bundle locally looks like a product with $\mathbb R^r$, with linear transition maps. The tangent bundle $TM$ is one example. A global frame is a collection of $r$ everywhere independent sections; it identifies the bundle with the product bundle. A manifold with such a tangent frame is **parallelizable**.

An oriented rank-$r$ bundle has an Euler class $e\in H^r(M;\mathbb Z)$, an obstruction to an everywhere nonzero section. For the tangent bundle of a closed oriented manifold, Poincaré–Hopf gives

$$\begin{align}
\langle e(TM),[M]\rangle=\chi(M). \tag{10.1}
\end{align}$$

One interpretation is the sum of the indices of isolated zeros of a transverse vector field. A trivial bundle has zero Euler class. Vanishing Euler class by itself does not imply a complete frame.

For $S^3$, a complete frame is explicit. Identify $\mathbb R^4$ with the quaternions and $S^3$ with unit quaternions. The fields

$$\begin{align}
V_1(q)=iq,\qquad V_2(q)=jq,\qquad V_3(q)=kq \tag{10.2}
\end{align}$$

are tangent because $e^{it}q$, $e^{jt}q$, and $e^{kt}q$ are curves on the unit sphere with these derivatives at zero. If $a\,iq+b\,jq+c\,kq=0$, right multiplication by $q^{-1}$ gives $ai+bj+ck=0$, so all coefficients vanish. This proves parallelizability without inferring it merely from $\chi(S^3)=0$.

For $q=(a,b,c,d)$, the vectors are

$$\begin{align}
(-b,a,-d,c),\quad(-c,d,a,-b),\quad(-d,-c,b,a).
\end{align}$$

Their inner products with $q$ vanish and their Gram matrix is $(a^2+b^2+c^2+d^2)I_3$, an explicit orthonormality check on $S^3$. Adding $\partial_t$ gives a global frame on $\mathbb R\times S^3$. The coordinate circle directions similarly frame $T^m$, $\mathbb R\times T^3$, and $\mathbb R^4$.

### 10.2 Characteristic Classes and Model Calculations

The Stiefel–Whitney classes $w_i(E)\in H^i(M;\mathbb Z/2)$ and Pontryagin classes $p_i(E)\in H^{4i}(M;\mathbb Z)$ are natural under pullback and stable under adding a trivial line. Their total classes multiply under direct sums. The class $w_1(TM)$ vanishes precisely when $M$ is orientable. For an oriented smooth tangent bundle, $w_2=0$ is precisely the obstruction-vanishing condition for a spin structure, a lift of the oriented frame bundle through the double cover $\operatorname{Spin}(n)\to SO(n)$. Spin is an additional property, not a consequence of orientability in dimension four.

For a sphere, $TS^n\oplus\underline{\mathbb R}\cong\underline{\mathbb R}^{n+1}$, using the outward normal line. Thus all its positive-degree stable Stiefel–Whitney and Pontryagin classes vanish. The Euler class is not a stable class of this kind: with positive generators $\omega_n$,

$$\begin{align}
e(TS^2)=2\omega_2,\qquad e(TS^4)=2\omega_4. \tag{10.3}
\end{align}$$

Both spheres are spin, but neither is parallelizable.

The tangent bundle of $S^2\times S^2$ splits into the pullbacks of the two sphere tangent bundles. Since $w_2(TS^2)$ is the reduction of $2\omega_2$, it is zero. The product is spin, with

$$\begin{align}
w(T(S^2\times S^2))=1,\qquad p_1=0,\qquad e=4uv. \tag{10.4}
\end{align}$$

The Pontryagin assertion also follows from the stable trivialization obtained by adding two normal lines. The Euler class follows either by multiplicativity of Euler classes for oriented even-rank summands or by (10.1).

For completeness, the complex tangent bundle of $\mathbb{CP}^2$ has total Chern class $c(T\mathbb{CP}^2)=(1+h)^3=1+3h+3h^2$, with terms above degree four omitted. This follows from the projective-space Euler sequence, or equivalently the stable complex-bundle identity $T\mathbb{CP}^2\oplus\underline{\mathbb C}\cong(L^*)^{\oplus3}$, where $L$ is the tautological line and $c_1(L^*)=h$. For an underlying real complex rank-two bundle, $w_2=c_1\bmod2$, $e=c_2$, and $p_1=c_1^2-2c_2$. Consequently

$$\begin{align}
w_2(T\mathbb{CP}^2)=h\bmod2\ne0,\qquad e=3h^2,\qquad p_1=3h^2. \tag{10.5}
\end{align}$$

| Smooth model | Spin? | Euler class | First Pontryagin class |
|---|---|---|---|
| $\mathbb R^4$ | yes | 0 | 0 |
| $\mathbb R\times S^3$ | yes | 0 | 0 |
| $\mathbb R\times T^3$, $T^4$ | yes | 0 | 0 |
| $S^4$ | yes | $2\omega_4$ | 0 |
| $S^2\times S^2$ | yes | $4uv$ | 0 |
| $\mathbb{CP}^2$ | no | $3h^2$ | $3h^2$ |

The trivial tangent bundles in the first three rows have all positive-degree characteristic classes zero, not only the two displayed classes. For a connected spin manifold the choices of spin structure form a torsor for $H^1(M;\mathbb Z/2)$: for example there are sixteen on $T^4$, eight on $\mathbb R\times T^3$, and one on $S^4$.

Every closed oriented smooth three-manifold is parallelizable [11]. This is a separate theorem, not a deduction from the three-dimensional Euler characteristic alone. In particular every such three-manifold is spin.

### 10.3 Wu's Formula and the Torsion Qualification

A symmetric integral form is **even** if every vector has even square, and **odd** otherwise. On a closed oriented smooth four-manifold, Wu's formula gives, for every $a\in H^2(M;\mathbb Z/2)$,

$$\begin{align}
\langle a\smile a,[M]_2\rangle =\langle w_2(TM)\smile a,[M]_2\rangle. \tag{10.6}
\end{align}$$

Here $[M]_2$ is the mod-two fundamental class. The ingredients are the unstable identity $Sq^2a=a^2$ for a degree-two class and the defining Wu pairing; orientability makes the degree-two Wu class equal to $w_2$. This statement uses the full mod-two cohomology, not only reductions of a free integral basis.

Reducing an integral class modulo two shows immediately that spin implies an even free intersection form. The converse holds if $H_1(M;\mathbb Z)$ has no two-torsion. Indeed, the coefficient sequence gives

$$\begin{align}
H^2(M;\mathbb Z)\longrightarrow H^2(M;\mathbb Z/2) \longrightarrow H^3(M;\mathbb Z)\xrightarrow{\times2}H^3(M;\mathbb Z).
 \tag{10.7}
\end{align}$$

Duality identifies the last group's two-torsion with that of $H_1$. Under the stated hypothesis the reduction map is surjective. If the form is even, (10.6) then makes $w_2$ pair trivially with every mod-two class. Mod-two Poincaré duality is a perfect pairing, so $w_2=0$. We have proved

$$\begin{align}
H_1(M;\mathbb Z)\text{ has no two-torsion} \quad\Longrightarrow\quad \big(Q_M\text{ even}\iff M\text{ spin}\big).
 \tag{10.8}
\end{align}$$

In particular this equivalence holds in the simply connected setting of Section 9.

A concrete example explains the hypothesis. Let

$$\begin{align}
M=(S^2\times S^2)/\big((x,y)\sim(-x,-y)\big). \tag{10.9}
\end{align}$$

The action is free and preserves orientation, since each antipodal map on $S^2$ reverses orientation. Thus $M$ is a closed oriented smooth four-manifold with universal cover $S^2\times S^2$ and fundamental group $\mathbb Z/2$.

Over $\mathbb Q$, the cohomology of a finite quotient is the invariant part of the cover's cohomology: averaging over deck transformations supplies the inverse to pullback on invariant classes. The deck transformation negates each generator of $H^2(S^2\times S^2;\mathbb Q)$, so its invariant subspace is zero. Hence $b_2(M)=0$ and the free intersection form is the empty, therefore even, form. Equation (6.6) and $H_1=\mathbb Z/2$ give

$$\begin{align}
H_1(M)=H_2(M)=\mathbb Z/2,\qquad H_3(M)=0. \tag{10.10}
\end{align}$$

In particular the free form and $b_1=0$ do not distinguish its integral homology from that of $S^4$.

To compute its spin obstruction, project $\pi:M\to\mathbb{RP}^2$, $[x,y]\mapsto[x]$. Let $\gamma$ be the tautological real line over $\mathbb{RP}^2$ and $a=w_1(\gamma)$. The space $M$ is the unit-sphere bundle of $3\gamma=\gamma\oplus\gamma\oplus\gamma$: changing the chosen unit representative $x$ changes the fiber coordinate $y$ to $-y$. Its vertical tangent bundle $V$ satisfies $V\oplus\underline{\mathbb R}\cong\pi^*(3\gamma)$, because the omitted line is the radial fiber direction. The identity $T\mathbb{RP}^2\oplus\underline{\mathbb R}\cong3\gamma$ and a splitting into horizontal and vertical directions yield

$$\begin{align}
TM\oplus\underline{\mathbb R}^{2}\cong\pi^*(6\gamma), \qquad w_2(TM)=\binom62\pi^*(a^2)=\pi^*(a^2). \tag{10.11}
\end{align}$$

The tangent identity used here follows by viewing $T_{[x]}\mathbb{RP}^2$ as $\operatorname{Hom}(\gamma,\gamma^\perp)$: adding $\operatorname{Hom}(\gamma,\gamma)\cong\underline{\mathbb R}$ gives $\operatorname{Hom}(\gamma,\underline{\mathbb R}^3)\cong3\gamma$. The mod-two cell boundaries of $\mathbb{RP}^2$, with one cell in each dimension $0,1,2$, are zero. Its degree-one generator $a$ is dual to a projective line; two transverse projective lines meet in one point modulo two, proving $a^2\ne0$. Equivalently $H^*(\mathbb{RP}^2;\mathbb Z/2)=\mathbb Z/2[a]/(a^3)$. Moreover $[x]\mapsto[x,x]$ is a section of $\pi$, so $\pi^*$ is injective. Therefore $w_2(TM)\ne0$: this oriented manifold has an even free form but is not spin. The missing information is exactly of the two-torsion kind excluded in (10.8).

### 10.4 When a Global Time Direction Exists

A time-oriented Lorentzian metric supplies a smooth everywhere nonzero timelike vector field; a partition of unity preserves the chosen future timelike cone. Conversely, given a nowhere-zero field, choose a Riemannian metric $r$, normalize the field to $r(V,V)=1$, and set

$$\begin{align}
g=r-2\,r(V,\cdot)\otimes r(V,\cdot). \tag{10.12}
\end{align}$$

On the line spanned by $V$ this is negative, and on its $r$-orthogonal complement it equals $r$. Thus $g$ has signature $(- ,+,+,+)$ and $V$ fixes a time orientation. This is an existence construction, not a choice of field equations or a causal completeness theorem.

On a closed connected oriented smooth four-manifold, the Euler class is the sole obstruction to one nonzero tangent section: the unit tangent fiber is $S^3$, whose homotopy groups below degree three vanish, so obstruction theory on a four-dimensional CW model has just the Euler obstruction in degree four. Since $H^4(M;\mathbb Z)\cong\mathbb Z$, (10.1) gives

$$\begin{align}
\text{a time-oriented Lorentzian metric exists} \quad\Longleftrightarrow\quad \chi(M)=0. \tag{10.13}
\end{align}$$

Even a Lorentzian metric not assumed time orientable forces $\chi=0$: its time-orientation double cover is time orientable, and Euler characteristic multiplies by the finite covering degree. Thus $S^4$, $S^2\times S^2$, and $\mathbb{CP}^2$ do not admit Lorentzian metrics, although all are legitimate topological models in previous calculations. The four-torus does admit such metrics; this says nothing about global hyperbolicity or the absence of closed timelike curves.

For the noncompact products $\mathbb R\times S^3$ and $\mathbb R\times T^3$, the field $\partial_t$ is explicit and $g=-dt^2+r_\Sigma$ is a Lorentzian metric. No compact-manifold Euler argument is needed. In particular $\chi(\mathbb R^4)=1$ is no obstruction to its familiar Lorentzian metric. A single nonzero field, a complete tangent frame, a product decomposition, and a causal time function are different requirements; none should be identified merely by notation suggesting a time coordinate.

## 11. Oriented Bordism and Signature

Two closed oriented smooth $n$-manifolds $M_0,M_1$ are oriented bordant if there is a compact oriented smooth $(n+1)$-manifold $V$ with $\partial V=(-M_0)\sqcup M_1$. Disjoint union defines addition in $\Omega_n^{SO}$, and reversing orientation gives the inverse. This notation refers to **smooth oriented bordism** here; it must not silently be substituted for a topological bordism group involving nonsmoothable manifolds.

The low-dimensional bordism computation is a substantial theorem of oriented bordism theory [8]:

$$\begin{align}
\Omega_1^{SO}=\Omega_2^{SO}=\Omega_3^{SO}=0,\qquad \Omega_4^{SO}\cong\mathbb Z, \quad [M]\longmapsto\sigma(M). \tag{11.1}
\end{align}$$

The generator is the complex-oriented $\mathbb{CP}^2$, whose signature was independently computed as one. Dimension four is the first **positive** dimension with nonzero oriented bordism group; $\Omega_0^{SO}=\mathbb Z$ is not zero.

It is useful to see directly why signature is a bordism invariant. Suppose $M=\partial V$, where $\dim V=5$, and work over $\mathbb Q$. Set

$$\begin{align}
K=\ker\big(H_2(M;\mathbb Q)\to H_2(V;\mathbb Q)\big).
\end{align}$$

The relative exact sequence identifies $K$ with the image of $\partial:H_3(V,M)\to H_2(M)$. Poincaré–Lefschetz duality and its compatibility with restriction and boundary give

$$\begin{align}
K=\operatorname{PD}_M\big(\operatorname{im}
          (H^2(V;\mathbb Q)\to H^2(M;\mathbb Q))\big).
\end{align}$$

On the other hand, the cohomology classes annihilating $K$ under evaluation are precisely those in this restriction image: over a field this is the elementary dual statement that the annihilator of the kernel of a linear map is the image of its dual. Translating through $\operatorname{PD}_M$ shows $K=K^\perp$ for the intersection form.

Thus $K$ is a half-dimensional isotropic subspace. Choosing a dual complementary subspace puts the matrix into
$\left(\begin{smallmatrix}0&I\\I&B\end{smallmatrix}\right)$.
Subtracting half of $B$ times the first basis from the complementary basis changes it to
$\left(\begin{smallmatrix}0&I\\I&0\end{smallmatrix}\right)$, whose positive and negative indices agree. Hence $\sigma(M)=0$. Apply this to $(-M_0)\sqcup M_1$ to obtain bordism invariance. The additional assertion that signature is the *only* smooth oriented bordism invariant in dimension four is the theorem in (11.1), not a consequence of the preceding linear algebra alone.

Consequently

$$\begin{align}
[M]=\sigma(M)[\mathbb{CP}^2]\quad\text{in }\Omega_4^{SO}. \tag{11.2}
\end{align}$$

Connected sums give the same addition in bordism: a one-handle joining the two components of a product cobordism changes their disjoint union boundary to their connected sum. This agrees with the direct-sum formula for signatures.

Since $\Omega_3^{SO}=0$, every closed oriented smooth three-manifold bounds. In particular any two such manifolds $\Sigma_0,\Sigma_1$ are the incoming and outgoing boundaries of some compact oriented smooth four-dimensional bordism. If a connected bordism is wanted, interior connected sums can connect the bounding pieces without changing their boundary. This establishes existence of an oriented smooth bordism, not a prescribed Lorentzian interpolation, a solution to gravitational field equations, or a causality-preserving topology change.

If two compact pieces are glued along a closed three-manifold in a collared finite-type setup, (7.5) gives $\chi(W)=\chi(W_1)+\chi(W_2)$, since the interface has Euler characteristic zero. For gluing along a three-sphere, Section 7 gives the stronger direct decomposition of middle homology and forms. One must not replace that sphere by an arbitrary interface and retain the direct-sum homology statement without checking Mayer–Vietoris.

## 12. Ends and Finite Gluing at Infinity

### 12.1 Definition and Examples

For the locally compact, locally connected, second-countable spaces considered here, choose a compact exhaustion $K_1\subset\operatorname{int}K_2\subset\cdots$, whose interiors cover the space. An end is a compatible choice of a non-relatively-compact component of $X\setminus K_n$ for every sufficiently large $n$. Compatibility means that later chosen components lie inside earlier ones. Equivalently this is an inverse-limit construction over compact subsets. Using a cofinal compact exhaustion gives the same end space. Write $e(X)$ for its cardinality.

The complement of a large closed ball in $\mathbb R^4$ is connected, so $e(\mathbb R^4)=1$. If $\Sigma$ is connected and compact, the exhaustion $[-n,n]\times\Sigma$ has two complementary components, giving

$$\begin{align}
e(\mathbb R\times\Sigma)=2. \tag{12.1}
\end{align}$$

Thus both $\mathbb R\times S^3$ and $\mathbb R\times T^3$ have two ends. A compact manifold has none. For a compact interval $I$, the sets $K_n\times I$ form a cofinal compact exhaustion of $X\times I$; their complements are $(X\setminus K_n)\times I$, with the same components. Hence

$$\begin{align}
e(X\times I)=e(X). \tag{12.2}
\end{align}$$

Compactness of the factor matters; $\mathbb R\times\mathbb R$, for example, has one end rather than the two ends of $\mathbb R$.

For a closed connected manifold of dimension at least two, deleting $k\geq1$ distinct points creates exactly $k$ ends. Choose small disjoint coordinate balls around those points. What remains outside their smaller interiors is a compact core, and each punctured ball gives one connected collar running toward its missing point. This justifies the puncture description in (2.2) and (2.4).

Not every end compactification is a manifold. Collapsing the two boundary slices of $T^3\times[-1,1]$ gives $\Sigma T^3$, with cone neighborhoods at the two added points. The local homology at a cone vertex $v$ is

$$\begin{align}
H_i(C T^3,C T^3\setminus\{v\};\mathbb Z)
 \cong\widetilde H_{i-1}(T^3;\mathbb Z).
 \tag{12.3}
\end{align}$$

This follows from the relative exact sequence, since the cone is contractible and its punctured cone retracts to $T^3$. In particular the local group in degree two is $\mathbb Z^3$, unlike a four-manifold point, whose local homology is concentrated in degree four. Thus the special suspension homeomorphism for $S^3$ cannot be generalized to arbitrary spatial three-manifolds.

### 12.2 Compact Interfaces and End Additivity

Suppose $X=A\cup_C B$ is a gluing of locally compact manifolds along a compact collared interface, with the two pieces closed in $X$ and otherwise disjoint. Choose compact cores containing $C$. Outside such a core, the $A$-side and $B$-side are disjoint. Increasing the cores refines components within their own side and never joins them across the removed interface. The inverse system therefore splits into the two end systems:

$$\begin{align}
\operatorname{Ends}(X)\cong \operatorname{Ends}(A)\sqcup\operatorname{Ends}(B),\qquad e(X)=e(A)+e(B). \tag{12.4}
\end{align}$$

There is no assumption that complementary components eventually stop splitting; they may describe an infinite end space. Compact pieces simply contribute zero ends.

For a finite assembly of pieces along compact interfaces, apply the same argument after including every interface in a single compact core. The total end space is the disjoint union of the end spaces of the pieces. In particular, a one-ended initial piece with $k$ additional one-ended pieces has

$$\begin{align}
e=1+k. \tag{12.5}
\end{align}$$

The one-ended assumptions are essential. Attaching a compact piece does not add an end; attaching a two-ended piece adds two. If each operation attaches a new piece to exactly one existing piece by one neck, the adjacency graph is a rooted tree by construction. Allowing a second attachment to an existing piece can create a graph cycle without creating an end. Infinite assemblies require a separate end analysis, since escape through infinitely many pieces can create ends not present in any individual piece.

### 12.3 Punctured Spheres and the Information in Degree

For $k\geq1$, move one puncture of $S^2$ to the point at infinity. The remaining space is a plane with $k-1$ points removed. Replace each missing point by a small missing open disk; radial deformations near these punctures and outside a large disk reduce the space to a compact planar surface with $k$ boundary components. A spine consists of the $k-1$ inner boundary circles joined by arcs to a common base point. Collapsing a maximal tree in that spine gives a wedge of $k-1$ circles. Hence

$$\begin{align}
S^2\setminus\{p_1,\ldots,p_k\}\simeq\bigvee^{k-1}S^1, \quad H_1=\mathbb Z^{k-1},\quad \chi=2-k. \tag{12.6}
\end{align}$$

For $k=1$ the wedge is a point. The case $k=0$ is separately $S^2$, not a wedge with a negative number of circles. The unpunctured Euler count can also be seen on the octahedral sphere: $6-12+8=2$. Removing one open vertex star leaves $5-8+4=1$; removing two opposite open stars leaves the equatorial square, with $4-4=0$. These compact complements model the one- and two-puncture homotopy types.

For a continuous map $f:S^2\to S^2$,

$$\begin{align}
f_*:H_2(S^2;\mathbb Z)\to H_2(S^2;\mathbb Z),\qquad f_*([S^2])=d[S^2] \tag{12.7}
\end{align}$$

defines the integer degree $d$. Here degree even classifies maps up to homotopy, by (4.5). If the map is a boundary homeomorphism used for manifold gluing, its degree must be $\pm1$; an arbitrary-degree map is not such a gluing map. Nor does a degree computed on one interface classify the ambient gluing problem. The Hopf map is a useful reminder that a map can induce zero on every positive-degree homology group and still be homotopically nontrivial.

Ends likewise describe infinity rather than the whole manifold. Both $\mathbb R^4$ and $\mathbb{CP}^2\setminus\{p\}$ have one end, but the latter retains $H_2\cong\mathbb Z$, by the relative homology calculation for a puncture. Their end counts do not make them homeomorphic. Even the full end space, without the topology carried by its neighborhoods and the interior, is not a general classification invariant.

## 13. Scope of the Conclusions

The constructions above give a usable sequence of tests: first determine the category and compactness assumptions; compute loops and chains; retain the cohomology products; apply duality only with the appropriate boundary or support conditions; and inspect characteristic classes when tangent or spin structure is needed. For the closed simply connected topological classification problem, the intersection form and Kirby–Siebenmann invariant are decisive. For general fundamental groups, open manifolds, prescribed smooth structures, or Lorentzian dynamics, the invariants calculated here are informative but not complete.

The proofs rely on explicitly stated general theorems: cellular homology and approximation, Hurewicz, Künneth, the homotopy sequence of a bundle, Poincaré and Poincaré–Lefschetz duality, the fixed-point theorem of Lefschetz, Wu's formula, and the stated classification and bordism results. Finite matrix calculations can check a proposed form or chain complex; they cannot replace the hypotheses or proofs of those theorems. In particular no conclusion here constructs a smooth structure on an arbitrary topological four-manifold, determines every higher homotopy group, or supplies a causal gravitational evolution through a bordism.

## References and Further Reading

[1] A. Hatcher, *Algebraic Topology*, Cambridge University Press, 2002. Chapters 1–2 cover fundamental groups and homology; Chapter 3 treats cohomology and duality; Chapter 4 treats homotopy theory.

[2] E. H. Spanier, *Algebraic Topology*, McGraw–Hill, 1966.

[3] J. Milnor, *Topology from the Differentiable Viewpoint*, University Press of Virginia, 1965. Degree, regular values, and intersection numbers.

[4] J. Milnor and J. D. Stasheff, *Characteristic Classes*, Princeton University Press, 1974. Vector bundles, Euler and Stiefel–Whitney classes, and the Wu formula.

[5] G. W. Whitehead, *Elements of Homotopy Theory*, Springer, 1978. Homotopy exact sequences, Whitehead products, and the homotopy-theoretic classification inputs.

[6] W. Hurewicz, “Contributions to the topology of deformations” [English rendering of the title], *Proceedings of the Section of Sciences, Royal Netherlands Academy of Arts and Sciences* **38** (1935), 112–119 and 521–528.

[7] H. Hopf, “On maps of the three-dimensional sphere to the spherical surface” [English rendering of the title], *Mathematische Annalen* **104** (1931), 639–665.

[8] R. Thom, “Some global properties of differentiable manifolds” [English rendering of the title], *Commentarii Mathematici Helvetici* **28** (1954), 17–86.

[9] H. Freudenthal, “On the ends of topological spaces and groups” [English rendering of the title], *Mathematische Zeitschrift* **33** (1931), 692–713.

[10] H. Seifert and W. Threlfall, *Textbook of Topology* [English rendering of the title], Teubner, 1934.

[11] E. Stiefel, “Direction fields and parallelism in n-dimensional manifolds” [English rendering of the title], *Commentarii Mathematici Helvetici* **8** (1936), 305–353.

[12] M. H. Freedman, “The topology of four-dimensional manifolds,” *Journal of Differential Geometry* **17** (1982), 357–453. See also E. W. Weisstein, [“Freedman Theorem,” MathWorld](https://mathworld.wolfram.com/FreedmanTheorem.html), for the form and Kirby–Siebenmann clauses used in Section 9.
