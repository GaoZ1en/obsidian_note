# Verification scripts

Run from the project root:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
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
shared-corner conformal endpoint coefficient, normal-scale cancellation into
Reisenberger's corner, the first-jet mismatch, two-segment spin-0+spin-2
additivity, three-segment associativity, and the shear-free/diagonal limits.

A passing result is not evidence for a unique variable-shape closing-wall
action, an area chart through $\theta=0$, a reduced spin-1 block, or a full
gravitational gauge quotient.  It also does not prove completeness,
positivity, surjectivity, continuum topology, or a representative-independent
reduced action.  The full first-jet composition theorem rests on analytic
integral additivity; V21 is its finite-mode regression, not its proof.
