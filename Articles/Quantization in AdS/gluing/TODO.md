# TODO

Phases follow `roadmap.md`. Within a phase, items are ordered by what blocks what. `archived/formalism_audit.md` records the historical audit that changed the finite regulator and model order.

## Regional Gauge Operator Algebra Track — P0

- [ ] **P0:** define the framed gauge operator algebra assigned to a region with an artificial cut.
  Context: quotient based regional proper gauge, but retain the active cut action and its charge sectors. Distinguish explicitly (i) the framed/cut-charged algebra $\mathfrak A_i^{\rm fr}$, which may contain open Wilson endpoints; (ii) the fully cut-invariant subalgebra $\mathfrak A_i^{\rm inv}$; and (iii) an extended presentation $\mathfrak A_i^{\rm ext}$ with explicit frame/transition variables. Do not call these three objects equivalent by definition. The scalar response benchmark warns that generators and multiplication may still require dynamical response, Peierls or transport data.
  Check: specify generators, relations, domains, the based-proper quotient, active-cut action, endpoint representation sectors and the maps among the three levels. State which electric, magnetic or mixed center is chosen and which superselection labels it creates.

- [ ] **P0:** upgrade compact $1+1$ Yang--Mills from Hilbert-space reduction to an operator-intertwining algebra theorem.
  Context: start on a declared algebraic core, for example Peter--Weyl matrix coefficients and electric generators organized as $\mathcal O(G)\rtimes U(\mathfrak g)$ or a precisely defined equivalent. The existing normalized-Haar/Peter--Weyl result proves the Hilbert reduction and spectrum, not yet an isomorphism of the full regional operator algebra with the uncut algebra.
  Check: prove that two-cell reduction/composition intertwines multiplication, adjoint, holonomy multiplication and left/right electric generators with the single-region/global operator algebra. Prove three-cell associativity/reduction by stages on the same core before choosing a completion.

- [ ] **P0:** construct crossing Wilson-line sewing at generator level.
  Context: regional half-Wilson operators carry open interface representation indices and transform in mutually compatible cut-charge sectors. Their pairing must recover
  $$
  U_\gamma=U_2(\gamma_2)h^{-1}U_1(\gamma_1).
  $$
  This is a generator-level handle, not a complete formalism. Test the diagonal cut action, Gauss/moment-map reduction, transition-frame convention, and electric, magnetic or mixed center. Do not assume $(\mathfrak A_1\otimes\mathfrak A_2)^G$ is the answer; treat it as the lowest candidate and determine whether a dynamical/sewing ideal is missing.
  Check: write the endpoint index contraction and its covariance explicitly; reproduce crossing holonomies and the holonomy--electric-flux commutators in the compact benchmark; identify every surviving superselection sector.

- [ ] **P0:** define the sewing map to the global algebra and prove or refute its exact properties.
  Context: the domain must be the declared response-enriched regional structure after the chosen charge pairing/reduction, not an unspecified tensor product. Classical solution sewing supplies constraints and transport data but does not prove quantum algebra sewing.
  Check: determine the kernel and image; prove or disprove injectivity and surjectivity; prove two/three-cell associativity or exhibit its obstruction. The minimum acceptance test is recovery of crossing Wilson operators and the global holonomy--electric-flux algebra.

- [ ] Downstream/optional: state sewing and Unruh reliability.
  Context: only after the quantum algebra composition is known, determine what extra B2 state/cross-covariance data are needed to construct or recognize a global state. Ask when restriction to a regional algebra is KMS/Unruh and which part of the answer depends on the algebra, representation or state. The completed AdS$_2$--Rindler scalar result is the benchmark; do not continue numerical or general-null expansion by default.
  Check: formulate positivity/normality and reconstruction conditions for a declared algebraic model, and separate global-state restriction from a tensor-factor partial trace.

## Phase 1 — Scalar and Algebraic Core

### History-Indexed Observable Algebra Track

- [x] Action: prove smooth enriched boundary-response CCR partial composition in the two/three-interval benchmark in `history-indexed observable algebra gluing.md`.
  Context: Sections 2–6 distinguish control sources from observable smearings, give the affine Weyl trivialization, and reconstruct response as an equivalent encoding of specified causal transports/response sections. Bare Weyl multiplication alone does not determine Green/response data.
  Check: Sections 7.3–7.6 prove smooth enriched-system associativity; the final full-energy CCR associator is proved separately after unique bulk-source extension. Neither result proves rough-history full-energy enriched-category closure. Symbolic phase/Schur identities do not prove analytic domains.

- [ ] Optional generalization: keep the remaining enriched-composition gates explicitly open until separately constructed and proved.
  Context: rough-history full-energy enriched-category closure, a sewing identity/cylinder object, naturality, 4-cell coherence/pentagon and a general finite-graph domain theorem are not established by the three-interval result. This audit does not advance these gates.
  Check: require the corresponding control spaces, response maps, intermediate domain closure and structural diagrams before changing their labels. Bare field-preserving fusion is already excluded; crossed-product/cotensor/relative-tensor/Connes realizations remain separate representation theorem candidates.

### Foundation

- [ ] Action: keep the physical outer Dirichlet condition fixed and parameterize only the artificial scalar cut when a new example requires it.
  Context: the outer condition selects the benchmark global operator and spectrum and is not a research target. For the scalar spatial operator, admissible cut conditions can be described by a Lagrangian relation in the trace pair $(\gamma_0,\gamma_1)$. This does not imply that gravity uses the same trace pair: Euclidean ellipticity and Lorentzian timelike hyperbolic well-posedness are separate problems. See `roadmap.md` Section 3.1.
  Check: state the outer condition and the artificial-cut condition separately; map the existing construction only for its prescribed Dirichlet cut history; add Neumann, Robin, or mixed cut data only with the regularity and well-posedness hypotheses actually used.

- [x] Action: rebuild the finite regulator on the variational $(2N+1)$-variable port truncation.
  Context: this replaces the strong-flux constrained truncation, which eliminates $q$ through the normal-derivative trace and therefore has $\|\boldsymbol b\|^2=(\pi^2/L)\sum_{n\leq N}n^2$, $\operatorname{cond}M_N=O(N^4)$, and no bounded continuum limit. The port mass matrix has $\operatorname{cond}M_{\mathrm{port},N}=O(N)$, its configuration space contains the constrained one inside $H_0^1([-L,L])$, and the residual inertia $\rho_N\simeq4L/(\pi^2N)$ is the correct variational content of the truncation rather than a spurious mode. See `archived/formalism_audit.md` Sections 4 and 5 for the historical diagnosis.
  Check: completed in `port-canonical-normal-form.md`. The exact mass spectrum isolates the unique $O(N^{-1})$ coefficient-norm direction, the Schur variables give Darboux coordinates, and the same-regulator normal-mode map obeys the symplectic and Hamiltonian identities. The continuum candidate is the global energy/form topology, not a quotient of the trace; proving convergence in that topology remains the next item. No Ritz value is deleted or identified with an exact continuum mode at finite $N$.

- [x] Action: state the topology and dense core in which the finite regulator converges to the continuum feedback theory.
  Context: in the strong-flux elimination the feedback functional is a normal-derivative trace and is discontinuous in the $\ell^2$ coefficient norm. The exact port normal form in `port-canonical-normal-form.md` instead selects the global form domain $H_0^1([-L,L])$ for configurations and $H_0^1\oplus L^2$ for finite-energy Cauchy data. The point trace $q$ is continuous on the configuration form domain, while velocity and normal-derivative traces require a stronger operator graph core. Fixed-window spectral improvement is not this statement; both tested pencils show it while being different finite systems. This closes layer L2 for the scalar.
  Check: completed in `continuum-closure-theorem.md`. The restricted connected forms Mosco-converge by weak lower semicontinuity and form-density; the Galerkin resolvents converge directly by Galerkin orthogonality; energy-compatible wave solutions, symplectic forms, and configuration traces converge uniformly on compact time intervals. Normal derivatives are confined to $H^2\cap H_0^1$ or the weak interface identity. The quantum limit is formulated intrinsically through smeared functional calculus rather than a regional product one-particle comparison.

### Null-Characteristic Branch — Completed/Parked Benchmark Cluster

- [x] Action: close the scalar Rindler/null-characteristic benchmark and its state-restriction layer.
  Context: `rindler scalar.md`, `ads-rindler scalar.md`, and `ads2-rindler global reconstruction.md` establish the flat and AdS matched-domain characteristic mechanism. In AdS$_2$, the exact-null chain runs from action/CPS and two compatible profiles through $\Omega_{\rm null}$, the global-time Hamiltonian, the $\mathfrak{sl}(2,\mathbb R)$ lowest-weight tower $\omega_n=\Delta+n$, Goursat modes, CCR/Pauli--Jordan, the global vacuum, $RR/RL/RF$ correlators, and smeared right-wedge $\beta=2\pi$ KMS. `ads2-rindler regulated partial trace.md` proves the finite Gaussian partial trace and its fixed-label continuum algebraic restriction.
  Check: completed only on the declared matched/cyclic and fixed smooth/Weyl label scopes. No unrestricted horizon onto theorem, sharp wedge Hilbert tensor factorization, Type III classification, full modular-group convergence, or entropy-coefficient theorem is included.

- [ ] Parked benchmark-generalization open: extract a general curved null CPS from the completed scalar/product-background examples.
  Context: characteristic data, role conversion, corners, direct null flux, caustics and B1/B2 separation remain genuine open questions, but they are not an immediate dependency of the regional gauge-algebra programme.
  Reopening gate: a quantum algebra or state-composition theorem must require a null-specific input not already supplied by the completed benchmarks. Only then formulate the needed domain-controlled phase space and Goursat composition theorem at the minimum required scope.

- [x] Action: complete Maxwell composition on two intersecting null surfaces in the declared product-background/radiative sector.
  Context: `../../null CPS/two-null-maxwell-composition/README.md` records proved finite-cross composition and the complete-future-cross field-strength chain on the fixed product background, with explicit bundle, charge, harmonic, regularity and potential-completion boundaries.
  Check: completed in that declared scope. General curved backgrounds, caustics, non-Abelian Yang--Mills and gravity are parked; the conditional energy-potential completion is not promoted by this status label.

- [x] Action: validate the scalar glue-first-then-trace principle.
  Context: the finite glued Gaussian partial trace and continuum algebraic state restriction are complete in `reduced-state-open-system-scalar.md` and `ads2-rindler regulated partial trace.md` for their stated regulators and fixed observable families.
  Check: completed. Gauge/gravity subsystem reduction is the next frontier. Full modular-generator convergence and an entropy-coefficient theorem remain optional mathematical refinements, not blockers for the scalar principle.

### Independent Continuous-Spectrum Stress Test

- [ ] Action: cut the half line $[0,\infty)$ at $x=a$ and redo the construction with a continuous regional spectrum.
  Context: the outer region has no discrete tower and its outgoing response is $D_2(\Omega)=-i\sqrt{\Omega^2-m^2}$ above threshold, so the prescribed-history regional description becomes an open radiating subsystem and the boundary-work balance acquires a radiated part. This is a cheap stress test of the conservative formulation, but failure would not invalidate the bounded-interval scalar or the later constrained Maxwell problem.
  Check: state the radiation condition that makes the evolution well posed, derive flux matching, identify the open-system symplectic or algebraic replacement and a reference state, and determine which bounded-interval results survive. If no natural conservative replacement exists, restrict the canonical history formalism to finite cavities and use an open-system or algebraic formulation for radiating exteriors.

### Canonical Layer on the Rebuilt Regulator

- [x] Action: resolve the extra port canonical pair before finite-$N$ quantization.
  Context: the conforming port truncation has $2N+1$ configuration variables. Its residual direction is not null at finite $N$, so it must either be retained canonically or removed by a separately justified constraint.
  Check: completed in port-canonical-normal-form.md and feedback-port-canonical-bridge.md. The pair is nondegenerate, has $\pi_q=\rho_N\dot q$, and cannot be symplectically reduced at finite $N$. The full positive port Hamiltonian supplies the compatible complex structure, while the feedback bridge shows exactly how $(q,\pi_q)$ completes the regional projection variables and restores the annihilator CCR.

- [x] Action: connect the operator-valued feedback solution to the glued annihilation operators.
  Context: feedback-port-canonical-bridge.md proves that the port Euler--Lagrange system is exactly the $\rho_N$-regulated feedback system. At finite $N$, the common history depends on the regional homogeneous data and the port initial pair, $q=q[\boldsymbol d_+;q(t_i),\pi_q(t_i)]$. The full-field projections satisfy $(\boldsymbol C,\boldsymbol V)=(\boldsymbol r,\boldsymbol\pi_r)$ and are canonical when supplemented by $(q,\pi_q)$.
  Check: completed. Projection of the reconstructed field onto the $M_N$-orthonormal Galerkin modes gives the exact normal coordinates $(Q_{\alpha,N},P_{\alpha,N})$. The resulting $a_{\alpha,N}=\sqrt{\Omega_{\alpha,N}/2}\,Q_{\alpha,N}+iP_{\alpha,N}/\sqrt{2\Omega_{\alpha,N}}$ obey the CCR. Numerics/feedback_port_canonical_bridge_checks.wl verifies the regulated-feedback identity, projection map, symplectic and Hamiltonian identities, and the two annihilator CCR identities through $N=64$.

- [x] Action: quantize the finite-dimensional symplectic map.
  Context: the same-regulator normal-mode map is an exact symplectic transformation of the full $2N+1$-pair port phase space. No regional product representation is required. The positive port Hamiltonian supplies the compatible complex structure, and finite-dimensional regular CCR representations are unitarily equivalent.
  Check: completed at the canonical-algebra level in port-canonical-normal-form.md and feedback-port-canonical-bridge.md. The explicit annihilation operators include the terms linear in $(q,\pi_q)$ required by the CCR. Their finite-dimensional metaplectic implementer exists up to phase; no separate product-state comparison is asserted.

- [x] Action: define the finite-$N$ glued Gaussian state directly from the glued Hamiltonian.
  Context: the project does not assume that a regional product state maps to the global state. The finite port Hamiltonian defines its own positive compatible complex structure and annihilation operators $a_{\alpha,N}$ in the reconstructed-field variables.
  Check: completed. The state is defined by $a_{\alpha,N}\ket{\Omega_N}=0$, and its covariance is the Hamiltonian covariance already calculated in port-canonical-normal-form.md. Expressing the same operators in feedback variables requires the port terms displayed in feedback-port-canonical-bridge.md; it is not a squeezed-state claim relative to two independent regional vacua.

- [x] Action: compute the glued correlation functions of the interval scalar.
  Context: distinguish the global vacuum from the regional reference Gaussian state. Compute the same two-point function both from the normalized global modes $a_r$ and from the reconstructed regional fields $q(t)$ and $c_{i,n}(t;q)$, including the cross-region correlator $\langle\phi_1\phi_2\rangle$, the interface correlator $\langle q(t)q(t')\rangle$, and mixed correlators $\langle q\phi_i\rangle$. Obtain the commutator, retarded, and time-ordered correlators from the same state-dependent Wightman data.
  Check: completed in `continuum-closure-theorem.md`. The connected Wightman mode sum, cross-region kernel, interface kernel, and mixed kernels are displayed. Mathematica verifies the regional restriction signs, outer boundaries, mode equation, interface parity, and oriented-flux cancellation exactly. Strong functional calculus proves convergence of the finite Galerkin two-point functions after spatial smearing; the commutator, retarded, and time-ordered kernels follow from the same Wightman distribution. The equal-time point variance at the cut is logarithmically divergent and is not promoted to an ordinary oscillator covariance.

### Structural Continuum Checks

- [x] Action: establish noncentral-cut canonical gluing and continuum cut-position independence.
  Context: for lengths $\ell_1\neq\ell_2$, the full three-amplitude determinant gives $\sin(k(\ell_1+\ell_2))$ without using parity. The unequal-length port regulator has residual inertia $\rho_{N_1,N_2}=\sum_i(2\ell_i/\pi^2)\sum_{n>N_i}n^{-2}$ and remains positive at finite cutoff. A $q=0$ mode occurs only when the cut is a node of a global mode.
  Check: completed in `non-central cut.md` and `numerics/noncentral_cut_checks.wl`. The script verifies the spectrum, lifting overlaps, mass/stiffness matrices, Schur form, residual inertia, and positivity. Form-density proves convergence to the same connected theory for every fixed cut.

- [ ] Action: quantify finite-regulator lifting dependence and cut-position-uniform rates.
  Context: the continuum limit is independent of the fixed cut and of the admissible lifting after form completion, but at finite $N$ the Galerkin space, overlap vector, covariance, and convergence rate depend on the chosen lifting. No uniform estimate has been proved as a cut approaches an outer boundary.
  Check: compare at least two admissible liftings and several cut positions, and determine which finite covariance and rate differences vanish uniformly on compact subsets of $x_0<a<x_2$.

- [x] Action: prove associativity for three subregions.
  Context: associativity is logically independent of noncentral-cut independence. Both parenthesizations retain the same two ports and restrict the same summed action to one common multi-port Galerkin space.
  Check: completed in `non-central cut and associativity.md` and `numerics/associativity_checks.wl`. The two coefficient presentations are related by a permutation whose phase-space lift is symplectic and exactly intertwines the Hamiltonians. The same form-density argument gives the identical continuum operator, intrinsic state, and smeared correlators. No intermediate reprojection or port deletion is allowed.

### Secondary Representation Candidates

- [ ] Secondary comparator: construct the interface algebra and the gluing statement for a chiral conformal model.
  Context: conformal-net literature distinguishes fusion/fiber product of von Neumann algebras from Connes fusion of Hilbert bimodules or sectors, and performs fusion along nonzero intervals or specified defects under hypotheses such as finite index. Merely cutting a circle into intervals that touch at a point does not supply a nontrivial point-interface algebra. See `roadmap.md` Sections 3.2 and 5.
  Check: first specify a collar, overlap interval, defect, or boundary-CFT realization and identify $\mathcal B$. Then formulate the algebra statement as $\mathcal A_L\circledast_{\mathcal B}\mathcal A_R$ and the sector statement as $H_L\boxtimes_{\mathcal B}H_R$, proving only the operation relevant to the chosen model and recording every finite-index or representation-theoretic hypothesis. Keep both statements separate from the interval scalar and do not let them delay the gauge generator-level theorem.

- [ ] Secondary realization test: compare the proved gauge sewing relations, once available, with opposite modules, balanced/relative tensor products, Connes fusion and crossed products.
  Context: these constructions may encode charge pairing, covariance or representation composition, but none is assumed to generate the action-derived sewing ideal. Crossed-product identification additionally requires an explicit automorphism group, implementing unitaries and covariance relation.
  Check: test each candidate against the compact $1+1$ algebra theorem, crossing Wilson generators, holonomy--flux commutators and three-cell associativity. Reject any candidate that forgets required response/transport data or adds unsupported sectors.

## Phase 2 — Gauge Theory and Corners

The compact-$1+1$ timelike benchmarks remain closed in their stated scope. The Maxwell 2+1 smooth-core orbit/collar and time-slab relation theorems are now proved, with maximality and functional extensions outside this task; the unrelated null-characteristic branch in Phase 1 is unchanged.

- [x] Action: identify intrinsic collar/geometric assembly on regional based classes with Coulomb restoration in `maxwell-2p1-spatial-gluing-kill-test/calculations.md`, Section 9.
  Context: original solutions and based gauge define the objects; common-cut actions define intrinsic arrows. Radial collar integration and the smooth comparison lemma prove choice independence, both orbit directions and CPS on horizontal tangent classes.
  Check: proved in the unchanged smooth finite-Fourier sector, including based large components and reachable fixed transitions. Both raw counterexamples remain. No quotient-manifold, Sobolev/energy, 3+1, high-dimensional non-Abelian, charged-matter or null theorem is included; no further branch is started.

- [x] Action: close Maxwell $2+1$ time-slab evolution-relation composition on the same smooth core in dossier Section 10.
  Context: the mixed regional $\mathscr U_i^\chi$ graphs retain $(\alpha_i,q_i)$ as prescribed inputs and all normal/gauge/jet entries as outputs or constraints. The zero-winding cut-history action moves between compatible history fibers and acts on both temporal endpoints. Original descent plus full transmission defines the matched relation.
  Check: relation-level collar assembly and intrinsic arrows give the two-sided global solution-history orbit theorem and staged reduction; original on-shell actions add exactly and generate an exact-isotropic composition; symplectic flux, interface work and the regional polarization-Hamiltonian boundary terms cancel to the connected Hamiltonian, including the Wilson/electric pair. Coulomb restoration is a relation section. Lagrangian maximality, smooth quotients and every completion/generalization remain open, so the bounded classical spatial branch is frozen at this claim level.

- [ ] Action: study the cylinder $[-L,L]\times S^1_R$ through its interface algebra rather than channel by channel.
  Context: reducing the cylinder to independent angular channels with effective mass $m_\ell^2=m^2+\ell^2/R^2$ discards its main new content. Its point is that the interface datum is a local field $q(t,\theta)$ and that radial and angular UV limits interact. A fixed-background scalar does not acquire a physical $\mathrm{Diff}(S^1)$ corner gauge group merely because its interface is a circle. The channel decomposition remains available as a computational device and cross-check.
  Check: construct the local algebra generated by the interface field and conjugate flux, state its transverse locality and topology, and determine whether it is more than a channelwise direct sum after completion. Recover the connected cylinder spectrum as a consistency check and control the double radial/angular sum in the collar-regulated diagnostics.

- [ ] Action: solve Chern--Simons theory on a cut as the exactly solvable gluing model.
  Context: for compact gauge group and quantized level, Chern--Simons assigns finite-dimensional state spaces to suitable closed spatial surfaces, but an actual cut boundary generally carries a WZW/current-algebra edge sector; an extended TQFT may instead assign categorical data to the one-dimensional interface. These are related but not the same object. Verified calculations in `deprecated/` may be reused without reinstating the deprecated conceptual framework.
  Check: choose the gauge group, level, boundary polarization, and extended-TQFT or Hamiltonian realization. Distinguish the finite-dimensional global conformal-block space, the generally infinite-dimensional boundary edge representation, and any category assigned to the interface; only then state and verify the appropriate relative tensor product or categorical composition law.

- [x] Action: solve compact $U(1)$ Maxwell theory on a cut interval, the cut cylinder, and the cut slab times $T^2$ in quantize-first order.
  Context: `Maxwell 1+1.md` solves the periodic regional coordinate and its integer momentum exactly. `Maxwell 2+1 cylinder.md` and `Maxwell 3+1 slab.md` solve Gauss law, the regional driven oscillators, the interface equations, and every normalized connected vector mode under the stated physical-wall conditions.
  Check: completed analytically in the three Maxwell notes and regression-checked by `numerics/maxwell_quantize_first_gluing_checks.wl`.

- [x] Action: extract the compact internal gauge-covariant sewing/reduction layer and solve the $1+1$ compact Yang--Mills benchmark.
  Context: [[Articles/Quantization in AdS/gluing/gauge-covariant sewing and reduction|gauge-covariant sewing and reduction]] separates based regional proper gauge, boundary-frame covariance, fixed-$h$ twisted-diagonal reduction, and the variable-$h$ product-frame presentation; it keeps the full timelike transmission relation distinct from the Cauchy-cut Gauss moment map. [[Articles/Quantization in AdS/gluing/Yang-Mills 1+1|Yang-Mills 1+1]] supplies the exact non-Abelian test.
  Check: repaired and closed within the declared scope. The general note now has separate conditional quotient formulas and no universal quantization-commutes-with-reduction claim. The finite $1+1$ model proves $T^*G$ regional reduction, prescribed-history Hamiltonian covariance, $(T^*G\times T^*G)//G_\Delta\simeq T^*G$, normalized-Haar averaging, Peter--Weyl/Casimir spectrum, direct uncut comparison, and the classical canonical map $[(W_r,J_r)]\mapsto(W_3W_2W_1,J_1)$ for three-cell reduction by stages. `numerics/yang_mills_1p1_checks.py` supplies reproducible finite witnesses. This does not complete a general gauge IBVP, a universal quantization-commutes-with-reduction theorem, or continuum $\operatorname{Map}(S,G)$ Hilbert reduction.

- [x] Action: prove or refute the compact non-Abelian radial-collar geometric assembly lemma at the smooth original-solution level.
  Context: `ym-radial-collar-assembly/` isolates an exact-product collar, a trivializable/reachable fixed-$h$ sector, smooth original regional Yang--Mills solutions, fixed physical wall frames, and the full action-derived transmission law. It does not assume any Lorenz/Coulomb realization or regional hyperbolic IBVP.
  Check: passed in the declared sector. The based radial ODE, covariant Yang--Mills/Bianchi normal-jet recursion and comparison ODE prove strong smooth patching, choice independence, the two-sided twisted-arrow orbit-set theorem, trivial anchored stabilizers, crossing-holonomy preservation and geometry-level original-CPS compatibility. This closes only the geometric original-solution gate; no Yang--Mills time-slab, completed quotient or quantum theorem follows.

- [ ] Parked/future stress test: close the analytic gates for a higher-dimensional non-Abelian Yang--Mills benchmark before computing any mode content.
  Context: the smooth exact-product original-solution collar assembly gate is now closed, but the relation-level architecture still needs a constraint-compatible timelike boundary polarization, trace/dual-trace regularity, regional IBVP well-posedness, Gauss propagation and coverage by allowed gauge realizations. The local collar theorem deliberately assumes original solutions and therefore does not supply these inputs.
  Check if this branch is reopened: on a fixed trivial-bundle finite cavity, specify the incoming/admissible Yang--Mills boundary data after gauge fixing, prove Gauss propagation and the regional energy estimate, and prove restriction coverage before attempting a time-slab relation. Only then choose a finite regulator and test quantum reduction; do not write a normalized Haar integral over $\operatorname{Map}(S,G)$. This is not the current next task.

- [ ] Action: prove cutoff-uniform closure of the finite Maxwell regulators before making a subregion-state or entropy comparison.
  Context: the exact mode solutions and positive finite regulator matrices do not prove convergence uniformly in the radial and transverse cutoffs, nor do they select an algebraic prescription for a reduced state.
  Check: establish the common form domain, convergence after the based gauge quotient, and convergence of the shared history coefficients. State any later entropy, mutual-information, or relative-entropy prescription only after its regional algebra and limiting state have been specified.

- [ ] Action: construct the first model whose cut surface has a nonempty boundary.
  Context: in $2+1$ dimensions a cut surface with boundary can produce geometric corner contributions and codimension-2 data that neither the interval nor the closed circular interface contains. For a scalar this tests geometric corner divergences; a physical corner symmetry requires a gauge or gravitational theory with its own reduction data.
  Check: identify the codimension-2 data, compute the geometric corner contribution to the reduced symplectic form and collar-regulated entropy, and determine which parts are fixed by the interface condition. Formulate a corner symmetry only in a gauge/gravity model after specifying the gauge group, boundary charges, and reduction.

## Phase 3 — Gravity

- [ ] Action: choose the gravitational signature and analytic problem before choosing interface data.
  Context: Euclidean Einstein boundary problems are elliptic after gauge fixing; unconstrained Dirichlet data are generally non-elliptic, while conformal class plus mean curvature gives an elliptic alternative. A Lorentzian timelike interface is instead a hyperbolic IBVP: Dirichlet data have a conditional local well-posedness theorem under Brown--York convexity, whereas current conformal--mean-curvature results establish linearized dense range and uniqueness but not a complete general theorem. These are separate branches, not competing boundary conditions in one theorem.
  Check: state Euclidean or Lorentzian signature, gauge fixing, boundary data, compatibility and convexity assumptions, and the exact existence/uniqueness/regularity claim used. Do not infer the gravity trace space from the scalar Lagrangian-pair parametrization.

- [ ] Action: close the full chain in JT gravity.
  Context: at a finite cutoff boundary the reparametrization of the boundary curve is the Schwarzian mode, while known gravitational crossed-product constructions adjoin a boundary or modular Hamiltonian to an algebra. This is an analogue and test of the project's operator-valued-port hypothesis, not yet an identity. Standard bosonic JT coupled to matter has type II$_\infty$ boundary algebras; type II$_1$ belongs to settings with an additional finite-trace mechanism, such as the de Sitter observer algebra. See `roadmap.md` Section 2 and Gap B.
  Check: derive the Schwarzian sector within the chosen interface formalism; exhibit the automorphism group $\alpha_t$, implementing unitaries $U_t$, and covariance relation $U_taU_t^{-1}=\alpha_t(a)$ before calling the enlargement a crossed product; derive rather than assume its type. For ordinary bosonic JT coupled to matter, reproduce type II$_\infty$ and its trace/weight structure, then compute the corresponding generalized entropy.

- [ ] Action: reproduce the de Sitter static-patch result as a benchmark.
  Context: the static patch is a causal diamond with a horizon whose algebra, after adjoining an observer, is known to be type II$_1$ with a maximum-entropy state. It is therefore a verification of the machinery rather than a new claim.
  Check: obtain the same type classification and the same maximum-entropy statement from this formalism, and record any discrepancy as a defect of the formalism rather than a new result.

- [x] Action: fix the AdS--Rindler geometric target before defining any gluing there.
  Context: completed by the exact null-characteristic route. The right and left exteriors are causal complements and omit the future and past regions. Their outgoing horizon data become the two intersecting characteristic inputs for the (F/P) Goursat regions. The horizons are null characteristic composition surfaces, not timelike feedback interfaces; the bifurcation point/cut supplies corner compatibility and is not the full gluing locus.
  Check: `rindler scalar.md`, `ads-rindler scalar.md`, and `ads2-rindler global reconstruction.md` keep intrinsic wedge dynamics, global reconstruction, B1 algebra, B2 state/cross covariance, and Fock-factorization claims separate.

- [ ] Optional comparison/regulator: build a stretched-horizon regulator and study its removal.
  Context: placing a timelike stretched horizon at $\rho=\epsilon$ keeps the interface timelike, so the Phase 1 machinery applies at fixed $\epsilon$. This is an auxiliary route only when one wants to reuse the timelike machinery; it is not the definition of null gluing and is not required by the completed exact-null scalar benchmark. Horizon traces, infinite redshift, and the continuous boost spectrum may obstruct the identifications that are already nontrivial for the interval scalar.
  Check: construct the regional interface response at fixed $\epsilon$, verify the finite-$\epsilon$ reduced canonical map, and report the $\epsilon$-dependence of the vacuum overlap, particle number and entropy separately from any statement about the null limit. Analyze the boundary-trace domains and the high-frequency Bogoliubov coefficients, and state the algebraic statement that survives if unitary Fock equivalence fails.

- [x] Action: redo the free-scalar wedge quantization in the appropriate composition language.
  Context: replaced and completed by the exact null-characteristic route rather than a stretched-horizon interface-response route. The completed scope includes intrinsic wedge modes with both scattering branches, opposite boost orientation in the two wedges, (F/P) characteristic reconstruction, the global lowest-weight/Bogoliubov structure, smeared KMS, and finite-partial-trace to continuum algebraic restriction.
  Check: the stronger statements remain open: unrestricted horizon completion onto, sharp global-to-two-Fulling-Fock equivalence, full modular-kernel/group convergence, and entropy-coefficient theorem.

## Kill Criteria

- **Radiating exteriors.** If the half-line rung has no natural conservative replacement, restrict the boundary-history canonical formalism to finite cavities and use an open-system or algebraic formulation for radiating exteriors; do not discard the bounded scalar or gauge programme.
- **Field-valued ports.** If no topology controls the cylinder's field-valued port and double UV limit after its degenerating directions are isolated, stop the higher-dimensional port extension. This says nothing by itself about gauge/gravity corner symmetries.
- **Regulator.** If the port direction cannot be isolated by a controlled reduction or quotient/energy/graph topology and no convergence theorem exists there, the canonical port route is closed. Raw coefficient-norm condition numbers are not required to remain uniformly bounded.

## Superseded

- Repairing the local formula and wording issues in `formalism.md`. Done; the mass sign, the separate treatment of $k=0$, and the overlap indices were already correct, and the reference-state wording is fixed. The historical verification is in `archived/formalism_audit.md` Section 2.
- Building the finite-cutoff reduced symplectic model on the strong-flux constrained truncation. Superseded by the port truncation; see `archived/formalism_audit.md` Sections 4 and 5 for the historical diagnosis.
- Proving scalar spatial-operator extension independence and cut-position independence from scratch. Boundary-triple and Steklov--Poincare theory supplies that operator layer; the Lorentzian CPS bridge and finite-regulator counterpart remain.
- Deciding Fock implementability of the declared sharp-cut Dirichlet--Dirichlet map. A fixed odd Bogoliubov row is not in $\ell^2$, so that map is settled. The optional square-cutoff coefficient, band-smearing, collar split-state, and smooth-interface continuations are archived under `deprecated/`; none is an active gate for intrinsic canonical gluing.
