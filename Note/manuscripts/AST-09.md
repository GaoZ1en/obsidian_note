# Discrete Geometry and Geometric Discretization

Status: DRAFT — bounded review recorded.

A geometric discretization contains several different choices. Incidence specifies which oriented cells bound which others. A metric supplies lengths, volumes and inner products. Group-valued links supply transport. An action or an evolution equation supplies dynamics. These layers interact, but none is determined simply by counting the entries of another. We construct each layer far enough to calculate: two triangles give an exact cochain complex, a Lorentzian simplex gives signed edge and volume data, a cone fixes the normalization of Regge curvature, and ordered links reproduce the sign of small-loop curvature.

The [shared conventions](<../CONVENTIONS.md>) fix Lorentzian signature $(-,+,+,+)$ and derivative-first connection slots. Group variables follow the [bundle chapter](<AST-08.md>): associated components change by $v_i'=u_i^{-1}v_i$, the covariant derivative is $D=d+A$, and unitary matrix potentials are anti-Hermitian. The Euclidean simplices and cones below are auxiliary Riemannian constructions, not Lorentzian spacetimes. Length scales are retained explicitly; angular variables and cochains obtained by integrating a connection phase are dimensionless.

## 1. Oriented Incidence and an Exact Discrete Stokes Theorem

A finite simplicial complex $K$ consists of vertices and simplices together with all their faces; intersections are common faces. An orientation of a $p$-simplex is an ordering $[v_0\ldots v_p]$ modulo even permutations. Reversing orientation changes its sign. Real $p$-chains are formal real linear combinations of oriented $p$-simplices, forming a finite-dimensional vector space $C_p(K;\mathbb R)$. Define the boundary by

$$\begin{align}
\partial_p[v_0\ldots v_p] =\sum_{j=0}^p(-1)^j[v_0\ldots\widehat v_j\ldots v_p].
\end{align}$$

Each codimension-two face appears twice in $\partial_{p-1}\partial_p$: deleting vertex $i$ then vertex $j$ gives the opposite sign from deleting $j$ then $i$. Thus $\partial^2=0$. This is an orientation/incidence identity, not an approximation to a differential equation.

Here is the entire complex for a square divided by a diagonal. Order the vertices as $(0,1,2,3)$, the edges as

$$\begin{align}
(e_{01},e_{12},e_{02},e_{23},e_{03}),
\end{align}$$

with each edge directed from its first label to its second, and the faces as $[012],[023]$. The boundary matrices, acting on column chains, are

$$
B_1=\begin{pmatrix}
-1&0&-1&0&-1\\
1&-1&0&0&0\\
0&1&1&-1&0\\
0&0&0&1&1
\end{pmatrix},
\qquad
B_2=\begin{pmatrix}
1&0\\
1&0\\
-1&1\\
0&1\\
0&-1
\end{pmatrix}.
$$

For example, $\partial[012]=e_{01}+e_{12}-e_{02}$. Matrix multiplication gives $B_1B_2=0$. The sum $c=[012]+[023]$ has boundary

$$\begin{align}
\partial c=e_{01}+e_{12}+e_{23}-e_{03};
\end{align}$$

the diagonal cancels, while the outer boundary is traversed $0\to1\to2\to3\to0$.

A $p$-cochain is a linear functional on $C_p$, so $C^p=\operatorname{Hom}(C_p,\mathbb R)$. Its value on an oriented simplex is a discrete integral, not automatically a pointwise field value. Define the coboundary $d_p:C^p\to C^{p+1}$ by

$$\begin{align}
\langle d_pa,c\rangle:=\langle a,\partial_{p+1}c\rangle, \qquad d_p=B_{p+1}^T.
\end{align}$$

This equality is the discrete Stokes theorem. It immediately implies $d_{p+1}d_p=0$. In the square example an edge cochain $a=(a_{01},a_{12},a_{02},a_{23},a_{03})^T$ has face values

$$
d_1a=\begin{pmatrix}
a_{01}+a_{12}-a_{02}\\
a_{02}+a_{23}-a_{03}
\end{pmatrix}.
$$

Their sum is the oriented outer-boundary sum. For vertex data $\lambda=(\lambda_0,\ldots,\lambda_3)^T$, the edge $ij$ component of $d_0\lambda$ is $\lambda_j-\lambda_i$. Therefore

$$\begin{align}
a\longmapsto a+d_0\lambda, \qquad f:=d_1a\longmapsto f,
\end{align}$$

an exact abelian gauge invariance. Here $a$ and $f$ are real cochains. They are not anti-Hermitian matrices; Section 6 specifies the conversion to $U(1)$ transport. No edge length, area or Hodge star was needed for any identity in this section.

## 2. The Finite Positive-Inner-Product Hodge Theorem

To define adjoints, choose a symmetric positive-definite matrix $H_p$ on each $C^p$ and set

$$\begin{align}
\langle a,b\rangle_p=a^TH_pb, \qquad \delta_p:=H_{p-1}^{-1}d_{p-1}^TH_p:C^p\to C^{p-1}.
\end{align}$$

Then $\langle d_{p-1}a,b\rangle_p=\langle a,\delta_pb\rangle_{p-1}$. The finite Hodge Laplacian is

$$\begin{align}
\Delta_p=\delta_{p+1}d_p+d_{p-1}\delta_p,
\end{align}$$

with missing endpoint terms set to zero. Its defining quadratic form is

$$\begin{align}
\langle a,\Delta_pa\rangle_p =\lVert d_pa\rVert_{p+1}^2+\lVert\delta_pa\rVert_{p-1}^2.
\end{align}$$

Positivity is the consequential step: it gives $\ker\Delta_p=\ker d_p\cap\ker\delta_p$. The spaces $\operatorname{im}d_{p-1}$ and $\operatorname{im}\delta_{p+1}$ are orthogonal, because

$$\begin{align}
\langle d_{p-1}b,\delta_{p+1}c\rangle_p =\langle d_pd_{p-1}b,c\rangle_{p+1}=0.
\end{align}$$

Their common orthogonal complement is $\ker\delta_p\cap\ker d_p$, so finite-dimensional orthogonal decomposition yields

$$\begin{align}
C^p=\operatorname{im}d_{p-1} \mathbin{\oplus}\ker\Delta_p \mathbin{\oplus}\operatorname{im}\delta_{p+1}.
\end{align}$$

For a closed cochain the coexact component must vanish: if $d_pa=0$, then $\langle a,\delta_{p+1}c\rangle_p=0$ for every $c$. Hence every cohomology class in $\ker d_p/\operatorname{im}d_{p-1}$ has exactly one harmonic representative. An exact harmonic cochain has zero norm, by pairing $d_{p-1}b$ with that cochain, so it vanishes. This proves uniqueness rather than inferring it from a rank count.

For the square choose $H_0=I_4$, $H_1=I_5$, $H_2=I_2$. Then

$$
\Delta_0=B_1B_1^T,
\qquad
\Delta_1=B_1^TB_1+B_2B_2^T,
\qquad
\Delta_2=B_2^TB_2=\begin{pmatrix}3&-1\\-1&3\end{pmatrix}.
$$

The eigenvalues of $\Delta_0$ are $0,2,4,4$; its kernel is the constant vertex cochains. The ranks of $B_1,B_2$ are $3,2$, giving Betti numbers $(1,0,0)$, and $\Delta_1,\Delta_2$ are invertible. The chosen identity matrices illustrate the Hilbert-complex theorem. They are not a claim that every geometric mesh has identity Hodge matrices.

A discretization intended to approximate a metric inner product must supply its own $H_p$. For one concrete prescription, choose an oriented circumcentric dual in an auxiliary $n$-dimensional Riemannian mesh, with nonzero primal volumes, positive dual volumes and orientations fixed so that a primal cell followed by its orthogonal dual has the ambient orientation. Set the volume of a zero-cell to $V_0=1$. A diagonal discrete star is defined by

$$\begin{align}
\star_h:C^p(K)\to C^{n-p}(K^\star), \qquad (\star_h a)(\star\sigma^p) =\frac{V_{n-p}(\star\sigma^p)}{V_p(\sigma^p)}\,a(\sigma^p).
\end{align}$$

The corresponding diagonal inner-product weights are $H_{p,\sigma\sigma}=V_{n-p}(\star\sigma)/V_p(\sigma)$, with units of length to the power $n-2p$. They define a metric quadrature; they do not make an exact smooth-field integral identity for every interpolant. The dual cells and their treatment at a boundary are part of the prescription. General meshes need not satisfy the positivity assumptions, so incidence alone does not guarantee a positive geometric star. Other choices, such as finite-element mass matrices, need their own approximation arguments. Even when a positive choice exists, different choices change the Laplacian while leaving $d^2=0$ intact.

A Lorentzian construction is not covered by the positive theorem. If nondegenerate but indefinite matrices $J_p$ replace $H_p$, the same adjoint formula is algebraically meaningful, but the sum of squared terms can cancel. For an explicit linear-algebra counterexample, take the complex $\mathbb R\xrightarrow{d}\mathbb R^2\to0$ with

$$
d=\begin{pmatrix}1\\1\end{pmatrix},
\qquad J_0=(1),\quad J_1=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
\qquad\delta=d^TJ_1=(1,-1).
$$

Then $\Delta_0=\delta d=0$, although $d\ne0$ and $\ker d=0$. A Laplacian-zero vector need not be closed. This is an obstruction to transferring the positive proof, not a proposed Lorentzian mesh. In a geometric Lorentzian discretization, null primal or dual cells can introduce further singularities in volume-ratio constructions. Their treatment requires an explicitly chosen prescription.

## 3. Simplex Metrics from Signed Squared Edges

Fix an affine four-simplex with vertices $p_0,\ldots,p_4$ and independent edge vectors $e_i=p_i-p_0$, $i=1,\ldots,4$. For a constant bilinear form on its affine span define signed squared edges

$$\begin{align}
q_{ij}:=g(p_j-p_i,p_j-p_i), \qquad q_{ii}=0.
\end{align}$$

A timelike edge has $q_{ij}<0$ in our Lorentzian convention; one must not call its square root a positive real edge length. The Gram matrix in the edge basis is reconstructed by polarization:

$$\begin{align}
G_{ij}=g(e_i,e_j)=\frac12(q_{0i}+q_{0j}-q_{ij}).
\end{align}$$

Conversely, $q_{0i}=G_{ii}$ and $q_{ij}=G_{ii}+G_{jj}-2G_{ij}$. These are inverse linear maps between ten squared-edge values and ten symmetric matrix entries. Geometric realizability with a chosen signature imposes an additional condition on the resulting matrix.

A nondegenerate Euclidean four-simplex requires $G$ positive definite. A simplex realizable with $\eta=\operatorname{diag}(-1,1,1,1)$ requires precisely one negative and three positive eigenvalues, with no zero eigenvalues. By Sylvester's law of inertia this is equivalent to the existence of an invertible edge matrix $E$ with $G=E^T\eta E$. The weaker condition $\det G<0$ does not select this inertia: $\operatorname{diag}(-1,-1,-1,1)$ also has negative determinant but three negative directions. Edge causal signs alone are not a replacement for the full Gram test.

The absolute four-volume is

$$\begin{align}
V_4=\frac{\sqrt{|\det G|}}{4!}.
\end{align}$$

Indeed, the coordinate simplex occupies $1/4!$ of its edge parallelepiped, whose metric volume density is $\sqrt{|\det G|}$. In a Lorentz-orthonormal ambient coordinate system, $\det G=\det\eta\,(\det E)^2=-(\det E)^2$. The absolute volume is therefore $|\det E|/24$, not an imaginary quantity. Orientation may give a separate signed volume; it is not encoded by the absolute value.

A complete Lorentzian example, with $L>0$, is

$$\begin{aligned}
p_0&=(0,0,0,0),&p_1&=(2L,0,0,0),\\
p_2&=(0,L,0,0),&p_3&=(0,0,L,0),&p_4&=(0,0,0,L).
\end{aligned}$$

Its nonzero squared-edge data are

$$\begin{aligned}
q_{01}&=-4L^2, &q_{02}=q_{03}=q_{04}&=L^2,\\
q_{12}=q_{13}=q_{14}&=-3L^2, &q_{23}=q_{24}=q_{34}&=2L^2.
\end{aligned}$$

The reconstruction gives $G=L^2\operatorname{diag}(-4,1,1,1)$, so its inertia is exactly $(-,+,+,+)$ and $V_4=L^4/12$. No edge in this example is null. A nondegenerate full simplex can nevertheless have null lower-dimensional faces in other configurations; angle formulas using normalized face normals then need separate treatment.

For a $d$-simplex form the Cayley–Menger matrix with an auxiliary first row and column of ones and the squared-edge matrix below:

$$
\mathrm{CM}=\begin{pmatrix}0&\mathbf1^T\\\mathbf1&(q_{ij})_{i,j=0}^d\end{pmatrix}.
$$

Subtract the vertex-$0$ row from every other vertex row, and perform the corresponding column subtractions. With $q=(q_{01},\ldots,q_{0d})^T$, the matrix becomes

$$
\begin{pmatrix}
0&1&0\\
1&0&q^T\\
0&q&-2G
\end{pmatrix}.
$$

Expansion in the first row now proves, for every dimension and either signature,

$$\begin{align}
\det\mathrm{CM}=(-1)^{d+1}2^d\det G, \qquad V_d^2=\frac{|\det G|}{(d!)^2}.
\end{align}$$

For the Lorentzian example $\det\mathrm{CM}=64L^8$ and $V_4^2=L^8/144$. The determinant identity is signature-independent algebra; interpreting its sign and extracting an absolute volume is a separate step.

To build a piecewise-flat metric, assume a chosen triangulated piecewise-linear manifold and assign compatible squared edges to its simplices. Shared faces must carry the same induced metric under their affine identification. Admissible nondegenerate Gram matrices, and any desired orientation or time-orientation compatibility, must be checked. A local simplex reconstruction does not prove that arbitrary edge assignments define a globally acceptable spacetime.

## 4. Curvature Concentrated at a Cone Tip and at a Hinge

The factor relating a deficit angle to scalar curvature can be derived in two dimensions. Consider the auxiliary Riemannian cone

$$\begin{align}
ds^2=dr^2+\alpha^2r^2d\phi^2, \qquad r>0,\quad 0\le\phi<2\pi,\quad\alpha>0.
\end{align}$$

Its total angle is $2\pi\alpha$, and its deficit is $\epsilon=2\pi(1-\alpha)$. The change of variable $\vartheta=\alpha\phi$ makes the metric locally Euclidean away from the tip; only the angular identification differs. A cap calculation determines the concentrated curvature without assigning a pointwise scalar at the singularity.

Replace the tip by $dr^2+f(r)^2d\phi^2$, choosing a smooth cap with $f(r)>0$ for $r>0$, $f(r)=r$ near the center and $f(r)=\alpha r$ near its outer radius $R$. In particular, $f(0)=0$, $f'(0)=1$, $f(R)=\alpha R$ and $f'(R)=\alpha$. In an orthonormal coframe $e^1=dr$, $e^2=f\,d\phi$, the torsion-free connection has $\omega^2{}_1=f' d\phi$. Its curvature is $d\omega^2{}_1=f''dr\wedge d\phi$, giving Gaussian curvature $K=-f''/f$ and scalar curvature $R^{(2)}=2K$. The cap volume element is $f\,dr\,d\phi$. Consequently

$$\begin{aligned}
\int_{\rm cap}R^{(2)}\,dA &=-2\int_0^{2\pi}d\phi\int_0^R f''(r)\,dr\\
 &=-4\pi\bigl(f'(R)-f'(0)\bigr) =4\pi(1-\alpha)=2\epsilon.
\end{aligned}$$

The answer depends only on the endpoint slopes, not on the interpolation. Smooth matching caps may be chosen; the formula fixes the local curvature measure under such regularization. Five equilateral Euclidean triangles meeting at one vertex have total angle $5\pi/3$, so $\alpha=5/6$, $\epsilon=\pi/3$ and integrated scalar curvature $2\pi/3$. Gaussian curvature integrates to $\epsilon$, not $2\epsilon$.

In a four-dimensional piecewise-flat Euclidean manifold, a generic point inside a triangular hinge has a flat two-dimensional tangent factor and a conical normal factor. If its hinge area is $A_h$, the same local calculation supplies scalar-curvature weight $2A_h\epsilon_h$. Thus the Regge curvature functional

$$\begin{align}
\mathcal R_K:=\sum_{h\ \mathrm{interior}}A_h\epsilon_h, \qquad \epsilon_h=2\pi-\sum_{\sigma\supset h}\theta_h^\sigma,
\end{align}$$

is one half of the integrated interior scalar-curvature measure. Here $\theta_h^\sigma\in(0,\pi)$ is the Euclidean interior dihedral angle. With $\kappa=8\pi G$, the normalization corresponding to $\int R\,dV/(2\kappa)$ is $\mathcal R_K/\kappa$. This fixes a curvature normalization; a sign assigned to a Euclidean path-integral action or a Wick rotation is an additional choice.

These compact angles must not be transferred unchanged to every Lorentzian hinge. For a non-null timelike hinge in four dimensions, its normal plane is positive definite and its orthogonal transport can be a rotation. A spacelike hinge has a Lorentzian normal plane, where the relevant connected transport can instead be a boost with a rapidity. Null hinges have degenerate induced structures and different stabilizers. Signed dihedral data, branches, time orientations and the reference flat angle must be defined within a causal sector before a Lorentzian Regge action is written. No universal $2\pi$-minus-real-angle prescription for the boost and null sectors is derived here.

## 5. Euclidean Angles, Schlaefli Cancellation and Interior-Edge Equations

An actual angle construction is useful both for evaluation and variation. In a Euclidean simplex use edge-basis affine coordinates and barycentric functions $\lambda_i$, with $\lambda_0=1-\sum_{i=1}^4\lambda_i$. Their constant covectors are

$$\begin{align}
r_0=(-1,-1,-1,-1)^T, \qquad r_i=\text{the }i\text{th coordinate covector},\quad i=1,\ldots,4.
\end{align}$$

The facet opposite vertex $i$ is $\lambda_i=0$, and $r_i$ points inward after metric duality. The interior angle at the hinge opposite vertices $i,j$ is therefore

$$\begin{align}
\cos\theta_{ij} =-\frac{r_i^TG^{-1}r_j} {\sqrt{(r_i^TG^{-1}r_i)(r_j^TG^{-1}r_j)}}.
\end{align}$$

The minus sign converts the angle between outward normals to the interior dihedral angle. Choosing two normal directions without fixing their inward/outward conventions would not determine this sign. Hinge areas are computed from their two-edge Gram matrices by $A=\sqrt{\det G_2}/2$.

For a regular Euclidean four-simplex of edge length $L$,

$$\begin{align}
G=\frac{L^2}{2}(I+J), \qquad \cos\theta=\frac14, \qquad A_h=\frac{\sqrt3}{4}L^2, \qquad V_4=\frac{\sqrt5}{96}L^4,
\end{align}$$

where $J$ has every entry equal to one. Its Gram matrix is positive definite, so this example has no Lorentzian interpretation by relabelling one coordinate.

The Euclidean Schlaefli identity is the following theorem for each nondegenerate flat four-simplex [1]: for every infinitesimal edge variation staying in the open set of positive-definite simplex metrics,

$$\begin{align}
\sum_{h\subset\sigma}A_h\,d\theta_h^\sigma=0.
\end{align}$$

It does not require the four-volume to stay fixed. Its role is to eliminate the angle derivatives, not to say that the individual angles or areas are constant. We use the general identity as a geometric theorem; a calculation in one shape family is an illustration, not its proof for all ten independent edge variations.

For a worked family take vertices $0,L\hat e_1,L\hat e_2,L\hat e_3,wL\hat e_4$, where $\hat e_i$ are Euclidean unit coordinate vectors and $w>0$. The six hinges containing the origin have constant dihedral angle $\pi/2$. For the remaining four, one has

$$\begin{aligned}
A_{123}&=\frac{\sqrt3}{2}L^2, &\cos\theta_{123}&=\frac1{\sqrt{1+3w^2}},\\
A_{124}=A_{134}=A_{234}&=\frac{L^2}{2}\sqrt{1+2w^2}, &\cos\theta_{234}&=\frac{w}{\sqrt{1+3w^2}},
\end{aligned}$$

with equal angles in the second row. Differentiating the arccosines gives

$$\begin{align}
\frac{d\theta_{123}}{dw}=\frac{\sqrt3}{1+3w^2}, \qquad \frac{d\theta_{234}}{dw} =-\frac1{(1+3w^2)\sqrt{1+2w^2}}.
\end{align}$$

The area-weighted sum is $3L^2/[2(1+3w^2)]$ plus three copies of $-L^2/[2(1+3w^2)]$, hence zero. But $V_4=wL^4/24$ varies. The cancellation survives a volume-changing variation.

For a triangulated Euclidean manifold with boundary, use the curvature functional with boundary exterior angles [2],

$$\begin{align}
\mathcal R_K^{\partial} =\sum_{h\ \mathrm{interior}}A_h\epsilon_h +\sum_{h\subset\partial K}A_h\psi_h, \qquad \psi_h=\pi-\sum_{\sigma\supset h}\theta_h^\sigma.
\end{align}$$

Consider a fixed combinatorial triangulation, nondegenerate simplices and variations of interior edge lengths, holding every boundary edge length fixed. There is no matter or cosmological term in this functional. Differentiation and regrouping by four-simplex give

$$\begin{aligned}
\delta\mathcal R_K^{\partial} &=\sum_{h\ \mathrm{interior}}\epsilon_h\,\delta A_h +\sum_{h\subset\partial K}\psi_h\,\delta A_h -\sum_\sigma\sum_{h\subset\sigma}A_h\,\delta\theta_h^\sigma\\
 &=\sum_{h\ \mathrm{interior}}\epsilon_h\,\delta A_h.
\end{aligned}$$

The boundary area variation vanishes because its edge lengths are fixed; the last double sum vanishes by Schlaefli in each simplex. Including the boundary term is important: it supplies precisely the boundary-angle variations needed for that double sum when the region is not closed. For an interior edge $e$, stationarity is

$$\begin{align}
\sum_{h\supset e}\epsilon_h\frac{\partial A_h}{\partial\ell_e}=0.
\end{align}$$

The derivative can be evaluated without numerical angle differentiation. For a Euclidean triangle with sides $\ell,b,c$ and positive area,

$$\begin{align}
16A^2=2(\ell^2b^2+b^2c^2+c^2\ell^2)-\ell^4-b^4-c^4, \qquad \frac{\partial A}{\partial\ell} =\frac{\ell(b^2+c^2-\ell^2)}{8A} =\frac\ell2\cot\gamma,
\end{align}$$

where $\gamma$ is the angle opposite $\ell$. The formula follows by differentiating the displayed polynomial, retaining the factor $32A$ on the left. Zero deficits are sufficient for these vacuum equations, but the equations do not force every deficit to vanish in four dimensions; different hinge contributions can cancel.

For a closed example, take the boundary of a five-simplex: six regular four-simplices, with twenty triangular hinges, each incident to three four-simplices. As an auxiliary piecewise-flat Riemannian model of the topology $S^4$, it has

$$\begin{align}
\epsilon=2\pi-3\arccos\frac14, \qquad \mathcal R_K=5\sqrt3 L^2\left(2\pi-3\arccos\frac14\right), \qquad V_K=\frac{\sqrt5}{16}L^4.
\end{align}$$

Its scalar-curvature measure integrates to $2\mathcal R_K$, not $\mathcal R_K$. This is a curved discrete metric, not automatically a vacuum stationary point: uniform rescaling gives $d\mathcal R_K/dL=2\mathcal R_K/L\ne0$. It is not a physical Lorentzian $S^4$, nor does this single coarse triangulation establish convergence to a round metric under unspecified refinements.

## 6. Link Transport, Endpoint Gauges and Small Loops

Choose a structure group $G$ and an oriented graph, for example the one-skeleton of $K$ or its dual graph. A link

$$\begin{align}
U_{j\leftarrow i}:V_i\to V_j, \qquad U_{i\leftarrow j}=U_{j\leftarrow i}^{-1},
\end{align}$$

acts in a chosen representation. The link is a transport map, not a connection one-form. Under $v_i'=u_i^{-1}v_i$, consistency with $v_j=U_{j\leftarrow i}v_i$ determines

$$\begin{align}
U_{j\leftarrow i}'=u_j^{-1}U_{j\leftarrow i}u_i.
\end{align}$$

For a path $i_0\to i_1\to\cdots\to i_r$, later segments act on the left:

$$\begin{align}
U_\gamma =U_{i_r\leftarrow i_{r-1}}\cdots U_{i_1\leftarrow i_0}, \qquad U_\gamma'=u_{i_r}^{-1}U_\gamma u_{i_0}.
\end{align}$$

The intermediate $u_i u_i^{-1}$ factors cancel. A based loop transforms by conjugation, so its trace is gauge invariant; its full matrix depends on the base frame. The group and representation are input data, not consequences of the graph's coordination number.

The square example also checks multiplication order. Define triangular loops based at $0$ by

$$\begin{aligned}
H_{012}&=U_{0\leftarrow2}U_{2\leftarrow1}U_{1\leftarrow0},\\
H_{023}&=U_{0\leftarrow3}U_{3\leftarrow2}U_{2\leftarrow0}.
\end{aligned}$$

Then

$$\begin{align}
H_{023}H_{012} =U_{0\leftarrow3}U_{3\leftarrow2}U_{2\leftarrow1}U_{1\leftarrow0},
\end{align}$$

because $U_{2\leftarrow0}U_{0\leftarrow2}=1$. Reversing this product would not perform that cancellation for general noncommuting links. On a larger nonabelian cell boundary, face loops must likewise be based and ordered with the appropriate connecting transports; an unordered product of curvature matrices is not a discrete Bianchi identity.

Exact pure-gauge links illustrate another distinction:

$$\begin{align}
U_{j\leftarrow i}=g_j^{-1}g_i \quad\Longrightarrow\quad U_{\rm closed}=1.
\end{align}$$

This is exact cancellation. Replacing each factor by a first-order truncation and retaining selected quadratic terms does not preserve the exact statement; truncation errors must not be identified as curvature of an exactly pure-gauge configuration.

For real $U(1)$ cochains from Section 1 choose a smooth real phase connection $\mathcal A$ with anti-Hermitian matrix form $A=i\mathcal A$, and let $a_{ij}=\int_{i\to j}\mathcal A$. Then

$$\begin{align}
U_{j\leftarrow i}=e^{-ia_{ij}}, \qquad u_i=e^{i\lambda_i}, \qquad a_{ij}'=a_{ij}+\lambda_j-\lambda_i.
\end{align}$$

The triangular link product is $H_{012}=e^{-i(d_1a)_{012}}$. The real face cochain is an unwrapped phase choice; the group element sees it only modulo $2\pi$. The real cochain differential and an anti-Hermitian continuum one-form are distinct objects connected by this explicit integration/exponentiation prescription.

Finally, start from a smooth matrix connection $A=A_\mu dx^\mu$ with transport $\dot v=-A(\dot x)v$. Around a small positive coordinate rectangle traversed $+x,+y,-x,-y$, the ordered product is

$$\begin{align}
U_\square =1-\delta x\,\delta y\,F_{xy}(x_0) +O\bigl((\delta x)^2\delta y+\delta x(\delta y)^2\bigr), \qquad F_{xy}=\partial_xA_y-\partial_yA_x+[A_x,A_y].
\end{align}$$

For constant matrices $A_x=X,A_y=Y$, the product is $e^{\delta yY}e^{\delta xX}e^{-\delta yY}e^{-\delta xX}$, whose mixed coefficient is $-[X,Y]$. Varying the connection contributes $-\partial_xA_y+\partial_yA_x$ at the same order. Midpoint exponentials reproduce this coefficient for a smooth connection, but they are a numerical prescription unless the exact path transports are used. A small-loop expansion is a local consistency statement, not a convergence theorem for arbitrary large loops.

## 7. A Coframe Closure Defect That Really Measures Torsion

A closure example needs more structure than a graph with arbitrary translations. On a coordinate patch $(t,x,y,z)$ choose a coframe

$$\begin{align}
e^0=dt,\qquad e^1=dx,\qquad e^2=e^{x/\ell}dy,\qquad e^3=dz, \qquad\ell>0,
\end{align}$$

and Lorentzian metric $g=\eta_{ab}e^a\otimes e^b$. Choose the connection one-form to vanish in this coframe. This is a specified metric-compatible flat connection, not the assertion that the metric's Levi-Civita connection vanishes. Cartan's equation gives

$$\begin{align}
T^a=de^a+\omega^a{}_b\wedge e^b, \qquad T^2=\frac1\ell e^{x/\ell}dx\wedge dy, \qquad T^0=T^1=T^3=0.
\end{align}$$

Because the frame is parallel, coframe components along different edges may be compared in that same parallel frame. For the positively oriented coordinate rectangle $0\le x\le a$, $0\le y\le b$, at fixed $t,z$,

$$\begin{align}
\oint_{\partial\Sigma}e^2 =be^{a/\ell}-b =\int_\Sigma T^2.
\end{align}$$

The $x$-directed sides contribute zero; the two $y$-directed sides contribute opposite terms at different $x$. The coordinate loop closes, but its developed displacement in the parallel frame has this nonzero component. That is the closure defect being measured. Assigning an edge cochain $E_e^a=\int_e e^a$ makes the same Stokes identity a cochain equation on a subdivision of the rectangle.

When curvature or a nonzero frame connection is present, components must be transported before addition and a finite affine loop translation also depends on its choice of origin. In particular, for an affine loop $(\Omega,b)$, changing base-frame coordinates by $x=A\widetilde x+a$ gives

$$\begin{align}
\widetilde b=A^{-1}\bigl(b+(\Omega-I)a\bigr).
\end{align}$$

The formula follows by evaluating $A^{-1}[\Omega(A\widetilde x+a)+b-a]$ and separating its linear and constant parts. Thus an arbitrary finite loop translation is not automatically an origin-independent torsion vector. The simple ordinary sum above was valid because its common parallel frame was explicitly supplied. It does not construct a universal metric-affine lattice action.

## 8. A Spatial-Lattice Scalar Model and What Its Dispersion Says

As a separate dynamical choice, discretize space on a periodic cubic lattice of spacing $a>0$ while keeping time continuous. This selects a preferred regulator frame. For a real scalar $\phi_{\mathbf n}(t)$ choose

$$\begin{align}
-\ddot\phi_{\mathbf n} +\Delta_a\phi_{\mathbf n}-m^2\phi_{\mathbf n}=0, \qquad \Delta_a\phi_{\mathbf n} =\frac1{a^2}\sum_{j=1}^3 \left(\phi_{\mathbf n+\hat j}-2\phi_{\mathbf n}+\phi_{\mathbf n-\hat j}\right), \qquad m^2\ge0.
\end{align}$$

The continuum sign is $\bar\Box=-\partial_t^2+\nabla^2$, as required by $(-,+,+,+)$. Insert $\phi_{\mathbf n}=C\exp(i\mathbf k\cdot a\mathbf n-i\omega t)$. The identity $e^{ika}+e^{-ika}-2=-4\sin^2(ka/2)$ gives

$$\begin{align}
\omega^2=m^2+\frac4{a^2}\sum_{j=1}^3\sin^2\frac{k_ja}{2}.
\end{align}$$

For $N$ sites per periodic direction, $k_j=2\pi r_j/(Na)$ with one representative in the Brillouin zone. For fixed $\mathbf k$ with $|k_ja|\ll1$,

$$\begin{align}
\omega^2=m^2+|\mathbf k|^2 -\frac{a^2}{12}\sum_jk_j^4+O(a^4|\mathbf k|^6).
\end{align}$$

At finite $a$ the dispersion is not invariant under continuous boosts or arbitrary spatial rotations. The low-momentum expansion is not uniform up to the edge of the Brillouin zone.

Classical stability here has a concrete finite-dimensional reason. The periodic difference operator has $-\Delta_a$ positive semidefinite, since shifting indices gives

$$\begin{align}
-a^3\sum_{\mathbf n}\phi_{\mathbf n}\Delta_a\phi_{\mathbf n} =a^3\sum_{\mathbf n,j} \left(\frac{\phi_{\mathbf n+\hat j}-\phi_{\mathbf n}}a\right)^2.
\end{align}$$

The conserved energy is consequently

$$\begin{align}
E=\frac{a^3}{2}\sum_{\mathbf n} \left[\dot\phi_{\mathbf n}^2 +m^2\phi_{\mathbf n}^2 +\sum_j\left(\frac{\phi_{\mathbf n+\hat j}-\phi_{\mathbf n}}a\right)^2\right].
\end{align}$$

Its derivative is $a^3\sum\dot\phi(\ddot\phi-\Delta_a\phi+m^2\phi)=0$. Nonzero-frequency modes oscillate; with $m=0$ the spatially constant mode has zero frequency and can be affine in time, just as the continuum zero mode. This excludes exponential mode instability for the chosen semidiscrete model. It does not supply a stability bound for a separately chosen time-stepping scheme, prove quantum unitarity, or derive this scalar model from Regge geometry.

## 9. What Has and Has Not Been Discretized

Incidence gives exact boundary and coboundary identities. Positive finite inner products give a finite Hodge theorem. Signed squared edges and a full inertia test give local metric simplices. A Euclidean conical normal geometry gives the factor $2A_h\epsilon_h$ in scalar curvature, and the Euclidean Schlaefli theorem controls Regge edge variation. Group links give gauge-covariant transport, while the coframe example gives a controlled torsion closure measurement. Each conclusion uses a stated construction, not a universal identification of all discrete variables with continuum fields.

A fixed triangulation is an input. Refinement alone does not specify mesh regularity, how a smooth metric is sampled, how causal degeneracies are avoided, or in which norm a limit is to converge. Exact incidence, gauge covariance and a small-loop Taylor coefficient do not prove such convergence. Finite-dimensional positive Hodge results do not establish a Lorentzian elliptic theory, and a rank count does not determine propagating gravitational modes.

Likewise, Regge edge data and link holonomies are kinematics until an action, boundary conditions and admissible variations are chosen. A spin-foam or other quantum-gravity construction would additionally require configuration spaces, amplitudes or measures, constraints, gluing rules and a controlled notion of observable. None of those data, nor a physical gauge group or unitary quantum evolution, follows from the geometric examples in this chapter.

## References and Theorem Inputs

[1] T. Regge, “General relativity without coordinates,” Nuovo Cimento 19 (1961), 558–571. Used for the piecewise-flat curvature construction and the Euclidean Schlaefli cancellation underlying the edge equations; the cone normalization and variation steps used here are displayed explicitly.

[2] J. B. Hartle and R. Sorkin, “Boundary terms in the action for the Regge calculus,” General Relativity and Gravitation 13 (1981), 541–549. Used for the Euclidean exterior-angle boundary term with fixed induced boundary edge metric.

[3] J. Cheeger, W. Muller and R. Schrader, “On the curvature of piecewise flat spaces,” Communications in Mathematical Physics 92 (1984), 405–454. Relevant to curvature measures and controlled approximation; no unrestricted convergence theorem is inferred from the finite examples above.
