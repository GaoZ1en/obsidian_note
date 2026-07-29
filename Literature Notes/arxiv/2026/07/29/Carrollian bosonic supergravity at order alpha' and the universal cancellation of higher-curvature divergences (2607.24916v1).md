---
paper id: 2607.24916v1
title: Carrollian bosonic supergravity at order alpha' and the universal cancellation of higher-curvature divergences
authors:
  - Eric Lescano
publication date: 2026-07-27T18:00
abstract: |-
  The paper takes the ultra-relativistic limit of the bosonic string effective action through first order in alpha'. Apparent higher powers of the Carroll contraction parameter cancel in the curvature--flux sector, and a scaling argument extends the finiteness mechanism to higher-curvature corrections under compatible Carrollian-connection assumptions.
comments: "V1: 5 pages + references + appendix"
url: https://arxiv.org/abs/2607.24916v1
summary: "A short but reusable derivation of why alpha'-corrected bosonic supergravity has a finite Carroll limit despite apparently divergent higher-curvature terms."
tags: []
---

[[2026_07_29_overview|Back to 29 July 2026 overview]]

Reason codes: `T2-celestial-carrollian`, `T2-model`.

The paper's value is a scaling and cancellation mechanism, not a new Carrollian charge algebra. It shows that the same field decomposition used for the two-derivative NS--NS sector remains meaningful when higher-curvature terms seem, term by term, to diverge.

## Carroll decomposition of the NS--NS fields

The contraction parameter is $w=1/c$. The relativistic metric and its inverse are decomposed as

$$
\widehat g_{\mu\nu}
=h_{\mu\nu}-w^{-2}\tau_\mu\tau_\nu,
\qquad
\widehat g^{\mu\nu}
=h^{\mu\nu}-w^2\tau^\mu\tau^\nu,
$$

with degenerate spatial metric $h_{\mu\nu}$ and clock data $\tau_\mu,\tau^\mu$. The two-form and dilaton are scaled by

$$
\widehat B_{\mu\nu}
=b_{\mu\nu}+2\tau_{[\mu}A_{\nu]},
\qquad
\widehat\phi=\frac12\log w+\varphi.
$$

The measure and string correction are chosen as

$$
\sqrt{-\widehat g}\,e^{-2\widehat\phi}
=w^{-2}\Omega_{\mathrm C}e^{-2\varphi},
\qquad
\alpha'=\frac{\alpha'_{\mathrm C}}{w^2}.
$$

These scalings keep the two-derivative Carrollian action finite. The issue addressed here is whether the larger powers of $w$ hidden in inverse metrics and curvatures destroy that limit at higher derivative order.

## The order-$\alpha'$ action and the apparent divergence

The starting point is the Metsaev--Tseytlin form of the bosonic-string correction. Besides the curvature square, it contains the correlated set

$$
\widehat R_{\mu\nu\rho\sigma}\widehat R^{\mu\nu\rho\sigma},
\qquad
\widehat H\,\widehat H\,\widehat R,
\qquad
\widehat H^4,
\qquad
(\widehat H^2)^2,
$$

with coefficients fixed by the relativistic theory. The separate pieces contain terms as large as $w^6$. In particular, substituting only the leading curvature into the mixed $HHR$ structure makes the limit look divergent.

The appendix expands the relevant curvature and flux contractions before simplifying. The $w^6$ terms cancel across the full fixed linear combination. This cancellation does not require setting the Carrollian nonmetricity to a special value at this stage; it uses the correlated coefficients of the parent string action and the complete field decomposition.

## Compatible Carroll connection and the finite action

To present the remaining finite action covariantly, the paper then specializes to a connection satisfying

$$
\nabla_\mu h_{\nu\rho}=0,
\qquad
\nabla_\mu\tau^\nu=0.
$$

Under these compatibility conditions the divergent part of the pure Riemann-square contraction vanishes. The surviving terms can be organized in Carroll-covariant curvatures, the spatial three-form built from $b_{\mu\nu}$, the field strength of $A_\mu$, and derivatives of $\varphi$.

The order of logic matters:

1. the most alarming $w^6$ divergence in the full $HHR/H^4$ combination cancels algebraically;
2. connection compatibility is then imposed to write the finite curvature sector in a compact covariant form;
3. the result is not claimed for an arbitrary connection with unrestricted nonmetricity.

## Why the higher-curvature tower can remain finite

For a term containing $N$ Riemann tensors, the largest curvature scaling allowed by the compatible Carroll decomposition is

$$
\widehat R^N=O(w^{2N}).
$$

The remaining universal factors are

$$
\sqrt{-\widehat g}\,e^{-2\widehat\phi}=O(w^{-2}),
\qquad
(\alpha')^{N-1}=O(w^{-2N+2}).
$$

Therefore

$$
w^{-2}\,w^{-2N+2}\,w^{2N}=w^0.
$$

This explains why pure $R^N$ corrections can have a finite Carroll limit at every order. The paper checks the known pure-gravity structures at $\alpha'^2$ and $\alpha'^3$: the cubic and quartic Riemann contractions survive with finite coefficients, while the $\zeta(3)$ sector does not contribute to the finite Carrollian action in the considered scaling.

The argument is a sufficient scaling criterion. It does not prove finiteness for every mixed flux/curvature/dilaton invariant that could occur at arbitrary order; those sectors may require cancellations analogous to the explicit order-$\alpha'$ calculation.

## Relation to current Carrollian and boundary work

- The result supplies a controlled bulk parent theory for Carrollian NS--NS data beyond two derivatives.
- The cancellation is sensitive to keeping the complete relativistic invariant. Taking a limit term by term before assembling the Metsaev--Tseytlin combination can generate false divergences.
- No boundary term, presymplectic potential, surface charge, or asymptotic falloff is derived. A CPS application must vary the finite Carrollian action and retain the total derivatives discarded in the bulk presentation.
- The compatibility conditions should be treated as part of the phase-space definition, not as identities following from every Carroll geometry.

## Verification boundary

### Checked

- Mathematica independently verified the universal exponent count
  $-2+(-2N+2)+2N=0$ for arbitrary symbolic $N$.
- The inverse-metric ansatz and the $w$ weights of the measure and $\alpha'$ factors are algebraically consistent with the displayed Carroll completeness relations.

### Blocked

- The complete index-level cancellation of every $w^6$ term in the Metsaev--Tseytlin combination was followed from the source appendix but not independently reproduced in xAct.
- The claim about the $\alpha'^3\zeta(3)$ sector depends on the particular higher-order invariant basis used by the paper.

### Failed

- No independently attempted scaling identity failed. Extending the $R^N$ count to arbitrary mixed $H$, curvature, and dilaton terms without a new cancellation analysis would not be justified.
