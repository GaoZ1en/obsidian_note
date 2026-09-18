# Einstein–Scalar Spectrum in Global AdS3

This workspace studies the minimal Einstein–real-scalar system in global AdS3. The current presentation consists of the main notes below. Other notes and scripts supply supporting calculations, technical inputs, and verification records; consult them as needed for a particular step in the main argument.

## Main Notes

Read these in order:

1. [gravitation scalar interaction.md](Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/perturbation.md): the action and covariant phase space expansion, free modes, perturbative equations, and scalar-sourced gravitational response. This sets up the interaction used in the spectrum calculation.
2. [gravity scalar one and two particle spectrum.md](Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/two%20particle%20spectrum.md): the physical-mass convention, interaction Hamiltonian, one- and two-particle energies, and organization of the two-particle spectrum into primaries and descendants. The Results and Mass Convention section collects the spectrum; the algebraic reconstruction explains how its coefficients are obtained.
3. [OFPT two particle energy shifts.md](OFPT%20two%20particle%20energy%20shifts.md): a fresh derivation from the boundary Hamiltonian and constraint-reduced OFPT, including the lowest-pair integral, degenerate mixing, explicit finite radial sums, and primary reconstruction. Independent Hamiltonian checks reach radial index plus absolute spin eight. An all-index analytic supplement evaluates primary sources and proves crossed-recurrence uniqueness using an explicitly stated high-spin inversion input; a direct all-index summation of the Hamiltonian formula and complete boundary-graviton mixing remain outside the calculation.

4. [Einstein scalar solutions on the vacuum orbit.md](Einstein%20scalar%20solutions%20on%20the%20vacuum%20orbit.md): transport the full sourced solution, response prescription and CPS variations to admitted smooth vacuum-orbit backgrounds; distinguish covariance from higher-order existence and convergence.
5. [Einstein scalar spectra on the vacuum orbit.md](Einstein%20scalar%20spectra%20on%20the%20vacuum%20orbit.md): transport the reference connected scalar-primary spectrum with its existing assumptions, calculate fixed-boundary charge expectations, and state the additional Cauchy-foliation condition for Floquet evolution.

These notes are the working account to read and discuss. Supporting material supplies individual ingredients under its stated assumptions, rather than an alternative presentation that must be read in full.

## Supporting Calculations

| Note | Input to the main notes |
|---|---|
| [Einstein scalar response prescription.md](Einstein%20scalar%20response%20prescription.md) | The scalar-source response prescription, homogeneous-data choices, and regularity and boundary conditions used in the interaction calculation. |
| [Einstein response in de Donder gauge.md](Einstein%20response%20in%20de%20Donder%20gauge.md) | Bilinear response setup and gauge conventions. |
| [Einstein response kernel construction.md](Einstein%20response%20kernel%20construction.md) | Detailed kernel construction and its domain of application. |
| [de Donder gauge accessibility.md](de%20Donder%20gauge%20accessibility.md) | Gauge-accessibility arguments and the restrictions on their use. |
| [closed form spectrum audit.md](closed%20form%20spectrum%20audit.md) | Closed-form coefficients, channel identities, and reconstruction checks; retain its historical audit statements as verification context. |

Use these as technical inputs to the relevant calculation. A checked identity or finite-level test supports the stated step; it does not enlarge the physical scope of the main notes by itself.

## Computational Checks and Data

The scripts and saved reports below support the derivations. Their descriptions identify the calculation or check they contain; consult the corresponding assumptions and report for its verification scope.

| File | Description |
|---|---|
| `scripts/ofpt_two_particle_checks.wl` | Fresh constraint-reduced OFPT calculation, direct quartic coefficient extraction, finite primary reconstruction and symbolic closed-spectrum comparisons; loads no previous spectrum implementation or data. |
| `scripts/ofpt_primary_basis_checks.sage` | Independent exact lowering/raising, Hahn, exchange-parity and inversion checks for the OFPT primary basis. |
| `scripts/ofpt_all_index_checks.wl` | Arbitrary-index primary normalization, source integrals, stress logarithm, crossed recurrence and low-spin uniqueness certificates; high-spin inversion is stated separately as analytic input. |
| `scripts/ofpt_primary_tensor_checks.wl` | xCoba checks of the primary vector/tensor at arbitrary energy, including lowering, transversality, wave equations and contractions. |
| `scripts/vacuum_orbit_transport_checks.wl` | Independent Mathematica clock/action normalization checks and an xCoba counterexample showing why periodicity alone does not ensure a spacelike fixed-time foliation. |
| `scripts/graviton_scalar_vertices_checks.wl` | Tensor/covariance identities, linear constraint flux, boundary-energy limit, TT seed energy normalization, and coefficient checks for the Hamiltonian note. |
| `scripts/gravity_scalar_primary_descendant_checks.sage` | Independent exact Fock-space basis, Gram normalization, and lowering-operator checks in 75 two-scalar blocks. |
| `scripts/gravity_scalar_spectrum_checks.wl` | Exact circular constraints, canonical and response-action binding coefficients, resonant scalar frequency, and first degenerate-block checks. |
| `scripts/gravity_scalar_radial_blocks.wl` | Exact radial matrix elements and Hahn-polynomial reconstruction of the general two-scalar primary shifts. |
| `scripts/gravity_scalar_radial_block_checks.wl` | Symbolic checks through level eight, including unused off-diagonal residuals and high-spin comparisons. |
| `scripts/gravity_scalar_representation_checks.sage` | Independent exact-rational chiral representation, Casimir and reconstruction checks. |
| `scripts/gravity_scalar_primary_spectrum_data.wl` | Saved leading primary energy-shift coefficients for generic Delta, with radial index plus absolute spin at most eight. |
| `scripts/gravitation_scalar_interaction_checks.wl` | xAct checks of the retained Einstein–scalar expansion, including quadratic/cubic Einstein densities and their total derivatives. |
| `scripts/gravitation_scalar_solution_checks.wl` | Covariance identities, circular Einstein constraints, lowest-mode backreaction, and scalar-mode checks in fresh kernels. |
| `scripts/de_donder_accessibility_checks.wl` | Gauge and Einstein identities, the off-shell boundary counterexample, and the on-shell trace resonance. |
| `scripts/einstein_scalar_kernel_completion_checks.wl` | Static seed/gauge checks, scalar ladders, finite-part prescription, and an evaluated finite source Gram matrix. |
| `scripts/einstein_kernel_checks.wl` | Covariant source decomposition, spin-2 bulk-to-boundary checks, scalar normalization, and exact kernel coefficient integrals. |
| `scripts/de_donder_onshell_response_checks.wl` | On-shell boundary constraints, gauge recursion, Proca reduction, radial response matrices, and explicit scalar-pair checks. |
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

## Planning and Earlier Material

[TODO.md](TODO.md) retains the earlier audit and manuscript task list. Read its historical completion statements in that context; the current reading order and working presentation are the main notes above. Earlier drafts, intake material, and audit reports are supporting or historical material, not additional main references.
