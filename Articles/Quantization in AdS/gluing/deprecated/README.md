# Deprecated Gluing Approaches

Status: deprecated on 2026-08-19; archive expanded on 2026-08-20.

This directory preserves the former finite-coupling, boundary-penalty, lattice, curved-space, gauge-field, AdS--Rindler, article, and numerical tracks. It also preserves the later smearing, collar, smooth-interface, and regional-product-Fock comparison branches. They have been removed from the active project because the current formulation starts from regional solution spaces over boundary data, interface flux balance, and symplectic reduction; none of these auxiliary regulator or representation comparisons is required to define canonical gluing.

Deprecation is a project-level decision. It does not retroactively invalidate every calculation in these files: several finite matrices, spectra, endpoint limits, and presymplectic reductions were independently checked and remain useful as historical comparisons or benchmarks. They should not, however, be cited as the current conceptual definition of gluing.

The active entry points are:

- `../README.md`
- `../formalism.md`
- `../TODO.md`
- `../numerics/natural_method_feedback_spectrum.wl`

Archive layout:

- `continuous theory I.md` through `continuous theory V.md`: former continuum tracks.
- `lattice theory.md`, `nonuniform periodic scalar lattice.md`, `finite truncation.md`, and `finite_truncation.wl`: former regulator and truncation tracks.
- `smeared-interface-regulator.md`: centered observable smearing and its canonical-pair covariance diagnostics.
- `collar-interface-regulator.md` and `full-collar-galerkin-quantum-test.md`: positive-collar transfer data and the negative test of the simplest sharply decoupled three-region product state.
- `smooth-interface-gaussian-regulator.md`: finite-coupling smooth potential and its singular exact-split limit.
- `continuum_fock_diagnostic.md`: optional ultraviolet comparison with a sharply factorized regional product-Fock representation.
- `ads-rindler gluing.md`: former AdS--Rindler reconstruction track.
- `article/`: former Pandoc/LaTeX manuscript and generated artifacts.
- `numerics/`: former multi-model verification suite plus the archived smearing, collar, and smooth-interface scripts; its preserved `README.md` records their claim boundaries.
- `TODO.md`: superseded project task list.

The 2026-08-20 archive decision is not a verdict that gluing failed. It closes auxiliary attempts to obtain a preferred regional tensor-product state or to cure a point-interface representation comparison. The active finite-$N$ port/feedback equivalence and its intrinsic glued Hamiltonian remain in the parent directory.
