# Deprecated Gluing Approaches

Status: deprecated on 2026-08-19.

This directory preserves the former finite-coupling, boundary-penalty, lattice, curved-space, gauge-field, AdS--Rindler, article, and numerical tracks. They have been removed from the active project because the current formulation starts from regional solution spaces over boundary data, interface flux balance, and symplectic reduction rather than using a large quadratic coupling as the primary definition of gluing.

Deprecation is a project-level decision. It does not retroactively invalidate every calculation in these files: several finite matrices, spectra, endpoint limits, and presymplectic reductions were independently checked and remain useful as historical comparisons or benchmarks. They should not, however, be cited as the current conceptual definition of gluing.

The active entry points are:

- `../README.md`
- `../a natural method.md`
- `../TODO.md`
- `../numerics/natural_method_feedback_spectrum.wl`

Archive layout:

- `continuous theory I.md` through `continuous theory V.md`: former continuum tracks.
- `lattice theory.md`, `nonuniform periodic scalar lattice.md`, `finite truncation.md`, and `finite_truncation.wl`: former regulator and truncation tracks.
- `ads-rindler gluing.md`: former AdS--Rindler reconstruction track.
- `article/`: former Pandoc/LaTeX manuscript and generated artifacts.
- `numerics/`: former multi-model verification suite; its preserved `README.md` includes the last uncommitted boundary-feedback inventory update.
- `TODO.md`: superseded project task list.
