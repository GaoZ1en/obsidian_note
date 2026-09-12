# Einstein–Scalar Spectrum in Global AdS3

This is the research workspace for the minimal Einstein–real-scalar system, separated from the pure-gravity and massive-gravity tracks. The six existing notes and eleven scripts/data files were moved here from the parent directory; their derivation baseline is commit `3ea676ef`. Relative links were rebased.

## Start here

- [Current article](article/paper.pdf) and [editable TeX](article/paper.tex): all-level tree coefficients with the audited paired-collapse and primary-branch arguments.
- [Revision-2 audit](revision%202%20audit.md): the three previously open items, new independent checks, and the remaining physical assumptions.
- [First closed-form audit](closed%20form%20spectrum%20audit.md): preserved intake findings and baseline verification history; outstanding items are updated by the revision-2 audit.
- [Next work](TODO.md): concrete validation and manuscript tasks.
- [External manuscript intake](imported/README.md): preserved TeX/PDF/source package, provenance and file hashes.

## Existing derivations and checks

| File | Description |
|---|---|
| `gravitation scalar interaction.md` | Minimally coupled Einstein–scalar theory in global AdS3: action/CPS expansion, free-mode perturbation theory, and explicit circular scalar backreaction before computing spectra. |
| `gravity scalar one and two particle spectrum.md` | Physical-mass single-particle spectrum and algebraic two-scalar primary reconstruction: 25 symbolic coefficients through level eight, low-spin shifts, and the universal higher-spin result. |
| `scripts/gravity_scalar_spectrum_checks.wl` | Exact circular constraints, canonical and response-action binding coefficients, resonant scalar frequency, and first degenerate-block checks. |
| `scripts/gravity_scalar_radial_blocks.wl` | Exact radial matrix elements and Hahn-polynomial reconstruction of the general two-scalar primary shifts. |
| `scripts/gravity_scalar_radial_block_checks.wl` | Symbolic checks through level eight, including unused off-diagonal residuals and high-spin comparisons. |
| `scripts/gravity_scalar_representation_checks.sage` | Independent exact-rational chiral representation, Casimir and reconstruction checks. |
| `scripts/gravity_scalar_primary_spectrum_data.wl` | Saved leading primary energy-shift coefficients for generic Delta, with radial index plus absolute spin at most eight. |
| `scripts/gravitation_scalar_interaction_checks.wl` | xAct checks of the retained Einstein–scalar expansion, including quadratic/cubic Einstein densities and their total derivatives. |
| `scripts/gravitation_scalar_solution_checks.wl` | Covariance identities, circular Einstein constraints, lowest-mode backreaction, and scalar-mode checks in fresh kernels. |
| `de Donder gauge accessibility.md` | Local accessibility, finite-time on-shell accessibility for the stated generic-mass expansion class, and the deferred resonant limit. |
| `scripts/de_donder_accessibility_checks.wl` | Gauge and Einstein identities, the off-shell boundary counterexample, and the on-shell trace resonance. |
| `Einstein response in de Donder gauge.md` | Bilinear scalar-response kernel, homogeneous-data convention, and proposed scalar/boundary-graviton free-energy cutoff. |
| `Einstein response kernel construction.md` | Explicit Euclidean de Donder kernel, three closed spin-2 coefficient functions, retarded continuation, and its test-source domain. |
| `Einstein scalar response prescription.md` | Finite scalar-source kernel: explicit static seed, opposite-frequency isometry recursion, conserved Abel prescription, no-log matching, and constraint-compatible data. |
| `scripts/einstein_scalar_kernel_completion_checks.wl` | Static seed/gauge checks, scalar ladders, finite-part prescription, and an evaluated finite source Gram matrix. |
| `scripts/einstein_kernel_checks.wl` | Covariant source decomposition, spin-2 bulk-to-boundary checks, scalar normalization, and exact kernel coefficient integrals. |
| `scripts/de_donder_onshell_response_checks.wl` | On-shell boundary constraints, gauge recursion, Proca reduction, radial response matrices, and explicit scalar-pair checks. |

## New verification

| File | Description |
|---|---|
| `scripts/closed_form_spectrum_audit.wl` | Compare all 25 saved coefficients, channel identities, exceptional limits, and reconstruct the finite-band uniqueness certificate. |
| `scripts/closed_form_spectrum_audit_results.json` | Machine-readable results from the local Mathematica run; scope is specified in the audit note. |
| `scripts/exchange_contact_audit.wl` | Independent xAct/xPert/xTras checks of the local contact decomposition and conformal Einstein response. |
| `scripts/exchange_contact_audit_results.json` | Three tensor residuals and their exact verification status. |
| `scripts/imported_*_rerun_results.json` | Fresh symbolic, tensor and 588-coefficient radial rerun results, separate from imported originals. |
| `scripts/revision2_tensor_audit.wl` | Arbitrary off-shell Einstein identity and both Green currents, checked with xAct/xPert/xTras. |
| `scripts/revision2_component_audit.wl` | xCoba six-component tensor Casimir operator, scalar KG equations and all three response equations at symbolic mass. |
| `scripts/revision2_noncircular_audit.wl` | Direct general-mass noncircular integration, Killing identities and KG normalization. |
| `scripts/revision2_branch_audit.sage` | Virasoro commutator, Gram/projector and 81 finite character coefficient checks. |
| `scripts/revision2_*_results.json` | Executed independent revision-2 reports, kept outside the preserved imports. |

The three requested additions are now audited and incorporated. At fixed finite level the connected coefficients give the scalar-primary energy branch under the stated positive-energy, non-null Virasoro representation and absence of a distinct degenerate matter primary. Extra-primary mixing at special masses and a nonperturbative Hilbert-space construction are not claimed. The physical single-scalar mass remains an input.
