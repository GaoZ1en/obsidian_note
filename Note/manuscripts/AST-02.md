# Smooth Structures and Differential Topology of Four-Manifolds

**AST-02 — DRAFT study chapter; bounded review recorded**

## Abstract

A smooth structure turns local Euclidean descriptions into a coordinate-independent calculus. This chapter constructs that calculus from an explicit atlas of the four-sphere, then uses tangent vectors, differential forms, partitions of unity, regular levels, and flows to study global geometry. Degree counts inverse images with signs; the same construction measures isolated zeros of vector fields. Morse functions connect these local calculations to handles and changes in topology. Differential forms recover real cohomology and supply characteristic-number calculations, including the signature of a quartic K3 surface. The final sections distinguish what smooth embeddings, surgery, and framed inverse images actually classify, and explain the separate roles of Freedman’s topological classification, smooth obstruction theorems, and exotic Euclidean four-spaces. Lorentzian metrics enter only after their existence conditions have been stated.

## 1. A Smooth Structure Is Compatibility Between Coordinate Systems

The underlying spaces, homology groups, and intersection pairings of the standard examples are developed in [AST-01](<AST-01.md>). The new input here is a choice of smooth structure. Throughout, manifolds are Hausdorff and second countable, smooth means infinitely differentiable, and manifolds have no boundary unless a boundary is explicitly allowed. A closed manifold is compact and without boundary. Most local constructions work in dimension $n$; the worked examples and smooth-classification restrictions concern dimension four.

A chart on a topological $n$-manifold $M$ is a homeomorphism $x:U\to x(U)\subset\mathbb R^n$, with $U$ and $x(U)$ open. Two charts are smoothly compatible if, on their overlap, both coordinate changes

$$\begin{align}
y\circ x^{-1}:x(U\cap V)\longrightarrow y(U\cap V), \qquad x\circ y^{-1}
 \tag{1.1}
\end{align}$$

are smooth. Their Jacobians are inverse matrices by the chain rule. An atlas is a covering family of compatible charts. Adjoining every chart compatible with that family gives its unique maximal atlas, the smooth structure it defines. A map between smooth manifolds is smooth when all its coordinate representatives are smooth. A diffeomorphism is a bijective smooth map with smooth inverse. A homeomorphism need not be a diffeomorphism.

These definitions do not assert that a given topological four-manifold has any smooth atlas. Nor does changing the formulas in an atlas automatically produce a different smooth manifold: two atlases that generate the same maximal atlas define the same structure, and even distinct maximal atlases can be related by a diffeomorphism.

### 1.1 The Stereographic Atlas of $S^4$

Write

$$\begin{align}
S^4=\{(z,u)\in\mathbb R^4\times\mathbb R:|z|^2+u^2=1\}, \qquad N=(0,1),\quad S=(0,-1).
\end{align}$$

The charts excluding the north and south poles are

$$\begin{align}
x=\sigma_N(z,u)=\frac{z}{1-u},\qquad y=\sigma_S(z,u)=\frac{z}{1+u}. \tag{1.2}
\end{align}$$

For $r^2=x\cdot x$, the inverse of the first is

$$\begin{align}
s_N(x)=\left(\frac{2x}{1+r^2},\frac{r^2-1}{1+r^2}\right). \tag{1.3}
\end{align}$$

Its squared norm is one because $4r^2+(r^2-1)^2=(1+r^2)^2$. Substitution in (1.2) recovers $x$. The second inverse replaces the last component by $(1-|y|^2)/(1+|y|^2)$. Thus, on the overlap,

$$\begin{align}
y=\tau(x)=\frac{x}{r^2},\qquad x\ne0, \qquad \tau\circ\tau=\operatorname{id}. \tag{1.4}
\end{align}$$

Differentiation gives

$$\begin{align}
J=D\tau=\frac1{r^2}\left(I-2\frac{xx^{\mathsf T}}{r^2}\right), \qquad \det J=-r^{-8},\qquad J^{\mathsf T}J=r^{-4}I. \tag{1.5}
\end{align}$$

For a direct explanation, the matrix in parentheses sends the radial unit vector $x/r$ to its negative and fixes the perpendicular three-plane. It is an orthogonal reflection with determinant $-1$; the scalar factor contributes $r^{-8}$ to the four-dimensional determinant. The overlap map is therefore a smooth diffeomorphism. It reverses orientation, a fact to retain when choosing oriented charts below, not an obstacle to smooth compatibility.

Differentiating the embedding (1.3) also gives the round Riemannian metric

$$\begin{align}
h_{ij}(x)=\frac{4}{(1+r^2)^2}\delta_{ij}. \tag{1.6}
\end{align}$$

Indeed $h=(Ds_N)^{\mathsf T}Ds_N$. This positive-definite metric is induced from Euclidean $\mathbb R^5$; it is not a spacetime metric.

Product charts give smooth structures on $S^2\times S^2$, $T^4=(S^1)^4$, and $\mathbb R\times S^3$. Their coordinate changes are products of the factor changes, with block-diagonal Jacobian. These are explicit constructions of smooth manifolds, not instances of a general smoothability theorem for all four-dimensional spaces.

## 2. Tangent Vectors, Covectors, and Their Transition Rules

A tangent vector $v\in T_pM$ can be defined by the velocity of a smooth curve through $p$: two curves represent the same vector when their coordinate derivatives agree at $p$. The chain rule makes this equivalence independent of chart. Equivalently, $v$ acts on smooth functions near $p$ as a derivation,

$$\begin{align}
v(fg)=f(p)v(g)+g(p)v(f).
\end{align}$$

In coordinates $x^1,\ldots,x^n$, write $\partial_i=\partial/\partial x^i$. Then

$$\begin{align}
v=v_x^i\partial_{x^i},\qquad v_y^a=\frac{\partial y^a}{\partial x^i}v_x^i, \qquad \partial_{x^i}=\frac{\partial y^a}{\partial x^i}\partial_{y^a}. \tag{2.1}
\end{align}$$

Repeated upper/lower coordinate indices are summed. Superscripts on coordinate functions label coordinates; they do not presuppose a metric.

A covector is a linear functional $\alpha:T_pM\to\mathbb R$. The dual coordinate basis satisfies $dx^i(\partial_j)=\delta^i_j$. Consequently

$$\begin{align}
dy^a=\frac{\partial y^a}{\partial x^i}dx^i,\qquad \alpha=\alpha_{x,i}dx^i=\alpha_{y,a}dy^a, \qquad \alpha_{y,a}=\frac{\partial x^i}{\partial y^a}\alpha_{x,i}. \tag{2.2}
\end{align}$$

In column notation, vector components transform by $J$, covector components by $J^{-\mathsf T}$. Their pairing does not change:

$$\begin{align}
\alpha_y^{\mathsf T}v_y =\alpha_x^{\mathsf T}J^{-1}Jv_x=\alpha_x^{\mathsf T}v_x. \tag{2.3}
\end{align}$$

A covector is not a vector with its components renamed. A metric supplies an additional identification, $v\mapsto h(v,\cdot)$, when one is wanted.

The tangent bundle $TM=\bigsqcup_pT_pM$ is locally described by $(x,v_x)$. Its overlap maps are $(x,v_x)\mapsto(y(x),J(x)v_x)$; these are smooth and linear in the fiber variable. This is the defining local structure of a vector bundle. The cotangent bundle uses the dual overlap maps. A smooth vector field is a smooth section of $TM$, and a smooth one-form is a smooth section of $T^*M$. A global frame consists of $n$ fields independent at every point; it trivializes $TM$. Local coordinate frames alone do not supply a global frame.

For example, under stereographic inversion the radial field $X=x^i\partial_{x^i}$ becomes

$$\begin{align}
X_y=J(x)x=-\frac{x}{r^2}=-y. \tag{2.4}
\end{align}$$

This formula, rather than substitution of coordinate symbols in the old components, determines whether the field extends smoothly across the missing pole.

The differential of a smooth map $F:M\to N$ is the linear map $dF_p:T_pM\to T_{F(p)}N$ obtained by differentiating curves. Its coordinate matrix is the Jacobian of a coordinate representative. A covector on $N$ pulls back by composition with $dF_p$: $(F^*\alpha)_p(v)=\alpha_{F(p)}(dF_pv)$. For functions this gives $d(f\circ F)=F^*(df)$.

## 3. Orientation, Forms, and Gluing Local Constructions

An orientation is a smoothly varying choice of which ordered tangent bases are positive. An oriented atlas has positive transition determinants. We orient a sphere as the boundary of its Euclidean ball: the outward normal followed by a positive tangent basis is a positive ambient basis. In the stereographic atlas above, the unmodified south-excluding chart agrees with this orientation; the north-excluding chart has the opposite sign. Reflecting one coordinate of the north-excluding chart makes both positive and changes the overlap determinant to a positive number. The original $x,y$ coordinates remain useful for calculations even though they are not both oriented coordinates.

A differential $k$-form is a smooth alternating $k$-linear function of tangent vectors at each point. In a chart,

$$\begin{align}
\omega=\frac1{k!}\omega_{i_1\cdots i_k} dx^{i_1}\wedge\cdots\wedge dx^{i_k}. \tag{3.1}
\end{align}$$

The components are antisymmetric. Our normalization is $(\alpha\wedge\beta)(v,w)=\alpha(v)\beta(w)-\alpha(w)\beta(v)$ for one-forms. In particular,

$$\begin{align}
dy^1\wedge\cdots\wedge dy^n =\det J\,dx^1\wedge\cdots\wedge dx^n. \tag{3.2}
\end{align}$$

An everywhere nonzero top-degree form selects an orientation by being positive on the positive bases. A metric is not needed to define forms or orientation. Pullback of a form inserts $dF$ in every argument and respects wedge products.

### 3.1 Smooth Cutoff Functions

To turn local objects into global ones, one needs cutoffs whose derivatives also fit across their support boundaries. Set

$$
\eta(t)=\begin{cases}e^{-1/t},&t>0,\\0,&t\le0.\end{cases}
 \tag{3.3}
$$

For $t>0$, each derivative is a polynomial in $1/t$ times $e^{-1/t}$. For every nonnegative integer $m$, $t^{-m}e^{-1/t}\to0$ as $t\downarrow0$: set $s=1/t$ and compare the exponential with any power of $s$. Thus every one-sided derivative extends by zero, proving smoothness to all orders.

For $0<a<b$, the function

$$\begin{align}
\beta(x)=\frac{\eta(b^2-|x|^2)} {\eta(b^2-|x|^2)+\eta(|x|^2-a^2)} \tag{3.4}
\end{align}$$

is smooth, equals one on $|x|\le a$, and equals zero on $|x|\ge b$. The denominator is positive everywhere: both terms could vanish only if simultaneously $|x|\ge b$ and $|x|\le a$. A cutoff with support inside a chart extends by zero to the entire manifold.

A smooth partition of unity subordinate to an open cover $\{U_\alpha\}$ is a family $\rho_\alpha\ge0$ with $\operatorname{supp}\rho_\alpha\subset U_\alpha$, $\sum_\alpha\rho_\alpha=1$, and local finiteness: every point has a neighborhood meeting only finitely many supports. Local finiteness makes the sum and all its derivatives ordinary finite sums near each point.

Every smooth Hausdorff second-countable manifold admits such partitions for every open cover [1, chapters on partitions of unity]. The construction uses paracompactness to choose locally finite smaller chart neighborhoods with closures in members of the cover. Put a cutoff in each larger neighborhood, equal to one on its smaller neighborhood. If their sum is $b>0$, division by $b$ gives the desired functions; group functions assigned to the same cover member if necessary. The shrinking/local-finiteness theorem is the topological input; the cutoff formula alone does not prove it.

### 3.2 Two Applications, and One Restriction

Pull back the Euclidean inner product in each chart to obtain a local Riemannian metric $h_\alpha$. Then

$$\begin{align}
h=\sum_\alpha\rho_\alpha h_\alpha \tag{3.5}
\end{align}$$

is a smooth global Riemannian metric. Each summand is extended by zero where its cutoff vanishes. For $v\ne0$, at least one positive-weight summand has $h_\alpha(v,v)>0$, so $h(v,v)>0$. This supplies norms and normal bundles without any spacetime assumption. It also defines the gradient of a smooth function by $h(\operatorname{grad}_h f,v)=df(v)$ for every tangent vector $v$; in coordinates, $(\operatorname{grad}_h f)^i=h^{ij}\partial_jf$. In contrast, arbitrary averages of Lorentzian metrics need not be Lorentzian: fixed indefinite signature is not preserved by arbitrary convex averaging.

If $M$ is oriented and $\omega$ is a compactly supported top form, define its integral by a partition of unity and oriented coordinates. The usual change-of-variables theorem, together with (3.2), proves independence of the subdivision and chart choices. This is how ordinary multivariable integration becomes intrinsic integration on a manifold.

## 4. Regular Values Produce Embedded Submanifolds

For $F:M^m\to N^n$, a point $p$ is regular if $dF_p$ is surjective, and critical otherwise. A value $q\in N$ is regular if every point in $F^{-1}(q)$ is regular; a value outside the image is regular by this definition. A submersion has surjective differential everywhere. An immersion has injective differential everywhere. Neither definition includes global injectivity or surjectivity of the map itself.

The implicit-function theorem gives the regular-value theorem: if $q$ is regular and $F^{-1}(q)\ne\varnothing$, then

$$\begin{align}
F^{-1}(q)\text{ is an embedded }(m-n)\text{-manifold}, \qquad T_pF^{-1}(q)=\ker dF_p. \tag{4.1}
\end{align}$$

Here is the local mechanism. Choose coordinates so that an $n\times n$ minor of $DF$ is invertible. The map consisting of the remaining $m-n$ source coordinates together with the $n$ components of $F$ has invertible full Jacobian. The inverse-function theorem makes it a coordinate system. In those coordinates, the level set is simply the slice in which the last $n$ coordinates equal $q$. Differentiating that constraint gives the kernel formula. The subspace topology in this description is the manifold topology, explaining the word embedded.

The related notion of transversality will be used for degree and framed inverse images. A map $F:M\to N$ is transverse to an embedded submanifold $Z\subset N$ if

$$\begin{align}
dF_p(T_pM)+T_{F(p)}Z=T_{F(p)}N\qquad(F(p)\in Z).
\end{align}$$

Choose target coordinates in which $Z$ is the zero set of its normal coordinates. Transversality says that the corresponding normal components of $F$ have surjective differential. The same implicit-function argument then makes $F^{-1}(Z)$ an embedded submanifold of codimension $\operatorname{codim}Z$. A regular value is exactly transversality to a point [2].

For $G:\mathbb R^5\to\mathbb R$, $G(z)=|z|^2$, the differential is $dG_z(v)=2z\cdot v$. It is nonzero on $G^{-1}(1)$, so $S^4$ is an embedded four-manifold and

$$\begin{align}
T_zS^4=\{v:z\cdot v=0\}. \tag{4.2}
\end{align}$$

At level zero the hypothesis fails: $G^{-1}(0)=\{0\}$, not a four-dimensional hypersurface.

Another useful example is

$$\begin{align}
\rho:\mathbb R^4\setminus\{0\}\to S^3,\qquad \rho(x)=\widehat x=\frac{x}{|x|},\qquad d\rho_x(v)=\frac1{|x|}\big(v-(v\cdot\widehat x)\widehat x\big). \tag{4.3}
\end{align}$$

The image is perpendicular to $\widehat x$. Given any $w\in T_{\widehat x}S^3$, taking $v=|x|w$ produces $d\rho_x(v)=w$, proving surjectivity rather than merely tangency. Every fiber is the open ray $\{tq:t>0\}$.

Sard’s theorem states that for a smooth map the critical values have measure zero in every target coordinate chart [2]. It does not say the critical points have measure zero: a constant map has every point critical. For the concrete real four-dimensional map

$$\begin{align}
F:\mathbb C^2\to\mathbb C^2,\qquad F(z_1,z_2)=(z_1^3,z_2),
\end{align}$$

write $z_1=a+ib$. Its first two real components are $a^3-3ab^2$ and $3a^2b-b^3$; their Jacobian determinant is $9(a^2+b^2)^2$. Thus the critical set is $\{z_1=0\}$, and the critical values form $\{0\}\times\mathbb C$, a two-dimensional plane of four-dimensional measure zero. Every nonzero first target component has three distinct cube roots, at each of which the real differential is invertible.

### 4.1 An Immersion Need Not Be an Embedding

An embedding is an immersion that is a homeomorphism onto its image with the subspace topology. An immersed curve can cross itself, which an embedded curve cannot. Even an injective immersion can fail to be an embedding: for irrational $\alpha$,

$$\begin{align}
t\longmapsto(e^{it},e^{i\alpha t}):\mathbb R\to T^2 \tag{4.4}
\end{align}$$

is injective with nonzero derivative, but its image is dense. There are unbounded $t_j=2\pi n_j$ for which $\alpha n_j$ approaches an integer, so the images approach the image of zero while $t_j$ do not approach zero. The inverse on the image is not continuous.

A proper map has compact inverse images of compact sets. A proper injective immersion is an embedding; in particular an injective immersion of a compact manifold into a Hausdorff manifold is an embedding. These hypotheses prevent the accumulation behavior in (4.4).

Whitney’s embedding theorem gives every smooth four-manifold an embedding in $\mathbb R^8$; the strong immersion theorem gives an immersion in $\mathbb R^7$ [1,2]. These are existence bounds, not minimal dimensions. They neither embed a closed four-manifold into $\mathbb R^4$ nor provide a smooth structure on a nonsmoothable topological manifold. In fact an immersion between four-manifolds is locally a diffeomorphism; the image of an immersion of a nonempty closed four-manifold in $\mathbb R^4$ would be both open and compact, which is impossible.

## 5. Vector Fields Generate Local Flows, Not Automatically Global Ones

For a smooth vector field $X$, an integral curve through $p$ is a solution

$$\begin{align}
\dot\gamma(t)=X(\gamma(t)),\qquad \gamma(0)=p. \tag{5.1}
\end{align}$$

Local existence, uniqueness, and smooth dependence follow in coordinates from the ordinary differential-equation theorem and agree across charts by uniqueness. There is a unique maximal solution on an open interval

$$\begin{align}
I_p=(a_p,b_p),\qquad -\infty\le a_p<0<b_p\le\infty.
\end{align}$$

The flow is a smooth map $\Phi:\mathcal D\to M$ on the open set $\mathcal D=\{(t,p):t\in I_p\}\subset\mathbb R\times M$. It satisfies $\Phi_0(p)=p$ and

$$\begin{align}
\Phi_t(\Phi_s(p))=\Phi_{t+s}(p) \tag{5.2}
\end{align}$$

whenever the left side is defined. More precisely, $I_{\Phi_s(p)}=I_p-s$ for $s\in I_p$. At a fixed $t$, the flow map between its open domain and image has inverse $\Phi_{-t}$. A field is complete when every $I_p=\mathbb R$.

Smoothness of the field is not enough for completeness. On $\mathbb R^4$,

$$\begin{align}
X=(x^1)^2\partial_{x^1},\qquad \Phi_t(p)=\left(\frac{p^1}{1-tp^1},p^2,p^3,p^4\right). \tag{5.3}
\end{align}$$

For $p^1>0$, $I_p=(-\infty,1/p^1)$; for $p^1<0$, $I_p=(1/p^1,\infty)$; for $p^1=0$, $I_p=\mathbb R$. The finite endpoint is genuine escape to infinity.

A maximal solution with a finite endpoint must eventually leave every compact subset of the manifold; otherwise a convergent subsequence and a coordinate existence neighborhood extend it. Consequently every smooth field on a compact manifold without boundary is complete. On a manifold with boundary one must additionally control boundary behavior: a transverse field may leave the manifold in finite time.

For a constant real matrix $A$, the field $X_A(x)=Ax$ on $\mathbb R^4$ is complete with flow $e^{tA}x$. With

$$
A=\begin{pmatrix}0&-1\\1&0\end{pmatrix}
       \oplus\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad
 R(t)=\begin{pmatrix}\cos t&-\sin t\\\sin t&\cos t\end{pmatrix},
$$

its flow is $(R(t)\oplus R(t))x$. Differentiating gives $\dot\Phi_t=A\Phi_t$; the angle-addition formulas give the group law for all real times.

### 5.1 Lie Brackets and Quaternionic Frames

Regard a vector field as a derivation on functions. Define

$$\begin{align}
[X,Y]f=X(Yf)-Y(Xf),\qquad [X,Y]^i=X^j\partial_jY^i-Y^j\partial_jX^i. \tag{5.4}
\end{align}$$

The second derivatives of $f$ cancel because their coefficients are antisymmetric. This also proves that the commutator is again a vector field. The Jacobi identity follows by expanding the three nested operator commutators: each ordered triple of operators occurs twice with opposite signs. For linear fields,

$$\begin{align}
[X_A,X_B](x)=(BA-AB)x. \tag{5.5}
\end{align}$$

The order is fixed by the derivation convention, since $X_A$ differentiating the components $Bx$ gives $BAx$.

The quaternions are $q=a+bi+cj+dk$, with $i^2=j^2=k^2=ijk=-1$, real coefficients, and the distributive multiplication determined by these relations. Their norm satisfies $|pq|=|p||q|$. Identify $S^3$ with unit quaternions. The fields used for the frame in [AST-01, Section 10](<AST-01.md#10-tangent-bundles-spin-and-lorentzian-time-directions>) are

$$\begin{align}
V_i(q)=iq,\qquad V_j(q)=jq,\qquad V_k(q)=kq.
\end{align}$$

For $q=(a,b,c,d)$, their real components are

$$\begin{align}
(-b,a,-d,c),\qquad(-c,d,a,-b),\qquad(-d,-c,b,a).
 \tag{5.6}
\end{align}$$

Their scalar products with $q$ vanish, and their mutual Gram matrix is $|q|^2I_3$. They therefore form an orthonormal tangent frame on the unit sphere. Their flows are $q\mapsto e^{ti}q$, and similarly for $j,k$, for all $t\in\mathbb R$.

These fields are right-invariant under quaternionic group multiplication: right translation by $a$ sends $iq$ to $iqa$. If $L_iq=iq$, then $L_iL_j=L_k$, and (5.5) yields

$$\begin{align}
[V_i,V_j]=-2V_k \tag{5.7}
\end{align}$$

and cyclic permutations. The left-invariant fields $W_i(q)=qi$ instead satisfy $[W_i,W_j]=2W_k$. Specifying which multiplication defines the field fixes this sign. Adding $\partial_t$ to either frame trivializes $T(\mathbb R\times S^3)$; no compact Euler-characteristic theorem is needed for that explicit construction.

## 6. Exterior Differentiation, Stokes’ Theorem, and Real Cohomology

The exterior derivative is defined in coordinates by

$$\begin{align}
d\omega=\frac1{k!}\partial_j\omega_{i_1\cdots i_k} dx^j\wedge dx^{i_1}\wedge\cdots\wedge dx^{i_k}. \tag{6.1}
\end{align}$$

The chain rule and antisymmetry show that this definition agrees between charts. It obeys

$$\begin{align}
d^2=0,\qquad d(\alpha\wedge\beta)=d\alpha\wedge\beta+(-1)^k\alpha\wedge d\beta, \qquad dF^*=F^*d \tag{6.2}
\end{align}$$

when $\alpha$ has degree $k$. For example, if $\omega=\sum_i A_i dx^i$, then

$$\begin{align}
d\omega=\sum_{i<j}(\partial_iA_j-\partial_jA_i)dx^i\wedge dx^j.
\end{align}$$

For $i<j<k$, the coefficient in $d^2\omega$ is

$$\begin{align}
\partial_i(\partial_jA_k-\partial_kA_j) -\partial_j(\partial_iA_k-\partial_kA_i) +\partial_k(\partial_iA_j-\partial_jA_i)=0. \tag{6.3}
\end{align}$$

Equality of mixed partial derivatives is the cancellation; the same argument with more alternating indices proves $d^2=0$ for every degree.

### 6.1 Closed Forms Are Locally Exact

A form is closed when $d\omega=0$, and exact when $\omega=d\eta$. On an open set in $\mathbb R^n$ star-shaped about zero, define for $k\ge1$

$$\begin{align}
(H\omega)_x(v_1,\ldots,v_{k-1}) =\int_0^1 t^{k-1}\omega_{tx}(x,v_1,\ldots,v_{k-1})\,dt. \tag{6.4}
\end{align}$$

The factor $t^{k-1}$ comes from differentiating the contraction map $(t,x)\mapsto tx$ in each of its $k-1$ remaining spatial arguments. Decomposing its pullback into terms containing $dt$ and terms not containing $dt$, and integrating the $dt$-coefficient of its exterior derivative, gives the fundamental-theorem-of-calculus identity

$$\begin{align}
dH+Hd=\operatorname{id}-c_0^*, \tag{6.5}
\end{align}$$

where $c_0$ is the constant map to zero. For positive-degree forms $c_0^*\omega=0$, so every closed such form is exact on this domain. For functions, (6.5) says $H(df)=\int_0^1 df_{tx}(x)dt=f(x)-f(0)$.

The elementary two-form example fixes the normalization:

$$\begin{align}
H(dx^1\wedge dx^2) =\frac12(x^1dx^2-x^2dx^1),\qquad dH(dx^1\wedge dx^2)=dx^1\wedge dx^2. \tag{6.6}
\end{align}$$

Chart neighborhoods can be shrunk to balls, so this proves the local Poincaré lemma. It does not give a global primitive on an arbitrary manifold.

### 6.2 Integration Detects the Global Obstruction

For an oriented compact smooth $n$-manifold $M$ with smooth boundary and a smooth $(n-1)$-form $\omega$, Stokes’ theorem is

$$\begin{align}
\int_M d\omega=\int_{\partial M}\omega. \tag{6.7}
\end{align}$$

The boundary orientation is outward-normal-first. A compactly supported version holds on noncompact manifolds. Partitions of unity reduce the proof to coordinate boxes and half-boxes, where the one-variable fundamental theorem of calculus cancels the interior faces [1,4]. Without compactness or compact support, convergence and contributions at infinity require separate hypotheses.

Orient $B^4$ by $dx^1\wedge\cdots\wedge dx^4$, and set

$$\begin{align}
\omega=\frac14\sum_{i=1}^4(-1)^{i-1}x^i dx^1\wedge\cdots\widehat{dx^i}\cdots\wedge dx^4. \tag{6.8}
\end{align}$$

The hat means that the factor is omitted. Each term in $d\omega$ contributes one quarter of the volume form, so $d\omega=d^4x$. On the unit boundary, $4\omega$ is the contraction of the Euclidean volume form with the outward unit normal $x$, hence the positive round volume form of $S^3$. Therefore

$$\begin{align}
\int_{S^3}\omega=\frac14(2\pi^2)=\frac{\pi^2}{2} =\int_{B^4}d^4x. \tag{6.9}
\end{align}$$

For instance $\operatorname{vol}(S^3)=\int_0^\pi\sin^2a\,da\int_0^\pi\sin b\,db\int_0^{2\pi}dc=2\pi^2$; radial integration adds $\int_0^1r^3dr=1/4$.

Write $\Omega^k(M)$ for the vector space of smooth $k$-forms. The de Rham cohomology group is

$$\begin{align}
H^k_{\mathrm{dR}}(M)=\frac{\ker(d:\Omega^k\to\Omega^{k+1})}
 {\operatorname{im}(d:\Omega^{k-1}\to\Omega^k)}. \tag{6.10}
\end{align}$$

For $T^4=\mathbb R^4/(2\pi\mathbb Z)^4$, the translation-invariant forms $dx^i$ descend from the covering space although $x^i$ are not globally defined real-valued functions on the torus. Each form is closed; its integral around its own coordinate circle is $2\pi$. An exact form would have integral zero by (6.7), so it is not exact.

De Rham’s theorem identifies (6.10), including its wedge product, with singular cohomology with real coefficients, using integration on smooth singular chains [4]. Thus the torus ring is the exterior algebra on the four classes $[dx^i]$, with dimensions $(1,4,6,4,1)$. This real theory does not retain integral torsion.

For $S^2\times S^2$, let $\omega,\eta$ be the pullbacks of area forms normalized to integral one on each factor. Then $\omega\wedge\omega=\eta\wedge\eta=0$, while $\int\omega\wedge\eta=1$ in the product orientation. Since two-forms commute under the wedge product,

$$
\int_{S^2\times S^2}(\omega+\eta)^2=2,
 \qquad Q=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
 \tag{6.11}
$$

This is the differential-form realization of the intersection pairing, not a metric inner product.

## 7. Degree and the Index of an Isolated Zero

Let $M,N$ be closed connected oriented $n$-manifolds and $f:M\to N$ smooth. For a regular value $q$, its inverse image is discrete by (4.1) and compact, hence finite. Its signed count is

$$\begin{align}
\deg f=\sum_{p\in f^{-1}(q)}\operatorname{sgn}(df_p). \tag{7.1}
\end{align}$$

The sign records whether $df_p$ preserves the declared tangent orientations; it is the determinant sign in oriented charts. This count is independent of regular value. One explanation takes a transverse path between values: its inverse image is a compact oriented one-manifold, whose boundary signs equate the two endpoint counts. Transversality supplies the permissible perturbation of the path [2]. Equivalently $f_*[M]=(\deg f)[N]$, and for a top form $\nu$,

$$\begin{align}
\int_M f^*\nu=(\deg f)\int_N\nu. \tag{7.2}
\end{align}$$

These descriptions show homotopy invariance and $\deg(g\circ f)=\deg g\deg f$. Noncompact domains need additional properness/support assumptions; (7.1) is used here only in the stated compact setting.

On $S^n$, the antipodal map has degree $(-1)^{n+1}$. The ambient map $-I$ has determinant $(-1)^{n+1}$ and takes the outward normal to the outward normal at the image point, so it has precisely that sign on the induced boundary orientations. In particular the degrees are $-1$ on $S^4$ and $+1$ on $S^3$. Looking only at four ambient coordinate signs on $S^4$ would miss the changing tangent orientation.

### 7.1 Local Index and Poincaré–Hopf

If a vector field $X$ has an isolated zero $p$, choose a small coordinate ball around it with no other zero. Its index is

$$\begin{align}
\operatorname{ind}_pX =\deg\left(\frac{X}{|X|}:S^{n-1}_\varepsilon\to S^{n-1}\right). \tag{7.3}
\end{align}$$

The components and norm here are those of the local trivialization. Shrinking the ball or changing trivialization gives the same integer: the normalized maps are homotopic, with corresponding orientation changes in source and target. A metric is a convenient normalization, not extra data in the index.

If the linearization $L=DX_p$ is invertible, write $X(x)=Lx+O(|x|^2)$. On a sufficiently small sphere, $|Lx|\ge c|x|$ dominates the remainder. The interpolation between $X$ and $Lx$ stays nonzero there. Hence

$$\begin{align}
\operatorname{ind}_pX=\operatorname{sgn}\det L. \tag{7.4}
\end{align}$$

In four dimensions, $X=x$ has index $+1$, whereas $X=(x^1,-x^2,x^3,x^4)$ has index $-1$.

There are also isolated degenerate zeros of higher index. On $\mathbb H\cong\mathbb R^4$, let $X(q)=q^2$. Its norm is $|q|^2$, so zero is isolated and the normalized boundary map is quaternionic squaring on the unit sphere. The inverse images of $1$ are exactly $1,-1$: writing $q=a+v$ with $v$ imaginary gives $q^2=(a^2-|v|^2)+2av$. The ambient derivative is $2I_4$ at $1$ and $-2I_4$ at $-1$, both of positive determinant. In both cases the outward radial vector is sent to a positive multiple of the target outward normal. Thus the tangent signs are positive as well, and $\operatorname{ind}_0X=2$.

Similarly, the inverse images of $j$ under $q\mapsto q^3$ on $S^3$ are

$$\begin{align}
-j,\qquad \frac{\sqrt3}{2}+\frac j2,\qquad -\frac{\sqrt3}{2}+\frac j2.
\end{align}$$

A root commutes with its cube $j$, so it lies in the complex plane $\operatorname{span}\{1,j\}$; the ordinary complex cube-root equation gives exactly these three roots. The ambient real Jacobian determinants are respectively $9,36,36$. Radial differentiation of the homogeneous cubic sends the outward normal to $3j$, so all three tangent signs are positive. The resulting index is three. These calculations use quaternion multiplication, not componentwise powers.

The Poincaré–Hopf theorem states that on a closed oriented smooth manifold a smooth field with isolated zeros satisfies

$$\begin{align}
\sum_p\operatorname{ind}_pX=\chi(M). \tag{7.5}
\end{align}$$

There are finitely many zeros under these hypotheses. The theorem relates local degrees to the Euler class of the tangent bundle [2,5]. A boundary version requires a specified boundary condition; it is not (7.5) with the boundary ignored. Noncompact spaces are also outside this statement.

### 7.2 A Single Field in Both Sphere Charts

Take the height $f(z,u)=u$ on the round $S^4$. In the north-excluding chart,

$$\begin{align}
f(x)=\frac{r^2-1}{1+r^2},\qquad \partial_i f=\frac{4x^i}{(1+r^2)^2},\qquad (\operatorname{grad}_h f)^i=h^{ij}\partial_jf=x^i. \tag{7.6}
\end{align}$$

The gradient depends on the metric; its components are not just the partial derivatives. Equation (2.4) transforms this field to $-y$ in the other chart. It therefore extends smoothly to the north pole, with the only zeros at the two poles. Their linearizations are $I_4$ and $-I_4$, each with positive determinant. Their index sum is $2=\chi(S^4)$.

The same calculation shows exactly how the radial Euclidean field extends to the one-point compactification with the standard sphere smooth structure. Its chart flow $x\mapsto e^t x$ is compatible with $y\mapsto e^{-t}y$. Completeness follows either from these formulas or from compactness of the smooth sphere, not from compactness of an arbitrary topological compactification.

## 8. Morse Functions Describe How Regular Levels Fit Together

A critical point of a smooth function $f:M^4\to\mathbb R$ has $df_p=0$. At such a point the Hessian is an intrinsically defined symmetric bilinear form: second-coordinate-change terms are multiplied by $df_p$, hence vanish. A critical point is nondegenerate if that form is invertible. Its Morse index $\lambda$ is the number of negative eigenvalues. A Morse function has only nondegenerate critical points.

The Morse lemma gives local coordinates near such a point in which

$$\begin{align}
f=f(p)-u_1^2-\cdots-u_\lambda^2 +u_{\lambda+1}^2+\cdots+u_4^2. \tag{8.1}
\end{align}$$

The coordinate change is an essential part of the conclusion: the Taylor polynomial alone is not an exact normal form. For a concrete instance, $f=x^2(1+x)-y^2+z^2-w^2$ becomes $u^2-y^2+z^2-w^2$ under $u=x\sqrt{1+x}$. This is a valid local coordinate near zero because its derivative there is one. The critical point has index two.

For a Riemannian metric $h$, linearizing $\operatorname{grad}_h f$ at a critical point gives $h^{-1}\operatorname{Hess}f$. Its determinant has the sign of the Hessian because $\det h>0$. Therefore

$$\begin{align}
\operatorname{ind}_p(\operatorname{grad}_h f)=(-1)^\lambda. \tag{8.2}
\end{align}$$

This links critical-point counting to (7.5).

### 8.1 Why a Compact Strip without Critical Points Is a Product

Suppose $f^{-1}([a,b])$ is compact, $a<b$, and there are no critical points in that strip. Assume there is no other manifold boundary in the strip. On a neighborhood of it define

$$\begin{align}
Y=\frac{\operatorname{grad}_h f}{|\operatorname{grad}_h f|_h^2}, \qquad df(Y)=1. \tag{8.3}
\end{align}$$

Along its flow, $f(\Phi_t(p))=f(p)+t$. Compactness prevents escape before the requested time as long as the trajectory remains in the strip; the endpoint levels have regular neighborhoods allowing the endpoint times. Thus

$$\begin{align}
f^{-1}(a)\times[a,b]\longrightarrow f^{-1}([a,b]),\qquad (p,s)\longmapsto\Phi_{s-a}(p)
 \tag{8.4}
\end{align}$$

is a diffeomorphism, with inverse $q\mapsto(\Phi_{a-f(q)}(q),f(q))$. This proof identifies exactly where a finite-time existence argument is sufficient and where compactness is needed.

More generally, Ehresmann’s theorem states that a proper surjective smooth submersion between manifolds without boundary is a smooth locally trivial fiber bundle [1]. It extends this regular-fiber principle to higher-dimensional bases. Dropping properness can allow fibers to change at infinity even with no critical point. For example, the projection

$$\begin{align}
\{(x,y)\in\mathbb R^2:xy\ne1\}\to\mathbb R,\qquad(x,y)\mapsto x
\end{align}$$

is a surjective submersion, but the fiber at zero is $\mathbb R$, while every nonzero fiber is $\mathbb R$ minus one point. The domain is an open manifold; the missing point in a fiber escapes to infinity as $x\to0$.

### 8.2 Crossing One Critical Point Attaches a Handle

For a Morse function on a closed four-manifold, if $[a,b]$ contains exactly one critical point of index $\lambda$ and its endpoints are regular, the sublevel set $M_b=\{f\le b\}$ is obtained, up to diffeomorphism with the usual smoothing of corners, from $M_a$ by attaching a handle

$$\begin{align}
D^\lambda\times D^{4-\lambda} \quad\text{along}\quad S^{\lambda-1}\times D^{4-\lambda}\subset\partial M_a. \tag{8.5}
\end{align}$$

For $\lambda=0$ the attaching set is empty: a zero-handle starts a component. A four-handle caps a boundary sphere. The Morse lemma describes the local change, and (8.4) transports the remainder of the strip without changing it. The full handle-attachment theorem formalizes that gluing [3].

Relative to its attaching part, the handle has the homotopy type of one $\lambda$-cell. Hence

$$\begin{align}
\chi(M_b)-\chi(M_a)=(-1)^\lambda. \tag{8.6}
\end{align}$$

A closed manifold admits Morse functions, and a compact one has finitely many critical points. If $c_\lambda$ counts them, the resulting finite cell complex gives

$$\begin{align}
\chi(M)=\sum_{\lambda=0}^4(-1)^\lambda c_\lambda, \qquad c_\lambda\ge b_\lambda(M;\mathbb F) \tag{8.7}
\end{align}$$

for any field $\mathbb F$. The strong inequalities are $\sum_{i=0}^k(-1)^{k-i}c_i\ge\sum_{i=0}^k(-1)^{k-i}b_i$, with equality for $k=4$. They follow by comparing chain dimensions with homology dimensions, so matching Euler characteristics alone does not prove that a proposed Morse function exists.

On $S^2$, the usual last-coordinate height has a minimum at the south pole and a maximum at the north pole, of indices zero and two. On the product, choose

$$\begin{align}
f(p,q)=h(p)+\varepsilon h(q),\qquad 0<\varepsilon<1. \tag{8.8}
\end{align}$$

The four critical points are the pairs of poles. Their Hessians are block diagonal and their indices add. In increasing critical-value order they are

$$
\begin{array}{c|c|c}
 (S,S)&-1-\varepsilon&0\\
 (S,N)&-1+\varepsilon&2\\
 (N,S)&1-\varepsilon&2\\
 (N,N)&1+\varepsilon&4
 \end{array}
$$

Thus $c=(1,0,2,0,1)$, equal to the Betti numbers, and the successive sublevel Euler characteristics are $0,1,2,3,4$. The unequal coefficients separate the two saddle levels. For the equal-weight sum the two index-two points share a critical value; that level produces a simultaneous jump by two, not an intermediate regular interval.

A smooth function with exactly two critical points on a closed connected manifold forces the manifold to be homeomorphic to a sphere (Reeb’s sphere theorem) [3]. This is a topological conclusion, not in general a standard-smooth-sphere conclusion. In particular it must not be used as a solution of the smooth four-dimensional Poincaré problem.

## 9. Characteristic Numbers Constrain a Smooth Tangent Bundle

The intersection form from [AST-01, Section 6](<AST-01.md#6-cohomology-duality-and-the-intersection-form>) is

$$\begin{align}
Q_M(a,b)=\langle a\smile b,[M]\rangle \quad\text{on }H^2(M;\mathbb Z)/\mathrm{torsion}.
\end{align}$$

For a closed oriented four-manifold it is unimodular. Its signature $\sigma(M)=b_2^+-b_2^-$ counts positive minus negative directions over $\mathbb R$. Section 6 realizes the same pairing by integrating wedges of closed two-forms.

Characteristic classes are natural cohomology classes of vector bundles. Pontryagin and Stiefel–Whitney classes are stable under addition of trivial summands; the Euler class instead depends on the oriented bundle rank. We use the first Pontryagin class $p_1\in H^4(M;\mathbb Z)$, the Euler class $e(TM)\in H^4(M;\mathbb Z)$ of an oriented rank-four tangent bundle, and Stiefel–Whitney classes $w_i\in H^i(M;\mathbb Z/2)$. An orientation means $w_1=0$. An oriented smooth manifold is spin if its oriented orthonormal frame bundle lifts through $\operatorname{Spin}(4)\to SO(4)$; such a lift exists precisely when $w_2=0$. Orientability alone does not imply spin.

For a complex rank-two bundle $E$, with its complex orientation,

$$\begin{align}
e(E_\mathbb R)=c_2(E),\qquad w_2(E_\mathbb R)=c_1(E)\bmod2,\qquad p_1(E_\mathbb R)=c_1(E)^2-2c_2(E). \tag{9.1}
\end{align}$$

Here $c_i\in H^{2i}(M;\mathbb Z)$ are Chern classes. The last identity follows by writing formal Chern roots $a,b$: $c_1=a+b$, $c_2=ab$, and $p_1=a^2+b^2$. The splitting principle justifies this calculation without requiring an actual decomposition into two line bundles on $M$ [5]. The Euler class is not a stable characteristic class in the same sense as $p_1,w_i$.

Two global theorems now connect these classes to previous calculations:

$$\begin{align}
\langle e(TM),[M]\rangle=\chi(M),\qquad \langle p_1(TM),[M]\rangle=3\sigma(M). \tag{9.2}
\end{align}$$

The first is the Euler-class form of Poincaré–Hopf; the second is the four-dimensional Hirzebruch signature theorem [5]. Neither requires a Lorentzian metric.

### 9.1 Projective Space and the Product of Spheres

Recall that $\mathbb{CP}^m$ consists of complex lines in $\mathbb C^{m+1}$. The tautological line bundle $L$ has the line itself as its fiber; the hyperplane bundle is its dual $\mathcal O(1)=L^*$, and $\mathcal O(d)=\mathcal O(1)^{\otimes d}$ for positive $d$. Tangent vectors at a line identify with $\operatorname{Hom}(L,\mathbb C^{m+1}/L)$. Applying $\operatorname{Hom}(L,\cdot)$ to the tautological inclusion gives the projective Euler sequence

$$\begin{align}
0\longrightarrow\underline{\mathbb C} \longrightarrow\mathcal O(1)^{\oplus(m+1)} \longrightarrow T\mathbb{CP}^m\longrightarrow0.
\end{align}$$

The total Chern class $c(E)=1+c_1(E)+c_2(E)+\cdots$ multiplies in such short exact sequences; for a line bundle it is $1+c_1$. Let $u=c_1(\mathcal O(1))$ on $\mathbb{CP}^2$, with complex orientation and $\int u^2=1$. The sequence therefore gives

$$\begin{align}
c(T\mathbb{CP}^2)=(1+u)^3=1+3u+3u^2 \quad\text{in }\mathbb Z[u]/(u^3).
\end{align}$$

Thus $c_2=3u^2$, $p_1=3u^2$, $\chi=3$, $\sigma=1$, and $w_2=u\bmod2\ne0$. This manifold is smooth and oriented but not spin.

Regard $S^2\times S^2$ as $\mathbb{CP}^1\times\mathbb{CP}^1$, with generators $u,v$ satisfying $u^2=v^2=0$, $\int uv=1$. The tangent splitting gives

$$\begin{align}
c=(1+2u)(1+2v),\quad c_1=2u+2v,\quad c_2=4uv, \quad p_1=(2u+2v)^2-8uv=0. \tag{9.3}
\end{align}$$

Consequently it is spin, $\chi=4$, and $\sigma=0$, agreeing with the handle calculation and (6.11).

### 9.2 A Quartic Surface Supplies a Smooth K3 Example

Consider the Fermat quartic

$$\begin{align}
X=\{[z_0:z_1:z_2:z_3]\in\mathbb{CP}^3:
                  z_0^4+z_1^4+z_2^4+z_3^4=0\}. \tag{9.4}
\end{align}$$

Its homogeneous gradient $(4z_0^3,\ldots,4z_3^3)$ cannot vanish at a projective point, so the hypersurface is smooth. It is a compact complex surface, hence a real four-manifold. Let $h=c_1(\mathcal O(1)|_X)$. The quartic polynomial is a section of $\mathcal O(4)$, and its nonvanishing normal derivative identifies the normal line bundle with $\mathcal O(4)|_X$. Thus

$$\begin{align}
0\longrightarrow TX\longrightarrow T\mathbb{CP}^3|_X \longrightarrow\mathcal O(4)|_X\longrightarrow0,
\end{align}$$

and Chern-class multiplicativity yields

$$\begin{align}
c(TX)=\frac{(1+h)^4}{1+4h}=1+6h^2 \quad\text{through degree four}. \tag{9.5}
\end{align}$$

The degree of the quartic gives $\int_Xh^2=4$; therefore

$$\begin{align}
c_1=0,\quad \chi(X)=\int_Xc_2=24,\quad \int_Xp_1=-48,\quad \sigma(X)=-16. \tag{9.6}
\end{align}$$

The Lefschetz hyperplane theorem supplies simple connectivity for a smooth hypersurface of this positive degree in $\mathbb{CP}^3$ [6]. The canonical line bundle is the bundle $K_X=\Lambda^2(T^{1,0}X)^*$ of holomorphic top-degree forms. Adjunction, obtained by taking determinants in the tangent-normal sequence, gives $K_X\cong\mathcal O(4-4)|_X\cong\mathcal O_X$. Thus it is a simply connected compact complex surface with trivial canonical bundle, a K3 surface; it is spin since $c_1=0$. Simple connectivity, duality, and $\chi=24$ give $b_2=22$, and then

$$\begin{align}
b_2^+=3,\qquad b_2^-=19. \tag{9.7}
\end{align}$$

The tangent-normal sequence and Lefschetz theorem are substantive geometric inputs, separate from expanding the polynomial in (9.5).

For a closed oriented four-manifold, the degree-four $\widehat A$-number is $-\langle p_1,[M]\rangle/24=-\sigma/8$. On a spin manifold it is the index of the chiral spin Dirac operator, the dimension of its positive-chirality kernel minus the dimension of the kernel of its adjoint. These dimensions are finite on a closed manifold. For K3 it equals two. This is an index-theoretic statement [5], not a claim that signature alone classifies smooth structures.

## 10. Framed Inverse Images: the Dimensions in Pontryagin–Thom

Regular inverse images carry more data than their dimension. In this section the submanifold dimension $k$ is nonnegative and the normal rank $r$ is positive. Let

$$\begin{align}
f:S^{k+r}\longrightarrow S^r
\end{align}$$

be smooth and based, and choose a regular value $y$ different from the basepoint. Then $K=f^{-1}(y)$ is a closed $k$-submanifold of $S^{k+r}$ missing the source basepoint, hence lying in $\mathbb R^{k+r}$. Its normal bundle has rank $r$. The differential identifies the normal quotient $T_pS^{k+r}/T_pK$ with the fixed vector space $T_yS^r$; an ordered basis there gives a framing of the normal bundle. A Riemannian orthogonal complement can realize this quotient as actual normal vectors.

Conversely, suppose a compact embedded $K^k\subset\mathbb R^{k+r}$ has a framed normal bundle. The tubular-neighborhood theorem identifies a closed disk neighborhood with $K\times D^r$. Collapse the complement of its interior and the neighborhood boundary to the basepoint, and on each normal disk use

$$\begin{align}
D^r/\partial D^r\cong S^r.
 \tag{10.1}
\end{align}$$

The resulting based map from the one-point compactification $S^{k+r}$ to $S^r$ is the Pontryagin–Thom collapse. The framing is precisely what identifies every normal disk with the same target disk. The collapse is continuous; it can be smoothed within its homotopy class, keeping a suitable regular inverse image.

Transverse homotopies give framed cobordisms embedded in $\mathbb R^{k+r}\times[0,1]$, and collapse of a framed cobordism gives a homotopy. The theorem identifies

$$\begin{align}
\pi_{k+r}(S^r) \quad\text{with framed-cobordism classes of compact }K^k\subset\mathbb R^{k+r} \tag{10.2}
\end{align}$$

in this fixed-codimension sense [2,7]. Both the ambient dimension and framing rank matter.

For a fixed ambient four-space, the relevant group is $\pi_4(S^{4-k})$: framed points use $\pi_4(S^4)$, framed curves use $\pi_4(S^3)$, and framed surfaces use $\pi_4(S^2)$. In contrast, $\pi_{4+k}(S^4)$ concerns $k$-submanifolds in $\mathbb R^{4+k}$ with four normal framing vectors, not in $\mathbb R^4$.

Stabilizing by adding trivial normal directions gives the framed bordism groups

$$\begin{align}
\Omega_k^{\mathrm{fr}}\cong\pi_k^S =\varinjlim_r\pi_{k+r}(S^r). \tag{10.3}
\end{align}$$

Their first values are $\mathbb Z,\mathbb Z/2,\mathbb Z/2,\mathbb Z/24$ for $k=0,1,2,3$ [7]. These stable values are separate theorem inputs; a fixed-codimension problem must not be replaced by them without a stabilization-range argument. For framed points, (10.2) reduces to the signed count defining degree. This is the concrete link to Section 7, rather than an identification of every lower-dimensional submanifold with a stable homotopy class.

## 11. Handles, Surgery, and the Limits of Dimension Counting

A smooth surgery on a closed four-manifold requires an embedded $S^k$ with a chosen trivialization of its normal bundle. For $0\le k\le3$, remove the interior of the corresponding $S^k\times D^{4-k}$, and glue in

$$\begin{align}
D^{k+1}\times S^{3-k} \quad\text{along}\quad S^k\times S^{3-k}.
 \tag{11.1}
\end{align}$$

The framing controls the gluing; an arbitrary embedded sphere need not have trivial normal bundle. Orientations are matched along collars so that the glued manifold is oriented and smooth after rounding corners.

Euler additivity gives, since the common boundary contributions cancel,

$$
\begin{aligned}
 \chi(M')-\chi(M)
 &=\chi(D^{k+1}\times S^{3-k})-\chi(S^k\times D^{4-k})\\
 &=\big(1+(-1)^{3-k}\big)-\big(1+(-1)^k\big)
 =-2(-1)^k.
 \end{aligned}
 \tag{11.2}
$$

For instance, standard framed zero-surgery on $S^4$ produces $S^1\times S^3$; its Euler characteristic is $2-2=0$.

There are two adjacent dimensions to distinguish. Crossing an index-$\lambda$ critical point of a function on a four-manifold attaches a four-dimensional handle and changes a three-dimensional level by surgery on $S^{\lambda-1}$, for $1\le\lambda\le3$. Surgery (11.1) changes a four-dimensional manifold and is realized by an index-$k+1$ handle in a five-dimensional cobordism. Confusing these two pictures shifts every dimension by one.

A blow-up of a complex surface replaces a point by an exceptional $\mathbb{CP}^1$ of self-intersection $-1$. Its oriented smooth manifold is $M\#\overline{\mathbb{CP}}^2$, so

$$\begin{align}
Q\longmapsto Q\oplus[-1],\qquad b_2\longmapsto b_2+1,\quad \sigma\longmapsto\sigma-1, \quad\chi\longmapsto\chi+1.
 \tag{11.3}
\end{align}$$

In particular $\mathbb{CP}^2\#k\overline{\mathbb{CP}}^2$ has $(b_2,\sigma,\chi)=(1+k,1-k,3+k)$. A Kirby diagram records a four-dimensional handlebody by framed attaching links for its two-handles, with appropriate notation for one-handles [8]. A diagrammatic blow-up can preserve the represented three-dimensional boundary while changing the four-dimensional filling by a blow-up. It is not a diffeomorphism of the filling.

### 11.1 What the Whitney Trick Does and Does Not Prove

For transverse submanifolds of dimensions $p,q$ in an $n$-manifold, their intersection has dimension $p+q-n$, if nonempty. In particular two surfaces in dimension four can meet at isolated points. To cancel an oppositely signed pair by a Whitney move, one seeks a disk whose boundary joins those points along the two surfaces, with controlled framing, embedded interior, and interior disjoint from the surfaces.

A candidate Whitney disk has dimension two. Its generic intersection with a surface again has dimension $2+2-n$: negative for $n\ge5$, zero for $n=4$. Thus simple general position does not automatically clear the disk in dimension four. This is an obstruction to an argument, not a theorem that every Whitney disk must intersect or that no pair of intersections can ever be removed. Existence of the boundary disk, fundamental-group conditions, framing, and intersections among the relevant handles also matter [8].

A smooth h-cobordism $W^{n+1}$ from $M_0^n$ to $M_1^n$ is a compact cobordism for which both inclusions $M_i\hookrightarrow W$ are homotopy equivalences. The simply connected smooth h-cobordism theorem says that, for $n\ge5$ and closed simply connected ends, $W$ is diffeomorphic to $M_0\times[0,1]$, relative to its incoming boundary [9]. The threshold refers to end dimension $n$; the cobordism has dimension at least six. Handle cancellation and Whitney moves underlie the proof, not the surface-dimension calculation alone.

For four-dimensional ends the smooth product conclusion fails in general: non-product smooth five-dimensional h-cobordisms between closed simply connected smooth four-manifolds exist [8,10]. Topological four-dimensional results use additional theorems, notably Freedman’s disk-embedding machinery; they are not obtained by declaring the same smooth disks embedded.

One way to localize smooth failure is a cork: a compact contractible smooth four-manifold $C$, with a boundary involution $\tau$ that extends homeomorphically over $C$ but not diffeomorphically. Removing an embedded $C$ and regluing by $\tau$ can preserve homeomorphism type while changing diffeomorphism type. Cork theorems localize the non-product behavior of smooth h-cobordisms of simply connected closed four-manifolds in such pieces [10]. The boundary is an integral homology three-sphere because $C$ is contractible, but need not be $S^3$. A general homology-sphere boundary alone is not the definition of a cork. The theorem is an existence/localization result; it supplies neither a cork diagram nor a smooth classification from a lattice calculation.

## 12. Four-Dimensional Smoothability: Explicit Distinctions and Obstructions

The topological classification recalled in [AST-01, Section 9](<AST-01.md#9-what-the-intersection-form-classifies>) concerns closed simply connected oriented topological four-manifolds. Freedman’s theorem realizes every symmetric unimodular integral intersection form and classifies the oriented homeomorphism type by that form together with the Kirby–Siebenmann invariant $\kappa\in\mathbb Z/2$. An even unimodular integral lattice has signature divisible by eight, the even case of the van der Blij lemma [8]; thus the quotient in the following parity constraint is an integer. For an even form,

$$\begin{align}
\kappa\equiv\frac{\sigma}{8}\pmod2; \tag{12.1}
\end{align}$$

for an odd form both values occur [11; see also the concise statement of the parity clauses in the [MathWorld reference](https://mathworld.wolfram.com/FreedmanTheorem.html)]. A smooth manifold has $\kappa=0$; the converse is false in dimension four.

For the following examples, define $E_8$ by the integral symmetric matrix with diagonal two and off-diagonal $-1$ on the edges

$$\begin{align}
(1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(5,8),
\end{align}$$

and zero on the other off-diagonal entries. Its leading principal minors are $2,3,4,5,6,7,8,1$. Sylvester’s criterion therefore proves positive definiteness, and the last minor gives unimodularity. For any integral vector $v$,

$$\begin{align}
v^{\mathsf T}E_8v=2\sum_i v_i^2-2\sum_{\text{edges }(i,j)}v_iv_j
\end{align}$$

is even. Thus this rank-eight form is even, unimodular, and of signature eight. It has no vector of norm one, whereas the positive identity lattice does.

Three smooth theorems impose different restrictions:

- **Rokhlin.** A closed oriented smooth spin four-manifold has $\sigma\equiv0\pmod{16}$ [12].
- **Donaldson diagonalization, simply connected version.** A closed oriented simply connected smooth four-manifold with definite intersection form has that integral form isometric to $+I$ or $-I$, according to the sign [13].
- **Furuta’s 10/8 theorem, in a sufficient form for these examples.** A closed oriented simply connected smooth spin four-manifold with indefinite intersection form satisfies $b_2\ge\tfrac54|\sigma|+2$ [14]. In particular the indefinite/nontrivial-form hypothesis is part of this statement; it does not assert $0\ge2$ for $S^4$.

For a closed simply connected oriented smooth four-manifold, the intersection form is even exactly when it is spin. This uses Wu’s formula and the absence of torsion in the relevant degree, as explained in [AST-01, Section 10](<AST-01.md#10-tangent-bundles-spin-and-lorentzian-time-directions>). Thus an assumed smoothing of a simply connected even-form topological example would be spin, permitting application of the stated smooth theorems.

Freedman’s theorem realizes $-E_8$ topologically. Its signature is $-8$, and (12.1) forces $\kappa=1$, not zero. It is not smoothable; an assumed smoothing would also contradict Rokhlin. This example already separates topological existence from smooth existence.

The form $(-E_8)\oplus(-E_8)$ is a sharper distinction. Its signature is $-16$, so its unique simply connected topological realization has $\kappa=0$, and its signature passes Rokhlin’s divisibility test. Nevertheless it is definite and even, whereas $-I_{16}$ is odd. It cannot be integrally isometric to $-I_{16}$, since parity of every self-pairing is invariant under integral basis change. Donaldson therefore rules out a smoothing. Vanishing $\kappa$ and passing one signature test are not sufficient.

Let $H=\left(\begin{smallmatrix}0&1\\1&0\end{smallmatrix}\right)$. The indefinite forms

$$\begin{align}
Q_\ell=2(-E_8)\oplus\ell H,\qquad \ell\ge1,
\end{align}$$

have $b_2=16+2\ell$, $\sigma=-16$, and $\kappa=0$ for their simply connected topological realizations. A smooth realization would be spin and would obey

$$\begin{align}
16+2\ell\ge\frac54\,16+2=22, \qquad\text{hence}\qquad\ell\ge3. \tag{12.2}
\end{align}$$

Furuta excludes $\ell=1,2$, which neither the definite-form version of Donaldson nor Rokhlin excludes. The K3 example realizes $\ell=3$: its even indefinite unimodular form is

$$\begin{align}
Q_{K3}\cong2(-E_8)\oplus3H, \tag{12.3}
\end{align}$$

by the classification of indefinite even unimodular forms with its rank and signature [8]. The two negative blocks and three hyperbolic blocks give inertia $(3,19)$, independently agreeing with (9.7). No estimate on a numerical matrix spectrum proves any of the smooth obstruction theorems.

The stronger bound $b_2\ge\tfrac{11}{8}|\sigma|$ is the 11/8 conjecture, not an established replacement for (12.2). K3 attains both displayed bounds. This does not make K3 a minimum among all smooth spin four-manifolds: the bound depends on signature and hypotheses.

### 12.1 Exotic Structures and What Remains Open

An exotic $\mathbb R^4$ is a smooth manifold homeomorphic but not diffeomorphic to standard Euclidean four-space. There are uncountably many pairwise nondiffeomorphic such manifolds [15,16]. For $n\ne4$, a smooth manifold homeomorphic to $\mathbb R^n$ is diffeomorphic to standard $\mathbb R^n$ [8,16]. In dimensions at most three, topological manifolds admit smooth structures unique up to diffeomorphism; this is a low-dimensional structure theorem, not a consequence of Ricci-flow evolution of arbitrary atlases [17]. Higher dimensions also have exotic smooth manifolds, notably exotic spheres. The exceptional Euclidean-space statement must not be replaced by the assertion that all exotic smooth phenomena occur only in dimension four.

A homeomorphism from an exotic $\mathbb R^4$ to $\mathbb R^4$ is not a global smooth coordinate chart with smooth inverse. Its topological one-point compactification is homeomorphic to $S^4$, but the topology alone does not extend its smooth structure across the new point. Conversely, a topological four-manifold with no smoothing and a smoothable one with several nondiffeomorphic smoothings are different situations.

An exotic $\mathbb R^4$ cannot carry a complete flat **Riemannian** metric. If it did, it would be a complete simply connected manifold of nonpositive sectional curvature. The Cartan–Hadamard theorem makes the exponential map a global diffeomorphism from a tangent space $\mathbb R^4$ onto it; with zero curvature it is a Euclidean isometry [18]. That contradicts exoticness. This argument uses positive-definite metric completeness. It proves neither a corresponding Lorentzian theorem nor any particular curvature concentration for all metrics.

Freedman’s theorem implies that a closed manifold homotopy equivalent to $S^4$ is homeomorphic to $S^4$. Whether every smooth homotopy four-sphere is diffeomorphic to the standard smooth $S^4$ is the smooth four-dimensional Poincaré conjecture and remains open. Exotic $\mathbb R^4$ examples do not settle it. The intersection form is zero for a homotopy four-sphere, so the lattice restrictions above do not decide it either.

## 13. When a Smooth Four-Manifold Can Be a Lorentzian Spacetime

A Lorentzian metric in this collection has signature $(- ,+,+,+)$. It is extra structure on a smooth manifold, not part of the definition of smooth structure, degree, handles, or intersection form.

A time-oriented Lorentzian metric supplies a smooth nowhere-zero timelike field. Locally choose future timelike fields and glue them with a partition of unity: the chosen future timelike cone in each tangent space is convex, so the weighted sum stays timelike. Conversely, given a smooth nowhere-zero field, choose a Riemannian metric $h$, normalize the field to $h(V,V)=1$, and define

$$\begin{align}
g=h-2\,h(V,\cdot)\otimes h(V,\cdot). \tag{13.1}
\end{align}$$

It is negative on $\mathbb RV$, positive on its $h$-orthogonal three-plane, and makes $V$ a chosen timelike direction. This establishes the equivalence between a nowhere-zero tangent field and a time-oriented Lorentzian metric.

For a closed connected oriented smooth four-manifold, the existence condition is $\chi(M)=0$. Necessity is (7.5). Sufficiency uses the Euler obstruction: the unit tangent sphere has fiber $S^3$, whose homotopy groups in degrees below three vanish, so the only obstruction to a nonzero section over a four-dimensional CW model lies in degree four and is $e(TM)$. Since $H^4(M;\mathbb Z)\cong\mathbb Z$, its vanishing is equivalent to its evaluation $\chi(M)=0$. This is the obstruction-theoretic input, not a consequence of merely finding a field with cancelling local indices.

Even a Lorentzian metric that is not time orientable would force $\chi=0$: pass to its time-orientation double cover, apply the preceding necessity there, and use multiplicativity of Euler characteristic under finite covers. Thus $S^4$, $S^2\times S^2$, $\mathbb{CP}^2$, and K3, with Euler characteristics $2,4,3,24$, do not admit Lorentzian metrics. They remain valid smooth and topological examples throughout the chapter. The closed torus admits such metrics, but compactness precludes a real-valued smooth function with everywhere nonzero differential, since any such function has extrema.

On the noncompact product $\mathbb R\times\Sigma^3$, the field $\partial_t$ is explicit and

$$\begin{align}
g=-dt^2+h_\Sigma \tag{13.2}
\end{align}$$

is Lorentzian for any Riemannian metric on $\Sigma$. No closed-manifold Euler condition is being applied to this example. A global frame, a nowhere-zero field, a product decomposition, and a causally well-behaved metric are distinct data.

In particular, a temporal function, meaning a smooth real function with timelike gradient, is a submersion, but need not be proper. Its mere existence does not imply global hyperbolicity. For example, Minkowski space with one event removed retains its standard temporal coordinate, while suitable causal diamonds are not compact because they approach the missing event. In contrast, a globally hyperbolic time-oriented smooth spacetime has a smooth Cauchy temporal function and a diffeomorphism $M\cong\mathbb R\times\Sigma$, with all its Cauchy hypersurfaces diffeomorphic [19]. Here a Cauchy hypersurface meets every inextendible causal curve exactly once; we use the definition of global hyperbolicity by strong causality and compact causal diamonds. Strong causality means that every point has arbitrarily small neighborhoods that no causal curve leaves and then reenters. Hence different Cauchy-slice topologies cannot occur within that setting.

The compact-strip argument (8.4) is a separate, purely smooth statement about properness and absence of critical points. Neither that argument nor the Lorentzian splitting theorem says that every topology-changing cobordism admits a physically admissible metric or solves gravitational field equations. Smooth structure specifies the calculus in which such equations could be posed; it does not determine their solutions or a prescription for summing over smooth structures.

## References and Further Reading

[1] John M. Lee, *Introduction to Smooth Manifolds*, second edition, Springer, 2013. Charts, tangent bundles, partitions of unity, embeddings, flows, integration, and submersions.

[2] Victor Guillemin and Alan Pollack, *Differential Topology*, Prentice-Hall, 1974; John Milnor, *Topology from the Differentiable Viewpoint*, Princeton University Press, 1965. Regular values, transversality, degree, indices, and framed inverse images.

[3] John Milnor, *Morse Theory*, Princeton University Press, 1963. Morse lemma, handle attachment, and sphere theorems.

[4] Raoul Bott and Loring W. Tu, *Differential Forms in Algebraic Topology*, Springer, 1982. Homotopy operator, de Rham theorem, and product calculations.

[5] John Milnor and James Stasheff, *Characteristic Classes*, Princeton University Press, 1974; H. Blaine Lawson and Marie-Louise Michelsohn, *Spin Geometry*, Princeton University Press, 1989. Characteristic classes, signature, and spin index theory.

[6] Phillip Griffiths and Joseph Harris, *Principles of Algebraic Geometry*, Wiley, 1978. Smooth projective hypersurfaces, tangent-normal sequences, and Lefschetz theorems.

[7] John Milnor, *Topology from the Differentiable Viewpoint*, Princeton University Press, 1965; Hirosi Toda, *Composition Methods in Homotopy Groups of Spheres*, Princeton University Press, 1962. Pontryagin–Thom construction and low stable stems.

[8] Robert E. Gompf and András I. Stipsicz, *4-Manifolds and Kirby Calculus*, American Mathematical Society, 1999. Intersection lattices, surgery, Kirby diagrams, smooth four-dimensional phenomena, and exotic Euclidean spaces.

[9] John Milnor, *Lectures on the h-Cobordism Theorem*, Princeton University Press, 1965. Smooth simply connected theorem with cobordism dimension at least six.

[10] Robion Kirby, “Akbulut’s corks and h-cobordisms of smooth, simply connected 4-manifolds,” *Turkish Journal of Mathematics* **20** (1996), 85–93. Cork localization for smooth five-dimensional h-cobordisms.

[11] Michael H. Freedman, “The topology of four-dimensional manifolds,” *Journal of Differential Geometry* **17** (1982), 357–453; Michael H. Freedman and Frank Quinn, *Topology of 4-Manifolds*, Princeton University Press, 1990, especially the simply connected specialization of the classification theorem. A short accessible statement is [Freedman Theorem, MathWorld](https://mathworld.wolfram.com/FreedmanTheorem.html).

[12] Vladimir A. Rokhlin, “New results in the theory of four-dimensional manifolds,” *Doklady Akademii Nauk SSSR* **84** (1952), 221–224. The smooth spin signature divisibility theorem; see also [5,8].

[13] Simon K. Donaldson, “An application of gauge theory to four-dimensional topology,” *Journal of Differential Geometry* **18** (1983), 279–315. The simply connected definite-form theorem used here.

[14] Mikio Furuta, “Monopole equation and the 11/8-conjecture,” *Mathematical Research Letters* **8** (2001), 279–291. The 10/8 theorem; the indefinite simply connected spin case suffices for Section 12.

[15] Clifford H. Taubes, “Gauge theory on asymptotically periodic 4-manifolds,” *Journal of Differential Geometry* **25** (1987), 363–430. Uncountable families of exotic smooth structures on Euclidean four-space.

[16] Robert E. Gompf, “An exotic menagerie,” *Journal of Differential Geometry* **37** (1993), 199–223; see also [8]. Exotic Euclidean four-spaces and their surrounding structure theory.

[17] Edwin E. Moise, *Geometric Topology in Dimensions 2 and 3*, Springer, 1977. Low-dimensional triangulation and structure theorems.

[18] Manfredo P. do Carmo, *Riemannian Geometry*, Birkhäuser, 1992. Completeness and Cartan–Hadamard.

[19] Antonio N. Bernal and Miguel Sánchez, “Smoothness of time functions and the metric splitting of globally hyperbolic spacetimes,” *Communications in Mathematical Physics* **257** (2005), 43–50, [arXiv:gr-qc/0401112](https://arxiv.org/abs/gr-qc/0401112).
