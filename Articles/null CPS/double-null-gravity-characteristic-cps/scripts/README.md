# Verification scripts

Run from the project root:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
```

The script checks exact algebraic identities for the projector, nonlinear
Raychaudhuri solution, spin-0 pullback/curl, conversion to initial/outer areas,
the unified HF corner, endpoint-complete change between the
$\kappa$ and $\kappa+\theta$ representatives, extended/fixed-port rank and
kernel, the Damour solution, the unrestricted affine-composition mismatch and
slope-matched cancellation, diagonal and non-diagonal unimodular spin-2
charts, the $1/8$ focusing coefficient, a finite-mode Green identity, the curl
of the complete coupled one-form in diagonal and non-diagonal profiles
(including the $A\,B\wedge B$ term and its physical symmetric-metric
cancellation), shared-corner diagonal matching, and the generic representative
endpoint identity.  The Stage-2.1 script separately checks $h=-m$, the
positive corner curl and exact polarization change, the two branch-adapted
H\'aj\'i\v{c}ek forms and shared connection, affine-to-area Jacobians, the
shared-corner conformal endpoint coefficient, one-form normal-scale
transformation into Reisenberger's corner, the first-jet mismatch,
subdivision additivity/associativity, and the shear-free/diagonal limits.

The Stage-2.2 script derives the affine and area curls from the affine
one-form for a nontrivial moving-endpoint profile; builds two segment forms
from independent parameters before constructing the full first-jet matching
Jacobian; checks the reduced equality and a generic off-locus residual; and
repeats the independent-data reduction for three cells.

The Stage-3.0 script checks fixed reference-scale independence, endpoint-map
pullback composition, the Damour integrating-factor solution with a nonzero
shear source, reconstruction of $\tau_v$ and $\widehat\omega_A$, the curl of
the endpoint-map potential, the diagonal moment-map contraction, local
rank/kernel before and after the declared quotient, the opposite-boost
kernel, and two-cell endpoint-port cancellation.

A passing result is not evidence for a closing-wall action or its port
momenta, an area chart through $\theta=0$, or a full functional gravitational
gauge quotient/nondegeneracy theorem.  It also does not prove completeness,
positivity, surjectivity, continuum topology, or a representative-independent
reduced action.  The affine/area functional proof and independent-data bulk
theorem are the analytic identities in calculation 04; V23--V25 are their
finite-mode regressions.  The HF-to-endpoint, moment-map, and abstract
interface statements are analytic identities in calculation 05; V26--V32 are
their finite regressions, while V33 is the separate xAct check of the local
tracefree-Lie and integration-by-parts identities.  A complete geometric
finite-cell port theorem remains conditional on the closing action.
