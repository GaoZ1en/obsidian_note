# Gluing

This project studies how independently defined regional observable algebras compose into a global observable algebra.

## Directory Map

- `./`: general classical and gauge-covariant gluing formalisms, together with `README.md`, `TODO.md`, `AGENTS.md`, and the retired `roadmap.md` pointer.
- `models/`: concrete scalar and gauge-theory models used to construct or test the general formalism.
- `models/spacelike regions/`: interval, Maxwell, Yang--Mills, and spatial gauge-assembly models.
- `models/spacelike regions/non-gauge/`: scalar, Proca and Dirac models, including explicit response and observable-bracket comparisons.
- `models/null regions/`: flat and AdS Rindler characteristic-composition models.
- `state and representation/`: mode expansions, finite regulators, canonical/Fock comparisons, state restriction, partial trace, and open-system analyses.
- `numerics/`: symbolic and numerical checks supporting the model and representation notes.
- `archived/`: superseded formulations, completed audits, and earlier project-state documents retained as history.
- `deprecated/`: abandoned alternative approaches, old article material, and their historical calculations.

## Explicit Non-Gauge Examples

- [1+1 massive scalar spacelike gluing](<models/1+1 massive scalar spacelike gluing.md>): the $t=0$ interface, fixed-configuration fibres, momentum matching from action release, Cauchy-response sewing, exact polynomial kernel/image and smooth massive Peierls checks; includes a comparison of timelike, spacelike and null cuts.
- [1+1 massive scalar null gluing](<models/null regions/1+1 massive scalar null gluing.md>): single and intersecting null cuts with finite Dirichlet walls; two wedge histories reconstruct $F$, with smooth corner matching, an explicit polynomial algebra map, and two-sheet Peierls comparisons including reflections and spacelike cancellation.
- [1+1 scalar Wick observable algebra gluing](<models/spacelike regions/non-gauge/1+1 scalar Wick observable algebra gluing.md>): independent regional Wick algebras, interface relations from the operator field equation, a polynomial quotient isomorphism, crossing commutators and stress/Casimir checks.
- [1+1 phi4 classical observable algebra gluing](<models/spacelike regions/non-gauge/1+1 phi4 classical observable algebra gluing.md>): direct constant-coupling regional Poisson construction, interacting history response, mismatch ideal and independent global comparison, with complete field/bracket and stress-energy coefficients through $\lambda^2$.
- [1+1 phi4 quantum observable algebra gluing](<models/spacelike regions/non-gauge/1+1 phi4 quantum observable algebra gluing.md>): completed coefficientwise matching through coupling order $\lambda^2$ and two loops with stationary interaction, finite image terms, corrected spatial stress, interface current and total stress energy. Independent supplied finite conventions are transported with their insertion contacts; no all-order stress result is claimed.
- [2+1 Proca observable algebra gluing](<models/spacelike regions/non-gauge/2+1 Proca observable algebra gluing.md>): two half-cylinders, tangential histories, the constrained vector response and a nonzero circle-momentum crossing bracket.
- [1+1 Dirac observable algebra gluing](<models/spacelike regions/non-gauge/1+1 Dirac observable algebra gluing.md>): two intervals, half-spinor histories, explicit matrix responses and the global graded Poisson bracket.
- [1+1 scalar oblique interface gluing](<models/spacelike regions/non-gauge/1+1 scalar oblique interface gluing.md>): an oblique timelike cut in a uniformly moving cavity, its normal flux and an explicit crossing bracket.
- [Global AdS2 scalar observable algebra gluing](<models/spacelike regions/non-gauge/global AdS2 scalar observable algebra gluing.md>): the center cut, massive curved-space responses, recovery of the global bracket and an elementary mass-squared-two example.

## Scalar Observable Algebra

- [Scalar local-structure research route](<scalar local structure research route.md>): action-first milestones from regional response to local CCR, Wick and weakly interacting scalar algebras, with inclusion, causality, time-slice and finite-cutting acceptance criteria.
- [Free local-structure implementation](<scalar local structure implementation.md>): regional causal propagation, independent local CCR comparison, full Wick-kernel time-slice and finite refinement maps.
- [Finite-insertion time-slice obstruction](<scalar insertion time-slice obstruction.md>): four exact wave packets disprove the original finite-word completion; [completed relative-S construction](<scalar completed relative-S local structure.md>) records a separate enlargement and its Cauchy inverses.
- [Switched-phi4 local calculations](<scalar interacting local structure.md>): actual solution domains, formal locality, complete two-vertex tree/one-loop diagnostics, and compatible choices; [verification](<numerics/scalar local structure verification.md>) records the executed checks and claim boundaries.
- [Scalar observable sewing closure](<scalar observable sewing closure.md>): independent regional families in a time-smooth joint-trace-dual class, explicit sections/transposes, local switched nonlinear sewing, collar-label quantum presentations and kernels, finite composition and the exact distinction from the old spatially smooth density class.
- [Rectangle scalar self-gluing](<Articles/Quantization in AdS/gluing/models/spacelike regions/non-gauge/rectangle scalar self-gluing.md>): twelve whole-edge pairings, corner links/angles, a concrete joint-history harmonic-lift and weak-response domain, exact energy/Friedrichs and CCR comparison, and geometric versus Cauchy-topology no-go statements.
- [Self-sewing topology and orientation](<self-sewing topology and orientation.md>): arbitrary compact surface presentations, orientable and nonorientable topology, links, metric and bundle descent, and the obstruction for ordinary chiral CS on nonorientable spaces.
- [Classical gluing formalism](<classical_gluing_formalism.md>): joint trace spaces, self-seams, full face/corner response release, tangent Hamiltonian algebras, and exact Poisson reconstruction under explicit chart/extension hypotheses.
- [Observable algebra gluing formalism](<observable algebra gluing formalism.md>): corner-aware classical/quantum definitions and proof inputs, independent/common-history source distinction, CCR versus Wick/renormalized reconstruction, gauge reduction and finite composition.
- [Free renormalized quantum sewing](<free scalar renormalized quantum observable algebra gluing.md>): interval and massive smooth torus/Klein Wick/equicausal comparison on actual matched test domains, with cone CCR kept separate.
- [Interacting phi-n quantum sewing](<phin renormalized quantum observable algebra gluing.md>): off-shell polynomial insertions, coherent renormalization across smooth artificial corners, quantum Møller compatibility, and explicit limits at genuine corner strata.
- [Scalar sewing audit](<renormalized scalar sewing audit.md>): the imported classical and quantum claims, their repairs and no-go statements, and the remaining history/boundary regularity limits.

## State and Representation

- [Global AdS2 canonical vacuum and modular flow](<state and representation/global AdS2 canonical vacuum and modular flow.md>): a canonical explanation from the sewn CPS through global positive-frequency covariance and right restriction to boost KMS and modular flow; the explicit massive $\Delta=2$ calculation separates global time, the regional boost charge, and finite partial trace.

## Gauge Benchmark

- [Gauge observable sewing: proved theorem interfaces](<gauge observable sewing theorem interfaces.md>): typed classical, algebraic-core and representation/net implications, with explicit model inputs, kernels and independent targets.
- [Chern–Simons edge contraction and corner fusion](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/chern-simons edge contraction and corner fusion.md>): tree presentation equivalence, scalar/YM trace obstructions, and the classical/quantum commuting diagrams for an auxiliary tree retaining two punctures and all physical currents.
- [1+1 Yang–Mills classical observable algebra gluing](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/1+1 Yang-Mills classical observable algebra gluing.md>): continuum action to framed cotangent phase space, full smooth interval sewing, and SU(2) circle self-sewing with all singular strata and a full smooth invariant quotient.
- [1+1 Yang–Mills quantum observable algebra gluing](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/1+1 Yang-Mills quantum observable algebra gluing.md>): interval holonomy–flux Rees sewing and its dynamical scope; SU(2) circle restriction with a principal moment-Casimir kernel, independent global radial image, classical specialization, and the Haar/Casimir Hamiltonian domain.
- [U(1) Chern–Simons disk and open-chord sewing](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons disk and open-chord sewing.md>): complete regional actions, joint gauge/history endpoints, exact smooth current-algebra and polynomial/Weyl sewing, physical chiral evolution and three-cell associativity.
- [U(1) CS trivalent junction](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons trivalent junction sewing.md>): actual three-ray trace image, complete cut kernel including three residual junction gauge jets, current/Weyl quotient and reduction by stages.
- [U(1) CS annulus](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons annulus sewing.md>): framed cycle period, compact radial zero mode, disconnected proper-gauge components, radial-cut reconstruction and a specified current/zero-mode and paired-vertex realization, with the exact thin-line vacuum-domain threshold.
- [U(1) Wilson and vertex extension](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/U(1) Chern-Simons Wilson and vertex extension.md>): smooth regularization, charged mode domains, monodromy-compatible angular tests and their adjoints, ordered products and common-prescription sewing.
- [SU(2) CS open chord](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/SU(2) Chern-Simons open-chord sewing.md>): trivial-monodromy classical reconstruction, universal current kernel, integrable vacuum-module preimage, H1 corner gauge data and Connes sewing of the complete local vacuum net.
- [SU(2) two-puncture classical bridge](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/SU(2) Chern-Simons two-puncture classical bridge.md>): sourced action/CPS, current-to-port fiber product, corrected two-form and independent pair-of-pants holonomy comparison.
- [SU(2) charged sewing and channel maps](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/SU(2) Chern-Simons charged sewing and channel maps.md>): level-two non-vacuum Connes maps, complete Gram kernel, bounded primaries, Wilson channel detector and actual four-puncture F/braid comparison.
- [Charged CS bridge claim ledger](<numerics/charged CS bridge claim ledger.md>): the two-commit audit repairs and five follow-up packages, with source theorems, executed checks and explicit limits.
- [YM covariant multitime networks](<Articles/Quantization in AdS/gluing/models/spacelike regions/gauge/1+1 Yang-Mills covariant multitime networks.md>): temporal dressing, compact-group finite-word reduction to the old global envelope, an actual section and complete constructive kernel; U(1) additionally has a short normal form.
- [Five-package results and verification](<numerics/CS and YM five work packages verification.md>): analytic proofs and their exact scopes; the original symbolic suite plus 10 Mathematica and three Sage groups supporting the thin-line threshold, integrable vacuum sewing and general compact-group network reduction.
- [YM circle and CS corner verification](<numerics/ym circle and CS corner verification.md>): executed symbolic checks and the separate scope of the functional, invariant-theory and operator-domain proofs.
- [Two-commit adversarial audit](<../../../01_two_commit_adversarial_audit.md>): the imported angular-smearing counterexample, scope corrections and acceptance criteria addressed by the charged bridge ledger.
