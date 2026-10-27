---
paper id: 2610.13700v1
title: Bessel-Hagen currents, reducibility charges, and local gravitational energy
authors:
- Michael Hobson
- Will Barker
- Anthony Lasenby
publication date: '2026-10-09'
abstract: 'We consider whether the translation Noether current of a linearised metric spin-2 theory admits a strictly gauge-invariant
  local representative. For Fierz-Pauli and dynamically regular pure curvature-squared theories in four dimensions, we show
  that no such representative exists under the stated locality, polynomiality and covariance assumptions. A direct enumeration
  first excludes nonzero symmetric rank-two tensors at the dimension and derivative order of the quadratic action: in the
  curvature-squared case, the parity-even conservation kernel consists of the identically vanishing Lanczos--Lovelock combination,
  while both parity-odd coefficients vanish. Homogeneity of the actions in total derivative number then allows projection
  by field degree and derivative number, extending the exclusion to all finite-order local polynomial representatives with
  constant coefficients and no explicit coordinate dependence. The translation current nevertheless defines a nonzero conserved-current
  class. Independently, a constant translation is a Killing reducibility parameter of the linearised gauge symmetry and determines
  a nonzero linear surface-charge class, which is distinct from the quadratic energy current. A separate calculation shows
  why a direct compensator cancellation available in Maxwell theory fails for the metric spin-2 field, although this calculation
  is not needed for the current-class result. Maxwell theory, propagating free $p$-forms and Yang--Mills theory linearised
  about the trivial vacuum provide comparisons in which translations are not reducibility parameters and strictly gauge-invariant
  stress tensors exist. Gauss--Bonnet and pure flat-space $R^2$ gravity lie outside the regular scope of the result, through
  variational triviality and dynamical degeneracy, respectively.'
comments: 12 pages, no figures. Submitted to PRD
url: https://arxiv.org/abs/2610.13700v1
summary: A checked curvature-bilinear exclusion and homogeneous-current argument separate quadratic gravitational energy from
  linear Killing reducibility charges under explicit flat-space regularity assumptions.
tags: []
---

# Bessel-Hagen currents, reducibility charges, and local gravitational energy

## Result and use for boundary charges

Under the paper's flat-background, locality, polynomiality, finite differential order, constant-coefficient, Poincaré-covariance and regularity assumptions, the nontrivial translation current of Fierz–Pauli or regular pure curvature-squared metric gravity has no strictly gauge-invariant local representative. A constant translation nevertheless supplies a distinct linear reducibility surface charge. The quadratic current and linear surface form are not interchangeable:
$$
[j_a]\in H^{n-1}_{\rm char}(d),\quad j_a=O(h^2),\qquad
[k_a]\in H^{n-2}_{\rm char}(d),\quad k_a=O(h).
$$
The local use is to keep three questions separate in a regional charge construction: whether a current class is gauge invariant, whether one representative is strictly invariant, and whether a codimension-two charge exists. The failure of a particular compensator is not a proof of a current-class obstruction. Reason codes: `T1-charge; T1-symmetry; T2-model`.

The candidate-space algebra and compensator inconsistency are reproduced below. The full theorem remains conditional on the invariant-jet theorem and local Noether/cohomology regularity assumptions invoked by the source. It does not exclude nonlocal observables, boundary charges, AdS charges, independent-connection formulations or mixed-order actions.

## Source map and reading route

Sources: [abstract](https://arxiv.org/abs/2610.13700v1), [PDF](https://arxiv.org/pdf/2610.13700v1), [TeX](https://arxiv.org/src/2610.13700v1). All eight sections and Appendix A of the 12-page paper were read from the source and extracted PDF. Pages 4–7 and 11 were rendered and visually checked for equations (4)–(20), the odd-jet table and the appendix matrix. The PDF extractor emitted a font-type mismatch warning but returned usable text; the displayed formulas were checked against rendered pages and TeX.

| Source | Reconstruction and role |
|---|---|
| I Introduction | Distinguishes Maxwell compensation, metric derivative counting, rigid translations and Killing reducibility. |
| II Bessel-Hagen currents and two notions of success | Defines strict versus class-level success, regular action sectors and allowed local expressions. Essential assumptions. |
| III Direct localizability no-go | Cubic-jet lemma; even and odd curvature bilinears; nontriviality of current and independent surface charge. Essential calculation. |
| IV The current class and reducibility charge | Homogeneous projection, constructive superpotential lemma, separate compensator lemma, and field-degree distinction. Essential proof. |
| V Classification | Comparisons with internal gauge fields and massive theories; no converse criterion. |
| VI Degenerate limits | Gauss–Bonnet is variationally trivial; flat pure $R^2$ is dynamically degenerate. |
| VII Discussion | Nonlinear second-order matching, an explicit noninvariant linear superpotential, AdS and coframe limitations, rank-four super-energy. |
| VIII Conclusions | Combines the two proofs and preserves their domain. |
| Appendix A | Six-by-seven divergence matrix and its zero-tensor kernel. |

Read II → III → IV for the result. Use VI before applying it to a special coupling limit; use VII before identifying a boundary charge with graviton energy. I and V provide comparison context; Appendix A is the finite algebra reference.

## Fields, grading and dynamical hypotheses — II

Use $\eta={\rm diag}(1,-1,-1,-1)$, $\epsilon_{0123}=+1$, and unit-weight (anti)symmetrization. The convention is $R^\rho{}_{\sigma\mu\nu}=\partial_\mu\Gamma^\rho{}_{\sigma\nu}-\partial_\nu\Gamma^\rho{}_{\sigma\mu}+\cdots$, $R_{\mu\nu}=R^\rho{}_{\mu\rho\nu}$. Linearized diffeomorphisms act as
$$
\delta_\xi h_{\mu\nu}=\partial_\mu\xi_\nu+\partial_\nu\xi_\mu.
$$
A rigid translation instead acts as $\Delta_a h=-a^\rho\partial_\rho h$. A constant gauge parameter $\xi_\mu=a_\mu$ gives $\delta_a h=0$; this is not the rigid action.

Modulo four-dimensional Gauss–Bonnet and Pontryagin densities, the homogeneous four-derivative action is
$$
S^{(2)}=\int d^4x\,[a\,C^{(1)}_{\mu\nu\rho\sigma}C^{(1)\mu\nu\rho\sigma}+b(R^{(1)})^2].
$$
Here action coefficient $a$ is distinct from translation vector $a^\mu$. The regular sector has $a\ne0$. At non-null generic momentum, the symbol has rank six for $b\ne0$, or rank five for $b=0$ with the additional Weyl gauge symmetry $\delta_\omega h_{\mu\nu}=2\eta_{\mu\nu}\omega$. For pure $R^2$ it has rank one and unaccounted degeneracy. Exact Hessian calculations at timelike and spacelike reference momenta reproduce ranks $(6,5,1)$ for $(a,b)=(1,1),(1,0),(0,1)$; this is a symbol check, not a proof of the complete solution-space regularity assumptions.

The source additionally assumes regularity of the stationary surface and completeness of Noether identities, so every weakly vanishing local expression belongs to the differential ideal generated by $\mathcal E$ and its derivatives. These hypotheses support the converse Noether and reducibility correspondences.

For a general linear gauge system $\delta_\epsilon\phi=\mathcal R\epsilon$, Noether's second theorem is $\mathcal R^\dagger\mathcal E=0$ and $\partial_\mu j_a^\mu=-\Delta_a\phi^i\mathcal E_i\approx0$. Representatives are equivalent modulo antisymmetric superpotentials and equation terms:
$$
j^\mu\sim j^\mu+\partial_\nu U^{[\mu\nu]}+W^\mu,\qquad W\approx0.
$$
Strict success requires a nontrivial local, symmetric, gauge-invariant conserved tensor representing this class. Gauge invariance only modulo this equivalence, or an invariant object of a different rank or dimension, does not meet that requirement.

## Cubic jets reduce on-shell conservation to an identity — III

With $[h]=0$, a quadratic dimension-four invariant tensor can depend only on two undifferentiated linearized curvatures. This uses the invariant-jet theorem: strict linearized-diffeomorphism invariants are polynomials in curvature and its derivatives. Its divergence therefore depends on second and third derivatives of $h$ only.

Every prescribed second and third metric jet at a point is realized by a cubic polynomial perturbation. Such a perturbation solves any homogeneous fourth-order linear equation exactly, since all fourth derivatives vanish. Therefore conservation on all solutions forces conservation on every jet appearing in the divergence:
$$
\partial_\mu T^{\mu\nu}\approx0\quad\Longrightarrow\quad\partial_\mu T^{\mu\nu}\equiv0
$$
within this candidate space. This step would fail for a mixed second/fourth-order equation. It is also different from Maxwell conservation, which uses $\partial_\mu F^{\mu\nu}=0$ nontrivially.

### Even tensors and Appendix A

Suppress the superscript $(1)$ on all curvatures. The seven spanning tensors are
$$
\begin{aligned}
T_{1\mu\nu}&=R_{\mu\alpha}R_\nu{}^\alpha,&T_{2\mu\nu}&=RR_{\mu\nu},&T_{3\mu\nu}&=R^{\alpha\beta}R_{\mu\alpha\nu\beta},\\
T_{4\mu\nu}&=R_{\mu\alpha\beta\gamma}R_\nu{}^{\alpha\beta\gamma},&
T_{5\mu\nu}&=\eta_{\mu\nu}R_{\alpha\beta}R^{\alpha\beta},&
T_{6\mu\nu}&=\eta_{\mu\nu}R^2,\\
T_{7\mu\nu}&=\eta_{\mu\nu}R_{\alpha\beta\gamma\delta}R^{\alpha\beta\gamma\delta}.
\end{aligned}
$$
Curvature symmetries reduce the even rank-two contractions to this spanning set, which is not independent in four dimensions. Appendix A expresses the divergence in the ordered monomials
$$
(M_1^\nu,\ldots,M_6^\nu)=
(R_{\alpha\beta}\partial^\nu R^{\alpha\beta},R\partial^\nu R,
R^{\nu\alpha}\partial_\alpha R,R^{\alpha\beta}\partial_\alpha R_\beta{}^\nu,
R_{\alpha\beta\gamma\delta}\partial^\nu R^{\alpha\beta\gamma\delta},
R^{\alpha\beta\gamma\nu}\partial_\alpha R_{\beta\gamma}).
$$
The coefficient matrix is
$$
\mathsf M=\begin{pmatrix}
0&0&1&0&2&0&0\\
0&1/2&0&0&0&2&0\\
1/2&1&0&0&0&0&0\\
1&0&-1&0&0&0&0\\
0&0&0&1/2&0&0&2\\
0&0&-1&-2&0&0&0
\end{pmatrix},\qquad
\ker\mathsf M={\rm span}\{(8,-4,8,-4,-4,1,1)\}.
$$
The rank is six. The corresponding tensor
$$
8T_1-4T_2+8T_3-4T_4-4T_5+T_6+T_7\equiv0
$$
is the four-dimensional Lanczos–Lovelock identity, not a nonzero conserved energy tensor.

**Checked:** Mathematica reproduced the printed matrix rank and null vector. Independently, exact component differentiation of cubic metric perturbations gave a stacked divergence matrix of rank six with the same null vector. A symbolic calculation with arbitrary independent second metric jets gave zero for every component of the Lovelock combination. Together, the exact rank lower bound and universal zero identity establish the kernel on this seven-element spanning set; a finite sample alone would not prove an arbitrary tensor identity.

### Odd tensors and explicit excluding solutions

With the dual on the first pair, define
$$
\mathcal P=R_{\alpha\beta\gamma\delta}{}^*R^{\alpha\beta\gamma\delta},\qquad
P_{\mu\nu}=R^{\alpha\beta}{}^*C_{\mu\alpha\nu\beta}.
$$
The odd candidate is $uP_{\mu\nu}+v\eta_{\mu\nu}\mathcal P$. The source's completeness argument uses the complex Lorentz representation
$$
\mathcal R=(2,0)\oplus(0,2)\oplus(1,1)\oplus(0,0).
$$
In $\mathrm{Sym}^2\mathcal R$, parity exchange leaves one odd scalar (difference of chiral Weyl squares) and one odd symmetric trace-free rank-two tensor (difference of the two Weyl–Ricci products). Sage weight enumeration gives dimension 210, four scalar copies, four $(1,1)$ copies and no $(1,0)$ or $(0,1)$ copies. With parity exchange this agrees with the two odd structures and excludes antisymmetric rank-two additions. The even four scalar/trace-free multiplicities combine into six independent even rank-two tensors, consistent with the single relation among $T_1,\ldots,T_7$.

The identity $R_{\mu\alpha\beta\gamma}{}^*R_\nu{}^{\alpha\beta\gamma}=\eta_{\mu\nu}\mathcal P/4$ does not eliminate the mixed tensor $P_{\mu\nu}$. Both coefficients are excluded by the exact cubic solutions
$$
\mathrm A:\ h_{00}=x^2,\ h_{03}=h_{30}=y^3/6;\qquad
\mathrm B:\ h_{00}=x^2,\ h_{03}=h_{30}=xy^2/2,
$$
all other components zero. At the origin the independent calculation gives exactly the source's table:

| Solution | $\partial^\mu P_{\mu\nu}$ | $\partial_\nu\mathcal P$ |
|---|---|---|
| A | $(0,-1/2,0,0)$ | $(0,0,0,0)$ |
| B | $(0,0,0,0)$ | $(0,0,-4,0)$ |

Thus $u=v=0$. Even/odd cancellation cannot evade the result: reflect the arbitrary metric jets and free index, then add/subtract the two polynomial identities to isolate the parity sectors. The general odd-contraction identity was also checked with arbitrary symbolic second jets.

For Weyl-squared gravity the extra Weyl invariance leaves Weyl bilinears only. In four dimensions $C_{\mu\alpha\beta\gamma}C_\nu{}^{\alpha\beta\gamma}=\eta_{\mu\nu}C^2/4$, leaving pure traces whose conservation forces the coefficients to vanish. The mixed odd tensor is not Weyl invariant: $\delta_\omega P_{\mu\nu}=-2\partial^\alpha\partial^\beta\omega\,{}^*C_{\mu\alpha\nu\beta}$. The Weyl-specific identities here are source-derived specializations of the candidate argument; the complete even/odd exclusion was checked without imposing Weyl invariance.

## Why this excludes the full admitted current class — IV

The canonical current has field/derivative bidegree $(N,D)=(2,q)$, with $q=2$ for Fierz–Pauli and $q=4$ for the pure curvature-squared theories. A prolonged equation $\partial_I\mathcal E$ has degree $(1,q+|I|)$. Suppose a strictly invariant representative exists:
$$
J_a=j_a+\partial U_a+W_a,\qquad W_a\approx0.
$$
Projecting onto $(2,q)$ gives
$$
K_a:=\Pi_{2,q}J_a=j_a+\partial(\Pi_{2,q-1}U_a)+\Pi_{2,q}W_a.
$$
The stationary ideal is homogeneous. In $\sum f^{A,I}([h])\partial_I\mathcal E_A$, its $(2,q)$ piece contains only $I=0$ and an undifferentiated linear $f$. Thus differentiated-equation improvements are covered, without assuming that integration by parts turns every divergence into an antisymmetric superpotential.

Strict invariance survives this projection: diffeomorphism variation maps $(N,D)$ to $(N-1,D+1)$ when gauge-parameter derivatives are counted; Weyl variation maps it to $(N-1,D)$. Different grades cannot cancel. At $q=2$, no quadratic invariant has sufficiently few derivatives, so $K_a=0$. At $q=4$, the cubic-jet argument makes $K_a$ identically conserved, irrespective of tensor symmetry.

For completeness, the source gives a constructive superpotential for any identically conserved quadratic local current. Polarize it, replace derivatives on the two factors by $p,k$, and use $r=p+k$, $s=p-k$. For the piece homogeneous of degree $m$ in $r$,
$$
r_\mu\widehat K_m^\mu=0,\qquad
\widehat V_m^{\mu\nu}=\frac1{m+1}\left(\frac{\partial\widehat K_m^\mu}{\partial r_\nu}-\frac{\partial\widehat K_m^\nu}{\partial r_\mu}\right).
$$
Euler's identity gives $r_\nu\partial_{r_\nu}\widehat K_m^\mu=m\widehat K_m^\mu$, while differentiating the constraint gives $r_\nu\partial_{r_\mu}\widehat K_m^\nu=-\widehat K_m^\mu$. Hence $r_\nu\widehat V_m^{\mu\nu}=\widehat K_m^\mu$. The $m=0$ piece is zero. No inverse differential operator is introduced, and total derivative number decreases by one. A quadratic polynomial-symbol example was independently checked; the general identity follows from these two displayed equalities.

Either case would make $[j_a]$ trivial. On the regular finite-momentum sector, however, rigid translation changes the invariant curvature: $\Delta_aK^{(1)}=-a\cdot\partial K^{(1)}\ne0$ for suitable solutions. It is neither gauge nor on-shell trivial. Under the converse Noether correspondence, $[j_a]\ne0$, giving the contradiction.

This argument depends on the invariant-jet theorem and the regularity assumptions. It does not extend automatically to $R+\alpha R^2$, explicit coordinate dependence, inverse derivatives, nonanalytic/pseudolocal expressions, or arbitrary noncovariant improvements. A dimensionful coefficient does not itself change formal derivative grading, but mixed differential orders in the field equations destroy the homogeneous-ideal step.

## The separate compensator obstruction — IV

For the natural current representative, the source has
$$
\delta_\xi j_a^\mu=2\mathcal E^{\mu\nu}\Lambda_{a\nu}+\partial_\nu U_a^{[\mu\nu]},\qquad
\Lambda_{a\nu}=a^\rho\partial_\rho\xi_\nu.
$$
An improvement $\mathcal E^{\alpha\beta}\bar Q^\mu{}_{\alpha\beta}$ cancels the explicit equation term if
$$
\delta_\xi\bar Q^\mu{}_{\alpha\beta}=-2\delta^\mu_{(\alpha}\Lambda_{a\beta)}
$$
(up to trace in Weyl gravity). This is sufficient for that isolated cancellation, not necessary for full strict invariance, because the split from a superpotential is not unique.

For the Bessel–Hagen choice $\bar Q^\mu{}_{\alpha\beta}=-2\delta^\mu_{(\alpha}\Psi_{a\beta)}$, one needs $\delta\Psi_{a\nu}=a^\rho\partial_\rho\xi_\nu$. The only zeroth-order covariant possibilities are $\Psi_{a\nu}=c_1a^\rho h_{\rho\nu}+c_2a_\nu h$. Their variation requires $c_1=1$ to match $a^\rho\partial_\rho\xi_\nu$ and $c_1=0$ to remove $a^\rho\partial_\nu\xi_\rho$. Equivalently,
$$
a^\rho\partial_\rho\xi_\nu=\tfrac12\delta_\xi(a^\rho h_{\rho\nu})+a^\rho\partial_{[\rho}\xi_{\nu]},
$$
and the symmetric metric cannot supply the antisymmetric derivative.

For a general finite-order linear $\bar Q=P(\partial,a)h$, momentum homogeneity reduces the problem to zeroth order; higher-order parts must be in the kernel of the gauge map. The seven zeroth-order structures are
$$
\begin{gathered}
\delta^\mu_{(\alpha}a^\rho h_{\beta)\rho},\quad \delta^\mu_{(\alpha}a_{\beta)}h,\quad a^\mu h_{\alpha\beta},\quad
\eta_{\alpha\beta}a^\rho h^\mu{}_\rho,\\
a_{(\alpha}h_{\beta)}{}^\mu,\quad\eta_{\alpha\beta}a^\mu h,\quad
\epsilon^\mu{}_{\rho\sigma(\alpha}a^\rho h_{\beta)}{}^\sigma.
\end{gathered}
$$
Exact component systems reproduce coefficient/augmented ranks $(7,8)$, and $(5,6)$ after trace-free projection. This proves inconsistency for the supplied basis. In contrast, Maxwell has $\delta_c(a\cdot A)=a\cdot\partial c$, and compensation gives $a^\rho F_{\mu\rho}$ and the usual invariant stress tensor. The spin-2 compensator failure illustrates the result; the projection proof above is what treats all admitted representatives.

## Linear surface charges and nonlinear energy matching — III, IV, VII

The Bianchi identity allows a double-divergence representation. For Einstein gravity,
$$
G^{(1)\mu\nu}=-\partial_\alpha\partial_\beta H^{\mu\alpha\nu\beta},
\qquad
H^{\mu\alpha\nu\beta}=\tfrac12(\eta^{\mu\nu}\bar h^{\alpha\beta}-\eta^{\mu\beta}\bar h^{\alpha\nu}-\eta^{\alpha\nu}\bar h^{\mu\beta}+\eta^{\alpha\beta}\bar h^{\mu\nu}),
$$
where $\bar h_{\mu\nu}=h_{\mu\nu}-\eta_{\mu\nu}h/2$. The arbitrary-momentum component check reproduces this sign and normalization. For constant $a_\nu$,
$$
k_a^{\mu\alpha}=-2a_\nu\partial_\beta H^{\mu\alpha\nu\beta},\qquad
\partial_\alpha k_a^{\mu\alpha}=2G^{(1)\mu\nu}a_\nu.
$$
Thus $dk_a\approx0$. Nontriviality of the corresponding surface class uses the reducibility correspondence and its completeness assumptions, not the double-divergence algebra alone. The source denotes analogous higher-curvature forms by Komar/ADT/Iyer–Wald-type notation without supplying all explicit potentials.

For a variable gauge parameter, integration by parts leaves
$$
-\mathcal E^{\mu\nu}\xi_\nu=
\partial_\alpha(\partial_\beta H^{\mu\alpha\nu\beta}\xi_\nu)
-\partial_\beta H^{\mu\alpha\nu\beta}\partial_\alpha\xi_\nu.
$$
The remainder vanishes for a constant reducibility parameter but not generically. If $j_a=dk_a+W_a$ with $W_a\approx0$ in the free theory, its current class would be zero; this is incompatible with the nontrivial translation action. The linear surface form is therefore not a local superpotential for free quadratic graviton energy.

A consistent nonlinear completion supplies the missing order:
$$
\mathcal E^{(1)}[h^{(2)}]=-\mathcal E^{(2)}[h^{(1)},h^{(1)}]=:t^{(2)},\qquad
 a_\nu t^{(2)\mu\nu}=\tfrac12\partial_\alpha k_a^{\mu\alpha}[h^{(2)}].
$$
The boundary charge is evaluated on the second-order field. Identifying $t^{(2)}$ with the free Noether current further needs Noether matching, normalizations and allowed improvements. The second-order equation alone does not establish that identification.

As another example, §VII writes a proposed leading energy tensor as the identically conserved linear superpotential
$$
t^{(1)\mu}{}_\nu=\frac1{2\kappa}\partial_\rho(\delta^\rho_\nu A^\mu-\delta^\mu_\nu A^\rho),\quad
A^\mu=\partial_\rho h^{\mu\rho}-\partial^\mu h.
$$
Since $\delta A^\mu=\Box\xi^\mu-\partial^\mu\partial\cdot\xi$ and $\partial_\mu\delta A^\mu=0$, its variation is $\delta t^{(1)\mu}{}_\nu=(2\kappa)^{-1}\partial_\nu(\Box\xi^\mu-\partial^\mu\partial\cdot\xi)$, generically nonzero. This is a linear improvement sector, not a strict quadratic energy representative.

## Degenerate theories, comparison and regional translation — V–VIII

For four-dimensional Gauss–Bonnet the Euler–Lagrange operator vanishes identically. The proposed quadratic tensor in (22) equals one quarter of the Lovelock combination above and is zero. A boundary current need not vanish pointwise merely because the action is variationally trivial.

For pure flat-space $R^2$,
$$
\mathcal E_{\mu\nu}=2(\partial_\mu\partial_\nu-\eta_{\mu\nu}\Box)\phi,
\quad\phi=R^{(1)}.
$$
The trace gives $\Box\phi=0$, and the remaining equations give $\partial_\mu\partial_\nu\phi=0$: $\phi$ is affine, with no nonzero finite-momentum wave. Its formal scalar stress tensor has dimension six, and the trace equation alone would misleadingly suggest a propagating scalar. The full system is essential; $R+\alpha R^2$ and curved backgrounds need separate analysis.

| Theory/object | What can be concluded here |
|---|---|
| Maxwell, propagating free $p$-forms, Yang–Mills about trivial vacuum | Standard invariant field-strength stress tensors; internal reducibility is separate from translations. These examples are not a sufficiency theorem for every internal gauge theory. |
| Proca, massive Fierz–Pauli | Gauge obstruction absent; ordinary local Hilbert/Belinfante tensors. |
| Massless metric Fierz–Pauli, regular pure curvature-squared theory | Nontrivial translation class without an admitted strict representative; independent reducibility charge. |
| AdS, mixed-order actions, Chern–Simons, new massive gravity | Not covered by the stated homogeneous flat four-dimensional argument. |
| Bel–Robinson tensor | A rank-four conserved super-energy on the appropriate Einstein/Ricci-flat sector, not the excluded rank-two translation tensor. |
| Internal translations with a coframe or independent connection | Different fields and gauge/source definition; no automatic identification with the external translation current. |

For regional CPS, keep the codimension-one flux/current and codimension-two reducibility charge as separate objects until a boundary condition or nonlinear matching relates their integrals. Converting from the paper's $(+---)$ convention requires consistent index/sign changes; its factor of two in $\partial k=2\mathcal E a$ is fixed by the chosen $H$. Gauge invariance of a class does not select a canonical local density, and this local no-go does not prohibit a regional Hamiltonian surface functional.

## Verification record and exact boundaries

**Verified:** Mathematica matrix rank six and null vector; direct exact component reproduction of both odd tests; exact stacked divergence rank six; symbolic arbitrary-second-jet Lovelock and odd contraction identities; arbitrary-gauge-parameter curvature invariance; generic-symbol Einstein double divergence; compensator rank contradictions including the Weyl trace quotient. Sage independently decomposed the curvature symmetric square. The timelike/spacelike symbol Hessians and one constructive superpotential example also passed.

**Assumptions:** Minkowski background in four dimensions; the supplied complete candidate bases; arbitrary local jets rather than a restricted boundary-value solution set; homogeneous quadratic action; the regularity and invariant-jet/Noether correspondence inputs stated above. Exact finite rank witnesses establish finite-dimensional inconsistency/rank bounds; they are not numerical proof of unrestricted cohomology.

**Source-derived:** the general invariant-jet theorem and its application to all local invariant polynomials; converse Noether and reducibility-class correspondences; full classification of physical modes and boundary conditions; higher-curvature charge normalization beyond the displayed Einstein example; nonlinear completion matching and comparison claims.

**Failed:** no contradiction found in the reproduced core equations. **Blocked:** no remaining retrieval or computational blocker. A combined symbol check initially timed out at 30 seconds; splitting it and renaming a momentum head that collided with a summation index produced the final zero residual. The flat-metric xAct setup also emitted `MakeRule::error`; the checks used explicit flat components in an xAct/Mathematica calculation instead. Neither preliminary tool error is evidence against a source claim.

**Not verified:** a full BRST/antifield derivation or functional-analytic existence theorem for the stationary surface; all nonlinear completions; positivity of energy or global charge finiteness. The note reconstructs the source's logical proof and certifies its explicit algebra under the stated assumptions, rather than claiming a CAS proof of every cohomological input.

A reproducible component starting point is
$$
R^{(1)}_{ijkl}=\tfrac12(\partial_k\partial_jh_{il}+\partial_l\partial_ih_{jk}-\partial_l\partial_jh_{ik}-\partial_k\partial_ih_{jl}),
$$
with $R_{jl}=\sum_i\eta^{ii}R_{ijil}$ and ${}^*R_{ijkl}=\tfrac12\epsilon_{ijmn}\eta^{mm}\eta^{nn}R_{mnkl}$. Substituting A and B gives the printed odd table; generic quadratic jets check algebraic identities, while cubic jets supply the divergence-rank witnesses. Machine outputs and source artifacts remain outside the vault.
