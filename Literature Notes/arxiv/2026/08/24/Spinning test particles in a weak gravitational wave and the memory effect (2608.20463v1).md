---
paper id: 2608.20463v1
title: Spinning test particles in a weak gravitational wave and the memory effect
authors:
  - Ritwik Acharyya
  - Shailesh Kumar
  - Sayan Kar
publication date: 2026-08-21T02:00
abstract: |-
  The paper applies the pole--dipole Mathisson--Papapetrou--Dixon equations with the Tulczyjew condition to nearby spinning probes in a weak plane gravitational wave. Spin--curvature coupling mixes the two polarizations and changes the transient detector response, but its extra asymptotic displacement-memory term vanishes for bounded waveforms at linear order.
comments: "34 pages, 2 figures"
url: https://arxiv.org/abs/2608.20463v1
summary: "A useful negative result: the linear spin correction is derivative-sensitive and transient, not an additional permanent displacement memory for physical bounded bursts."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct under the pole--dipole truncation, Tulczyjew spin supplementary condition, linear weak-plane-wave expansion, initially comoving deviation, constant longitudinal separation, and long-wavelength detector approximation. Its most important conclusion is negative: for a bounded waveform with $\dot h_A(\pm\infty)=0$, the linear spin-dependent displacement-memory contribution vanishes. Spin changes the transient response but does not add permanent displacement memory in this setup.

Reason codes: `T1-symmetry`, `T2-model`.

This is relevant to the characteristic-gluing program as a compact warning that a curvature-gradient response need not define a new asymptotic memory charge. Endpoint behavior must be taken after the physical waveform conditions are imposed.

# Setup and assumptions

The MPD equations at pole--dipole order are

$$
\frac{DP^\mu}{d\tau}
=-\frac12R^\mu{}_{\nu\alpha\beta}U^\nu S^{\alpha\beta},
\qquad
\frac{DS^{\mu\nu}}{d\tau}=P^\mu U^\nu-P^\nu U^\mu,
$$

with Tulczyjew condition

$$
S^{\mu\nu}P_\nu=0.
$$

The analysis keeps $O(h)$ geodesic terms and $O(hS)$ spin--curvature terms, while discarding $O(h^2S^2)$ and higher. The fiducial four-velocity is static at this order and the spatial spin vector is constant.

For a wave propagating along the longitudinal direction, the deviation variable

$$
Y^u=Y^0-Y^1
$$

is fixed by the initial detector geometry; it is not produced dynamically by the wave. The spin effect therefore disappears for a conventional purely transverse Michelson geometry with $Y^u=0$.

# Modified deviation and detector response

For transverse components $\alpha,\beta=2,3$, the perturbative solution has the schematic form

$$
\delta Y_\alpha
=\frac12h_{\alpha\beta}Y_0^\beta
+\frac{Y^u}{2m}\dot h_{\alpha k}\epsilon^{1kl}S_l^0.
$$

The first term is ordinary geodesic response. The second contains one extra time derivative, a transverse spin component, and the longitudinal baseline.

For the idealized detector orientation used in the paper,

$$
h_D=
\left(h_+-\frac{Y^uS_0}{Lm}\dot h_\times\right)F_+
+\left(h_\times+\frac{Y^uS_0}{Lm}\dot h_+\right)F_\times.
$$

Thus spin mixes plus and cross polarization. For a monochromatic wave, the dimensionless control parameter is

$$
\varepsilon_S\sim
\frac{\omega Y^u}{L}\frac{S_0}{mc^2}.
$$

The tilted-interferometer construction supplies a nonzero $Y^u$ while preserving equal orthogonal arms, but it is a hypothetical detector geometry rather than an analysis of an existing instrument.

# Memory result

Integrating the deviation equation twice gives an ordinary contribution proportional to $h_A$ and a spin contribution proportional to $\dot h_A$. The asymptotic difference therefore separates as

$$
\Delta(\delta Y)^A_{\rm geo}\propto\Delta h_A,
\qquad
\Delta(\delta Y)^A_{\rm spin}\propto\Delta\dot h_A.
$$

For a physically bounded burst,

$$
h_A(\pm\infty)<\infty,
\qquad
\dot h_A(\pm\infty)=0,
$$

so

$$
\Delta\dot h_A=0,
\qquad
\Delta(\delta Y)^A_{\rm spin}=0.
$$

The ordinary memory can still be nonzero because $\Delta h_A$ need not vanish. This distinction is the paper's cleanest reusable result.

An earlier analytic example retained in comments uses a $\log\cosh(\omega u)$ piece, which has nonzero asymptotic derivative and is unbounded. It produces a formal spin endpoint term, but the live conclusion correctly excludes it as a physical bounded waveform. The negative result therefore supersedes the more suggestive “spin memory” wording in some introductory passages.

# Independent verification

## Source-derived

- The complete TeX source and 34-page official PDF were inspected.
- The retained approximation is explicitly $O(h)$ plus $O(hS)$ with Tulczyjew SSC.
- The live conclusion states that bounded waveforms have no additional linear spin displacement memory.

## Checked

- Direct differentiation confirms that the spin force contains one more time derivative than geodesic deviation; two integrations leave $\dot h_A$ rather than $h_A$.
- Endpoint subtraction then gives the stated $\Delta\dot h_A=0$ result whenever $h_A$ tends to finite constants.
- Dimensional restoration requires the displayed $c^{-2}$ in the spin control parameter.

## Not independently verified

- The full tensor derivation of the generalized worldline-deviation equation from MPD was not recomputed with xAct.
- The antenna-pattern rotation formulas and numerical detector estimates were inspected but not independently reproduced.
- No finite-size, quadrupole, alternative-SSC, exact-plane-wave, or nonlinear-memory effect is covered.

# Takeaway

Use this paper for its derivative hierarchy and negative endpoint result. Do not cite it as evidence for a new asymptotic spin-memory charge: within its own physical waveform class and perturbative order, the spin term is transient.
