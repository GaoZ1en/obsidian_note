# Lorentzian Metric Geometry

**AST-05 — DRAFT study chapter; bounded review recorded**

## Abstract

A Lorentzian metric supplies scalar products, causal cones, observer measurements, volume, and a distinguished torsion-free connection. These structures answer different questions. A causal cone does not determine a clock rate; a compatible connection need not be Levi-Civita; a hypersurface metric does not determine its extrinsic curvature. This chapter develops the distinctions through explicit constructions and calculations. The metric determines its Levi-Civita connection and geodesics, whose relative acceleration is measured by curvature. In four dimensions the algebraic Riemann tensor has twenty components, separated into Weyl, trace-free Ricci, and scalar parts. Hypersurface projection gives the Gauss–Codazzi equations, while observer projection gives the expansion, shear, vorticity, and Raychaudhuri equation of a timelike congruence. A spatially flat FLRW metric carries these calculations through to tidal measurements and the de Sitter flat chart. Volume, Hodge duality, and Killing fields connect the metric calculus to integration and conserved geodesic quantities. No gravitational field equation is assumed.

## 1. What a Lorentzian Metric Adds

Let $M$ be a smooth Hausdorff second-countable four-manifold. A Lorentzian metric is a smooth symmetric bilinear form $g_p$ on each tangent space, nondegenerate and of signature $(-,+,+,+)$. Thus, locally, an orthonormal frame has component matrix $\eta=\operatorname{diag}(-1,1,1,1)$. Throughout, Greek coordinate indices run from $0$ to $3$, Latin spatial indices from $1$ to $3$, and $c=1$. A coordinate labelled $0$ is not automatically timelike. All curvature and hypersurface signs below use the [shared conventions](<../CONVENTIONS.md>).

Nondegeneracy means that $g(v,w)=0$ for all $w$ forces $v=0$; it does not mean that $g(v,v)$ never vanishes on a nonzero vector. The existence of such null vectors distinguishes Lorentzian geometry from positive-definite Riemannian geometry. Nondegeneracy makes

$$\begin{align}
v^\flat=g(v,\cdot),\qquad v_\mu=g_{\mu\nu}v^\nu,\qquad \alpha^{\sharp\mu}=g^{\mu\nu}\alpha_\nu, \qquad g^{\mu\rho}g_{\rho\nu}=\delta^\mu{}_\nu \tag{1.1}
\end{align}$$

mutually inverse maps between tangent and cotangent spaces. Raising an index changes which bundle an object belongs to, not merely its typography. In an orthonormal frame, a future unit observer has $u^a=(1,0,0,0)$ but $u_a=(-1,0,0,0)$.

For a symmetric bilinear form, its quadratic form $q(v)=g(v,v)$ determines every scalar product through polarization:

$$\begin{align}
g(v,w)=\frac12\big(q(v+w)-q(v)-q(w)\big). \tag{1.2}
\end{align}$$

An antisymmetric bilinear form contributes nothing to $q(v)$, but that fact does not make an independently specified two-form a gauge redundancy of the metric. A metric is symmetric by definition. Its ten independent coordinate components are geometric functions, not a count of propagating gravitational degrees of freedom.

Sylvester’s law of inertia says that an invertible change of basis preserves the number of positive and negative directions. Signature is consequently coordinate independent and locally constant on the space of nondegenerate symmetric matrices. In four dimensions $\det g<0$ follows from signature $(-,+,+,+)$, but the determinant sign alone does not distinguish this signature from $(+,-,-,-)$. Nondegeneracy and the specified index are separate requirements.

### 1.1 Local Orthonormal Coframes

A local orthonormal coframe $e^a=e^a{}_\mu dx^\mu$ is an invertible matrix of one-forms such that

$$\begin{align}
g=\eta_{ab}e^a\otimes e^b,\qquad g_{\mu\nu}=\eta_{ab}e^a{}_\mu e^b{}_\nu. \tag{1.3}
\end{align}$$

Choose a smooth timelike field on a sufficiently small neighborhood and normalize it; its orthogonal complement is positive definite. Ordinary Gram–Schmidt on that complement gives three smooth spatial frame fields, and dualizing gives (1.3). This is a local construction. A global coframe would trivialize $T^*M$, which is an additional topological condition; the [smooth-structure chapter](<AST-02.md>) distinguishes it from mere metric existence.

Two coframes for the same metric differ by a local Lorentz transformation $\Lambda^\mathsf T\eta\Lambda=\eta$. Linearizing at the identity gives $A^\mathsf T\eta+\eta A=0$, equivalently antisymmetry of the lowered matrix $\eta A$. There are six independent parameters. Hence the local algebraic count is $16=10+6$: sixteen coframe entries, ten metric entries, and six frame choices. Coordinate freedom and field equations are not included in this count.

### 1.2 Inverse and Determinant Variations

For a differentiable family of nondegenerate metrics, differentiate $g^{-1}g=I$:

$$\begin{align}
\delta g^{\mu\nu} =-g^{\mu\alpha}g^{\nu\beta}\delta g_{\alpha\beta}. \tag{1.4}
\end{align}$$

The cofactor identity $\operatorname{adj}(g)=(\det g)g^{-1}$ gives Jacobi’s formula

$$\begin{align}
\delta\det g=(\det g)\operatorname{tr}(g^{-1}\delta g) = (\det g)g^{\mu\nu}\delta g_{\mu\nu}. \tag{1.5}
\end{align}$$

The repeated-index sum counts an off-diagonal symmetric variation twice, once in each matrix position. One must not simultaneously use ten independent matrix entries and forget this multiplicity. Since $\det g<0$, write $e=\sqrt{-\det g}$. Then

$$\begin{align}
\delta e=\frac12e\,g^{\mu\nu}\delta g_{\mu\nu} =-\frac12e\,g_{\mu\nu}\delta g^{\mu\nu}. \tag{1.6}
\end{align}$$

These are local algebraic identities for variations staying in the nondegenerate signature class. They do not specify an action or its boundary conditions.

## 2. Causal Vectors and Observer Measurements

A nonzero vector is timelike if $g(v,v)<0$, null if $g(v,v)=0$, and spacelike if $g(v,v)>0$. Causal means timelike or null. In an orthonormal frame, a nonzero null vector has the form $r(1,\widehat n)$ with $r\ne0$ and $|\widehat n|=1$. The timelike vectors form two connected cones in each tangent space. A time orientation is a continuous choice of one cone as future; it is extra global data, not a consequence of writing a local coordinate $t$.

A smooth future timelike observer field $u$ is conventionally normalized by $g(u,u)=-1$. The tensor and associated endomorphism

$$\begin{align}
h_{\mu\nu}=g_{\mu\nu}+u_\mu u_\nu,\qquad h^\mu{}_\nu=\delta^\mu{}_\nu+u^\mu u_\nu \tag{2.1}
\end{align}$$

satisfy $h^\mu{}_\nu u^\nu=0$, $h^\mu{}_\rho h^\rho{}_\nu=h^\mu{}_\nu$, and $h^\mu{}_\mu=3$. The bilinear form $h$ is degenerate on the full tangent space, but its restriction to the rest space $u^\perp$ is positive definite. It is not an invertible four-dimensional metric.

Every vector $p$ splits uniquely into temporal and spatial parts relative to this observer:

$$\begin{align}
E=-g(u,p),\qquad p_\perp^\mu=h^\mu{}_\nu p^\nu,\qquad p=Eu+p_\perp,\qquad g(p,p)=-E^2+h(p_\perp,p_\perp). \tag{2.2}
\end{align}$$

For future causal $p$, $E>0$. For a particle four-momentum with $g(p,p)=-m^2$, the familiar relation $E^2=m^2+|p_\perp|^2$ is thus an observer-dependent decomposition of an invariant norm. No preferred observer is selected by the metric alone.

For another future unit observer $w$, put $\gamma=-g(u,w)$. In the rest frame of $u$, write $w=(w^0,\mathbf w)$; normalization gives $(w^0)^2=1+|\mathbf w|^2$, with $w^0>0$. Hence $\gamma\ge1$, and

$$\begin{align}
w=\gamma(u+v),\qquad v\in u^\perp,\qquad |v|^2=1-\gamma^{-2}<1. \tag{2.3}
\end{align}$$

The same rest-frame argument gives the reverse Cauchy–Schwarz inequality for timelike vectors,

$$\begin{align}
|g(V,W)|\ge\sqrt{-g(V,V)}\sqrt{-g(W,W)}, \tag{2.4}
\end{align}$$

with equality exactly for linearly dependent vectors. If both are future, their inner product is negative. Future-cone convexity is equally direct in an orthonormal frame: $V^0>|\mathbf V|$ and $W^0>|\mathbf W|$ imply $(V+W)^0>|\mathbf V+\mathbf W|$ by the Euclidean triangle inequality. Positive multiples preserve the cone. For future unit vectors and $K=-g(u,w)\ge1$,

$$\begin{align}
g(\lambda u+(1-\lambda)w,\lambda u+(1-\lambda)w) =-1-2\lambda(1-\lambda)(K-1)\le-1, \quad 0\le\lambda\le1. \tag{2.5}
\end{align}$$

These are pointwise statements. Choosing future cones everywhere, excluding closed causal curves, and constructing a global time function are different global questions.

For a timelike curve, the elapsed proper time is

$$\begin{align}
\tau=\int\sqrt{-g_{\mu\nu}\dot x^\mu\dot x^\nu}\,d\lambda. \tag{2.6}
\end{align}$$

It is invariant under orientation-preserving reparametrizations. A null curve has zero Lorentzian arclength and cannot be parametrized by its own proper time. Along a spacelike curve the corresponding length uses $\sqrt{g(\dot x,\dot x)}$. In Minkowski coordinates, a timelike trajectory $x(t)$ satisfies $d\tau=\sqrt{1-|d\mathbf x/dt|^2}\,dt$. For fixed endpoints $(0,0)$ and $(T,0)$, every such curve parametrized monotonically by $t$ has $\tau\le T$, with equality only for zero spatial velocity. This flat-space comparison is not a general global maximizing theorem on curved spacetime.

## 3. Volume and Hodge Duality

On an oriented spacetime, choose an oriented chart and set

$$\begin{align}
\varepsilon=e\,dx^0\wedge dx^1\wedge dx^2\wedge dx^3, \qquad \varepsilon_{0123}=+e,\qquad \varepsilon^{0123}=-e^{-1}. \tag{3.1}
\end{align}$$

The last sign comes from raising all four indices with a metric of negative determinant. The permutation symbol $[0123]=1$ is not itself a tensor: $\varepsilon_{\mu\nu\rho\sigma}=e[\mu\nu\rho\sigma]$ is the tensorial volume form. Without orientation the positive volume density $e\,d^4x$ still supports integration of scalar densities.

With all raised indices really raised by $g$, representative contraction identities are

$$\begin{align}
\varepsilon_{\mu\nu\rho\sigma}\varepsilon^{\mu\nu\rho\sigma}=-24, \qquad \varepsilon_{\mu\nu\rho\sigma}\varepsilon^{\alpha\beta\rho\sigma} =-2(\delta_\mu^\alpha\delta_\nu^\beta-\delta_\mu^\beta\delta_\nu^\alpha). \tag{3.2}
\end{align}$$

To see the coefficient, evaluate in an oriented orthonormal coframe. For fixed distinct $\mu,\nu$, the remaining two labels have two orders, each contributing the same signed term. Full contraction has $4!$ nonzero permutations, each with the Lorentzian minus sign. Moving an index to a different position or lowering a previously raised index changes the expression and must be tracked separately.

For $p$-forms define

$$\begin{align}
\langle\alpha,\beta\rangle_g =\frac1{p!}\alpha_{\mu_1\cdots\mu_p}\beta^{\mu_1\cdots\mu_p}.
\end{align}$$

The Hodge star is the unique linear map $*:\Lambda^pT^*M\to\Lambda^{4-p}T^*M$ such that

$$\begin{align}
\alpha\wedge*\beta=\langle\alpha,\beta\rangle_g\varepsilon. \tag{3.3}
\end{align}$$

This definition fixes both sign and normalization. For an oriented orthonormal coframe $e^0,e^1,e^2,e^3$, with $e^0$ timelike,

$$\begin{align}
*e^0=-e^1\wedge e^2\wedge e^3,\qquad *(e^0\wedge e^1)=-e^2\wedge e^3,\qquad *(e^1\wedge e^2)=e^0\wedge e^3. \tag{3.4}
\end{align}$$

For an increasing index set $I$, let $I^c$ be its increasing complement. The coefficient of $*e^I$ is the product of the inverse-metric diagonal signs indexed by $I$, times the permutation sign of $(I,I^c)$. Applying this twice multiplies the four metric signs, giving $-1$, and exchanges blocks of lengths $p$ and $4-p$. Therefore

$$\begin{align}
**\alpha=(-1)^{p(4-p)+1}\alpha. \tag{3.5}
\end{align}$$

On real two-forms, $*^2=-1$; there is no nonzero real form satisfying $*\alpha=\alpha$. After complexification the eigenvalues are $+i,-i$. This differs from Euclidean four-dimensional self-duality.

Under a positive conformal rescaling $\widetilde g=\Omega^2g$, the inverse metric contributes $\Omega^{-2}$ for each raised form index, while the volume contributes $\Omega^4$. Equation (3.3) gives

$$\begin{align}
\widetilde\varepsilon=\Omega^4\varepsilon,\qquad \widetilde *|_{\Lambda^p}=\Omega^{4-2p}*|_{\Lambda^p}. \tag{3.6}
\end{align}$$

In particular the star on two-forms is conformally invariant in four dimensions. Positive rescaling preserves every causal class and its cones but changes proper times and lengths. The conformal factor must be smooth and positive on the region in question; extending through a zero or divergent factor is a separate geometric problem.

## 4. The Metric Selects the Levi-Civita Connection

A general connection was defined in [AST-04](<AST-04.md>). Here the derivative direction is the first lower connection slot:

$$\begin{align}
\nabla_\mu V^\rho=\partial_\mu V^\rho+ \Gamma^\rho{}_{\mu\sigma}V^\sigma, \qquad T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}. \tag{4.1}
\end{align}$$

A connection is metric compatible when

$$\begin{align}
\nabla_\lambda g_{\mu\nu} =\partial_\lambda g_{\mu\nu} -\Gamma^\rho{}_{\lambda\mu}g_{\rho\nu} -\Gamma^\rho{}_{\lambda\nu}g_{\mu\rho}=0. \tag{4.2}
\end{align}$$

This is precisely preservation of scalar products by parallel transport. It is not implied by having a connection and a metric on the same manifold.

The fundamental theorem of pseudo-Riemannian geometry states that there is one connection satisfying both (4.2) and zero torsion [1,2]. Denote it by $\bar\nabla$. Its coefficients follow directly from those two conditions. Lower the output index with $g$, and add the compatibility equations with derivative labels $\mu,\nu$, subtracting the one with derivative label $\rho$. Symmetry of the two lower connection slots leaves

$$\begin{align}
2g_{\rho\sigma}\bar\Gamma^\sigma{}_{\mu\nu} =\partial_\mu g_{\rho\nu}+\partial_\nu g_{\rho\mu} -\partial_\rho g_{\mu\nu},
\end{align}$$

hence

$$\begin{align}
\bar\Gamma^\rho{}_{\mu\nu} =\frac12g^{\rho\sigma} (\partial_\mu g_{\sigma\nu}+\partial_\nu g_{\sigma\mu} -\partial_\sigma g_{\mu\nu}). \tag{4.3}
\end{align}$$

Substitution proves compatibility and symmetry. The coefficients transform as a connection because the construction characterizes an intrinsic operation uniquely. For uniqueness, the difference $A_{abc}$ of two compatible connections, with the output lowered, is antisymmetric in the outer slots: $A_{abc}=-A_{cba}$. Zero torsion also makes it symmetric in the last two. Applying these symmetries in sequence gives

$$\begin{align}
A_{abc}=A_{acb}=-A_{bca}=-A_{bac} =A_{cab}=A_{cba}=-A_{abc},
\end{align}$$

so $A=0$. This proof uses nondegeneracy, not positive definiteness.

Contracting (4.3), the first and third terms cancel after relabelling:

$$\begin{align}
\bar\Gamma^\mu{}_{\mu\nu} =\frac12g^{\alpha\beta}\partial_\nu g_{\alpha\beta} =\partial_\nu\log e, \qquad \bar\nabla_\mu V^\mu=\frac1e\partial_\mu(eV^\mu). \tag{4.4}
\end{align}$$

This yields the usual divergence theorem with the appropriate oriented boundary element, for compact support or specified finite-boundary data. It is the Levi-Civita formula. The torsionful integration formula in [EC-02, Section 1](<EC-02.md#1-geometry-and-integration-by-parts>) contains an extra torsion-trace term and is not replaced by (4.4).

### 4.1 Metric Geodesics and Other Autoparallels

For a curve $x(\lambda)$, varying the energy functional with fixed endpoints,

$$\begin{align}
I[x]=\frac12\int g_{\mu\nu}\dot x^\mu\dot x^\nu\,d\lambda,
\end{align}$$

gives the Euler–Lagrange equation

$$\begin{align}
\frac d{d\lambda}(g_{\rho\nu}\dot x^\nu) -\frac12\partial_\rho g_{\mu\nu}\dot x^\mu\dot x^\nu=0.
\end{align}$$

After expansion and multiplication by $g^{\rho\sigma}$, this is

$$\begin{align}
\ddot x^\rho+\bar\Gamma^\rho{}_{\mu\nu}\dot x^\mu\dot x^\nu=0, \quad\text{or}\quad \bar\nabla_{\dot x}\dot x=0. \tag{4.5}
\end{align}$$

The parameter is affine. Compatibility shows that $g(\dot x,\dot x)$ is constant along a solution, so its causal class is preserved. A timelike affine geodesic can be normalized to proper time. Null initial data give a null affine geodesic, but not a proper-time parameter. One must not derive null geodesics by dividing the vanishing arclength integrand of a null curve.

Local existence and uniqueness for initial position and velocity follow from the smooth second-order ODE on the tangent bundle. Each solution has a maximal interval; nothing in (4.5) guarantees an infinite interval. Under a nonaffine reparametrization the right side becomes a scalar multiple of the tangent. Thus a path without a parameter and an affinely parametrized geodesic are different data.

If another connection is $\nabla=\bar\nabla+A$, its affinely parametrized autoparallel instead obeys

$$\begin{align}
\bar\nabla_{\dot x}\dot x=-A(\dot x,\dot x). \tag{4.6}
\end{align}$$

Only the symmetric part of the two input slots contributes to this contraction, but torsion can affect that symmetric part through a metric-compatibility condition. Metric-compatible connections with torsion are described in [EC-01, Section 1](<EC-01.md#1-how-torsion-determines-a-metric-compatible-connection>). They must not be called Levi-Civita merely because they preserve $g$. Conversely, a general connection need not preserve the norm of an autoparallel’s tangent at all.

## 5. Curvature, Its Twenty Components, and Relative Acceleration

All curvature in the remainder of this chapter is that of $\bar\nabla$; bars are suppressed on $R$ and its contractions. Define

$$\begin{align}
R(X,Y)Z=\bar\nabla_X\bar\nabla_YZ -\bar\nabla_Y\bar\nabla_XZ-\bar\nabla_{[X,Y]}Z,
\end{align}$$

with

$$
\begin{aligned}
 R^\rho{}_{\sigma\mu\nu}
 &=\partial_\mu\bar\Gamma^\rho{}_{\nu\sigma}
 -\partial_\nu\bar\Gamma^\rho{}_{\mu\sigma}\\
 &\quad+\bar\Gamma^\rho{}_{\mu\lambda}\bar\Gamma^\lambda{}_{\nu\sigma}
 -\bar\Gamma^\rho{}_{\nu\lambda}\bar\Gamma^\lambda{}_{\mu\sigma}.
 \end{aligned}
 \tag{5.1}
$$

The tensor with all indices lowered is $R_{\rho\sigma\mu\nu}=g_{\rho\lambda}R^\lambda{}_{\sigma\mu\nu}$. Thus $R_{abcd}=g(e_a,R(e_c,e_d)e_b)$ in any frame. This ordering fixes every component sign below.

The last pair is antisymmetric by definition. Compatibility says that curvature acts skew-adjointly on vectors: $g(R(X,Y)V,W)+g(V,R(X,Y)W)=0$, giving antisymmetry of the first pair. Zero torsion gives the cyclic identity; together these imply pair exchange. In index notation,

$$
\begin{gathered}
 R_{abcd}=-R_{bacd}=-R_{abdc},\qquad R_{abcd}=R_{cdab},\\
 R_{abcd}+R_{acdb}+R_{adbc}=0.
 \end{gathered}
 \tag{5.2}
$$

The cyclic identity follows by expanding $R(X,Y)Z+R(Y,Z)X+R(Z,X)Y$ and using $\bar\nabla_XY-\bar\nabla_YX=[X,Y]$; all second derivatives cancel by the Jacobi identity for brackets. Pair exchange follows by using this cyclic relation on each pair and the two antisymmetries. These are Levi-Civita symmetries, not identities for every affine curvature tensor.

A skew pair in four dimensions has six possible independent labels, so a tensor with two skew pairs and pair exchange is a symmetric bilinear form on the six-dimensional space of bivectors. It initially has $6\cdot7/2=21$ components. The cyclic identity removes its one independent fully alternating four-index component, leaving twenty. In dimension $n$ the same count is

$$\begin{align}
\frac12m(m+1)-\binom n4 =\frac{n^2(n^2-1)}{12},\qquad m=\binom n2. \tag{5.3}
\end{align}$$

This counts algebraic curvature values at one point. It does not count arbitrary independent metric derivatives at all points or physical wave polarizations.

### 5.1 Ricci and Weyl Parts

Our contractions are

$$\begin{align}
R_{\mu\nu}=R^\rho{}_{\mu\rho\nu},\qquad R=g^{\mu\nu}R_{\mu\nu},\qquad G_{\mu\nu}=R_{\mu\nu}-\frac12Rg_{\mu\nu}. \tag{5.4}
\end{align}$$

The Ricci tensor is symmetric here. The Weyl tensor is the completely trace-free part of curvature. In four dimensions its definition can be written as the exact decomposition

$$
\begin{aligned}
 R_{abcd}=C_{abcd}
 &+\frac12(g_{ac}R_{bd}-g_{ad}R_{bc}
            -g_{bc}R_{ad}+g_{bd}R_{ac})\\
 &-\frac R6(g_{ac}g_{bd}-g_{ad}g_{bc}).
 \end{aligned}
 \tag{5.5}
$$

To determine the coefficients rather than guess them, contract $a,c$ in the four-term Ricci expression. In dimension $n$ this gives $(n-2)R_{bd}+Rg_{bd}$. Contracting $g_{ac}g_{bd}-g_{ad}g_{bc}$ gives $(n-1)g_{bd}$. Requiring the remainder to have zero contraction fixes the two coefficients to $1/(n-2)$ and $-1/((n-1)(n-2))$, hence $1/2,-1/6$ for $n=4$.

If $S_{ab}=R_{ab}-Rg_{ab}/4$ is trace-free Ricci, then the scalar-curvature coefficient in the analogous $C+S+R$ decomposition is $R/12$ times $(g_{ac}g_{bd}-g_{ad}g_{bc})$. The independent component count is

$$\begin{align}
20=10\text{ (Weyl)}+9\text{ (trace-free Ricci)}+1\text{ (scalar)}. \tag{5.6}
\end{align}$$

For constant sectional curvature $k$, the tensor is $R_{abcd}=k(g_{ac}g_{bd}-g_{ad}g_{bc})$, so $R_{ab}=3kg_{ab}$, $R=12k$, and $C=0$. Ricci flatness alone does not imply $R_{abcd}=0$: the Weyl part can remain. Conversely, $C=0$ alone does not imply flatness.

The differential Bianchi identity gives $\bar\nabla_\rho R^\alpha{}_{\beta\mu\nu}$ cyclically summed in $\rho,\mu,\nu$ equal to zero. Its contraction yields

$$\begin{align}
\bar\nabla^\mu G_{\mu\nu}=0. \tag{5.7}
\end{align}$$

This is a geometric identity. Identifying $G$ with a matter source requires field equations not assumed here.

### 5.2 What Geodesic Deviation Measures

Consider a smooth two-parameter family of affinely parametrized geodesics. Let $u$ be the tangent in the affine direction and $\xi$ the variation vector connecting neighboring geodesics. The parameter fields commute, $[u,\xi]=0$, and torsion freedom gives $\bar\nabla_u\xi=\bar\nabla_\xi u$. Since $\bar\nabla_u u=0$,

$$\begin{align}
\bar\nabla_u\bar\nabla_u\xi =\bar\nabla_u\bar\nabla_\xi u =R(u,\xi)u,
\end{align}$$

or, in the declared ordering,

$$\begin{align}
\frac{D^2\xi^\mu}{d\tau^2} =R^\mu{}_{\nu\alpha\beta}u^\nu u^\alpha\xi^\beta. \tag{5.8}
\end{align}$$

For a unit timelike central geodesic choose a parallel-transported orthonormal frame with $e_{\hat0}=u$. A spatial separation then satisfies

$$\begin{align}
\frac{d^2\xi^{\hat i}}{d\tau^2} =-\mathcal E^i{}_j\xi^{\hat j},\qquad \mathcal E_{ij}=R_{\hat i\hat0\hat j\hat0}. \tag{5.9}
\end{align}$$

The minus sign is the last-pair antisymmetry in (5.8). The tidal matrix $\mathcal E$ is symmetric by pair exchange. This comparison is linear in the separation, as appropriate for a variation vector; it is not a finite-distance force law for arbitrary separated bodies. Section 8 evaluates the matrix and the actual separation fields.

## 6. Hypersurfaces: Intrinsic Geometry and Extrinsic Curvature

Let $\iota:\Sigma^3\hookrightarrow M$ be an embedded hypersurface, locally parametrized by $X^\mu(y^i)$ with tangent vectors $e_i^\mu=\partial X^\mu/\partial y^i$. Its induced metric is the pullback

$$\begin{align}
h_{ij}=g_{\mu\nu}e_i^\mu e_j^\nu. \tag{6.1}
\end{align}$$

For a nonnull normal choose a unit $n$ locally and put $s=g(n,n)=\pm1$. The tangential extension and projector are

$$\begin{align}
h_{\mu\nu}=g_{\mu\nu}-s n_\mu n_\nu,\qquad h^\mu{}_\nu=\delta^\mu{}_\nu-s n^\mu n_\nu. \tag{6.2}
\end{align}$$

A timelike normal has $s=-1$, so a spacelike hypersurface has positive-definite induced metric. A spacelike normal has $s=+1$, so a timelike hypersurface has induced signature $(-,+,+)$. A global choice of normal may require coorientation; the formulas are local unless a normal has been supplied globally.

For a null hypersurface, the normal is itself tangent and cannot be normalized to $\pm1$. Its induced three-dimensional bilinear form has a one-dimensional kernel and rank two. An explicit example in Minkowski space is the future light cone, away from its vertex,

$$\begin{align}
X(r,\theta,\phi)=(r,r\sin\theta\cos\phi, r\sin\theta\sin\phi,r\cos\theta),\qquad r>0.
\end{align}$$

Direct differentiation gives

$$\begin{align}
\iota^*g=0\,dr^2+r^2d\theta^2+r^2\sin^2\theta\,d\phi^2. \tag{6.3}
\end{align}$$

The generator $\partial_r$ spans the kernel. The spherical coordinate chart excludes its usual angular poles. Neither an inverse three-metric nor the unit-normal formulas below can be used on this null hypersurface.

### 6.1 A Fixed Sign for the Second Fundamental Form

From now on $\Sigma$ is spacelike and $n$ is its future unit timelike normal, $n_\mu n^\mu=-1$. Define

$$\begin{align}
K(X,Y)=g(\bar\nabla_X n,Y),\qquad K_{ij}=e_i^\mu e_j^\nu\bar\nabla_\mu n_\nu. \tag{6.4}
\end{align}$$

This chapter uses the **plus** sign in (6.4). Reversing $n$ reverses $K$; some ADM references define their $K$ as its negative. The two-index $K$ here is extrinsic curvature, not the three-index contorsion of the Einstein–Cartan chapters.

For tangent fields, compatibility gives $g(n,\bar\nabla_XY)=-K(X,Y)$. Using $g(n,n)=-1$, the tangential/normal decomposition is therefore

$$\begin{align}
\bar\nabla_XY=D_XY+K(X,Y)n, \tag{6.5}
\end{align}$$

where $D$ is the induced Levi-Civita derivative on $\Sigma$. Zero torsion gives $K(X,Y)-K(Y,X)=-g(n,[X,Y])=0$, so $K$ is symmetric. Also the tangential projection of $\mathcal L_n h$ equals $2K$. In synchronous coordinates,

$$\begin{align}
g=-dt^2+h_{ij}(t,y)dy^i dy^j,\qquad n=\partial_t, \qquad K_{ij}=\frac12\partial_t h_{ij}. \tag{6.6}
\end{align}$$

No lapse or shift is hidden in this formula; its coordinate assumptions are part of its statement. The induced oriented volume form, with $n$ followed by a positive spatial frame agreeing with the spacetime orientation, is $\iota_n\varepsilon|_\Sigma$. In an adapted orthonormal frame its spatial component is $+1$ and its full squared contraction is $3!=6$, since the induced metric is positive definite.

### 6.2 Deriving Gauss–Codazzi with This Sign

Apply (6.5) twice to a tangent $Z$ and take the tangential part of $R(X,Y)Z$. The two products of normal terms contribute $K(Y,Z)\bar\nabla_Xn-K(X,Z)\bar\nabla_Yn$. Pairing with a tangent $W$ yields

$$\begin{align}
g(W,R(X,Y)Z) =h(W,R^\Sigma(X,Y)Z) +K(Y,Z)K(X,W)-K(X,Z)K(Y,W).
\end{align}$$

Consequently, with every ambient curvature slot pulled back to $\Sigma$,

$$\begin{align}
R^{(4)}_{ijkl} =R^{(3)}_{ijkl}+K_{ik}K_{jl}-K_{il}K_{jk}. \tag{6.7}
\end{align}$$

This is the Gauss equation in the ordering (5.1). The normal component of the same calculation is $((D_XK)(Y,Z)-(D_YK)(X,Z))n$. Pairing with $n$ contributes a minus sign. Thus Codazzi is

$$\begin{align}
R_{nijk}:=g(n,R(e_j,e_k)e_i) =D_kK_{ij}-D_jK_{ik}. \tag{6.8}
\end{align}$$

Both equations depend on the timelike normalization and the definitions of $R$ and $K$. They are not sign-independent names for a remembered formula.

For a nonzero local check, take dimensionless coordinates and

$$\begin{align}
g=-dt^2+e^{2tx}(dx^2+dy^2+dz^2),\qquad n=\partial_t. \tag{6.9}
\end{align}$$

Here $h_{ij}=e^{2tx}\delta_{ij}$ and $K_{ij}=x h_{ij}$. Since $Dh=0$, $D_kK_{ij}=(\partial_kx)h_{ij}$. Equation (6.8), with $i=y,j=x,k=y$, predicts

$$\begin{align}
R_{0yxy}=D_yK_{yx}-D_xK_{yy}=-e^{2tx}. \tag{6.10}
\end{align}$$

The direct ambient curvature has exactly this component. The intrinsic component $R^{(3)}_{yzyz}=-t^2e^{2tx}$ and the product $K_{yy}K_{zz}=x^2e^{4tx}$ sum to the ambient $R^{(4)}_{yzyz}$. This example tests nonzero Codazzi and Gauss terms. If coordinates carry dimensions of length, replace $tx$ by $tx/L_0^2$ and keep the corresponding powers of $L_0$; (6.9) uses the dimensionless version.

## 7. A Timelike Congruence and the Raychaudhuri Equation

A smooth future unit timelike field $u$ describes a local family of observer worldlines, its integral curves. On their maximal existence intervals define acceleration

$$\begin{align}
a_\mu=u^\nu\bar\nabla_\nu u_\mu,\qquad u^\mu a_\mu=0. \tag{7.1}
\end{align}$$

The orthogonality follows by differentiating $u^\mu u_\mu=-1$. Acceleration can be nonzero: a unit observer field is not automatically a geodesic congruence.

Using the rest-space projector (2.1), define

$$\begin{align}
B_{\mu\nu}=h_\mu{}^\alpha h_\nu{}^\beta \bar\nabla_\beta u_\alpha, \qquad \bar\nabla_\nu u_\mu=B_{\mu\nu}-u_\nu a_\mu. \tag{7.2}
\end{align}$$

The derivative is the second slot of the two-index tensor $B$; this definition does not change the derivative-first convention for connection coefficients. The second identity follows by splitting the derivative direction into its spatial part and its $u$ component. The differentiated vector index is already orthogonal to $u$ by normalization.

Separate the spatial matrix into trace, symmetric trace-free, and antisymmetric parts:

$$
\begin{aligned}
 \theta&=\bar\nabla_\mu u^\mu=h^{\mu\nu}B_{\mu\nu},\\
 \sigma_{\mu\nu}&=B_{(\mu\nu)}-\frac13\theta h_{\mu\nu},
 \qquad \omega_{\mu\nu}=B_{[\mu\nu]},\\
 B_{\mu\nu}&=\frac13\theta h_{\mu\nu}+\sigma_{\mu\nu}+\omega_{\mu\nu}.
 \end{aligned}
 \tag{7.3}
$$

Parentheses and brackets include a factor $1/2$. The expansion $\theta$ is the instantaneous fractional rate of change of a small comoving spatial volume. Shear changes shape at fixed volume to first order; vorticity measures the local rotation of the congruence’s rest spaces. All free indices of $\sigma,\omega$ are spatial. We use $\sigma^2=\sigma_{\mu\nu}\sigma^{\mu\nu}$ and $\omega^2=\omega_{\mu\nu}\omega^{\mu\nu}$, without an extra $1/2$ in these definitions. Both are nonnegative because the rest-space metric is positive definite.

To derive the expansion equation, first differentiate the acceleration’s divergence:

$$\begin{align}
\bar\nabla_\mu a^\mu =(\bar\nabla_\mu u^\nu)(\bar\nabla_\nu u^\mu) +u^\nu\bar\nabla_\mu\bar\nabla_\nu u^\mu. \tag{7.4}
\end{align}$$

The contracted curvature commutator in our sign convention is

$$\begin{align}
\bar\nabla_\mu\bar\nabla_\nu u^\mu =\bar\nabla_\nu\bar\nabla_\mu u^\mu+R_{\rho\nu}u^\rho. \tag{7.5}
\end{align}$$

Insert it into (7.4). The mixed acceleration terms in the first product vanish using $u\cdot a=0$ and the spatial character of $B$, leaving $B_{\mu\nu}B^{\nu\mu}$. In an orthonormal rest frame, symmetric and antisymmetric matrices have zero cross trace, and

$$\begin{align}
B_{\mu\nu}B^{\nu\mu} =\frac13\theta^2+\sigma^2-\omega^2. \tag{7.6}
\end{align}$$

The minus sign on the antisymmetric-square term is the trace of a square, not a negative norm for $\omega$. Rearranging gives the timelike Raychaudhuri equation

$$\begin{align}
u^\mu\bar\nabla_\mu\theta =-\frac13\theta^2-\sigma^2+\omega^2 -R_{\mu\nu}u^\mu u^\nu+\bar\nabla_\mu a^\mu. \tag{7.7}
\end{align}$$

This is a kinematic identity for a smooth unit field and the Levi-Civita connection. It is neither an Einstein equation nor a torsionful Raychaudhuri equation. Its acceleration term is the full spacetime divergence. Replacing it by a spatial divergence requires the additional identity $\bar\nabla_\mu a^\mu=D_\mu a^\mu+a_\mu a^\mu$, where $D$ projects all derivative and tensor slots into $u^\perp$. Indeed, differentiating $u^\nu a_\nu=0$ along $u$ gives $u^\mu u^\nu\bar\nabla_\mu a_\nu=-a_\nu a^\nu$, which supplies the extra term. It is not a free omission of acceleration.

For a hypersurface-orthogonal congruence, $\omega=0$. Locally the converse follows from Frobenius’ theorem applied to the distribution $u^\perp$: vanishing of the spatial antisymmetric derivative is the integrability condition. This is a local foliation statement, not a global time-function or Cauchy-surface theorem. If $u=n$ is the future normal of Section 6, its spatial $B$ equals $K$ because $K$ is symmetric, and $\theta=K^i{}_i$.

For geodesic, irrotational observers, suppose in addition that $R_{\mu\nu}u^\mu u^\nu\ge0$ along an interval. Then (7.7) gives $d\theta/d\tau\le-\theta^2/3$. If $\theta(\tau_0)<0$, it stays negative while smooth, and

$$\begin{align}
\frac d{d\tau}\left(\frac1\theta\right)\ge\frac13. \tag{7.8}
\end{align}$$

A smooth congruence satisfying these assumptions cannot continue with finite expansion beyond proper time $\tau_0+3/|\theta(\tau_0)|$: its reciprocal would have to become nonnegative while the expansion remains negative. The conclusion concerns focusing or breakdown of the congruence if the worldline interval reaches that bound. It does not by itself establish a curvature singularity or geodesic incompleteness of spacetime. Such global conclusions require additional hypotheses [3,4].

## 8. Worked Geometry: Flat FLRW and Its De Sitter Specialization

Let $I\subset\mathbb R$ be an open interval, let $a:I\to(0,\infty)$ be smooth, and consider

$$\begin{align}
M=I\times\mathbb R^3,\qquad g=-dt^2+a(t)^2\delta_{ij}dx^i dx^j,\qquad H=\dot a/a. \tag{8.1}
\end{align}$$

This is a chosen geometry. No equation for $a$ has been imposed. Its determinant is $-a^6$, so $e=a^3$, consistent with (1.6). Substituting the metric into (4.3), the only nonzero coordinate connection families are

$$\begin{align}
\bar\Gamma^0{}_{ij}=a\dot a\,\delta_{ij},\qquad \bar\Gamma^i{}_{0j}=\bar\Gamma^i{}_{j0}=H\delta^i_j. \tag{8.2}
\end{align}$$

For example, $\bar\Gamma^0{}_{ij}=(-1)(-\partial_tg_{ij})/2=a\dot a\delta_{ij}$. All purely spatial coordinate derivatives of $g$ vanish.

### 8.1 Curvature and the Weyl Decomposition

The independent nonzero curvature families in the convention (5.1) are

$$
\begin{aligned}
 R_{0i0j}&=-a\ddot a\,\delta_{ij},\qquad R_{0ijk}=0,\\
 R_{ijkl}&=a^2\dot a^2
        (\delta_{ik}\delta_{jl}-\delta_{il}\delta_{jk}).
 \end{aligned}
 \tag{8.3}
$$

To check the time-space sign directly, $R^i{}_{0j0}=-\partial_t(H\delta^i_j)-H^2\delta^i_j=-(\ddot a/a)\delta^i_j$. Lowering the first index and applying pair exchange gives the first line of (8.3). Spatial curvature components arise from products of the time-space connection coefficients, even though each constant-time slice is intrinsically flat.

Contraction gives

$$\begin{align}
R_{00}=-3\frac{\ddot a}{a},\qquad R_{ij}=(a\ddot a+2\dot a^2)\delta_{ij},\qquad R=6\left(\frac{\ddot a}{a}+H^2\right). \tag{8.4}
\end{align}$$

Substitution into (5.5) gives $C_{abcd}=0$. For instance, its $0i0j$ coefficient is

$$\begin{align}
-a\ddot a+(2a\ddot a+\dot a^2) -(a\ddot a+\dot a^2)=0;
\end{align}$$

the other families cancel likewise. This metric is conformally flat, not necessarily flat. On an interval define conformal time by $d\eta=dt/a(t)$. Then

$$\begin{align}
g=a(t(\eta))^2(-d\eta^2+\delta_{ij}dx^i dx^j). \tag{8.5}
\end{align}$$

The actual range of $\eta$ is the image of $I$ under this integral; it need not be all of $\mathbb R$. This chart identifies conformal cones, not proper-time readings or a global Minkowski spacetime.

### 8.2 The Comoving Congruence and Spatial Slices

Take the actual observer field $u=n=\partial_t$, whose covector is $-dt$. Equation (8.2) gives zero acceleration. The constant-time embedding is $\iota_t(x)=(t,x)$, with induced metric $h_{ij}=a^2\delta_{ij}$. Therefore

$$\begin{align}
K_{ij}=a\dot a\,\delta_{ij}=Hh_{ij},\qquad \theta=3H,\qquad\sigma=0,\qquad\omega=0. \tag{8.6}
\end{align}$$

Gauss (6.7) reads $R^{(4)}_{ijkl}=K_{ik}K_{jl}-K_{il}K_{jk}$, exactly (8.3) because $R^{(3)}=0$. Codazzi vanishes because $H$ has no spatial variation. A small comoving coordinate box has physical volume $a^3d^3x$, whose logarithmic derivative is $3H$, giving the promised volume interpretation of expansion.

Raychaudhuri now becomes the explicit identity

$$\begin{align}
3\dot H=-3H^2+3\frac{\ddot a}{a}, \tag{8.7}
\end{align}$$

which follows from differentiating $H=\dot a/a$. It holds for every smooth positive $a$ in (8.1); it supplies no independent evolution equation for $a$. In particular an assumed matter equation of state or Friedmann equation must not be inferred from this identity.

### 8.3 Measurable Tidal Acceleration

The orthonormal spatial frame $e_{\hat i}=a^{-1}\partial_i$ is parallel along $u$: differentiating $a^{-1}$ cancels $\bar\Gamma^j{}_{0i}$. Its measured tidal matrix is

$$\begin{align}
\mathcal E_{ij}=R_{\hat i\hat0\hat j\hat0} =-\frac{\ddot a}{a}\delta_{ij}. \tag{8.8}
\end{align}$$

Consider neighboring comoving geodesics with connecting vector $\xi=c^i\partial_i$, with constant small $c^i$. It commutes with $u$. Its physical components in this parallel frame are $\xi^{\hat i}=a c^i$, so

$$\begin{align}
\frac{d^2\xi^{\hat i}}{dt^2} =\frac{\ddot a}{a}\xi^{\hat i} =-\mathcal E^i{}_j\xi^{\hat j}. \tag{8.9}
\end{align}$$

This uses the actual geodesic family and a parallel measuring frame, not just a curvature scalar. A positive $\ddot a$ gives stretching of these separations; a negative value gives relative focusing. Uniform expansion $H$ and tidal acceleration $\ddot a/a$ are different observables. At a point where $\ddot a=0$, these timelike tides vanish although the spatial curvature family in (8.3) can remain nonzero.

### 8.4 De Sitter: Constant Curvature in a Non-Global Chart

Let $a=e^{H_0t}$ with constant $H_0>0$ and $I=\mathbb R$. The curvature becomes

$$\begin{align}
R_{abcd}=H_0^2(g_{ac}g_{bd}-g_{ad}g_{bc}),\qquad R_{ab}=3H_0^2g_{ab},\qquad R=12H_0^2. \tag{8.10}
\end{align}$$

The comoving congruence has $\theta=3H_0$, with $R_{ab}u^au^b=-3H_0^2$. Thus the curvature term cancels the negative expansion-square term in (7.7), giving $\dot\theta=0$. The nonnegative-Ricci hypothesis of (7.8) is not satisfied. Its tidal equation is $\ddot\xi^{\hat i}=H_0^2\xi^{\hat i}$, with growing and decaying solutions; the comoving family selects the growing one.

To identify the chart’s scope, embed it in the hyperboloid $-(X^0)^2+\sum_{i=1}^3(X^i)^2+(X^4)^2=H_0^{-2}$ in flat $\mathbb R^{1,4}$ by

$$
\begin{aligned}
 X^0&=H_0^{-1}\sinh(H_0t)
       +\tfrac12H_0e^{H_0t}|x|^2,\\
 X^i&=e^{H_0t}x^i,\\
 X^4&=H_0^{-1}\cosh(H_0t)
       -\tfrac12H_0e^{H_0t}|x|^2.
 \end{aligned}
 \tag{8.11}
$$

Direct substitution verifies the hyperboloid equation, and differentiating this map pulls back the ambient metric to (8.1). But

$$\begin{align}
X^0+X^4=H_0^{-1}e^{H_0t}>0. \tag{8.12}
\end{align}$$

Only this open part of the hyperboloid is covered. Conversely this inequality recovers $t=H_0^{-1}\log(H_0(X^0+X^4))$ and $x^i=e^{-H_0t}X^i$, proving the chart’s image precisely. Allowing $t$ to range over all real numbers does not make it a global chart of de Sitter or prove geodesic completeness of the patch. These are coordinate and curvature results, not a derivation of a cosmological dynamics from them.

## 9. Metric Symmetries and Conserved Geodesic Quantities

The Lie derivative measures change under a vector field’s local flow. Differentiating the pullback of $g$ gives

$$\begin{align}
(\mathcal L_\xi g)_{\mu\nu} =\xi^\rho\partial_\rho g_{\mu\nu} +g_{\rho\nu}\partial_\mu\xi^\rho+g_{\mu\rho}\partial_\nu\xi^\rho =\bar\nabla_\mu\xi_\nu+\bar\nabla_\nu\xi_\mu. \tag{9.1}
\end{align}$$

The final equality uses compatibility and the torsion-free lower-slot symmetry. A Killing field satisfies $\mathcal L_\xi g=0$. Its flow is a local isometry while defined. It need not be complete on a general manifold, so a local infinitesimal symmetry is not automatically a globally defined one-parameter isometry action.

If $v$ is an affinely parametrized metric geodesic, then

$$\begin{align}
\frac d{d\lambda}g(\xi,v) =g(\bar\nabla_v\xi,v) =\frac12(\mathcal L_\xi g)(v,v). \tag{9.2}
\end{align}$$

The quantity $g(\xi,v)$ is therefore conserved for a Killing field. In the FLRW example $\partial_i$ are Killing fields, so $a^2dx^i/d\lambda$ is conserved along each geodesic. In contrast $\partial_t$ is not Killing for a nonconstant scale factor; the metric’s time label is not itself a conserved-energy symmetry.

On a connected open set of Minkowski space, the Killing equation is $\partial_\mu\xi_\nu+\partial_\nu\xi_\mu=0$. Differentiate it and add two cyclic permutations while subtracting the third. Commuting partial derivatives leaves $2\partial_\mu\partial_\nu\xi_\rho=0$. Hence

$$\begin{align}
\xi(x)=b+Ax,\qquad A^\mathsf T\eta+\eta A=0. \tag{9.3}
\end{align}$$

There are four translation parameters and six Lorentz parameters. This proves the ten-dimensional flat-space classification rather than merely exhibiting ten solutions. Writing $X_{A,b}(x)=b+Ax$, their vector-field bracket, with $[X,Y]f=X(Yf)-Y(Xf)$, is

$$\begin{align}
[X_{A,b},X_{B,c}](x)=(Bb-Ac)+(BA-AB)x. \tag{9.4}
\end{align}$$

It follows by differentiating the actual affine fields; this fixes matrix-order signs without changing conventions for individual rotation generators. A general curved metric does not necessarily possess these ten symmetries.

A conformal Killing field satisfies $\mathcal L_\xi g=2\varphi g$. In flat four-space a similar differentiated calculation gives

$$\begin{align}
\partial_\mu\partial_\nu\xi_\rho =\eta_{\nu\rho}\partial_\mu\varphi +\eta_{\mu\rho}\partial_\nu\varphi -\eta_{\mu\nu}\partial_\rho\varphi. \tag{9.5}
\end{align}$$

Taking a divergence and using $\partial_\mu\xi^\mu=4\varphi$ yields $2\partial_\mu\partial_\nu\varphi=-\eta_{\mu\nu}\Box\varphi$. Its trace gives $6\Box\varphi=0$, and thus every second derivative of $\varphi$ vanishes. Integrating (9.5), the complete local solution is

$$
\begin{aligned}
 \xi^\mu&=b^\mu+A^\mu{}_\nu x^\nu+\lambda x^\mu
       +2(\beta\cdot x)x^\mu-(x\cdot x)\beta^\mu,\\
 \varphi&=\lambda+2\beta\cdot x,
 \qquad A^\mathsf T\eta+\eta A=0.
 \end{aligned}
 \tag{9.6}
$$

Here all parameters are constant and the dots use $\eta$. The quadratic term has exactly the Hessian in (9.5); subtracting it and $\lambda x$ leaves a Killing field. The dimension is $4+6+1+4=15$. These are infinitesimal conformal fields; the special conformal fields need not have complete flows on the whole Minkowski chart. Equation (9.2) also shows that a conformal Killing field gives a conserved $g(\xi,v)$ along an affinely parametrized **null** geodesic, since then $g(v,v)=0$. It does not give that conservation for a general timelike geodesic.

## 10. What the Metric Calculations Do and Do Not Determine

A specified Lorentzian metric determines its volume form after orientation, its Hodge star, its Levi-Civita connection and curvature, and its metric geodesic initial-value problem. Observer measurements additionally require an observer; extrinsic curvature additionally requires an embedding and a chosen normal. Smoothness and nondegeneracy are local hypotheses, not completeness or causal-global-structure theorems.

The FLRW calculation makes the separation especially concrete. Positive $a(t)$ defines a metric on the stated coordinate interval. The formulas for $R$, $K$, $\theta$, and tides hold for that chosen metric. Raychaudhuri relates them identically; an Einstein equation, matter model, energy condition, or initial-boundary-value problem is additional input. A caustic in a congruence is not automatically a curvature singularity. A finite conformal-time range or a boundary of a chart is not automatically a boundary of spacetime. These distinctions are needed before turning local geometry into a global or dynamical conclusion.

## References and Further Reading

[1] Barrett O’Neill, *Semi-Riemannian Geometry with Applications to Relativity*, Academic Press, 1983. Nondegenerate metrics, Levi-Civita connection, curvature, submanifolds, and causal geometry.

[2] John M. Lee, *Introduction to Riemannian Manifolds*, second edition, Springer, 2018. Metric connections, curvature symmetries, geodesic variations, and submanifold equations; signature-dependent statements here are derived with the declared Lorentzian conventions.

[3] Robert M. Wald, *General Relativity*, University of Chicago Press, 1984. Geodesic deviation, timelike congruences, Raychaudhuri, and the additional global hypotheses in singularity theorems. Curvature and extrinsic-curvature conventions must be translated rather than assumed identical.

[4] Eric Poisson, *A Relativist’s Toolkit: The Mathematics of Black-Hole Mechanics*, Cambridge University Press, 2004. Observer decomposition, hypersurfaces, and congruences with explicit conventions.

[5] Sean M. Carroll, *Spacetime and Geometry*, Addison-Wesley, 2004. Lorentzian tensor calculus, FLRW geometry, and de Sitter coordinate systems.

[6] Theodore Frankel, *The Geometry of Physics*, third edition, Cambridge University Press, 2011. Differential forms, Hodge duality, and metric/conformal structures.
