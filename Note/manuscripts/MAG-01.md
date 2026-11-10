# Classical Metric–Affine Gravity and the Palatini Projective Freedom

DRAFT — a bounded classical treatment of the independent metric and connection, the Einstein–Hilbert connection equation, and its matter-source compatibility condition.

A metric determines lengths and causal cones. A connection determines parallel transport. Metric–affine geometry treats these as independent structures: the connection need not preserve the metric, and torsion need not vanish. An action must decide which of the additional connection components are determined, which propagate, and which are gauge. Geometry alone does not answer those dynamical questions.

For the pure Einstein–Hilbert action with an unconstrained connection, the answer is particularly simple: in dimension $n>2$, the connection is Levi-Civita plus an arbitrary projective one-form. It is not uniquely Levi-Civita. This chapter derives that result, gives the algebraic response to a prescribed compatible connection current, and separates these statements from a solution of an arbitrary coupled matter theory. The affine constructions and curvature convention are those of [Affine Connections, Torsion and Curvature](<AST-04.md>) and the [shared conventions](<../CONVENTIONS.md>).

## 1. Independent Variables and the Nonmetricity Sign

Let $g_{\nu\rho}$ be a smooth nondegenerate Lorentzian metric and let $\Gamma^\rho{}_{\mu\nu}$ be an independent linear connection on the tangent bundle. In four dimensions the signature is $(-,+,+,+)$. The derivative direction is the first lower connection slot:

$$\begin{align}
\nabla_\mu V^\rho=\partial_\mu V^\rho+\Gamma^\rho{}_{\mu\nu}V^\nu. \tag{1.1}
\end{align}$$

The torsion and the chosen nonmetricity tensor are

$$\begin{align}
T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}, \qquad Q_{\mu\nu\rho}=-\nabla_\mu g_{\nu\rho}. \tag{1.2}
\end{align}$$

Thus $T^\rho{}_{\mu\nu}$ is antisymmetric in its last pair, whereas $Q_{\mu\nu\rho}$ is symmetric in its last pair. Reversing the definition of $Q$ reverses every formula below that is linear in $Q$; it is not a harmless notational change in the middle of a calculation. Differentiating $g^{\nu\alpha}g_{\alpha\rho}=\delta^\nu_\rho$ gives

$$\begin{align}
\nabla_\mu g^{\nu\rho}=Q_\mu{}^{\nu\rho}. \tag{1.3}
\end{align}$$

The three vector traces used here are

$$\begin{align}
t_\mu=T^\rho{}_{\mu\rho},\qquad q_\mu=g^{\nu\rho}Q_{\mu\nu\rho},\qquad \widetilde q_\rho=g^{\mu\nu}Q_{\mu\nu\rho}. \tag{1.4}
\end{align}$$

The two nonmetricity traces are different contractions. Raising the last index of $\widetilde q$ gives $Q_\mu{}^{\mu\rho}$. No relation between $q$ and $\widetilde q$ is assumed.

Nonmetricity measures the change in a transported inner product. If $V$ is parallel along a curve $x(s)$, the product rule gives

$$\begin{align}
\frac{\mathrm d}{\mathrm ds}g(V,V) =-Q_{\mu\nu\rho}\dot x^\mu V^\nu V^\rho. \tag{1.5}
\end{align}$$

This geometric statement does not yet say that such a length comparison is an observable of a chosen gravitational theory.

With the shared length-valued coordinates and dimensionless metric components, $\Gamma,T,Q$ and all three traces have units of inverse length; curvature has units of inverse length squared. In four dimensions $\kappa=8\pi G$ has units of length squared. These assignments will also fix the units of the connection current.

## 2. Reconstructing the Connection from Torsion and Nonmetricity

The metric has its own Levi-Civita connection $\bar\Gamma$, characterized by zero torsion and $\bar\nabla g=0$. Introduce the distortion tensor

$$\begin{align}
N^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\bar\Gamma^\rho{}_{\mu\nu}, \qquad N_{abc}=g_{a\rho}N^\rho{}_{bc}. \tag{2.1}
\end{align}$$

The Latin labels in this tensor algebra are spacetime indices, not orthonormal-frame indices. At fixed metric, $N$ has the same number of independent components as $\Gamma$. Subtracting the Levi-Civita contribution in (1.2) gives

$$\begin{align}
T_{abc}=N_{abc}-N_{acb},\qquad Q_{abc}=N_{bac}+N_{cab}. \tag{2.2}
\end{align}$$

These equations uniquely determine $N$ from $T,Q$. The useful separation is

$$\begin{align}
N_{abc}=K_{abc}+L_{abc}, \tag{2.3}
\end{align}$$

where the contorsion and disformation are

$$\begin{align}
K_{abc}=\frac12\left(T_{abc}-T_{bca}+T_{cab}\right), \qquad L_{abc}=\frac12\left(Q_{bca}+Q_{cba}-Q_{abc}\right). \tag{2.4}
\end{align}$$

To derive the first formula, require $K_{abc}=-K_{cba}$, so the connection $\bar\Gamma+K$ is metric compatible. The torsion equation becomes $T_{abc}=K_{abc}+K_{bca}$. Write its two cyclic partners; the first minus the second plus the third is $2K_{abc}$. For the second formula, require $L_{abc}=L_{acb}$, so $L$ adds no torsion. Then $Q_{abc}=L_{bac}+L_{cab}$; the combination $Q_{bca}+Q_{cba}-Q_{abc}$ is $2L_{abc}$.

Substitution therefore gives all four properties

$$
\begin{aligned}
K_{abc}-K_{acb}&=T_{abc},&K_{abc}+K_{cba}&=0,\\
L_{abc}-L_{acb}&=0,&L_{bac}+L_{cab}&=Q_{abc}.
\end{aligned}
\tag{2.5}
$$

For uniqueness, the difference $H$ between two reconstructions would obey $H_{abc}=H_{acb}$ and $H_{abc}=-H_{cba}$. Successive use of those two symmetries gives

$$\begin{align}
H_{abc}=H_{acb}=-H_{bca}=-H_{bac}=H_{cab}=H_{cba}=-H_{abc},
\end{align}$$

hence $H=0$. This establishes a one-to-one change of variables: in four dimensions the 64 distortion components correspond to 24 torsion and 40 nonmetricity components. These are fibre dimensions, not numbers of global solutions or propagating modes. Although $K$ and $L$ separately reproduce the two tensors, their contributions to an action need not be orthogonal; mixed terms can occur.

A useful specialization is Weyl nonmetricity, defined here by

$$\begin{align}
Q_{\mu\nu\rho}=2w_\mu g_{\nu\rho}. \tag{2.6}
\end{align}$$

It gives $q_\mu=2n w_\mu$, $\widetilde q_\mu=2w_\mu$ and

$$\begin{align}
L^\rho{}_{\mu\nu} =\delta^\rho_\mu w_\nu+\delta^\rho_\nu w_\mu-g_{\mu\nu}w^\rho. \tag{2.7}
\end{align}$$

The connection $\bar\Gamma+L$ is torsion-free. Specifying Weyl nonmetricity without specifying torsion does not, however, determine this connection: the projective solution below has the same form of $Q$ and nonzero torsion.

## 3. Curvature, the Action, and the Two Independent Variations

The curvature and Ricci tensor are

$$
\begin{aligned}
R^\rho{}_{\sigma\mu\nu}
={}&\partial_\mu\Gamma^\rho{}_{\nu\sigma}-\partial_\nu\Gamma^\rho{}_{\mu\sigma}\\
&+\Gamma^\rho{}_{\mu\lambda}\Gamma^\lambda{}_{\nu\sigma}
-\Gamma^\rho{}_{\nu\lambda}\Gamma^\lambda{}_{\mu\sigma},\\
R_{\sigma\nu}&=R^\rho{}_{\sigma\rho\nu},\qquad
R=g^{\sigma\nu}R_{\sigma\nu}.
\end{aligned}
\tag{3.1}
$$

The Ricci tensor need not be symmetric. The classical Einstein–Hilbert metric–affine action is

$$\begin{align}
I[g,\Gamma,\Psi]=\frac1{2\kappa}\int \mathrm d^n x\sqrt{|g|}\,R(g,\Gamma) +I_m[g,\Gamma,\Psi]. \tag{3.2}
\end{align}$$

Here $\Psi$ denotes the matter fields, and in four Lorentzian dimensions $\sqrt{|g|}=\sqrt{-g}$. We use compactly supported variations inside a smooth region. This makes the discarded surface integrals zero and establishes bulk equations. A variational problem with a finite boundary must separately specify its boundary data and any required boundary action; no general metric-Dirichlet boundary prescription is inferred here.

Define the matter sources by

$$\begin{align}
\delta I_m= -\frac12\int \mathrm d^n x\sqrt{|g|} \left(\Theta_{\mu\nu}\,\delta g^{\mu\nu} +\Delta_\rho{}^{\mu\nu}\,\delta\Gamma^\rho{}_{\mu\nu}\right) +\text{matter equations and surface terms}. \tag{3.3}
\end{align}$$

Thus $\Theta$ is the symmetric Hilbert stress tensor, and $\Delta$ is the connection current, or hypermomentum, with its normalization and minus sign fixed by (3.3). The middle index of $\Delta_\rho{}^{\mu\nu}$ labels the derivative/current direction. In four dimensions $[\Theta]=\text{length}^{-4}$ and $[\Delta]=\text{length}^{-3}$.

### 3.1 Metric Variation Holds the Connection Fixed

At fixed $\Gamma$, the Ricci tensor in (3.1) is independent of the metric. Using $\delta\sqrt{|g|}=-\tfrac12\sqrt{|g|}g_{\mu\nu}\delta g^{\mu\nu}$ and symmetric $\delta g^{\mu\nu}$ gives

$$\begin{align}
R_{(\mu\nu)}-\frac12g_{\mu\nu}R=\kappa\Theta_{\mu\nu}. \tag{3.4}
\end{align}$$

There is no antisymmetric metric equation $R_{[\mu\nu]}=0$. A symmetric metric has only symmetric independent variations. In particular, (3.4) cannot be used to require that a projective one-form be closed.

### 3.2 Connection Variation and the Torsion Term

At fixed metric, let $C^\rho{}_{\mu\nu}=\delta\Gamma^\rho{}_{\mu\nu}$. It is a tensor. Varying (3.1), or expanding the covariant derivatives of all its slots, gives

$$\begin{align}
\delta R_{\sigma\nu} =\nabla_\rho C^\rho{}_{\nu\sigma} -\nabla_\nu C^\rho{}_{\rho\sigma} +T^\lambda{}_{\rho\nu}C^\rho{}_{\lambda\sigma}. \tag{3.5}
\end{align}$$

The torsion correction is positive in this derivative-first convention. The lower derivative label of $C$ contributes a negative torsion term to the antisymmetrized tensor derivative, which must be added back to recover the direct coordinate variation.

Integration by parts with the full connection requires care. If $\gamma_\mu=\Gamma^\rho{}_{\mu\rho}$, tracing the definition of $Q$ yields

$$\begin{align}
\gamma_\mu=\partial_\mu\log\sqrt{|g|}+\frac12q_\mu,\qquad \nabla_\mu V^\mu =\frac1{\sqrt{|g|}}\partial_\mu(\sqrt{|g|}V^\mu) +\left(\frac12q_\mu-t_\mu\right)V^\mu. \tag{3.6}
\end{align}$$

A full covariant divergence is therefore not automatically a volume divergence. We can avoid hidden trace terms by reorganizing the connection dependence relative to $\bar\Gamma$ before varying it.

### 3.3 Isolating the Connection's Algebraic Quadratic Form

Substitute $\Gamma=\bar\Gamma+N$ in (3.1). Since the baseline connection is torsion-free,

$$
\begin{aligned}
R_{\sigma\nu}
={}&\bar R_{\sigma\nu}
+\bar\nabla_\rho N^\rho{}_{\nu\sigma}
-\bar\nabla_\nu N^\rho{}_{\rho\sigma}\\
&+N^\rho{}_{\rho\lambda}N^\lambda{}_{\nu\sigma}
-N^\rho{}_{\nu\lambda}N^\lambda{}_{\rho\sigma}.
\end{aligned}
\tag{3.7}
$$

Define the two distortion contractions

$$\begin{align}
u_\lambda=N^\rho{}_{\rho\lambda},\qquad v^\lambda=g^{\mu\nu}N^\lambda{}_{\mu\nu}, \tag{3.8}
\end{align}$$

and the vector and quadratic scalar

$$\begin{align}
B^\rho=v^\rho-u^\rho,\qquad U(N)=u_\lambda v^\lambda-g^{\mu\nu}N^\rho{}_{\nu\lambda}N^\lambda{}_{\rho\mu}. \tag{3.9}
\end{align}$$

Contracting (3.7) and using $\bar\nabla g=0$ gives the exact identity

$$\begin{align}
R(g,\Gamma)=\bar R+\bar\nabla_\rho B^\rho+U(N). \tag{3.10}
\end{align}$$

In particular, $\sqrt{|g|}\bar\nabla_\rho B^\rho=\partial_\rho(\sqrt{|g|}B^\rho)$ is a genuine coordinate divergence. At fixed metric $\delta N=\delta\Gamma$, so only $U$ contributes to the bulk connection equation. This change of variables must not be used to replace the fixed-$\Gamma$ metric variation by a fixed-$N$ variation: $\bar\Gamma$ itself depends on the metric and its first derivatives.

To obtain the coefficient explicitly, vary the two factors in each quadratic product:

$$\begin{aligned}
\delta U={}&(\delta u_\lambda)v^\lambda+u_\lambda\delta v^\lambda\\
&-g^{\mu\nu}\left( \delta N^\rho{}_{\nu\lambda}N^\lambda{}_{\rho\mu} +N^\rho{}_{\nu\lambda}\delta N^\lambda{}_{\rho\mu}\right).
\end{aligned}$$

Relabeling the summed indices to put every variation in the form $\delta N^a{}_{bc}$ gives

$$\begin{align}
\delta U=E_a{}^{bc}\,\delta N^a{}_{bc},\qquad E_a{}^{bc}=\delta^b_a v^c+g^{bc}u_a -g^{bm}N^c{}_{am}-g^{cm}N^b{}_{ma}. \tag{3.11}
\end{align}$$

The full bulk connection equation is therefore

$$\begin{align}
E_a{}^{bc}=\kappa\Delta_a{}^{bc}. \tag{3.12}
\end{align}$$

The gravitational side contains no derivatives of $N$. If matter also contains no derivatives of the connection, the connection equation is algebraic. Matter may nevertheless make $\Delta$ depend on $N$, so (3.12) need not be a linear equation with an already known source. Matter with derivatives of the connection requires a separate analysis.

## 4. The Projective Symmetry and Its Source-Trace Condition

For an arbitrary smooth one-form $A_\mu$, consider

$$\begin{align}
\Gamma'^\rho{}_{\mu\nu} =\Gamma^\rho{}_{\mu\nu}+\delta^\rho_\nu A_\mu. \tag{4.1}
\end{align}$$

The last lower slot, not the derivative slot, is paired with the upper index. In matrix notation $(\Gamma_\mu)^\rho{}_\nu=\Gamma^\rho{}_{\mu\nu}$, the change is $\Gamma_\mu\mapsto\Gamma_\mu+A_\mu I$. The identity matrix commutes with every $\Gamma_\mu$, and the quadratic $A_\mu A_\nu$ terms cancel under antisymmetrization. Hence

$$
\begin{aligned}
R'^\rho{}_{\sigma\mu\nu}-R^\rho{}_{\sigma\mu\nu}
&=\delta^\rho_\sigma(\mathrm dA)_{\mu\nu},\\
R'_{\sigma\nu}-R_{\sigma\nu}&=(\mathrm dA)_{\sigma\nu},\qquad
R'=R.
\end{aligned}
\tag{4.2}
$$

The Einstein–Hilbert scalar is exactly invariant, not merely invariant up to a surface term. The one-form $A$ need not be closed or exact. This is a symmetry of this action; it is more general than a frame rescaling, which would generate only a special exact one-form shift. A frame change also transforms the frame/coframe and metric components, whereas (4.1) changes the connection at fixed metric. Even when an exact shift makes their connection matrices look alike, these are different geometric operations.

The geometric tensors transform as

$$
\begin{aligned}
T'^\rho{}_{\mu\nu}-T^\rho{}_{\mu\nu}
&=\delta^\rho_\nu A_\mu-\delta^\rho_\mu A_\nu,\\
Q'_{\mu\nu\rho}-Q_{\mu\nu\rho}&=2A_\mu g_{\nu\rho},\\
t'_\mu-t_\mu&=(n-1)A_\mu,\\
q'_\mu-q_\mu&=2n A_\mu,\qquad
\widetilde q'_\mu-\widetilde q_\mu=2A_\mu.
\end{aligned}
\tag{4.3}
$$

For example, $q_\mu-2n t_\mu/(n-1)$ is invariant when $n>1$. Neither torsion nor nonmetricity separately remains unchanged. Equation (4.1) is not a torsion-preserving symmetric projective change. Its symmetric part changes the autoparallel equation by $(A_\mu\dot x^\mu)\dot x^\rho$, a term parallel to the tangent, so it preserves unparametrized autoparallel paths, not generally their affine parameters.

The algebraic counterpart of the symmetry is visible directly in (3.11):

$$\begin{align}
E_a{}^{ba}=v^b+u^b-u^b-v^b=0. \tag{4.4}
\end{align}$$

Consequently every solution of (3.12) must satisfy

$$\begin{align}
\Delta_a{}^{ba}=0. \tag{4.5}
\end{align}$$

This contracts the output-dual and field slots of the current, leaving its derivative/current slot free. Under (4.1), the matter variation is

$$\begin{align}
\delta_A I_m=-\frac12\int\mathrm d^n x\sqrt{|g|}\, \Delta_\rho{}^{\mu\rho}A_\mu. \tag{4.6}
\end{align}$$

If matter is invariant under arbitrary compactly supported projective shifts with its fields held fixed, the trace vanishes as a functional identity. If matter itself also transforms, the associated identity can contain its matter equations. A prescribed nonzero trace current is incompatible with the pure gravitational equation (3.12). For dynamical matter that breaks the symmetry, (4.5) can instead become an additional constraint on the matter fields or on the projective connection component through its matter dependence. It cannot be discarded, and neither solvability nor a surviving projective gauge freedom is then automatic.

## 5. Solving the Source-Free Connection Equation

Suppose $\Delta=0$, as in vacuum or for matter independent of $\Gamma$. Lower the last two indices of (3.11). The equation becomes

$$\begin{align}
N_{cab}+N_{bca}=g_{ab}v_c+g_{bc}u_a. \tag{5.1}
\end{align}$$

Use this equation with index orders $(b,c,a)$ and $(c,a,b)$, add them, and subtract the original. The result isolates $N_{abc}$:

$$\begin{align}
2N_{abc}=g_{bc}(v_a-u_a) +g_{ac}(u_b+v_b)+g_{ab}(u_c-v_c). \tag{5.2}
\end{align}$$

Contracting with $g^{ab}$ gives

$$\begin{align}
2u_c=n u_c+(2-n)v_c,\qquad (n-2)(u_c-v_c)=0. \tag{5.3}
\end{align}$$

For $n>2$, $u=v$. Equation (5.2) therefore reduces to

$$\begin{align}
N_{abc}=g_{ac}A_b,\qquad \Gamma^a{}_{bc}=\bar\Gamma^a{}_{bc}+\delta^a_c A_b, \qquad A_b\text{ arbitrary}. \tag{5.4}
\end{align}$$

Conversely, substitution in (3.11) makes every term cancel, so this is the full source-free connection solution. No equation for $\mathrm dA$ has been used or obtained. Its torsion and nonmetricity are

$$\begin{align}
T^\rho{}_{\mu\nu}=\delta^\rho_\nu A_\mu-\delta^\rho_\mu A_\nu, \qquad Q_{\mu\nu\rho}=2A_\mu g_{\nu\rho}. \tag{5.5}
\end{align}$$

Both vanish in the representative $A=0$. They need not vanish in another representative of the same projective orbit. In this family, $u=v=A$, $B=0$ and $U=0$. Equation (4.2) also shows directly that

$$\begin{align}
R_{(\mu\nu)}=\bar R_{\mu\nu},\qquad R=\bar R. \tag{5.6}
\end{align}$$

For connection-independent matter, (3.4) becomes

$$\begin{align}
\bar G_{\mu\nu}=\kappa\Theta_{\mu\nu}, \tag{5.7}
\end{align}$$

together with that matter's field equations. In vacuum, this is the usual vacuum Einstein equation. The arbitrary one-form is a gauge freedom of the full action in these cases, not a new metric source or a predicted external background. Locally it can be removed by the shift $-A$ even when $\mathrm dA\ne0$. Global gauge choices must also respect the imposed boundary data and allowed transformations.

At a fixed four-dimensional metric, $U$ is a quadratic form on 64 distortion components. The preceding proof determines its Hessian kernel exactly: it consists of the four tensors $\delta^a_c A_b$. Thus the rank is $64-4=60$. This is an algebraic rank, not a count of physical gravitational polarizations. The argument divides by $n-2$; it does not establish the corresponding result in two dimensions.

Choosing a representative by $u=0$ removes the projective freedom in (5.4). Within this source-free solution family, imposing zero torsion or zero nonmetricity also forces $A=0$. Such an on-shell representative choice must be distinguished from constraining the connection before variation, which changes the set of allowed variations and requires its own derivation when matter is present.

## 6. Compatible Connection Currents: an Explicit Algebraic Response

It is useful to solve (3.12) for a prescribed current, while keeping separate the question of whether a particular matter action produces it. Define its all-lowered version

$$\begin{align}
\mathcal D_{abc}=g_{b\mu}g_{c\nu}\Delta_a{}^{\mu\nu}. \tag{6.1}
\end{align}$$

Compatibility is $g^{ac}\mathcal D_{abc}=0$. The two remaining traces and their difference are

$$\begin{align}
d_c=g^{ab}\mathcal D_{abc},\qquad f_a=g^{bc}\mathcal D_{abc},\qquad z_a=\frac{\kappa}{n-2}(d_a-f_a). \tag{6.2}
\end{align}$$

The sourced version of (5.1) is

$$\begin{align}
N_{cab}+N_{bca}=g_{ab}v_c+g_{bc}u_a-\kappa\mathcal D_{abc}. \tag{6.3}
\end{align}$$

The same cyclic combination used above gives

$$
\begin{aligned}
2N_{abc}={}&g_{bc}(v_a-u_a)+g_{ac}(u_b+v_b)+g_{ab}(u_c-v_c)\\
&+\kappa(\mathcal D_{abc}-\mathcal D_{bca}-\mathcal D_{cab}).
\end{aligned}
\tag{6.4}
$$

Contracting $g^{ab}$ and using the compatibility trace shows $v-u=z$. In the representative $u=0$, the particular solution is therefore

$$
\begin{aligned}
N^{\mathrm p}_{abc}=\frac12\big[&g_{bc}z_a+g_{ac}z_b-g_{ab}z_c\\
&+\kappa(\mathcal D_{abc}-\mathcal D_{bca}-\mathcal D_{cab})\big].
\end{aligned}
\tag{6.5}
$$

Its $u$ trace is zero, its $v$ trace is $z$, and substitution in (6.3) recovers the source. The general algebraic solution is

$$\begin{align}
N_{abc}=N^{\mathrm p}_{abc}+g_{ac}A_b. \tag{6.6}
\end{align}$$

Thus (4.5) is both necessary and sufficient for this fixed-metric, prescribed-current linear system when $n>2$. The freedom in (6.6) is a gauge freedom of a coupled theory only if that theory retains the symmetry. If $\Delta[g,N,\Psi]$ is itself connection dependent, (6.5) is an implicit relation that still has to be solved with the matter equations and (3.4). It is not a complete solution of an arbitrary metric–affine matter model.

### Which Pair Carries Spin, Dilation and Shear?

At each current direction $\mu$, the connection is an endomorphism of the tangent space. Its current is correspondingly a matrix current. To lower its two endomorphism indices, put

$$\begin{align}
J^\mu{}_{\rho\sigma}=g_{\sigma\nu}\Delta_\rho{}^{\mu\nu}. \tag{6.7}
\end{align}$$

Its antisymmetric part $J^\mu{}_{[\rho\sigma]}$ is the spin-type current. Its trace $g^{\rho\sigma}J^\mu{}_{\rho\sigma}=\Delta_\rho{}^{\mu\rho}$ is the dilation current. The symmetric trace-free part

$$\begin{align}
J^\mu{}_{(\rho\sigma)} -\frac1n g_{\rho\sigma}\Delta_\lambda{}^{\mu\lambda}
\tag{6.8}
\end{align}$$

is the shear-type current. Symmetrizing the two displayed upper indices of $\Delta_\rho{}^{\mu\nu}$ instead would mix the derivative and field slots; it would not be this decomposition. Purely antisymmetric or symmetric trace-free endomorphism currents have zero dilation trace and pass (4.5), but the rest of their dynamics still depends on their matter action.

As a simple algebraic example, let $\mathcal D_{abc}=\mathcal D_{[abc]}$ be a prescribed three-form current. All its traces vanish, so (6.5) gives

$$\begin{align}
N^{\mathrm p}_{abc}=-\frac\kappa2\mathcal D_{abc},\qquad T^{\mathrm p}_{abc}=-\kappa\mathcal D_{abc},\qquad Q^{\mathrm p}_{abc}=0. \tag{6.9}
\end{align}$$

The minus sign follows from the explicit source definition (3.3). This example supplies a pure spin-type response, not a universal identification of $\mathcal D$ with a specified fermion bilinear. A physical spinor model must determine that current and its normalization from its own action.

## 7. A Minkowski Projective Orbit with Nonzero Connection Curvature

Take Minkowski coordinates $(t,x,y,z)$, all with units of length, and

$$\begin{align}
g=-\mathrm dt^2+\mathrm dx^2+\mathrm dy^2+\mathrm dz^2,\qquad A=\beta x\,\mathrm dt, \tag{7.1}
\end{align}$$

where $\beta$ is a constant of units length$^{-2}$. The connection is

$$\begin{align}
\Gamma^\rho{}_{\mu\nu}=\delta^\rho_\nu A_\mu,\qquad \mathrm dA=\beta\,\mathrm dx\wedge\mathrm dt. \tag{7.2}
\end{align}$$

For $\beta\ne0$ its curvature is not zero:

$$\begin{align}
R^\rho{}_{\sigma tx}=-\beta\delta^\rho_\sigma,\qquad R_{tx}=-\beta,\qquad R_{xt}=\beta. \tag{7.3}
\end{align}$$

Nevertheless $R_{(\mu\nu)}=0$ and $R=0$. It satisfies both pure vacuum field equations for every $\beta$. Its traces are $t_t=3\beta x$, $q_t=8\beta x$ and $\widetilde q_t=2\beta x$. This concrete solution shows why the vacuum equations do not require $\mathrm dA=0$.

The autoparallel equation is

$$\begin{align}
\ddot x^\rho+(A_\mu\dot x^\mu)\dot x^\rho=0. \tag{7.4}
\end{align}$$

The acceleration is parallel to the tangent, so its regular unparametrized paths are Minkowski straight lines. The parameter is generally not the Minkowski affine parameter. Parallel transport is different: along any curve,

$$\begin{align}
V^\rho(s)=V^\rho(0)\exp\left(-\int_{x|_{[0,s]}}A\right). \tag{7.5}
\end{align}$$

For instance, on a segment $x=x_0$ parametrized by $t=s$, the factor is $e^{-\beta x_0s}$. Around a rectangle traversed from $(t,x)=(0,0)$ to $(T,0)$, then $(T,X)$, then $(0,X)$ and back to $(0,0)$,

$$\begin{align}
\oint A=-\beta TX,\qquad V_{\mathrm{final}}=e^{\beta TX}V_{\mathrm{initial}}. \tag{7.6}
\end{align}$$

The exponent is dimensionless. A transported non-null length is multiplied by the same positive factor. But these transport data change under the arbitrary one-form symmetry of the pure action: the permitted shift $-A$ sets this connection to zero. They are not projectively invariant observables of pure Einstein–Hilbert gravity with connection-independent matter. A probe that directly measures such connection transport must be supplied by a specified coupling; if it breaks the symmetry, its current and the full field equations must be reconsidered.

## 8. Matter Couplings and the Boundary of the Result

For an ordinary real scalar, the action

$$\begin{align}
I_\phi=-\frac12\int\mathrm d^4x\sqrt{-g} \left(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+m^2\phi^2\right) \tag{8.1}
\end{align}$$

does not contain $\Gamma$, so $\Delta=0$. Varying it gives $(\bar\Box-m^2)\phi=0$, with the metric-volume wave operator, not an arbitrarily chosen full-connection Hessian. Similarly, defining an electromagnetic field strength by $F=\mathrm d\mathcal A$ and using $-\tfrac14\int\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}$ produces no affine-connection current. Replacing $F$ by $2\nabla_{[\mu}\mathcal A_{\nu]}$ would add a torsion term and change the model; it is not the same minimal gauge-invariant prescription. Nonminimal scalar or gauge-field couplings require separate variations.

Spinors require extra structure and a choice of coupling. Assume a spin structure and an orthonormal coframe $e^A{}_{\mu}$, where capital labels are Lorentz-frame indices and $g_{\mu\nu}=\eta_{AB}e^A{}_{\mu}e^B{}_{\nu}$. Its induced frame connection is

$$\begin{align}
\omega_\mu{}^A{}_B =e^A{}_{\rho}\left(\partial_\mu e_B{}^\rho +\Gamma^\rho{}_{\mu\nu}e_B{}^\nu\right). \tag{8.2}
\end{align}$$

In a nonmetric geometry, its lowered form $\omega_{\mu AB}=\eta_{AC}\omega_\mu{}^C{}_B$ need not be antisymmetric. An arbitrary $GL(n)$ connection has no automatic action on the usual finite-component Lorentz Dirac spinors. One possible Lorentz-covariant prescription uses the antisymmetric projection and the [shared spinor dictionary](<../CONVENTIONS.md>),

$$\begin{align}
D_\mu\psi=\partial_\mu\psi-\frac14\omega_{\mu[AB]}\gamma^{AB}\psi, \qquad \{\gamma^A,\gamma^B\}=-2\eta^{AB},\quad \gamma^{AB}=\frac12[\gamma^A,\gamma^B]. \tag{8.3}
\end{align}$$

The antisymmetric projection transforms as a Lorentz connection under changes of orthonormal frame, which justifies this bundle connection. A matter theory must still specify its complete action, conjugation, reality conditions, and possible additional couplings before computing its hypermomentum or a fermionic observable. The geometry alone does not uniquely select them.

Under (4.1), $\delta\omega_{\mu AB}=\eta_{AB}A_\mu$, so the projection in (8.3) is unchanged. A matter action whose affine dependence is solely through that projection retains the projective symmetry. Additional trace-current couplings can change this conclusion. No general Standard Model or nonmetric spin-splitting claim follows without that additional model specification.

If a prescribed source has nonzero dilation trace, the pure Einstein–Hilbert connection equation has no solution for it. Options include a matter theory whose trace current vanishes, explicitly imposing and analyzing a constraint, or changing the gravitational action. Quadratic torsion/nonmetricity terms can modify the algebraic operator and its kernel. Curvature-squared terms can introduce derivatives of connection components. Whether any such extension propagates healthy additional modes is a new calculation, not a consequence of the rank-60 Einstein–Hilbert operator.

Likewise, a boundary value for nonmetricity must satisfy the field equations and the chosen variational boundary problem. A gauge component of the connection is not, by itself, an independently measurable external influence. This chapter establishes neither a universal cosmological matching law nor a singularity-avoidance theorem.

## 9. What the Calculation Establishes

The independent connection is reconstructed uniquely from its torsion and nonmetricity once the metric and slot conventions are fixed. For the unconstrained Einstein–Hilbert action, its bulk equation is algebraic and has an exact projective kernel. In vacuum and with connection-independent matter, its solutions are $\bar\Gamma+\delta^\rho_\nu A_\mu$, with arbitrary smooth $A$, while the metric obeys the usual Einstein equation. A compatible prescribed connection current has the response (6.5) modulo that kernel; a coupled matter model must additionally meet its own source, field, gauge and boundary conditions.

## Further Reading

A. N. Bernal, B. Janssen, A. Jiménez-Cano, J. A. Orejuela, M. Sánchez and P. Sánchez-Moreno, [“On the (non-)uniqueness of the Levi-Civita solution in the Einstein–Hilbert–Palatini formalism”](<https://arxiv.org/abs/1606.08756>), *Physics Letters B* **768** (2017), 280–287: the unconstrained Palatini connection family and its geometric interpretation.

F. W. Hehl, J. D. McCrea, E. W. Mielke and Y. Ne'eman, [“Metric-affine gauge theory of gravity: field equations, Noether identities, world spinors, and breaking of dilation invariance”](<https://www.sciencedirect.com/science/article/pii/037015739400111F>), *Physics Reports* **258** (1995), 1–171: the wider classical gauge framework and matter currents. Its notation must be translated to the derivative-first slots and the nonmetricity sign stated here.
