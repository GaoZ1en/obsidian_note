# Fresh Q=1 check result

This records an already completed inline Sage MCP call; no check was rerun when this file was saved. No submitted script was used.

Kernel: SageMath 10.9. Exact rational-function coefficient field Q(Δ); no floating-point approximations.

Successful tool summary:

```text
Sage verify; ok=true; allPassed=true
Checks: 4 (passed=4)
elapsedMs: 3873
[1] Normalized extractor intertwines raising: k=0..4, symbolic Delta, degree-six monomials: passed
  value: True
  valueType: builtins.bool
[2] Normalized extractor selects exactly its irrep: labels=0..4 and descendants=0..4: passed
  value: True
  valueType: builtins.bool
[3] N4 dimensions m(12,1)=12 and m(13,1)=16: passed
  value: True
  valueType: builtins.bool
[4] Second extractor tangential correction: passed
  value: True
  valueType: builtins.bool
```

The successful setup and check expressions are saved in [q1_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/q1_checks.py>).

Provenance note: the first attempted call stopped during setup because a polynomial ring has no `power_series_ring` method. It produced no check verdict. The completed call used `PowerSeriesRing(QQ, 'z')`; before that call, two hand-written expected constants in the second-derivative test were also corrected. The formulas being tested were unchanged. All four successful verdicts above are exact booleans.

These are finite symbolic checks of normalization/channel extraction and two counting coefficients, not a substitute for the analytic all-N, all-P proof.
