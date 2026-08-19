# Boundary-Driven Feedback Checks

This directory contains the active numerical check for `../formalism.md`:

- `natural_method_feedback_spectrum.wl`: truncated regional Dirichlet-to-Neumann feedback spectrum and a connected Galerkin cross-check.
- `finite_cutoff_canonical_gluing.wl`: the positive $2N$-mode reduced feedback model, its explicit symplectic normal-mode map, Hamiltonian intertwining, and vacuum covariance.
- `finite_cutoff_gaussian_vacuum.wl`: the finite-$N$ Bogoliubov matrices, squeezed global vacuum, covariance cross-check, and regulated overlap, occupation and energy diagnostics.
- `finite_cutoff_entanglement.wl`: the left-right reduced Gaussian states, symplectic spectra, entropies, mutual information, modular matrix, and purity block identities.
- `finite_cutoff_correlators.wl`: global-mode and covariance Wightman functions, cross/interface/mixed correlators, projected equations, matching conditions, and reduced equal-time CCR.
- `off_center_cut.wl`: off-center Dirichlet-to-Neumann roots, common-pole modes, no-parity symplectic and Gaussian construction, modewise $L^2$ normalization, and fixed-window cut-independence tests.
- `lifting_function_independence.wl`: exact finite-span lift-change conjugacy and cotangent equivalence, plus fixed-window convergence for a smooth infinite-tail change.
- `three_region_associativity.wl`: equality of the two Schur orders for the feedback map, canonical Hamiltonian, vacuum covariance and Wightman function.
- `scalar_cylinder.wl`: exact cylinder-channel overlaps, finite polar canonical maps, Bogoliubov checks, and radial--angular Hilbert--Schmidt partial sums.
- `maxwell_1p1.wl`: interface moment-map reduction, symplectic pullback, Hamiltonian equality and compact-$U(1)$ flux sectors.
- `maxwell_cylinder.wl`: transverse-vector overlap integration, polar channel maps, Bogoliubov identities, covariance purity and the harmonic rotor.
- `ads_rindler_wedge.wl`: preserved global-completion and intrinsic-wedge checks, plus brick-wall density and Hilbert--Schmidt diagnostics.

The primary finite regulator keeps $N$ strict Dirichlet modes on each half interval and glues them through the common boundary port. Its spectrum consists of the $N$ poles and $N$ zeros of the truncated Dirichlet-to-Neumann response. The even global tower is exact at every sufficient cutoff, while the affected tower converges in a fixed low-energy window.

The alternative Galerkin pencil obtained by promoting $q$ to an unconstrained coordinate has $2N$ convergent low modes and one additional port mode whose frequency grows with the cutoff. It is retained only as a diagnostic cross-check; the extra port mode is not a candidate physical oscillator for quantum gluing.

Run the check from this directory with:

```sh
wolframscript -file natural_method_feedback_spectrum.wl
wolframscript -file finite_cutoff_canonical_gluing.wl
wolframscript -file finite_cutoff_gaussian_vacuum.wl
wolframscript -file finite_cutoff_entanglement.wl
wolframscript -file finite_cutoff_correlators.wl
wolframscript -file off_center_cut.wl
wolframscript -file lifting_function_independence.wl
wolframscript -file three_region_associativity.wl
wolframscript -file scalar_cylinder.wl
wolframscript -file maxwell_1p1.wl
wolframscript -file maxwell_cylinder.wl
wolframscript -file ads_rindler_wedge.wl
```

Verified: finite-matrix even-tower exactness, positivity of the displayed Galerkin kinetic matrix, the truncated feedback spectrum, fixed-window spectral convergence, positivity of the reduced canonical quadratic forms, equality of its symmetric-sector frequencies with the Dirichlet-to-Neumann zeros, exact finite-cutoff flux matching, $S_N^{\mathrm T}JS_N=J$, Hamiltonian intertwining, the transformed vacuum covariance identities at $N=1,2,4,8$, the squeezed-state, covariance and regulated diagnostic identities through $N=16$, a stored diagnostic and effective-exponent sequence through $N=64$, the determinant identities used in the analytic Shale--Stinespring failure argument, the reduced-state entanglement and modular-matrix identities at $N=1,2,4,8$, and the mode-sum/covariance correlator identities with their projected equations, matching conditions and reduced CCR at $N=1,2,4,8$.

Not verified: uniform ultraviolet convergence, cut or normalization independence of the centered hybrid-regulator vacuum diagnostics, or interacting/gauge-theory quantum gluing. Continuum Fock-space equivalence fails for the stated centered hybrid regulator; the off-center audit shows that this is not yet a regulator-independent conclusion.
