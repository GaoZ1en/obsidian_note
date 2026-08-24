# TODO — Stacky CPS Sandbox

> Status: the categorical layer of this sandbox has not produced, and for a free field with a timelike interface cannot produce, a statement unavailable to the direct boundary-history formulation. Its own Corollary 7.2 records that the construction is 0-truncated. What this folder did produce that matters is analytic and quantum, not categorical. This file is therefore reorganized around the real gaps. See `../archived/formalism_audit.md` for the historical audit that forced the reorganization, and `../roadmap.md` for the long-range direction, which redirects the quantum layer to local algebras and Connes fusion and keeps BV--BFV for the classical and corner layer.

## Verdict

Three statements, in decreasing order of confidence.

1. **Existing theory supplies the scalar spatial-operator layer.** $D_i(\Omega)=k\cot(kL_i)$ is a Titchmarsh--Weyl function, $D_1+D_2=0$ is the Steklov--Poincare interface equation, and "zeros give the common sector, poles are restored as the relative sector" is the extension-theoretic spectral rule. Boundary-triple theory supplies trace spaces, self-adjoint reconstruction, and cut/lifting independence under its domain hypotheses. It does not by itself prove the project's Lorentzian CPS reduction, operator-valued feedback, or state gluing. `lorentzian-linear-target.md` supplies a self-contained $d=1$ Lorentzian slab result; the general bridge remains open.
2. **The finite-regulator layer is built on the wrong regulator.** The strong-flux constrained pencil eliminates the interface value through an unbounded normal-derivative trace, $b_n=(-1)^{n+1}n\pi/\sqrt{2L}$, so $\operatorname{cond}M_N=O(N^4)$ and the reduced form $J_{M_N}$ has no bounded continuum limit. The declared Gaussian comparison is numerically dominated by that single direction: its particle number is consistent with near-linear growth and more than eighty per cent lies in the *lowest* glued normal mode over the tested range. Separately, one fixed row proves non-Hilbert--Schmidt behaviour of the declared continuum sharp-cut map; its $(\log N)^2/(2\pi^2)$ square-cutoff coefficient remains numerical pending a uniform two-index estimate.
3. **The categorical layer is relabelling here, and the correct category is elsewhere.** $\operatorname{Sol}$ is a vector space, the restriction maps are linear, the homotopy pullback is an ordinary pullback, and the $1+1$ Maxwell prototype reaches every physical conclusion by elementary holonomy and Gauss-law analysis. In an abelian $1+1$ model the language cannot fail, so it cannot be tested there either. The instinct that gluing should be a fiber product over interface data is right, but the framework that carries it with a Hilbert-space layer is von Neumann algebras with Connes fusion, not derived stacks; see `../roadmap.md` Section 3.2.

## Real Gaps

These are the gaps. Everything else in this folder is either closed, retired, or decoration.

### G1 — The port regulator has a controlled degenerating direction but no proved limit

- [ ] Action: rebuild the finite-regulator layer on the $(2N+1)$-variable variational port pencil.
  Context: $M_{\mathrm{port},N}=\begin{pmatrix}\mathbf1&\boldsymbol d\\\boldsymbol d^{\mathrm T}&2h_2\end{pmatrix}$ has $\|\boldsymbol d\|^2\to2L/3$ and $\operatorname{cond}M_{\mathrm{port},N}=O(N)$. Its configuration space contains the constrained one inside $H_0^1([-L,L])$, so min--max gives $\Omega_r^2\leq\lambda_r^{\mathrm{port}}\leq\mu_r^{\mathrm{constr}}$. Over the tested cutoffs, the port/constrained error ratio decreases from about $0.274$ to $0.250$; it is not exactly one quarter. The residual inertia $\rho_N\simeq4L/(\pi^2N)$ is the correct variational content of the truncation and identifies the singular direction that must be controlled.
  Check: compare regional and global descriptions on the same $2N+1$-dimensional port Galerkin space, exhibit the reduced canonical coordinates, verify $S^{\mathrm T}JS=J$, and compare their quadratic Hamiltonians there. Isolate the $\rho_N\to0$ direction and prove convergence in a quotient, energy, or graph topology; do not demand a uniformly bounded raw coefficient-norm condition number or delete a Ritz value by hand.

### G2 — No convergence theorem, and no topology in which one could hold

- [ ] Action: state the topology and dense core in which the finite regulator converges to the continuum boundary-feedback theory.
  Context: this is the open Phase-3 item, now sharpened. In the strong-flux description the feedback functional is a normal-derivative trace, discontinuous in the $\ell^2$ coefficient norm. In the port description $q$ is independent at finite $N$, but its residual inertia tends to zero. Convergence must therefore be asserted in an energy, graph, or quotient topology adapted to the trace and degenerating direction.
  Check: give the norm, the dense core, convergence of reconstructed solutions and of the reduced symplectic forms on that core, and the identification of the limiting one-particle comparison map. Fixed-window spectral improvement is not this statement.

### G3 — The reference-state comparison is ill posed

- [ ] Action: replace the transported product reference state by a comparison of one-particle structures on a common space.
  Context: the strict-Dirichlet regional product state is not a state on the constrained reduced phase space, where $q=\boldsymbol b^{\mathrm T}\boldsymbol c\neq0$. The forms $\delta\boldsymbol v^{\mathrm T}\wedge\delta\boldsymbol c$ and $\delta\boldsymbol v^{\mathrm T}M_N\wedge\delta\boldsymbol c$ live on the same vector space with no canonical symplectomorphism between them, which is why the uniqueness of $T_N^{\mathrm{ref}}$ in `finite-quantum-comparison.md` is unverifiable rather than merely unverified. Three declarations were tested and gave growth $O(N)$, $O(N^4)$, and $O(N^{1/2})$; all are regulator artifacts.
  Check: first resolve the port truncation's $2N+1$ canonical pairs versus the $2N$ strict-Dirichlet regional pairs by specifying a compatible reference complex structure or controlled reduction. Then formulate the comparison through regional and glued one-particle operators on a common space, in the Araki--Yamagami form, and show that the resulting criterion is independent of the coefficient presentation.

### G4 — The continuum rate is basis dependent

- [ ] Action: replace the mode cutoff $N$ by a geometric collar $\epsilon$ separating the two regions.
  Context: the proved obstruction is that one fixed odd row of the declared sharp-cut comparison is not in $\ell^2$. Square-cutoff data are consistent with $\|\boldsymbol\beta\|_{\mathrm{HS}}^2(N)=(\log N)^2/(2\pi^2)+O(\log N)$ and a mass-independent leading coefficient, but this needs a uniform two-index proof. Since $N$ is a mode count rather than a length, it is not a geometric interface law. With a collar, a split inclusion is available under the standard nuclearity hypotheses and the rate becomes a function of $L/\epsilon$.
  Check: construct the collar regulator, recompute the vacuum overlap, particle number, and reduced covariance, and validate the machinery against the single-entangling-point benchmark $S(\epsilon)=\tfrac16\log(L/\epsilon)+\mathrm{const}$ before computing anything new. Report the $\epsilon$-dependence, not a cutoff-dependence.

### G5 — Finite-regulator cut and extension dependence

- [ ] Action: quantify how the finite-regulator data depend on the cut position and on the extension of the boundary history into each region.
  Context: exact continuum independence follows from extension theory and is not the question. At finite $N$ the Galerkin space itself depends on the chosen extension $h$, because both the flux functional and the overlap vector are built from $h$. The finite Gaussian data, and therefore any large-$N$ rate extracted from them, are extension dependent.
  Check: for at least two admissible extensions and two cut positions, compare the reduced symplectic map, the Hamiltonian matrix, the covariance, and the extracted large-$N$ rate. Establish which discrepancies vanish under G2 and which do not.

### G6 — The algebraic endpoint has no content yet

- [ ] Action: replace the single global-to-matched Weyl isomorphism by a local net statement with a relative tensor product over the interface algebra.
  Context: Theorem 6.1 of `continuum-endpoints.md` says that a bijective symplectic map induces a $*$-isomorphism, which is the definition of the Weyl functor. The matched algebra already contains the continuity and flux constraints, so nothing is being glued. Operator-algebraic literature distinguishes fusion/fiber product of von Neumann algebras from Connes fusion of Hilbert bimodules or sectors, and performs fusion along nonzero intervals or specified defects under hypotheses such as finite index. A point where two intervals touch does not automatically carry a nontrivial interface algebra. See `../roadmap.md` Section 3.2 and rung 3 of its ladder.
  Check: choose a collar, overlap interval, defect, or boundary-CFT realization; assign algebras to its causally admissible regions; and prove isotony, causal commutativity, and a time-slice statement. Formulate algebra fusion as $\mathcal A_L\circledast_{\mathcal B}\mathcal A_R$ and sector fusion as $H_L\boxtimes_{\mathcal B}H_R$, proving only the operation relevant to the chosen model and stating every finite-index or representation-theoretic hypothesis. Do the chiral model first; do not assert either formula for the massive interval scalar.

### G7 — Nothing in the ladder tests what breaks at AdS--Rindler

- [ ] Action: insert a continuous-spectrum rung and a timelike stretched-horizon rung before the Maxwell rungs.
  Context: the interval prototype has a timelike interface, a discrete gapped regional spectrum, and a bounded interface response. A horizon has none of these: the interface is null, so prescribed data is characteristic rather than timelike boundary history; the regional generator is a boost with continuous spectrum; and the natural regional reference state is thermal, not the state annihilated by regional lowering operators. These rungs test extension to radiating and horizon systems; failure would restrict that extension, not invalidate bounded-cavity Maxwell calculations.
  Check: for the half line $[0,\infty)$ cut at $x=a$, where $D_2(\Omega)=-i\sqrt{\Omega^2-m^2}$, redo the flux-matching argument with radiation conditions and state what replaces the conserved regional symplectic form. For the stretched horizon at $\rho=\epsilon$, keep the interface timelike and make $\epsilon\to0$ the controlled limit.

### G8 — The categorical target, and why the derived route is now closed

- [ ] Action: either prove the bridge between the $(-1)$-shifted derived critical locus and the $0$-shifted Cauchy form, or close the derived route.
  Context: `general-framework.md` places the derived critical locus in degree $-1$ and the covariant phase space in degree $0$ and does not specify the map between them. That transgression statement is the only item in this folder that is not already available in the direct formulation. Everything else the folder computes is 0-truncated by its own corollary. Meanwhile the quantum layer has been redirected: `../roadmap.md` Section 3.2 selects BV--BFV for the classical and corner layer and conformal nets with Connes fusion for the quantum layer, on the ground that the derived formulation has no Hilbert-space layer.
  Check: state the transgression explicitly for the interval scalar with a timelike interface and prove it, or record the derived route as closed. Do not open any further categorical task in this folder, and do not open the nonlinear or gravitational phases, until either that bridge is proved or a model with corners or reducible stabilizers is on the table.

- [ ] Action: state precisely what a derived formulation would have to add once the algebraic layer exists.
  Context: if G6 succeeds, the gluing statement will already be a relative tensor product with coherence up to canonical isomorphism. A derived reformulation is then justified only if it supplies higher coherence that the bicategorical statement does not, for instance for corners or for reducible gauge stabilizers.
  Check: name the specific higher coherence, name the model in which its absence would be visible, and only then reopen the derived route.

## Retired

Closed, or closed by an external theory. Do not reopen without a specific reason.

- Precedent screening, the variable dictionary, and the candidate framework definition. Retained as `precedent-matrix.md`, `interval-scalar-prototype.md`, `general-framework.md`.
- The 0-truncated Lorentzian strong-solution reconstruction, its CPS and Hamiltonian additivity, exact cut independence, and classical associativity. Correct, and the $d=1$ case of boundary-triple and Steklov--Poincaré theory. Retired from the novelty ledger, not from the record.
- Exact continuum extension independence. Same reason.
- The restriction-induced control regulator. It glues by construction and was always labelled a control.
- Theorem 6.4 and Corollary 6.5 of `finite-regulator-compatibility.md`. Correct as stated: truncation and continuum flux reduction do not commute, and the naive retarded system is a Petrov--Galerkin scheme with a different, non-variational test space. The conclusion drawn from them, that the port pencil must be discarded, is withdrawn.
- The dyadic block argument in Theorem 4.1 of `continuum-endpoints.md`. A single row already diverges and proves non-Hilbert--Schmidt behaviour. The sharp $(\log N)^2/(2\pi^2)$ square-cutoff coefficient remains numerical pending a uniform two-index estimate.
- The $1+1$ Maxwell prototype as a test of the categorical language. It is a correct calculation and not a test: an abelian $1+1$ model cannot distinguish descent bookkeeping from elementary holonomy analysis.

## Decision Gates

- **Gate A — analytic viability:** stop broad abstraction if the scalar trace and reconstruction theorem cannot be stated on explicit function spaces.
- **Gate B — structural value:** stop calling the language explanatory if the cut-position and multi-cut tests yield no coherence statement beyond direct reconstruction.
- **Gate C — quantum value:** keep the port result classical until its degenerating direction is controlled in a stated topology, a compatible complex structure or reduction is supplied, and a reduced symplectic map and same-regulator Hamiltonian comparison are proved.
- **Gate D — continuum branch:** report Fock failure as an obstruction and move to algebraic observables; do not redefine success after seeing the asymptotics.
- **Gate E — gauge escalation:** do not begin nonlinear gauge theory or gravity until a gauge model exists in which the categorical language could fail.

### Current Gate Verdicts

- **Gate A passed.** Explicit trace spaces and a proved reconstruction isomorphism exist.
- **Gate B failed.** The cut-position and multi-cut results are corollaries of extension theory and produced no coherence statement beyond direct reconstruction. The language should no longer be described as explanatory for this model.
- **Gate C not passed.** A finite symplectic and Hamiltonian comparison exists, but on a regulator whose reduced form has no bounded continuum limit, so what it measures is the regulator. The gate reopens only after G1 and G2.
- **Gate D selects the algebraic branch,** using the exact fixed-row obstruction. The square-cutoff rate remains a numerical target; the branch's local-algebraic content is still G6.
- **Gate E not tested.** The $1+1$ abelian prototype cannot fail, so it cannot distinguish descent witnesses from redundant interface variables in a way that supports escalation.

## Verification Record

**Established in the sandbox:** the precedent boundary and the variable dictionary; the 0-truncated Lorentzian strong-solution reconstruction, CPS, cut-independence, and classical-associativity theorems; the explicit constrained and control finite pencils and their exact matrices; the noncommutation of truncation and flux reduction with the positive residual inertia $\rho_N$; the fixed-$N$ Bogoliubov and squeezed-state identities for one declared reference transport; the continuum Fock obstruction; and the $1+1$ Maxwell presymplectic reduction.

**Assumptions:** the active interval-scalar conventions of `../formalism.md` remain authoritative; sandbox work restates them and does not modify them. Numerical entries quoted above use $L=m=1$ and are reproduced by `../numerics/regulator_audit_checks.wl`.

**Not verified:** G1 through G8. In addition: convergence of any finite regulator to the continuum feedback theory, uniqueness or physical necessity of any reference transport, local algebraic descent, the propagating Maxwell cylinder, chain-level comparison with homotopy AQFT or BV--BFV constructions, nonlinear gauge theory, gravity, and every proposed research output as a paper-level theorem package.
