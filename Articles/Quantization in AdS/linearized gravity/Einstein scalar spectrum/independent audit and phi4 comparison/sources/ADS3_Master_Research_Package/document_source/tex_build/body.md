# 1. The problem, conventions, and the route to the answer

## 1.1 What is being solved

The original question is the weak-gravity energy spectrum of a real scalar coupled minimally to Einstein gravity in global AdS₃. Even though pure three-dimensional Einstein gravity has no local bulk graviton polarization, the constrained metric response, boundary charges, and physical boundary modes affect the scalar spectrum. They must therefore enter the derivation before a scalar effective operator can be identified.

We fix the theory and boundary conditions, the boundary Hamiltonian measured by a fixed global clock, and the original quantum prescription. The free one-particle scalar representation has weights $(\Delta/2,\Delta/2)$ and energies $\Delta+p+q$, with $p,q\ge0$. The physical gap $\Delta$, rather than an unrenormalized mass parameter, is held fixed when the vacuum and one-body terms are subtracted. We study the normal-form branch with no independent free boundary-graviton occupation. This definition keeps all constraint backreaction and virtual boundary-graviton effects encoded in the pair interaction; inverse normal-form dressing reconstructs them in the original variables.

The expansion has the form

$$
E=E_0+Gg+o(G).
\tag{1.1}
$$

The coefficient is first defined on a fixed finite free block. Large particle number or high excitation is subsequently a limit of these coefficients. None of the limits in this note supplies, by itself, an error estimate uniform at fixed nonzero $G$. In particular, an $o(G)$ remainder is not replaced by $O(G^2)$ merely because the first nontrivial scalar operator is quartic.

**Complete finite solution** means a finite construction of all coefficients $g$, exact multiplicities, physical eigenspaces, spectral projectors, and global descendants in every allowed finite scalar shell. The roots may be represented by exact polynomials and isolating intervals. Completeness does not require a radical expression for a general root, a Bethe ansatz, a complete commuting family, or a nonperturbative spectrum. An explicit $S_5$ example shows why radical formulas would be an inappropriate completion criterion.

## 1.2 The central logical chain

The physical derivation first determines an effective pair operator. The finite spectral construction then treats that pair operator as its precise dynamical input. The remaining structures describe portions or limits of the same finite spectra.

$$
\begin{gathered}
\text{boundary-completed Einstein--scalar action}\\
\Downarrow\quad\text{canonical constraints, normal form, quantum subtraction}\\
W_N=\displaystyle\sum_{i<j}w_{ij}\\
\Downarrow\quad\text{physical Bose primaries and exact finite matrices}\\
\text{all finite coefficients, multiplicities, states, and descendants}\\
\Downarrow\quad\text{exact structure and separately ordered limits}\\
\text{collision kernels, clusters, high-excitation laws, and stable pencils}.
\end{gathered}
\tag{1.2}
$$

There are three distinct interfaces in the first step. The direct canonical finite-sum algorithm is constructed in the canonical chart and does not require reconstructing a covariant response at every spacetime point. The closed all-label pair formula is obtained on the specified common renormalized source/Hessian/observable domain, where the source-Casimir identity and reciprocity apply. Comparing this with a general continuum response representative additionally requires the chosen lapse and shift, the same self-adjoint boundary problem, and control of renormalized averaged endpoints. Chapter 3 and Appendix A identify each condition where it is used. An unfinished version of the last interface neither invalidates the independent finite canonical construction nor establishes a domain theorem that has not been proved.

Once the pair input is fixed, Chapters 5–10 are finite representation theory and analysis of its spectral limits. Their conditional dependence on that input is explicit; they do not require the optional continuum reconstruction. The finite construction in Chapter 5 is logically prior to the logarithmic-kernel and asymptotic results. In particular, it can determine the physical zero multiplicity by an exact rank before the closed formula for that multiplicity is known.

## 1.3 Unified notation

| Symbol | Meaning |
|---|---|
| $G$ | Newton's constant; never a Gram matrix |
| $\kappa$ | Coupling with $\kappa^2=16\pi G$ |
| $\Delta>1$ | Physical one-particle scalar gap and representation parameter |
| $\Delta_0,\mu_0$ | Bare quantities where the one-body subtraction requires them |
| $\mu=\Delta(\Delta-2)$ | Unit-radius physical mass-squared parameter |
| $N$ | Scalar particle number |
| $p,q$ | Single-particle excitation labels, or local polynomial degrees when explicitly declared |
| $M_L,M_R$ | Full many-particle free-level degrees, including descendants |
| $P,Q$ | Global-primary bidegrees |
| $E_0,J$ | Free energy and signed angular momentum |
| $k,\ell$ | Left and right pair relative labels; physical channels have $k+\ell$ even |
| $n,s$ | Pair radial index $n=\min(k,\ell)$ and nonnegative even spin $s=|k-\ell|$ |
| $\gamma_{k\ell}=g_{n,s}$ | Dimensionless pair coefficient multiplying $G$ |
| $C_k=(\Delta+k)(\Delta+k-1)$ | Pair chiral Casimir value |
| $D_L,U_L$, $D_R,U_R$ | Total lowering and raising operators |
| $\mathcal P_{N;P,Q}$, $d_N(P,Q)$ | Physical Bose-primary space and its dimension |
| $\Gamma$ | Physical Gram matrix in the explicitly stated coordinate basis |
| $W_N$ | First-order scalar coefficient operator $\sum_{i<j}w_{ij}$ |
| $b_N(Q)$ | Oriented right-degree Casimir baseline |
| $A_N=W_N-b_N(Q)I$ | Positive residual; the right degree is kept fixed in internal clusters |
| $a_{k\ell}$ | Positive residual pair coefficient on the bad-channel strip |
| $\kappa_N(P,Q)$ | Exact physical residual-kernel multiplicity |
| $\mathcal V_N,J_N$ | Vandermonde and degree $J_N=2N(N-1)$ of its fourth power |
| $a_{pq},c_{pq}$ | Formal creation and centered creation generators; products are occupation products |
| $\mathscr A,\mathscr B$ | Stable-$N$ leading and constant matrices, distinct from $A_N$ |
| $r=Q/P$ | Ratio used only in the balanced high-excitation limit |
| $p_N(r),k_N(r)$ | Geometric zero-atom fraction and exact physical kernel fraction |

The letters $x,y$ are polynomial coordinates, spectral variables, or generating-function variables only within an explicitly identified local calculation. The direct circular two-particle calculation uses total level $T$, avoiding confusion with particle number $N$. In the stable chiral algebra, $x=c_{20},y=c_{30}$. The source-and-claim map records the older notations and their conversion to this table.

## 1.4 Reading and proof dependencies

Chapters 2–4 reconstruct the physical input. Chapter 5 gives the complete finite answer and worked examples. Chapter 6 explains exact kernels, protected states, and the global coefficient gap. Chapter 7 studies fixed-$Q$ high-$P$ spectra, including sparse branches invisible to the empirical atomic measure. Chapter 8 treats two large degrees and the exponentially soft positive spectrum. Chapter 9 treats fixed degrees and large $N$. Chapter 10 states proved universality classes and their counterexamples. Chapter 11 collects the remaining limitations and open problems.

Appendices A–D provide the full physical analytic chain and ancillary formal transfer results. Appendix F contains the finite intertwiner and compiler formulas; G proves pair ordering and the sharp collision gap; K and L prove the complete high- and low-channel kernel classifications; O proves the precise algebraic obstructions. Appendix CL contains the cluster proofs, SC the balanced and soft proofs, ST the stable-pencil proofs, UN the general effective-operator determining identities, and V the reproduction record. Each major result has a stable identifier, such as FIN-01 or EX-01. The separate source-and-claim map gives its original proof locations, direct dependencies, absorbed audit corrections, implementation, and current versus inherited verification status.

The note presumes working knowledge of GR, QFT, perturbation theory, and covariant phase space. The less familiar mathematical structures are introduced through their concrete map to the physical operator or its metric. Long identities are included where needed to reconstruct a proof. The standard external results actually invoked are stated in the relevant proofs and linked in the bibliography; no novelty claim is based on a broad or incomplete literature search.

# 2. Classical theory, free modes, and the physical phase space

The spectral problem concerns the boundary Hamiltonian of a specified theory with a specified quantization. Both qualifications matter. The boundary clock fixes which energy is being measured; the quantum prescription fixes the one-body subtraction that accompanies the connected classical interaction. We first construct these inputs without deleting the gravitational constraints or the physical boundary modes.

## 2.1 Action and variational domain

Set the AdS radius to one, use signature $(-++)$, and put $\kappa^2=16\pi G$. At a timelike radial cutoff $\Gamma_R$, take

$$
\begin{aligned}
S_R={}&\frac1{\kappa^2}\int_{M_R}d^3x\sqrt{-g}\,(R+2)
+\frac2{\kappa^2}\int_{\Gamma_R}d^2x\sqrt{-\gamma}\,(K-1)\\
&-\frac12\int_{M_R}d^3x\sqrt{-g}\,
\bigl(g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi+\mu_0\phi^2\bigr),
\qquad
\mu_0=\Delta_0(\Delta_0-2),\quad \Delta_0>1 .
\end{aligned}
\tag{2.1}
$$

The timelike boundary term includes the extrinsic-curvature term and the unit-radius AdS counterterm. The initial/final terms and their corner contributions are retained in the canonical potential. A choice of endpoint polarization can change that potential by an endpoint functional; it cannot silently change the energy observable.

The reference solution is

$$
ds_0^2=-f\,dt^2+f^{-1}dr^2+r^2d\theta^2,
\qquad f=1+r^2,\qquad \theta\sim\theta+2\pi .
\tag{2.2}
$$

The center is smooth. The conformal boundary metric and its time coordinate $t$ are fixed. Allowed metric perturbations satisfy Brown–Henneaux falloffs:

$$
\delta g_{tt},\delta g_{t\theta},\delta g_{\theta\theta}=O(1),
\quad
\delta g_{tr},\delta g_{r\theta}=O(r^{-3}),
\quad
\delta g_{rr}=O(r^{-4}).
\tag{2.3}
$$

The scalar has the source-free fast falloff $\phi=O(r^{-\Delta_0})$, with the corresponding differentiated falloffs. In particular, the scalar variational boundary term scales as $r^{2-2\Delta_0}$ and vanishes. This is the domain used throughout the note; it is not the alternative-quantization domain.

We use the boundary-completed covariant phase-space construction of Harlow and Wu [HW]. If
$\delta L=E\cdot\delta\Phi+d\Theta$, and $\ell$ is the timelike boundary Lagrangian, stationarity on the allowed spatial boundary variations gives

$$
(\Theta+\delta\ell)|_{\Gamma}=dC,\qquad
\theta_\Sigma=\int_\Sigma\Theta-\int_{\partial\Sigma}C,
\qquad
\Omega=\delta\theta_\Sigma .
\tag{2.4}
$$

Thus the action, its boundary completion, and its variational domain fix the canonical structure together. The Hamiltonian convention is
$\iota_{X_H}\Omega=-\delta H$. Only proper diffeomorphisms, whose generators have zero asymptotic charge, are quotiented. Large Brown–Henneaux transformations remain physical. Formula (2.4) states the convention; the explicit ADM pullback below fixes the concrete potential and boundary momenta used in the calculation.

At the end of the one-body calculation, $\Delta$ denotes the prescribed physical one-particle gap and $\mu=\Delta(\Delta-2)$. Within a connected coefficient already multiplied by $G$, replacing $\Delta_0$ by $\Delta$ changes only higher orders. All final energies will be written as $E=E_0+Gg+o(G)$, at fixed finite labels. This notation records the fixed-order spectral coefficient; it does not by itself establish convergence of the infinite-dimensional quantum theory or existence of exact finite-$G$ branches.

## 2.2 Free scalar and gravitational modes

For a scalar mode $I=(n,j)$, put $a=|j|$, $X=f^{-1}$, and $\omega_I=\Delta+2n+a$. A Klein–Gordon normalized basis is

$$
u_{nj}=
\frac1{\sqrt{2\pi}}
\sqrt{\frac{(\Delta+n)_a}{(n+1)_a}}\,
e^{-i\omega_I t+ij\theta}
X^{\Delta/2}(1-X)^{a/2}
P_n^{(\Delta-1,a)}(1-2X).
\tag{2.5}
$$

Here $(q)_r$ is the rising factorial. The angular label in the radial function is $|j|$, including for negative angular momentum. The normalization follows directly from

$$
(u,v)_{\rm KG}
=i\int_0^\infty\frac{r\,dr}{f}\int_0^{2\pi}d\theta\,
(u^*\partial_tv-v\partial_tu^*)
\tag{2.6}
$$

and the Jacobi norm

$$
\int_0^1 X^{\Delta-1}(1-X)^a
\bigl[P_n^{(\Delta-1,a)}(1-2X)\bigr]^2dX
=
\frac{\Gamma(n+\Delta)\Gamma(n+a+1)}
{(2n+\Delta+a)\,n!\,\Gamma(n+\Delta+a)}.
\tag{2.7}
$$

Multiplication by the normalization in (2.5) leaves $1/\omega_I$, which cancels the factor $\omega_I$ from (2.6). Thus
$\phi=\sum_I(b_Iu_I+b_I^\dagger u_I^*)$ has
$[b_I,b_J^\dagger]=\delta_{IJ}$.

The free gravitational physical modes form two positive-norm towers. With $\sigma=\pm1$, $m\ge2$, and
$$
v^\sigma=dt+\frac{i\,dr}{rf}-\sigma\,d\theta ,
$$
one convenient TT representative is

$$
h^\sigma_{m,\mu\nu}
=\sqrt{\frac{m(m^2-1)}{8\pi}}\,
e^{-imt+i\sigma m\theta}
(1-X)^{m/2}v^\sigma_\mu v^\sigma_\nu .
\tag{2.8}
$$

The normalization refers to $g=g_0+\kappa h+\cdots$ and the symplectic form of (2.1). Different proper-gauge representatives describe the same free oscillator. These perturbations are locally diffeomorphic to AdS, but their asymptotic charges are nonzero. The vanishing of the normalization at $m=0,1$ identifies stabilizers, not additional oscillators to be recovered by division. The corresponding *matter source harmonics* must nevertheless remain in the constraints.

After vacuum subtraction,

$$
H_0=H_\phi+H_g
=\sum_I\omega_I b_I^\dagger b_I
+\sum_{m\ge2,\sigma}m a_{m\sigma}^\dagger a_{m\sigma},
\qquad
\Omega_0=i\sum_I db_I^*\wedge db_I
+i\sum_{m,\sigma}da_{m\sigma}^*\wedge da_{m\sigma}.
\tag{2.9}
$$

The target scalar branch has no independent free $a$-occupation *after normal-form transformation*. Its inverse image in the original variables contains virtual gravitons and matter backreaction.

## 2.3 Off-shell variables and the order of reduction

The on-shell expansion (2.5) identifies the positive-frequency solution space and its physical inner product. It is not an instruction to remove all other variables from the action. In an off-shell spatial expansion, the coefficients of the scalar spatial basis are arbitrary functions of time. Their momenta are independent canonical variables. The lapse, shift, conformal metric data, momentum constraints, and boundary embedding are retained until their equations and symplectic pullbacks have been obtained.

Explicitly, for ADM variables,

$$
\begin{aligned}
K_{ij}&=\frac{\dot\sigma_{ij}-D_iN_j-D_jN_i}{2N},\\
\pi^{ij}&=\frac{\sqrt\sigma}{\kappa^2}(K^{ij}-\sigma^{ij}K),
&
\pi_\phi&=\frac{\sqrt\sigma}{N}(\dot\phi-N^i\partial_i\phi).
\end{aligned}
\tag{2.10}
$$

The unreduced Hamiltonian is

$$
H[N,N^i]=\int_\Sigma(N\mathcal C+N^i\mathcal C_i)+B[N,N^i],
\tag{2.11}
$$
$$
\begin{aligned}
\mathcal C={}&
\frac{\kappa^2}{\sqrt\sigma}
(\pi^{ij}\pi_{ij}-\pi^2)
-\frac{\sqrt\sigma}{\kappa^2}({}^{(2)}R+2)
+\frac{\pi_\phi^2}{2\sqrt\sigma}
+\frac{\sqrt\sigma}{2}
(\sigma^{ij}\partial_i\phi\partial_j\phi+\mu\phi^2),\\
\mathcal C_i={}&-2\sigma_{ij}D_k\pi^{jk}+\pi_\phi\partial_i\phi .
\end{aligned}
\tag{2.12}
$$

The boundary generator $B$ is derived from the same action. Setting $\mathcal C=\mathcal C_i=0$ before finding $B$ would erase the energy being computed.

After deriving these equations, choose the regular maximal/conformal proper-gauge section. On the identity boundary-embedding section let

$$
\begin{gathered}
\bar\sigma=f^{-1}dr^2+r^2d\theta^2,\quad y=\sqrt f,\quad
\sigma=e^{2\Psi}\bar\sigma,\\
\pi^{ij}=e^{-2\Psi}\bar\pi^{ij},\quad
t^{ij}=\frac{\bar\pi^{ij}}{\sqrt{\bar\sigma}},\quad
\operatorname{tr}_{\bar\sigma}t=0,\quad
\chi=\frac{\pi_\phi}{\sqrt{\bar\sigma}}.
\end{gathered}
\tag{2.13}
$$

The exact constraints on this section read

$$
\bar D_jt^j{}_i=\frac12\chi\partial_i\phi,
\tag{2.14}
$$
$$
\kappa^2e^{-2\Psi}t:t
+\frac2{\kappa^2}(1+\bar\Delta\Psi-e^{2\Psi})
+\frac12e^{-2\Psi}\chi^2
+\frac12|\bar D\phi|^2
+\frac12\mu e^{2\Psi}\phi^2=0 .
\tag{2.15}
$$

For the matter-sourced part, $\Psi=\kappa^2u+\kappa^4v+\cdots$, so

$$
Lu=\frac{\rho}{2},\qquad
2Lv=t:t-u\chi^2+\mu u\phi^2-4u^2,\qquad
L=-\bar\Delta+2,\quad
\rho=\frac12(\chi^2+|\bar D\phi|^2+\mu\phi^2).
\tag{2.16}
$$

These follow by expanding at fixed $\pi_\phi$; keeping a velocity fixed would give a different contact expression.

The gravitational bulk canonical potential vanishes on this section:
$\pi^{ij}\delta\sigma_{ij}=2\pi^{ij}\sigma_{ij}\delta\Psi=0$.
This does not remove the boundary potential. Restore a boundary spatial embedding generated by $\xi$. Integration of the momentum constraint gives

$$
\int_\Sigma\pi^{ij}\mathcal L_{\delta\xi}\sigma_{ij}
=2\int_{\partial\Sigma}n_i\pi^{ij}\delta\xi_j
-\int_\Sigma\pi_\phi\,\delta\xi^i\partial_i\phi .
\tag{2.17}
$$

The last term cancels the scalar pullback term. The first is the physical boundary flux momentum, including the particular matter response. Consequently, in an angular harmonic $m$, writing
$$
t^i{}_j=e^{im\theta}
\begin{pmatrix}A&ryB\\ B/(ry)&-A\end{pmatrix},
$$
the zero-independent-boundary-momentum section is

$$
\lim_{r\to\infty}r^2B_m(r)=0,\qquad |m|\ge2 .
\tag{2.18}
$$

There is a regular homogeneous momentum solution in these harmonics, so center regularity alone does not impose (2.18). The global harmonics $m=0,\pm1$ retain their matter charges. Appendix A gives both inverses and their exceptional channels.

Finally, the vacuum-subtracted boundary energy density is

$$
B_R=\frac2{\kappa^2}
\bigl[ry(e^\Psi-1)-rf\partial_r\Psi\bigr]_{r=R}.
\tag{2.19}
$$

If $u=C(\theta)r^{-2}+o(r^{-2})$ and
$v=D(\theta)r^{-2}+o(r^{-2})$, its finite part is $6C+6\kappa^2D$. Pairing (2.16) with $y$, for which $Ly=0$, converts the bulk constraint into this boundary flux. It gives the canonical quartic

$$
\boxed{
H_4^{\rm con}
=\int_\Sigma\sqrt{\bar\sigma}\,y
\bigl(t:t-u\chi^2+\mu u\phi^2-4u^2\bigr).
}
\tag{2.20}
$$

This is the first indispensable dynamical input. It includes the momentum-constraint energy as well as the scalar response.

# 3. From unreduced OFPT to the scalar pair operator

## 3.1 The cubic vertex and its resonance zero

Define $z=r/(1+y)$ and the quadratic density moments

$$
D_m=\frac1{\sqrt{8\pi m(m^2-1)}}
\int_\Sigma\sqrt{\bar\sigma}\,
p_m(y)e^{-im\theta}:\rho:,
\qquad p_m(y)=z^m(y+m),\quad m\ge2.
\tag{3.1}
$$

The two gravitational chiralities use $D_{m,+}=D_m$ and
$D_{m,-}=D_m^\dagger$. Their mixed cubic is

$$
V_{g\phi^2}
=\sum_{m,\sigma}(a^\dagger_{m\sigma}F_{m\sigma}
+F^\dagger_{m\sigma}a_{m\sigma}),\qquad
F_{m\sigma}=mD_{m\sigma}+[H_\phi,D_{m\sigma}].
\tag{3.2}
$$

Both terms in $F$ have a dynamical origin. The asymptotic conformal coefficient has boundary weight two; varying the boundary embedding supplies $mD$. The cross term between the free gravitational momentum and the matter-sourced momentum supplies the second term. Indeed,

$$
\partial_t\rho=\frac2y\bar D_i(y^2j^i),
\qquad j^i=\frac12\chi\bar D^i\phi ,
\tag{3.3}
$$

and two integrations by parts in
$2\int y\sqrt{\bar\sigma}\,t^{ij}(\bar D_i\bar D_j-\bar\sigma_{ij})p_m$
give $\partial_t\int\sqrt{\bar\sigma}\,p_m\rho$.
The center term vanishes by smoothness, the radial term by $\Delta>1$, and the independent boundary-momentum flux by (2.18).

For signed external legs with frequency sum
$\Omega=\varepsilon\omega_I+\eta\omega_J$ and angular sum
$k=\varepsilon j_I+\eta j_J$, the creation-mode vertex is proportional to

$$
\delta_{k,\sigma m}(m-\Omega)
\int_1^\infty p_m(y)\rho_{IJ}^{\varepsilon\eta}(y)\,dy .
\tag{3.4}
$$

Thus the numerator vanishes *before division* at the possible cubic resonance $\Omega=m$. There is no arbitrary principal-value assignment. This factor also fixes which cubic may be combined with (2.20): an imported TT bulk vertex lacking the canonical boundary terms is not the vertex of this chart.

## 3.2 Complete degenerate normal form

Write $H=H_0+\kappa V_1+\kappa^2V_2+\cdots$, including the constraint, boundary, ordering, and counterterm terms in their appropriate coefficients. The mixed anti-Hermitian generator is

$$
S_{\rm mix}=\sum_{m,\sigma}
(a^\dagger_{m\sigma}D_{m\sigma}
-D^\dagger_{m\sigma}a_{m\sigma}),
\qquad V_{g\phi^2}=[H_0,S_{\rm mix}].
\tag{3.5}
$$

The full generator also includes the pure-gravity cubic. Its resonant part vanishes by the leading non-global Ward identity and scalar parity, as proved below. Hence $V_1=[H_0,S]$, with $S^\dagger=-S$, and

$$
\widetilde H=e^{\kappa S}He^{-\kappa S}
=H_0+\kappa^2\left(V_2+\frac12[S,V_1]\right)+\cdots .
\tag{3.6}
$$

**Proposition PHY-01 (degenerate OFPT identity).**
Let $P_E$ project onto the entire free energy-$E$ eigenspace, including all scalar multiplicities and all boundary-graviton occupations, and let $Q_E=1-P_E$. Then

$$
\boxed{
P_E\left(V_2+\frac12[S,V_1]\right)P_E
=P_EV_2P_E+
P_EV_1Q_E(E-Q_EH_0Q_E)^{-1}Q_EV_1P_E .
}
\tag{3.7}
$$

For $E_a=E_c=E$, the two commutator terms each contribute
$\frac12(V_1)_{ab}(V_1)_{bc}/(E-E_b)$.
An intermediate $b$ at energy $E$ contributes zero because
$P_EV_1P_E=0$. A block-diagonal addition to $S$ also multiplies this zero. This proves the identity without an isolated-state assumption.

At fixed $E$, $P_E$ is finite dimensional: $N\Delta\le E$ and every occupied graviton has $m\le E$. The off-block sums in (3.7) can still be infinite. The one-body contractions therefore require regulation even though the external block is finite.

Let $\mathcal R$ retain free-energy weight zero, equivalently
$\mathcal RA=\sum_EP_EAP_E$ on the algebraic finite-energy domain. Boundary-vacuum compression of the mixed commutator gives

$$
\begin{aligned}
W_{\rm ex}={}&-\sum_{m\ge2}m\{D_m^\dagger,D_m\}\\
&-\frac12\sum_{m\ge2}
\bigl([D_m^\dagger,[H_\phi,D_m]]
+[D_m,[H_\phi,D_m^\dagger]]\bigr).
\end{aligned}
\tag{3.8}
$$

The second line is at most quadratic in scalar oscillators. Consequently the connected four-leg term is

$$
\boxed{
\mathcal K_4=H_4^{\rm con}-\sum_{m\ge2}m\{D_m^\dagger,D_m\},
\qquad
W=16\pi[\mathcal K_4]_{22,\rm res}.
}
\tag{3.9}
$$

The anticommutator already includes the two conjugate angular harmonics. Its classical symbol is $2|D_m|^2$; another chirality factor must not be added.

## 3.3 Why the scalar branch is invariant in the full free block

There are three separate issues: boundary-oscillator mixing, scalar-number-changing resonance, and the lower-degree quantum terms. Each needs its own argument.

For a global charge $Q_0$ of energy weight $s$, transform the charge and Hamiltonian together. The degree-four Ward equation is

$$
(\operatorname{ad}H_0-s)\widetilde Q_2^{[4]}
+[W^{[4]},Q_0]_{\rm cl}=0 .
\tag{3.10}
$$

Projection between energies $E+s$ and $E$ removes the first term. Hence
$[\mathcal RW^{[4]},Q_0]_{\rm cl}=0$.
This is a consequence of the boundary-completed classical action: stress conservation, the Einstein Bianchi identity, and the vanishing spatial flux imply the required Noether identity. No regulated one-body quantum Ward identity is assumed at this step.

The non-global charges have the crucial singular leading term

$$
L_{-m}=\kappa^{-1}c_m a_m^\dagger+O(1),\qquad
L_m=\kappa^{-1}c_m a_m+O(1),\qquad
c_m=\sqrt{2\pi m(m^2-1)},\quad m\ge2 ,
\tag{3.11}
$$

with a second barred tower. Their order-$\kappa$, degree-three Ward equation is

$$
(\operatorname{ad}H_0-s)\widetilde Q_1^{[3]}
+[W^{[4]},Q_{-1}^{[1]}]_{\rm cl}=0 .
\tag{3.12}
$$

To see exactly what the projection does, decompose $A=\sum_\nu A_\nu$ by
$[H_0,A_\nu]_{\rm cl}=\nu A_\nu$. If $Q_{-1}$ has weight $s$, then
$[A_\nu,Q_{-1}]$ has weight $\nu+s$. Its weight-$s$ part therefore comes only from $A_0=\mathcal RA$. Equation (3.12) gives

$$
[\mathcal RW^{[4]},a_{m\sigma}]_{\rm cl}
=[\mathcal RW^{[4]},a^*_{m\sigma}]_{\rm cl}=0 .
\tag{3.13}
$$

A polynomial commuting with every oscillator and its conjugate is independent of those variables. This proves that the *complete* resonant quartic is scalar-only, including cancellations involving the gravitational quartics; it does not merely evaluate the Hamiltonian at $a=0$. The same argument one order earlier makes the resonant cubic independent of all gravitational variables. A scalar-only cubic is forbidden by $\phi\mapsto-\phi$, proving the full cubic nonresonance used in (3.6). Commutators with linear oscillators have no higher Moyal terms, so the conclusion applies to the quantum degree-four coefficient.

**Proposition PHY-02 (scalar-sector closure and number conservation).**
On every fixed finite energy block, in the prescription of Section 3.4, the zero-independent-graviton scalar sector is invariant through order $G$, and its connected quartic preserves scalar particle number.

For the number-changing part, let $A_{31}$ be the normally ordered
$b^{\dagger3}b$ component. The free global charges are number-preserving bilinears, so their action preserves creation and annihilation degrees separately. Thus $A_{31}$ itself is an intertwiner. It annihilates the one-particle lowest state because its possible output has energy at least $3\Delta>\Delta$. Every one-particle state is generated from that lowest state by the two raising operators, so $A_{31}$ annihilates every one-particle state. Acting on a fixed incoming mode then leaves a linear combination of independent normalized unordered three-particle states. Every symmetrized coefficient of $A_{31}$ is therefore zero. Its adjoint vanishes too. This exhausts the coefficients precisely because there is one annihilation operator; adding spectators cannot restore them.

This proof includes integer $\Delta$. Indeed, kinematics alone permits $1\to3$ only when
$$
p_{\rm in}-p_1-p_2-p_3=\Delta,\qquad
q_{\rm in}-q_1-q_2-q_3=\Delta ,
$$
so generic-mass nonresonance would leave precisely those integer masses untreated. The intertwiner proof closes them. Pure creation or annihilation quartics are excluded by positive energy.

The remaining quantum terms have degree two or zero. Scalar parity forbids a mixed $a b$ bilinear. Two creations or two annihilations cannot be resonant because all physical energies are positive. A scalar $b_I^\dagger b_K$ that preserves $E,J$ has $I=K$. A gravitational number-preserving bilinear annihilates the gravitational vacuum after its constant is subtracted. Thus no unknown pure-gravity quadratic energy can mix this scalar branch with a graviton-occupied state.

Pure-gravity vertices also do not hide a scalar-vacuum compression. A rotationally invariant gravitational cubic has no linear Wick trace: after contracting a conjugate pair, its remaining oscillator would have to have zero angular momentum, whereas every physical graviton has angular momentum $\pm m\ne0$. Acting on the vacuum, the pure-gravity cubic creates three gravitons; the mixed cubic creates one. They have no common intermediate graviton sector. Pure-gravity self-contractions act identically on every spectator scalar state and are removed by vacuum subtraction.

## 3.4 Quantization and the physical-gap subtraction

The chosen quantization uses the canonical Liouville measure, paired proper-constraint and gauge-fixing determinants, midpoint time slicing, and Weyl ordering on a regular local Darboux chart. It is useful to make the determinant cancellation explicit. For proper constraints $C_A$, gauges $\chi_A$, and
$\mathsf M_{AB}=\{\chi_A,C_B\}$, the second-class bracket matrix is

$$
\begin{pmatrix}0&-\mathsf M^T\\ \mathsf M&\mathsf B\end{pmatrix},
\qquad
\det\begin{pmatrix}0&-\mathsf M^T\\ \mathsf M&\mathsf B\end{pmatrix}
=(\det\mathsf M)^2 .
\tag{3.14}
$$

In adapted local canonical coordinates $(s,\Pi;Q,P)$,
$C=\mathsf M(Q,P)\Pi+\cdots$ and $\chi=s$, so
$$
\delta(C)\delta(s)|\det\mathsf M|\,ds\,d\Pi\,dQ\,dP
=\delta(\Pi)\delta(s)\,ds\,d\Pi\,dQ\,dP .
$$
The cancellation is made at the finite regulator before determinant limits. It is not a statement about a global gauge chart or independently regularized determinants.

A cubic/cubic Weyl commutator has degrees four and zero: the third-derivative Moyal term differentiates both cubics completely. A quartic-generator commutator with quadratic $H_0$ is exactly classical and has zero resonant projection. Thus a canonical change at this order adds no independent scalar quadratic Egorov term. This fact does **not** remove the actual quadratic Weyl contraction of $\mathcal K_4$.

For every scalar leg use $e^{-\tau\omega_I/2}$, and regulate the two boundary towers with compatible paired Abel factors. The completed one-body calculation has the following chain, derived in Appendix B:

1. The $a^2\phi^2$ seagull and the scalar-energy-weighted double commutator in (3.8) cancel by a free radial virial identity. Positive-kernel bounds control the joint scalar/boundary regulator limit.
2. The remaining Weyl scalar contraction splits into a Hartree source and an exchange term. The full regulated vacuum stress is subtracted *before* applying the constraint inverse, so the Hartree contribution cancels at every $\tau>0$.
3. The exchange term obeys, for every fixed external mode $I$,
   $$
   s_I^{\rm X}(\tau)=-\frac{C_I}{\tau}+o(1),\qquad
   C_I=(4\mu+2)\int_1^\infty\widehat R_I^2\,dy
   +2\int_1^\infty\frac{\widehat R_I^2}{y^2}\,dy ,
   \tag{3.15}
   $$
   where $\widehat R_I$ is the radial mode with its angular $1/\sqrt{2\pi}$ removed.
4. The single local kinetic insertion
   $$
   S_{\rm ct,X}=-\frac12\int\sqrt{-g}\,
   Z_\tau(r)g^{\mu\nu}\partial_\mu\phi\partial_\nu\phi,\qquad
   Z_\tau(r)=-\frac{4G}{\tau y}
   \tag{3.16}
   $$
   contributes $GC_I/\tau$, with the same external-leg weight. The surviving matrix element is
   $e^{-\tau\omega_I}[s_I^{\rm X}+C_I/\tau]\to0$.

The tadpole counterterm at the required order is
$$
S_{\rm ct,tad}
=-\frac12\int\sqrt{-g_0}\,T_\tau^{\mu\nu}
(g-g_0)_{\mu\nu}.
\tag{3.17}
$$
Its lapse and conformal variations cancel the two regulated Hartree source components. A vacuum-energy subtraction as a number would not perform this cancellation. The coefficient in (3.16) depends on the fixed regulator clock; it is local in this prescription and need not be separately isometry invariant at finite $\tau$.

**Proposition PHY-08 (one-body subtraction at fixed physical gap).** A remaining finite mass insertion $-G\delta\mu_{\rm fin}\int\sqrt{-g}\phi^2/2$ changes every one-particle level by
$G\delta\mu_{\rm fin}/[2(\Delta-1)]$. Fixing $E_{00}^{1p}=\Delta$ removes this common term. Therefore

$$
\boxed{E_{nj}^{1p}=\Delta+2n+|j|+o(G),\qquad g^{1p}_{nj}=0.}
\tag{3.18}
$$

This is a loop, ordering, and subtraction result. It does not assert absence of a bare self-energy. The same one-body term is subtracted once in every Fock sector; there is no extra $N$-dependent mass prescription. The present counterterms add no independent $G\phi^4$ coupling.

## 3.5 The unique Fock lift

Let $I\le J$ be unordered mode labels and define

$$
B^\dagger_{IJ}=\frac{b_I^\dagger b_J^\dagger}{\sqrt{1+\delta_{IJ}}},
\qquad |IJ\rangle=B^\dagger_{IJ}|0\rangle .
$$

**Proposition PHY-03 (unique two-body lift).**
If $\mathsf M_{IJ;KL}=\langle IJ|W|KL\rangle$, the complete scalar correction is

$$
\boxed{
W=\sum_{I\le J,K\le L}
\mathsf M_{IJ;KL}B^\dagger_{IJ}B_{KL},
\qquad
W_N=\sum_{1\le i<j\le N}w_{ij}.
}
\tag{3.19}
$$

Indeed $B_{KL}|MN\rangle=\delta_{(KL),(MN)}|0\rangle$; every normally ordered quartic coefficient is recovered from the two-particle restriction. There is no nonzero quartic that acts only beginning at three particles. On a symmetric $N$-tensor, two annihilations select an unordered pair and two creations replace it, producing exactly the sum in (3.19). For the single-mode check, $\mathsf M_{00;00}=m$ gives
$W=(m/2)b^{\dagger2}b^2$, with eigenvalue $mN(N-1)/2$.

The absence of an irreducible three-body coefficient here follows from the minimal action and its coupling/field-degree count. It is not a claim that gravity is pairwise at every order.

## 3.6 The classical response comparison and its precise domain

The canonical route above defines and evaluates the operator without choosing a spacetime response kernel. A second route explains its relation to classical elimination, provided the *same* Hessian, boundary data, observable, and endpoint prescription are used.

For a quadratic scalar functional $D$, write
$\dot D=\{D,H_\phi\}$. The two positive-norm oscillators have
$D_+=D$, $D_-=D^*$ and $F_\sigma=mD_\sigma-i\dot D_\sigma$.
The graph

$$
a_{m,+}=-\kappa D_m,\qquad a_{m,-}=-\kappa D_m^*
\tag{3.20}
$$

has vanishing gravitational symplectic pullback:
$$
i\kappa^2(dD^*\wedge dD+dD\wedge dD^*)=0 .
$$
Its free gravitational energy is $+2\kappa^2m|D|^2$, and its mixed energy is
$-4\kappa^2m|D|^2$; the $\dot D$ terms cancel between chiralities. Hence

$$
H_{\rm graph}
=H_\phi+\kappa^2\left(H_4^{\rm con}
-2\sum_m m|D_m|^2\right)+\cdots .
\tag{3.21}
$$

The oscillator equation $(i\partial_t-m)a_\sigma=\kappa F_\sigma$ is satisfied on the free scalar flow. Scalar feedback begins at $\kappa^2$, so its contribution to the graph equation begins at $\kappa^3$. When differentiating the full Hamiltonian, the scalar derivative is taken at fixed $a$ before restriction; the paired $\dot D$ forces cancel and yield exactly the derivative of (3.21). This establishes the retained dynamics to the required order. The graph selects a particular response in a Lagrangian plane of the gravitational phase space; it is not a quotient of the two physical oscillators.

Let $\mathcal E^{(1)}$ be the linearization of $G_{\mu\nu}-g_{\mu\nu}$. For a response $k[T]$ satisfying
$\mathcal E^{(1)}k=T/2$, the boundary-completed quadratic action is

$$
S^{(4)}_{k,\phi}
=\kappa^2\left[-\frac12\langle k,\mathcal E^{(1)}k\rangle
+\frac12\langle T,k\rangle\right].
\tag{3.22}
$$

Stationary substitution gives $+\kappa^2\langle T,k[T]\rangle/4$. To identify its secular Hamiltonian with (3.21), require the following finite-source domain:

- The metric reconstruction solves the lapse/shift gauge-preservation equations in the allowed boundary domain, with any kernel or homogeneous data explicitly fixed.
- The responses belong to the same renormalized Hessian variational domain and have the same fixed boundary cylinder and clock.
- The induced endpoint $B(t)$, including the canonical/covariant scalar-coordinate change, obeys $B(T)/T\to0$. Bounded quasiperiodic reconstructions suffice.

**Proposition PHY-04 (response bridge on this domain).**
For finite free scalar external histories satisfying those conditions,

$$
\boxed{
[\mathcal K_4^{\rm cl}]_{\rm res}
=-\frac14\left[
\int_\Sigma r\,dr\,d\theta\,
T^{\mu\nu}k_{\mu\nu}[T]\right]_{\rm res}.
}
\tag{3.23}
$$

The proof uses the canonical first-order action restricted to (3.20): its extra symplectic term is zero, so the quartic action is
$-\kappa^2\int\mathcal K_4^{\rm cl}dt+[B]$.
The scalar-coordinate change contributes a free equation-of-motion term and an endpoint. The former vanishes on the external modes; the latter vanishes after division by elapsed time.

Only source-space reciprocity is needed. For two reconstructed responses,
the Hessian Green identity gives
$$
\langle k_1,\mathcal E^{(1)}k_2\rangle
-\langle\mathcal E^{(1)}k_1,k_2\rangle
=\text{completed spatial flux}+\text{temporal endpoint}.
$$
The common variational domain removes the spatial flux, and the averaged endpoint vanishes. Thus
$\langle T_1,k_2\rangle_{\rm res}
=\langle k_1,T_2\rangle_{\rm res}$.
This proves the reciprocity actually used, without claiming a self-adjoint inverse on every off-shell conserved tensor.

A bounded homogeneous difference $\mathcal L_\zeta g_0$ changes the pairing by
$2\nabla_\mu(T^{\mu\nu}\zeta_\nu)$. Its radial term is
$O(r^{2-2\Delta})$, and its bounded temporal primitive averages to zero. A large transformation need not be proper for this averaged identity; it remains physically large. In contrast, a secular primitive $tC_0$ has derivative $C_0$ with nonzero average. Old secular representatives therefore require simultaneous transport of the observable and endpoint and cannot be inserted into (3.23) without that check.

The graph proof establishes the reduced symplectic identity and canonical quartic. Bounded oscillator coordinates alone do not prove existence of every continuum lapse/shift reconstruction or finiteness of every renormalized endpoint. Those extensions remain conditional. The direct finite canonical evaluation in Appendix A does not require them. The source-Casimir derivation in the next chapter uses (3.23) on the explicitly matching finite-source domain; it is not an independent proof that every alternative response prescription has that domain.

# 4. The Einstein pair kernel and its representation dictionary

## 4.1 One-particle and pair representations

Use chiral excitation labels
$$
p=n+\max(j,0),\qquad q=n+\max(-j,0).
$$
Then
$$
\mathcal H_1=D^+_{\Delta/2,L}\otimes D^+_{\Delta/2,R},
\qquad E^{(0)}_{pq}=\Delta+p+q,\qquad J_{pq}=p-q.
\tag{4.1}
$$

A convenient polynomial realization of one chiral factor is
$$
L_-=\partial_z,\qquad
L_0=z\partial_z+\frac{\Delta}{2},\qquad
L_+=z^2\partial_z+\Delta z,
\qquad
\langle z^a,z^b\rangle=\delta_{ab}\frac{a!}{(\Delta)_a}.
\tag{4.2}
$$
For $\Delta>1$, the same norm follows from
$(\Delta-1)\pi^{-1}(1-|z|^2)^{\Delta-2}d^2z$ on the disk.
The normalized monomial is
$e_a(z)=\sqrt{(\Delta)_a/a!}\,z^a$.
This is the physical inner product, inherited from (2.6), not an arbitrary Euclidean norm on polynomial coefficients.

The pair decomposition is multiplicity free in each chirality:
$$
D^+_{\Delta/2}\otimes D^+_{\Delta/2}
=\bigoplus_{k\ge0}D^+_{\Delta+k}.
\tag{4.3}
$$
One can prove completeness directly at every finite degree: the unique new lowest vector at degree $k$ is $(z_1-z_2)^k$; descendants of the lower-degree lowest vectors account for the remaining degree-$k$ dimension. Their pair-Casimir eigenvalues
$C_k=(\Delta+k)(\Delta+k-1)$ are distinct.

In a normalized oscillator basis, the chiral primary coefficients are
$$
v_p^{(k)}
=\frac{(-1)^p(\Delta)_k}
{\sqrt{\mathcal N_k(\Delta)_p(\Delta)_{k-p}p!(k-p)!}},
\qquad
\mathcal N_k=\frac{(2\Delta+k-1)_k}{k!}.
\tag{4.4}
$$
The lowering relation and terminating Vandermonde identity prove their normalization. Explicitly,
$$
v_{p+1}^{(k)}\sqrt{(p+1)(\Delta+p)}
=-v_p^{(k)}\sqrt{(k-p)(\Delta+k-p-1)},
\qquad
\sum_{p=0}^k|v_p^{(k)}|^2=1 .
$$

The normalized identical-particle primary is
$$
|P_{k\ell}\rangle
=\frac1{\sqrt2}
\sum_{p=0}^k\sum_{q=0}^{\ell}
v_p^{(k)}v_q^{(\ell)}
b^\dagger_{p,q}b^\dagger_{k-p,\ell-q}|0\rangle,
\qquad k+\ell\ \text{even}.
\tag{4.5}
$$
The exchange sign is $(-1)^{k+\ell}$; odd total parity gives zero.
The factor $1/\sqrt2$ converts a normalized symmetric labelled tensor to a normalized Fock vector, including repeated modes. Define
$$
n=\min(k,\ell),\qquad j=k-\ell,\qquad s=|j|,\qquad
\gamma_{k\ell}(\Delta)=g_{n,s}(\Delta).
\tag{4.6}
$$
The symbol $g_{1,0}$, for example, means the spin-zero radial primary $k=\ell=1$, not the Bose-forbidden pair $k=1,\ell=0$.

## 4.2 A direct canonical integral fixes an entire boundary row

The global intertwining identity makes $w$ a scalar on each representation in (4.3), but it does not fix that scalar. To determine it dynamically, temporarily distinguish two equal-mass fields and put one particle in the ground mode and the other in the circular mode of angular momentum $J\ge0$:

$$
R_J=c_Jr^Jf^{-(\Delta+J)/2},\qquad
c_J^2=\frac{(\Delta)_J}{2\pi J!}.
\tag{4.7}
$$

Set
$$
K_J=(R'_J)^2+\frac{(\Delta+J)^2}{f^2}R_J^2,\qquad
e_J=fK_J+\left(\frac{J^2}{r^2}+\mu\right)R_J^2 .
$$
The stationary canonical constraints are
$M'_J=re_J$, $D'_J=-rK_J$,
$M_J(0)=0$, $D_J(\infty)=0$. The one-particle ground source gives
$$
M_0=\frac{\Delta}{2\pi}(1-f^{1-\Delta}),\qquad
D_0=\frac{\Delta}{4\pi}f^{-\Delta}.
\tag{4.8}
$$
The source here is a one-particle expectation; the response to a single polarized tensor $T[u_{00},u_{00}^*]$ is half as large.

Varying the second scalar Hamiltonian at fixed canonical momentum yields the actual product-state expectation
$$
\mathscr D_J=-32\pi^2\int_0^\infty r\,dr\,
(D_0e_J+M_0K_J).
\tag{4.9}
$$
Direct differentiation gives
$K_J/R_J^2=(\Delta^2+J^2/r^2)/f$ and
$e_J/R_J^2=2\Delta(\Delta-1)+2J^2/r^2$.
The substitution $x=f^{-1}$ reduces (4.9) to
$$
\begin{aligned}
\mathscr D_J
={}&-8\pi\Delta c_J^2
\bigl[
\Delta^2B(\Delta,J+1)
+J^2B(\Delta+1,J)
-\Delta B(2\Delta-1,J+1)
\bigr]\\
={}&-4\Delta^2+
\frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J}.
\end{aligned}
\tag{4.10}
$$
For $J=0$, the $J^2$ term is omitted before evaluating the beta function. For $J>0$, use
$J^2B(\Delta+1,J)=\Delta J B(\Delta,J+1)$.
This evaluates an infinite family of original canonical integrals, rather than fitting finitely many seeds.

Let $x_{k\ell}$ be the distinguishable crossed primary coefficient. Free endpoint Clebsch–Gordan probabilities give
$$
\mathscr D_J=\sum_{k=0}^Jw_{Jk}x_{k0},\qquad
\sum_kw_{Jk}=1,\quad
w_{J0}=\frac{(\Delta)_J}{(2\Delta)_J},\quad
w_{JJ}=\frac{(\Delta)_J}{(2\Delta+J-1)_J}>0.
\tag{4.11}
$$
Starting at $J=0$, this triangular system uniquely gives
$$
x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},
\qquad x_{k0}=-4\Delta^2\quad(k\ge1).
\tag{4.12}
$$
No high-spin growth hypothesis has entered.

## 4.3 The Einstein equation supplies the remaining dynamical recurrence

The source-Casimir route is an efficient all-label evaluation of the same four-linear pairing on the matching domain of Proposition PHY-04. It uses the Einstein equation, not just global symmetry. For symmetric tensors define
$$
\mathcal Pq=q-\frac12g_0\operatorname{tr}q,\quad
C_\nu[q]=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu\operatorname{tr}q,\quad
\mathcal Cq=\frac12(\Box+6)q-g_0\operatorname{tr}q .
$$
The off-shell tensor identity is
$$
\mathcal E^{(1)}q
=-\mathcal P(\mathcal C-2)q
+\mathcal P\nabla_{(\mu}C_{\nu)}[q].
\tag{4.13}
$$
It does not impose de Donder gauge. Applying it to the response leg and transferring the proper-gauge derivative against conserved sources reduces the crossed Einstein equation to a local stress contraction.

Put $h_n=\Delta+n$, $C_n=h_n(h_n-1)$. The resulting discrete equation is
$$
(\mathcal L_k+\mathcal L_\ell-2)x_{k\ell}=S_{k\ell},
\tag{4.14}
$$
$$
\begin{aligned}
(\mathcal Lf)_n&=a_n(f_{n+1}-f_n)+c_n(f_{n-1}-f_n),\\
a_n&=\frac{(n+1)(\Delta+n)(2\Delta+n-1)}
{2(2\Delta+2n-1)},\\
c_n&=\frac{n(\Delta+n-1)(2\Delta+n-2)}
{2(2\Delta+2n-1)} .
\end{aligned}
\tag{4.15}
$$
The independent local source calculation gives
$$
\begin{aligned}
S_{nn}&=\frac{4(C_n-\mu)(2C_n+\mu)}{2h_n-1},\\
S_{n+1,n}=S_{n,n+1}
&=\frac{4h_n(n+1)(2\Delta+n-1)(2h_n^2-\mu)}
{(2h_n-1)(2h_n+1)},\\
S_{k\ell}&=0\qquad(|k-\ell|\ge2).
\end{aligned}
\tag{4.16}
$$
Appendix C derives the local scalar/vector source normalizations and proves the hypergeometric coefficient identity converting (4.13) to (4.14). These are the steps that make the recurrence dynamical.

The identities
$$
\mathcal L1=0,\qquad \mathcal LC_n=2C_n-\mu
\tag{4.17}
$$
show that $u_n=4\mu-8C_n$ solves the constant-tail equation. Starting from (4.12), the zero-source region $k\ge n+2$ propagates a constant upper-triangular row into the next row. The diagonal equation, whose coefficient is negative, then gives
$$
x_{k\ell}=u_{\min(k,\ell)}\quad(k\ne\ell),\qquad
x_{nn}=u_n\frac{2h_n-2}{2h_n-1}.
\tag{4.18}
$$
The adjacent-band equation is an independent rational identity. Uniqueness follows without a condition at infinity: $a_\ell>0$, so (4.14) solves for row $\ell+1$ from rows $\ell,\ell-1$; at $\ell=0$, $c_0=0$.

## 4.4 Annihilation channels and the final coefficient

Identical real scalars also have an annihilation pairing. A local rank-two primary source has center rotational weight at most two. Bose symmetry therefore leaves only spin zero and spin two. Their normalized responses, explicitly evaluated in Appendix C, give
$$
g^{\rm ann}_{n,0}
=-\frac{2(C_n+\mu)^2}
{(2h_n-3)(2h_n-1)(2h_n+1)},
\tag{4.19}
$$
$$
g^{\rm ann}_{n,2}
=\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h_n-1)(2h_n+1)(2h_n+3)} .
\tag{4.20}
$$

**Proposition PHY-05 (Einstein pair kernel).**
In the fixed canonical and matching source prescription above, the dimensionless pair coefficient is

$$
\boxed{
g_{n,s}(\Delta)=
\begin{cases}
\displaystyle
u_n\frac{2h_n-2}{2h_n-1}
-\frac{2(C_n+\mu)^2}
{(2h_n-3)(2h_n-1)(2h_n+1)},&s=0,\\[2mm]
\displaystyle
u_n+
\frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{(2h_n-1)(2h_n+1)(2h_n+3)},&s=2,\\[2mm]
u_n,&s\ge4 ,
\end{cases}
}
\tag{4.21}
$$

where $n\ge0$ and $s$ is even. The pair operator is
$$
w=\sum_{k+\ell\ {\rm even}}
\gamma_{k\ell}\,\Pi_k^L\Pi_\ell^R,\qquad
\gamma_{k\ell}=g_{\min(k,\ell),|k-\ell|},
\tag{4.22}
$$
and the descendants of $|P_{k\ell}\rangle$ retain this coefficient:
$$
E_{k\ell;r_L,r_R}
=2\Delta+k+\ell+r_L+r_R
+G\gamma_{k\ell}+o(G).
\tag{4.23}
$$

At $n=0$ the apparent $\Delta=3/2$ singularity must be removed algebraically:
$$
g_{0,0}
=-4\Delta^2+
\frac{2\Delta^2(2\Delta+5)}
{(2\Delta-1)(2\Delta+1)} .
\tag{4.24}
$$
It gives $-9/2$ at $\Delta=3/2$. At that point the scalar-primary stress trace vanishes but the tensor itself need not vanish; its finite response must be obtained from the original source limit. The auxiliary no-radial-log de Donder obstruction at $(1+\sqrt5)/2$ is absent from this gauge-independent kernel.

The independent direct canonical construction is retained in Appendix A: finite rational circular matrix elements and invertible free Clebsch–Gordan reconstruction determine every pair coefficient without invoking (3.23) or (4.14). That construction and the compact source-Casimir expression agree on the stated prescription and in the independent tests below. The finite canonical theorem does not assert an additional all-label, symmetry-free summation proof of its rational formulas into (4.21).

For a small check with a genuinely nonzero virtual-boundary contribution, take $\Delta=2$ and the normalized basis
$$
A=b^\dagger_{0,0}b^\dagger_{1,0}|0\rangle,\qquad
B=b^\dagger_{0,1}b^\dagger_{0,-1}|0\rangle ,
$$
where these subscripts are radial/angular labels. The original constraints and density moments give
$$
\mathsf C=
\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},
\qquad
\mathsf X=
\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
\tag{4.25}
$$
Their sum has eigenvectors $(A+B)/\sqrt2$, the ground-pair descendant, and
$(A-B)/\sqrt2$, the new spin-zero primary, with coefficients
$-56/5$ and $-1368/35$. This simultaneously tests the boundary term, Bose normalization, and equality of descendant coefficients.

## 4.5 The positive decomposition needed by the finite algorithm

For $N$ scalar particles, let $P,Q$ be total primary degrees and orient the notation so that $P\ge Q$. The right pair Casimir is $C_{ij}^R$, with eigenvalue $C_\ell$ on pair label $\ell$. Define
$$
a_{k\ell}=\gamma_{k\ell}-(4\mu-8C_\ell).
\tag{4.26}
$$

**Proposition PHY-06 (positive residual with exact channel support).**
For $\Delta>1$ and $k+\ell$ even,
$$
a_{k\ell}=0\ \Longleftrightarrow\ k\ge\ell+4,
\qquad
a_{k\ell}>0\ \Longleftrightarrow\ k\le\ell+2.
\tag{4.27}
$$
Consequently, on the physical Bose-primary space,
$$
\boxed{
W_N=b_N(Q)I+A_N,\qquad
A_N=\sum_{i<j}\sum_{k+\ell\ {\rm even}}
a_{k\ell}\Pi^L_{ij,k}\Pi^R_{ij,\ell}\ge0 ,
}
\tag{4.28}
$$
$$
\boxed{
b_N(Q)=2N\mu-
8\left(\frac{N\Delta}{2}+Q\right)
\left(\frac{N\Delta}{2}+Q-1\right)
=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1).
}
\tag{4.29}
$$

For $k\ge\ell$, spin at least four has zero residual and spin two has the strictly positive fraction (4.20). At $k=\ell=0$, positivity follows from (4.24). For $k=\ell=n\ge1$, the numerator of the spin-zero residual over
$(2h_n-3)(2h_n-1)(2h_n+1)$ is
$$
30C_n^2-20C_n\mu-24C_n-2\mu^2+12\mu .
$$
With $r=\Delta-1>0$, $j=n-1\ge0$, it equals
$$
\begin{aligned}
&8r^4+80r^3j+120r^3+160r^2j^2+480r^2j+362r^2\\
&\quad+120rj^3+540rj^2+772rj+348r
+30j^4+180j^3+386j^2+348j+98,
\end{aligned}
\tag{4.30}
$$
which is positive. If $k<\ell$, add the strictly positive
$8(C_\ell-C_k)$ to the residual based on the smaller label.

Finally,
$$
\sum_{i<j}C_{ij}^R
=C_{\rm tot}^R+(N-2)\sum_iC_i^R,\qquad
C_i^R=\frac{\mu}{4},
\tag{4.31}
$$
obtained by expanding the quadratic total Casimir, proves (4.29).
The projectors for different pairs need not commute. Positivity alone gives
$$
\ker A_N
=\bigcap_{i<j}
\{\Psi:\text{every supported pair component obeys }k_L\ge k_R+4\}.
\tag{4.32}
$$
This elementary support statement is enough to start the finite spectral algorithm. The complete collision-ideal and logarithmic-symbol classification will be developed later.

# 5. Constructing the complete finite scalar Fock spectrum

The preceding chapters supply a particular self-adjoint pair operator. This chapter turns that input into a complete finite spectral construction. The construction does not assume a large excitation, a large particle number, the later kernel classification, or an integrable many-body algebra. The essential finite-dimensional objects are the true Bose-primary space, its physical Gram matrix, and the matrix of the sum of pair interactions. Compression improves their representation; it does not change the problem being solved.

## 5.1 The finite Hilbert space and its exact dimension

For fixed particle number $N$, let $M_L,M_R$ denote the full left and right excitation levels. The scalar free energy and spin are

$$
E_0=N\Delta+M_L+M_R,\qquad J=M_L-M_R.
\tag{5.1}
$$

Write $P,Q$ for primary degrees. They need not equal $M_L,M_R$: the difference is the level of a global descendant. On labelled polynomials, the two total lowering operators are $D_L=\sum_i\partial_{z_i}$ and $D_R=\sum_i\partial_{w_i}$. Thus a primary is translation invariant in each set of variables. If $V=\{(Z_1,\ldots,Z_N):\sum Z_i=0\}$ is the standard $S_N$ representation, the physical primary space is

$$
\mathcal P_{N;P,Q}
=\left[\operatorname{Sym}^P(V)\otimes
\operatorname{Sym}^Q(V)\right]^{S_N}.
\tag{5.2}
$$

Here the permutation acts simultaneously on the left and right particle labels. Separate symmetrization of the two tensor factors would give a different Hilbert space and loses legitimate states. Every metric and projection below uses this diagonal Bose action.

The dimension follows by averaging characters. A permutation with cycle lengths $a_1,\ldots,a_s$ has

$$
\det(1-x\sigma|_V)^{-1}
=\frac{1-x}{\prod_{j=1}^s(1-x^{a_j})}.
$$

Multiplying the left and right characters and grouping permutations by cycle type gives

$$
\sum_{P,Q\ge0}d_N(P,Q)x^Py^Q
=(1-x)(1-y)\sum_{\lambda\vdash N}
\frac1{z_\lambda}\prod_{a\in\lambda}
\frac1{(1-x^a)(1-y^a)},
\quad z_\lambda=\prod_j j^{m_j}m_j!.
\tag{5.3}
$$

This is also an elementary proof of the required Molien formula: the averaging operator is the orthogonal projector onto the invariant subspace, and its trace is its rank. The vacuum is treated separately. For $N=1$, only $(P,Q)=(0,0)$ is primary.

For a distinct simultaneous orbit of monomials, choose its sum $m_A$, rather than its average, as a coordinate vector. If a representative contains $n_{pq}$ particles in mode $(p,q)$, then

$$
\|m_A\|^2=
\frac{N!}{\prod_{p,q}n_{pq}!}
\prod_{p,q}\left[\frac{p!q!}{(\Delta)_p(\Delta)_q}\right]^{n_{pq}}.
\tag{5.4}
$$

Distinct orbits are orthogonal. Averaged orbit vectors instead have the reciprocal orbit-size factor. Standard normalized occupation states are obtained by dividing by the square root of (5.4). These conversions are necessary whenever one compares a first-quantized pair kernel, averaged creation tensors, and standard Fock matrix elements.

## 5.2 A direct construction that is complete before compression

**Theorem FIN-01 (finite primary construction).** Fix $\Delta>1$, $N\in\mathbb Z_{\ge0}$, and finite $P,Q\in\mathbb Z_{\ge0}$. With the pair coefficients of Chapter 4, the following finite procedure constructs every first-order coefficient on $\mathcal P_{N;P,Q}$, its exact multiplicity, and its physical eigenspace.

First enumerate the finitely many simultaneous occupation orbits at bidegree $(P,Q)$. In their positive metric (5.4), take the common kernel of $D_L,D_R$, or apply the explicit orthogonal primary projector below and select independent columns. Let $\Phi$ be the resulting injective map from coordinate vectors to physical polynomials, and set

$$
\Gamma=\Phi^\dagger\Phi>0.
$$

The dagger includes the full physical monomial metric. On the labelled degree-$T$ left space, the pair Casimir is

$$
C_{ij}^L=-(z_i-z_j)^2\partial_i\partial_j
+\Delta(z_i-z_j)(\partial_i-\partial_j)+\Delta(\Delta-1),
\quad C_k=(\Delta+k)(\Delta+k-1).
\tag{5.5}
$$

Its possible eigenvalues are $C_k$, $0\le k\le T$, and they are distinct because $\Delta>1$. Its exact projector is the finite polynomial

$$
\mathsf P_{ij,k}^L
=\prod_{\substack{0\le r\le T\\r\ne k}}
\frac{C_{ij}^L-C_rI}{C_k-C_r}.
\tag{5.6}
$$

Use the analogous right projectors, set $w_{ij}=\sum_{k,\ell}\gamma_{k\ell}\mathsf P^L_{ij,k}\mathsf P^R_{ij,\ell}$, and sum over pairs. On a Bose state only $k+\ell$ even occurs for the interacting pair; any choice on unused odd-parity channels gives the same physical restriction. The matrix $M$ defined by $W_N\Phi=\Phi M$ satisfies

$$
M^\dagger\Gamma=\Gamma M.
\tag{5.7}
$$

Its characteristic polynomial, exact kernels $\ker(M-gI)$, and the embedding $\Phi$ solve the finite problem.

**Proof.** The occupation basis spans the full symmetric tensor level. Taking the two lowering kernels gives exactly (5.2), because in positive discrete series the total representation decomposes into lowest-weight modules and the two chiral actions commute. Formula (5.6) is ordinary spectral interpolation on a finite diagonalizable Casimir. Therefore the constructed pair action is exactly the prescribed spectral multiplier on every pair submodule. Its sum commutes with permutations and both global algebras, so it maps the primary space to itself. The physical metric is positive, and the pair coefficients are real. Equation (5.7) follows, giving a matrix similar to the Hermitian matrix $\Gamma^{1/2}M\Gamma^{-1/2}$. Consequently every root is real, geometric and algebraic multiplicities agree, and the coordinate eigenspaces exhaust the physical space. No assertion about a later kernel or limit enters this proof. $\square$

An explicit primary projector often avoids solving two linear systems. Put $U_L=\sum_i(z_i^2\partial_{z_i}+\Delta z_i)$. For $N\ge1$, at left degree $P$,

$$
\Pi_L(P)=\sum_{j=0}^{P}
\frac{(-1)^j U_L^jD_L^j}
{j!\prod_{r=0}^{j-1}(N\Delta+2P-r-2)},
\qquad \Pi_{P,Q}=\Pi_L(P)\Pi_R(Q).
\tag{5.8}
$$

For $H=N\Delta/2+P$, commuting $D_L$ past $U_L^j$ gives coefficient $j(2H-j-1)$ on $U_L^{j-1}D_L^j$. Consecutive summands in $D_L\Pi_L$ cancel. Each term is self-adjoint, and the sum is the identity on $\ker D_L$; hence it is its orthogonal projector. The smallest denominator factor is positive in the indicated finite domain. The right construction commutes with it. Equation (5.8) also proves that primary projection preserves any restriction on the pair Casimir support, since each pair Casimir commutes with the total generators.

## 5.3 Exact roots, multiplicities, and physical spectral projectors

“Exact” has three distinct computational meanings here. For rational $\Delta>1$, every matrix entry is rational. A root is specified exactly by its irreducible or square-free polynomial and a rational isolating interval; decimal values are optional displays. For a real algebraic $\Delta$, work in its explicitly specified ordered number field, cancel removable expressions, and use real algebraic root isolation over that field. For a symbolic $\Delta$, the entries are rational functions and the characteristic polynomial is a finite symbolic specification of the family. At a general real parameter it defines the finite spectral problem exactly, but it does not supply a terminating numerical oracle for a noncomputable real number. The command-line entry accepts rational or symbolic gaps; exact algebraic specializations are illustrated through the Python interface.

**Theorem FIN-02 (physical projectors and specialization).** Let $m(t)$ be the square-free characteristic polynomial of $M$ after fixing the parameter. For any root $a$ of $m$,

$$
p_a(M)=\frac{[m(t)/(t-a)]_{t=M}}{m'(a)},
\qquad
\mathbb P_a=\Phi p_a(M)\Gamma^{-1}\Phi^\dagger.
\tag{5.9}
$$

The first expression is the coordinate spectral projector; the second is the orthogonal projector on the physical Hilbert space. Its rank is the exact multiplicity of $a$.

Indeed the scalar polynomial in (5.9) is one at $a$ and zero at every other eigenvalue. Applying the spectral theorem proves idempotence, completeness, and metric self-adjointness. For the embedded operator, $\Phi^\dagger\Phi=\Gamma$ immediately gives $\mathbb P_a^2=\mathbb P_a$. Omitting $\Gamma^{-1}$ would fail in a nonorthonormal basis.

A special mass must be substituted **before** deciding pivot columns, matrix rank, square-free factors, or multiplicities. One may first construct a redundant symbolic presentation with regular entries, specialize it, and then choose a new independent image basis. A generic eigenvector chart can have a pole where the physical eigenspace remains regular. Such a pole is a coordinate failure, not a singularity of the Hamiltonian. The removable ground-channel expression at $\Delta=3/2$ is cancelled before evaluation. The critical mass $\Delta_*=(\sqrt{33}-1)/4$, discussed in Chapter 6, gives a concrete multiplicity jump.

## 5.4 Pair–spectator Gram compression

For computational purposes orient the external block so $P\ge Q$. Chapter 4 gives

$$
W_N=b_N(Q)I+A_N,\quad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),
\tag{5.10}
$$

where $A_N\ge0$ and its pair summands have coefficients

$$
a_{k\ell}=\gamma_{k\ell}-[4\mu-8C_\ell]>0
\quad\hbox{exactly when }k\le\ell+2,
\qquad k+\ell\text{ even}.
\tag{5.11}
$$

All other allowed channels have zero coefficient. This narrow support in the pair labels, rather than any commutativity between different pairs, is the reason a smaller matrix exists.

Fix pair $12$. Couple its primary $(z_1-z_2)^k(w_1-w_2)^\ell$ to a complete spectator primary of $N-2$ particles and then to total bidegree $(P,Q)$. Retain all bad channels in (5.11). These coupled vectors form the columns of $F$. They span the pair-$12$ positive subspace invariant under $H=S_2\times S_{N-2}$. Choose independent spectator bases, so the Gram $\Gamma=F^\dagger F$ is positive. The diagonal matrix $D=\operatorname{diag}(a_{k\ell})$ commutes with $\Gamma$, because different pair channels are orthogonal. Write

$$
\Pi_B=\frac1{N!}\sum_{\sigma\in S_N}U_\sigma,
\quad S=\Pi_BF,\quad c_N=\binom N2,
\quad T=c_NS^\dagger S.
\tag{5.12}
$$

The three double-coset types are the same pair, one overlapping particle, and disjoint pairs. Counting their multiplicities gives the finite formula

$$
T=\Gamma+2(N-2)R_1+\binom{N-2}{2}R_0,
\quad
R_1=F^\dagger U_{(23)}F,
\quad R_0=F^\dagger U_{(13)(24)}F.
\tag{5.13}
$$

The $R_1$ term is absent at $N=2$, and the $R_0$ term is absent if $N<4$. These are Gram overlaps with the actual physical inner product. In particular, they are not unweighted recoupling tables.

**Theorem FIN-03 (positive-image equivalence).** With these definitions,

$$
A_N=c_NS D\Gamma^{-1}S^\dagger,
\qquad M_{\rm aux}=D\Gamma^{-1}T,
\qquad A_NS=SM_{\rm aux}.
\tag{5.14}
$$

The nonzero spectrum of $M_{\rm aux}$, including multiplicities, is exactly the positive spectrum of $A_N$. Its auxiliary zero directions do not represent physical zero-energy states.

**Proof.** On the labelled pair-$12$ subspace, spectral resolution in the complete frame is $FD\Gamma^{-1}F^\dagger$. On Bose vectors all pairs have the same compressed quadratic form, so summing the $c_N$ conjugates yields (5.14). Multiplication by $S$ proves the intertwining. Since $K=D\Gamma^{-1}>0$, $M_{\rm aux}=KT$ is similar to the positive semidefinite Hermitian matrix $K^{1/2}TK^{1/2}$. Its zero eigenvalue is semisimple. The identity $A_N=(\sqrt{c_N}SK^{1/2})(\sqrt{c_N}SK^{1/2})^\dagger$ proves equality of the nonzero spectra by the singular-value decomposition. On the auxiliary nonzero spectral space $S$ is injective; otherwise (5.14) would turn a nonzero eigenvector into a zero column and contradict the positive quadratic form. This proves the full state correspondence. $\square$

Let $I$ index independent columns of $T\ge0$; then $T_{II}>0$. The exact coordinate reduction is

$$
C=T_{II}^{-1}T_{I,:},\qquad
S=S_I C,\qquad
M_+=C(M_{\rm aux})_{:,I}.
\tag{5.15}
$$

Its metric is $T_{II}/c_N$, and it acts on an actual basis of $\operatorname{im}A_N$. If $R=\operatorname{rank}T$, the physical characteristic polynomial is

$$
\det(xI-A_N)=x^{d_N(P,Q)-R}\det(xI_R-M_+).
\tag{5.16}
$$

Thus exact positive-image compression is available before knowing the closed kernel formula. Chapter 6 identifies $d_N-R$ with $\kappa_N(P,Q)$. An implementation should retain the pair $(d_N-R,\det(xI_R-M_+))$, rather than expanding an enormous list of zero coefficients.

The auxiliary size is

$$
r_{\rm aux}=
\sum_{\ell=0}^{Q}
\sum_{\substack{0\le k\le\min(P,\ell+2)\\k+\ell\ \mathrm{even}}}
\dim\mathcal H^{\rm Bose}_{N-2;P-k,Q-\ell}.
\tag{5.17}
$$

The spectator degree includes its descendants. It is not merely the spectator-primary dimension. For fixed $N,Q$, $N\ge4$, the physical dimension grows as $P^{N-2}$, whereas this auxiliary size and the actual positive rank grow as $P^{N-3}$. These fixed-parameter statements do not imply uniformly polynomial complexity when $N,P,Q$ all vary.

## 5.5 Three particles and the all-$N$ recoupling compiler

For three particles the spectator has no internal primary excitation. The bad labels are simply $(k,\ell)$ in (5.17), and normalized pair bases give

$$
H_{k\ell,rs}=\sqrt{a_{k\ell}a_{rs}}
\left[\delta_{kr}\delta_{\ell s}+2\mathcal R_P(k,r)\mathcal R_Q(\ell,s)\right].
\tag{5.18}
$$

Here $\mathcal R_T$ is the finite, real orthogonal Racah matrix for three equal $D^+_{\Delta/2}$ factors. Appendix F gives its terminating formula, norm weights, and a rational version without square roots. The positive eigenvalues of (5.18) are the residual eigenvalues. If $v$ is a unit eigenvector of $H$ with eigenvalue $x>0$, and $S_{k\ell}$ denotes the Bose projection of the normalized coupled state, the physical normalized state is

$$
\Psi_x=\sqrt{\frac3x}\sum_{k,\ell}\sqrt{a_{k\ell}}\,v_{k\ell}S_{k\ell}.
\tag{5.19}
$$

Its norm follows directly from (5.18), including the factor three. Keeping an eigenvector of a nonsymmetric rational table with the Euclidean norm would not give this state.

For general $N$, use a left-comb coupling basis labelled by nonnegative integers $n_2,\ldots,n_N$ with sum $P$, and an independent right comb with sum $Q$. A binary coupling of lowest weights $a,b$ with relative degree $m$ has norm

$$
\eta(m;a,b)=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{5.20}
$$

The comb metric is the product of these norms. Adjacent particle exchanges act by a local rational Racah matrix; exchange of the first two leaves contributes $(-1)^{n_2}$ in each chirality. The total Bose projector has the nested coset factorization

$$
\Pi_m=\frac1m\left(I+\sum_{i=1}^{m-1}U_{(im)}\right)\Pi_{m-1}.
\tag{5.21}
$$

Expanding each transposition as a palindrome of adjacent exchanges costs $\sum_{m=2}^N(m-1)^2=O(N^3)$ local permutation steps. This avoids a literal $N!$-term average. It does not remove the growing dimension

$$
D_{\rm labelled}=\binom{P+N-2}{N-2}\binom{Q+N-2}{N-2}.
\tag{5.22}
$$

**Theorem FIN-04 (compiled construction).** Apply (5.21) first to spectator leaves and then to all particles, using the actual local Racah exchange matrices and the product Gram (5.20). Select independent positive-image columns by exact Gram elimination. The resulting matrix and metric are exactly those in (5.15), up to an invertible change of coordinates. They therefore supply the same physical eigenvalues and states as Theorem FIN-01.

The proof is representation theoretic, not an inference from matching spectra. The finite Clebsch–Gordan formula in Appendix F constructs each comb as an actual polynomial intertwiner. The local Racah transformation equals the literal exchange of two leaves in that construction. Consequently different exchange words agree because they act as the same permutation, and (5.21) is the true orthogonal Bose projector. Selecting columns changes only coordinates. The implementation uses these identities without materializing those polynomials. Exact comparisons with the direct orbit engine test its normalization and coding; the intertwiner identity supplies its all-index justification.

For the specified dense-arithmetic model, writing $r_0$ for the labelled bad-pair seed count, $r$ for the spectator-Bose auxiliary count, and $R$ for the final rank, a useful assembly bound is

$$
O\!\left(N^3(P+Q+2)(r_0^2+rD_{\rm labelled})
+r_0r^2+rR^2+r^3\right).
\tag{5.23}
$$

Characteristic-polynomial work and rational bit growth are additional. At fixed $N,Q$, one projected-column strategy stores $O(P^{2N-5})$ entries for $N\ge4$. The three-particle cached outer table uses $O(P^2)$ entries. These bounds describe specific implementations. Neither an absence of factorial enumeration nor a favorable fixed-$Q$ exponent is a universal speed comparison against every other solver. At fixed $P,Q$, the stable-$N$ pencil of Chapter 9 offers a different compression, whose correctness is proved independently there.

## 5.6 Descendants and full energy-shell assembly

**Theorem FIN-05 (finite Fock completeness).** After constructing every primary block with $P\le M_L,Q\le M_R$, apply normalized global raising operators to obtain its unique descendant at level $(M_L,M_R)$. A primary of weights $h_L=N\Delta/2+P$, $h_R=N\Delta/2+Q$ has descendant

$$
\frac{(U_L)^{M_L-P}(U_R)^{M_R-Q}\Psi}
{\sqrt{(M_L-P)!(2h_L)_{M_L-P}(M_R-Q)!(2h_R)_{M_R-Q}}}.
\tag{5.24}
$$

It has the same coefficient $g$. The full level dimension is

$$
\dim\mathcal H^{\rm Bose}_{N;M_L,M_R}
=\sum_{P=0}^{M_L}\sum_{Q=0}^{M_R}d_N(P,Q).
\tag{5.25}
$$

At fixed numerical $E_0,J$, enumerate $0\le N\le\lfloor E_0/\Delta\rfloor$, retaining exactly those for which

$$
M_L=\frac{E_0-N\Delta+J}{2},\qquad
M_R=\frac{E_0-N\Delta-J}{2}
\tag{5.26}
$$

are nonnegative integers. Include the vacuum only at $E_0=J=0$. The direct sum of these finite levels is the whole normal-form scalar shell.

To merge repeated roots, factor each characteristic polynomial into square-free pieces with their multiplicities. Split two pieces by their polynomial greatest common divisor, add multiplicities on the common factor, and continue until all root sets are pairwise coprime. This procedure merges equal algebraic eigenvalues exactly across primary, descendant, and particle-number sectors. Comparing rounded decimal roots is unnecessary and can be wrong near crossings.

The proof uses the orthogonal lowest-weight decomposition, whose raising norm is the denominator in (5.24), and the global Ward identities ensuring $W_N$ intertwines both chiral actions. Equation (5.25) is also obtained by dividing the character of a full level by the two descendant factors. The order-$G$ number-preservation theorem of Chapter 3 is what permits the direct sum over $N$, even at integer $\Delta$, where different particle numbers may share $E_0,J$. This is a statement about the effective scalar branch in normal form. Inverse dressing reconstructs the original variables and their constraint/virtual gravitational content.

## 5.7 Worked examples

### A two-particle normalization check

For $N=2$, each allowed primary pair label $(k,\ell)$, $k+\ell$ even, occurs once. At $\Delta=2$,

$$
\gamma_{00}=-\frac{56}{5},\quad
\gamma_{11}=-\frac{1368}{35},\quad
\gamma_{20}=-\frac{552}{35},\quad
\gamma_{40}=-16.
\tag{5.27}
$$

The primary is proportional to $(z_1-z_2)^k(w_1-w_2)^\ell$; its norm is the product of $k!(2\Delta+k-1)_k/(\Delta)_k^2$ and the analogous right expression. This check sees both the Bose parity rule and the $G$-coefficient convention. At the superficially singular point $\Delta=3/2$, the cancelled ground formula gives $\gamma_{00}=-9/2$.

### A mixed block with genuine spectral mixing

Take $\Delta=2,N=3,(P,Q)=(2,2)$. There are two primaries, free primary energy $E_0=10$, and no logarithmic zero mode. A rational coordinate matrix from the direct orbit construction is

$$
M=\frac1{35}\begin{pmatrix}-4848&1088\\-424&-2048\end{pmatrix}.
\tag{5.28}
$$

It is not symmetric in these coordinates, but it is self-adjoint in the physical Gram. To reconstruct the coordinate basis without an unspecified convention, use the eight orbit sums in this order:

$$
\begin{gathered}
\{00,00,22\},\ \{00,01,21\},\ \{00,02,20\},\ \{00,10,12\},\\
\{00,11,11\},\ \{01,01,20\},\ \{01,10,11\},\ \{02,10,10\}.
\end{gathered}
$$

Here $pq$ means $z^pw^q$, and braces mean the sum of distinct simultaneous permutations. A convenient embedded basis for the same matrix is

$$
\Phi=\frac1{35}
\begin{pmatrix}
588&-1232\\-588&1232\\506&-2392\\-588&1232\\
752&1088\\-424&3552\\424&-3552\\-424&3552
\end{pmatrix},
\quad
\Gamma=\begin{pmatrix}
2685056/3675&-1762304/735\\
-1762304/735&17099776/1225
\end{pmatrix}.
\tag{5.29}
$$

Equations (5.4), (5.28), and (5.29) allow a direct check of $M^T\Gamma=\Gamma M$. The characteristic polynomial is

$$
g^2+\frac{6896}{35}g+\frac{1484288}{175}=0,
\tag{5.30}
$$

with simple roots approximately $-133.4916894988750$ and $-63.53688192969638$. At either root, one may use the coordinate vector $(1088,35g+4848)^T$, embed it through $\Phi$, and divide by its $\Gamma$-norm. This gives the physical state, not merely its eigenvalue. The two-projector formula simplifies to $(M-g_{\mp}I)/(g_{\pm}-g_{\mp})$. The packaged run contains rational isolating intervals and the full embedding. An independent all-$N$ Racah compilation gives exactly the same polynomial.

### A genuinely saturated block

At $\Delta=2,N=3,(P,Q)=(12,0)$, the primary dimension is three. One exact state is

$$
\Psi_0=\prod_{i<j}(z_i-z_j)^4,\qquad
\|\Psi_0\|^2=\frac{15158}{49},\qquad g_0=b_3(0)=-48.
\tag{5.31}
$$

The remaining two coefficients are the roots of

$$
g^2+\frac{700516}{7735}g+\frac{110719968}{54145}=0,
\tag{5.32}
$$

approximately $-47.64884154589118$ and $-42.91560577149731$. Thus the Casimir bound is attained once, and the other two states are strictly above it. The compressed output stores one zero residual factor and a quadratic positive residual polynomial. The general proof of the state and its exact multiplicity follows in Chapter 6; the finite construction already obtains all three roots without that classification.

### One complete free shell

At $\Delta=2,E_0=10,J=0$, the legal particle-number sectors are:

| $N$ | $M_L,M_R$ | Full scalar dimension |
|---:|:---:|---:|
| 1 | $4,4$ | 1 |
| 2 | $3,3$ | 8 |
| 3 | $2,2$ | 8 |
| 4 | $1,1$ | 2 |
| 5 | $0,0$ | 1 |

The total dimension is 20. Its exact coefficient multiset, already merging coincident roots, is:

| Coefficient $g$, or polynomial defining each root | Multiplicity of each root |
|---|---:|
| $0$ | 1 |
| $-56/5$ | 1 |
| $-552/35$ | 2 |
| $-1368/35$ | 1 |
| $-1000/21$ | 2 |
| $-416/5$ | 1 |
| $-11040/77$ | 1 |
| $-168/5$ | 1 |
| $-40$ | 2 |
| $-528/7$ | 1 |
| $-2768/35$ | 2 |
| $g^2+(6896/35)g+1484288/175=0$ | 1 |
| $-336/5$ | 1 |
| $-4304/35$ | 1 |
| $-112$ | 1 |

The quadratic contributes two roots, so the displayed multiplicities sum to 20. Every corresponding descendant and primary embedding is included in the run record. All these states have $E=10+Gg+o(G)$; their common free energy does not justify mixing particle-number sectors after the proven normal-form reduction.

A large label provides a separate encoding check: for $N=3,P=10^9,Q=6$, the exact primary dimension is $1{,}166{,}666{,}668$, the exact bound multiplicity is $1{,}166{,}666{,}645$, and the positive rank is 23. The present regression recalculates these counts; it does not claim a new billion-degree diagonalization. The finite 23-channel representation is the theorem that makes such an input meaningful.

## 5.8 Practical entry points and verification scope

The package has one shared finite engine at `code/engine/fock_spectrum.py`, an independent direct orbit implementation at `code/engine/general/fock_exact.py`, and the all-$N$ compiler at `code/research/racah/all_n_recoupling.py`. For example, from the extracted package directory:

```bash
python code/engine/fock_spectrum.py primary --delta 2 --n 3 --p 2 --q 2 --roots --states --projectors --output primary.json
python code/engine/fock_spectrum.py shell --delta 2 --energy 10 --spin 0 --roots --states --output shell.json
python code/engine/fock_spectrum.py bound --delta 2 --n 3 --p 12 --q 0 --verify --output bound.json
python code/research/racah/all_n_recoupling.py --delta 2 --n 4 --p 2 --q 2 --states --output compiled.json
```

The code uses exact rational algebra for the finite matrices and can add rational root intervals. Numerical cluster comparisons are separately labelled. The mandatory verification runner refuses optimized Python, requires every scheduled task, validates payload status and required fields, checks independent physical and auxiliary dimensions, and tests strict rational inertia bounds. Missing dependencies, skipped tasks, and malformed certificates cannot count as passes. Appendix V describes the current run and its negative tests. These safeguards validate what a computation actually established; the all-index proofs are the arguments in this note.

# 6. Exact structures in the finite spectrum

The finite construction is already complete. We now ask why some large blocks contain remarkably simple eigenspaces, why certain isolated levels remain explicit, and which parts of the spectrum can be controlled without taking a determinant. The answers concern different spectral questions. A Casimir-bound state, a minimum in one fixed primary block, the upper edge of the entire coefficient tower, and the physical one-particle mass gap are distinct objects.

## 6.1 Positivity turns an eigenvalue problem into simultaneous pair constraints

Orient the external block so $P\ge Q$, and retain $A_N=W_N-b_N(Q)I\ge0$. For any physical vector,

$$
\langle\Psi,A_N\Psi\rangle
=\sum_{i<j}\sum_{\substack{k+\ell\ \mathrm{even}\\k\le\ell+2}}
a_{k\ell}\|\mathsf P^L_{ij,k}\mathsf P^R_{ij,\ell}\Psi\|^2.
\tag{6.1}
$$

Every displayed coefficient is strictly positive. Hence equality holds precisely when each bad-channel projection vanishes separately. This implication is valid even though projectors belonging to overlapping pairs generally do not commute. Individual labelled pair projectors need not preserve the whole Bose subspace; the norm identity is taken in the labelled physical tensor space and then restricted to Bose vectors.

Fix a pair and put $\delta=z_i-z_j$, $\sigma=(z_i+z_j)/2$. On that pair,

$$
C_{ij}^L=
\delta^2\partial_\delta^2+2\Delta\delta\partial_\delta
-\frac{\delta^2}{4}\partial_\sigma^2+\Delta(\Delta-1).
\tag{6.2}
$$

The ideal filtration $\delta^r\mathbb C[z]$ is invariant. On its degree-$r$ quotient, the Casimir acts by $C_r$. At a fixed finite homogeneous degree, positivity of the physical metric and the distinct Casimir values imply

$$
\delta^r\mathbb C[z]_{P-r}
=\bigoplus_{k\ge r}\operatorname{im}\mathsf P^L_{ij,k}.
\tag{6.3}
$$

The same identity holds on the right. Therefore the joint-kernel problem is a system of collision-vanishing conditions together with a hierarchy of left/right flag compatibility conditions. Keeping only the first condition loses nonchiral information.

## 6.2 The complete logarithmic-symbol kernel

Define

$$
\mathcal V_N(z)=\prod_{i<j}(z_i-z_j),\qquad
J_N=2N(N-1),\qquad p=P-J_N.
\tag{6.4}
$$

The pair inequalities in (6.1) imply a fourth-order zero at every left collision. Since the distinct linear collision factors are nonassociate primes in a polynomial ring, their product divides the state:

$$
\Psi=\mathcal V_N^4F.
\tag{6.5}
$$

This uses unique factorization, not the false assertion that intersecting collision ideals are comaximal.

The right polynomial space carries the physical metric. In a real coefficient basis $f_\alpha$ of homogeneous degree $Q$, denote that metric by $\Gamma_{\alpha\beta}$. Its real structure gives the **complex bilinear** pairing $B(u,v)=u^T\Gamma v$. If $F$ has coefficient matrix $C$, its tensor–Hom representative is

$$
\mathcal A=C\Gamma.
\tag{6.6}
$$

This is not the antilinear Hilbert-space Riesz map. For a right projector $\mathsf P$, physical self-adjointness gives $\mathsf P^T\Gamma=\Gamma\mathsf P$, so the action $C\mathsf P^T$ corresponds exactly to $\mathcal A\mathsf P$. Combining this observation with (6.3), the remaining kernel condition is

$$
\mathcal A\!\left(\delta^r\mathbb C[V]_{Q-r}\right)
\subseteq\delta^r\mathbb C[V]_{p-r}
\quad\hbox{for every collision }\delta
\hbox{ and every }0\le r\le Q.
\tag{6.7}
$$

All ideal powers are required. Their meaning is that a right pair starting at relative degree $r$ must be mapped to a left quotient starting at relative degree at least $r$; multiplying back by $\mathcal V_N^4$ then restores the required four-unit difference.

Write $Z_i=z_i-N^{-1}\sum_jz_j$, and introduce cotangent coordinates $\Xi_i$ with $\sum_i\Xi_i=0$. The polynomial symbols

$$
\theta_a(Z,\Xi)=\sum_i Z_i^a\Xi_i,
\qquad 1\le a\le N-1,
\tag{6.8}
$$

are symbols of vector fields tangent to every collision hyperplane. Their coefficient determinant on $V$ is a nonzero constant times $\mathcal V_N$. They therefore form a rational frame that becomes a logarithmic frame at each collision.

**Theorem EX-01 (complete kernel and its physical states).** For $N\ge2$, $\Delta>1$, and finite $P,Q$, the oriented common kernel of $A_N=W_N-b_N(Q)I$ is in bijection with the Bose-invariant homogeneous degree-$Q$ symbols

$$
\sum_{|\nu|=Q}h_\nu(e_2,\ldots,e_N)\theta_1^{\nu_1}\cdots\theta_{N-1}^{\nu_{N-1}},
\quad
\deg h_\nu=p-\sum_a a\nu_a.
\tag{6.9}
$$

Here $e_r$ is the degree-$r$ elementary symmetric polynomial in the centered $Z_i$. In particular,

$$
\boxed{\displaystyle
\sum_{P,Q\ge0}\kappa_N(P,Q)x^Py^Q
=\frac{x^{J_N}}
{\prod_{r=2}^N(1-x^r)\prod_{a=1}^{N-1}(1-yx^a)}.}
\tag{6.10}
$$

The kernel is nonzero only if $P\ge Q+J_N$, and the first allowed degree $P=Q+J_N$ has one state. Reflection gives the corresponding classification when one chooses the left-oriented baseline for $Q\ge P$. In an internal cluster, the baseline is tied to the actual right degree and must not be silently replaced by this reflected convention.

The central proof is given in Appendix K. The part that prevents hidden intersection assumptions is worth emphasizing here. Represent (6.7) by its unique normally ordered pure order-$Q$ differential symbol. In a normal coordinate to a collision, the coefficient of $\partial_\delta^r$ must be divisible by $\delta^r$. Expand this symbol in the frame (6.8) over the fraction field. The only possible denominators are powers of the Vandermonde. Localizing at one collision prime, the frame is equivalent to $\delta\partial_\delta$ and ordinary tangent derivatives. The all-power condition removes every negative valuation of its coefficients at that prime. Repeating this for every collision prime removes all denominators by unique factorization. This proves the full global statement, including intersections; it does not commute a symmetric power with an intersection without proof. Since the $\theta_a$ are invariant under simultaneous particle permutations, Bose invariance makes the remaining coefficients symmetric, giving precisely $\mathbb C[e_2,\ldots,e_N]$.

To recover physical states, use the bilinear reproducing kernel

$$
K_{\Delta,Q}(z,w)=\sum_{\alpha,\beta}
f_\alpha(z)(\Gamma^{-1})_{\alpha\beta}f_\beta(w).
\tag{6.11}
$$

Let $Z_i^{(a)}=Z_i^a-N^{-1}\sum_jZ_j^a$, and expand

$$
K_{\Delta,Q}\!\left(\sum_{a=1}^{N-1}t_aZ^{(a)},w\right)
=\sum_{|\nu|=Q}t^\nu F_\nu(z,w).
\tag{6.12}
$$

A complete basis is

$$
\mathcal V_N^4F_\nu(z,w)\prod_{r=2}^N e_r(Z)^{m_r},
\quad
\sum_a\nu_a=Q,\qquad
P=J_N+\sum_a a\nu_a+\sum_r rm_r.
\tag{6.13}
$$

The actual physical metric is indispensable even for the unique first state $\mathcal V_N^4K_{\Delta,Q}$. For $Q=2$, define $I_1=(\sum Z_i^2)(\sum W_i^2)$, $I_2=(\sum Z_iW_i)^2$, and $I_3=\sum Z_i^2W_i^2$. Then

$$
K_{\Delta,2}=
\frac{\Delta^2}{2(\Delta+2/N)}
\left[I_3+\left(\Delta+\frac2N\right)I_2
+\frac{I_1}{N(N\Delta+1)}\right].
\tag{6.14}
$$

For example, at $N=4,Q=2,\Delta=2$, replacing this tensor by the Euclidean expression $I_2$ fails the right pair-degree-two flag:

$$
\left.\mathsf P^R_{12,2}I_2\right|_{z_1=z_2}
=-\frac{(w_1-w_2)^2(2z_2-z_3-z_4)^2}{80}\ne0.
\tag{6.15}
$$

Thus the error changes the state, not only its normalization.

At $Q=0$, (6.13) reduces to the chiral Jastrow section $\mathcal V_N^4\mathbb C[e_2,\ldots,e_N]$. Multiplication by $\mathcal V_N^4$ intertwines the chiral polynomial raising action with the algebraic parameter $\Delta+4(N-1)$. This is an algebraic identity, not an isometry and not a change of the physical scalar mass. The positive pair-projector description is the precise Laughlin/pseudopotential analogy. No quantum Hall phase, gap uniform in a thermodynamic limit, or topological order follows from it.

## 6.3 Exact counts and the size of the positive problem

For three particles, (5.3) becomes

$$
d_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2c_Pc_Q}{6},
\quad
\epsilon_P=\mathbf1_{P\ \mathrm{even}},\quad c_P=(1,-1,0)_{P\bmod3}.
\tag{6.16}
$$

If $d_{\rm ch}(r)=[x^r](1-x^2)^{-1}(1-x^3)^{-1}$, with value zero for $r<0$, then

$$
d_{\rm ch}(r)=\left\lfloor\frac r6\right\rfloor+1-\mathbf1_{r\bmod6=1},
\qquad
\kappa_3(P,Q)=\sum_{j=0}^Qd_{\rm ch}(P-12-Q-j).
\tag{6.17}
$$

Once $P\ge Q+2$, the auxiliary matrix has

$$
r_Q=\left\lfloor\frac{(Q+4)^2}{4}\right\rfloor-2
=2,4,7,10,14,18,23,\ldots
\tag{6.18}
$$

rows for $Q=0,1,\ldots$. For $P\ge2Q+8$, its physical positive rank is exactly $r_Q$. This is a sufficient eventual threshold, not a claim that every earlier degree has lower rank. For instance, $(P,Q)=(17,5)$ has dimension 18 and auxiliary size 18 but positive rank 17, while $(18,6)$ has dimension 23 and auxiliary size 23 but positive rank 22. A small or zero singular value must not be interpreted by a numerical tolerance as a physical bound state.

For $N\ge4$, the leading positive-rank count is also explicit. Put

$$
L_{N,Q}=\binom{Q+N-2}{N-2},\qquad
\tau_{N,Q}=[y^Q]\frac1{(1-y)^{N-2}(1+y)}.
$$

**Theorem EX-02 (fixed-right-degree rank).** At fixed $N\ge4,Q,\Delta>1$,

$$
d_N(P,Q)-\kappa_N(P,Q)
=\rho_{N,Q}P^{N-3}+O(P^{N-4}),
$$
$$
\rho_{N,Q}=
\frac{(7\binom N2+NQ)L_{N,Q}+\binom N2\tau_{N,Q}}
{2N!(N-3)!}.
\tag{6.19}
$$

This is the unaveraged coefficient asymptotic. Its proof compares the poles of the exact Molien and kernel generating functions. The leading pole at $x=1$ cancels; the next term receives identity and transposition contributions. Other roots of unity have lower pole order for $N\ge5$. The possible double pole at $x=-1$ for $N=4$ cancels as well, using the complete homogeneous polynomial $h_Q(-1,1,-1)$. For $N=3$, the cyclotomic terms cancel exactly in the eventual region, yielding (6.18). Appendix K provides the coefficient calculation and the exceptional-root checks.

## 6.4 Explicit low-channel eigenstates and the special mass

The high-degree kernel is not the only source of exact states. A state whose every pair occupies only a few channels can experience an affine pair-Casimir operator even when the full interaction is not affine.

**Lemma EX-03 (affine support).** Suppose a primary $\Psi\in\mathcal P_{N;P,Q}$ has pair support only where

$$
\gamma_{k\ell}=a+\beta(C_k-C_0)+\eta(C_\ell-C_0).
\tag{6.20}
$$

Then it is an eigenstate with

$$
g=\binom N2a+\beta P(N\Delta+P-1)+\eta Q(N\Delta+Q-1).
\tag{6.21}
$$

Indeed spectral calculus replaces each pair action on this vector by (6.20), and the exact identity $\sum_{i<j}C_{ij}=C_{\rm tot}+(N-2)\sum_iC_i$ sums its two Casimir terms. This proof requires no mutual commutativity of different pair interactions.

Let $a=\gamma_{00}$, $b=\gamma_{20}$, $c=\gamma_{11}$, $e=\gamma_{31}$, and let $\operatorname{Av}$ mean the average of distinct simultaneous permutations. The primary projections

$$
\Phi_1=\Pi_{P,1}\operatorname{Av}(z_1w_1z_2\cdots z_P),
\qquad
\Phi_2=\Pi_{P,1}\operatorname{Av}(z_1^2w_1z_2\cdots z_{P-1})
\tag{6.22}
$$

have pair support $00,20,11$, and $00,20,11,31$, respectively. This follows before primary projection by counting the degree available to a pair and imposing its exchange parity; (5.8) preserves that support.

The first three values always fit (6.20), with

$$
\beta=\frac{b-a}{2(2\Delta+1)},\qquad
\eta=\frac{c-a}{2\Delta}-\beta.
\tag{6.23}
$$

**Theorem EX-04 (universal line and critical doublet).** For every $P\ge1,N\ge P+1$, $\Phi_1\ne0$ and has coefficient

$$
g_{N,P}^{(1)}=\binom N2a+\frac N2(c-a)
+\frac{(b-a)(P-1)(N\Delta+P)}{2(2\Delta+1)}.
\tag{6.24}
$$

For $P\ge3,N\ge P-1$, $\Phi_2\ne0$. It has the same coefficient whenever

$$
\mathcal R=(2\Delta+3)(a-b)-(2\Delta+1)(c-e)=0.
\tag{6.25}
$$

For $N\ge P+1$ the two states are independent. Equation (6.25) is exactly the condition for this four-channel affine interpolation, and for the displayed two-functional scalar quotient developed in Appendix L; it is not a classification of every degeneracy of the full Hamiltonian.

The nonzero ranges require proof because a seed can be a pure descendant. At $N=P$, the first seed is $(\prod_i z_i)(\sum_iw_i)/N$, so its right primary projection is zero. Conversely, the test primary $F_P=\sum_iZ_i^PW_i$ has seed coefficients

$$
[z_1w_1z_2\cdots z_P]F_P=
\frac{(-1)^PP!}{N^P}(P-N),
$$
$$
[z_1^2w_1z_2\cdots z_{P-1}]F_P=
\frac{(-1)^PP!}{2N^P}(N^2-3N+P).
\tag{6.26}
$$

The diagonal positive monomial Gram turns these nonzero coefficients into nonzero pairings with the seeds, proving the stated ranges. Independence is proved by two coefficient functionals in Appendix L, with determinant $\binom P2(2-P)\ne0$.

For the Einstein values,

$$
\mathcal R=-\frac{24\Delta(2\Delta^2+\Delta-4)}{(2\Delta-1)(2\Delta+5)}.
\tag{6.27}
$$

Its only physical zero is $\Delta_*=(\sqrt{33}-1)/4$. For example, at $N=4,P=3,Q=1$, specializing the complete matrix to the exact field $\mathbb Q(\sqrt{33})$ gives

$$
W_4=-\frac{129+527\sqrt{33}}{64}I_2.
\tag{6.28}
$$

The square-free characteristic polynomial has degree one although the physical eigenspace has dimension two. This is one reason a generic multiplicity calculation cannot be reused at a special mass.

There is also a universal chiral state

$$
\Phi_P^{\rm ch}=\Pi_L(P)\operatorname{Av}(z_1\cdots z_P),
\quad 2\le P\le N,
\quad
g_{N,P}^{\rm ch}=\binom N2a+\beta P(N\Delta+P-1).
\tag{6.29}
$$

Its seed has only channels 0 and 2. The coefficient of $z_1\cdots z_P$ in $\sum_iZ_i^P$, equal to $(-1)^PP!(1-P)/N^{P-1}$, proves nonvanishing. At fixed finite degree, the rescaling $x_i=\sqrt\Delta z_i$, followed by $\Delta\to\infty$, contracts the norm to the Bargmann–Fock norm and the primary projector to center-of-mass translation. This identifies the chiral projected elementary states with the appropriate contraction of the rotating-boson construction [PB]. The finite-$\Delta$ physical projector is different from ordinary coordinate centering.

## 6.5 Complete lowest-eigenspace classification by root-power ideals

For the Einstein interaction, the affine remainder in the chiral sector vanishes at $k=0,2$ and is strictly positive at every allowed $k\ge4$. In the $Q=1$ sector its only additional zero below the critical mass is channel $11$; at $\Delta_*$, channel $31$ becomes zero. The decisive explicit remainders are

$$
\begin{aligned}
\mathcal R_{40}&=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,\\
\mathcal R_{31}&=-\frac{24\Delta(2\Delta^2+\Delta-4)}{(2\Delta-1)(2\Delta+1)(2\Delta+5)},\\
\mathcal R_{51}&=\frac{2\Delta(4\Delta^3+4\Delta^2+53\Delta+44)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0.
\end{aligned}
\tag{6.30}
$$

On the relevant plateau, increasing $k$ by two increases the remainder by $-2\beta(2\Delta+2k+1)>0$. These formulas prove the necessary positivity for every pair channel, without a finite cutoff inference.

The remaining question is completeness of the simultaneous low-channel kernel. The useful change of polynomial realization is the Fischer map

$$
z^p\longmapsto\frac{x^p}{(\Delta)_p},\qquad
\|x^p\|^2=p!(\Delta)_p.
\tag{6.31}
$$

It sends total raising to multiplication by $S=\sum_i x_i$, and lowering to $B=\sum_i(x_i\partial_i^2+\Delta\partial_i)$. In this realization, the condition that pair relative degrees are at most $r$ is

$$
(\partial_i-\partial_j)^{r+1}F=0\quad\hbox{for every }i<j.
\tag{6.32}
$$

Both $S$ and $B$ preserve this space: for $D_{ij}=\partial_i-\partial_j$,

$$
[D_{ij}^m,B]=m(\partial_i+\partial_j)D_{ij}^m.
\tag{6.33}
$$

Thus positivity of the physical Fischer metric identifies the primary slice with the quotient by $S$. This is a Hilbert-space statement connecting the algebraic inverse system to the actual spectrum.

On the hyperplane $\sum x_i=0$, the inverse system is dual to

$$
I_{r+1,N}=\langle(t_i-t_j)^{r+1}:i<j\rangle.
\tag{6.34}
$$

Appendix L proves the needed cubic and quartic classifications directly. The cubic quotient has Hilbert polynomial $(1+t)^N-t$; its inverse space is the span of square-free products of the centered coordinates. The quartic quotient has Hilbert polynomial

$$
(1+(N-1)t^2)(1+t)^{N-1};
\tag{6.35}
$$

its inverse space is the restriction of square-free monomials together with monomials with exactly one squared variable. The full $S_N$-module structures, not only their dimensions, determine the intersections with the right primary representation.

**Theorem EX-05 (complete affine-bound multiplicities).** For every finite $N\ge2$:

$$
\begin{aligned}
\sum_Pm_{{\rm ch},N,P}t^P&=1+t^2\frac{1-t^{N-1}}{1-t},&&\Delta>1,\\
\sum_Pm_{<,N,P}t^P&=t\frac{1-t^{N-1}}{1-t},&&1<\Delta<\Delta_*,\ Q=1,\\
\sum_Pm_{*,N,P}t^P&=(t+t^3)\frac{1-t^{N-1}}{1-t},&&\Delta=\Delta_*,\ Q=1.
\end{aligned}
\tag{6.36}
$$

Each coefficient is the dimension of the complete eigenspace attaining the corresponding affine lower bound (6.24) or (6.29). A zero coefficient means the bound is not attained in that block; it is not a formula for the next eigenvalue. In the critical $Q=1$ range there are two states for $3\le P\le N-1$, one at the indicated endpoints, and none outside the two finite ladders. At $N=2$, only $P=1,3$ occur. For $\Delta>\Delta_*$, the universal line (6.24) still exists in its nonzero range, but $\mathcal R_{31}<0$ invalidates this lower bound already in the two-particle $(3,1)$ primary.

There is a precise limit to this method. At $\Delta=2,N=5,(P,Q)=(4,1)$, in the centered basis $(c_{41},c_{11}c_{30},c_{20}c_{21})$, the two projected seed vectors can be scaled to

$$
v_1=(-10,80,99)^T,\qquad v_2=(95,290,-153)^T,
\quad\det[v_1,v_2,Wv_2]=10080000\ne0.
\tag{6.37}
$$

Both have the proposed low-channel support, yet their two-dimensional span is not invariant. The universal first line survives; the second vector leaves the span. At the next power-ideal cutoff, $(\prod_i x_i)^2$, restricted to $\sum x_i=0$, is a nonzero degree-$2N$ inverse-system element annihilated by all fifth root derivatives. For $N\ge3$ it exceeds the maximal degree $N+2$ of a proposed square-free-times-degree-two spanning family. Hence the successful cubic/quartic classification cannot be extended by that simple guess.

## 6.6 The upper edge and its exact global gap

The pair coefficients satisfy the strict band ordering

$$
g_{n,0}>g_{n,2}>u_n>g_{n+1,0},
\qquad u_n=4\mu-8(\Delta+n)(\Delta+n-1).
\tag{6.38}
$$

Let

$$
c=\gamma_{00}-\gamma_{20}
=\frac{2\Delta(2\Delta^2+7\Delta+2)}{(2\Delta-1)(2\Delta+3)}>0.
\tag{6.39}
$$

Then the stronger pair comparison is

$$
\gamma_{00}-\gamma_{k\ell}
\ge c(\mathbf1_{k>0}+\mathbf1_{\ell>0}),
\tag{6.40}
$$

with equality only in channels $00,20,02$. Appendix G proves the ordering and strict comparison, including the lowest radial endpoint. A positive hierarchy of threshold projectors also reconstructs $\gamma_{00}I-w$, making positivity of every finite coefficient block transparent.

Define the chiral collision operator

$$
K_N^\chi=\sum_{i<j}(I-\mathsf P^\chi_{ij,0}).
\tag{6.41}
$$

It has kernel the global module generated by the constant polynomial. Its first positive eigenvalue on the labelled tensor representation is

$$
\lambda_N=\frac{N\Delta+1}{2\Delta+1}.
\tag{6.42}
$$

One proof starts with the exact three-site Gram of pair-zero states. Its diagonal entries are one and off-diagonal entries are $r_T=(-1)^T(\Delta)_T/(2\Delta)_T$. The minimum nonzero three-site value is $(3\Delta+1)/(2\Delta+1)$, attained in the symmetric degree-two primary. Summing the triangle inequalities gives

$$
K_N^2\ge\left[(N-2)\frac{3\Delta+1}{2\Delta+1}-(N-3)\right]K_N
=\lambda_NK_N.
\tag{6.43}
$$

The omitted disjoint-pair products are positive because those projectors commute. The polynomial $F_2=\sum_i z_i^2-(\sum_i z_i)^2/N$ realizes equality, since

$$
(I-\mathsf P_{ij,0})F_2
=\frac{N\Delta+1}{N(2\Delta+1)}(z_i-z_j)^2.
\tag{6.44}
$$

The case $N=2$ follows directly. The triangle expansion, the three-site exceptional small degrees, and the equality classification are supplied in Appendix G.

**Theorem EX-06 (top coefficient and exact gap).** At fixed $N\ge2,\Delta>1$, the upper edge of the full coefficient tower is

$$
g_{\rm top}=\binom N2\gamma_{00}.
\tag{6.45}
$$

It belongs only to the primary $(0,0)$ and its global descendants. The exact gap to the next coefficient is

$$
\delta g_N=c\frac{N\Delta+1}{2\Delta+1},
\tag{6.46}
$$

attained only by the primaries $(2,0),(0,2)$ and their descendants. At a full level $(M_L,M_R)$, the top multiplicity is one; the gap-level multiplicity is $\mathbf1_{M_L\ge2}+\mathbf1_{M_R\ge2}$. A smaller level may contain neither gap branch.

The pair comparison implies $g_{\rm top}I-W_N\ge c(K_N^L+K_N^R)$. Equations (6.42)–(6.44) prove the value, and equality in the pair comparison restricts every pair to $00,20,02$, excluding a radial or mixed equality state. The remaining chiral equality space is exactly the symmetric degree-two primary and its descendants. This coefficient gap is independent of the physical mass-gap subtraction of Chapter 3. It also does not bound the full energy uniformly when $N,P,Q$ are allowed to grow at fixed nonzero $G$.

## 6.7 A useful Dirichlet realization and a precise positivity obstruction

The unitary Gamma–Laguerre transform

$$
\mathcal U_\Delta z^p=\frac{p!}{(\Delta)_p}L_p^{(\Delta-1)}(x),
\qquad d\nu_\Delta(x)=\frac{x^{\Delta-1}e^{-x}}{\Gamma(\Delta)}\,dx
\tag{6.47}
$$

realizes the same polynomial inner product in a positive measure space [DLMF]. After tensoring, write $x_i=S\xi_i$, $\sum\xi_i=1$. A degree-$P$ primary maps to $S^PY_P(\xi)$, with a Dirichlet $(\Delta,\ldots,\Delta)$ angular measure; descendants are radial Laguerre factors with parameter $N\Delta+2P-1$. These are auxiliary representation coordinates, not bulk radial coordinates or changed boundary conditions.

The pair Casimir becomes

$$
\mathcal U C_{ij}\mathcal U^{-1}=\Delta(\Delta-1)-\mathcal J_{ij},
\quad
\mathcal J_{ij}=x_ix_j(\partial_i-\partial_j)^2
+\Delta(x_j-x_i)(\partial_i-\partial_j).
\tag{6.48}
$$

At pair sum fixed, $u=x_i/(x_i+x_j)$ has Beta $(\Delta,\Delta)$ measure and $\mathcal J=u(1-u)\partial_u^2+\Delta(1-2u)\partial_u$. Pair degree zero is conditional Beta averaging. The full interaction has the exact decomposition

$$
W_N=2N\mu-4(C_{\rm tot}^L+C_{\rm tot}^R)
+4\sum_{i<j}|C_{ij}^L-C_{ij}^R|+\sum_{i<j}\mathcal R_{ij},
\tag{6.49}
$$

where $\mathcal R_{ij}\ge0$ is supported on spin 0 and 2. The absolute value is spectral functional calculus of the commuting left and right pair Casimirs. It is an exact nonpolynomial term.

In the chiral sector,

$$
w=-4\Delta^2I+a_0\mathsf P_0+a_2\mathsf P_2,
\quad
a_0=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},\quad
a_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
\tag{6.50}
$$

A positive ground-descendant similarity at fixed pair total degree $T$ gives a Beta-binomial stationary law

$$
\pi_T(a)=\binom Ta\frac{(\Delta)_a(\Delta)_{T-a}}{(2\Delta)_T}.
\tag{6.51}
$$

The degree-two projector has kernel $\pi_T(b)q_2(a)q_2(b)$, where $q_2=((2a-T)^2-m_2)/\sqrt{v_2}$,

$$
m_2=\frac{T(T+2\Delta)}{2\Delta+1},\quad
v_2=\frac{4T\Delta(T-1)(T+2\Delta)(T+2\Delta+1)}{(2\Delta+1)^2(2\Delta+3)}.
\tag{6.52}
$$

For $T<2$, the degree-two sector is simply absent. For $T\ge2$, bounding the extreme values of the centered square gives $q_2(a)q_2(b)\ge-(2\Delta+3)/2$. Consequently

$$
a_0+a_2q_2(a)q_2(b)\ge\frac{2\Delta(\Delta+1)}{2\Delta-1}>0.
\tag{6.53}
$$

Thus the shifted chiral operator is a genuine reversible Markov generator in this specified realization, with a suitable labelled odd-channel extension; its physical Bose restriction is fixed. The global stationary law is the Dirichlet-multinomial law obtained from (6.51). Unitarity by itself would not prove positivity, since it need not preserve a pointwise cone; (6.53) is the needed extra argument.

**Theorem EX-07 (failure of the natural nonchiral cone).** The full nonchiral operator is not positivity preserving in the natural product-Dirichlet cone, for any $\Delta>1$, already for two particles.

To prove this, put $X=2u-1,Y=2v-1$, $m=(2\Delta+1)^{-1}$, $q(X)=X^2-m$, $L=w-\gamma_{00}I$, and $b_{22}=\gamma_{00}-\gamma_{22}$. The nonnegative Bose polynomial $F=X^2Y^2$ has

$$
LF(0,0)=\frac{2c-b_{22}}{(2\Delta+1)^2}
=-\frac{12(10\Delta^3+29\Delta^2+8\Delta-14)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)}<0.
\tag{6.54}
$$

Its exact finite spectral evolution at that point is

$$
(e^{tL}F)(0,0)=\frac{1-2e^{-ct}+e^{-b_{22}t}}{(2\Delta+1)^2}.
\tag{6.55}
$$

For small positive $t$, this is negative; continuity makes it negative on an open set of positive measure. There is therefore no domain or isolated-point loophole. At $\Delta=2$, (6.54) is $-88/35$. Only even-even physical pair channels occur, so an unphysical odd-channel completion cannot repair this obstruction. It excludes this particular natural cone, not every conceivable nonlocal unitary realization with a different cone.

A separate occupation-basis obstruction has a different scope: at $\Delta=2,N=2,(P,Q)=(2,2)$, a three-edge off-diagonal cycle has factors $312/35,-528/35,416/35$, whose product is negative. That product is invariant under invertible diagonal similarity and scalar shifts, excluding a nonnegative off-diagonal generator obtained by such a similarity in that basis. It is not the proof of Theorem EX-07 and does not exclude arbitrary basis changes.

## 6.8 What exact algebraic obstructions do, and do not, establish

**Proposition EX-09 (a finite Galois obstruction to radical formulas).** The finite construction produces algebraic eigenvalues, but in general they cannot be written in radicals. One concrete physical block at $\Delta=2,N=3,(P,Q)=(6,3)$, with $x=g+240$, has the irreducible quintic factor

$$
\begin{aligned}
f_5(x)={}&3713039955625x^5-942938552055500x^4
+74501974772024800x^3\\
&-2003576214981165440x^2
+19936439419181140992x\\
&-54992948200676982784.
\end{aligned}
\tag{6.56}
$$

Its reductions modulo 23 and 17 have factor degrees $5$ and $(2,3)$, respectively, with nonzero discriminant modulo those primes. The first proves irreducibility and a transitive degree-five Galois action; the second supplies an element whose cube is a transposition. A transitive group of prime degree is primitive. In a primitive permutation group the conjugates of a transposition form the edges of a connected invariant graph, and those edge transpositions generate the full symmetric group. Hence the Galois group is $S_5$. This rules out a general radical formula for these finite roots, while polynomial plus isolating interval remains an exact answer. The package retains the exact finite-field certificate; it is distinguished from the finite regressions rerun for the present master note.

Several other obstructions concern narrower proposed structures. In a fixed chiral block, the channel-zero and channel-two pair sums can have a scalar common commutant; one exact example is $N=4,\Delta=2,P=6$, where their commutator has rank two and their common commutant has dimension one. This excludes coefficient-independent charges built from commuting with both channel sums on that block, not every possible mass-dependent conserved operator. The symmetric differential derivation $D_2$ also fails to be a conserved charge: for $N=3,\Delta=2$,

$$
[W_3,D_2]p_2=-\frac{64}{7}p_3,
\tag{6.57}
$$

with $W_3p_2=-40p_2$, $W_3p_3=-312p_3/7$, and $D_2p_2=2p_3$. Tangency to collision ideals is not itself a conservation law.

The chiral pair interaction has nonzero deviations from its plateau only in channels 0 and 2. It therefore cannot be one fixed polynomial, or one fixed rational function with a nonsingular denominator on the spectrum, of the pair Casimir: subtracting the plateau would give infinitely many distinct zeros of a nonzero polynomial numerator. This excludes a global fixed-degree Casimir formula, even though every finite truncation admits the interpolation (5.6).

**Theorem EX-08 (specified Kohno-residue obstruction).** On the full labelled tensor product of identical positive-discrete-series factors, prescribe the even pair values to be the chiral Einstein values. Allow arbitrary odd pair values, a common scalar shift, a common pair-Casimir addition, and a nonzero common rescaling. No resulting residues $\Omega_{ij}$ satisfy

$$
[\Omega_{12},\Omega_{13}+\Omega_{23}]=0
\tag{6.58}
$$

for any $\Delta>1$. Appendix O proves this by exact degree-$2,3,4,5$ labelled-primary matrices, including the exceptional Casimir-shift branch. Projecting to Bose states before testing the labelled relation would not test the required flatness condition. The result excludes these prescribed two-site residues as a Kohno-flat connection. It does not exclude unrelated spectral-parameter constructions, arbitrary Bethe ansätze, nonlocal transformations, or all forms of integrability. The complete finite algorithm needs none of these stronger conclusions.

# 7. Fixed right degree: atomic laws and the recursive cluster spectrum

This chapter fixes the particle number $N$, the right primary degree $Q$, and the scalar dimension $\Delta>1$, and sends the left primary degree $P$ to infinity. The interaction coefficient is always extracted first on a finite block: $E=E_0+Gg+o(G)$, with $G$ Newton's constant. None of the limits below exchanges the perturbative limit with $P\to\infty$.

The physical interpretation inherits the perturbative, boundary, and sector-closure hypotheses of the finite-theory chapters. Once those finite matrices and pair coefficients are supplied, the arguments here are operator-theoretic proofs.

The finite theory supplies the diagonal-Bose primary space

$$
\mathcal P_N(P,Q)=\bigl(V_N^L(P)\otimes V_N^R(Q)\bigr)^{S_N},
\qquad W_N(P,Q)=b_N(Q)I+A_N(P,Q),
$$

where

$$
b_N(q)=-2N(N-1)\Delta^2-8q(N\Delta+q-1),\qquad A_N(P,Q)\geq0.
$$

Bose symmetry acts simultaneously on the two chiral factors. In particular, it does not mean symmetrizing them separately. If

$$
C_\ell=(\Delta+\ell)(\Delta+\ell-1),\qquad
 a_{k\ell}=\gamma_{k\ell}-4\Delta(\Delta-2)+8C_\ell,
$$

then the pair contribution to $A_N$ is the positive sum of the pair-channel projectors with coefficients $a_{k\ell}$. At fixed $Q$, its support is

$$
\mathcal B_Q=\{(k,\ell):0\leq\ell\leq Q,\ 0\leq k\leq\ell+2,
\ k+\ell\equiv0\pmod2\}.
$$

On this set $a_{k\ell}>0$; on the remaining admissible pair channels $k\geq\ell+4$, the coefficient vanishes. All assertions below inherit this finite, positive pair spectrum from the exact Einstein calculation. The purely algebraic cluster argument also admits signed, compact pair tails; the stronger atomic and accumulation conclusions use the Einstein support explicitly.

For the labelled-space proofs we use the positive extension that vanishes on odd $k+\ell$:
$$
A_N=\sum_{i<j}\sum_{(k,\ell)\in\mathcal B_Q}
a_{k\ell}\,\Pi^L_{ij,k}\Pi^R_{ij,\ell}.
$$
Here the two factors are orthogonal pair-channel projectors in the two chiral representations. Its diagonal-Bose compression is the physical residual, because every physical state has even pair parity.

A convention is essential when a lower-particle block is used as a cluster. Its residual is

$$
A_m(p,q)=W_m(p,q)-b_m(q)I
\tag{CL.1}
$$

at its **actual ordered degrees** $(p,q)$, including $p<q$. A solver that swaps the chiralities before returning a residual must restore the scalar $b_m(\min(p,q))-b_m(q)$ on every physical eigenvalue, including the multiplicity that the swapped solver called its baseline. Losing this shift changes the recursive spectral set.

## 7.1. Two complementary large-degree questions

For $N\geq4$, the empirical measure counts the $O(P^{N-3})$ nonzero residual eigenvalues after normalization by their number. It therefore records the pair atoms and suppresses a cluster family whose multiplicity is smaller by a power of $P$. The spectral set records every eigenvalue regardless of its statistical weight. Its limit is a recursive collection of lower-particle energies, and may contain infinitely many isolated values accumulating on simpler clusters. These are compatible descriptions of different observables.

### Theorem CL-01. Positive atomic law

Let $N\geq4$, $Q\geq0$, and $\Delta>1$ be fixed. Denote by $\mu^+_{N,P,Q}$ the probability measure on the strictly positive eigenvalues of $A_N(P,Q)$, with physical multiplicity. Set

$$
w_{N,Q}(\ell)=\binom{Q-\ell+N-3}{N-3},\qquad
 Z_{N,Q}=\sum_{(k,\ell)\in\mathcal B_Q}w_{N,Q}(\ell).
$$

Then

$$
W_2\!\left(\mu^+_{N,P,Q},\frac1{Z_{N,Q}}
\sum_{(k,\ell)\in\mathcal B_Q}w_{N,Q}(\ell)\delta_{a_{k\ell}}\right)
=O(P^{-1/2}).
\tag{CL.2}
$$

Coincident pair values have their weights added. The number of positive eigenvalues at distance more than $\varepsilon>0$ from the pair-atom set is $O(P^{N-4}\varepsilon^{-2})$. Constants may depend on $N,Q,\Delta$, and on $\varepsilon$ where indicated. The probability measure on the entire primary spectrum of $W_N$, including its exact kernel multiplicity, converges to $\delta_{b_N(Q)}$.

The proof uses a rectangular frame, so it does not identify the frame's auxiliary nullity with the physical kernel. If $F$ is the orthonormal distinguished-pair frame, $p_B$ the diagonal Bose projection, $D=\operatorname{diag}(a_{k\ell})$, and

$$
\binom N2 F^*p_BF=I+K,
$$

then the positive spectra of $A_N$ and $B=D^{1/2}(I+K)D^{1/2}$ agree with multiplicities.

Here the polynomial frame and its physical Gram matrix $\Gamma$ from Chapter 5 have been normalized: $F=F_{\mathrm{pol}}\Gamma^{-1/2}$. Thus $\Gamma$ is absorbed into the frame and the recoupling matrices; the auxiliary space still counts complete spectator levels. The quantitative statement is

$$
\|K\|_{\mathrm{HS}}^2+\|B-D\|_{\mathrm{HS}}^2=O(P^{N-4}).
\tag{CL.3}
$$

Overlapping pairs require the endpoint Racah estimate proved in Appendix CL.A; disjoint pairs require only descendant counting. Appendix CL.B proves the measure statement, including the removal of auxiliary zeros.

The same argument gives the positive-rank asymptotic
$$
\operatorname{rank}A_N(P,Q)=
\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
$$
This is exactly the coefficient $\rho_{N,Q}$ of Theorem EX-02. Indeed $\sum_{Q\geq0}Z_{N,Q}y^Q=(2-y^2)/[(1-y)^N(1+y)]$, which converts that theorem's identity and transposition terms into the displayed expression.

For instance, at $N=4,Q=2,\Delta=2$, the exact atom data are:

| Pair channel | Residual atom | Limiting weight |
|---|---:|---:|
| $(0,0)$ | $24/5$ | $3/13$ |
| $(2,0)$ | $8/35$ | $3/13$ |
| $(1,1)$ | $312/35$ | $2/13$ |
| $(3,1)$ | $8/21$ | $2/13$ |
| $(0,2)$ | $2808/35$ | $1/13$ |
| $(2,2)$ | $64/5$ | $1/13$ |
| $(4,2)$ | $40/77$ | $1/13$ |

The retained earlier matrix calculation (ADS3_Analytic_spectrum_research.md, Appendix A, §5.3) had $W_2=14.45596$ at $P=32$ and $W_2=3.00002$ at $P=512$; these finite values were not rerun here. Their slow convergence is compatible with the theorem's asymptotic rate and is a reason to keep the cluster analysis for exceptional eigenvalues.

For a complete free level, use $M_L,M_R$ for the level degrees to keep them separate from primary degrees. At fixed $M_R$, $M_L\to\infty$, the empirical measure of the entire correction spectrum converges to

$$
\sum_{q=0}^{M_R}
\frac{\binom{q+N-2}{N-2}}{\binom{M_R+N-1}{N-1}}
\delta_{b_N(q)}.
\tag{CL.4}
$$

The measure restricted to nonsaturated descendants instead converges, with the same $W_2$ rate, to the normalized sum of atoms $b_N(q)+a_{k\ell}$, $0\leq q\leq M_R$, $(k,\ell)\in\mathcal B_q$, with weights $\binom{q-\ell+N-3}{N-3}$. This is a descendant mixture, not another primary limit.

## 7.2. Compact cluster interactions and connected functional calculus

For a nonempty labelled particle set $S$, the positive discrete-series decomposition gives finite internal multiplicity spaces $V_S(p,q)=V_S^L(p)\otimes V_S^R(q)$. A local compact cluster operator is a degree-preserving family

$$
X_S\in\mathcal C_S^{\leq Q}:=
 c_0\!\bigoplus_{p\geq0,\ 0\leq q\leq Q}\operatorname{End}V_S(p,q),
\tag{CL.5}
$$

acting as the identity on the cluster's descendant representation and on the other particles. A proper-cluster operator need not be compact on the full $N$-particle primary direct sum: external relative excitations give it infinitely many copies. For a partition $\pi$ of the particle labels, $\mathcal C_\pi$ is the actual product image of its block algebras, with total internal right degree at most $Q$. Impossible degree-budget blocks are zero in this image.

### Theorem CL-02. Overlap and partition multiplication

If $S\cap T\ne\varnothing$,

$$
\mathcal C_S^{\leq Q}\mathcal C_T^{\leq Q}
\subseteq\mathcal C_{S\cup T}^{\leq Q}.
$$

For arbitrary partitions,

$$
\mathcal C_\pi\mathcal C_\tau\subseteq\mathcal C_{\pi\vee\tau}.
\tag{CL.6}
$$

For fixed left internal cutoffs on $S,T$, the product of their cutoff projections has norm $O(J^{-|S\cap T|\Delta})$ on union degree $J$. The assertion for arbitrary $c_0$ operators follows by taking the finite cutoff before the large-$J$ limit. In particular, the one-block component is compact on the fixed-$Q$ global-primary direct sum.

The exponent is controlled by the common **effective cluster**, whose lowest weight is $|S\cap T|\Delta/2+p_{S\cap T}$. Merely stating that two coupling trees become orthogonal does not supply the uniform finite-rectangle estimate needed for operator compactness. Appendix CL.C supplies it and explains why arbitrary matrices on internal multiplicity spaces cause no additional difficulty.

Let

$$
H_\pi=\sum_{S\in\pi}A_{|S|}^{(S)},\qquad
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
$$

The superscript specifies the labelled cluster; singleton residuals vanish.

### Theorem CL-03. Connected functional calculus

For every continuous $f$ on an interval containing the spectra of all $H_\pi$,

$$
\mathfrak M_N(f):=
\sum_{\pi\in\Pi_N}\mu(\pi,1_N)f(H_\pi)
\tag{CL.7}
$$

belongs to the compact one-block component. If $f(x)=x^r$ and $0\leq r\leq N-2$, the expression is identically zero on every finite block. For $z\notin\mathbb R$, the connected resolvent

$$
\sum_\pi\mu(\pi,1_N)(z-H_\pi)^{-1}
$$

is compact. The same conclusion holds for real $z$ outside the union of the actual spectra. Its expansion at infinity first permits a nonzero term at order $z^{-N}$, built from all ordered spanning-tree words. On the labelled degree-zero vector the coefficient is

$$
(N-1)!N^{N-2}a_{00}^{N-1}.
\tag{CL.8}
$$

The proof expands **ordered** pair words, associates a graph component partition to each word, and uses finite partition-lattice Möbius inversion. No overlapping interaction factors are commuted. Polynomial approximation then gives the continuous calculus. On the physical space, internal Bose projections are inserted before using cluster spectra; the argument does not assert that functional calculus commutes with an arbitrary compression. See Appendix CL.D.

Compactness in Theorems CL-02–03 is an operator-norm tail assertion. It is not a trace-class or Schatten-class assertion. A pair tail proportional to $1/\log(k+2)$ already gives a compact connected two-body resolvent belonging to no finite Schatten class. The separate four-body trace-norm theorem below uses the actual endpoint exponent $\Delta>1$.

## 7.3. Recursive spectral sets and the parity of equal clusters

Define compact spectral sets

$$
\Sigma_{m,q}=\overline{\bigcup_{p\geq0}\sigma(A_m(p,q))},
\qquad \Sigma_{1,0}=\{0\},\quad \Sigma_{1,q}=\varnothing\ (q>0).
\tag{CL.9}
$$

Empty finite blocks contribute nothing. Repetitions are ignored in this definition. The two-body input is

$$
\Sigma_{2,q}=\{0\}\cup\{a_{kq}:(k,q)\in\mathcal B_q\}.
$$

For $N\geq2$, put

$$
\mathfrak C_{N,Q}=
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\ \bigcup_{q_1+q_2\leq Q}
\bigl(\Sigma_{a,q_1}+\Sigma_{N-a,q_2}\bigr).
\tag{CL.10}
$$

All sums use the residual convention (CL.1). The unused right degree is the relative two-cluster coupling degree; it does not add a scalar energy to (CL.10).

### Theorem CL-04. Essential spectrum and Hausdorff limit

For fixed $N,Q,\Delta$,

$$
\sigma_{\mathrm{ess}}\!\left(\bigoplus_{P\geq0}A_N(P,Q)\right)
=\mathfrak C_{N,Q}.
\tag{CL.11}
$$

Along $P+Q$ even, the finite spectral sets converge in Hausdorff distance to $\mathfrak C_{N,Q}$. If $N\geq3$ is odd, this convergence holds along all sufficiently large $P$. For $N=2$, the odd total-degree physical block is empty and the even-subsequence limit is $\{0\}$.

For even $N=2m\geq4$, the precise odd-subsequence limit needs the actual internal source space. Let $\mathfrak h_{m,Q}$ be the orthogonal direct sum of all $\mathcal P_m(p,q)$, $p\geq0$, $0\leq q\leq Q$, and choose a complete eigenstate list $(\lambda_i,p_i,q_i)$ with multiplicity. Define

$$
\begin{aligned}
\mathfrak U_{2m,Q}
 &=\bigcup_{a<m}\ \bigcup_{q_1+q_2\leq Q}
 (\Sigma_{a,q_1}+\Sigma_{2m-a,q_2}),\\
\mathfrak E_{m,Q}^{+}
 &=\overline{\{\lambda_i+\lambda_j:i\leq j,\ q_i+q_j\leq Q\}},\\
\mathfrak E_{m,Q}^{-}
 &=\overline{\{\lambda_i+\lambda_j:i<j,\ q_i+q_j\leq Q\}}.
\end{aligned}
\tag{CL.12}
$$

Then along $(-1)^{P+Q}=\eta$, the Hausdorff limit is

$$
\mathfrak U_{2m,Q}\cup\mathfrak E_{m,Q}^{\eta}.
\tag{CL.13}
$$

The exterior square in the minus case acts on internal **states**, including their degrees and multiplicities, not on the set of distinct numerical eigenvalues. Two different states of the same energy are admissible in the exterior square; a single state paired with itself is not. This exchange rule comes from the Bose projection of two equal clusters and does not change the statistics of the original scalar field.

There are two parts to the proof. Connected functional calculus excludes every compact window outside the proper-cluster sum set on the whole high-$P$ block. Binary Clebsch–Gordan maps construct the converse inclusion; their finite families become isometries after Bose projection and a polar correction. For equal clusters the exact swap is a degree-twisted exchange involution. Conjugating that involution gives precisely the symmetric or exterior source in (CL.12). Compactness and a finite net upgrade the pointwise construction to Hausdorff convergence. Appendix CL.E gives the full argument.

For five particles this becomes the particularly usable formula

$$
\mathfrak C_{5,Q}=
\bigcup_{q\leq Q}\Sigma_{4,q}
\ \cup\!
\bigcup_{q_1+q_2\leq Q}(\Sigma_{3,q_1}+\Sigma_{2,q_2}).
\tag{CL.14}
$$

A countable comparison operator consists of every $A_4(p,q)$ and every $A_3(p,q_1)+\alpha I$, $\alpha\in\Sigma_{2,q_2}$, with the indicated budgets. Truncating its internal degree at $R$ approximates the limiting spectral set as $R\to\infty$. This is a target-$P$-independent spectral-set construction. It gives neither a proved effective uniform $R(\varepsilon)$ nor an operator-norm approximation by one copy of that countable operator. Collapsing the repeated two-body zero is valid for this set construction, not for a multiplicity calculation.

## 7.4. Finite accumulation depth

Write $K'$ for the set of limits of sequences of **distinct** points of a compact set $K$, and $K^{(r)}$ for its $r$-fold derived set.

### Theorem CL-05. Recursive depth bound

For the finite-support Einstein pair residual and fixed $N\geq2,Q$,

$$
\Sigma_{N,Q}^{(N-2)}\subseteq
\widehat\Sigma_2(Q):=\{0\}\cup\{a_{k\ell}:(k,\ell)\in\mathcal B_Q\},
\qquad
\Sigma_{N,Q}^{(N-1)}=\varnothing.
\tag{CL.15}
$$

Thus every $\Sigma_{N,Q}$ is compact and countable and has no nonempty perfect subset and no interval. The bound need not be attained. In particular, an eigenvalue repeated in infinitely many finite blocks is not by that repetition alone a derived-set point.

For a general self-adjoint $c_0$ pair residual, the weaker conclusions are

$$
\widehat\Sigma_N(Q)^{(N-1)}\subseteq\{0\},
\qquad \widehat\Sigma_N(Q)^{(N)}=\varnothing,
$$

where $\widehat\Sigma_N(Q)=\bigcup_{q\leq Q}\Sigma_{N,q}$. The proof is the elementary derived-set rule for finite unions and Minkowski sums, applied to Theorem CL-04; Appendix CL.F keeps the zero-rank and singleton cases explicit.

## 7.5. Exact eventual multiplicities at regular cluster values

A spectral-set theorem does not by itself count eigenvalues. To obtain exact multiplicities, define the finer-cluster threshold set

$$
\mathfrak F_{N,Q}=\bigcup_{\substack{\pi\in\Pi_N\\|\pi|\geq3}}
\ \bigcup_{\sum_{S\in\pi}q_S\leq Q}
\sum_{S\in\pi}\Sigma_{|S|,q_S}.
\tag{CL.16}
$$

A value $\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q}$ is called regular. This hypothesis has substantive content: it forces the binary internal source near $\lambda$ to be finite-dimensional and makes $\lambda$ isolated in $\mathfrak C_{N,Q}$.

For an unequal split $a<b$, define

$$
M_{a,b}^{Q}(\lambda)=
\sum_{\substack{q_1+q_2\leq Q\\p_1,p_2\geq0\\\alpha+\beta=\lambda}}
\operatorname{mult}_{A_a(p_1,q_1)}(\alpha)
\operatorname{mult}_{A_b(p_2,q_2)}(\beta).
\tag{CL.17}
$$

For $N=2m$, let $K_{m,Q}(\lambda)$ be the corresponding **ordered** source dimension for $m+m$, and put

$$
T_{m,Q}(\lambda)=
\sum_{\substack{p\geq0\\2q\leq Q}}
\operatorname{mult}_{A_m(p,q)}(\lambda/2),
\qquad
M_{m,m}^{Q,\eta}(\lambda)
=\frac{K_{m,Q}(\lambda)+\eta T_{m,Q}(\lambda)}2.
\tag{CL.18}
$$

These sums are finite under the regularity hypothesis.

### Theorem CL-06. Exact eventual projector rank

For every regular $\lambda$, there is $\varepsilon_0>0$ such that, for each fixed $0<\varepsilon<\varepsilon_0$, there is $P_0(\varepsilon)$ for which

$$
\operatorname{rank}\mathbf1_{(\lambda-\varepsilon,\lambda+\varepsilon)}(A_N(P,Q))
=\sum_{a<N/2}M_{a,N-a}^{Q}(\lambda)
+\mathbf1_{2\mid N}\,M_{N/2,N/2}^{Q,(-1)^{P+Q}}(\lambda)
\tag{CL.19}
$$

whenever $P\geq P_0(\varepsilon)$. All eigenvalues counted there converge to $\lambda$. There is one source for each cluster-size orbit; no factor $\binom Na$ multiplies (CL.19). An unused right degree gives the unique binary relative coupling and contributes no extra multiplicity.

The proof first excludes unbounded internal degrees by regularity, then derives an operator-norm approximation to the entire target spectral projector. The Bose-projected source maps have a joint Gram matrix $I+o(1)$; their polar isometry gives an actual finite-rank projection. Two orthogonal projections at distance less than one have the same rank. This yields an exact eventual integer, not a rank inferred from a trial subspace or from numerical near-degeneracy. The quantifiers in (CL.19) concern a fixed window; no rate for shrinking windows or individual eigenvalue series follows. Appendix CL.G gives the proof and the source-space exchange trace that produces (CL.18).

For example, when $N=3$, $\mathfrak F_{3,Q}=\{0\}$, so a positive pair atom has eventual multiplicity equal to the number of bad channel labels with that value. For $N=5,Q=0$,

$$
\mathfrak F_{5,0}=\Sigma_{3,0}\cup(\Sigma_{2,0}+\Sigma_{2,0}).
$$

At a regular value, the count is

$$
\sum_p\operatorname{mult}_{A_4(p,0)}(\lambda)
+\sum_{\alpha\in\{a_{00},a_{20}\}}\sum_p
\operatorname{mult}_{A_3(p,0)}(\lambda-\alpha).
$$

The zero two-body term is absent here because it would put the value in $\mathfrak F_{5,0}$.

## 7.6. The top chiral cluster and a limit on atomic descriptions

At $Q=0$, write

$$
a_0=a_{00}=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},
\qquad
a_2=a_{20}=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
$$

They satisfy $0<a_2<a_0$.

### Theorem CL-07. Eventual simplicity of the largest chiral residual

For $N\geq3$, along all sufficiently large $P$, the largest eigenvalue of $A_N(P,0)$ is simple and

$$
\lambda_{\max}(A_N(P,0))
=\binom{N-1}{2}a_0+O(P^{-\Delta}).
\tag{CL.20}
$$

The source is the unique degree-zero ground state of the $(N-1)$-particle cluster, coupled to a singleton. The finite-block inequality $A_m\leq\binom m2a_0I$ has equality only at its unique degree-zero state. To use that inequality on the **closed** set $\Sigma_{m,0}$, one must also exclude a high-degree sequence tending to the endpoint. The recursive upper theorem gives this exclusion. It then places $\binom{N-1}{2}a_0$ outside the finer threshold, so Theorem CL-06 gives simplicity. Appendix CL.H proves this closure step and the rate.

More generally, every fixed finite orthonormal family of internal $(N-1)$-particle eigenstates of degrees $(p_i,q_i)$, $q_i\leq Q$, has normalized Bose-coupled images $U_P$ satisfying

$$
\|A_N(P,Q)U_P-U_P\operatorname{diag}(\lambda_i)\|
=O(P^{-\Delta}).
\tag{CL.21}
$$

The constants depend on the selected finite family. Two successive singleton insertions imply that if a positive $m$-body eigenvalue $\lambda$ is fixed, then for $N\geq m+2$ and $Q$ at least its right degree, the number of $N$-body eigenvalues in every fixed neighborhood of $\lambda$ tends to infinity. This supplies no multiplicity growth rate.

For $N\geq5,Q=0$, the inherited value $3a_0$ lies above both pair atoms and has unbounded local multiplicity. Consequently the positive residual cannot be represented as

$$
A_N^+(P,0)=D_P+K_P+E_P,
\qquad \sigma(D_P)\subseteq\{a_0,a_2\},\quad\|E_P\|\to0,
\tag{CL.22}
$$

with self-adjoint $K_P$ uniformly compact, meaning that the number of singular values of $K_P$ above each fixed positive threshold stays bounded as $P\to\infty$. This obstruction concerns a uniformly compact correction to the pair-atom description. It leaves the recursive cluster comparison of Theorem CL-04 intact.

## 7.7. Four particles: positive spectrum, nullity and Fredholm determinant

Four particles admit more information because the endpoint tail is summable in trace norm. Let $\alpha=(k,\ell)\in\mathcal B_Q$, $D=\operatorname{diag}(a_\alpha)$ on the pair-spectator frame, and $\epsilon=(-1)^{P+Q}$. The exact reduced matrix is

$$
B_{P,Q}=D^{1/2}(I+4R_1+R_0)D^{1/2},
\tag{CL.23}
$$

where $R_1$ exchanges overlapping pairs and $R_0$ exchanges the two disjoint pairs. Its positive eigenvalues are the physical positive eigenvalues of $A_4(P,Q)$.

For an ordered pair of distinct bad labels $\alpha,\beta$ with $\ell_\alpha+\ell_\beta\leq Q$, the pair-pair block has eigenvalues $0,a_\alpha+a_\beta$. For a repeated label it has the one eigenvalue $(1+\epsilon)a_\alpha$. Let $A_{3;t,u}^{\mathrm{aux}}$ be the finite three-body distinguished-pair Gram matrix, retaining its auxiliary zeros and the oriented baseline $b_3(u)$.

### Theorem CL-08. Refined positive spectral limit

At fixed $Q,\Delta>1$, along $(-1)^{P+Q}=\epsilon$, the strictly positive spectrum of $A_4(P,Q)$ converges in Hausdorff distance to

$$
\mathfrak S_Q^\epsilon=
\overline{\begin{aligned}
&\{a_\alpha:\alpha\in\mathcal B_Q\}
\ \cup\!\bigcup_{\substack{t\geq0\\u\leq Q}}
\sigma_+(A_{3;t,u}^{\mathrm{aux}})\\
&\quad\cup\{a_\alpha+a_\beta:
\ell_\alpha+\ell_\beta\leq Q,
\ \alpha\ne\beta\ \text{or}\ \epsilon=+1\}
\end{aligned}}.
\tag{CL.24}
$$

This compact set is separated from zero. At any isolated value outside the pair-atom set, the eventual multiplicity is the sum of the corresponding three-body positive multiplicities and allowed unordered pair-pair channels. Accidental numerical coincidences add. The full residual spectrum additionally has its physical zero eigenspace; the auxiliary zeros in (CL.23) are a different count.

The last distinction is necessary. For example, the auxiliary three-body block at $(t,u)=(0,1)$ has a zero column although the physical primary block is empty. The no-positive-collapse assertion in (CL.24) therefore needs an exact auxiliary nullity computation, not only positive-matrix norm convergence.

Define

$$
\mathcal A(y)=\frac{2-y^2}{(1-y)(1-y^2)},\qquad
z_3(y)=\frac{3y^4-5y^3-2y+6}{(1-y)^4(1+y+y^2)}.
$$

For every $P>15+3Q$, the exact auxiliary nullity is

$$
z_{4,P,Q}=[y^Q]\left\{
\frac{z_3(y)}{1-y}
+\frac{\mathcal A(y)^2-\epsilon\mathcal A(y^2)}{2(1-y)}
\right\}.
\tag{CL.25}
$$

For $Q=0$ it is $7$ on the even-total-degree subsequence and $9$ on the odd one; for $Q=2$ these values are $64$ and $68$. Appendix CL.J derives the generating functions, the finite transient bound, and the comparison of zero spectral projections.

### Theorem CL-09. Complex locally uniform Fredholm limit

Let $n_\alpha(P,Q)$ be the multiplicity of $a_\alpha$ in the distinguished-pair diagonal matrix and set

$$
\Omega_Q=\mathbb C\setminus\{-a_\alpha:\alpha\in\mathcal B_Q\},
\qquad
\mathcal F_{P,Q}(s)=
\frac{\det(sI+B_{P,Q})}{\prod_\alpha(s+a_\alpha)^{n_\alpha(P,Q)}}.
\tag{CL.26}
$$

Along either parity subsequence, $\mathcal F_{P,Q}$ converges locally uniformly as a holomorphic function on $\Omega_Q$ to

$$
\mathcal F_Q^\epsilon(s)=
\mathcal F_{22,Q}^\epsilon(s)
\prod_{u=0}^Q\prod_{t=0}^{\infty}
\frac{\det(sI+A_{3;t,u}^{\mathrm{aux}})}
{\prod_{\alpha:\,k_\alpha\leq t,\ \ell_\alpha\leq u}(s+a_\alpha)},
\tag{CL.27}
$$

where

$$
\mathcal F_{22,Q}^\epsilon(s)=
\prod_{\substack{\{\alpha,\beta\},\ \alpha\ne\beta\\
\ell_\alpha+\ell_\beta\leq Q}}
\frac{s(s+a_\alpha+a_\beta)}{(s+a_\alpha)(s+a_\beta)}
\prod_{\substack{\alpha\\2\ell_\alpha\leq Q}}
\frac{s+(1+\epsilon)a_\alpha}{s+a_\alpha}.
\tag{CL.28}
$$

The infinite product converges normally. On every compact $K\subset\Omega_Q$, a triple-degree cutoff $T$ has determinant error controlled by a constant times the trace-norm tail $O_K(T^{1-\Delta})$, followed by a finite-$T$ error tending to zero as $P\to\infty$. The order of these limits matters.

The proof uses the branch-free normalization $(s+D)^{-1}$, whose norm is uniformly bounded on $K$. A real-$s$ argument involving square roots would not establish this complex theorem. Local uniform convergence and Rouché's theorem give the multiplicities of isolated zeros away from the excluded atom locations. At $s=0$, (CL.25) specifies the power to remove before taking a pseudodeterminant. Logarithms require an explicitly chosen zero-free domain and branch; the theorem itself is a statement about determinants. Appendix CL.K supplies the trace-norm comparison.

## 7.8. Finite Gamma representation and a certified four-body example

### Theorem CL-10. Integer-dimension Gamma reduction

Suppose $\Delta\in\mathbb Z$, $\Delta\geq2$, with $Q$ fixed. For each right degree $u\leq Q$ and parity $\eta=(-1)^t$, the sufficiently large-$t$ determinant factor in (CL.27) is a rational function

$$
f_{u,\eta}(t;s)=
\frac{\prod_j(t-\alpha_j(s))}{\prod_j(t-\beta_j(s))},
\qquad
\#\{\alpha_j\}=\#\{\beta_j\},\quad
\sum_j\alpha_j=\sum_j\beta_j.
\tag{CL.29}
$$

After cancelling common factors, choose the first $m\geq Q+2$ of that parity. Then

$$
\prod_{n=0}^{\infty}f_{u,\eta}(m+2n;s)
=\prod_j\frac{\Gamma((m-\beta_j(s))/2)}
{\Gamma((m-\alpha_j(s))/2)}.
\tag{CL.30}
$$

Together with the finitely many omitted triple blocks and (CL.28), this is a finite Gamma representation of the limit determinant. The expression is interpreted by symmetric root multisets and analytic continuation on $\Omega_Q$ across root collisions and removable specializations. No ordering of roots or global square-root branch is part of the theorem. A conservative total root-count bound is $O(Q^4)$ for fixed integer $\Delta$. No finite Gamma formula is asserted for noninteger $\Delta$.

For $\Delta=2,Q=0$, $a_0=24/5$, $a_2=8/35$. If $C=(t+2)(t+3)$, $L=(5s+24)(35s+8)$, then for $t\geq2$

$$
\begin{aligned}
f_{0,\eta}(t;s)&=\frac{N_\eta(C;s)}{LC^2(C-2)(C-6)},\\
N_\eta(C;s)&=LC^2(C-2)(C-6)\\
&\quad+\eta\{16800sC(C^2-32C+396)
+34560C(C^2-64C+908)\}\\
&\quad-19353600(C-18).
\end{aligned}
\tag{CL.31}
$$

A quartic in $C$ therefore gives eight roots in $t$. The denominator roots, counted with multiplicity, are

$$0,-1,-2,-2,-3,-3,-4,-5.$$

The even and odd tails start at $2$ and $3$, respectively. The finite $t=0,1$ prefix is $(s+72/5)s/(s+24/5)^2$. Appendix CL.L derives this rational determinant and the Gamma product without taking arbitrary square roots of matrix entries.

The nonchiral integer-dimension calculation is covered by the same theorem. In the retained $\Delta=2,u=1,s=20$ specialization, the rational factor is degree ten in $C$, its denominator is

$$
49512859\,C^4(C-12)(C-6)^2(C-2)^3,
$$

and the $t=0,1,2$ prefix factors are $25/31$, $8875/7843$, and $1413125/1388211$. The even tail starts at $4$, the odd tail at $3$. The associated value was recomputed in this assembly at 80 decimal working precision:

$$
\log\mathcal F_1^+(20)
=-0.0358546286698960811729531052143874137590\ldots.
$$

Both nonchiral rational identities were also reconstructed independently for symbolic $t$. The displayed decimal is a numerical evaluation of the proved rational/Gamma mechanism, with polynomial-root residual checks; it is not an interval certificate. Appendix CL.L gives the full exact numerator coefficients and the recorded numerical scope.

### Theorem CL-11. Certified smallest positive four-body limit at $\Delta=2,Q=0$

For either total-degree parity,

$$
\lim_{P\to\infty}\lambda_{\min}^+(A_4(P,0))
=\lambda_*:=\frac{33220-4\sqrt{66856729}}{15015}
=0.03420674817\ldots.
\tag{CL.32}
$$

The value is the smaller positive eigenvalue of the three-body $t=9$ block. Its characteristic polynomial, made monic, is

$$
x^2-\frac{3654200}{825825}x+\frac{124032}{825825}.
$$

An exact rational check of the explicit two-by-two matrices for $2\leq t\leq128$ puts every other positive triple eigenvalue above $7/200$. A uniform analytic Gershgorin estimate gives, for every $t\geq129$,

$$
\|R_3(t,0)\|\leq\frac{18595}{2397824}<\frac1{100},
\qquad
\lambda_{\min}(A_{3;t,0}^{\mathrm{aux}})\geq\frac{116}{875}>
\frac7{200}.
\tag{CL.33}
$$

All pair atoms and positive pair-pair sums are larger. The exact finite certificate and the uniform tail proof are given in Appendix CL.M. Thus (CL.32) is not an extrapolation from a numerical degree cutoff. The physical correction has the additional baseline $b_4(0)=-96$.

## 7.9. Logical scope and provenance

The chain is: exact finite pair residuals and primary kernels; normalized endpoint recoupling; overlap compactness; connected functional calculus; Bose-compatible binary embeddings; recursive spectral sets; source finiteness and projector ranks. The four-body branch adds summable triple tails and exact auxiliary nullity before deriving complex Fredholm convergence and the Gamma reduction. The statements about compact cluster algebras, empirical measures, limiting sets, and exact multiplicities use different norms and counting conventions; no step identifies them.

The complete proofs appear in Appendices CL.A–CL.M. The source map records the hierarchy report and full proof appendix, its independent audit, the analytic four-body appendix and its later Fredholm audit, and the deep-structure singleton argument. The independent audit repairs incorporated here are the ordered-degree baseline (CL.1), source-space equal-cluster exchange (CL.12), source finiteness before exact rank counting, exclusion of a closure endpoint in CL-07, and the branch-free locally uniform proof in CL-09. External mathematical inputs are normalized $\mathfrak{su}(1,1)$ recoupling [CrampeEtAl2024; Post2015], the finite-dimensional Hoffman–Wielandt inequality [HoffmanWielandt1953], and the trace-class determinant continuity estimate [Bornemann2010]. The many-body semilattice and scalar-$\phi^4$ papers [DamakGeorgescu2009; DerkachovManashov1996] are context; they do not replace any Bose or Einstein-specific argument here.

# 8. Two large excitation degrees: Grassmannian law and the positive soft spectrum

This chapter keeps $N\geq3$ and the physical mass parameter $\Delta>1$ fixed. It studies the coefficient of $G$ in the perturbative energy, after the physical reduction in Chapters 2–4. Thus every limit below concerns the finite operator $W_N(P,Q)$. It does not assert uniformity of the original $o(G)$ remainder when an excitation degree grows. Write

$$
W_N(P,Q)=b_N(Q)I+A_N(P,Q),\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),\qquad A_N\geq0,
$$

and let $d_N(P,Q)$ and $\kappa_N(P,Q)$ be the physical dimension and exact kernel dimension. The primary space is invariant under the **diagonal** particle permutation group. Separate left and right Bose projections would change it. Throughout this chapter $P,Q\to\infty$, with $Q/P\to r\in(0,1]$, unless a different quantifier is displayed.

## 8.1 The limiting probability space and its normalization

Choose two independent Haar distributed oriented two-planes in $\mathbb R^N$. For orthonormal frames $(u,v)$ and $(u',v')$, set

$$
B_{ij}=u_iv_j-u_jv_i,\quad B'_{ij}=u'_iv'_j-u'_jv'_i,
\qquad X_{ij}=B_{ij}^2,\quad Y_{ij}=(B'_{ij})^2.
$$

The squares are frame independent, and

$$
\sum_{i<j}X_{ij}=\sum_{i<j}Y_{ij}=1.
$$

The components within $X$, and within $Y$, are correlated Plücker coordinates. Replacing them by independent scalar variables gives the wrong law. Define

$$
h_{N,r}(X,Y)=-8\sum_{i<j}\min(X_{ij},r^2Y_{ij}),\qquad
a_{N,r}(X,Y)=8\sum_{i<j}(r^2Y_{ij}-X_{ij})_+.
$$

Then $a_{N,r}=h_{N,r}+8r^2$. In the balanced case,

$$
a_{N,1}=4\sum_{i<j}|X_{ij}-Y_{ij}|.
$$

**Theorem SC-01 (Grassmannian spectral law).** For every continuous $f$ on a fixed compact interval containing the spectra,

$$
\frac{1}{d_N(P,Q)}\operatorname{Tr}f\!\left(\frac{W_N(P,Q)}{P^2}\right)
\longrightarrow \mathbb E f(h_{N,r}),
\qquad
\frac{1}{d_N(P,Q)}\operatorname{Tr}f\!\left(\frac{A_N(P,Q)}{P^2}\right)
\longrightarrow \mathbb E f(a_{N,r}).
$$

The law $\nu_{N,r}=\operatorname{Law}(a_{N,r})$ has support $[0,8r^2]$, is absolutely continuous on $(0,8r^2]$, and has no positive atom. If $r<1$, its only atom is

$$
p_N(r)=\Pr\{X_{ij}\geq r^2Y_{ij}\text{ for every }i<j\}>0
$$

at zero. If $r=1$, the entire law is absolutely continuous, including the assertion of zero mass at zero. Moreover,

$$
\min\sigma(A_N/P^2)\longrightarrow0,\qquad
\max\sigma(A_N/P^2)\longrightarrow8r^2.
$$

The dimension normalization is

$$
d_N(P,Q)\sim\frac{P^{N-2}Q^{N-2}}{N!((N-2)!)^2}.
$$

**Proof mechanism.** At the auxiliary representation parameter $1/2$, the common primary polynomials are coordinate-even harmonic tensors of degrees $2P,2Q$, and a pair Casimir is $J_{ij}^2/4-1/4$. Its normalized coherent symbol is $B_{ij}^2$, not $B_{ij}^2/4$. The exact Einstein pair formula differs from $4\Delta(\Delta-2)-8\min(C^L,C^R)$ by $O(P+Q+1)$. Fixed Casimir words can be transferred from the auxiliary parameter to the physical parameter with an $O(P^{-1}+Q^{-1})$ trace error. Polynomial approximation of the two-variable minimum is applied at each parameter in its own Hilbert metric. The true Bose projection is the signed permutation average with a common permutation on both factors; precisely four central sign pairs survive at leading order. These steps give the trace law and dimension simultaneously. The spectral edges additionally use the exact positivity and a uniform operator upper bound. They do not follow from weak convergence alone. Appendix SC-A supplies the resolution of the identity, the metric-sensitive transfer, the group estimate and the support argument.

### 8.1.1 Explicit observables

The marginal $U=|B_{12}|$ has the beta density

$$
\Pr(U\in du)=(N-2)(1-u)^{N-3}\,du,\qquad0<u<1.
$$

This is a marginal statement and does not remove the Plücker correlations. Integrating two independent copies gives

$$
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}
=-8r^2\,{}_2F_1(2,2-N;N+1;r).
$$

The hypergeometric expression terminates after degree $N-2$. At $r=1$,

$$
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}=-\frac{4N}{2N-3},\qquad
\lim\frac{\operatorname{Tr}A_N}{d_NP^2}=\frac{12(N-2)}{2N-3}.
$$

For every fixed $s>0$, the same theorem implies

$$
\lim\frac1{d_N}\log\det(sI+A_N/P^2)
=\mathbb E\log(s+a_{N,r}).
$$

The positive regularizer is essential to this deduction. It gives neither inverse moments nor the unregularized determinant or pseudodeterminant.

## 8.2 Three distinct notions of zero

The exact kernel is algebraic. The zero atom of $\nu_{N,r}$ is a statement about the scale $P^2$. A strictly positive eigenvalue may contribute to that atom because it is small compared with $P^2$. These notions have different finite meanings and can have different limiting densities.

**Theorem SC-02 (exact kernel fraction and positive empirical law).** With the exact kernel series from Chapter 6,

$$
\sum_{P,Q\geq0}\kappa_N(P,Q)x^Py^Q
=\frac{x^{2N(N-1)}}{
\prod_{j=2}^N(1-x^j)\prod_{a=1}^{N-1}(1-yx^a)},
$$

one has $\kappa_N/d_N\to k_N(r)$, where

$$
k_N(r)=\mathbb E_{T\sim\operatorname{Dirichlet}(1,\ldots,1)}
\left(1-r\sum_{a=1}^{N-1}aT_a\right)_+^{N-2}
$$

and, equivalently,

$$
k_N(r)=\frac{((N-2)!)^2}{(2N-4)!r^{N-2}}
\sum_{a=1}^{N-1}
\frac{(-1)^{a-1}(1-ar)_+^{2N-4}}{(a-1)!(N-1-a)!}.
$$

The simplex variable $T$ here arises from counting lattice points in the kernel series; it is not a replacement for the Grassmannian probability space. If $\nu^+_{P,Q}$ is the normalized empirical law of the **strictly positive** eigenvalues of $A_N/P^2$, then

$$
\nu^+_{P,Q}\Longrightarrow
\nu^+_{N,r}:=\frac{\nu_{N,r}-k_N(r)\delta_0}{1-k_N(r)}.
$$

Its zero atom is

$$
z_N^+(r)=\frac{p_N(r)-k_N(r)}{1-k_N(r)}.
$$

In particular $p_N(r)\geq k_N(r)$, and $k_N(r)<1$ for every $r>0$.

**Proof.** The kernel coefficient is a weighted partition count followed by a sum over $N-1$ nonnegative integers of total $Q$. The weighted partition asymptotic and the simplex Riemann sum give the first formula, including at the spline transition values $r=1/a$. Repeated simplex integration gives the second. The finite identity

$$
\nu_{P,Q}=\frac{\kappa_N}{d_N}\delta_0+
\left(1-\frac{\kappa_N}{d_N}\right)\nu^+_{P,Q}
$$

then proves the weak positive law without making a continuity assertion at zero. Appendix SC-B gives the counting error and the spline calculation.

### 8.2.1 A strict excess in three particles and at small ratio

For $N=3$, the squared Plücker vectors are independently distributed as $\operatorname{Dirichlet}(1/2,1/2,1/2)$. Put

$$
q_2(r)=\frac4{\pi^2}\sum_{s=0}^{\infty}
\frac{H_{s+1}^{\rm odd}\,r^{2s+2}}{(s+1)(2s+1)(2s+3)},\qquad
H_{s+1}^{\rm odd}=\sum_{j=0}^{s}\frac1{2j+1}.
$$

Then

$$
p_3(r)=1-\frac32r+3q_2(r),\qquad
k_3(r)=\frac{(1-r)^2-(1-2r)_+^2}{2r}.
$$

**Theorem SC-03 (strict positive soft density).** For every $0<r<1$, $p_3(r)>k_3(r)$. For every fixed $N\geq4$, there is an $r_N>0$ such that $p_N(r)>k_N(r)$ for $0<r<r_N$. Quantitatively,

$$
p_N(r)-k_N(r)\geq
\frac{8(N-2)(N-3)}{\pi^2N(N-1)}r^2\log(1/r)-O_N(r^2),
$$

and hence

$$
\liminf_{r\downarrow0}\frac{z_N^+(r)}{r\log(1/r)}
\geq\frac{16(N-3)}{\pi^2N^2(N-1)}.
$$

At $r=1/2$,

$$
k_3=\frac14,\quad p_3\simeq0.355012640323455,\quad
z_3^+\simeq0.140016853764606.
$$

The displayed decimals are evaluations of a convergent positive series; a tail after $s=0,\ldots,K-1$ is at most

$$
\frac4{\pi^2}\frac{r^{2K+2}}{(2K+1)(2K+3)(1-r^2)}.
$$

The endpoint volume needed later is

$$
p_3(1-\epsilon)=\frac{3}{2\pi^2}\epsilon^2\log^2(1/\epsilon)
+O\!\left(\epsilon^2\log(1/\epsilon)\right).
$$

The $N\geq4$ lower bound comes from two violations sharing a particle. Their intersection has an $r^2\log(1/r)$ term because a random two-plane can have a small projection onto that particle direction. It is proved by merging those two events before applying the union bound. A truncated inclusion–exclusion series with an uncontrolled sign would not suffice. Appendix SC-B proves these statements, including the endpoint remainder.

## 8.3 Exponentially small, strictly positive eigenvalues

The weak law establishes that positive eigenvalues can accumulate at zero after division by $P^2$. The next theorem controls an actual exponentially small window in the unscaled residual $A_N$.

Let $M=\binom N2$, $K_N=M(N-2)$, and

$$
\Omega_\delta(r)=\{|B_{ij}|-r|B'_{ij}|>\delta\text{ for all }i<j\},\qquad
p_{N,\delta}(r)=\Pr(\Omega_\delta(r)).
$$

**Theorem SC-04 (exponential window with density loss).** Fix $0<r<1$ and $\delta>0$. Along every sequence $Q/P\to r$,

$$
\liminf_{P\to\infty}\frac{
\#\{0<\lambda(A_N(P,Q))\leq e^{-\delta^2P/32}\}}
{d_N(P,Q)}
\geq\max\{0,p_{N,\delta}(r)-k_N(r)\}.
$$

Since

$$
0\leq p_N(r)-p_{N,\delta}(r)\leq K_N\delta,
$$

for every $\eta>0$, one may take

$$
c_\eta=\frac{\eta^2}{32K_N^2},\qquad
\liminf\frac{\#\{0<\lambda(A_N)\leq e^{-c_\eta P}\}}{d_N}
\geq p_N(r)-k_N(r)-\eta.
$$

This is an upper bound on the size of an extensive family of positive eigenvalues. It does not produce a common action for that family or a matching exponential lower bound.

The proof has two separate, necessary components. First, all physical collision subspaces are carried exactly from the harmonic model by one invertible Riesz map, with polynomial condition number. Second, coherent states in $\Omega_\delta$ have exponentially small bad-channel tails. Their concentration operator yields an entire subspace with a uniform Rayleigh bound. Pointwise small Rayleigh quotients for many coherent states would not establish the required dimension, because those states are not independent. Appendix SC-C proves both components and all constants.

For example, at $N=3,r=1/2$, take $\delta=1/(6\pi^2)$. The series gives $p_3-k_3\geq1/\pi^2$, and the strip loss is $3\delta$. Consequently at least the limiting fraction $2/(3\pi^2)$ of the **positive** eigenvalues lies below

$$
\exp\!\left(-\frac{P}{1152\pi^4}\right).
$$

### 8.3.1 Every subexponential window sees the same density

**Corollary SC-05 (subexponential counting law).** Suppose $t_{P,Q}>0$,

$$
\log t_{P,Q}=o(P),\qquad t_{P,Q}/P^2\longrightarrow0.
$$

Then

$$
\frac{\#\{0<\lambda(A_N(P,Q))\leq t_{P,Q}\}}
{d_N(P,Q)-\kappa_N(P,Q)}\longrightarrow z_N^+(r).
$$

Examples include a fixed positive threshold, $P^\alpha$ with $\alpha<2$, and $e^{-P^\theta}$ with $0<\theta<1$. For two such thresholds, the fraction of eigenvalues between them tends to zero. The lower bound follows from SC-04 after fixing a density loss and then taking $P\to\infty$. For the upper bound, compare with a fixed interval $[0,\varepsilon P^2]$, use SC-02, and only then let $\varepsilon\downarrow0$. Direct substitution of a moving interval into weak convergence is invalid.

## 8.4 All ordered positive spectra at two fixed masses

The same collision flags also compare different physical masses before taking a limit. Let $\lambda_j^+(\Delta)$, $1\leq j\leq d_N-\kappa_N$, be the positive residual eigenvalues in nondecreasing order. This common number of eigenvalues follows from the mass-independent exact support, not from an approximate count.

**Theorem SC-06 (uniform logarithmic comparison).** For fixed $N\geq3$, $r\in(0,1]$ and fixed $\Delta_1,\Delta_2>1$,

$$
\sup_{1\leq j\leq d_N-\kappa_N}
\left|\frac1P\log\lambda_j^+(\Delta_1)
-\frac1P\log\lambda_j^+(\Delta_2)\right|
=O\!\left(\frac{\log P}{P}\right).
$$

The estimate is uniform over the full ordered positive spectrum. Thus, under the ordered coupling, the bounded Lipschitz distance between the empirical distributions of $-P^{-1}\log\lambda_j^+$ at two fixed masses tends to zero. If a limiting rate distribution exists, it is independent of these fixed masses. The theorem does not prove that such a distribution exists; rates escaping to $+\infty$ are not excluded. The masses are fixed independently of $P,Q$.

For precision, at the auxiliary mass $d_0=1/2$, let $B_0$ be the sum of the orthogonal projectors onto the bad collision spaces, restricted to the true Bose space. If $b=\Delta-1/2$, set

$$
m_L(\Delta)=e^{-2Nb}2^{-Nb}(L+1)^{-Nb}.
$$

For the complete ordered spectrum, including zeros,

$$
a_{\min}m_Pm_Q\,\lambda_j(B_0)
\leq\lambda_j(A_N(\Delta))
\leq\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0),
$$

with the explicit bounds

$$
a_{\min}\geq(2\Delta+3)^{-3},\qquad
a_{\max}\leq20(\Delta+Q)^2.
$$

This is an all-subspace min–max estimate obtained from squared distances and one common invertible transport. A comparison of individual channel eigenvectors, or a diagonal metric written in an ambient monomial space and then restricted without a Riesz construction, would not prove it.

## 8.5 A moving layer approaching exact balance in three particles

The fixed-ratio theorem cannot be used with a margin that shrinks with $P$ without a uniform trace estimate. For $N=3$ such an estimate is available. In this subsection $r=Q/P\in[1/2,1)$ is allowed to vary, and

$$
\mu(r)=p_3(r)-\frac{(1-r)^2}{2r}>0,\qquad
D=(4P+1)(4Q+1),\qquad b=\Delta-\frac12.
$$

**Theorem SC-07 (finite and asymptotic moving-layer bounds).** If

$$
\mu(r)\geq\frac{1280}{\min(P,Q)},
$$

then at least $\mu(r)d_3(P,Q)/2$ eigenvalues are strictly positive and satisfy

$$
\lambda(A_3)\leq
\frac{96D\,a_{\max}}{\mu(r)m_Pm_Q}
\exp\!\left[-\frac{P\mu(r)^2}{2304}\right],
\quad m_L=e^{-6b}2^{-3b}(L+1)^{-3b}.
$$

If $P\mu(r)^2/\log P\to\infty$, the right side is eventually bounded by

$$
\exp\!\left[-\frac{P\mu(r)^2}{4608}\right].
$$

In particular, for $1-r\sim cP^{-\beta}$, $c>0$, $0<\beta\leq1/4$, the theorem produces at least

$$
\left(\frac{c^2\beta^2}{8\pi^2}+o(1)\right)
P^{2-2\beta}\log^2P
$$

strictly positive eigenvalues satisfying

$$
\lambda(A_3)\leq
\exp\!\left[-\left(\frac{c^4\beta^4}{2048\pi^4}+o(1)\right)
P^{1-4\beta}\log^4P\right].
$$

At $\beta=1/4$, the upper bound is of the form $e^{-C\log^4P}$. The count is subextensive relative to $d_3\asymp P^2$. Neither $\beta>1/4$ nor the exactly balanced microscopic spectrum is settled by this argument.

**Proof inputs.** For every measurable moving set $\Omega$, its coherent concentration operator obeys

$$
\left|\frac{\operatorname{Tr}C_\Omega}{d_3(P,Q)}-\operatorname{vol}(\Omega)\right|
\leq\frac{160}{\min(P,Q)}.
$$

The constant is uniform over $\Omega$. It follows from the full group of $384$ signed permutation pairs and its four central terms; every noncentral cubic rotation has $\sin^2(\theta/2)\geq1/2$. An independent finite lattice bound gives

$$
\frac{\kappa_3(P,Q)}{d_3(P,Q)}\leq\frac{(P-Q)^2}{2PQ}=\frac{(1-r)^2}{2r}.
$$

The finite kernel shift $P-Q-12$ is retained in that proof. Choosing $\delta=\mu/12$ and the concentration cutoff $\tau=\mu/8$ allocates separate losses to the chamber strip, group trace error and subspace cutoff. Appendix SC-D gives these estimates and the endpoint substitution.

## 8.6 What an exact finite soft certificate certifies

Small floating point eigenvalues cannot distinguish a genuine positive state from an exact kernel vector. The following examples use rational congruence and inertia at $N=3,\Delta=2$. An inertia triple lists the numbers of positive, negative and zero eigenvalues of the shifted **auxiliary symmetric pencil**.

| $P,Q$ | Physical $d_3$ | Physical $\kappa_3$ | Auxiliary dimension | Auxiliary nullity at zero | Strict bracket for the least positive residual |
|---|---:|---:|---:|---:|---|
| $16,8$ | 26 | 0 | 34 | 8 | $1/5<\lambda_{\min}^+<1/3$ |
| $32,16$ | 94 | 4 | 98 | 8 | $1/6000<\lambda_{\min}^+<1/5000$ |

For the first row the triples at $0,1/5,1/3$ are $(26,0,8),(26,8,0),(25,9,0)$. For the second row those at $0,1/6000,1/5000$ are $(90,0,8),(90,8,0),(89,9,0)$. Both nonzero thresholds have zero nullity, making the brackets strict.

To explain the count, let $\Gamma_{\rm u}$ be the unsymmetrized Gram coordinate matrix in a basis with positive metric weights $w_i$, and $a_i>0$ its channel weights. The rational symmetric pencil

$$
S(\varepsilon)=\operatorname{diag}(w_i)\Gamma_{\rm u}
-\varepsilon\operatorname{diag}(w_i/a_i)
$$

is congruent to $H-\varepsilon I$, where $H$ is the positive auxiliary Gram operator. Each auxiliary zero becomes negative when $\varepsilon>0$. Therefore the number of positive physical residual eigenvalues below $\varepsilon$ is $n_-(S(\varepsilon))-\dim\ker H$. One must not subtract the physical kernel a second time. Rational $1\times1$ or $2\times2$ Schur pivots give the inertia without a tolerance. These examples are finite certificates; they do not prove an asymptotic exponential law.

## 8.7 Consequences and limits of the description

**Proposition SC-08 (two precise obstructions).** First, the balanced empirical law rules out approximation of $A_N/P^2$ by Hermitian matrices with a uniformly bounded number of spectral atoms, up to either rank $o(d_N)$ or normalized trace norm $o(1)$, under a common spectral bound. Indeed, a subsequential limit of a uniformly finite atomic law remains finite atomic, while SC-01 has a nonzero absolutely continuous component with full interval support. This excludes that specific compression scheme, not implicit determinant formulae or every possible spectral parametrization.

Second, for $N=3$ the piecewise analytic classical symbol on $S^2\times rS^2$,

$$
h_r(x,z)=-8\sum_{i=1}^3\min(x_i^2,z_i^2),
\quad |x|=1,\ |z|=r,
$$

has no nonconstant globally real analytic first integral that Poisson commutes with it on every strict comparison chamber. Appendix SC-E proves this by analytic continuation and a nonzero Poisson-bracket Jacobian. The energy itself is only piecewise analytic, so it does not contradict the claim. A quantum obstruction requires, in addition, an appropriate symbol and commutator correspondence for the proposed charges. This is not a general theorem of nonintegrability.

The macroscopic Grassmannian law, the exact algebraic kernel and the exponential upper bounds now fit together. They still leave the actual microscopic action, a matching lower bound, the existence of a full rate distribution, zero-density exceptional scales and possible superexponential families unresolved. The moving $N=3$ layer is a proved range of validity, not an optimal transition theorem.

# 9. Fixed excitation degrees and large particle number

This chapter fixes $(P,Q)$ and lets the integer particle number $N$ grow. This is a different limit from Chapters 7–8. The stable primary space stops changing once $N\geq\max(1,P+Q)$, but its physical Gram matrix still depends on $N$. That dependence explains how a triangular leading operator with a Jordan block can arise from an exactly selfadjoint finite-$N$ Hamiltonian.

## 9.1 Creation moments, centered coordinates and the exact affine pencil

Let $\alpha=(p,q)$ label a one-particle excitation, let $0=(0,0)$ be the unique zero excitation, and let $h_\alpha>0$ be the one-particle monomial norm, with $h_0=1$. Introduce commuting creation moments $a_\alpha$, set $a_{00}=1$, and write

$$
\mathcal R=\sum_{\alpha\ne0}a_\alpha\partial_\alpha.
$$

The degree of $a_{pq}$ is $(p,q)$; $\mathcal R$ counts excited particles in a monomial. Multiplication here belongs to the creation algebra. It is not pointwise multiplication of fixed-$N$ many-particle wavefunctions.

The global lowering derivations act by

$$
D_La_{pq}=p\,a_{p-1,q},\qquad D_Ra_{pq}=q\,a_{p,q-1}.
$$

The centered coordinates

$$
c_{pq}=\sum_{i=0}^{p}\sum_{j=0}^{q}
\binom{p}{i}\binom{q}{j}(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij},
\qquad p+q\geq2,
$$

are killed by both lowerings. Together with $a_{10},a_{01}$ they give an invertible triangular coordinate system, in which $D_L=\partial_{a_{10}}$ and $D_R=\partial_{a_{01}}$. Thus in the stable range the primary creation algebra is
$\mathbb C[c_{pq}:p+q\geq2]$.

For clarity about normalization, if $s=(n_\alpha)_{\alpha\ne0}$, $r_s=\sum n_\alpha$ and the $b_\alpha^\dagger$ create orthonormal one-particle modes, its averaged occupation vector is

$$
e_s=
\frac{\prod_{\alpha\ne0}h_\alpha^{n_\alpha/2}}{\sqrt{N!}}
(b_0^\dagger)^{N-r_s}
\prod_{\alpha\ne0}(b_\alpha^\dagger)^{n_\alpha}|0\rangle.
$$

Consequently

$$
\langle e_s,e_{s'}\rangle
=\delta_{ss'}\,\frac{g_s}{(N)_{\downarrow r_s}},
\qquad
g_s=\prod_{\alpha\ne0}n_\alpha!h_\alpha^{n_\alpha}.
$$

The numerator and $\sqrt{N!}$ in the state map are part of the convention. Omitting them while retaining the displayed Gram formula mixes normalized and averaged occupation bases.

Let $F_\alpha$ be the degree-two creation polynomial obtained by acting with the pair operator on the symmetric pair $(0,\alpha)$, and let $F_{\alpha\beta}$ be its action on $(\alpha,\beta)$. These definitions use the same two-particle normalization as the exact engine; equivalently they are obtained by summing the ordered tensor matrix elements against $a_\gamma a_\eta$. Counting actual unordered pairs in a source with $N-\mathcal R$ zero excitations gives

$$
\begin{aligned}
W_N={}&\frac{\gamma_{00}}2(N-\mathcal R)(N-\mathcal R-1)\\
&+\left(\sum_{\alpha\ne0}F_\alpha\partial_\alpha\right)(N-\mathcal R)
+\frac12\sum_{\alpha,\beta\ne0}
F_{\alpha\beta}\partial_\alpha\partial_\beta.
\end{aligned}
$$

The factor $N-\mathcal R$ in the middle term acts on the source, on the right. The three terms count zero–zero, zero–excited and excited–excited pairs respectively.

**Theorem ST-01 (exact stable affine pencil).** On each stable primary block,

$$
W_N=\gamma_{00}\binom N2 I+N\mathscr A+\mathscr B,
$$

where

$$
\mathscr A=\sum_{\alpha\ne0}(F_\alpha-\gamma_{00}a_\alpha)\partial_\alpha,
$$

$$
\mathscr B=-\mathscr A\mathcal R
-\frac{\gamma_{00}}2\mathcal R(\mathcal R-1)
+\frac12\sum_{\alpha,\beta\ne0}F_{\alpha\beta}\partial_\alpha\partial_\beta.
$$

The operator $\mathscr A$ is a derivation and $\mathscr B$ has differential order at most two. Their restrictions to primaries are independent of $N$. Two-body structure, the unique zero excitation and conservation of the nonnegative excitation bidegrees are sufficient for this affine dependence. Global covariance is used to preserve the primary algebra. Pair positivity is not required.

The operator $\mathscr A$ is triangular by the number of centered factors:

$$
\mathscr Ac_\alpha=\sigma_\alpha c_\alpha+
\sum_{\substack{\beta+\gamma=\alpha\\|\beta|,|\gamma|\geq2}}
V_{\alpha;\beta\gamma}c_\beta c_\gamma.
$$

Its diagonal eigenvalues on a centered monomial are sums of the generator slopes. For the physical pair coefficients,

$$
\sigma_{pq}=2\sum_{\substack{0\leq k\leq p,\ 0\leq\ell\leq q\\ k+\ell\ {\rm even}}}
\alpha_{p,k}\alpha_{q,\ell}(\gamma_{k\ell}-\gamma_{00}),
\qquad
\alpha_{p,k}=
\binom pk\frac{(\Delta)_p}
{(2\Delta+k-1)_k(2\Delta+2k)_{p-k}}.
$$

These $\alpha$ are the endpoint pair-channel weights, not arbitrary mixing parameters. Appendix ST-A derives the occupation formula and its physical metric consequences.

## 9.2 The general expansion is analytic in $N^{-1/2}$

Put $t=N^{-1/2}$ and let $\Gamma_{\rm occ}$ be the diagonal occupation Gram matrix above. Its signed analytic square root can be chosen as

$$
U_s(t)=t^{r_s}
\left[g_s\prod_{j=0}^{r_s-1}(1-jt^2)^{-1}\right]^{1/2}.
$$

The word “signed” means $t^{r_s}$ is retained for negative as well as positive real $t$, rather than replaced by $|t|^{r_s}$. On the full stable excitation space,

$$
H(t)=U(t)(\mathscr A+t^2\mathscr B)U(t)^{-1}
$$

extends analytically across $t=0$ and is Hermitian for real $t$ sufficiently near zero. The absence of negative powers follows directly from occupation changes: $\mathscr A$ preserves the number of excited factors or increases it by one; $\mathscr B$ can decrease it by at most one. The prefactor $t^2$ compensates that decrease.

Centered primary columns have distinct leading occupation monomials. Rescaling each column by the power of $t$ of its leading monomial gives an analytic, full-rank frame at zero. Its positive Gram matrix has an analytic Cholesky factor. Compressing $H(t)$ in the resulting orthonormal primary frame gives an analytic Hermitian matrix $\widehat H(t)$, with

$$
\widehat H(-t)=\Pi\,\widehat H(t)\Pi
$$

for the corresponding factor-count parity matrix $\Pi$.

**Theorem ST-02 (convergent large-$N$ branches).** For every fixed primary block and $\Delta>1$, its eigenvalues and orthonormal eigenvectors admit convergent real-analytic expansions in $t=N^{-1/2}$ in a regular orthonormal primary frame. In particular,

$$
g_j(N)=\gamma_{00}\binom N2+
N\sum_{m=0}^{\infty}\lambda_{j,m}N^{-m/2}
$$

for all sufficiently large $N$. No fractional powers with denominators greater than two are needed. A simple leading eigenvalue has an even analytic branch and hence an expansion in integer powers of $1/N$. Within a degenerate leading cluster, parity can exchange branches and half-integer terms may occur.

This is the finite-dimensional analytic Hermitian theorem of Rellich, after the preceding model-specific construction has checked its hypotheses. Selfadjointness with an $N$-dependent singular Gram matrix does not make the coordinate matrix $\mathscr A$ Hermitian in an $N$-independent metric. Conversely, a nonzero odd matrix coefficient inside a degenerate cluster does not by itself prove a half-integer splitting; one must compute the reduced eigenvalues. Appendix ST-A supplies the complete frame and perturbation construction. [Rellich]

### 9.2.1 A genuine leading Jordan resonance

**Example ST-03.** The physical stable block $(P,Q)=(4,1)$ has basis
$(c_{41},c_{11}c_{30},c_{20}c_{21})$. Writing $d=\Delta$ and
$D_4=(2d-1)(2d+1)(2d+3)(2d+5)$,

$$
\mathscr A=
\begin{pmatrix}
s_0+\delta&0&0\\
2\delta-v&s_0&0\\
v&0&s_0
\end{pmatrix},
$$

$$
s_0=-\frac{d^2(70d^2+89d-20)}{(2d-1)(2d+1)(2d+3)},\quad
\delta=\frac{d^2(2d^3-37d^2-11d+100)}{2D_4},
$$

$$
v=\frac{3d^2(d+1)(d+4)}{(2d-1)(2d+3)(2d+5)}>0.
$$

The cubic $2d^3-37d^2-11d+100$ has two roots in $d>1$, isolated in
$(1.563,1.564)$ and $(18.651,18.652)$. At either root, $\mathscr A-s_0I$ is nonzero, has rank one and squares to zero. Its Jordan type is $(2,1)$.

The exact invariant two-dimensional block of $N\mathscr A+\mathscr B$ is

$$
\begin{pmatrix}
(s_0+\delta)N+b_{11}&k\\
v(N+6/d)&s_0N+b_{22}
\end{pmatrix},
$$

where

$$
k=\frac{d(d+3)(2d^2+25d+36)}{2(2d+1)(2d+3)(2d+5)}>0,
$$

$$
b_{11}=-\frac{3d(38d^3+169d^2+131d-108)}{D_4},\qquad
b_{22}=\frac{3d(4d^4+20d^3+11d^2-39d-4)}{D_4}.
$$

Its two eigenvalues are

$$
\left(s_0+\frac\delta2\right)N+\frac{b_{11}+b_{22}}2
\ \pm\frac12\sqrt{(\delta N+b_{11}-b_{22})^2+4kv(N+6/d)}.
$$

The third eigenvalue is $s_0N+b_0$, where
$b_0=-12d(2d^2+7d+2)/[(2d-1)(2d+1)(2d+3)]$.
The common ground-pair term $\gamma_{00}\binom N2$ is added to all three.
At resonance the split is $\pm\sqrt{kv}\sqrt N+O(1)$, explicitly demonstrating half-integer branches. For $d=d_c+u/\sqrt N$, the two-level gap divided by $\sqrt N$ tends to
$\sqrt{\delta'(d_c)^2u^2+4k(d_c)v(d_c)}$.
The finite physical matrix remains selfadjoint and diagonalizable. The Jordan block belongs to the singular leading coordinate limit.

### 9.2.2 A protected collision with a two-dimensional eigenspace

**Example ST-09.** In the complete stable $(3,1)$ basis
$(c_{31},c_{11}c_{20})$, $N\geq4$, define

$$
\delta_{31}=-\frac{6d^2(2d^2+d-4)}{D_4},\qquad
\beta=\frac{d+2}{d},\qquad s_{31}=\sigma_{11}+\sigma_{20},
$$

$$
b_*=-\frac{6d(10d^3+39d^2+33d-14)}{D_4}.
$$

The full shifted pencil is

$$
N\mathscr A+\mathscr B=
(s_{31}N+b_*)I+
\delta_{31}\begin{pmatrix}N&\beta\\3N+9\beta&0\end{pmatrix}.
$$

Its discriminant is the exact square $\delta_{31}^2(N+6\beta)^2$.
Its two eigenvalues are
$\sigma_{31}N+b_*+3\beta\delta_{31}$ and
$s_{31}N+b_*-3\beta\delta_{31}$. At
$d_*=(\sqrt{33}-1)/4>1$, the whole matrix is scalar, and the energy coefficient is

$$
g_*=\binom N2\frac{-93+13\sqrt{33}}{16}
+N\frac{939-379\sqrt{33}}{128}
+\frac{225-81\sqrt{33}}{64}
$$

with multiplicity two. Both off-diagonal terms vanish together with the slope difference. The physical Gram is positive for the stable $N$, so this is a true doublet, distinct from ST-03's singular leading Jordan limit. At $N=3$ the primary dimension is one; the stable two-dimensional coordinate space must not be continued through that rank change. The exact all-degree $Q=1$ families and their finite-$N$ endpoint multiplicities are treated in Chapter 6. Appendix ST-A.5 records the related branchpoint structure of $(4,1)$.

## 9.3 Generic algebraic linearization of the leading derivation

The triangular nonlinear terms of $\mathscr A$ can be removed generically in every bidegree. The result is about the derivation, not the full affine pencil.

**Theorem ST-04 (all-degree generic nonresonance).** There is a countable set $\mathcal E\subset(1,\infty)$ of algebraic numbers such that, for every $\Delta\notin\mathcal E$, a triangular polynomial change of centered generators gives

$$
\mathscr A=\sum_{p+q\geq2}\sigma_{pq}u_{pq}\partial_{u_{pq}}.
$$

At each fixed degree only finitely many substitutions are required. For every finite degree cutoff the excluded set is finite. The theorem does not claim that the full countable set is locally finite, does not exclude every rational mass from it, and does not classify the resonances at points of $\mathcal E$.

**Proof.** It is enough to show that no genuine splitting
$\alpha=\beta_1+\cdots+\beta_m$, $m\geq2$, $|\beta_i|\geq2$,
makes the rational homological divisor
$\sigma_\alpha-\sum_i\sigma_{\beta_i}$ vanish identically in $\Delta$.
Use $\Delta=1/2$ solely as an algebraic pole test. With
$f_n=\binom{2n}{n}/4^n$,

$$
\rho_{pq}:=\lim_{\Delta\to1/2}(2\Delta-1)\sigma_{pq}
=\frac32(2f_pf_q-1).
$$

If $s_2(n)$ counts binary ones and
$E(p,q)=2(p+q)-s_2(p)-s_2(q)$, then
$v_2(\rho_{pq})=-E(p,q)$.
Binary subadditivity gives
$E(\alpha)\geq\sum_iE(\beta_i)>\max_iE(\beta_i)$.
Thus the residue on the left of a proposed relation has a uniquely smaller dyadic valuation than every residue on the right, and cancellation is impossible. Every divisor is a nonzero rational function, with finitely many zeros on a finite degree range. Solving the triangular homological equations then constructs the $u_{pq}$. Appendix ST-B verifies the residue, including the removable exceptional channels, and the finite recursion.

Resonance is only a possible obstruction: a resonant forcing coefficient may vanish. The theorem supplies an upper bound on the exceptional set. It gives no diagonalization of $\mathscr B$, no commuting family for the full many-body operator and no complete finite-spectrum formula.

## 9.4 The chiral lowest cluster and its algebra retraction

Now take $Q=0$, $P\geq2$, $N\geq P$, and write $c_p=c_{p0}$, $x=c_2$, $y=c_3$. Define

$$
\sigma_2=-\frac{2\Delta^2(2\Delta^2+7\Delta+2)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)},\qquad
\beta_2=\frac{\sigma_2}{\Delta}
=\frac{\gamma_{20}-\gamma_{00}}{2\Delta+1}.
$$

The exact minimum is

$$
g_{\min}(N,P)=
\gamma_{00}\binom N2+
\frac{P\sigma_2}{2}N+
\frac{\beta_2}{2}P(P-1).
$$

To see its origin, subtract the affine function of the pair Casimir through channels zero and two. The defects are zero in those channels, while

$$
r_4=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,\qquad
r_k=r_4+
\frac{\gamma_{00}-\gamma_{20}}{2(2\Delta+1)}(C_k-C_4)>0
\quad(k\geq4,\ k\ {\rm even}).
$$

Positivity gives a global lower bound. The primary projection of the elementary degree-$P$ seed attains it: every pair has relative degree at most two, and its projection is nonzero in the stable range. This proves the displayed exact minimum.

Let

$$
\mathcal E=\sum_{p\geq2}p\,c_p\partial_{c_p},\qquad
K=\mathscr A-\frac{\sigma_2}{2}\mathcal E.
$$

The endpoint identity

$$
\sigma_p-\frac p2\sigma_2=
2\sum_{\substack{k\geq4\\k\ {\rm even}}}\alpha_{p,k}r_k
$$

gives zero for $p=2,3$ and a strictly positive value for every $p\geq4$.
The full derivation kills $x$ and $y$, since channels above two are inaccessible at degrees two and three.

**Theorem ST-05 (semisimple low algebra and retraction).** On each homogeneous block, zero is a semisimple eigenvalue of $K$ and

$$
\ker K=\mathcal S:=\mathbb C[x,y].
$$

All other eigenvalues have positive real part. The coefficientwise limit

$$
q=\lim_{\tau\to\infty}e^{-\tau K}
$$

exists on the graded algebra and is a multiplicative retraction onto $\mathcal S$. It is generally oblique, not an orthogonal projection in an $N$-independent physical metric.

**Proof.** Triangularity shows that the algebraic multiplicity of zero equals the number of monomials containing only $c_2,c_3$. All those monomials are actual zero vectors because $K$ is a derivation and kills both generators. Thus zero is semisimple, and every other diagonal eigenvalue is a sum containing a positive higher-generator gap. Possible Jordan blocks at positive eigenvalues decay under $e^{-\tau K}$. Each exponential is an algebra homomorphism; passing to the finite-dimensional limit in each degree makes $q$ multiplicative.

For instance,

$$
q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
$$

$$
q(c_6)=
\frac{5[(18\Delta^3+153\Delta^2+387\Delta+144)x^3
-(4\Delta^3+30\Delta^2+56\Delta+24)y^2]}
{34\Delta^3+273\Delta^2+611\Delta+240}.
$$

In every degree the retraction follows recursively from $qKc_p=0$, dividing only by the positive higher-generator gap.

### 9.4.1 The exact cusp quotient

There is an exact left character on the full centered algebra,

$$
\mathcal L(c_p)=(1-p)t^p.
$$

On the homogeneous degree-$P$ component it obeys

$$
\mathcal L\mathscr A=\frac{P\sigma_2}{2}\mathcal L,\qquad
\mathcal L\mathscr B=\frac{\beta_2}{2}P(P-1)\mathcal L.
$$

It can be extracted from the coefficient of the degree-one elementary seed; the coefficient of $a_1^p$ in $c_p$ is $(-1)^p(1-p)$. It follows that $\mathcal LK=0$ and $\mathcal Lq=\mathcal L$.
On $\mathcal S$ this character is

$$
x\longmapsto-t^2,\qquad y\longmapsto-2t^3,
$$

whose kernel is the cusp ideal

$$
J=y^2+4x^3,\qquad
\mathcal S/(J)\cong\mathbb C[t^2,t^3].
$$

To prove the kernel assertion, divide any polynomial by the monic polynomial $J$ in $y$. Its remainder is $f(x)+yg(x)$; substituting $x=-t^2,y=-2t^3$ separates even and odd powers and forces both polynomials to vanish. The quotient character is preserved by every order of the low effective pencil after subtracting $g_{\min}$. This is an exact algebraic quotient; it does not identify the physical scalar product with an integral over a real cusp.

## 9.5 The first low operator and the actual Gegenbauer parameter

**Theorem ST-06 (first effective operator).** On $\mathcal S$,

$$
B_{\rm low}:=q\mathscr B|_{\mathcal S}
=\frac{\beta_2}{2}E(E-1)+\frac{\varepsilon}{2}J\partial_y^2,
\qquad E=2x\partial_x+3y\partial_y,
$$

where

$$
\varepsilon=
\frac{54\Delta(\Delta+3)(\Delta+4)^2(2\Delta^2+9\Delta+3)}
{(2\Delta-1)(2\Delta+3)(34\Delta^3+273\Delta^2+611\Delta+240)}>0.
$$

There is a structural reason that a finite calculation determines the operator. Because $\mathscr B$ has order at most two and $q$ commutes with multiplication by every low polynomial, the third iterated multiplication commutator of $B_{\rm low}$ vanishes. Hence $B_{\rm low}$ has order at most two on $\mathbb C[x,y]$. Only after this proof does one use its determining values on
$1,x,y,x^2,xy,y^2$:

$$
0,\quad\beta_2x,\quad3\beta_2y,\quad
6\beta_2x^2,\quad10\beta_2xy,\quad
(15\beta_2+\varepsilon)y^2+4\varepsilon x^3.
$$

Appendix ST-C derives these values directly from the exact two-particle action.

Let $F_b(x,y)$ be the unique polynomial monic in $y^b$ satisfying

$$
J\partial_y^2F_b=b(b-1)F_b.
$$

It has the finite expansion

$$
F_b=\sum_{j=0}^{\lfloor b/2\rfloor}f_{b,j}x^{3j}y^{b-2j},
\quad f_{b,0}=1,\quad
f_{b,j}=
\frac{4(b-2j+2)(b-2j+1)}
{b(b-1)-(b-2j)(b-2j-1)}f_{b,j-1}.
$$

For example,

$$
F_0=1,\quad F_1=y,\quad F_2=J,\quad F_3=yJ,\quad
F_4=y^4+\frac{24}{5}x^3y^2+\frac{16}{5}x^6.
$$

At weight $P$, the vectors $x^aF_b$, $2a+3b=P$, diagonalize $B_{\rm low}$, with eigenvalues

$$
\frac{\beta_2}{2}P(P-1)+\varepsilon\binom b2.
$$

All allowed $b$ have the same parity, so these eigenvalues are distinct. Formally setting $z=y/(2i x^{3/2})$ identifies the equation with the Gegenbauer equation of parameter **$-1/2$**. The finite polynomial definition avoids any need to choose fractional powers of $x$. This parameter does not carry the usual positive integrable Gegenbauer weight on $(-1,1)$; that orthogonality formula must not be used as the physical norm. The physical metric remains the original $\Gamma$, or its analytic orthonormal-frame transform.

**Corollary ST-07 (integer expansions for this isolated low cluster).** For every fixed $P$ and $\Delta>1$, exactly $\#\{(a,b)\geq0:2a+3b=P\}$ branches lie in the lowest leading cluster. Each has a convergent expansion

$$
g_{a,b}(N,P)=g_{\min}(N,P)+
\varepsilon\binom b2+\frac{\eta(a,b)}N+O(N^{-2}).
$$

All subsequent powers are integers. Indeed the zero eigenspace of $K$ is isolated and semisimple, so its Riesz-reduced pencil is analytic in $u=1/N$ and starts with $uB_{\rm low}$. Dividing out $u$ leaves a matrix with simple spectrum at $u=0$. Analytic perturbation of simple roots gives the claim. This proof is specific to the chiral low cluster; ST-03 shows why it cannot be extended to every primary block without further hypotheses.

## 9.6 The first $1/N$ correction and its finite determination

Define the reduced inverse

$$
R=K^{-1}(1-q)=\int_0^\infty(e^{-\tau K}-q)\,d\tau,
\qquad KR=RK=1-q,\quad qR=Rq=0.
$$

It commutes with multiplication by low polynomials. In the graph gauge $q\Omega=I$, solving the invariant-subspace equation gives

$$
\Omega=I-uR\mathscr B+O(u^2),\qquad
H_{\rm eff}=uB_{\rm low}+u^2C_2+O(u^3),
\qquad C_2=-q\mathscr BR\mathscr B.
$$

**Theorem ST-08 (third-order correction with cusp image).** There are rational functions $r_0,r_1,r_2,r_3$ of $\Delta$, regular for every $\Delta>1$, such that

$$
C_2=
J\left[r_0\partial_y^2+r_1\partial_x^3+
r_2x\partial_x\partial_y^2+r_3y\partial_y^3\right].
$$

The complete exact coefficient table is in Appendix ST-C. At $\Delta=2$,

$$
(r_0,r_1,r_2,r_3)=
\left(-\frac{1622417760}{27089251},
\frac{37120}{3297},
-\frac{174410861280}{3756088567},
\frac{807408000}{3533212309}\right).
$$

The two structural assertions precede the coefficient calculation. First, every fourth iterated multiplication commutator vanishes: only two commutators on each copy of $\mathscr B$ could survive, and a double commutator of an order-two operator is multiplication by a polynomial. Multiplicativity of $q$ then inserts $qR=0$. Thus $C_2$ has order at most three. Second, $\mathcal L\mathscr BR=0$ by the exact character identity, so the image of $C_2$ lies in $(J)$. Induction on monomial inputs shows that each differential coefficient is divisible by $J$. Weighted degree zero now leaves exactly the four displayed terms. Finite jets at weights six, eight and nine determine them.

The diagonal correction in the Gegenbauer basis is

$$
\begin{aligned}
\eta(a,b)=b(b-1)\bigg[
r_0+r_2a+r_3(b-2)
&+2r_1\bigg(
\frac{(a+1)(a+2)(a+3)}{2b-3}\\
&-\frac{a(a-1)(a-2)}{2b+1}
\bigg)\bigg].
\end{aligned}
$$

It vanishes for $b=0,1$, as required by the exact minimum. The operator $C_2$ need not annihilate $x^a$: off-diagonal mixing and a zero diagonal eigenvalue correction are different statements.

At $\Delta=2,P=12$ the full primary block has dimension 21, while its lowest leading cluster has dimension three, with $b=0,2,4$. Its first gaps are
$0,10440/1099,62640/1099$ and the two nonzero first corrections are

$$
\eta(3,2)=\frac{2920079516375808}{589705905019},\qquad
\eta(0,4)=-\frac{9620027665536}{24732486163}.
$$

These describe only those three branches. The exact finite block still contains eighteen branches with larger leading slope. Independent symbolic pair-projector calculations verify the complete $C_2$ matrices at weights six, eight and nine, and independent rational calculations check higher weights. The general theorem rests on the order and ideal arguments together with the exact determining identities, not on a fit to a few eigenvalues.

## 9.7 A controlled large-mass contraction

There is a useful comparison with a different established many-boson problem. At fixed excitation degree, write $x_i=\sqrt{\Delta}\,z_i$. Then

$$
\frac{\Delta^p p!}{(\Delta)_p}\longrightarrow p!,
\qquad
\frac{w_{\rm chiral}+4\Delta^2}{\Delta}
\longrightarrow \Pi_{\rm relative\ degree\ 0}
$$

in the finite-dimensional oscillator limit. In this normalization,

$$
\frac{\varepsilon(\Delta)}{\Delta}\longrightarrow\frac{27}{34},
\qquad
\frac{g_{a,b}-g_{\min}}{\Delta}
\longrightarrow\frac{27}{68}b(b-1)
$$

at the first low layer. The same quadrupole–octupole coefficient occurs in the weakly interacting rotating Bose gas of Kavoulakis, Mottelson and Reimann [KMR]. The explicit contraction above explains the comparison. It does not identify finite-$\Delta$ Einstein pair coefficients with a contact interaction, nor interchange the fixed-degree large-mass limit with all other limits.

The established stable results therefore consist of an exact affine pencil, a general analytic Hermitian expansion in $N^{-1/2}$, a generic algebraic normal form for its derivation, actual exceptional Jordan resonances, and a more rigid isolated chiral cluster with a cusp quotient and Gegenbauer first layer. A full mass-dependent resonance classification and all higher effective operators remain open.

# 10. Established universality classes and counterexamples

The results above depend on several different kinds of input. Global representation theory fixes which pair channels exist. Strict support and signs fix a common kernel. The growth of channel coefficients fixes the principal symbol. Particular low channel values determine the stable low algebra and its effective gaps. These statements must be separated when varying the interaction.

All deformations in this chapter are abstract selfadjoint pair operators on the same unitary scalar representation. They define legitimate finite covariant spectral problems. No claim is made that every such sequence is the effective pair operator of a local bulk Lagrangian, or that it obeys the gravitational constraint and boundary-charge identities used in the physical reduction.

## 10.1 Which input controls which conclusion

| Structural input | Conclusion that follows | Additional information still required |
|---|---|---|
| Multiplicity-free global two-particle decomposition | A covariant pair operator is scalar on each allowed pair representation | The numerical pair coefficients |
| Bosonic statistics | Diagonal particle symmetrization, including channels with each chiral factor antisymmetric | Neither separate chiral Bose projection nor positivity follows |
| A number-preserving two-body operator with a unique zero excitation and nonnegative conserved degrees | The stable affine pencil of ST-01 | Covariance to restrict to primaries |
| The same exact positive bad-channel support | The same collision kernel, Hilbert series and rank | Positive eigenvalues and multiplicities can change |
| The same quadratic pair part and a subquadratic remainder | The same Grassmannian principal spectral law | Exact kernel and microscopic scales need support information |
| Common flags and polynomially bounded positive channel weights | Exponential upper bounds from strict zero chambers | Positive spectral density additionally uses the exact kernel count |
| Two-sided polynomial bounds on the nonzero weights | Uniform comparison of all ordered logarithmic rates | Existence of a limiting rate distribution does not follow |
| Bounded selfadjoint pair tails tending to zero at fixed right budget | The fixed-budget cluster algebra and spectral recursion of Chapter 7 | Numerical thresholds, effective cutoffs and Schatten estimates |
| Nonnegative chiral affine defects with a specified first positive channel | The stable lowest leading algebra and a global affine lower bound | The first gap coefficient uses further low channels |
| Einstein's exact coefficients | Its two-generator low algebra, positive Gegenbauer coefficient and explicit corrections | They are not consequences of support alone |

A quartic number-preserving operator has pair-sum form after normal ordering. That observation does not prove the Einstein scalar branch closes: in the gravitational calculation the cubic exchange and boundary-charge constraints were needed before the reduced operator acquired this form. This chapter starts after that physical interface.

## 10.2 A common-support class with the same kernel

Fix $d>1$ and $C_k=(d+k)(d+k-1)$. On allowed channels $k+\ell$ even, consider

$$
w_{k\ell}=u-c\min(C_k,C_\ell)+\epsilon_{|k-\ell|}(\min(k,\ell)),
\qquad c>0,
$$

where $\epsilon_0(n)>0$, $\epsilon_2(n)>0$ and
$\epsilon_j(n)=0$ for even $j\geq4$. The sequence is symmetric under $k\leftrightarrow\ell$. The Einstein coefficients belong to this class with $c=8$ and their particular positive corrections.

**Theorem UN-01 (kernel and principal-symbol universality).** The baseline

$$
b_N^{(u,c)}(Q)=
\binom N2[u-cd(d-1)]-cQ(Q+Nd-1)
$$

gives

$$
W_N=b_N^{(u,c)}(Q)I+A_N^{(u,c)},\qquad A_N^{(u,c)}\geq0.
$$

Its oriented pair residual is

$$
d_{k\ell}=c\big(C_\ell-\min(C_k,C_\ell)\big)
+\epsilon_{|k-\ell|}(\min(k,\ell)).
$$

Consequently

$$
d_{k\ell}>0\iff k\leq\ell+2,\qquad
d_{k\ell}=0\iff k\geq\ell+4.
$$

The exact collision kernel, its complete Hilbert series and every finite physical rank are therefore identical to those of Einstein's residual operator. No growth condition on the positive weights is needed for this kernel assertion.

If, in addition,

$$
\max_{j=0,2}\sup_{0\leq n\leq L}\epsilon_j(n)=o(L^2),
$$

then in the balanced scaling the principal symbols are

$$
-c\sum_e\min(X_e,r^2Y_e),\qquad
c\sum_e(r^2Y_e-X_e)_+,
$$

respectively. Thus the same Grassmannian law holds with the coefficient $8$ replaced by $c$.

**Proof.** Summing the right pair Casimirs gives the displayed baseline by the total-Casimir identity. Each residual is positive, and its zero channels are precisely the same as before. The kernel of a sum of positive operators is the intersection of their kernels, so the full collision theorem of Chapter 6 applies without changing a coefficient in its Hilbert series. For the symbol, the remainder norm is bounded by a fixed number of pairs times the displayed supremum, hence is $o(P^2)$ when $Q/P$ has a fixed positive limit. The harmonic proof of SC-01 depends only on the minimum Casimir term.

Strict positivity on the entire listed support is a transparent sufficient hypothesis. It is not claimed necessary for equality of a particular finite kernel: some constraints in a finite intersection may be redundant. Also, equality of kernels does not determine a symbol; multiplying the residual by two preserves every kernel and changes its principal symbol.

The exponential argument survives whenever the nonzero residual weights have a polynomial upper bound, because the metric transfer and coherent tails depend on the flags. To recover the exact subexponential counting law one also needs the principal weak law and the algebraic kernel fraction. To compare all ordered logarithmic rates, a polynomial lower bound is needed as well. Weights that are themselves exponentially small fall outside that comparison hypothesis, even when their support is unchanged.

## 10.3 Cluster universality and its analytic boundary

At fixed right degree, the proof in Chapter 7 uses bounded selfadjoint internal pair operators whose eigenvalue tails tend to zero after the baseline is removed, global covariance and the actual Bose projection. These are operator-algebra hypotheses. Positivity of every pair coefficient, a quadratic minimum symbol and the stable cusp calculation are not needed for that recursion. Finite pair support is a stronger special case, and it improves the termination bounds for derived accumulation sets.

The relevant consequences can therefore survive coefficient changes while the numerical threshold sets change. A recursion over clusters is not a claim that thresholds are universally equal to the Einstein values. In particular, a proof of compactness by a $c_0$ tail does not give any finite Schatten class.

**Example UN-02 (compact but outside every finite Schatten class).** On a chiral pair space, put $v_k=1/\log(k+2)$ for the even relative channels. This is a bounded selfadjoint diagonal operator with eigenvalues tending to zero. At resolvent parameter two, its connected resolvent difference has diagonal entries

$$
\frac{1}{2-v_k}-\frac12=\frac{v_k}{2(2-v_k)}
\geq\frac{v_k}{4}.
$$

For every finite $s>0$, the sum of their $s$th powers diverges, since
$\sum_{k\ {\rm even}}\log(k+2)^{-s}=\infty$. Thus compactness and the general cluster structure alone cannot justify a regularized determinant of any finite Schatten order. This counterexample does not contradict the separate four-particle Einstein estimates or exclude a determinant construction with extra decay information.

## 10.4 The first positive affine defect determines the stable low algebra

Consider a real chiral pair sequence $\gamma_k$ on even relative degrees. Define the affine interpolant through channels zero and two by

$$
s=\frac{\gamma_2-\gamma_0}{2(2d+1)},\qquad
L(C)=\gamma_0+s(C-C_0),\qquad
r_k=\gamma_k-L(C_k).
$$

Thus $r_0=r_2=0$. Here $s$ is an affine Casimir slope; it is unrelated to the physical pair spin notation $|k-\ell|$ used earlier.

**Theorem UN-03 (first positive defect).** Suppose $r_k\geq0$ in every even channel and the first positive defect is at
$k_*=2m+2$, $m\geq1$. Then

$$
g_*(N,P)=\gamma_0\binom N2+sP(Nd+P-1)
$$

is the exact global minimum on every stable chiral block $N\geq P\geq2$. With
$K=\mathscr A-sd\,\mathcal E$,

$$
\ker K=\mathbb C[c_2,c_3,\ldots,c_{2m+1}],
$$

zero is semisimple on each degree, all other leading gaps are positive, and
$q=\lim_{\tau\to\infty}e^{-\tau K}$ is a multiplicative retraction onto this algebra.

**Proof.** The pair sum of $L(C)$ is the scalar $g_*$ by the global Casimir identity. The remainder is positive. The projected elementary degree-$P$ seed sees only relative channels zero and two and is nonzero in the stable range; it attains $g_*$. For the leading derivation,

$$
\kappa_p:=\sigma_p-sdp
=2\sum_{\substack{k\leq p\\k\ {\rm even}}}\alpha_{p,k}r_k.
$$

All weights are positive. Thus $\kappa_p=0$ for $p<k_*$ and is strictly positive for $p\geq k_*$. For $p<k_*$ the full operator $Kc_p$ vanishes, not only its diagonal coefficient: the degree-$p$ pair action has no access to a nonzero defect, so the full block agrees with the affine-Casimir action. The triangular derivation now has exactly as many zero diagonal entries as low-generator monomials, and all such monomials are actual zero vectors. This proves the kernel and semisimplicity. The algebra-retraction proof is then the same finite-degree exponential argument as in ST-05.

If every defect vanishes, every chiral primary block is scalar. More generally, at any particle number for which the block exists, if $P<k_*$ the entire degree-$P$ chiral block is scalar, because no accessible pair channel has a defect.

The exact character $\mathcal L(c_p)=(1-p)t^p$ persists for arbitrary pair coefficients, even without positivity; positivity is used to identify its scalar eigenvalue as a global minimum. If $m\geq2$, the quotient of the larger low algebra still has image $\mathbb C[t^2,t^3]$. Besides $J=y^2+4x^3$, its ideal has the generators

$$
c_{2a}-(1-2a)(-x)^a,\qquad
c_{2a+3}-(a+1)(-x)^a y
$$

for those higher low generators that occur. Eliminating them reduces to the same cusp relation. A persistent cusp quotient therefore does not imply that the entire low algebra has only two generators.

## 10.5 The general two-generator Gegenbauer coefficient

Assume the setting of UN-03 with $r_4=v>0$ and write $r_6=w\geq0$. Higher nonnegative defects may be arbitrary. The leading low algebra is $\mathbb C[x,y]$. Define

$$
D_*=15(2d+7)(d+5)v+(2d+3)(d+2)w.
$$

**Theorem UN-04 (universal first low operator under explicit hypotheses).** The first low operator is

$$
B_{\rm low}
=sE(E-1)+\frac{\varepsilon(d;v,w)}2J\partial_y^2,
$$

$$
\varepsilon(d;v,w)=
\frac{27vw(d+3)(d+4)(2d+9)}
{2(2d+5)\,[15(2d+7)(d+5)v+(2d+3)(d+2)w]}.
$$

Only the defects in channels four and six enter this coefficient. If $w>0$, it is positive, the eigenvectors are the $x^aF_b$ of Chapter 9 and the fixed-weight first low spectrum is simple. Hence the isolated low branches have convergent integer expansions in $1/N$. If $w=0$, the coefficient is exactly zero. The first-layer simplicity argument then fails; this alone neither establishes half-integer terms nor classifies the next nontrivial layer.

**Proof.** The retracted operator has order at most two because the original $\mathscr B$ does and $q$ is a low-algebra module map. After subtracting $sE(E-1)$, the exact character forces its image into $(J)$. In a polynomial algebra, induction on monomial inputs implies that every differential coefficient belongs to the same ideal. Weighted degree zero and order at most two then leave only a multiple of $J\partial_y^2$. Thus six exact jets determine the full operator in every weight. They must be computed only through total degree six, so no higher pair channel can enter.

One explicit derivation uses Casimir interpolation to construct the physical pair projectors, followed by literal unordered occupation counting. It gives

$$
\kappa_4=\frac{d(d+1)v}{2(2d+3)(2d+5)},\qquad
\kappa_5=\frac{5d(d+1)v}{4(2d+3)(2d+5)},
$$

$$
\kappa_6=
\frac{d(d+1)D_*}{4(2d+3)(2d+5)(2d+7)(2d+9)},
$$

and

$$
q(c_4)=-3x^2,\qquad q(c_5)=-2xy,
$$

$$
\begin{aligned}
q(c_6)=-\frac5{D_*}\big[
&3(2d+7)v\{3(d-3)x^3+2(d+2)y^2\}\\
&-(2d+3)(d+2)w\{9x^3+2y^2\}\big].
\end{aligned}
$$

For the affine-subtracted pair operator, its retracted constant occupation action vanishes on $1,x,y,x^2,xy$ and sends $y^2$ to $\varepsilon J$. Appendix UN gives the finite projector recurrence and the exact determining identity, including its independent symbolic verification over $\mathbb Q(d,v,w)$.

For Einstein,

$$
v=\frac{2d(d+4)}{2d-1},\qquad
w=\frac{4d(2d+5)(2d^2+9d+3)}
{(2d-1)(2d+1)(2d+3)}.
$$

Substitution gives exactly the $\varepsilon$ of ST-06. Thus the operator form has a broader algebraic origin, while its numerical coefficient uses the actual pair interaction. As a useful boundary example, $r_4=1$ and all other defects zero preserve the two-generator leading kernel but give $\varepsilon=0$.

## 10.6 Same exact kernel and same symbol, but four low generators

Return to the common-support class of UN-01 and set
$e_0=\epsilon_0(0)>0$, $e_2=\epsilon_2(0)>0$,
$u_0=u-cC_0$. Its chiral coefficients are
$\gamma_0=u_0+e_0$, $\gamma_2=u_0+e_2$ and
$\gamma_k=u_0$ for even $k\geq4$. Their affine defects satisfy

$$
r_4=\frac{(2d+5)e_0-(4d+6)e_2}{2d+1},
$$

$$
r_k=r_4+\frac{e_0-e_2}{2(2d+1)}(C_k-C_4)
\qquad(k\geq4,\ k\ {\rm even}).
$$

The ratio of the first two positive support coefficients therefore selects different low algebras:

| Ratio $e_2/e_0$ | Affine defect behavior | Consequence |
|---|---|---|
| Below $(2d+5)/(4d+6)$ | $r_4>0$ and all later defects positive | Two-generator leading algebra and positive first Gegenbauer gap |
| Equal to $(2d+5)/(4d+6)$ | $r_4=0$, $r_6>0$ | Four-generator leading algebra $\mathbb C[c_2,c_3,c_4,c_5]$ |
| Above $(2d+5)/(4d+6)$ | $r_4<0$ | The nonnegative-affine-defect theorem does not apply; the elementary branch is no longer the smallest leading slope |

The oriented residual in UN-01 remains positive in all three rows; it is a different subtraction from the chiral affine interpolant.

**Example UN-05 (exact same-support counterexample).** At $d=2$, choose

$$
w_{k\ell}=16-8\min(C_k,C_\ell)
+\mathbf1_{\{|k-\ell|=0\}}
+\frac9{14}\mathbf1_{\{|k-\ell|=2\}}.
$$

This has exactly the Einstein bad-channel support, exactly the same kernel and rank in every physical block, and the same quadratic Grassmannian symbol. Its bounded corrections also satisfy the soft and fixed-budget cluster hypotheses. However its chiral sequence is
$\gamma_0=1$, $\gamma_2=9/14$, $\gamma_k=0$ for even $k\geq4$, so

$$
s=-\frac1{28},\qquad r_4=0,\qquad r_6=\frac{13}{14}.
$$

Its lowest leading algebra has four generators. More strongly, the full two-dimensional stable $(P,Q)=(4,0)$ block is exactly

$$
W_N(4,0)=
\left[\binom N2-\frac{2N}{7}-\frac37\right]I_2,
\qquad N\geq4.
$$

Every accessible even pair degree is at most four and has zero affine defect, which proves the identity. This concrete deformation disproves the claim that support, principal symbol or Bose covariance alone force Einstein's two-generator low phase.

## 10.7 Nonnegative defects are sufficient, not necessary, for the leading kernel

The first-positive-defect theorem has a useful converse boundary. Its nonnegativity hypothesis ensures both a global finite-$N$ lower bound and positivity of all higher leading gaps. The latter conclusion can survive some signed defects.

**Example UN-06 (signed-defect counterexample to necessity).** Set $d=2$, subtract the affine part, and choose

$$
r_4=1,\qquad r_6=-\frac1{100},\qquad
r_k=0\quad\text{for every other even }k.
$$

For every integer $p\geq6$, the endpoint weights obey the exact identity

$$
\frac{\alpha_{p,6}}{\alpha_{p,4}}
=\frac{28(p-5)(p-4)}{11(p+8)(p+9)}
<\frac{28}{11}.
$$

Thus

$$
\kappa_p=2\alpha_{p,4}
\left(1-\frac1{100}\frac{\alpha_{p,6}}{\alpha_{p,4}}\right)>0.
$$

The degrees four and five also have positive gap, while $Kc_2=Kc_3=0$. Triangularity and the same geometric-versus-algebraic multiplicity argument prove, in every weight,

$$
\ker K=\mathbb C[c_2,c_3]
$$

with a semisimple zero and an algebra retraction. Consequently nonnegative pair defects are not necessary for that leading-kernel conclusion.

The example lies outside the common positive-support class of UN-01 and does not retain its global finite-$N$ affine-minimum guarantee. Indeed the affine-subtracted pair operator itself has a negative channel. The generic first-low formula remains a rational identity when its denominators are nonzero; here $D_*>0$ and $\varepsilon<0$. This makes explicit why positivity of the leading high-generator gaps and positivity of the first low splitting are separate conditions.

## 10.8 The reach of generic normal forms

The binary-valuation argument in ST-04 extends to rational pair families with the following specific pole structure: at $d=1/2$ the zero channel has a nonzero simple residue $R$, every other channel entering a fixed degree is regular, and the endpoint weights are those of the same unitary representation. Then

$$
\operatorname*{Res}_{2d-1}\sigma_{pq}
=R(2f_pf_q-1).
$$

In a proposed splitting relation the common nonzero factor $R$ cancels, and the dyadic argument again proves that the homological divisor is not identically zero. For coefficients rational over $\mathbb Q(d)$, its exceptional physical roots are algebraic; a finite cutoff excludes only finitely many of them. This extension requires the pole hypothesis. Covariance by itself does not supply it, and it does not establish normal-form integrability of the full pencil.

The resulting universality hierarchy is precise. Exact support controls the collision kernel. Quadratic growth controls the principal law. Polynomial metric and weight distortion controls logarithmic comparison. The first nonzero affine defect controls a sufficient low-algebra class, and channels four and six determine its first two-generator splitting. Exact Einstein coefficients select particular values within those structures. None of these mathematical deformation statements completes the independent problem of classifying physically realizable bulk interactions.

# 11. Discussion and remaining problems

## 11.1 The physical answer now available

The central output is a complete constructive first-order scalar spectrum at every finite free level, for the specified global AdS₃ Einstein–scalar problem and its fixed quantum prescription. Starting with the boundary-completed action, the canonical construction retains all unreduced variables long enough to derive their constraint, boundary, and virtual contributions. The full-block normal form separates the absence of independent free boundary-graviton occupation from the presence of gravitational dressing. The global intertwiner argument excludes resonant number-changing scalar terms, including the integer-mass degeneracies that a frequency-only argument would miss. The one-body quantum calculation and physical-gap subtraction are separate from the connected classical quartic.

The resulting finite problem has a precise answer even when a characteristic root is not elementary: a physical Gram, a finite matrix, exact root multiplicities, and an explicit embedding of each eigenspace. Descendants and coincident roots across particle numbers are reconstructed and merged by exact algebra. This is the sense in which the finite problem is complete. The all-$N$ recoupling compiler and the stable pencil are computational representations of that answer, each useful in a different regime.

The representation-theoretic conclusions are statements about the prescribed pair operator. Their dependence on the physical input has not been erased by notation. The compact all-label Einstein formula is obtained in its stated common source/Hessian domain; a more general continuum response realization still requires the additional analytic conditions identified in Chapter 3 and Appendix A. The direct canonical finite algorithm remains independently available. The note does not substitute a classical stationary action for the one-body quantum prescription, nor a local formal inverse for a proved global boundary-value problem.

## 11.2 What the exact structures explain

The positive pair support explains why a large fraction of a high-left-degree block can share a simple Casimir-baseline coefficient. The logarithmic construction gives every state in that eigenspace, with the physical Gram and all collision flags. The chiral Vandermonde factor is one section of a larger nonchiral classification. Its relation to pseudopotentials is an operator relation; further many-body phase statements would require additional limits and observables.

The low-channel mechanism is different. An interaction can agree with an affine Casimir expression on the pair support of a particular state even though it is nonpolynomial on the full representation. That observation gives universal eigenlines, a special-mass doublet, and complete lowest-eigenspace counts once positive defects and the root-power classification are combined. It also explains why the special families do not diagonalize generic higher-cutoff spaces. The upper-edge theorem answers a third question: it uses a labelled collision comparison to locate the largest coefficient and its exact gap across the full fixed-$N$ tower.

At fixed $Q$, the finite atomic law describes almost all of the compressed positive spectrum, while cluster operators describe sparse branches that disappear from normalized empirical measures. Partition joins, connected Möbius coefficients, and parity-resolved Bose embeddings organize their recursively inherited thresholds. At simultaneous large $P,Q$, the Grassmannian symbol instead describes a continuous limiting distribution. Its zero atom exceeds the exact kernel in the proved regimes, and the excess is accounted for by strictly positive levels with exponentially small upper bounds. These are compatible descriptions in different orders of limits, rather than competing formulas for one universal limit.

At fixed excitation degrees, increasing $N$ gives an exact affine pencil after subtracting the pair ground energy. The physical Gram depends on $N$, and a singular coordinate limit can possess a genuine leading Jordan block despite finite-$N$ self-adjointness. General analytic branches are therefore organized in $N^{-1/2}$. The isolated chiral lowest cluster has additional algebraic structure: a multiplicative retraction, a cusp quotient, an effective Gegenbauer operator, and a proved first $1/N$ correction. Its integer expansion uses an extra isolation and signed-frame argument; it does not apply to the entire nonchiral pencil.

## 11.3 What is universal and what remains Einstein-specific

The basic finite construction uses positive discrete series, diagonal Bose statistics, global covariance, and number-preserving two-body form. The exact logarithmic kernel uses the stricter information that the residual has the same strictly positive channel support. Its quantitative high-excitation laws require controlled channel growth and an identified principal symbol. The stable low algebra and its first effective operator depend on specified affine defects of a few low pair channels. The closed Einstein values provide all of these inputs for the present problem, but the inputs are logically distinct.

The counterexamples in Chapter 10 make the distinctions substantive. Equal kernel and equal high-channel symbol do not force the same stable low algebra: one admissible deformation has four low generators. Nonnegative affine defects give a sufficient classification theorem, while a signed-defect example shows that those hypotheses cannot simply be presented as necessary. Abstract covariant pair operators in these classes are not automatically produced by a local bulk quartic Lagrangian. The universality theorems classify operator-level consequences under explicit sufficient assumptions.

## 11.4 Open questions left by these results

The following questions remain open within the scope of the existing work. They are not assumptions silently used to finish a theorem above.

**Deeper cluster multiplicities and quantitative cutoffs.** The recursive Hausdorff spectral-set theorem, finite accumulation depth, and eventual projector ranks away from finer thresholds are established. A general closed multiplicity formula at every nested threshold, effective uniform estimates for the internal cutoff $R(\varepsilon)$, and one determinant formula covering arbitrary particle number are not. Four particles have a substantially more explicit Fredholm/Gamma answer; its Schatten estimates do not follow merely from compactness and do not automatically extend to every higher-cluster operator.

**The full soft exponential scale.** The current arguments give extensive strictly positive soft subspaces, density-loss-dependent exponential upper bounds, subexponential-window counts, ordered mass-comparison bounds, and a proved three-particle moving boundary layer. They do not give matching exponential lower bounds, a common action for individual levels, a limiting rate distribution, or a universal law at every joint approach to balance. A finite rational inertia bracket certifies one finite interval; it is not evidence that can replace those missing asymptotic lower bounds.

**Joint limits.** Fixed-$Q$ large-$P$, balanced $P,Q\to\infty$, fixed-degree large-$N$, and the finite-degree large-mass contraction are different theorems. Limits in which $N,Q,\Delta$, and an internal cluster cutoff grow together require new uniform estimates. The current polynomial Gram-comparison losses hold for two fixed masses; they do not license arbitrary moving-mass interchanges.

**Resonances and a uniform analytic finite-spectrum description.** Some stable leading resonances and protected crossings are explicit, including their exact Jordan or semisimple character. A complete resonance classification for all masses and degrees is not available. Generic algebraic linearization has stated divisor exclusions; it is not an all-mass formula. The finite matrix construction is exact, but there is no single scalar recurrence, general determinant factorization, or elementary analytic formula resolving all finite roots at once.

**Continuous-domain and higher-order physics.** The canonical-to-covariant comparison still carries the explicit existence, boundary, and averaged-endpoint requirements in its domain statement. A finite-time gauge-accessibility construction does not itself prove an infinite-time bounded endpoint. The next-order quantum Ward repair in Appendix D is a conditional statement with stronger hypotheses, not a completed AdS calculation at that order. No $O(G^2)$ remainder, general independently excited boundary-graviton sector, alternative quantization, or nonperturbative spectrum is supplied here.

## 11.5 The meaning of the obstructions and the computational evidence

The nonchiral Markov counterexample concerns a specified natural positive cone; the negative-cycle test concerns diagonal similarities in a specified occupation basis. The Kohno calculation concerns a specified class of two-site flat residues, even after odd completion and a common Casimir shift. The Galois example concerns radical solvability of particular exact finite polynomials. The analytic-charge obstruction concerns globally analytic functions on a stated classical phase space and a specified symbol implication. None of these alone is a general nonintegrability theorem.

The reproduction package is designed to make the distinction between proof and evidence visible. It retains exact finite algebra, independent reconstructions, symbolic identities, high-precision diagnostics, and inherited records as separately identified objects. Every claimed current run has its actual command, environment, outcome, and elapsed time; the mandatory runner checks semantic payloads and strict inertia endpoints, and rejects missing tasks and optimized execution. Source hashes identify inputs and revisions. They neither prove theorems nor turn a cached numerical result into a fresh gravitational integration.

The combined text and appendices therefore provide a finite answer together with its proof boundaries: how the specified physical pair operator is obtained, how every finite scalar block is reconstructed, and which exact or asymptotic conclusions can be drawn from each additional structure.

# Appendix A. Canonical constraint inverses and direct pair reconstruction

This appendix gives a complete finite canonical construction of each pair coefficient. Its inputs are the free scalar modes, the maximal/conformal constraints, the boundary flux condition, and the action-derived global Ward identity. It does not require a spacetime response kernel. The circle of modes used for compression is not an invariant subspace; recovering the primary coefficients requires the final invertible representation-theoretic step.

## A.1 Scalar and momentum inverses, including the global channels

For angular harmonic $k$, let $m=|k|$. The scalar constraint operator is
$$
L_m=-(y^2-1)\partial_y^2-2y\partial_y+\frac{m^2}{y^2-1}+2 .
\tag{A.1}
$$
For $m\ge2$, choose
$$
p_m=z^m(y+m),\qquad
q_m=\frac{z^m(y+m)-z^{-m}(y-m)}{2m(m^2-1)},
\qquad z=\sqrt{\frac{y-1}{y+1}}.
\tag{A.2}
$$
They are respectively regular at the center and decaying at infinity,
$q_m\sim1/(3y^2)$, and have Wronskian
$$
p_mq_m'-p_m'q_m=-\frac1{y^2-1}.
$$
The exceptional solutions are
$$
\begin{aligned}
p_0&=y,&q_0&=\frac y2\log\frac{y+1}{y-1}-1,\\
p_1&=\sqrt{y^2-1},&
q_1&=\frac{y}{2\sqrt{y^2-1}}
-\frac{\sqrt{y^2-1}}4\log\frac{y+1}{y-1}.
\end{aligned}
\tag{A.3}
$$
Thus $L_mu_k=\rho_k/2$ has the prescribed solution
$$
u_k(y)=q_m(y)\int_1^y p_m(s)\frac{\rho_k(s)}2\,ds
+p_m(y)\int_y^\infty q_m(s)\frac{\rho_k(s)}2\,ds.
\tag{A.4}
$$
The Wronskian fixes the sign and normalization. For finite scalar-mode sources, both integrals converge on the stated domain. At non-global integer $m$, the products $p_mr^m$ and $q_mr^m$ are finite polynomials:
$$
p_mr^m=(y-1)^m(y+m),\qquad
q_mr^m=\frac{(y-1)^m(y+m)-(y+1)^m(y-m)}
{2m(m^2-1)}.
\tag{A.5}
$$
The latter has degree $m-2$, which is useful in the direct angular evaluator.

For the traceless momentum of Section 2, $C_\pm=A\pm iB$ satisfy
$$
C_\pm'+\left(\frac2r\pm\frac{k}{ry}\right)C_\pm
=j_r\pm\frac{ij_\theta}{ry}.
\tag{A.6}
$$
A particular solution is
$$
C_\pm(r)=\frac{z^{\mp k}}{r^2}
\int_0^r s^2z(s)^{\pm k}
\left(j_r(s)\pm\frac{ij_\theta(s)}{s\sqrt{1+s^2}}\right)ds .
\tag{A.7}
$$
For $k\ge2$, add $cz^k/r^2$ to $C_-$; for $k\le-2$, add $cz^{-k}/r^2$ to $C_+$. These additions are center regular. Fix $c$ by equality of the asymptotic coefficients of $r^2C_+$ and $r^2C_-$, which is exactly the zero-independent-boundary-momentum condition. For $k=0,\pm1$, center regularity fixes the relevant homogeneous freedom and the matter charge is retained. This completes the spatial input for arbitrary external modes.

## A.2 Circular sources as finite coefficient lists

Put $x=y^{-1}$; this differs from $X=f^{-1}=x^2$ in Section 2. For angular momentum zero, remove the angular normalization and write
$$
R_n(x)=x^\Delta\sum_{i=0}^n a_{ni}x^{2i},\qquad
a_{ni}=\frac{(\Delta)_n}{n!}
\frac{(-n)_i(n+\Delta)_i}{(\Delta)_i\,i!},
\qquad \omega_n=\Delta+2n.
\tag{A.8}
$$
A signed leg $a=(n,\varepsilon)$ has
$\chi_a=-i\varepsilon\omega_nxR_n$; a creation leg has $\varepsilon=-1$.
For $a=(n,\varepsilon)$, $b=(m,\eta)$, define
$$
\begin{aligned}
\rho_{ab}&=\frac12\left[
-\varepsilon\eta\omega_n\omega_mx^2R_nR_m
+x^2(1-x^2)R_n'R_m'+\mu R_nR_m\right]
=x^{2\Delta}\sum_h\rho_{ab,h}x^{2h},\\
Q_{ab}&=(-\varepsilon\eta\omega_n\omega_mx^2-\mu)R_nR_m
=x^{2\Delta}\sum_hq_{ab,h}x^{2h},\\
j_{y,ab}&=\frac14(\chi_a\partial_yR_m+\chi_b\partial_yR_n)
=ix^{2\Delta+2}\sum_hj_{ab,h}x^{2h}.
\end{aligned}
\tag{A.9}
$$
Their complete lists are
$$
\begin{aligned}
\rho_{ab,h}={}&\frac12\sum_{i+j=h}a_{ni}a_{mj}
[(\Delta+2i)(\Delta+2j)+\mu]\\
&-\frac12\sum_{i+j=h-1}a_{ni}a_{mj}
[(\Delta+2i)(\Delta+2j)+\varepsilon\eta\omega_n\omega_m],\\
q_{ab,h}={}&-\mu\sum_{i+j=h}a_{ni}a_{mj}
-\varepsilon\eta\omega_n\omega_m\sum_{i+j=h-1}a_{ni}a_{mj},\\
j_{ab,h}={}&\frac14\sum_{i+j=h}a_{ni}a_{mj}
[\varepsilon\omega_n(\Delta+2j)+\eta\omega_m(\Delta+2i)] .
\end{aligned}
\tag{A.10}
$$
Out-of-range coefficients are zero. Thus $\rho,q$ stop at $h=n+m+1$, and $j$ at $h=n+m$.

The zero-angular scalar identity
$$
L_0[y^{-s}]=-(s-2)(s+1)y^{-s}+s(s+1)y^{-s-2}
\tag{A.11}
$$
reduces every inverse to one common nonpolynomial function:
$$
U_\Delta(x)=\frac{\Delta}{4x}
\int_0^x\frac{t^2-t^{2\Delta}}{1-t^2}\,dt,\qquad
L_0U_\Delta=\frac{\Delta(\Delta-1)}2x^{2\Delta}.
\tag{A.12}
$$
It is regular at $x=1$ and $O(x^2)$ at $x=0$.
Iteration of (A.11) gives
$$
L_0^{-1}[x^{2\Delta+2h}]
=\frac{\Delta-1}{\Delta+h-1}L_0^{-1}[x^{2\Delta}]
+\sum_{i=0}^{h-1}
\frac{x^{2\Delta+2i}}{2(2\Delta+2i+1)(\Delta+h-1)} .
\tag{A.13}
$$
Hence
$$
\begin{aligned}
u_{ab}&=\alpha_{ab}U_\Delta
+x^{2\Delta}\sum_i\beta_{ab,i}x^{2i},\\
\alpha_{ab}&=\sum_h\frac{\rho_{ab,h}}{\Delta(\Delta+h-1)},\\
\beta_{ab,i}&=\sum_{h>i}
\frac{\rho_{ab,h}}{4(2\Delta+2i+1)(\Delta+h-1)}.
\end{aligned}
\tag{A.14}
$$
The free energy inner product proves
$$
\alpha_{(n,\varepsilon)(m,\eta)}
=\frac2\Delta\int_1^\infty y\rho_{ab}(y)\,dy
=\frac{\omega_n}{\Delta}\delta_{nm}\delta_{\varepsilon,-\eta}.
\tag{A.15}
$$
Thus only diagonal number-preserving pairs retain the nonpolynomial response.

For circular momentum $t^i{}_j=\operatorname{diag}(A,-A)$,
$$
A_{ab}(x)=\frac{ix^2}{1-x^2}
\sum_hj_{ab,h}F_{2\Delta+2h-1}(x),\qquad
F_a(x)=\frac{1-x^a}{a}-\frac{1-x^{a+2}}{a+2}.
\tag{A.16}
$$
This follows by integrating
$\partial_yA+2yA/(y^2-1)=j_y$ from the center. There is no center-regular $1/r^2$ homogeneous addition at angular momentum zero.

## A.3 All radial integrations and the nonpolynomial cancellation

The energy measure becomes $dx/x^3$. The momentum integral is
$$
\int_0^1\frac{xF_a(x)F_b(x)}{(1-x^2)^2}\,dx
=\frac1{(a+2)(b+2)(a+b+2)}.
\tag{A.17}
$$
To derive it, integrate with
$\partial_x(1-x^2)^{-1}=2x(1-x^2)^{-2}$ and
$F_a'=-x^{a-1}(1-x^2)$. The lower boundary contribution
$-2/[a(a+2)b(b+2)]$ is essential. Here $a,b>1$, so all original integrals converge.

For the scalar terms introduce
$$
Z_h=\int_0^1x^{2\Delta+2h-3}U_\Delta(x)\,dx,\qquad
S_U=\int_0^1x^{-3}U_\Delta(x)^2dx .
$$
Differentiating the integral in (A.12), then integrating by parts, gives
$$
\begin{aligned}
(2\Delta+2h-1)Z_{h+1}-(2\Delta+2h-3)Z_h
&=\frac{\Delta}{8}
\left(\frac1{\Delta+h}-\frac1{2\Delta+h-1}\right),\\
S_U&=\frac{\Delta}{8}
\left(\frac{\Delta-1}{8}-Z_0-Z_1\right).
\end{aligned}
\tag{A.18}
$$
The coefficient of $Z_0$ cancels in every complete resonant circular matrix element. Here is the all-label argument.

Off-diagonal elements have no nonzero $\alpha$: matching one creation and annihilation radial label forces the other labels to match by energy conservation. For a diagonal pair put
$$
\rho_n=\rho_{(n,-)(n,+)},\quad Q_n=Q_{(n,-)(n,+)},\quad
\alpha_n=\omega_n/\Delta,\quad v_n=u_{(n,-)(n,+)}-\alpha_nU_\Delta .
$$
Initially take $\Delta>3/2$, so the following intermediate moments converge separately. Self-adjointness of $L_0$, paired with $1,y^2$, gives
$$
\int_1^\infty y^2(Q_n+8v_n)\,dy
=\int_1^\infty[y^2(Q_n-\rho_n)+\rho_n]\,dy
+\alpha_n\int_1^\infty(y^2-1)\rho_0\,dy .
\tag{A.19}
$$
The first integral is zero. Multiply the free radial equation
$$
-\partial_y[y(y^2-1)R_n']
+(\mu y-\omega_n^2/y)R_n=0
$$
by $(y^2-1)R_n'$ and integrate; the result is twice that first integral. The boundary terms vanish at the center and are $O(y^{3-2\Delta})$ at infinity. Therefore
$$
T_n:=\int_1^\infty y^2(Q_n+8v_n)\,dy
=\alpha_n\frac{2\Delta(\Delta-1)}
{(2\Delta-3)(2\Delta-1)} .
\tag{A.20}
$$
By (A.18), the coefficient of $Z_0$ in $Z_h$ is
$(2\Delta-3)/(2\Delta+2h-3)$, and that in $S_U$ is
$-\Delta(\Delta-1)/[2(2\Delta-1)]$.
The two complementary nonlocal pairings have total coefficient
$$
-(2\Delta-3)(\alpha_nT_m+\alpha_mT_n)
+\frac{4\Delta(\Delta-1)}{2\Delta-1}\alpha_n\alpha_m=0.
\tag{A.21}
$$
Repeated-leg multiplicities multiply this zero and cause no exception.

The original complete integrals and their fixed-order $\Delta$ derivatives have integrable bounds on compact subintervals of $\Delta>1$. They are real analytic there. The final rational expression below has no pole on that interval. Hence equality on $\Delta>3/2$ extends to all $\Delta>1$; the divergent intermediate moments in (A.20) are never used literally below that threshold.

We may therefore replace the moments *in a complete resonant element* by
$$
\widehat Z_0=0,\qquad
\widehat Z_h=\frac{\Delta}{8(2\Delta+2h-3)}
\sum_{a=0}^{h-1}\left(\frac1{\Delta+a}-\frac1{2\Delta+a-1}\right)
\quad(h\ge1),
\tag{A.22}
$$
$$
\widehat S_U=\frac{\Delta}{8}
\left(\frac{\Delta-1}{8}-\widehat Z_1\right).
$$
This is an algebraic cancellation in the complete matrix, not a finite-part prescription and not deletion of the physical function $U_\Delta$.

For two source pairs define the evaluated rational pairing
$$
\begin{aligned}
\mathcal B(ab;cd)={}&
-2\sum_{h,j}\frac{j_{ab,h}j_{cd,j}}
{(2\Delta+2h+1)(2\Delta+2j+1)(4\Delta+2h+2j)}\\
&-\alpha_{ab}\sum_hq_{cd,h}\widehat Z_h
-\sum_{i,h}\frac{\beta_{ab,i}q_{cd,h}}
{4\Delta+2i+2h-2}\\
&-4\left[
\alpha_{ab}\alpha_{cd}\widehat S_U
+\alpha_{ab}\sum_j\beta_{cd,j}\widehat Z_j
+\alpha_{cd}\sum_i\beta_{ab,i}\widehat Z_i
+\sum_{i,j}\frac{\beta_{ab,i}\beta_{cd,j}}
{4\Delta+2i+2j-2}
\right].
\end{aligned}
\tag{A.23}
$$
Its three lines integrate $2A_{ab}A_{cd}$, $-u_{ab}Q_{cd}$, and
$-4u_{ab}u_{cd}$. The sign of the momentum term comes from $i^2=-1$.

## A.4 Circular compression and invertible primary extraction

Let $T$ denote the total radial sum, so that the total chiral levels of a circular pair are $(T,T)$. Define
$$
|r;T\rangle=
\frac{b^\dagger_{r,0}b^\dagger_{T-r,0}|0\rangle}
{\sqrt{1+\delta_{2r,T}}},
\quad 0\le r\le\lfloor T/2\rfloor,
\qquad
\mathsf M^{(T)}_{rs}=\langle r;T|W|s;T\rangle.
$$
Every quadratic factor in a four-leg circular density pairing has zero angular harmonic, so the connected $D_m^\dagger D_m$ term is absent here. Contractions creating one-body terms are excluded by the four-leg extraction, not assumed to vanish.

For legs
$$
(a_1,a_2,a_3,a_4)
=((r,-1),(T-r,-1),(s,+1),(T-s,+1)),
$$
the matrix is
$$
\boxed{
\mathsf M^{(T)}_{rs}
=\frac{32}{\sqrt{(1+\delta_{2r,T})(1+\delta_{2s,T})}}
\sum_{\substack{A\subset\{1,2,3,4\}\\|A|=2}}
\mathcal B(a_A;a_{A^c}).
}
\tag{A.24}
$$
The six subsets use four distinct leg slots even when physical labels coincide.
The coefficient $32$ is $16\pi$, times the four ordered source polarizations, times $2\pi/(2\pi)^2$. All source coefficients, all integrals, and all Bose factors have now been specified by finite rational operations.

Construct the orthogonal chiral matrix $U^{(T)}$ from (4.4):
$$
\sum_{p=0}^T U^{(T)}_{pk}|p,T-p\rangle
=\frac{(L_+^{(1)}+L_+^{(2)})^{T-k}}
{\sqrt{(T-k)!(2\Delta+2k)_{T-k}}}
\sum_{p=0}^k v_p^{(k)}|p,k-p\rangle.
\tag{A.25}
$$
Put $s_r=\sqrt{2/(1+\delta_{2r,T})}$ and
$C_{r;k\ell}=s_rU^{(T)}_{rk}U^{(T)}_{r\ell}$.
The global Ward identity and pair multiplicity one imply the compression relation
$$
\mathsf M^{(T)}
=\sum_{\substack{0\le k,\ell\le T\\k+\ell\ {\rm even}}}
C_{;k\ell}C_{;k\ell}^{T}\gamma_{k\ell}.
\tag{A.26}
$$

Starting from $T=0$, subtract all already known terms with $k,\ell<T$.
For the remaining matrix $\mathsf M_{\rm new}^{(T)}$, define
$$
\mathsf D_T=\operatorname{diag}_r U^{(T)}_{rT},
\qquad
(\mathsf O_T)_{ra}=s_rU^{(T)}_{ra},
\qquad a=T,T-2,\ldots .
$$
Paired-row orthogonality gives $\mathsf O_T^T\mathsf O_T=I$.
Every $U^{(T)}_{rT}=v_r^{(T)}$ is nonzero at $\Delta>1$.
Therefore
$$
\boxed{
\mathsf O_T^T\mathsf D_T^{-1}\mathsf M_{\rm new}^{(T)}
\mathsf D_T^{-1}\mathsf O_T
=\operatorname{diag}_{a=T,T-2,\ldots}
\bigl[(2-\delta_{aT})g_{a,T-a}\bigr].
}
\tag{A.27}
$$
The factor two comes from the ordered pair labels $(T,a),(a,T)$ when $a<T$. Equation (A.27) is an invertible reconstruction. To obtain $g_{n,s}$, it suffices to compute through $T=n+s$. Off-diagonal entries of (A.27) are required to vanish; the implementation checks them rather than dropping them.

**Proposition PHY-07 (direct canonical finite evaluation).**
Equations (A.8), (A.10), (A.14), and (A.22)–(A.27) determine every finite-label connected pair coefficient in the canonical boundary prescription by a finite sequence of rational operations, with free algebraic normalization factors if an orthonormal basis is used. All denominators in the rational evaluator are nonsingular for $\Delta>1$.

For an explicit ground-state check, the mixed-sign scalar response is $U_\Delta$; the same-sign scalar response is
$-\Delta y^{-2\Delta}/[4(2\Delta+1)]$, and the same-sign momentum is $\pm iM$, where
$$
M(y)=\frac{\Delta^2}{2(y^2-1)}
\left[\frac{1-y^{1-2\Delta}}{2\Delta-1}
-\frac{1-y^{-2\Delta-1}}{2\Delta+1}\right].
$$
The two same-sign partitions sum to
$-\Delta^2(2\Delta-3)/[8(4\Delta^2-1)]$; the four mixed-sign partitions sum to
$-\Delta^2(\Delta-1)/[2(2\Delta-1)]$.
Equations (A.17)–(A.18) evaluate both, including
$4\int_1^\infty yM^2dy=\Delta^3/[4(2\Delta+1)^2]$.
The repeated-pair Bose factor makes the overall coefficient $16$, giving
$$
g_{0,0}=-\frac{2\Delta^2(8\Delta^2-2\Delta-7)}
{(2\Delta-1)(2\Delta+1)}.
\tag{A.28}
$$
This equals (4.24) and is a direct constraint integral.

## A.5 Independent angular exchange

For arbitrary external signed legs $a_1=(I,-),a_2=(J,-),a_3=(K,+),a_4=(L,+)$, let $k_A$ be the angular sum of a two-leg subset. With the angular normalization removed define
$$
I_m(a,b)=\int_1^\infty p_m(y)\rho_{ab}(y)\,dy .
$$
Four-leg extraction of the density anticommutator gives
$$
\boxed{
\mathsf X_{IJ;KL}
=-\frac8{\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}}
\sum_{\substack{|A|=2\\|k_A|\ge2}}
\frac{I_{|k_A|}(a_A)I_{|k_A|}(a_{A^c})}{k_A^2-1}.
}
\tag{A.29}
$$
The angular selection rule has performed the entire internal graviton sum.
Only finitely many $|k_A|$ occur at fixed external labels. Combining (A.29) with the full angular inverses (A.4), (A.7) gives the independent matrix (4.25).

## A.6 What de Donder accessibility does and does not supply

The original response notes also contain a useful conditional gauge construction. It is separate from the canonical constraint inverse and from the time-averaged response bridge. Define
$$
C_\nu[q]=\nabla^\mu q_{\mu\nu}-\tfrac12\nabla_\nu q,
\qquad \mathcal Q\xi_\nu=(\Box-2)\xi_\nu .
$$
The curvature identity on AdS gives
$C[q+\mathcal L_\xi g_0]=C[q]+\mathcal Q\xi$.
Proper vectors obey $\xi^r=O(r^{-1})$, $\xi^a=O(r^{-4})$, with differentiated falloffs.

**Proposition PHY-14 (conditional finite-time gauge construction).** Suppose a smooth scalar-sourced Einstein response admits a complete log-free asymptotic power expansion with differentiated remainder bounds, has the stated regular center and reflecting boundary domain, and the auxiliary positive-mass wave problems below have smooth solutions in that domain. If
$\Delta>1$ and $\Delta\ne\Delta_{\mathrm{dD}}=(1+\sqrt5)/2$, it has a smooth proper log-free de Donder representative on every fixed finite time interval. This assertion contains no uniform infinite-time bound.

**Construction and proof.** In a boundary collar, set
$$
\eta^r=\frac{\sqrt f}{2}\int_r^\infty\sqrt{f(s)}q_{rr}(s,x)\,ds,
\qquad
\eta^a=\int_r^\infty g_0^{ab}(s)
\left[q_{rb}(s,x)+\frac{\partial_b\eta^r(s,x)}{f(s)}\right]ds.
\tag{A.30}
$$
Differentiation puts $q_c=q+\mathcal L_\eta g_0$ in radial gauge. Cut off $\eta$ near the center. The sourced radial Einstein constraints, whose matter terms are subleading for $\Delta>1$, give
$$
b_{tt}=b_{\theta\theta},\qquad
\partial_tb_{\theta\theta}=\partial_\theta b_{t\theta},\qquad
\partial_tb_{t\theta}=\partial_\theta b_{tt}
$$
for its order-one tangential coefficients. They cancel the possible leading $r^{-2}$ tangential and $r^{-3}$ radial terms of $C[q_c]$. The remaining exponents belong to
$\mathcal S=\{4+2n\}\cup\{2\Delta+2n\}$, $n\ge0$.

For covector coefficients $\xi_a=a_{a,s}r^{-s}$, $\xi_r=a_{r,s}r^{-s-1}$, the leading gauge operator gives
$$
a_{r,s}=\frac{\widehat F_{r,s}}{s^2-2s-4},\qquad
a_{a,s}=\frac{\widehat F_{a,s}-2\partial_aa_{r,s}}{s^2-4}.
\tag{A.31}
$$
The hats subtract the contributions already found at smaller exponents. The positive indicial roots are $2$ and $1+\sqrt5$. All $s\in\mathcal S$ exceed two; the second root occurs in this set only at $n=0,\Delta=\Delta_{\mathrm{dD}}$. Away from it, (A.31) recursively fixes every power coefficient. A smooth asymptotic Borel lift, cut off near the center, yields $\xi_{\rm as}$ with a remainder
$F=-C[q_c]-\mathcal Q\xi_{\rm as}$ decaying with all derivatives faster than any inverse power.

It remains to solve an exact wave equation, not just a formal boundary expansion. Put
$$
(\mathcal Pv)_\nu=\nabla^\mu(\nabla_\mu v_\nu-\nabla_\nu v_\mu)-4v_\nu.
$$
Then $\mathcal Qv=\mathcal Pv+\nabla(\nabla\cdot v)$,
$\nabla\cdot\mathcal Pv=-4\nabla\cdot v$, and
$\mathcal Q\nabla u=\nabla(\Box-4)u$.
Solve $\mathcal Pv=F$ and $(\Box-4)u=\nabla\cdot F$ with the assumed normalizable reflecting realization. These equations have positive mass squared four. For the vector, eliminating its time component gives the positive energy
$$
\frac12\int_\Sigma N\sqrt\sigma
\left[e_ie^i+\tfrac12f_{ij}f^{ij}+4v_iv^i
+\tfrac14(D_ie^i)^2\right].
$$
The prescribed positive spatial realization and its Duhamel solution are the analytic input; symbolic indicial calculations do not prove their smooth asymptotic domain by themselves. With those hypotheses,
$\zeta=v+\nabla u/4$ satisfies $\mathcal Q\zeta=F$. Thus
$q^{\rm dD}=q+\mathcal L_{\eta+\xi_{\rm as}+\zeta}g_0$
has $C[q^{\rm dD}]=0$ everywhere on the chosen interval. The fast homogeneous vector and scalar branches preserve the stipulated proper falloffs. $\square$

The exceptional mass has a real log-free gauge obstruction for generic sources. In de Donder gauge,
$$
(\Box-4)q^{\rm dD}=2T,
\qquad
T=-\Delta(2\Delta-3)\beta(t,\theta)^2r^{-2\Delta}+\cdots .
\tag{A.32}
$$
At $\Delta_{\mathrm{dD}}$, the indicial coefficient $s(s-2)-4$ at $s=2\Delta_{\mathrm{dD}}$ vanishes, while
$-\Delta_{\mathrm{dD}}(2\Delta_{\mathrm{dD}}-3)=(\sqrt5-3)/2\ne0$.
A nonzero resonant source coefficient therefore requires a logarithmic trace; a pure-power response cannot match it. The original polar-areal response can remain smooth at this mass. This is a restriction of the requested log-free de Donder representative, not a pole of the pair spectrum.

Finally, an arbitrary off-shell Brown–Henneaux field does not satisfy the leading radial Einstein constraints used above. A concrete smooth example is
$$
q_{t\theta}=A(t)\frac{r^4}{(1+r^2)^2},\qquad A'\not\equiv0,
\quad C_\theta=-\frac{A'(t)r^4}{(1+r^2)^3}.
$$
For the angular average $a(t,r)=\langle\xi_\theta\rangle$, the gauge equation becomes
$$
(1+r^2)a_{rr}+(r-r^{-1})a_r
-\frac{a_{tt}}{1+r^2}-4a
=\frac{A'(t)r^4}{(1+r^2)^3}.
\tag{A.33}
$$
The proper leading power $r^{-2}$ is homogeneous. Matching the source forces
$a=-A'r^{-2}\log r/4+\cdots$, and hence
$(\mathcal L_\xi g_0)_{r\theta}=A'r^{-3}\log r-A'r^{-3}/4+\cdots$,
which violates the differentiated Brown–Henneaux bound. A residual solution cannot change this inhomogeneous equation. This explicit obstruction is why an on-shell gauge-accessibility argument does not authorize an off-shell TT or de Donder truncation before the canonical variation.

# Appendix B. One-body quantum subtraction in the common regulator

This appendix proves the subtraction statement used in Section 3.4. It keeps distinct the finite algebra of normal ordering, the convergence of boundary-oscillator sums, the short-time scalar trace, and the local counterterms. The final statement concerns fixed external modes; no estimate uniform in external excitation is required or claimed.

## B.1 The seagull and energy-weighted cubic cancellation

Restore the independent gravitational momentum as
$t=\tau_g/\kappa+t_\phi$. Let
$Lu_\phi=\rho/2$, $Lu_{\tau_g}=\tau_g:\tau_g/2$.
Expansion of the constraint gives the contact
$$
V_{p^2\phi^2}
=\int_\Sigma y\sqrt{\bar\sigma}\,
(-u_{\tau_g}\chi^2+\mu u_{\tau_g}\phi^2
-8u_\phi u_{\tau_g}-2u_\phi\tau_g:\tau_g).
\tag{B.1}
$$
The last term comes from the momentum prefactor $e^{-2\Psi}$.
With boundary Abel parameter $0<\alpha<1$, and $t=z^2$ only inside the next display, the executed sums are
$$
\begin{aligned}
W_\alpha(t)&=\langle\tau_g:\tau_g\rangle_\alpha
=\frac{3\alpha^2(1-t)^4}{8\pi(1-\alpha t)^4},\\
U_\alpha(t)&=\langle u_{\tau_g}\rangle_\alpha\\
&=\frac1{32\pi}\left[
\frac{2+\alpha-2(-1+\alpha+3\alpha^2)t
+\alpha(-3+2\alpha+4\alpha^2)t^2}{(1-\alpha t)^2}
-\frac{2(\alpha^2-1)(1+t)}{\alpha(t-1)}
\log\frac{1-\alpha t}{1-\alpha}\right],\\
\alpha_{\rm emb}
&=-\langle\eta\eta''\rangle_\alpha
=\frac{-(\alpha+\alpha^{-1})\log(1-\alpha)/2-1/2-\alpha/4}
{4\pi}.
\end{aligned}
\tag{B.2}
$$
Here $LU_\alpha=W_\alpha/2$, with regular/fast conditions, and the embedding contributes $\alpha_{\rm emb}H_0$. Symmetric displacement–momentum contractions vanish by Weyl ordering.

Use angular-normalization-stripped $R_I(y)$, let $Lu_I=\rho_I/2$, and note
$$
\int_1^\infty y\rho_I\,dy=\omega_I/2,\qquad
u_I=\frac{\omega_I}{12y^2}+o(y^{-2}).
$$
The full regulated contact is
$$
\frac{s_I^{\rm grav}(\alpha)}{16\pi}
=2\int_1^\infty y
\left[U_\alpha\left(-\frac{\omega_I^2}{y^2}+\mu\right)R_I^2
-u_I(8U_\alpha+2W_\alpha)\right]dy
+\alpha_{\rm emb}\omega_I .
\tag{B.3}
$$
Its limit cannot be obtained by inserting the pointwise limits of (B.2).
Split $u_I=\omega_I/(12y^2)+v_I$ first. The identity
$$
\int_1^\infty\frac{U_\alpha}{y}\,dy
=\frac14\int_1^\infty\frac{W_\alpha}{y}\,dy
-\int_1^\infty\frac{U_\alpha}{y^3}\,dy
$$
and
$W_\alpha(y)=6\alpha^2/\{\pi[(1-\alpha)y+1+\alpha]^4\}$
evaluate the nonuniform tail. The remaining $v_I$ integral is dominated.
The result is
$$
\begin{aligned}
s_I^{\rm grav}={}&
3\int_1^\infty y(-\omega_I^2/y^2+\mu)R_I^2dy
-8\int_1^\infty\rho_Idy\\
&+8\int_1^\infty y\log\frac{y+1}{2}\rho_Idy+4\omega_I.
\end{aligned}
\tag{B.4}
$$

The energy-weighted double commutator is evaluated by the density generator
$E_f=\int\sqrt{\bar\sigma}\,f\rho$.
Its associated spatial vector is $v^i=y\bar D^if-f\bar D^iy$.
For $f=p_me^{im\theta}$, $\bar D_iv^i=0$.
The two required summed kernels are
$$
\sum_{m\ge2}N_m^2(v\cdot\bar Df^*)
=\frac{y-1+4y\log[(y+1)/2]}{16\pi},
\quad
\sum_{m\ge2}N_m^2p_m[(y^2-1)\partial_yv^y-yv^y]
=\frac{3y(y-1)^2}{32\pi},
$$
where $N_m=[8\pi m(m^2-1)]^{-1/2}$.
They give
$$
\begin{aligned}
s_I^{\rm cc,E}
=\int_1^\infty\left[
-2\left(y-1+4y\log\frac{y+1}{2}\right)\rho_I
+3y(y-1)^2
\left((R_I')^2-\frac{j_I^2R_I^2}{(y^2-1)^2}\right)
\right]dy .
\end{aligned}
\tag{B.5}
$$

The logarithms cancel in (B.4)+(B.5). The remaining integrand is the integrated virial derivative obtained by multiplying
$$
-\partial_y[y(y^2-1)R_I']
+\left(\mu y+\frac{j_I^2y}{y^2-1}
-\frac{\omega_I^2}{y}\right)R_I=0
$$
by $-2(y-1)R_I'$. Its boundary primitive is
$$
(y-1)\left[
y(y^2-1)(R_I')^2
-\left(\mu y+\frac{j_I^2y}{y^2-1}
-\frac{\omega_I^2}{y}\right)R_I^2
\right].
\tag{B.6}
$$
It vanishes at the center and is $O(y^{2-2\Delta})$ at infinity.
The free norm accounts for the $4\omega_I$ term. Thus
$s_I^{\rm grav}+s_I^{\rm cc,E}=0$ for all fixed $I,\Delta>1$.

The use of a common regulator is justified independently. Write the density as
$\mathcal E_m=\sum A^m_{KL}b_K^\dagger b_L+
\frac12\sum(B^m_{KL}b_Kb_L+C^m_{KL}b_K^\dagger b_L^\dagger)$.
Its individual vacuum-subtracted coefficients are
$$
\begin{aligned}
c^E_{I;mJ}=16\pi N_m^2\bigl[
(\omega_I-\omega_J)(|A^m_{JI}|^2+|A^m_{IJ}|^2)
-(\omega_I+\omega_J)(|B^m_{IJ}|^2+|C^m_{IJ}|^2)\bigr],\\
c^F_{I;mJ}=-16\pi mN_m^2
(|A^m_{JI}|^2+|A^m_{IJ}|^2+|B^m_{IJ}|^2+|C^m_{IJ}|^2).
\end{aligned}
\tag{B.7}
$$
At fixed $m$, the generated Cauchy data are in the free-energy form domain:
their asymptotics are $O(y^{-\Delta})$, $O(y^{-\Delta-1})$, with integrable energy weight $y^{1-2\Delta}$. Parseval therefore performs the scalar completeness sum. For the remaining $m$-sum, positive kernels
$$
\begin{aligned}
\mathscr A_m&=z^{2m}\left[
m(my+1)+\frac{m^2(y+m)(y^2+2my+1)}{y^2-1}\right],\\
\mathscr B_m&=m(m^2-1)yz^{2m}(y+m)
\end{aligned}
$$
have the summed bounds displayed before (B.5). Their products with
$|\rho_I|$ and $(R_I')^2+j_I^2R_I^2/(y^2-1)^2$ have integrable tails
$O(y^{1-2\Delta}\log y)$.
Only finitely many $c^E$ can be positive, those with $\omega_J<\omega_I$, so convergence of the signed sum proves absolute convergence.
For $\omega_J\ge2\omega_I$, angular support
$m<\omega_I+\omega_J$ gives $|c^F|\le3|c^E|$; the remainder is finite.
Hence both arrays are absolutely summable.
For $r_I=e^{-\tau\omega_I/2}$, dominated convergence now proves
$$
r_I^2\sum_{m,J}\alpha^m(r_J^2-1)c^E_{I;mJ}\longrightarrow0,
\qquad
\sum_{m,J}(\alpha^m-1)e^{-\tau\omega_J}c^F_{I;mJ}
\longrightarrow0
\tag{B.8}
$$
along every path $\tau\downarrow0,\alpha\uparrow1$.

## B.2 Partial-trace normalization and all-external reconstruction

Let the unsymmetrized four-leg kernel be
$$
\mathcal V_{IJ;KL}=\langle0|b_Jb_IWb_K^\dagger b_L^\dagger|0\rangle .
$$
It equals $\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}\mathsf M_{IJ;KL}$;
as an operator on labelled tensors it is twice the physical pair operator extended by zero on the antisymmetric subspace. Thus the Weyl trace is
$$
T_R=\frac12\operatorname{Tr}_2[(1\otimes R)\mathcal V].
\tag{B.9}
$$
The factor $1/2$ is fixed, including on identical modes.
For finite-support $R$, the exact intertwining identity yields
$$
[T_R,q_\chi]=-\frac12\operatorname{Tr}_2
[(1\otimes[q_\chi,R])\mathcal V].
\tag{B.10}
$$
This exposes the regulator defect instead of replacing a divergent partial trace by a cyclic trace at $R=1$.

Use two independent positive chiral times:
$$
R_{P,Q}(t_L,t_R)=e^{-t_L(\Delta/2+P)-t_R(\Delta/2+Q)},\qquad
T_{p,q}=\frac12\sum_{P,Q\ge0}R_{P,Q}
\mathcal V_{(p,q)(P,Q);(p,q)(P,Q)} .
$$
The closed pair coefficient grows at most quadratically in pair energy, so for fixed external labels all relevant matrix elements and every fixed number of thermal derivatives grow polynomially in $P+Q$. Exponential damping justifies the cutoff limit of (B.10) at positive $t_L,t_R$, including disappearance of the last-shell terms.

On diagonal sequences define
$$
\begin{aligned}
(\mathscr Lf)_p
&=(p+1)(\Delta+p)(f_{p+1}-f_p)
+p(\Delta+p-1)(f_{p-1}-f_p),\\
\mathscr D_t
&=2(\cosh t-1)
\left(\partial_t^2+\frac\Delta2(1-\frac\Delta2)\right)
+2\sinh t\,\partial_t .
\end{aligned}
\tag{B.11}
$$
The adjoint Casimir transfers through the positive-time trace and gives
$\mathscr L_pT=\mathscr D_{t_L}T$,
$\mathscr L_qT=\mathscr D_{t_R}T$.
The thermal identity is checked by applying $\mathscr L$ to
$e^{-t(\Delta/2+P)}$: the result divided by this exponential is
$(P+1)(\Delta+P)(e^{-t}-1)+P(\Delta+P-1)(e^t-1)$, exactly (B.11).

Define the finite Newton polynomial
$$
\mathcal P_p(z)
=\sum_{k=0}^p
\frac{\binom pk}{k!(\Delta)_k}
\prod_{r=0}^{k-1}[z-r(r+1)] .
\tag{B.12}
$$
Then
$$
\boxed{
T_{p,q}(t_L,t_R)
=\mathcal P_p(\mathscr D_{t_L})
\mathcal P_q(\mathscr D_{t_R})T_{0,0}(t_L,t_R).
}
\tag{B.13}
$$
For a proof, write $A_{p,k}=\binom pk/[k!(\Delta)_k]$ and
$F_k=\prod_{r<k}[z-r(r+1)]$. Since
$zF_k=F_{k+1}+k(k+1)F_k$, the recurrence reduces to
$$
(p+1)(\Delta+p)(A_{p+1,k}-A_{p,k})
+p(\Delta+p-1)(A_{p-1,k}-A_{p,k})
=A_{p,k-1}+k(k+1)A_{p,k}.
\tag{B.14}
$$
The ratios
$(p+1)/(p+1-k)$, $(p-k)/p$, and
$k^2(\Delta+k-1)/(p-k+1)$ reduce it to a rational identity.
The $k=0$ row is zero, and the top row is
$(p+1)(\Delta+p)A_{p+1,p+1}=A_{p,p}$.
The positive forward coefficient proves uniqueness, first in $p$ and then in $q$.

The Hartree kernel is the labelled distinguishable crossed pairing, with the required factor one half. It obeys the same Ward transfer separately; the exchange kernel, as its difference from the total trace, does too. Angular-current terms of the Hartree pairing are retained before the isotropic trace. They vanish for a ground external mode but not for arbitrary unequal chiral times.

## B.3 The directly evaluated ground exchange

Write $d=\Delta$ in this subsection. For internal chiral labels $P,Q$, let
$L=P+Q$, $w=d+L$, $a=P-Q$. The result obtained from the original scalar and momentum constraints is
$$
X_{P,Q}
=-\frac{4d(d)_P(d)_Q\Gamma(L-1)}
{P!Q!(2d-1)_{L+3}}\,
\mathcal P_d(w,a),\qquad L\ge2,
\tag{B.15}
$$
$$
\mathcal P_d(w,a)
=(d-1)w^4-2d(d^2-d-1)w^2+d^3(d-2)(d+1)
-(2d-1)a^2[w^2+d(d+1)].
\tag{B.16}
$$
The physical lowest rows, evaluated with their center conditions, are
$$
X_{0,0}=-\frac{2d^2(4d^2-5)}{4d^2-1},
\qquad
X_{1,0}=X_{0,1}=\frac{4d^2}{4d^2-1}.
\tag{B.17}
$$
The derivation from the constraints, including the finite six-coefficient current and the global-channel limits, is supplied in Appendix B.7. Thus (B.15) is an evaluated dynamical input with a proof below, not an assumption of a vanishing self-energy.

At each $L$, the weights $b_k=(d)_k(d)_{L-k}/[k!(L-k)!]$ obey
$$
\sum_{k=0}^Lb_k=\frac{(2d)_L}{L!},\qquad
\frac{\sum_k(2k-L)^2b_k}{\sum_kb_k}
=\frac{L(L+2d)}{2d+1}.
\tag{B.18}
$$
They follow by differentiating
$(1-qz)^{-d}(1-q/z)^{-d}$.
Substituting them into (B.15) gives the constant high-shell sum
$-4d^2(2d-3)/(4d^2-1)$. The absolute shell sum is uniformly bounded, because its positive prefactor is
$$
\frac{4d}{(2d-1)L(L-1)(L+2d)(L+2d+1)}
$$
and the numerator grows at most as $L^4$.
For $q=e^{-\tau}$, the completed sum is therefore
$$
s^{\rm X}_{00}(q)=q^d\left[
-\frac{2d^2(4d^2-5)}{4d^2-1}
+\frac{8d^2q}{4d^2-1}
-\frac{4d^2(2d-3)}{4d^2-1}\frac{q^2}{1-q}\right].
\tag{B.19}
$$
Its expansion is a simple pole plus $O(\tau)$; the constant is zero.

That isotropic result alone does not suffice for (B.13), which differentiates away from $t_L=t_R$. Put
$\tau=(t_L+t_R)/2$, $\eta=(t_L-t_R)/2$.
The beta identity
$$
\frac{\Gamma(L-1)}{(2d-1)_{L+3}}
=\frac{\Gamma(2d-1)}{\Gamma(2d+3)}
\int_0^\infty e^{-(d+L)s}[2\sinh(s/2)]^{2d+2}ds
\tag{B.20}
$$
and the binomial generating function give
$$
\begin{aligned}
\mathcal G_d(u,\eta)
&=[4\sinh((u+\eta)/2)\sinh((u-\eta)/2)]^{-d},\\
\mathcal J_d(\tau,\eta)
&=\int_0^\infty[2\sinh(s/2)]^{2d+2}
\bigl[\mathcal G_d(s+\tau,\eta)-e^{-d(s+\tau)}
-2de^{-(d+1)(s+\tau)}\cosh\eta\bigr]ds,\\
s_{00}^{\rm X}(t_L,t_R)
&=X_{0,0}e^{-d\tau}
+2X_{0,1}e^{-(d+1)\tau}\cosh\eta
-\frac{\mathcal P_d(-\partial_\tau,\partial_\eta)}
{(d+1)(4d^2-1)}\mathcal J_d(\tau,\eta).
\end{aligned}
\tag{B.21}
$$
At $\tau>|\eta|$, the subtraction removes the $L=0,1$ rows and the integral decays as $e^{-s}$ at infinity, with every fixed derivative needed here.

Split it at a fixed small $s_0>0$. The outer part is analytic near $(\tau,\eta)=0$, so its constant is direction independent. In the inner part set
$(s,\tau,\eta)=\epsilon(z,t,v)$, $t>|v|$. Its leading measure-weighted kernel is
$$
\epsilon^3\frac{z^{2d+2}}{[(z+t)^2-v^2]^d}\,dz
$$
and its relative corrections have degrees $2,4,\ldots$. The cancellation of the $d$-dependent powers is exact:
$\epsilon^{2d+2}\epsilon^{-2d}\epsilon=\epsilon^3$.
Subtract a sufficient number of large-$z$ terms before integrating each coefficient to $s_0/\epsilon$. The removed terms match the outer Taylor series; marginal terms give logarithms. The remaining nonanalytic degrees are $3,5,7,\ldots$. Since $\mathcal P_d$ contains derivative orders zero, two, and four, the exchange has only odd nonanalytic degrees $-1,1,3,\ldots$; none is zero or a negative even degree. The potential degree-three logarithm has a polynomial coefficient of degree three, annihilated by the fourth-order term. In particular, no $(\log\epsilon)/\epsilon$ remains.

The degree-zero term is consequently direction independent and is zero by (B.19). This endpoint expansion, after the stated subtractions, is differentiable to every fixed order on compact subcones $t>|v|$. Under common scaling,
$$
\mathscr D_t=(t^2\partial_t^2+2t\partial_t)
+\text{terms raising degree by }2,4,\ldots .
\tag{B.22}
$$
Thus every fixed polynomial in the two $\mathscr D$'s preserves the parity of homogeneous degree and never lowers it. There is no negative even or zero exchange term to produce a constant. Equations (B.13), (B.21) therefore prove
$$
s^{\rm X}_{p,q}(\tau,\tau)=-C_{p,q}/\tau+o(1)
\tag{B.23}
$$
for every fixed external pair $p,q$, at every $d>1$.

## B.4 The pole is exactly a local kinetic matrix element

The leading gamma-ratio limit of (B.15), including the full angular range, gives the positive-time ground pole function
$$
\mathcal C_{00}(t_L,t_R)
=\frac{4d\Gamma(2d-1)}{\Gamma(d)^2}
\int_0^1
\frac{x^{d-1}(1-x)^{d-1}
[(d-1)-(2d-1)(2x-1)^2]}
{xt_L+(1-x)t_R}\,dx .
\tag{B.24}
$$
It is homogeneous of degree $-1$, and appears with a minus sign in the exchange. The beta weight is integrable; fixed-$P$ or fixed-$Q$ rows decay as the other index to $-d$, so $d>1$ excludes an additional endpoint pole.

On degree $-1$, the Euler operators satisfy $E_R=-1-E_L$, so
$E_L(E_L+1)=E_R(E_R+1)$. After the reconstruction this gives
$$
\mathscr L_pC_{p,q}=\mathscr L_qC_{p,q}.
\tag{B.25}
$$
An entire initial row is evaluated without fitting. For $z=t_L/t_R$, let
$D_z=z^2\partial_z^2+2z\partial_z$. The identity
$$
[D_z-k(k+1)]
\frac{z^k}{(1-x+xz)^{2k+1}}
=-(2k+2)(2k+1)x(1-x)
\frac{z^{k+1}}{(1-x+xz)^{2k+3}}
\tag{B.26}
$$
proves that the $k$-th Newton product on the denominator in (B.24), evaluated at $z=1$, is
$(-1)^k(2k)![x(1-x)]^k$.
The beta integral then leaves two terminating Vandermonde sums. Their values are
$(d+1)_p/(d+3/2)_p$, and the first weighted moment divided by that value is
$-p/[2(d+p)]$. Consequently
$$
C_{p,0}=
\frac{4d}{(2d-1)(2d+1)}
\frac{(d+1)_p}{(d+3/2)_p}
\left[d(2d-3)-\frac{(d-1)p}{d+p}\right].
\tag{B.27}
$$

Now define $M_{\nu,pq}=\int_1^\infty y^{-\nu}R_{pq}(y)^2dy$.
The free radial mode is, up to a phase, the matrix element of
$$
U(\rho)=e^{\rho(K_+-K_-)},\qquad y=\cosh\rho ,
$$
in $D^+_{d/2}$. For $p\ge q$, disentangling the group exponential gives
$$
\langle p|U|q\rangle
=\sqrt{\frac{q!\Gamma(d+p)}{p!\Gamma(d+q)}}\,
(\tanh\rho)^{p-q}y^{-d}
P_q^{(p-q,d-1)}(2y^{-2}-1).
\tag{B.28}
$$
Its finite Jacobi expansion verifies the formula directly. The adjoint Casimir commutes with the group action; transferring it between the two rank-one projectors proves pointwise
$\mathscr L_pR_{pq}^2=\mathscr L_qR_{pq}^2$.
Thus $(4\mu+2)M_{0,pq}+2M_{2,pq}$ satisfies (B.25).
On the initial row,
$$
M_{0,p0}=\frac1{2d-1}\frac{(d)_p}{(d+1/2)_p},
\qquad
M_{2,p0}=\frac1{2d+1}\frac{(d)_p}{(d+3/2)_p}.
\tag{B.29}
$$
Their combination equals (B.27). The positive forward coefficient in (B.25) determines the next row uniquely, proving
$$
C_I=(4\mu+2)M_{0,I}+2M_{2,I}
\tag{B.30}
$$
for all fixed external modes. This matches the globally summed pole, including its boundary region, to one local operator.

At fixed scalar momentum, the Legendre transform of (3.16) gives
$$
H_{\rm ct,X}=\frac{2G}{\tau}
\int_\Sigma\sqrt{\bar\sigma}\,
(\chi^2-|\bar D\phi|^2).
\tag{B.31}
$$
The free radial equation gives its one-particle matrix element $GC_I/\tau$. The extra $M_2$ term is the effect of the position-dependent kinetic coefficient and is not reproduced by an arbitrary constant mass subtraction. The scalar boundary variation is
$O(G\tau^{-1}y^{1-2d})$, which vanishes at fixed $\tau>0$.

## B.5 Exact Hartree cancellation before inversion

The free addition kernel at imaginary-time separation is
$$
W(y;\tau)=\frac{e^{-(d-1)\ell}}{4\pi\sinh\ell},\qquad
\cosh\ell=1+2y^2\sinh^2(\tau/2).
\tag{B.32}
$$
It is the summed free covariance; differentiation computes the complete regulated stress rather than a fixed-radius asymptotic truncation.
Let $b=\sinh(\tau/2)$, $\lambda=d-1$, and
$$
F(y)=f_\lambda(by),\qquad
f_\lambda(s)=
\frac{e^{-2\lambda\operatorname{arsinh}s}}
{8\pi s\sqrt{1+s^2}}.
$$
In the orthonormal normal/radial/angular frame the covariance components are
$$
\begin{aligned}
C_\chi&=\frac{(1+b^2)F''+b^2F'/y}{4b^2},\\
C_r&=\frac{b^2(y^2-1)F''+[b^2(y^2-1)-1]F'/y}{4b^2},\\
C_\theta&=-\frac{F'}{4b^2y},\\
\rho_\tau&=\tfrac12(C_\chi+C_r+C_\theta+\mu F),\\
p_{r,\tau}&=\tfrac12(C_\chi+C_r-C_\theta-\mu F),\\
p_{\theta,\tau}&=\tfrac12(C_\chi-C_r+C_\theta-\mu F),\\
Q_\tau&=p_{r,\tau}+p_{\theta,\tau}=C_\chi-\mu F .
\end{aligned}
\tag{B.33}
$$
The differential equation
$$
(1+b^2y^2)F''+(5b^2y+2/y)F'-4\mu b^2F=0
$$
implies exact conservation of this regulated stress, including
$$
p_{r,\tau}'+\frac{\rho_\tau+p_{r,\tau}}y
+\frac{y}{y^2-1}(p_{r,\tau}-p_{\theta,\tau})=0.
$$

The linear metric functional (3.17) has independent lapse and conformal variations
$$
\rho_{\rm ct}=-\rho_\tau,\qquad Q_{\rm ct}=-Q_\tau .
\tag{B.34}
$$
Therefore the Hartree source and counterterm source vanish before the regular/fast constraint inverse is applied. Their scalar one-body insertions cancel identically at every positive regulator. This retains any finite contribution from $y\sim1/\tau$ automatically.

For reference, extracting the Hartree finite part without this cancellation would give
$$
\operatorname{FP}s_I^{\rm H}
=-\frac{\mu}{3}[(d-1)\omega_I+\mu] .
\tag{B.35}
$$
Its mode dependence is real and would not be canceled by subtracting the ground energy alone. The exact source-level subtraction is the reason it does not survive in the physical answer.

## B.6 Matched limit and the physical gap

Every external scalar leg, including counterterm legs, has the same factor
$r_I=e^{-\tau\omega_I/2}$. Combining the proved pieces yields
$$
\frac{\delta E_I^{\rm scalar+ct}}G
=e^{-\tau\omega_I}
\left[s_I^{\rm H}+s_I^{\rm X}-s_I^{\rm H}
+\frac{C_I}{\tau}\right]
\longrightarrow0 .
\tag{B.36}
$$
The contact/completeness differences vanish by (B.8); all remaining pure-gravity terms are vacuum constants or annihilate the gravitational vacuum by the degree and rotation argument of Section 3.
The only finite scalar quadratic freedom left in this prescription is the common mass insertion. Fixing the physical gap removes it and proves (3.18). The proof uses a prescribed local perturbative chart and regulator; it does not establish regulator independence or a nonlinear metric completion of the tadpole functional at all orders.

## B.7 Constraint proof of the arbitrary ground-external exchange

For completeness, we give the finite algebra behind (B.15). It is longer than the thermal argument because a particular momentum response and its homogeneous boundary correction must be combined before the common scalar Green inverse disappears. The construction below specifies every coefficient; no unknown response is left in the final answer.

Use $d=\Delta$, $\mathfrak f=y^2-1$, $w=d+2n+a$, initially $a>1$, and the unnormalized internal radial function
$$
R=y^{-d}(1-y^{-2})^{a/2}
P_n^{(d-1,a)}(1-2y^{-2}),\qquad
\mathcal N^2=\frac{(d+n)_a}{(n+1)_a}.
$$
Then
$$
R''=P_RR'+Q_RR,\quad
P_R=-\frac{3y^2-1}{y\mathfrak f},\quad
Q_R=\frac{a^2}{\mathfrak f^2}+\frac{\mu}{\mathfrak f}
-\frac{w^2}{y^2\mathfrak f},
\quad
L_a=-\partial_y(\mathfrak f\partial_y)+2+\frac{a^2}{\mathfrak f}.
\tag{B.37}
$$
Let $U$ be the regular/fast solution of
$$
L_aU=S_0=y^{-d}
\left(\frac{\mu}{4}R-\frac{d\mathfrak f}{4y}R'\right),
\qquad
U=\frac{E_0}{6y^2}+o(y^{-2}).
\tag{B.38}
$$
Write $\mathcal D=w^2+d(d+1)$. For a frequency sign $t=\pm1$, the scalar response is
$$
u_t=\gamma_tU+y^{-d}f_{s,t}R,\quad
\gamma_t=1-\frac{t(2d+1)w}{\mathcal D},\quad
f_{s,t}=-\frac{tdw}{4\mathcal D}.
\tag{B.39}
$$
Its source is $y^{-d}(s_{R,t}R+s_DR')$, where
$$
s_{R,t}=\frac{\mu}{4}-\frac{tdw}{4y^2},
\qquad s_D=-\frac{d\mathfrak f}{4y}.
$$

The plus momentum response takes the form
$$
T^{\rm part}_{t,+}
=\alpha_t\left[
\frac{y^2+ay+a^2-1}{\mathfrak f}U-(y+a)U'\right]
+y^{-d}(f_tR+g_tR').
\tag{B.40}
$$
All its coefficients are the following rational functions:
$$
Z_t=d(d-2)(d+1)t-(2+d^2)w-(d-1)tw^2+w^3,
$$
$$
\alpha_t=
-\frac{(d^2-w^2)Z_t
+a^2(2d-1)[(2d+1)w+t(d+1-2w^2)]}
{a(a^2-1)(2d-1)\mathcal D},
\tag{B.41}
$$
$$
\begin{aligned}
g_t&=g_{1,t}+yg_{2,t},\\
g_{1,t}&=\frac{d}{4(a^2-1)(2d-1)\mathcal D}
\bigl\{a^2(2d-1)[(d+1)t+w]
+d(d+1)(d^2-3d+1)t\\
&\hspace{18mm}+d(-1+d-d^2)w-(d^2-1)tw^2+(d+1)w^3\bigr\},\\
g_{2,t}&=\frac{d}{4a(a^2-1)(2d-1)\mathcal D}
\bigl\{dZ_t+a^2[w(w^2+d^2+3d-1)\\
&\hspace{38mm}+t((1-d)w^2-d^3+2d^2+2d-1)]\bigr\},\\
f_t&=\frac{d[-t+\alpha_t(y+a)]}{4y}
-g_t'+\left(\frac d y-P_R-\frac{2y+a}{\mathfrak f}\right)g_t.
\end{aligned}
\tag{B.42}
$$
For the minus particular solution replace $a$ by $-a$ in these coefficients, keeping $R,U$ fixed. Add $\alpha_tE_0z^a/\mathfrak f$ to obtain the physical minus solution. Substitution into the first-order equations reduces, using (B.37)–(B.38), to
$$
T_{t,\sigma}'+\frac{2y+\sigma a}{\mathfrak f}T_{t,\sigma}
=-\frac{d}{4y^{d+1}}
\left[tR'-\left(\frac wy+\frac{\sigma ta}{\mathfrak f}\right)R\right].
\tag{B.43}
$$
The homogeneous addition is exactly the boundary flux condition, not a disposable integration constant.

After integrating the response squares by parts, the only remaining term involving the Green inverse is
$\int U(KR+LR')dy$.
Set $\theta_t=td$, $\beta_t=8a\alpha_t/(a^2-1)$.
The target is completely specified by
$$
y^dK=k_1y+k_{-1}y^{-1}+k_{-3}y^{-3},\qquad
y^dL/\mathfrak f=l_0+l_{-2}y^{-2},
\tag{B.44}
$$
$$
\begin{aligned}
k_1&=\sum_t\{32\mu d\gamma_t
-\beta_t[(\mu+3-d)\theta_t+d(d-3)w]\},\\
k_{-1}&=\sum_t\{16\gamma_t[a^2d-2\mu d+(2-d)\theta_tw-dw^2]\\
&\hspace{17mm}-\beta_t[(1-\mu-d+2a^2d)\theta_t
+d(3-2a^2-2d)w-\theta_tw^2]\},\\
k_{-3}&=\sum_t\{16\gamma_tw[(d+2)\theta_t+dw]
-\beta_tw[d(d+2)+\theta_tw]\},\\
l_0&=\sum_t\{-16\gamma_t(\mu+d^2)
+\beta_t[(d-2)\theta_t+dw]\},\\
l_{-2}&=\sum_t\{16\gamma_t[d(d+2)+\theta_tw]
-\beta_t[(d+2)\theta_t+dw]\}.
\end{aligned}
\tag{B.45}
$$

For any $L_au=S$, differentiate
$$
\mathscr C_a[u]
=\mathfrak f^2[(y^2-a^2)(u')^2-2yuu']
+[\mathfrak f^2+a^2\mathfrak f+a^2(a^2-1)]u^2 .
$$
The equation cancels the unsourced terms and leaves
$$
\mathscr C_a[u]'
=2y\mathfrak f Su-2\mathfrak f(y^2-a^2)Su'.
$$
Consequently, with
$\mathscr F_a[S]=2y\mathfrak f S+
2\partial_y[\mathfrak f(y^2-a^2)S]$,
$$
\int_1^\infty U\mathscr F_a[S_0]dy=E_0^2/4.
\tag{B.46}
$$
The center primitive is zero and the fast primitive is $E_0^2/4$.
The extra integration-by-parts boundary is $O(y^{2-2d})$.

Seek
$$
KR+LR'=L_aG+\eta\mathscr F_a[S_0],\qquad
G=y^{-d}[(c_0y^3+c_1y+c_2/y)R
+\mathfrak f(b_0y^2+b_1)R'] .
\tag{B.47}
$$
This is a fixed six-dimensional coefficient problem, not a fit at a finite number of $n$'s.
Define
$$
B_p=2-\mu-p(p-1),\quad C_p=w^2+p(p+1),\quad D_p=2p+1,
$$
$$
\begin{aligned}
F_1&=\frac d2[a^2(2d^2-6d+3)+2d^2-7d+w^2+6],\\
F_{-1}&=\frac d2[a^4-a^2(2\mu+w^2)-w^2],
&F_{-3}&=\frac{da^2w^2}{2},\\
G_0&=-d(d-1)(a^2+\tfrac12),
&G_{-2}&=\frac{a^2d(d+2)}2 .
\end{aligned}
$$
The coefficient vector is defined by the explicit linear system
$$
\begin{pmatrix}
1&0&0&-d&0&d/2\\
C_{d-3}&B_{d-1}&0&(2d-3)(a^2-w^2-\mu)&(2d-1)\mu&F_1\\
0&C_{d-1}&B_{d+1}&(2d-1)w^2&(2d+1)(a^2-w^2-\mu)&F_{-1}\\
0&0&C_{d+1}&0&(2d+3)w^2&F_{-3}\\
0&D_{d-1}&0&C_{d-1}&B_{d+1}&G_0\\
0&0&D_{d+1}&0&C_{d+1}&G_{-2}
\end{pmatrix}
\begin{pmatrix}c_0\\c_1\\c_2\\b_0\\b_1\\\eta\end{pmatrix}
=\begin{pmatrix}0\\k_1\\k_{-1}\\k_{-3}\\l_0\\l_{-2}\end{pmatrix}.
\tag{B.48}
$$
The first row removes the highest power; the other rows match the three $R$-powers and two $R'$-powers. The additional highest $R$-row is dependent after (B.37). The determinant is
$$
\tfrac12a^2(a^2-1)^2d(2d-3)(2d-1)
[w^2-(d+2)^2][w^2+d(d+1)] .
$$
For the target (B.45), both apparent factors $2d-3$ and $w^2-(d+2)^2$ cancel in the rational solution. Solve generically and cancel before specializing. Integration of (B.47) gives
$$
\int U(KR+LR')dy=\int GS_0dy+\eta E_0^2/4 .
\tag{B.49}
$$
Its Green boundary vanishes because $G=O(r^a)$ at the center and $G=O(y^{3-2d})$ at infinity; $G$ need not itself obey the fast-response boundary condition.

The remaining endpoint cancels only with the physical homogeneous momentum.
Let $J_m=\int_1^\infty z^ay^{-m}Rdy$, $J=J_{d+1}$.
The free radial equation gives
$$
[m(m-2)-\mu]J_{m-1}+a(1-2m)J_m+(w^2-m^2)J_{m+1}=0,
$$
and hence
$$
\frac{J_d}{J}=\frac{w^2-d^2}{a(2d-1)},\qquad
\frac{J_{d+2}}J=
\frac{a(2d+1)-(2d-1)J_d/J}{w^2-(d+1)^2},\qquad
\frac{E_0}{J}=\frac{d(a^2-1)\mathcal D}{2[w^2-(d+1)^2]}.
\tag{B.50}
$$
The homogeneous, cross, boundary-frequency, and integration-by-parts contributions are
$$
\begin{aligned}
\frac{X_{\rm bdry}}{\mathcal N^2}
=\frac1{a^2-1}\sum_t\bigl\{
&-4d\alpha_tE_0[(w-t(d-1))J_d
+2a(w-td)J+(w-t(d+1))J_{d+2}]\\
&+4\alpha_t^2E_0^2-8\gamma_t^2E_0^2\bigr\}.
\end{aligned}
$$
The sixth solution of (B.48) has the factored form
$$
\eta=\frac{16}{a^2-1}
\sum_t\left[\alpha_t^2+
\frac{4(w+td)}a\alpha_t\gamma_t+2\gamma_t^2\right].
$$
Substitution of (B.50), followed by collection of $t=\pm1$, gives identically
$$
X_{\rm bdry}/\mathcal N^2+\eta E_0^2/4=0 .
\tag{B.51}
$$
Thus no uncomputed center or asymptotic coefficient survives.

It remains to integrate a local quadratic polynomial. To specify it without a large expanded numerator, set
$$
f_{t,+}=f_t,\quad g_{t,+}=g_t,\quad
f_{t,-}=f_t|_{a\mapsto-a},\quad
g_{t,-}=g_t|_{a\mapsto-a},
$$
$$
A_\sigma=\frac{4d\mathfrak f(y^2-2\sigma ay+1)}{a^2-1},
\quad b_{R,t\sigma}=-\frac w{y^2}-\frac{\sigma ta}{\mathfrak f y},
\quad b_{D,t}=\frac t y.
$$
The local coefficients are
$$
\begin{aligned}
V_{20}&=\sum_t\left[
-64d\mathfrak f\frac{f_{s,t}}y s_{R,t}
+32\left(\frac{dtw}y+\mu y\right)f_{s,t}
+\sum_\sigma A_\sigma f_{t,\sigma}b_{R,t\sigma}\right],\\
V_{11}&=\sum_t\left[
64\mathfrak f f_{s,t}\left(s_{R,t}-\frac d y s_D\right)
+\sum_\sigma A_\sigma(f_{t,\sigma}b_{D,t}+g_{t,\sigma}b_{R,t\sigma})\right],\\
V_{02}&=\sum_t\left[
64\mathfrak f f_{s,t}s_D+\sum_\sigma A_\sigma g_{t,\sigma}b_{D,t}\right].
\end{aligned}
$$
With $\nabla_d f=f'-2df/y$, remove $RR'$ and $(R')^2$ using the free equation:
$$
\mathcal V(y^{-2})=\frac1y\left[
V_{20}-\tfrac12\nabla_dV_{11}
+\frac{V_{02}}{\mathfrak f}
\left(\frac{w^2}{y^2}-\frac{a^2}{\mathfrak f}-\mu\right)
+\tfrac12\nabla_d\left(\nabla_dV_{02}
-\frac{2y}{\mathfrak f}V_{02}-\frac{V_{02}}y\right)\right].
\tag{B.52}
$$
All center poles cancel, leaving degree two in $v=y^{-2}$.
Define
$$
\mathcal T_j(v)=\frac d8v^j[(j+d-1)v-j],
$$
$$
\begin{aligned}
\mathcal U_k(v)=\frac d8v^k\big[
&
-k(3d+2k-4)
+(a^2-d+2d^2-4k+7dk+4k^2-w^2)v
\\&-(2(d+k)^2-w^2)v^2\big].
\end{aligned}
$$
The current contribution completes the weight
$$
\mathcal W(v)=\frac{\mathcal V(v)}2+
\frac{c_0\mathcal T_0+c_1\mathcal T_1+c_2\mathcal T_2
+b_0\mathcal U_0+b_1\mathcal U_1}{v}
=W_0+W_1v+W_2v^2 .
\tag{B.53}
$$
The displayed numerator is divisible by $v$, so no negative moment appears.

Let
$$
\mathcal J_j=\int_0^1v^{2d-2+j}(1-v)^a
[P_n^{(d-1,a)}(1-2v)]^2dv .
$$
Rodrigues' formula and a terminating balanced Saalschütz sum give
$$
\mathcal J_0=\frac{(d)_n^2\Gamma(2d-1)\Gamma(2n+a+1)}
{(n!)^2\Gamma(2d+2n+a)}.
$$
Equivalently, this follows by expanding both finite Jacobi polynomials and integrating their beta moments. Applying the three-term Jacobi multiplication recurrence once and twice gives, for $D_0=d^2-w^2$,
$$
\frac{\mathcal J_1}{\mathcal J_0}
=\frac{(2d-1)(D_0+a^2)}{2dD_0},
$$
$$
\frac{\mathcal J_2}{\mathcal J_0}
=\frac{(2d-1)[(2d+1)(D_0+a^2)^2
+4d(d+1)D_0+4d(2d+1)a^2]}
{4d(d+1)D_0[(d+1)^2-w^2]} .
\tag{B.54}
$$
These identities can be obtained uniformly from the bilinear moment
$$
\int_0^1v^{2d-2}(1-v)^aP_nP_m\,dv
=\frac{(-1)^{n+m}\Gamma(d+n)\Gamma(d+m)\Gamma(2d-1)\Gamma(n+m+a+1)}
{n!m!\Gamma(d+n-m)\Gamma(d-n+m)\Gamma(2d+n+m+a)}.
$$
Reciprocal gamma functions specify the continuous interpretation at exceptional parameters.
Substitution of (B.48), (B.52), and (B.53) into (B.54) gives the rational identity
$$
W_0+W_1\frac{\mathcal J_1}{\mathcal J_0}
+W_2\frac{\mathcal J_2}{\mathcal J_0}
=-\frac{4d\,\mathcal P_d(w,a)}
{(w^2-d^2)[w^2-(d+1)^2]} .
\tag{B.55}
$$
Every entry of this identity has been specified by fixed-size rational arithmetic and differentiation. Its denominator factors are nonzero at $a\ge2,n\ge0,d>1$.
Multiplication by $\mathcal N^2\mathcal J_0$ gives (B.15).

The global $a=0,1$ channels require an assembled limit, not singular substitution into an individual momentum response. Continue $a$ at fixed $n\ge1$, $w=d+2n+a$. The scalar inverse has the regular limit (A.3). For the momentum primitive write the physical center numerator as $B(x,a)$, and the non-global numerator as $B(x,a)+\delta(a)$. Their pairing difference is
$$
2\delta(a)I(a)+\frac{8\delta(a)^2}{a^2-1},\qquad
I(a)=\int_0^1 32x(1-x)^{a-2}(1+x)^{-a-2}B(x,a)\,dx .
\tag{B.56}
$$
The homogeneous-square term is continued from $a>1$, not separately integrated for $a\le1$.
At zero, $\delta(a)=O(a)$, while the actual source gives the center derivative
$A_-'(1,a)=atd\,2^{a-1}P_n^{(d-1,a)}(-1)$.
Thus the potential Mellin singularity in $I$ is $a\int u^{a-1}du$, which is bounded. The physical square has a uniformly integrable expansion
$a^2u^a+O(au^{a+1})+O(u^{a+2})$.
At one,
$$
\delta(1)=\frac d2[t(d+1)-w]
\int_0^1x^{2d-1}(1-x^2)
P_n^{(d-1,1)}(1-2x^2)dx=0
$$
by Jacobi orthogonality for $n\ge1$. Hence $\delta(a)=O(a-1)$, and both terms in (B.56) vanish. The scalar boundary charge vanishes in these global limits, removing the boundary-frequency contribution as well. These facts extend the assembled answer to $a=0,1$, $n\ge1$.

For $n=0,a=0,1$, use the center conditions directly. A useful inverse is
$$
U_p(y)=\frac{y\operatorname{atanh}(1/y)-1
-y\int_0^{1/y}t^p(1-t^2)^{-1}dt}{p-2},
\qquad L_0U_p=y^{-p}.
$$
With $U=d(d-1)U_{2d}/2$, the scalar responses are
$$
\begin{array}{c|cc}
(n,a)&u_-&u_+\\ \hline
(0,0)&U&-d\,y^{-2d}/[4(2d+1)]\\
(0,1)&-\sqrt{\mathfrak f}\,U'/(2d)&
-d\sqrt{\mathfrak f}\,y^{-2d-1}/[4(2d+1)] .
\end{array}
\tag{B.57}
$$
The momentum is the center-integrated solution of (B.43). Inserting these into
$$
\frac{X_{n,a}}{\mathcal N^2}
=32\sum_t\int_1^\infty y
\left[
\left(\frac{tdw}{y^2}+\mu\right)y^{-d}Ru_t
-4u_t^2+\sum_\sigma T_{t,\sigma}^2
\right]dy
$$
gives (B.17). For the first row, scalar self-adjointness reduces the minus contribution to
$-4d^2(d-1)/(2d-1)$, and the plus scalar/momentum contribution to
$-2d^2(2d-3)/(4d^2-1)$; their sum is the first value in (B.17).
The second row follows by integration by parts in $U'$, with $\mathcal N^2=d$. It is independently checked by the already evaluated pair integrals:
$$
X_{0,0}=g_{0,0}-x_{00}/2,\qquad
X_{0,1}=g_{0,0}/2-(x_{00}+x_{10})/4 .
$$
These use the direct canonical ground and boundary-row values, and finish the derivation of all rows required in (B.19).

# Appendix C. Local source normalization and the Einstein–Casimir equation

## C.1 The local tensor source and its finite spin support

Use the polarized free stress
$$
T_{\mu\nu}[a,b]
=\nabla_{(\mu}a\nabla_{\nu)}b
-\frac12g_{\mu\nu}(\nabla a\cdot\nabla b+\mu ab).
$$
The off-shell linearized Einstein identity (4.13) follows by varying
$G_{\mu\nu}-g_{\mu\nu}$, commuting background covariant derivatives with
$R_{\mu\nu}=-2g_{\mu\nu}$, and collecting the trace reversal and
$\nabla_{(\mu}C_{\nu)}$ terms. The same operator $\mathcal C$ is the quadratic Casimir of tensor Lie derivatives along the two global AdS algebras.
On the common Hessian domain, the stress conservation identity removes the proper-gauge term after integration by parts. For a crossed pairing
$$
\mathcal X[a,b;c,d]
=-2\kappa^2\langle T[a,c],k[T[b,d]]\rangle_{\rm res},
$$
this gives
$$
(\mathcal C_{\rm cross}-2)\mathcal X
=\kappa^2\langle\mathcal K\rangle_{\rm res},\qquad
\mathcal K=T[a,c]:T[b,d]
-\operatorname{tr}T[a,c]\operatorname{tr}T[b,d].
\tag{C.1}
$$

Put $F=ab$, $J=a\,db-b\,da$, and use tildes for the outgoing pair.
Since $dJ=2\,da\wedge db$, direct expansion of the four gradients gives
$$
\mathcal K=
\frac12(\nabla a\cdot\nabla b)
(\nabla\widetilde a\cdot\nabla\widetilde b)
-\frac1{16}dJ:d\widetilde J
-\frac{\mu}{4}(dF\cdot d\widetilde F+J\cdot\widetilde J)
-\frac{3\mu^2}{2}F\widetilde F .
\tag{C.2}
$$
For example,
$dF\cdot d\widetilde F+J\cdot\widetilde J
=2(a\widetilde a\,db\cdot d\widetilde b
+b\widetilde b\,da\cdot d\widetilde a)$;
this fixes the mixed mass coefficient without an on-shell guess.
On free external legs,
$\nabla a\cdot\nabla b=(\Box-2\mu)F/2$.

A local analytic primary is determined by its center tensor value: the two lowest-weight differential equations recursively determine its Taylor coefficients from that value. If the center value is zero, their first-order transport equations give the zero solution in a neighborhood, and analyticity extends it throughout the connected interior. A scalar fiber has rotation weight zero, a vector fiber weights at most one, and a rank-two fiber weights at most two. Thus the scalar/vector decomposition (C.2) supports only the diagonal and adjacent pair-label bands. The annihilation stress has only spin zero and spin two after Bose projection.

For $h=\Delta+n$, normalized primary source shapes are
$$
F_n=\frac{(-1)^n}{2\pi}e^{-2iht}f^{-h},
\qquad
J_n=A_1W^{(2h+1,1)},
\tag{C.3}
$$
where
$$
W^{(E,s)}
=e^{-iEt+is\theta}r^sf^{-E/2}
\left(dt-d\theta+\frac{i\,dr}{rf}\right)^{\otimes s}.
\tag{C.4}
$$
These are smooth in center Cartesian coordinates, transverse, and satisfy
$\Box W^{(E,s)}=[E(E-2)-s]W^{(E,s)}$; the rank-two tensor is also traceless.
The norm follows without an infinite sum. The one-form in (C.4) obeys
$v\cdot v^*=2/(r^2f)$, so
$$
\int_0^\infty r\,dr\int_0^{2\pi}d\theta\,
W^{(E,s)}:W^{(E,s)*}
=\frac{\pi2^s}{E+s-1},
\qquad
\int|F_n|^2=\frac1{4\pi(2h-1)}.
\tag{C.5}
$$

## C.2 All-label source amplitudes from free Clebsch–Gordan coefficients

Write $c_a^{(K)}=v_a^{(K)}$ from (4.4). Their squared coefficients are
$$
(c_a^{(K)})^2=
\frac{\binom Ka(\Delta)_K^2}
{(\Delta)_a(\Delta)_{K-a}(2\Delta+K-1)_K}.
\tag{C.6}
$$
The scalar primary $(n,n)$ at the center receives only $p=q=a$ modes. Each radial mode has center amplitude
$(-1)^a/\sqrt{2\pi}$, so the product amplitude is
$(-1)^n\sum_a(c_a^{(n)})^2/(2\pi)=(-1)^n/(2\pi)$.
The lowest-weight equations then give the full $F_n$ in (C.3).

For the vector primary $(n+1,n)$, the center derivative pairs $j=0$ with $j=1$. The latter has gradient amplitude
$(-1)^a\sqrt{(a+1)(\Delta+a)}/\sqrt{2\pi}$.
The lowering recurrence converts the two terms in $a\,db-b\,da$ into the same normalized sum. The ratio
$$
\left(\frac{c_a^{(n+1)}}{c_a^{(n)}}\right)^2
(n+1-a)(\Delta+n-a)
=\frac{h(n+1)(2\Delta+n-1)}{2(2h-1)}
=:\rho_1^2
\tag{C.7}
$$
is independent of $a$, by direct cancellation of rising factorials.
Consequently
$$
|A_1|^2=\frac{\rho_1^2}{\pi^2}
=\frac{h(n+1)(2\Delta+n-1)}
{2\pi^2(2h-1)} .
\tag{C.8}
$$

For the spin-two identical-particle annihilation source $(n+2,n)$, only the two $j=1$ gradients contribute to the center weight-two tensor. The analogous identity is
$$
\begin{aligned}
\rho_2^2&=
\left(\frac{c_{a+1}^{(n+2)}}{c_a^{(n)}}\right)^2
(a+1)(\Delta+a)(n-a+1)(\Delta+n-a)
\\&=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{4(2h-1)(2h+1)}
.
\end{aligned}
\tag{C.9}
$$
Including the identical-particle $\sqrt2$ factor gives
$$
|A_2|^2=\frac{\rho_2^2}{2\pi^2}
=\frac{h(h+1)(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
{8\pi^2(2h-1)(2h+1)} .
\tag{C.10}
$$
Thus every source amplitude is fixed by free normalization, independently of an interacting spectrum.

In the scalar channel, $J=0$, $\Box F=4C_nF$, and
$\nabla a\cdot\nabla b=(2C_n-\mu)F$. Integrating the $dF$ term in (C.2) gives
$$
\int\mathcal K=(C_n-\mu)(2C_n+\mu)\int|F_n|^2 .
$$
In the vector channel, $F=0$ and
$\nabla_\mu(dJ)^{\mu\nu}=4h^2J^\nu$, so
$\int dJ:dJ^*=-8h^2\int J\cdot J^*$. Hence
$$
\int\mathcal K=\frac{2h^2-\mu}{4}\int J_n\cdot J_n^* .
\tag{C.11}
$$
Multiplication by $16\pi$ and (C.5), (C.8) gives exactly (4.16). All integrations use the same vanishing center/spatial and averaged temporal fluxes as Proposition PHY-04.

## C.3 From the tensor Casimir to the discrete recurrence

Free preparation blocks are
$$
p_n=\frac{(\Delta)_n^2}{n!(2\Delta+n-1)_n},
\qquad
\mathsf k_h(z)=z^h{}_2F_1(h,h;2h;z).
\tag{C.12}
$$
Their normalization is the primary norm already proved in (4.4). The crossed differential Casimir is
$$
D_t=z(1-z)^2\partial_z^2
+(z-1)(2\Delta+z-1)\partial_z+\frac{\Delta^2}{z}-\Delta .
\tag{C.13}
$$
The required exact action is
$$
D_t\mathsf k_h
=(\Delta-h)^2\mathsf k_{h-1}
+\frac{\mu-h(h-1)}2\mathsf k_h
+\frac{h^2(\Delta+h-1)^2}{4(2h-1)(2h+1)}\mathsf k_{h+1}.
\tag{C.14}
$$
Here is an arbitrary-coefficient proof. Write
$\mathsf k_h=\sum_{q\ge0}b_q(h)z^{h+q}$,
$b_q(h)=(h)_q^2/[(2h)_q q!]$.
Acting on $z^p$, (C.13) gives
$$
(p-\Delta)^2z^{p-1}
+(-2p^2+2\Delta p-\Delta)z^p+p^2z^{p+1}.
$$
The coefficient of $z^{h-1+q}$ on the left of (C.14) is therefore
$$
(h+q-\Delta)^2b_q
+[-2(h+q-1)^2+2\Delta(h+q-1)-\Delta]b_{q-1}
+(h+q-2)^2b_{q-2}.
$$
Use the ratios
$$
\begin{aligned}
\frac{b_{q-1}}{b_q}
&=\frac{q(2h+q-1)}{(h+q-1)^2},\\
\frac{b_{q-2}}{b_q}
&=\frac{q(q-1)(2h+q-2)(2h+q-1)}
{(h+q-2)^2(h+q-1)^2},\\
\frac{b_q(h-1)}{b_q(h)}
&=\frac{(h-1)^2(2h+q-2)(2h+q-1)}
{(h+q-1)^2(2h-2)(2h-1)},\\
\frac{b_{q-2}(h+1)}{b_q(h)}
&=\frac{2h(2h+1)q(q-1)}
{h^2(h+q-1)^2}.
\end{aligned}
\tag{C.15}
$$
After a common denominator, the coefficient difference is identically zero. The $q=0,1$ endpoints follow by omitting negative-index terms. This proves (C.14), not just a finite Taylor check.

In the expansion $\sum_np_nx_n\mathsf k_{\Delta+n}$, collecting the coefficient of $\mathsf k_{\Delta+n}$ gives
$$
(n+1)^2p_{n+1}/p_n=a_n,\qquad
\text{the reverse coefficient}=c_n,\qquad
\frac{\mu-C_n}{2}=-a_n-c_n .
$$
The finite-time secular energy insertion is
$-T e^{-E_0T}\delta H$. In the free preparation variables it is the coefficient multiplying $\log(z\bar z)$, with $z\bar z=e^{-2T}$.
When a Casimir derivative hits the logarithm it produces nonlogarithmic terms, so the logarithmic coefficient is transported by (C.14) alone. Applying this in both chiralities to (C.1) proves (4.14)–(4.16).
This use of free preparation blocks introduces neither an interacting CFT spectrum nor a high-spin extrapolation.

## C.4 Explicit annihilation responses and the exceptional point

For an identical scalar primary, $F_n^{\rm id}=\sqrt2F_n$ and
$\tau^\mu{}_\mu=-(C_n+\mu)F_n^{\rm id}$.
Define
$$
\mathcal D_{\mu\nu}S
=\nabla_\mu\nabla_\nu S-g_{\mu\nu}(\Box-2)S,
\qquad
S_n=\frac{C_n+\mu}{2(4C_n-3)}F_n^{\rm id}.
$$
Then
$$
\tau_{n,0}=\mathcal DS_n,\qquad
k[\tau_{n,0}]=-gS_n .
\tag{C.16}
$$
Indeed $\operatorname{tr}\mathcal DS=-2(\Box-3)S$, and direct variation gives
$\mathcal E^{(1)}[g\psi]=-\mathcal D\psi/2$.
The normalized annihilation coefficient is
$$
g^{\rm ann}=-8\pi\int r\,dr\,d\theta\,
k[\tau]_{\mu\nu}\tau^{*\mu\nu}.
\tag{C.17}
$$
With $\int|F_n^{\rm id}|^2=1/[2\pi(2h_n-1)]$, this gives (4.19).

At $n=0$,
$$
\frac{C_0+\mu}{2(4C_0-3)}
=\frac{\Delta}{2(2\Delta+1)}
$$
after cancellation. At $\Delta=3/2$ this ratio is $3/16$, so $S_0$ and its tensor stress may be nonzero. Its trace is zero, and therefore its pairing with the conformal response is zero. This is the precise removable-limit statement; zero trace must not be used to discard the entire tensor source.

For spin two, $\tau_{n,2}=A_2W^{(2h_n+2,2)}$. It is transverse and traceless, so
$$
\mathcal E^{(1)}q=-\tfrac12(\Box+2)q,\qquad
k[\tau_{n,2}]=-\frac{\tau_{n,2}}{4h_n(h_n+1)} .
\tag{C.18}
$$
Equations (C.5), (C.10), and (C.17) give (4.20).
No local analytic rank-two primary exists with center weight above two, so higher-spin annihilation sources vanish. Odd spins are removed by Bose parity. These steps finish the pair coefficient calculation in (4.21).

# Appendix D. Formal transfer, the resolvent, and the limits of the argument

The results in this appendix explain the relation between classical elimination and quantum perturbation theory. They concern specified variational and operator domains. They are ancillary to the first-order physical completeness theorem: none supplies an all-order scalar-only Hilbert space or an all-order energy expansion for the AdS theory.

## D.1 Stationary tree transfer with all boundary data retained

Write the action of a theory on a fixed variational domain as
$$
S[x,y;\varepsilon]
=S_x[x]+\tfrac12\langle y,Ky\rangle+I[x,y;\varepsilon].
\tag{D.1}
$$
Here $x$ contains the retained variables, sources, and independent physical boundary data. The bilinear pairing includes the action's spatial and temporal boundary completion. Use $\mathcal G$ for the chosen inverse of $K$, reserving $G$ for Newton's constant.

**Proposition PHY-09 (formal stationary tree transfer).** Assume that:

1. $K$ is reciprocal and invertible on the chosen complement, with specified inverse $\mathcal G$.
2. $I_y$ raises a complete filtration, such as positive coupling degree or nonlinear field degree, so that recursive coefficients at each degree involve only previously determined coefficients.
3. Every recursive source lies in the inverse's domain. True kernel data and on-shell cohomology are retained in $x$, or their homogeneous values are fixed and the remaining kernel equations are retained and satisfied. Fixing a complement does not authorize discarding a nonzero kernel equation.
4. Each graph pairing exists at the asserted level. One may state the theorem at finite regulator and separately prove any continuum limit needed for fixed external legs.

Then there is a unique formal solution
$$
y_*=-\mathcal G I_y[x,y_*;\varepsilon],
\qquad S_{\rm red}[x]=S[x,y_*[x]].
\tag{D.2}
$$
The vertices of $S_{\rm red}$ are precisely connected trees whose internal edges carry eliminated variables. Combining these vertices with retained propagators gives all full-theory trees with retained external legs, with the same coefficients.

**Proof.** Let $F^r$ denote the filtration. If two candidates agree modulo $F^r$, their right sides in (D.2) agree modulo $F^{r+1}$. Starting at the common zeroth term gives existence degree by degree and proves uniqueness by induction. Expanding a Taylor coefficient of $I_y$ attaches its uncontracted $y$-slots to solutions already constructed; $-\mathcal G$ attaches the root edge. Induction therefore produces every rooted eliminated-edge tree and no cycle. Taylor factorials are retained throughout this expansion.

To verify the unrooted factors without a diagrammatic guess, differentiate the reduced action:
$$
\delta_x S_{\rm red}
=S_x^{\rm full}[x,y_*]\,\delta x
+S_y^{\rm full}[x,y_*]\,\delta_xy_*
=S_x^{\rm full}[x,y_*]\,\delta x.
\tag{D.3}
$$
The complete stationary boundary condition is needed in the last equality. The remaining expression is the rooted-tree expansion with one external $x$-leg marked. Integration with respect to $x$ divides by the number of equivalent choices of the marked leg, recovering the action's symmetry factors. The common vacuum normalization fixes the $x$-independent integration constant.

Now take any full tree with only retained external legs. Partition its vertices into the maximal connected components joined by eliminated edges. Each component is a tree of the type just generated. Contracting these components produces a tree made from reduced vertices and retained edges. Expanding each reduced vertex recovers the original tree uniquely. This contraction–expansion bijection proves equality of all retained-external tree kernels.

If $y=(u,v)$, successive and joint elimination agree whenever both use the same domain and have unique formal solutions. After eliminating $u$, equation (D.3) says that the remaining $v$-equation is exactly the original $v$-equation evaluated at $u_*$. The successive solution is therefore a joint solution, and uniqueness identifies them. This proves associativity beyond the linear Schur-complement case. $\square$

The assumptions impose no large-mass hierarchy. The effective action may be nonlocal in time. For an observable $O[x,y]$, introduce $S+\eta O$, perform the same elimination, and differentiate in $\eta$. A single insertion becomes $O[x,y_*]$; multiple derivatives generate the required induced contact terms. Endpoint wavefunctionals and the boundary energy must be transported by this rule. Equality of reduced actions does not identify two different choices of external observable.

To call this transfer a quasi-isomorphism of the complete field complex requires an additional statement: no physical on-shell cohomology has been removed. The boundary gravitons of this note are physical external states. The scalar response graph in Section 3.6 selects a branch used to calculate scalar external amplitudes; it does not quotient those states from the theory.

## D.2 From an action to a Hamiltonian and a projected resolvent

When the reduced action admits a local first-order description, it induces its own symplectic potential and two-form. If $\iota$ is an invariant symplectic embedding into the full phase space, then
$$
H_{\rm red}=\iota^*H,\qquad \Omega_{\rm red}=\iota^*\Omega.
\tag{D.4}
$$
Indeed, contracting the pulled-back two-form with the tangent reduced vector field gives $-\delta\iota^*H$. Reusing the original bracket is justified only if the pullback has been proved to equal it. Section 3.6 establishes exactly that equality through the required order for the paired response graph.

**Proposition PHY-10 (Feshbach–Schur identity and state reconstruction).** Let $H$ be a specified self-adjoint Hamiltonian, $P$ an orthogonal model projection, and $Q=1-P$. Assume the block products have a common domain. If both inverses exist, then, as an operator on $P\mathcal H$,
$$
P(E-H)^{-1}P=[E-K_P(E)]^{-1},
\qquad
K_P(E)=PHP+PHQ(E-QHQ)^{-1}QHP.
\tag{D.5}
$$
At a spectral point, where the full resolvent does not exist, suppose only that $E-QHQ$ is invertible. Then the Schur kernel and full eigenkernel are isomorphic under
$$
\psi_P\longmapsto
\psi=\psi_P+(E-QHQ)^{-1}QHP\psi_P.
\tag{D.6}
$$

**Proof.** Apply $P$ and $Q$ to $(E-H)\psi=\eta_P$. The $Q$-equation solves for $\psi_Q=(E-QHQ)^{-1}QHP\psi_P$; substitution into the $P$-equation gives $[E-K_P(E)]\psi_P=\eta_P$. This proves (D.5) in the resolvent region. Taking $\eta_P=0$ proves (D.6) and its inverse $\psi\mapsto P\psi$. If a full eigenvector had $P\psi=0$, the invertible $Q$-block would force it to vanish, so the correspondence is injective and preserves multiplicity.

For real $E$ in this domain, differentiation of the inverse gives
$\partial_E(E-QHQ)^{-1}=-(E-QHQ)^{-2}$. Orthogonality of $P$ and $Q$ then yields
$$
\|\psi\|^2
=\langle\psi_P,[1-\partial_EK_P(E)]\psi_P\rangle.
\tag{D.7}
$$
Thus the energy derivative also fixes the pole residue and state norm. $\square$

For $H=H_0+\varepsilon V_1+\varepsilon^2V_2$, choose $P$ to include the entire free degenerate block and assume $PV_1P=0$. Expanding (D.5) gives
$$
K_P(E_0)=E_0P+\varepsilon^2
\left[PV_2P+PV_1Q(E_0-QH_0Q)^{-1}QV_1P\right]
+O(\varepsilon^3),
\tag{D.8}
$$
the degenerate OFPT operator used in Section 3.2. At finite regulator, the normal-form transformation gives an energy-independent representation of the same block. A true resonance belongs in $P$, not in the inverse of the $Q$-block.

For one eliminated oscillator of frequency $\Omega$, the two time orderings combine as
$$
\frac1{2\Omega}
\left(\frac1{\nu-\Omega}+\frac1{-\nu-\Omega}\right)
=\frac1{\nu^2-\Omega^2}.
\tag{D.9}
$$
This is the harmonic inverse of the wave Hessian, with the same frequency prescription on both sides. Contacts from the common Legendre transform must accompany this identity. In the present Einstein calculation the stronger numerator identity $F_m=mD_m+[H_\phi,D_m]$ cancels each relevant divisor before these two time orderings are combined.

## D.3 An all-order formal statement about the leading Weyl symbol

**Proposition PHY-11 (leading-symbol normal-form correspondence).** Work in a finite oscillator Weyl algebra, with quadratic $H_0$. Suppose that the quantum input symbols and generators have no negative powers of $\hbar$, and that their leading $\hbar^0$ input agrees with the classical Hamiltonian. Fix the same resonant projector, homological inverse on its complement, and resonant-generator convention in the classical and quantum recursions. Then, to every formal coupling order, the leading Weyl symbol of the quantum normal form equals the classical normal form.

**Proof.** If $\Lambda$ is the Poisson bidifferential operator, the Weyl product is
$A\star B=A\exp(i\hbar\Lambda/2)B$. Its normalized commutator is
$$
\frac{A\star B-B\star A}{i\hbar}
=\{A,B\}+O(\hbar^2).
\tag{D.10}
$$
All odd terms above first order vanish when one entry is quadratic, so
$$
\frac{H_0\star A-A\star H_0}{i\hbar}
=\{H_0,A\}
\tag{D.11}
$$
is exact. At coupling order one, the two homological equations therefore have the same leading input, inverse, and resonant part. Assume equality below order $r$. Every source term at order $r$ is built from lower-order symbols and nested normalized brackets. Equation (D.10) and the induction hypothesis identify its leading coefficient with the classical source. The common inverse and generator convention then give the same order-$r$ generator and resonant term. Induction proves the assertion. $\square$

The statement is about a formal leading symbol. It proves neither convergence in coupling nor an infinite-Fock-space unitary limit. Projection onto an oscillator vacuum introduces contractions. These lower-degree quantum terms can contribute at the same coupling order to fixed-occupation energies as the classical quartic symbol. Their treatment in this AdS theory is precisely the separate work of Appendix B.

## D.4 Explicit failure checks and the perturbative remainder

The following calculations delimit the assumptions of Propositions PHY-04 and PHY-09–11. They are included because the older reports discuss general equivalence as well as the first-order AdS result.

### D.4.1 Dynamic response and a genuine resonance

Consider two oscillators with
$$
H=\frac{p^2+\omega^2q^2}{2}
+\frac{P^2+\Omega^2Q^2}{2}+\varepsilon Qq^2.
\tag{D.12}
$$
Write $q=(b+b^\dagger)/\sqrt{2\omega}$, $Q=(a+a^\dagger)/\sqrt{2\Omega}$. Starting in $|n,0\rangle$, the second-order coefficient is exactly
$$
e_n=-\frac1{8\Omega\omega^2}
\left[\frac{(2n+1)^2}{\Omega}
+\frac{n(n-1)}{\Omega-2\omega}
+\frac{(n+1)(n+2)}{\Omega+2\omega}\right].
\tag{D.13}
$$
The three terms are the allowed intermediate scalar occupations $n,n-2,n+2$, each with one mediator quantum. Taking the second finite difference isolates the connected pair coefficient:
$$
e_n=e_0+n(e_1-e_0)+\lambda_{\rm dyn}n(n-1),\qquad
\lambda_{\rm dyn}=-\frac1{4\omega^2}
\left(\frac2{\Omega^2}+\frac1{\Omega^2-4\omega^2}\right).
\tag{D.14}
$$
Static minimization instead gives $Q=-\varepsilon q^2/\Omega^2$, hence the quartic $-\varepsilon^2q^4/(2\Omega^2)$ and pair coefficient $-3/(4\Omega^2\omega^2)$. This agrees only at the leading order of an additional large-$\Omega$ expansion. The discrepancy follows by subtracting the two rational functions.

At $\Omega=2\omega$, a nonzero matrix element
$$
\langle n-2,1|\varepsilon Qq^2|n,0\rangle
=\frac{\varepsilon\sqrt{n(n-1)}}{2\omega\sqrt{2\Omega}}
\tag{D.15}
$$
lies inside the free degenerate space. Enlarging the retained block gives an order-$\varepsilon$ splitting. Omitting this state and assigning a finite part to (D.13) would change the problem. Adding the same stabilizing potential $\varepsilon^2q^4/\Omega^2$ to both descriptions makes the classical potential bounded below and does not remove their difference or the cubic resonance.

### D.4.2 Symplectic and quantum changes of coordinates

A normal-mode branch $Q=cq,\ P=cp$ in a linear two-oscillator system has
$\Omega_{\rm red}=(1+c^2)dp\wedge dq$ and
$H_{\rm red}=(1+c^2)(p^2+\nu^2q^2)/2$.
Hamilton's equations with this pulled-back form give $\ddot q=-\nu^2q$. The original $dp\wedge dq$ would instead give frequency $(1+c^2)\nu$. This elementary calculation establishes why (D.4) is necessary even before quantization.

There is also a distinct quantum issue. Let $q=f(Q)$, $J=f'(Q)>0$, and $p=P/J$. The unitary map from $L^2(dq)$ to $L^2(dQ)$ is $\psi\mapsto J^{1/2}\psi\circ f$. Acting with it on $-\hbar^2\partial_q^2/2$ gives
$$
T_{\rm exact}=-\frac{\hbar^2}{2}
\left[J^{-2}\partial_Q^2-2J^{-3}J'\partial_Q
-\frac{J''}{2J^3}+\frac{5(J')^2}{4J^4}\right].
\tag{D.16}
$$
Direct Weyl quantization of $P^2/(2J^2)$ gives the same first two coefficients but constant coefficient
$-J''/(2J^3)+3(J')^2/(2J^4)$ inside the square brackets. Subtraction yields
$$
T_{\rm exact}-T_{\rm Weyl}
=\frac{\hbar^2(J')^2}{8J^4}.
\tag{D.17}
$$
For $f(Q)=Q+\epsilon Q^3$, this is
$9\hbar^2\epsilon^2Q^2/[2(1+3\epsilon Q^2)^4]$.
Thus an exact unitary coordinate transformation preserves the theory, while a new application of a coordinate-dependent Weyl rule can add a finite quantum term. Equation (D.16), obtained by differentiating $J^{-1/2}\psi$ twice, proves the stated coefficient directly.

### D.4.3 Gaussian integration, loops, and reciprocity

For an eliminated variable with quadratic kernel $K[x]$, the classical solution may be $y_*=0$, while Gaussian integration produces
$(i\hbar/2)\operatorname{Tr}\log K[x]$ in the Lorentzian effective action. This follows by diagonalizing a finite regulated quadratic form and multiplying its Gaussian integrals. An oscillator with frequency $\sqrt{\Omega^2+\varepsilon x^2}$ makes the missing $x$-dependent zero-point energy explicit.

If instead $K$ is independent of $x$, the coupling is linear $\langle J[x],y\rangle$, and the measure and initial/final state functionals are matching Gaussians with the same covariance, mean, and temporal prescription, translation by $-K^{-1}J$ completes the square. Apart from an $x$-independent determinant, the exact effective action is
$$
S_{\rm eff}=S_x-\tfrac12\langle J,K^{-1}J\rangle.
\tag{D.18}
$$
The common nonzero mean may first be shifted into the background. Subsequent quantum calculations with this generally nonlocal action include retained and mixed loops. For non-Gaussian endpoint states, the logarithm of their characteristic functional has higher cumulants; a fourth cumulant generates a $J^4$ term. Equal two-point covariance alone therefore does not establish (D.18).

Reciprocity is equally concrete. If $\mathcal G_R^*=\mathcal G_A$, direct variation gives
$$
\frac{\delta}{\delta J}
\tfrac12\langle J,\mathcal G_RJ\rangle
=\tfrac12(\mathcal G_R+\mathcal G_A)J.
\tag{D.19}
$$
A retarded right inverse alone does not define a single-copy variational action whose derivative is the retarded response. A doubled in-in construction can describe causal response; it is a different specified variational construction.

### D.4.4 The paired graph has a higher-order obstruction in a toy model

Take complex oscillators with $\{b,b^*\}=-i$, $H_\phi=\omega b^*b$, and a pair of frequency-$m$ mediators. Put
$$
\begin{gathered}
m=4\omega,\qquad D=b^2+\beta b^*b,\quad \beta\ne0,\\
F_+=mD+\mathscr LD,\quad F_-=mD^*+\mathscr LD^*,
\quad \mathscr L=i\{H_\phi,\cdot\}.
\end{gathered}
\tag{D.20}
$$
Use the cubic Hamiltonian
$V=a_+^*F_++F_+^*a_++a_-^*F_-+F_-^*a_-$
and its eliminating generator
$S=a_+^*D-D^*a_++a_-^*D^*-Da_-$.
The normalized commutator symbol is $[A,B]_{\rm cl}=i\{A,B\}$. Since $[H_0,S]_{\rm cl}=V$, direct Baker–Campbell–Hausdorff expansion gives
$$
H'=H_0+\frac{\kappa^2}{2}[S,V]_{\rm cl}
+\frac{\kappa^3}{3}[S,[S,V]_{\rm cl}]_{\rm cl}
+O(\kappa^4).
\tag{D.21}
$$
Extracting the coefficient of $a_+^*b^4$ from the displayed polynomials gives $-16\omega\beta$. This monomial is resonant, since
$(m+\mathscr L)b^4=0$. Its conjugate has the same real coefficient. The same expansion also has coefficient $+16\omega\beta$ multiplying the nonresonant monomial $a_-^*b^{*4}$; that second coefficient is a separate polynomial check, not part of the resonant obstruction. The rerun record accompanying this note verifies the cubic residual, quartic symbol, and both displayed third-order coefficients exactly.

The corresponding order-$\kappa^3$ graph equation has source $16\omega\beta b^4$ in the kernel of its homological operator. No bounded stationary correction can solve it while preserving the chosen leading graph. At $\omega=\beta=1$, the $a_+^*b^4$ matrix element between $|4,0,0\rangle$ and $|0,1,0\rangle$ is $-16\sqrt{24}$. This follows from the ladder factors and the calculated polynomial coefficient; the present run did not independently repeat the full third-order OFPT sum from the older package.

The example is not an AdS counterexample and does not violate Proposition PHY-09. A larger resonant block, or a different allowed choice of leading homogeneous data, changes the graph problem. It rules out inferring an all-order extension of this particular paired graph from its order-$\kappa^2$ success. For the AdS theory the relevant next test is the actual resonant coefficient
$$
\mathcal R\left(V_5+[S,V_4]+\tfrac13[S,[S,V_3]]\right)_{g\phi^4}
\tag{D.22}
$$
together with the simultaneously transported charges. That higher-order calculation has not been established here.

### D.4.5 Why the final remainder is $o(G)$

Even a coupling-reflection symmetry of the full spectrum does not make every branch analytic in $G$. For example,
$$
H(\kappa)=E_0I+\kappa^2\lambda I+\kappa^3v\sigma_x,
\qquad
H(-\kappa)=\sigma_zH(\kappa)\sigma_z
\tag{D.23}
$$
has eigenvalues $E_0+\kappa^2\lambda\pm\kappa^3v$.
They share their first $G$-coefficient because $\kappa^2=16\pi G$, but their remainder can be of order $G^{3/2}$. Therefore the fixed-label claim throughout this note is
$E=E_0+Gg+o(G)$. Proving an $O(G^2)$ remainder would require additional higher-order information. These failure checks establish precise limits, rather than modifying the complete first-order scalar block already proved in Section 3.3.

### D.4.6 A sufficient next-order Ward condition

For completeness, the first independent audit supplies a precise conditional way to improve the remainder. Suppose the *complete quantum* normal form and non-global charges of the same renormalized theory obey
$$
\begin{gathered}
\widetilde H=H_0+\kappa^2W_2+\kappa^3W_3+\cdots,\\
\widetilde Q_s=\kappa^{-1}c_sa_s+q_{0,s}+\kappa q_{1,s}
+\kappa^2q_{2,s}+\cdots,\\
[H_0,a_s]=sa_s,\quad c_s\ne0 .
\end{gathered}
\tag{D.24}
$$
Assume $W_2$ is resonant and commutes with every leading gravitational oscillator and its adjoint, including all lower-degree quantum terms. Assume also the next-order identity
$$
(\operatorname{ad}H_0-s)q_{2,s}
+[W_2,q_{0,s}]+[W_3,c_sa_s]=0
\tag{D.25}
$$
and compatibility with gravitational parity under $\kappa\mapsto-\kappa$.

**Proposition PHY-12 (conditional absence of the third-order splitting).** Under these additional assumptions, on a fixed finite free-energy block satisfying ordinary analytic matrix perturbation hypotheses, a branch whose order-$\kappa^2$ correction is $\lambda$ has no order-$\kappa^3$ splitting within its $\lambda$-eigenspace.

**Proof.** The order-zero Ward equation makes $q_{0,s}$ a free weight-$s$ operator. Project (D.25) to that weight:
$$
c_s[\mathcal RW_3,a_s]=-[W_2,q_{0,s}].
\tag{D.26}
$$
Take $P_\lambda$ to be the common $W_2$-eigenprojection on the algebraic direct sum of free-energy spaces with that eigenvalue. It must be formed before restricting to a single free-energy block: a truncated ladder is not a gravitational oscillator representation. The assumed commutant property gives $[P_\lambda,a_s]=0$, while
$P_\lambda[W_2,q_{0,s}]P_\lambda=0$. Thus
$P_\lambda\mathcal RW_3P_\lambda$ commutes with every gravitational creation and annihilation operator. On the irreducible gravity Fock factor it is the identity tensor an operator on the scalar multiplicity space. Gravitational parity makes this compressed term odd, while every such identity tensor is even. The compressed term is therefore zero. Mixing between distinct $\lambda$'s starts contributing at order $\kappa^4$, since the order-$\kappa^3$ matrix element is squared over an order-$\kappa^2$ gap. This proves the stated conditional conclusion. $\square$

Section 3.3 establishes the commutant property of the degree-four symbol and the invariance of the zero-graviton scalar sector under the lower-degree terms. Those facts do not establish the stronger commutant hypothesis in Proposition PHY-12: a gravitational number operator annihilates the gravitational vacuum but does not commute with its creation operator. Nor has the required next-order quantum charge, including counterterm metric completions and the removal of the common regulator, been constructed here. The proposition is retained as an exact sufficient condition and a concrete future calculation, with none of these extra inputs asserted for the full AdS theory.

# Appendix F. Clebsch–Gordan norms, Racah matrices, and the compiled finite construction

## F.1 A finite binary intertwiner

Let $A,B$ be normalized or unnormalized lowest-weight vectors of positive weights $a,b$, annihilated by their lowering operators. Denote raising by $U_A,U_B$. Their relative-degree-$m$ lowest vector is

$$
\mathcal C_m(A,B)=\sum_{r=0}^m
\frac{(-1)^r\binom mr}{(2a)_r(2b)_{m-r}}
U_A^rA\otimes U_B^{m-r}B.
\tag{F.1}
$$

To check primarity, use $D_AU_A^rA=r(2a+r-1)U_A^{r-1}A$. The contribution of the $r+1$ term from $D_A$ cancels that of the $r$ term from $D_B$, including the two Pochhammer factors. The total weight is $a+b+m$. Different $r$ terms are orthogonal because they have different separate $L_0$ eigenvalues. Therefore

$$
\frac{\|\mathcal C_m(A,B)\|^2}{\|A\|^2\|B\|^2}
=\sum_{r=0}^m\frac{\binom mr^2r!(m-r)!}{(2a)_r(2b)_{m-r}}
=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{F.2}
$$

For the last identity, multiply by $(2a)_m(2b)_m/m!$, reverse one Pochhammer using $(c)_{m-r}=(c)_m(-1)^r/(1-c-m)_r$, and sum the resulting terminating binomial identity. This is the finite Chu–Vandermonde identity; it can also be proved by comparing the coefficient of $t^m$ in $(1-t)^{-u}(1-t)^{-v}$. Thus no infinite-series convergence condition is involved.

For two single-particle factors of weight $\Delta/2$, (F.1) is $(z_2-z_1)^m$. Replacing it consistently by $(z_1-z_2)^m$ changes a phase but not its norm,

$$
\|(z_1-z_2)^m\|^2=\frac{m!(2\Delta+m-1)_m}{(\Delta)_m^2}.
\tag{F.3}
$$

Equations (F.1)–(F.3), tensor products, and finite raising norms construct every pair–spectator vector in Chapter 5, including its metric. A spectator with primary degrees $(a_L,a_R)$ has weights $((N-2)\Delta/2+a_L,(N-2)\Delta/2+a_R)$; the remaining coupling degrees are $P-k-a_L$ and $Q-\ell-a_R$. Terms with negative coupling degrees are absent. Summing over spectator primaries and these coupling degrees is exactly the full spectator-level count in (5.17).

## F.2 The three-particle Racah matrix, including its metric

At total primary degree $T$, couple particles $12$ first, with relative degree $k$, then particle 3. Let $E_k$ denote the resulting normalized state in a fixed consistent phase. The exchange of particles 2 and 3 has matrix

$$
\mathcal R_T(k,r)=e_T\sqrt{\omega_k^{(T)}\omega_r^{(T)}}
\,{}_4F_3\!\left(
\begin{matrix}-k,k+2\Delta-1,-r,r+2\Delta-1\\
\Delta,-T,T+3\Delta-1\end{matrix};1\right),
\tag{F.4}
$$

where

$$
e_T=(-1)^T\frac{(\Delta)_T}{(2\Delta)_T},
\quad
\omega_k^{(T)}=
\frac{(T+3\Delta-1)_k(-T)_k(2\Delta-1)_k}
{(1-\Delta-T)_k(2\Delta+T)_k k!}
\frac{2\Delta+2k-1}{2\Delta-1}.
\tag{F.5}
$$

The series ends at $\min(k,r)$, so every expression is finite. For $0\le k\le T$, $(-T)_k$ and $(1-\Delta-T)_k$ have the same sign, while all other factors are positive; hence $\omega_k^{(T)}>0$. Equations (F.4)–(F.5) can be derived without assuming an orthogonality table: expand the two coupled polynomials by (F.1), use the diagonal monomial norm, perform the inner binomial contraction by (F.2), and leave the final terminating sum. Its successive-term ratio is

$$
\frac{(-k+j)(k+2\Delta-1+j)(-r+j)(r+2\Delta-1+j)}
{(\Delta+j)(-T+j)(T+3\Delta-1+j)(j+1)},
\tag{F.6}
$$

with initial term one. This determines the entire finite sum. The endpoint $k=r=0$ is $e_T$, also obtained from the endpoint coefficient proof in Appendix G. The norm contractions provide exactly the square roots in (F.4). Thus the matrix is the literal permutation in an orthonormal coupled basis. It is symmetric, squares to the identity, and has the correct permutation relations. Orthogonality alone would not identify which permutation it represents.

For a two-chiral bad-channel index $\alpha=(k,\ell)$, put $\Omega_\alpha=\omega_k^{(P)}\omega_\ell^{(Q)}$, $U=\operatorname{diag}\sqrt\Omega$, and $D=\operatorname{diag}a_\alpha$. With normalized coupled Bose columns $S$, a rational coordinate choice is

$$
M_{\rm rat}=U^{-1}(3S^\dagger S)UD,
\quad L=SDU,
\quad A_3L=LM_{\rm rat},
\quad L^\dagger L=\frac13D\Omega M_{\rm rat}.
\tag{F.7}
$$

The terminating sums and the cancellation of square roots make $M_{\rm rat}$ rational at rational $\Delta$. Its physical metric is the last expression in (F.7), restricted to its nonzero image. It may have auxiliary zero directions. In contrast, the manifestly Hermitian matrix (5.18) has the ordinary Euclidean eigenvector metric, and its physical reconstruction is (5.19). These two gauges describe the same positive space but do not use the same coordinate normalization.

## F.3 A local rational exchange for arbitrary combs

The all-$N$ compiler needs the exchange of two equal leaves in $((a,b)_k,b)$, at total relative degree $M$, where $a>0$ is the accumulated common-subtree weight and $b=\Delta/2>0$ is a leaf weight. Define

$$
\begin{gathered}
\alpha=2a-1,\quad\beta=2b-1,\quad
\gamma=-M-1,\quad\delta_R=2a+2b+M-1,\\
\lambda_r=r(r+2a+2b-1),\quad K_{0r}=1,\quad C_0=0,\\
A_k=\frac{(k+\alpha+1)(k+\alpha+\beta+1)(k+\beta+\delta_R+1)(k+\gamma+1)}
{(2k+\alpha+\beta+1)(2k+\alpha+\beta+2)},\\
C_k=\frac{k(k+\beta)(k+\alpha-\delta_R)(k+\alpha+\beta-\gamma)}
{(2k+\alpha+\beta)(2k+\alpha+\beta+1)},\\
K_{k+1,r}=\frac{(\lambda_r+A_k+C_k)K_{kr}-C_kK_{k-1,r}}{A_k}.
\end{gathered}
\tag{F.8}
$$

Only $0\le k<M$ is used in the last recurrence. Its denominator is nonzero for the physical weights in the comb. The resulting table equals the terminating polynomial

$$
K_{kr}={}_4F_3\!\left(
\begin{matrix}-k,k+2a+2b-1,-r,r+2a+2b-1\\
2a,-M,M+2a+4b-1\end{matrix};1\right).
\tag{F.9}
$$

Substitution of the finite sum into (F.8), shifting its summation index once, proves the recurrence; its degree-zero initial value fixes the table uniquely. Equivalently, (F.8) is the tridiagonal action of the exchanged intermediate Casimir on binary coupled states. Set

$$
\begin{aligned}
\omega_k={}&\frac{(2a)_k(M+2a+4b-1)_k(-M)_k(2a+2b-1)_k}
{(2b)_k(1-2b-M)_k(M+2a+2b)_k k!}
\frac{2a+2b+2k-1}{2a+2b-1},\\
t_k={}&\frac{(2a+2b)_{2k}}{(2b)_k(2a+2b+M)_k},\qquad
e_M=(-1)^M\frac{(2b)_M}{(2a+2b)_M}.
\end{aligned}
\tag{F.10}
$$

In the unnormalized canonical gauge of (F.1), the exchange matrix is

$$
T_{kr}=(-1)^{k+r}e_M\omega_k\frac{t_r}{t_k}K_{kr}.
\tag{F.11}
$$

Its Gram diagonal is $g_k=\eta(k;a,b)\eta(M-k;a+b+k,b)$. Direct Pochhammer cancellation gives

$$
t_k^2=\omega_k\frac{g_k}{g_0}.
\tag{F.12}
$$

This identity explains why a real orthogonal Racah change of basis can be implemented with rational entries in a nonorthonormal gauge. To verify (F.11) as an actual exchange, expand the two coupling orders by (F.1), interchange the two leaf variables, and use the norm sum (F.2). The overlap reduces to (F.9); (F.12) converts its orthonormal prefactor to (F.11). This gives a direct finite algebraic derivation, including phases. No assumption about a universal scalar recurrence for the full many-body spectrum is made.

For a left comb $(n_2,\ldots,n_N)$, the successive weights are

$$
h_j=j\Delta/2+\sum_{i=2}^j n_i.
\tag{F.13}
$$

Exchanging leaves $j,j+1$, $j\ge2$, affects only the two local labels $n_j,n_{j+1}$. In (F.8)–(F.11), take $a=(j-1)\Delta/2+\sum_{i<j}n_i$, $b=\Delta/2$, and $M=n_j+n_{j+1}$. The right comb is transformed independently. Particle permutations, however, apply the same exchange to both combs. This is the diagonal Bose action.

## F.4 Projection, independence, and the complexity statement

Let $e_i$ be the raw comb coordinate vectors, with diagonal physical Gram $g_i$. Project spectator leaves $3,\ldots,N$ by the nested cosets (5.21), and retain only allowed bad-pair seeds. If $H$ is this spectator projector, the Gram of projected raw seeds is $\Gamma_{ij}=g_i(He_j)_i$. A positive principal minor selects an independent spectator-Bose frame. The final symmetrized columns $B_i=\Pi_Ne_i$ have $T_{ij}=c_Ng_i(\Pi_Ne_j)_i$. Formula (5.15) then gives $M_+$ and metric $T_{II}/c_N$.

This description proves all three required equivalences. The raw comb is complete by repeated lowest-weight decompositions. The nested cosets are exact group projectors. Positive-Gram column selection removes only linear dependence. The nonzero determinant and state map are therefore independent of coupling-tree coordinates and agree with the direct construction.

For explicit counting, the number of raw bad seeds is

$$
r_0=\sum_{\substack{0\le\ell\le Q\\0\le k\le\min(P,\ell+2)\\k+\ell\ \mathrm{even}}}
\binom{P-k+N-3}{N-3}\binom{Q-\ell+N-3}{N-3}.
\tag{F.14}
$$

Each local table has $O((M+1)^2)$ entries and can be generated once. Applying the coset words to $r$ columns entails $O(N^3(P+Q+2)rD_{\rm labelled})$ elementary arithmetic operations in a dense representation, with the analogous raw-seed term $O(N^3(P+Q+2)r_0^2)$. Gram contractions and the two column eliminations give $O(r_0r^2+rR^2+r^3)$. This proves the stated assembly bound for that representation. Root isolation and coefficient bit lengths are not counted by arithmetic operations. More favorable sparse behavior is possible, but is not an all-input theorem.

# Appendix G. Positive pair ordering, the collision gap, and exact equality

## G.1 All-index positivity certificates

Use the cancelled pair coefficients of Chapter 4. For $n\ge1$, put $\Delta=1+x,n=1+y$, where $x>0,y\ge0$. The difference $g_{n,0}-g_{n,2}$ has denominator $(2\Delta+2n-3)(2\Delta+2n-1)(2\Delta+2n+3)>0$ and numerator

$$
\begin{aligned}
&8x^4+80x^3y+128x^3+156x^2y^2+532x^2y+438x^2\\
&+116xy^3+606xy^2+938xy+448x\\
&+29y^4+202y^3+469y^2+448y+130.
\end{aligned}
\tag{G.1}
$$

Every coefficient is positive. For $n=0$, the difference is $c$ in (6.39). The difference $g_{n,2}-u_n$ is the positive product in the pair formula. Finally, with $\Delta=1+x,n=y$, the numerator of $u_n-g_{n+1,0}$, over the positive denominator $(2\Delta+2n-1)(2\Delta+2n+1)(2\Delta+2n+3)$, is

$$
\begin{aligned}
&120x^4+432x^3y+584x^3+608x^2y^2+1632x^2y+950x^2\\
&+392xy^3+1572xy^2+1852xy+628x\\
&+98y^4+524y^3+926y^2+628y+142.
\end{aligned}
\tag{G.2}
$$

This proves the strict order (6.38) for all indices. If only one relative label is nonzero, Bose parity makes it at least two, and the maximum in that set is $\gamma_{20}$. If both are nonzero, the maximum is $g_{1,0}$. The exact identity

$$
\gamma_{00}-g_{1,0}-2c=
\frac{8\Delta(14\Delta^3+9\Delta^2-12\Delta-1)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0
\tag{G.3}
$$

then proves (6.40). Under $\Delta=1+x$, its numerator is $112x^4+520x^3+792x^2+464x+80$. Thus the equality list $00,20,02$ is exhaustive.

These inequalities do not assert negativity of every $\gamma$. Indeed

$$
\gamma_{00}=-\frac{2\Delta^2(8\Delta^2-2\Delta-7)}{(2\Delta-1)(2\Delta+1)}
$$

is positive for $1<\Delta<(1+\sqrt{57})/8$, zero at the endpoint, and negative above it. The upper-edge and residual arguments use ordering and differences, so remain valid on the entire physical interval.

For completeness define pair spectral projectors $Q_n=\sum_{\min(k,\ell)\ge n}\mathsf P_{k\ell}$, $E_n=\mathsf P_{nn}$, and $F_n=\mathsf P_{n+2,n}+\mathsf P_{n,n+2}$. The positive telescoping resolution is

$$
\begin{aligned}
\gamma_{00}I-w={}&\sum_{n\ge0}(g_{n,0}-g_{n,2})(Q_n-E_n)\\
&+\sum_{n\ge0}(g_{n,2}-u_n)(Q_n-E_n-F_n)\\
&+\sum_{n\ge0}(u_n-g_{n+1,0})Q_{n+1}.
\end{aligned}
\tag{G.4}
$$

On each finite level these are finite sums. On a channel with minimum $n$, the terms below that minimum telescope, and the last one or two terms select its spin branch. This proves the identity on every channel. It is not a simultaneous diagonalization of different particle pairs.

## G.2 Pair-zero averaging in the physical Bargmann metric

At pair degree $T$, the pair-zero line is generated by

$$
\psi_{T,0}=(U_1+U_2)^T1
=\sum_{a+b=T}\binom Ta(\Delta)_a(\Delta)_b z_1^az_2^b,
\quad\|\psi_{T,0}\|^2=T!(2\Delta)_T.
\tag{G.5}
$$

The inner product with any monomial $z_1^az_2^b$ of total degree $T$ is $T!$. Consequently

$$
\mathsf P_{12,0}(z_1^az_2^b)=\frac{\psi_{T,0}}{(2\Delta)_T}.
\tag{G.6}
$$

Equivalently, with $\zeta=tz_1+(1-t)z_2$,

$$
(\mathsf P_{12,0}f)(z_1,z_2,\ldots)
=\frac1{B(\Delta,\Delta)}\int_0^1t^{\Delta-1}(1-t)^{\Delta-1}
f(\zeta,\zeta,\ldots)\,dt.
\tag{G.7}
$$

Expanding $\zeta^T$ and using the Beta moments reproduces (G.6). This proves the integral operator with the correct physical Gram. Idempotence also follows by restricting to the diagonal $z_1=z_2$; self-adjointness follows from (G.5)–(G.6).

## G.3 The labelled three-site estimate, including low-degree rank defects

Let $F_i^{(T)}$ be the total primary of degree $T$ in which the other two particles form a zero pair, normalized by spectator coefficient $[z_i^T]F_i^{(T)}=1$. For spectator 3,

$$
F_3^{(T)}=\sum_{r=0}^T(-1)^r\binom Tr
\frac{(U_1+U_2)^r1}{(2\Delta)_r}z_3^{T-r}.
\tag{G.8}
$$

Neighboring-term cancellation proves primarity. Permutation gives the other two vectors with equal norms. The coefficient of $z_3^T$ in $F_2^{(T)}$ is $r_T=(-1)^T(\Delta)_T/(2\Delta)_T$. The pair-zero projector $\mathsf P_{12,0}$ maps the total primary space into the line spanned by $F_3^{(T)}$ and preserves that spectator coefficient, so $\mathsf P_{12,0}F_2^{(T)}=r_TF_3^{(T)}$. Self-adjointness now identifies $r_T$ as the normalized overlap, including its odd-$T$ sign.

The three-column Gram has eigenvalues $1+2r_T$ and $1-r_T$, the latter twice. Its nonzero eigenvalues are those of $U_3=\sum\mathsf P_{ij,0}$. At $T=0$, the columns coincide: the physical $U_3$ is 3 on a one-dimensional space. At $T=1$, $r_1=-1/2$, the symmetric combination vanishes, and $K_3=3I-U_3$ is $3/2$ on the two-dimensional labelled primary space. At $T\ge2$, all three columns are independent; the physical $K_3$ values on their image are $2-2r_T$ and $2+r_T$ twice. The orthogonal complement, if present, has value 3.

Because $|r_{T+1}|/|r_T|=(\Delta+T)/(2\Delta+T)<1$, the smallest positive value is the symmetric $T=2$ value $(3\Delta+1)/(2\Delta+1)$. Odd degrees have value at least $3/2$, which is larger. Descendants carry the same pair projections. This proves the operator inequality on the entire labelled triple, so it can legitimately be tensored with arbitrary spectators.

## G.4 Triangle summation and equality in the Einstein problem

Write $D_e=I-\mathsf P_{e,0}$ for a pair $e$, and $K_T=\sum_{e\subset T}D_e$ for a three-element subset. Expanding squares gives the exact noncommutative identity

$$
K_N^2=\sum_{|T|=3}K_T^2-(N-3)K_N
+\sum_{\substack{e,f\ \mathrm{disjoint}\\ e\ne f\ \mathrm{ordered}}}D_eD_f.
\tag{G.9}
$$

A diagonal $D_e^2=D_e$ appears $N-2$ times in the triple sum. Every ordered overlapping pair appears once. The subtraction corrects the diagonal count, and the last sum restores the disjoint products. Those products are positive because the disjoint projectors commute. Combining the triple estimate with $\sum_TK_T=(N-2)K_N$ proves (6.43).

If $K_N\Psi=0$, each pair has its minimal Casimir. The sum-of-Casimirs identity then gives total Casimir $(N\Delta/2)(N\Delta/2-1)$. The total primary Casimir $(N\Delta/2+P)(N\Delta/2+P-1)$ is strictly increasing for $P\ge0$; only the ground primary is possible. Conversely every descendant of the constant is fixed by each pair-zero projector. This proves the complete kernel.

For sharpness, apply (G.7) to $F_2$. With $\sigma=(z_i+z_j)/2,\delta=z_i-z_j$, the Beta moments are $\mathbb E\zeta=\sigma$ and $\mathbb E\zeta^2=\sigma^2+\delta^2/[4(2\Delta+1)]$. Substitution gives (6.44), and $\sum_{i<j}(z_i-z_j)^2=NF_2$ gives $K_NF_2=\lambda_NF_2$.

The two chiral collision operators commute. Equality at the first positive value of their sum permits only a left-excited/right-ground summand or its mirror. Equality in the stronger Einstein comparison forces pair channels $00,20,02$. In a left primary of degree $P>0$ with only channels 0 and 2,

$$
K_N^L=\sum_{i<j}\mathsf P_{ij,2}^L
=\frac{P(N\Delta+P-1)}{2(2\Delta+1)}.
\tag{G.10}
$$

Equating this to $\lambda_N$ forces $P=2$. The symmetric degree-two primary is one-dimensional. This proves the equality classification, including $N=2$, where the collision operator alone would have additional equality states that fail the strict Einstein comparison. Finally, every full level contains exactly one descendant of the ground primary and one descendant of each admissible degree-two primary, proving the multiplicity formula in Theorem EX-06.

## G.5 The Gamma–Laguerre primary dictionary and the Markov distinction

Laguerre orthogonality gives

$$
\int_0^\infty L_p^{(\Delta-1)}(x)L_q^{(\Delta-1)}(x)d\nu_\Delta(x)
=\delta_{pq}\frac{(\Delta)_p}{p!}.
\tag{G.11}
$$

This proves unitarity of (6.47). The Laguerre identity $L_p^{(\Delta-1)}(x)=(\Delta)_p\sum_{r=0}^p(-1)^rx^r/[ (p-r)!(\Delta)_r r!]$ also shows that the tensor transform equals the Fischer transform of $F(1-z)$. A translation-invariant homogeneous primary satisfies $F(1-z)=(-1)^PF(z)$, so it becomes a homogeneous polynomial in the $x_i$. Splitting $x_i=S\xi_i$ separates the Gamma radial density from the Dirichlet angular density. Raising supplies the radial Laguerre descendants with the stated parameter. Computing the transformed Casimir on monomials gives (6.48); the resulting degree-$k$ Jacobi polynomial has eigenvalue $C_k$, fixing the full operator dictionary.

The Beta-binomial moments in (6.52) follow by expanding powers of $2a-T$ in falling factorials and using $\mathbb E(a)_{\underline r}=(T)_{\underline r}(\Delta)_r/(2\Delta)_r$. The minimum product of centered squares occurs at opposite extremes. It gives the sharper bound $-T(2\Delta+3)/[2(T+2\Delta+1)]$ for even $T$, and $-(T-1)(2\Delta+3)/[2(T+2\Delta)]$ for odd $T$. Both imply (6.53). The positive off-diagonal kernel and the zero row sum of $w-\gamma_{00}I$ prove the stated reversible chiral generator. Its $N$-particle stationary law is

$$
\pi_P(p_1,\ldots,p_N)=\frac{P!}{(N\Delta)_P}
\prod_i\frac{(\Delta)_{p_i}}{p_i!},\qquad \sum_ip_i=P.
\tag{G.12}
$$

The global ground-descendant similarity restricts on each pair to its local version; hence the generators add correctly. Bose occupations carry the permutation quotient with its orbit multiplicities.

For the nonchiral counterexample, expand $X^2Y^2=m^2+m(q(X)+q(Y))+q(X)q(Y)$. The four terms lie in channels $00,20,02,22$. Their eigenvalues immediately give (6.54)–(6.55). Under $\Delta=1+x$, the numerator of minus (6.54) is $120x^3+708x^2+1152x+396$, so strict negativity holds throughout the physical interval. This finite polynomial argument proves failure of the natural cone without a domain limit.

There is a complementary structural explanation. A stationary Markov semigroup has Dirichlet form satisfying

$$
\mathcal E(fg,fg)\le2\|f\|_\infty^2\mathcal E(g,g)
+2\|g\|_\infty^2\mathcal E(f,f).
\tag{G.13}
$$

Expand the difference $f(x)g(x)-f(y)g(y)$, square, use $(a+b)^2\le2a^2+2b^2$, integrate against the stationary transition measure, and take the derivative at zero to prove (G.13). Even Chebyshev polynomials $T_{2n}(X),T_{2n}(Y)$ are bounded by one. Their marginal costs remain bounded because the chiral pair values reach a plateau. Their overlaps with any fixed low Jacobi polynomial tend to zero by the cosine integral after $X=\cos\theta$, while their squared norms tend to $1/2$. The product therefore places asymptotically positive norm in arbitrarily high mixed channels, where the penalty tends to infinity by (6.38). This contradicts (G.13). It explains the bounded-margin/unbounded-mixed-cost mechanism; the four-channel polynomial already supplies the sharper explicit counterexample.

# Appendix K. Collision flags, logarithmic symbols, physical tensors, and exact ranks

## K.1 The collision filtration is the pair spectral filtration

Let $R=\mathbb C[V]$, the ring of translation-invariant polynomials in $N$ labelled variables. For a fixed pair, use the relative coordinate $\delta=z_i-z_j$, its pair center, and the remaining coordinates on $V$. The homogeneous degree-$P$ space has the descending filtration $F_r=\delta^rR_{P-r}$. Formula (6.2) maps every $F_r$ into itself and acts on $F_r/F_{r+1}$ by $C_r$. Because the Casimir is self-adjoint in a positive finite metric, each invariant $F_r$ is reducing. The successive orthogonal layers therefore have precisely the distinct scalar eigenvalues $C_r$. Descending induction proves (6.3), including multiplicities supplied by the remaining variables. This is a finite-dimensional spectral argument; no assertion about orthogonality in a Euclidean polynomial metric enters it.

The kernel of the positive residual allows exactly $k\ge\ell+4$. In particular $k\ge4$ for every pair, so $\delta_{ij}^4\mid\Psi$. The collision factors are pairwise nonassociate irreducible linear polynomials. Repeated unique-factor divisibility gives $\mathcal V_N^4\mid\Psi$, whether or not the collision hyperplanes intersect. The quotient $F$ remains left and right primary, because the Vandermonde is translation invariant, and it remains Bose invariant because its fourth power is symmetric.

For pair $ij$, write $\mathcal V_N^4=\delta_{ij}^4B_{ij}$. The factor $B_{ij}$ is coprime to $\delta_{ij}$. A right pair projector commutes with multiplication by $B_{ij}$. Thus

$$
\mathsf P^R_{ij,\ell}\Psi\in\delta_{ij}^{\ell+4}R
\quad\Longleftrightarrow\quad
\mathsf P^R_{ij,\ell}F\in\delta_{ij}^{\ell}R.
\tag{K.1}
$$

Cancellation here is cancellation of prime valuations, not division by a nonvanishing function on the entire collision arrangement. This establishes the exact quotient condition pair by pair.

## K.2 Why the physical tensor–Hom map is the required one

Fix a real basis $f_\alpha$ of $R_Q$. The physical Bargmann metric restricted to these primary polynomials is a positive real symmetric matrix $\Gamma$. Complex conjugation of coefficients supplies a distinguished real structure. The associated complex bilinear pairing is $B(u,v)=u^T\Gamma v$.

If $F=\sum_{i,\alpha}C_{i\alpha}e_i\otimes f_\alpha$, identify it with the linear map $\mathcal A:R_Q\to R_p$ having matrix $C\Gamma$. For a right orthogonal spectral projector $\mathsf P$, the tensor coefficients change to $C\mathsf P^T$, and $\mathsf P^T\Gamma=\Gamma\mathsf P$ makes the map change to $\mathcal A\mathsf P$. Therefore (K.1), for each $\ell$, says that $\mathcal A$ maps the $\ell$-th pair spectral subspace into $F_\ell$. Summing $\ell\ge r$ gives (6.7). Conversely, an individual degree-$\ell$ eigenspace lies in $F_\ell$, so preservation of all flags implies (K.1). This proves equivalence in both directions.

An antilinear Riesz map would conjugate the input and is not the tensor–Hom identification used in this polynomial classification. A Euclidean bilinear pairing would replace $\Gamma$ by $I$, generally losing the projector intertwining. The counterexample (6.15) is an explicit failure of that replacement.

## K.3 From a finite homogeneous map to all ideal powers

Choose linear coordinates $x_1,\ldots,x_{N-1}$ on $V$. Every linear map $\mathcal A:R_Q\to R_p$ has a unique normally ordered pure order-$Q$ realization

$$
D_{\mathcal A}=\sum_{|\alpha|=Q}
\frac{\mathcal A(x^\alpha)}{\alpha!}\partial_x^\alpha.
\tag{K.2}
$$

Indeed $\partial^\alpha x^\beta=\alpha!\delta_{\alpha\beta}$ for $|\alpha|=|\beta|=Q$. Thus (K.2) agrees with $\mathcal A$ on $R_Q$, and its coefficient functions are uniquely determined.

In coordinates $(\delta,y_1,\ldots,y_{N-2})$ adapted to a collision, write

$$
D_{\mathcal A}=\sum_{a+|\beta|=Q}c_{a\beta}(\delta,y)
\partial_\delta^a\partial_y^\beta.
\tag{K.3}
$$

Apply this to $\delta^ay^\beta$. Since its total degree is $Q$, only the matching multi-index differentiates it nontrivially. Therefore flag preservation with $r=a$ is exactly

$$
\delta^a\mid c_{a\beta}\qquad\hbox{for all }a,\beta.
\tag{K.4}
$$

Conversely, (K.4) implies that (K.3) preserves every power $(\delta)^r$ in the entire ring: applying $a$ normal derivatives loses at most $a$ powers, while $c_{a\beta}$ restores at least $a$. The original finite list $0\le r\le Q$ has therefore furnished a genuine all-ideal-power differential operator. No unproved passage from first-order tangency to higher-order flags is being made.

The symbol in (K.2) is a normally ordered symbol. A product of vector-field symbols is converted to its pure order-$Q$ differential operator after multiplication. Sequentially composing the variable-coefficient vector fields adds lower-order terms and generally gives a different tensor. For example, $x^2\partial_x^2$ and $(x\partial_x)^2=x^2\partial_x^2+x\partial_x$ are not interchangeable in (K.2).

## K.4 A complete logarithmic frame, including multiple intersections

On $V$, consider the vector fields

$$
v_a=\sum_i\left(Z_i^a-\frac1N\sum_jZ_j^a\right)\partial_{Z_i},
\qquad 1\le a\le N-1,
\tag{K.5}
$$

understood as tangent vectors to $\sum Z_i=0$. Their symbols are (6.8). For a collision $\delta_{ij}=Z_i-Z_j$,

$$
v_a(\delta_{ij})=Z_i^a-Z_j^a
=\delta_{ij}\sum_{r=0}^{a-1}Z_i^{a-1-r}Z_j^r.
\tag{K.6}
$$

They are tangent to every collision. In any linear coordinate basis of $V$, their determinant is a nonzero constant times $\mathcal V_N$. To prove this, augment the matrix by its constant column and compare with the $N\times N$ Vandermonde matrix $(1,Z_i,\ldots,Z_i^{N-1})$. Subtracting the column means only changes it by elementary column operations. Restricting to the sum-zero tangent basis removes the constant direction with a nonzero constant determinant. The usual Vandermonde determinant then gives the claim.

Let $K=\operatorname{Frac}R$. The symbols $\theta_a$ form a $K$-basis of the cotangent-linear symbols. Hence every homogeneous order-$Q$ symbol has a unique expansion

$$
\sigma_Q(D_{\mathcal A})=\sum_{|\nu|=Q}h_\nu(Z)\theta^\nu,
\qquad h_\nu\in R[\mathcal V_N^{-1}].
\tag{K.7}
$$

We now prove that the all-power condition removes every denominator. Localize $R$ at one height-one prime $(\delta_{ij})$. This is a discrete valuation ring, and all other collision factors are units. Tangency says that the normal coefficient of each $v_a$ is divisible by $\delta_{ij}$. The determinant has valuation one. Relative to the basis $(\delta_{ij}\partial_{\delta_{ij}},\partial_{y_1},\ldots,\partial_{y_{N-2}})$, the change-of-frame determinant is therefore a unit. Thus the $v_a$ form a basis of the full logarithmic tangent module at this localization.

Condition (K.4) says that the order-$Q$ symbol lies in the symmetric $Q$-th power of that local module: each occurrence of the normal cotangent variable has its corresponding factor $\delta_{ij}$. Expanding in the local $v_a$-basis therefore gives coefficients regular at $(\delta_{ij})$. Those coefficients are the unique $h_\nu$ in (K.7). Repeating the argument at every collision prime makes every $h_\nu$ regular at every possible denominator. Since (K.7) has no other denominators, unique factorization implies $h_\nu\in R$.

This localization argument is precisely what controls multiple intersections. It does not assert without proof that taking a symmetric power commutes with intersecting logarithmic modules. The argument first restricts possible denominators using the explicit determinant, then removes them one prime at a time. The resulting polynomial coefficients are globally regular, including at every intersection.

The converse is immediate from (K.6): polynomial combinations of the symbol monomials $\theta^\nu$ satisfy the local normal divisibility and hence all flags. This proves the full noninvariant symbol classification. Each $\theta_a$ is $S_N$-invariant, so uniqueness of (K.7) makes a simultaneously Bose-invariant symbol have $S_N$-invariant coefficients. The invariant ring of the sum-zero permutation representation is $\mathbb C[e_2,\ldots,e_N]$: the ordinary symmetric polynomial theorem gives generators $e_1,\ldots,e_N$, and $e_1=0$ on $V$. These generators are algebraically independent. Counting their degrees together with $\deg_Z\theta_a=a$ and $\deg_\Xi\theta_a=1$ proves (6.9)–(6.10), including linear independence, support, and the unique first state.

## K.5 Physical reconstruction and the quadratic kernel

The reproducing kernel (6.11) is characterized by $B(f,K_{\Delta,Q}(\cdot,w))=f(w)$. Substitution of $\sum_at_aZ^{(a)}$ in its first argument is the symmetric $Q$-fold action of the logarithmic frame. Its coefficient of $t^\nu$ is therefore the tensor corresponding to $\theta^\nu$, up to the explicit nonzero multinomial factor fixed by the expansion. Multiplying by invariant $e_r$ monomials and $\mathcal V_N^4$ proves that (6.13) is a complete physical basis, not just a count of formal symbols. Every normalization can then be obtained from the original Bargmann inner product.

For $Q=2$, write $f_A(z)=z^TAz$, with $A=A^T$ and $A\mathbf1=0$. The physical monomial norms give

$$
B(f_A,f_B)=\frac2{\Delta^2}
\left[\operatorname{tr}(AB)-\frac1{\Delta+1}\sum_iA_{ii}B_{ii}\right].
\tag{K.8}
$$

To invert this form, use the invariant ansatz $K=\lambda(I_3+bI_2+cI_1)$. Let $H=I-\mathbf1\mathbf1^T/N$. As quadratic forms in $z$, the three terms have coefficient matrices $H\operatorname{diag}(W_i^2)H$, $WW^T$, and $(\sum W_i^2)H$. In (K.8), the coefficient of $\sum_iA_{ii}W_i^2$ cancels if $b=\Delta+2/N$. The remaining unwanted coefficient of $\operatorname{tr}(A)\sum W_i^2$ cancels if $c=1/[N(N\Delta+1)]$. The coefficient of $W^TAW$ is $2\lambda b/\Delta^2$; setting it to one gives $\lambda=\Delta^2/(2b)$. This proves (6.14) directly in the physical metric.

The Vandermonde example in (5.31) can be normalized by a short finite sum. At $N=3,\Delta=2$, a monomial $z_1^{a}z_2^{b}z_3^{c}$ has norm $1/[(a+1)(b+1)(c+1)]$. The distinct symmetric orbits in $\mathcal V_3^4$ are:

| Sorted exponents | Coefficient | Orbit size |
|:---:|---:|---:|
| $(8,4,0)$ | 1 | 6 |
| $(8,3,1)$ | -4 | 6 |
| $(8,2,2)$ | 6 | 3 |
| $(7,5,0)$ | -4 | 6 |
| $(7,4,1)$ | 12 | 6 |
| $(7,3,2)$ | -8 | 6 |
| $(6,6,0)$ | 6 | 3 |
| $(6,5,1)$ | -8 | 6 |
| $(6,4,2)$ | -22 | 6 |
| $(6,3,3)$ | 48 | 3 |
| $(5,5,2)$ | 48 | 3 |
| $(5,4,3)$ | -36 | 6 |
| $(4,4,4)$ | 90 | 1 |

Multiplying each squared coefficient by its orbit size and monomial norm, then summing, gives $15158/49$. The 61-term expansion and this exact sum were recomputed for this note. This finite check verifies a particular normalization; the all-$N$ kernel proof is K.1–K.4.

## K.6 Exact three-particle rank and the all-$N$ coefficient asymptotic

For $S_3$, the identity, transpositions, and three-cycles have traces on $\operatorname{Sym}^P(V)$ equal to $P+1,\epsilon_P,c_P$. Character averaging immediately gives (6.16). Extracting the $y^Q$ coefficient from (6.10) gives (6.17), because $h_Q(x,x^2)=\sum_{j=0}^Qx^{Q+j}$. The elementary count $2a+3b=r$ gives the displayed formula for $d_{\rm ch}(r)$. In the region $P\ge2Q+8$, every argument $P-12-Q-j\ge-4$; the same quasipolynomial formula equals zero at the possible negative values $-4,-3,-2,-1$. Substituting it in (6.17) and summing its residues modulo 6 cancels all $P$-dependent and periodic terms in $d_3-\kappa_3$, leaving (6.18). Counting the allowed bad pairs directly gives the same $r_Q$. This proves full eventual positive rank, without choosing a numerical rank threshold.

For $N\ge4$, take the $y^Q$ coefficient in the Molien formula and expand near $x=1$. Put $t=1-x$, $c_N=\binom N2$, $L=L_{N,Q}$, and $\tau=\tau_{N,Q}$. The identity contributes $L/(N!t^{N-1})$. A transposition contributes $\tau/[2N!t^{N-2}]$, and there are $c_N$ such permutations. All other cycle types have lower pole order. Thus

$$
\sum_Pd_N(P,Q)x^P
=\frac{L}{N!t^{N-1}}+\frac{c_N\tau}{2N!t^{N-2}}+O(t^{-(N-3)}).
\tag{K.9}
$$

The kernel series at fixed $Q$ is

$$
\frac{x^{J_N}h_Q(x,x^2,\ldots,x^{N-1})}{\prod_{r=2}^N(1-x^r)}.
\tag{K.10}
$$

By symmetry of $h_Q$, $h_Q(1,\ldots,1)=L$ and its derivative along these arguments is $(NQ/2)L$. Also

$$
\prod_{r=2}^N(1-x^r)^{-1}
=\frac1{N!t^{N-1}}\left(1+\frac{c_N}{2}t+O(t^2)\right).
$$

Consequently the kernel has the same leading pole as (K.9) and next coefficient $L(c_N/2-J_N-NQ/2)/N!$. Since $J_N=4c_N$, subtraction gives

$$
\sum_P(d_N-\kappa_N)x^P
=\frac{(7c_N+NQ)L+c_N\tau}{2N!}\,(1-x)^{-(N-2)}
+O((1-x)^{-(N-3)}).
\tag{K.11}
$$

It remains to check other roots of unity, since otherwise (K.11) would prove only an averaged asymptotic. At a primitive $m$-th root with $m\ge2$, a cycle product has pole order at most $\lfloor N/m\rfloor$, as does the kernel denominator. For $N\ge5$, the corresponding coefficient power is at most $N-4$. At $N=4,x=-1$, the only possible double pole in the Molien sum is cycle type $(2,2)$; its coefficient is $h_Q(1,-1,-1)/16$. The kernel has coefficient $h_Q(-1,1,-1)/16$ at the same double pole, and $x^{J_4}=1$ there. Symmetry of $h_Q$ makes them equal. The double pole cancels. Therefore coefficient extraction in (K.11) gives precisely (6.19) with an $O(P^{N-4})$ unaveraged error.

# Appendix L. Low pair channels, inverse systems, and complete protected eigenspaces

## L.1 The Fischer representation and the exact primary quotient

The map (6.31) is an isometry because the norm of $x^p/(\Delta)_p$ is $p!/(\Delta)_p$. Acting on monomials verifies

$$
\partial_z\mapsto x\partial_x^2+\Delta\partial_x,
\qquad z^2\partial_z+\Delta z\mapsto x.
\tag{L.1}
$$

The tensor map is permutation equivariant. Its positive scalar product is an algebraic Fischer product; it is not asserted to be integration in the product Gamma measure for arbitrary homogeneous polynomials. The Gamma–Laguerre relation for actual primaries was proved in G.5.

In this realization, with $D_{ij}=\partial_i-\partial_j$,

$$
C_{ij}=-x_ix_jD_{ij}^2+\Delta(x_i-x_j)D_{ij}+\Delta(\Delta-1).
\tag{L.2}
$$

At pair sum $s=x_i+x_j$ and ratio $u=x_i/s$, $D_{ij}s=0,D_{ij}u=1/s$. The pair-homogeneous eigenvectors are $s^TJ_k(u)$, where $J_k$ is the degree-$k$ Jacobi polynomial, with distinct eigenvalue $C_k$. Therefore absence of $k>r$ is exactly the root-derivative condition (6.32). Spectator monomials and pair total degrees form a direct sum, so they cannot conceal a higher channel by cancellation.

Let $\mathscr K_{m,P}$ be the homogeneous degree-$P$ common kernel of all $D_{ij}^m$. Both $S=\sum x_i$ and $B=\sum(x_i\partial_i^2+\Delta\partial_i)$ preserve it by (6.33). Since $S^\dagger=B$,

$$
\mathscr K_{m,P}
=(\mathscr K_{m,P}\cap\ker B)
\mathbin{\oplus^\perp}S\mathscr K_{m,P-1}.
\tag{L.3}
$$

Indeed a vector orthogonal to $S\mathscr K_{m,P-1}$ has lowering orthogonal to all of $\mathscr K_{m,P-1}$, while its lowering lies in that space; it must vanish. Multiplication by $S$ is injective. The root derivatives act only on sum-zero coordinates, so $\mathscr K_m=\mathbb C[S]\otimes\mathscr D_{m-1,N}$. This proves the physical primary identification with the inverse system on $S=0$. The orthogonal projector in (5.8), transported through (L.1), gives an explicit inverse to restriction. No assertion that ordinary coordinate centering is the physical projector is needed.

## L.2 Cubic root powers: matching upper and lower bounds

In the differential-operator algebra choose $u_i=t_i-t_N$, $1\le i\le n=N-1$. The cubic root-power ideal is generated by $u_i^3$ and $(u_i-u_j)^3$. Its quotient obeys

$$
u_i^3=0,\qquad u_i^2u_j=u_iu_j^2,\qquad u_i^2u_j^2=0.
\tag{L.4}
$$

The last identity follows by multiplying the middle relation by $u_i$. Every surviving monomial is square-free or has one doubled index, and that doubled index can be moved to any element of its nonempty support. Consequently a spanning count has Hilbert polynomial

$$
(1+t)^n+t((1+t)^n-1)=(1+t)^N-t.
\tag{L.5}
$$

This is only an upper bound until independence is proved. For a matching lower bound, let $M_P$ be the permutation representation on $P$-subsets of $[N]$, realized by square-free monomials in $N$ variables. Each is annihilated by every cubic root derivative, because its degree along a root direction is at most two. If $SG$ is multiaffine, then for every $i$, $\deg_{x_i}(SG)=1+\deg_{x_i}G\le1$, forcing $G$ to be constant. Restriction to $S=0$ therefore removes only the invariant line $\mathbb C S$ at degree one. These explicit inverse-system polynomials attain (L.5) in every degree. Equality proves completeness and the $S_N$-module description

$$
\mathscr D_{2,N,P}\cong
\begin{cases}V,&P=1,\\M_P,&P\ne1,\end{cases}
\tag{L.6}
$$

with $M_P=0$ outside $0\le P\le N$. The normal forms in the operator algebra were used only for an upper bound; their independence was established by actual inverse-system vectors.

## L.3 Quartic root powers and the full representation

The quartic generators imply

$$
u_i^4=0,\qquad2u_i^3u_j-3u_i^2u_j^2+2u_iu_j^3=0.
\tag{L.7}
$$

Multiplying the second relation by $u_i,u_j$ gives the two equations $-3A+2B=0$, $2A-3B=0$ for $A=u_i^3u_j^2,B=u_i^2u_j^3$. Their determinant is five, so $A=B=0$ in characteristic zero. Also

$$
u_i^2u_j^2=\frac23(u_i^3u_j+u_iu_j^3).
\tag{L.8}
$$

Three square factors vanish after using this identity, and a cube together with any square vanishes. Hence every monomial is spanned by a square-free monomial, one squared index with the remaining exponents one, or one cubed index with the remaining exponents one. For support size $s$ these types have counts $1,s,s$, in degrees $s,s+1,s+2$. The upper Hilbert polynomial is

$$
(1+t)^n+(t+t^2)nt(1+t)^{n-1}=(1+nt^2)(1+t)^n.
\tag{L.9}
$$

Let $R_j$ be the permutation representation on marked $j$-subsets $(A,i)$, $i\in A$. Define $\mathcal E_P=M_P\oplus R_{P-1}$, realized by square-free monomials and monomials with one squared variable. Each has root degree at most three and therefore belongs to the quartic inverse system. If $SG\in\mathcal E_P$, its degree in every variable is at most two, hence $G$ is multiaffine. Conversely $SM_{P-1}\subset\mathcal E_P$. Thus restriction has the exact equivariant sequence

$$
0\longrightarrow M_{P-1}\xrightarrow{\times S}
M_P\oplus R_{P-1}\longrightarrow\mathscr D_{3,N,P}\longrightarrow0.
\tag{L.10}
$$

Its image dimension is

$$
\binom NP+(P-2)\binom N{P-1},
\tag{L.11}
$$

which equals the independent upper bound (L.9), including endpoints with the usual zero-binomial convention. This proves (L.10) and the complete quartic classification. Over characteristic zero, the sequence splits as a representation. For $j=P-1$ in its valid range, the marked-subset representation contains the induced permutation representation of $S_j$, which splits as $\mathbf1\oplus V_j$. One can therefore write the positive direct sum

$$
\mathscr D_{3,N,P}\cong M_P\oplus
\operatorname{Ind}_{S_j\times S_{N-j}}^{S_N}(V_j\boxtimes\mathbf1),
\tag{L.12}
$$

with $V_1=0$. The character subtraction in (L.10) consequently describes an actual vector space, not negative-dimensional formal pieces.

## L.4 Bose intersections and all finite endpoints

The trivial representation occurs once in $M_P$, $0\le P\le N$, except that the degree-one quotient is $V$ and has no invariant. This gives the chiral series in (6.36). For $Q=1$, the right primary is exactly $V$. The multiplicity of $V$ in an induced subset module equals the dimension of its stabilizer-fixed vectors. A fixed vector is constant on each nonempty stabilizer block and has one total-sum constraint. Hence

$$
[V:M_j]=\mathbf1_{1\le j\le N-1},\qquad
[V:R_j]=\mathbf1_{j\ge2}+\mathbf1_{j\le N-1},\quad1\le j\le N.
\tag{L.13}
$$

Substituting (L.13) in (L.6) and (L.10) yields exactly the two $Q=1$ generating functions in (6.36). In particular the quartic space has one ladder at $P=1,\ldots,N-1$ and one at $P=3,\ldots,N+1$. This includes $N=2$, where only $P=1,3$ survive. No stable-$N$ assumption is used.

Explicit inverse-system representatives can also be given. Put $\eta_i=y_i-N^{-1}\sum_jy_j$, and

$$
A_P=\sum_i\eta_ix_i e_{P-1}(x_{\widehat i}),\qquad
B_P=\sum_i\eta_ix_i^2e_{P-2}(x_{\widehat i}).
\tag{L.14}
$$

After restriction modulo $S$ and the physical homogeneous primary projection, these are a complete basis on their respective ladders. At $P=2$, $A_2=-B_2$; at $P=N,N+1$, use $B_P$, with $B_{N+1}=(\prod_i x_i)\sum_i\eta_ix_i$. For independence in the overlap, suppose a linear combination before restriction equals $SG$. The restriction-kernel argument makes $G$ multiaffine. Its invariant right-standard component is proportional to

$$
D_{P-1}=\sum_{|C|=P-1}\left(\sum_{i\in C}\eta_i\right)x_C.
$$

The square-free part of $SD_{P-1}$ is $(P-1)A_P$, while the coefficient at a squared marked variable $(C,i)$ is $\sum_{j\in C}\eta_j$. The corresponding coefficient in $B_P$ is $\eta_i$. For $2\le|C|\le N-1$ these are independent linear forms on $\sum\eta_i=0$. Hence the relation is trivial in the overlap. The endpoint identities stated above are the only exceptions. The physical quotient isomorphism (L.3) preserves this independence.

For arbitrary right degree $Q$, the same full module descriptions still give exact intersection counts. For valid nonempty block sizes $b_1,\ldots,b_s$, define

$$
Z_{b_1,\ldots,b_s}(y)=\frac{1-y}
{\prod_{\nu=1}^s\prod_{j=1}^{b_\nu}(1-y^j)}.
\tag{L.15}
$$

The denominator is the ring of polynomials invariant under the Young subgroup; the numerator removes the one global sum variable, which is invariant and a nonzero divisor. Frobenius reciprocity gives, for cubic cutoff and $P\ne1$, $Z_{P,N-P}$; at $P=1$, it gives $Z_{1,N-1}-Z_N$. For quartic cutoff it gives

$$
Z_{P,N-P}+Z_{1,P-2,N-P+1}-Z_{P-1,N-P+1}.
\tag{L.16}
$$

Invalid representation terms are zero; a zero-size block is omitted only in a term whose representation exists. Coefficient extraction in $y$ gives the exact Bose intersection dimension. At $Q\ge2$, this is an intersection theorem, not automatically an eigenspace theorem: the physical kernel must separately be affine on every additional right channel. This condition is precisely what is automatic in the chiral and $Q=1$ applications, and is not automatic in general.

## L.5 Projected seeds, covectors, and the critical scalar quotient

In the stable occupation algebra, let $a_{pq}$ be a formal creation variable, $a_{00}=1$, and define centered generators

$$
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij}.
\tag{L.17}
$$

These are formal occupation products, rather than pointwise products of averaged $N$-body wavefunctions. At $P+Q\le N$, they supply independent primary coordinates. The two coefficient functionals

$$
\ell_1=[a_{10}^{P-1}a_{11}],\qquad
\ell_2=[a_{10}^{P-2}a_{21}]
\tag{L.18}
$$

act on $c_{p1}\prod_i c_{a_i0}$, $p+\sum_i a_i=P$, by

$$
\ell_1=(-1)^{P+1}p\prod_i(1-a_i),\qquad
\ell_2=(-1)^P\binom p2\prod_i(1-a_i).
\tag{L.19}
$$

Expanding (L.17) proves these formulas directly: obtaining $a_{11}$ or $a_{21}$ uses the indicated term from the right-carrying factor, while every chiral factor contributes its $a_{10}$-power coefficient $1-a_i$. On $c_{P,1}$ and $c_{1,1}c_{P-1,0}$, the determinant is $\binom P2(2-P)$, nonzero for $P\ge3$. This proves independence of the two restricted covectors and of their physical Gram-dual states.

For a primary coordinate Gram $\Gamma$, those vectors are $v_i=\Gamma^{-1}\ell_i^\dagger$. The projected seeds (6.22) are proportional to them, with proportionality factors equal to the averaged seed norms

$$
\|T_1\|^2=\frac{(P-1)!}{\Delta^{P+1}(N)_{\underline P}},\qquad
\|T_2\|^2=\frac{2(P-2)!}{\Delta^P(\Delta+1)(N)_{\underline{P-1}}}.
\tag{L.20}
$$

These follow by counting the distinct occupation orbit and multiplying its one-particle norms. If $L$ has rows $\ell_1,\ell_2$, the orthogonal projector onto their selected eigensubspace is

$$
\Gamma^{-1}L^\dagger(L\Gamma^{-1}L^\dagger)^{-1}L.
\tag{L.21}
$$

For a generic abstract kernel obeying (6.25), this may be only part of a larger accidentally coincident eigenspace. For the Einstein critical kernel, the positive-defect and inverse-system classification proves it is the complete minimum eigenspace in the overlap range.

The same information can be packaged as a scalar quotient. Define an evaluation map by

$$
\mathcal E(c_{a0})=(1-a)(-t)^a,
\quad
\mathcal E(c_{p1})=p(-t)^{p-1}u
+\binom p2(-t)^{p-2}(v+2tu),
\tag{L.22}
$$

and extend multiplicatively on the $Q=1$ algebra. More precisely, for a homogeneous $f$ of left degree $P$,

$$
\mathcal E(f)=(\ell_1(f)+2\ell_2(f))t^{P-1}u+\ell_2(f)t^{P-2}v.
$$

This fixes the triangular coordinate change between the two functionals and the displayed $(u,v)$ basis. With $\mathcal D=t\partial_t+u\partial_u+2v\partial_v$, the image has $\mathcal D=P$. At the critical mass,

$$
\mathcal E W_N=
\left[\binom N2 a+N\left(\sigma_{11}+\frac{\sigma_{20}}2(\mathcal D-1)\right)
+K\mathcal D(\mathcal D-1)\right]\mathcal E,
\tag{L.23}
$$

where

$$
a=\frac{13\Delta_*-20}{4},\quad
\sigma_{20}=\frac{3(17\Delta_*-36)}{32},\quad
\sigma_{11}=-\frac{215\Delta_*-124}{16},\quad
K=\frac{3(4-9\Delta_*)}{32}.
\tag{L.24}
$$

There is an all-degree proof without enumerating incoming many-body matrix rows. The affine-support lemma makes the physical Gram duals of both coefficient functionals eigenvectors with the same coefficient (6.24), so self-adjointness makes the functionals left eigenvectors. Formula (L.19) identifies their entire evaluation image. Substitution of the four Einstein values at $\Delta_*$ gives (L.23)–(L.24). Conversely the second functional can satisfy this displayed scalar quotient for a general four-channel kernel only if the fourth channel has the affine value. One local coefficient testing the incompatible incoming source is

$$
K_{10,21;30,01}=\frac{3\Delta\mathcal R}{4(2\Delta+1)(2\Delta+3)}.
\tag{L.25}
$$

Here $K$ is expressed in averaged unordered-orbit coordinates. It is obtained by the finite differential Casimir interpolation (5.6) on pair degree $(3,1)$; no higher pair channel can enter. Its prefactor is nonzero throughout $\Delta>1$, so the unwanted row vanishes precisely when $\mathcal R=0$. Equivalently, the nonzero second seed in the two-particle $(3,1)$ primary has value $\gamma_{31}$, and equality to (6.24) forces the same relation. This proves the condition for the specified quotient/families, without asserting necessity for unrelated spectral coincidences.

## L.6 From positive defects to the complete minimum, and the scope of counterexamples

Subtract the affine operator (6.20) pairwise. The exact remainders (6.30), together with their strictly increasing plateaus, prove that the residual is positive in the chiral sector for all $\Delta>1$, and in $Q=1$ for $1<\Delta\le\Delta_*$. Its zero support is exactly the cubic or quartic low-channel support already classified. The norm-sum argument (6.1) therefore turns the full inverse-system intersections into complete lowest eigenspaces. No extra state with that same energy can occur in the block, because it too would have to lie in every pair zero-defect space. This proves the multiplicity theorem, not just an exhibited set of eigenstates.

For $\Delta>\Delta_*$, the negative $31$ remainder supplies the stated two-particle counterexample to the proposed lower bound. At a generic mass, (6.37) separately shows why the full low-channel span need not be invariant: the exact covector $(-78,15,-20)$ annihilates $v_1,v_2$ but has value $19200$ on $Wv_2$. The determinant is consequently nonzero. This is compatible with a protected one-dimensional eigenline.

A proposed nonchiral extension with disjoint unit left and right excitations has pair support $00,20,02,11$. For a reflection-symmetric kernel, one affine pair-Casimir polynomial would require $\gamma_{11}-\gamma_{00}=2\Delta(\gamma_{20}-\gamma_{00})/(2\Delta+1)$. For Einstein gravity the difference is

$$
-\frac{12\Delta^2(10\Delta^2+9\Delta-5)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)}<0.
\tag{L.26}
$$

This rules out that affine-support proof for this seed. It does not prove that the seed can never be an eigenvector through another mechanism. Similarly the fifth-power inverse-system counterexample in Chapter 6 rules out the proposed small spanning family, not the existence of a more complicated higher-cutoff classification. The cubic and quartic results above are proved directly for the root-only ideals; no zonotopal theorem is extrapolated beyond its stated range [Lenz].

# Appendix O. Exact algebraic obstructions and their limited conclusions

## O.1 Finite-field certificates and radical formulas

The Galois statement in Chapter 6 uses the following standard finite-field criterion [Milne]. For an integral primitive polynomial whose leading coefficient and discriminant are nonzero modulo a prime, the degrees of its distinct irreducible factors modulo that prime are the cycle lengths of some element of its Galois group over $\mathbb Q$. An irreducible reduction of full degree also proves irreducibility over $\mathbb Q$. These hypotheses are checked exactly for (6.56) at 23 and 17 by finite polynomial arithmetic in the retained certificate. The degrees are $5$ and $(2,3)$.

The group argument can be finished without a classification table. A transitive action of prime degree admits no nontrivial block size, so is primitive. Cubing the $(2,3)$-cycle element gives a transposition. Draw a graph whose edges are all conjugates of that transposition. Its connected components are permuted by the group and form a block system. Primitivity makes the graph connected. Transpositions along the edges of a connected graph generate every permutation: along a path, conjugation produces a transposition of its endpoints, and arbitrary transpositions generate the symmetric group. Hence the original Galois group is $S_5$, which is not solvable. The corresponding roots cannot all be expressed by radicals over $\mathbb Q$. The proof says nothing against exact algebraic representation or root isolation.

The retained package also contains a degree-six physical example at $N=4,(P,Q)=(4,2),\Delta=2$, with its exact finite-field certificate. It is supplementary evidence of algebraic complexity; the quintic already proves the obstruction needed here. It is not used to infer a universal Galois group for every finite block or every mass.

## O.2 Differential construction of the proposed labelled residues

Let $w_k$ be arbitrary pair values on odd $k$, while the even values are prescribed by the chiral Einstein kernel. On three-particle translation-invariant homogeneous polynomials of degree $T$, use $x=z_1-z_3,y=z_2-z_3$, so $\partial_1=\partial_x,\partial_2=\partial_y,\partial_3=-\partial_x-\partial_y$. Formula (5.5) gives explicit $(T+1)\times(T+1)$ Casimir matrices. Spectral interpolation gives

$$
w_{ij}=\sum_{k=0}^Tw_k
\prod_{\substack{0\le r\le T\\r\ne k}}\frac{C_{ij}-C_rI}{C_k-C_r}.
\tag{O.1}
$$

This is a complete labelled primary space, including pair-odd channels. Let

$$
\Omega_{ij}=w_{ij}+\beta C_{ij}+\alpha I.
\tag{O.2}
$$

A nonzero common rescaling of $w$ can be divided out, so (O.2) covers that freedom. The scalar $\alpha$ drops out of the commutator. The three-site Casimir identity makes $C_{13}+C_{23}$ diagonal in the pair-$12$ basis. Therefore its off-diagonal part is independent of $\beta$.

## O.3 Generic Casimir shifts

The $02$ difference of shifted residues is $c-2\beta(2\Delta+1)$, where $c$ is (6.39). Unless

$$
\beta=\beta_*=
\frac{\Delta(2\Delta^2+7\Delta+2)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)},
\tag{O.3}
$$

the degree-$2,3$ $02$ commutator equations from (O.1) force

$$
\begin{aligned}
w_1&=-\frac{2\Delta^2(\Delta+1)(16\Delta^2+6\Delta-19)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)},\\
w_3&=-\frac{2\Delta(16\Delta^4+26\Delta^3+7\Delta^2+6\Delta+6)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\end{aligned}
\tag{O.4}
$$

Substitution in the degree-four $02$ entry gives the unshifted nonzero value

$$
\frac{3\Delta^2(\Delta+2)(\Delta+3)(\Delta+4)(3\Delta+5)(2\Delta^2+7\Delta+2)}
{(2\Delta-1)^2(2\Delta+3)^2(2\Delta+5)^2}>0.
\tag{O.5}
$$

For the shifted residues this is multiplied by $[c-2\beta(2\Delta+1)]/c$, nonzero in the present case. Equations (O.4)–(O.5) are finite rational consequences of (O.1): expand in $x^{T-r}y^r$, interpolate the distinct $C_k$, change to the pair-$12$ eigenbasis generated by (F.1), and take the indicated entries. The construction fixes their normalization and supplies an independent executable route to each entry.

## O.4 The exceptional shift is also impossible

At $\beta_*$, residues 0 and 2 coincide, so the previous $02$ test is identically inconclusive. This exceptional branch needs a separate argument. Their difference from residue 4 is

$$
\Omega_0-\Omega_4=\Omega_2-\Omega_4
=-\frac{2\Delta(\Delta+4)}{2\Delta-1}\ne0.
\tag{O.6}
$$

At degree four, the $04$ and $24$ conditions form a linear system for $w_1,w_3$ with determinant $-3\Delta/(2\Delta+3)\ne0$. With $D_4=(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)$, they force

$$
\begin{aligned}
w_1&=-\frac{\Delta^2(\Delta+1)(64\Delta^3+182\Delta^2-25\Delta-194)}{D_4},\\
w_3&=-\frac{\Delta(64\Delta^5+262\Delta^4+277\Delta^3+81\Delta^2+80\Delta+60)}{D_4}.
\end{aligned}
\tag{O.7}
$$

These values also make shifted odd residues 1 and 3 coincide, so a shorter degree-three odd test does not close the argument. At degree five the $04$ equation has coefficient $(\Delta+1)(3\Delta+8)/[8(2\Delta+5)(2\Delta+7)]\ne0$ on $w_5$, and forces

$$
w_5=-\frac{\Delta(64\Delta^5+230\Delta^4-75\Delta^3-1239\Delta^2-1800\Delta-640)}{D_4}.
\tag{O.8}
$$

After substitution, the $24$ entry of $w_{13}+w_{23}$ remains $3\Delta(\Delta+1)(\Delta+4)(3\Delta+8)/[(2\Delta-1)(2\Delta+3)(2\Delta+5)]>0$. Multiplying by (O.6) gives

$$
[\Omega_{12},\Omega_{13}+\Omega_{23}]^{T=5}_{24}
=-\frac{6\Delta^2(\Delta+1)(\Delta+4)^2(3\Delta+8)}
{(2\Delta-1)^2(2\Delta+3)(2\Delta+5)}<0.
\tag{O.9}
$$

At $\Delta=2$ this is $-64$. All denominators and the displayed uniqueness coefficients are nonzero throughout the physical interval. The argument is therefore pointwise for every $\Delta>1$, rather than a generic calculation that might miss an isolated mass. It closes precisely the residue ansatz (O.2). It does not classify all possible commuting many-body algebras.

# Appendix CL. Proofs of the fixed-degree cluster hierarchy

The finite pair coefficients, the orthogonal primary decomposition, and the exact physical kernel used here are the results of the finite-theory chapters. This appendix proves all subsequent asymptotic and operator statements. Internal source blocks always have the oriented residual $A_m(p,q)=W_m(p,q)-b_m(q)I$; in particular, no chiral reordering is implicit.

## CL.A. Normalized Clebsch–Gordan maps and the endpoint Racah estimate

### CL.A.1. Polynomial normalization

Let $D_a^+$ denote the positive discrete series with a unit lowest-weight vector $v_a$, lowering operator $L$, raising operator $R=L^*$, and
$$
LR^rv_a=r(2a+r-1)R^{r-1}v_a,\qquad
\|R^rv_a\|^2=r!(2a)_r.
$$
The scalar particles have $h=\Delta/2>1/2$. A cluster of $s$ particles and internal degree $p$ has lowest weight $sh+p$. All effective weights appearing below therefore exceed $1/2$.

For unit lowest-weight vectors $A,B$ of weights $a,b$, define
$$
\mathcal C_m(A,B)=
\sum_{r=0}^m(-1)^r\binom mr
\frac{R_A^rA\otimes R_B^{m-r}B}{(2a)_r(2b)_{m-r}}.
\tag{CL.A1}
$$
The two contributions to each coefficient in $(L_A+L_B)\mathcal C_m$ cancel, because their ratio is
$$
\frac{c_{r+1}}{c_r}
=-\frac{(m-r)(2b+m-r-1)}{(r+1)(2a+r)}.
$$
Thus (CL.A1) is a lowest-weight vector. Orthogonality of separate descendant degrees gives
$$
\|\mathcal C_m(A,B)\|^2
=m!\sum_{r=0}^m\binom mr\frac1{(2a)_r(2b)_{m-r}}
=\frac{m!(2a+2b+m-1)_m}{(2a)_m(2b)_m}.
\tag{CL.A2}
$$
The last equality follows by multiplying by $(2b)_m$, using
$(2b)_m/(2b)_{m-r}=(-1)^r(1-2b-m)_r$, and applying the terminating binomial identity
${}_2F_1(-m,c;d;1)=(d-c)_m/(d)_m$.
Repeated normalized maps yield orthonormal binary coupling bases. They also give
$$
(D_h^+)^{\otimes s}
=\bigoplus_{p\geq0}V_s(p)\otimes D_{sh+p}^+,\qquad
\dim V_s(p)=\binom{p+s-2}{s-2}\quad(s\geq2).
\tag{CL.A3}
$$
Indeed the coefficient of $x^n$ in $(1-x)^{-s}$ counts all level-$n$ states, and multiplication by $1-x$ removes their unique total descendants. For a singleton, $V_1(0)=\mathbb C$ and all other multiplicity spaces vanish.

### CL.A.2. Exact finite recoupling identity

For three factors of lowest weights $a,b,c$ and total relative degree $R$, let $u$ label the $a,b$ coupling and $v$ the $b,c$ coupling. Choose real phases of the two orthonormal trees so that their Racah overlap is
$$
\begin{split}
F_{uv}^{(a,b,c;R)}
={}&\sqrt{\Omega(u;c,b,a;R)\Omega(v;a,b,c;R)}\\
&\times
\sum_{j=0}^{\min(u,v)}
\frac{(-v)_j(v+2b+2c-1)_j(-u)_j(u+2a+2b-1)_j}
{(2b)_j(R+2a+2b+2c-1)_j(-R)_j\,j!},
\end{split}
\tag{CL.A4}
$$
where
$$
\Omega(n;a,b,c;R)=
\binom Rn
\frac{(2n+2b+2c-1)(2b)_n
(R+2a+2b+2c-1)_n(2a)_{R-n}}
{(2c)_n(2b+2c+n-1)_{R+1}}.
\tag{CL.A5}
$$
Admissibility is $0\leq u,v\leq R$. The sum terminates before the apparent singularity of $(-R)_j$. Formula (CL.A4) is the normalized one-variable Racah identity, obtained by inserting (CL.A1) twice, summing the shared descendant index, and applying the same terminating binomial identity. Equivalently, it is the orthogonal Racah normalization with parameters $c_i=2h_i-1$ in [CrampeEtAl2024, §2, equations (2.2)–(2.5)]. Those equations state the finite hypergeometric identity and weighted orthogonality; (CL.A1)–(CL.A2) identify its Hilbert-space normalization here. A change of tree phases multiplies rows and columns by signs and does not change any estimate below. The physical permutation signs are restored explicitly in CL.I.

For completeness, a reproducible finite identity check requires no recoupling implementation: expand the two trees with (CL.A1), compute their inner product using $\|R^rv_h\|^2=r!(2h)_r$, divide by (CL.A2) at both vertices, and square. This gives exactly the square of (CL.A4), over the rational numbers for rational weights. The delivered verification scripts perform this check, independently of the original matrix engine. The mathematical input is the all-index terminating identity, not those finitely many checks.

### Lemma CL.A.3. Finite endpoint rectangle

For fixed $a,b,c>1/2$ and fixed nonnegative $u,v$,
$$
F_{uv}^{(a,b,c;R)}
=\sqrt{c_u(c,b,a)c_v(a,b,c)}\,R^{-2b}
\bigl(1+O(R^{-1})\bigr),
\tag{CL.A6}
$$
where
$$
c_n(a,b,c)=
\frac{(2n+2b+2c-1)(2b)_n\Gamma(2b+2c+n-1)}
{n!(2c)_n\Gamma(2a)}>0.
\tag{CL.A7}
$$
The estimate is uniform on any fixed finite set of $u,v,a,b,c$.

**Proof.** In (CL.A4), the $j=0$ term is one. Each $j\geq1$ term has denominator of degree $2j$ in $R$ and numerator independent of $R$, hence the finite sum is $1+O(R^{-2})$. Writing all long Pochhammer symbols in (CL.A5) as Gamma ratios gives
$$
\Omega(n;a,b,c;R)
=c_n(a,b,c)R^{2a-2b-2c}(1+O(R^{-1})).
$$
For example, the factors $\binom Rn(R+2a+2b+2c-1)_n$ contribute $R^{2n}/n!$, whereas the long Gamma ratio contributes $R^{2a-2b-2c-2n}$. The two square-root powers in (CL.A4) add to $-2b$. Finitely many choices have a common constant and a common large-$R$ threshold. Enlarging that constant controls all remaining admissible $R$. ∎

In particular, for three scalar leaves,
$$
|F_{kr}^{(h,h,h;t)}|\leq C_{Q,\Delta}(1+t)^{-\Delta}
\quad(0\leq k,r\leq Q+2).
\tag{CL.A8}
$$
For effective clusters, the exponent is twice the middle effective weight, rather than twice the weight of an arbitrarily chosen leaf.

## CL.B. Gram estimates, atomic measures and descendants

Let $M=\binom N2$, and let $F$ be the orthonormal labelled-primary distinguished-pair frame, internally invariant under $S_2\times S_{N-2}$. Its columns have pair labels in $\mathcal B_Q$. Averaging $S_N$ by the possible images of that distinguished pair gives
$$
T:=MF^*p_BF=I+2(N-2)R_1+\binom{N-2}{2}R_0.
\tag{CL.B1}
$$
Here $R_1$ and $R_0$ are the compressed representatives of overlapping and disjoint pair exchanges. The finite frame factorization has $A_N=XX^*$ and $B=X^*X=D^{1/2}TD^{1/2}$ for $X=\sqrt M\,p_BFD^{1/2}$. Hence their strictly positive eigenvalues agree, including multiplicities, while their kernels generally do not.

Write $P_F=FF^*\leq P_{12}^{\rm bad}$. For a unitary pair-exchange representative $U$,
$$
\|F^*UF\|_{\rm HS}^2
=\operatorname{tr}(P_FUP_FU^*)
\leq\operatorname{tr}(P_{12}^{\rm bad}P_{U(12)}^{\rm bad}).
\tag{CL.B2}
$$
To justify the inequality without commutativity, if $0\leq X\leq Y$ and $Z\geq0$, then
$\operatorname{tr}(XZ)\leq\operatorname{tr}(YZ)$, since
$\operatorname{tr}((Y-X)Z)=\operatorname{tr}(Z^{1/2}(Y-X)Z^{1/2})\geq0$.
Apply this successively to the two factors.

For disjoint pairs, fixing two pair labels leaves $N-2$ effective discrete-series factors. By (CL.A3), the upper trace equals
$$
S_0=\sum_{\alpha=(k,\ell),\,\beta=(r,v)\in\mathcal B_Q}
\binom{P-k-r+N-4}{N-4}
\binom{Q-\ell-v+N-4}{N-4}.
\tag{CL.B3}
$$
An inadmissible binomial is zero. The sum is finite at fixed $Q$, so $S_0=O(P^{N-4})$.

For overlapping pairs, decompose their three-particle union at degrees $(t,u)$. Put
$$
c_{t,u}=\sum_{\alpha=(k,\ell),\,\beta=(r,v)\in\mathcal B_{t,u}}
|F_{kr}^{(h,h,h;t)}F_{\ell v}^{(h,h,h;u)}|^2,\qquad
\mathcal B_{t,u}=\{(k,\ell)\in\mathcal B_u:k\leq t\}.
$$
The trace is
$$
S_1=\sum_{t=0}^P\sum_{u=0}^Q
\binom{P-t+N-4}{N-4}
\binom{Q-u+N-4}{N-4}c_{t,u}.
\tag{CL.B4}
$$
All right-hand labels lie in a fixed finite set; (CL.A8) gives
$c_{t,u}=O((1+t)^{-2\Delta})$. This sequence is summable, and bounding the left binomial by $C(1+P)^{N-4}$ proves $S_1=O(P^{N-4})$. In particular,
$$
\|B-D\|_{\rm HS}^2
\leq2a_{\max}^2
\left(4(N-2)^2S_1+\binom{N-2}{2}^{\!2}S_0\right).
\tag{CL.B5}
$$
The same reasoning without $a_{\max}^2$ bounds $\|T-I\|_{\rm HS}^2$. This proves (CL.3).

A fixed distinguished pair label has exactly
$$
n_{k\ell}(P,Q)=H_{N-2}(P-k,Q-\ell)
\tag{CL.B6}
$$
auxiliary copies, where $H_m$ is the **full** spectator Bose level dimension. Indeed, each internal spectator primary couples to the distinguished pair with unique nonnegative left and right relative degrees. Summing over those relative degrees telescopes the primary multiplicities to $H_m$.

The full Bose Molien series is
$$
\sum_{p,q\geq0}H_m(p,q)x^py^q
=\frac1{m!}\sum_{\sigma\in S_m}
\frac1{\det(1-x\sigma)\det(1-y\sigma)}.
\tag{CL.B7}
$$
For fixed $q$ and $m=N-2\geq2$, the identity permutation has an $x=1$ pole of order $m$, with leading coefficient
$\binom{q+m-1}{m-1}/m!$. Every other permutation has fewer than $m$ cycles. At a root of unity other than one, even the largest possible pole has order at most $m-1$. Partial fractions therefore give
$$
H_m(p,q)=
\frac{\binom{q+m-1}{m-1}}{m!(m-1)!}p^{m-1}
+O(p^{m-2}).
\tag{CL.B8}
$$
Consequently $d_{\rm aux}\asymp P^{N-3}$, with leading coefficient
$Z_{N,Q}/((N-2)!(N-3)!)$.

Every zero of $B$ corresponds, by congruence with invertible $D^{1/2}$, to a zero of $T$. Each such zero is an eigenvalue $-1$ of $K=T-I$, so
$$
z_{\rm aux}\leq\|K\|_{\rm HS}^2=O(P^{N-4}).
\tag{CL.B9}
$$
Thus the physical positive rank is
$$
\operatorname{rank}A_N(P,Q)
=\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
\tag{CL.B10}
$$

For Hermitian matrices $B,D$ of the same dimension, the Hoffman–Wielandt inequality gives an eigenvalue matching whose total squared displacement is at most $\|B-D\|_{\rm HS}^2$ [HoffmanWielandt1953]. Since $0\leq T\leq MI$, every eigenvalue in this comparison lies in a fixed bounded interval. Dividing by $d_{\rm aux}$ gives matching cost $O(P^{-1})$. Removing the $O(P^{-1})$ fraction of auxiliary zeros, renormalizing the remaining measure, and replacing the exact weights (CL.B6) by their leading ratios each costs at most a fixed squared diameter times $O(P^{-1})$. The square root gives (CL.2). An eigenvalue farther than $\varepsilon$ from every atom contributes at least $\varepsilon^2$ to the matching cost, proving the outlier count.

The physical primary dimension grows as $P^{N-2}$, with positive leading coefficient from the identity term of the primary Molien series. Equation (CL.B10) is one power smaller. Therefore the entire primary correction measure tends to its baseline atom. Summing those primary dimensions over $0\leq p\leq M_L$ and $0\leq q\leq M_R$ gives the weight in (CL.4), using
$$
\sum_{q=0}^{M_R}\binom{q+N-2}{N-2}
=\binom{M_R+N-1}{N-1}.
$$
For nonsaturated descendants, sum (CL.B10) instead. The leading left-degree sum is common to all $q,k,\ell$, leaving weights proportional to $\binom{q-\ell+N-3}{N-3}$. Summing the squared matching estimates gives $O(M_L^{N-3})$ against total positive descendant count $O(M_L^{N-2})$, hence again a $W_2$ rate $O(M_L^{-1/2})$. The finitely many parent blocks with $p<q$ have no effect on this limit, but their finite spectra still require (CL.1).

As a further consequence, for every fixed $s>0$,
$$
\frac1{\operatorname{rank}A_N}
\log\det(sI+A_N|_{\operatorname{im}A_N})
\longrightarrow\sum_{\alpha\in\mathcal B_Q}\omega_\alpha\log(s+a_\alpha),
$$
and the normalized resolvent trace tends to
$\sum_\alpha\omega_\alpha/(s+a_\alpha)$. Both test functions are Lipschitz on the common bounded spectral interval. No $s=0$ conclusion follows from this argument alone; the four-body zero separation is proved separately in CL.J.

## CL.C. Overlapping clusters, degree cutoffs and the partition join

Work first on the labelled direct sum with global right degree at most $Q$, using the even-pair extension that is zero on odd $k+\ell$. Its internally Bose corners are the physical residuals. The local algebra $\mathcal C_S^{\leq Q}$ acts on internal multiplicities, preserves both total cluster degrees, and is scalar on each descendant representation. Its norm is the supremum of the finite internal matrix norms. The $c_0$ condition means that these norms tend to zero as the internal left degree tends to infinity. For a singleton the only internal degree is zero.

Let $E_S(L)$ be the projection onto internal left degree at most $L$ in $S$; the right degree is already bounded. If $X\in\mathcal C_S$, then
$\|X-XE_S(L)\|\to0$. The same projection can be placed on either side because it is central in the local degree-preserving algebra.

Suppose first that $S\subseteq T$. Every bounded $S$-local operator commutes with the total $T$ action. If $Y\in\mathcal C_T$, the product $XY$ has $T$-degree tail bounded by $\|X\|$ times the tail of $Y$, so it is in $\mathcal C_T$. The reversed inclusion is analogous. This handles nested sets.

Now assume that neither $S$ nor $T$ contains the other, and set
$$
A=S\setminus T,\qquad C=S\cap T,\qquad B=T\setminus S.
$$
All three sets are nonempty. The separate internal Casimirs of $A,C,B$ commute with $E_S(L)$ and $E_T(M)$: each is nested in or disjoint from the cluster concerned. In a nonzero part of $E_S(L)E_T(M)$, positivity of the binary coupling degrees forces
$$
p_A\leq L,\qquad p_C\leq\min(L,M),\qquad p_B\leq M.
\tag{CL.C1}
$$
There are therefore only finitely many choices of all three internal degree and multiplicity labels. Fix one choice. Its effective left weights are
$$
a=|A|h+p_A,\qquad c=|C|h+p_C,\qquad b=|B|h+p_B.
$$
In the order $A,C,B$, the two cutoffs are fixed endpoint ranges
$$
u\leq L-p_A-p_C,\qquad v\leq M-p_C-p_B.
$$
On union degree $J$, their relative total degree is $R=J-p_A-p_C-p_B$. Their overlap matrix is a fixed finite rectangle of the Racah matrix $F^{(a,c,b;R)}$. By CL.A,
$$
\|E_S(L)E_T(M)\|_{J}
\leq C_{L,M,N,Q,\Delta}(1+J)^{-2c}
\leq C_{L,M,N,Q,\Delta}(1+J)^{-|C|\Delta}.
\tag{CL.C2}
$$
The matrix norm is bounded by its finite Frobenius norm. The right chiral factor has bounded degree and finite multiplicity, so it changes only the constant. Taking the maximum over the finitely many labels in (CL.C1) proves (CL.C2) on the entire degree-$J$ block.

For arbitrary $X\in\mathcal C_S$, $Y\in\mathcal C_T$, choose finite cutoffs with
$\|X-XE_S\|<\varepsilon$ and $\|Y-E_TY\|<\varepsilon$. Then
$$
XY=XE_SE_TY+\mathcal E,\qquad
\|\mathcal E\|\leq\varepsilon(\|X\|+\|Y\|).
\tag{CL.C3}
$$
The product is covariant under the union action, hence degree-preserving on union internal multiplicities. Its union-degree norm has limsup at most the right side of (CL.C3), by (CL.C2). Letting $\varepsilon\downarrow0$ proves $XY\in\mathcal C_{S\cup T}$.

For partitions, multiply their local factors in the given order. Factors on disjoint label sets commute, so one may bring together the successive factors in a connected component of the overlap graph. Whenever two factors overlap, replace their product by a factor on their union using the result just proved. Do not interchange overlapping factors. At the end, the surviving blocks are exactly the blocks of $\pi\vee\tau$, proving (CL.6). Linear combinations and norm closure preserve this inclusion.

For the one-block partition, global primaries remove the descendant representation, leaving a direct sum of finite matrices indexed by $P$, with norm tending to zero. Such an operator is compact: truncating at $P\leq R$ is finite rank and the norm error tends to zero. Conversely, a degree-preserving compact operator has block norms tending to zero, since otherwise unit vectors in distinct degree blocks would give an orthonormal sequence whose images do not tend to zero. This identifies the compact component exactly.

## CL.D. Möbius functional calculus and the whole-block upper bound

For a polynomial $f(x)=x^r$, expand $H_\pi^r$ as a sum of ordered words
$V_{e_1}\cdots V_{e_r}$ in pair residuals. The word occurs precisely for partitions $\pi$ coarser than the connected-component partition $\gamma$ of the graph with edges $e_1,\ldots,e_r$. Its coefficient in (CL.7) is
$$
\sum_{\pi\geq\gamma}\mu(\pi,1_N)
=\begin{cases}1,&\gamma=1_N,\\0,&\gamma\ne1_N.\end{cases}
\tag{CL.D1}
$$
This is the defining finite Möbius identity. Thus only connected words remain. Their local support products lie in the one-block algebra by CL.C. A connected graph on $N$ vertices needs at least $N-1$ edges, so the expression is zero for $r\leq N-2$. The constant polynomial is included by the same identity.

For continuous $f$, choose polynomials $p_n$ converging uniformly on a common compact spectral interval $I$. Continuous functional calculus gives
$$
\|\mathfrak M_N(f)-\mathfrak M_N(p_n)\|
\leq\left(\sum_{\pi\in\Pi_N}|\mu(\pi,1_N)|\right)
\|f-p_n\|_{\infty,I}.
\tag{CL.D2}
$$
The prefactor is finite at fixed $N$. Since the compact algebra is norm closed, this proves CL-03. For nonreal $z$, take $f(x)=(z-x)^{-1}$. For real $z$ outside the union of the actual cluster spectra, their compactness gives a positive distance from $z$. Keep the reciprocal formula outside a smaller interval about $z$, and interpolate continuously inside that interval, which is disjoint from the spectra. The resulting continuous function agrees with the resolvent on every actual spectral value.

For $|z|>\max_\pi\|H_\pi\|$, expand the resolvents in $z^{-1}$. The first admissible connected words have $N-1$ edges; their graphs are spanning trees and their edges are all distinct. There are $N^{N-2}$ labelled trees, and $(N-1)!$ edge orders. On the labelled ground vector every pair residual is $a_0$. This proves (CL.8).

To transfer the upper bound to diagonal Bose primaries, let $Q_\pi$ be the product of the internal Bose projections in all blocks of $\pi$. Then
$$
Q_\pi p_B=p_B,\qquad [Q_\pi,H_\pi]=0.
\tag{CL.D3}
$$
Hence
$p_Bf(H_\pi)p_B=p_BQ_\pi f(H_\pi)Q_\pi p_B$.
The restriction of $H_\pi$ to $\operatorname{ran}Q_\pi$ is the sum of the actual internally diagonal-Bose cluster residuals, at all admissible actual internal degrees. Its spectrum is contained in the corresponding compact sum of $\Sigma_{|S|,q_S}$. This is a reducing-space argument, not an identity $f(pHp)=pf(H)p$ for arbitrary compressions.

Let $\mathfrak P_{N,Q}$ be the finite union of all proper-partition spectral sums. If a continuous $f$ vanishes on $\mathfrak P_{N,Q}$, then every proper-partition term disappears after Bose compression. The remaining term is $f(A_N)$, and CL-03 shows it is compact on $\bigoplus_P\mathcal P_N(P,Q)$. Therefore
$$
\|f(A_N(P,Q))\|\longrightarrow0.
\tag{CL.D4}
$$
Choose $f$ equal to one on any compact spectral window outside $\mathfrak P_{N,Q}$ and supported away from that set. An eigenvalue in that window would give norm at least one, contradicting (CL.D4) for all large $P$. A finite covering of the common bounded spectral interval gives the uniform whole-block upper inclusion. No estimate on the dimension of a chosen trial subspace is used.

The pair algebra is finite-support in the Einstein problem, but compactness alone would not imply Schatten estimates. For a general two-body residual with eigenvalues $v_k=1/\log(k+2)$ on the admissible even channels, the connected resolvent at $z=2$ has eigenvalues
$$
\frac1{2-v_k}-\frac12=\frac{v_k}{2(2-v_k)}\geq\frac{v_k}{4}.
$$
They tend to zero, so the operator is compact. For every finite $s>0$, $\sum_k|v_k|^s=\infty$: eventually $(\log(k+2))^s\leq k$, so the terms dominate a harmonic tail. Thus this compact connected resolvent belongs to no finite Schatten class. The example concerns the implication from an arbitrary $c_0$ input; it does not negate stronger estimates separately proved for the actual Einstein four-body tail.

### CL.D.1. The physical partition filtration

The same local algebra also gives a precise Bose quotient identity, independently useful for identifying which representations survive. Let
$$
\mathfrak B=\overline{\operatorname{span}\{p_BXp_B:X\in\mathcal C_\pi,\ \pi\in\Pi_N\}},
\qquad
\mathfrak F_k=\overline{\operatorname{span}\{p_BXp_B:|\pi|\leq k\}}.
$$
Expanding the intervening group average in a product and using CL.C shows that each $\mathfrak F_k$ is a two-sided ideal: every resulting component is supported on a join, whose number of blocks is no larger than that of either factor. The first ideal is the compact degree-preserving physical component.

Fix $|\pi|=k$. Its stabilizer $H_\pi\subset S_N$ consists of permutations preserving its unordered blocks, and $m_\pi=N!/|H_\pi|$ is the orbit size. Let $Q_\pi$ project onto internal diagonal-Bose states. Compress $\mathcal C_\pi$ with $Q_\pi$ and retain its $H_\pi$-invariant part, denoted $\mathfrak K_\pi$. Internal compression and stabilizer averaging do not change $p_BXp_B$, so these algebras generate the $k$-th physical layer.

For $X,Y\in\mathfrak K_\pi$, expand
$$
(p_BXp_B)(p_BYp_B)
=\frac1{N!}\sum_{g\in S_N}p_BX(gYg^{-1})p_B.
$$
If $g\notin H_\pi$, the two distinct $k$-block partitions have a join with fewer than $k$ blocks, so that summand lies in $\mathfrak F_{k-1}$. If $g\in H_\pi$, invariance of $Y$ makes the summand $p_BXYp_B$. Therefore
$$
(p_BXp_B)(p_BYp_B)
\equiv m_\pi^{-1}p_BXYp_B\pmod{\mathfrak F_{k-1}}.
\tag{CL.D5}
$$
It follows that
$$
\Theta_\pi(X)=m_\pi[p_BXp_B]
$$
is a star homomorphism into $\mathfrak F_k/\mathfrak F_{k-1}$. Distinct partition orbits have zero products in this quotient. The maps can have kernels, including impossible right-budget sectors; they need not be faithful tensor-product representations.

Finally, multiply $p_BXp_B$ by the full residual. A pair within a block contributes $H_\pi X$. A cross-block pair joins two blocks and belongs to $\mathfrak F_{k-1}$. Thus the residual acts in the $\pi$-layer by the internally Bose multiplier $H_\pi$. Quotienting can remove spectral channels but cannot introduce a non-Bose internal representation. This yields an alternative layer proof of the upper inclusion; CL.D's Möbius proof already establishes it without relying on quotient faithfulness.

## CL.E. Binary embeddings, equal-cluster exchange and the recursive set theorem

### CL.E.1. Labelled source maps and Bose normalization

Fix a bipartition $S\sqcup T=\{1,\ldots,N\}$ of sizes $a,b$, and a finite orthonormal family of internally Bose eigenstates in
$$
\mathcal P_a(p_1,q_1)\otimes\mathcal P_b(p_2,q_2),
\qquad q_1+q_2\leq Q.
$$
For $P\geq p_1+p_2$, couple the two cluster primaries with relative degrees
$$
L=P-p_1-p_2,\qquad R=Q-q_1-q_2
\tag{CL.E1}
$$
using normalized (CL.A1) in each chirality. Denote the resulting labelled isometry by $T_{\pi,P}$. Since cluster residuals commute with the cluster conformal action,
$$
H_\pi T_{\pi,P}=T_{\pi,P}\Lambda,
\tag{CL.E2}
$$
where $\Lambda$ is the sum of the two source residual eigenvalues. Formula (CL.E2) proves both additivity and the absence of an additional energy from the relative right degree.

Let $E_\pi\in\mathcal C_\pi$ be the finite internal cutoff containing this family, tensored with all outer descendants. Every cross-cluster pair joins the two blocks, hence
$V_{ij}E_\pi\in\mathcal C_{1_N}$ by CL.C. Its norm on high global primary degree tends to zero. Summing the finitely many cross pairs gives
$$
\|(A_N-H_\pi)T_{\pi,P}\|=o(1).
\tag{CL.E3}
$$
This statement is uniform on the fixed finite family; it makes no assertion uniform over growing internal degree.

If $\pi$ and $\tau$ are different unordered bipartitions, then $\pi\vee\tau=1_N$. Thus $E_\pi E_\tau$ is compact, and the overlap of their fixed-family images tends to zero. The same observation applies to the images of one source under permutations not stabilizing its unordered cut.

For unequal sizes, the stabilizer is $S_a\times S_b$, acting trivially on the internally Bose source. If $m_\pi=\binom Na$, the group average therefore gives
$$
T_{\pi,P}^*p_BT_{\pi,P}=m_\pi^{-1}I+o(1).
\tag{CL.E4}
$$
For several cut orbits and finite source families, the off-diagonal Gram blocks are $o(1)$. Consequently the combined map
$V_P=\bigoplus_{[\pi]}\sqrt{m_\pi}\,p_BT_{\pi,P}$ has
$V_P^*V_P=I+o(1)$, and
$$
U_P=V_P(V_P^*V_P)^{-1/2}
\tag{CL.E5}
$$
is a well-defined isometry for all sufficiently large $P$. Since its finite-dimensional inverse-square-root correction tends to $I$, (CL.E3) yields
$\|A_NU_P-U_P\Lambda\|=o(1)$.
For any unit eigenvector of $\Lambda$, the spectral theorem then gives a target eigenvalue within the corresponding residual error of its energy.

### CL.E.2. The exact exchange involution for equal sizes

For $a=b=m$, the stabilizer also exchanges the two clusters. Swapping two normalized binary factors in (CL.A1) produces $(-1)^L$ in the left sector and $(-1)^R$ in the right sector. On an elementary source tensor of degrees $(p_i,q_i)$, this is
$$
(-1)^{L+R}=(-1)^{P+Q}(-1)^{p_1+q_1+p_2+q_2}.
$$
Define on the full internal source
$$
D|_{\mathcal P_m(p,q)}=(-1)^{p+q}I,\qquad
J=(D\otimes D)\operatorname{Swap}.
\tag{CL.E6}
$$
Then the exact labelled relation is
$$
U_{\rm cluster\ swap}T_{\pi,P}
=(-1)^{P+Q}T_{\pi,P}J.
\tag{CL.E7}
$$
If $\eta=(-1)^{P+Q}$, Bose projection kills the $J=-\eta$ sector exactly. On $J=\eta$, the stabilizer average is the identity and (CL.E4) holds with
$m_\pi=\frac12\binom{2m}{m}$.

The involution is unitarily conjugate to ordinary exchange:
$$
J=(I\otimes D)\operatorname{Swap}(I\otimes D).
\tag{CL.E8}
$$
The conjugation preserves the additive source Hamiltonian, its degree cutoff, and the right budget, because $D$ is diagonal in actual degrees. Thus the allowed $J=\eta$ source has the same spectral and multiplicity data as $\operatorname{Sym}^2\mathfrak h_{m,Q}$ for $\eta=+1$ or $\bigwedge^2\mathfrak h_{m,Q}$ for $\eta=-1$, restricted to $q_1+q_2\leq Q$. This proves exactly the state-index rules in (CL.12). It also explains why forming an exterior square of a list of distinct numerical eigenvalues loses legitimate states.

### CL.E.3. Reduction to binary sums

The construction above implies
$$
\Sigma_{a+b,q_1+q_2}\supseteq
\Sigma_{a,q_1}+\Sigma_{b,q_2}.
\tag{CL.E9}
$$
To see this for closure points, first approximate the two summands by actual finite-block eigenvalues, construct their binary images, and then take a diagonal sequence of large total left degrees. For equal sizes choose the even-total-degree subsequence, on which a source can be paired with itself. The definition of $\Sigma$ includes all left degrees, so this suffices.

Take any proper partition with at least three blocks, together with admissible internal right degrees. Merge blocks into two nonempty groups and apply (CL.E9) repeatedly inside each group. The right budgets add and remain at most $Q$. Thus every proper-partition sum lies in (CL.10). The reverse inclusion is already a proper bipartition sum. Therefore
$$
\mathfrak P_{N,Q}=\mathfrak C_{N,Q}.
\tag{CL.E10}
$$
The whole-block upper inclusion in CL.D now gives
$$
\sup_{\lambda\in\sigma(A_N(P,Q))}
\operatorname{dist}(\lambda,\mathfrak C_{N,Q})\longrightarrow0.
\tag{CL.E11}
$$

For the lower Hausdorff inclusion on the even-total-degree subsequence, every point of $\mathfrak C_{N,Q}$ can be approximated by a finite binary source and then by its Bose-coupled images. Given $\varepsilon>0$, choose a finite $\varepsilon/3$-net in the compact set $\mathfrak C_{N,Q}$. Choose source approximants to all points of that net, and then take the maximum of their finitely many degree thresholds. Every sufficiently large $P$ of the stated parity has an eigenvalue within $\varepsilon$ of every point in the limit set. Together with (CL.E11), this proves Hausdorff convergence. For odd $N$, every bipartition has unequal sizes, so no parity restriction enters and the argument holds for all large $P$.

For even $N=2m$, all unequal binary cuts still give $\mathfrak U_{2m,Q}$ on either subsequence, while CL.E.2 gives exactly $\mathfrak E_{m,Q}^{\eta}$ from the equal cut. To sharpen the upper inclusion, note that every partition with at least three blocks contains a block of size strictly less than $m$; merging the other blocks puts its whole sum set in $\mathfrak U_{2m,Q}$. In the equal-bipartition terms of the Möbius identity, the exact source decomposition (CL.E7) restricts Bose compression to $J=\eta$. A function vanishing on $\mathfrak U_{2m,Q}\cup\mathfrak E_{m,Q}^{\eta}$ therefore kills every proper-partition term on that subsequence. The compact remainder again proves (CL.E11) with the smaller parity-specific set. The finite-net argument gives its reverse Hausdorff inclusion.

For $N=2$, the primary space is one-dimensional exactly when $P+Q$ is even. Since its residual vanishes for $P\geq Q+4$, the even-subsequence set limit is $\{0\}$; the other primary blocks are empty.

Finally, a bounded block-diagonal self-adjoint operator with finite-dimensional blocks has essential spectrum equal to the set of spectral limit points obtained from block indices tending to infinity, counting an eigenvalue appearing in infinitely many blocks as essential. Outside those points, a small window contains only finitely many eigenvalues from finitely many blocks and hence a finite-rank spectral projection. At a limit point, choose unit eigenvectors in distinct blocks; they are orthonormal approximate eigenvectors, so the point is essential. The parity-specific Hausdorff limits just proved imply (CL.11), since the even limit contains every binary sum.

## CL.F. Derived sets and the finite accumulation-depth bound

We record the elementary compact-set facts needed here. If $K,L\subset\mathbb R$ are compact, then
$$
(K+L)'\subseteq(K'+L)\cup(K+L').
\tag{CL.F1}
$$
Indeed, for distinct sums $x_n+y_n\to z$, compactness gives a subsequence with $x_n\to x$, $y_n\to y$. If neither $x$ nor $y$ were a derived point of the corresponding set, both component sequences would be eventually constant, contradicting distinctness of the sums. Applying this argument inductively gives
$$
(K+L)^{(r)}
\subseteq\bigcup_{i+j=r}\bigl(K^{(i)}+L^{(j)}\bigr).
\tag{CL.F2}
$$
Derived sets commute with finite unions; this follows because an infinite distinct sequence in a finite union has an infinite subsequence in one member.

Let $\widehat\Sigma_N(Q)=\bigcup_{q\leq Q}\Sigma_{N,q}$. A derived point of $\Sigma_{N,q}$ must involve eigenvalues from unbounded left degree: finitely many finite-dimensional blocks contain only finitely many distinct values. CL.E then implies
$$
\Sigma_{N,q}'\subseteq\mathfrak C_{N,q},\qquad
\widehat\Sigma_N(Q)'
\subseteq
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\bigl(\widehat\Sigma_a(Q)+\widehat\Sigma_{N-a}(Q)\bigr).
\tag{CL.F3}
$$
The relaxed right budget on the right is sufficient for a depth upper bound.

For the Einstein pair residual, $\widehat\Sigma_2(Q)$ is finite. We prove by induction that
$$
\widehat\Sigma_N(Q)^{(N-2)}\subseteq\widehat\Sigma_2(Q),
\qquad
\widehat\Sigma_N(Q)^{(N-1)}=\varnothing.
\tag{CL.F4}
$$
The case $N=2$ is immediate. Differentiate (CL.F3) another $N-3$ times. A singleton split contributes
$\widehat\Sigma_{N-1}(Q)^{(N-3)}$, which is contained in $\widehat\Sigma_2(Q)$ by induction. For a split $a,b\geq2$, every term in (CL.F2) with $i+j=N-3=a+b-3$ has either $i\geq a-1$ or $j\geq b-1$; otherwise the sum would be at most $a+b-4$. The corresponding factor is empty by induction, so these terms vanish. This proves the first inclusion in (CL.F4), and its derivative is empty because the right side is finite. Since $\Sigma_{N,Q}\subseteq\widehat\Sigma_N(Q)$, (CL.15) follows.

For a general $c_0$ pair tail, the pair spectrum is a null sequence with finite multiplicities per internal block, so $\widehat\Sigma_2(Q)'\subseteq\{0\}$ and its second derivative is empty. The same induction, shifted by one, gives
$\widehat\Sigma_N(Q)^{(N-1)}\subseteq\{0\}$ and
$\widehat\Sigma_N(Q)^{(N)}=\varnothing$.

A compact subset of $\mathbb R$ with an empty finite derived set is countable. To verify this directly, each difference $K^{(j)}\setminus K^{(j+1)}$ consists of isolated points of $K^{(j)}$; assigning a rational open interval that isolates each point shows that layer is countable. There are finitely many layers. A nonempty perfect subset would survive every derivative, and an interval contains such a subset, so neither is possible.

## CL.G. Regular source finiteness and exact eventual projector ranks

Fix $\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q}$, $N\geq3$. The finer set is compact: it is a finite union of sums of compact sets with a finite degree budget. Choose a compact interval $J$ around $\lambda$ disjoint from $\mathfrak F_{N,Q}$.

For a binary size split $a+b=N$, consider the internally Bose source Hilbert space
$$
\mathfrak h_{a,b;Q}
=\bigoplus_{\substack{p_1,p_2\geq0\\q_1+q_2\leq Q}}
\mathcal P_a(p_1,q_1)\otimes\mathcal P_b(p_2,q_2)
$$
and its bounded additive Hamiltonian
$L_{a,b}=A_a\otimes I+I\otimes A_b$.

### CL.G.1. Why the local source is finite

Suppose the spectral subspace $\mathbf1_J(L_{a,b})\mathfrak h_{a,b;Q}$ were infinite-dimensional. Choose orthonormal source eigenvectors in infinitely many degree blocks, with source energies $\alpha_n+\beta_n\in J$. The finite right budget permits a subsequence with fixed $q_1,q_2$. Each fixed pair of left degrees has finite dimension, so at least one of $p_{1,n},p_{2,n}$ tends to infinity along a subsequence. Both energies lie in bounded intervals, so refine the subsequence to $\alpha_n\to\alpha$, $\beta_n\to\beta$, with $\alpha+\beta\in J$.

A singleton cannot have unbounded internal degree. Thus the unbounded side has at least two particles, and its high-degree upper theorem splits its limit energy into a proper lower-particle cluster sum. Adding the other binary cluster produces at least three clusters, with right budget at most $Q$. Therefore $\alpha+\beta\in\mathfrak F_{N,Q}$, contradicting the choice of $J$. This proof also excludes infinitely many distinct internal states with the same numerical sum: their degrees would still become unbounded. It proves a finite source space, not just local discreteness of a set of values.

There are finitely many size splits. Thus their source spectra in $J$ contain only finitely many values. Since $\lambda$ lies in the closure of binary sums, it is actually one of those values and is isolated in $\mathfrak C_{N,Q}$. Shrink $J$ so that it contains no other binary sum value. All source states contributing $\lambda$ have bounded actual degrees.

### CL.G.2. From the connected identity to the target projection

Choose a continuous function $f$ equal to one on a smaller interval about $\lambda$, supported in $J$, and vanishing on the rest of the binary spectrum. On an internally Bose binary source, $f(H_\pi)$ is exactly its internal energy-$\lambda$ projection $E_\pi$, tensored with outer descendants. It has finite internal support by CL.G.1. On every partition with three or more blocks, the compressed term vanishes because $J\cap\mathfrak F_{N,Q}=\varnothing$.

The Möbius coefficients are $+1$ for one block and $-1$ for two blocks. Compressing (CL.7) therefore gives, on the whole degree-$(P,Q)$ physical block,
$$
f(A_N(P,Q))
=\sum_{|\pi|=2}p_BE_\pi p_B+o_{\mathrm{op}}(1)
=\sum_{[\pi]}m_\pi p_BE_\pi p_B+o_{\mathrm{op}}(1).
\tag{CL.G1}
$$
The last sum has one representative per unordered size orbit, with
$m_\pi=\binom Na$ for $a<b$ and
$m_\pi=\frac12\binom{2m}{m}$ for equal sizes. The factor counts labelled cuts only in this intermediate operator identity.

Let $T_{\pi,P}$ be an isometry from the finite energy-$\lambda$ source onto $E_\pi$ in degree $(P,Q)$; for equal sizes retain the allowed $J=(-1)^{P+Q}$ sector. The forbidden sector has zero Bose image exactly by (CL.E7). With
$$
V_{\pi,P}=\sqrt{m_\pi}\,p_BT_{\pi,P},\qquad
V_P=\bigl(V_{\pi,P}\bigr)_{[\pi]},
$$
the main sum in (CL.G1) is $V_PV_P^*$. CL.E gives
$V_P^*V_P=I+o(1)$. Its polar isometry
$U_P=V_P(V_P^*V_P)^{-1/2}$ defines an orthogonal projection
$$
R_P=U_PU_P^*,\qquad
\operatorname{rank}R_P=\dim(\text{allowed binary source}).
\tag{CL.G2}
$$
Writing $V_P=U_P(V_P^*V_P)^{1/2}$ yields
$$
\|V_PV_P^*-R_P\|=\|V_P^*V_P-I\|\longrightarrow0.
\tag{CL.G3}
$$
Thus $\|f(A_N(P,Q))-R_P\|\to0$ on the entire target block.

Choose the constant part and support of $f$ so that their transition intervals avoid the limiting spectral set. The high-degree upper theorem excludes target eigenvalues in those transition intervals for all sufficiently large $P$. Therefore $f(A_N(P,Q))$ is then exactly the spectral projector of the fixed small window about $\lambda$. Once its distance to $R_P$ is less than one, their ranks agree: if a vector in the range of one projection is killed by the other, the norm distance would be at least one; applying this to both ranges gives injections in both directions. This proves exact eventual equality, not only a lower bound.

The same upper theorem implies that all eigenvalues in the fixed window converge to $\lambda$. The proof gives the quantifiers $P_0(\varepsilon)$ for each fixed sufficiently small window. It supplies no uniform bound for a window shrinking with $P$.

### CL.G.3. Counting the allowed source

For $a<b$, each source tensor contributes its product multiplicity, giving (CL.17). There is one binary coupling in each chirality at the fixed relative degrees (CL.E1); no multiplicity comes from unused right budget.

For $a=b=m$, let $K$ be the dimension of the ordered energy-$\lambda$ source. The allowed eigenspace of $J$ has dimension
$$
\frac12(K+\eta\,\operatorname{tr}J).
$$
In a degree-labelled orthonormal eigenbasis, a tensor $e_i\otimes e_j$ contributes to the trace only for $i=j$. For such a tensor, the degree twist is
$(-1)^{2(p_i+q_i)}=1$. It has energy $2\lambda_i$ and budget $2q_i\leq Q$. Hence
$$
\operatorname{tr}J
=\sum_{\substack{p\geq0\\2q\leq Q}}
\operatorname{mult}_{A_m(p,q)}(\lambda/2)=T_{m,Q}(\lambda).
\tag{CL.G4}
$$
This proves (CL.18) and (CL.19). The factors $m_\pi$ were absorbed by normalizing the Gram maps; multiplying the final source dimension by a binomial coefficient would count permutations of the same Bose cluster state repeatedly.

## CL.H. Singleton inheritance, the chiral maximum and the compactness obstruction

For a finite family of $(N-1)$-body eigenstates with $q_i\leq Q$, let $T_P$ be their labelled coupling to a singleton at the degrees in (CL.E1). A cross pair consists of the singleton and one internal particle. In the overlap proof CL.C its common cluster with the $(N-1)$-particle source is one leaf, so the endpoint exponent is $\Delta$. Since there are finitely many source labels and bad pair channels,
$$
\|(A_N-H_{(N-1)|1})T_P\|=O(P^{-\Delta}).
\tag{CL.H1}
$$
A permutation exchanging the singleton with an internal particle compares two $(N-1)$-particle clusters with $N-2$ common leaves. CL.C therefore gives
$$
(\sqrt N\,p_BT_P)^*(\sqrt N\,p_BT_P)
=I+O(P^{-(N-2)\Delta}).
\tag{CL.H2}
$$
For $N\geq3$, the polar correction changes the finite-family map by $O(P^{-(N-2)\Delta})$, which is no larger than the residual error in (CL.H1). Since all residual Hamiltonians are uniformly bounded, this proves (CL.21).

There is also an explicit normalization for the chiral ground-cluster source. Couple the unique ground state of $N-1$ particles to a singleton with left relative degree $P$. Its squared Bose-projected norm is
$$
g_P=\|p_BT_P\|^2
=\frac{1+(N-1)(-1)^P\,(\Delta)_P/((N-1)\Delta)_P}{N}.
\tag{CL.H3}
$$
To obtain the overlap in (CL.H3), expand the binary ground coupling by (CL.A1) and exchange the singleton with one leaf. The terminating binomial sum gives
$(-1)^P(\Delta)_P/((N-1)\Delta)_P$. The group average has one unchanged singleton placement and $N-1$ exchanged placements, yielding (CL.H3). At $P=0$ it is one; at $P=1$ it is zero, consistent with the absence of a first-degree Bose primary. For $P\geq2$, it is positive: the ratio at $P=1$ is $1/(N-1)$ and decreases strictly thereafter. It tends to $1/N$.

For this source, the cross-pair endpoint is
$F_{0k}^{((N-2)h,h,h;P)}$, $k=0,2$. CL.A gives
$$
F_{0k}^{((N-2)h,h,h;P)}
=C_kP^{-\Delta}(1+O(P^{-1})),
$$
with
$$
C_k^2=
\frac{\Gamma((N-1)\Delta)}{\Gamma(\Delta)}
\frac{(2k+2\Delta-1)\Gamma(2\Delta+k-1)}
{k!\Gamma((N-2)\Delta)}.
\tag{CL.H4}
$$
The norm of a sum of the $N-1$ cross-pair terms is bounded by their number times the largest sum-of-squares estimate, so the normalized squared residual is bounded by a constant times
$$
\frac{(N-1)^2}{g_P}
\sum_{k=0,2}a_k^2|F_{0k}^{((N-2)h,h,h;P)}|^2
=O(P^{-2\Delta}).
\tag{CL.H5}
$$
No nonzero leading coefficient of the eigenvalue shift is asserted.

For the chiral maximum, $0\leq V_{ij}\leq a_0I$. Equality in
$A_m\leq\binom m2a_0I$ forces every nonnegative pair deficit $a_0I-V_{ij}$ to annihilate the vector, hence every pair is in channel $k=0$, since $a_2<a_0$. Let $C_S$ denote the $\mathfrak{sl}(2)$ Casimir of a set of leaves. The Lie-algebra expansion of the quadratic Casimir gives
$$
\sum_{i<j}C_{ij}=C_{\rm total}+(m-2)\sum_iC_i.
\tag{CL.H6}
$$
Here $C_i=h(h-1)$, $C_{\rm total}=(mh+p)(mh+p-1)$, and pair channel zero has $C_{ij}=2h(2h-1)$. Subtracting the $p=0$ identity from (CL.H6) gives
$$
p(m\Delta+p-1)=0.
$$
Since $\Delta>1$, $p=0$, whose Bose primary is unique.

This finite-block equality argument must be supplemented before using the closed set $\Sigma_{m,0}$. The high-degree upper theorem bounds every high-degree limit by
$$
\max_{1\leq a\leq m-1}
\left\{\binom a2+\binom{m-a}{2}\right\}a_0
=\binom{m-1}{2}a_0
<\binom m2a_0.
\tag{CL.H7}
$$
Thus no sequence with internal degree tending to infinity approaches the full $m$-body endpoint. It follows that its only source at the endpoint is the finite $p=0$ state.

For $N$ particles, the largest binary sum is
$\lambda_{\rm top}=\binom{N-1}{2}a_0$, attained only by the unequal split $1+(N-1)$ and its ground source. Every sum with at least three clusters is at most
$\binom{N-2}{2}a_0$, a gap $(N-2)a_0$ below. Hence $\lambda_{\rm top}$ is regular, and CL.G gives an eventual rank-one spectral window on both parities. The global upper theorem and compactness of the limiting set separate that window from all other high-degree eigenvalues, so its unique eigenvalue is the maximum. The residual estimate (CL.H5) places it within $O(P^{-\Delta})$ of $\lambda_{\rm top}$, proving CL-07. The conclusion is eventual; it makes no simplicity assertion at small $P$.

For multiplicity proliferation, fix a positive eigenvalue $\lambda$ in a finite $m$-body block and an interval about it. Apply the singleton construction first to $m+1$ particles at infinitely many distinct large internal left degrees. Choose any prescribed number $K$ of those mutually orthogonal primary source states, all with energies sufficiently close to $\lambda$. Apply the finite-family singleton construction to this fixed $K$-dimensional family. For all sufficiently large final $P$, the $m+2$-particle Hamiltonian has at least $K$ eigenvalues in the original interval: the images are isometric and the spectral projection onto the interval is injective on them once the residual is smaller than the distance to its boundary. Additional singleton insertions preserve this conclusion. The right degree can be increased to any fixed $Q\geq q$ by assigning the unused right degree to the final relative coupling. Since $K$ was arbitrary, the local count tends to infinity. Choosing $K$ before the final large-$P$ limit is essential; there is no uniform rate in $K$.

In particular, the three-body ground eigenvalue is $3a_0$. For every $N\geq5$, it gives an unbounded number of chiral positive eigenvalues in a small interval strictly above $a_0$. Suppose (CL.22) held. Choose $\delta>0$ so that the interval lies above $a_0+3\delta$, and take $P$ with $\|E_P\|<\delta$. On its target spectral subspace $\mathcal L_P$,
$$
\langle x,K_Px\rangle
=\langle x,(A_N^+-D_P-E_P)x\rangle
\geq2\delta\|x\|^2.
$$
The min–max principle gives at least $\dim\mathcal L_P$ eigenvalues of $K_P$ at least $2\delta$, hence that many singular values above $\delta$. This contradicts uniform compactness because $\dim\mathcal L_P\to\infty$. This proves the stated obstruction and no broader impossibility theorem.

## CL.I. Exact four-body recoupling and the finite-section comparison

### CL.I.1. Pair-pair and triple coupling bases

A distinguished-pair frame for four particles consists of normalized states
$$
F_{k,\ell;a,b}^{P,Q}
=\bigl((12)_k(34)_a\bigr)_P^L
 \otimes\bigl((12)_\ell(34)_b\bigr)_Q^R,
\tag{CL.I1}
$$
where $\alpha=(k,\ell)\in\mathcal B_Q$, the spectator pair obeys $a+b$ even, and $k+a\leq P,\ell+b\leq Q$. With the prescribed real tree phases, exchanging the two pairs gives
$$
R_0F_{\alpha;\beta}^{P,Q}
=\epsilon F_{\beta;\alpha}^{P,Q},\qquad
\epsilon=(-1)^{P+Q},
\tag{CL.I2}
$$
when $\beta=(a,b)$ is also bad, and its compression vanishes otherwise. The apparent extra phase from the relative degrees is
$(-1)^{k+\ell+a+b}=1$ by pair Bose parity.

For $\alpha\ne\beta$, the diagonal-plus-exchange block is
$$
\begin{pmatrix}
a_\alpha&\epsilon\sqrt{a_\alpha a_\beta}\\
\epsilon\sqrt{a_\alpha a_\beta}&a_\beta
\end{pmatrix},
\tag{CL.I3}
$$
with characteristic polynomial $x(x-a_\alpha-a_\beta)$. For a repeated label it is $(1+\epsilon)a_\alpha$. Thus each allowed unordered pair has one positive sum; the repeated-label sum occurs only for $\epsilon=+1$.

For clarity, the exact overlapping-pair matrix can be computed without a four-body quadrature. In one chirality, insert the basis that couples particles $1,2,3$ first:
$$
\begin{split}
R_1^P(k,a;r,c)
=\sum_{t=\max(k,r)}^P
&F_{t-k,a}^{(\Delta+k,h,h;P-k)}
(-1)^{t+k+r}F_{kr}^{(h,h,h;t)}\\
&\times F_{t-r,c}^{(\Delta+r,h,h;P-r)}.
\end{split}
\tag{CL.I4}
$$
The first and last coefficients change the pair-pair tree to the triple tree; in the triple tree, the leaf transposition has the middle Racah coefficient and the displayed exchange phase. This follows by applying (CL.A1) to interchange the two factors at the affected binary vertex. The right chiral entry is the same expression with $(P,k,a,r,c)$ replaced by $(Q,\ell,b,v,d)$, and the full entry is their product. Thus (CL.I4) is a finite sum identity for every admissible degree, not an asymptotic formula. It is also the appropriate recoupling structure behind the Racah-type nine-$j$ kernel; replacing it by a product of two independent one-variable polynomials would omit the shared triple sum.

It is advantageous for limits to enlarge the auxiliary space to $\mathcal X_{P,Q}$, which imposes Bose parity on pair $12$ but leaves particles $3,4$ unsymmetrized. Its triple basis is indexed by $(t,u;\alpha)$, $0\leq t\leq P$, $0\leq u\leq Q$, $\alpha\in\mathcal B_{t,u}$. Let
$$
J_P=U_{34},\qquad H_P=\frac{I+J_P}{2}.
$$
The physical distinguished-pair frame is $\operatorname{ran}H_P$. Since $U_{34}$ leaves pair $12$ unchanged, $[H_P,D]=0$.

On the enlarged space the compression of $U_{23}$ is block diagonal in $(t,u)$:
$$
R=\bigoplus_{t,u}R_{3;t,u},\qquad
(R_{3;t,u})_{\alpha\beta}
=(-1)^{t+u+k+\ell+r+v}
F_{kr}^{(h,h,h;t)}F_{\ell v}^{(h,h,h;u)}.
\tag{CL.I5}
$$
The bad pair parities reduce the sign to $(-1)^{t+u}$, but retaining the full expression tracks the tree convention. The three-body auxiliary matrix is
$$
A_{3;t,u}^{\rm aux}
=D_{t,u}^{1/2}(I+2R_{3;t,u})D_{t,u}^{1/2}.
\tag{CL.I6}
$$
The factor two counts the two overlapping pair images in a three-particle Bose average. Its positive spectrum is exactly that of $A_3(t,u)=W_3(t,u)-b_3(u)I$; zeros are Gram dependencies.

Since $|\mathcal B_{t,u}|$ is bounded at fixed $Q$, CL.A gives
$$
\|R_{3;t,u}\|=O((1+t)^{-\Delta}),\qquad
\sum_{t\geq0}\sum_{u=0}^Q\|R_{3;t,u}\|_1<\infty.
\tag{CL.I7}
$$
The finite right matrices affect only constants. If $W_P$ is the isometric inclusion of the finite ordered bad-pair-pair sector, and
$K_{22}^\epsilon=D_{22}^{1/2}(\epsilon\operatorname{Swap})D_{22}^{1/2}$, the exact four-body formula on $\operatorname{ran}H_P$ is
$$
B_{P,Q}
=D+4H_PD^{1/2}RD^{1/2}H_P+W_PK_{22}^{\epsilon}W_P^*.
\tag{CL.I8}
$$

### CL.I.2. Uniform finite-section separation

Fix a triple cutoff $T$, and let $E_T$ project onto $t\leq T,u\leq Q$ in the enlarged space. It has a fixed finite dimension for all $P\geq T$. Its overlap with its spectator-swapped copy satisfies
$$
\|E_TJ_PE_T\|\longrightarrow0.
\tag{CL.I9}
$$
Indeed, with the distinguished pair label $k$ fixed, exchanging particles $3,4$ compares two trees whose common effective cluster is pair $12$, of weight $\Delta+k$. CL.A gives the finite-rectangle rate $O(P^{-2\Delta-2k})$. This is convergence of fixed sections, not operator-norm convergence $J_P\to0$; $J_P$ is an involution.

The overlap of a fixed triple section with the fixed bad-pair-pair section is $O(P^{-\Delta})$, by the outer Racah coefficient in (CL.I4), whose middle factor is a single scalar. Therefore
$$
V_{P,T}=\sqrt2\,H_PE_T,\qquad
Y_{P,T}=(V_{P,T},W_P)
$$
obeys
$$
Y_{P,T}^*Y_{P,T}=I+o_{P,T}(1).
\tag{CL.I10}
$$
Its source dimension is fixed when $T$ is fixed. Moreover $Y_{P,T}$ preserves the distinguished-pair label and intertwines $D$ with the diagonal source matrix $D_{\rm src}$. Consequently its Gram matrix commutes with $D_{\rm src}$, and its polar isometry
$$
U_{P,T}=Y_{P,T}(Y_{P,T}^*Y_{P,T})^{-1/2}
\tag{CL.I11}
$$
also intertwines these diagonal matrices exactly.

Let
$$
\mathcal B_T^\epsilon=
\left(\bigoplus_{\substack{t\leq T\\u\leq Q}}A_{3;t,u}^{\rm aux}\right)
\oplus A_{22}^{\epsilon},
\qquad
A_{22}^{\epsilon}=D_{22}+K_{22}^{\epsilon}.
$$
The truncated triple correction in (CL.I8) is
$V_{P,T}\bigl(2D^{1/2}R_{\leq T}D^{1/2}\bigr)V_{P,T}^*$.
Together with the pair-pair term, it is $Y_{P,T}C_TY_{P,T}^*$, where
$C_T=\mathcal B_T^\epsilon-D_{\rm src}$.
Writing $Y=U(Y^*Y)^{1/2}$ shows that its difference from $U C_TU^*$ tends to zero both in operator norm and trace norm at fixed $T$; the dimension is fixed. The discarded triple tail in (CL.I8) has operator norm at most $4\|D\|\sup_{t>T,u}\|R_{3;t,u}\|$. Thus
$$
\begin{split}
\bigl\|B_{P,Q}
-&\bigl[U_{P,T}\mathcal B_T^\epsilon U_{P,T}^*
+D(I-U_{P,T}U_{P,T}^*)\bigr]\bigr\|\\
&\leq4\|D\|\sup_{t>T,u\leq Q}\|R_{3;t,u}\|
+o_{P,T}(1).
\end{split}
\tag{CL.I12}
$$
The bracket is a direct sum because $D$ reduces the range of $U_{P,T}$.

For self-adjoint finite matrices on the same space, operator-norm distance bounds Hausdorff distance between spectra: if $\operatorname{dist}(x,\sigma(B))>\|A-B\|$, the resolvent identity makes $A-x$ invertible. Apply this to (CL.I12), first at fixed $T$, then let $T\to\infty$. Triple matrices tend to their positive diagonal atom matrices by (CL.I7). Each atom retains arbitrarily many diagonal copies outside the fixed section because $n_\alpha(P,Q)$ grows linearly in $P$. This proves the limiting spectral description except for a possible sequence of positive eigenvalues tending to zero. That remaining point requires the exact nullity argument below.

Away from both zero and the atoms, a compact window has only finitely many triple source eigenvalues, because the triple matrices approach the atoms. Choose $T$ containing those sources. The resolvent integral around the window for (CL.I12) converges in norm to the source projection; once the distance is below one, its rank is exactly the finite triple-plus-pair-pair source multiplicity. This already proves the isolated positive multiplicity assertion away from zero, subject to choosing the window away from all other source values.

## CL.J. Exact auxiliary nullity and exclusion of positive collapse at zero

Let $\mathcal M_n(x,y)$ be the physical primary Molien series and $\mathcal K_n(x,y)$ the physical kernel series for the **oriented** residual. The finite theory gives
$$
\mathcal M_n=(1-x)(1-y)
\sum_{\lambda\vdash n}
\frac1{z_\lambda\prod_{j\in\lambda}(1-x^j)(1-y^j)},
\tag{CL.J1}
$$
where $z_\lambda=\prod_jj^{m_j}m_j!$, and
$$
\begin{aligned}
\mathcal K_3&=\frac{x^{12}}
{(1-x^2)(1-x^3)(1-xy)(1-x^2y)},\\
\mathcal K_4&=\frac{x^{24}}
{(1-x^2)(1-x^3)(1-x^4)(1-xy)(1-x^2y)(1-x^3y)}.
\end{aligned}
\tag{CL.J2}
$$
The powers $12,24$ are the left fourth-discriminant degrees. These are physical kernels, not auxiliary Gram kernels.

The bad-channel bivariate generating series is obtained by summing $0\leq k\leq\ell+2$ with $k+\ell$ even:
$$
\mathcal B(x,y)
=\frac{1+x^2-x^2y^2}{(1-y^2)(1-xy)},\qquad
\mathcal A(y)=\mathcal B(1,y)
=\frac{2-y^2}{(1-y)(1-y^2)}.
\tag{CL.J3}
$$
Auxiliary nullity is auxiliary dimension minus positive physical rank, and the latter is physical dimension minus physical kernel dimension. For three and four particles, (CL.B6) therefore gives exactly
$$
Z_3=\frac{\mathcal B}{(1-x)(1-y)}-\mathcal M_3+\mathcal K_3,\qquad
Z_4=\frac{\mathcal B\mathcal M_2}{(1-x)(1-y)}
-\mathcal M_4+\mathcal K_4.
\tag{CL.J4}
$$

Here is a finite rational certificate of the simplifications needed below. Combining the three partitions of $3$ in (CL.J1) gives
$$
Z_3(x,y)=
\frac{(x^7+x^5+x^4)(y^4-y^3-y+1)
+(x^3+x^2)(1-y^3)+x+y}
{(1-y)^2(1-xy)(1-x^2y)(1+y+y^2)}.
\tag{CL.J5}
$$
At fixed $u$, the coefficient $[y^u]Z_3$ is a polynomial in $x$ of degree at most $2u+7$. Thus only finitely many triple blocks at right degree $u$ have auxiliary zeros. Substitution $x=1$ is legitimate coefficientwise and gives
$$
z_3(y)=Z_3(1,y)
=\frac{3y^4-5y^3-2y+6}{(1-y)^4(1+y+y^2)}.
\tag{CL.J6}
$$

For four particles define
$$
C(y)=\frac{z_3(y)}{1-y}+\frac{\mathcal A(y)^2}{2(1-y)},
\qquad E(y)=-\frac{\mathcal A(y^2)}{2(1+y)}.
$$
Then the exact rational identity is
$$
Z_4(x,y)=\frac{C(y)}{1-x}+\frac{E(y)}{1+x}+R(x,y),
\tag{CL.J7}
$$
where, with
$$
d(y)=(y-1)^5(y+1)^3(y^2+1)(y^2+y+1),
$$
$$
R(x,y)=
\frac{d(y)L(x)+\sum_{j=0}^5r_j(y)x^j}
{d(y)(xy-1)(x^2y-1)(x^3y-1)},
\tag{CL.J8}
$$
and
$$
L(x)=x^{15}+x^{13}+x^{12}+2x^{11}+x^{10}
+3x^9+2x^8+4x^7+3x^6.
$$
The six remaining coefficient polynomials are
$$
\begin{aligned}
r_5={}&-9y^{11}-6y^{10}+19y^9+20y^8+11y^7-13y^6\\
&-34y^5-23y^4-13y^3+10y^2+5y-5,\\
r_4={}&-(y-1)(y+1)
(7y^9-y^8-8y^7-8y^6-7y^5\\
&\hspace{34mm}+10y^4+12y^3+14y^2+4y-4),\\
r_3={}&-3y^{11}+3y^{10}+14y^9-2y^8-15y^7-22y^6\\
&-13y^5+19y^4+27y^3+30y^2+7y-7,\\
r_2={}&7y^{10}+6y^9-13y^8-18y^7-15y^6+7y^5\\
&+29y^4+27y^3+18y^2-5y-5,\\
r_1={}&(y-1)(y+1)
(3y^8+2y^7-4y^6-6y^5-6y^4\\
&\hspace{34mm}+2y^3+10y^2+10y+8),\\
r_0={}&-3y^9-6y^8+5y^7+12y^6+14y^5+4y^4
-16y^3-20y^2-21y-7.
\end{aligned}
\tag{CL.J9}
$$
Equations (CL.J7)–(CL.J9) can be verified by multiplication using the five partitions of $4$ in (CL.J1); thus no infinite coefficient computation is hidden in the certificate. The $x$-dependent denominator factors in $R$ are only $1-x^iy$, $i=1,2,3$. At right degree $Q$, their geometric expansions contribute $x$-degree at most $3Q$, and the numerator has $x$-degree $15$. It follows immediately that
$$
[x^Py^Q]R=0\qquad(P>15+3Q).
\tag{CL.J10}
$$
This proves the finite transient bound for every $Q$, not only the values checked numerically.

Extract the coefficient of $x^P$ in (CL.J7). The identity

$$(-1)^P[y^Q]\frac{\mathcal A(y^2)}{1+y}
=(-1)^{P+Q}[y^Q]\frac{\mathcal A(y^2)}{1-y}$$

shows that
the result is exactly (CL.25).

The limit comparator in CL.I has the same number of zeros. The triple contribution is $[y^Q]z_3(y)/(1-y)$, since a right triple degree $u\leq Q$ has unique outer right coupling. An unordered distinct bad-pair pair contributes one zero. Its generating series is
$(\mathcal A(y)^2-\mathcal A(y^2))/2$. A repeated bad label contributes one zero precisely for $\epsilon=-1$, adding $\mathcal A(y^2)$ on that subsequence. Multiplication by $1/(1-y)$ accounts for unused pair-pair relative right degree. Their sum is the second term of (CL.25).

To exclude positive collapse, choose $T$ beyond every triple auxiliary zero at $u\leq Q$. This is possible by (CL.J5). Large triple matrices are uniformly positive: (CL.I7) implies
$A_{3;t,u}^{\rm aux}\geq(a_{\min}/2)I$ once $t$ is large. The finitely many remaining positive triple eigenvalues and positive pair-pair eigenvalues have a positive minimum. Thus the comparator's spectrum lies in $\{0\}\cup[c,\infty)$ for some $c>0$.

Take a circle of radius less than $c/2$ around zero. The norm estimate (CL.I12), first with large $T$ and then with large $P$, makes the resolvent integrals for the target and comparator projections within distance less than one. Their ranks therefore agree. The comparator rank is exactly the right side of (CL.25), and the exact target nullity is the same number for $P>15+3Q$. Because $B_{P,Q}\geq0$, every one of the target eigenvalues inside that circle is already accounted for by an exact zero; no additional positive eigenvalue can be there. This proves a uniform positive gap for the target, completes CL-08, and permits $s=0$ logarithmic or pseudodeterminant limits only after the exact zero factor has been removed.

## CL.K. Branch-free complex Fredholm convergence and isolated zero multiplicity

The matrices $B_{P,Q}-D$ have uniformly bounded trace norm at fixed $Q,\Delta>1$, by (CL.I7)–(CL.I8). For $s\in\Omega_Q$,
$$
\mathcal F_{P,Q}(s)
=\det\!\left[I+(s+D)^{-1}(B_{P,Q}-D)\right].
\tag{CL.K1}
$$
This identity is finite-dimensional determinant multiplicativity. It uses no square root of $s+a_\alpha$, and is holomorphic throughout $\Omega_Q$.

Fix a compact $K\subset\Omega_Q$, and let
$\rho_K=\min_{s\in K,\alpha}|s+a_\alpha|>0$.
Then $\|(s+D)^{-1}\|\leq\rho_K^{-1}$, uniformly in the target degree and $s\in K$. Removing the triple tail $t>T$ from (CL.I8) changes the normalized perturbation in (CL.K1) by trace norm at most
$$
4\rho_K^{-1}\|D\|
\sum_{\substack{t>T\\u\leq Q}}\|R_{3;t,u}\|_1
=O_K(T^{1-\Delta}).
\tag{CL.K2}
$$
This bound is uniform in $P$.

At fixed $T$, use the polar isometry $U_{P,T}$ from CL.I. Because it intertwines $D$ and $D_{\rm src}$,
$$
(s+D)^{-1}U_{P,T}
=U_{P,T}(s+D_{\rm src})^{-1}.
\tag{CL.K3}
$$
The difference between the truncated target perturbation and
$$
U_{P,T}(s+D_{\rm src})^{-1}
(\mathcal B_T^\epsilon-D_{\rm src})U_{P,T}^*
$$
tends to zero in trace norm, uniformly for $s\in K$. This follows from the fixed-dimensional convergence $Y^*Y\to I$, the uniform inverse bound $\rho_K^{-1}$, and the identity $Y=U(Y^*Y)^{1/2}$. It does not require norm convergence of the full exchange involution $J_P$.

The Fredholm determinant satisfies the trace-norm continuity estimate
$$
|\det(I+X)-\det(I+Y)|
\leq \|X-Y\|_1
\exp\!\bigl(1+\|X\|_1+\|Y\|_1\bigr)
\tag{CL.K4}
$$
for trace-class operators. A slightly sharper bound with the maximum of the two norms appears in [Bornemann2010, equation (4.1)]; the weaker form displayed here suffices. The trace norms of the perturbations in this argument are uniformly bounded by (CL.I7) and $\rho_K^{-1}$. Hence (CL.K2)–(CL.K4) control the determinant errors uniformly on $K$.

The determinant of a perturbation $U XU^*$ by an isometry equals $\det(I+X)$: decompose its target space into $\operatorname{ran}U$ and its orthogonal complement, on which the perturbation is zero. The fixed-$T$ comparison determinant is therefore
$$
\mathcal F_{22,Q}^\epsilon(s)
\prod_{\substack{u\leq Q\\t\leq T}}
\frac{\det(sI+A_{3;t,u}^{\rm aux})}
{\det(sI+D_{t,u})}.
$$
The pair factor is (CL.28), by the explicit blocks (CL.I3). Taking $P\to\infty$ at fixed $T$, and then $T\to\infty$ with (CL.K2), proves locally uniform convergence to (CL.27). The same trace-norm bound implies uniform summability of the deviations of the sufficiently late factors from one on every compact $K$; thus the infinite product is normal and defines a holomorphic function.

The limit is not identically zero: for positive real $s$, every finite factor is positive, the tail factors have summable deviations from one, and no factor vanishes. At an isolated zero $s_0\in\Omega_Q$, choose a small circle containing no other zeros and no excluded atom location. The limit determinant has positive minimum modulus on that circle. Local uniform convergence makes the difference smaller than that minimum, so Rouché's theorem gives exactly the same number of zeros inside, counted with analytic multiplicity, for all large $P$ on the chosen parity. Since the denominator in (CL.26) does not vanish there, these zeros are $s=-\lambda$ for the corresponding target eigenvalues. At zero, the exact power is (CL.25); dividing it out yields the appropriate auxiliary pseudodeterminant. Atom locations are excluded because the growing bulk denominator lives there. No isolated-root theorem at an excluded atom location is being claimed.

A useful explicit tail certificate is obtained from
$$
r_t=\frac{(\Delta)_t}{(2\Delta)_t},\qquad
\sum_{t=T}^{\infty}r_t
=r_T\,\frac{T+2\Delta-1}{\Delta-1}.
\tag{CL.K5}
$$
Indeed $r_{t+1}/r_t=(t+\Delta)/(t+2\Delta)$, and the proposed antiderivative
$q_t=r_t(t+2\Delta-1)/(\Delta-1)$ satisfies $q_t-q_{t+1}=r_t$, while $q_t\to0$ for $\Delta>1$. At fixed channel cutoff, the weights and terminating sums in (CL.A4) are $r_t$ times finitely many explicitly bounded rational factors. Bounding those factors for $t\geq T$ turns (CL.K5) into a computable trace-norm determinant tail certificate. The local uniform theorem uses the existence of these finite constants; a numerical truncation must record the constants actually used.

## CL.L. Integer-dimension rational tails and finite Gamma products

### CL.L.1. Removing square roots from the determinant

For scalar weights $h=\Delta/2$, (CL.A5) simplifies to
$$
\Omega_n(t)=
\frac{(2n+2\Delta-1)\Gamma(2\Delta+n-1)}{n!\Gamma(\Delta)}
\frac{(t-n+1)_n(t+3\Delta-1)_n}
{(t+\Delta-n)_{\Delta+2n}}
\tag{CL.L1}
$$
when $\Delta$ is a positive integer. It is rational in $t$. The terminating hypergeometric part of (CL.A4), denoted $H_{kr}(t)$, is also rational in $t$, because $k,r$ are fixed nonnegative integers. On the full bad-label set at fixed $u$, write
$$
w_{(k,\ell)}(t,u)=\Omega_k(t)\Omega_\ell(u),\qquad
\mathcal H_{\alpha\beta}(t,u)=H_{kr}(t)H_{\ell v}(u).
$$
For $\eta=(-1)^t$, (CL.I5) is
$$
R_{3;t,u}=\eta(-1)^u\,W^{1/2}\mathcal H W^{1/2}.
$$
Using $\det(I+XY)=\det(I+YX)$, the normalized triple factor becomes
$$
f_{u,\eta}(t;s)=
\det\!\left[
I+2\eta(-1)^u\mathcal H(t,u)
\operatorname{diag}_\alpha
\frac{a_\alpha w_\alpha(t,u)}{s+a_\alpha}
\right].
\tag{CL.L2}
$$
This diagonal gauge removes every square root from the determinant. It is valid first at admissible integer degrees, where the weights are positive, and then as a rational identity in $t$.

Take $K=u+2$ and $r_u=|\mathcal B_u|$. A common $t$-denominator for all entries in (CL.L2) is
$$
d_u(t)=
(t+\Delta)_\Delta
(t+\Delta-K)_K(t+2\Delta)_K
(-t)_K(t+3\Delta-1)_K.
\tag{CL.L3}
$$
The first three factors cover the denominator intervals in (CL.L1); the last two cover the terminating hypergeometric terms. Its degree is $\Delta+4K$. The entries tend to those of the identity matrix, so after multiplying by $d_u$, their numerators have degree at most $\deg d_u$. Therefore the determinant numerator and denominator have degree at most
$r_u(\Delta+4K)$, before cancellation. Since $r_u=O(u^2)$, summing over $u\leq Q$ and both parities gives a conservative $O(Q^4)$ root count for fixed $\Delta$.

The trace-norm estimate (CL.I7) implies, uniformly on compact $s$-sets away from the atoms,
$$
f_{u,\eta}(t;s)=1+O(t^{-\Delta}).
\tag{CL.L4}
$$
Cancel common factors in the rational function and normalize its numerator and denominator to be monic. The limit one makes their degrees equal. Since integer $\Delta\geq2$, the coefficient of $1/t$ vanishes. For the numerator roots $\alpha_j$ and denominator roots $\beta_j$, this is exactly
$\sum_j\alpha_j=\sum_j\beta_j$. This proves (CL.29).

### CL.L.2. Deriving the Gamma product

For a finite product of length $L$,
$$
\prod_{n=0}^{L-1}(m+2n-\alpha)
=2^L\frac{\Gamma(L+(m-\alpha)/2)}
{\Gamma((m-\alpha)/2)}.
$$
Use this identity for each numerator and denominator root. Equal root counts cancel the powers $2^L$. The Gamma ratio asymptotic
$\Gamma(L+a)/\Gamma(L+b)=L^{a-b}(1+O(L^{-1}))$
then cancels the remaining powers of $L$, because the root sums are equal. Taking $L\to\infty$ yields (CL.30).

The derivation can first be made at positive $s$, away from any accidental root collision or Gamma pole. The right side is symmetric separately in the numerator and denominator roots; permuting root labels has no effect. The left side is already the holomorphic determinant product from CL.K. Consequently the identity extends analytically on $\Omega_Q$ through root collisions and removable changes in degree. If an individual Gamma symbol is singular while the ratio has a removable limit, that limit is the definition. This is why no chosen ordering or global square-root branch is required. For noninteger $\Delta$, the long Gamma ratio in (CL.A5) does not in general become rational in $t$, and this argument proves no finite Gamma representation.

### CL.L.3. The two-dimensional chiral block at $\Delta=2$

For $u=0,t\geq2$, set
$$
w_0(t)=\frac6{(t+2)(t+3)},\qquad
w_2(t)=\frac{84(t-1)(t+6)}
{(t+1)(t+2)(t+3)(t+4)},
$$
$$
H(t)=1-\frac{50}{t(t+5)}
+\frac{300}{t(t-1)(t+5)(t+6)}.
\tag{CL.L5}
$$
These are (CL.L1) for $n=0,2$ and the $k=r=2$ terminating sum. Since the off-diagonal terminating sum is one,
$$
R_{3;t,0}=\eta
\begin{pmatrix}
w_0&\sqrt{w_0w_2}\\
\sqrt{w_0w_2}&w_2H
\end{pmatrix}.
\tag{CL.L6}
$$
The normalized determinant, with $a=24/5,b=8/35$, is
$$
f_{0,\eta}(t;s)=
\frac{(s+a+2\eta aw_0)(s+b+2\eta bw_2H)
-4ab\,w_0w_2}{(s+a)(s+b)}.
\tag{CL.L7}
$$
Substituting (CL.L5) and $C=(t+2)(t+3)$ into (CL.L7), clearing its common denominator, yields the polynomial (CL.31). This is an exact two-by-two determinant computation; its off-diagonal term only enters squared, avoiding any phase choice. The factors $C,C-2,C-6$ give the denominator roots listed after (CL.31). The $t=0$ auxiliary block has eigenvalue $3a$, while the $t=1$ auxiliary block is zero, giving the finite prefix there.

### CL.L.4. The completed nonchiral $\Delta=2,u=1,s=20$ specialization

The four bad labels are
$$
(0,0),(2,0),(1,1),(3,1),\qquad
a_\alpha=\frac{24}{5},\frac8{35},\frac{312}{35},\frac8{21}.
$$
Formula (CL.L2) is a four-by-four rational determinant. With $C=(t+2)(t+3)$, its numerator is $\sum_{j=0}^{10}c_j^\eta C^j$ and its common denominator is
$$
49512859\,C^4(C-12)(C-6)^2(C-2)^3.
\tag{CL.L8}
$$
The complete exact coefficient data are:

| $j$ | $c_j^+$ | $c_j^-$ |
|---:|---:|---:|
| 10 | 49512859 | 49512859 |
| 9 | -965349490 | -2005422050 |
| 8 | -36897892656 | 59626249104 |
| 7 | 2531703580048 | -2109151550192 |
| 6 | -55706313971344 | 39871122618736 |
| 5 | 448355770462944 | 59239627206624 |
| 4 | -804814733494656 | -13129076943639936 |
| 3 | -99602839321159680 | 231488302666106880 |
| 2 | 2354932309885747200 | -1819047222197452800 |
| 1 | -15868616384839680000 | 5323530281287680000 |
| 0 | 22777385983672320000 | 22777385983672320000 |

These two identities were independently reconstructed in the present assembly from (CL.L1)–(CL.L2), with symbolic $t$ and no import from the original recoupling code. The exact differences simplify to zero for both parity signs. The smaller blocks $t=0,1,2$, built with their actual admissible labels, give the factors
$25/31$, $8875/7843$, and $1413125/1388211$. The even and odd tails begin at $4$ and $3$.

For the full $Q=1,\epsilon=+1$ determinant one also needs the $u=0$ factors at $s=20$. Their numerator polynomials in $C$ are
$$
1829C^4-6912C^3-248132C^2+3022560C+7257600
$$
for even $t$, and
$$
1829C^4-22352C^3+292028C^2-3828960C+7257600
$$
for odd $t$; their denominator is $1829C^2(C-2)(C-6)$. They follow by specializing (CL.31). Combine their Gamma products, the $u=1$ products, both finite prefixes, and the pair factor (CL.28). A new evaluation at 80 decimal working precision gives
$$
\log\mathcal F_1^+(20)=
-0.03585462866989608117295310521438741375902240815406055763950798\ldots,
\tag{CL.L9}
$$
and
$$
\mathcal F_1^+(20)=
0.964780534718939024811782919504366521154710236000869935159\ldots.
$$
The normalized residual of each computed polynomial root was below $10^{-70}$, all four Gamma tail products were positive real within the recorded tolerance, and the logarithm agreed with the retained earlier decimal to $2.5\times10^{-60}$. This is a high-precision numerical evaluation of an exact formula, not an interval-certified claim of that many correct decimal digits.

## CL.M. Exact minimum certificate at $\Delta=2,Q=0$

Let $a=24/5,b=8/35$, and use (CL.L5). For each integer $t\geq2$, the trace and determinant of the positive semidefinite auxiliary triple matrix are the rational numbers
$$
\tau_t=a+b+2(-1)^t(aw_0+bw_2H),
$$
$$
d_t=(a+2(-1)^taw_0)(b+2(-1)^tbw_2H)-4ab\,w_0w_2.
\tag{CL.M1}
$$
At $t=9$, substitution gives
$$
x^2-\tau_9x+d_9
=\frac{825825x^2-3654200x+124032}{825825}.
\tag{CL.M2}
$$
The smaller root simplifies to (CL.32). It is positive because $d_9>0$ and $\tau_9>0$, and it is below $c=7/200$ because the polynomial in (CL.M2) is negative at $c$.

For the finite remaining range $2\leq t\leq128$, an exact rational certificate is as follows. It is sufficiently short to give in full; the only arithmetic is Python's exact Fraction type.

~~~python
from fractions import Fraction as F
a, b, c = F(24, 5), F(8, 35), F(7, 200)
for t in range(2, 129):
    eta = (-1)**t
    w0 = F(6, (t+2)*(t+3))
    w2 = F(84*(t-1)*(t+6), (t+1)*(t+2)*(t+3)*(t+4))
    h = 1 - F(50, t*(t+5)) + F(300, t*(t-1)*(t+5)*(t+6))
    tr = a + b + 2*eta*(a*w0 + b*w2*h)
    det = (a+2*eta*a*w0)*(b+2*eta*b*w2*h) - 4*a*b*w0*w2
    assert det >= 0 and tr > 0
    if t == 9:
        assert det > 0 and det-c*tr+c*c < 0
    elif det == 0:
        assert tr > c
    else:
        assert tr > 2*c and det-c*tr+c*c > 0
~~~

For a positive two-by-two matrix, the last pair of inequalities means both roots exceed $c$: the characteristic polynomial is positive at $c$, and the trace excludes the alternative that both roots lie below $c$. A zero determinant leaves the single positive root equal to the trace. Thus the certificate proves the required comparison for all 127 finite degrees; it does not use floating-point eigenvalues. The $t=0$ positive value is $3a$, and the $t=1$ auxiliary block is zero.

The infinite tail needs a uniform estimate. For $t\geq T=129$,
$$
\begin{aligned}
0<w_0(t)&\leq U_0:=\frac6{(T+2)(T+3)},\\
0<w_2(t)&\leq U_2:=
\frac{84(1+5/(T+1))}{(T+2)(T+3)},\\
|H(t)|&\leq U_H:=
1+\frac{50}{T(T+5)}
+\frac{300}{T(T-1)(T+5)(T+6)}.
\end{aligned}
\tag{CL.M3}
$$
For the second inequality, write
$w_2=84[(t-1)/(t+4)][(t+6)/(t+1)]/[(t+2)(t+3)]$
and bound the first bracket by one. The other factors decrease with $t$. The third inequality follows by the triangle inequality and decreasing positive reciprocal factors.

Gershgorin's row-sum bound, together with
$\sqrt{w_0w_2}\leq(w_0+w_2)/2$, gives
$$
\|R_{3;t,0}\|
\leq\max(U_0,U_2U_H)+\frac{U_0+U_2}{2}
=\frac{18595}{2397824}<\frac1{100}.
\tag{CL.M4}
$$
Hence
$$
A_{3;t,0}^{\rm aux}=D+2D^{1/2}R_{3;t,0}D^{1/2}
\geq\left(b-\frac{2a}{100}\right)I
=\frac{116}{875}I>\frac7{200}I.
\tag{CL.M5}
$$
This proves the comparison for every $t\geq129$.

The pair atoms and all positive pair-pair sums also exceed $c$. Thus (CL.32) is the smallest positive point of the compact set $\mathfrak S_0^\epsilon$ for both parities. CL.J supplies a uniform gap from zero in the target matrices, and CL-08 supplies Hausdorff convergence of their positive spectra. The minimum of a nonempty compact subset of a common bounded interval is Lipschitz under Hausdorff distance, so the smallest target positive eigenvalue converges to that point. This proves CL-11.

# Appendix SC. Proofs for the balanced and soft spectral limits

The arguments in this appendix use the exact pair coefficient and kernel theorem from Chapters 4 and 6. They reproduce the analytic and algebraic steps needed for Chapter 8, including the later corrections to metric transport, coherent-state counting and moving-region estimates.

## SC-A. Harmonic realization, trace law and support

### SC-A.1 The pair remainder and the mass transfer

Write $d$ for a representation parameter in this proof only. On a labelled polynomial factor, the pair Casimir is

$$
C_{ij}(d)=-(z_i-z_j)^2\partial_i\partial_j
+d(z_i-z_j)(\partial_i-\partial_j)+d(d-1).
$$

The homogeneous primary vector space

$$
V_P=\{f\in\mathbb C[z_1,\ldots,z_N]_P:\ \sum_i\partial_i f=0\}
$$

is independent of $d$. Its Hilbert form is the restriction of the tensor product form
$\langle z^\alpha,z^\beta\rangle_d=\delta_{\alpha\beta}\prod_i\alpha_i!/(d)_{\alpha_i}$.
For $d_0=1/2$,

$$
C_{ij}(d)-C_{ij}(d_0)
=(d-\tfrac12)(z_i-z_j)(\partial_i-\partial_j)+(d-\tfrac12)^2.
$$

Multiplication by one coordinate has norm at most $\sqrt2$ in the $d_0$ form between adjacent homogeneous degrees; differentiation has norm at most a constant times $P$. Hence the difference above has norm $O_{N,d}(P+1)$, whereas each pair Casimir has norm $O_{N,d}((P+1)^2)$ in this fixed auxiliary form. Expanding a fixed word one factor at a time shows that its normalized trace, after each left Casimir is divided by $P^2$ and each right one by $Q^2$, changes by $O(P^{-1}+Q^{-1})$. The estimate holds after the physical permutation projection, since the operators preserve its range.

This argument compares polynomial words. It does not assert uniform equivalence of physical norms as $P$ grows, and it does not apply a nonsmooth functional calculus in a nonphysical norm. To obtain a minimum, first choose one polynomial $p_\varepsilon(x,y)$ uniformly approximating $\min(x,y)$ on a fixed rectangle containing the pair spectra. At each parameter apply its approximation estimate in that parameter's own positive Hilbert form, where $C^L$ and $C^R$ commute and are selfadjoint. Compare the fixed polynomial traces by the preceding word argument. First take $P,Q\to\infty$, then take $\varepsilon\downarrow0$. For a general outer function, first repeat the argument for fixed polynomials in the pair sum, then approximate the outer continuous function on a common spectral interval. The order of these operations avoids an unjustified operator-norm comparison of minimum functions.

The exact pair coefficients imply

$$
w_{ij}=4\Delta(\Delta-2)I
-8\min(C_{ij}^L,C_{ij}^R)+R_{ij}.
$$

On every allowed pair channel, $R_{ij}$ vanishes for $|k-\ell|\geq4$, and

$$
|R_{ij}|_{(k,\ell)}\leq C_\Delta(1+\min(k,\ell))
$$

in the spin-zero and spin-two channels. This follows by polynomial division of the rational coefficients: the spin-two numerator has degree four and its denominator degree three; the spin-zero difference from the common Casimir term is at most linear. The exceptional $n=0$ coefficient is evaluated from its nonsingular formula, including at $\Delta=3/2$. Summing over finitely many pairs gives $\|\sum R_{ij}\|=O(P+Q+1)$. On the labelled auxiliary space one may set the remainder to zero in odd pair-parity channels; this is an auxiliary extension and does not introduce odd physical Einstein channels.

### SC-A.2 Coordinate-even harmonic tensors

Define a linear map by

$$
\mathcal T z^\alpha=\frac{y_1^{2\alpha_1}\cdots y_N^{2\alpha_N}}
{\prod_i(1/2)_{\alpha_i}}.
$$

The total lowering becomes $\Delta_y/4$, the total raising becomes multiplication by $\sum_i y_i^2$, and the image of $V_P$ is the coordinate-even part of the harmonic space $\mathcal H_{2P}(\mathbb R^N)$. The Fischer norm of $\mathcal Tz^\alpha$ is $4^P$ times the original norm, a constant over the degree-$P$ block. Thus the map is unitary after one degree-dependent scalar rescaling. If

$$
J_{ij}=-i(y_i\partial_{y_j}-y_j\partial_{y_i}),
$$

direct differentiation gives

$$
\mathcal T C_{ij}(1/2)\mathcal T^{-1}
=\frac14J_{ij}^2-\frac14.
$$

For an orthonormal frame $(u,v)$ let $\xi=(u+iv)/\sqrt2$. It satisfies $\xi^*\xi=1$ and $\xi\cdot\xi=0$, so $\psi_L(\xi)=\xi^{\otimes L}$ is a normalized symmetric traceless tensor. Its orbit is parametrized by the oriented Grassmannian, up to an irrelevant phase. The orbit average of its rank-one projector commutes with the orthogonal group; irreducibility of $\mathcal H_L$ and its trace one give the exact identity

$$
\int |\psi_L(\xi)\rangle\langle\psi_L(\xi)|\,d\xi
=\frac{I_{\mathcal H_L}}{\dim\mathcal H_L}.
$$

This also follows directly by invariant harmonic tensor contraction, so no semiclassical trace approximation has entered.

Write a generator on the tensor power as $\sum_{a=1}^L j^{(a)}$. In a fixed product of $m$ generators, the terms with $m$ distinct tensor slots contribute the product of their one-slot expectations, times $L(L-1)\cdots(L-m+1)$. All repeated-slot terms are $O_m(L^{m-1})$ because one-slot generators have bounded norm. Dividing by $L^m$ yields the classical product with error $O_m(L^{-1})$. In particular

$$
\frac{\langle J_{ij}\rangle}{L}=B_{ij},\qquad
\operatorname{symbol}\left(\frac{C_{ij}(1/2)}{P^2}\right)=B_{ij}^2
\quad(L=2P).
$$

The sign of the first identity depends on the harmless choice of generator orientation; the squared symbol does not. This derivation fixes the factor of four.

### SC-A.3 The actual physical projection

Before imposing coordinate-evenness, work on $\mathcal H_{2P}\otimes\mathcal H_{2Q}$. The relevant finite group is

$$
\mathcal G=\big((\mathbb Z_2)^N_L\times(\mathbb Z_2)^N_R\big)\rtimes S_N,
\qquad |\mathcal G|=2^{2N}N!.
$$

The permutation is the same on both factors. Averaging this group first selects coordinate-even polynomials in each factor and then diagonal Bose invariance. Exactly four elements, the independent choices of $\pm I$ on the two factors with identity permutation, act as identity on the even-degree harmonic tensor product.

For any other element, at least one factor has $|\xi^*g\xi|<1$ almost everywhere on the Grassmannian. An inserted fixed word of $m$ generators changes at most $m$ tensor slots, leaving a bound of the form $C_m L^m|\xi^*g\xi|^{L-m}$ before normalization. Dominated convergence therefore kills every noncentral term. This remains valid with the indicator of any fixed measurable region inserted into the integral.

Since

$$
\dim\mathcal H_{2P}(\mathbb R^N)
\sim\frac{2(2P)^{N-2}}{(N-2)!},
$$

the four central terms give

$$
\frac4{2^{2N}N!}\dim\mathcal H_{2P}\dim\mathcal H_{2Q}
\sim\frac{P^{N-2}Q^{N-2}}{N!((N-2)!)^2}.
$$

They also give the normalized Haar trace law. The dimension asymptotic has been obtained at the auxiliary parameter before the trace is transferred to the physical mass; there is no circular appeal to an already normalized physical law.

### SC-A.4 Support, atoms and spectral edges

The product of oriented Grassmannians is connected for $N\geq3$, and $a_{N,r}$ is continuous. Identical generic planes give $a=0$; for $r<1$ they lie inside the strict zero chamber. The coordinate planes $(1,2)$ on the left and $(1,3)$ on the right give $a=8r^2$. Thus the image is the full interval.

The comparison walls $B_e^2=r^2(B'_e)^2$ have measure zero: each is the zero set of a nonzero real analytic function. Away from them the symbol is analytic, with the chosen comparison set fixed. Every chamber expression except the all-zero one is nonconstant on an open set. To verify this, sums of a proper nonempty subset of squared Plücker coordinates are nonconstant: a coordinate plane supported on an edge inside the subset gives value one, and one outside gives zero. Analytic continuation then excludes constancy on any chamber where both the left and right subset sums occur. The critical set of a nonconstant analytic function has measure zero; local coarea on its complement proves absolute continuity of the pushforward on that chamber. There are finitely many comparison chambers. At $r=1$, zero requires $X=Y$, a set of measure zero. At $r<1$, only the all-zero chamber contributes an atom.

For the edges, the exact pair remainder and the total-Casimir identity imply

$$
0\leq A_N\leq 8Q(Q+N\Delta-1)I+O_{N,\Delta}(P+Q+1)I.
$$

Hence no eigenvalue escapes the limiting interval. Every interval inside the support has positive limiting empirical mass, so there are eigenvalues arbitrarily close to both endpoints. This proves the edge limits separately from the weak law.

### SC-A.5 The beta marginal and the mean

The projection of $e_1$ onto a random two-plane has squared length $R^2\sim\operatorname{Beta}(1,(N-2)/2)$. Conditional on that projection, the complementary normalized direction is uniform in the $(N-1)$-dimensional perpendicular space. Consequently $B_{12}=RW_1$, where $R$ and $W$ are independent and $W$ is uniform on $S^{N-2}$. The square of $W_1$ is $\operatorname{Beta}(1/2,(N-2)/2)$. Gamma duplication yields, for every nonnegative integer $m$,

$$
\mathbb E|B_{12}|^m
=\frac{(1)_{m/2}(1/2)_{m/2}}
{(N/2)_{m/2}((N-1)/2)_{m/2}}
=\frac{m!(N-2)!}{(m+N-2)!}.
$$

The moment problem on $[0,1]$ is determinate, proving the beta density in Chapter 8. If $U,V$ are two independent copies,

$$
\mathbb E\min(U^2,r^2V^2)
=2\int_0^r t(1-t)^{N-2}(1-t/r)^{N-2}\,dt.
$$

Multiplying by $-8\binom N2$, substituting $t=ru$ and expanding the first power gives the terminating hypergeometric formula.

## SC-B. Kernel volume and the strict excess zero atom

### SC-B.1 Weighted lattice counting

Let $J_N=2N(N-1)$ and
$q_N(M)=[x^M]\prod_{j=2}^N(1-x^j)^{-1}$, with $q_N(M)=0$ for $M<0$. For $N\geq3$,

$$
q_N(M)=\frac{M_+^{N-2}}{N!(N-2)!}
+O_N((M_++1)^{N-3}).
$$

The coefficient at $x=1$ gives the leading term. All other root-of-unity poles have lower order because $\gcd(2,\ldots,N)=1$; equivalently one may count weighted simplices by a fixed fundamental domain. At $N=3$ the error is bounded and periodic, which is sufficient.

Expanding the second product in the kernel series gives

$$
\kappa_N(P,Q)=
\sum_{\substack{m_1,\ldots,m_{N-1}\geq0\\\sum m_a=Q}}
q_N\left(P-J_N-\sum_{a=1}^{N-1}a m_a\right).
$$

There are $O(Q^{N-2})$ terms. The total error is $O(P^{N-3}Q^{N-2}+Q^{N-2})$, lower order than $P^{N-2}Q^{N-2}$. The fixed shift $J_N$ may be removed only at this leading asymptotic stage. The simplex Riemann sum has normalized density $(N-2)!$, giving $k_N(r)$ after division by the independently established $d_N$.

For completeness, if $T$ is uniform on an $(m-1)$-simplex and the nodes $a_1,\ldots,a_m$ are distinct, repeated integration of a truncated power gives

$$
\mathbb E(c-\textstyle\sum a_iT_i)_+^{m-1}
=\frac{((m-1)!)^2}{(2m-2)!}
\sum_{i=1}^{m}\frac{(c-a_i)_+^{2m-2}}{\prod_{j\ne i}(a_j-a_i)}.
$$

It can be proved by induction using the fundamental theorem of calculus on the last barycentric coordinate; the divided difference of a primitive replaces the last two nodes. Taking $m=N-1$, $a_i=ri$, $c=1$ produces the displayed spline formula. Continuity of the integrand gives continuity at every transition $r=1/a$.

### SC-B.2 The three-particle atom

For $N=3$ identify an oriented plane with its unit normal. Then $(B_{12}^2,B_{13}^2,B_{23}^2)$ is a permutation of the squared coordinates of a uniform sphere point, hence is Dirichlet with parameters $(1/2,1/2,1/2)$. Let $E_i=\{X_i<r^2Y_i\}$. For $r<1$, three simultaneous violations are impossible because both vectors sum to one. Since $|B_i|$ is uniform on $[0,1]$, $\Pr(E_i)=r/2$. By inclusion–exclusion,

$$
p_3=1-\frac32r+3\Pr(E_1\cap E_2).
$$

Integrating the two Dirichlet densities over the two comparison inequalities, or expanding the square-root boundary factors and integrating monomials, gives the positive series $q_2$ in Chapter 8. The coefficients are nonnegative. Since
$H_{s+1}^{\rm odd}/(s+1)\leq1$ and the remaining denominators increase, its tail is bounded by the geometric estimate displayed there.

For $0<r\leq1/2$, $k_3=1-3r/2$, so the excess is $3q_2>0$. For $1/2<r<1$, write

$$
d(r)=p_3(r)-\frac{(1-r)^2}{2r},\qquad
C(r)=\int_0^r\frac{t\,\operatorname{artanh}t}{1-t^2}\,dt.
$$

Twice differentiating the convergent series on a compact subinterval gives

$$
q_2''(r)=\frac{8C(r)}{\pi^2r^3},\qquad
d''(r)=\frac1{r^3}\left(\frac{24C(r)}{\pi^2}-1\right).
$$

The function $C$ is strictly increasing and diverges at one, so $d''$ changes sign at most once and is positive near one. The integral formulas give $d(1)=d'(1)=0$. Therefore $d(r)>0$ on the terminal convex interval, by integrating twice backwards from one. On any preceding interval $d$ is concave, and its two endpoint values are positive; it is positive there as well.

To obtain the endpoint, use

$$
C(1-\epsilon)=\frac18\log^2(1/\epsilon)+O(\log(1/\epsilon)).
$$

Thus $p_3''(1-\epsilon)=3\pi^{-2}\log^2(1/\epsilon)+O(\log(1/\epsilon))$. Integrate twice using $p_3(1)=p_3'(1)=0$. The exact integral

$$
\int_0^\epsilon(\epsilon-u)\log^2(1/u)\,du
=\epsilon^2\left[\frac12L^2+\frac32L+\frac74\right],
\quad L=\log(1/\epsilon),
$$

proves both the leading constant and the stated $O(\epsilon^2\log(1/\epsilon))$ remainder.

### SC-B.3 Shared-particle violations for arbitrary $N$

Let $E_e=\{|B_e|<r|B'_e|\}$. The beta marginal gives

$$
\Pr(E_e)=\frac{N-2}{N-1}r+O_N(r^2).
$$

Both $1-\sum_e\Pr(E_e)$ and $k_N(r)$ have linear term
$1-N(N-2)r/2$. Choose two edges sharing particle one, say $(1,2)$ and $(1,3)$. In the star representation

$$
(B_{12},\ldots,B_{1N})=RW,\quad
R^2\sim\operatorname{Beta}(1,(N-2)/2),\quad W\sim{\rm Haar}(S^{N-2}),
$$

$R,W$ are independent. The density of $(|W_1|,|W_2|)$ in the positive quarter disk is

$$
\frac{2(N-3)}{\pi}(1-s^2-t^2)^{(N-5)/2}.
$$

Conditional on $A=|B'_{12}|$, $D=|B'_{13}|$ and $R\geq2r$, the probability of the rectangle
$0\leq s<rA/R,\ 0\leq t<rD/R$
equals its area times the density at the origin, with error $O_N(r^4/R^4)$. The region $R<2r$ contributes $O_N(r^2)$, and integration of the error gives the same order. The logarithmic integral is

$$
\mathbb E[R^{-2};R\geq2r]=(N-2)\log(1/r)+O_N(1),
$$

while the independent right star satisfies
$\mathbb E(AD)=4/[\pi N(N-1)]$. Consequently

$$
\Pr(E_{12}\cap E_{13})
=\frac{8(N-2)(N-3)}{\pi^2N(N-1)}
r^2\log(1/r)+O_N(r^2).
$$

Now apply the union bound to the merged event $E_{12}\cup E_{13}$ and all remaining $E_e$. This gives
$p_N\geq1-\sum_e\Pr(E_e)+\Pr(E_{12}\cap E_{13})$ with a definite direction. Comparing with the Taylor expansion of the exact spline proves SC-03. Dividing by $1-k_N=N(N-2)r/2+O(r^2)$ gives its normalized lower bound.

An optional completely explicit range in four particles is

$$
p_4(r)-k_4(r)\geq r^2/90\qquad(0<r\leq e^{-23}).
$$

Here the shared-event integral satisfies

$$
\frac{\Pr(E_{12}\cap E_{13})}{r^2}
\geq\frac4{3\pi^2}
\left[\log(1/r)+\frac{37}{12}-\frac{\pi^2}{8}
+\log\frac{1+\sqrt{1-r^2}}2\right].
$$

This follows by integrating the four-particle star radius; the needed moments are
$\mathbb ET=1/3$ and
$\mathbb E(T\log T)=(2\log2-13/6)/3$, and the remaining angular integral is
$\int_{[0,1]^3}\log(tu^2+(1-t)v^2)\,dt\,du\,dv=\pi^2/4-4$.
For the stated range the lower bound is at least $143/45$. Finally
$1-6\Pr(E_e)=1-4r+r^2$ and $k_4=1-4r+25r^2/6$, leaving $1/90$. This explicit range is sufficient and is not asserted optimal.

## SC-C. Exact flags, polynomial transport and exponential min–max

### SC-C.1 A common algebraic flag for every pair

For an edge $e=(i,j)$ set $\delta=z_i-z_j$ and $s=(z_i+z_j)/2$. Use translation-invariant spectator coordinates $t_a=z_a-s$, $a\ne i,j$. On primaries the derivative in $s$ with the original spectators held fixed is $-\sum_a\partial_{t_a}$; it is not the derivative with the new $t_a$ held fixed. Thus

$$
C_e(d)=(d+\delta\partial_\delta)(d+\delta\partial_\delta-1)
-\frac{\delta^2}{4}\left(\sum_{a\ne i,j}\partial_{t_a}\right)^2.
$$

It is triangular in powers of $\delta$, and its distinct diagonal eigenvalues are $(d+k)(d+k-1)$. For $d>0$ their differences are
$(k-j)(2d+k+j-1)\ne0$ when $k\ne j$. Solving the triangular eigenvector equations therefore proves the exact identity

$$
F_e(K):=V_P\cap\delta^K\mathbb C[z]_{P-K}
=\bigoplus_{k\geq K}E_e(k;d).
$$

For a left and right pair define

$$
Z_e(d)=\sum_{\ell=0}^{Q}
F_e^L(\ell+3)\otimes F_e^R(\ell+1)^{\perp_d}
=\bigoplus_{k\geq\ell+3}E_e^L(k;d)\otimes E_e^R(\ell;d).
$$

The equality follows by decomposing each right orthogonal complement into its channels $0,\ldots,\ell$ and using the nested left flags. Pair-evenness converts $k\geq\ell+3$ into $k\geq\ell+4$. Thus on a physical Bose vector, $Z_e(d)$ is exactly the good space for pair $e$.

Let $M_P(d)$ be the positive Riesz operator **on $V_P$** defined by

$$
\langle f,g\rangle_d=\langle f,M_P(d)g\rangle_{1/2}.
$$

It is the restricted Riesz map; it is not generally diagonal in a primary basis. For any subspace $F\subset V_P$,
$F^{\perp_d}=M_P(d)^{-1}F^{\perp_{1/2}}$.
Since permutations preserve both forms, $M_P$ commutes with them. Therefore the one map

$$
\mathcal R_d=I\otimes M_Q(d)^{-1}
$$

is Bose equivariant and sends **every** $Z_e(1/2)$ to $Z_e(d)$ simultaneously.

### SC-C.2 Quantitative metric and channel bounds

Put $b=d-1/2>0$. The ambient monomial norm ratio is

$$
\prod_i\frac{(1/2)_{\alpha_i}}{(d)_{\alpha_i}}.
$$

It is at most one. Since $\log(1+x)\leq x$ and
$\sum_{j=0}^{n-1}(j+1/2)^{-1}\leq2+\log[2(n+1)]$,
it is at least
$m_P=e^{-2Nb}2^{-Nb}(P+1)^{-Nb}$.
Restricting a quadratic-form inequality preserves it, so

$$
m_PI\leq M_P(d)\leq I.
$$

For every labelled primary tensor $v$,

$$
m_P\|v\|_0^2\leq\|\mathcal R_dv\|_d^2
\leq m_Q^{-1}\|v\|_0^2.
$$

Taking the infimum over a common transported subspace gives the identical comparison for squared distances to $Z_e$. In particular this is uniform for all vectors in every subspace, as required by min–max.

The nonzero Einstein residual coefficients satisfy

$$
(2d+3)^{-3}\leq a_{k\ell}\leq20(d+Q)^2.
$$

Here is an algebraic certificate of the lower bound. In spin two the numerator is at least $(n+1)^4$ and the denominator at most $[(2d+3)(n+1)]^3$. For diagonal $n\geq1$, after combining denominators, put $x=d-1$, $m=n-1$. The numerator is

$$
\begin{aligned}
U={}&30m^4+120m^3x+180m^3+160m^2x^2+540m^2x+386m^2\\
&+80mx^3+480mx^2+772mx+348m\\
&+8x^4+120x^3+362x^2+348x+98.
\end{aligned}
$$

Every coefficient of $U-30(m+1)^4$ is nonnegative. Its denominator is at most $[(2d+3)n]^3$. The $n=0$ diagonal coefficient is evaluated separately and exceeds $(2d+5)/2$. Channels with the opposite spin orientation add a positive Casimir difference; in the remaining bad channels $\ell-k\geq4$, that difference alone is at least $32(2d+3)$. These inequalities imply the uniform lower bound. For the upper bound, the spin-two correction is at most $8(d+n)$, the diagonal correction at most $8(d+n)+4$, and the exceptional coefficient at most $2d+5$; the Casimir difference is at most $8(d+Q)^2$. The stated common upper bound covers all cases.

Let $B_0=\sum_e\Pi_{Z_e(1/2)^\perp}$, restricted to the physical space. Then

$$
\langle v,B_0v\rangle_0=\sum_e\operatorname{dist}_0(v,Z_e(1/2))^2.
$$

The residual quadratic form is the same sum of bad-channel squared norms with weights between $a_{\min}$ and $a_{\max}$. The norm and distance inequalities, followed by min–max using the invertible map $\mathcal R_d$ on every trial subspace, give

$$
a_{\min}m_Pm_Q\lambda_j(B_0)
\leq\lambda_j(A_d)
\leq\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0)
$$

for all ordered indices. Their exact kernels are carried into one another, so the zero indices coincide. Applying this twice proves SC-06, because all displayed factors and their inverses grow at most polynomially in $P,Q$.

### SC-C.3 Coherent tails and the extensive trial subspace

In the auxiliary harmonic tensor model, the bad-channel projector on a pair is the restriction of

$$
R_e=\mathbf1_{\{|J_e^L|-|J_e^R|\leq4\}}.
$$

Indeed $|J_e|=2k$ on its pair channel. Measurement of $J_e$ in $\xi^{\otimes2P}$ is the sum of $2P$ independent one-slot variables in $[-1,1]$, with mean $B_e$. The elementary exponential Markov argument for bounded independent variables gives Hoeffding's bound [Hoeffding]

$$
\Pr\{|J_e-2PB_e|\geq t\}\leq2e^{-t^2/(4P)}.
$$

Only the independence of the tensor slots in a single coherent vector is used; Plücker components belonging to different edges need not be independent.

If $|B_e|-r|B'_e|>\delta$ and $|Q/P-r|\leq\delta/4$, the absolute mean gap is at least $3P\delta/2$. If both deviations are at most $P\delta/2$, the measured gap exceeds $P\delta/2$, hence exceeds four once $P\delta>8$. Therefore, uniformly over the strict chamber,

$$
\langle\Psi,R_e\Psi\rangle\leq4e^{-P\delta^2/16},
\quad\Psi=\psi_{2P}(\xi)\otimes\psi_{2Q}(\xi').
$$

Let $D=\dim\mathcal H_{2P}\dim\mathcal H_{2Q}$ and let $\Pi$ be the physical projection. Define

$$
C_\Omega=D\int_\Omega\Pi|\Psi\rangle\langle\Psi|\Pi\,d\mu.
$$

The full resolution implies $0\leq C_\Omega\leq I$ on the physical space. Section SC-A.3, with the indicator inserted, gives
$\operatorname{Tr}C_\Omega/d_N\to\mu(\Omega)$ for a fixed region.
For $0<\tau<1$ set $E_\tau=\mathbf1_{[\tau,1]}(C_\Omega)$. If $e_\tau$ is its rank,

$$
e_\tau\geq\frac{\operatorname{Tr}C_\Omega-\tau d_N}{1-\tau}.
$$

This follows by bounding the trace on its complement by $\tau(d_N-e_\tau)$.

Let $B_{\rm full}=\sum_eR_e$. It is positive and commutes with $\Pi$. Hence
$B_{\rm full}\Pi\leq B_{\rm full}$ and

$$
\operatorname{Tr}(B_0C_\Omega)\leq4MD\,e^{-P\delta^2/16}.
$$

Although $B_0$ and $C_\Omega$ need not commute, positivity of
$B_0^{1/2}(C_\Omega-\tau E_\tau)B_0^{1/2}$ gives
$\tau\operatorname{Tr}(B_0E_\tau)\leq\operatorname{Tr}(B_0C_\Omega)$.
For every unit vector $v$ in the range of $E_\tau$,

$$
\langle v,B_0v\rangle
\leq\operatorname{Tr}(B_0E_\tau)
\leq\frac{4MD}{\tau}e^{-P\delta^2/16}.
$$

Thus the entire range has a uniform exponentially small Rayleigh quotient. Transporting it gives a physical trial subspace of the same dimension with Rayleigh quotient at most

$$
\frac{4MDa_{\max}}{\tau m_Pm_Q}e^{-P\delta^2/16}.
$$

The prefactor is polynomial for fixed $N,\Delta,\delta,\tau$, so it is eventually at most $e^{-P\delta^2/32}$. Min–max yields that many eigenvalues, possibly including zeros. Subtract the exact $\kappa_N$, divide by $d_N$, take $P\to\infty$, and finally let $\tau\downarrow0$. This proves SC-04.

Finally, conditional on the right plane, each left marginal $|B_e|$ has density bounded by $N-2$. The loss in replacing a weak comparison by a strict margin is at most $(N-2)\delta$ per edge. The union bound proves $p_N-p_{N,\delta}\leq K_N\delta$, with no independence assumption.

## SC-D. The uniform three-particle moving layer

### SC-D.1 Uniform group traces for an arbitrary measurable set

For $N=3$, $\mathcal H_{2P}$ is a spin-$2P$ representation and $D=(4P+1)(4Q+1)$. A signed permutation acts on even-degree harmonics as the rotation $R=\det(g)g$. Every nonidentity cubic rotation has $\sin^2(\theta/2)\geq1/2$. If $a$ is its axis and $n$ the coherent sphere direction,

$$
|\langle\psi_{2P}(n),R\psi_{2P}(n)\rangle|
=\left[1-\sin^2(\theta/2)(1-(n\cdot a)^2)\right]^{2P}.
$$

Its spherical integral is at most $1/P$. Indeed, with $t=|n\cdot a|$,
$1-t^2\geq1-t$ and $(1-(1-t)/2)^{2P}\leq e^{-P(1-t)}$.
For a noncentral group pair, one of the two factors therefore contributes at most $1/\min(P,Q)$.

The exact physical dimension is

$$
d_3(P,Q)=\frac{(P+1)(Q+1)+3e_Pe_Q+2c_Pc_Q}{6},
$$

where $e_P=1$ for even $P$ and zero otherwise, while
$c_P=1,-1,0$ for $P=0,1,2\pmod3$. It is at least $PQ/6$; also $D/d_3\leq150$ for positive $P,Q$. Subtract the volume multiple of the trace identity **inside each noncentral integral**:
the integrand is multiplied by $\mathbf1_\Omega-\mu(\Omega)$, whose absolute value is at most one. This avoids a needless factor two. Since there are $384-4=380$ noncentral terms,

$$
\left|\frac{\operatorname{Tr}C_\Omega}{d_3}-\mu(\Omega)\right|
\leq\frac{380}{384}\frac{150}{\min(P,Q)}
<\frac{160}{\min(P,Q)}.
$$

The estimate is uniform for every measurable $\Omega$, including a set changing with $P,Q$.

### SC-D.2 The finite kernel count and loss allocation

If $P\leq2Q$, expansion of the exact kernel series gives

$$
\kappa_3(P,Q)=\#\{(a,b)\in\mathbb Z_{\geq0}^2:
2a+3b\leq P-Q-12\}.
$$

To see why the second right-budget constraint disappears, its potentially excluded part would require $P-2Q-12>0$, which is impossible here. Attach a unit square to every admissible lattice point. Its union is contained in
$2x+3y\leq P-Q-7$, hence has area at most $(P-Q)^2/12$; if the original triangle is empty the conclusion is immediate. Together with $d_3\geq PQ/6$ this proves
$\kappa_3/d_3\leq(1-r)^2/(2r)$.

Set $\mu=p_3-k_3$, $\delta=\mu/12$, $\tau=\mu/8$. The margin strip costs at most $3\delta=\mu/4$. The hypothesis $\mu\geq1280/\min(P,Q)$ bounds the group error by $\mu/8$. The spectral cutoff costs at most $\tau=\mu/8$ in the rank estimate, so

$$
\frac{\dim E_\tau}{d_3}\geq p_3-\frac{\mu}{2}.
$$

Subtracting the finite upper bound on the kernel leaves at least $\mu d_3/2$ strictly positive eigenvalues. Substitution into the transported Rayleigh bound, with $M=3$, gives exactly the threshold
$96Da_{\max}(\mu m_Pm_Q)^{-1}e^{-P\mu^2/2304}$.
If $P\mu^2/\log P\to\infty$, the prefactor consumes at most half the exponent. The endpoint formula of SC-B gives

$$
\mu(1-cP^{-\beta}(1+o(1)))
=\left(\frac{3c^2\beta^2}{2\pi^2}+o(1)\right)
P^{-2\beta}\log^2P.
$$

Since $d_3\sim P^2/6$, this proves both constants in SC-07. The sufficient dominance condition holds up to and including $\beta=1/4$.

## SC-E. A precise classical analytic-charge obstruction

Use the product Lie–Poisson bracket

$$
\{F,G\}=x\cdot(\nabla_xF\times\nabla_xG)
+z\cdot(\nabla_zF\times\nabla_zG)
$$

on $|x|=1$, $|z|=r$. Let $d_i=x_i^2-z_i^2$. Each chamber in which only $d_i$ is negative is nonempty for $0<r\leq1$, and there $h_r=-8(r^2+d_i)$. If a globally real analytic $F$ commutes with $h_r$ on all strict chambers, the analytic identity theorem gives $\{F,d_i\}=0$ everywhere on the connected orbit. Jacobi then gives commutation with

$$
c=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),
$$

and with

$$
e=\{d_1,c\}
=8[x_1^2(x_3^2-x_2^2)-z_1^2(z_3^2-z_2^2)].
$$

The six gradients of $|x|^2,|z|^2,d_1,d_2,c,e$ have determinant, at $z_1=0$,

$$
-2048x_1^3x_2x_3z_2^2z_3^2.
$$

At $x=(2/3,2/3,1/3)$ and $z=(0,3r/5,4r/5)$ this is
$-524288r^4/16875\ne0$. Therefore the Hamiltonian vector fields of $d_1,d_2,c,e$ span the four-dimensional tangent space on a nonempty open set. Their common first integral $F$ is constant there, hence everywhere by analyticity. For $r>1$ exchange the factors and rescale. This argument rules out exactly the global analytic class stated in SC-08; it does not classify piecewise analytic integrals or quantum charges without a proved symbol correspondence.

## SC-F. Why the fixed-budget Gram comparison does not extend to balance

**Proposition SC-09 (exact Hilbert–Schmidt obstruction).** Fix $N\geq4$ and $\Delta>1$, and set $P=Q=L\to\infty$. Let $T_{\rm norm}=I+K_L$ be the auxiliary Gram operator used in the fixed-right-degree identity comparison. Then

$$
\frac{d_{\rm aux}(L,L)}{d_N(L,L)}
\longrightarrow\frac12\binom N2,
\qquad
\liminf_{L\to\infty}
\frac{\|K_L\|_{\rm HS}^2}{d_{\rm aux}(L,L)}
\geq1-\frac{2}{\binom N2}>0.
$$

All norms refer to the positive auxiliary Hilbert form. This excludes that normalized Hilbert–Schmidt approximation to the identity in the balanced regime. It does not exclude changing the comparison operator or first removing dependencies.

**Proof.** Put $M=N-2$. The spectator **full-level** space, rather than its primary quotient, has identity-Molien leading dimension

$$
H_M(L-k,L-\ell)\sim
\frac{(L-k)^{M-1}(L-\ell)^{M-1}}{M!((M-1)!)^2}.
$$

The leading auxiliary bad-pair domain is $0\leq k\leq\ell\leq L$. The extra strip of width two has lower degree, and pair parity supplies a factor one half. Therefore

$$
\begin{aligned}
d_{\rm aux}(L,L)
&\sim\frac{L^{2M}}{2M!((M-1)!)^2}
\int_{0\leq u\leq v\leq1}(1-u)^{M-1}(1-v)^{M-1}\,du\,dv\\
&=\frac{L^{2N-4}}{4((N-2)!)^3}.
\end{aligned}
$$

Division by SC-01's physical dimension proves the ratio.

There is no physical baseline kernel at $P=Q$. Indeed, equality would put every pair in $k_L\geq k_R+4$, where
$C_{ij}^L-C_{ij}^R\geq8\Delta+12>0$. But the pair-Casimir sum identity gives zero for the sum of these differences on a $(L,L)$ primary. Taking its quadratic form on a putative common good vector is a contradiction. Thus the physical residual has full rank, and the auxiliary Gram has exactly $d_{\rm aux}-d_N$ zeros. Each contributes the exact eigenvalue $-1$ to $K_L=T_{\rm norm}-I$. Their squared contribution proves the lower bound. At $N=4$, the ratio tends to three and the lower bound is $2/3$.

# Appendix ST. Stable metrics, normal forms and effective low operators

This appendix proves the steps behind Chapter 9 that depend on the creation normalization, the singular physical metric or the finite determination of an effective differential operator. All coefficient conventions are those of the exact pair operator in Chapter 4.

## ST-A. Occupation counting and analytic Hermitian reduction

### ST-A.1 Why there are only three powers of $N$

Let a creation monomial have occupation numbers $n_\alpha$ for $\alpha\ne0$ and $r=\sum n_\alpha$. In its averaged tensor realization there are $N-r$ zero excitations. The numbers of unordered selected pairs are

$$
\binom{N-r}{2},\qquad (N-r)n_\alpha,\qquad
\begin{cases}
n_\alpha n_\beta,&\alpha\ne\beta,\\
\binom{n_\alpha}{2},&\alpha=\beta.
\end{cases}
$$

Applying a fixed pair map to those choices gives the operator formula of ST-01. Conservation of both nonnegative excitation degrees forces a zero–zero input to remain zero–zero. It also prevents a nonzero input from disappearing into two zero modes. Thus the only quadratic dependence on $N$ is the scalar zero–zero contribution. Expanding $(N-\mathcal R)(N-\mathcal R-1)$ and the source-ordered middle term gives
$\gamma_{00}\binom N2+N\mathscr A+\mathscr B$ with exactly the coefficients in Chapter 9.

The averaged occupation map has squared norm

$$
\frac{\prod_\alpha h_\alpha^{n_\alpha}}{N!}
(N-r)!\prod_\alpha n_\alpha!
=\frac{g_s}{(N)_{\downarrow r}}.
$$

This calculation is also a direct normalization check against canonical Fock operators. The symbolic creation matrix acts in this averaged basis, so its selfadjointness condition is

$$
\Gamma_{\rm occ}(N)W_N=W_N^*\Gamma_{\rm occ}(N),
$$

and not $W_N=W_N^*$ in the coordinate Euclidean metric.

The generating function
$A(z,w)=\sum a_{pq}z^pw^q/(p!q!)$ obeys
$D_LA=zA$, $D_RA=wA$.
Multiplication by $\exp(-a_{10}z-a_{01}w)$ removes those two translation directions and produces the $c_{pq}$. Conversely multiplication by the inverse exponential recovers every $a_{pq}$. This proves the centered coordinate theorem and the identification of the simultaneous lowering kernel.

### ST-A.2 A regular orthonormal frame at $t=0$

On any fixed stable full excitation space put $t=N^{-1/2}$. The diagonal matrix

$$
U_s(t)=t^{r_s}\sqrt{g_s}\,
\prod_{j=0}^{r_s-1}(1-jt^2)^{-1/2}
$$

is analytic for small real $t$, using the positive analytic square root of the even factor. If a matrix entry sends count $r$ to $r'$, conjugation multiplies it by $t^{r'-r}$ times an analytic even nonvanishing factor. In $\mathscr A$, only $r'=r,r+1$ occur. In $\mathscr B$, only $r'=r-1,r,r+1$ occur. One sees this either from the pair count or directly from the fact that a nonzero conserved pair degree has at least one nonzero output excitation. Hence
$U(\mathscr A+t^2\mathscr B)U^{-1}$
has only nonnegative powers of $t$, beginning at orders zero or one.

The physical selfadjointness identity holds for every sufficiently large integer $N$. After clearing the finite denominators it is a polynomial identity in $N$, so it holds for all real $N$ in the domain where the Gram form is positive. Consequently the conjugated analytic matrix is Hermitian for every sufficiently small nonzero real $t$, and by continuity also at zero. Its parity is
$H(-t)=\Pi_{\rm occ}H(t)\Pi_{\rm occ}$,
with $(\Pi_{\rm occ})_{ss}=(-1)^{r_s}$.

Let $C$ be the constant embedding matrix of a centered monomial basis into the full occupation basis. For a centered monomial with $\ell$ factors, the unique term with $\ell$ excited factors is the product of its uncentered higher moments; every other term contains additional $a_{10}$ or $a_{01}$ factors and has strictly larger factor count. Distinct centered monomials have distinct leading occupation terms. Thus

$$
V(t)=U(t)C\,\operatorname{diag}(t^{-\ell})
$$

is analytic at zero and has independent columns there. Its Gram matrix
$\Gamma_{\rm frame}(t)=V(t)^*V(t)$ is analytic positive definite near zero. Choose its analytic Cholesky factor $\Gamma_{\rm frame}=LL^*$ and set $E(t)=V(t)L(t)^{-*}$. Then $E^*E=I$ and
$\widehat H(t)=E(t)^*H(t)E(t)$
is analytic Hermitian on a fixed coordinate space. The column-count parity intertwines $V(-t)$ with $\Pi_{\rm occ}V(t)$; uniqueness of the normalized Cholesky factor gives the corresponding primary parity relation.

Rellich's local theorem [Rellich] now applies exactly: a matrix analytic on a real interval and Hermitian at every real point has an analytic unitary eigenbasis and analytic real eigenvalues. The construction has supplied the fixed Hilbert space and real interval required by that theorem. It also explains why applying analytic eigenvalue theory directly to the non-Hermitian coordinate matrix $\mathscr A+u\mathscr B$ at a Jordan point would give the wrong unrestricted Puiseux conclusion.

### ST-A.3 A perturbative algorithm that respects clusters

For a simple leading eigenvalue, the usual recursive procedure is valid: project the coefficient equation along the leading vector to obtain the next eigenvalue coefficient, and solve on its orthogonal complement with the reduced inverse. At a degenerate leading eigenvalue $\lambda_0$, first retain its entire orthogonal spectral projection $P$, let $Q=I-P$, and put
$R_0=[Q(H_0-\lambda_0)Q]^{-1}$.
Writing $H=H_0+V(t)$, an invariant graph $P+\chi$, $\chi=Q\chi P$, satisfies

$$
\chi=-R_0\big[
QVP+QV\chi-\chi PVP-\chi PV\chi
\big].
$$

This equation recursively determines the graph without dividing inside the leading cluster. Its coordinate effective matrix is
$\lambda_0P+PVP+PV\chi$.
Conjugation by the positive square root of its graph metric $P+\chi^*\chi$ makes it Hermitian. Diagonalize the first non-scalar coefficient within that full cluster and repeat if it remains degenerate. This procedure is constructive and uses only finite matrix operations at fixed $(P,Q)$. Parity is preserved throughout, but it can pair two distinct branches rather than make each branch even.

### ST-A.4 The displayed Jordan example

For $(4,1)$, exact pair-projector evaluation and centered substitution give the matrix in ST-03. At a zero of the cubic $F(d)=2d^3-37d^2-11d+100$, its nilpotent part sends the first basis vector to $v(-1,1)$ in the last two coordinates and kills those coordinates, so it has rank one and square zero. The cubic has precisely two roots above one: $F(1)>0$, $F(2)<0$, $F(20)>0$, and
$F'(d)=6d^2-74d-11$ has only one critical point above one, a minimum. Evaluating $F$ at the rational endpoints in ST-03 isolates the roots.

The row vector $\ell=(-2,1,1)$ is an exact left eigenvector of $N\mathscr A+\mathscr B$ with eigenvalue $s_0N+b_0$. Its kernel is the invariant plane with columns

$$
S=\begin{pmatrix}1&0\\2&-1\\0&1\end{pmatrix}.
$$

Restriction through $S$ gives the two-dimensional matrix printed there. Expanding its quadratic characteristic polynomial proves the exact square-root formulas. Since $k,v>0$, the resonant splitting is actually nonzero; it is not inferred from the existence of a Jordan block alone.

### ST-A.5 The spectral curve and protected collisions

Let $h=b_{11}-b_{22}$ and
$\mathcal D(N)=(\delta N+h)^2+4kv(N+6/d)$.
It is strictly positive for every real $N>-6/d$, so the two plane eigenvalues remain separated throughout the physical stable range. Direct expansion gives

$$
\begin{aligned}
\operatorname{disc}_N\mathcal D&=
\frac{1728d^6(d+1)(d+3)(d+4)(2d^2+d-4)}
{(2d-1)^3(2d+1)^3(2d+3)^4(2d+5)^4}\\
&\quad\times(2d^2+25d+36)(2d^4+31d^3+77d^2+47d-4).
\end{aligned}
$$

All factors except $2d^2+d-4$ are positive for $d>1$. Away from $\delta=0$, the two finite branchpoints are a complex conjugate pair for $1<d<d_*$, and real outside $N>-6/d$ for $d>d_*$. At $d=d_*$ they coalesce and the radical is a perfect square. At a root of $\delta$, the polynomial becomes linear in $N$; one branchpoint moves to infinity and the remaining one is
$-6/d-h^2/(4kv)<0$.
This spectral curve gives a direct explanation for the square-root parameter at the physical mass resonances.

For the plane matrix $H_2$ and the exact third branch $\lambda_0=s_0N+b_0$,

$$
\det(H_2-\lambda_0I)=
-\frac{18d^2(d+3)(d+4)(2d^2+d-4)
[5d^2N+12d^2+7dN+60d+60]}
{(2d-1)^2(2d+1)(2d+3)^2(2d+5)^2}.
$$

At $d=d_*$ the full three-dimensional matrix minus $\lambda_0I$ has rank one: its two-dimensional invariant plane contributes one copy of $\lambda_0$, and the exact rank-one minors verify that the remaining copy is independent. Its physical eigenspace therefore has dimension two. This is the next protected doublet of the exact $Q=1$ family. Both factor identities are obtained by substituting the rational entries of ST-03 and clearing their displayed denominators, so their verification is finite polynomial algebra.

## ST-B. The residue test and finite algebraic linearization

The endpoint weights can be obtained by projecting the endpoint tensor $z_1^p$ onto pair-primary descendants. They satisfy

$$
\sum_{k=0}^p\alpha_{p,k}=1,\qquad
\sum_{k=0}^p(-1)^k\alpha_{p,k}=\mathbf1_{\{p=0\}}.
$$

The first identity is completeness of the orthogonal pair projectors; the second inserts the exchange operator, whose expectation on the endpoint tensor is zero for $p>0$. At $d=1/2$,

$$
\alpha_{p,0}=\frac{(1/2)_p}{(1)_p}
=\frac{\binom{2p}{p}}{4^p}=f_p.
$$

All the weights are regular at that parameter. In the exact Einstein sequence only $\gamma_{00}$ has a simple pole there, with residue $3/2$ relative to $2d-1$. The apparent pole in the spin-two $n=0$ formula cancels a numerator factor. In the diagonal $n=1$ channel the factor
$C+\mu=d(2d-1)$ is squared, so its apparent pole also cancels. All other denominators are nonzero there.

For any nonzero bidegree, the total even-pair weight is $1/2$. Thus the residue of
$2\sum\alpha_{p,k}\alpha_{q,\ell}(\gamma_{k\ell}-\gamma_{00})$
is $3(f_pf_q-1/2)$, proving ST-04's formula. This use of $d=1/2$ is a rational-function identity test outside the physical mass range.

Legendre's factorial valuation formula gives
$v_2\binom{2n}{n}=s_2(n)$, so
$v_2(f_n)=s_2(n)-2n$. For $p+q\geq2$,
$E(p,q)\geq2$; hence
$v_2(2f_pf_q-1)=1-E(p,q)$ and
$v_2(\rho_{pq})=-E(p,q)$.
For a genuine splitting into at least two primary indices, binary subadditivity gives
$E(\alpha)\geq\sum_iE(\beta_i)$, and every summand is positive. The proposed difference of residues has a unique term of least valuation, so cannot vanish.

To construct an eigenvariable $u_\alpha$, order monomials of degree $\alpha$ by their number of factors. Begin with $c_\alpha$. Suppose all terms through a chosen factor count have been removed from
$(\mathscr A-\sigma_\alpha)u_\alpha$. A remaining monomial
$\prod_i c_{\beta_i}$ has diagonal action $\sum_i\sigma_{\beta_i}$ and a triangular tail of higher count. Divide its coefficient by
$\sigma_\alpha-\sum_i\sigma_{\beta_i}$ and add the corresponding monomial to $u_\alpha$. The unwanted term cancels and only higher-count terms are introduced. The process stops because every factor has total degree at least two. The substitutions have leading coefficient one and hence an inverse of the same triangular form. On every finite cutoff the nonzero denominators are finitely many rational functions; their physical zeros form a finite exceptional set.

## ST-C. The character, finite jets and the first correction

### ST-C.1 An exact character derived without an eigenvector ansatz

Let $f$ be a centered chiral homogeneous polynomial of weight $P$, and write $f_1$ for the coefficient of $a_1^P$ and $f_2$ for that of $a_2a_1^{P-2}$. The lowering identity $Df=0$ implies

$$
Pf_1+2f_2=0.
$$

The coefficient of $a_1^p$ in $c_p$ is $(-1)^p(1-p)$, so
$\mathcal L(f)=(-t)^P f_1$ is exactly the multiplicative character
$\mathcal L(c_p)=(1-p)t^p$.

Only two kinds of excited pair input can contribute to the coefficient of $a_1^P$ after applying $W_N$: $(1,1)$ already present in $a_1^P$, and $(0,2)$ in $a_2a_1^{P-2}$. The exact degree-two pair matrix gives their output coefficients

$$
A=\frac{d\gamma_0+(d+1)\gamma_2}{2d+1},
\qquad B=\frac{d(\gamma_0-\gamma_2)}{2d+1}.
$$

For example these follow by taking the Gram-orthogonal projectors onto the descendants of $1$ and the primary $(z_1-z_2)^2$ in the degree-two pair space. The zero–zero and zero–one selected pairs contribute $\gamma_0$ unchanged. Literal pair counting therefore gives

$$
[a_1^P](W_N f)=
\left\{\gamma_0\left[\binom N2-\binom P2\right]
+\binom P2 A\right\}f_1
+(N-P+1)Bf_2.
$$

With $s=(\gamma_2-\gamma_0)/[2(2d+1)]$ and $f_2=-Pf_1/2$, this is

$$
\left[\gamma_0\binom N2+sP(Nd+P-1)\right]f_1.
$$

Comparison of powers of $N$ proves
$\mathcal L\mathscr A=sdP\,\mathcal L$ and
$\mathcal L\mathscr B=sP(P-1)\mathcal L$.
The character is nonzero for $P\geq2$ because $\mathcal L(c_P)=(1-P)t^P$.
Hence its scalar is an exact eigenvalue of the finite matrix. Under nonnegative affine defects it equals the global lower bound, which proves attainment as well as the exact minimum. This proof works for arbitrary real chiral coefficients and explains which later conclusions use positivity.

### ST-C.2 A finite exact prescription for the determining jets

At total pair degree $T$ use the basis $z_1^jz_2^{T-j}$, $0\leq j\leq T$, with

$$
\Gamma_T=\operatorname{diag}\left(
\frac{j!(T-j)!}{(d)_j(d)_{T-j}}\right).
$$

Construct the two lowering and raising matrices by

$$
(L_-)_{j-1,j}=j,\quad (L_-)_{j,j}=T-j,
\qquad
(L_+)_{j+1,j}=j+d,\quad (L_+)_{j,j}=T-1-j+d.
$$

Then
$C=(T+d)(T+d-1)I-L_+L_-$.
Its pair-channel projector is the finite polynomial

$$
\Pi_k=\prod_{\substack{0\leq\ell\leq T\\\ell\ne k}}
\frac{C-C_\ell I}{C_k-C_\ell}.
$$

Alternatively start with
$v_{k,j}=(-1)^{k-j}\binom kj$, raise it $T-k$ times using $L_+$, and set
$\Pi_k=v_k(v_k^*\Gamma_T)/(v_k^*\Gamma_Tv_k)$.
Both formulas are exact over $\mathbb Q(d)$ and yield
$\Pi_k^2=\Pi_k$ and $\Pi_k^*\Gamma_T=\Gamma_T\Pi_k$.

For Einstein in a chiral block,

$$
w_T=-4d^2\,\Pi_{\rm even}
+(\gamma_0+4d^2)\Pi_0+(\gamma_2+4d^2)\Pi_2.
$$

Here $\Pi_{\rm even}$ is the exchange-even projection, so no choice of unphysical odd-channel coefficient is used. Map each output monomial to its creation product, apply the unordered occupation formula to centered input polynomials, and set $a_1=0$ at the end. A primary polynomial expressed in centered coordinates has precisely those coordinates after this substitution, so this extracts its centered matrix without an inversion ambiguity.

For each higher generator, use $qKc_p=0$ recursively. The degree-four, degree-five and degree-six retractions are those printed in ST-05. Applying the resulting $q$ to the six low monomials gives exactly the six values of ST-06. Only total pair degrees through six occur. Together with the order-two proof in Chapter 9, those identities establish the operator in every degree.

### ST-C.3 The oblique inverse and the order-three theorem

At one weight order the coordinate basis as low monomials followed by all others. Then

$$
K=\begin{pmatrix}0&T\\0&D\end{pmatrix},\quad
q=\begin{pmatrix}I&-TD^{-1}\\0&0\end{pmatrix},\quad
R=\begin{pmatrix}0&TD^{-2}\\0&D^{-1}\end{pmatrix}.
$$

The matrix $D$ is invertible because its eigenvalues are positive. Both the upper-right block of $q$ and that of $R$ are required. Omitting the latter changes the effective correction.
If $L=-TD^{-1}$, write $\mathscr B$ in the same blocks and set

$$
B_{\rm low}=B_{LL}+LB_{HL},\quad
R_H=D^{-1}B_{HL},\quad R_L=TD^{-1}R_H.
$$

Then the exact correction matrix is

$$
C_2=-B_{\rm low}R_L-(B_{LH}+LB_{HH})R_H.
$$

This formula is the finite implementation of $-q\mathscr BR\mathscr B$ used in the independent checks.

For the differential order, use the characterization that an operator has order at most $m$ exactly when every $(m+1)$-fold commutator with multiplication vanishes. Both $q$ and $R$ commute with low multiplication: $K$ does because it is a derivation annihilating the low algebra, and the same follows for its exponential, spectral projection and reduced inverse. Expand a fourfold commutator of $q\mathscr BR\mathscr B$. A term with three commutators on either $\mathscr B$ vanishes. Every surviving possibility has two on each. A double commutator of an order-two operator is a multiplication $M_h$; multiplicativity gives
$qM_h=M_{q(h)}q$, hence
$qM_hR M_{h'}=0$.
This proves order at most three.

The character identity gives $\mathcal L\mathscr BR=0$, because $\mathcal LR=0$. Hence the correction has image in $\ker(\mathcal L|_{\mathcal S})=(J)$. If a differential operator $D=\sum a_\alpha\partial^\alpha$ has image in an ideal $I$, its coefficients lie in $I$: apply it first to $1$, then to monomials in increasing degree, subtract the already known lower-derivative contributions, and divide by the nonzero integer factorial. Applying this with $I=(J)$ proves coefficient divisibility. Weight zero and order at most three now allow only
$J\partial_y^2$, $J\partial_x^3$, $Jx\partial_x\partial_y^2$, $Jy\partial_y^3$.
The determining finite jets therefore prove the asserted four-function formula globally.

### ST-C.4 Complete coefficient table

In the following formulas $d=\Delta$. Define

$$
D_3=34d^3+273d^2+611d+240,
$$

$$
D_4=86d^4+1085d^3+4743d^2+7834d+2800,
\quad
E_4=214d^4+2709d^3+11915d^2+19854d+7056,
$$

$$
\begin{aligned}
P_7={}&392d^7+9492d^6+89350d^5+421595d^4\\
&+1048276d^3+1289469d^2+633490d+102000,
\end{aligned}
$$

$$
\begin{aligned}
P_{14}={}&67104d^{14}+3197136d^{13}+66188408d^{12}
+795919444d^{11}\\
&+6226850796d^{10}+33484727498d^9+127072393159d^8\\
&+343156515762d^7+655642305361d^6+869816630456d^5\\
&+776152186308d^4+445514734144d^3+155217203264d^2\\
&+29611287360d+2362752000,
\end{aligned}
$$

$$
\begin{aligned}
P_{11}={}&16d^{11}-1776d^{10}-52556d^9-618940d^8-4053536d^7\\
&-16362829d^6-41978760d^5-67587211d^4\\
&-64664772d^3-33117132d^2-8025696d-677376.
\end{aligned}
$$

Then

$$
r_0=-\frac{162(d+2)(d+3)(d+4)^2(2d^2+9d+3)P_7}
{(d+1)(2d-1)(2d+3)D_3^3},
$$

$$
r_1=\frac{24(d+2)^2(d+3)(d+4)^2(2d^2+9d+3)}
{(d+1)(2d-1)(2d+3)D_3},
$$

$$
r_2=-\frac{54(d+3)(d+4)P_{14}}
{5(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^2D_4},
$$

$$
r_3=-\frac{405(d+2)(d+3)(d+4)(d+5)(2d^2+11d+6)^2P_{11}}
{(d+1)(2d-1)(2d+1)(2d+3)(2d+7)D_3^3E_4}.
$$

Every denominator is strictly positive for $d>1$. The numerators need not have a common sign, and no such sign is used in the perturbation theorem.

The independent symbolic verifier constructs the complete pair-derived matrices at weights $6,8,9$, forms the complete oblique inverse above, and checks every entry of $C_2$ against these expressions as rational functions of $d$. The order-three and cusp-ideal argument shows why those finite identities determine the all-weight formula; checking a few numerical masses alone would not suffice.

### ST-C.5 Gegenbauer diagonal extraction and convergence

The recurrence for $F_b$ follows by matching the coefficient of
$x^{3j}y^{b-2j}$ in $J\partial_y^2F_b=b(b-1)F_b$. Its denominator is positive whenever $1\leq j\leq b/2$, so the polynomial is uniquely defined. Its first lower coefficient is

$$
f_{b,1}=\frac{2b(b-1)}{2b-3}.
$$

Acting with $C_2$ on a monomial $x^ay^b$ can raise its $y$ degree by at most two. To extract the diagonal coefficient in the triangular $x^aF_b$ basis, take its monomial diagonal contribution, include the contribution from the first lower monomial of $F_b$, and subtract the first lower term of the generated $F_{b+2}$ component. The contributions from more distant lower powers cannot return to $y^b$. This gives

$$
\eta(a,b)=b(b-1)\left[
r_0+r_2a+r_3(b-2)+
2r_1\left(
\frac{(a+1)(a+2)(a+3)}{2b-3}
-\frac{a(a-1)(a-2)}{2b+1}\right)\right].
$$

For $b=0,1$ the prefactor is zero; its denominators remain nonzero. For any fixed weight, the allowed $b$ have a fixed parity, so $b(b-1)$ is strictly increasing on that list. The first reduced matrix is therefore simple when $\varepsilon>0$.

Finally, since zero is semisimple and isolated in $K$, its finite Riesz projection and invariant graph for $K+u\mathscr B$ are analytic in a complex neighborhood of $u=0$. Their reduced matrix starts with $uB_{\rm low}$; after division by $u$, the simple roots at zero continue analytically. Multiplying back by $N=1/u$ produces a convergent integer expansion of the original energy coefficient. The rational recursions use only positive higher-generator gaps and nonzero first-low gaps, so at each fixed weight their coefficients are rational in $d$ with no physical poles. No analogous assertion about the complete nonchiral pencil is needed.

# Appendix UN. Exact determining identities for the universal low operator

The all-degree form of the operator in UN-04 is proved by differential order, the exact character and weighted degree. This appendix records a short exact calculation of its coefficient. It also documents two independent ways to compute the determining data, so that the general statement can be reproduced without referring to an old numerical fit.

## UN-A. Constructing the degree-six defect operator

Subtract the affine pair function through channels zero and two. Through total degree six the remaining pair operator is

$$
w_T=v\Pi_4+w\Pi_6,
$$

with a term absent when its relative degree exceeds $T$. Use the physical pair Gram matrix and the finite spectral projectors described in Appendix ST-C.2. Two equivalent, independently implementable constructions are:

1. Interpolate the Casimir matrix:
$\Pi_k=\prod_{\ell\ne k}(C-C_\ell)/(C_k-C_\ell)$.
2. Raise the primary $(z_1-z_2)^k$ to degree $T$, and form its rank-one projector using the exact Gram form.

Both use the positive pair norm $j!(T-j)!/[(d)_j(d)_{T-j}]$. A check of idempotence alone would not verify the physical normalization; the identity $\Pi_k^*\Gamma_T=\Gamma_T\Pi_k$ is also checked.

Let $F_{ij}$ be the creation polynomial obtained from the input pair $(i,j)$, then set $a_1=0$ to extract centered coordinates. For
$y=c_3=a_3-3a_1a_2+2a_1^3$,
only two source terms of $y^2$ can contribute after this substitution:

$$
\mathscr B(y^2)\big|_{a_1=0}
=F_{33}-6xF_{13}.
$$

Indeed the $a_3^2$ source contributes its $(3,3)$ pair, and
$-6a_1a_2a_3$ contributes the $(1,3)$ pair with spectator $a_2$.
Every other source either keeps an $a_1$ spectator or has total pair degree below four, where the defect operator vanishes. In particular

$$
F_{13}=
-\frac{v(d+1)(d+3)}{2(2d+3)(2d+5)}(c_4+3x^2).
$$

This formula follows from the rank-one degree-four projector onto
$(z_1-z_2)^4$; no high-degree matrix enters.

Put

$$
D_0=4(2d+3)(2d+5)(2d+7)(2d+9).
$$

The complete unretracted polynomial is

$$
\mathscr B(y^2)\big|_{a_1=0}
=b_6c_6+b_{24}xc_4+b_{222}x^3+b_{33}y^2,
$$

where

$$
b_6=
\frac{(d+3)(d+4)(d+5)[(6d+21)v-(2d+3)w]}{D_0},
$$

$$
\begin{aligned}
b_{24}=\frac{3(d+3)}{D_0}\big[
&(14d^3+135d^2+397d+336)v\\
&-(10d^3+105d^2+335d+300)w\big],
\end{aligned}
$$

$$
b_{222}=\frac{9v(d+1)(d+3)}{(2d+3)(2d+5)},
$$

$$
b_{33}=
\frac{2(d+3)(d+4)[(6d^2+33d+42)v+(10d^2+65d+75)w]}{D_0}.
$$

Apply the retraction $q(c_4)=-3x^2$ and the explicit $q(c_6)$ of UN-04. Combining the $x^3$ and $y^2$ coefficients gives the two exact identities

$$
-3b_{24}+b_{222}+b_6[x^3]q(c_6)=4\varepsilon,
\qquad
b_{33}+b_6[y^2]q(c_6)=\varepsilon,
$$

$$
\varepsilon=
\frac{27vw(d+3)(d+4)(2d+9)}
{2(2d+5)[15(2d+7)(d+5)v+(2d+3)(d+2)w]}.
$$

Thus the determining value is $\varepsilon J$. The five values on
$1,x,y,x^2,xy$ vanish for the affine-subtracted operator. They may be checked by the same finite projector construction, or deduced after the proved order and cusp-image conditions, because their weights are less than the weight six of $J$. Restoring the affine part adds $sE(E-1)$.

This is an identity over $\mathbb Q(d,v,w)$ whenever the retraction denominators are nonzero. The nonnegative-defect theorem supplies a positive denominator and an all-degree stable retraction; it is not an extra algebraic assumption hidden in the numerator calculation. When $v,w>0$, it also supplies the positivity needed for simple ordered low gaps.

## UN-B. What was independently verified in this synthesis

The Casimir-interpolation validator constructs each $\Pi_k$ as a polynomial in the direct differential Casimir, checks its physical adjoint and idempotence, counts unordered occupied pairs literally, recursively obtains $q(c_4),q(c_5),q(c_6)$, and verifies all six determining jets over $\mathbb Q(d,v,w)$. It then repeats the computation at the exact masses $3/2,2,7/3,3$. Its signed-defect check simplifies the exact ratio

$$
\alpha_{p,6}/\alpha_{p,4}
=28(p-5)(p-4)/[11(p+8)(p+9)]
$$

symbolically, and its same-support check evaluates the phase-boundary defects and full scalar $(4,0)$ energy.

A new separate validator for this master note uses rank-one primary descendants instead of Casimir interpolation. It recomputes $F_{33},F_{13}$, the unretracted polynomial above and its exact retraction, then checks the Einstein substitution and the large-mass limit $27/34$. It additionally verifies the finite Gegenbauer recurrence for $b=0,\ldots,30$, sixty symbolic diagonal extractions of the general four-coefficient $C_2$ operator through weight 24, the analytic-charge Jacobian, the two rational Jordan-root isolation intervals and the nonnegative-coefficient certificate used in the all-mass pair bound.

The general theorems do not depend on the finite ranges of these latter checks. Their roles are distinct: the rational determining identities, together with the local order proof, establish an all-degree operator; the additional finite recurrences and isolated examples are independent error checks. The execution manifest records actual commands, parameters, elapsed times, interpreter version, hashes and every required output. The wrapper fails if any task is absent, if a symbolic identity is missing, or if physical and auxiliary inertia dimensions or strict endpoint conditions disagree.

# Appendix V. Reproduction record and the meaning of the certificates

## V.1 A finite operator, a proof, and an execution record are different objects

The proofs in this note establish the all-index statements under their stated hypotheses. The finite engines construct a particular finite block. A verification program may reconstruct that block independently, check a symbolic identity, or diagnose a numerical approximation. These roles are recorded separately in the companion package. A successful finite test does not replace a proof of an infinite limit; a checksum records file identity, not mathematical validity.

The main finite entry is code/engine/fock_spectrum.py. Its primary, level and shell subcommands construct the objects of Chapter 5. Pair coefficients are supplied by Chapter 4; logarithmic state construction, stable occupation counting, and recoupling are separate interchangeable representations. Exact rational values are the default verification inputs. At an algebraic mass, the mathematical procedure specializes the exact field before choosing independent columns or factoring a polynomial. A symbolic generic output requires the same specialization and recomputation; its pivots and generic multiplicities are not valid automatically at a collision.

The main verifier is run_verification.py. The package also supplies reproduce_all.py for the independent suites, and README_REPRODUCIBILITY.md gives portable commands and the output layout. Reproduction runs into new output directories. Original reports and imported original records remain separately identified.

## V.2 What was actually recomputed

The following table records the completed prepublication runs used in the synthesis. These timings describe this execution environment and are not complexity estimates. Where a backend was inherited, the table says so. The portable wrapper's own fresh run is retained separately with its command and hashes.

| Run group | Actual work | Evidence and scope |
|---|---|---|
| Canonical physics | 111 checks in 3.48 s: 4 general recurrence identities, 3 positivity/removable-point checks, 1 orientation identity, 27 exact Klein–Gordon norms, 12 ground-external integrations, and 64 pair channels | The ground-external integrals were independently evaluated at 60 digits. The 64 channels rerun the inherited exact rational direct-$\mathcal K_4$ evaluator at $\Delta=1001/1000,3/2,2,7/3$, through circular level 6. |
| Formal physics interfaces | 10 checks in 0.72 s | Five inherited exact BCH/finite-block checks; a new general hypergeometric coefficient identity; dynamic-response and Weyl-coordinate counterexamples. This does not rerun the full old third-order OFPT calculation. |
| Finite spectra and worked examples | 7 exact check groups in 2.60 s | Independent engine representations agree on small mixed blocks. The complete 20-state shell, the actual saturated state, the exceptional algebraic mass, root multiplicities and physical projectors are recomputed. The billion-degree example recomputes counts and compression size, not its large-integer polynomial. |
| Hierarchy audit integration | All 11 mandatory task payloads, in 33.68 s | Exact flags, coherent inequalities, moving layer, universal low coefficient, partition and equal-cluster exchange, two strict soft inertia certificates, oriented baseline, and finite comparator checks. This reruns audited implementations with a new fail-closed wrapper. |
| Additional cluster interfaces | All 7 programs, in 9.35 s wall time | Independent finite CG norms, endpoint recurrences, partition Möbius identities, orientation and source exchange, exact nullity generating functions, the rational minimum certificate, and the integer-mass Gamma specialization. |
| Independent stable, soft and universal checks | All 6 required programs, in 57.02 s wall time | Separate Casimir/primary implementations, all-mass determining identities, the generic Jordan plane and protected doublet, the exact first-correction jets, the coherent group/counting calculation, and the two rational soft brackets. |

For the physics integrations, the twelve parameter pairs are $\Delta=5/4,3/2,7/3,3$ and ground-external angular labels $J=0,1,4$. The largest observed absolute difference from the analytic coefficient is below $10^{-40}$. This is a high-precision diagnostic, not an interval quadrature bound. The canonical finite rational channel evaluations separately check the constraint reconstruction, primary extraction and exact vanishing of off-diagonal residues; they do not infer the coefficients by fitting target energies.

The cluster suite checks 171 exact CG norm/lowest-weight identities, 1,154 finite partition identities, orientation and equal-source parity in 60 cases each, nullity generating functions and transients, and 127 low-index rational minimum comparisons followed by a polynomial tail certificate. The finite Gamma specialization at $\Delta=2,u=1,s=20$ checks the rational all-index identity in both parity tails before evaluating the finite Gamma expression at 80-digit precision. Its agreement with a retained diagnostic is numerical; the all-index rational identity and the tail proof carry the exact assertion.

The independent universal calculation verifies all six determining jets over $\mathbb Q(d,v,w)$ and again at four rational masses. A separate rank-one-primary implementation checks the same coefficient, the Einstein substitution and the large-mass limit. The first-correction checks use symbolic mass at weights six, eight and nine, after the differential-order theorem has reduced the problem to those determining data. Extra finite Gegenbauer and diagonal-extraction identities are error checks, not the reason the all-degree theorem holds.

## V.3 Exact inertia, semantic validation, and negative tests

For $\Delta=2,N=3$, the two delivered strict smallest-positive brackets are

$$
\begin{array}{c|c|c|c|c}
(P,Q)&d_N&\kappa_N& r_{\rm aux}&\lambda_{\min}^{+}\\
\hline
(16,8)&26&0&34&1/5<\lambda_{\min}^{+}<1/3\\
(32,16)&94&4&98&1/6000<\lambda_{\min}^{+}<1/5000 .
\end{array}
\tag{V.1}
$$

Both auxiliary nullities are eight. Thus the physical positive ranks are 26 and 90, respectively. The distinction matters: the auxiliary zero directions are removed in the inertia count; the four exact physical kernel states in the second example are a different space. Rational $1\times1$ or $2\times2$ Schur pivots compute the inertia without a numerical tolerance. Strict endpoint checks exclude equality at either endpoint, and the upper endpoint has a positive eigenvalue below it.

The mandatory validator checks the exact set of expected tasks, each task's declared success, required fields, exact input labels, physical and auxiliary dimensions, kernel and rank identities, and the strict inertia conditions. It checks substantive inequalities in the flags, coherent estimates, orientation and universal coefficients rather than accepting a zero exit status or a pre-existing JSON file. Code hashes before and after the run confirm that the tested copies were unchanged during execution.

Optimized Python is rejected explicitly: the correctness of the run cannot depend on assertions that disappear under a -O flag. Nine deliberately corrupted payload variants were rejected, including a missing task, a forged success flag, missing fields, a changed kernel count, incorrect inertia endpoints and a skipped status. Dependency failures in the initial default-Python attempts were retained as failures; only subsequent executions in the declared environment are recorded as successful. Independent wrappers additionally reject stale output files.

## V.4 Environment, inherited records, and reproducibility limits

The current exact runs used Python 3.12.14, SymPy 1.14.0, mpmath 1.3.0, python-flint 0.9.0, NumPy 2.3.5 and SciPy 1.17.0 on Linux x86-64. Not every suite requires every dependency. The package pins the actual versions and records the interpreter, timestamps, elapsed times, commands, standard output and standard error. The source and claim map identifies independently written code, inherited code rerun now, and inherited records not rerun.

The final portable end-to-end run also passed, in 102.64 seconds. It ran all five groups from isolated copies: the eleven-task hierarchy gate, finite regressions, physics, cluster, and the six-program independent stable/soft/universal suite. The top-level gate rejected all sixty missing, malformed or false payload cases and rejected optimized Python. The hierarchy gate separately retained its nine mutation rejections. Protected code and checker hashes agreed before and after the run. This record is stored under runs/current/portable_01; it is a fresh portable execution rather than a relabeling of the earlier authoring records.

The full historical Wolfram/xAct chain, every old radial polarization, all large binary64 four-body diagonalizations, the entire earlier Galois sweep, and every old cutoff-dependent plot were not rerun in this synthesis. Their status is inherited where they are cited. The raw pair cache is labeled as a cache; lifting it to a many-body block is not reported as fresh radial integration. The full billion-degree polynomial belongs to the inherited record; the current counting check is stated separately above.

There is no claim that the default finite engines scale uniformly polynomially with all input parameters. Fixed-$Q$ or fixed-degree compression is mathematically powerful in its own range, while growing balanced exact matrices and their coefficient bit lengths remain a genuine cost. The portable scripts make the representative verification reproducible without requiring the original workspace paths or another explanation of what a successful payload means.

# References

These references supply the external mathematical or phase-space inputs actually used in the note, or an explicitly identified comparison. The model-specific proofs are given in the text and appendices. The research reports, repository snapshots, audits, and their exact proof locations are indexed separately in ADS3_Source_and_Claim_Map.md.

**[HW]** Daniel Harlow and Jie-qiang Wu, *Covariant phase space with boundaries*, Journal of High Energy Physics **10** (2020), 146. [arXiv:1906.08616](https://arxiv.org/abs/1906.08616); [doi:10.1007/JHEP10(2020)146](https://doi.org/10.1007/JHEP10(2020)146). Used for the boundary-completed covariant phase-space convention in Chapter 2; it does not supply the Einstein pair coefficients.

**[PB]** Thomas Papenbrock and George F. Bertsch, *Exact solutions for interacting boson systems under rotation*, Journal of Physics A: Mathematical and General **34** (2001), 603. [arXiv:cond-mat/0008286](https://arxiv.org/abs/cond-mat/0008286); [doi:10.1088/0305-4470/34/3/318](https://doi.org/10.1088/0305-4470/34/3/318). Compared only after the finite-degree large-mass contraction in Chapter 6.

**[KMR]** G. M. Kavoulakis, B. Mottelson and S. M. Reimann, *Low-lying excitations of a trapped rotating Bose–Einstein condensate*, Physical Review A **63** (2001), 055602. [arXiv:cond-mat/0011303](https://arxiv.org/abs/cond-mat/0011303); [doi:10.1103/PhysRevA.63.055602](https://doi.org/10.1103/PhysRevA.63.055602). The quadrupole–octupole coefficient is compared in §9.7 after the norm and projector contraction has been established.

**[Lenz]** Matthias Lenz, *Hierarchical zonotopal power ideals*, European Journal of Combinatorics **33** (2012), 1120–1141. [arXiv:1011.1136](https://arxiv.org/abs/1011.1136); [doi:10.1016/j.ejc.2012.01.004](https://doi.org/10.1016/j.ejc.2012.01.004). Context for the scope of power-ideal theorems. Appendix L proves the root-only cubic and quartic classifications directly and does not extrapolate a general zonotopal result to the higher cutoff counterexample.

**[DLMF]** NIST Digital Library of Mathematical Functions, Chapter 18, *Orthogonal polynomials*, especially [§18.3](https://dlmf.nist.gov/18.3), [§18.5](https://dlmf.nist.gov/18.5), and [§18.8](https://dlmf.nist.gov/18.8). Used for the stated Laguerre normalization and polynomial identities; the physical Gamma–Dirichlet dictionary is derived in Appendix G.

**[CrampeEtAl2024]** Nicolas Crampé, Luc Frappat, Julien Gaboriaud, Eric Ragoucy, Luc Vinet and Meri Zaimi, *Griffiths polynomials of Racah type*, [arXiv:2403.12148, version 2](https://arxiv.org/html/2403.12148v2) (2024). Section 2 gives a terminating normalized Racah convention and its weighted orthogonality. Our physical norms and change of convention are explicit in Appendices F and CL.A.

**[Post2015]** Sarah Post, *Racah polynomials and recoupling schemes of su(1,1)*, SIGMA **11** (2015), 057. [doi:10.3842/SIGMA.2015.057](https://doi.org/10.3842/SIGMA.2015.057). Background for the recoupling interpretation; no Einstein-specific conclusion is imported.

**[HoffmanWielandt1953]** A. J. Hoffman and H. W. Wielandt, *The variation of the spectrum of a normal matrix*, Duke Mathematical Journal **20**, no. 1 (1953), 37–39. [doi:10.1215/S0012-7094-53-02004-3](https://doi.org/10.1215/S0012-7094-53-02004-3). Used in its finite Hermitian form, with the Hilbert–Schmidt norm and an optimal pairing of eigenvalues, in Appendix CL.B.

**[Bornemann2010]** Folkmar Bornemann, *On the numerical evaluation of Fredholm determinants*, Mathematics of Computation **79**, no. 270 (2010), 871–915. [arXiv:0804.2543](https://arxiv.org/abs/0804.2543); [doi:10.1090/S0025-5718-09-02280-7](https://doi.org/10.1090/S0025-5718-09-02280-7). His equation (4.1) supplies the trace-class determinant continuity estimate. The model-specific trace-norm convergence and complex domain are proved in Appendix CL.K.

**[DamakGeorgescu2009]** Mondher Damak and Vladimir Georgescu, *On the spectral analysis of many-body systems*, [arXiv:0911.5126](https://arxiv.org/abs/0911.5126) (2009). Context for semilattice many-body spectral analysis. The finite conformal Bose filtration and its quotient are established locally in Appendix CL.

**[DerkachovManashov1996]** S. E. Derkachov and A. N. Manashov, *Generic scaling relation in the scalar $\phi^4$ model*, Journal of Physics A: Mathematical and General **29**, no. 24 (1996), 8011–8024. [arXiv:hep-th/9604173](https://arxiv.org/abs/hep-th/9604173); [doi:10.1088/0305-4470/29/24/024](https://doi.org/10.1088/0305-4470/29/24/024). Spectral-sum inheritance in a different model provides context; the note makes no identification of that model with Einstein–scalar gravity.

**[Lieb]** Elliott H. Lieb, *The classical limit of quantum spin systems*, Communications in Mathematical Physics **31** (1973), 327–340. [doi:10.1007/BF01646493](https://doi.org/10.1007/BF01646493). Coherent-state background. Appendix SC constructs the actual harmonic resolution, physical projection, and trace limit used here.

**[Hoeffding]** Wassily Hoeffding, *Probability inequalities for sums of bounded random variables*, Journal of the American Statistical Association **58**, no. 301 (1963), 13–30. [doi:10.1080/01621459.1963.10500830](https://doi.org/10.1080/01621459.1963.10500830). Only the bounded independent tensor-slot tail inequality is invoked, with its hypotheses checked in Appendix SC-C.

**[Rellich]** Giovanni Barbarino and Vanni Noferini, *On the Rellich eigendecomposition of para-Hermitian matrices and the sign characteristics of $\ast$-palindromic matrix polynomials*, [arXiv:2211.15539](https://arxiv.org/abs/2211.15539) (2022), Theorem 1.1. This statement of Rellich's theorem gives a local analytic unitary eigendecomposition for a matrix analytic on a real interval and Hermitian at every real point. Appendix ST first constructs the regular fixed Hilbert frame required to apply it.

**[Milne]** J. S. Milne, *Fields and Galois Theory*, version 5.10 (September 2022), Chapter 4, “Computing Galois groups.” [Author's text](https://www.jmilne.org/math/CourseNotes/FT.pdf). Appendix O uses the unramified reduction/factorization criterion for cycle types and states the concrete finite-group deduction.
