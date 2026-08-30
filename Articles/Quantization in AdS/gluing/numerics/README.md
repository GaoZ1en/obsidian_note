# Boundary-History Gluing Checks

This directory contains the active symbolic and numerical regressions:

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

The smearing, collar, smooth-interface, and earlier incomplete regional comparison scripts are preserved under `../deprecated/numerics/`.

Run the checks from this directory with:

```sh
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
```

Verified exactly in the active suite: the displayed scalar finite-matrix, port, feedback, reduced-state/open-system, continuum-mode, arbitrary-cut, associativity, and optional product-reference identities; the Maxwell transverse and longitudinal-normal polarization equations; both Maxwell gluing determinants; the connected-mode normalizations; the Neumann-lifting coefficients; the \(1+1\) reduced Hamiltonian; and the AdS$_2$ null lowest-weight/ladder, KG, Hamiltonian-variation, corner, reflection-phase, and KMS residuals. The Yang--Mills script separately supplies finite \(SU(2)\) matrix and representation-space witnesses; the general compact-\(G\) statements remain the analytic proofs in the note. The finite-$(Z,N)$ source facts are separately checked by the archive parser.

The AdS$_2$ partial-trace suite separately verifies the finite Hamiltonian/covariance/Williamson/density-matrix identities, the boost Killing vector and charge normalization, and records rather than hides the cutoff-dependent covariance, entropy, modular-kernel, and boost-flow errors.

Numerically reproduced in the scalar suite: fixed-window spectral convergence, the recorded matrix conditioning, finite-regulator symplectic and Hamiltonian residuals, covariance scaling, and the optional product-reference tables. These remain at their stated numerical claim tier.

The scalar Mosco/resolvent, wave, trace, symplectic, and smeared-correlator theorem is proved in `../functional analysis proof of well-definedness of finite truncation.md`. Not verified here: a universal scalar convergence rate, the exact large-\(N\) optional-product fidelity decay, cutoff-uniform convergence of the Maxwell regulators, charged matter, nontrivial Maxwell bundles, or different physical-wall conditions.
