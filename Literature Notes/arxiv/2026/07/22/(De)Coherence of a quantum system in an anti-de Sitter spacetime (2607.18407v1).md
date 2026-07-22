---
paper id: 2607.18407v1
title: (De)Coherence of a quantum system in an anti-de Sitter spacetime
authors:
  - Mandas Biswas
  - Anupam Mazumdar
publication date: 2026-07-20T18:01
abstract: |-
  The paper couples a localized quantum harmonic oscillator to a discrete global-AdS graviton bath. A local Fermi-normal tidal vertex produces two-phonon transitions, while the discrete AdS spectrum leaves finite-time sinc kernels in the reduced master equation. The authors interpret the oscillating mode rates as decoherence and recoherence and propose a global selection rule tied to the AdS light-travel time, then take a continuum flat-space limit. The boundary-condition-to-spectrum-to-memory-kernel mechanism is useful, but several equations and branch statements are internally inconsistent, so the detailed rates and recoherence claim are not reliable as printed.
comments: "16+2 pages, No figures"
url: https://arxiv.org/abs/2607.18407v1
summary: "A useful discrete-AdS bath mechanism whose scalar quantization, Lindblad formula, and revival rule require repair."
tags: []
---

Back to [[2026_07_22_overview]].

Reason codes: `T2-spectral`, `T2-dS-BH-holography`, `T2-model`.

The paper is useful as a workflow rather than a finished calculation:

\[
\text{AdS boundary condition}
\to\text{discrete normalized modes}
\to\text{local tidal vertex}
\to\text{bath correlator}
\to\text{finite-time memory kernel}
\to\text{flat continuum limit}.
\]

For alternative quantization, the key point is that changing the asymptotic branch changes the symplectic norm, spectrum, spectral weight, and hence the entire open-system kernel—not merely a sign in the boundary condition.

## Global AdS clock and the trapped oscillator

The background is global \(AdS_4\),

\[
ds^2=-\left(1+\frac{r^2}{L^2}\right)c^2dt^2
+\left(1+\frac{r^2}{L^2}\right)^{-1}dr^2+r^2d\Omega_2^2,
\qquad \Lambda=-\frac{3}{L^2}.
\]

With \(r=L\sinh\rho\) and dimensionless global time \(\tau\),

\[
ds^2=L^2[-\cosh^2\rho\,d\tau^2+d\rho^2
+\sinh^2\rho\,d\Omega_2^2].
\]

A radial null ray reaches the timelike boundary in coordinate time

\[
\Delta t_{\rm one-way}=\frac{\pi L}{2c}.
\]

This one-way time is later used as a proposed recurrence clock. A center-to-boundary-to-center signal instead takes \(\pi L/c\), so the physical choice needs justification.

The matter system is

\[
H_m=\frac{p^2}{2m}+\frac12m\omega_m^2x^2,
\qquad \omega_m\gg\frac{c}{L}.
\]

The local AdS tidal trap shifts its frequency to

\[
\omega_{\rm eff}^2=\omega_m^2+\frac{c^2}{L^2},
\qquad
\frac{\delta\omega}{\omega_m}
=\frac{c^2}{2\omega_m^2L^2}+O(L^{-4}).
\]

The regime \(\ell_{\rm osc}\ll L\) and \(\omega_mL/c\gg1\) allows the authors to neglect this small local frequency correction while retaining the global AdS mode spacing.

## Fermi tidal vertex and asserted graviton modes

Near the oscillator geodesic, Fermi normal coordinates and TT gauge give

\[
g_{00}=-\left(1+\frac{1}{2c^2}\ddot h_{11}x^2\right),
\qquad
H_{\rm int}=\frac{m}{4}\ddot h_{11}x^2.
\]

The graviton is asserted to satisfy

\[
(\Box+2/L^2)h_{\mu\nu}=0,
\]

with discrete frequencies

\[
\omega_{n\ell}=\frac{c}{L}(2n+\ell+2),
\qquad \ell\ge2.
\]

The radial functions are taken to be

\[
R_{n\ell}(\rho)=
\frac{N_{n\ell}}{\sqrt{\pi^2L^3}}
(\sinh\rho)^\ell(\cosh\rho)^{-2}
{}_2F_1\!\left(-n,n+\ell+2;\ell+\frac32;\tanh^2\rho\right).
\]

With \(X=b+b^\dagger\), the interaction is organized as

\[
H_{\rm int}=\sum_{n\ell m\lambda}
G^\lambda_{n\ell m}a_{n\ell m\lambda}X^2+\mathrm{H.c.},
\]

\[
G^\lambda_{n\ell m}
=\sqrt{\frac{\pi G\hbar^3\omega_{n\ell}^3}
{8c^2\omega_m^2}}
\,\epsilon_{11}^{\ell m\lambda}R_{n\ell}(\rho).
\]

The mechanism is a two-phonon tidal vertex. The \(b^2\) and \(b^{\dagger2}\) terms select bath frequencies near \(2\omega_m\).

## Finite-time bath kernel

Starting from an initially factorized oscillator--vacuum state, the paper uses a second-order Born truncation, replaces \(\rho_s\) by \(\rho_t\), applies a secular selection, but retains the upper limit \(t\):

\[
\dot\rho_t=-\frac{1}{\hbar^2}
\int_0^t ds\,
\operatorname{tr}_g
[H_t^{\rm int},[H_{t-s}^{\rm int},
\rho_t\otimes\rho^{(g)}]].
\]

For detuning

\[
\Delta\omega=\omega_{n\ell}-2\omega_m,
\]

the real and imaginary finite-time coefficients are

\[
\alpha_R(t)=\frac{\sin(\Delta\omega t)}{\Delta\omega},
\qquad
\alpha_I(t)=\frac{1-\cos(\Delta\omega t)}{\Delta\omega}.
\]

The source's mode rate is

\[
\Gamma_{n\ell}(\rho,t)=
(2\ell+1)
\frac{G\hbar\omega_{n\ell}^3}{64c^2\omega_m^2}
R_{n\ell}^2(\rho)(\Lambda_{1111})^2
\frac{\sin(\Delta\omega t)}{\Delta\omega}.
\]

Oscillating signs are natural for a finite discrete reservoir. A negative instantaneous coefficient can indicate non-Markovian information backflow, but it does not by itself prove restoration of the initial density matrix or even complete positivity of the time-local generator.

## Local resonance versus the proposed global revival rule

The local secular condition is unambiguous:

\[
\omega_{n\ell}=2\omega_m.
\]

The paper then matches the detuning period to the one-way boundary time,

\[
\frac{2\pi}{\Delta\omega}=\frac{\pi L}{2c},
\]

which gives

\[
\omega_{n\ell}=2\omega_m+\frac{4c}{L},
\]

or

\[
2n+\ell=2\left(1+\frac{\omega_mL}{c}\right).
\]

For \(\omega_mL/c=2\), the allowed examples are
\((n,\ell)=(2,2),(1,4),(0,6)\). Near the center,
\(R_{n\ell}^2\sim\rho^{2\ell}\), so the smallest \(\ell\) dominates.

This global rule is heuristic. It uses the one-way rather than round-trip time, and it is not derived from a coherence functional, a resummed bath correlator, or exact reduced evolution.

## Scalar appendix and the boundary-condition problem

The graviton spectrum is supported only by an appendix treating a scalar with

\[
\Delta_\pm=\frac32\pm\sqrt{\frac94+m^2L^2},
\qquad
\phi\sim Ae^{-\Delta_-\rho}+Be^{-\Delta_+\rho}.
\]

The proposed normal modes are

\[
R_{n\ell}=N_{n\ell}(\sinh\rho)^\ell
(\cosh\rho)^{-\Delta}
{}_2F_1\!\left(-n,\Delta+\ell+n;
\ell+\frac32;\tanh^2\rho\right),
\]

with

\[
\omega_{n\ell}=2n+\ell+\Delta_+.
\]

The reusable chain is correct in form:

\[
\text{asymptotic branch}
\to\text{self-adjoint domain and symplectic norm}
\to\text{discrete spectrum and density}
\to\text{bath kernel}.
\]

The source does not implement that chain consistently. It calls \(A=0\) the standard reflective choice in one place and later says \(B=0\) is required by the Klein--Gordon norm. The alternate-quantization footnote mentions the BF bound but omits the narrower window in which both falloffs are normalizable. The displayed KG product also lacks complex conjugation.

## Flat continuum limit

The appendix takes

\[
n,L\to\infty,
\qquad \ell\ \text{fixed},
\qquad \frac{2nc}{L}\to\omega_k,
\]

maps the hypergeometric radial modes to spherical Bessel functions, rescales creation operators, and replaces the discrete sum by a continuum density. The long-time kernel is intended to give

\[
\int_0^\infty ds\,e^{-i(\omega_k-2\omega_m)s}
=\pi\delta(\omega_k-2\omega_m)
-i\,\mathrm{PV}\frac{1}{\omega_k-2\omega_m}.
\]

The paper retains the delta term but omits the principal-value part in the displayed identity, even though that term is the continuum Lamb shift. Its final dissipator is

\[
\dot\rho=\gamma_{\rm grav}
\left(b^2\rho b^{\dagger2}
-\frac12\{b^{\dagger2}b^2,\rho\}\right),
\qquad
\gamma_{\rm grav}=\frac{32}{15}t_{\rm Pl}^2\omega_m^3.
\]

The flat-limit normalization was not independently reproduced.

## What can be reused

- Keep the finite upper limit in the bath correlator when the AdS level spacing is physically relevant.
- Do not continuum-approximate before checking recurrences.
- Derive the spectrum and mode normalization from the same renormalized symplectic structure and boundary condition.
- Scale \(n\), \(L\), radial normalization, density of states, and creation operators together in the flat limit.
- Separate a local transition selection rule from a global recurrence condition.

## Verification and source failures

Checked with Mathematica:

- \(\int_0^\infty dr/(1+r^2/L^2)=\pi L/2\), giving the stated one-way null time;
- \(\sqrt{\omega_m^2+c^2/L^2}/\omega_m-1
=c^2/(2\omega_m^2L^2)+O(L^{-4})\);
- \(\lim_{\Delta\omega\to0}
\sin(\Delta\omega t)/\Delta\omega=t\), not \(1\);
- for \((n,\ell)=(2,2)\) and \(\omega_m=2c/L\),
\(\Delta\omega=4c/L\), not \(6c/L\);
- the displayed one-way-time matching algebra does yield \(\Delta\omega=4c/L\).

Concrete failures in the source:

- the scalar action lacks the factor needed to produce its stated mass term;
- the asymptotic branch and KG-normalizability statements contradict one another;
- the scalar field expansion duplicates \(u_{n\ell m}\) instead of pairing it with \(u_{n\ell m}^*\);
- the displayed AdS Lindblad equation contains \(b^2\rho b^2\) and \([b^2b^2,\rho]\), missing daggers required by the preceding derivation and by its own flat-limit result;
- the polarization completeness supplies one \(\Lambda_{1111}\), while the rate uses \((\Lambda_{1111})^2\) without a rederivation;
- the claim that the sinc factor tends to one is false; it tends to \(t\);
- the worked detuning is arithmetically wrong, and a later formula writes \(\omega_m=2L/c\), which has inverse-frequency dimensions;
- the paper calls global AdS globally hyperbolic even though its calculation itself requires a timelike-boundary condition;
- the holographic counterterm appendix does not feed its counterterm into mode normalization or the master equation.

Accordingly, the defensible source-derived result is narrower: assuming the asserted normalized global graviton modes and local tidal coupling, a second-order finite-time calculation produces oscillatory sinc kernels because the bath is discrete. The numerical rate, complete positivity, and full recoherence claim remain unverified.
