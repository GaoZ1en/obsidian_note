# Submanifold Geometry: Induced Connections, Normal Curvature, and Null Expansions

DRAFT — bounded review recorded.

An induced metric measures distances along a surface. Its second fundamental form measures how tangent directions turn into normal directions. In higher codimension, the normal directions themselves have a connection and curvature. These are different data, and their interaction is expressed by the Gauss, Codazzi and Ricci equations.

Throughout, the ambient manifold $(\overline M,\overline g)$ is smooth and its connection $\overline\nabla$ is Levi-Civita. Spacetime applications have signature $(-,+,+,+)$; the Euclidean examples are explicitly auxiliary Riemannian examples. Connection coefficients are derivative-first, $\overline\nabla_\mu V^\rho=\partial_\mu V^\rho+\overline\Gamma^\rho{}_{\mu\sigma}V^\sigma$, and

$$\begin{align}
\overline R(X,Y)Z =\overline\nabla_X\overline\nabla_YZ -\overline\nabla_Y\overline\nabla_XZ -\overline\nabla_{[X,Y]}Z.
\end{align}$$

The hypersurface convention is the plus sign $K(X,Y)=\overline g(\overline\nabla_Xn,Y)$ used in [Lorentzian Metric Geometry](<AST-05.md#L457-L513>). We will relate it explicitly to the normal-valued second fundamental form, rather than giving the same symbol two incompatible meanings.

## 1. An Immersion and Its Induced Metric

An immersion $F:\Sigma^m\to\overline M^d$ has injective differential at every point. An embedding is an immersion that is also a homeomorphism onto its image with the subspace topology. The distinction matters globally. The map

$$\begin{align}
F:S^1\longrightarrow\mathbb R^2,\qquad F(t)=(\sin t,\sin2t)
\end{align}$$

is an immersion: its derivative $(\cos t,2\cos2t)$ never vanishes. But $t=0,\pi$ map to the same crossing point, so its image is not an embedded curve there. Each branch still has its own smooth pullback metric on the parameter manifold.

In coordinates $y^a$ on $\Sigma$, put $e_a=F_*\partial_a$. The pullback is

$$\begin{align}
h=F^*\overline g,\qquad h_{ab}=\overline g_{\mu\nu}(F(y)) \frac{\partial F^\mu}{\partial y^a} \frac{\partial F^\nu}{\partial y^b}.
\end{align}$$

In a Riemannian ambient manifold an immersion automatically gives a positive-definite $h$. In Lorentzian geometry it need not give a nondegenerate form. A submanifold is spacelike when $h$ is positive definite, timelike when $h$ is Lorentzian, and degenerate when $h$ has a kernel. The normal space is the orthogonal complement of the tangent space, not a choice of coordinate directions.

For example, the Minkowski plane $F(\tau,s)=(\tau,s,0,0)$ has $h=-\mathrm d\tau^2+\mathrm ds^2$: it is timelike, although some of its tangent vectors are spacelike. The causal label describes the induced signature, not the causal type of every tangent vector.

For now assume $h$ is nondegenerate. Then

$$\begin{align}
F^*T\overline M=T\Sigma\oplus N\Sigma, \qquad N_p\Sigma=(F_*T_p\Sigma)^\perp.
\end{align}$$

To construct the projections, use the inverse $h^{ab}$:

$$\begin{align}
P^\mu{}_\nu=e_a^\mu h^{ab}\overline g_{\nu\rho}e_b^\rho, \qquad Q^\mu{}_\nu=\delta^\mu{}_\nu-P^\mu{}_\nu.
\end{align}$$

Indeed, $P(e_c)=e_a h^{ab}h_{bc}=e_c$, and $P(\nu)=0$ for a normal $\nu$. Hence $P^2=P$, $Q^2=Q$, $PQ=0$, and the decomposition of any vector along the immersion is $V=PV+QV$. Both projections are self-adjoint with respect to $\overline g$.

This construction requires the inverse of the induced metric, not merely the inverse ambient metric. For a null hypersurface, the null normal is also tangent, so the proposed tangent/normal direct sum fails. Section 7 treats that case with additional data rather than trying to divide by a zero normal length.

## 2. Two Connections and One Second Fundamental Form

For tangent fields $X,Y$ and a normal field $\nu$, define

$$\begin{aligned}
D_XY&=P(\overline\nabla_XY),& B(X,Y)&=Q(\overline\nabla_XY),\\
\nabla_X^\perp\nu&=Q(\overline\nabla_X\nu),& A_\nu X&=-P(\overline\nabla_X\nu).
\end{aligned}$$

The resulting Gauss and Weingarten decompositions are

$$\begin{align}
\overline\nabla_XY=D_XY+B(X,Y),\qquad \overline\nabla_X\nu=-A_\nu X+\nabla_X^\perp\nu.
\end{align}$$

Here $D$ differentiates tangent fields, $\nabla^\perp$ differentiates normal fields, and $A_\nu$ is the shape operator in a specified normal direction. $B$ is a tensor: the derivative of a scalar multiplying $Y$ contributes only a tangent vector and disappears under $Q$. Torsion freedom gives $B(X,Y)=B(Y,X)$ because $[X,Y]$ is tangent. Compatibility and tangential projection show $Dh=0$, and the projected torsion vanishes. Thus $D$ is the Levi-Civita connection of $h$ [1,2].

Differentiating $\overline g(Y,\nu)=0$ gives the decisive sign:

$$\begin{align}
0=\overline g(B(X,Y),\nu) +\overline g(Y,\overline\nabla_X\nu), \qquad h(A_\nu X,Y)=\overline g(B(X,Y),\nu).
\end{align}$$

Therefore $A_\nu$ is $h$-self-adjoint. The mean curvature vector in this chapter is the trace, not the averaged trace,

$$\begin{align}
\mathbf H=h^{ab}B(e_a,e_b).
\end{align}$$

For a hypersurface choose a local unit normal $n$, with $\overline g(n,n)=s\in\{+1,-1\}$. Then

$$\begin{align}
K(X,Y)=\overline g(\overline\nabla_Xn,Y) =-\overline g(B(X,Y),n), \qquad B(X,Y)=-sK(X,Y)n,\qquad A_n=-K^\sharp.
\end{align}$$

For a spacelike hypersurface in spacetime, $s=-1$, so $B=Kn$ and $\overline\nabla_XY=D_XY+K(X,Y)n$. For a hypersurface in Euclidean space with a unit normal, $s=+1$, so $B=-Kn$. The two signs arise from the normal norm, not from a change in the definition of $B$.

### The Normal Connection Is Additional Geometry

Choose local orthonormal normal fields $\nu_\alpha$, with constant Gram matrix $\epsilon_{\alpha\beta}$ of the appropriate signature. Write

$$\begin{align}
\nabla^\perp\nu_\alpha =\nu_\beta\,\omega^\beta{}_\alpha, \qquad \omega^T\epsilon+\epsilon\omega=0.
\end{align}$$

For $\nu'_\alpha=\nu_\beta O^\beta{}_\alpha$, where $O^T\epsilon O=\epsilon$, direct differentiation gives

$$\begin{align}
\omega'=O^{-1}\omega O+O^{-1}\mathrm dO, \qquad \mathcal F^\perp=\mathrm d\omega+\omega\wedge\omega.
\end{align}$$

Its curvature is the local representative of

$$\begin{align}
R^\perp(X,Y)\nu =\nabla_X^\perp\nabla_Y^\perp\nu -\nabla_Y^\perp\nabla_X^\perp\nu -\nabla_{[X,Y]}^\perp\nu.
\end{align}$$

A normal frame need not exist globally. The overlap law makes the connection meaningful without one. In codimension one a local unit normal has zero normal derivative, but in codimension two or higher the connection can have nonzero curvature even in flat ambient space.

## 3. Gauss, Codazzi and Ricci from the Decompositions

All fields $X,Y,Z,W$ in this section are tangent; $\nu,\mu$ are normal. Apply the Gauss and Weingarten decompositions twice. The tangential part is

$$\begin{align}
P\overline R(X,Y)Z =R^\Sigma(X,Y)Z-A_{B(Y,Z)}X+A_{B(X,Z)}Y.
\end{align}$$

For example, the first shape term comes from differentiating the normal vector $B(Y,Z)$ in $\overline\nabla_X\overline\nabla_YZ$. Pairing with $W$ and using the shape identity yields Gauss:

$$\begin{aligned}
h(W,R^\Sigma(X,Y)Z) ={}&\overline g(W,\overline R(X,Y)Z)\\
&+\overline g(B(X,W),B(Y,Z)) -\overline g(B(Y,W),B(X,Z)).
\end{aligned}$$

With $R^\Sigma_{abcd}=h(e_a,R^\Sigma(e_c,e_d)e_b)$, this is

$$\begin{align}
R^\Sigma_{abcd} =\overline R_{abcd} +\overline g(B_{ac},B_{bd})-\overline g(B_{ad},B_{bc}),
\end{align}$$

where the ambient tensor is pulled back to tangent slots. For a spacelike hypersurface, substituting $B=Kn$ and $n^2=-1$ gives

$$\begin{align}
\overline R_{abcd}=R^\Sigma_{abcd}+K_{ac}K_{bd}-K_{ad}K_{bc},
\end{align}$$

matching the stated hypersurface dictionary.

To describe the normal part, the derivative of $B$ must differentiate all its slots:

$$\begin{align}
(\nabla_X B)(Y,Z) =\nabla_X^\perp(B(Y,Z))-B(D_XY,Z)-B(Y,D_XZ).
\end{align}$$

Expanding the normal projection of the same curvature calculation now gives Codazzi:

$$\begin{align}
Q\overline R(X,Y)Z =(\nabla_X B)(Y,Z)-(\nabla_Y B)(X,Z).
\end{align}$$

The connection on the normal slot is essential. Ordinary component derivatives would depend on the arbitrary normal frame. In a spacelike hypersurface, $B=Kn$ has no normal-frame rotation, and pairing this equation with $n$ gives

$$\begin{align}
\overline R_{nabc}:=\overline g(n,\overline R(e_b,e_c)e_a) =D_cK_{ab}-D_bK_{ac}.
\end{align}$$

Finally apply ambient curvature to a normal vector. Its normal projection is

$$\begin{align}
Q\overline R(X,Y)\nu =R^\perp(X,Y)\nu-B(X,A_\nu Y)+B(Y,A_\nu X).
\end{align}$$

Pairing with $\mu$ and moving the two shape terms to the other side gives the Ricci equation:

$$\begin{align}
\overline g(R^\perp(X,Y)\nu,\mu) =\overline g(\overline R(X,Y)\nu,\mu) +h([A_\nu,A_\mu]X,Y).
\end{align}$$

Thus commuting shape operators are relevant to normal curvature, not just principal-curvature terminology. In flat ambient space their commutator is precisely the source of the displayed normal curvature. These identities are derived with Levi-Civita connections; a dimension count is not a replacement for their hypotheses.

## 4. Euclidean Examples That Determine the Signs

### A Sphere and a Graph

These examples use positive-definite Euclidean ambient metrics. The sphere of radius $R>0$ in $\mathbb R^3$ has parametrization

$$\begin{align}
F(\theta,\phi)=R(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos\theta), \qquad n=F/R.
\end{align}$$

On an angular patch, $h=R^2(\mathrm d\theta^2+\sin^2\theta\,\mathrm d\phi^2)$. Differentiating $n$ along the sphere gives $\overline\nabla_Xn=X/R$, hence

$$\begin{align}
A_n=-\frac1R I,\qquad B(X,Y)=-\frac1R h(X,Y)n, \qquad \mathbf H=-\frac2R n.
\end{align}$$

The acceleration of a great circle points inward, in agreement with this $B$. Since the ambient curvature is zero, Gauss gives

$$\begin{align}
R^\Sigma_{abcd}=\frac1{R^2}(h_{ac}h_{bd}-h_{ad}h_{bc}).
\end{align}$$

The Gaussian curvature is positive despite the negative eigenvalues of our outward-normal shape operator. The sign of those eigenvalues changes if the normal is reversed; their product does not.

For a graph $F(x,y)=(x,y,f(x,y))$, with $f$ smooth, put

$$\begin{align}
w=\sqrt{1+f_x^2+f_y^2},\qquad n=\frac{(-f_x,-f_y,1)}w,\qquad h_{ij}=\delta_{ij}+f_if_j.
\end{align}$$

Its determinant is $w^2>0$, so the graph is an immersion with nondegenerate induced metric. The normal component of $F_{ij}$ gives

$$\begin{align}
B_{ij}=\frac{f_{ij}}w n,\qquad A_n=h^{-1}\frac{\operatorname{Hess}f}w.
\end{align}$$

Taking the determinant and trace, respectively, gives

$$\begin{aligned}
K_{\rm G}&=\frac{f_{xx}f_{yy}-f_{xy}^2}{(1+f_x^2+f_y^2)^2},\\
\mathbf H&=H_n n,\qquad H_n=\frac{(1+f_y^2)f_{xx}-2f_xf_yf_{xy}+(1+f_x^2)f_{yy}}{(1+f_x^2+f_y^2)^{3/2}}.
\end{aligned}$$

For the paraboloid $f=\kappa(x^2+y^2)/2$, $K_{\rm G}=\kappa^2/(1+\kappa^2(x^2+y^2))^2$, and $H_n=\kappa(2+\kappa^2(x^2+y^2))/(1+\kappa^2(x^2+y^2))^{3/2}$. In particular an upward convex graph with $\kappa>0$ has positive $H_n$ at its vertex; it does not have the sign of an outward-oriented spherical cap at its top. Here $x,y,f,R$ have length units, and $\kappa$ has inverse-length units.

### A Codimension-Two Graph with Nonzero Normal Curvature

To see a genuine Ricci-equation calculation, use this auxiliary dimensionless Euclidean embedding into $\mathbb R^4$:

$$\begin{align}
F(x,y)=\left(x,y,\frac{x^2-y^2}2,xy\right), \qquad \lambda=1+x^2+y^2.
\end{align}$$

Then $e_x=(1,0,x,y)$, $e_y=(0,1,-y,x)$ and $h=\lambda(\mathrm dx^2+\mathrm dy^2)$. Orthonormal normals are

$$\begin{align}
\nu_1=\lambda^{-1/2}(-x,y,1,0),\qquad \nu_2=\lambda^{-1/2}(-y,-x,0,1).
\end{align}$$

Their inner products with both tangents vanish. Differentiating $F$ twice and taking these normal components gives

$$\begin{align}
B_{xx}=\lambda^{-1/2}\nu_1,\qquad B_{xy}=\lambda^{-1/2}\nu_2,\qquad B_{yy}=-\lambda^{-1/2}\nu_1.
\end{align}$$

Consequently $\mathbf H=0$, but $B$ is not zero. The two shape matrices, in the coordinate tangent basis, are

$$
A_1=\lambda^{-3/2}\begin{pmatrix}1&0\\0&-1\end{pmatrix},\qquad
A_2=\lambda^{-3/2}\begin{pmatrix}0&1\\1&0\end{pmatrix}.
$$

The normal connection is determined by the one-form

$$\begin{align}
\alpha=\overline g(\nu_2,\mathrm d\nu_1) =\frac{y\,\mathrm dx-x\,\mathrm dy}{\lambda},\qquad \nabla^\perp\nu_1=\alpha\nu_2,\quad \nabla^\perp\nu_2=-\alpha\nu_1.
\end{align}$$

Taking its derivative gives a nonzero normal curvature,

$$\begin{align}
\mathrm d\alpha=-\frac2{\lambda^2}\,\mathrm dx\wedge\mathrm dy.
\end{align}$$

The Ricci equation predicts exactly this value:

$$\begin{align}
h([A_1,A_2]\partial_x,\partial_y)=-\frac2{\lambda^2} =\overline g(R^\perp(\partial_x,\partial_y)\nu_1,\nu_2).
\end{align}$$

Gauss independently gives $R^\Sigma_{1212}=-2/\lambda$ and $K_{\rm G}=-2/\lambda^3$. Intrinsic curvature computed from $h$ agrees. The Codazzi calculation differentiates the displayed $B$ using both the Christoffel symbols of $h$ and the matrix normal connection; both normal components of $(\nabla_xB)(\partial_y,\partial_k)-(\nabla_yB)(\partial_x,\partial_k)$ vanish for $k=x,y$. Thus flat ambient space does not imply an intrinsically flat surface, a flat normal connection, or $B=0$.

Scaling this dimensionless embedding by a fixed length $L$ multiplies the induced metric by $L^2$, principal curvatures by $L^{-1}$ and Gaussian curvature by $L^{-2}$. This Euclidean model is not a Lorentzian spacetime.

## 5. Mean Curvature and the First Variation of Area

Let $\Sigma$ now be a compact spacelike $m$-dimensional submanifold, possibly with smooth boundary. Its induced metric is positive definite. Consider a smooth family of immersions $F_s$ in a fixed smooth ambient metric, and let $V=\partial_sF_s|_0$. Write $V=V^\top+V^\perp$. Commuting the parameter derivatives and using ambient compatibility gives

$$\begin{align}
\dot h_{ab} =\overline g(\overline\nabla_{e_a}V,e_b) +\overline g(e_a,\overline\nabla_{e_b}V).
\end{align}$$

For the normal part, differentiating $\overline g(V^\perp,e_b)=0$ gives $-\overline g(V^\perp,B_{ab})$. For the tangent part it gives the symmetric induced derivative. Therefore

$$\begin{align}
\dot h_{ab}=D_aV_b^\top+D_bV_a^\top -2\overline g(B_{ab},V^\perp),\qquad \frac{\mathrm d}{\mathrm ds}\Big|_0\mathrm d\mu_{h_s} =\left(\operatorname{div}_\Sigma V^\top-\overline g(\mathbf H,V)\right)\mathrm d\mu_h.
\end{align}$$

The determinant variation supplied the factor $1/2$, cancelling the two in $\dot h$. Integrating and using the positive induced metric's divergence theorem gives

$$\begin{align}
\delta\operatorname{Area} =\int_{\partial\Sigma}h(V^\top,\eta)\,\mathrm d\mu_{\partial\Sigma} -\int_\Sigma\overline g(\mathbf H,V)\,\mathrm d\mu_h,
\end{align}$$

where $\eta$ is the outward unit conormal within $\Sigma$. For a closed submanifold, fixed-boundary variations, or compact support away from the boundary, the first term vanishes. Stationarity for all allowed normal variations is then $\mathbf H=0$, since the normal metric is nondegenerate. In Lorentzian ambient space this is an extremality statement, not an automatic local-minimum theorem.

For a sphere and $V=c n$ with constant $c$, the formula gives $\delta\operatorname{Area}=(2c/R)(4\pi R^2)=8\pi Rc$, exactly the derivative of $4\pi(R+sc)^2$. This checks the trace rather than averaged-trace convention. For a Euclidean graph and compactly supported variation $f\mapsto f+s\psi$,

$$\begin{align}
\delta\operatorname{Area} =\int\frac{\nabla f\cdot\nabla\psi}{w}\,\mathrm dx\,\mathrm dy =-\int\operatorname{div}\left(\frac{\nabla f}{w}\right)\psi\,\mathrm dx\,\mathrm dy.
\end{align}$$

Thus the graph equation for stationarity is $\operatorname{div}(\nabla f/w)=H_n=0$. The codimension-two graph above also has zero first variation for compactly supported variations of a compact patch, because its computed $\mathbf H$ vanishes. These are local stationarity statements; they do not assert existence, uniqueness or global area minimization for prescribed boundary data.

## 6. Spacelike Foliations: Lapse, Shift, and Geometric Constraints

A local spacelike foliation of four-dimensional spacetime can be written

$$\begin{align}
\overline g=-N^2\mathrm dt^2 +h_{ij}(\mathrm dy^i+\beta^i\mathrm dt)(\mathrm dy^j+\beta^j\mathrm dt), \qquad N>0,
\end{align}$$

with positive-definite $h$. The future unit normal, after choosing this time orientation, is

$$\begin{align}
n=\frac1N(\partial_t-\beta^i\partial_i),\qquad n^\flat=-N\,\mathrm dt,\qquad \det\overline g=-N^2\det h.
\end{align}$$

The block inverse is $\overline g^{00}=-N^{-2}$, $\overline g^{0i}=\beta^i/N^2$, $\overline g^{ij}=h^{ij}-\beta^i\beta^j/N^2$. This shows directly which normal is normalized; the coordinate vector $\partial_t$ need not itself be timelike. Its decomposition is $\partial_t=Nn+\beta$.

For tangent $X,Y$, compatibility and torsion freedom give $(\mathcal L_n\overline g)(X,Y)=2K(X,Y)$. Replacing $n$ by the time-flow decomposition gives

$$\begin{align}
K_{ij}=\frac1{2N}\left(\partial_t h_{ij}-(\mathcal L_\beta h)_{ij}\right) =\frac1{2N}(\partial_t h_{ij}-D_i\beta_j-D_j\beta_i).
\end{align}$$

This extends the synchronous formula without changing its sign. The lapse fixes normal proper-time advance; the shift describes how the chosen spatial coordinates are carried between slices. Neither is a new component of the intrinsic metric on one slice.

Contract the hypersurface Gauss equation and Codazzi equation. With $K=h^{ij}K_{ij}$ and $G$ the ambient Levi-Civita Einstein tensor, the resulting geometric identities are

$$\begin{align}
2G(n,n)=R^\Sigma+K^2-K_{ij}K^{ij},\qquad G(n,e_i)=D_jK^j{}_i-D_iK.
\end{align}$$

For the first identity, the full spatial curvature contraction is $R^\Sigma+K^2-K_{ij}K^{ij}$, while $\overline R$ is that contraction minus $2\operatorname{Ric}(n,n)$. Combining $G(n,n)=\operatorname{Ric}(n,n)+\overline R/2$ proves the coefficient. For the second, contract $\operatorname{Ric}(n,e_i)=-\sum_j\overline R_{n j j i}$ in an orthonormal spatial frame and insert Codazzi. The metric term in $G(n,e_i)$ vanishes.

Only if one additionally chooses torsion-free four-dimensional Einstein gravity,

$$\begin{align}
G+\Lambda\overline g=8\pi G_{\rm N}T,
\end{align}$$

do these become matter constraints. Writing $\rho=T(n,n)$ and $j_i=-T(n,e_i)$, in units $c=\hbar=1$ they read

$$\begin{align}
R^\Sigma+K^2-K_{ij}K^{ij}=16\pi G_{\rm N}\rho+2\Lambda, \qquad D_jK^j{}_i-D_iK=-8\pi G_{\rm N}j_i.
\end{align}$$

They do not by themselves provide an evolution theorem. A single slice does not determine curvature involving two normal directions. For example, the metrics $-\mathrm dt^2+a(t)^2\delta_{ij}\mathrm dx^i\mathrm dx^j$ with $a(0)=1$, $\dot a(0)=0$, but different $\ddot a(0)$ have identical $h$ and $K$ at $t=0$, while $\overline R_{0i0j}(0)=-\ddot a(0)\delta_{ij}$ differs. Field equations and appropriate initial data are additional input, not information hidden in a component count.

## 7. Null Hypersurfaces and Spacelike Two-Surfaces

A null hypersurface has degenerate induced metric. For instance $F(v,x,y)=(v,x,y,v)$ in Minkowski coordinates $(t,x,y,z)$ has pullback $\mathrm dx^2+\mathrm dy^2$. Its normal and tangent generator is $\ell=\partial_t+\partial_z$. There is no normalized unit normal and no inverse three-metric.

Choose an auxiliary transverse null field $k$ with $\ell\cdot k=-1$; in this example $k=(\partial_t-\partial_z)/2$. The screen projector is

$$\begin{align}
q^\mu{}_\nu=\delta^\mu{}_\nu+\ell^\mu k_\nu+k^\mu\ell_\nu.
\end{align}$$

It annihilates $\ell,k$ and projects onto their common orthogonal two-plane. A choice of such a transverse field, often called a rigging, is extra data. On a null hypersurface the screen representatives depend on this choice; one must not treat them as a canonical inverse of its degenerate three-metric [3].

For a spacelike two-surface $S$ in a time-oriented four-dimensional spacetime, the situation is different: $q$ on $TS$ is positive definite, and its normal bundle is Lorentzian. Locally choose two future null normals $\ell,k$ with $\ell\cdot k=-1$. Now both are normal, not generators tangent to $S$, and the same formula is the genuine tangent projector of $S$.

Define the null second fundamental forms and expansions by

$$\begin{align}
\chi^{(\ell)}_{AB}=\overline g(\overline\nabla_{e_A}\ell,e_B),\qquad \theta_{(\ell)}=q^{AB}\chi^{(\ell)}_{AB},
\end{align}$$

and similarly for $k$. Differentiating normal/tangent orthogonality gives $\chi^{(\ell)}_{AB}=-\overline g(B_{AB},\ell)$, hence

$$\begin{align}
\theta_{(\ell)}=-\overline g(\mathbf H,\ell),\qquad \theta_{(k)}=-\overline g(\mathbf H,k),\qquad \mathbf H=\theta_{(k)}\ell+\theta_{(\ell)}k, \qquad \mathbf H^2=-2\theta_{(\ell)}\theta_{(k)}.
\end{align}$$

Under a local positive boost $\ell'=e^\zeta\ell$, $k'=e^{-\zeta}k$,

$$\begin{align}
\theta_{(\ell')}=e^\zeta\theta_{(\ell)},\qquad \theta_{(k')}=e^{-\zeta}\theta_{(k)}.
\end{align}$$

The derivatives of $\zeta$ drop out because the null normals are orthogonal to $e_B$. Thus individual numerical expansions depend on normalization, but their signs, zeros and product do not.

The normal connection one-form is

$$\begin{align}
\varpi_A=-\overline g(k,\overline\nabla_{e_A}\ell),\qquad \nabla^\perp\ell=\varpi\ell,\quad \nabla^\perp k=-\varpi k,\qquad \varpi'=\varpi+\mathrm d\zeta.
\end{align}$$

Its curvature $\mathrm d\varpi$ is boost invariant. This is a Lorentzian normal-frame boost, not a Euclidean $SO(2)$ rotation. The Ricci equation in this basis reads

$$\begin{align}
-\mathrm d\varpi(X,Y) =\overline g(\overline R(X,Y)\ell,k) +q([A_\ell,A_k]X,Y).
\end{align}$$

The minus sign on the left is $\ell\cdot k=-1$.

For the following global surface terminology, assume the spacelike two-surface is closed (compact without boundary) and the required future null directions have been chosen globally; an outward label is additional normal-orientation data. Call it future trapped when both future expansions are strictly negative everywhere. With the outward label assigned to $\ell$, a marginally outer trapped surface has $\theta_{(\ell)}=0$ and usually the additional condition $\theta_{(k)}<0$; the latter is explicitly included here. A positive outward and negative inward expansion describes an untrapped region in the example below. With our definition of $B$, a future-trapped surface has a past-timelike $\mathbf H$; changing the sign convention for the mean curvature vector would reverse that description. These statements concern local extrinsic geometry, not the definition of a global event horizon [4].

### Spherical Cuts in a Regular Ingoing-Null Chart

Choose any smooth real function $f(r)$ on an interval $r>0$ and the Lorentzian metric

$$\begin{align}
\overline g=-f(r)\,\mathrm dv^2+2\,\mathrm dv\,\mathrm dr +r^2(\mathrm d\theta^2+\sin^2\theta\,\mathrm d\phi^2).
\end{align}$$

The $(v,r)$ block has determinant $-1$ and signature $(-,+)$ for every $f$, including its zeros. The angular chart has $0<\theta<\pi$; the usual angular poles are coordinate exclusions, not degeneracies of the sphere. Take the surface $v=v_0,r=r_0$ and normals

$$\begin{align}
\ell=\partial_v+\frac{f(r)}2\partial_r,\qquad k=-\partial_r.
\end{align}$$

They are null with $\ell\cdot k=-1$. Choose time orientation so that $\ell+k$ is future timelike; both normals are then future. In a region with $f>0$, $\ell$ is the outward null direction and $k$ the inward one, and these labels continue across a zero of $f$.

The area is $4\pi r^2$. Under a normal deformation $V$, its local area rate is $2V(r)/r$. Equivalently, $\chi^{(V)}_{AB}=V(r)q_{AB}/r$. Therefore

$$\begin{align}
\theta_{(\ell)}=\frac{f(r)}r,\qquad \theta_{(k)}=-\frac2r,\qquad \mathbf H=-\frac2r(\partial_v+f\partial_r),\qquad \mathbf H^2=\frac{4f}{r^2}.
\end{align}$$

The normal connection on each round sphere is $\varpi_A=0$ in this frame; an angle-dependent boost changes it by $\mathrm d\zeta$ without creating curvature. When $f>0$ the sphere is untrapped; when $f=0$ it satisfies the stated marginal condition; when $f<0$ both expansions are negative. These conclusions require no Einstein equation for $f$. In particular, the marginal condition alone proves neither a global event horizon nor a singularity. Those require global causal and dynamical hypotheses not supplied by this metric ansatz.

## 8. The Boundary of the Framework

The constructions of $P,Q$ depend on an immersion and a nondegenerate induced metric. The symmetry of $B$, identification of $D$ as induced Levi-Civita, the shape adjoint identity, and the displayed curvature equations additionally used the ambient Levi-Civita assumptions. For an independent connection $\nabla$, define instead $D_XY=P\nabla_XY$ and $B(X,Y)=Q\nabla_XY$. Its torsion then satisfies

$$\begin{align}
D_XY-D_YX-[X,Y]=P\mathcal T(X,Y),\qquad B(X,Y)-B(Y,X)=Q\mathcal T(X,Y).
\end{align}$$

Thus symmetry of one projected second fundamental form does not imply that every ambient torsion component vanishes. Nonmetricity likewise prevents importing the metric-compatible shape argument unchanged. Metric-affine or Einstein–Cartan dynamics need their own induced equations and matching assumptions. No thin-shell junction law or global embedding-existence theorem has been derived here.

The worked examples illustrate what the equations actually determine: a sphere tests the shape sign and positive intrinsic curvature; a codimension-two graph tests nonzero normal curvature and commuting versus noncommuting shapes; a foliation separates geometric projections from gravitational constraints; and null expansions measure area change only after their normal-frame normalization is specified.

## References

[1] B. O'Neill, Semi-Riemannian Geometry with Applications to Relativity, Academic Press, 1983. Nondegenerate submanifolds, induced connections and curvature decompositions; signs here are fixed by the displayed definitions.

[2] J. M. Lee, Introduction to Riemannian Manifolds, second edition, Springer, 2018. Isometric immersions, second fundamental forms, shape operators and Riemannian submanifold arguments.

[3] E. Poisson, A Relativist's Toolkit, Cambridge University Press, 2004. Hypersurfaces and null geometry with additional normal data. The screen and normalization choices used here are stated explicitly rather than inherited implicitly.

[4] R. M. Wald, General Relativity, University of Chicago Press, 1984. Trapped surfaces, causal structure and the additional hypotheses needed for global singularity or horizon conclusions.

[5] E. Gourgoulhon, 3+1 Formalism in General Relativity, Springer, 2012; introductory lecture version [arXiv:gr-qc/0703035](<https://arxiv.org/abs/gr-qc/0703035>). Lapse/shift and constraint geometry. Its extrinsic-curvature convention must be translated to the plus-$K$ convention used here.
