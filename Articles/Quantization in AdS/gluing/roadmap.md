# Roadmap — Regional Quantum Operator Algebra and Gauge-Covariant Composition

> Status: long-range research direction for the gluing project. This file replaces the short-horizon roadmap that was in `README.md` and is the reference for the phase structure of `TODO.md`. The historical audit that forced the timelike-regulator change is `archived/formalism_audit.md`. `formalism.md` remains authoritative for the timelike prescribed-history branch; the active Rindler files listed in `README.md` define the separate null-characteristic branch.

## 1. Problem Statement

The subject of this project is:

> What quantum operator structure is assigned to a region with an artificial cut, what interface symmetry, charge-sector and dynamical response data does it carry, and how do regional structures compose into the global observable algebra and, with additional input, its states?

This question has three noninterchangeable layers:

$$
\boxed{\text{classical solution sewing}\neq\text{quantum algebra sewing}\neq\text{state sewing or restriction}.}
$$

The completed scalar history/response work shows why the regional object may need more than an abstract algebra: bare Weyl multiplication does not determine Green, response or transport data. Gauge theory adds a second necessity. If one takes invariants under the active cut group too early, open Wilson endpoints and their interface representation indices disappear before they can be paired into crossing observables. The initial gauge object must therefore distinguish a framed/cut-charged algebra, its fully cut-invariant subalgebra, and an extended frame/transition presentation.

Timelike, null and spacelike cuts retain different geometric data and evolution problems. Timelike composition uses prescribed histories and feedback; null composition uses characteristic data, direct null CPS flux and Goursat evolution; spacelike composition uses compatible regional Cauchy data and spatial reconstruction. These causal distinctions remain inputs to the regional structure, but general null CPS is no longer a dependency of the main algebraic programme.

## 2. Thesis

**Research thesis:** define a response-enriched regional quantum operator structure and a gauge-covariant sewing operation that recovers the global observable algebra from regional data, then determine separately what additional data sew states and representations.

For gauge theory, the immediate theorem target begins with the framed/cut-charged regional algebra: based regional proper gauge has already been reduced, while the active cut symmetry and its endpoint charge sectors remain visible. Sewing must pair compatible cut charges, impose the action-derived Gauss/moment-map and transmission relations, reproduce crossing Wilson operators, and recover the global holonomy--electric-flux algebra. The fully cut-invariant algebra and an extended frame/transition presentation are derived or related objects, not interchangeable definitions.

A crossed product may realize an enlargement in a model with an exhibited automorphism group, implementing unitaries and covariance relation. Balanced or relative tensor products and Connes fusion may realize other algebra/sector compositions. These are model-dependent theorem candidates, not the thesis spine and not substitutes for constructing the sewing map and its kernel, image and associator.

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

| Layer | Content | Completion criterion |
|---|---|---|
| **L0** | Classical regional data and solution sewing: interface geometry, regularity, action/CPS relation, constraints and reconstruction | restriction and assembly are inverse at the declared solution/orbit level, with transmission and associativity proved in scope |
| **L1** | Regional operator algebra and interface sectors: framed/cut-charged algebra, cut action, fully invariant subalgebra, extended presentation, response/Peierls/transport data | generators, relations, domains and the three algebraic levels are explicit; center and charge-sector dependence is tested |
| **L2** | Quantum algebra sewing: diagonal action/reduction, sewing ideal and map to the global algebra | the map's kernel and image are determined; crossing Wilson generators and holonomy--flux commutators are recovered; two/three-cell associativity or its precise failure is proved |
| **L3** | Continuum and locality: field-valued boundary group, local net, regulator/completion and higher-dimensional gauge theory | a declared topology controls the quotient/sewing map and preserves locality and response data; no formal Haar integral over an infinite-dimensional cut group is used |
| **L4** | State, representation and modular layer: state restriction/sewing, cross covariance, KMS/Unruh, type and entropy | the extra B2 data are stated; positivity/normality and the relevant representation criterion are proved; algebra sewing is not inferred from a state calculation |
| **L5** | Gravity and holography: diffeomorphism constraints, corner symmetry, model-dependent crossed products and subregion duality | one model-specific chain plus a known benchmark is reproduced without importing a gauge result beyond its scope |

### Scope Table

The concrete form of "complete" is this table, filled with `proved`, `counterexample`, `open`, or `n/a`, with no entry reading "expected". Current state:

| Layer | scalar | gauge | gravity |
|---|---|---|---|
| L0 | proved for the bounded timelike interval and declared flat/AdS null benchmarks | partial: compact $1+1$ reduction, Maxwell $2+1$ smooth-core assembly/time-slab and local YM radial collar proved; product-background two-null Maxwell proved in its declared radiative sector; general regional YM IBVP open | open |
| L1 | scalar response-enriched affine CCR benchmark proved in its smooth two/three-cell scope | open: compact $1+1$ Hilbert reduction exists, but a framed operator-algebra theorem with endpoint sectors and response data is not yet proved | open |
| L2 | scalar enriched associator proved in the declared scope | open | open |
| L3 | interval scalar energy/CCR completion proved; field-valued extensions open | open | open |
| L4 | intrinsic smeared state convergence and AdS$_2$ fixed-label restriction/KMS proved; stronger modular/type claims open | open | open |
| L5 | n/a | n/a | open |

## 5. Model Ladder

Ordered by dependency in the active programme.

| # | Model or cluster | Theorem target or role |
|---|---|---|
| 0 | scalar response-enriched CCR (completed benchmark) | retain the lesson that algebraic generators require response/Green/transport data; rough-history and higher coherence are optional extensions |
| 1 | compact $1+1$ Yang--Mills | upgrade the existing Haar/Peter--Weyl Hilbert reduction to an operator-intertwining algebra theorem on an algebraic core such as $\mathcal O(G)\rtimes U(\mathfrak g)$ |
| 2 | framed gauge algebra and crossing Wilson sewing | define endpoint charge sectors, pair interface indices, derive $U_\gamma=U_2h^{-1}U_1$, and test the sewing ideal, center choice and holonomy--flux commutators |
| 3 | higher-dimensional continuum gauge algebra | control field-valued cut groups, locality, domains, response data and continuum reduction without assuming a normalized Haar measure on $\operatorname{Map}(S,G)$ |
| 4 | state/representation/Unruh layer | determine additional B2 state and cross-covariance data; test KMS/Unruh reliability after algebra composition is known |
| 5 | gravity and holography | add diffeomorphism constraints, corner charges and model-specific modular/crossed-product structures |

The chiral conformal-net collar/defect model remains an external algebraic comparator. Algebra fusion, balanced/relative tensor products and Connes fusion may become useful once the gauge sewing relations are known, but this comparator no longer precedes the gauge-algebra rungs.

The general null-CPS abstraction, product-background two-null Maxwell project and static-patch Maxwell project form a completed/parked causal-type cluster. The first two supply declared scalar/Maxwell characteristic lemmas; the static-patch project supplies internal calibration. None is an active dependency unless a later algebra or state theorem exposes a genuinely null-specific missing input.

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
- **A-null. Completed/parked benchmark cluster.** The scalar Rindler notes and the product-background Maxwell null projects close their declared characteristic and fixed-label state scopes. General curved/null abstraction remains open but is not an immediate dependency.
- **B. Archived.** Collar-regulated Fock factorization is not a gate for intrinsic canonical gluing; revive it only for a separately specified split-property problem.
- **C. Secondary comparator.** In a precisely specified chiral-CFT collar/defect model, algebra fusion and sector fusion may be compared with the gauge sewing theorem after the latter exists; neither supplies the gauge sewing relations in advance.
- *Kill criterion.* If the half-line rung has no natural conservative replacement, restrict the boundary-history canonical formalism to finite cavities and use an open-system or algebraic formulation for radiating exteriors. This test is cheap and should be completed inside year one.

### Phase 2, Years 4--6: Gauge Theory and Corners

- **Bounded Maxwell $2+1$ spatial branch: frozen after orbit/collar and time-slab relation closure on its smooth core.** `maxwell-2p1-spatial-gluing-kill-test/` has intrinsic regional based objects/cut arrows, non-Coulomb collar assembly, choice independence, a two-sided smooth-orbit theorem and original CPS on horizontal tangent classes. Its separately defined mixed time-slab relations now compose to global solution-history orbits by staged reduction; original on-shell actions give exact-isotropic composition and internal symplectic/work cancellation into the connected Hamiltonian. Coulomb restoration is a section modulo discrete proper copies. Raw cusp/quadratic obstructions remain diagnostics. Lagrangian maximality, functional and quotient-manifold extensions stay open. This does not reopen 3+1, non-Abelian higher-dimensional, charged-matter, first-order, quantum, energy/Sobolev, or null branches.

- **D-timelike. Sewing algebra, exact framed $1+1$ benchmarks and smooth local non-Abelian collar geometry closed in scope; general physical reconstruction remains conditional.** The general compact-internal-gauge note separates the fixed-$h$ twisted-diagonal quotient from the variable-$h$ product-frame presentation and keeps finite Haar projection distinct from a quantization-commutes-with-reduction theorem. The compact $1+1$ benchmark proves prescribed-history covariance, two-cell symplectic/Haar reduction, and the three-cell canonical map $[(W_r,J_r)]\mapsto(W_3W_2W_1,J_1)$. The exact-product trivializable/reachable collar dossier proves original-solution radial assembly, covariant normal-jet closure, choice independence, twisted arrows and geometry-level CPS compatibility. The higher-dimensional non-Abelian regional IBVP, gauge realization and time-slab relation remain parked.

- **D-algebra, active P0.** Define the framed/cut-charged regional algebra, prove the compact $1+1$ operator-intertwining theorem, and construct the Wilson-generator sewing map. Determine whether diagonal invariants require an additional dynamical/sewing ideal; prove or refute injectivity, surjectivity and associativity.
- **D.** Chern--Simons: choose a boundary polarization and determine whether the cut is represented by finite-dimensional conformal blocks, a WZW/current-algebra edge sector, a category, or a combination of these.
- **E.** Cylinder: construct a local field-valued port and control transverse locality and the double UV limit.
- **F.** In a concrete gauge model, determine which proposed observables depend on the center choice and which do not.
- *Kill criterion.* If no topology controls the cylinder's field-valued port after isolating its degenerating directions, stop the higher-dimensional port extension. This does not decide whether gauge or gravitational corner symmetries exist.

### Phase 3, Years 7--10: Gravity

- **G.** Bosonic JT coupled to matter: compare the operator-valued boundary mode with the known crossed-product construction, derive the covariance data, and recover type II$_\infty$ if the identification succeeds.
- **H.** de Sitter static patch: reproduce the known type II$_1$ result as a benchmark.
- **I.** Use the completed scalar/Maxwell characteristic benchmarks only when gravity or state composition requires their null-specific input; do not treat general null-CPS expansion as a prerequisite.

### Output Sequence

The immediate forward sequence is: completed scalar enriched-CCR benchmark; compact $1+1$ Yang--Mills operator-algebra theorem; framed gauge/Wilson sewing theorem; higher-dimensional continuum gauge algebra; state/representation/Unruh layer; gravity. Conformal-net fusion, relative/Connes fusion and crossed products remain secondary model-dependent realizations or comparators.

## 9. Where the Novelty Is

Everything else in the plan is assembly of existing theory. These three are worth the decade.

**Established Result A.** The bounded massive interval scalar has a Lorentzian timelike-interface canonical construction, a variational multi-port regulator, arbitrary-cut independence in the continuum limit, finite-partition associativity, and a proved energy-space limit. Field-valued interfaces, radiating exteriors, and gauge constraints remain open.

**Established Result A-null.** The scalar null branch closes flat and AdS matched-domain characteristic composition and, in AdS$_2$, derives the direct null CPS, global-time Hamiltonian, lowest-weight spectrum, Goursat modes, CCR/correlators, smeared wedge KMS, and finite-partial-trace to fixed-label algebraic restriction. Unrestricted horizon onto, sharp tensor factorization, Type III classification, full modular-group convergence, and entropy-coefficient theorems are not included.

**Gap B.** Construct the regional gauge object. Define the framed/cut-charged algebra, its active cut action and endpoint sectors, its fully invariant subalgebra, and its extended presentation, including whatever response/Peierls/transport data are required beyond bare multiplication.

**Gap C.** Determine whether pairing cut-charged endpoint sectors together with diagonal gauge reduction and action-derived sewing relations recovers the global operator algebra. Wilson endpoints are the generator-level test: the construction must reproduce $U_\gamma=U_2h^{-1}U_1$ and the holonomy--electric-flux commutators, and its map to the global algebra must have a proved kernel, image and associator. The lowest candidate $(\mathfrak A_1\otimes\mathfrak A_2)^G$ is not presumed sufficient; it may require a dynamical/sewing ideal. Opposite modules, balanced or relative tensor products and Connes fusion remain realization candidates to test after these relations are explicit.

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
- In the compact $1+1$ Yang--Mills benchmark, action reduction, prescribed boundary-history covariance, $(T^*G\times T^*G)//G_\Delta\simeq T^*G$, normalized-Haar invariant-subspace reduction, the connected Casimir spectrum, and the three-cell cotangent reduction-by-stages map are proved. The general gauge note remains conditional on its IBVP, descent, reconstruction, and quotient hypotheses.
- In the smooth exact-product non-Abelian collar sector, original Yang--Mills tangential descent and full transmission close the covariant normal-jet recursion; radial repair gives a choice-independent global smooth orbit, complete twisted regional arrows, trivial fixed-wall stabilizers, preserved crossing holonomy and geometry-level original-CPS compatibility. No regional IBVP, gauge-fixing or time-slab theorem is inferred.

## Assumptions

- Literature statements above hold within the hypotheses of their sources and should be cited from those sources rather than from this file.
- The scope table records the present state of this project only.
- The phase durations are planning estimates and carry no technical content.

## Not Verified

- The thesis of Section 2 as a theorem. No framed gauge regional object or general sewing functor has yet been constructed.
- Gap C: diagonal invariants have not been shown sufficient; the sewing ideal, global-algebra map, endpoint-sector pairing, holonomy--flux intertwining and associator remain theorem targets. Opposite modules, relative tensor products, Connes fusion and crossed products are candidates, not conclusions.
- The uniform two-index estimate needed to prove the displayed $(\log N)^2/(2\pi^2)$ square-cutoff asymptotic; the present evidence for that coefficient is numerical.
- General curved null CPS, caustics, non-Abelian/gravity characteristic composition and every gravity/holography milestone; the completed scalar and product-background Maxwell examples do not prove these extensions.
- A higher-dimensional non-Abelian timelike Yang--Mills regional IBVP/time-slab theorem, a non-product or low-regularity extension of the local collar result, a universal quantization-commutes-with-reduction theorem, or continuum normalized-Haar reduction for a field-valued boundary group.
- Unrestricted horizon completion onto, sharp wedge tensor factorization, Type III classification, full modular-kernel/group convergence, or an entropy-coefficient theorem.
- That the JT comparison closes or that a chiral CFT admits either fusion statement in the precise realization still to be chosen.
