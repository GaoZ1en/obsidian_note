---
paper id: 2608.21127v1
title: BMPV black holes in higher-derivative supergravity
authors:
  - Yide Cai
  - Sabarenath Jayaprakash
  - James T. Liu
  - Yi Pang
  - Robert J. Saskowski
publication date: 2026-08-21T22:05
abstract: |-
  First-order four-derivative corrections to the three-charge rotating BMPV black hole are constructed directly in five-dimensional STU supergravity. Curvature-free vector superinvariants vanish on the BPS background, while Weyl-squared invariants correct the solution and yield a Wald entropy agreeing with recent heterotic calculations.
comments: "10 pages"
url: https://arxiv.org/abs/2608.21127v1
summary: "A compact corrected BMPV solution with unusually rich verification artifacts; the entropy is well cross-checked, but Chern--Simons and charge-ensemble discrepancies remain open."
tags: []
---

# Verdict and relevance

**Direct verdict.** Not proven by the paper alone; the paper plus its author-supplied verification repository provide strong exact symbolic evidence for the stated first-order solution within the stationary equal-angular-momentum BMPV ansatz. The entropy algebra and limits check out. The result remains conditional on the quoted five-dimensional superinvariant action, field-redefinition frame, Page-charge ensemble, and unresolved treatment of mixed gauge--gravitational Chern--Simons terms.

Reason codes: `T1-Wald-CPS`, `T1-charge`, `T2-dS-BH-holography`, `T2-model`.

This matters for the vault's charge work because it cleanly separates horizon-area and explicit higher-curvature contributions while warning that near-horizon charges, asymptotic Page charges, field redefinitions, and Chern--Simons entropy prescriptions need not agree term by term.

# Scope

The background is the three-charge BMPV solution of five-dimensional STU supergravity,

$$
H_I=1+\frac{q_I}{r^2},
\qquad
\mathcal H=H_1H_2H_3,
\qquad
\omega=\frac{a}{2r^2}\sigma_L^3.
$$

The calculation is:

- first order in the four-derivative couplings $\lambda_I$;
- exact in the one equal-angular-momentum BMPV rotation parameter within the ansatz;
- for three positive unequal charges;
- restricted to $w^2<1$, where

$$
w=\frac{a}{\sqrt{q_1q_2q_3}};
$$

- performed in a specified five-dimensional field-redefinition frame.

It does not cover two independent spins, non-BPS solutions, the extremal zero-area endpoint, or higher orders in $\lambda_I$.

# Four-derivative solution

The authors use the supersymmetrized Weyl-squared invariant with three couplings $\lambda_I$ and exploit STU permutation symmetry: solve the $\lambda_3$ problem, then superpose the three permuted first-order corrections.

The source gives explicit corrected metric functions, gauge fields, and scalars. A useful structural claim is that the two additional curvature-free vector superinvariants vanish on the rotating BPS background, together with their first variations, because

$$
\frac{F^I}{X^I}-\frac{F^J}{X^J}
=-\mathcal H^{-1/3}(dt+\omega)
\wedge d\log(X^I/X^J).
$$

Thus these invariants do not source the corrected solution or directly contribute a Riemann derivative to Wald entropy. This does not license deleting the vector completion terms belonging to the active supersymmetric curvature-squared invariant.

# Wald entropy

The entropy uses

$$
S=-2\pi\int_{\mathcal H}
\varepsilon_{\mu\nu}\varepsilon_{\rho\sigma}
\frac{\partial\mathcal L}{\partial R_{\mu\nu\rho\sigma}}
d\Omega_3.
$$

There are two first-order contributions:

1. the corrected near-horizon $S^3$ geometry;
2. the explicit Riemann dependence of the four-derivative action.

Their sum is

$$
S=\frac{\pi^2}{2G_N}
\sqrt{q_1q_2q_3(1-w^2)}
\left[
1+\sum_I\frac{12\lambda_I}{q_I}
\frac{1-4w^2/3}{1-w^2}
\right].
$$

To first order this is equivalently

$$
S=\frac{\pi^2}{2G_N}
\sqrt{(1-w^2)\prod_{I=1}^3(q_I+24\lambda_Ig)},
$$

where

$$
g(w)=\frac{1-4w^2/3}{1-w^2}.
$$

At $w=0$ it reduces to the standard static shifted-charge expression. For $3/4<w^2<1$, $g(w)<0$, so positive $\lambda_I$ can give a negative entropy correction.

# Charge and Chern--Simons boundary

The supplementary artifact states the entropy in the fixed physical Page-charge ensemble. This matters because harmonic parameters, near-horizon charges, Page charges, and different angular-momentum variables can rearrange first-order expressions.

The paper also flags a remaining issue: the mixed term $A\wedge\operatorname{Tr}R\wedge R$ can require a Tachikawa-type treatment, and earlier entropy results differ partly because charges were extracted from near-horizon rather than full asymptotically flat data. The present agreement with several recent computations is strong evidence, but not a resolution of the entire literature discrepancy.

# AI-assisted verification artifact

# Independent verification

## Source-derived

The paper links an author repository containing 34 Mathematica notebooks, canonical fresh-kernel logs, checksums, claim/evidence mappings, and human- and machine-oriented reports. Its declared scope is more precise than the paper's short presentation:

- 13/13 exact residuals vanish in the generic static and equal-charge rotating checks;
- generic rotation is checked through the terminal polynomial degrees implied by the ansatz;
- horizon regularity is restricted to positive charges and $j^2<\mu_1\mu_2\mu_3$;
- an independent entropy reconstruction agrees exactly;
- a universal off-shell field map is explicitly not established.

This is meaningful evidence, but stored `PASS` logs are not equivalent to rerunning all licensed-kernel notebooks in the current environment.

## Checked

- Mathematica confirms that the shifted-charge square-root form expands to the displayed entropy through first order in all $\lambda_I$.
- The static limit $w=0$ and the sign threshold $w^2=3/4$ are reproduced.
- All but one file in the current author repository match its SHA-256 manifest; all 34 notebook and log artifacts themselves match.
- The repository claim ledger and final audit preserve the first-order, ansatz, ensemble, and off-shell-map limitations.

## Failed

- The repository's own `ruby for_ai/validate_level1.rb` currently fails with exactly one finding: checksum mismatch for `for_humans/NOTATION_CROSSWALK.md` at commit `34ca7577d8f16b8d723226dbfd8d10074bfc7c00`.
- The manifest expects `08f6434e...e77a1`; the current file hashes to `47ba0d73...86849`. This is an artifact-integrity failure, although it does not touch the notebooks or canonical logs.

## Not independently verified

- The full corrected Euler--Lagrange residual calculation was not rerun; the paper omits most of the superinvariant action behind an ellipsis, and a complete rerun would require the repository notebooks and a long compatible Wolfram evaluation.
- Equivalence to the ten-dimensional heterotic solution after reduction and field redefinition is explicitly not checked by the authors.
- The Chern--Simons entropy prescription and reconciliation with all earlier charge computations remain open.

# Takeaway

Treat the entropy formula as strongly supported within a sharply stated EFT frame and ensemble. Preserve the exact verification-artifact checksum failure and do not turn agreement among recent calculations into a universal resolution of the Chern--Simons/charge ambiguity.
