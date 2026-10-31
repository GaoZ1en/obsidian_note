# Reproducible checks and actual returned results

The mathematical conclusions and scope are in [report.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/report.md>). The exact input code was extracted from the tool's archived argument records, not reconstructed afterward. Each complete actual-return record includes the exact tool arguments, all returned diagnostics, and the server-returned result. None of the six successful results was truncated.

| Check | Exact code | Actual full return | Readable structured result |
|---|---|---|---|
| Lie normalization, frame inverse, derivative ghost symbol, spin-symbol rank/counterexample | [01_lie_and_symbols.sage](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/01_lie_and_symbols.sage>) | [01 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/01_lie_and_symbols.actual-return.json>) | [01 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/01_lie_and_symbols.result.json>) |
| Ricci, full arbitrary-vector de Donder variation, stress-vector Hessian, radial curl | [02_geometry_and_lorenz.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/02_geometry_and_lorenz.wl>) | [02 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/02_geometry_and_lorenz.actual-return.json>) | [02 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/02_geometry_and_lorenz.result.json>) |
| Common-Casimir intertwiners with arbitrary tensor/vector functions | [03_casimir_intertwiners.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/03_casimir_intertwiners.wl>) | [03 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/03_casimir_intertwiners.actual-return.json>) | [03 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/03_casimir_intertwiners.result.json>) |
| Exact torsion-free gauge identity and Codazzi curvature commutator | [04_gauge_and_codazzi.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/04_gauge_and_codazzi.wl>) | [04 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/04_gauge_and_codazzi.actual-return.json>) | [04 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/04_gauge_and_codazzi.result.json>) |
| Rational finite-fiber FP and section-volume cancellation | [05_finite_fiber_fp.sage](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/05_finite_fiber_fp.sage>) | [05 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/05_finite_fiber_fp.actual-return.json>) | [05 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/05_finite_fiber_fp.result.json>) |
| Numerical H2 Weyl-sequence norms | [06_weyl_sequence_numeric.sage](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/06_weyl_sequence_numeric.sage>) | [06 actual return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/06_weyl_sequence_numeric.actual-return.json>) | [06 result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/06_weyl_sequence_numeric.result.json>) |

## Rerun

The authoritative replay method is to supply each exact code string to the tool recorded in [manifest.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gauge-dictionary-20261031-8sBlwF/manifest.json>), with the complete arguments in its actual-return record. Sage uses a fresh SageMath 10.9 process. The Wolfram component calculations used the xAct `core` profile, loading xTensor, xPert, and xTras; they implement component covariant derivatives explicitly and do not rely on a hidden tensor definition or prior kernel state.

For an equivalent local replay from this directory:

```bash
/usr/local/bin/sage --nodotsage 01_lie_and_symbols.sage
/usr/local/bin/sage --nodotsage 05_finite_fiber_fp.sage
/usr/local/bin/sage --nodotsage 06_weyl_sequence_numeric.sage
wolframscript -code 'Print[Get["02_geometry_and_lorenz.wl"]]'
wolframscript -code 'Print[Get["03_casimir_intertwiners.wl"]]'
wolframscript -code 'Print[Get["04_gauge_and_codazzi.wl"]]'
```

These commands are replay instructions, not an additional claimed run. The actual runs were the archived MCP calls.

## Returned outcomes

- Check 01: all eight Boolean checks true; full spin-connection principal-symbol rank six; transverse h22 symbol has sole nonzero component S23=1/2 at p=(1,0,0).
- Check 02: Ricci+2g zero; all three de Donder residual components zero; Hessian(log cosh r)=diag(sech²r,1,tanh²r); scalar Laplacian equal two; both curl residual vectors zero.
- Check 03: both 3x3 Casimir-intertwiner residuals identically zero for arbitrary coordinate functions; both Boolean results true.
- Check 04: both 3x3 exact gauge/Codazzi residuals zero; Boolean conjunction true.
- Check 05: all seven Boolean checks true. Adapted/Lorenz FP determinants -5/25, delta-function Jacobians 5/1, common absolute product 25.
- Check 06: the returned finite table is reproduced in the report. It supports but does not replace the analytic Weyl-sequence proof.

One earlier check-05 attempt failed at output serialization, with the actual returned message:

```text
TypeError: Object of type Integer is not JSON serializable
when serializing dict item 'FP_times_delta_jacobian_both'
```

The sole correction was `25` to `int(25)` in that JSON output field. The rerun above is the actual successful result. No mathematical condition was changed to obtain a pass. The failed call's returned code SHA256 was `cef08d3bd8f0373822c6a546b27776ead2a6c63eb4bf7644492635320b6bb551`.

A session-history lookup attempted during archiving returned `session history storage is unavailable`; no conclusion depends on that lookup. The kernel archives already contained the exact input arguments and returned results, and were copied without alteration.
