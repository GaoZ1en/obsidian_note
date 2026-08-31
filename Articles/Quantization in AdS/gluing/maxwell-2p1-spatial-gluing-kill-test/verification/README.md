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

An auxiliary local xAct/xTras exploration returned zero for the covariant scalar-vector product rule. A separate attempted automatic simplification of the antisymmetric double divergence remained unevaluated; it is **not** counted as a verified Noether identity. The corresponding general formalism statements use their displayed analytical invariant-pairing/antisymmetry argument. The older repair's unretained 2/13 xAct/Mathematica checks have been downgraded to `locally checked` in the parent notes and are not included in the totals above.

Assumptions: real $L,e>0$, real angular momentum, $k=|p|>0$ for the hyperbolic-function formulas with the $p=0$ limit treated separately; original signature/action and $y_i$ orientations; smooth finite-Fourier data and full compatibility jets. No numerical approximation is used in the new script.

During check development, the restored radial-winding equality initially remained symbolic under a raw list equality test (`29/30`, exit 1). Its explicit component residual was zero; the script now checks that residual and exits successfully only when every result is exact `True`. No physics formula was changed to obtain the passing result.
