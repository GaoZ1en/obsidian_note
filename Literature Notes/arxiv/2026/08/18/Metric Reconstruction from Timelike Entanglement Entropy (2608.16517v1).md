---
paper id: 2608.16517v1
title: Metric Reconstruction from Timelike Entanglement Entropy
authors:
  - Hao Feng
  - Tian-Shun Chen
  - Shao-Feng Wu
publication date: 2026-08-17T12:59
abstract: |-
  Timelike entanglement entropy (TEE) provides a Lorentzian boundary probe of bulk geometry, but its use for metric reconstruction depends on the holographic prescription and on the extremal-surface branch selected by that prescription. We study this inverse problem for strip-shaped TEE data and make these dependencies explicit. In the complex-valued weak extremal surface (CWES) prescription, the time-width dependence of TEE determines an Abel density H(W) on a selected real branch; for Bañados--Teitelboim--Zanelli (BTZ) black holes this gives an analytic reconstruction of the blackening factor once the singularity endpoint fixes the radial origin. After developing a forward numerical method for the complex-coordinate prescription, we formulate it as the main reconstruction scheme for asymptotically AdS backgrounds. On a chosen complex branch, the time-width dependence of TEE supplies the Abel input that determines the TEE-accessible density, while one additional geometric anchor is required to convert that density into a definite radial metric profile. With UV or horizon-scale anchoring and rational continuation from reconstructed complex-path samples, the method reproduces benchmark BTZ, four-dimensional Schwarzschild, and Reissner--Nordstrom blackening factors. The Gubser--Rocha example shows that a single strip observable with a nontrivial spatial warp factor determines only one functional combination of the metric functions.
comments: 46 pages, 14 figures
url: https://arxiv.org/abs/2608.16517v1
summary: "Selected-branch timelike strip entropy fixes an Abel density, not a unique bulk metric: one radial anchor is still required in one-function models, and an additional observable is required when two metric functions are unknown."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** fix a holographic TEE prescription and a smooth extremal-surface branch upstream; require a one-to-one transformed coordinate $W$ along the selected real or complex path; keep one square-root sheet and pole prescription; and supply one independent radial-profile anchor. Under these conditions the entropy slope determines a conserved parameter, the time-width function gives an Abel density, and a one-function blackening factor can be reconstructed along that branch.

The statement should be rewritten as: **timelike strip entropy reconstructs a prescription- and branch-dependent Abel density, from which an anchored representative metric profile can be obtained in one-function ansätze.** The entropy curve alone does not determine a unique Lorentzian bulk metric. In the Gubser--Rocha ansatz it does not even separate the two unknown functions $f$ and $h$.

The numerical SAdS$_4$ and RN tests are forward-generated benchmarks. They use the known horizon position or an equivalent near-boundary coefficient as extra input and a rational continuation from a sampled complex path. They validate the pipeline on those examples, not uniqueness or prescription independence of the inverse problem.

Relevance: **medium detailed** (`T2-dS-BH-holography`, `T2-model`).

# Two distinct holographic inputs

The paper keeps two proposed HTEE constructions separate.

1. The CWES construction uses a prescribed mixed-signature surface in the real Lorentzian geometry: two spacelike pieces reach future/past singularities and a timelike piece joins them through the bifurcation region.
2. The complex-coordinate construction uses a complex extremal surface and a tracked contour/square-root sheet in the complexified radial plane.

The reconstruction never selects between competing HTEE prescriptions or among all admissible saddles. It takes one smooth branch as input. This is essential because inequivalent prescriptions can assign different entropy curves to the same timelike boundary interval.

# Hamilton--Jacobi data extraction

For the CWES metric ansatz

$$
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+r^2d\mathbf x^2,
$$

the conserved quantity on a spacelike branch gives

$$
\Delta t(E)
=2E\int_0^\infty
\frac{dr}{f(r)\sqrt{r^{2d-4}f(r)+E^2}},
$$

and

$$
\operatorname{Re}S_T(E)
=\frac12\int_0^\Lambda
\frac{r^{2d-4}\,dr}{\sqrt{r^{2d-4}f(r)+E^2}}.
$$

The timelike segment contributes an $E$-independent imaginary constant. Differentiating the two $E$-dependent integrals yields

$$
\frac{dS_T}{d\Delta t}=-\frac E4,
\qquad
E(\Delta t)=-4\frac{dS_T}{d\Delta t}.
$$

The same ratio follows for the complex-coordinate contour because its time and area integrals have the same denominator. This step assumes the selected contour can be held in one homotopy class under infinitesimal changes of $E$, with no pole or branch point crossing.

# CWES Abel inversion

Define

$$
W(r)=r^{2d-4}f(r),
\qquad
H(W)=\frac{r(W)^{2d-4}}{W}\frac{dr}{dW}.
$$

On a monotone real branch,

$$
\mathcal I(x)
:=\frac{\Delta t(E)}{2E}
=\int_{W_0}^{\infty}\frac{H(W)}{\sqrt{W-x}}\,dW,
\qquad x=-E^2.
$$

Analytically continuing $\mathcal I$ to the cut gives

$$
\operatorname{Disc}\mathcal I(s)
=2i\int_{W_0}^{s}\frac{H(W)}{\sqrt{s-W}}\,dW,
$$

and hence

$$
H(W)
=\frac{1}{2\pi i}\frac d{dW}
\int_{W_0}^{W}
\frac{\operatorname{Disc}\mathcal I(s)}{\sqrt{W-s}}\,ds.
$$

Recovering the radial coordinate requires one more integration:

$$
r^{2d-3}(W)
=(2d-3)\int_{W_0}^{W}\xi H(\xi)\,d\xi+C.
$$

For the selected BTZ branch, the singular endpoint sets $r(W_0)=0$ and fixes $C=0$. This is geometric information beyond the local Abel density.

# Analytic BTZ check

For BTZ, the boundary data give

$$
E=-\coth\frac{\Delta t}{2},
\qquad
W_0=-1.
$$

The discontinuity of the continued input is

$$
\operatorname{Disc}\mathcal I(s)
=-\frac{i\pi}{\sqrt{-s}},
\qquad -1<s<0.
$$

Abel inversion yields

$$
H(W)=\frac{1}{2W\sqrt{1+W}}.
$$

With the singularity anchor,

$$
r=\sqrt{1+W},
\qquad
f(r)=W=r^2-1.
$$

The complex-coordinate prescription produces the same analytic density on a different continued sheet. There the horizon position fixes the remaining integration constant and gives $f(z)=1-z^2$.

# Complex-coordinate reconstruction

For

$$
ds^2=z^{-2}\left[-f(z)dt^2+\frac{dz^2}{f(z)}+h(z)d\mathbf x^2\right],
$$

the turning point satisfies

$$
E^2=-\frac{h(z_t)^{d-2}f(z_t)}{z_t^{2d-2}}.
$$

In the one-function case $h=1$, set

$$
W(z)=\frac{f(z)}{z^{2d-2}},
\qquad
H(W)=-\frac{1}{z^{2d-2}W}\frac{dz}{dW}.
$$

On a directed simple $W$-curve with a single-valued inverse $z(W)$,

$$
\mathcal I(x)=\int_x^\infty\frac{H(W)}{\sqrt{W-x}}\,dW,
\qquad x=-E^2,
$$

and the adjoint Abel inverse is

$$
H(W)
=-\frac1\pi\frac d{dW}
\int_W^\infty\frac{\mathcal I(x)}{\sqrt{x-W}}\,dx.
$$

Then

$$
z^{-(2d-3)}(W)
=(2d-3)\int \xi H(\xi)\,d\xi+C,
\qquad
f(z)=z^{2d-2}W(z).
$$

The constant $C$ is invisible to the Abel inversion. The complex surface does not end at the real singularity, so the paper supplies a UV coefficient or horizon position to fix it.

# SAdS$_4$ and RN benchmarks

For SAdS$_4$, $f(z)=1-z^3$ and $u=W^{-1/4}$. The exact near-boundary inverse is

$$
z(u)=u-\frac14u^4+\frac{3}{32}u^7+\cdots.
$$

The entropy data fix lower coefficients, while the quartic coefficient is the residual radial-profile freedom. Scanning this coefficient and imposing the known horizon condition $f(1)=0$ selects

$$
a_4^*=-0.2498,
$$

close to $-1/4$. AAA rational approximation is then used to continue the reconstructed complex-path samples to the real horizon.

For planar RN--AdS$_4$,

$$
f_{\mathrm{RN}}(z)
=1-(1+Q^2)z^3+Q^2z^4,
$$

and

$$
z(u)=u-\frac{1+Q^2}{4}u^4+\frac{Q^2}{4}u^5+O(u^7).
$$

At $Q=1.2$, the anchored scan returns $(-0.6103,0.3595)$, close to the exact $(-0.61,0.36)$. These are consistency tests against known forward data and known horizon normalization.

# What one strip cannot determine

For the Gubser--Rocha example, the natural transformed variable is

$$
W(z)=\frac{f(z)h(z)}{z^4},
$$

and the reconstructed density satisfies

$$
H(W)=-\frac1{f(z(W))}\frac{dz}{dW},
\qquad
f(z(W))h(z(W))=Wz(W)^4.
$$

These are two relations for the three branch functions $z(W)$, $f(z(W))$, and $h(z(W))$. The real and imaginary parts of the same complex entropy do not provide an additional independent equation. One must supply $f$, $h$, or a second observable/region family.

# Likely use for current projects

- The paper is a clear inverse-problem example where boundary data determine a reduced density before a geometric representative is fixed.
- Its branch and anchor bookkeeping is directly relevant to avoiding overclaims in boundary-to-bulk reconstruction.
- The Abel transform may be reusable for one-dimensional reconstruction subproblems.
- It does not construct a covariant phase space, charge algebra, gluing map, or quantum error-correcting recovery channel.

# Why it is not high priority

The method concerns a restricted static strip ansatz and a chosen HTEE prescription. The main object reconstructed directly is $H(W)$, not a unique metric. Numerical validation is on synthetic data generated from benchmark geometries, with external anchoring. This is useful holographic methodology but not a direct solution of the vault's boundary-symplectic or gluing problems.

# Verification log

## Source-derived

- Read the complete 46-page PDF and the complete 2,687-line TeX source, including the numerical settings and BTZ Abel-condition appendix.
- Visually inspected the abstract, analytic BTZ inversion, residual UV freedom, RN benchmark, numerical settings, and complex-branch discussion on rendered pages.
- Traced the CWES and complex-coordinate prescriptions separately and retained their different branch, endpoint, and anchor assumptions.

## Checked

Verified: differentiating the time-width and area integrands reproduces the Hamilton--Jacobi ratio $dS_T/d\Delta t=-E/4$.

Verified: Mathematica evaluated the BTZ Abel integral with $H(W)=1/[2W\sqrt{1+W}]$ and reproduced $-\pi/[2\sqrt{-s}]$ for $-1<s<0$, equivalent to the printed discontinuity equation.

Verified: Mathematica series reversion reproduced

$$
z(u)=u-\frac14u^4+\frac{3}{32}u^7+\cdots
$$

for SAdS$_4$, and

$$
z(u)=u-\frac{1+Q^2}{4}u^4+\frac{Q^2}{4}u^5+O(u^7)
$$

for RN.

Verified: exact critical-point evaluation reproduced all three printed RN late-time slopes and all three printed Gubser--Rocha late-time slopes to the quoted precision after choosing the root reached by the upper traced branch.

Assumptions: a smooth prescribed saddle branch; fixed contour homotopy and square-root sheet; no crossed singularity; local invertibility of $W$; a stable derivative of the entropy data; and an independent radial/horizon anchor for a definite one-function profile.

## Blocked

Blocked: no executable forward/reconstruction code or raw sampled branch data are included in the source package. The elastic-band tracing, Abel-grid inversion, AAA ensemble, and plotted reconstruction errors cannot be independently rerun from the paper artifacts alone.

Blocked: prescription selection is upstream of the inverse map. The entropy data used here cannot decide whether CWES, a complex extremal surface, or another TEE prescription is the correct bulk dual.

## Not independently verified

Not verified: numerical contour homotopy and square-root sheet continuity at every sample used in the figures.

Not verified: stability of AAA continuation away from the sampled complex path beyond the reported ensemble scan.

Not verified: existence or uniqueness of a Lorentzian metric compatible with generic noisy boundary TEE data.

# Bottom line

The paper succeeds at something narrower and more precise than its title suggests. It derives and benchmarks an Abel inversion for the geometric density seen by one selected timelike strip branch. A one-function metric requires one extra radial anchor, and a two-function metric requires an additional independent observable. The analytic BTZ formulas and critical slopes check; the numerical inverse pipeline is visually documented but not reproducible from the supplied paper package because code and raw data are absent.
