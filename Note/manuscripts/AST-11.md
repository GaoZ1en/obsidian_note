# Symplectic Geometry and Phase Space

**AST-11 — DRAFT study chapter; bounded review recorded**

## Abstract

A symplectic form pairs tangent directions without assigning them lengths or causal types. Its nondegeneracy converts a differential into a Hamiltonian vector field; its closedness makes the resulting bracket satisfy Jacobi and makes Hamiltonian evolution preserve phase volume. This chapter constructs the canonical form on a cotangent bundle, proves the local Darboux theorem by an explicit Moser deformation, and follows the sign conventions through oscillator action-angle coordinates and constrained motion on a sphere. Presymplectic quotients and second-class restrictions are distinguished by their kernels and regularity hypotheses. A free scalar example then connects the finite-dimensional convention to the conserved solution-space form used in [EC-03](<EC-03.md>), with the spacetime current and surface orientations kept explicit. Finally, a two-patch sphere construction illustrates the integral-class condition for prequantization and the additional choices still needed for a quantum theory.

## 1. A Closed Nondegenerate Two-Form

Let $P$ be a smooth Hausdorff second-countable manifold. A symplectic form is a smooth two-form $\omega$ satisfying

$$\begin{align}
d\omega=0,\qquad \omega_p(v,w)=0\text{ for every }w\in T_pP\ \Longrightarrow\ v=0. \tag{1.1}
\end{align}$$

The second condition is nondegeneracy. Unlike a metric, $\omega$ is alternating, so $\omega(v,v)=0$ for every vector. Nondegeneracy concerns pairing with all other vectors, not pairing a vector with itself. We use the exterior derivative from [AST-02](<AST-02.md>); no metric or connection is needed to define either condition in (1.1).

The map $v\mapsto\iota_v\omega$, where $(\iota_v\omega)(w)=\omega(v,w)$, is an isomorphism $TP\to T^*P$. An invertible antisymmetric matrix has even size: if its size is $m$, then $\det W=\det(-W)=(-1)^m\det W$. Write $\dim P=2n$.

There is also a constructive linear normal form. Choose $v_1\ne0$ and then $w_1$ with $\omega(v_1,w_1)=1$. The plane they span is nondegenerate. Its symplectic orthogonal complement consists of the vectors pairing to zero with both; it has dimension $2n-2$, is complementary to that plane, and is itself nondegenerate. Repeating gives a basis in which

$$\begin{align}
\omega=\sum_{i=1}^n dq^i\wedge dp_i. \tag{1.2}
\end{align}$$

This is a statement about a single tangent space. Section 4 constructs actual local coordinates with this form on a neighborhood, not merely at one point.

In four dimensions write, in a local coframe $dx^1,\ldots,dx^4$,

$$\begin{align}
\omega=a\,dx^1\wedge dx^2+b\,dx^1\wedge dx^3+c\,dx^1\wedge dx^4 +d\,dx^2\wedge dx^3+e\,dx^2\wedge dx^4+f\,dx^3\wedge dx^4.
\end{align}$$

Then

$$\begin{align}
\frac12\omega\wedge\omega=(af-be+cd)\,dx^1\wedge\cdots\wedge dx^4, \qquad \det(\omega_{AB})=(af-be+cd)^2. \tag{1.3}
\end{align}$$

The coefficient $af-be+cd$ is the Pfaffian in this coframe. Its nonvanishing is the algebraic test for nondegeneracy. Closedness is a differential condition, $\partial_A\omega_{BC}+\partial_B\omega_{CA}+\partial_C\omega_{AB}=0$; it cannot be inferred from this determinant test.

A closed form that is degenerate can still be useful. When its rank is constant we will call it presymplectic and study its smooth kernel distribution in Section 6. For example, $d(N\,dt)=dN\wedge dt$ is closed and has rank at most two, including rank zero where the two factors fail to be independent. It is never a symplectic form on a four-dimensional region. Being an exterior derivative guarantees closedness, not nondegeneracy.

### 1.1 The Phase Space Is Not Automatically Spacetime

A symplectic form is independent of a Lorentzian metric. A configuration manifold $Q$ of dimension $n$ has a cotangent phase space of dimension $2n$; if $Q$ itself is a four-dimensional spacetime, $T^*Q$ has dimension eight. The space of solutions of a field equation is a third, usually infinite-dimensional, object. None of these spaces should be identified just because the same word geometry is used for them.

There are simple compact counterexamples to a supposed equivalence between Lorentzian and symplectic structures. On $S^1\times S^3$, $H^2_{\mathrm{dR}}=0$, so every closed two-form is exact. A closed connected symplectic manifold cannot have an exact symplectic form: with $\omega=-d\theta$,

$$\begin{align}
\int_P\omega^n=-\int_Pd(\theta\wedge\omega^{n-1})=0, \tag{1.4}
\end{align}$$

whereas $\omega^n$ is a positive volume form in the symplectic orientation and has strictly positive integral. Thus $S^1\times S^3$ is not symplectic, although it admits a product Lorentzian metric with the circle direction timelike. That metric has closed timelike curves; no causal suitability is being claimed.

Conversely, if $\alpha,\beta$ are positive area forms on the two sphere factors, then $\omega=\pi_1^*\alpha+\pi_2^*\beta$ is symplectic on $S^2\times S^2$: its square is $2\pi_1^*\alpha\wedge\pi_2^*\beta$. But its Euler characteristic is four, so it admits no Lorentzian metric, by the closed-manifold obstruction explained in [AST-02](<AST-02.md>). These examples separate the structures before any equations of motion are imposed.

## 2. Cotangent Bundles Supply a Canonical Construction

Let $\pi:T^*Q\to Q$ be the cotangent projection. A point of $T^*Q$ is a covector $p\in T_q^*Q$. Define a one-form on the total space by the actual evaluation map

$$\begin{align}
(\theta_{\mathrm{can}})_{(q,p)}(V)=p(d\pi(V)), \qquad V\in T_{(q,p)}T^*Q. \tag{2.1}
\end{align}$$

This definition is intrinsic. In coordinates $q^i$ on $Q$, with fiber components $p_i$ in the basis $dq^i$,

$$\begin{align}
\theta_{\mathrm{can}}=p_i\,dq^i,\qquad \omega_{\mathrm{can}}=-d\theta_{\mathrm{can}} =dq^i\wedge dp_i. \tag{2.2}
\end{align}$$

Under $q\mapsto Q(q)$, the covector components change to $P_a=p_i\,\partial q^i/\partial Q^a$, so $P_a dQ^a=p_i dq^i$. Thus the local one-forms agree on overlaps. Equation (2.2) is closed by $d^2=0$ and nondegenerate because its matrix in the order $(q,p)$ is

$$
W=\begin{pmatrix}0&I_n\\-I_n&0\end{pmatrix}.
 \tag{2.3}
$$

This construction works for every smooth configuration manifold, without an orientation, a metric, or a connection on $Q$. Its exactness does not conflict with (1.4): for $n>0$ the cotangent bundle is not compact.

A diffeomorphism $f:Q\to Q$ lifts canonically to

$$\begin{align}
(q,p)\longmapsto\bigl(f(q),(df_q^{-1})^*p\bigr).
 \tag{2.4}
\end{align}$$

Evaluation in (2.1) shows that this lift preserves $\theta_{\mathrm{can}}$ and hence $\omega_{\mathrm{can}}$. More general symplectomorphisms need preserve only $\omega$, not its chosen primitive. For example,

$$\begin{align}
Q^i=q^i,\qquad P_i=p_i+\partial_iS(q) \tag{2.5}
\end{align}$$

changes $P_i dQ^i$ to $\theta_{\mathrm{can}}+dS$ and preserves $-d\theta_{\mathrm{can}}$. With two coordinates, $S=\lambda q^1q^2$ gives a concrete nontrivial momentum shear. Such a canonical transformation need not preserve a Hamiltonian or a separately supplied metric.

## 3. Hamilton Fields, Brackets and Conserved Volume

All Hamiltonians and observables in the finite-dimensional discussion are smooth real functions. This chapter fixes the signs by

$$\begin{align}
\iota_{X_H}\omega=dH,\qquad \{F,G\}=\omega(X_F,X_G)=X_G(F). \tag{3.1}
\end{align}$$

For canonical coordinates (2.2), direct contraction gives

$$\begin{align}
X_H=\frac{\partial H}{\partial p_i}\partial_{q^i} -\frac{\partial H}{\partial q^i}\partial_{p_i},\qquad \{F,G\}=\partial_{q^i}F\,\partial_{p_i}G -\partial_{p_i}F\,\partial_{q^i}G. \tag{3.2}
\end{align}$$

Thus $\dot q^i=H_{p_i}$, $\dot p_i=-H_{q^i}$, and $\{q^i,p_j\}=\delta^i_j$. A time-dependent observable evolves by $dF/dt=\partial_tF+\{F,H\}$. For autonomous H, $dH/dt=0$.

### 3.1 Why the Raw Inverse Matrix Needs a Minus Sign

Write $\omega=\tfrac12W_{AB}dz^A\wedge dz^B$ in any coordinates. Its contraction has components

$$\begin{align}
(\iota_X\omega)_B=X^A W_{AB},\qquad W^{\mathsf T}X=dH.
\end{align}$$

Consequently the Poisson matrix, defined by $\{F,G\}=\mathsf P^{AB}\partial_AF\partial_BG$, is

$$\begin{align}
X_H^A=\mathsf P^{AB}\partial_BH,\qquad \mathsf P=-W^{-1}. \tag{3.3}
\end{align}$$

For the canonical matrix, $W^{-1}=-W$, so $\mathsf P=W$. Identifying the raw inverse of $W_{AB}$ with this Poisson matrix would reverse Hamilton’s equations. The minus sign records the order of the two-form’s arguments in interior contraction. It is unrelated to raising both indices with a metric, which is a different operation altogether.

The bracket is antisymmetric and is a derivation in each entry. Closedness supplies Jacobi. Cartan’s formula gives

$$\begin{align}
\mathcal L_{X_F}\omega=d(\iota_{X_F}\omega)+\iota_{X_F}d\omega=0. \tag{3.4}
\end{align}$$

Using the identity $\iota_{[X,Y]}=\mathcal L_X\iota_Y-\iota_Y\mathcal L_X$ on $\omega$,

$$\begin{align}
\iota_{[X_F,X_G]}\omega=d(X_FG)=-d\{F,G\},\qquad [X_F,X_G]=-X_{\{F,G\}}. \tag{3.5}
\end{align}$$

In particular the map from functions to Hamilton fields is an antihomomorphism for these conventions. Evaluating $\mathcal L_{X_F}\omega=0$ on $X_G,X_H$ now gives

$$\begin{align}
-\{F,\{G,H\}\}=\{H,\{F,G\}\}+\{G,\{H,F\}\},
\end{align}$$

which is the Jacobi identity. Both the Lie-bracket sign and Jacobi follow from the chosen contraction, rather than from an independently imposed Poisson convention.

### 3.2 Liouville Preservation Is Not Completeness

The symplectic volume is

$$\begin{align}
\mu_\omega=\frac{\omega^n}{n!}. \tag{3.6}
\end{align}$$

Equation (3.4) implies $\mathcal L_{X_H}\mu_\omega=0$, so a Hamiltonian flow preserves phase volume on its actual domain of definition. In canonical coordinates this is also the cancellation $\partial_{q^i}H_{p_i}-\partial_{p_i}H_{q^i}=0$. Time-dependent Hamiltonians likewise generate symplectic evolution maps while their solutions exist.

A smooth Hamiltonian on a noncompact phase space can have finite-time escape. For one canonical pair, take $H=q^2p$. For initial $q_0>0$,

$$\begin{align}
q(t)=\frac{q_0}{1-tq_0},\qquad p(t)=p_0(1-tq_0)^2,\qquad -\infty<t<q_0^{-1}. \tag{3.7}
\end{align}$$

Differentiation gives $\dot q=q^2$, $\dot p=-2qp$, and the flow Jacobian has determinant one. Yet the solution escapes to infinity as $t\uparrow q_0^{-1}$. Volume preservation is therefore not a global existence theorem. On a compact phase manifold without boundary a smooth autonomous Hamilton field is complete; on manifolds with boundary, tangency and boundary behavior also matter.

### 3.3 A Metric Hamiltonian Is an Additional Choice

Given a nondegenerate metric on $Q$, one may choose

$$\begin{align}
H(q,p)=\frac12g^{ij}(q)p_ip_j. \tag{3.8}
\end{align}$$

Hamilton’s equations give $\dot q^i=g^{ij}p_j$ and $\dot p_i=-\tfrac12\partial_i g^{jk}p_jp_k$. Set $p_i=g_{ij}\dot q^j$. Differentiating it and using $\partial_i g^{jk}=-g^{ja}g^{kb}\partial_i g_{ab}$ yields

$$\begin{align}
\ddot q^i+\bar\Gamma^i{}_{jk}\dot q^j\dot q^k=0, \tag{3.9}
\end{align}$$

the affinely parametrized Levi-Civita geodesic equation. The same derivation works for a Lorentzian metric; its metric Hamiltonian need not be positive. If $Q$ is spacetime, this is motion on its eight-dimensional cotangent bundle, not a symplectic structure on spacetime itself. For an independent affine connection, equality of the affine equations for all initial velocities requires its symmetric two-input distortion to vanish; projectively related connections can still share unparametrized paths, as explained in [AST-04](<AST-04.md>) and [AST-05](<AST-05.md>). A mass-shell constraint and reparametrization reduction, if wanted, are additional steps with their own global hypotheses. Neither connection nor geodesic dynamics was needed to define (2.2).

## 4. Darboux Coordinates from a Moser Deformation

The Darboux theorem says that every symplectic point has a neighborhood with coordinates satisfying (1.2). Its proof uses the closedness condition in a real way.

Choose linear coordinates near a point identified with zero so that $\omega(0)=\omega_0$, where $\omega_0$ is the constant canonical form. On a small star-shaped ball, the difference $\beta=\omega-\omega_0$ is closed and vanishes at zero. The radial homotopy operator gives a one-form

$$\begin{align}
\alpha_x(v)=\int_0^1 t\,\beta_{tx}(x,v)\,dt, \qquad d\alpha=\beta. \tag{4.1}
\end{align}$$

The factor t is the pullback factor for the remaining spatial argument of a two-form. The identity follows by applying the fundamental theorem of calculus to the contraction map $(t,x)\mapsto tx$, as in the Poincare lemma. Since $\beta(0)=0$, $\alpha=O(|x|^2)$.

Consider the interpolation

$$\begin{align}
\omega_s=\omega_0+s\beta,\qquad 0\le s\le1.
\end{align}$$

After shrinking the ball, it is nondegenerate for every s: in coordinates make $\|W_0^{-1}(W-W_0)\|<1$, so every matrix $I+sW_0^{-1}(W-W_0)$ is invertible. Define the time-dependent vector field by

$$\begin{align}
\iota_{Y_s}\omega_s=-\alpha. \tag{4.2}
\end{align}$$

Nondegeneracy determines it uniquely and smoothly; $Y_s=O(|x|^2)$. Its flow $\Psi_s$ exists for the whole parameter interval on a sufficiently small common neighborhood of zero. For example, a uniform bound $|Y_s(x)|\le C|x|$ and Gronwall’s inequality keep sufficiently small initial points inside the chosen ball for $0\le s\le1$.

Differentiate the pulled-back form:

$$
\begin{aligned}
 \frac d{ds}\Psi_s^*\omega_s
 &=\Psi_s^*(\beta+\mathcal L_{Y_s}\omega_s)\\
 &=\Psi_s^*(d\alpha+d\iota_{Y_s}\omega_s)=0.
 \end{aligned}
 \tag{4.3}
$$

Thus $\Psi_1^*\omega=\omega_0$, and the inverse of $\Psi_1$ gives Darboux coordinates on its image. The argument removes the full local variation of $\omega$, not just a first-order Taylor coefficient. It does not flatten a separate metric or simplify an arbitrary Hamiltonian.

### 4.1 An Explicit Noncanonical Example

On a region with $1+\epsilon q>0$, let

$$\begin{align}
\omega=(1+\epsilon q)dq\wedge dp,\qquad Q=q+\frac\epsilon2q^2,\qquad P=p. \tag{4.4}
\end{align}$$

Then $dQ\wedge dP=\omega$, and $dQ/dq=1+\epsilon q$ makes this an invertible coordinate change on the chosen local branch. For the same interpolation, choose a convenient primitive rather than the radial representative in (4.1):

$$\begin{align}
\omega_s=(1+s\epsilon q)dq\wedge dp,\quad \alpha=\frac\epsilon2q^2dp,\quad Y_s=-\frac{\epsilon q^2}{2(1+s\epsilon q)}\partial_q. \tag{4.5}
\end{align}$$

Along a flow line $q_s$, the quantity $q_s+s\epsilon q_s^2/2$ is constant, and p is constant. This directly verifies (4.3). A second canonical pair can be added without change to obtain a four-dimensional example.

For a global Moser statement on a compact manifold without boundary, assume a smooth family of symplectic forms and smooth one-forms with $\partial_s\omega_s=d\alpha_s$. The same equation $\iota_{Y_s}\omega_s=-\alpha_s$ now has a flow for all $s\in[0,1]$ by compactness, giving $\Psi_s^*\omega_s=\omega_0$. With boundary, a sufficient condition is $\alpha_s=0$ near the boundary, so the flow fixes it. On a noncompact manifold, uniform compact support of the generating fields is one sufficient condition; otherwise the flow needs its own existence argument. The statement requires a path of nondegenerate forms, not an arbitrary convex interpolation of two globally given forms.

## 5. Canonical Transformations and Action-Angle Coordinates

For a harmonic oscillator with mass $m>0$ and frequency $\nu>0$,

$$\begin{align}
H=\frac{p^2}{2m}+\frac12m\nu^2q^2.
\end{align}$$

Away from the origin introduce $I>0$ and an angle $\varphi\in\mathbb R/(2\pi\mathbb Z)$ by

$$\begin{align}
q=\sqrt{\frac{2I}{m\nu}}\sin\varphi, \qquad p=\sqrt{2m\nu I}\cos\varphi. \tag{5.1}
\end{align}$$

Direct differentiation gives

$$\begin{align}
dq\wedge dp=d\varphi\wedge dI,\qquad H=\nu I, \qquad\dot\varphi=\nu,\quad\dot I=0. \tag{5.2}
\end{align}$$

The primitive also transforms explicitly:

$$\begin{align}
p\,dq=I\,d\varphi+d(I\sin\varphi\cos\varphi). \tag{5.3}
\end{align}$$

Thus the action integral, taken once in the Hamiltonian-flow direction, is $\oint p\,dq=2\pi I$. This orbit direction is opposite to the boundary orientation induced by $dq\wedge dp$ on its enclosed disk, consistent with $\omega=-d\theta_{\mathrm{can}}$. The angle is not a globally single-valued real function on the punctured plane; only its circle value and $d\varphi$, the one-form obtained by gluing local angle differentials, are global there. At $I=0$ the angle ceases to be defined, a singular fiber rather than a failure of symplectic geometry.

For n independent oscillators this gives $\omega=\sum_i d\varphi^i\wedge dI_i$ and $H=\sum_i\nu_i I_i$. More generally, the Liouville–Arnold theorem assumes n independent functions in involution near a compact connected regular common level. That level is a Lagrangian torus, and a neighborhood admits action-angle coordinates with this form of $\omega$ and those commuting Hamiltonians depending only on I [1,2]. Compactness supplies completeness of the commuting fields on the level. The theorem does not give a single global action-angle chart across singular levels or guarantee global actions in a torus fibration with monodromy.

A submanifold L is Lagrangian if it has dimension n and $\omega|_L=0$. The oscillator tori $I_i=\text{constant}$ are examples. Another is the graph $p=dS$ in $T^*Q$: its pulled-back canonical form is $-d(dS)=0$. These constructions explain why generating functions and action integrals naturally occur in canonical mechanics.

## 6. Presymplectic Kernels and Regular Quotient Reduction

Let $\eta$ be a closed constant-rank two-form. Its kernel consists of the vectors V with $\iota_V\eta=0$. For kernel fields V,W, Cartan’s formula gives

$$\begin{align}
\iota_{[V,W]}\eta =\mathcal L_V\iota_W\eta-\iota_W\mathcal L_V\eta=0. \tag{6.1}
\end{align}$$

The kernel is therefore integrable. Its leaves are directions invisible to the form. A leaf space need not be a Hausdorff manifold. If it is a smooth manifold B and $\rho:C\to B$ is a surjective submersion whose fibers are precisely the leaves, then the form descends when it is invariant along those fibers. Here invariance follows from closedness and the kernel condition. The unique descended form obeys $\rho^*\omega_B=\eta$ and is nondegenerate because the entire kernel has been quotiented out.

### 6.1 A First-Class Constraint with an Actual Quotient

On $T^*\mathbb R^2$ use $(q^1,q^2,p_1,p_2)$ and impose $p_2=0$. The constraint surface C has coordinates $(q^1,p_1,q^2)$, and

$$\begin{align}
\iota^*\omega=dq^1\wedge dp_1, \qquad \ker(\iota^*\omega)=\operatorname{span}\{\partial_{q^2}\}. \tag{6.2}
\end{align}$$

The constraint’s Hamilton field is $X_{p_2}=\partial_{q^2}$. Its translations form a free proper action of $\mathbb R$, and the actual quotient map is

$$\begin{align}
\rho(q^1,p_1,q^2)=(q^1,p_1).
\end{align}$$

The quotient is the canonical plane. The gauge choice $q^2=0$ is a global slice in this example, not an assumption that every gauge system has a global slice. A Hamiltonian independent of $q^2$ preserves the constraint and induces the corresponding reduced Hamiltonian on the plane.

The finite-dimensional regular symplectic-reduction theorem generalizes this construction. Suppose a Lie group G has a symplectic action with an equivariant moment map $J:P\to\mathfrak g^*$ satisfying

$$\begin{align}
\iota_{\xi_P}\omega=d\langle J,\xi\rangle, \tag{6.3}
\end{align}$$

where $\xi_P$ is the actual infinitesimal action field. If zero is a regular value and G acts freely and properly on $C=J^{-1}(0)$, then $C/G$ is smooth and symplectic, with dimension $\dim P-2\dim G$ [3]. Indeed, $T C=\ker dJ$, and the moment-map equation makes the orbit directions exactly the kernel of $\iota^*\omega$; invariance and the smooth quotient then supply the descended form. Equivariance makes the zero level invariant. Singular levels, nonfree actions, nonproper actions, and boundary conditions require different conclusions and must not be silently included.

## 7. Second-Class Constraints: a Particle on a Sphere

Not every constraint is removed by a quotient. On $T^*\mathbb R^3$ with canonical $(q_i,p_i)$, choose $R>0$ and impose

$$\begin{align}
\chi_1=\frac12(q\cdot q-R^2)=0,\qquad \chi_2=q\cdot p=0. \tag{7.1}
\end{align}$$

The first puts q on a sphere; the second makes p tangent to it using the Euclidean identification of vectors and covectors in this example. Their differentials are independent for $q\ne0$, and their bracket matrix is

$$
C_{ab}=\{\chi_a,\chi_b\}
 =\begin{pmatrix}0&q^2\\-q^2&0\end{pmatrix},\qquad
 C^{-1}=\begin{pmatrix}0&-1/q^2\\1/q^2&0\end{pmatrix}.
 \tag{7.2}
$$

It is invertible near the constraint surface, where $q^2=R^2$. Such constraints are second class. The pullback of $\omega$ to their four-dimensional surface is nondegenerate. To see why, a vector symplectically orthogonal to that surface must be a linear combination of the $X_{\chi_a}$. If it is also tangent to the surface, applying $d\chi_b$ gives an invertible C-matrix equation, so that vector is zero. No kernel quotient is needed.

The induced bracket can be evaluated using arbitrary local extensions off the surface by the Dirac formula

$$\begin{align}
\{F,G\}_D=\{F,G\} -\{F,\chi_a\}(C^{-1})^{ab}\{\chi_b,G\}. \tag{7.3}
\end{align}$$

Here $C^{-1}$ is the ordinary matrix inverse, not metric index raising. The correction makes $\{\chi_a,F\}_D=0$. Extensions differing by constraint functions therefore induce the same bracket on the surface. Direct substitution gives

$$
\begin{aligned}
 \{q_i,q_j\}_D&=0,\\
 \{q_i,p_j\}_D&=\delta_{ij}-\frac{q_iq_j}{q^2},\\
 \{p_i,p_j\}_D&=\frac{q_jp_i-q_ip_j}{q^2}.
 \end{aligned}
 \tag{7.4}
$$

On the surface replace $q^2$ by $R^2$. These brackets are not the ambient canonical brackets, but they are the inverse of the nondegenerate restricted symplectic structure and satisfy Jacobi. On the larger region $q^2\ne0$, the Dirac bivector has rank four, with the two constraints as Casimirs; restriction to the chosen leaf recovers the symplectic phase space.

### 7.1 Identifying the Cotangent Sphere and Its Dynamics

At $q\in S_R^2$, each cotangent vector has a unique Euclidean representative p orthogonal to q. Evaluation of that representative on a tangent displacement is $p\cdot dq$. Thus the constrained surface is $T^*S_R^2$, and the restricted $\theta_{\mathrm{can}}$ is its own tautological one-form, not a new ad hoc structure.

On a polar chart, $0<\theta<\pi$,

$$\begin{align}
q=R(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos\theta),\qquad p=\frac{p_\theta}{R^2}\partial_\theta q +\frac{p_\phi}{R^2\sin^2\theta}\partial_\phi q. \tag{7.5}
\end{align}$$

It satisfies $q\cdot p=0$ and

$$\begin{align}
p\cdot dq=p_\theta d\theta+p_\phi d\phi, \qquad\omega=d\theta\wedge dp_\theta+d\phi\wedge dp_\phi. \tag{7.6}
\end{align}$$

For the chosen kinetic energy $H=p^2/(2m)$, with $m>0$,

$$\begin{align}
H=\frac1{2mR^2}\left(p_\theta^2+\frac{p_\phi^2}{\sin^2\theta}\right). \tag{7.7}
\end{align}$$

Equivalently, the Dirac equations on the surface are

$$\begin{align}
\dot q_i=\frac{p_i}{m},\qquad \dot p_i=-\frac{p^2}{mR^2}q_i. \tag{7.8}
\end{align}$$

They preserve $q^2$, $q\cdot p$, and $p^2$. Hence $\ddot q=-p^2q/(m^2R^2)$: nonstationary trajectories are great circles at constant speed. The poles absent from the polar chart are coordinate singularities, not failures of the constrained phase space. This example supplies both the constrained bracket and its physical use; a bare subtraction of numbers of components would not determine either.

## 8. The Free Scalar Solution Space and Its Surface Form

We now introduce a fixed oriented Lorentzian spacetime with signature $(-,+,+,+)$. This metric is used for a field equation; it was not needed in the finite-dimensional symplectic constructions. Let

$$\begin{align}
L=-\frac12\bigl(d\phi\wedge*d\phi+m^2\phi^2\varepsilon\bigr),\qquad P\phi=(\bar\Box-m^2)\phi=0. \tag{8.1}
\end{align}$$

Only $\phi$ is varied: the metric, orientation, and mass are fixed. Integrating its first variation by parts gives

$$\begin{align}
\delta L=(P\phi)\delta\phi\,\varepsilon+d\theta(\delta\phi), \qquad\theta(\delta\phi)=-\delta\phi\,*d\phi. \tag{8.2}
\end{align}$$

Here $\theta$ is a spacetime three-form and a one-form in field variations. If $\varepsilon$ is the spacetime volume form, $*d\phi=\iota_{\bar\nabla\phi}\varepsilon$, so its vector representative is $\theta^\mu=-\delta\phi\bar\nabla^\mu\phi$.

### 8.1 Declare the Field-Space Ordering

For a spacelike hypersurface with future unit normal $n^2=-1$, orient its volume by $d\Sigma=\iota_n\varepsilon|_\Sigma$. Set

$$\begin{align}
\Theta_\Sigma(\delta\phi)=\int_\Sigma\theta(\delta\phi),\qquad \Omega_\Sigma=-\delta\Theta_\Sigma. \tag{8.3}
\end{align}$$

For commuting variations $\delta_1,\delta_2$, this means

$$\begin{align}
\omega_{\mathrm{cur}}(\delta_1,\delta_2) =\delta_2\theta(\delta_1)-\delta_1\theta(\delta_2),\qquad \Omega_\Sigma(\delta_1,\delta_2)=\int_\Sigma\omega_{\mathrm{cur}}. \tag{8.4}
\end{align}$$

The ordering is the field-space analogue of $\omega=-d\theta_{\mathrm{can}}$. A convention using $+\delta\Theta$ and the opposite current order gives the negative form; it is a different consistent sign dictionary, not an incorrect construction.

Let $f=\delta_1\phi$ and $g=\delta_2\phi$. At fixed metric, equation (8.2) gives

$$\begin{align}
\omega_{\mathrm{cur}}(f,g)=g\,*df-f\,*dg =-\iota_{j(f,g)}\varepsilon, \qquad j^\mu(f,g)=f\bar\nabla^\mu g-g\bar\nabla^\mu f. \tag{8.5}
\end{align}$$

The sign in the surface integral deserves an explicit check. For any vector v, its tangential part does not contribute to the pulled-back three-form $\iota_v\varepsilon$, while its normal part is $-g(n,v)n$. Therefore

$$\begin{align}
\iota_\Sigma^*(\iota_v\varepsilon)=-n_\mu v^\mu d\Sigma, \qquad \Omega_\Sigma(f,g)=\int_\Sigma n_\mu j^\mu(f,g)d\Sigma. \tag{8.6}
\end{align}$$

The pulled-back three-form and the vector-current flux are not interchangeable without this minus sign. Equation (8.5) contains another minus, so the final form in (8.6) is positive in precisely the convention of [EC-03, Section 2](<EC-03.md#2-scalar-solution-space-and-its-conserved-symplectic-form>).

### 8.2 Canonical Cauchy Data, Conservation and Nondegeneracy

In ADM coordinates,

$$\begin{align}
ds^2=-N^2dt^2+h_{ij}(dx^i+N^i dt)(dx^j+N^jdt),\qquad n=\frac1N(\partial_t-N^i\partial_i),\qquad N>0.
\end{align}$$

The scalar momentum is a coordinate density,

$$\begin{align}
\Pi=\frac{\sqrt h}{N}(\dot\phi-N^i\partial_i\phi) =\sqrt h\,n^\mu\partial_\mu\phi. \tag{8.7}
\end{align}$$

Pulling back (8.2) gives $\Theta_\Sigma=\int d^3x\,\Pi\delta\phi$. Hence

$$\begin{align}
\Omega_\Sigma(f,g)=\int d^3x\,(f\Pi_g-g\Pi_f). \tag{8.8}
\end{align}$$

This is the same ordering as $dq\wedge dp$ applied to two variations. In particular it fixes the sign of the classical bracket before a vacuum or particle interpretation is chosen.

The divergence identity is

$$\begin{align}
\bar\nabla_\mu j^\mu(f,g)=fPg-gPf. \tag{8.9}
\end{align}$$

For linearized solutions it vanishes. Stokes’ theorem then makes (8.6) independent of the Cauchy surface provided the side flux vanishes. For example, on a globally hyperbolic spacetime without boundary, take smooth solutions with compactly supported Cauchy data; finite propagation and the usual normally hyperbolic Cauchy theorem provide the required support control and uniqueness [4]. Nondegeneracy follows by testing a solution against independently prescribed compact Cauchy position and momentum data: zero pairing with all such tests forces both of its data to vanish, and Cauchy uniqueness forces the solution to vanish.

As a concrete normalization check, on a flat periodic spatial slice of volume V and with $m>0$, the spatially constant solutions

$$\begin{align}
f(t)=V^{-1/2}\cos mt,\qquad g(t)=(m\sqrt V)^{-1}\sin mt
\end{align}$$

satisfy $\Omega(f,g)=V(f\dot g-g\dot f)=1$ for every t. These are actual free modes with no flux through a side boundary.

For the linear observable $F_f(\phi)=\Omega(f,\phi)$, its differential is $dF_f(g)=\Omega(f,g)$, so $X_{F_f}=f$ and

$$\begin{align}
\{F_f,F_g\}=\Omega(f,g). \tag{8.10}
\end{align}$$

This matches the scalar normalization in [EC-03](<EC-03.md>). The solution-space statement uses a Cauchy theorem and a controlled class of solutions; it does not assert an infinite-dimensional Darboux theorem or follow from counting field components.

With physical boundaries, conservation requires specified boundary conditions and zero symplectic flux, or an enlarged boundary phase space. A change $\theta\mapsto\theta+dY$ shifts $\Theta_\Sigma$ by $\int_{\partial\Sigma}Y$ and can change its field-space derivative. Gauge theories additionally require regularity and boundary analysis before null directions can be quotiented. The finite-dimensional smooth quotient theorem of Section 6 cannot simply be applied to every gauge field theory without these inputs.

## 9. Prequantization Is an Integral-Class Condition

Restore $\hbar>0$ in this section. A Hermitian line bundle with unitary connection is a prequantum line bundle for our symplectic form if its curvature is

$$\begin{align}
F_\nabla=-\frac{i}{\hbar}\omega, \qquad c_1=\left[\frac{iF_\nabla}{2\pi}\right] =\left[\frac\omega{2\pi\hbar}\right]. \tag{9.1}
\end{align}$$

Existence is equivalent to this de Rham class coming from integral cohomology [5]. On an exact cotangent phase space, the trivial line bundle with connection $d+(i/\hbar)\theta_{\mathrm{can}}$ has the required curvature because $d\theta_{\mathrm{can}}=-\omega$. General global topology is not removed by choosing local Darboux coordinates.

Here the sphere itself is a two-dimensional phase space, distinct from the four-dimensional $T^*S^2$ of Section 7. For $\omega=s\sin\theta\,d\theta\wedge d\phi$, $s>0$, its total area is $4\pi s$; s has units of action when units are retained. Smooth north/south local potentials for this two-form are

$$\begin{align}
a_N=s(1-\cos\theta)d\phi,\qquad a_S=-s(1+\cos\theta)d\phi,\qquad da_N=da_S=\omega. \tag{9.2}
\end{align}$$

The corresponding unitary connection forms are $A_N=-ia_N/\hbar$ and $A_S=-ia_S/\hbar$. On their overlap,

$$\begin{align}
A_S-A_N=\frac{2is}{\hbar}d\phi =g^{-1}dg,\qquad g(\phi)=e^{2is\phi/\hbar}. \tag{9.3}
\end{align}$$

Taking local frames related by $e_S=e_Ng$ implements this connection transformation. The transition is single-valued around the equator exactly when

$$\begin{align}
\frac{2s}{\hbar}\in\mathbb Z, \qquad\text{equivalently}\qquad \int_{S^2}\frac\omega{2\pi\hbar}\in\mathbb Z. \tag{9.4}
\end{align}$$

This is a line-bundle construction with a curvature condition, not yet a choice of quantum states. A polarization, Hilbert-space realization, operator domains, and a state are extra inputs; none is forced by (9.1). Likewise the classical scalar form of Section 8 fixes a commutator normalization when quantization is supplied, not a unique vacuum or particle interpretation.

## 10. What the Constructions Establish

The cotangent bundle gives a global canonical symplectic structure without a metric. Darboux’s theorem removes local variation of a closed nondegenerate two-form, while cohomology and compactness obstruct global simplifications. Hamiltonian evolution, its bracket, and its preserved volume follow from a declared contraction convention; completeness does not. A regular kernel quotient, a second-class restriction, and a singular constraint surface are different geometric operations. The scalar surface example fixes a compatible field-theory sign dictionary but adds its own Cauchy and boundary assumptions. These constructions provide phase spaces and their kinematics. Dynamics, causal admissibility, gauge identification, and a quantum theory each require their additional stated data.

## References and Further Reading

[1] V. I. Arnold, *Mathematical Methods of Classical Mechanics*, second edition, Springer, 1989. Hamiltonian mechanics, generating functions, and the Liouville–Arnold theorem.

[2] Ana Cannas da Silva, *Lectures on Symplectic Geometry*, Lecture Notes in Mathematics 1764, Springer, 2001; Dusa McDuff and Dietmar Salamon, *Introduction to Symplectic Topology*, third edition, Oxford University Press, 2017. Darboux/Moser constructions and global symplectic geometry.

[3] Jerrold E. Marsden and Alan Weinstein, “Reduction of symplectic manifolds with symmetry,” *Reports on Mathematical Physics* **5** (1974), 121–130. Regular Hamiltonian quotient reduction. The free/proper and regular-value assumptions used here are essential to the smooth-manifold conclusion.

[4] Christian Bär, Nicolas Ginoux, and Frank Pfäffle, *Wave Equations on Lorentzian Manifolds and Quantization*, European Mathematical Society, 2007. Normally hyperbolic Cauchy problems and free-field symplectic spaces.

[5] N. M. J. Woodhouse, *Geometric Quantization*, second edition, Oxford University Press, 1992. Integral symplectic classes, prequantum line bundles, and the additional quantization choices.

[6] Joohan Lee and Robert M. Wald, “Local symmetries and constraints,” *Journal of Mathematical Physics* **31** (1990), 725–743. Covariant phase-space methods; compare current-order and Hamiltonian-sign conventions explicitly rather than inferring them from notation.
