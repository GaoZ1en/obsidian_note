# Verification scripts

Run from the project root:

```text
wolframscript -file scripts/spin0_and_spin2_checks.wl
wolframscript -file scripts/stage21_corner_area_composition_checks.wl
wolframscript -file scripts/stage22_hardening_checks.wl
wolframscript -file scripts/stage30_endpoint_twist_checks.wl
wolframscript -file scripts/stage31_classical_closure_checks.wl
wolframscript -file scripts/development_dictionary_checks.wl
```

Run `scripts/stage31_xact_residuals.wl` in a fresh dedicated xAct `core`
kernel.  Its normalization pipeline is `ToCanonical`, `ContractMetric`, then
`ToCanonical`; V33 must return two zero residuals.

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

The Stage-3.0 script checks fixed reference-scale independence, optional
target-density pullback composition, the Damour integrating-factor solution with a nonzero
shear source, reconstruction of $\tau_v$ and $\widehat\omega_A$, the curl of
the endpoint-map potential, the diagonal moment-map contraction, local
rank/kernel before and after the declared quotient, boost redundancy of the
reconstructed corner variables, and identity-chart two-cell endpoint-port
cancellation.

The Stage-3.1 script uses the separate check range V34--V41.  It checks the
source-density/target-covector momentum convention, nontrivial invertible
$f,g$ interface cancellation with the source Jacobian, functoriality,
compensator interpolation independence modulo the Damour residual, the HF
constant-cut tangency lemma, a finite bulk-Ward-plus-corner moment-map
contraction, a nonabelian cotangent-lift equivariance regression, and affine
boost covariance.  V41 is not a closing-wall kernel check.

A passing result is not evidence for a closing-wall action or its port
momenta, an area chart through $\theta=0$, or a full functional gravitational
gauge quotient/nondegeneracy theorem.  It also does not prove completeness,
positivity, surjectivity, continuum topology, or a representative-independent
reduced action.  The affine/area functional proof and independent-data bulk
theorem are the analytic identities in calculation 04; V23--V25 are their
finite-mode regressions.  The HF-to-endpoint, constrained full moment-map,
and abstract interface statements are analytic identities in calculation 05;
V26--V41 are
their finite regressions, while V33 is the separate xAct check of the local
tracefree-Lie and integration-by-parts identities.  A complete geometric
finite-cell port theorem remains conditional on the closing action.

The development-dictionary script uses V42--V44.  It checks only the exact
normalization and sign algebra in calculation 06: equality of the two branch
formulas for the rigorous-CIVP torsion, the symmetric-frame identity
$\zeta_A=-\widehat\omega_A$ together with
$a_+a_-e^{-m}=2$, and covariance under the residual opposite boost.  These
checks do not establish a PDE existence, differentiability, continuation, or
solution-space symplectic theorem.

## Stage 4.1

Run `rtk proxy wolframscript -file scripts/stage41_truth_boundary_checks.wl`.
It verifies V45--V50 and V53 only. Run `stage41_xact_checks.wl` through the
dedicated xAct `core` tool in a fresh kernel; V51--V52 require three zero
residuals. The derivative commutator uses explicit `SortCovDs` before the
`canonical_contract` pipeline. The structured result is retained in
`verification/stage41_xact_results.md`.

These checks do not prove the partial-completion Sobolev estimates (which
have analytic proofs in calculation 06), full C_SH, a PDE restart estimate,
a C1 solution map, tangent surjectivity or the finite rectangle theorem.

## Stage 4.2

Run the saved stage42_initial_transverse_checks.wl through the Mathematica
MCP in a fresh kernel. All 12 labelled V54--V59 checks must pass;
the unchanged-RHS diagnostic is intentionally nonzero (value -3).
The four actual Appendix angular blocks and the copy-constraint ideal
are checked under the explicit permutation.

Run stage42_xact_checks.wl through the dedicated xAct core tool;
V60--V62 use canonical_contract and must return three zero residuals.
The executed structured result is in verification/stage42_xact_results.md.

The differentiated-system check is a nonlinear scalar prototype. The
full exact-system identities and analytic bounds are calculation 09.6--7.
Neither these checks nor the proved free-slot estimate close C_Bianchi,
the full constrained C_init, Einstein tangent surjectivity or P_cell.

V64 adds two scalar Bianchi residual checks, for 14 Wolfram checks total.
Run stage42_curvature_variation_xact.wl in another fresh xAct core kernel;
V63 uses xPert and canonical_contract for a fourth zero tensor residual.
Both minus-sheet scalar Bianchi rows are proved analytically in 09.5;
the first remaining vector residual is 09.(5.4).
