---
paper id: 2608.13643v1
title: "Quasinormal modes as exterior probes of black hole interiors in our Universe"
authors:
  - Sašo Grozdanov
  - Vita Movrin
  - Samuel Valach
publication date: 2026-08-13T15:40
abstract: |-
  Reflecting-cavity quasinormal spectra are related to a thermal product formula and an asymptotic spacing controlled by a complex null-bounce time. An idealised transmissive plasma shell is proposed as a possible electromagnetic cavity around a small primordial black hole.
comments: "5 pages plus appendices; 8-page official PDF"
url: https://arxiv.org/abs/2608.13643v1
summary: "A useful conditional cavity-QNM formula with an explicit unproved growth assumption and a highly idealised observational proposal."
tags: []
---

# Direct verdict and claim tier

Not proven by the current paper as an unconditional universal theorem; the evidence only shows: for a single-channel radial Schrödinger problem with a real, frequency-independent potential, a regular frequency-independent reflecting wall, exponential horizon asymptotics, the stated analyticity/integrability assumptions, an order-one entire inverse wall correlator, and a single asymptotic QNM ray, the product representation leads to

\[
\omega_n\sim\frac{2\pi n}{t_*}.
\]

The appendix explicitly **assumes** that the AdS large-imaginary-frequency bouncing-geodesic asymptotics extend to the cavity problem. That assumption is used to establish order-one growth in the missing frequency direction. The numerical evidence and several analytic inputs are also delegated to companion paper arXiv:2606.11297. The unconditional wording “has proven” is therefore stronger than the self-contained derivation.

The observational claim is a feasibility proposal, not a detection forecast. It requires a nonrotating small black hole, an approximately spherical thin plasma shell, sufficient reflectivity and transmission in the same band, identifiable low-overtone modes and separability from plasma emission.

# Cavity product formula

The master field obeys

\[
(\partial_z^2+\omega^2-V(z))\psi=0,
\qquad 0\leq z<\infty,
\]

with the wall at \(z=0\) and the horizon at \(z\to\infty\). Let \(h_+\) be ingoing at the horizon and \(g\) satisfy Dirichlet data at the wall. Their Wronskian is \(\mathcal F(\omega)\). Normal derivatives of the two-sided correlator define a nonzero wall observable,

\[
G_{12}^{\partial}(\omega)
\propto
\frac{\omega}{\sinh(\beta\omega/2)}
\frac1{\mathcal F(\omega)\mathcal F(-\omega)}.
\]

Under the paper's scattering assumptions, Matsubara poles of the Wronskians cancel the thermal zeros, so \(1/G_{12}^{\partial}\) is entire. If it is also of order one and its generic zeros form QNM quartets, Weierstrass--Hadamard gives

\[
G_{12}^{\partial}(\omega)
=\frac{G_{12}^{\partial}(0)}
{\prod_{n\ge1}(1-\omega^2/\omega_n^2)
(1-\omega^2/(\omega_n^*)^2)}.
\]

The displayed product has no additional exponential factor only after the symmetry and growth inputs are imposed.

# Bounce time and high overtones

For

\[
ds^2=-f(r)c^2dt^2+\frac{dr^2}{f(r)}+r^2d\Omega_2^2,
\]

the complex bounce time is

\[
t_*=\pm\frac2c\int_{r_i}^{0}\frac{dr}{f(r)}.
\]

For asymptotically flat Schwarzschild, \(f=1-r_b/r\), and the branch with \(\Re t_*>0\) gives

\[
t_*=\frac2c\left[r_i+r_b\log\left(1-\frac{r_i}{r_b}\right)\right].
\]

For \(r_i>r_b\), the principal branch has

\[
\operatorname{Im}t_*=\frac{2\pi r_b}{c}=\frac\beta2.
\]

The complex-time singularity lattice inferred from the product formula is matched to the first bouncing null geodesic, yielding the asymptotic spacing. This is an analytic-continuation statement about the radial problem. It does not mean an exterior detector causally receives a signal that has emerged from behind the horizon, nor does one spectrum uniquely reconstruct an interior geometry.

# Electromagnetic wall and plasma model

For Maxwell perturbations, the perfect-electric-conductor conditions give Dirichlet data in the odd channel and Neumann data in the even channel. A regular, \(\omega\)-independent reflecting condition gives the same leading spacing in both channels.

The realistic-wall discussion replaces the cavity by a phenomenological plasma shell. In the high-plasma-frequency step-barrier approximation, the transmission is

\[
T\approx
\frac{4\omega^2\operatorname{csch}^2[S(r_a+L)-S(r_a)]}
{\omega_p^2\sqrt{(1-r_b/r_a)(1-r_b/(r_a+L))}},
\]

where

\[
S(r)=\frac{\omega_p}{c}
\left[\sqrt{r(r-r_b)}+r_b\log(\sqrt r+\sqrt{r-r_b})\right].
\]

The same shell must be reflective enough to create cavity-like modes but transmissive enough to expose them. The numerical model demonstrates such a parameter regime, not its occurrence in an astrophysical accretion flow. Rotation, nonsphericity, dispersion, turbulence, source excitation, detector sensitivity and foreground disentanglement are not included.

# Independent verification

## Checked

- Mathematica differentiated the Schwarzschild expression for \(t_*\) and recovered \(1/f(r_i)\) with zero residual.
- On the principal exterior branch, Mathematica gives \(\operatorname{Im}t_*=2\pi r_b/c=\beta/2\).
- Mathematica differentiated the WKB action \(S(r)\) and recovered \((\omega_p/c)\sqrt{r/(r-r_b)}\) exactly.
- The full official TeX source and 8-page PDF were read. Rendered pages 1, 3, 5, 7 and 8 show legible equations, figures and references.

## Assumptions

- Static, nonrotating Schwarzschild--(A)dS geometry analytically continued to the classical singularity.
- A single decoupled channel with a real, regular, frequency-independent potential and reflecting wall.
- Thermal equilibrium and the two-sided correlator construction.
- Order-one entire growth, one asymptotic QNM ray and the bouncing-geodesic large-imaginary-frequency asymptotics.

## Not independently verified

- The companion paper's numerical QNM spectra across scalar, electromagnetic and gravitational channels.
- The pseudospectral plasma-shell data in Figure 4.
- A uniqueness theorem for inferring interior geometry from the measured spectrum.
- Any observational sensitivity or population forecast for primordial black holes.

# Relevance to the vault

The cavity product is relevant to the vault's spectral and finite-boundary work because it isolates the analytic hypotheses behind a QNM product representation. It is not a one-loop determinant, a Euclidean gravitational path integral or a boundary charge. The most important reusable warning is that the interior interpretation enters through complex analytic continuation and growth assumptions; a finite numerical spectrum cannot by itself certify the singularity or its resolution.

# Bottom line

Use the product and spacing formulas as conditional spectral tools. Do not cite this paper alone as a self-contained universal proof or as evidence that an astrophysical measurement can uniquely probe a black-hole singularity. The plasma setup is an interesting model study whose main missing link is a realistic source-and-detector analysis.
