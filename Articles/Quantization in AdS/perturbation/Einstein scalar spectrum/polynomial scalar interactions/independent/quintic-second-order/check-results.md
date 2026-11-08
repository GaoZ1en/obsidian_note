# Verification record

## Quintic result

**Wolfram:** [saved result](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/wolfram-results.wl>) has `allPassed -> True`, nine exact checks, and no messages. Checks cover:

1. two-vertex Wick coefficients `{1/1152,1/144,1/48,1/48,1/240}`;
2. all divergent terms of the k=3,4,5 geodesic UV kernels;
3. direct Δ=4/3 Jacobi integration for n=0,…,8;
4. overlap ratio I₁/I₀=−3/10;
5. exact B₄=−61947/(11648000π³);
6. quartic contact normalization;
7. the propagator-power decomposition coefficients;
8. symbolic-Δ Jacobi integral identities for n=0,…,6;
9. the radial differential-operator identity used to normalize the resolvent.

The all-n Jacobi statement and convergence are analytic arguments in the report, not inferred from the finite checks.

**Sage:** [saved result](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/sage-results.json>) has `allPassed: true`, eight exact rational checks. Its method uses independently constructed Jacobi polynomials and direct Fock matrix elements, including every creation allocation, followed by fourth finite differences. It does not use the claimed paired exchange formula.

The two separate contributions, with π⁻³ stripped off, are

- ground internal oscillator: −81/17920;
- first radial oscillator: −9297/11648000;
- sum: −61947/11648000.

The full free ground blocks were enumerated for N=1,…,4. Only N=4 has a second sector, namely the one-particle p=q=2 state. The exact parity decoupling is an analytic argument, not a truncation of this block.

A separate Wolfram computation checked the closed 4Δ-channel resolvent identity at Δ=4/3 with residual zero. The general identity follows from the radial operator equation shown in the report.

## Supplemental general-odd review

After completion of the blind quintic derivation, the parent requested a review of its general odd-interaction candidate. The [supplement](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-audit.md>) gives an all-k strict-negativity proof and the complete-block argument. It is explicitly labeled as a candidate review, not independent discovery.

At n=7, Δ=6/5, the [Wolfram allocation sum](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-wolfram-results.wl>) and [Sage Fock sixth differences](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-sage-results.json>) agree:
\[
 B_6=-\frac{168524890325}{523590680051712\pi^5}.
\]
Both are exact. The Sage result also verifies the midpoint inequality in rational arithmetic for k≤30. An initial standalone supplemental Sage run exposed Python integer division producing a floating midpoint sum; explicit QQ coercion corrected it, and the final exact rerun passed. This was an implementation issue in the supplemental check, not a failed mathematical inequality.

## Reproduction

From this directory:

```bash
/usr/local/bin/sage --nodotsage verify.sage.py
/usr/local/bin/sage --nodotsage general-odd-check.sage.py
```

Load the [quintic Wolfram source](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/verify.wl>) or [supplemental Wolfram source](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/quintic-second-order/general-odd-check.wl>) with `Get` in a fresh kernel. Each returns its complete result association.

No project source code was imported by either implementation. No parent candidate file, new branch file, or original manuscript was read or modified for the quintic derivation. The parent independently confirmed that the quintic single-contraction formula agrees with its own SW derivation.

## Not verified / not claimed

- No complete rational-Δ second-order spectrum was diagonalized.
- No even-Δ quintic first-order splitting was resolved.
- The optional convergent two-body matching formula is analytically derived; its double sum was not numerically evaluated.
- No nonperturbative stability claim is made for a real odd polynomial potential.
- No extra reviewer could be spawned at the available delegation depth.
