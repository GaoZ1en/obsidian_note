---
paper id: 2610.00478v1
title: Algebraic structure in holographic tensor networks
authors:
  - Abhisek Sahu
  - Jeremy van der Heijden
  - Mark Van Raamsdonk
  - Rana Zibakhsh
publication date: 2026-09-30T18:00:10
abstract: |-
  The paper tests a proposed correspondence between generalized entanglement wedges and observable subalgebras using holographic tensor networks. It constructs canonical corner algebras and families of unital factor algebras for isometric regional maps, studies their inclusions, intersections, joins and commutation, and evaluates two entropy prescriptions. A tracial ultraproduct gives regional type II_1 factors under explicit large-bond-dimension assumptions. General non-extremal unions remain an obstruction to the proposed algebraic account of strong subadditivity.
comments: "57 pages + appendices, 7 figures"
url: https://arxiv.org/abs/2610.00478v1
summary: "A finite-dimensional laboratory for regional observable algebras, with explicit limits on geometric sewing, random-isometry claims and entropy equivalence."
tags: []
---

# Regional algebras, extremal cuts and entropy

The immediate use is to separate four requirements in regional observable constructions: a representation of each regional algebra, compatibility under inclusion, the desired intersection and join, and conditional expectations satisfying a commuting-square identity. These requirements do not follow from one another. The paper gives exact constructions for restricted isometric-network geometries and useful random-network moment calculations. It does not prove a complete region-to-algebra net for general generalized wedges.

Reason codes: T1-boundary, T2-dS-BH-holography, T3-math. The separate author signal is A-big-name for Mark Van Raamsdonk. This is the third deep paper in [[2026_10_05_overview]]. Its factor-code input is developed in the same-day companion *Factor Code Networks*, [arXiv:2610.00469v1](https://arxiv.org/abs/2610.00469v1).

## Full source map and conventions

**Source-derived.** The complete v1 PDF and TeX were inspected. Printed pagination runs through the main discussion at p. 57 and appendices through p. 77, followed by references. PDF font extraction was unreliable for some mathematical glyphs; rendered pages confirmed the purity argument, overlap geometry, ultraproduct assumptions, entropy-index formula and replica minimization table.

| Cluster | Source tree and role |
| --- | --- |
| Motivation | §1, pp. 1–7: generalized wedges, proposed algebraic lattice and index-corrected entropy. These are hypotheses being tested. |
| Regional representation | §2.1, pp. 7–9: Hilbert spaces and boundary maps; §2.2, pp. 9–11: purity/isometry; §2.3, pp. 11–15, including §2.3.1: corners, canonical unital algebra and factor completions. |
| Inclusion | §3.1, pp. 16–27: §3.1.1 canonical algebras; §3.1.2 factors; §3.1.3 code networks, tree and diamond; §3.1.4 tensor-network application, permutation moments and non-extremal unions. |
| Other operations | §3.2, pp. 27–29: join; §3.3, pp. 29–30: intersection; §3.4, pp. 30–32: commutation; §3.5, pp. 32–34: nondegenerate commuting squares. |
| Entropy with an index | §3.6, pp. 34–39: conditional expectation, normalized algebraic density, pure and mixed code-state entropy. |
| Infinite bond dimension | §4.1, pp. 40–42: ultrafilter, bounded product, trace ideal and quotient; §4.2, pp. 42–47: §4.2.1 probability assumption, §4.2.2 polar correction and regional embedding. |
| Commutant entropy | §5.1, pp. 47–50: monotonicity and SSA; §5.2, pp. 50–53: comparison and doubled boundary; §5.3, pp. 53–54: corners. |
| Interpretation | §6, pp. 54–57: bulk legs, limiting inclusions, hollowed tensor networks and possible edge-mode interpretation. |
| Appendix A | A.1, pp. 57–59: Jones basic construction; A.2, pp. 59–61: intersection of extremal cuts; A.3, pp. 61–63: proposed general entropy equivalence. |
| Appendix B | B.1, pp. 63–66: Haar replica formula; B.2, pp. 66–71: single-region moments, overlap moments and variance; B.3, pp. 71–74: ratio of averages; B.4, pp. 74–76: non-extremal example; B.5, pp. 76–77: average over factor completions. |

The graph $G=(V,E)$ is finite, with external dangling legs. Every edge has complex bond dimension $D$. A region $A$ is a subset of internal vertices, and
$$
a(A)=|\partial A|,\qquad
\mathcal H_A=(\mathbb C^D)^{\otimes a(A)},\qquad
D_A=D^{a(A)},\qquad
\mathcal M_\partial=B(\mathcal H_\partial).
$$
A region is **extremal** if $a(B)\ge a(A)$ for every $B\supset A$. It is **strongly extremal** if strict inequality holds for every proper enlargement. The distinction matters for degenerate minimum cuts. The union $A\cup B$ and the smallest extremal containing region $A\vee B$ need not agree.

The source uses ordinary trace $\operatorname{Tr}$ or $\operatorname{tr}$ in finite matrix calculations and normalized trace $\tau$. Set $S_{\rm vN}(\rho)=-\operatorname{Tr}\rho\log\rho$, with natural logarithms. A prime denotes a commutant in the specified ambient algebra; changing the ambient algebra changes the entropy. Replica number $n$, bond dimension $D$, and the sequence label in §4 are independent. No Lorentzian propagation, gravitational action, gauge quotient or CPS form is part of the network model.

## Normalized maps and three regional algebras: §2

Removing the tensors in $A$ leaves a map $\widehat T_A:\mathcal H_A\to\mathcal H_\partial$. Its entries are the complementary network tensor with exposed legs interpreted as inputs. The source sets
$$
T_A=\sqrt{D_A}\frac{\widehat T_A}
{\sqrt{\operatorname{Tr}(\widehat T_A^\dagger\widehat T_A)}},
\qquad Q_A=T_A^\dagger T_A,\qquad P_A=T_AT_A^\dagger.
$$
Thus $\operatorname{Tr}Q_A=\operatorname{Tr}P_A=D_A$ exactly. Initially $P_A$ is positive, not automatically a projector. With $\rho_A=Q_A/D_A$,
$$
T_A^\dagger T_A=I
\Longleftrightarrow\operatorname{Tr}\rho_A^2=D_A^{-1},
\qquad
\|Q_A-I\|_{2,A}^2=D_A\operatorname{Tr}\rho_A^2-1,
$$
where $\|X\|_{2,A}^2=\operatorname{Tr}(X^\dagger X)/D_A$. This identifies the error a purity estimate must control.

The two-replica average reduces to an Ising model,
$$
H=-\frac{\log D}{2}\sum_{\langle xy\rangle}(s_xs_y-1).
$$
Each disagreeing edge costs $\log D$. A smaller enclosing cut is a rank bottleneck and forbids an isometry. A unique leading cut can give purity $D_A^{-1}[1+o(1)]$. Reproducing only the leading entropy term $a(A)\log D$ is insufficient.

**Checked boundary on random isometry.** For one Haar tensor viewed as a map $\mathbb C^D\to\mathbb C^D$, the input cut and its enlargement to the output have equal area. The exact two-copy Haar formula gives
$$
\mathbb E\operatorname{Tr}\rho_A^2=\frac{2D}{D^2+1},\qquad
\mathbb E\|Q_A-I\|_{2,A}^2=\frac{D^2-1}{D^2+1}\longrightarrow1.
$$
The weakly extremal cut therefore does not have vanishing mean squared defect, although its entropy has leading term $\log D$. The inference in Eqs. (2.9)–(2.10) must retain nondegeneracy or a separate defect estimate. Appendix B.2 uses strong extremality, and §4 explicitly assumes its probability estimate. Likewise $\mathbb E(e^{-S_2})=e^{-\mathbb E S_2}$ is not an exact equality; an asymptotic replacement needs concentration.

Assume an exact isometry. Three distinct objects are
$$
\begin{aligned}
\mathcal C_A&=P_AB(\mathcal H_\partial)P_A,\\
\mathcal N_A&=\mathcal C_A''=\mathcal C_A\oplus\mathbb C(I-P_A),\\
\mathcal M_A&=U_A(B(\mathcal H_A)\otimes I_m)U_A^\dagger,
\qquad m=D_\partial/D_A.
\end{aligned}
$$
The corner has unit $P_A$. The canonical unital algebra has a two-sector center when both sectors are nonzero. The last algebra is a unital factor, requiring an orthogonal completion $T^{(1)}=T_A,\ldots,T^{(m)}$:
$$
\varphi_A(O)=\sum_aT^{(a)}OT^{(a)\dagger},
\qquad \varphi_A(O)T_A=T_AO.
$$
The choices form $U(D_\partial-D_A)/U(m-1)$; the denominator rotates auxiliary copies. Averaging them gives
$$
\overline\varphi_A(O)=T_AOT_A^\dagger+\tau_A(O)(I-P_A).
$$
Appendix B.5 derives its central defect,
$$
\overline\varphi_A(O_1O_2)-\overline\varphi_A(O_1)\overline\varphi_A(O_2)
=[\tau_A(O_1O_2)-\tau_A(O_1)\tau_A(O_2)](I-P_A).
$$
Averaging therefore does not select a factor representation. Quotienting the central complement recovers the corner action.

A separate finite-dimensional qualification applies to §6: for any linear $T$, even nonisometric, the set $TB(\mathcal H_A)T^\dagger$ is the full corner on $\operatorname{ran}T$. For any $X=P_{\rm ran}XP_{\rm ran}$, take $O=T^+X(T^+)^\dagger$. The map need not preserve products, but its image is an algebra. The discussion's contrary statement fails for the full input matrix algebra specified here. This correction does not supply a faithful intertwining representation.

## Inclusion, replica moments and geometric operations: §3

For compatible exact isometries, $A\subset B$ gives $T_A=T_BT_{BA}$, hence corner and canonical-algebra inclusions. Factor completions must also compose. Trees admit this through edge completions along unique paths. A diamond additionally requires every principal-angle multiplicity of its middle code images to be divisible by the bottom Hilbert-space dimension, with integer edge multiplicities. The companion's finite tests apply.

### Replica formula and its limits

For a product of traces of $P_{A_i}$, assign $\pi_v\in S_n$ at every graph vertex, with
$$
H_v=\{\sigma\in S_n:\sigma(i)=i\text{ whenever }v\in A_i\}.
$$
The external permutation $\kappa$ has one cycle per trace. Haar averaging uses
$$
\mathbb E(|V\rangle\langle V|)^{\otimes k}
=\frac1{(d)_k}\sum_{\sigma\in S_k}\Sigma(\sigma),
\qquad (d)_k=d(d+1)\cdots(d+k-1),
$$
and the Cayley distance
$$
d_C(\sigma,\rho)=n-\#\operatorname{cycles}(\sigma^{-1}\rho)
$$
counts edge costs. Cancelling tensor normalizations gives the source's master formula
$$
\mathbb E\prod_\alpha\operatorname{Tr}
(P_{A_{i_{\alpha,1}}}\cdots P_{A_{i_{\alpha,k_\alpha}}})
=D^{\sum_i a(A_i)-\mathcal E_\kappa}
[g_\kappa+O(D^{-1})].
$$
Here $\mathcal E_\kappa$ is the minimum total distance and $g_\kappa$ counts minimizers. The coefficient cannot be omitted when cuts are degenerate.

For $\operatorname{Tr}(P_AP_B)^n$, use $2n$ replicas: $c_{2n}$ outside, identity on $A\cap B$, and even/odd cycles on $A\setminus B$ and $B\setminus A$. Under the strong-extremality and unique-saddle conditions of B.2,
$$
\mathcal E=(n-1)[a(A)+a(B)]+a(A\cup B),
$$
so
$$
\mathbb E\operatorname{Tr}(P_AP_B)^n
=\frac{D_AD_B}{D_{A\cup B}}[1+O(D^{-1})]
=D_{A\cap B}D^{2e_{AB}}[1+O(D^{-1})],
$$
where $e_{AB}=|\partial(A\setminus B,B\setminus A)|$. The exact cut identity is
$$
a(A)+a(B)=a(A\cup B)+a(A\cap B)+2e_{AB}.
$$
The factor $D^{2e_{AB}}$ cannot be dropped for adjacent difference regions.

B.2 minimizes the energy using discrete coarea. For extremal $C$ and nonnegative $f$ outside it, vanishing on external vertices,
$$
\sum_{\{v,w\}\subset C^c}|f(v)-f(w)|
\ge\sum_{u\in C,v\notin C}f(v).
$$
Integrate the boundary inequality for level sets of $f$. Apply it first to distance from the external cycle outside $A\cup B$, then to deficits from even/odd cycles. Each replacement does not raise energy. B.2.3 doubles the replicas: the disconnected saddle has twice the energy and gives **relative** variance $O(D^{-1})$. The unnormalized variance need not vanish when the mean grows with $D$.

B.3 expands $\mathbb E(X/Y)$ around $\mathbb E Y$. Extra denominator replicas are argued to cost domain-wall energy; deleting their labels is nonexpanding in Cayley distance. This motivates the ratio-of-averages approximation. Uniform inverse-denominator tail control and all-order remainder bounds were not established by the finite checks here.

For exact projectors, identical moments for every $n$ force each nonzero overlap eigenvalue to equal one. Approximate fixed-$n$ averaged moments do not enforce exact finite-$D$ degeneracies. The approximate diamond argument must retain this distinction.

### Non-extremal union: the explicit five-saddle example

B.4 gives
$$
D_A=D_B=D^4,\qquad D_{A\cup B}=D^6,\qquad D_E=D^5,\quad E=A\vee B.
$$
For $n=1$, the top spin is identity or $(12)$ with energies five and six, giving first moment $D^3$.

For $n=2$, set $a=(24)$, $b=(13)$, $c=(1234)$. The left/right spins lie in $\{1,a\}$ and $\{1,b\}$, and the top spin runs through $S_4$:
$$
\mathcal E(t,l,r)=d_C(t,c)+d_C(t,l)+d_C(t,r)
+d_C(l,1)+d_C(r,1)+2d_C(l,c)+2d_C(r,c).
$$
Exact enumeration of all 96 configurations gives:

| $(l,r)$ | Minimum | Minimizing $t$ |
| --- | --- | --- |
| $(1,1)$ | 15 | $1$ |
| $(a,1)$ | 14 | $a$ |
| $(1,b)$ | 14 | $b$ |
| $(a,b)$ | 14 | $a,b,c$ |

Thus
$$
\mathbb E\operatorname{Tr}(P_AP_B)\sim D^3,\qquad
\mathbb E\operatorname{Tr}(P_AP_B)^2\sim5D^2.
$$
This invalidates an $n$-independent-projector argument for this union. It does not alone prove that no factor-code diamond exists: multiplicity divisibility might hold for a non-projector overlap spectrum.

### Four different algebraic tests

For an isometric code tree $A,B\subset A\vee B$, the generic-join theorem applies except for scalar codes, equal proper images or complementary images. Bond dimension $D>2$ excludes the power-of-$D$ complement exception. The source uses random moments to argue against coincident proper images. This is a generic statement with exclusions, not a claim about every completion of every exact network.

Once a compatible diamond exists, factor out the bottom algebra and apply the scalar-intersection theorem. For $D>2$, neither middle region filling the boundary, and nonexceptional residual subspaces, generic compatible completions obey
$$
\mathcal M_A\cap\mathcal M_B=\mathcal M_{A\cap B}.
$$
Existence of the compatible diamond is a prerequisite.

For disjoint non-adjacent regions, $\mathcal H_{A\cup B}=\mathcal H_A\otimes\mathcal H_B$. An extremal union and exact isometries permit commuting factor maps. If an enclosing extremal region has $D_E<D_AD_B$, commuting full matrix factors cannot fit inside $B(\mathcal H_E)$. Without intermediate inclusion, the source invokes the typical overlap bound $\|P_AP_B\|_1>1$. The proposed gravitational criterion “disjoint and union a generalized wedge” remains conjectural.

A nondegenerate square requires both expectation and commutant-expectation compatibility. The finite criterion is
$$
D_{\rm top}=\frac{D_{\rm left}D_{\rm right}}{D_{\rm bottom}},
\qquad P_{\rm left}P_{\rm right}=P_{\rm bottom},
$$
with integer dimension ratios. Figure 7 gives an exact construction through independent left/right encodings, without direct edges between $A\setminus B$ and $B\setminus A$. It has $e_{AB}=0$. If $e_{AB}>0$, the cut identity already obstructs the dimension equality with top $A\cup B$. An extremal union alone cannot replace this stronger geometry. A genuinely non-extremal union also violates the equality with top $A\vee B$ because its enclosing cut is strictly smaller. The general algebraic account of wedge SSA remains open.

## Index-corrected entropy: §3.6

For $m=D_\partial/D_A$, the trace-preserving expectation is
$$
E_A(X)=\frac1m\sum_{a,b}
T^{(b)}T^{(a)\dagger}XT^{(a)}T^{(b)\dagger}
\simeq(\mathrm{id}\otimes\tau_m)(X)\otimes I_m.
$$
Its finite-factor index is $m^2$. For ordinary density $\rho_\Psi=T_A\rho_AT_A^\dagger$, use the normalized-trace density $\widehat\rho_\Psi=D_\partial\rho_\Psi$. Then
$$
E_A(\widehat\rho_\Psi)=D_A\sum_bT^{(b)}\rho_AT^{(b)\dagger}.
$$
Every eigenvalue $D_A\lambda_i$ repeats $m$ times, so
$$
S(\omega|\mathcal M_A)
=-\tau_\partial(E_A\widehat\rho_\Psi\log E_A\widehat\rho_\Psi)
=S_{\rm vN}(\rho_A)-\log D_A.
$$
The negative shift belongs to the trace convention. With $K_\Omega=2\log D_\partial$,
$$
\widetilde S(\mathcal M_A)
=S(\omega|\mathcal M_A)-\log\operatorname{Ind}E_A+K_\Omega
=\log D_A+S_{\rm vN}(\rho_A).
$$
This is cut area for pure input. The proposed difference for nested factors is $\log\operatorname{Ind}E-S(\omega\|\omega\circ E)$; positivity uses the appropriate index entropy bound, not positivity of normalized-trace algebraic entropy.

## Conditional type-II limit: §4

With nonprincipal ultrafilter $\omega$ and normalized matrix traces $\tau_n$, define
$$
\mathcal M_\omega=
\{(X_n):\sup_n\|X_n\|<\infty\}/
\{(X_n):\lim_\omega\|X_n\|_{2,n}=0\},
\quad
\tau_\omega([X_n])=\lim_\omega\tau_n(X_n).
$$
The null sequences form a two-sided ideal by $\|XY\|_2\le\|X\|\|Y\|_2$. The source invokes the standard theorem that full matrix sizes tending to infinity give a type $II_1$ factor.

The network application explicitly assumes
$$
\mathbb P\{\|(T_n^A)^\dagger T_n^A-I\|_{2,A}\le f_A(d_n)\}
\ge1-g_A(d_n),\qquad f_A,g_A\to0.
$$
Choose $d_n$ rapidly enough that $\sum_n\sum_Ag_A(d_n)<\infty$. There are finitely many regions; union bound and Borel–Cantelli give eventual simultaneous control almost surely.

Polar decomposition, extended across the kernel, replaces $T_n^A$ by an exact isometry $V_n^A$. Since $|1-\sqrt x|\le|1-x|$,
$$
\|V_n^A-T_n^A\|_{2,A}\le f_A(d_n).
$$
Complete it to a unitary $U_{A,n}$ on $\mathcal H_n^A\otimes\mathbb C^{r_{A,n}}$, where $r_{A,n}=d_n^{b-a(A)}$, and set
$$
\Phi_{A,n}(O)=U_{A,n}(O\otimes I_{r_{A,n}})U_{A,n}^\dagger.
$$
This preserves normalized trace, operator norm and normalized $2$-norm. It descends to an injective trace-preserving normal embedding of the regional ultraproduct, whose image is type $II_1$ for $a(A)>0$. The empty-cut case is scalar. The intertwining defect is at most $2\|O\|\|V_n^A-T_n^A\|_2$.

Different completions give conjugate images, not a canonical global choice. Separately correcting regional maps does not ensure all diamond relations. Normalized $2$-norm convergence is weaker than operator-norm convergence. A corner with relative rank $D_A/D_\partial\to0$ vanishes in the ambient tracial quotient; unital amplification avoids that loss but retains completion freedom.

## Commutant entropy and ambient dependence: §5

For a faithful normal expectation onto the commutant,
$$
S_C(\mathcal A)=S(\omega\|\omega\circ E_{\mathcal A'}).
$$
If $\mathcal A\subset\mathcal B$ and $E_{\mathcal B'}E_{\mathcal A'}=E_{\mathcal B'}$, the expectation-relative-entropy Pythagorean identity gives
$$
S_C(\mathcal B)-S_C(\mathcal A)
=S(\omega\circ E_{\mathcal A'}\|\omega\circ E_{\mathcal B'})\ge0.
$$
For $\mathcal C=\mathcal A\cap\mathcal B$, $\mathcal D=\mathcal A\vee\mathcal B$, SSA assumes
$$
E_{\mathcal A'}E_{\mathcal B'}=E_{\mathcal B'}E_{\mathcal A'}=E_{\mathcal D'},
\quad
E_{\mathcal A'}E_{\mathcal C'}=E_{\mathcal A'},
\quad E_{\mathcal B'}E_{\mathcal C'}=E_{\mathcal B'}.
$$
Data processing on the coarse-grained states and two Pythagorean differences yield $S_C(\mathcal A)+S_C(\mathcal B)\ge S_C(\mathcal C)+S_C(\mathcal D)$. Trace preservation supplies nested compatibility, not a commuting square for arbitrary pairs. In a general ambient von Neumann algebra, relative-commutant identities also need their stated hypotheses.

For a finite tensor factor and any global density,
$$
S_C(\mathcal A)=\log D_A+S_{\rm vN}(\rho_{A'})-S_{\rm vN}(\rho).
$$
On the mixed code state $\rho_A\otimes|1\rangle\langle1|$,
$$
S_C(\mathcal M_A)=\log D_A-S_{\rm vN}(\rho_A),
\qquad \widetilde S-S_C=2S_{\rm vN}(\rho_A).
$$
Purify the state in a doubled boundary and take the commutant in its full matrix algebra instead. Complement entropy is now $S_{\rm vN}(\rho_A)$ and global entropy is zero, giving
$$
S_C^{\rm doubled}(\mathcal M_A)=\log D_A+S_{\rm vN}(\rho_A)=\widetilde S.
$$
Both ambient algebra and state changed.

For the corner, its doubled commutant is
$$
[\mathbb CP_A\oplus B((I-P_A)\mathcal H_\partial)]
\otimes B(\overline{\mathcal H}_\partial).
$$
The expectation depolarizes the $P_A$ sector, erases cross-sector coherences and leaves the complement:
$$
E_{\mathcal C_A'}(X)=
\frac{P_A}{D_A}\otimes\operatorname{Tr}_{P_A\mathcal H_\partial}
[(P_A\otimes I)X(P_A\otimes I)]
+[(I-P_A)\otimes I]X[(I-P_A)\otimes I].
$$
On a purified code-supported state the second term vanishes and the same plus-sign entropy follows. The equality need not survive support outside the corner.

## Appendix A: basic construction and a failed generalization

A.1 uses the Jones extension $\mathcal M_1=\langle\mathcal M,e_{\mathcal N}\rangle$, dual expectation $\widehat E(xe_{\mathcal N}y)=(\operatorname{Ind}E)^{-1}xy$, and standard-form anti-isomorphism $j(x)=Jx^*J$. It transports commutant relative entropy to the basic construction. This needs the dual expectation and the appropriately corresponding purified/standard-form state, rather than arbitrary unrelated states on commuting factors.

A.2 proves intersection closure by submodularity. For $C\supset A\cap B$, extremality of $A$ gives $a(A\cap C)\le a(C)$. Applying the same argument to $B$ yields $a(A\cap B)\le a(A\cap C)$. Thus $A\cap B$ is extremal and finite intersections define the smallest extremal containing union.

**Failed — A.3, Proposition 20 and Eq. (A.9), as stated for arbitrary faithful global states.** Take
$$
\Omega=M_4\otimes I_4,\qquad
\mathcal A=(M_2\otimes I_2)\otimes I_4
\subset\mathcal M=M_{16},\qquad
\omega(X)=\operatorname{Tr}(X)/16.
$$
All relevant trace-preserving expectations exist and fix the state. Both relative entropies on the left of (A.9) vanish, whereas the index is $4$. This gives the contradiction $0=\log4$. Equivalently the proposed entropy equality has left-minus-right $-\log4$ with its stated $K_\Omega$. Exact matrix projections confirm the invariances.

A vector purification of a faithful state on $\Omega$ differs from an arbitrary faithful mixed state on $B(\mathcal H_\Omega)$. Restricting to the former recovers the finite-factor computation of §5.2 and $K_\Omega=2\log D_\Omega$, but that vector state is not faithful on the whole doubled full matrix algebra. The arbitrary-global-state formulation is not used here. General type-II/type-III extensions require the appropriate normal expectations or operator-valued weights; the appendix leaves the weight extension open.

## Equation ledger and translation to regional CPS

| Object | Use | Boundary |
| --- | --- | --- |
| $D_A\operatorname{Tr}\rho_A^2-1$ | Normalized isometry defect | Leading entropy exponent is insufficient. |
| $\mathcal C_A,\mathcal N_A,\mathcal M_A$ | Corner, canonical unital algebra, chosen factor | Units, centers and extension freedom differ. |
| $\mathcal E_\kappa,g_\kappa$ | Replica exponent and coefficient | Fixed replicas and concentration assumptions. |
| Principal-angle multiplicities | Finite diamond compatibility | Approximate moments are not exact multiplicities. |
| $P_2P_3=P_1$ and dimension equality | Nondegenerate code square | Extra geometric conditions required. |
| $E_A,\operatorname{Ind}E_A=m^2$ | Trace-normalized entropy | Rescale the ordinary density first. |
| $S_C$ | Monotonicity/SSA with compatible expectations | Ambient algebra and state are part of the data. |
| $\Phi_A$ on ultraproducts | Exact individual regional factor | Probability and global compatibility remain separate. |

The derivation map is graph cut → normalized map → code → completion → compatible diagram → expectations → entropy. Random moments enter at the map and overlap stages; they do not independently solve completion compatibility.

For a CPS benchmark, specify regional source/response spaces, constraints and the presymplectic quotient first, quantize a finite system, and then test its inclusion diagram against these criteria. Graph boundary legs are not already physical edge modes or gauge charges. Causal sewing additionally needs compatible Green operators and support conditions, absent in this static model. The reusable content is the separation of representation, overlap geometry and entropy assumptions.

## Verification and remaining boundaries

**Checked — exact Sage.** Sizes $(D_A,m)=(2,2),(2,3),(3,2)$ passed all matrix-unit tests of the central averaged-map defect, expectation formula, idempotence, trace preservation and amplification trace. The cut identity was checked symbolically and on every pair of subsets of all 64 simple graphs with three internal vertices and one external vertex; 2,092 extremal-region pairs passed intersection closure. Cayley distances were checked at replica orders $n=1,\ldots,6$, moment exponents at $n=1,\ldots,7$, and Haar cycle polynomials through $S_6$. All 96 B.4 configurations reproduced the table and fivefold minimum. All pairs in $S_4$ passed the deletion-distance bound. These finite checks do not prove general ensemble asymptotics.

**Checked — Mathematica.** The polar scalar inequality and entropy normalizations reduced exactly under positivity assumptions. Twelve faithful three-qubit states had positive index-corrected SSA gaps, approximately $0.2031$–$0.3350$ nats; a commutant-entropy SSA test also passed. The mixed-input minus sign and purified plus sign were independently reproduced. These are finite checks, not a general proof of Araki-entropy theorems.

**Failed — localized claims.** Weak extremality alone does not supply vanishing normalized mean squared isometry defect; the equal-cut Haar result is exact. The nonisometric full-matrix image remains a corner even though conjugation fails to be a homomorphism. A.3's arbitrary faithful mixed-state index equality fails the tracial $M_{16}$ example. These failures are separate from the exact factor-code and finite purified-entropy constructions.

**Blocked / Not independently verified.** A uniform high-probability defect theorem for all weakly extremal regions is not supplied and does not follow from leading entropy. General non-extremal-union diamonds lack principal-angle multiplicity evidence. Uniform inverse-denominator tails, simultaneously compatible ultraproduct completions and a continuum gravitational/CPS realization remain unproved here. No download or CAS execution blocker remains. An initial Mathematica partial-trace helper had an invalid local assignment; it was corrected and the reported entropy checks rerun without messages.

Verified: exact finite algebra, graph and permutation identities; finite entropy and counterexample calculations. Assumptions: stated isometries, equal bond dimensions, integer multiplicities, normalized trace, specified ambient commutant and strong-extremality/probability hypotheses at random-network steps. Not verified: general quantum-gravity interpretation and open global sewing claims.

## How to read this long paper

For regional-algebra work read §§2.3, 3.1 and 3.5 first, using the companion for finite proofs. Read §3.6 alongside §5.2 to track normalization and the ambient-algebra change. B.1–B.4 are the essential random-network references, especially the minimizer coefficient and non-extremal example. Section 4 is useful with its explicit probability assumption. A.2 is a short reusable cut proof; A.1 supplies the basic construction; A.3 requires the mixed-state qualification above. Section 6's gravitational comparisons remain optional background.
