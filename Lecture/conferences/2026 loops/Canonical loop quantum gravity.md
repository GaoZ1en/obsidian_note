# Canonical loop quantum gravity: from constrained geometry to spin networks

Canonical loop quantum gravity starts with the phase space of general relativity and asks which functions on it can be represented without choosing a background metric. Its characteristic answer is to use parallel transports of a connection and fluxes of its conjugate triad. The resulting representation gives a precise quantum kinematics; imposing the remaining gravitational constraints is a further problem, not a consequence of constructing spin networks.

This note develops that route for vacuum Lorentzian gravity with zero cosmological constant. The reader is assumed to know differential geometry, Hamiltonian mechanics and elementary quantum mechanics. We take an oriented, compact spatial manifold $\Sigma$ without boundary, a globally hyperbolic spacetime $M\simeq\mathbb R\times\Sigma$, and nondegenerate classical triads of positive orientation. Spatial boundaries, matter and asymptotic charges require additional terms and are not included. Our constants and generators are

$$
\kappa=8\pi G,\qquad \ell_P^2=G\hbar,\qquad \gamma>0,
\qquad \tau_i=-\frac{i}{2}\sigma_i,
$$

$$
[\tau_i,\tau_j]=\epsilon_{ij}{}^k\tau_k,
\qquad \operatorname{tr}(\tau_i\tau_j)=-\frac12\delta_{ij}.
$$

The spacetime signature is $(-,+,+,+)$. The parameter $\gamma$ is the Barbero–Immirzi parameter, denoted $\beta$ in several of the original lectures. An upper-case $\Gamma$ without spatial indices will denote a graph; $\Gamma_a^i$ is the triad-compatible spin connection.

## 1. Why the Hamiltonian is a constraint

Write the metric as

$$
ds^2=-N^2dt^2+q_{ab}(dx^a+N^a dt)(dx^b+N^b dt),
\qquad
K_{ab}=\frac{1}{2N}(\dot q_{ab}-\mathcal L_{\vec N}q_{ab}).
$$

After including the temporal boundary term appropriate to fixed induced metrics, the Einstein–Hilbert action has the ADM form

$$
S=\frac{1}{2\kappa}\int dt\,d^3x\,N\sqrt q
\left({}^{(3)}R+K_{ab}K^{ab}-K^2\right),
\qquad q=\det q_{ab}.
$$

The momentum and its inverse relation are

$$
P^{ab}=\frac{\sqrt q}{2\kappa}(K^{ab}-Kq^{ab}),
\qquad
K^{ab}=\frac{2\kappa}{\sqrt q}\left(P^{ab}-\frac12Pq^{ab}\right),
\qquad P=q_{ab}P^{ab}.
$$

Substitution into the Legendre transform gives

$$
S=\int dt\,d^3x\left(P^{ab}\dot q_{ab}-N\mathcal H-N^a\mathcal H_a\right),
$$

$$
\mathcal H=\frac{2\kappa}{\sqrt q}\left(P_{ab}P^{ab}-\frac12P^2\right)
-\frac{\sqrt q}{2\kappa}\,{}^{(3)}R,
\qquad
\mathcal H_a=-2q_{ab}D_cP^{bc}.
$$

Here $D$ acts on $P^{ab}$ as a tensor density of weight one. The lapse and shift have no velocities. Their momenta are primary constraints, and preserving those constraints imposes $\mathcal H=0$ and $\mathcal H_a=0$. Once lapse and shift are treated as multipliers, the nontrivial canonical bracket is

$$
\{q_{ab}(x),P^{cd}(y)\}=\delta^c_{(a}\delta^d_{b)}\delta^{(3)}(x,y).
$$

A first-class constraint has a Poisson bracket with every constraint that vanishes on the constraint surface. An invertible matrix of constraint brackets identifies a purely second-class set; a singular matrix alone does not imply that every constraint is first class. For GR the ADM constraints are first class. With

$$
D[\vec N]=\int_\Sigma N^a\mathcal H_a,
\qquad H[N]=\int_\Sigma N\mathcal H,
$$

and the convention $\delta F=\{F,D[\vec N]\}$, their algebra is

$$
\begin{aligned}
\{D[\vec N],D[\vec M]\}&=D[[\vec N,\vec M]],\\
\{D[\vec N],H[M]\}&=H[\mathcal L_{\vec N}M],\\
\{H[N],H[M]\}&=D[\vec S],\qquad
S^a=q^{ab}(N\partial_bM-M\partial_bN).
\end{aligned}
$$

The last bracket contains the dynamical inverse metric. This is the algebra of deformations of a hypersurface, with structure functions rather than constant Lie-algebra structure coefficients. A quantization must therefore do more than represent a fixed finite-dimensional symmetry algebra.

For compact $\Sigma$ the total Hamiltonian is a sum of constraints. It generates changes of the spacetime slicing, not evolution relative to an external physical clock. This does not mean that GR has no local degrees of freedom: six metric components and their momenta, reduced by four first-class constraints, leave four phase-space dimensions per spatial point, or two configuration degrees of freedom.

## 2. Turning geometry into an SU(2) connection theory

### 2.1 Enlarging the variables and removing the redundancy

Choose a co-triad $e_a^i$ and its inverse $e_i^a$, and define

$$
q_{ab}=e_a^i e_b^j\delta_{ij},\qquad
E_i^a=\sqrt q\,e_i^a,\qquad K_a^i=K_{ab}e^{bi}.
$$

Then

$$
E_i^a E_i^b=q q^{ab},\qquad \det(E_i^a)=q.
$$

The nine triad components describe the six metric components plus three internal rotations. The condition that $K_{ab}$ be symmetric becomes

$$
\epsilon_{ij}{}^k K_a^j E_k^a=0.
$$

On this surface the symplectic potentials are related by

$$
\int_\Sigma P^{ab}\delta q_{ab}
=\frac1\kappa\int_\Sigma E_i^a\delta K_a^i
-\frac1\kappa\delta\int_\Sigma\sqrt q\,K.
$$

To see the coefficient, use

$$
E_i^a\delta K_a^i
=\sqrt q\,q^{ab}\delta K_{ab}
-\frac{\sqrt q}{2}K^{ab}\delta q_{ab}
$$

and expand $\delta(\sqrt q\,q^{ab}K_{ab})$. The exact variation does not change the symplectic form. Thus an extended phase space with

$$
\{K_a^i(x),E_j^b(y)\}=\kappa\delta_a^b\delta_j^i\delta^{(3)}(x,y)
$$

and the internal rotation constraint reproduces ADM after reduction.

Let $\Gamma_a^i$ satisfy

$$
\partial_a e_b^i-{}^{(3)}\Gamma^c{}_{ab}e_c^i
+\epsilon^i{}_{jk}\Gamma_a^j e_b^k=0.
$$

The Ashtekar–Barbero connection is

$$
A_a^i=\Gamma_a^i[E]+\gamma K_a^i.
$$

The variation of $D^\Gamma e^i=0$ gives

$$
D^\Gamma\delta e^i+\epsilon^i{}_{jk}\delta\Gamma^j\wedge e^k=0,
\qquad
E_i^a\delta\Gamma_a^i\,d^3x=\frac12d(e_i\wedge\delta e^i).
$$

The second identity follows by wedging the first with $e_i$. Hence $\int_\Sigma E_i^a\delta\Gamma_a^i=0$ on a closed $\Sigma$; with a boundary this term must instead be retained as a surface contribution. Consequently

$$
\Theta=\frac1{\kappa\gamma}\int_\Sigma E_i^a\delta A_a^i
\quad\text{modulo an exact variation},
$$

$$
\{A_a^i(x),E_j^b(y)\}=\kappa\gamma\delta_a^b\delta_j^i\delta^{(3)}(x,y),
\qquad \{A,A\}=\{E,E\}=0.
$$

The connection does not introduce new physical degrees of freedom. It repackages the gravitational phase space into variables with the kinematics of an SU(2) gauge theory.

### 2.2 What becomes of the constraints

Define

$$
F_{ab}^i=2\partial_{[a}A_{b]}^i+\epsilon^i{}_{jk}A_a^j A_b^k,
\qquad
\mathcal G_i=\partial_aE_i^a+\epsilon_{ij}{}^kA_a^jE_k^a.
$$

Since $D_a^\Gamma E_i^a=0$, the equation $\mathcal G_i=0$ is precisely the internal rotation constraint above. The generator

$$
G[\lambda]=\frac1{\kappa\gamma}\int_\Sigma\lambda^i\mathcal G_i
$$

acts as $\{A_a,G[\lambda]\}=-D_a^A\lambda$ and $\{E^a,G[\lambda]\}=[\lambda,E^a]$. A generator of ordinary spatial Lie derivatives is

$$
D[\vec N]=\frac1{\kappa\gamma}\int_\Sigma N^a
\left(F_{ab}^iE_i^b-A_a^i\mathcal G_i\right).
$$

Indeed, its action on $A_b$ is $N^aF_{ab}+D_b(N^aA_a)=\mathcal L_{\vec N}A_b$. Omitting the Gauss term would instead generate a gauge-covariant displacement.

A representative of the scalar constraint, equivalent to ADM on the Gauss surface, is

$$
H[N]=\frac1{2\kappa}\int_\Sigma d^3x\,
N\frac{E_i^aE_j^b}{\sqrt q}
\left[\epsilon^{ij}{}_kF_{ab}^k-2(1+\gamma^2)K_{[a}^iK_{b]}^j\right],
\qquad K_a^i=\frac{A_a^i-\Gamma_a^i[E]}\gamma.
$$

Here antisymmetrization has weight $1/2$. The curvature expansion

$$
F_{ab}^i(A)=R_{ab}^i(\Gamma)+2\gamma D_{[a}^\Gamma K_{b]}^i
+\gamma^2\epsilon^i{}_{jk}K_a^jK_b^k
$$

can be checked against ADM without leaving the normalization implicit. With the compatible connection above, and on the Gauss surface where $K_{ab}$ is symmetric,

$$
\begin{aligned}
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}R_{ab}^k(\Gamma)
&=-\sqrt q\,{}^{(3)}R,\\
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}D_{[a}^\Gamma K_{b]}^k&=0,\\
\frac{2E_i^aE_j^b}{\sqrt q}K_{[a}^iK_{b]}^j
&=\sqrt q\left(K^2-K_{ab}K^{ab}\right).
\end{aligned}
$$

The first sign follows from $R^i{}_{j ab}=\epsilon^i{}_{kj}R_{ab}^k(\Gamma)$. The second contraction is $\epsilon^{abc}D_aK_{bc}$ and vanishes by symmetry in $b,c$. The $\gamma^2$ term in $F$ then combines with the explicit $-2(1+\gamma^2)$ term to give

$$
H[N]=\frac1{2\kappa}\int_\Sigma d^3x\,N\sqrt q
\left(K_{ab}K^{ab}-K^2-{}^{(3)}R\right),
$$

which is the ADM constraint expressed through its momentum relation. This also explains why the connection form still contains an explicit extrinsic-curvature term. For real $\gamma$ that term does not disappear. Choosing the complex self-dual values $\gamma=\pm i$ changes the reality conditions and the gauge-theoretic representation problem; it is not the real-SU(2) theory developed here.

The count is now $18-2(3+3+1)=4$ phase-space dimensions per point. The three Gauss constraints remove exactly the redundancy introduced by the triad.

The same variables arise from the first-order tetrad/connection action, after imposing time gauge and eliminating the associated second-class constraints. The essential distinction is that the spacetime Lorentz connection and $A_a^i$ are not identical fields: $A_a^i$ combines an intrinsic spatial spin connection with extrinsic curvature. The first-order action and its simplicity conditions are developed in the [covariant companion](<Lecture/conferences/2026 loops/Covariant spin foam.md>); they provide the covariant starting point for the same gravitational theory, not another independent set of physical modes. The connection formulation and the quantum constructions below follow the review of [Ashtekar and Lewandowski](https://arxiv.org/abs/gr-qc/0404018), with momentum rescaled here to $E_i^a$.

## 3. Holonomies and fluxes: the smearings that survive quantization

An integral of $A$ along an edge and an integral of $E$ across a surface require no background metric. For an oriented edge $e:[0,1]\to\Sigma$, fix the ordering convention by the differential equation

$$
\frac{dh_e(t)}{dt}=h_e(t)\dot e^a(t)A_a(e(t)),
\qquad h_e(0)=\mathbf1,\qquad A_a=A_a^i\tau_i.
$$

Thus $h_e$ is a right-ordered exponential of $\int_e A$. If a path first traverses $e_1$ and then $e_2$, its holonomy is $h_{e_1}h_{e_2}$, and $h_{e^{-1}}=h_e^{-1}$. Under

$$
A^g=gAg^{-1}+g\,dg^{-1},
$$

it transforms as

$$
h_e[A^g]=g(s(e))h_e[A]g(t(e))^{-1}.
$$

An alternative transport convention reverses the matrix order and exchanges source and target actions; endpoint formulas must be converted along with it.

For an oriented surface $S$, define the flux

$$
E(S,f)=\int_S f^i E_i^a\,dS_a,
\qquad dS_a=\frac12\epsilon_{abc}\,dx^b\wedge dx^c.
$$

The test field $f^i$ is an internal scalar on $S$. The functional derivative of the holonomy is

$$
\frac{\delta h_e}{\delta A_a^i(x)}
=\int_0^1dt\,\dot e^a(t)\delta^{(3)}(x,e(t))
h_{e[0,t]}\tau_i h_{e[t,1]}.
$$

For a single transverse interior intersection $p$, the fundamental Poisson bracket therefore gives

$$
\{h_e,E(S,f)\}
=\kappa\gamma\,\varepsilon(e,S;p) f^i(p)
h_{e[0,p]}\tau_i h_{e[p,1]},
$$

where $\varepsilon=\operatorname{sgn}(dS_a\dot e^a)$. A symmetric endpoint prescription gives half this contribution at an endpoint. Splitting an interior crossing into two edges gives two endpoint contributions, whose sum restores the full coefficient. Tangential or nonintersecting segments contribute zero in the adapted graph prescription.

This insertion formula is the bridge from the continuum bracket to angular momentum on copies of SU(2). Its half factors should not be confused with the full-puncture area normalization derived below.

## 4. A background-independent Hilbert space

### 4.1 Cylindrical functions and compatible measures

Choose a finite, oriented, piecewise analytic graph $\Gamma$ with $L$ edges. A cylindrical function depends on a connection through finitely many holonomies:

$$
\Psi_{\Gamma,\psi}[A]=\psi(h_{e_1}[A],\ldots,h_{e_L}[A]),
\qquad \psi\in C(\mathrm{SU}(2)^L).
$$

The fixed-graph inner product uses normalized Haar measure:

$$
\langle\Psi_{\Gamma,\psi},\Psi_{\Gamma,\phi}\rangle
=\int_{\mathrm{SU}(2)^L}\prod_e dh_e\,\overline{\psi(h_e)}\phi(h_e),
\qquad \int dh=1.
$$

A function does not acquire a new physical meaning merely because its graph is subdivided. If an edge is replaced by two consecutive edges, the embedding is

$$
\psi(h)\longmapsto\psi(h_1h_2).
$$

Haar invariance gives the required isometry:

$$
\int dh_1dh_2\,|\psi(h_1h_2)|^2
=\int dh_2\int dh\,|\psi(h)|^2
=\int dh\,|\psi(h)|^2.
$$

Adding an unused edge also leaves the norm unchanged, because $\int dh=1$; reversing an edge uses invariance under inversion. These operations establish consistency under graph refinement. In the piecewise analytic category, any finite pair of graphs admits a common refinement.

A generalized connection is an assignment of group elements to paths that respects composition and inversion, without requiring a smooth connection one-form. The space $\overline{\mathcal A}$ is the projective limit of the finite-graph configuration spaces. The compatible Haar measures determine the Ashtekar–Lewandowski measure by

$$
(p_\Gamma)_*\mu_{\mathrm{AL}}=\prod_{e\in\Gamma}dh_e.
$$

Consequently

$$
\mathcal H_{\mathrm{kin}}=L^2(\overline{\mathcal A},d\mu_{\mathrm{AL}}).
$$

The fixed-graph spaces embed in this Hilbert space; they are not mutually independent summands. In particular, adding a spin-zero edge or subdividing an edge can describe the same state.

### 4.2 What the operator-algebra viewpoint adds

The uniform completion of cylindrical functions is the commutative unital $C^*$-algebra $C(\overline{\mathcal A})$. The spectrum of a commutative unital $C^*$-algebra is a compact Hausdorff space, recovered from its nonzero characters. Without a unit the corresponding statement uses $C_0(X)$ on a locally compact space. This distinction matters when using the Gelfand representation theorem rather than only its informal slogan.

A state on a unital $*$-algebra $\mathfrak A$ is a normalized positive linear functional $\omega$:

$$
\omega(1)=1,\qquad \omega(a^*a)\geq0.
$$

The GNS construction starts with the null space

$$
\mathcal N_\omega=\{a:\omega(a^*a)=0\},
\qquad
\langle[a],[b]\rangle=\omega(a^*b)
$$

on $\mathfrak A/\mathcal N_\omega$, not on the unquotiented algebra. Completion gives $\mathcal H_\omega$, left multiplication gives $\pi_\omega(a)[b]=[ab]$, and $\Omega=[1]$ is cyclic. For a $C^*$-algebra the represented operators are bounded. For a general algebra containing fluxes, domain questions for unbounded operators must also be specified.

For the configuration algebra, the state

$$
\omega_{\mathrm{AL}}(\Psi)=\int d\mu_{\mathrm{AL}}\,\Psi
$$

produces precisely the multiplication representation on $\mathcal H_{\mathrm{kin}}$. A state on the configuration algebra alone does not determine every unbounded flux operator; their derivation action must be supplied and checked on a common dense domain.

The role of continuity is visible already in the one-dimensional Weyl algebra. In dimensionless units $[x,p]=i$, let $W(a,b)=e^{i(ax+bp)}$. The central commutator in the Baker–Campbell–Hausdorff formula yields

$$
W(a,b)W(a',b')
=e^{-\frac i2(ab'-ba')}W(a+a',b+b').
$$

The Schrödinger vacuum has $\omega(W(a,b))=e^{-(a^2+b^2)/4}$. In contrast, the positive state

$$
\omega_{\mathrm{pol}}(W(a,b))=
\begin{cases}1,&a=0,\\0,&a\ne0\end{cases}
$$

has GNS basis $|a\rangle=[W(a,0)]$ with $\langle a|a'\rangle=\delta_{a,a'}$. The group $W(c,0)$ shifts this basis and is discontinuous at $c=0$, whereas $W(0,b)|a\rangle=e^{iab}|a\rangle$ is strongly continuous. There is a momentum generator but no self-adjoint $x$ generating $W(c,0)$. This elementary example explains why choosing an algebraic state is part of quantization, and why the usual uniqueness theorem for regular finite-dimensional canonical commutation relations does not apply to nonregular representations.

In LQG the analogous lesson is to keep holonomies themselves. Shrinking an edge does not supply a weakly continuous family from which a local connection operator can simply be differentiated in the AL representation.

## 5. From SU(2) representations to gauge-invariant spin networks

For a spin-$j$ irreducible representation, let $D^j_{mn}(h)=\langle jm|D^j(h)|jn\rangle$ and $d_j=2j+1$. Haar orthogonality reads

$$
\int dh\,\overline{D^j_{mn}(h)}D^{j'}_{m'n'}(h)
=\frac1{d_j}\delta_{jj'}\delta_{mm'}\delta_{nn'}.
$$

The Peter–Weyl theorem therefore supplies the orthonormal basis

$$
T_{\Gamma,\vec j,\vec m,\vec n}(A)
=\prod_{e\in\Gamma}\sqrt{d_{j_e}}D^{j_e}_{m_en_e}(h_e[A])
$$

on a fixed graph before imposing the Gauss constraint.

Gauge transformations act independently at vertices. Their Haar average is an orthogonal projector,

$$
(P_G\psi)(\{h_e\})
=\int\prod_v dg_v\,
\psi(\{g_{s(e)}h_e g_{t(e)}^{-1}\}).
$$

At a vertex it projects the incident representation indices onto invariant tensors. With the holonomy convention above, choose

$$
\iota_v\in\operatorname{Inv}\left(
\bigotimes_{e:s(e)=v}V_{j_e}^*
\otimes\bigotimes_{e:t(e)=v}V_{j_e}\right).
$$

Contracting each source and target index with the appropriate tensor gives

$$
T_{\Gamma,\vec j,\vec\iota}(A)
=\operatorname{Contr}\left[
\bigotimes_e\sqrt{d_{j_e}}D^{j_e}(h_e[A])
\otimes\bigotimes_v\iota_v\right].
$$

The transformation matrices cancel at every vertex. Orthonormal bases of invariant tensors give an orthonormal spin-network basis of the Gauss-invariant fixed-graph space. Across all graphs one first identifies redundant descriptions by refinement and trivial representations. Spin networks solve the internal Gauss constraint; they do not by themselves solve spatial diffeomorphism or scalar constraints.

### 5.1 An explicit four-valent intertwiner

To put all four legs in ordinary representation spaces, fix the SU(2)-equivariant duality map

$$
\mathcal E_j:V_j^*\longrightarrow V_j,
\qquad \mathcal E_j(\langle jm|)=(-1)^{j-m}|j,-m\rangle.
$$

Use this same map whenever an oriented leg is converted to the all-outward convention. Couple $(j_1,j_2)$ to $a$, couple $(j_3,j_4)$ to the same $a$, and then couple $a\otimes a$ to spin zero. With real Condon–Shortley Clebsch–Gordan coefficients,

$$
(\iota_a)_{m_1m_2m_3m_4}
=\frac1{\sqrt{2a+1}}
\sum_{m=-a}^a(-1)^{a-m}
\langle j_1m_1,j_2m_2|am\rangle
\langle j_3m_3,j_4m_4|a,-m\rangle.
$$

The allowed $a$ belongs to both tensor-product decompositions, including their integrality conditions. CG orthogonality gives

$$
\langle\iota_a,\iota_{a'}\rangle=\delta_{aa'},
\qquad
\left(\sum_{r=1}^4\mathbf J_r\right)\iota_a=0.
$$

For four spins $1/2$, $a=0,1$ gives two independent intertwiners. Thus fixing the four face areas does not fix the quantum tetrahedron: an additional shape degree of freedom remains in its intertwiner space.

### 5.2 What graphical calculus computes

A line represents an identity on $V_j$, a trivalent vertex a CG map, and joining lines means contracting indices. A closed identity loop evaluates to $d_j$. These are tensor identities, not extra quantum-gravity assumptions.

Changing the order of coupling three representations gives the basic recoupling identity

$$
|((j_1j_2)a,j_3)JM\rangle
=\sum_b(-1)^{j_1+j_2+j_3+J}\sqrt{(2a+1)(2b+1)}
\begin{Bmatrix}j_1&j_2&a\\j_3&J&b\end{Bmatrix}
|(j_1,(j_2j_3)b)JM\rangle.
$$

It follows by expanding both sides in the uncoupled magnetic basis and taking their overlap. The $6j$ symbol records that overlap after removing the displayed dimension and phase factors. This is why recoupling can replace long magnetic-index sums when evaluating spin-network operators. The graphical treatment of volume-operator matrix elements in [Yang and Ma](https://arxiv.org/abs/1505.00223) develops this machinery further; here we need its elementary use in the following operator actions.

## 6. Holonomy, flux and quantum geometry

Holonomies act by multiplication. On an existing edge their action is reduced using

$$
D^k_{ab}(h)D^j_{mn}(h)
=\sum_{JMN}\langle ka,jm|JM\rangle
\langle kb,jn|JN\rangle D^J_{MN}(h).
$$

Thus multiplication by $D^k$ changes $j$ to $J\in\{|k-j|,\ldots,k+j\}$. In the normalized Peter–Weyl basis the coefficient includes $\sqrt{d_j/d_J}$. On a new edge the same operator enlarges the graph.

For fluxes define derivatives on a copy of SU(2) by

$$
X_i^s\psi(h)=\left.\frac{d}{dt}\right|_0\psi(e^{t\tau_i}h),
\qquad
X_i^t\psi(h)=\left.\frac{d}{dt}\right|_0\psi(he^{t\tau_i}).
$$

They insert $\tau_iD^j(h)$ and $D^j(h)\tau_i$, respectively. Their brackets are

$$
[X_i^s,X_j^s]=-\epsilon_{ij}{}^kX_k^s,
\qquad [X_i^t,X_j^t]=\epsilon_{ij}{}^kX_k^t,
\qquad [X_i^s,X_j^t]=0.
$$

The first minus sign matters: a flow defined by left multiplication gives a right-invariant vector field. On smooth cylindrical functions on an adapted graph the endpoint prescription gives

$$
\widehat{E(S,f)}\psi
=-\frac{i\hbar\kappa\gamma}{2}
\sum_{e,p\in e\cap S}\varepsilon(e,S;p)f^i(p)X_i^{e,p}\psi.
$$

Here each endpoint intersection appears once, and $X^{e,p}$ is $X^s$ or $X^t$ according to that endpoint; an unsplit interior intersection is treated by the insertion formula of Section 3. Multiplication and this differential action satisfy $[\hat h,\hat E]=i\hbar\widehat{\{h,E\}}$. Haar invariance makes these derivatives antisymmetric on the smooth cylindrical domain, so the fluxes are symmetric there.

At a vertex, orient incident edges outward. The operators $J_i^{(v,e)}=-iX_i^s$ satisfy

$$
[J_i^{(v,e)},J_j^{(v,e')}]
=i\delta_{ee'}\epsilon_{ij}{}^kJ_k^{(v,e)},
\qquad \sum_{e\ni v}\mathbf J^{(v,e)}\,\iota_v=0.
$$

Incoming edges are first converted by inversion and duality. The geometric face variable is $\mathbf X_e=\kappa\gamma\hbar\mathbf J_e$. A regulated endpoint flux carries the additional factor $1/2$ specified above; $\mathbf X_e$ denotes the full face variable, not that individual half-contribution. The noncommuting flux derivations belong to the holonomy–flux algebra. They should not be identified without qualification with a simultaneous representation of all unsmeared commuting classical $E_i^a(x)$.

### 6.1 Area from the puncture Casimir

The classical area of a surface is approximated by a partition into small patches:

$$
A(S)=\lim_{\mathcal P}\sum_{S_I\in\mathcal P}
\sqrt{E_i(S_I)E_i(S_I)}.
$$

Assume the surface meets the graph transversely away from its vertices. Eventually each relevant patch contains just one puncture. The two endpoint contributions at a subdivided puncture combine into $\kappa\gamma\hbar\mathbf J$, hence

$$
\widehat A(S)T_s
=\kappa\gamma\hbar\sum_{p\in S\cap\Gamma}
\sqrt{j_p(j_p+1)}\,T_s
=8\pi\gamma\ell_P^2\sum_p\sqrt{j_p(j_p+1)}\,T_s.
$$

For a single transverse spin-$1/2$ puncture the contribution is $4\pi\sqrt3\,\gamma\ell_P^2$. Vertices on the surface require the more general coupled up/down/tangential-edge formula. The displayed expression is not that general spectrum.

This is a kinematical area spectrum. An arbitrarily embedded surface is not a diffeomorphism-invariant physical observable; a relational specification of the surface and the remaining constraints are needed to make that claim.

### 6.2 Why volume probes intertwiners

Classically

$$
V(R)=\int_R d^3x\sqrt{\left|\frac1{3!}
\epsilon_{abc}\epsilon^{ijk}E_i^aE_j^bE_k^c\right|}.
$$

One standard Ashtekar–Lewandowski regularization gives, in the normalization used here,

$$
\widehat V(R)=(\kappa\gamma\hbar)^{3/2}
\sum_{v\in R}\sqrt{|\widehat Q_v|},
$$

$$
\widehat Q_v=\frac1{48}
\sum_{e,e',e''\ni v}\epsilon(e,e',e'')\epsilon_{ijk}
J_i^{(v,e)}J_j^{(v,e')}J_k^{(v,e'')}.
$$

The sum is over ordered triples; $\epsilon(e,e',e'')$ is the orientation of the three outgoing edge tangents and vanishes for linearly dependent tangents. We assume no vertex lies on $\partial R$. The absolute value and square root are spectral functions of the finite-dimensional intertwiner matrix for fixed edge spins. Other volume regularizations exist; their matrix elements must not be substituted into this definition without changing the prescription.

Unlike area, volume couples several edges at a vertex. In a recoupling basis, pairwise operators are simple:

$$
\mathbf J_1\cdot\mathbf J_2
=\frac12\left[(\mathbf J_1+\mathbf J_2)^2-\mathbf J_1^2-\mathbf J_2^2\right].
$$

The triple product can be calculated from

$$
\epsilon_{ijk}J_1^iJ_2^jJ_3^k
=\frac{i}{4}\left[(\mathbf J_1+\mathbf J_2)^2,
(\mathbf J_2+\mathbf J_3)^2\right].
$$

The first pair Casimir is diagonal in the $(12)$ coupling basis; the second is obtained by a $6j$ basis change. This gives an actual computational use for graphical recoupling. Gauge-invariant trivalent vertices have zero volume, while four-valent intertwiner spaces can support nonzero volume. Coplanar tangent configurations also give zero for this volume prescription.

## 7. What remains after kinematics

The internal Gauss constraint has been solved exactly. Spatial diffeomorphisms act unitarily by moving embedded graphs, $U(\varphi)T_s=T_{\varphi s}$. For a generic nontrivial graph state, an arbitrarily small displacement changes the embedded graph and gives an orthogonal state. This representation is not weakly continuous in the displacement parameter, so one cannot obtain an infinitesimal diffeomorphism generator by ordinary differentiation.

One instead constructs diffeomorphism-invariant distributions on cylindrical test functions. Group averaging sums distinct graph images with graph-stabilizer and finite-symmetry factors removed. The resulting states lie in an appropriate dual space; they are not obtained by integrating a nonexistent normalized Haar measure on the full diffeomorphism group.

The scalar constraint is harder because it contains curvature and inverse powers of the triad. Its Euclidean-curvature part illustrates the regularization mechanism without claiming to fix a unique full dynamics. Set

$$
H_E[N]=\frac1{2\kappa}\int d^3x\,N
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}F_{ab}^k.
$$

On the positive-orientation sector,

$$
\frac{\delta V}{\delta E_i^a}=\frac12e_a^i,
\qquad \{A_a^i,V\}=\frac{\kappa\gamma}{2}e_a^i,
\qquad
\frac{\epsilon^{ij}{}_kE_i^aE_j^b}{\sqrt q}=\epsilon^{abc}e_c^k.
$$

Using $\operatorname{tr}(\tau_i\tau_j)=-\delta_{ij}/2$ then gives the exact classical identity

$$
H_E[N]=-\frac2{\kappa^2\gamma}\int d^3x\,N\epsilon^{abc}
\operatorname{tr}\left(F_{ab}\{A_c,V\}\right).
$$

For a coordinate cubic regulator of side $\varepsilon$, take $s_c$ to be an edge from a cell basepoint and $\alpha_{ab}$ the positively oriented small square based there. For smooth classical fields,

$$
h_{\alpha_{ab}}-1=\varepsilon^2F_{ab}+O(\varepsilon^3),
\qquad
h_{s_c}\{h_{s_c}^{-1},V\}=-\varepsilon\{A_c,V\}+O(\varepsilon^2).
$$

Thus a Riemann-sum representative with the correct coefficient is

$$
H_{E,\varepsilon}[N]=\frac2{\kappa^2\gamma}
\sum_{\mathrm{cells}\ C}N(v_C)\sum_{abc}\epsilon^{abc}
\operatorname{tr}\left[(h_{\alpha_{ab}}-1)h_{s_c}\{h_{s_c}^{-1},V\}\right],
\qquad
\lim_{\varepsilon\to0}H_{E,\varepsilon}=H_E.
$$

The sum includes all ordered coordinate triples. A definite regulated operator is obtained by replacing the bracket by $[\ ,\widehat V]/(i\hbar)$, with the displayed ordering. On a cylindrical state the loop multiplication adds edges and recouples the vertex, which is the origin of a graph-changing action.

The classical small-loop limit is not an operator-norm limit in $\mathcal H_{\mathrm{kin}}$. A full construction must specify a graph-adapted regulator, ordering, representation labels for the loops, a domain or distributional setting for removing the regulator, and the Lorentzian $K K$ term. Closure of the resulting quantum constraint algebra and recovery of semiclassical GR are additional requirements. The regulated Euclidean expression above illustrates the mechanism; it does not select or solve a complete Hamiltonian-constraint theory.

The boundary spin networks used by the [spin-foam construction](<Lecture/conferences/2026 loops/Covariant spin foam.md>) are the Gauss-invariant states constructed in Section 5. A covariant amplitude assigns weights to histories between such states. Sharing these boundary states is a precise connection between the two approaches; equality with a physical inner product of a specified canonical Hamiltonian requires more than this common kinematics.

## Sources and relation to the lectures

The classical starting point comes from the lectures on [advanced GR I](<Lecture/conferences/2026 loops/advanced general relativity I by Yongge Ma.md>), [advanced GR II](<Lecture/conferences/2026 loops/advanced general relativity II by Xiangdong Zhang.md>) and [canonical quantization](<Lecture/conferences/2026 loops/canonical quantization by K. Giesel.md>). The representation and operator constructions expand the [angular-momentum lecture](<Lecture/conferences/2026 loops/quantum mechanism angular momentum & graphic calculus by Jinsong Yang.md>) and the [operator-algebra lecture](<Lecture/conferences/2026 loops/operator algebra methods in LQG by M. Varadarajan.md>). Their abbreviated formulas are not adopted as a single consistent convention: the Poisson-bracket normalization, Weyl phase, null-state quotient and endpoint prescriptions are fixed explicitly above.

For the detailed continuum construction, geometric operators and canonical regularization, see A. Ashtekar and J. Lewandowski, [*Background Independent Quantum Gravity: A Status Report*](https://arxiv.org/abs/gr-qc/0404018). For recoupling and geometric-operator matrix elements, see J. Yang and Y. Ma, [*Graphical method in loop quantum gravity: I. Derivation of the closed formula for the matrix element of the volume operator*](https://arxiv.org/abs/1505.00223). The first-order-to-spin-foam continuation is developed in the companion using A. Perez, [*The Spin Foam Approach to Quantum Gravity*](https://arxiv.org/abs/1205.2019).
