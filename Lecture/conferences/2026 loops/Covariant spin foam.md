# Covariant spin foam: from quantum tetrahedra to a Lorentzian vertex

A spin-foam amplitude assigns a quantum amplitude to boundary spin networks by summing over representation labels on a two-dimensional complex. A further sum over complexes is possible, but is not assumed here. For a simplicial complex, its elementary building block is a vertex associated with a four-simplex. The construction has two logically different parts. For BF theory, character expansion and group integration turn a lattice flatness amplitude into a spin sum. For gravity, simplicity constraints motivate a modification of this amplitude; their quantum implementation is an additional prescription, not an identity of BF theory.

This note develops that distinction explicitly. It assumes basic differential forms and angular-momentum addition, but introduces the particular boundary spaces, projectors, and representation maps needed below. The canonical construction of the boundary states is developed in [Canonical loop quantum gravity](<Lecture/conferences/2026 loops/Canonical loop quantum gravity.md>). Here the emphasis is on how these states enter a spacetime amplitude.

Throughout,

$$
c=1,\qquad \kappa=8\pi G,\qquad \ell_P^2=G\hbar,\qquad \gamma>0.
$$

We use signature $(-+++)$, $\tau_i=-i\sigma_i/2$, and dimensionless Hermitian angular momenta satisfying $[J_i,J_j]=i\epsilon_{ij}{}^kJ_k$. Haar measure on $\mathrm{SU}(2)$ has total mass one. Haar measure on $\mathrm{SL}(2,\mathbb C)$ does not.

## 1. A tetrahedron as an invariant quantum state

For a nondegenerate Euclidean tetrahedron, let $\mathbf X_a=A_a\mathbf n_a$, $a=1,\ldots,4$, be its outward area vectors. They obey

$$
\sum_{a=1}^4\mathbf X_a=0.
$$

This follows by applying the divergence theorem to constant vector fields. Conversely, four spanning outward normals with positive areas and this closure condition determine a convex tetrahedron up to translation. Factoring out a common rotation leaves $12-3-3=6$ parameters, agreeing with its six edge lengths. Fixing the four areas leaves two shape parameters locally; areas alone do not determine the tetrahedron.

Quantization replaces the face vectors by

$$
\widehat X_a^i=\kappa\gamma\hbar J_a^i,
\qquad
[\widehat X_a^i,\widehat X_b^j]
=i\kappa\gamma\hbar\delta_{ab}\epsilon^{ij}{}_k\widehat X_a^k.
$$

For fixed spins, the unreduced space is $\bigotimes_aV_{j_a}$, and

$$
\widehat A_a=\sqrt{\widehat{\mathbf X}_a^2}
=8\pi\gamma\ell_P^2\sqrt{j_a(j_a+1)}.
$$

The closure constraint is the zero-total-angular-momentum condition:

$$
\sum_aJ_a^i\,\iota=0
\quad\Longleftrightarrow\quad
\iota\in\mathcal I_{j_1j_2j_3j_4}
:=\operatorname{Inv}_{\mathrm{SU}(2)}
(V_{j_1}\otimes V_{j_2}\otimes V_{j_3}\otimes V_{j_4}).
$$

The equivalence holds because $\mathrm{SU}(2)$ is connected: annihilation by its infinitesimal generators is equivalent to invariance under every finite group element. This is the Hilbert space of a quantum tetrahedron at fixed face areas. It solves closure, not the gravitational Hamiltonian constraint.

An explicit basis shows where quantum shape information resides. Couple $(j_1,j_2)$ to an intermediate spin $a$, couple $(j_3,j_4)$ to the same $a$, and then couple the two copies of $V_a$ to spin zero. In the Condon–Shortley convention,

$$
(\iota_a)_{m_1m_2m_3m_4}
=\sum_{M=-a}^{a}\frac{(-1)^{a-M}}{\sqrt{2a+1}}
\langle j_1m_1,j_2m_2\mid aM\rangle
\langle j_3m_3,j_4m_4\mid a,-M\rangle.
$$

The admissible $a$ belong to both Clebsch–Gordan ranges

$$
|j_1-j_2|\leq a\leq j_1+j_2,
\qquad
|j_3-j_4|\leq a\leq j_3+j_4,
$$

with the appropriate unit steps and parity. Orthogonality of the Clebsch–Gordan coefficients makes these intertwiners orthonormal. For four spins $1/2$, $a=0,1$, so the intertwiner space is two-dimensional. Moreover,

$$
\mathbf J_1\cdot\mathbf J_2\,\iota_a
=\frac12\left[a(a+1)-j_1(j_1+1)-j_2(j_2+1)\right]\iota_a.
$$

Thus $a$ measures a correlation between two face normals. Other pairings diagonalize other correlations; generally these shape observables do not commute.

To assemble tetrahedra, take a graph with one node per tetrahedron and one link per shared triangle. Link spins specify shared areas; node intertwiners specify quantum shapes. With oriented links, the precise tensor space at a node contains $V_j^*$ for outgoing links and $V_j$ for incoming links. The invariant bilinear form

$$
\epsilon^{(j)}_{mn}=(-1)^{j-m}\delta_{m,-n}
$$

identifies $V_j$ with its dual when an all-outward convention is convenient. Orientation reversal must include this identification rather than silently equating covectors and vectors.

On a fixed graph $\Gamma$, these tensors give the Gauss-invariant space

$$
\mathcal H_\Gamma^G
=L^2\!\left(\mathrm{SU}(2)^{L},\prod_\ell dh_\ell\right)^{\mathrm{SU}(2)^N}.
$$

Contracting normalized link matrices $\sqrt{2j_\ell+1}\,D^{j_\ell}(h_\ell)$ with orthonormal node intertwiners gives an orthonormal spin-network basis. Matching a link spin matches its area, but does not by itself match the full intrinsic shape of the shared triangle. Generic boundary states are therefore more general than length-assigned Regge geometries.

## 2. BF theory: flatness and its gauge symmetries

The tractable starting point is four-dimensional BF theory. Let $A$ be a connection, $F[A]=dA+A\wedge A$, and $B$ a Lie-algebra-valued two-form. With an invariant nondegenerate pairing,

$$
S_{\mathrm{BF}}[B,A]=\int_M\langle B\wedge F[A]\rangle.
$$

An overall coupling can be absorbed into $B$ for this discussion. Varying the action gives

$$
\delta S_{\mathrm{BF}}
=\int_M\left(\langle\delta B\wedge F\rangle
-\langle d_AB\wedge\delta A\rangle\right)
+\int_{\partial M}\langle B\wedge\delta A\rangle.
$$

On a closed manifold, or with boundary conditions eliminating the last term, the equations are

$$
F[A]=0,\qquad d_AB=0.
$$

There are two relevant gauge symmetries. Ordinary internal transformations act by

$$
A\mapsto gAg^{-1}+g\,dg^{-1},\qquad
B\mapsto gBg^{-1}.
$$

The additional shift symmetry is

$$
B\mapsto B+d_A\eta,\qquad A\mapsto A,
$$

where $\eta$ is a Lie-algebra-valued one-form. Indeed,

$$
\Delta S_{\mathrm{BF}}
=\int_M\langle d_A\eta\wedge F\rangle
=\int_{\partial M}\langle\eta\wedge F\rangle,
$$

using $d_AF=0$. Thus it is a bulk symmetry with suitable boundary restrictions; shifts unrestricted at the boundary require a separate boundary treatment. The shift parameter is $\eta$, not $F$: $d_AF$ vanishes identically by the Bianchi identity.

On a contractible patch, flatness permits a gauge with $A=0$. Then $dB=0$ implies $B=d\eta$ locally, so the shift removes $B$. This explains the absence of local propagating bulk degrees of freedom. It does not imply a trivial global theory: flat-connection moduli, cohomology, and boundary data can remain. The shift symmetry is itself reducible on shell, since $\eta\mapsto\eta+d_A\phi$ changes $d_A\eta$ by $[F,\phi]$.

Formally, integration over $B$ imposes flatness:

$$
Z_{\mathrm{BF}}
=\int\mathcal DA\,\mathcal DB\,
 e^{iS_{\mathrm{BF}}/\hbar}
\ \sim\ \int\mathcal DA\,\delta[F[A]].
$$

The symbol $\sim$ suppresses measure normalization and gauge-volume issues. The next step gives a precise finite-complex distributional expression, not a proof that this continuum functional integral already exists.

## 3. Discrete flatness becomes a spin sum

Choose a finite triangulation $\Delta$ of a four-manifold and its dual two-skeleton $\mathcal C$. The correspondence is

| Triangulation element | Dual element | Spin-foam interpretation |
|---|---|---|
| Triangle | Face $f$ | Representation label |
| Tetrahedron | Edge $e$ | Intertwiner |
| Four-simplex | Vertex $v$ | Local amplitude |

Assign $g_e\in G$ to each oriented dual edge. We use the same transport convention as the canonical note: an edge from $s(e)$ to $t(e)$ transforms as $g_e\mapsto u_{s(e)}g_eu_{t(e)}^{-1}$; consecutive traversals are multiplied in traversal order. The holonomy around a dual face is

$$
H_f=\overrightarrow{\prod_{e\subset\partial f}}g_e^{\varepsilon_{fe}},
\qquad \varepsilon_{fe}=\pm1.
$$

Changing the starting point conjugates $H_f$. The standard discrete BF flatness amplitude is

$$
Z_{\mathcal C}^{\mathrm{BF}}
=\int\prod_e dg_e\prod_f\delta_G(H_f).
$$

For manifolds with boundary, boundary holonomies are retained as arguments rather than all being integrated. Near a smooth connection, $H_f$ approximates the exponential of curvature integrated over the small dual face. A naive integral of $e^{i\langle B_f,\log H_f\rangle/\hbar}$ requires logarithm branches and a measure prescription. We therefore take the group-delta formula as the discrete definition, rather than claim that an ordinary Lie-algebra Fourier transform globally proves it.

For $G=\mathrm{SU}(2)$, Peter–Weyl theory gives the distributional character expansion

$$
\delta_{\mathrm{SU}(2)}(g)
=\sum_{j\in\frac12\mathbb N_0}d_j\chi_j(g),
\qquad d_j=2j+1.
$$

The normalization is fixed by $\int dg\,\delta(g)f(g)=f(1)$ and

$$
\int dg\,\overline{D^j_{mn}(g)}D^{j'}_{m'n'}(g)
=\frac{\delta_{jj'}\delta_{mm'}\delta_{nn'}}{d_j}.
$$

Substitution yields

$$
Z_{\mathcal C}^{\mathrm{BF}}
=\sum_{\{j_f\}}\prod_fd_{j_f}
\int\prod_edg_e\prod_f
\operatorname{Tr}_{V_{j_f}}
\left[\overrightarrow{\prod_{e\subset\partial f}}
D^{j_f}(g_e^{\varepsilon_{fe}})\right].
$$

Each character is a closed chain of matrix indices. An edge integration gathers the factors contributed by all faces meeting that edge. Negative orientations become dual representations after the indices have been arranged consistently.

These expressions need a regulator in general. For example, replace each delta by the heat kernel

$$
\delta_t(g)=\sum_jd_j e^{-t j(j+1)}\chi_j(g),\qquad t>0.
$$

On a finite compact-group complex this makes the expression finite and the expansions absolutely convergent. Removing $t$ can nevertheless diverge: lattice Bianchi identities can make flatness constraints redundant, producing delta functions evaluated at the identity. Compactness of $\mathrm{SU}(2)$ does not remove this problem. Gauge fixing and the treatment of residual flat-connection moduli matter; an arbitrary spin cutoff is not automatically topologically invariant.

## 4. Haar integration produces the intertwiner projector

For a tetrahedron dual to $e$, let $W_e$ be the tensor product of its four incident representation spaces, with duals included according to orientation. Its diagonal group action is $U_e(g)$. Define

$$
P_e:=\int_{\mathrm{SU}(2)}dg\,U_e(g).
$$

Haar invariance and unitarity give

$$
P_e^\dagger=\int dg\,U_e(g^{-1})=P_e,
\qquad
P_e^2=\int dg\,dh\,U_e(gh)=P_e.
$$

Moreover, $U_e(k)P_e=P_e$ for every $k$, while $P_e\iota=\iota$ for an invariant vector. Hence this is exactly the orthogonal projector onto $\operatorname{Inv}(W_e)$, not merely an operator whose image happens to contain invariant tensors. For an orthonormal basis,

$$
P_e=\sum_{\iota_e}|\iota_e\rangle\langle\iota_e|,
\qquad
(P_e)_{\mathbf m\mathbf n}
=\sum_{\iota_e}(\iota_e)_{\mathbf m}
\overline{(\iota_e)_{\mathbf n}}.
$$

Substituting this identity at every edge separates each projector into tensors at its endpoints. All remaining indices contract locally around dual vertices:

$$
Z_{\mathcal C}^{\mathrm{BF}}
=\sum_{\{j_f\},\{\iota_e\}}
\prod_f(2j_f+1)\prod_v
A_v^{\mathrm{BF}}(j_{f\supset v},\iota_{e\supset v}).
$$

Complex conjugation and dualization at an incidence follow its orientation. In this orthonormal-intertwiner convention there is no extra internal edge weight: $A_e=1$. Rescaling an intertwiner basis changes the visible edge factors, so a bare list of face and vertex weights is incomplete without a basis convention. The regulated formula carries the additional factors $e^{-tj_f(j_f+1)}$.

This is the four-dimensional compact BF state sum associated with Ooguri's construction [1]. The representation labels and intertwiners have emerged from the flatness integral; they were not inserted by analogy with canonical spin networks.

## 5. The four-simplex vertex is a boundary contraction

A four-simplex has five tetrahedra and ten triangles. Label its tetrahedra by $a=1,\ldots,5$; the shared triangle of tetrahedra $a$ and $b$ carries $j_{ab}=j_{ba}$. Its boundary graph is the complete graph on five nodes.

Orient each link from $a$ to $b$ when $a<b$. At node $a$, choose an invariant tensor with dual slots on outgoing links and ordinary slots on incoming links. Denote its components by $I_a(\{m_{ab}\}_{b\ne a})$, retaining those slot types. Then the local BF contraction is explicitly

$$
A_v^{\mathrm{BF}}
=\sum_{\{m_{ab}\}}
\left[\prod_{a=1}^5I_a(\{m_{ab}\}_{b\ne a})\right]
\prod_{a<b}\delta_{m_{ab}m_{ba}}.
$$

Every Kronecker delta pairs a vector slot with a covector slot. In an all-outward convention it is replaced by the corresponding invariant $\epsilon^{(j)}$ pairing. This is the evaluation of the boundary spin network at identity holonomies, with the link factors $\sqrt{d_j}$ stripped off. Thus it differs from the value of the normalized cylindrical basis function by $\prod_{a<b}\sqrt{d_{j_{ab}}}$.

Resolving each four-valent intertwiner into two trivalent ones introduces five intermediate spins. The resulting scalar depends on ten triangle spins and five recoupling spins, and is conventionally expressed as an $\mathrm{SU}(2)$ $15j$ symbol. Its phases and normalization are fixed here by the tensor contraction, not by an unspecified $15j$ convention.

Gluing two four-simplices across a tetrahedron sums over an orthonormal intertwiner basis on that tetrahedron: the identity $\sum_\iota|\iota\rangle\langle\iota|=P_e$ reconstructs the Haar integral. This explains why a vertex amplitude is a useful building block. It also exposes the remaining problem: this vertex still describes BF flatness, not gravitational propagation.

## 6. Gravitational simplicity changes the theory

For Lorentzian gravity the relevant group is $\mathrm{SL}(2,\mathbb C)$, the double cover of the proper orthochronous Lorentz group. The compact $\mathrm{SU}(2)$ calculation above is a model of the harmonic-analysis construction, not a substitution of $\mathrm{SU}(2)$ BF theory for four-dimensional gravity.

Let $\Sigma^{IJ}=e^I\wedge e^J$, choose $\epsilon_{0123}=+1$, and define the internal Hodge star by

$$
(\star\Sigma)^{IJ}=\frac12\epsilon^{IJ}{}_{KL}\Sigma^{KL},
\qquad \star^2=-1.
$$

A gravitational sector of a constrained Lorentzian BF formulation has the momentum two-form

$$
\mathcal B^{IJ}=\star\Sigma^{IJ}+\frac1\gamma\Sigma^{IJ},
\qquad
\Sigma=\frac{\gamma}{1+\gamma^2}
(\mathcal B-\gamma\star\mathcal B).
$$

With the corresponding pairing, the bulk action is the Holst form

$$
S[e,\omega]=\frac1{2\kappa}\int_M
\left(\star\Sigma^{IJ}+\frac1\gamma\Sigma^{IJ}\right)
\wedge F_{IJ}[\omega].
$$

For vacuum gravity without a cosmological constant, this restriction recovers Einstein's equations, rather than simply selecting some smaller BF theory. Take compactly supported variations, or boundary conditions and boundary terms that cancel the connection-variation surface term. Varying $\omega$ gives

$$
D_\omega\mathcal B
=\left(\star+\frac1\gamma\right)D_\omega(e\wedge e)=0.
$$

For real nonzero $\gamma$, the operator in parentheses is invertible, with inverse $\gamma(1-\gamma\star)/(1+\gamma^2)$. Hence

$$
D_\omega\Sigma^{IJ}
=T^I\wedge e^J-e^I\wedge T^J=0,
\qquad T^I:=D_\omega e^I.
$$

For an invertible tetrad in four dimensions this implies $T^I=0$, fixing $\omega$ to the torsion-free spin connection. Independently, tetrad variation gives

$$
\epsilon_{IJKL}e^J\wedge F^{KL}
+\frac2\gamma e^J\wedge F_{IJ}=0.
$$

The second term vanishes on the torsion-free solution by $D_\omega^2e_I=F_{IJ}\wedge e^J=0$. The remaining equation is the vacuum Einstein equation $G_{\mu\nu}=0$ in tetrad form. These are classical statements for nondegenerate tetrads; they do not establish that any particular quantum simplicity prescription has the same dynamics.

The restriction is that the untwisted bivectors come from a tetrad; arbitrary BF momenta do not. Degenerate configurations and other simplicity sectors require attention in a complete constrained formulation. Here we choose the displayed nondegenerate gravitational sector and spacelike tetrahedra, whose unit timelike normals have $\mathrm{SU}(2)$ stabilizers.

For a triangle in a tetrahedron with normal $n^I$, classical linear simplicity is $n_I\Sigma_f^{IJ}=0$, where $\Sigma_f=\int_f\Sigma$. In time gauge $n^I=(1,0,0,0)$, this says $\Sigma_f^{0i}=0$. To fix signs and units, set

$$
\mathcal J_f^{IJ}=\frac1{\kappa\hbar}\int_f\mathcal B^{IJ},
\qquad L_i=\frac12\epsilon_{ijk}\mathcal J_f^{jk},
\qquad K_i=-\mathcal J_f^{0i}.
$$

Writing $X_i=\tfrac12\epsilon_{ijk}\Sigma_f^{jk}$ gives

$$
L_i=\frac{X_i}{\kappa\gamma\hbar},\qquad
K_i=\frac{X_i}{\kappa\hbar},\qquad
C_i:=K_i-\gamma L_i=0.
$$

The rotation generator is therefore the same dimensionless angular momentum used for the quantum tetrahedron. Reversing the boost-generator convention reverses the written simplicity sign and must also change the representation convention below.

Quantum mechanically,

$$
[L_i,L_j]=i\epsilon_{ij}{}^kL_k,\quad
[L_i,K_j]=i\epsilon_{ij}{}^kK_k,\quad
[K_i,K_j]=-i\epsilon_{ij}{}^kL_k.
$$

Consequently,

$$
[C_i,C_j]
=i\epsilon_{ij}{}^k
\left[-2\gamma C_k-(1+\gamma^2)L_k\right].
$$

For real $\gamma$, imposing every $C_i\psi=0$ strongly would force $L_i\psi=0$, and then $K_i\psi=0$. This eliminates nonzero-area tetrahedral data. The obstruction is an operator-algebra fact; replacing strong imposition by weak imposition is not optional notation.

## 7. The Lorentzian EPRL map and its finite-spin qualification

We now specify the Engle–Pereira–Rovelli–Livine prescription [2, 3]. Use principal-series representations $\mathcal H_{(\rho,k)}$ with $\rho\in\mathbb R$ and $k\in\tfrac12\mathbb N_0$. Under the chosen rotation subgroup,

$$
\mathcal H_{(\rho,k)}\big|_{\mathrm{SU}(2)}
=\bigoplus_{l=k}^{\infty}V_l.
$$

The orthonormal canonical basis is $|\rho,k;l,m\rangle$. Our label and boost convention is fixed by the compression identity

$$
P_lK_iP_l=\frac{\rho k}{l(l+1)}L_i\big|_{V_l}
\qquad(l>0),
$$

where $P_l$ projects onto $V_l$. This is the convention used for the diagonal boost coefficient in Perez's review, with its $p$ renamed $\rho$ [3, Section 8]. It avoids the factor-of-two ambiguities of alternative principal-series labels.

Choose

$$
\rho=\gamma j,\qquad k=j,
\qquad
Y_\gamma^j:V_j\longrightarrow\mathcal H_{(\gamma j,j)},
\qquad
Y_\gamma^j|j,m\rangle=|\gamma j,j;j,m\rangle.
$$

This map is isometric and intertwines rotations:

$$
(Y_\gamma^j)^\dagger Y_\gamma^j=1_{V_j},
\qquad
D^{(\gamma j,j)}(h)Y_\gamma^j
=Y_\gamma^jD^j(h),\qquad h\in\mathrm{SU}(2).
$$

It is not an intertwiner for the full Lorentz group. Boosts connect the lowest spin $j$ to higher $l$ sectors. For $j>0$, the compression formula gives

$$
(Y_\gamma^j)^\dagger K_iY_\gamma^j
=\gamma\frac{j}{j+1}J_i,
\qquad
(Y_\gamma^j)^\dagger C_iY_\gamma^j
=-\frac{\gamma}{j+1}J_i.
$$

Thus this prescription does **not** make all simplicity matrix elements vanish exactly at finite $j$. Their size is suppressed relative to the angular-momentum scale in the large-spin limit.

A sharper measure is the positive master operator $M=\sum_iC_i^2$. Its eigenvalue on the spin-$l$ subspace of $\mathcal H_{(\rho,k)}$ is

$$
M_{\rho,k,l}
=\rho^2+1-k^2+(1+\gamma^2)l(l+1)-2\gamma\rho k
=(\rho-\gamma k)^2+1
 +(1+\gamma^2)\bigl[l(l+1)-k^2\bigr].
$$

For fixed $l$, minimizing over $\rho$ and $0\leq k\leq l$ selects $\rho=\gamma l$, $k=l$. At $l=j$,

$$
(Y_\gamma^j)^\dagger MY_\gamma^j
=\bigl[(1+\gamma^2)j+1\bigr]1_{V_j}.
$$

The violation is nonzero, but its squared size relative to $J^2=j(j+1)$ is $O(j^{-1})$. Restoring a physical factor $\hbar$ in the constraints makes the violation vanish as $\hbar\to0$, $j\to\infty$, with $\hbar j$ fixed. This is the semiclassical weak sense used here.

Alternatively, choosing $\rho=\gamma(j+1)$, $k=j$ makes the compressed matrix elements of $C_i$ vanish exactly for $j>0$. It still does not give $C_iY\psi=0$, because the components outside the lowest-spin subspace remain. With the representation labels fixed as above, the shift from $\gamma j$ to $\gamma(j+1)$ is a different finite-spin prescription, not merely a relabelling or normalization. The two choices agree only to leading order at large spin. At $j=0$, rotation covariance makes the compressed vector operators zero; expressions obtained by dividing by $j(j+1)$ must not be used there.

## 8. From the map to a gravitational vertex

The map becomes dynamical only when inserted into a vertex. Retain the oriented five-node boundary graph and tensors $I_a$ of Section 5. Attach $g_a\in\mathrm{SL}(2,\mathbb C)$ to each tetrahedron and define the finite-dimensional link kernel

$$
W_{ab}(g_a,g_b)
=(Y_\gamma^{j_{ab}})^\dagger
D^{(\gamma j_{ab},j_{ab})}(g_a^{-1}g_b)
Y_\gamma^{j_{ab}}.
$$

Its entries are completely specified matrix elements:

$$
(W_{ab})_{mn}
=\langle\gamma j_{ab},j_{ab};j_{ab},m|
D^{(\gamma j_{ab},j_{ab})}(g_a^{-1}g_b)
|\gamma j_{ab},j_{ab};j_{ab},n\rangle.
$$

The Lorentzian vertex in our unnormalized-link convention is

$$
A_v^\gamma(j_{ab},I_a)
=\int_{\mathrm{SL}(2,\mathbb C)^4}
\prod_{a=1}^{4}dg_a\;
\sum_{\{m_{ab}\}}
\left[\prod_{a=1}^{5}I_a(\{m_{ab}\}_{b\ne a})\right]
\prod_{a<b}(W_{ab})_{m_{ab}m_{ba}},
\qquad g_5=1.
$$

The row and column indices pair with the same dual and ordinary slots used in the BF contraction. Equivalently, one embeds each tetrahedral intertwiner with the tensor product of the appropriate $Y$ maps and dual maps, Lorentz-averages, and contracts the resulting boundary tensors. The displayed integral implements that operation without treating a noncompact group average as a bounded orthogonal projector.

Why are there four group integrations rather than five? The integrand depends on $g_a^{-1}g_b$ and is invariant under common left multiplication $g_a\mapsto h g_a$. Integrating this redundant variable would produce the infinite Lorentz-group volume. Fixing $g_5=1$ removes it. Right multiplication by tetrahedral rotations is absorbed by the $\mathrm{SU}(2)$ invariance of $I_a$. The remaining noncompact integrations are not normalized probability integrals; convergence is a separate analytic issue. Finiteness results for the gauge-fixed simplicial vertex do not establish convergence of an arbitrary spin-foam state sum.

For a closed finite complex, a commonly used local choice is

$$
Z_{\mathcal C}^\gamma
=\sum_{\{j_f\},\{\iota_e\}}
\prod_f(2j_f+1)\prod_vA_v^\gamma(j_f,\iota_e),
$$

with orthonormal $\mathrm{SU}(2)$ intertwiners and edge weight one. Here the face factor is part of the gravitational prescription. It is not obtained by simply evaluating the Lorentzian BF Plancherel density at $\rho=\gamma j$: that density would instead suggest a factor proportional to $(1+\gamma^2)j^2$, as in the presentation in [3]. A measure on constrained labels, edge normalizations, and the normalization of boundary states must be specified together. The displayed choice fixes them for this note, not for every model called EPRL.

For a simplicial region with boundary, one compatible normalization assigns $d_j^{1/2}$ to each open face and fixes the boundary labels $s_\partial=(j_\partial,\iota_\partial)$:

$$
Z_{\mathcal C}^\gamma(s_\partial)
=\sum_{j_{\mathrm{int}},\iota_{\mathrm{int}}}
\prod_{f\,\mathrm{internal}}d_{j_f}
\prod_{f\,\mathrm{boundary}}\sqrt{d_{j_f}}
\prod_vA_v^\gamma.
$$

This uses the normalized boundary spin-network basis of Section 1 and the bare vertex of Section 8; conjugations are fixed by boundary orientation. When gluing across a matching boundary graph, the two square-root face factors combine into the internal face weight, and the sum over orthonormal boundary intertwiners supplies the edge contraction. For a finite spin cutoff this is a finite sum of vertex integrals; removing the cutoff may reveal bubble divergences. Refining the complex introduces a further problem, distinct from convergence at fixed complex.

The kinematical connection to canonical LQG is explicit: the boundary labels are $\mathrm{SU}(2)$ spins and intertwiners, the map $Y_\gamma$ embeds their face spaces into Lorentz representations, and the flux normalization reproduces the canonical area spectrum. This does not prove that the amplitude is the projector onto the kernel of a particular canonical Hamiltonian constraint, nor that different refinements give one continuum physical inner product.

Finally, sharing the correct boundary space is weaker than recovering Einstein dynamics. Semiclassical tests must select boundary data corresponding to compatible, nondegenerate geometries, control orientation sectors and stationary points, and specify the large-spin or refinement limit being taken. Regge-like phases for suitable single-vertex data provide evidence in that restricted regime, not a general proof of the continuum theory. The established BF transformation and the additional gravitational prescription should remain distinguishable throughout those tests.

## Sources and further reading

The local starting points are [Muxin Han's spin-foam lecture notes](<Lecture/conferences/2026 loops/spin foam quantization by Muxin Han.md>) and [Jinsong Yang's angular-momentum and graphical-calculus notes](<Lecture/conferences/2026 loops/quantum mechanism angular momentum & graphic calculus by Jinsong Yang.md>). The first supplies the tetrahedral interpretation and BF-to-spin-sum route; the second supplies the representation-theoretic ingredients. The first-order classical bridge also uses [Xiangdong Zhang's general-relativity notes](<Lecture/conferences/2026 loops/advanced general relativity II by Xiangdong Zhang.md>). The Lorentzian representation map, its weak-simplicity qualification, and the vertex construction require the supplementary sources below.

1. Hirosi Ooguri, “Topological Lattice Models in Four Dimensions,” *Modern Physics Letters A* **7** (1992), 2799–2810. [arXiv:hep-th/9205090](https://arxiv.org/abs/hep-th/9205090). Original four-dimensional topological lattice construction.
2. Jonathan Engle, Etera Livine, Roberto Pereira, and Carlo Rovelli, “LQG vertex with finite Immirzi parameter,” *Nuclear Physics B* **799** (2008), 136–149. [arXiv:0711.0146](https://arxiv.org/abs/0711.0146). Original finite-Immirzi EPRL construction; conventions must be translated before comparing formulas.
3. Alejandro Perez, “The Spin Foam Approach to Quantum Gravity,” *Living Reviews in Relativity* **16** (2013), 3. [arXiv:1205.2019](https://arxiv.org/abs/1205.2019); [full text](https://arxiv.org/html/1205.2019v1); [published review](https://pmc.ncbi.nlm.nih.gov/articles/PMC5255902/). Especially the BF construction and Section 8 on Lorentzian representations, weak simplicity, and gauge-fixed amplitudes.
