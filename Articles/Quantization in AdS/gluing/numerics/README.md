# Boundary-History Gluing Checks

This directory contains the active symbolic and numerical regressions:

- [corner_algebra_checks.wl](<corner_algebra_checks.wl>): 14 exact checks for joint response pullback, annihilator representatives, forbidden corner variations, retained boundary terms, tangent Hamiltonians, the false ordinary Poisson quotient, CCR relations, finite pullback composition, and harmonic history lifting. [Executed output](<corner_algebra_check_results.json>).
- [corner_classical_checks.wl](<corner_classical_checks.wl>): 8 exact groups for compatible variations/annihilators, joint release, self-action counting, corner trace divergence, Hamiltonian domain failure. [Results](<corner_classical_check_results.json>).
- [corner_quantum_checks.wl](<corner_quantum_checks.wl>): 11 exact groups for reflection jets/densities, the Klein cover normalization, finite Wick covariance and the massive versus zero-mode distinction. [Results](<corner_quantum_check_results.json>). These algebraic checks do not replace the joint-domain, PDE or microlocal proofs.
- [corner_independent_review_checks.wl](<corner_independent_review_checks.wl>): 7 independently written exact groups for nonlinear graph reconstruction, the full bracket gradient, Jacobi, and a symplectic nonlinear shear whose bare pullback fails to preserve the constant Wick/Moyal product. [Executed output](<corner_independent_review_results.json>). These complement the 33 implementation checks; they do not establish the analytic hypotheses.
- [corner_audit_supplement_checks.wl](<corner_audit_supplement_checks.wl>) and [corner_audit_supplement_checks.sage](<corner_audit_supplement_checks.sage>): 13 Mathematica and 17 Sage checks for the endpoint-response counterexample/correction, lift cancellation, semibasic mixed derivatives, independent-slot descent, lifted contact normalization, finite affine averaging, and the new-order unitarity coefficient through order 6. [Executed output](<corner_audit_supplement_results.json>). Energy-space Green identities, PDE equivalence, distribution descent and renormalization induction are proved separately in the notes.
- [rectangle_self_sewing_checks.sage](<rectangle_self_sewing_checks.sage>) and [rectangle_self_sewing_checks.wl](<rectangle_self_sewing_checks.wl>): exhaustive twelve-pairing vertex-link/homology/cone-angle audit and 19 exact scalar/action/group/mode/trace checks for [rectangle self-sewing](<../models/rectangle scalar self-gluing.md>). [Results](<rectangle_self_sewing_results.json>) retain the executed output and setup correction; continuum form-domain and algebra claims have separate proof arguments in the note.
- [ym_1p1_quantum_sewing_checks.wl](<ym_1p1_quantum_sewing_checks.wl>) and [ym_1p1_quantum_sewing_checks.sage](<ym_1p1_quantum_sewing_checks.sage>): 30 Mathematica and 9 Sage exact groups for the interval YM quantum note, including Lie/flux signs, cut action, Casimir/length intertwining, Haar witnesses, and SU(2) singlets and Casimirs. [Results](<ym_1p1_quantum_sewing_results.json>) record the tested ranges and setup corrections. General PBW, microlocal regularity and operator-domain proofs remain in the notes.
- [observable_sewing_scalar_mode_checks.wl](<observable_sewing_scalar_mode_checks.wl>): four normalization, orthogonality, homogeneous-wave and Dirichlet-endpoint checks for the finite-rank kernels in the on-shell ideal proof. [Results](<observable_sewing_scalar_mode_results.json>). The normal-topology convergence argument is in the free scalar note.
- [Observable sewing document validation](<observable_sewing_validation.md>): the final proof-note parsing, formula conversion, link and scope checks.
- [observable_sewing_ym_audit_checks.wl](<observable_sewing_ym_audit_checks.wl>): 23 exact groups for the nonlinear full-gradient/transpose/Jacobi identities, the Noether-flux counterexample, and framed SU(2) moment maps, reduction, Wilson/transition composition, and dynamics. [Results](<observable_sewing_ym_audit_results.json>), [two covariant xAct checks with exact inputs](<observable_sewing_noether_xact_results.json>), and [the scalar 30-group recheck](<observable_sewing_scalar_recheck_results.json>) are saved separately. These do not prove the analytic or general-group theorems in the notes.
- [renormalized_scalar_sewing_checks.wl](<renormalized_scalar_sewing_checks.wl>): 30 exact groups checking polynomial normalizations, classical sewing identities, lifted energy, the Feynman contact sign, and Wick energy products. [Saved results](<renormalized_scalar_sewing_check_results.json>) also record the 48-group reproduction of the imported audit script. These checks do not prove PDE existence or microlocal closure.
- ads2_rindler_partial_trace_gaussian.py: two factorizing global-Cauchy lattices, finite global Gaussian vacuum, exact right reduction, Williamson/modular reconstruction, entropy, $RR/LR$/Weyl/collar convergence tables, and real boost-flow comparisons supporting the new regulated-partial-trace note.
- ads2_rindler_partial_trace_checks.wl: exact boost-charge and Gaussian thermal identities plus high-precision modular-kernel/boost-kernel pairings for the new regulated-partial-trace note.

- `natural_method_feedback_spectrum.wl`: centered scalar feedback spectrum and Galerkin cross-check.
- `regulator_audit_checks.wl`: scalar conditioning, Rayleigh--Ritz ordering, and residual port inertia.
- `port_canonical_normal_form_checks.wl`: scalar port mass, Schur, canonical-map, complex-structure, and covariance identities retained with `../deprecated/port-canonical-normal-form.md` and absorbed into `../formalism.md`.
- `feedback_port_canonical_bridge_checks.wl`: scalar feedback, reconstructed-mode projection, Hamiltonian, and CCR identities retained with `../archived/feedback-port-canonical-bridge.md` and absorbed into `../formalism.md`.
- `continuum_closure_mode_checks.wl`: scalar connected-mode, boundary, equation, oriented-flux, and regional-sign identities supporting `../functional analysis proof of well-definedness of finite truncation.md`.
- `reduced_state_open_system_scalar_checks.wl`: scalar finite Hamiltonian sector split, Gaussian covariance and Williamson reductions, port-only mixedness, entropy growth through (N=256) and mass dependence, finite modular-matrix reconstruction and fixed-family diagnostics, exact response identity, time-domain region-2 elimination, noise commutator, isolated-bath KMS/FDR weights, and correlated-glued-vacuum diagnostics supporting `../reduced-state-open-system-scalar.md`.
- `port_product_fock_checks.wl`: optional scalar finite-\(N\) Bogoliubov and fixed-row ultraviolet checks supporting `../Fock failure.md`.
- `noncentral_cut_checks.wl`: arbitrary-cut scalar determinant, unequal-length lifting, Schur form, residual inertia, and positivity.
- `associativity_checks.wl`: scalar two-port Gram, Schur, symplectic, and Hamiltonian associator.
- `maxwell_quantize_first_gluing_checks.wl`: \(1+1\) reduced Hamiltonian; \(2+1/3+1\) divergence, curl--curl, gluing determinants, mode normalizations, and Neumann-lifting coefficients.
- `yang_mills_1p1_checks.py`: deterministic \(SU(2)\) transition-function and prescribed-history Hamiltonian covariance, two-cell moment-map/one-form reduction, connected Hamiltonian normalization, Peter--Weyl singlet and Casimir data through highest weight \(n=8\), three-cell cotangent reduction, and finite representation-space Haar-projector witnesses.
- `ads2_rindler_null_reconstruction_checks.wl`: AdS$_2$ null lowest weight, characteristic ladder, reconstructed KG modes, direct null-Hamiltonian variation, corner cancellation, KMS/reflection phase, and finite-link sensitivity checks supporting `../ads2-rindler global reconstruction.md`.
- `ads2_rindler_finite_zn_source_audit.py`: read-only parser for the original `ads2_rindler_gluing.zip`, verifying the distinct wall-position $Z$ and mode-count $N$ regulators, projected global Noether energy, wall-value vector, and rank-one link.
- `ads2_rindler_discrete_spectral.wl`: exact finite spectral-DVR/Jacobi consistency regression for the arbitrary-precision $\Delta=2$ semi-analytic global--Rindler kernels. Its matched-cutoff CCR, thermal and KMS closures are algebraically forced by the common Ritz realization and are not independent continuum evidence.
- `ads2_rindler_independent_spectral_bins.wl`: independent normalized top-hat spectral bins with preassigned Gauss--Legendre integration, direct bin-integrated thermal targets, joint-$R+L$ inverse checks, and exact projected boost multiplication for the full complex-strip KMS diagnostic. It records the presently nonzero truncation/projection errors without fitting the weights to the kernels.
- `ads2_rindler_overlap_quadrature_audit.wl`: independent Abel-damped spatial-integration and working-precision audit of four selected $\Delta=2$ semi-analytic overlap kernels.

The smearing, collar, smooth-interface, and earlier incomplete regional comparison scripts are preserved under `../deprecated/numerics/`.

Run the checks from this directory with:

```sh
wolframscript -file renormalized_scalar_sewing_checks.wl
wolframscript -file natural_method_feedback_spectrum.wl
wolframscript -file regulator_audit_checks.wl
wolframscript -file port_canonical_normal_form_checks.wl
wolframscript -file feedback_port_canonical_bridge_checks.wl
wolframscript -file continuum_closure_mode_checks.wl
wolframscript -file reduced_state_open_system_scalar_checks.wl
wolframscript -file port_product_fock_checks.wl
wolframscript -file noncentral_cut_checks.wl
wolframscript -file associativity_checks.wl
wolframscript -file maxwell_quantize_first_gluing_checks.wl
python3 yang_mills_1p1_checks.py
wolframscript -file ads2_rindler_null_reconstruction_checks.wl
python3 ads2_rindler_finite_zn_source_audit.py /path/to/ads2_rindler_gluing.zip
wolframscript -file ads2_rindler_discrete_spectral.wl 64 64 32 90 12
wolframscript -file ads2_rindler_independent_spectral_bins.wl 64 4 0.2 4 16 80 8
wolframscript -file ads2_rindler_overlap_quadrature_audit.wl 60
```

Verified exactly in the active suite: the displayed scalar finite-matrix, port, feedback, reduced-state/open-system, continuum-mode, arbitrary-cut, associativity, and optional product-reference identities; the Maxwell transverse and longitudinal-normal polarization equations; both Maxwell gluing determinants; the connected-mode normalizations; the Neumann-lifting coefficients; the \(1+1\) reduced Hamiltonian; and the AdS$_2$ null lowest-weight/ladder, KG, Hamiltonian-variation, corner, reflection-phase, and KMS residuals. The Yang--Mills script separately supplies finite \(SU(2)\) matrix and representation-space witnesses; the general compact-\(G\) statements remain the analytic proofs in the note. The finite-$(Z,N)$ source facts are separately checked by the archive parser.

The AdS$_2$ partial-trace suite separately verifies the finite Hamiltonian/covariance/Williamson/density-matrix identities, the boost Killing vector and charge normalization, and records rather than hides the cutoff-dependent covariance, entropy, modular-kernel, and boost-flow errors.

The $\Delta=2$ exact DVR suite verifies the elementary standing-wave overlap reduction, boost-Jacobi recurrence, phase-locked thermal relation, and its algebraically forced finite Gaussian identities. The independent-bin suite separately exposes genuine global, spectral-range, bin-resolution, quadrature and precision errors. Its current full-strip KMS residual is not converged and is recorded as such. Neither suite proves a general-$\Delta$ continuum theorem or a sharp Fock-factorization result.

Numerically reproduced in the scalar suite: fixed-window spectral convergence, the recorded matrix conditioning, finite-regulator symplectic and Hamiltonian residuals, covariance scaling, and the optional product-reference tables. These remain at their stated numerical claim tier.

The scalar Mosco/resolvent, wave, trace, symplectic, and smeared-correlator theorem is proved in `../functional analysis proof of well-definedness of finite truncation.md`. Not verified here: a universal scalar convergence rate, the exact large-\(N\) optional-product fidelity decay, cutoff-uniform convergence of the Maxwell regulators, charged matter, nontrivial Maxwell bundles, or different physical-wall conditions.
