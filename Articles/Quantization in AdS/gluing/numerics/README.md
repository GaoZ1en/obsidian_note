# Boundary-Driven Feedback Checks

This directory contains the active numerical check for `../formalism.md`:

- `natural_method_feedback_spectrum.wl`: truncated regional Dirichlet-to-Neumann feedback spectrum and a connected Galerkin cross-check.

The primary finite regulator keeps $N$ strict Dirichlet modes on each half interval and glues them through the common boundary port. Its spectrum consists of the $N$ poles and $N$ zeros of the truncated Dirichlet-to-Neumann response. The even global tower is exact at every sufficient cutoff, while the affected tower converges in a fixed low-energy window.

The alternative Galerkin pencil obtained by promoting $q$ to an unconstrained coordinate has $2N$ convergent low modes and one additional port mode whose frequency grows with the cutoff. It is retained only as a diagnostic cross-check; the extra port mode is not a candidate physical oscillator for quantum gluing.

Run the check from this directory with:

```sh
wolframscript -file natural_method_feedback_spectrum.wl
```

Verified: finite-matrix even-tower exactness, positivity of the displayed Galerkin kinetic matrix, the truncated feedback spectrum, and fixed-window spectral convergence.

Not verified: uniform ultraviolet convergence, metaplectic equivalence of regional and global quantizations, continuum Fock-space equivalence, or interacting/gauge-theory quantum gluing.
