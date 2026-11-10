# Statistical Geometry of Loop and Matter States

**DRAFT — bounded review recorded.**

A statistical state of quantum geometry needs an algebra of observables, an allowed state space, a generator of time evolution and an ensemble prescription. A discrete area spectrum does not provide these choices by itself. We construct a small loop–matter system in which the Gauss projection, energy levels, thermal probabilities, geometric fluctuations and relaxation can all be evaluated. Its statistical geometry will be the geometry of a family of probability distributions, not a new spacetime metric.

Units are $c=\hbar=k_B=1$; energy and inverse time have the same units, and $\beta=1/T$ has inverse-energy units. Physical spacetime has signature $(-,+,+,+)$. The loop model is a fixed-graph, gauge-invariant truncation, not a solution of the full gravitational Hamiltonian and diffeomorphism constraints. Its positive Hamiltonian and reservoir are additional model data. No unique Standard Model ensemble or quantum-gravity temperature is assumed.

## 1. What May Be Put in a Gibbs Exponential

Let $\mathcal H$ be a positive complex Hilbert space and $H$ a specified selfadjoint generator. A normal Gibbs state at $\beta>0$ exists if

$$\begin{align}
Z(\beta)=\operatorname{Tr}_{\mathcal H}e^{-\beta H}<\infty, \qquad \rho_\beta=Z^{-1}e^{-\beta H}, \qquad \omega_\beta(A)=\operatorname{Tr}(\rho_\beta A).
\end{align}$$

The exponential must be positive trace class, not merely a formal expression. In finite dimension this is automatic. On a countably infinite discrete spectrum with energies $E_a$ and multiplicities $d_a$, it requires convergence of $\sum_a d_ae^{-\beta E_a}$. Boundedness below alone does not ensure convergence; infinitely many states at the same finite energy already make the sum diverge.

For a constrained theory distinguish a constraint from an energy that generates an actually chosen evolution. On an infinite-dimensional space where a solved constraint vanishes, using $H=0$ gives $e^{-\beta H}=I$ and an infinite trace. At a finite cutoff it gives the maximally mixed state at every $\beta$, without determining a temperature from observables. Nor does unitary relational evolution supply a positive Gibbs generator. In the scalar-clock branch of [the joint-quantization chapter](<EC-08.md#L144-L176>), the Schrödinger generator is $-\sqrt\Theta$: its exponential $e^{+\beta\sqrt\Theta}$ is not a positive-temperature trace-class density. This sign is compatible with unitary clock evolution; the failure concerns a different proposed statistical construction. Reversing a clock branch still leaves the ensemble, normalization and trace-class question to be specified.

The same distinction applies to a graph Hilbert space. If a tensor product carries $H=H_1\otimes I+I\otimes H_2$, and both Gibbs factors are trace class, commutativity gives $e^{-\beta H}=e^{-\beta H_1}\otimes e^{-\beta H_2}$ and $Z=Z_1Z_2$. An interaction or a joint constraint projection can invalidate that factorization. A kinematic tensor product is not its proof.

## 2. One Loop, One Fermion Doublet and the Gauss Projection

Take an oriented loop based at a single vertex. Its holonomy is $g\in SU(2)$, and a vertex gauge transformation acts by $g\mapsto h^{-1}gh$. With normalized Haar measure $\int dg=1$, the loop Hilbert space is $L^2(SU(2),dg)$. The Peter–Weyl decomposition is the standard representation-theoretic input

$$\begin{align}
L^2(SU(2))=\bigoplus_{j=0,1/2,\ldots}V_j\otimes V_j^*, \qquad \dim V_j=2j+1.
\end{align}$$

The spin-$j$ block has $(2j+1)^2$ matrix-element states. As a conjugation representation it is $\operatorname{End}(V_j)$. One isometric convention sends a coefficient matrix $X$ to $\sqrt{2j+1}\operatorname{tr}(X D^j(g))$; conjugation acts on $X$ by $X\mapsto hXh^{-1}$. The scalar matrix $I/\sqrt{2j+1}$ then maps to the character $\chi_j(g)=\operatorname{tr}D^j(g)$, whose Haar norm is one.

At the vertex choose one fermionic gauge doublet, not a complete relativistic matter field. Its Fock space is

$$\begin{align}
\mathcal F=\Lambda^0V_{1/2}\oplus\Lambda^1V_{1/2}\oplus\Lambda^2V_{1/2} =V_0\oplus V_{1/2}\oplus V_0.
\end{align}$$

Use the orthonormal basis $|0\rangle,|\uparrow\rangle,|\downarrow\rangle,|2\rangle$, with $|2\rangle=c_\uparrow^\dagger c_\downarrow^\dagger|0\rangle$. The canonical anticommutation relations are $\{c_a,c_b^\dagger\}=\delta_{ab}$ and $\{c_a,c_b\}=0$. In this ordering, $c_\uparrow|2\rangle=|\downarrow\rangle$ and $c_\downarrow|2\rangle=-|\uparrow\rangle$. Consequently

$$\begin{align}
N=c_\uparrow^\dagger c_\uparrow+c_\downarrow^\dagger c_\downarrow =\operatorname{diag}(0,1,1,2), \qquad J_i^{\mathrm m}=\frac12 c_a^\dagger(\sigma_i)_{ab}c_b.
\end{align}$$

Here $\sigma_i$ are the Pauli matrices. They act as spin one-half on the one-particle sector and vanish on the vacuum and pair. The pair is a gauge singlet because $\Lambda^2\mathbb C^2$ transforms by $\det h=1$; pair creation is gauge invariant, despite changing $N$ by two.

For the diagonal gauge action $U(h)$ on loop and matter, define

$$\begin{align}
P_G=\int_{SU(2)}dh\,U(h), \qquad P_G^*=P_G, \qquad P_G^2=P_G, \qquad \mathcal H_G=P_G\mathcal H_{\mathrm{kin}}.
\end{align}$$

Haar invariance gives $P_G^2=\int dh\,dk\,U(hk)=P_G$, and inversion invariance gives selfadjointness. Its image is exactly the invariant subspace. Equivalently, all three total gauge generators vanish there.

The central element $h=-I$ acts trivially by loop conjugation but by $(-1)^N$ on matter. Therefore **no odd-$N$ state is Gauss invariant in this one-loop model**. For $N=0$ and $2$, Schur's lemma leaves one invariant loop matrix per $j$, proportional to the identity. Thus an orthonormal invariant basis is

$$\begin{align}
|j,b\rangle=\chi_j\otimes|2b\rangle, \qquad b=0,1.
\end{align}$$

This selection rule is a property of the chosen graph and matter representation, not a prohibition of single fermions in general. An open edge or a larger graph can carry the missing gauge charge.

Now impose the finite spin cutoff $j\in\{0,1/2\}$. The loop space has dimension $1+4=5$, so $\dim\mathcal H_{\mathrm{kin}}=20$, whereas $\dim\mathcal H_G=4$. Explicitly, on the spin-one-half matrix block the loop generators are $X\mapsto[\sigma_i/2,X]$; tensoring with matter and adding $J_i^{\mathrm m}$ gives three twenty-by-twenty Gauss matrices. Their common kernel has dimension four. A coefficient basis for it is

$$\begin{align}
|j{=}0\rangle\otimes|0\rangle,\quad |j{=}0\rangle\otimes|2\rangle,\quad \frac{E_{11}+E_{22}}{\sqrt2}\otimes|0\rangle,\quad \frac{E_{11}+E_{22}}{\sqrt2}\otimes|2\rangle.
\end{align}$$

The $E_{ab}$ are orthonormal matrix units for the Hilbert–Schmidt inner product. This exhibits the projection rather than assigning a degeneracy from the kinematic dimension.

A finite spin cutoff preserves the gauge decomposition but not the full holonomy multiplication algebra: for example $\chi_{1/2}^2=\chi_0+\chi_1$ leaves this cutoff. We therefore work with the explicitly defined finite invariant Hilbert space and its full matrix algebra $\mathcal A_G=\operatorname{End}(\mathcal H_G)$. Compressed graph operators are model observables; no exact finite-dimensional representation of the entire continuum holonomy–flux algebra is asserted.

## 3. A Positive Interacting Hamiltonian and an Evaluated Thermal State

Let $C$ be the loop's left electric Casimir, with eigenvalue $j(j+1)$, not the square of the total Gauss generator. A class function can have positive $C$ while satisfying the Gauss constraint. On the cutoff define $G=4C/3$, so $G$ is the projector onto $j=1/2$. On $\mathcal H_G$, let $B=N/2$ be the pair-occupation projector. These commuting observables have eigenvalues zero or one.

Choose an energy scale $\epsilon>0$ and the model Hamiltonian

$$\begin{align}
H=\epsilon(G+B+GB).
\end{align}$$

Its kinematic extension uses the same expression with $B=N/2$; it is gauge invariant, selfadjoint and nonnegative. The $GB$ term raises the cost of simultaneous loop excitation and matter-pair occupation. Neither its coefficient nor the energy scale is fixed by the area spectrum. The basis ordered as $(0,0),(0,1),(1/2,0),(1/2,1)$ gives

$$\begin{align}
\frac H\epsilon=\operatorname{diag}(0,1,1,3), \qquad G=\operatorname{diag}(0,0,1,1), \qquad B=\operatorname{diag}(0,1,0,1).
\end{align}$$

All Gauss-invariant observables preserve the allowed state space. Since $[P_G,H]=0$, the projected trace has the ordinary invariant-space meaning

$$\begin{align}
Z_G=\operatorname{Tr}_{\mathrm{kin}}(P_Ge^{-\beta H}) =\operatorname{Tr}_{\mathcal H_G}e^{-\beta H}.
\end{align}$$

If a proposed generator did not commute with the gauge action, projecting its exponential would not justify treating it as gauge-preserving thermal evolution.

Write $x=e^{-\beta\epsilon}\in(0,1)$. The complete partition function and density matrix are

$$\begin{align}
Z_G=1+2x+x^3, \qquad \rho_G=\frac1{Z_G}\operatorname{diag}(1,x,x,x^3).
\end{align}$$

The energy $\epsilon$ has degeneracy two, not one. An unprojected trace would instead give

$$\begin{align}
Z_{\mathrm{kin}}=1+2\sqrt{x}+5x+8x^2+4x^3.
\end{align}$$

The extra terms count gauge-noninvariant states. Even on $\mathcal H_G$, factorization into two independent binary systems would give $(1+x)^2$, differing from $Z_G$ by $x^3-x^2$. The interaction, not a change in the rule of Boltzmann weighting, creates the discrepancy.

The ordinary thermodynamic identities apply to this chosen generator:

$$\begin{align}
U=-\partial_\beta\log Z_G =\epsilon\frac{2x+3x^3}{Z_G}, \qquad F=-\frac1\beta\log Z_G, \qquad S=-\operatorname{Tr}\rho_G\log\rho_G=\log Z_G+\beta U.
\end{align}$$

For $\beta\epsilon=\log2$ every probability is rational:

$$\begin{align}
Z_G=\frac{17}{8},\qquad (p_0,p_1,p_2,p_3)=\frac1{17}(8,4,4,1),\qquad \frac U\epsilon=\frac{11}{17}.
\end{align}$$

The entropy and heat capacity at this point are

$$\begin{align}
S=\log17-\frac{40}{17}\log2 =1.202278801562\ldots, \qquad C_T=\frac{\partial U}{\partial T} =\beta^2\operatorname{Var}(H) =\frac{168}{289}(\log2)^2.
\end{align}$$

Here $\operatorname{Var}(H)=168\epsilon^2/289$. The identity $C_T=\beta^2\operatorname{Var}(H)$ follows by differentiating the normalized Boltzmann weights, not by postulating a continuum equation of state. As $T\to0^+$ the unique ground state has $S\to0$; as $T\to\infty$ the four states become equally likely and $S\to\log4$. Grouping the two equal-energy states into one shell and then computing Shannon entropy without its degeneracy would undercount $S$ by $(8/17)\log2$ at the calibration point.

For a surface patch intersecting the loop once away from its vertex, adopt the usual loop area eigenvalue $a_j=8\pi\gamma\ell_P^2\sqrt{j(j+1)}$, with $\gamma>0$. This is a specified kinematic area observable, not an energy. Put $a_*=a_{1/2}=4\sqrt3\pi\gamma\ell_P^2$, so $A=a_*G$ in the cutoff. Then

$$\begin{align}
\langle G\rangle=\langle B\rangle=\frac{x+x^3}{Z_G}, \qquad \operatorname{Cov}(G,B)=\frac{x^2(x-1)}{Z_G^2}.
\end{align}$$

At $x=1/2$ this gives

$$\begin{align}
\langle A\rangle=\frac5{17}a_*,\qquad \langle N\rangle=\frac{10}{17},\qquad \operatorname{Var}(A)=\frac{60}{289}a_*^2,\qquad \operatorname{Cov}(A,N)=-\frac{16}{289}a_*.
\end{align}$$

The negative covariance records the energetic penalty for simultaneous excitations. It is a measurable property of the specified ensemble. These finite statistics do not select an area–entropy law, a Barbero–Immirzi parameter or black-hole thermodynamics.

## 4. KMS Is a Relation Between a State and a Flow

For this finite factor the chosen Hamiltonian defines the Heisenberg automorphisms $\alpha_t(A)=e^{itH}Ae^{-itH}$. The Kubo–Martin–Schwinger condition at inverse temperature $\beta$ says that

$$\begin{align}
F_{AB}(t)=\omega_\beta(A\alpha_t(B))
\end{align}$$

extends as a bounded analytic function through the strip $0<\operatorname{Im}z<\beta$, continuously to its boundary, and satisfies $F_{AB}(t+i\beta)=\omega_\beta(\alpha_t(B)A)$. Finite matrix exponentials are entire. At $t=0$, cyclicity proves the boundary identity directly:

$$\begin{align}
\frac1Z\operatorname{Tr}(e^{-\beta H}A e^{-\beta H}B e^{\beta H}) =\frac1Z\operatorname{Tr}(A e^{-\beta H}B) =\omega_\beta(BA).
\end{align}$$

The same argument after real-time translation gives the general boundary condition. This convention uses an upper strip for $\omega(A\alpha_t(B))$; a differently ordered Wightman function can instead display a lower-strip shift. The ordering and flow must accompany the sign of the imaginary-time translation.

For $B=|b\rangle\langle a|$ and $A=B^\dagger$,

$$\begin{align}
F_{AB}(t)=p_a e^{it(E_b-E_a)}, \qquad p_a e^{-\beta(E_b-E_a)}=p_b.
\end{align}$$

In the transition from energy $0$ to $3\epsilon$, the two calibrated probabilities are $8/17$ and $1/17$, and the exponential factor is $1/8$. The KMS condition holds, including its normalization. The identity on matrix units extends to all $A,B$ by bilinearity. At the same $\beta\epsilon=\log2$, the maximally mixed state with this nontrivial flow leaves the residual $-7/32$ for this transition; using $\rho_G$ with the zero flow leaves $7/17$. A density matrix labeled “thermal” without its flow is insufficient.

The full finite matrix algebra matters here. If one restricted to an algebra containing only diagonal observables, the flow would act trivially there and these transition tests would be unavailable. Additional superselection restrictions can leave undetermined relative weights between sectors. Our algebra permits gauge-singlet pair conversion; an independent conserved particle number has not been imposed.

For a faithful finite density the modular automorphisms are $\sigma_s(A)=\rho_G^{is}A\rho_G^{-is}=\alpha_{-\beta s}(A)$. This determines the product of an inverse-temperature scale and the chosen Hamiltonian up to additive constants, not an absolute gravitational clock or a unique energy normalization.

A heat-kernel wavefunction is also not automatically a Gibbs density. On the invariant loop space a common vector has character coefficients $(2j+1)e^{-\tau j(j+1)}$. In the two-character cutoff, choosing $\tau=4\log2/3$ gives the normalized vector $(1,1)/\sqrt2$. Its pure density has off-diagonal entries $1/2$ and purity one. For the geometry Hamiltonian $\operatorname{diag}(0,\epsilon)$ the Gibbs density at $\beta\epsilon=\log2$ is $\operatorname{diag}(2/3,1/3)$, of purity $5/9$. The pure vector density does not even commute with that Hamiltonian. A diffusion parameter can equal $\beta$ times an energy scale only after a generator and a mixed-state construction have actually been specified.

## 5. The Statistical Metric and Matter–Geometry Correlations

The invariant basis identifies this particular four-dimensional space with two binary degrees of freedom, $G$ and $B$. The diagonal density is a convex mixture of their product basis states. Its correlations are therefore classical in this identification, not evidence of quantum entanglement between spatial regions. Gauge constraints also obstruct a naive spatial tensor factorization on larger graphs; region entropies require a chosen observable algebra or edge-mode prescription.

A useful statistical manifold is the positive family

$$\begin{align}
p_{gb}(\theta_g,\theta_b;\eta) =\frac{e^{-\theta_g g-\theta_b b-\eta gb}}{Z(\theta_g,\theta_b;\eta)}, \qquad Z=1+e^{-\theta_g}+e^{-\theta_b}+e^{-\theta_g-\theta_b-\eta},
\end{align}$$

where $g,b\in\{0,1\}$ and the interaction parameter $\eta$ is held fixed for this two-parameter section. Let $\Psi=\log Z$. Differentiation gives $\partial_{\theta_g}\Psi=-\langle G\rangle$ and

$$\begin{align}
\mathfrak g_{ab} =\sum_{r,s\in\{0,1\}}p_{rs}\,\partial_a\log p_{rs}\,\partial_b\log p_{rs} =\partial_a\partial_b\Psi =\operatorname{Cov}(O_a,O_b), \qquad (O_g,O_b)=(G,B).
\end{align}$$

This is the Fisher information metric. The score has zero expectation because $\partial_a\sum p=0$. Expanding relative entropy $D(p_\theta\|p_{\theta+d\theta})=\sum p_\theta\log(p_\theta/p_{\theta+d\theta})$ then gives

$$\begin{align}
D(p_\theta\|p_{\theta+d\theta}) =\frac12\mathfrak g_{ab}\,d\theta^a d\theta^b+O(|d\theta|^3).
\end{align}$$

Thus the matrix controls distinguishability of nearby ensembles. It is positive, not a Lorentzian spacetime metric. Since this family commutes, its classical Fisher matrix also describes these simultaneous observable fluctuations; no identification of competing noncommutative quantum information metrics is needed.

At $\theta_g=\theta_b=\eta=\log2$ the evaluated result is

$$
\mathfrak g=\frac1{289}\begin{pmatrix}60&-8\\-8&60\end{pmatrix},
\qquad \operatorname{spec}\mathfrak g=\left\{\frac{52}{289},\frac{68}{289}\right\}.
$$

The covariance term is consequential: changing the weight of geometric excitations changes matter occupation. Along the actual temperature family all three parameters vary together, $\theta_g=\theta_b=\eta=\beta\epsilon$; its one-dimensional Fisher coefficient is instead $\operatorname{Var}(H)$ in the coordinate $\beta$. These are different sections of the same exponential family.

The binary marginals have probability $5/17$ for excitation. Their Shannon entropies give the mutual information

$$\begin{align}
I(G:B)=S(G)+S(B)-S(G,B)=0.00931619718238\ldots
\end{align}$$

at the calibration point. It quantifies the weak but nonzero classical dependence created by $GB$. The calculation does not identify thermodynamic entropy with a continuum local entanglement entropy.

## 6. A Specified Relaxation with Detailed Balance

A Gibbs state does not determine a unique collision term. To exhibit an evaluated nonequilibrium model, couple the four invariant states to a reservoir at the fixed $\beta$. The reservoir may exchange gauge-singlet pairs at zero chemical potential and change the loop label; it conserves the imposed gauge symmetry and fermion parity. Let $p_i$ denote the equilibrium probabilities and choose a rate $\nu>0$. For a column probability vector $r(t)$ define

$$\begin{align}
\dot r=W r, \qquad W_{ij}=\nu(p_i-\delta_{ij}), \qquad W=\nu(p\,\mathbf1^{\mathsf T}-I).
\end{align}$$

Off-diagonal rates are positive, columns sum to zero, and $Wp=0$. For $i\neq j$,

$$\begin{align}
p_jW_{ij}=\nu p_ip_j=p_iW_{ji}.
\end{align}$$

This is detailed balance at the microstate level. Consequently transitions into a degenerate energy shell acquire the correct multiplicity only after summing its distinct states. From $\mathbf1^{\mathsf T}r=1$ one obtains the complete solution

$$\begin{align}
r(t)=p+e^{-\nu t}(r(0)-p).
\end{align}$$

The unique stationary distribution is $p$; the other three modes decay at rate $\nu$. These rates are chosen, not derived from a gravitational transition amplitude. A pair-number-conserving reservoir would give a different accessible state space and would not fix the same inter-sector weights.

There is an explicit quantum extension. With jumps $L_{ij}=\sqrt{\nu p_i}|i\rangle\langle j|$ for all $i,j$, their Lindblad expression is

$$\begin{align}
\mathcal L(\rho)=\sum_{ij}\left(L_{ij}\rho L_{ij}^\dagger-\frac12\{L_{ij}^\dagger L_{ij},\rho\}\right) =\nu(\rho_G\operatorname{Tr}\rho-\rho).
\end{align}$$

For normalized input the solution is $\rho(t)=e^{-\nu t}\rho(0)+(1-e^{-\nu t})\rho_G$, a trace-preserving completely positive reset channel; its convex form proves positivity directly. This irreversible reservoir semigroup is not the Hamiltonian automorphism group used in the KMS condition.

For positive classical $r_i$, the relative entropy to equilibrium obeys

$$\begin{align}
\frac{d}{dt}D(r\|p) =\nu\sum_i(p_i-r_i)\log\frac{r_i}{p_i} =-\nu\bigl[D(r\|p)+D(p\|r)\bigr]\leq0.
\end{align}$$

Nonnegativity follows from the log-sum inequality, or from summing $(r_i-p_i)\log(r_i/p_i)\geq0$. Define $\sigma=-dD/dt$. With $U_r=\sum r_iE_i$ and $S_r=-\sum r_i\log r_i$,

$$\begin{align}
F_r-F_{\mathrm{eq}}=T D(r\|p), \qquad \sigma=\dot S_r-\beta\dot U_r\geq0, \qquad \dot F_r=-T\sigma.
\end{align}$$

This is system-plus-reservoir entropy production. The system's Shannon entropy alone need not grow. Start from $r(0)=(1,1,1,1)/4$ and let $\nu t=\log2$ at the calibrated temperature. The exact state is

$$\begin{align}
r(t)=\frac1{136}(49,33,33,21), \qquad \frac{\dot U_r}{\epsilon\nu}=-\frac{41}{136},
\end{align}$$

$$\begin{align}
\frac{\dot S_r}{\nu}=-0.0868051298406\ldots, \qquad \frac{\sigma}{\nu}=0.1221583584164\ldots.
\end{align}$$

Energy and entropy leave the system while total entropy production stays positive. This evaluated counterexample prevents a general open-system second law from being replaced by the stronger, false statement $\dot S_r\geq0$.

## 7. Removing Cutoffs: a Convergence Problem, Not a Slogan

The finite model was trace class by construction. To remove its spin cutoff, retain the same graph and matter representation and choose the explicit extension

$$\begin{align}
H_\infty|j,b\rangle =\bigl[\kappa_Ej(j+1)+\Delta b+\lambda_Ej(j+1)b\bigr]|j,b\rangle, \qquad \Delta\geq0.
\end{align}$$

Here $\mathcal H_{G,\infty}=\ell^2(\{(j,b)\})$. If $E_{jb}$ denotes the displayed real energy, use the maximal diagonal domain $\operatorname{Dom}H_\infty=\{c:\sum_{j,b}|E_{jb}|^2|c_{jb}|^2<\infty\}$; this specifies a selfadjoint operator, with finite-support vectors as a core. The constants $\kappa_E,\Delta,\lambda_E$ have energy units. They are unrelated to a spacetime connection. For $\kappa_E=\lambda_E=4\epsilon/3$ and $\Delta=\epsilon$, the $j=0,1/2$ sector is exactly the previously chosen model. The invariant partition sum is

$$\begin{align}
Z_\infty=\sum_{j=0,1/2,\ldots} \left[e^{-\beta\kappa_Ej(j+1)} +e^{-\beta\Delta}e^{-\beta(\kappa_E+\lambda_E)j(j+1)}\right].
\end{align}$$

There is one state per $j$ in each matter sector, not a factor $(2j+1)^2$. The latter belongs to the unprojected loop heat trace. The usual $SU(2)$ heat kernel has coefficients $(2j+1)e^{-\tau j(j+1)}$ and its value at the identity contains $(2j+1)^2$; changing to the invariant trace changes the counting problem.

For positive $\beta$, this model is trace class precisely when

$$\begin{align}
\kappa_E>0, \qquad \kappa_E+\lambda_E>0.
\end{align}$$

To see sufficiency put $n=2j$ and $a_0=\beta\kappa_E/4$, $a_1=\beta(\kappa_E+\lambda_E)/4$. Since $j(j+1)=n(n+2)/4\geq n^2/4$, each branch is bounded by a Gaussian series. Beyond integer $N>0$, monotonicity and an elementary Gaussian integral bound give

$$\begin{align}
\sum_{n>N}e^{-a n(n+2)}
\leq\int_N^\infty e^{-a x^2}\,dx
\leq\frac{e^{-aN^2}}{2aN}, \qquad a>0.
\end{align}$$

Add the two bounds, multiplying the second by $e^{-\beta\Delta}$. This proves convergence and controls truncation errors; polynomial energy moments also converge. Necessity is equally direct. A zero coefficient gives an infinite constant-energy branch; a negative coefficient gives weights that grow with $j$. In particular $\lambda_E=-\kappa_E$ leaves all $b=1$ states at energy $\Delta$, so their partial trace is $(N+1)e^{-\beta\Delta}$, not a finite Gibbs weight.

At $\beta\epsilon=\log2$ for the positive extension,

$$\begin{align}
Z_\infty=2.33086725306792424426\ldots.
\end{align}$$

Summing $n=0,\ldots,20$ versus $0,\ldots,60$ differs by about $3.42\times10^{-49}$; the rigorous two-branch remainder bound after 20 is $7.89\times10^{-42}$. These are numerical evaluations under a proved tail estimate, not evidence for a sum over arbitrary graphs or all gravitational states.

A neutral scalar oscillator supplies a separate matter test. If it is gauge trivial, uncoupled and has $H_{\mathrm{osc}}=\omega N_{\mathrm{osc}}$ with $\omega>0$, the tensor product is legitimate and

$$\begin{align}
Z_{\mathrm{osc}}=\sum_{n=0}^\infty q^n=\frac1{1-q}, \qquad \langle N_{\mathrm{osc}}\rangle=\frac q{1-q}, \qquad q=e^{-\beta\omega}\in(0,1).
\end{align}$$

Its omission of the zero-point constant is a declared energy reference. A negative generator $-\omega N_{\mathrm{osc}}$ instead has growing weights. At $\beta\omega=\log2$, cutoffs $n\leq10$ and $n\leq20$ give partition sums $2047$ and $2097151$. A bounded dispersion over infinitely many orthogonal modes also fails automatically: if $E_n\leq E_{\max}$, each positive-temperature weight is at least $e^{-\beta E_{\max}}$. A finite Brillouin zone does not by itself mean a finite Hilbert-space trace; volume, mode count, measure and infrared zero modes still matter. With $\omega=0$, even a single bosonic oscillator has divergent partition sum.

These conditions concern a fixed graph and chosen Hamiltonian. Removing graph cutoffs, summing over graphs, adding interactions or passing to a field-theory limit requires additional estimates. A discrete spectrum, an area scale or a formal polymer replacement does not supply them.

## 8. Thermal Circles and Thermal Vectors Have Specified Meanings

Within the four-state model the transfer matrix $T_M=e^{-\beta H/M}$ is positive and $\operatorname{Tr}(T_M^M)=Z_G$ for every positive integer $M$. In the energy basis,

$$\begin{align}
Z_G=\sum_{i_1,\ldots,i_M}(T_M)_{i_1i_2}\cdots(T_M)_{i_Mi_1}.
\end{align}$$

This is an exact closed imaginary-time chain. Here the diagonal transfer matrix restricts it to constant labels and reproduces the four Boltzmann weights. It is not a derivation of a gravitational spin-foam amplitude. To identify a more elaborate Euclidean lattice integral with a thermal trace, one needs a specified transfer operator, measure, boundary conditions and suitable positivity. A chosen group heat-kernel parameter or an antisymmetric determinant identity does not provide those data. Coherent-state fermionic trace constructions give antiperiodic imaginary-time boundary conditions, but those require their own time-sliced Grassmann prescription, not relabeling the classical loop diffusion kernel.

In a continuum static comparison, a temperature is also associated with a flow. Let $K$ be a future timelike Killing vector, choose the time normalization and an equilibrium state at inverse parameter $\beta_0$, and put $\mathcal N=\sqrt{-K^2}$. For a future momentum $p$, a comoving observer is $u=K/\mathcal N$ and

$$\begin{align}
E_K=-p\cdot K=\mathcal N E_{\mathrm{loc}}, \qquad \beta_{\mathrm{loc}}=\beta_0\mathcal N, \qquad T_{\mathrm{loc}}=\frac{1}{\beta_0\mathcal N}.
\end{align}$$

The Tolman relation is the equality of the statistical exponent $\beta_0E_K=\beta_{\mathrm{loc}}E_{\mathrm{loc}}$. It assumes a stationary equilibrium state with this flow; it does not extract $\beta_0$ from a local curvature tensor or an arbitrary nonmetricity trace.

For example, the right Rindler chart has the physical metric

$$\begin{align}
ds^2=-(a\xi)^2d\tau^2+d\xi^2+dy^2+dz^2, \qquad a>0,\quad\xi>0.
\end{align}$$

Its curvature vanishes, while $K=\partial_\tau$ has $\mathcal N=a\xi$. Thus a state chosen to be thermal in $\tau$ has $T_{\mathrm{loc}}=1/(\beta_0a\xi)$ wherever this comparison applies. Flatness alone fixes neither the state nor $\beta_0$. No accelerated-detector rate or divergent unregulated Fourier integral is used here. Identifying a particular vacuum restriction with a particular thermal flow is an additional quantum-field-theoretic statement, not a consequence of this coordinate metric.

## 9. Finite Factors and Continuum Limits

For the chosen finite algebra $\mathcal A_G=M_4(\mathbb C)$, density matrices, ordinary traces, modular powers and von Neumann entropy are all well-defined. This mathematical situation must not silently be transferred to a local continuum field algebra. For example, the local algebras of a massive free scalar field in the four-dimensional Minkowski vacuum representation, assigned to bounded double-cone regions, are type III. This is a standard structural theorem about that representation, not every possible continuum model. A type-III algebra has no nonzero finite normal trace that could replace the finite matrix trace. A local region's state is not intrinsically specified by a trace-class density on a canonically factorized local Hilbert space. This is an operator-algebraic theorem input, not proved by our four states.

KMS conditions still make sense algebraically for a state and a continuous automorphism group, without a global partition function. A spatial entropy, a regulator-independent limit of finite graph entropies and a thermodynamic volume limit are distinct questions. One must specify the observable algebra, state, flow, regulators and limiting procedure before comparing them. The finite Fisher metric and mutual information above remain exact statements about their selected observables; they do not constitute a continuum entropy renormalization or a reconstruction of spacetime curvature.

What has been established is a route from a loop representation and a fermionic Fock space to an actual invariant state space, a positive interacting energy, a normalized thermal state, evaluated geometric/matter fluctuations, a statistical metric and a detailed-balance relaxation. Infinite-spin and oscillator extensions work under explicit growth conditions, with failures when those conditions are removed. These constructions show how quantum-geometric labels can enter statistical mechanics without treating those labels, a constraint, or a graph as a unique physical temperature prescription.

## References and Standard Inputs

[1] A. Ashtekar and J. Lewandowski, “Background independent quantum gravity: a status report,” Classical and Quantum Gravity 21 (2004), R53–R152. Loop kinematics and geometric spectra; no thermal Hamiltonian is inherited from this citation.

[2] O. Bratteli and D. W. Robinson, Operator Algebras and Quantum Statistical Mechanics 2, 2nd ed., Springer, 1997. KMS states and their relation to dynamical systems.

[3] R. Haag, Local Quantum Physics, 2nd ed., Springer, 1996. Local continuum algebras and the distinction from finite type-I factors.

Peter–Weyl decomposition, Haar invariance and Schur's lemma are representation-theoretic inputs. The finite projection, Boltzmann probabilities, information matrix, reset dynamics and convergence estimates used above are constructed explicitly; the general representation and continuum-algebra theorems are not proved by their finite checks.
