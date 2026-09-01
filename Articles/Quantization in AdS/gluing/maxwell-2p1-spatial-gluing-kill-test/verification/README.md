# Verification record

Run from `Articles/Quantization in AdS/gluing`:

```sh
rtk proxy wolframscript -file maxwell-2p1-spatial-gluing-kill-test/verification/checks.wl
rtk proxy wolframscript -file numerics/maxwell_quantize_first_gluing_checks.wl
```

Executed on 2026-08-31:

- New script: **30/30 PASS**, process exit 0. It checks original Green/Cauchy signs, the full worldtube product rule, a finite matrix witness for the invariant pairing, mixed Coulomb forcing, harmonic lift and Dirichlet-to-Neumann values, singular source coefficients, Bianchi cancellation, the cusp, residual large-map signs, CPS integration by parts, and connected-mode normalization/eigenvalue identities.
- Existing Maxwell script: **20/20 True**, `AllChecksPassed -> True`, process exit 0. It includes existing 2+1/3+1 component witnesses. Rerunning it is not a 3+1 kill test.

The analytical proofs are in `../calculations.md`. Neither script proves an IBVP, trace theorem, extension classification, orbit completeness, or kernel theorem. The negative cusp check passes because it confirms a **counterexample**, not because the rejected smooth-gauge statement passed.

## Orbit-level collar follow-up

Run the added narrow diagnostics with:

```sh
rtk proxy wolframscript -file maxwell-2p1-spatial-gluing-kill-test/verification/collar-checks.wl
```

On 2026-08-31 the Mathematica MCP returned **9/9 PASS**. These check the radial homotopy and temporal/spatial curvature signs, unequal-length zero mode and restoration, based-large radial winding, failure of a bare integral restoring-lift shift, fixed/variable-transition CPS cancellation, the piecewise-quadratic obstruction, and radial Wilson-phase invariance. Positivity/invertibility, logarithm existence, smooth comparison, choice independence, arrow completeness and the two-sided quotient theorem are analytical arguments in Section 9, not consequences of this count.

The saved new script also returned **9/9 PASS**, exit 0, from the local CLI. The unchanged original `checks.wl` was rerun and returned **30/30 PASS**, exit 0. Its first concurrent kernel startup stalled with `LinkConnect::linkc`; that process was stopped and is not counted. A fresh standalone run supplied the successful result. No Wolfram configuration was changed.

During development the bare-lift-shift check initially returned 8/9 because equality was tested after simplifying only one side. Checking the explicit difference gives zero; no physics formula was altered. The nine checks were then rerun together successfully.

The cusp and quadratic counterexample paragraphs from commit 22e420be are retained as regression obstructions. The final theorem keeps the same smooth global gauge group and target. Its status is proved on the declared orbit/tangent core, not a Sobolev or smooth-manifold result. The older 20/20 mixed-model benchmark above is historical to the preceding round; this follow-up does not start a 3+1 test.

All nine changed Markdown notes parsed with Pandoc without warnings, and the scoped diff passed whitespace checks. Both original counterexample paragraphs were compared byte-for-byte with the commit snapshot and were unchanged; the old 30-check script was also left unchanged.

An auxiliary local xAct/xTras exploration returned zero for the covariant scalar-vector product rule. A separate attempted automatic simplification of the antisymmetric double divergence remained unevaluated; it is **not** counted as a verified Noether identity. The corresponding general formalism statements use their displayed analytical invariant-pairing/antisymmetry argument. The older repair's unretained 2/13 xAct/Mathematica checks have been downgraded to `locally checked` in the parent notes and are not included in the totals above.

Assumptions: real $L,e>0$, real angular momentum, $k=|p|>0$ for the hyperbolic-function formulas with the $p=0$ limit treated separately; original signature/action and $y_i$ orientations; smooth finite-Fourier data and full compatibility jets. No numerical approximation is used in the new script.

During check development, the restored radial-winding equality initially remained symbolic under a raw list equality test (`29/30`, exit 1). Its explicit component residual was zero; the script now checks that residual and exits successfully only when every result is exact `True`. No physics formula was changed to obtain the passing result.

## Time-slab relation follow-up

Run:

```sh
rtk proxy wolframscript -file maxwell-2p1-spatial-gluing-kill-test/verification/time-slab-checks.wl
```

Executed on 2026-09-01 before the claim-boundary follow-up: **12/12 PASS**, process exit 0. After adding two exact checks for the boundary-polarized regional-energy cut-frame shift and its cancellation on the transmission locus, the script returned **14/14 PASS**, process exit 0. It checks covariance of the Coulomb boundary constraint and electric/magnetic realized traces under history action, HJ interface cancellation, symplectic-flux cancellation, the stress-energy versus port-power endpoint term, the matched zero-mode Hamiltonian, Coulomb restoration and Wilson-coordinate invariance.

Final scoped revalidation on 2026-09-01 returned **30/30**, **9/9**, and **14/14** for `checks.wl`, `collar-checks.wl`, and `time-slab-checks.wl`, respectively, all with process exit 0.

The first development run returned 9/12 because three replacement-rule lists were parsed with the equality inside the replacement expression. Parenthesizing those exact residuals gave 12/12; no physics formula or note claim was changed. These checks do not prove evolution existence, compatibility-domain completeness, collar choice independence, arrow completeness, reduction by stages or Lagrangian maximality. Those claim levels are analytical in Sections 10.1--10.10.
