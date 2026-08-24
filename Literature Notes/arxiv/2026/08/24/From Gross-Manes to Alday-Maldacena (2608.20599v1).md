---
paper id: 2608.20599v1
title: From Gross-Manes to Alday-Maldacena
authors:
  - Leonardo Pipolo de Gioia
  - Sabrina Pasterski
  - Pedro Vieira
publication date: 2026-08-21T06:37
abstract: |-
  Null quadrilateral extremal surfaces in AdS interpolate from a small bulk polygon governed by the flat-space Gross--Manes saddle to a large boundary-anchored Alday--Maldacena surface. Regge analytics, Nambu--Goto numerics, and a flat-space curvature expansion agree and match a recent bootstrapped AdS amplitude correction.
comments: "42 pages, 12 figures"
url: https://arxiv.org/abs/2608.20599v1
summary: "A three-way analytic/numerical interpolation between flat and boundary AdS string saddles, with a full first-curvature correction and a precise amplitude match."
tags: []
---

# Compact verdict

**Direct verdict.** Correct as a classical-worldsheet calculation within the null-quadrilateral kinematics and chosen geometric regularization. The analytic limits are mutually consistent, and the ancillary notebooks document the amplitude comparison. The finite interpolation is numerical, and no quantum worldsheet correction is computed.

Reason codes: `T2-dS-BH-holography`, `T2-model`, `A-big-name`.

# Interpolation

With diagonal invariants $S,T$, the flat bulk-polygon limit gives

$$
\operatorname{Area}_{GM}
=\frac1{2\pi}
[(S+T)\log(S+T)-S\log S-T\log T].
$$

The large boundary-polygon limit has

$$
\operatorname{Area}_{AM}
=\frac12\log S\log T
+\beta(\log S+\log T)+C,
$$

where the single logs and $C$ depend on the geometric regularization.

In the Regge regime,

$$
\operatorname{Area}_{\rm Regge}=f(T)\log S,
$$

with

$$
f(T)\sim\frac{T}{2\pi}+\alpha T^2,
\qquad
\alpha=-\frac{15+2\pi^2}{48\pi^3}
$$

at small $T$, and

$$
f(T)\sim\frac12\log T+\beta,
\qquad
\beta=\log(1+\sqrt2)-\sqrt2
$$

at large $T$.

The independent symmetric expansion gives

$$
\delta\operatorname{Area}(T,T)=\gamma T^2,
\qquad
\gamma=\frac{\pi^2\log16-45\zeta(3)}{96\pi^3}.
$$

The full $O(L^{-2})$ correction is an explicit combination of logarithms, dilogarithms, trilogarithms, and $\zeta(3)$. Its Regge limit reproduces $\alpha$, its symmetric limit reproduces $\gamma$, and evaluation at the high-energy disk saddle matches the recent amplitude bootstrap result.

# Evidence ledger

## Source-derived

- Complete official TeX, 42-page PDF, two Mathematica notebooks, and the plotted numerical surfaces were retrieved.
- The paper separates Lorentzian “minimal” surfaces from rigorous Riemannian minimizers; these are extremal saddles.
- The numerical interpolation is restricted mainly to $S=T$.

## Checked

- The Gross--Manes formula at $S=T$ reduces to $(T/2\pi)\log 4$.
- The general correction's stated symmetric and Regge reductions are algebraically consistent with the quoted $\gamma$ and $\alpha$.
- Dimensional scaling separates the flat area from the $L^{-2}$ curvature correction.

## Blocked

- Headless `wolframscript` could not execute the `.nb` ancillary because `NotebookEvaluate` requires a Wolfram front end. The notebooks were inspected as source artifacts but not replayed.

## Not independently verified

- The PDE numerics lack standalone raw grids and a headless reproducibility script in the arXiv package.
- Existence/uniqueness for the Lorentzian null-boundary Plateau problem, worldsheet loop corrections, and general $n$-gon AdS interpolation are not established.

# Relevance

This is a useful AdS classical-saddle and flat-limit paper, especially for keeping bulk-localized versus boundary-anchored limits distinct. It is secondary to the vault's current gluing and Virasoro-quantization work.
