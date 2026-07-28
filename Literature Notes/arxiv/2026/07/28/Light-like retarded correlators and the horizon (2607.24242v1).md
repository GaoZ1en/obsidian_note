---
paper id: 2607.24242v1
title: Light-like retarded correlators and the horizon
authors:
  - Justin R. David
  - Leonard Schwarze
publication date: 2026-07-27T10:21
abstract: |-
  The large-frequency retarded correlator at light-like momentum has an anomalous power law controlled by the first near-boundary correction to a black-hole blackening factor. WKB transport carries frequency from the ingoing horizon condition only through a common phase, while a boundary-layer Bessel problem fixes the source/response scaling. The paper treats scalar and stress-tensor channels in planar, spherical, and hyperbolic AdS black holes and checks the curved-horizon result against an exact hyperbolic solution.
comments: "38 pages main text, 5 pages Appendix, 1 figure"
url: https://arxiv.org/abs/2607.24242v1
summary: "A reusable horizon-to-boundary WKB argument for anomalous light-cone scaling, with several source-level exponent typos that must be repaired."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

The paper’s useful mechanism is not a new holographic Green function in closed form. It is a boundary-layer rule: once the infalling horizon condition has selected the WKB branch, the first nontrivial asymptotic term in the blackening factor determines the light-like scaling exponent.

# Planar black hole and the degenerate light-like limit

Use

\[
ds^2=\frac{R^2}{z^2}
\left(
-f(z)dt^2+\frac{dz^2}{f(z)}+d\vec x^2
\right),
\qquad
f(0)=1,
\]

with a nonextremal outer horizon \(z=z_\star\). For a minimally coupled scalar,

\[
\phi(t,\vec x,z)
=\phi(z)e^{i(\vec K\cdot\vec x-\Omega t)}.
\]

After

\[
w=\left(\frac{z}{z_\star}\right)^d,
\qquad
\phi=f^{-1/2}\psi,
\]

the radial equation has Schrödinger form. With

\[
|\vec K|=\delta\Omega,
\qquad
\omega=\frac{\Omega}{2\pi T},
\]

its leading WKB potential is

\[
Q(w)
=
w^{2/d-2}
\frac{(1-\delta^2 f(w))f'(1)^2}
{4f(w)^2}.
\tag{2.49}
\]

For generic \(\delta<1\), the constant \(1-\delta^2\) survives at \(w=0\), and one recovers the vacuum scaling

\[
G_R(\omega,\delta\omega)
\sim\omega^{2\Delta-d}.
\]

At \(\delta=1\), that leading term cancels. The wave then probes the first correction in \(1-f\), producing a parametrically thicker boundary layer and a different Bessel index.

# Horizon transport and the boundary layer

Near the horizon,

\[
Q(w)\sim\frac{1}{4(1-w)^2},
\]

so the WKB branch

\[
\phi_{\rm WKB}
=
\frac{A}{Q^{1/4}f^{1/2}}
\exp\left(
i\omega\int^w dt\,\sqrt{Q(t)}
\right)
\tag{2.51}
\]

matches the infalling behavior

\[
\phi_{\rm in}\sim
(1-w)^{-i\omega/2}.
\]

The key observation is that WKB propagation changes the coefficients reaching the near-boundary region by a common \(\omega\)-dependent phase. That phase cancels in the ratio of normalizable to nonnormalizable coefficients. The power of \(\omega\) is therefore local to the boundary-layer equation.

Write the first nontrivial boundary correction schematically as

\[
f(\rho)-1\sim c_n\rho^n .
\]

Balancing the light-like momentum term with radial derivatives gives

\[
\rho_b\sim\omega^{-2/(n+2)}.
\]

The near-boundary Bessel solution has source and response coefficients with opposite powers of \(\omega\), giving

\[
\boxed{
G_R(\omega,\text{light-like})
\sim
\omega^{\frac{2}{n+2}(2\Delta-d)}.
}
\tag{3.20}
\]

For a planar AdS black hole, \(n=d\), hence

\[
G_R\sim
\omega^{\frac{2(2\Delta-d)}{d+2}}.
\]

For spherical or hyperbolic horizons, the boundary curvature produces \(n=2\), hence

\[
G_R\sim\omega^{\Delta-d/2}.
\]

The result assumes no obstructing WKB turning point and that the terms discarded from the potential stay subleading in both matching regions.

# Exact curved-horizon check

For the hyperbolic black hole, the scalar radial equation reduces to a hypergeometric equation. The ingoing solution gives an exact ratio of Gamma functions. Its asymptotics are

\[
G_R(\omega,\lambda\ {\rm fixed})
\sim\omega^{2\Delta-d},
\]

but after first imposing the light-like condition

\[
\lambda=\pm\omega,
\]

one obtains

\[
G_R(\omega,\pm\omega)
\sim\omega^{\Delta-d/2}.
\]

This is the \(n=2\) instance of the boundary-layer rule and supplies an analytic check on the WKB reasoning.

# Stress-tensor channels

For the planar black hole, the gauge-invariant scalar, shear, and sound master fields have different near-boundary source/response weights. The paper obtains

\[
G^{R}_{\rm scalar}
\sim\omega^{\frac{2d}{d+2}},
\]

\[
G^{R}_{\rm shear}
\sim\omega^{\frac{4d}{d+2}},
\]

\[
G^{R}_{\rm sound}
\sim\omega^{\frac{6d}{d+2}}.
\]

These are channel-dependent despite sharing the same geometric boundary-layer thickness. The extra powers arise from the master-field/operator dictionary, not from a different horizon condition.

At large \(d\), integer Bessel orders introduce logarithms; the pure power law then needs the refined prescription discussed in the source’s large-\(d\) section.

# Applicability and use

This mechanism can be reused when:

- the black-hole fluctuation equation can be put in a one-dimensional WKB form;
- the ingoing solution reaches the asymptotic region without a relevant turning point;
- the source/response map is known;
- the first nonzero coefficient in \(f-1\) is controlled.

It provides a fast way to read off high-frequency light-cone exponents without solving the full radial ODE. It is especially relevant to AdS black-hole correlators and quasinormal/spectral asymptotics, but it does not itself address alternative quantization, CPS flux, or asymptotic charges.

# Verification and source corrections

The technical chain above is source-derived except for the following independent algebraic checks.

- **Mathematica:** the printed exponent in source Eq. (2.72) does not reduce to the target light-like scaling. Its denominator power is printed as
  \[
  \frac{2(d-h)}{d+2},
  \]
  but consistency with the surrounding derivation requires
  \[
  \frac{2d(1-h)}{d+2}.
  \]
  The printed version misses the target exponent by
  \[
  -\frac{2(d-1)h}{d+2};
  \]
  the repaired version reproduces it exactly.
- **Mathematica:** the sound-channel Bessel index gives \(6d/(d+2)\), not \(4d/(d+2)\).
- **Rendered PDF:** Eq. (2.73) uses \(w\) where the frequency \(\omega\) is intended; Eq. (4.15) prints the sound exponent as \(4d/(d+2)\), while its derivation and the paper’s summary give \(6d/(d+2)\).
- Additional source-level notation slips include a missing second derivative in Eqs. (5.5)--(5.6), a “shear” label on the sound equation in Eq. (5.30), and a sign-inconsistent boundary power in Eq. (3.18).

No independent numerical integration of the fluctuation equations was performed. The WKB matching and exact hyperbolic Gamma-function solution were inspected but not recomputed end to end.
