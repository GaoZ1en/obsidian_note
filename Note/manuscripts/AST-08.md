# Fibre Bundles, Gauge Connections, and Global Field Data

DRAFT — bounded review recorded.

A gauge potential is not, in general, one matrix-valued one-form on all of spacetime. It is a collection of local forms, related on overlaps so that differentiation and parallel transport define global operations. A fibre bundle supplies the gluing data. A connection supplies the transport. Neither specifies an equation of motion.

This chapter constructs these objects and follows the construction through a monopole and a nonabelian characteristic-number calculation. The base $M$ is a Hausdorff, second-countable smooth manifold; in particular, it is paracompact and admits smooth partitions of unity. The structure group $G$ is a finite-dimensional Lie group. No spacetime metric is needed until one is explicitly introduced. Lorentzian applications use signature $(-,+,+,+)$ and the derivative-first convention

$$\begin{align}
\nabla_\mu V^\rho=\partial_\mu V^\rho+\Gamma^\rho{}_{\mu\sigma}V^\sigma.
\end{align}$$

For compact unitary gauge groups, potentials and curvature matrices are anti-Hermitian, and the associated covariant derivative is $D=\mathrm d+A$. Matrix multiplication accompanies the wedge product: $A\wedge A$ need not vanish. These choices determine all subsequent transformation and Chern-class signs. For an abstract Lie group, the notation $h^{-1}Ah$ means $\operatorname{Ad}_{h^{-1}}A$, and $h^{-1}\mathrm dh$ means the left Maurer–Cartan form; literal matrix products apply in a chosen matrix representation.

## 1. Constructing a Bundle from Overlap Data

A smooth fibre bundle $\pi:E\to M$ with typical fibre $F$ has local trivializations

$$\begin{align}
\varphi_i:\pi^{-1}(U_i)\longrightarrow U_i\times F, \qquad \operatorname{pr}_1\circ\varphi_i=\pi,
\end{align}$$

for an open cover $\{U_i\}$ of $M$. A trivialization identifies the fibres over one patch with a fixed model; it does not identify fibres at distant points canonically. On $U_i\cap U_j$, the maps $\varphi_i\varphi_j^{-1}$ must fit together. If a Lie group $G$ acts smoothly on $F$, a bundle with structure group $G$ has overlap maps of the form

$$\begin{align}
(x,f_j)\longmapsto(x,g_{ij}(x)\cdot f_j).
\end{align}$$

Consistency on double and triple overlaps requires

$$\begin{align}
g_{ii}=1,\qquad g_{ji}=g_{ij}^{-1},\qquad g_{ij}g_{jk}=g_{ik}.
\end{align}$$

The last equation is the cocycle condition. It says that changing from chart $k$ to chart $i$ directly gives the same point as changing through chart $j$. For a nonabelian group, the order of the factors matters.

Conversely, start with smooth functions $g_{ij}$ satisfying these equations. Form the disjoint union of $U_i\times F$ and identify

$$\begin{align}
(x,f_j)_j\sim(x,g_{ij}(x)\cdot f_j)_i.
\end{align}$$

The cocycle condition makes this identification transitive. Projection onto $x$ descends to the quotient, and the products $U_i\times F$ give its local smooth bundle charts. This is the local-to-global construction, not merely a test imposed on a bundle already known to exist.

For a concrete triple-overlap calculation, take smooth scalar functions $u,v$ and matrices

$$
h_1=\begin{pmatrix}1&u\\0&1\end{pmatrix},\qquad
h_2=\begin{pmatrix}1&0\\v&1\end{pmatrix},\qquad
h_3=\begin{pmatrix}2&0\\0&1/2\end{pmatrix}.
$$

The functions $g_{ij}=h_i^{-1}h_j$ give

$$\begin{aligned}
g_{12}&=\begin{pmatrix}1-uv&-u\\
v&1\end{pmatrix},&
g_{23}&=\begin{pmatrix}2&0\\
-2v&1/2\end{pmatrix},\\
g_{13}&=\begin{pmatrix}2&-u/2\\
0&1/2\end{pmatrix},&
g_{12}g_{23}&=g_{13}.
\end{aligned}$$

The matrices need not commute, but the adjacent factors $h_2h_2^{-1}$ cancel in the required order. This example is deliberately trivializable: its cocycle was built from the $h_i$. The monopole below will give genuinely nontrivial gluing.

A change of local choices by smooth maps $h_i:U_i\to G$ changes a cocycle according to

$$\begin{align}
g_{ij}'=h_i^{-1}g_{ij}h_j.
\end{align}$$

The two quotient constructions then describe isomorphic bundles. More generally, comparisons may require passing to a common refinement of the covers. Thus a bundle is not a preferred array of transition functions; the array is a presentation of its isomorphism class.

## 2. Principal Bundles, Frames, and Associated Fields

A principal $G$-bundle $P\to M$ is locally $U_i\times G$, with a free right action that is transitive on each fibre. A point in a fibre is a choice of gauge frame; there is no distinguished identity point in that fibre. Choose local sections $s_i:U_i\to P$. Our convention is

$$\begin{align}
s_j(x)=s_i(x)g_{ij}(x).
\end{align}$$

Every $p\in P_x$ has a unique expression $p=s_i(x)h_i$. On an overlap, $h_i=g_{ij}h_j$, giving exactly the preceding quotient construction with $F=G$ and left multiplication in the overlap map. Right multiplication $h_i\mapsto h_i k$ is well defined because it commutes with that left multiplication.

A global section $s:M\to P$ would give an explicit trivialization

$$\begin{align}
M\times G\longrightarrow P,\qquad(x,h)\longmapsto s(x)h.
\end{align}$$

Conversely, a product bundle has the section $(x,1)$. Hence a principal bundle is trivial precisely when it has a global section. Local sections are guaranteed; a global one is extra information [1].

For a rank-$r$ real vector bundle $E$, its frame bundle $\operatorname{Fr}(E)$ consists of linear isomorphisms $u:\mathbb R^r\to E_x$. The right action is $u\cdot h=u\circ h$, for $h\in GL(r,\mathbb R)$. The frame bundle of $TM$ is denoted $LM$. Local coordinate vectors provide local sections of $LM$, but arbitrary local frames need not be coordinate bases. A global section of $\operatorname{Fr}(E)$ is a global ordered frame of $r$ everywhere-independent sections, and is equivalent to $E$ being trivial.

This is stronger than the existence of a section of $E$. Every vector bundle has a zero section. A nowhere-zero section of a real line bundle trivializes it, whereas one nowhere-zero section of a higher-rank bundle generally does not provide the remaining independent vectors. For example, the Möbius real line bundle is

$$\begin{align}
([0,2\pi]\times\mathbb R)/\bigl((2\pi,v)\sim(0,-v)\bigr).
\end{align}$$

A continuous section is represented by a function satisfying $f(2\pi)=-f(0)$. If it were everywhere nonzero, the intermediate value theorem would be violated. The zero section exists, but no global frame does. An equally important tangent-bundle example is $TS^2$: the sphere has a Riemannian metric, although the hairy-ball theorem excludes a global tangent frame. A metric must not be confused with a trivialization.

To obtain matter fields from $P$, choose a representation $\rho:G\to GL(V)$. Define the associated vector bundle

$$\begin{align}
E=P\times_\rho V=(P\times V)/\sim, \qquad (ph,v)\sim(p,\rho(h)v).
\end{align}$$

If a section is locally $\sigma(x)=[s_i(x),v_i(x)]$, then

$$\begin{align}
[s_j,v_j]=[s_i g_{ij},v_j] =[s_i,\rho(g_{ij})v_j], \qquad v_j=\rho(g_{ij})^{-1}v_i.
\end{align}$$

These equations supply a practical gluing procedure: choose local functions $v_i$, check this equality on every overlap, and define $\sigma(x)$ using any patch containing $x$. The equality makes the answer independent of the patch. Individual $v_i$ are not global fields on $M$, but their equivalence class is.

The defining representation gives $TM\simeq LM\times_{GL(n,\mathbb R)}\mathbb R^n$ through $[u,v]\mapsto u(v)$. Dual and tensor representations give covectors and general tensor bundles. The adjoint representation gives

$$\begin{align}
\operatorname{ad}P=P\times_{\operatorname{Ad}}\mathfrak g,
\end{align}$$

whose local components obey $X_j=g_{ij}^{-1}X_i g_{ij}$. For $LM$, the one-dimensional representations $h\mapsto|\det h|^{-1}$ and $h\mapsto(\det h)^{-1}$ give the density bundle and the bundle of top-degree covectors, respectively. Their local component functions therefore transform by $|\det g_{ij}|$ and $\det g_{ij}$. These rules distinguish a density from a differential form without introducing a preferred metric.

## 3. A Connection Is a Compatible Rule for Horizontal Motion

At $p\in P$, the vertical tangent space $V_pP=\ker\pi_*$ describes motion inside the gauge fibre. A principal connection selects a complementary space

$$\begin{align}
T_pP=H_pP\oplus V_pP,\qquad (R_h)_*H_pP=H_{ph}P.
\end{align}$$

The second condition says that the horizontal rule does not depend on which gauge frame labels the same fibre. Equivalently, a $\mathfrak g$-valued one-form $\omega$ on $P$ satisfies

$$\begin{align}
\omega(\xi^\#)=\xi,\qquad R_h^*\omega=\operatorname{Ad}_{h^{-1}}\omega, \qquad H=\ker\omega,
\end{align}$$

where $\xi^\#_p=\left.\frac{\mathrm d}{\mathrm dt}\right|_0p\exp(t\xi)$ is a fundamental vertical vector. These are defining properties, not field equations.

Pull back to each local section: $A_i=s_i^*\omega$. In coordinates $p=s_i(x)h$, the connection is

$$\begin{align}
\omega=h^{-1}A_i h+h^{-1}\mathrm dh.
\end{align}$$

A lifted path $p(t)=s_i(x(t))h(t)$ is horizontal exactly when $\omega(\dot p)=0$, or $\dot h=-A_i(\dot x)h$. Thus the local form determines an actual transport equation, and not just a rule for changing components. Setting $h=g_{ij}(x)$ gives the overlap law

$$\begin{align}
A_j=g_{ij}^{-1}A_i g_{ij}+g_{ij}^{-1}\mathrm dg_{ij}.
\end{align}$$

Its inhomogeneous term is necessary. Indeed, differentiating $v_j=\rho(g_{ij})^{-1}v_i$ produces a derivative of $g_{ij}$; the inhomogeneous term cancels it. With $A$ understood through the infinitesimal representation $\rho_*$,

$$\begin{align}
D_i v_i=\mathrm dv_i+\rho_*(A_i)v_i, \qquad D_jv_j=\rho(g_{ij})^{-1}D_iv_i.
\end{align}$$

Thus the local operators glue to one global covariant derivative $D:\Gamma(E)\to\Omega^1(M,E)$.

Conversely, local forms satisfying the overlap law reconstruct $\omega$ by the displayed formula. Connections exist on these smooth principal bundles: local product connections can be combined using a partition of unity pulled back from $M$. The affine nature of the connection axioms makes their weighted combination a connection. Existence does not require that $P$ be trivial [2].

If $A_i$ and $\widehat A_i$ are two connections on the same bundle, their difference $B_i=\widehat A_i-A_i$ satisfies

$$\begin{align}
B_j=g_{ij}^{-1}B_i g_{ij}.
\end{align}$$

The inhomogeneous terms have cancelled. Therefore the space $\mathcal A(P)$ of connections is an affine space modelled on $\Omega^1(M,\operatorname{ad}P)$. It has differences of points but no preferred zero connection. Even the statement “$A=0$” needs a specified local frame and need not extend globally.

### Gauge Transformations and Their Sign

Changing $s_i$ to $s_i h_i$ changes the presentation of fixed geometric data and also replaces $g_{ij}$ by $h_i^{-1}g_{ij}h_j$. A gauge transformation of a fixed $P$ is instead a right-equivariant automorphism $\Phi:P\to P$ covering the identity of $M$. Write

$$\begin{align}
\Phi(s_i)=s_i u_i.
\end{align}$$

Equivariance on overlaps requires

$$\begin{align}
u_j=g_{ij}^{-1}u_i g_{ij}.
\end{align}$$

Consequently the gauge group is not generally the space of globally defined maps $M\to G$; that description needs a trivialization, or special circumstances such as an abelian adjoint action.

We use the pullback convention $\omega^u=\Phi^*\omega$ and transform associated matter by the inverse induced automorphism. In a fixed local frame this gives

$$\begin{aligned}
A_i^u&=u_i^{-1}A_i u_i+u_i^{-1}\mathrm du_i,\\
v_i^u&=\rho(u_i)^{-1}v_i,\qquad D_i^u v_i^u=\rho(u_i)^{-1}D_iv_i.
\end{aligned}$$

The same formula for a local form can therefore arise from a passive frame change or from an active action on connections. The two operations are distinguished by what is held fixed. Expanding $u=1+\varepsilon\xi+O(\varepsilon^2)$ gives

$$\begin{align}
\delta_\xi A=\mathrm d\xi+[A,\xi]=D_A\xi, \qquad \delta_\xi v=-\rho_*(\xi)v.
\end{align}$$

The opposite active convention replaces $u$ by $u^{-1}$ and reverses the infinitesimal sign. No sign can be transferred from that convention without also changing the finite transformation law.

## 4. Curvature, Parallel Transport, and Holonomy

Applying $D$ twice to a section gives

$$\begin{align}
D^2v=(\mathrm dA+A\wedge A)v=Fv, \qquad F=\mathrm dA+A\wedge A.
\end{align}$$

On an overlap, the derivative terms cancel to leave

$$\begin{align}
F_j=g_{ij}^{-1}F_i g_{ij}.
\end{align}$$

Thus curvature is a global $\operatorname{ad}P$-valued two-form, although an individual matrix $F_i$ is a local representative. For an adjoint-valued $p$-form $\alpha$, define

$$\begin{align}
D_A\alpha=\mathrm d\alpha+A\wedge\alpha-(-1)^p\alpha\wedge A.
\end{align}$$

The Bianchi identity follows without imposing dynamics:

$$\begin{aligned}
D_AF &=\mathrm d(\mathrm dA+A\wedge A) +A\wedge(\mathrm dA+A\wedge A) -(\mathrm dA+A\wedge A)\wedge A\\
&=\mathrm dA\wedge A-A\wedge\mathrm dA +A\wedge\mathrm dA+A\wedge A\wedge A -\mathrm dA\wedge A-A\wedge A\wedge A=0.
\end{aligned}$$

For $A=A_\mu\mathrm dx^\mu$ this is

$$\begin{align}
F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu+[A_\mu,A_\nu].
\end{align}$$

In the coordinate frame of $TM$, set $(A_\mu)^\rho{}_\sigma=\Gamma^\rho{}_{\mu\sigma}$. Then

$$\begin{align}
(F_{\mu\nu})^\rho{}_\sigma =R^\rho{}_{\sigma\mu\nu} =\partial_\mu\Gamma^\rho{}_{\nu\sigma} -\partial_\nu\Gamma^\rho{}_{\mu\sigma} +\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma} -\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma}.
\end{align}$$

This equality holds for torsionful connections as well. There is no extra torsion-gradient correction between the correctly slotted curvature of $TM$ and its gauge curvature.

A vector transported along $x(t)$ satisfies

$$\begin{align}
\frac{\mathrm dv}{\mathrm dt}=-A_\mu(x(t))\dot x^\mu v, \qquad v(t_1)=U_\gamma v(t_0).
\end{align}$$

The solution is denoted $U_\gamma=\mathcal P\exp(-\int_\gamma A)$, with later factors acting on the left. A path crossing several patches is handled by solving on each segment and inserting $v_j=g_{ij}^{-1}v_i$ at each change of frame. The overlap law makes the result independent of the arbitrary subdivision. Under a gauge transformation,

$$\begin{align}
U_\gamma^u=u(x_1)^{-1}U_\gamma u(x_0).
\end{align}$$

For a closed loop based at $x_0$, holonomy is therefore defined up to conjugation when the base frame changes. Its trace in a chosen representation is gauge invariant.

The sign of infinitesimal holonomy can be seen on a positively oriented coordinate rectangle: move first in $+x$, then $+y$, then $-x$, then $-y$. If $A_x=X$ and $A_y=Y$ are constant matrices,

$$\begin{align}
U_\square=e^{bY}e^{aX}e^{-bY}e^{-aX} =1-ab[X,Y]+O(a^2b+ab^2).
\end{align}$$

Including the variation of $A$ over the rectangle adds the derivative terms, so for a smooth connection

$$\begin{align}
U_\square=1-abF_{xy}(x_0)+O(a^2b+ab^2).
\end{align}$$

The holonomy group comprises all transport maps around loops based at a fixed point. Its identity component is the restricted holonomy group, generated by contractible-loop transport. The Ambrose–Singer theorem identifies its Lie algebra with the span of curvature values transported back from points reachable by horizontal paths [3]. This is a smooth-connection theorem, not a classification of all global holonomy from curvature at a single point.

In particular, flatness need not imply globally trivial holonomy. On the trivial $U(1)$ bundle over a circle, with angular one-form $\mathrm d\phi$, take

$$\begin{align}
A=i\alpha\,\mathrm d\phi,\qquad F=0,\qquad U_{S^1}=e^{-2\pi i\alpha},\qquad \alpha\in\mathbb R.
\end{align}$$

Here $\mathrm d\phi$ is globally defined although a single-valued real angle is not. The gauge transformation $u=e^{ik\phi}$ is single-valued precisely for $k\in\mathbb Z$, and sends $\alpha$ to $\alpha+k$. Distinct $\alpha$ modulo integers give different gauge orbits with the same zero curvature on the same trivial bundle. On a simply connected base, by contrast, a flat smooth connection has path-independent transport and a global horizontal frame: there is no noncontractible loop left to supply this obstruction.

## 5. Geometric Reductions, Torsion, and the Spin Obstruction

Let $H\subset G$ be a closed Lie subgroup. A reduction of $P$ to $H$ is a principal $H$-subbundle $Q\subset P$ whose extension $Q\times_HG$ is $P$. It is equivalent to a section of the coset bundle

$$\begin{align}
P/H\simeq P\times_G(G/H).
\end{align}$$

The correspondence is constructive. A subbundle $Q$ gives the coset $Q_x\subset P_x$ at each $x$. Given such a coset section, take all its representatives in each fibre; their union is $Q$. Locally, if the coset is $h_i(x)H$, changing to the frames $s_i h_i$ makes every transition function $H$-valued [1]. The section can exist without any global section of $Q$.

A nondegenerate metric of signature $(1,n-1)$ on $TM$ is equivalent to an $O(1,n-1)$ reduction of $LM$. One direction takes the subbundle of orthonormal frames. In the other direction, declare

$$\begin{align}
g_x(u v,u w)=\eta(v,w),\qquad \eta=\operatorname{diag}(-1,1,\ldots,1),\qquad u\in Q_x.
\end{align}$$

Replacing $u$ by $u\Lambda$, with $\Lambda^T\eta\Lambda=\eta$, leaves this definition unchanged. This constructs a global metric from local frames and their overlap group, not a global frame from a metric. Space and time orientations further select the proper orthochronous group $SO^+(1,n-1)$.

A reduction is also different from a connection preserving it. For a specified Lorentzian metric $g$, a linear connection preserves the orthonormal reduction exactly when $\nabla g=0$. To see this locally, write $\omega^a{}_b=\omega^a{}_{\mu b}\mathrm dx^\mu$ in an orthonormal frame on an entire patch, and put $\omega_{a\mu b}=\eta_{ac}\omega^c{}_{\mu b}$. Since the frame metric is constant on that patch,

$$\begin{align}
Q_{\mu ab}:=-(\nabla_\mu g)_{ab} =\omega_{b\mu a}+\omega_{a\mu b}.
\end{align}$$

Thus $Q=0$ is precisely the condition that each $\omega_\mu$ lie in $\mathfrak{so}(1,n-1)$. The matrix decomposition

$$\begin{align}
\omega_\mu=W_\mu+S_\mu,\qquad W_\mu=\tfrac12(\omega_\mu-\eta^{-1}\omega_\mu^T\eta),\qquad S_\mu=\tfrac12(\omega_\mu+\eta^{-1}\omega_\mu^T\eta)
\end{align}$$

makes $W_\mu$ metric-compatible and gives $\mathsf Q_\mu:=(Q_{\mu ab})=2\eta S_\mu$. These are local matrix components in the chosen reduction, not a change in the underlying frame bundle.

For parallel vectors $V$ along a curve with tangent $w$, the product rule gives

$$\begin{align}
\frac{\mathrm d}{\mathrm dt}g(V,V) =(\nabla_wg)(V,V)+2g(\nabla_wV,V) =-Q(w,V,V).
\end{align}$$

Consequently preservation of this particular metric means preservation along every path. A holonomy group preserving a bilinear form at one basepoint instead constructs some parallel metric by transport; it does not prove that an independently prescribed field $g(x)$ is that parallel metric.

### The Solder Form and Affine Geometry

The frame bundle has extra structure not supplied by an arbitrary internal gauge bundle. Its tautological, or solder, form is

$$\begin{align}
\theta_u(X)=u^{-1}(\pi_*X),\qquad u:\mathbb R^n\to T_xM.
\end{align}$$

Here $u$, not an independent field, is the frame at which $\theta$ is evaluated. Pulling $\theta$ back along a local frame gives its dual coframe $e^a$. A linear connection then has torsion and curvature forms

$$\begin{align}
T^a=\mathrm de^a+\omega^a{}_b\wedge e^b, \qquad R^a{}_b=\mathrm d\omega^a{}_b+\omega^a{}_c\wedge\omega^c{}_b.
\end{align}$$

For $\nabla_{e_b}e_c=\omega^a{}_{b c}e_a$ and $[e_b,e_c]=C^a{}_{bc}e_a$, direct evaluation gives

$$\begin{align}
T^a{}_{bc}=\omega^a{}_{b c}-\omega^a{}_{c b}-C^a{}_{bc}.
\end{align}$$

In a coordinate frame this reduces to $T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}$. Applying $D$ to the first structure equation gives

$$\begin{align}
DT^a=R^a{}_b\wedge e^b, \qquad DR^a{}_b=0.
\end{align}$$

These are identities for the connection and solder form. They are not additional equations imposed to remove torsion.

The affine group has block matrices $\left(\begin{smallmatrix}\Lambda&v\\0&1\end{smallmatrix}\right)$ and product $(\Lambda,v)(\Lambda',v')=(\Lambda\Lambda',v+\Lambda v')$. On $LM$, one can package the connection and solder form as

$$
\mathcal C=\begin{pmatrix}\omega&\theta\\0&0\end{pmatrix},\qquad
\mathrm d\mathcal C+\mathcal C\wedge\mathcal C
=\begin{pmatrix}R&T\\0&0\end{pmatrix}.
$$

Precisely, $\mathcal C$ is a Cartan connection of affine type on the principal $GL(n,\mathbb R)$ frame bundle. It is not an ordinary principal affine-group connection on that same total space: its translational component is a solder form, and the original fibre action is still $GL(n,\mathbb R)$. The block calculation explains a useful relation between torsion and affine geometry without identifying an internal translation gauge fibre with a spacetime point.

### What Must Be Lifted to Define Spinors

In four-dimensional Lorentzian geometry, assume that $M$ is oriented and time-oriented and that a Lorentzian metric has been chosen. Its proper orthochronous orthonormal-frame bundle $Q$ has group $SO^+(1,3)$. A spin structure is a principal $\operatorname{Spin}^+(1,3)$ bundle $\widetilde Q$ and an equivariant double covering $\widetilde Q\to Q$ compatible with

$$\begin{align}
1\longrightarrow\mathbb Z_2\longrightarrow \operatorname{Spin}^+(1,3)\longrightarrow SO^+(1,3)
\longrightarrow1.
\end{align}$$

On a good cover, lift each transition $g_{ij}$ to $\widetilde g_{ij}$. The lift exists on a contractible overlap, but on a triple overlap it may satisfy

$$\begin{align}
\widetilde g_{ij}\widetilde g_{jk}\widetilde g_{ki} =\varepsilon_{ijk},\qquad \varepsilon_{ijk}\in\{+1,-1\}.
\end{align}$$

Associativity gives a $\mathbb Z_2$-valued two-cocycle. Changing the signs of the lifts changes it by a coboundary. The spin-obstruction theorem identifies its class with $w_2(TM)$. A spin structure exists exactly when this class vanishes; when it does, the isomorphism classes of spin structures form a torsor for $H^1(M;\mathbb Z_2)$ [4]. A torsor has no preferred zero until a spin structure is chosen.

A representation of $\operatorname{Spin}^+(1,3)$ then constructs a spinor bundle by the associated-bundle procedure. A metric-compatible connection on $Q$ lifts uniquely to the chosen $\widetilde Q$, because the covering induces an isomorphism of Lie algebras. Torsion need not vanish. A general $GL(4,\mathbb R)$ connection with nonmetricity does not automatically lift to this spin bundle; projecting to a Lorentz connection or prescribing additional couplings is additional structure. The spin obstruction concerns the bundle, not a condition that a choice of gauge potential can repair.

## 6. A Monopole: the Overlap, the Smooth Potentials, and the Flux

Take the unit two-sphere with orientation $\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi$. Let $U_N$ omit the south pole and $U_S$ omit the north pole. Their overlap is an annulus. For $n\in\mathbb Z$, glue a principal $U(1)$ bundle by

$$\begin{align}
g_{NS}=e^{in\phi},\qquad s_S=s_N g_{NS}.
\end{align}$$

The integrality of $n$ is necessary for single-valuedness when $\phi$ increases by $2\pi$. The associated complex line bundle uses the defining representation, so its section components satisfy $v_S=e^{-in\phi}v_N$.

Define local anti-Hermitian potentials

$$\begin{align}
A_N=-\frac{in}{2}(1-\cos\theta)\,\mathrm d\phi, \qquad A_S=\frac{in}{2}(1+\cos\theta)\,\mathrm d\phi.
\end{align}$$

These are smooth on their respective patches, despite the angular notation. In Cartesian coordinates on the unit sphere,

$$\begin{align}
(1-\cos\theta)\,\mathrm d\phi =\frac{-y\,\mathrm dx+x\,\mathrm dy}{1+z},\qquad (1+\cos\theta)\,\mathrm d\phi =\frac{-y\,\mathrm dx+x\,\mathrm dy}{1-z}.
\end{align}$$

The first expression is regular at the north pole and the second at the south pole. On the overlap,

$$\begin{align}
A_S-A_N=in\,\mathrm d\phi =g_{NS}^{-1}\mathrm dg_{NS}.
\end{align}$$

Thus these are not two incompatible potentials: they are the compatible local descriptions of one connection. Since the group is abelian,

$$\begin{align}
F=\mathrm dA_N=\mathrm dA_S =-\frac{in}{2}\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi.
\end{align}$$

With our anti-Hermitian convention, the first Chern form of a line bundle is

$$\begin{align}
c_1(L;A)=\frac{i}{2\pi}F, \qquad \int_{S^2}c_1(L;A)=n.
\end{align}$$

One can derive the integer directly from the overlap instead of treating quantized flux as a separate postulate. Divide the sphere into northern and southern hemispheres. Their equator boundary orientations are opposite, so Stokes' theorem gives

$$\begin{align}
\int_{S^2}F =\oint_{\rm eq}(A_N-A_S) =-\oint_{\rm eq}g_{NS}^{-1}\mathrm dg_{NS} =-2\pi i n.
\end{align}$$

The winding number of the transition function has become curvature flux. If there were a single smooth global potential $A$, its curvature would be globally exact and the integral would vanish. Hence $n\ne0$ excludes a global frame of this line bundle and a global gauge potential of that kind; it does not obstruct a global smooth connection.

For comparison with electromagnetism, let $q\ne0$ be the electric charge appearing in $D=\mathrm d-iq a$, where $a$ is real. Then $A=-iq a$ and

$$\begin{align}
a_N=\frac{n}{2q}(1-\cos\theta)\,\mathrm d\phi, \qquad a_S=-\frac{n}{2q}(1+\cos\theta)\,\mathrm d\phi, \qquad \frac{q}{2\pi}\int_{S^2}\mathrm da=n.
\end{align}$$

With flux convention $\int\mathrm da=4\pi g_{\rm m}$, this is $2qg_{\rm m}=n$ in units $\hbar=1$. A passive phase $u=e^{i\chi}$ gives $a'=a-\mathrm d\chi/q$ and $v'=e^{-i\chi}v$. Setting $\lambda=-\chi/q$ recovers the common physics notation $a'=a+\mathrm d\lambda$, $v'=e^{iq\lambda}v$.

The two-sphere may be a sphere surrounding a removed magnetic source in a spatial slice of Lorentzian spacetime. The calculation itself is a bundle construction on an oriented surface and does not assert a Maxwell equation, a source model, or a spacetime metric on that surface.

For any smooth paracompact base, isomorphism classes of complex line bundles are classified by $c_1\in H^2(M;\mathbb Z)$ [1,5]. Curvature represents its image in real cohomology, so it cannot detect a torsion Chern class. On $S^2$, where $H^2(S^2;\mathbb Z)=\mathbb Z$ has no torsion, the computed integer does classify the line bundles. This exceptional abelian classification must not be asserted for arbitrary nonabelian structure groups.

## 7. Chern–Weil Normalization and an $SU(2)$ Example

Let $E$ be a complex rank-$r$ bundle with a Hermitian metric and a unitary connection. The trace below is the ordinary trace in this defining rank-$r$ representation. Define its total Chern form by

$$\begin{align}
c(E;A)=\det\left(1+\frac{iF}{2\pi}\right)=1+c_1(E;A)+c_2(E;A)+\cdots.
\end{align}$$

The entries of $F$ are two-forms, so they commute as differential forms in this determinant expansion. For $X=iF/(2\pi)$, use

$$\begin{align}
\det(1+tX) =1+t\operatorname{tr}X +\frac{t^2}{2}\bigl((\operatorname{tr}X)^2-\operatorname{tr}(X^2)\bigr) +O(t^3).
\end{align}$$

Extracting the form degrees gives, including the signs,

$$\begin{aligned}
c_1(E;A)&=\frac{i}{2\pi}\operatorname{tr}F,\\
c_2(E;A)&=\frac1{8\pi^2} \left(\operatorname{tr}(F\wedge F) -\operatorname{tr}F\wedge\operatorname{tr}F\right).
\end{aligned}$$

For an $SU(r)$ connection, $\operatorname{tr}F=0$, so $c_2=\operatorname{tr}(F\wedge F)/(8\pi^2)$. The coefficient is derived from the declared anti-Hermitian convention, not borrowed from a formula using Hermitian gauge fields.

The Bianchi identity and graded cyclicity of the trace imply closure of these forms. Independence of the connection can also be exhibited, rather than inferred from closure. On a fixed bundle write $A_t=A_0+tB$, where $B=A_1-A_0$ is a global adjoint-valued one-form. Then

$$\begin{align}
\dot F_t=D_tB,\qquad \frac{\mathrm d}{\mathrm dt}\operatorname{tr}(F_t\wedge F_t) =2\operatorname{tr}(D_tB\wedge F_t) =2\mathrm d\operatorname{tr}(B\wedge F_t).
\end{align}$$

The last equality uses $D_tF_t=0$ and $\mathrm d\operatorname{tr}(B\wedge F_t)=\operatorname{tr}(D_tB\wedge F_t-B\wedge D_tF_t)$. Therefore

$$\begin{align}
\operatorname{tr}(F_1\wedge F_1)-\operatorname{tr}(F_0\wedge F_0) =2\mathrm d\int_0^1\operatorname{tr}(B\wedge F_t)\,\mathrm dt.
\end{align}$$

Unlike an individual local Chern–Simons expression, this transgression between two connections is a global form: $B$ and $F_t$ both transform homogeneously. For a closed four-manifold the integrals agree. With a boundary, a boundary transgression term remains.

The Chern–Weil theorem supplies the additional global statement: these de Rham classes are the real images of the integral Chern classes of $E$ [5]. The local algebra proves closure and connection independence; it does not by itself prove integrality or recover torsion. The trace representation is essential: changing representation changes the invariant polynomial and can change its integral normalization.

### Four Patches and a Reducible Nonabelian Bundle

Take the compact oriented manifold $X=S^2\times S^2$ with product orientation. It is used here as a topological or Riemannian base, not as a Lorentzian spacetime. Let $\beta_1,\beta_2$ be the pullbacks of the normalized sphere area form

$$\begin{align}
\beta=\frac{1}{4\pi}\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi, \qquad \int_{S^2}\beta=1.
\end{align}$$

In particular, $\beta_1^2=\beta_2^2=0$ and $\int_X\beta_1\wedge\beta_2=1$.

Pull back the monopole line bundles of integers $m$ and $n$ from the two factors and tensor them:

$$\begin{align}
L=\operatorname{pr}_1^*L_m\otimes\operatorname{pr}_2^*L_n.
\end{align}$$

This has four product patches $U_\varepsilon\times U_\delta$, with $\varepsilon,\delta\in\{N,S\}$. Its transition functions and potentials are explicitly

$$\begin{aligned}
g_{(\varepsilon,\delta)(\varepsilon',\delta')} &=g^{(m)}_{\varepsilon\varepsilon'}\, g^{(n)}_{\delta\delta'},\\
A_{L,(\varepsilon,\delta)} &=A^{(m)}_\varepsilon+A^{(n)}_\delta.
\end{aligned}$$

Pullbacks in these formulas are understood. The tensor-product transition functions multiply, while the connection forms add; their overlap law follows directly from the two sphere laws. Its curvature and first Chern form are

$$\begin{align}
F_L=-2\pi i(m\beta_1+n\beta_2),\qquad c_1(L)=m\beta_1+n\beta_2.
\end{align}$$

Here and below the displayed forms also denote their real cohomology classes when multiplied as classes.

Now set $E=L\oplus L^{-1}$. On each overlap use

$$
G_{ij}=\begin{pmatrix}g_{ij}&0\\0&g_{ij}^{-1}\end{pmatrix}\in SU(2),
\qquad
A_{E,i}=\begin{pmatrix}A_{L,i}&0\\0&-A_{L,i}\end{pmatrix}.
$$

The transition matrices are unitary with determinant one, and the connection matrices are traceless and anti-Hermitian. Thus these local data construct an $SU(2)$ bundle and connection, not merely $U(2)$ data. Its connection preserves the indicated line splitting and is therefore reducible to the diagonal $U(1)$ subgroup. Curvature is

$$
F_E=\begin{pmatrix}F_L&0\\0&-F_L\end{pmatrix},\qquad
\operatorname{tr}(F_E\wedge F_E)=2F_L\wedge F_L.
$$

Consequently

$$\begin{aligned}
c_2(E;A_E) &=-(m\beta_1+n\beta_2)\wedge(m\beta_1+n\beta_2)\\
&=-2mn\,\beta_1\wedge\beta_2,\qquad \int_Xc_2(E)=-2mn.
\end{aligned}$$

For $m=n=1$ the second Chern number is $-2$, so this rank-two bundle is not trivial even though its determinant line is trivial and $c_1(E)=0$. The independent identity $c(L\oplus L^{-1})=(1+c_1(L))(1-c_1(L))$ gives the same answer.

To compare with component gauge notation, let $t_a=-i\sigma_a/2$, where $\sigma_a$ are the Pauli matrices. Then

$$\begin{align}
[t_a,t_b]=\epsilon_{abc}t_c,\qquad \operatorname{tr}(t_at_b)=-\frac12\delta_{ab}.
\end{align}$$

Writing $F=t_aF^a$ with real two-forms $F^a$ gives

$$\begin{align}
c_2(E;A)=-\frac1{16\pi^2}\sum_aF^a\wedge F^a.
\end{align}$$

In this example $F^3=4\pi(m\beta_1+n\beta_2)$ and $F^1=F^2=0$, which reproduces $-2mn$. A frequently used physics convention instead defines $k=-\int\operatorname{tr}(F\wedge F)/(8\pi^2)$; with the conventions here, $k=-\int c_2$. Naming the integer does not remove this sign distinction. No self-duality equation or Yang–Mills solution has been asserted for the constructed connection.

Chern–Weil theory also applies to other invariant polynomials. For example, for a real vector bundle with a real linear connection and curvature $R$, $-\operatorname{tr}(R\wedge R)/(8\pi^2)$ represents its real first Pontryagin class. It is legitimate for a general linear connection, whether or not it preserves a chosen metric. By contrast, the Pfaffian construction of an Euler form uses a metric-compatible oriented orthogonal connection; simply antisymmetrizing the curvature of an arbitrary nonmetric connection does not supply the required Chern–Weil argument [5].

## 8. Bundle Class, Connection, Gauge Orbit, and Dynamics

There are four different questions. First choose a bundle $P$ and its topological isomorphism class. Then choose a connection in $\mathcal A(P)$. Then, if gauge transformations are redundancies of the problem, consider its orbit in $\mathcal A(P)/\mathcal G(P)$. Finally specify an action, matter representations, boundary data, and admissible variations to obtain dynamics. The quotient need not be a smooth manifold. After accounting for any subgroup acting trivially on every connection, changes in stabilizer type can produce singular orbit strata.

The classification theorem for numerable principal bundles over a paracompact base of CW homotopy type gives

$$\begin{align}
\{\text{principal }G\text{-bundles over }M\}/\cong\;\simeq[M,BG],
\end{align}$$

where the right side consists of homotopy classes of maps to the classifying space [1]. Smooth manifolds satisfy the base hypotheses; for Lie groups the smooth and continuous classification agree. This is a cited global theorem, not a conclusion from the finite matrix examples above. For $U(1)$, $BU(1)\simeq\mathbb{CP}^{\infty}$ is a $K(\mathbb Z,2)$ and gives the line-bundle classification already used. There is no analogous universal replacement of $[M,BG]$ by one ordinary cohomology group for all nonabelian $G$ and all bases. Characteristic classes are useful invariants, not automatically a complete classification.

The flat circle example separates connection orbits from both curvature and bundle topology. The monopole separates a global connection from a global potential. The $SU(2)$ example separates a trivial determinant from a trivial rank-two bundle. These are different failures of information, and none can be repaired by a dimension count.

As one dynamical choice, take a four-dimensional oriented Lorentzian metric of signature $(-,+,+,+)$ and a compact gauge algebra with $\operatorname{tr}(t_at_b)=-\delta_{ab}/2$. The Yang–Mills action in the convention of this chapter is

$$\begin{align}
I_{\rm YM}[A]=\frac1{g_{\rm YM}^2}\int_M\operatorname{tr}(F\wedge *F) =-\frac1{4g_{\rm YM}^2}\int_M F^a{}_{\mu\nu}F^{a\mu\nu}\,\mathrm{vol}_g.
\end{align}$$

The Hodge star uses that Lorentzian metric and its orientation. The minus component sign comes from the anti-Hermitian trace. For variations whose boundary term vanishes,

$$\begin{align}
\delta I_{\rm YM} =\frac2{g_{\rm YM}^2}\int_M \left[\mathrm d\operatorname{tr}(\delta A\wedge *F) +\operatorname{tr}(\delta A\wedge D_A*F)\right],
\end{align}$$

so the source-free equation is $D_A*F=0$. The identity $D_AF=0$ held before this action was chosen; it is not that equation of motion. Matter supplies currents only after its action and representation have been specified. On manifolds with boundary, deciding which transformations are gauge redundancies also requires boundary conditions and charge analysis, not just a pointwise group action.

An internal gauge bundle and the tangent-frame bundle can be combined in a field theory, but their relation is additional model data. The frame bundle alone does not determine the Standard Model group, its global quotient, the matter representations, or the interaction action. A spin structure supplies a carrier for spinor fields; it does not select their internal charges. Bundle geometry makes the local-to-global requirements precise while leaving those physical choices where they belong.

## References

[1] S. A. Mitchell, [Notes on Principal Bundles and Classifying Spaces](<https://sites.math.washington.edu/~mitchell/Quillen/prin.pdf>), June 2011. Used for principal and associated bundle constructions, sections and reductions, and the classifying-space theorem; the applicable base and subgroup hypotheses are stated in the text.

[2] S. Kobayashi and K. Nomizu, Foundations of Differential Geometry, Vol. I, Interscience, 1963; Vol. II, Wiley, 1969. Standard input for smooth principal connections, induced connections and parallel transport (Vol. I), and the Chern–Weil theory of characteristic forms (Vol. II).

[3] W. Ambrose and I. M. Singer, “A theorem on holonomy,” Transactions of the American Mathematical Society 75 (1953), 428–443. Used only for the curvature description of the holonomy Lie algebra, not for a classification of global bundles or disconnected holonomy.

[4] H. B. Lawson, Jr. and M.-L. Michelsohn, Spin Geometry, Princeton University Press, 1989, Chapter II, spin structures. Used for the $w_2$ obstruction and the $H^1(M;\mathbb Z_2)$ torsor statement; the Lorentzian statement is for the oriented, time-oriented orthonormal reduction.

[5] J. W. Milnor and J. D. Stasheff, Characteristic Classes, Princeton University Press, 1974, together with the connection formulation of Chern–Weil theory in [2]. Used for integral characteristic classes, the Whitney product rule, and their real Chern–Weil representatives, not as a proof that curvature detects torsion classes.
