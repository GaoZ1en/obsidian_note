---
paper id: 2607.15145v1
title: Semiclassical estimates near threshold energies and resonance counting on Schwarzschild black holes
authors:
  - Thomas Stucker
publication date: 2026-07-16T15:49
abstract: |-
  The paper proves a Weyl law for Schwarzschild quasinormal modes in a sector below the real axis. A new semiclassical scattering--b transition calculus gives uniform resolvent estimates near the zero-energy threshold, excludes high-angular-momentum modes from a growing disc, and combines with the Hitrik--Zworski resonance lattice to obtain a C lambda cubed counting law. It also proves that cutting the resolvent off away from the horizon does not cancel poles.
comments: "38 pages, 1 figure"
url: https://arxiv.org/abs/2607.15145v1
summary: "A resonance Weyl law built from threshold resolvent estimates, angular-momentum exclusion, and the distorted Schwarzschild QNM lattice."
tags: []
---

Back to [[2026_07_17_overview]].

This is the most reusable spectral paper in today's list. It extends the familiar compact, self-adjoint Weyl-law story to an open black-hole resonance problem. The proof does not count quasinormal modes directly from a phase-space volume: it first excludes spurious high-angular-momentum resonances near threshold, then counts a separately constructed trapped-mode lattice with angular degeneracy.

# Regge--Wheeler resonances and outgoing conditions

After spherical-harmonic decomposition of the scalar wave equation and passage to the tortoise coordinate \(x\), the radial family is

$$
P_\ell(\sigma)
=
D_x^2+V_\ell(x)-\sigma^2,
$$

with

$$
V_\ell(x)
=
\left(1-\frac{2m}{r(x)}\right)
\left(
\frac{\ell(\ell+1)}{r(x)^2}
+
\frac{2m}{r(x)^3}
\right).
$$

The two ends are different:

- as \(x\to+\infty\), spatial infinity has the long-range inverse-square tail \(V_\ell\sim\ell(\ell+1)x^{-2}\);
- as \(x\to-\infty\), the event-horizon end has exponential decay.

Quasinormal modes are poles of a meromorphically continued outgoing resolvent. Their boundary condition is therefore encoded by complex deformation and weighted \(L^2\) behavior, not by Dirichlet or Neumann data at finite endpoints.

# Why zero energy defeats ordinary semiclassical ellipticity

For large angular momentum set

$$
h=[\ell(\ell+1)]^{-1/2}.
$$

At nonzero frequency the asymptotically flat end has scattering behavior, while at \(\sigma=0\) the inverse-square potential lives at a \(b\)-type threshold. An ordinary fixed-energy semiclassical calculus does not remain uniform as \(\sigma\to0\). The paper therefore resolves the joint limit

$$
h\to0,
\qquad
\sigma\to0,
\qquad
|\sigma|\langle x\rangle
\text{variable}.
$$

# The scattering--\(b\) transition scale

The basic differentiated quantity is

$$
h\frac{\langle x\rangle}
{1+|\sigma|\langle x\rangle}\partial_x.
$$

For fixed nonzero \(\sigma\) and large \(x\), it has scattering scaling; at \(\sigma=0\), it becomes \(b\)-type. Three boundary weights encode the transition:

$$
\rho_{\mathrm{scf}}
=
\frac{1}{1+|\sigma|\langle x\rangle},
$$

$$
\rho_{\mathrm{tf}}
=
\frac{1+|\sigma|\langle x\rangle}{\langle x\rangle},
\qquad
\rho_{\mathrm{zf}}
=
\frac{|\sigma|\langle x\rangle}
{1+|\sigma|\langle x\rangle}.
$$

For a repulsive inverse-square model, complex scaling produces the principal-symbol structure

$$
e^{-2i\beta}
\left(|\xi|^2+\mu\rho_{\mathrm{scf}}^2\right)
-
e^{2i\arg\sigma}\rho_{\mathrm{zf}}^2.
$$

The allowed complex sector keeps these two terms from canceling. Ellipticity in the transition calculus then yields a cutoff-resolvent estimate uniform down to the zero-energy face.

# Different rescalings at infinity and at the horizon

At spatial infinity, the angular-momentum scaling gives uniform estimates for

$$
|\sigma|
\le
c_0\sqrt{\ell(\ell+1)}.
$$

The horizon end requires a different normalization. There the paper sets

$$
h=|\sigma|^{-1},
\qquad
\lambda^2=h^2\ell(\ell+1),
$$

and begins the complex deformation around

$$
x\sim-2m\log(\lambda^2).
$$

This logarithmic shift is chosen so that the exponentially small horizon potential remains controlled even after multiplication by the large factor \(\lambda^2\). The two end estimates are then glued across the compact trapping region.

# The exclusion wedge and the distorted resonance lattice

The gluing argument excludes high-\(\ell\) resonances from a disc whose radius is proportional to \(\sqrt{\ell(\ell+1)}\) in a sector below the real axis. This is the missing low-energy input needed before the trapped resonance asymptotics can be summed without contamination from large angular momenta.

The Hitrik--Zworski lattice used next has the form

$$
\lambda_{\ell,n}
=
\left(\ell+\frac12\right)
G\!\left(
2\pi\frac{n+\frac12}{\ell+\frac12},
\frac{1}{\ell+\frac12}
\right).
$$

Combining that lattice with the exclusion region gives

$$
\boxed{
N_\theta(\lambda)
=
C_{\theta,m}\lambda^3+o(\lambda^3)}
$$

for QNM in the chosen sector, with the small-angle coefficient

$$
C_{\theta,m}
=
54\sqrt3\,m^3\theta+O(\theta^2).
$$

A useful exponent check is independent of the microlocal details. At fixed \(\ell\), angular degeneracy contributes \(2\ell+1=O(\ell)\); the sector contains \(O(\ell)\) radial overtones; and \(\ell\lesssim\lambda\). Hence

$$
\sum_{\ell\lesssim\lambda}O(\ell^2)
=
O(\lambda^3).
$$

This explains the power, though not the coefficient.

# Why horizon cutoffs preserve QNM poles

A cutoff resolvent supported away from the event horizon could in principle lose a pole if the corresponding resonant state were supported entirely at the horizon. The paper compares the Regge--Wheeler resolvent with a horizon-penetrating formulation and analyzes possible dual states supported at the horizon.

Such a distribution would be a finite sum of derivatives \(\delta^{(k)}\). Substitution into the adjoint equation gives a recurrence for the coefficients. The recurrence has no nonzero solution with the required support, so a cutoff away from the horizon cannot cancel a genuine QNM pole.

# Transfer to the Proca and Weyl-law notes

The local note `Articles/Quantization in AdS/Proca/Weyl law.md` emphasizes compact elliptic spectra and phase-space volume. The present paper supplies a complementary recipe for resonances:

1. identify the threshold where standard ellipticity degenerates;
2. construct a calculus uniform across that threshold;
3. prove an angular-momentum-dependent exclusion region;
4. obtain or import a trapped resonance lattice;
5. count the lattice with all mode degeneracies;
6. prove that the chosen cutoff does not erase poles.

This does not transfer verbatim to global AdS Proca. The paper treats a scalar field on asymptotically flat Schwarzschild, the operator is non-self-adjoint after outgoing continuation, and no Proca constraint or coupled vector system appears. Its immediate value is methodological and as a model for future black-hole QNM extensions.

# Verification boundary

The complete source and its proof structure were inspected. The \(\lambda^3\) exponent was independently checked by mode multiplicities. The scattering--\(b\) pseudodifferential construction, the imported symbol \(G\), the exact coefficient \(54\sqrt3m^3\theta\), and the global Fredholm argument were source-derived rather than independently reproduced.

Three source typos were kept out of the derivation above: prose before the semiclassical rescaling reverses the definition of \(h\); the final threshold-theorem sector has \(+\delta\) where the preceding proposition has \(-\delta\); and one Laurent expansion uses an undefined exponent \(j\) instead of its summation index \(k\).
