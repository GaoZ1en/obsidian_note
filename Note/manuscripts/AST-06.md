# Metric-Affine Geometry: Metric, Connection and Transport

Status: DRAFT.

A metric determines inner products at each point. A connection determines how to differentiate fields and compare vectors at different points. A metric-affine structure keeps these choices independent. Their compatibility is a condition to test, not a consequence of writing both on the same manifold. The useful result is a complete reconstruction: relative to the metric's Levi-Civita connection, the independent connection is uniquely specified by its torsion and nonmetricity. This reconstruction lets us calculate transport, distinguish two connection traces in divergence formulas, and identify precisely which additional assumptions recover Riemannian curvature identities.

We work on a smooth $n$-manifold with a smooth nondegenerate metric of fixed signature and a smooth linear connection on its tangent bundle. Spacetime examples have $n=4$ and signature $(-,+,+,+)$. Coordinates in the explicit geometric examples are dimensionless unless a scale is restored; with length-valued coordinates, an exponent $ax$ requires $a$ to have inverse-length units. No action or matter equation is assumed. The [shared conventions](<../CONVENTIONS.md>) and [affine-connection chapter](<AST-04.md>) use the same derivative-first connection slots.

## 1. What the Two Structures Define

For vector fields $X,Y$, a connection assigns a vector field $\nabla_XY$, is linear over smooth functions in $X$, and satisfies $\nabla_X(fY)=X(f)Y+f\nabla_XY$. In a coordinate basis,

$$\begin{align}
\nabla_{\partial_\mu}\partial_\nu =\Gamma^\rho{}_{\mu\nu}\partial_\rho, \qquad \nabla_\mu V^\rho =\partial_\mu V^\rho+\Gamma^\rho{}_{\mu\sigma}V^\sigma.
\end{align}$$

The first lower index is always the differentiating direction. The induced derivative of a covector is $\nabla_\mu\alpha_\nu=\partial_\mu\alpha_\nu-\Gamma^\rho{}_{\mu\nu}\alpha_\rho$, as follows by differentiating the scalar $\alpha(V)$ and applying the product rule.

A metric is a symmetric bilinear form $g_p$ on each tangent space, with an inverse $g^{\mu\nu}$ satisfying $g^{\mu\rho}g_{\rho\nu}=\delta^\mu{}_\nu$. It lowers indices by $V_\mu=g_{\mu\nu}V^\nu$. In Lorentzian signature a timelike unit vector has $g(V,V)=-1$; for a non-null vector its unsigned magnitude is $\sqrt{|g(V,V)|}$. The metric defines causal cones and proper lengths, but does not require an independently specified connection to preserve them.

The two relevant tensorial defects are

$$\begin{aligned}
T(X,Y)&=\nabla_XY-\nabla_YX-[X,Y],\\
Q(X;Y,Z)&=-(\nabla_Xg)(Y,Z)\\
&=-X\bigl(g(Y,Z)\bigr)+g(\nabla_XY,Z)+g(Y,\nabla_XZ).
\end{aligned}$$

The Lie bracket in $T$ cancels the derivatives of scalar coefficients and is essential outside a coordinate basis. Both definitions are tensorial in all their arguments. In coordinates they become

$$\begin{aligned}
T^\rho{}_{\mu\nu} &=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu},\\
Q_{\mu\nu\rho} &:=-\nabla_\mu g_{\nu\rho}\\
 &=-\partial_\mu g_{\nu\rho} +\Gamma^\sigma{}_{\mu\nu}g_{\sigma\rho} +\Gamma^\sigma{}_{\mu\rho}g_{\nu\sigma}.
\end{aligned}$$

Thus $T^\rho{}_{\mu\nu}=-T^\rho{}_{\nu\mu}$, whereas $Q_{\mu\nu\rho}=Q_{\mu\rho\nu}$. Metric compatibility means $Q=0$; torsion freedom means $T=0$. These are separate restrictions.

We will need three covectors, with their contractions fixed explicitly:

$$\begin{align}
t_\mu:=T^\rho{}_{\mu\rho}, \qquad Q_\mu:=g^{\nu\rho}Q_{\mu\nu\rho}, \qquad \widetilde Q_\mu:=g^{\nu\rho}Q_{\nu\mu\rho}.
\end{align}$$

The other torsion contraction is $T^\rho{}_{\rho\mu}=-t_\mu$. The two nonmetricity traces are generally independent. For example, the algebraic tensors $a_\mu g_{\nu\rho}$ and $g_{\mu\nu}b_\rho+g_{\mu\rho}b_\nu$ give trace pairs $(na_\mu,a_\mu)$ and $(2b_\mu,(n+1)b_\mu)$; these contractions are not interchangeable for $n>1$.

Removing only the first trace gives

$$\begin{align}
Q_{\mu\nu\rho} =\frac1nQ_\mu g_{\nu\rho}+\widehat Q_{\mu\nu\rho}, \qquad g^{\nu\rho}\widehat Q_{\mu\nu\rho}=0.
\end{align}$$

This does not generally remove the second trace: $g^{\nu\rho}\widehat Q_{\nu\mu\rho}=\widetilde Q_\mu-Q_\mu/n$. In four dimensions $T$ has $24$ components and $Q$ has $40$; the displayed split of $Q$ is $40=4+36$. These are dimensions of tensor fibers, not a count of propagating physical modes.

## 2. Reconstructing the Independent Connection

The metric has a distinguished reference connection, denoted by a bar, that is both torsion-free and metric-compatible:

$$\begin{align}
\bar\Gamma^\rho{}_{\mu\nu} =\frac12g^{\rho\sigma} \left(\partial_\mu g_{\nu\sigma} +\partial_\nu g_{\mu\sigma} -\partial_\sigma g_{\mu\nu}\right).
\end{align}$$

To obtain it, write compatibility as $\partial_\mu g_{\nu\rho}=\bar\Gamma_{\rho\mu\nu}+\bar\Gamma_{\nu\mu\rho}$, add its $\mu,\nu$-interchanged version, and subtract the version differentiated in $\rho$. Symmetry of the two lower connection slots leaves $2\bar\Gamma_{\rho\mu\nu}$, giving the formula. Substitution checks both conditions.

Although connection coefficients themselves are not tensor components, the difference of two connections is a tensor: the inhomogeneous coordinate-transformation terms cancel. Define the distortion and its lowered version by

$$\begin{align}
N^\rho{}_{\mu\nu} :=\Gamma^\rho{}_{\mu\nu}-\bar\Gamma^\rho{}_{\mu\nu}, \qquad N_{\rho\mu\nu}:=g_{\rho\sigma}N^\sigma{}_{\mu\nu}.
\end{align}$$

There are two immediately usable inverse relations:

$$\begin{align}
T_{\rho\mu\nu}=N_{\rho\mu\nu}-N_{\rho\nu\mu}, \qquad Q_{\mu\nu\rho}=N_{\rho\mu\nu}+N_{\nu\mu\rho}.
\end{align}$$

Here $T_{\rho\mu\nu}=g_{\rho\sigma}T^\sigma{}_{\mu\nu}$. Solving these linear equations gives

$$\begin{aligned}
\Gamma^\rho{}_{\mu\nu} &=\bar\Gamma^\rho{}_{\mu\nu}+K^\rho{}_{\mu\nu}+L^\rho{}_{\mu\nu},\\
K_{\rho\mu\nu} &=\frac12\left(T_{\rho\mu\nu}-T_{\mu\nu\rho}+T_{\nu\rho\mu}\right),\\
L_{\rho\mu\nu} &=\frac12\left(Q_{\mu\nu\rho}+Q_{\nu\mu\rho}-Q_{\rho\mu\nu}\right).
\end{aligned}$$

The names are contorsion for $K$ and disformation for $L$. Their raised versions mean precisely $K^\rho{}_{\mu\nu}=g^{\rho\sigma}K_{\sigma\mu\nu}$ and $L^\rho{}_{\mu\nu}=g^{\rho\sigma}L_{\sigma\mu\nu}$; the raising operation does not permute slots.

The reconstruction can be checked without guessing coefficients. Torsion antisymmetry gives

$$\begin{aligned}
K_{\rho\mu\nu}-K_{\rho\nu\mu}&=T_{\rho\mu\nu}, &K_{\rho\mu\nu}+K_{\nu\mu\rho}&=0,\\
L_{\rho\mu\nu}-L_{\rho\nu\mu}&=0, &L_{\rho\mu\nu}+L_{\nu\mu\rho}&=Q_{\mu\nu\rho}.
\end{aligned}$$

For instance, in the first difference the terms with first index $\mu$ or $\nu$ cancel in pairs, leaving $(T_{\rho\mu\nu}-T_{\rho\nu\mu})/2=T_{\rho\mu\nu}$. In the last sum, the terms $-Q_{\rho\mu\nu}$ and $-Q_{\nu\mu\rho}$ cancel the corresponding positive terms after using symmetry of the last two $Q$ slots. This leaves $Q_{\mu\nu\rho}$.

In this derivative-first convention, compatibility of $\bar\Gamma+K$ is therefore the antisymmetry

$$\begin{align}
K_{\rho\mu\nu}=-K_{\nu\mu\rho},
\end{align}$$

in the first and third lowered slots, not the first and second. The last two slots of $L$ are symmetric.

For uniqueness, a difference $D$ between two reconstructions obeys $D_{abc}=D_{acb}$ and $D_{abc}=-D_{cba}$. Combining these symmetries gives

$$\begin{align}
D_{abc}=D_{acb}=-D_{bca}=-D_{bac}=D_{cab}=D_{cba}=-D_{abc},
\end{align}$$

hence $D=0$. This also proves uniqueness of the reference Levi-Civita connection. At a fixed metric and point, the distortion space is consequently the direct sum of the contorsion and disformation subspaces, of dimensions $24$ and $40$ in four dimensions.

The special cases follow from the construction itself. If $T=0$, then $K=0$ and $\Gamma=\bar\Gamma+L$. If $Q=0$, then $L=0$ and $\Gamma=\bar\Gamma+K$, the metric-compatible or Riemann–Cartan case. If both vanish, $N=0$ and the connection is Levi-Civita. Torsion freedom alone does not imply metric compatibility, and compatibility alone does not eliminate torsion.

## 3. Parallel Transport of Norms, Angles and Curves

Along a prescribed smooth curve $x(s)$, put $u^\mu=dx^\mu/ds$. A parallel vector solves the linear ordinary differential equation

$$\begin{align}
\frac{dV^\rho}{ds} +\Gamma^\rho{}_{\mu\nu}u^\mu V^\nu=0.
\end{align}$$

Smooth coefficients give a unique transport map for each initial vector on any compact parameter interval contained in the coordinate domain. For two parallel vectors $U,V$, differentiating their inner product yields

$$\begin{aligned}
\frac{d}{ds}g(U,V) &=u^\mu\partial_\mu g_{\nu\rho}U^\nu V^\rho +g\left(\frac{dU}{ds},V\right) +g\left(U,\frac{dV}{ds}\right)\\
 &=-Q_{\mu\nu\rho}u^\mu U^\nu V^\rho.
\end{aligned}$$

The derivatives of the metric must be retained even when the vector components satisfy the parallel equation. In particular, $d\,g(V,V)/ds=-Q(u;V,V)$. If every vector preserves its squared norm along every curve, arbitrary choices of initial $u,V$ imply $Q(u;V,V)=0$. Polarization in $V$ then implies $Q=0$. Conversely, $Q=0$ makes every transported inner product constant. This is the precise equivalence between metric compatibility and metric-preserving transport.

Torsion has no separate term in this identity; it does not follow that changing a connection's torsion leaves its transport maps or its autoparallels unchanged. The transport equation still contains the entire connection. The statement concerns norm drift for the given connection and metric.

To see angle drift explicitly, suppose the span of two independent transported vectors is positive definite, so that the ordinary angle is defined. Set $B=g(U,U)>0$, $C=g(V,V)>0$, $H=g(U,V)$ and $\chi=H/\sqrt{BC}$. The product rule gives

$$\begin{align}
\frac{d\chi}{ds} =-\frac{Q(u;U,V)}{\sqrt{BC}} +\frac\chi2 \left(\frac{Q(u;U,U)}B+\frac{Q(u;V,V)}C\right).
\end{align}$$

Thus generic nonmetricity changes normalized inner products as well as magnitudes. For timelike vectors one uses the appropriate hyperbolic normalization instead of assigning a Euclidean arccosine to a Lorentzian inner product. Null vectors have no normalized angle of this form; generic nonmetricity need not even preserve their null character.

A simple complete calculation separates these effects. On Minkowski space with coordinates $(t,x,y,z)$ and constant $g=\eta$, take the only nonzero connection coefficient to be

$$\begin{align}
\Gamma^x{}_{xx}=a,
\end{align}$$

where $a$ is real and constant. Then $T=0$, $R=0$, and the only nonzero nonmetricity component is $Q_{xxx}=2a$. It is not Weyl pure trace when $a\ne0$: $Q_{xtt}=0$ whereas a nonzero multiple of $g_{tt}$ would not vanish. Along $x=s$, with the other coordinates fixed, transport is

$$\begin{align}
V^t(s)=V^t(0),\quad V^x(s)=e^{-as}V^x(0),\quad V^y(s)=V^y(0),\quad V^z(s)=V^z(0).
\end{align}$$

Choose $U(0)=\partial_x$ and $V(0)=\partial_x+\partial_y$. Then

$$\begin{aligned}
g(U,U)&=e^{-2as}, &g(V,V)&=1+e^{-2as},\\
\cos\theta(s)&=\frac{e^{-as}}{\sqrt{1+e^{-2as}}}, &\frac{d}{ds}\cos\theta&=-\frac{ae^{-as}}{(1+e^{-2as})^{3/2}}.
\end{aligned}$$

The initial angle is $\pi/4$ and generally changes despite the connection's vanishing curvature and torsion. Flatness of this connection does not mean that it preserves the specified metric.

For $a\ne0$, the coordinate $X=(e^{ax}-1)/a$ makes this connection vanish locally. On $1+aX>0$, the metric becomes

$$\begin{align}
g=-dt^2+\frac{dX^2}{(1+aX)^2}+dy^2+dz^2, \qquad Q_{XXX}=\frac{2a}{(1+aX)^3}.
\end{align}$$

Nonmetricity has not disappeared: it is now minus the coordinate derivative of the metric because the connection coefficients vanish. A coordinate simplification of a connection is not a compatibility condition.

An autoparallel transports its own tangent, $\nabla_u u=0$. In an affine parameter it obeys

$$\begin{align}
\ddot x^\rho+\bar\Gamma^\rho{}_{\mu\nu}\dot x^\mu\dot x^\nu =-N^\rho{}_{(\mu\nu)}\dot x^\mu\dot x^\nu.
\end{align}$$

Metric geodesics instead solve the equation with zero right-hand side; for non-null curves they arise from the metric length functional with an appropriate affine parameter. The relevant symmetric part is

$$\begin{align}
N_{\rho(\mu\nu)} =\frac12\left(T_{\mu\rho\nu}+T_{\nu\rho\mu}\right) +L_{\rho\mu\nu}.
\end{align}$$

The torsion tensor itself has $T^\rho{}_{(\mu\nu)}=0$. It enters this equation through the differently placed slots of contorsion, not through a nonexistent symmetric part of torsion's antisymmetric pair. In the compatible case, a completely antisymmetric lowered torsion has $K=T/2$ and $K_{\rho(\mu\nu)}=0$, so affine autoparallels agree with metric geodesics. General compatible torsion need not have this property. Identifying either family with a physical free-fall trajectory requires a matter model.

## 4. Two Connection Traces and the Metric Volume

The trace needed to differentiate a volume density is not the trace appearing in the divergence of a vector. Name them separately:

$$\begin{align}
\gamma_\mu:=\Gamma^\rho{}_{\mu\rho}, \qquad \beta_\mu:=\Gamma^\rho{}_{\rho\mu}, \qquad \gamma_\mu-\beta_\mu=t_\mu.
\end{align}$$

Neither $\gamma$ nor $\beta$ is generally a covector; their difference is. Contracting the definition of $Q$ and applying the determinant identity gives

$$\begin{align}
Q_\mu=-g^{\nu\rho}\partial_\mu g_{\nu\rho}+2\gamma_\mu, \qquad \partial_\mu\log\sqrt{|\det g|} =\gamma_\mu-\frac12Q_\mu.
\end{align}$$

Write $v_g=\sqrt{|\det g|}$. For a vector,

$$\begin{aligned}
\nabla_\mu V^\mu &=\partial_\mu V^\mu+\beta_\mu V^\mu\\
 &=\frac1{v_g}\partial_\mu(v_gV^\mu) +\left(\frac12Q_\mu-t_\mu\right)V^\mu.
\end{aligned}$$

The first term is the metric-volume divergence $\operatorname{div}_gV$, equivalently $\bar\nabla_\mu V^\mu$. Its definition does not involve the independent connection. A compatible connection has $\nabla_\mu V^\mu=\operatorname{div}_gV-t_\mu V^\mu$; a torsion-free connection has $\nabla_\mu V^\mu=\operatorname{div}_gV+Q_\mu V^\mu/2$. Both corrections vanish in the Levi-Civita case.

For comparison, the distortion contractions are

$$\begin{aligned}
K^\rho{}_{\mu\rho}&=0, &K^\rho{}_{\rho\mu}&=-t_\mu,\\
L^\rho{}_{\mu\rho}&=\frac12Q_\mu, &L^\rho{}_{\rho\mu}&=\frac12Q_\mu,\\
N^\rho{}_{\mu\rho}&=\frac12Q_\mu, &N^\rho{}_{\rho\mu}&=\frac12Q_\mu-t_\mu.
\end{aligned}$$

For example, the first vanishes because $g^{\rho\sigma}K_{\sigma\mu\rho}$ contracts the antisymmetric end slots. A third, different contraction is

$$\begin{align}
g^{\mu\nu}N^\rho{}_{\mu\nu} =t^\rho+\widetilde Q^\rho-\frac12Q^\rho.
\end{align}$$

It involves the second nonmetricity trace. Referring merely to “the trace of the connection” or “the trace of distortion” loses this distinction.

On an oriented manifold the metric volume form is $\mathrm{vol}_g=v_g\,dx^0\wedge\cdots\wedge dx^{n-1}$. Its covariant derivative subtracts one connection term for each lower form index; their total is $\gamma_\mu$. Therefore

$$\begin{align}
\nabla_\mu\mathrm{vol}_g=-\frac12Q_\mu\,\mathrm{vol}_g.
\end{align}$$

Volume preservation requires $Q_\mu=0$, not necessarily $Q_{\mu\nu\rho}=0$. Trace-free nonmetricity can preserve volumes while changing individual inner products.

The same distinction can be made with densities without selecting an orientation. A scalar density $\varrho$ of weight $+1$ transforms as $\varrho'=|\det(\partial x/\partial x')|\varrho$. The connection induced on this density bundle is

$$\begin{align}
\nabla_\mu\varrho=\partial_\mu\varrho-\gamma_\mu\varrho, \qquad \nabla_\mu v_g=-\frac12Q_\mu v_g.
\end{align}$$

For a vector density $J^\mu=v_gV^\mu$ of weight $+1$, its vector and density connection terms give

$$\begin{align}
\nabla_\mu J^\mu =\partial_\mu J^\mu-t_\mu J^\mu.
\end{align}$$

Consequently even the covariant divergence of a weight-one vector density is not an ordinary partial divergence when $t\ne0$.

The integral theorem uses the metric-volume divergence, independently of these conventions for $\nabla$. If $\Omega$ is an oriented compact region with smooth boundary and $V$ is smooth, Cartan's formula and Stokes' theorem give

$$\begin{aligned}
\int_\Omega(\nabla_\mu V^\mu)\,\mathrm{vol}_g &=\int_{\partial\Omega}\iota_V\mathrm{vol}_g +\int_\Omega\left(\frac12Q_\mu-t_\mu\right)V^\mu\,\mathrm{vol}_g.
\end{aligned}$$

Here $\iota_V$ inserts $V$ into the first slot of the volume form and the boundary carries its induced orientation. No unit-normal convention is needed. Dropping the bulk correction requires an actual condition, such as $Q_\mu/2=t_\mu$, rather than an unsupported appeal to the usual divergence theorem.

## 5. Weyl Geometry and the Local-to-Global Integrability Question

Pure-trace nonmetricity is particularly transparent if we normalize its one-form by

$$\begin{align}
Q_{\mu\nu\rho}=2w_\mu g_{\nu\rho}, \qquad Q_\mu=2nw_\mu, \qquad \widetilde Q_\mu=2w_\mu.
\end{align}$$

We call the torsion-free member Weyl geometry. Allowing torsion as well gives a Weyl–Cartan structure. Substitution into the disformation formula constructs the connection, rather than merely imposing a name:

$$\begin{align}
\Gamma^\rho{}_{\mu\nu} =\bar\Gamma^\rho{}_{\mu\nu} +K^\rho{}_{\mu\nu} +\delta^\rho{}_\mu w_\nu +\delta^\rho{}_\nu w_\mu -g_{\mu\nu}w^\rho.
\end{align}$$

For any two parallel vectors on the same path, $h(s)=g(U,V)$ now satisfies $\dot h=-2w(u)h$. Hence

$$\begin{align}
g(U,V)_{s_1} =g(U,V)_{s_0}\exp\left(-2\int_{s_0}^{s_1}w_\mu\dot x^\mu ds\right).
\end{align}$$

For non-null vectors, unsigned magnitudes scale by $\exp(-\int w)$. Their ratios are constant along a common transport path. The two terms in the angle-derivative formula cancel, so normalized angles, or the corresponding timelike hyperbolic inner products, are preserved. Nullness is preserved as well. These properties are conformal preservation, not metric preservation unless $w=0$.

For a worked solution take $g=\eta$ and $w=a\,dx$ on a coordinate patch. The torsion-free Weyl connection has, along $x=s$, the matrix $\Gamma^\rho{}_{x\nu}=a\delta^\rho{}_\nu$. Every parallel vector therefore has $V^\rho(s)=e^{-as}V^\rho(0)$. Unlike the anisotropic example in Section 3, all components acquire the same factor, so all transported normalized angles are unchanged.

A Weyl rescaling changes the metric representative while retaining the connection:

$$\begin{align}
g'=e^{2\sigma}g, \qquad \nabla'=\nabla, \qquad w'=w-d\sigma.
\end{align}$$

Indeed, $-\nabla(e^{2\sigma}g)=2(w-d\sigma)e^{2\sigma}g$. Thus a conformal representative compatible with the same connection exists on a domain precisely when $w=d\sigma$ there. With torsion absent, uniqueness then identifies $\nabla$ as the Levi-Civita connection of $g'$. With torsion present it identifies a compatible connection, not necessarily Levi-Civita.

Locally, $dw=0$ is sufficient on a contractible coordinate neighborhood by the Poincare lemma; it is necessary because $d^2\sigma=0$. Globally, closedness is not sufficient: one needs exactness, equivalently vanishing periods of $w$ on all closed loops of a connected domain. A potential can then be constructed by integrating $w$ from a base point, with zero periods giving path independence.

For an explicit obstruction, let $M=S^1\times\mathbb R^3$ with periodic coordinate $\theta\sim\theta+2\pi$, metric

$$\begin{align}
g=-dt^2+d\theta^2+dy^2+dz^2, \qquad w=\lambda\,d\theta, \qquad \lambda\in\mathbb R\setminus\{0\}.
\end{align}$$

The one-form $d\theta$ is globally defined even though a real-valued angle function is not. Here $dw=0$, but $\oint_{S^1}w=2\pi\lambda\ne0$, so there is no globally single-valued $\sigma$ with $d\sigma=w$. Local representatives $e^{2\lambda\theta}g$ are compatible; they do not glue to the proposed single-valued global rescaling. Along the circle the connection matrix is $\lambda I$, so a vector returns as $e^{-2\pi\lambda}V$ and its unsigned magnitude has the same nontrivial multiplier. Thus local integrability does not eliminate global scale holonomy.

For contrast, $w=\beta x\,dy$ on a Cartesian patch has $dw=\beta\,dx\wedge dy$. Around a positively oriented rectangle of sides $L_x,L_y$, the unsigned magnitude multiplier is $\exp(-\beta L_xL_y)$. This obstruction already occurs for contractible loops. It is distinct from the nonzero period of a closed form on the cylinder.

Integrable does not mean curvature-free. In the example $w=a\,dx$, the compatible metric is $g'=e^{2ax}\eta$, whose Levi-Civita scalar in four dimensions is

$$\begin{align}
\bar R(g')=-6a^2e^{-2ax}.
\end{align}$$

The Weyl scale curvature $dw$ vanishes, but the full connection curvature need not.

## 6. Coordinate Changes, Frame Changes and Projective Shifts

A coordinate change $x\mapsto x'$ describes the same connection with different coefficients. The chain rule applied to $\nabla_{\partial'_\mu}\partial'_\nu$ gives

$$\begin{align}
\Gamma'{}^\rho{}_{\mu\nu} =\frac{\partial x'^\rho}{\partial x^\alpha} \frac{\partial x^\beta}{\partial x'^\mu} \frac{\partial x^\gamma}{\partial x'^\nu} \Gamma^\alpha{}_{\beta\gamma} +\frac{\partial x'^\rho}{\partial x^\alpha} \frac{\partial^2x^\alpha}{\partial x'^\mu\partial x'^\nu}.
\end{align}$$

The inhomogeneous term explains why a connection is not a tensor. The same term appears for $\bar\Gamma$, leaving $N'=\text{tensor transform of }N$. Torsion and nonmetricity also transform tensorially.

More generally choose a local frame $e_a$ and dual coframe $\theta^a$. Define the connection one-form matrix and frame metric by

$$\begin{align}
\nabla e_b=e_a\,\omega^a{}_b, \qquad h_{ab}=g(e_a,e_b), \qquad Q_{ab}=-dh_{ab}+\omega^c{}_a h_{cb}+\omega^c{}_b h_{ac}.
\end{align}$$

Here $Q_{ab}$ is a one-form; its evaluation on $X$ is $Q(X;e_a,e_b)$. If $e'_a=e_b S^b{}_a$ for a smooth invertible matrix $S$, then the same geometric fields are represented by

$$\begin{align}
\theta'=S^{-1}\theta, \qquad h'=S^ThS, \qquad \omega'=S^{-1}\omega S+S^{-1}dS, \qquad Q'=S^TQS.
\end{align}$$

For the connection formula, expand $\nabla(eS)=(\nabla e)S+e\,dS=eS(S^{-1}\omega S+S^{-1}dS)$. Substituting $h'$ and $\omega'$ into the definition of $Q'$ cancels all $dS$ terms and gives the stated tensor transformation. A frame change changes components, not the underlying metric, connection or tensors. In a noncoordinate frame, $T^a{}_{bc}=\omega^a{}_c(e_b)-\omega^a{}_b(e_c)-c^a{}_{bc}$, where $[e_b,e_c]=c^a{}_{bc}e_a$.

A projective connection shift is a different operation. At fixed metric, choose a one-form $A$ and define

$$\begin{align}
\Gamma'{}^\rho{}_{\mu\nu} =\Gamma^\rho{}_{\mu\nu}+\delta^\rho{}_\nu A_\mu.
\end{align}$$

It changes the connection as a geometric object. Its symmetric lower-slot contribution along a tangent is $(A_\mu u^\mu)u^\rho$, which can be absorbed into a reparametrization of an autoparallel. Thus it preserves unparametrized autoparallel paths, not necessarily affine parameters or vector transport. Direct substitution gives

$$\begin{aligned}
T'{}^\rho{}_{\mu\nu} &=T^\rho{}_{\mu\nu} +\delta^\rho{}_\nu A_\mu-\delta^\rho{}_\mu A_\nu,\\
t'_\mu&=t_\mu+(n-1)A_\mu,\\
Q'_{\mu\nu\rho}&=Q_{\mu\nu\rho}+2A_\mu g_{\nu\rho}.
\end{aligned}$$

In the pure-trace sector this sends $w$ to $w+A$, at fixed $g$. In contrast, a metric Weyl rescaling kept $\Gamma$ fixed and sent $w$ to $w-d\sigma$. A frame change kept both geometric objects fixed and transformed their representatives. None of these operations becomes a physical gauge equivalence solely by being available geometrically; a theory must specify what configurations and observables it identifies.

## 7. Metric Compatibility and Holonomy Reduction

An orthonormal frame has $h_{ab}=\eta_{ab}$. Such frames can be chosen locally for any metric of fixed signature, even when $Q\ne0$. In that frame the preceding formula reads

$$\begin{align}
Q_{ab}=\omega_{ab}+\omega_{ba}, \qquad \omega_{ab}:=\eta_{ac}\omega^c{}_b.
\end{align}$$

Thus $Q=0$ is exactly the condition that the connection one-form takes values in $\mathfrak{so}(1,3)$ in Lorentzian orthonormal frames. The metric reduces the frame bundle from $\mathrm{GL}(4,\mathbb R)$ to its orthonormal subbundle; compatibility says that parallel transport respects this reduction. Torsion does not obstruct this statement.

At a base point $p$, holonomy consists of the linear maps $P_\gamma:T_pM\to T_pM$ obtained by transport around loops based at $p$. If $Q=0$, metric-preserving transport implies

$$\begin{align}
g_p(P_\gamma U,P_\gamma V)=g_p(U,V), \qquad \mathrm{Hol}_p(\nabla)\subseteq\mathrm O(1,3).
\end{align}$$

With a preserved choice of orientation and time orientation one restricts to the corresponding proper, orthochronous subgroup. The restricted holonomy, from loops contractible to the base point, lies in the identity component already. Further holonomy reduction is an additional property, often associated with extra parallel tensors; it is not implied merely by the presence of a Lorentz metric.

There is a useful converse with a different hypothesis: if the full holonomy of a connection on a connected manifold preserves a nondegenerate form $h_p$ at one point, define

$$\begin{align}
h_q(P_\gamma U,P_\gamma V):=h_p(U,V)
\end{align}$$

using any path from $p$ to $q$. Two choices differ by a holonomy map, so the definition is path-independent. Locally smooth dependence of transport gives a smooth parallel metric $h$ of the same signature. This constructs some compatible metric; it does not prove compatibility with an arbitrary separately prescribed $g$. Preservation by restricted holonomy alone supplies the analogous local statement, not control over noncontractible loops.

For pure-trace nonmetricity, transported inner products change by one common positive factor. The appropriate holonomy containment is then in the conformal orthogonal group, whose maps obey $P^Tg_pP=c^2g_p$ with $c>0$. In an orthonormal frame, $\omega=\omega_{\mathrm{Lorentz}}+wI$. These frame and holonomy groups describe transport structure. They do not derive an internal particle-physics gauge group, a unified interaction, or a spectrum of fields.

## 8. Curvature Identities with Their Actual Hypotheses

Fix the curvature operator by

$$\begin{align}
R(X,Y)Z :=\nabla_X\nabla_YZ-\nabla_Y\nabla_XZ-\nabla_{[X,Y]}Z.
\end{align}$$

Our components are $R(\partial_\mu,\partial_\nu)\partial_\sigma=R^\rho{}_{\sigma\mu\nu}\partial_\rho$, with

$$\begin{align}
R^\rho{}_{\sigma\mu\nu} =\partial_\mu\Gamma^\rho{}_{\nu\sigma} -\partial_\nu\Gamma^\rho{}_{\mu\sigma} +\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma} -\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}.
\end{align}$$

Antisymmetry in $\mu,\nu$ holds for every connection. Lowering the first index with the metric does not by itself create the other Riemannian symmetries.

To see the role of nonmetricity, interpret $\nabla_\mu\nabla_\nu g_{ab}$ as the covariant derivative of the full three-covariant tensor $\nabla g$, including its derivative slot. The tensorial second-derivative commutator then gives

$$\begin{align}
(\nabla_\mu\nabla_\nu-\nabla_\nu\nabla_\mu)g_{ab} =-R_{ba\mu\nu}-R_{ab\mu\nu} -T^\rho{}_{\mu\nu}\nabla_\rho g_{ab}.
\end{align}$$

The last term comes from differentiating the derivative slot. Substituting $\nabla g=-Q$ produces

$$\begin{align}
2R_{(ab)\mu\nu} =\nabla_\mu Q_{\nu ab}-\nabla_\nu Q_{\mu ab} +T^\rho{}_{\mu\nu}Q_{\rho ab}.
\end{align}$$

In particular, compatibility implies $R_{ab\mu\nu}=-R_{ba\mu\nu}$ even with torsion. With general nonmetricity, the displayed right-hand side is its actual replacement; nonmetricity does not force that side to be nonzero in every example.

A curvature contraction with especially simple content is

$$\begin{align}
P_{\mu\nu}:=R^\rho{}_{\rho\mu\nu}.
\end{align}$$

Writing the connection as matrices $(\Gamma_\mu)^\rho{}_\sigma=\Gamma^\rho{}_{\mu\sigma}$, the quadratic contribution to $P$ is the trace of $[\Gamma_\mu,\Gamma_\nu]$ and vanishes. The volume identity then gives

$$\begin{align}
P_{\mu\nu} =\partial_\mu\gamma_\nu-\partial_\nu\gamma_\mu =\frac12(\partial_\mu Q_\nu-\partial_\nu Q_\mu).
\end{align}$$

Although $\gamma$ itself is connection-dependent under coordinate changes, its exterior derivative here is a tensor. For any one-form $\alpha$,

$$\begin{align}
\nabla_\mu\alpha_\nu-\nabla_\nu\alpha_\mu =(d\alpha)_{\mu\nu}-T^\rho{}_{\mu\nu}\alpha_\rho.
\end{align}$$

Therefore the equivalent covariant expression is $2P_{\mu\nu}=\nabla_\mu Q_\nu-\nabla_\nu Q_\mu+T^\rho{}_{\mu\nu}Q_\rho$. There is no torsion term left in $2P=dQ$. In the Weyl normalization of Section 5 this reads $P=n\,dw$. Flatness of the full connection implies $dQ=0$, but exactness of the trace $Q_\mu dx^\mu$ alone does not make a general nonmetricity tensor pure trace or eliminate its trace-free part.

The Bianchi identities are clearest without concealing torsion terms in component cyclic sums. In a frame define the two-form columns and matrices

$$\begin{align}
T^a=d\theta^a+\omega^a{}_b\wedge\theta^b, \qquad \mathcal R^a{}_b=d\omega^a{}_b+\omega^a{}_c\wedge\omega^c{}_b.
\end{align}$$

Here $T^a=\tfrac12T^a{}_{bc}\theta^b\wedge\theta^c$ and $\mathcal R^a{}_b=\tfrac12R^a{}_{bcd}\theta^c\wedge\theta^d$. Let $D$ be the exterior covariant derivative: on a vector-valued form it adds $\omega\wedge$, and on an endomorphism-valued form of degree $k$ it acts as $D\Phi=d\Phi+\omega\wedge\Phi-(-1)^k\Phi\wedge\omega$. Then

$$\begin{align}
DT^a=\mathcal R^a{}_b\wedge\theta^b, \qquad D\mathcal R^a{}_b=0.
\end{align}$$

For the first identity, expand $d(d\theta+\omega\wedge\theta)+\omega\wedge(d\theta+\omega\wedge\theta)$. The terms $-\omega\wedge d\theta$ and $+\omega\wedge d\theta$ cancel, leaving $(d\omega+\omega\wedge\omega)\wedge\theta$. For the second, substitute $\mathcal R=d\omega+\omega\wedge\omega$ into $d\mathcal R+\omega\wedge\mathcal R-\mathcal R\wedge\omega$; the $d\omega$ terms cancel and associativity cancels the cubic terms. These identities require neither a metric nor metric compatibility.

If $T=0$, the first reduces to the algebraic cyclic identity

$$\begin{align}
R^\rho{}_{\sigma\mu\nu} +R^\rho{}_{\mu\nu\sigma} +R^\rho{}_{\nu\sigma\mu}=0.
\end{align}$$

For a torsionful connection it is $DT=\mathcal R\wedge\theta$, not that zero cyclic sum, that remains valid. Similarly, a torsion-free connection permits the ordinary component differential Bianchi identity; a torsionful component version must include the derivative-slot corrections.

For the Levi-Civita connection, both $T=0$ and $Q=0$ hold. The two pair antisymmetries and the algebraic cyclic identity yield pair exchange, so

$$\begin{align}
\bar R_{ab\mu\nu}=-\bar R_{ba\mu\nu} =-\bar R_{ab\nu\mu}, \qquad \bar R_{ab\mu\nu}=\bar R_{\mu\nu ab}.
\end{align}$$

For the pair-exchange step, apply the cyclic identity first with $a,b$ as free first indices and then with $c,d$ as free first indices. The pair antisymmetries give the explicit chain

$$\begin{aligned}
2\bar R_{abcd} &=-\bar R_{acdb}-\bar R_{adbc}+\bar R_{bcda}+\bar R_{bdac}\\
 &=(\bar R_{acbd}-\bar R_{bcad})+(\bar R_{dabc}-\bar R_{dbac})\\
 &=2\bar R_{cdab}.
\end{aligned}$$

Contracting pair exchange gives symmetric $\bar R_{\mu\nu}=\bar R^\rho{}_{\mu\rho\nu}$. The two contractions of the differential Bianchi identity are

$$\begin{align}
\bar\nabla^a\bar R_{abcd} =\bar\nabla_c\bar R_{bd}-\bar\nabla_d\bar R_{bc}, \qquad 2\bar\nabla^a\bar R_{ac}=\bar\nabla_c\bar R.
\end{align}$$

The metric can pass through these derivatives because the connection is compatible. Thus $\bar\nabla_\mu\bar G^{\mu\nu}=0$, where $\bar G_{\mu\nu}=\bar R_{\mu\nu}-g_{\mu\nu}\bar R/2$. Neither symmetric Ricci nor that uncorrected divergence law is asserted for an arbitrary independent connection.

## 9. Flat Connections and Three Different Connections for One Metric

Vanishing connection curvature has a local constructive meaning. On a contractible patch, the parallel-frame equations are compatible when $R=0$, so there is a frame with $\omega=0$. Its vectors need not commute. In that frame $T(e_a,e_b)=-[e_a,e_b]$, and torsion can remain nonzero. Thus a flat connection can be set to zero in a frame, but not necessarily in a coordinate basis. If $T=0$ as well, the parallel frame commutes and local coordinates can be chosen with $\Gamma=0$. These are local assertions, not guarantees of global affine coordinates or trivial global holonomy.

An explicit compatible flat construction starts with an invertible coframe matrix $E^a{}_\mu$ and sets

$$\begin{align}
g_{\mu\nu}=\eta_{ab}E^a{}_\mu E^b{}_\nu, \qquad \Gamma^\rho{}_{\mu\nu} =(E^{-1})^\rho{}_a\partial_\mu E^a{}_\nu.
\end{align}$$

The coframe is parallel. The metric derivative cancels its two connection terms, so $Q=0$. In matrix notation $\Gamma=E^{-1}dE$; using $dE^{-1}=-E^{-1}(dE)E^{-1}$ shows $d\Gamma+\Gamma\wedge\Gamma=0$. Its torsion is

$$\begin{align}
T^\rho{}_{\mu\nu} =(E^{-1})^\rho{}_a (\partial_\mu E^a{}_\nu-\partial_\nu E^a{}_\mu),
\end{align}$$

which is generally nonzero. This is the local Weitzenbock or metric-compatible teleparallel construction. Torsion is still a tensor: it is not removed by a passive frame change. Replacing the coframe and separately resetting its connection one-form to zero need not be a passive description of the same connection.

Take $E=\operatorname{diag}(1,1,e^x,1)$, so

$$\begin{align}
g=-dt^2+dx^2+e^{2x}dy^2+dz^2.
\end{align}$$

The constructed connection has only $\Gamma^y{}_{xy}=1$. It has $R=0$, $Q=0$ and $T^y{}_{xy}=1$. Its traces are $\gamma_x=t_x=1$ and $\beta_x=0$, so its vector divergence is just $\partial_\mu V^\mu$. The metric-volume divergence is instead $\partial_\mu V^\mu+V^x$, and the torsion correction cancels $V^x$ exactly.

For this same metric, choose instead the zero connection in the displayed coordinate chart. It is flat and torsion-free but has $Q_{xyy}=-2e^{2x}$ and $Q_x=-2$. The nonmetricity correction again cancels the $V^x$ in the metric-volume divergence. This is a local symmetric teleparallel structure; $Q=-\partial g$ here is a coordinate formula for the chosen zero connection, not an invariant prescription that sets all connection coefficients to zero in every chart.

Finally, choose the Levi-Civita connection of the same metric. It has $T=Q=0$ but scalar curvature $\bar R=-2$. The independent connections' vanishing curvature therefore says nothing by itself about the metric's Levi-Civita curvature. The three constructions share a metric but not a connection, transport law or full geometric structure.

## 10. Scope and Mathematical Limitations

A metric-affine pair provides independent local geometric data. At a fixed four-dimensional metric the connection difference has $64=24+40$ components; requiring pure-trace nonmetricity leaves $24+4$ components, and requiring torsion freedom as well leaves the four components of $w$. These pointwise counts are not a constrained Hamiltonian analysis. Which quantities propagate, which are auxiliary, and which transformations are gauge redundancies cannot be determined without a specified action, matter couplings and boundary conditions.

The local reconstructions and transport formulas do not assume geodesic completeness, a global frame, a spin structure, or global affine coordinates. Flatness, a local compatible conformal representative and trivial global holonomy are different properties. The cylinder example separates closed from exact Weyl one-forms; the coframe example separates a flat independent connection from a curved metric. Curvature symmetries and conservation statements must retain the torsion and compatibility hypotheses stated in Section 8.

The geometric task ends here: $g$ supplies inner products, $\nabla$ supplies transport, and $(T,Q)$ describe their independent torsion and compatibility data relative to Levi-Civita geometry. A gravitational action or a model of clocks, particles and matter is an additional construction, not an inference from this decomposition.
