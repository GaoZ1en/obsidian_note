# Roadmap — Causal-Type Composition and Open Subsystem Quantization

> Status: long-range research direction for the gluing project. This file replaces the short-horizon roadmap that was in `README.md` and is the reference for the phase structure of `TODO.md`. The historical audit that forced the timelike-regulator change is `archived/formalism_audit.md`. `formalism.md` remains authoritative for the timelike prescribed-history branch; the active Rindler files listed in `README.md` define the separate null-characteristic branch.

## 1. Problem Statement

The subject of this project is not "how to glue two subregions". It is:

> When the boundary data of an open subsystem changes from a prescribed classical background to a quantity determined by the dynamics, what happens to the subsystem's algebra, its states, and its entropy, and in what sense is that process invertible.

Stating it this way separates three questions. The declared sharp-cut Dirichlet--Dirichlet comparison fails to define a Fock-unitary map, while the operator-algebraic setting warns against assuming a tensor factorization for touching regions. Promoting the interface history $q(t)$ from a parameter to an operator is the central canonical step. Whether that promotion is a crossed product is a further theorem to be formulated and proved, not part of the definition.

That problem statement describes the timelike branch. The project now has three distinct causal-type operations: timelike composition uses prescribed histories and feedback; null composition uses characteristic data, direct null CPS flux and Goursat evolution; spacelike composition uses compatible regional Cauchy data and spatial reconstruction. They are not one formalism written in different coordinates.

## 2. Thesis

**Research hypothesis: under additional covariance hypotheses, promoting a prescribed boundary history to an operator-valued one can realize a crossed-product step.**

The regional theory with prescribed $q_i(t)$ is a system with a classical external parameter. After the interface equation $(\phi_1'+\phi_2')|_\Gamma=0$ is imposed, the common history is determined by the regional operator data and must be represented inside an enlarged algebra. To identify that enlargement with a crossed product, the project must exhibit a one-parameter automorphism group $\alpha_t$ of the regional algebra, implementing unitaries $U_t$, and the covariance relation $U_taU_t^{-1}=\alpha_t(a)$. Witten's *Gravity and the Crossed Product* (arXiv:2112.12828) establishes this structure for modular flow and obtains type II$_\infty$; Chandrasekaran--Longo--Penington--Witten, *An Algebra of Observables for de Sitter Space* (arXiv:2206.10780), obtains type II$_1$ after adjoining an observer in the de Sitter static patch. These are precedents for the hypothesis, not proofs for the present boundary history.

Testing this hypothesis is the spine of the long-range project. The action-first scalar construction supplies a controlled place to formulate it, but the automorphism group, algebra type, and trace must be determined model by model.

## 3. Three Structural Constraints

These are constraints, not tasks. Each one invalidates a design choice that is currently built into the formalism.

### 3.1 Interface Conditions Are Parameters; Physical Outer Conditions Fix the Benchmark

The interval prototype fixes Dirichlet conditions at the physical outer endpoints and uses prescribed Dirichlet history at the artificial cut. The outer condition selects the benchmark global operator and spectrum; it is not a research target. The artificial-cut condition is the part that should be parameterized when the formalism is extended.

Two gravity problems must be kept separate. In Euclidean signature, Anderson's *On boundary value problems for Einstein metrics* (arXiv:math/0612647) and Witten's *A Note On Boundary Conditions In Euclidean Gravity* (arXiv:1805.11559) show that unconstrained Dirichlet data are generally non-elliptic, while conformal class plus mean curvature gives an elliptic alternative. In the Lorentzian timelike initial-boundary value problem, the equations are hyperbolic: *Well-posed geometric boundary data in General Relativity, I* (arXiv:2505.07128) proves local well-posedness for Dirichlet data under a Brown--York convexity hypothesis, while Part III (arXiv:2503.12599) establishes dense range for the linearized conformal--mean-curvature problem and a Holmgren-type uniqueness theorem, not a complete general well-posedness theorem.

The distinction that matters here is:

$$\begin{align}
\text{well-defined variational principle} &\;\neq\; \text{well-posed Euclidean elliptic or Lorentzian hyperbolic problem}.
\end{align}$$

The Gibbons--Hawking--York term makes the Dirichlet variational principle legitimate but does not by itself settle either analytic problem.

**Design consequence.** Keep the physical outer Dirichlet condition fixed in the scalar benchmark. At an artificial scalar cut, the admissible trace relation may be presented as a Lagrangian subspace in $(\gamma_0,\gamma_1)$, with Dirichlet, Neumann, Robin, and mixed cases treated only when needed. Do not assume that gravitational boundary data fit this scalar trace pair without a separate gauge-fixed Lorentzian or Euclidean analysis.

### 3.2 The Categorical Home of Interface Gluing

The instinct in `stacky-cps-sandbox/` that gluing should be a fiber product over interface data is right. The category is wrong.

Bartels--Douglas--Henriques, *Conformal Nets I: Coordinate-Free Nets* (arXiv:1302.2604), formulate a net as a functor from intervals and embeddings to von Neumann algebras. For fusion along a nonzero interval, the algebraic operation is a von Neumann-algebra fusion/fiber product, written here $\mathcal A_L\circledast_{\mathcal B}\mathcal A_R$. The Connes fusion $H_L\boxtimes_{\mathcal B}H_R$ instead composes Hilbert bimodules or sectors and is associative up to canonical unitary isomorphism. *Conformal Nets III: Fusion of Defects* (arXiv:1310.8263) supplies fusion of defects under a finite-index hypothesis. These results do not automatically assign a nontrivial algebra to a point where two intervals merely touch; the project must specify a collar, overlap interval, defect, or boundary-CFT realization.

Comparison of the available categorical frameworks for this problem:

| Framework | Signature | Hilbert space | Interface and corner structure | Nonperturbative | Content for a free field |
|---|---|:--:|:--:|:--:|---|
| derived stacks, shifted symplectic | any | no | partial | classical and gauge-descent layer | 0-truncated for the present free scalar |
| factorization algebras | mainly Euclidean | no | weak | no | perturbative |
| BV--BFV | Lorentzian possible | no | codimension 1 and 2 both present | no | perturbative |
| conformal nets with Connes fusion | Lorentzian | yes | yes | yes | nontrivial and computable |

**Design consequence.** Freeze further derived reformulation of the free scalar, for which the present model is 0-truncated. Retain derived and BV--BFV tools for gauge descent, reducible stabilizers, and genuine corner data. Use the algebra fusion $\circledast$ for von Neumann algebras and Connes fusion $\boxtimes$ for sectors; neither notation is a substitute for specifying the model and interface geometry.

### 3.3 The Declared Sharp-Cut Fock Comparison Fails

Buchholz, *Product states for local algebras* (1974), and Doplicher--Longo, *Standard and split inclusions of von Neumann algebras*, give the operator-algebraic form of statistical independence: an intermediate type I factor $\mathcal M_1\subset\mathcal N\subset\mathcal M_2$. The geometric hypothesis under which this is proved is a nonzero collar, $O_1\Subset O_2$, because the nuclearity estimates control the number of degrees of freedom only at positive separation.

Adjacency does not by itself prove that every model fails to split; it removes the positive-separation hypothesis under which splitness is normally established. For the declared scalar Dirichlet--Dirichlet comparison, one fixed odd Bogoliubov row is not in $\ell^2$. That is already enough to prove that this particular continuum map is not Hilbert--Schmidt and hence not Fock-unitarily implementable.

The square-cutoff rate

$$\begin{align}
\|\beta\|_{\mathrm{HS}}^2(N) &=\frac{(\log N)^2}{2\pi^2}+O(\log N)
\end{align}$$

is strongly supported by the numerical partial sums in `deprecated/continuum_fock_diagnostic.md` and `archived/formalism_audit.md`. Deriving it from fixed-row asymptotics still requires a uniform two-index remainder estimate, so the coefficient is not yet a proved theorem of this project and is not an active canonical-gluing gate.

**Design consequence.** The non-implementability question for the declared sharp-cut comparison is finished, and the scalar canonical construction should not be redirected toward making that optional product-representation map unitary. `port-product-fock-comparison.md` retains the port-complete finite-$N$ squeezed-state construction and the analytic fixed-row obstruction as an active diagnostic. The earlier port-incomplete comparison, the square-cutoff asymptotic programme, observable smearing, smooth-interface potential, and positive-collar Gaussian branches are archived under `deprecated/`. A collar remains relevant only in a later algebraic model that explicitly asks for a split inclusion or nonzero fusion interface; it is not a regulator required by the interval scalar gluing definition.

## 4. Layered Specification

The deliverable is a layered specification with an explicit completion criterion per layer.

| Layer  | Content                                                                                                                                            | Completion criterion                                                                                                                                                 |
| ------ | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **L0** | Interface kinematics: fixed physical outer condition, admissible artificial-cut data, regularity, and the Euclidean or Lorentzian analytic problem | hypotheses and a well-posedness statement for every interface condition actually used                                                                                |
| **L1** | Classical: presymplectic reduction, flux matching, cut-position independence, associativity                                                        | the Lorentzian action/CPS correspondence, arbitrary-cut reconstruction, and finite-partition associativity proved for the bounded scalar                             |
| **L2** | Regulator: conforming variational truncation, explicit degenerating directions, and convergence in a stated topology                               | the port direction isolated and $S_N\to S$ proved on a dense core in an energy, graph, or quotient topology                                                          |
| **L3** | Algebraic: local net, split with collar, algebra fusion over $\mathcal B$, and sector fusion                                                       | $\mathcal A_L\circledast_{\mathcal B}\mathcal A_R$ or $H_L\boxtimes_{\mathcal B}H_R$ proved for a precisely specified collar, overlap, defect, or boundary-CFT model |
| **L4** | Representations and states: which states glue, type classification, interface modular theory                                                       | Araki--Yamagami or the relevant representation criterion applied in full; algebra type derived for the chosen model; collar and sharp-cut statements separated       |
| **L5** | Gauge: constraint reduction, choice of center, edge and corner algebra                                                                             | the center dependence of each proposed observable determined in a concrete gauge model                                                                               |
| **L6** | Gravity: Euclidean boundary problem or Lorentzian timelike IBVP, corner symmetry, crossed-product criterion, type II, generalized entropy          | one complete model-specific chain plus reproduction of a known benchmark                                                                                             |
| **L7** | Holography: subregion-subalgebra duality                                                                                                           | the physics payoff; not a foundation for anything above                                                                                                              |

### Scope Table

The concrete form of "complete" is this table, filled with `proved`, `counterexample`, `open`, or `n/a`, with no entry reading "expected". Current state:

| Layer | scalar | gauge | gravity |
|---|---|---|---|
| L0 | proved for the fixed outer-Dirichlet timelike scalar benchmark and the declared flat/AdS null-characteristic scalar domains; other cut conditions and a general null data theorem open | partial: exact after based Gauss reduction for the framed \(1+1\) compact Yang--Mills/Maxwell interval; a full regional gauge IBVP statement, higher-dimensional non-Abelian timelike data, and two-null-surface data remain open | Euclidean Dirichlet generally non-elliptic; Lorentzian Dirichlet conditional; conformal--mean-curvature partial/open |
| L1 | proved for the bounded massive interval scalar with prescribed cut histories and every fixed finite partition; null characteristic composition proved on the stated scalar matched/cyclic domains | partial: exact \(1+1\) compact-\(G\) reduction and Abelian \(2+1/3+1\) timelike mode sewing; the general gauge note is conditional relation-level, and null gauge composition remains open | open |
| L2 | proved for every fixed finite partition of the bounded massive interval scalar | open | open |
| L3 | open | open | open |
| L4 | partial: intrinsic smeared connected-vacuum state converges; the optional port-complete sharp regional-product map is a counterexample; AdS$_2$ fixed-label wedge restriction and smeared KMS are proved, while full modular-group convergence and type classification are open | partial only for the exact \(1+1\) compact-group Haar/Peter--Weyl Hilbert reduction; continuum field-valued interface representations and states open | open |
| L5 | n/a | open | open |
| L6 | n/a | n/a | open |
| L7 | n/a | n/a | open |

## 5. Model Ladder

Ordered by which obstruction each rung isolates, not by difficulty. The last column is what a failure at that rung would invalidate.

| # | Model | Sole new obstruction | Failure invalidates |
|---|---|---|---|
| 0 | interval scalar (done) | timelike interface, interface response, sharp-cut Fock failure | — |
| 1 | collar interval $[-L,-\epsilon]\cup[\epsilon,L]$ | geometric regulator; split inclusion under stated nuclearity hypotheses | every collar-regulated quantum conclusion |
| 2 | half line $[0,\infty)$ cut at $x=a$ | continuous regional spectrum, dissipative response $D_2=-i\sqrt{\Omega^2-m^2}$ | extending the conservative history phase space to radiating exteriors |
| 3 | chiral CFT with a specified overlap, collar, defect, or boundary condition | algebra fusion $\circledast$ and sector fusion $\boxtimes$ are separately testable; modular data may be computable | the proposed algebraic realization |
| 4 | cylinder $[-L,L]\times S^1_R$ | interface datum is a field $q(t,\theta)$; transverse locality and the second UV sum become essential | the extension from point-valued to field-valued ports |
| 5 | Chern--Simons on a cut with chosen boundary polarization | distinguish finite-dimensional global conformal blocks from the WZW/current-algebra edge sector and categorical interface data | the proposed topological/gauge realization |
| 6 | compact Yang--Mills/Maxwell, \(1+1\) then higher-dimensional Abelian/non-Abelian cavities | non-Abelian transition data, Gauss moment map versus full transmission, choice of center, field-valued boundary group | the gauge layer |
| 7 | $2+1$ scalar, cut surface with nonempty boundary | genuine corner divergences, codimension-2 data | higher-dimensional extension |
| 8 | bosonic JT gravity coupled to matter | boundary mode as an operator-valued port; crossed-product comparison; type II$_\infty$ target | the gravity layer |
| 9 | de Sitter static patch | observer crossed product, finite maximum entropy — known answer | — this rung is a benchmark |
| 10 | AdS--Rindler scalar benchmark (done in the stated domains) | exact null characteristic composition, global reconstruction and B2 wedge restriction | — |
| 11 | general null CPS (active immediate direction) | abstract characteristic data, role conversion, corners, direct null flux, moving crosses, and B1/B2 separation | Maxwell/gauge characteristic composition |
| 12 | Maxwell on two intersecting null surfaces (next stress test) | radiative data plus Gauss law, cut charges/edge data, gauge reduction and corner compatibility | the gauge-to-gravity step |
| 13 | gravity null phase space and holography | diffeomorphism constraints, corner charges, global completion and subregion duality | — |

Three reorderings relative to the previous plan deserve emphasis.

**Rung 3 precedes rung 4 in the algebraic programme.** It is a candidate model with unusually explicit modular and representation-theoretic data. Before any fusion formula is claimed, the project must choose the precise overlap/collar, defect, or boundary-CFT realization and state whether the objects being fused are algebras or sectors.

**The cylinder's value was previously stated backwards.** Reducing it to independent angular channels with effective mass $m_\ell^2=m^2+\ell^2/R^2$ discards its main new content. Its point is that the interface datum is a *field* $q(t,\theta)$ with transverse locality and a second UV sum. A fixed-background scalar has no physical $\mathrm{Diff}(S^1)$ corner gauge group merely because the interface is a circle; genuine corner symmetry belongs later in the gauge/gravity ladder.

**JT gravity is the gravitational entry point.** At a finite cutoff boundary the reparametrization of the boundary curve is the Schwarzian mode, and known crossed-product constructions adjoin a boundary Hamiltonian to the algebra. This is an instructive analogue of promoting $q(t)$ from prescribed to operator-valued, not yet an identification. For ordinary bosonic JT coupled to matter, the expected comparison algebra is type II$_\infty$; type II$_1$ requires a separate finite-trace mechanism such as the de Sitter observer construction.

**The null branch is no longer a future unresolved AdS--Rindler rung.** The flat and AdS scalar examples now supply the evidence base. The immediate obstruction is to extract their common null-CPS structure without assuming an unrestricted horizon completion, then test that structure in Maxwell variables on two intersecting null surfaces. Gravity and holography remain downstream of that gauge reduction.

## 6. Interface Type and Background

| Interface | Data type | Well-posedness | Correct tool |
|---|---|---|---|
| timelike: artificial wall, optional stretched horizon | prescribed boundary histories and oriented output flux for a hyperbolic spacetime IBVP; its spatial operator uses elliptic trace data | scalar benchmark well posed; gravity is model- and hypothesis-dependent | hyperbolic IBVP plus feedback/oriented flux matching and, where useful, the spatial operator's boundary triple or interface response |
| null: Killing horizon or intersecting characteristic surfaces | characteristic profiles/data with shared-cut compatibility; an outgoing/flux surface may become a characteristic input for the next region | flat and AdS scalar benchmarks closed on their stated domains; general/gauge theorem open | direct action/CPS null symplectic flux plus Goursat composition, including transverse reconstruction or moving-cross treatment when needed |
| spacelike: cut in a Cauchy slice | regional Cauchy data with Sobolev trace/flux compatibility; no timelike boundary history | global finite-energy data are not an unrestricted direct sum across the cut | Cauchy-data compatibility and spatial/global reconstruction; algebraic split and modular theory are separate questions |

Three conclusions.

1. Direct null composition is defined by characteristic data, corner compatibility, Goursat evolution, and the null symplectic flux. A stretched horizon is only an auxiliary timelike-regulator route when one specifically wants to reuse the timelike machinery; it is neither the definition of null gluing nor the unique correct route.
2. On a spacelike cut there is no timelike boundary history, but finite-energy regional Cauchy data must still satisfy the appropriate trace and flux compatibility before reconstructing global data. The nonfactorization of the vacuum is a separate algebraic question. Thus prescribed-history feedback, characteristic composition, and Cauchy reconstruction compose different kinds of dynamics/data.
3. Keep a finite cavity wall distinct from an asymptotic boundary. Euclidean elliptic boundary data, Lorentzian timelike IBVP data, null characteristic data, and conformal infinity are different analytic settings.

## 7. What Completeness Means

A universal quantization functor from arbitrary symplectic stacks to Hilbert spaces does not exist, as `stacky-cps-sandbox/general-framework.md` Section 9 already records. Maximal completeness is therefore not the goal. The achievable and checkable notion is:

> Given a region, an interface, a class of interface conditions, and a class of theories, the formalism returns an algebra, a state, a regulator with a proved limit, and a composition law associative up to canonical isomorphism — and states precisely which of these four fails for which class of inputs.

Completeness is the scope table of Section 4, not a global theorem. This standard is more executable than "a complete formalism", and it is the only version that cannot fail in year seven by discovering that a foundation was wrong.

## 8. Phases, Milestones, Kill Criteria

### Phase 1, Years 1--3: Scalar and Algebraic Core

- **A. Completed for every fixed finite partition of the bounded massive interval scalar.** `continuum-closure-theorem.md`, `non-central cut.md`, and `non-central cut and associativity.md` establish the centered limit, arbitrary-cut extension, and parenthesization-independent multi-port composition.
- **A-null. Scalar evidence completed; general extraction active now.** `rindler scalar.md`, `ads-rindler scalar.md`, `ads2-rindler global reconstruction.md`, and `ads2-rindler regulated partial trace.md` close the scalar null-characteristic and fixed-label state-restriction benchmarks in their stated domains. Extract the general null CPS next, including characteristic profiles, output-to-input role conversion, shared cuts, direct flux, moving-cross reconstruction, and B1/B2 separation.
- **B. Archived.** Collar-regulated Fock factorization is not a gate for intrinsic canonical gluing; revive it only for a separately specified split-property problem.
- **C.** In a precisely specified chiral-CFT collar/defect model, prove the relevant algebra fusion $\mathcal A_L\circledast_{\mathcal B}\mathcal A_R$ and, separately, the sector fusion $H_L\boxtimes_{\mathcal B}H_R$; then test whether oriented flux matching has a module-theoretic shadow.
- *Kill criterion.* If the half-line rung has no natural conservative replacement, restrict the boundary-history canonical formalism to finite cavities and use an open-system or algebraic formulation for radiating exteriors. This test is cheap and should be completed inside year one.

### Phase 2, Years 4--6: Gauge Theory and Corners

- **D-null. Maxwell is the next null stress test.** Upgrade `../../null hypersurface/finite boundary/Maxwell.md` from one finite null boundary to two intersecting characteristic surfaces. Work directly in Maxwell variables and retain radiative data, Gauss law, proper/charged cut gauge transformations, edge/charge data and corner compatibility; the (2+1) dual scalar is only a check. [[Literature Notes/arxiv/2026/08/17/The Phase Space of Gravity on Null Hypersurfaces (2608.14449v1)|2608.14449]] and [[Literature Notes/arxiv/2026/08/25/Perturbative Reconstruction of Self-Adjoint Generators from Bosonic Canonical Commutation Relations - Application to the Null-Surface Formulation (2608.21947v1)|2608.21947]] are external comparisons, not project results.
- **D.** Chern--Simons: choose a boundary polarization and determine whether the cut is represented by finite-dimensional conformal blocks, a WZW/current-algebra edge sector, a category, or a combination of these.
- **E.** Cylinder: construct a local field-valued port and control transverse locality and the double UV limit.
- **F.** In a concrete gauge model, determine which proposed observables depend on the center choice and which do not.
- *Kill criterion.* If no topology controls the cylinder's field-valued port after isolating its degenerating directions, stop the higher-dimensional port extension. This does not decide whether gauge or gravitational corner symmetries exist.

### Phase 3, Years 7--10: Gravity

- **G.** Bosonic JT coupled to matter: compare the operator-valued boundary mode with the known crossed-product construction, derive the covariance data, and recover type II$_\infty$ if the identification succeeds.
- **H.** de Sitter static patch: reproduce the known type II$_1$ result as a benchmark.
- **I.** Use the completed scalar AdS--Rindler benchmark and the intervening Maxwell/general-null-CPS results as inputs to gravity null phase space and subregion duality; do not treat the scalar reconstruction itself as unfinished.

### Output Sequence

The immediate forward sequence is: extract the general null CPS from the completed scalar examples; perform the two-intersecting-null-surfaces Maxwell/gauge stress test; then carry the reduced characteristic structure to gravity/holography. The independent timelike/algebraic programme remains: algebra and sector fusion in a specified chiral-CFT model; center choice and corners in Chern--Simons and the timelike Maxwell regulators; the JT test of the operator-valued-port/crossed-product hypothesis; and the scope table.

## 9. Where the Novelty Is

Everything else in the plan is assembly of existing theory. These three are worth the decade.

**Established Result A.** The bounded massive interval scalar has a Lorentzian timelike-interface canonical construction, a variational multi-port regulator, arbitrary-cut independence in the continuum limit, finite-partition associativity, and a proved energy-space limit. Field-valued interfaces, radiating exteriors, and gauge constraints remain open.

**Established Result A-null.** The scalar null branch closes flat and AdS matched-domain characteristic composition and, in AdS$_2$, derives the direct null CPS, global-time Hamiltonian, lowest-weight spectrum, Goursat modes, CCR/correlators, smeared wedge KMS, and finite-partial-trace to fixed-label algebraic restriction. Unrestricted horizon onto, sharp tensor factorization, Type III classification, full modular-group convergence, and entropy-coefficient theorems are not included.

**Gap B.** The conditional statement that promoting prescribed boundary data to an operator gives a crossed product once a specific automorphism group, implementing unitaries, and their covariance relation have been constructed. The gravitational literature establishes crossed products for modular flow; a corresponding result for the boundary history at a timelike interface is, as far as this project's survey shows, not established. This is the highest-value theorem target.

**Gap C.** The quantum counterpart of flux matching. Candidate answer, to be proved rather than assumed: continuity makes the two sides modules over the same interface algebra $\mathcal B$, and oriented flux matching $\pi_1=-\pi_2$ is the classical shadow of the two module structures being mutually opposite, $\mathcal B$ against $\mathcal B^{\mathrm{op}}$. Any such algebraic construction must reproduce the independent scalar canonical associator proved in `non-central cut and associativity.md`; that scalar theorem does not itself establish the module interpretation.

## 10. Infrastructure

One-time investment, decade-long return.

1. A Gaussian and covariance-matrix library, not rewritten per calculation: from $(M_N,K_N)$ produce the spectrum, $\boldsymbol\beta_N$, the vacuum overlap, the reduced covariance, symplectic eigenvalues, entropies, and the Gaussian modular Hamiltonian. `numerics/regulator_audit_checks.wl` is the current nucleus.
2. A benchmark table of known answers: $S=\tfrac{c}{6}\log$, the Bisognano--Wichmann modular Hamiltonian, Chern--Simons factorization, and the de Sitter type II$_1$ maximum-entropy result. Every new model passes the benchmarks before any new conclusion is reported.
3. The scope table as a living three-valued document, with each result permitted to change only specific entries.
4. The interface-condition parametrization of Section 3.1 fixed in notation and in code.

## 11. Not Pursued

- A universal quantization functor on arbitrary regions or stacks; known not to exist.
- Fock-unitary implementability of the declared sharp-cut Dirichlet--Dirichlet comparison; disproved for this model in this project.
- A unique derivation of edge modes; the choice of center is a choice, not a consequence.
- Nonperturbative gluing for interacting theories in four or more dimensions.
- Nonperturbative gravity.

## Verified

- The Euclidean gravity statement in Section 3.1 is the result of Anderson (arXiv:math/0612647) and Witten (arXiv:1805.11559). The Lorentzian Dirichlet and conformal--mean-curvature statements are quoted with their distinct hypotheses and claim levels from arXiv:2505.07128 and arXiv:2503.12599.
- The interval algebra-fusion and sector Connes-fusion statements of Section 3.2 are distinct constructions in Bartels--Douglas--Henriques, *Conformal Nets* I and III (arXiv:1302.2604, arXiv:1310.8263).
- The collar requirement for the split property is the standard formulation of Buchholz (1974) and Doplicher--Longo.
- Witten's modular crossed product is type II$_\infty$ (arXiv:2112.12828), ordinary bosonic JT coupled to matter likewise gives type II$_\infty$ boundary algebras (arXiv:2301.07257, arXiv:2303.04701), and the de Sitter observer algebra is type II$_1$ (arXiv:2206.10780).
- For the declared sharp-cut scalar comparison, a fixed odd Bogoliubov row is analytically not in $\ell^2$, so that map is not Fock-unitarily implementable.
- In the scalar null branch, direct action/CPS characteristic composition is proved on the stated matched/cyclic domains; the AdS$_2$ construction derives (\omega_n=\Delta+n), the global state/correlators and smeared (\beta=2\pi) wedge KMS, while the factorizing regulator converges on fixed smooth/Weyl label families to the algebraic wedge restriction.

## Assumptions

- Literature statements above hold within the hypotheses of their sources and should be cited from those sources rather than from this file.
- The scope table records the present state of this project only.
- The phase durations are planning estimates and carry no technical content.

## Not Verified

- The thesis of Section 2 as a theorem. That the promotion of a prescribed boundary history to an operator *is* a crossed product is the target of Gap B, not an established result.
- The candidate answer in Gap C. The identification of oriented flux matching with mutually opposite interface module structures is a conjecture with a stated reason, and is labelled as such.
- The uniform two-index estimate needed to prove the displayed $(\log N)^2/(2\pi^2)$ square-cutoff asymptotic; the present evidence for that coefficient is numerical.
- The general null-CPS abstraction, Maxwell two-null-surface gauge reduction, and every gravity/holography milestone; the completed scalar examples do not prove these extensions.
- Unrestricted horizon completion onto, sharp wedge tensor factorization, Type III classification, full modular-kernel/group convergence, or an entropy-coefficient theorem.
- That the JT comparison closes or that a chiral CFT admits either fusion statement in the precise realization still to be chosen.
