---
paper id: 2608.04665v1
title: Wavefunctions of AdS$_3$ Universes and $T\bar{T}$-deformed Torus Partition Functions
authors:
  - Shinji Hirano
publication date: 2026-08-05T10:23
abstract: |-
  Reduced quantum-gravity wavefunctions of AdS3 torus geometries are related to the one-parameter family of \(T\bar T\)-deformed torus partition functions. A proposed invertible integral transform turns fixed deformation coupling into a finite-width bulk wavepacket and recovers boundary localization in the CFT limit. Euclidean Rindler AdS3, closed Lorentzian torus universes, and formal dS extensions are discussed.
comments: "28 pages, 4 figures"
url: https://arxiv.org/abs/2608.04665v1
summary: "A spectral intertwiner between torus WdW evolution and the TbarT flow that replaces a sharp finite-cutoff screen by a radial wavepacket."
tags: []
---

[[2026_08_06_overview|Back to the 2026-08-06 overview]]

The transferable construction is an intertwiner between two reduced one-dimensional evolutions sharing the same modular spectral operator. It is not a local bulk reconstruction theorem and does not produce a CPS charge or a general finite-cutoff dictionary.

## Torus gravity in York time

In CMC gauge,

$$
g_{ij}=e^{2\phi}\bar g_{ij}.
$$

The momentum constraint makes the conformally rescaled traceless momentum a transverse-traceless tensor, hence a quadratic differential. For a flat torus, the Lichnerowicz equation makes \(\phi\) spatially constant. The reduced variables are the modulus \(m=m_1+im_2\), its momenta, York time \(\tau\), and conjugate volume \(V\).

With the source's factor ordering,

$$
\left(\sqrt{\tau^2-4\Lambda}\,\partial_\tau\right)^2\Psi
=\left(\Delta_{\rm Maass}+\frac14\right)\Psi.
$$

The Euclidean continuation replaces \(\tau^2-4\Lambda\) by \(\tau_E^2+4\Lambda\). The \(1/4\) shift is ordering-dependent and is decisive for the match below.

## The \(T\bar T\) flow as Bessel evolution

Define

$$
\lambda=\frac{m_2}{\mu}>0,
\qquad
Z_{T\bar T}=e^{2\lambda}\lambda^{1/2}\widetilde Z_{T\bar T}.
$$

The torus flow becomes

$$
\lambda^2(\partial_\lambda^2-4\partial_\lambda)Z_{T\bar T}
=\Delta_{\rm Maass}Z_{T\bar T},
$$

or

$$
\left(\lambda^2\partial_\lambda^2+\lambda\partial_\lambda-4\lambda^2\right)
\widetilde Z_{T\bar T}
=\left(\Delta_{\rm Maass}+\frac14\right)\widetilde Z_{T\bar T}.
$$

Introduce WdW time by

$$
dT=\frac{d\tau}{\sqrt{\tau^2-4\Lambda}}
$$

in Lorentzian signature, or \(dT=d\tau_E/\sqrt{\tau_E^2+4\Lambda}\) in Euclidean signature. Then

$$
\partial_T^2\Psi
=\left(\Delta_{\rm Maass}+\frac14\right)\Psi.
$$

The two descriptions now share the same spatial spectral operator.

## Spectral modes and the forward transform

Expand modular-invariant functions on \(SL(2,\mathbb Z)\backslash\mathbb H\) in Eisenstein modes and Maass cusp forms:

$$
\left(\Delta_{\rm Maass}+\frac14\right)\phi_r=-r^2\phi_r.
$$

The \(\lambda\)-equation is modified Bessel. On the positive branch, matching the CFT asymptotics selects \(K_{ir}(2\lambda)\), whose cosine representation yields

$$
Z_{T\bar T}(\lambda,m)
=\frac{2}{\sqrt\pi}\lambda^{1/2}
\int_0^\infty dT\,
e^{2\lambda(1-\cosh T)}\Psi(T,m).
$$

The even WdW branch \(\cos(rT)\) is kept; the odd branch vanishes at \(T=0\). Thus the transform already contains a boundary/maximal-slice choice.

The differential core is

$$
\left(\lambda^2\partial_\lambda^2+\lambda\partial_\lambda-4\lambda^2\right)
e^{-2\lambda\cosh T}
=\partial_T^2e^{-2\lambda\cosh T}.
$$

## Boundary localization and finite-width screen

Near \(T=0\),

$$
K(\lambda,T)
=\frac{2}{\sqrt\pi}\sqrt\lambda\,
e^{2\lambda(1-\cosh T)}
\simeq
2\sqrt{\frac\lambda\pi}e^{-\lambda T^2}.
$$

On \(T\ge0\), the Gaussian has unit mass and tends to \(\delta(T)\) as \(\lambda\to\infty\). Thus \(\mu\to0^+\) recovers the WdW boundary value. At finite coupling, the map samples a range of WdW times.

This distinguishes

$$
Z_{\rm CFT}\longrightarrow Z_{T\bar T}
$$

through the usual diffusion/RG kernel from

$$
\{Z_{T\bar T}(\lambda)\}_{\lambda>0}
\longleftrightarrow
\Psi(T)
$$

through the claimed reversible representation change. A single fixed coupling is not enough for tomography.

## Rindler AdS3 radial dictionary

For

$$
ds^2=\ell^2
\left(d\rho^2+\cosh^2\rho\,d\alpha^2+\sinh^2\rho\,d\beta^2\right),
$$

one has

$$
T=\log\coth\rho.
$$

Thus \(T=0\) is the asymptotic boundary and \(T\to\infty\) the Rindler horizon. Including the Jacobian,

$$
\widetilde K(\lambda,\rho)
=K(\lambda,T(\rho))
\left|\frac{dT}{d\rho}\right|,
\qquad
\left|\frac{dT}{d\rho}\right|
=\operatorname{csch}\rho\,\operatorname{sech}\rho.
$$

Its maximum is

$$
\rho_*=\frac14\operatorname{arsinh}(4\lambda).
$$

Larger \(\lambda=m_2/\mu\) pushes the packet outward and narrows it. This is the precise finite-width-screen claim.

## Closed Lorentzian torus universe

A double Wick rotation gives

$$
ds^2=-dt^2+\cos^2(t/\ell)d\alpha^2+\sin^2(t/\ell)d\beta^2,
$$

with

$$
T=\log\cot(t/\ell).
$$

It runs from \(+\infty\) at the big bang through \(T=0\) at maximal volume \(t=\pi\ell/4\) to \(-\infty\) at the big crunch. Here the CFT-limit screen is a maximal Cauchy slice of a compact universe, not an asymptotic boundary.

## Formal inverse and extensions

The paper proposes

$$
K^{-1}(T,\lambda)
=\lambda^{-1/2}e^{-2\lambda}
\sin(\pi\partial_T)
\left[
\frac{\sinh T}{\sqrt\pi}e^{-2\lambda\cosh T}
\right]
$$

and

$$
\Psi(T,m)
=\int_0^\infty d\lambda\,
K^{-1}(T,\lambda)Z_{T\bar T}(\lambda,m).
$$

This is a formal spectral inverse, not yet a functional-analytic theorem: the domain of \(\sin(\pi\partial_T)\), measure, convergence, and endpoint terms are not specified.

The dS section reinterprets \(T=0\) as future infinity, a Clifford torus, or \(r=\ell/\sqrt2\) after continuation. Higher genus/dimension is only schematic because the Lichnerowicz reduction becomes nonlocal and generally nonseparable.

## Local use and claim tier

The reusable method is:

1. reduce both descriptions until they share a spatial spectral operator;
2. diagonalize that operator before guessing a coordinate dictionary;
3. compare the remaining one-dimensional evolutions;
4. select the kernel by physical branch and normalization;
5. recover a geometric scale only after returning from WdW time.

This suggests testing sharp finite-cutoff screens against actual spectral intertwiners. It does not supply a boundary symplectic flux, Noether charge, local operator map, or alternative-quantization normalization.

## Verification note

### Checked

- Mathematica returned zero for the differential-intertwiner residual.
- The half-line Gaussian normalization is exactly one, so the CFT-limit kernel tends to \(\delta(T)\), not \(2\delta(T)\).
- Mathematica reproduced \(|dT/d\rho|=\operatorname{csch}\rho\operatorname{sech}\rho\), the stationary point \(\rho_*\), and a negative second log derivative for every \(\lambda>0\).

### Failed

- No checked forward-kernel identity failed.

### Blocked

- The inverse was not promoted to a theorem because its function space, spectral measure, endpoint terms, and convergence assumptions are absent.
- The CMC reduction, factor ordering, modular spectral completeness, and dS path-integral interpretation remain source-derived.
