---
paper id: 2606.28243v1
title: Quantum Fluctuations of the Black Hole Horizon
authors:
  - Ben Freivogel
  - Antony Speranza
  - Erik Verlinde
publication date: 2026-06-26T16:30:11
abstract: |-
  The paper defines a gauge-invariant quantum width of a black-hole event horizon through a physical last-escape experiment. A signal emitted from an ingoing light ray near the horizon has a quantum uncertainty in the affine time at which it last escapes. Perturbative gravity relates this uncertainty to horizon metric fluctuations, giving a width that can be parametrically larger than the Planck scale and depends on the transverse resolution of the measurement.
comments: "29 pages"
url: https://arxiv.org/abs/2606.28243v1
summary: "The horizon width is formulated as a last-escape-time observable whose variance is computed from perturbative horizon fluctuations."
tags: []
---

Back to [[2026_06_30_overview]].

# Last-escape experiment and affine-time observable

The paper defines horizon fluctuations operationally. Instead of asking for the location of an event horizon as a coordinate surface, it asks for the uncertainty in the last signal that can escape from an ingoing null ray.

The observable is an affine shift $\Delta\lambda$ along the horizon generator. The width $L$ is related to the spread of this affine displacement by the experimental relation

$$
L^2=V\,\Delta\lambda ,
$$

where $V$ is the null coordinate scale of the outgoing signal. This definition keeps the object tied to a physical escape experiment rather than a gauge-dependent metric component.

# Rindler calculation of Delta lambda

The local model is a Rindler horizon. The metric is perturbed, and the last-escape affine shift is written as an integral of the perturbation along the horizon generator. In the paper's notation the basic observable has the form

$$
\Delta\lambda(V,y)=\int_{-\infty}^{0}dU\,\phi(U,V,y),
$$

where $y$ denotes transverse coordinates and $\phi$ is the metric perturbation component that changes the null generator's affine relation.

After Fourier transforming in the transverse directions and smearing over the null time resolution $\tau$, the leading behavior of the correlator is summarized by the source formula

$$
\frac{1}{U_*^2}
\left\langle
\Delta\lambda_\tau(k)\Delta\lambda_\tau(k')
\right\rangle
=\delta(k+k')
\begin{cases}
\dfrac{G_N}{\tau^4 k_\perp^4}, & \tau k\gg 1,\\[6pt]
G_N |\log(\tau k)|, & \tau k\ll 1.
\end{cases}
$$

The $k_\perp^{-4}$ behavior is the main transferable feature: transverse coarse graining strongly controls the size of the horizon-position uncertainty.

# From affine variance to quantum width

For a transverse smearing scale $\sigma_\perp$ larger than the time resolution, the paper extracts

$$
\frac{1}{L_*^4}\left\langle (L^2)^2\right\rangle
=\frac{G_N}{\sigma_\perp^{D-2}}
\log\frac{\sigma_\perp}{\tau}.
$$

Thus the width is not simply Planckian; it depends on the measurement cell. In four spacetime dimensions the abstract-level scaling can be read as a width of order

$$
L\sim\sqrt{\frac{l_P r_s^2}{\sigma_\perp}},
$$

in the corresponding black-hole regime. The note-worthy point is the coexistence of a gauge-invariant operational definition and a resolution-dependent variance.

# Black-hole horizon perturbation

The black-hole calculation adapts the Rindler observable to a spherically symmetric horizon. The perturbation of the event horizon changes the geodesic affine parameter, and near the horizon the Rindler calculation becomes the local approximation to the black-hole answer.

The angular-mode expansion replaces transverse momenta by spherical harmonic labels. The paper gives mode-dependent correlators of the schematic form

$$
\left\langle
\Delta\lambda^{\sigma_t}_{\ell}\Delta\lambda_{\ell'}
\right\rangle
=\delta_{\ell\ell'}\begin{cases}
\dfrac{G_N r_s^{4-p}}{\sigma_t^2 \ell^4},
& \ell\tau/r_s\gg 1,\\[6pt]
G_N L_*^4T^2r_s^{-p}
\log\dfrac{r_s}{\ell\tau},
& \ell\tau/r_s\ll 1.
\end{cases}
$$

Here $p$ records the angular degeneracy convention used in the source, and $L_*$ is the black-hole scale that becomes $r_s$ for asymptotically flat black holes and the AdS scale for large AdS black holes.

# Angular modes and validity

The calculation is sharpest in the high-angular-momentum regime, where the local Rindler approximation controls the result. The paper states validity requirements such as

$$
\tau\ll L_*,
\qquad
\frac{r_s}{\ell}\ll L_*.
$$

This matters for reuse: the formula is not a universal low-mode horizon fluctuation formula. It is a controlled statement about a smeared last-escape observable in a regime where the transverse resolution and the near-horizon approximation are compatible.

# Relation to boundary and horizon projects

The paper is useful for horizon-local observables because it gives a physical measurement protocol rather than a bare coordinate fluctuation. It is also useful as an author-signal item: Antony Speranza is on the profile watchlist, but the technical reason for retaining the paper is the operational horizon observable.

It remains medium priority because it does not construct a charge, edge mode, CPS generator, or first-law algebra. Its role is as a concrete horizon-observable calculation.

# Verification boundary

This note follows the official arXiv TeX source and records the formula chain needed for later reuse. I did not independently reproduce the graviton two-point function calculation, the IR regularization, or the black-hole angular-mode reduction. Before importing the width formulas into a derivation note, the normalization of $U_*$, $L_*$, and the angular degeneracy factor $p$ should be checked against the source conventions.
