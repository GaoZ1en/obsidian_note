# Stacky CPS Sandbox

> Status: exploratory side project. Nothing in this folder is part of the active boundary-feedback formalism unless it is later rederived and moved deliberately.

## Purpose

This folder tests whether the interval-scalar covariant phase-space construction becomes clearer when expressed through smooth stacks, derived critical loci, and boundary fiber products.

The exercise is intentionally informal in presentation but conservative in its claims. It does not replace the action-first language of prescribed boundary histories, continuity, flux matching, reconstructed fields, or canonical quantization used in `../formalism.md`.

## Current Verdict

The proposed language has substantial precedents. In particular:

- Cattaneo--Mnev--Reshetikhin construct the scalar boundary phase space with boundary field and momentum, and formulate cutting and gluing of Euler--Lagrange moduli spaces.
- Cattaneo--Mnev prove a weak-equivalence statement for the fiber-product gluing of the Riemannian massless scalar BV complex.
- Mathieu--Murray--Schenkel--Teh use a homotopy pullback, a derived critical locus, and Cauchy-surface transgression to construct a Lorentzian extended phase space for linear Yang--Mills theory with a timelike boundary.
- Paugam explicitly develops a derived covariant phase space as homotopical BV--Poisson reduction.

Therefore neither “stacky CPS” nor “scalar gluing by fiber products” is a novelty claim. The project-specific target is narrower: a Lorentzian timelike-interface formulation whose fibers are the prescribed-history spaces $\mathcal P_i[q_i]$, whose common-boundary variation produces flux matching, and whose finite-regulator reduction can be compared with the active canonical quantize-first/glue-first construction. The 0-truncated strong-solution part is now proved in `lorentzian-linear-target.md`; the derived-complex and finite-regulator parts remain open.

## Files

- `TODO.md`: the real gaps, the retired items, decision gates, and current gate verdicts.
- `lorentzian-linear-target.md`: proved 0-truncated Lorentzian strong-solution gluing theorem, trace spaces, CPS compatibility, arbitrary-cut independence, and classical associativity.
- `finite-regulator-compatibility.md`: exact control theorem, explicit strong-flux constrained reduction, the residual port-inertia theorem, corrected canonical coordinates, and the remaining regulator-convergence tests.
- `finite_regulator_feedback_checks.wl`: direct integral checks for the constrained and independent-port matrices, finite-$N$ positivity and symplectic residuals, exact relative-sector spectrum, the retarded/constrained evolution discrepancy, and fixed-window numerical error decrease.
- `finite-quantum-comparison.md`: explicit symplectic transport of the regional product reference structure, fixed-$N$ Bogoliubov and squeezed-state theorem, covariance comparison, and the continuum warning.
- `finite_quantum_gaussian_checks.wl`: finite-$N$ CCR, squeezing, normalization, uncertainty, particle-number, and vacuum-overlap checks.
- `continuum-endpoints.md`: parity-resolved DD-to-DN Bogoliubov calculation, analytic Fock obstruction, exact matched Weyl-algebra gluing, and the longer local-algebra programme.
- `continuum_dd_dn_checks.wl`: direct overlap and massless-$\beta$ checks plus square-cutoff partial sums for $m=0$ and $m=1$.
- `maxwell-1p1-prototype.md`: minimal groupoid-valued connection descent, electric-flux matching, presymplectic reduction, and boundary-variable classification.
- `maxwell_1p1_reduction_checks.wl`: dressed-holonomy gauge invariance, rank/kernel, reduced symplectic form, and Hamiltonian pullback checks.
- `general-framework.md`: a model-independent candidate definition of relative stacky CPS, action-first gluing, gauge reduction, and the separate canonical-quantization layer.
- `precedent-matrix.md`: exact precedents, translation into the present notation, and missing results.
- `interval-scalar-prototype.md`: an informal stacky/derived formulation of the active interval scalar and a list of candidate propositions.

## Current Phase

The strong interval-scalar analytic and 0-truncated classical phases are closed. Boundary-triple and Steklov--Poincare theory supplies the corresponding scalar spatial-operator reconstruction under its domain hypotheses, while the precise bridge to Lorentzian CPS remains a separate project statement. At finite regulator, the strong-flux constrained action gives an exact canonical and Gaussian comparison, but on a pencil whose reduced symplectic form has no bounded continuum limit, so the comparison measures the regulator; see `../archived/formalism_audit.md` and `TODO.md` gap G1. The independently truncated retarded equations are a different, non-variational system, while the $(2N+1)$-variable port pencil is the sound conforming classical candidate. Its residual inertia tends to zero, its raw condition number grows as $O(N)$, and its extra canonical pair still needs a reference complex structure or controlled reduction. In the continuum, one fixed odd row proves that the declared parity-resolved sharp-cut comparison is non-Hilbert--Schmidt. Square partial sums are numerically consistent with the coefficient $(\log N)^2/(2\pi^2)$, but a uniform two-index proof is open. The project therefore takes an algebraic branch whose current content is only the tautological matched Weyl-algebra isomorphism. The minimal $1+1$ Maxwell prototype reaches every physical conclusion by elementary holonomy and Gauss-law analysis, so it does not test whether the categorical language is needed. Local algebraic descent, the shifted-to-unshifted bridge, propagating Maxwell theory, and gravity remain open.

## Claim Levels

- **Established in cited literature:** the statements attributed to a paper, within that paper's hypotheses.
- **Checked here:** the elementary variational identities; the 0-truncated strong-solution gluing, CPS, cut-independence, and classical-associativity theorems; the finite-$N$ port-inertia/noncommutation formulas; the constrained-regulator Gaussian identities at fixed $N$; fixed-row non-Hilbert--Schmidt behaviour of the declared continuum comparison; and the matched Weyl-algebra isomorphism for the interval scalar.
- **Candidate definition:** notation proposed for this sandbox.
- **Target:** a statement that would require a proof in the Lorentzian functional-analytic and canonical setting.

No quantum equivalence follows from the categorical reformulation alone.
