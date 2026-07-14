---
paper id: 2607.09847v1
title: Carrollian limit of NS-NS and Heterotic Supergravity
authors:
  - Romina Ballesteros
  - Eric Lescano
  - Sergio Patiño-López
publication date: 2026-07-10T18:00
abstract: |-
  The paper applies an ultra-relativistic expansion to the NS--NS metric, Kalb--Ramond field, dilaton, and then to the bosonic heterotic gauge sector. A dilaton scaling is intended to compensate divergent powers in the measure and produce a finite Carrollian action. Field redefinitions organize the Green--Schwarz transformations, and the equations of motion are compared between direct relativistic expansion and a constrained variation of the limiting action. The paper also sketches the scaling of leading alpha-prime curvature corrections and a possible near-horizon string interpretation.
comments: "V1: 25 pages + appendix + references"
url: https://arxiv.org/abs/2607.09847v1
summary: "A selective reconstruction of the Carrollian field dictionary and heterotic couplings, with an independently identified inconsistency in the determinant--dilaton scaling that blocks the advertised finite-action normalization."
tags: []
---

Back to [[2026_07_14_overview]].

The transferable part of this paper is its field-by-field Carrollian dictionary for the NS--NS and heterotic sectors. Its central normalization is not currently reliable: the determinant of the stated metric ansatz supplies $w^{-1}$, whereas the paper uses the opposite power when choosing the dilaton shift. The sections below therefore preserve the source's technical route while separating the reusable field decomposition from the blocked finite-action claim.

# Ultra-relativistic metric and Carrollian data

The source takes $w\to\infty$ and decomposes the relativistic metric as

$$
\hat g_{\mu\nu}
=h_{\mu\nu}-\frac{1}{w^2}\tau_\mu\tau_\nu,
\qquad
\hat g^{\mu\nu}
=h^{\mu\nu}-w^2\tau^\mu\tau^\nu.
$$

The Carrollian tensors satisfy

$$
\tau_\mu\tau^\mu=1,
\qquad
h_{\mu\nu}\tau^\nu=0,
\qquad
h^{\mu\nu}\tau_\nu=0,
$$

$$
h_{\mu\rho}h^{\rho\nu}
+\tau_\mu\tau^\nu
=\delta_\mu{}^\nu.
$$

Thus $h_{\mu\nu}$ and $h^{\mu\nu}$ are rank-nine spatial metrics in ten dimensions, while $\tau_\mu$ selects the degenerate longitudinal direction. The paper expands the Levi--Civita connection and curvature in even powers of $w$ and defines the Carrollian volume density $\Omega_c$ from $(\tau,h)$.

The relevant source map is:

| Source part | Technical content |
|---|---|
| Section 2.1 | Carrollian metric, inverse, completeness relations, connection, and curvature expansion |
| Section 2.2 | Dilaton scaling and intended cancellation of divergent measure powers |
| Section 2.3 | Kalb--Ramond ansatz, gauge transformations, and the finite NS--NS action |
| Section 2.4 | Heterotic gauge field, Green--Schwarz completion, and field redefinitions |
| Section 3 | Expansion of relativistic equations and constrained variation of the limiting action |
| Section 4 | Comparison with non-relativistic supergravity, alpha-prime scaling, and outlook |
| Appendix A | Explicit curvature and variational expressions used in the main text |

# Dilaton scaling and the measure obstruction

The source shifts the dilaton according to

$$
\hat\phi=\varphi+\alpha\log w
$$

and seeks a measure with an overall $w^{-2}$ factor so that the $O(w^2)$ Lagrangian coefficient has a finite limit. It states

$$
\sqrt{-\hat g}\,e^{-2\hat\phi}
\stackrel{\text{source}}{=}
\Omega_c\,w^{-2\alpha+1}e^{-2\varphi}
$$

and therefore chooses $\alpha=3/2$.

For the metric actually written, an adapted frame gives

$$
\hat g_{ab}
=\operatorname{diag}(-w^{-2},h_{ij}),
$$

so

$$
\det\hat g=-w^{-2}\det h,
\qquad
\sqrt{-\hat g}=w^{-1}\sqrt{\det h}.
$$

The resulting scaling is instead

$$
\sqrt{-\hat g}\,e^{-2\hat\phi}
=\Omega_c\,w^{-2\alpha-1}e^{-2\varphi}.
$$

Requiring $w^{-2}$ gives

$$
\alpha=\frac12,
$$

not $3/2$. This is not a cosmetic convention change: it shifts every order used to select the finite action. Until the metric or dilaton ansatz is changed explicitly, the advertised $O(w^0)$ NS--NS and heterotic actions do not follow from the stated scaling.

# Kalb--Ramond decomposition

The two-form is decomposed into spatial and longitudinal parts,

$$
\hat B_{\mu\nu}
=b_{\mu\nu}
+2\tau_{[\mu}A_{\nu]},
$$

with $b_{\mu\nu}$ spatial and $A_\mu$ the Carrollian one-form component. The relativistic field strength

$$
\hat H_{\mu\nu\rho}=3\partial_{[\mu}\hat B_{\nu\rho]}
$$

splits into a purely spatial three-form and terms containing $\tau$, $A$, and $d\tau$. This is the useful organizational device: contractions with

$$
\hat g^{\mu\nu}=h^{\mu\nu}-w^2\tau^\mu\tau^\nu
$$

then expose which longitudinal components are enhanced in the Carrollian limit.

The source assembles a finite NS--NS integrand of the schematic form

$$
S_{\mathrm{NSNS}}
=\int d^{10}x\,\Omega_c e^{-2\varphi}
\left(
\hat R^{(2)}
-4\tau^\mu\tau^\nu\partial_\mu\varphi\partial_\nu\varphi
-\frac1{12}[\hat H^2]^{(2)}
\right),
$$

where the superscript $(2)$ denotes the coefficient selected from the $w$ expansion. The tensor decomposition is source-derived and reusable; the overall order assignment depends on the failed measure scaling above.

# Heterotic gauge field and Green--Schwarz data

The heterotic extension adds a non-Abelian gauge field with a longitudinal scalar,

$$
\hat A_\mu{}^i=a_\mu{}^i+\tau_\mu\chi^i,
$$

and decomposes its curvature into spatial $f_{\mu\nu}{}^i$, derivatives of $\chi^i$, and torsional terms involving $d\tau$. The gauge-invariant three-form has the Green--Schwarz form

$$
\bar H=dB-\omega_{3\mathrm{YM}}
$$

at the order retained by the paper, with the Yang--Mills Chern--Simons form supplying the anomalous gauge variation of $B$.

A redefined Carrollian one-form $\bar A_\mu$ absorbs the non-Abelian transformation induced on the longitudinal Kalb--Ramond component. The source emphasizes that this trivializes the Green--Schwarz transformation of the one-form but not that of the spatial two-form $b_{\mu\nu}$. This distinction is the main heterotic mechanism worth retaining.

The claimed bosonic heterotic action is

$$
S_{\mathrm{het}}
=\int d^{10}x\,\Omega_c e^{-2\varphi}
\left(
\hat R^{(2)}
-4\tau^\mu\tau^\nu\partial_\mu\varphi\partial_\nu\varphi
-\frac1{12}[\bar H^2]^{(2)}
-\frac14[\hat F^2]^{(2)}
\right).
$$

This formula records the intended coupling pattern, but its derivation inherits the measure-order obstruction.

# Two routes to the equations of motion

The first route expands the relativistic equations

$$
\Delta\hat g_{\mu\nu}=0,
\qquad
\Delta\hat\phi=0,
\qquad
\Delta\hat B_{\mu\nu}=0,
\qquad
\Delta\hat A_\mu{}^i=0
$$

in powers of $w$. This produces a hierarchy of longitudinal and transverse equations, including leading curvature constraints.

The second route varies the limiting Carrollian action while treating

$$
(\tau_\mu,\tau^\mu,h_{\mu\nu},h^{\mu\nu},\varphi)
$$

as independent and imposing the degeneracy/completeness relations with Lagrange multipliers. The measure variation used there is

$$
\delta\Omega_c
=\Omega_c\left(
\tau^\mu\delta\tau_\mu
+\frac12h^{\rho\sigma}\delta h_{\rho\sigma}
\right).
$$

The paper states that eliminating the multipliers should reproduce the independent equations from the relativistic expansion after additional geometric constraints are imposed. It does not complete that equivalence. Because the action's overall scaling is already inconsistent, this variational comparison remains a program rather than a verified equality.

# Near-horizon and alpha-prime interpretation

The intended use is as a target-space theory for Carrollian strings near black-hole horizons. This is a motivation, not a derived solution: the paper does not construct a black-hole background of the limiting action or match a worldsheet beta function.

For higher derivatives it proposes

$$
\alpha'\longrightarrow\frac{\alpha'_c}{w^2}
$$

and argues that the leading $\widehat{\mathrm{Riem}}^2$ contribution can be made finite. The analysis does not exhaust all $w^6$ and higher contractions or the complete four-derivative heterotic action, so this should be read as power-counting evidence.

# Use in current projects

- `T2-celestial-carrollian`: the $(\tau,h)$ decomposition is a useful field dictionary for comparing Carrollian limits with Bondi/null-boundary response data.
- `T2-model`: the NS--NS/heterotic field content provides a broad supergravity testbed, especially the Green--Schwarz split between the spatial two-form and longitudinal one-form.
- It is not a CPS or charge paper. No presymplectic potential, boundary generator, or asymptotic charge algebra is derived.
- The determinant mismatch must be repaired before importing any normalization, action coefficient, or variational equation into the vault's formalism.

# Verification boundary

Mathematica independently evaluated the determinant in a ten-dimensional adapted frame and found

$$
\sqrt{-\det\operatorname{diag}(-w^{-2},h_1,\ldots,h_9)}
=w^{-1}\sqrt{h_1\cdots h_9}
$$

for $w>0$ and positive spatial eigenvalues. It then solved

$$
-1-2\alpha=-2
$$

and obtained $\alpha=1/2$. This directly contradicts the $w^{-2\alpha+1}$ measure and $\alpha=3/2$ choice used in source Eq. (2.8).

The remaining curvature, $H^2$, $F^2$, Green--Schwarz, equation-of-motion, and alpha-prime chains are source-derived; they were traced through the TeX and visually checked at the displayed formulas, but not independently reproduced. Additional source problems that prevent promoting the paper today are:

- the discussion after the heterotic action says $w\to0$, contradicting the paper's defining $w\to\infty$ limit;
- a prose coefficient for the gauge kinetic term conflicts with the displayed action;
- $\tau^{\rho\sigma}$ appears without definition in the curvature expansion;
- one gauge-transformation display is malformed;
- equality between the expanded and variational equations is left unfinished;
- cancellations in the alpha-prime sector are asserted only at selected leading orders.
