# Symbolic verification record

Date: 2026-11-12. Wolfram Engine through the Mathematica tool, fresh kernels. The self-contained [script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/symbolic_checks.wl>) was executed with `Get`; final returned `Messages -> {}` and no failed/aborted checks.

Assumptions: L>0, integer mode cutoff M>=2 where interpreting sums, c one chiral central charge, alpha=LE0 and b=LP fixed under circumference differentiation. Coupling normalization is the square root in the main Hamiltonian note. The spectral Burgers check used lambda>0, alpha>0, b real to choose an uncomplicated real branch; the vacuum series was checked separately through its direct formula.

| check | actual result |
|---|---|
| Burgers residual d_lambda E - E d_L E - b²/L³ | exact 0 |
| square-root coefficients | alpha/L + lambda(-alpha²+b²)/L³ + 2lambda² alpha(alpha²-b²)/L⁵ |
| vacuum susceptibility | c² pi² (M-1) M (6M³+21M²+11M-19)/(270L⁴) |
| bare second-order vacuum energy | -c² pi³ (M-1)M(M+1)(M+2)(2M²+2M-3)/(27L⁵) |
| cross-mode response c=1/2, n=2 | pi/(8L²) |
| exact NS slope minus its continuum limit | exact 0 after limit |
| NS vacuum slope expansion | -pi²/(144L³) - 7pi⁴/(4320 L³N²) - 7207pi⁶/(19353600 L³N⁴) + O(N^-5) |
| infinite Wick constant per Majorana site | -16/(3pi²) |
| nearest bilinear Wick coefficient | 14i/(3pi) |
| third bilinear Wick coefficient | 2i/pi |
| continuum four-fermion determinant | -4a² |
| Hurwitz zeta(-3,1/2) | -7/960 |
| integral from E* to infinity of E^-3/2 exp(-delta E), minus sqrt(delta) Gamma(-1/2,delta E*) | exact 0, delta>0, E*>0 |
| delta down to zero of that correct tail integral | 2/sqrt(E*) |
| cubic-dispersion Majorana Airy kernel: (d_t+d_x-kappa d_x³)F | exact 0, t>0, kappa>0, real x |

Exact polynomial sums and series do not prove existence of the infinite-cutoff Hamiltonian. In particular the large negative bare second-order answer is deliberately retained: it is the UV mismatch that a genuine next-order definition must address.

Final tool-readable output including the Airy check: [result.txt](</Users/koishi/.codex/mcp-results/evaluate_mathematica-UYZiHG/result.txt>). The preceding version with the integral checks is preserved: [earlier integral result](</Users/koishi/.codex/mcp-results/evaluate_mathematica-xSP8LP/result.txt>). The version without those two checks is also preserved: [earlier result](</Users/koishi/.codex/mcp-results/evaluate_mathematica-xWuMqO/result.txt>). Earlier separate normalization and slope checks also returned no messages: [Virasoro sums](</Users/koishi/.codex/mcp-results/evaluate_mathematica-WGGGFE/result.txt>), [Wick/slope/determinant](</Users/koishi/.codex/mcp-results/evaluate_mathematica-jj0LzF/result.txt>). These are the same Wolfram implementation, not independent CAS engines. Independence comes from the separately derived review and the CAR/Pauli matrix construction, not from repeatedly calling Wolfram.

## Numerical execution issue retained

The first spatial-history run failed at `total[n] += q` because the zeroth identity was initialized as float64 while later real-time coefficients are complex128. The identity dtype was corrected explicitly, and every spatial assertion was rerun successfully. No failed run was used as evidence. Subsequent runs expanded observables to reverse-bias transport, a time-dependent Wightman function, and an actual four-excitation off-diagonal matrix element; the final result file and its code hash identify the last successful version.
