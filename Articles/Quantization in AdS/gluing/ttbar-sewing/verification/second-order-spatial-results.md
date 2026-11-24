# Finite-range spatial local-insertion checks

Date: 2026-11-15. Fresh Wolfram `Get` executed [second_order_spatial_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>). [Full output](</Users/koishi/.codex/mcp-results/evaluate_mathematica-t91epY/result.txt>); `Messages -> {}`. This verifies the local insertion alone, not all counterterms for the iterated original spatial interaction.

## Definitions and targets

$L=1$, even $N$, $a=1/N$, $d=a/2$, $2N$ Majoranas, NS continuation. Use the explicit low-pass $R_m$, staggered $L_m$ and central finite difference from [the main second-order note §7](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/second-order-local-flow.md>). Every bilinear/quartic is full infinite-chain Wick ordered, not finite-circle Wick ordered. Maximal support is 13 Majorana positions; the table avoids small-circle aliasing.

Two different representatives are evaluated separately:
\[
V^{\rm pair}_{2,a}=-\frac7{6\pi}K_{42,a}-\frac{47}{24\pi}K_{33,a}-\frac{\mathcal Q_{5,a}}{180\pi^2},\qquad
V^{\rm det}_{2,a}=V^{\rm pair}_{2,a}+\frac{K_{33,a}}{2\pi}.
\]
These are inner-pair symmetric and whole-composite determinant-midpoint FP frames, respectively. Their same-state off-diagonal vertices are not identical. Continuum targets, with $|TT\rangle=4L_{-2}\bar L_{-2}|0\rangle$, are
\[
\langle V_{2,\rm loc}\rangle_0=-\frac{1153\pi^3}{90720},\qquad
\langle TT|V^{\rm pair}_{2,\rm loc}|0\rangle=-4\pi^3,\qquad
\langle TT|V^{\rm det}_{2,\rm loc}|0\rangle=28\pi^3.
\]

## Actual NS Wick / determinant evaluation

| N | vacuum insertion (both frames) | vacuum error | pair four-creation vertex | pair error | det four-creation vertex | det error |
|---:|---:|---:|---:|---:|---:|---:|
| 16 | -0.405455085106 | -0.0113828076323 | -115.719443434 | 8.30566328763 | 770.128905815 | -98.0468412332 |
| 32 | -0.396859433957 | -0.00278715648335 | -121.936598255 | 2.08850846604 | 842.704779353 | -25.4709676958 |
| 64 | -0.394765516159 | -0.000693238685686 | -123.502330385 | 0.522776336180 | 861.746336748 | -6.42941030068 |
| 128 | -0.394245366879 | -0.000173089405334 | -123.894373797 | 0.130732924179 | 866.564512872 | -1.61123417596 |

Errors are consistent with $O(a^2)$, as also follows from the fixed-low-mode symmetric stencil expansion. The $K_{33,a}$ vacuum insertion vanishes for this NS stencil/covariance, so the two vacuum columns agree, although their off-diagonal columns do not.

Internal Wick matrix arithmetic uses 70-digit input precision and the external-mode determinants use 50 digits; the report retains fewer displayed digits. This is not an interval-arithmetic certificate.

## What is not being tested

The vacuum insertion is **not** the full second-order ground energy, whose CFT spectral coefficient is $-\pi^3/864$. The original $V_a$ iteration must be combined with same-regulator power/log/finite insertions and with operator/source matching. That iteration is studied separately in [actual spatial-loop results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-loop-uv-results.md>); its bulk identity subtraction alone is not the complete $C_{2,a}$.
