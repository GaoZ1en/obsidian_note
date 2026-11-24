# Second-order symbolic verification record

Date: 2026-11-15. Physical convention: $H=(2\pi/L)(\mathcal H_0+gW_1+g^2W_2)$, $g=8\pi\lambda/L^2$, one chiral central charge $c=1/2$. No factorial in $V_2$.

## Successful Wolfram run

Executed [second_order_symbolic_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_symbolic_checks.wl>) in a fresh kernel. [Full output](</Users/koishi/.codex/mcp-results/evaluate_mathematica-gxyhHm/result.txt>) has `Messages -> {}`.

| Check | Exact result |
|---|---|
| First-order energy / momentum Ward residuals | both 0 |
| All fixed-energy/momentum-block second-order residual | 0, with arbitrary $a,b,c,S_0,S_2$ |
| Required chiral dimension-six derivative coefficient in $W_2$ | $c/48$ |
| Inner-pair symmetric local vacuum→normalized $TT$ vertex | $c(c-2)/24$, hence $-1/32$ |
| Whole-composite determinant-midpoint FP local vertex | $c(c+10)/24$, hence $7/32$ |
| Smooth high-state Löwdin loop finite part | $11/12$ |
| Inner-pair / determinant-FP effective vertices | $85/96$ / $109/96$ |
| NS / R chiral derivative-composite vacuum constant | $-31/60480$ / $1/1890$ |
| Physical local $V_2$ vacuum insertion, $L=1$ | $-1153\pi^3/90720$ |
| Full-Wick $K_{42}$ / $K_{33}$ four-creation matrix elements, $L=1$ | $-104\pi^4$ / $64\pi^4$ |
| Pair / det full-Wick coefficient-to-vertex residual | both 0 |

The last two supplied fermion matrix elements in this short script are algebraic conversion checks, not an independent derivation of their determinants. Actual finite spatial determinants are calculated in [the spatial script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>); independent Wick and Virasoro derivations are in the [local review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md#L365-L454>) and [fermion review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/fermion-second-order-independent.md>).

The Abel constants are obtained from actual Laurent expansions: $\sum ne^{-\epsilon n}=\epsilon^{-2}-1/12+\epsilon^2/240+\cdots$, $\sum n^3e^{-\epsilon n}=6\epsilon^{-4}+1/120-\epsilon^2/504+\cdots$, $\sum n^5e^{-\epsilon n}=120\epsilon^{-6}-1/252+\cdots$. Finite constants alone do not define every nonzero-mode contact product.

## Separate actual spatial-loop check

A fresh Wolfram calculation of the restricted four-particle sum, independent of the NumPy evaluation, gave exact residuals `{0,0}` against
\[
\kappa_4=(2-\sqrt2)^{5/2}/512,\qquad
\kappa_6=\sqrt{2-\sqrt3}/864.
\]
The constrained ordered-Riemann prefactor is $1/[96(2\pi)^3]$. [Full exact output](</Users/koishi/.codex/mcp-results/evaluate_mathematica-MbU9eg/result.txt>), no kernel messages.

An earlier additional direct Wolfram `NIntegrate` of the bulk integral exceeded the tool's 30-second limit and produced **no usable integral value**; [timeout record](</Users/koishi/.codex/mcp-results/evaluate_mathematica-hYhRrm/result.txt>). The quoted bulk decimal comes from the directly derived integral's convergent NumPy Gauss quadrature in [spatial-loop results](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-loop-uv-results.md>), not from that timed-out attempt.

## Scope

These checks do not prove a complete nonlinear local current algebra or background-metric Hilbert stress. The additional contact/Ward calculation must be assessed together with its nonlinear Jacobi counterexample, not represented as an unconditional Ward completion. Numerical residuals elsewhere are not rigorous rounded bounds.
