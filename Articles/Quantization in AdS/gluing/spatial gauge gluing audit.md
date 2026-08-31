# Spatial-Region Gauge Gluing Audit

> Status: first-pass audit for later criticism and iteration. This file does not upgrade any conditional statement in the source notes to a theorem. It audits only a spatial partition of one spacelike Cauchy slice,
>
> $$\begin{align}
> \Sigma&=\Sigma_1\cup_S\Sigma_2,
> &\Gamma&=I\times S,
> \end{align}$$
>
> where the artificial spatial interface (S) sweeps out a timelike worldtube (Gamma). Null characteristic/Goursat composition is outside the scope of every claim below.

## Executive Verdict

The existing notes have a sound **action-first sewing core** and two exact framed (1+1) gauge benchmarks. They correctly derive the variational trace and moment map from the original gauge-invariant action, distinguish regional proper gauge from boundary-frame covariance, distinguish full timelike transmission from the Cauchy-cut Gauss moment map, and handle fixed-(h) versus variable-(h) sewing charts with the correct canonical term. The compact (1+1) Maxwell and Yang--Mills reductions are genuine model-specific reductions, not merely mode-count checks.

The present higher-dimensional gauge claim is nevertheless only a **mode-level Abelian construction plus a conditional relation-level architecture**. In particular, the project has not proved that the regional temporal/Coulomb representatives form a complete and faithful slice for global Maxwell or Yang--Mills solutions after cutting. It has not proved a gauge-compatible weak patching theorem, has not restricted the restored cut group to boundary values that actually extend to bulk proper gauge transformations, and has not proved the full symplectic/observable/BRST reconstruction theorem.

The five most serious gaps are:

1. **Bulk unfixing is missing outside the exact (1+1) reductions.** There is no completeness/faithfulness theorem for

   $$\begin{align}
   \text{matched regional gauge-fixed representatives}
   \longrightarrow \operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.
   \end{align}$$

2. **The (2+1/3+1) temporal/Coulomb constructions are not regional hyperbolic IBVP theorems.** They give exact separated-mode equations and retarded formulas, but no declared function-space domain, incoming/constraint boundary split, energy estimate, or gauge-slice completeness theorem.
3. **Cutting and gauge fixing have not been shown compatible.** In particular, global Coulomb fixing is spatially nonlocal and need not equal two separately solved regional Coulomb problems with artificial-boundary conditions.
4. **The restored cut group is currently too large at the general level.** It must be the restriction image of global proper gauge, not an unqualified (operatorname{Map}(S,G)) or (operatorname{Map}(\Gamma,G)).
5. **Weak patching and CPS reconstruction are conditional.** The source notes do not prove, for arbitrary matched time-dependent regional data, the absence of distributional curvature/current/gauge-condition defects or the pullback identity for the original CPS two-form.

## Evidence and Claim Labels

The primary evidence is the live working-tree version of:

- `gluing formalism.md`, especially Part I, “Variational Polarization Versus Admissible Dynamical Polarization,” “Global Reconstruction and Symplectomorphism,” and “Where Flux Matching Enters the Equal-Time Theory”;
- `formalism.md`;
- `gauge-covariant sewing and reduction.md`;
- the three Maxwell notes and `Yang-Mills 1+1.md`;
- `README.md`, `TODO.md`, `roadmap.md`, and the active regression scripts.

The labels in this audit mean:

| Label | Meaning |
|---|---|
| `proved` | A proof is present for the displayed hypotheses and object, not merely a numerical witness. |
| `conditionally supported` | A correct theorem schema or formal derivation is present, but one or more stated analytic/geometric hypotheses remain inputs. |
| `model-specific` | Proved or explicitly checked only in the named model/sector; it is not evidence for the general theorem without another argument. |
| `missing` | The required definition, theorem, or two-way implication is absent. |
| `false` | The proposed general statement is contradicted by the present structure or requires a narrower replacement. |

The executed regressions passed all eight finite (SU(2)) Yang--Mills witnesses and all twenty Maxwell symbolic checks. Those checks cover transition and one-form identities, finite representation projectors, Maxwell divergence/curl--curl equations, gluing determinants, lifting coefficients, normalizations, finite-matrix positivity, and the (1+1) Hamiltonian. They do not test an IBVP, Sobolev reconstruction, gauge-slice completeness, quotient smoothness, or a continuum observable algebra.

## Conventions Fixed by the Source Notes

The gauge convention is

$$\begin{align}
A^g&=g^{-1}Ag+g^{-1}\mathrm dg,
&F^g&=g^{-1}Fg.
\end{align}$$

The transition convention is

$$\begin{align}
\boxed{a_2=a_1^h=h^{-1}a_1h+h^{-1}\mathrm d_\Gamma h},
&h&\longmapsto k_1^{-1}hk_2.
\end{align}$$

For fixed (h), linearized descent gives

$$\begin{align}
\delta a_2=\operatorname{Ad}_{h^{-1}}\delta a_1,
\end{align}$$

and the original action gives the outward-oriented transmission equation

$$\begin{align}
\boxed{\Pi_1+\operatorname{Ad}_h^*\Pi_2=0}.
\end{align}$$

The Cauchy-cut boundary-frame moment map is instead

$$\begin{align}
\boxed{\mu_S=E_1^\perp+\operatorname{Ad}_h^*E_2^\perp}.
\end{align}$$

For Maxwell in the (y_i)-coordinates that both increase toward the cut,

$$\begin{align}
\left.\delta S_i\right|_\Gamma
=-\frac1{e^2}\int_\Gamma
\left(E_{y,i}\delta\alpha_i+F_{ya,i}\delta q_i^a\right),
\end{align}$$

with (F_{ys}=B) in (2+1). Thus the source notes' equations

$$\begin{align}
E_{y,1}+E_{y,2}&=0,
&F_{ya,1}+F_{ya,2}&=0
\end{align}$$

are the Abelian component form of the same coadjoint transmission convention. No sign change is introduced in this audit.

## A. Original Gauge-Invariant Action/CPS Versus Gauge-Fixed PDE Evolution

**Verdict: `model-specific` for the examples; `conditionally supported` at the general relation level.**

Evidence:

- `Maxwell 1+1.md`, “Regional Action and CPS,” explicitly varies

  $$\begin{align}
  S_i=\frac12\int E_i^2
  \end{align}$$

  before solving Gauss law or choosing a representative, and reads off

  $$\begin{align}
  \Theta_i&=\int E_i\delta A_{y,i},
  &\Omega_i&=\int\delta E_i\wedge\delta A_{y,i}.
  \end{align}$$

- `Yang-Mills 1+1.md`, “Action First,” varies the original second/first-order Yang--Mills action before the based quotient and derives

  $$\begin{align}
  \Theta_i=\int\langle\mathcal E_i,\delta A_{y,i}\rangle.
  \end{align}$$

- `Maxwell 2+1 cylinder.md` and `Maxwell 3+1 slab.md` first derive the complete interface variation, then state “After deriving/obtaining the variational equations, use a gauge transformation to set (A_t=0)” and impose Coulomb gauge.
- `gauge-covariant sewing and reduction.md` defines (Pi_i), transition sewing, and the moment map from the complete original action and declares the IBVP and constraint propagation to be separate inputs.

No active note adds a Lorenz/Coulomb gauge-fixing term to the action and then identifies its extra symplectic contribution with physical CPS. That specific error is absent.

The remaining gap is not the order of presentation; it is proof that pulling the original pre-symplectic form to the chosen higher-dimensional gauge slice, then quotienting its residual kernel, gives the complete physical CPS. The oscillator normalizations in the Maxwell notes support this in the separated sectors but do not prove it for the full regional solution space.

## B. Regional Gauge Fixing and IBVP Well-Posedness

**Verdict: `conditionally supported` in the general notes; `model-specific` mode solvability in Maxwell (2+1/3+1); a general hyperbolic IBVP theorem is `missing`.**

The general notes are careful. `gluing formalism.md` states that a variational polarization is not automatically an admissible dynamical polarization, and that causal response requires constraint propagation, incoming-characteristic admissibility, energy estimates, causality, and corner compatibility. `gauge-covariant sewing and reduction.md` likewise says that the trace pair does not prove every component of (a_i) can be freely prescribed. Thus the general notes do **not** establish an ordinary well-posed raw-potential IBVP.

The Maxwell realizations use:

$$\begin{align}
A_t&=0,
&\partial_yA_y+\partial_aA^a&=0,
\end{align}$$

followed by Fourier decomposition and solution of Gauss law. Coulomb gauge is spatially elliptic/nonlocal; it is not itself a local hyperbolic reduction. The reduced master fields obey wave/Klein--Gordon equations, which is enough for the displayed separated-mode calculation, but the notes do not specify the full Sobolev compatibility domain or prove an energy estimate for the original constrained boundary system.

The prescribed and derived components are also not yet separated at the required generality:

| Model/sector | Fixed variational trace used in the note | Reduced master-field boundary datum | What remains unproved |
|---|---|---|---|
| Maxwell (2+1), (ell\neq0) | ((\alpha_i,q_i)=(A_t,A_s)|_\Gamma) | (-\partial_yv_{i,\ell}(L)=q_{i,\ell}) | which combinations of ((\alpha,q)) are independent constraint-preserving incoming data after temporal gauge |
| Maxwell (2+1), (ell=0) | (q_{i,0}) plus (alpha_i) for the compact normal mode | Dirichlet (w_i(L)=q_{i,0}); compact zero-mode source (alpha_i) | joint initial/boundary compatibility and energy-space trace theorem |
| Maxwell (3+1), transverse | (q_{i,T}) | Dirichlet (w_i(L)=q_{i,T}) | full constrained incoming/output split |
| Maxwell (3+1), longitudinal-normal | (q_{i,L}) | Neumann-type (-\partial_yv_i(L)=q_{i,L}) | full constrained incoming/output split |
| Maxwell (3+1), (p=0) | two tangential (q_{i,a}) and compact (alpha_i) | two Dirichlet waves plus compact zero mode | joint domain and residual gauge classification |

The correct audit statement is therefore: the Maxwell notes exhibit dynamically solvable **representatives and channels**, not a general proof that the entire affine connection pullback is freely prescribable boundary input.

## C. Does Cutting Commute with Gauge Fixing?

**Verdict: `missing`; the unrestricted commutation claim is `false`.**

No existing note proves

$$\begin{align}
\operatorname{Res}\circ\operatorname{Fix}_{\chi_M}
=
(\operatorname{Fix}_{\chi_1}\times\operatorname{Fix}_{\chi_2})\circ\operatorname{Res}.
\end{align}$$

For Coulomb gauge, the global fixing parameter solves a spatial elliptic problem on all of (Sigma), whereas separate regional fixing parameters solve two elliptic problems with extra artificial-boundary conditions. Their difference is generally a nonzero harmonic gauge transformation controlled by data at (S). Therefore the two representatives need not agree even when they lie on the same global gauge orbit.

The reconstructed Maxwell normal modes are divergence-free on the connected cylinder/slab and their restrictions have the displayed regional master-field form. This is a `model-specific` compatibility check on the explicit separated basis. It is not a gauge-fixing compatibility theorem for arbitrary Cauchy data or boundary histories.

## D. The Two Roles of (h)

**Verdict: bundle/connection descent is `proved` at the formal algebraic level; gauge-slice matching is `missing`.**

The first role is handled correctly:

$$\begin{align}
a_2=a_1^h,
\qquad
\Pi_1+\operatorname{Ad}_h^*\Pi_2=0.
\end{align}$$

The fixed-(h) twisted diagonal and variable-(h) product-frame presentations are also kept distinct. For variable (h), the required Cauchy-corner term

$$\begin{align}
\Theta_{S,\mathrm{ext}}
=\Theta_{S,1}+\Theta_{S,2}
-\langle E_2^\perp,h^{-1}\delta h\rangle_S
\end{align}$$

is present in `gauge-covariant sewing and reduction.md` and is derived explicitly in the (1+1) Yang--Mills benchmark.

The second role has not been formulated: one needs a collar extension (widetilde h) and a statement that the two gauge-fixed representatives, possibly after residual regional transformations, are compatible gauge slices of one connection in an overlapping collar. A trivializable collar gives local bundle coordinates and permits a local extension of (h); it does not by itself prove compatibility of (chi_1) and (chi_2), nor that the extension preserves the regional boundary operators.

In (1+1), the absence of local propagating connection components makes this issue collapse to the exact holonomy description. That is a model-specific simplification, not evidence that (widetilde h) is unnecessary in higher dimensions.

## E. Equal-Time Assembly Versus Timelike Transmission

**Verdict: the conceptual distinction is `proved` in the general gauge note; its full higher-dimensional PDE realization is `missing`.**

Four operations must be separated:

| Operation | Geometric support | Gauge content | Status in existing examples |
|---|---|---|---|
| Cauchy-data compatibility/spatial assembly | (S\subset\Sigma) | connection descent of spatial trace plus distributional Gauss compatibility | exact after (1+1) holonomy reduction; implicit in higher-dimensional mode reconstruction, without a Sobolev theorem |
| full timelike transmission | (Gamma=I\times S) | all components of (Pi_1+\operatorname{Ad}_h^*\Pi_2=0) | derived from the original action; mode-realized in Maxwell (2+1/3+1) |
| Cauchy-cut Gauss moment map | (S\subset\Sigma) | (E_1^\perp+\operatorname{Ad}_h^*E_2^\perp=0) | exact in (1+1); explicitly distinguished in higher-dimensional Maxwell |
| gauge reduction | Cauchy phase space | quotient by extendable global proper gauge/residual slice action | exact finite-dimensional (1+1); only conditional/general in higher dimensions |

In (1+1), there is no independent tangential spatial connection component on the point (S). The full worldtube momentum is the normal electric datum, so timelike transmission and the Gauss moment map coincide. In Maxwell (2+1), full transmission is

$$\begin{align}
E_{y,1}+E_{y,2}&=0,
&B_1+B_2&=0,
\end{align}$$

whereas the moment map contains only the first equation. In Maxwell (3+1), the second equation is the two-component condition

$$\begin{align}
F_{ya,1}+F_{ya,2}=0.
\end{align}$$

Thus the higher-dimensional notes correctly refute “moment-map reduction alone reconstructs the field.”

## F. Regional Proper Gauge, Boundary Frames, and Restored Global Proper Gauge

**Verdict: `proved` in the (1+1) models and algebraically correct at the conditional relation level; the general restored group is overidentified.**

The source notes correctly distinguish:

$$\begin{align}
\mathcal G_i^0
&=\{g_i:g_i|_{\partial_{\mathrm{phys}}M_i}=1, g_i|_\Gamma=1\},\\
\text{boundary-frame changes}&:\quad g_i|_\Gamma=k_i\neq1,\\
\text{fixed-}h\text{ chart stabilizer}&:\quad k_2=h^{-1}k_1h.
\end{align}$$

They also preserve physical outer/asymptotic frames and do not quotient transformations that are declared physical large symmetries. Based large components that are identity at the physical boundary can still be proper gauge; `Maxwell 1+1.md` and `Yang-Mills 1+1.md` handle this explicitly.

The defect is that the general note writes the boundary-frame group as all of (operatorname{Map}(\Gamma,G)) and later uses its full twisted diagonal. Only the subgroup realized by bulk proper transformations should be restored as global proper gauge. Nonextendable frame changes can label bundle/framing sectors or genuine boundary transformations; quotienting them would overreduce.

## G. Restoring the Complete Global Gauge Redundancy

**Verdict: `model-specific` in framed (1+1); `missing` in the higher-dimensional/general gauge-fixed formalism.**

The missing step is

$$\begin{align}
\text{regional gauge-fixed representatives}
\longrightarrow
\text{matched locus}
\longrightarrow
\operatorname{Asm}_h
\longrightarrow
\mathcal G_M^{\mathrm{prop}}\cdot\operatorname{Asm}_h(\mathcal C_h^\chi).
\end{align}$$

This saturation reconstructs gauge copies; it is not the physical quotient.

`gauge-covariant sewing and reduction.md` begins from regional data already quotiented by (mathcal G_i^0) and gives a conditional formula (mathcal P_M\simeq\mathcal C_{G,h}/\mathcal G_{\Gamma,h}). Its hypotheses include reconstruction and a regular quotient. It therefore does not separately prove any of:

$$\begin{align}
\mathcal G_M^{\mathrm{prop}}\cdot\operatorname{Asm}_h(\mathcal C_h^\chi)
&=\operatorname{Sol}(M),\\
\operatorname{Asm}_h(u)\sim_{\mathcal G_M^{\mathrm{prop}}}\operatorname{Asm}_h(u')
&\Longleftrightarrow u\sim_{\mathcal G_{\mathrm{res},h}^\chi}u',\\
\mathcal C_h^\chi/\mathcal G_{\mathrm{res},h}^\chi
&\simeq\operatorname{Sol}(M)/\mathcal G_M^{\mathrm{prop}}.
\end{align}$$

The (1+1) exceptions are genuine. `Maxwell 1+1.md` proves every connected solution is based-gauge-equivalent to the constant representative (A_x=a/(2L)), with the large based identification (a\sim a+2\pi w). `Yang-Mills 1+1.md` proves the based regional reduction to (T^*G), the global diagonal reduction to the connected holonomy (V=U_2^{-1}U_1), and agreement with direct uncut reduction. These are completeness/faithfulness results in their framed trivial-bundle sectors.

No analogous result is present for Maxwell (2+1/3+1). “Complete connected mode basis” proves a spectral statement inside the displayed Coulomb representative; it does not by itself classify every intersection of a global gauge orbit with the glued regional slice.

## H. Extension of the Restored Cut Gauge Group

**Verdict: `missing` in the general note; the use of all (operatorname{Map}(S,G)) is `false` without an extension hypothesis.**

At equal time the correct group is

$$\begin{align}
\boxed{
\mathcal G_{S,h}^{\mathrm{ext}}
:=\operatorname{Im}\!\left[
\mathcal G_\Sigma^{\mathrm{prop}}
\xrightarrow{\operatorname{res}_{S,h}}
\mathcal G_{S,1}\times\mathcal G_{S,2}
\right].}
\end{align}$$

Its elements automatically obey (k_2=h^{-1}k_1h) in a fixed-(h) chart. The time-slab analogue uses restrictions to (Gamma) and must preserve the chosen temporal endpoint/regularity conditions.

The framed (1+1) examples evade the obstruction because (S) is a point. For connected (G), every (k\in G) is connected to the identity by a path along the interval, so it extends to a regional bulk transformation that is identity at the physical endpoint.

The higher-dimensional Maxwell geometries already show why the general replacement is necessary:

- on (Sigma_i=[0,L]\times S^1), a boundary value (k:S^1\to U(1)) extends to a map equal to (1) at the physical wall only if (k) is null-homotopic, equivalently has zero winding;
- on (Sigma_i=[0,L]\times T^2), the two (H^1(T^2;\mathbb Z)\simeq\mathbb Z^2) winding classes must vanish for such a relative extension.

Thus the full mapping group includes nonextendable components even in the present Abelian testbeds. Regularity, bundle sector, physical-boundary conditions, and allowed large components can narrow the image further.

## I. Weak Patching and Distributional Surface Sources

**Verdict: `conditionally supported` as a theorem schema in `gluing formalism.md`; `model-specific` for displayed smooth modes; the gauge theorem is `missing`.**

For a piecewise connection, four defects must be checked separately:

| Potential defect | Required control |
|---|---|
| delta-supported curvature from a jump in tangential connection | connection descent (a_2=a_1^h) in a collar/traces strong enough to define the patched connection |
| surface electric/current source in (D_A{*F}) | full coadjoint transmission (Pi_1+\operatorname{Ad}_h^*\Pi_2=0) |
| magnetic/Bianchi defect | genuine connection descent plus regional (D_AF=0), not merely selected curvature-component matching |
| delta-supported defect in the gauge condition | compatibility of the normal/gauge-fixing traces and of the collar extension (widetilde h) |

`gluing formalism.md` proves reconstruction only under the hypothesis that the Green defect is exactly the deviation from the full sewing relation and that a transmission regularity theorem upgrades the weak solution. The gauge note repeats this as an assumption.

For each displayed Maxwell separated mode, the assembled master function and its normal derivative are continuous; the resulting connected vector mode is smooth, divergence-free, and solves curl--curl. This is a valid model-specific no-defect check. It does not prove the time-domain equivalence

$$\begin{align}
\text{descent+full transmission+gauge compatibility}
\Longleftrightarrow
\text{no distributional interface source}
\end{align}$$

for arbitrary matched regional histories.

## J. Restriction Completeness and Reconstruction Completeness

**Verdict: `missing` outside (1+1); explicitly conditional in the general notes.**

Two maps require separate proofs:

1. every global solution, after an allowed gauge choice, restricts to data in each regional compatibility domain;
2. every matched pair in those domains assembles to a global weak solution and then to the declared regularity class.

Regional IBVP well-posedness proves neither implication. `gluing formalism.md` states both as reconstruction hypotheses; `gauge-covariant sewing and reduction.md` imports them. The Maxwell Fourier bases strongly suggest the result in the smooth flat cavity, but the notes do not formulate the two maps on a common Sobolev/energy domain and do not prove their surjectivity/injectivity.

## K. Stabilizers, Reducible Strata, and Gribov-Type Issues

**Verdict: `proved` free action in the (1+1) framed benchmarks; `conditionally supported` regular-stratum language; general control is `missing`.**

The (1+1) Yang--Mills diagonal action is free because

$$\begin{align}
(U_1,U_2)\longmapsto(k^{-1}U_1,k^{-1}U_2)
\end{align}$$

fixes a pair only when (k=1). Every orbit has the unique representative (U_2=1). The (U(1)) translation action on the two compact holonomies is likewise free. Fixed physical endpoint frames eliminate the residual conjugation stabilizers that would arise in an unframed theory.

The general gauge note correctly makes smoothness conditional on a regular moment-map value and a controlled quotient. It does not prove freeness or exclude reducible connections. The Maxwell Coulomb representatives also do not contain a global classification of harmonic residual gauge or multiple slice intersections. A first general theorem should therefore be restricted to a regular/irreducible stratum or a perturbative neighborhood with an explicitly invertible Faddeev--Popov/gauge-slice operator.

## L. CPS and Symplectic Compatibility

**Verdict: `proved` in (1+1); `conditionally supported` formally; `missing` as a higher-dimensional gauge theorem.**

The desired identity is

$$\begin{align}
\operatorname{Asm}_h^*\Omega_M
=\left.(\Omega_1+\Omega_2+\Omega_{\mathrm{corner}})\right|_{\mathcal C_h^\chi}.
\end{align}$$

The (1+1) evidence is exact:

- Maxwell reduces

  $$\begin{align}
  (\Omega_1+\Omega_2)|_{E_1+E_2=0}
  =\delta E\wedge\delta(a_1-a_2),
  \end{align}$$

  and reproduces the connected action and Hamiltonian.
- Yang--Mills proves

  $$\begin{align}
  (\Theta_1+\Theta_2)|_{\mu=0}
  =\langle J,V^{-1}\delta V\rangle
  \end{align}$$

  and the exact connected Hamiltonian.

At the formal level, full transmission cancels the two timelike symplectic fluxes, and the variable-(h) chart includes the required corner term. But the Maxwell (2+1/3+1) notes do not write or prove the full assembly pullback, do not identify every restored global proper gauge direction as the kernel of the glued two-form, and do not prove gauge-fixing independence. Mode normalization and CCR recovery support the chosen physical modes but are not equivalent to the full CPS theorem.

## M. Observable Algebra, Center, and Dressing

**Verdict: `model-specific` partial reconstruction in (1+1); a continuum algebra theorem is `missing`.**

The (1+1) notes reconstruct important crossing observables:

$$\begin{align}
a_{\mathrm{inv}}&=a_1-a_2+\varphi
&&\text{(Maxwell)},\\
V_h&=U_2^{-1}h^{-1}U_1
&&\text{(Yang--Mills)}.
\end{align}$$

The compact Yang--Mills Hilbert reduction

$$\begin{align}
(L^2(G)\otimes L^2(G))^{G_\Delta}\simeq L^2(G)
\end{align}$$

is exact, but it does not distinguish a framed regional algebra, its invariant subalgebra, an extended/dressed algebra, and the center chosen at the cut. It also does not prove how a field-valued electric-flux center is removed or retained in continuum gluing.

The higher-dimensional notes do not construct crossing Wilson lines, dressed charged fields, or a local algebra. Therefore

$$\begin{align}
\mathcal H_{\mathrm{phys}}=(\mathcal H_1\otimes\mathcal H_2)^G
\end{align}$$

is only a finite compact-group benchmark and cannot replace a continuum algebra statement or justify a sharp Hilbert tensor factorization.

## N. Quantum/BRST--BV Layer

**Verdict: `missing`.**

The active gauge notes do not construct regional ghost boundary data, a gauge-fixed BRST differential, a BV--BFV boundary complex, anomaly cancellation, or a gluing quasi-isomorphism. `gauge-covariant sewing and reduction.md` correctly lists BRST/BV as one possible continuum route and declines to claim a theorem.

For continuum gauge-fixed QFT, “restore gauge redundancy” should ultimately mean that regional gauge-fixed complexes and their boundary/transition data compose to a global complex whose cohomology is the physical global theory. Artificially adding classical gauge copies is a useful classical saturation operation, not a quantum BRST theorem.

## O. Associativity, Transition Cocycles, and Corners

**Verdict: `proved` for the (1+1) chain; general higher-dimensional associativity/corners are `missing`.**

`Yang-Mills 1+1.md` proves both the classical cotangent reduction and the normalized-Haar reduction by stages for three cells:

$$\begin{align}
[(W_r,J_r)]\longmapsto(W_3W_2W_1,J_1).
\end{align}$$

It proves equality of the reduced canonical one-form, not just associativity of group multiplication. This is an exact benchmark.

It is not a triple-junction theorem. The spatial chain has distinct point interfaces and no codimension-two locus at which three regional faces meet. Higher-dimensional gluing requires joint trace spaces, corner/JKM completion, clean relation composition, compatible stabilizers, and reduction-by-stages hypotheses at every intermediate union.

With the source convention ((A^g)^h=A^{gh}), transition data on a triple overlap obey

$$\begin{align}
h_{ik}&=h_{ij}h_{jk},
&\boxed{h_{ij}h_{jk}h_{ki}=1}.
\end{align}$$

No active higher-dimensional note checks this cocycle together with corner canonical terms and gauge-slice compatibility.

## Claim Ledger

| Item | Status | Decisive evidence | Exact boundary of the claim |
|---|---|---|---|
| A | `model-specific`; general `conditionally supported` | original Maxwell/YM variations precede gauge fixing | no higher-dimensional proof that the chosen slice pulls back to the complete physical CPS |
| B | general `conditionally supported`; higher-dimensional IBVP `missing` | admissible-polarization warnings; exact master equations | no function-space incoming/constraint split or energy estimate for raw connection variables |
| C | `missing`; naive commutation `false` | Coulomb fixing is a global elliptic problem | explicit modes are not a commuting-cut theorem |
| D | descent `proved`; collar slice matching `missing` | (a_2=a_1^h), coadjoint flux, variable-(h) corner term | no (widetilde h)-compatible gauge-slice theorem |
| E | distinction `proved`; PDE realization partial | Maxwell (2+1/3+1) have extra tangential transmission | Cauchy assembly, full transmission, moment map, quotient remain separate |
| F | (1+1) `proved`; general group overidentified | three gauge roles and twisted diagonal | use only extendable global proper boundary values |
| G | (1+1) `model-specific`; higher-dimensional `missing` | direct uncut reductions in Maxwell/YM (1+1) | no completeness/faithfulness/slice-equivalence theorem in (2+1/3+1) |
| H | `missing`; all-(operatorname{Map}) claim `false` | relative winding obstruction on (S^1,T^2) | define the restriction image (mathcal G_{S,h}^{\mathrm{ext}}) |
| I | formal `conditionally supported`; smooth modes `model-specific` | general Green-identity hypothesis and mode smoothness | no arbitrary-history distributional patching theorem |
| J | (1+1) `model-specific`; general `missing` | exact holonomy classification versus conditional reconstruction | regional well-posedness is not either completeness direction |
| K | (1+1) free action `proved`; general `missing` | unique (U_2=1) representative | restrict first theorem to regular/irreducible/perturbative sector |
| L | (1+1) `proved`; higher-dimensional `missing` | exact reduced one-forms/Hamiltonians | mode CCR do not prove the full CPS pullback and gauge kernel |
| M | (1+1) `model-specific`; general `missing` | (a_{\rm inv}), (V_h), Haar/Peter--Weyl | no center/dressing/local-algebra theorem or continuum factorization |
| N | `missing` | only an outlook sentence exists | no regional/global BRST--BV complex theorem |
| O | chain benchmark `proved`; corners `missing` | three-cell cotangent and Haar reduction by stages | no true triple junction/codimension-two theorem |

## General Statements Actually Supported by the Existing Examples

The examples support the following restrained general lessons:

1. The sewing relation and boundary moment map must be derived from the original gauge-invariant action/CPS before selecting a PDE gauge representative.
2. Regional proper gauge, cut boundary-frame covariance, and restored global proper gauge are different actions.
3. A fixed transition function gives a twisted-diagonal chart stabilizer; a variable transition function requires the product-frame presentation and its canonical/corner term.
4. Full timelike connection transmission contains more information than the Cauchy-cut Gauss moment map once the spatial cut has positive dimension.
5. In framed (1+1) compact gauge theory, action reduction, compact group averaging, crossing holonomy reconstruction, and reduction by stages can all be exact.
6. Abelian Fourier-mode sewing can recover the complete connected mode spectrum under the displayed flat-wall conditions.
7. Finite symbolic or representation regressions are useful sign/normalization witnesses but do not replace analytic reconstruction.

## Statements Not Implied by the Existing Examples

The following statements cannot presently be made:

- every admissible regional gauge fixing commutes with restriction and gluing;
- every (operatorname{Map}(S,G)) boundary transformation is restored global proper gauge;
- the Maxwell (2+1/3+1) mode bases prove a two-way correspondence between all global solutions and all matched regional gauge-fixed solutions in an energy/Sobolev class;
- full transmission plus descent automatically eliminates the distributional defect of an independently chosen gauge condition;
- the higher-dimensional glued two-form is already proved equal to the original global CPS form;
- (1+1) Haar reduction proves continuum field-valued group averaging, a local observable-algebra theorem, or Hilbert tensor factorization;
- the three-cell interval proves a higher-dimensional corner/triple-junction theorem;
- classical saturation by gauge copies proves a BRST/BV gluing result.

## Minimal Kill Tests

The existing Maxwell (2+1/3+1) notes are **suitable testbeds but do not yet pass the first kill test**. The most economical order is:

### Kill Test 1: Maxwell (2+1) Global Slice Versus Regional Slices

Work in one declared smooth or Sobolev class on the framed trivial-bundle cylinder. Prove all four statements:

1. **Global-to-regional completeness.** Put an arbitrary global solution into a declared temporal/Coulomb slice using a global proper transformation, restrict it, and show the restrictions lie in the regional admissible domains after accounting for their nontrivial interface frames.
2. **Regional-to-global weak patching.** Starting from arbitrary matched regional reduced solutions, show connection descent and both equations

   $$\begin{align}
   E_{y,1}+E_{y,2}=0,
   \qquad
   B_1+B_2=0
   \end{align}$$

   remove every distributional Maxwell source; add the exact condition that removes a delta defect in Coulomb gauge.
3. **Faithfulness.** Prove that two matched regional Coulomb representatives assemble to the same global proper orbit exactly when related by the declared residual/extendable group.
4. **CPS pullback.** Compute the original Maxwell two-form on both sides and prove the assembly identity, including any (h)-corner contribution.

This test should explicitly compare the global Poisson problem used for Coulomb fixing with the two regional Poisson problems. Their difference is the harmonic extension of the interface frame. That calculation directly tests the missing (widetilde h) layer rather than hiding it in mode notation.

### Kill Test 2: Extension Image on the Cylinder and Slab

Compute the restriction image with fixed physical walls. For (U(1)), the expected equal-time result is the null-homotopic component of (operatorname{Map}(S,U(1))): zero winding on (S^1), and zero pair of windings on (T^2). Then verify how the result changes if the bundle/framing sector or outer-boundary policy changes.

### Kill Test 3: Maxwell (3+1) Polarization Completeness

Repeat Kill Test 1 with both transverse and longitudinal-normal sectors and the two compact/toroidal zero modes. This is the first test that the regional boundary operator, constraint propagation, full two-component (F_{ya}) transmission, and residual gauge classification are complete simultaneously.

### Kill Condition

If either direction of the two-way map fails, the correct output is not to redefine the target topology to force onto. The claim must be downgraded to the verified separated-mode relation, and the general formalism must retain completeness/faithfulness as explicit hypotheses.

## Verification Boundary of This Audit

**Verified:** source conventions and displayed algebraic identities were cross-checked against the active notes; `numerics/yang_mills_1p1_checks.py` passed all eight finite checks; `numerics/maxwell_quantize_first_gluing_checks.wl` passed all twenty symbolic checks; the relative extension obstruction follows from the homotopy between the interface restriction and the fixed identity map on the physical wall.

**Assumptions:** the live working-tree versions of the source notes are the intended objects of audit; all model statements retain their stated flat backgrounds, fixed outer frames, compact gauge group, trivial/declared bundle sector, and absence of charged matter.

**Not verified:** a regional or global gauge IBVP theorem, the Maxwell regulator continuum limit, the proposed two-way kill tests, a general weak patching theorem, a smooth continuum quotient, a continuum gauge observable algebra, or BRST/BV gluing.
