---
paper id: 2608.19261v1
title: Relational Wigner-Smith Duration in Wheeler-DeWitt Scattering
authors:
  - Daulet Berkimbayev
publication date: 2026-08-18T06:32
abstract: |-
  A closed FLRW Wheeler--DeWitt model is formulated as an exact reflection problem. The reflection-phase derivative becomes a relational scalar-clock crossing duration, and a bounded multichannel detector supplies transition probabilities, spectral correlations, and a matrix Wigner--Smith duration without introducing an external time.
comments: "9 pages, 5 figures"
url: https://arxiv.org/abs/2608.19261v1
summary: "An exact one-channel relational-duration construction plus a finite detector extension, with analytic asymptotics checked and the published numerical benchmark separated from unavailable code."
tags: []
---

## Result and placement

This is a compact, technically reusable `T2-model`, `T2-spectral`, and `T2-dS-BH-holography` paper. It does not solve the general problem of time or field-theory constraint algebra. It establishes a relational scattering observable in a fixed homogeneous minisuperspace and extends it to a detector of fixed finite dimension.

The clean result is

\[
\text{stationary Dirac state}
\longrightarrow
\text{incoming/outgoing scalar-clock records}
\longrightarrow
\text{Wigner--Smith duration}.
\]

All claims below assume the positive scalar-frequency sector, the specified Laplace--Beltrami ordering, spectral amplitudes in the stated domain, and—in the detector model—the finite wall condition $b_M>0$.

## Source map

- Section 1 states the relational-clock aim and explicitly limits the result to homogeneous minisuperspace and a bounded finite detector.
- Section 2 solves the one-channel Wheeler--DeWitt reflection problem, derives clock moments, the exact duration, the classical limit, a branch-discrimination error, and the Airy/WKB boundary.
- Section 3 constructs the finite detector, its confining matrix wall, unitary reflection matrix, weak-coupling hierarchy, matrix duration, and two local clock reductions.
- Section 4 summarizes factor-ordering and finite-$M$ boundaries.
- Appendix A proves the multiplicity-one statement and clock-moment identities.
- Appendix B derives the finite-wall criterion and Laguerre eigenvalue relation.
- Appendix C describes numerical propagation, polar unitarization, packet residuals, and stability checks.

## One-channel constraint and exact reflection

With $8\pi G=\hbar=1$, $\alpha=\ln a$, and homogeneous scalar clock $\tau$, the densitized constraint is

\[
\mathcal C_0=-p_\alpha^2+p_\tau^2-36e^{4\alpha}\approx0.
\]

Laplace--Beltrami ordering gives

\[
(\partial_\alpha^2-\partial_\tau^2-36e^{4\alpha})\Psi=0,
\]

and the selected positive-frequency sector obeys

\[
-i\partial_\tau\Psi=\sqrt{\Theta_0}\Psi,
\qquad
\Theta_0=-\partial_\alpha^2+36e^{4\alpha}.
\]

The decaying generalized modes are

\[
e_\omega(\alpha)
=\frac{\sqrt{\omega\sinh(\pi\omega/2)}}{\pi}
K_{i\omega/2}(3e^{2\alpha}),
\qquad \omega>0,
\]

and $\mathcal H_{\rm phys}\simeq L^2(\mathbb R_+,d\omega)$. Because $\omega$ is semibounded, scalar readings use the covariant time POVM rather than a self-adjoint operator canonically conjugate to $\omega$.

At $\alpha\to-\infty$, the decaying solution contains two plane waves with phase

\[
\delta(\omega)
=\arg\Gamma\!\left(\frac{i\omega}{2}\right)
-\frac\omega2\ln\frac32,
\]

so

\[
S_0(\omega)
=\frac{\Gamma(-i\omega/2)}{\Gamma(i\omega/2)}
\left(\frac32\right)^{i\omega},
\qquad |S_0|=1.
\]

The continuum has multiplicity one. Expanding and contracting waves at the same $\omega$ are therefore asymptotic orientations of one reflection channel, not two independent stationary superselection sectors.

## Relational duration and clock moments

At a reference section $\alpha_0$,

\[
S_{\alpha_0}=e^{-2i\delta+2i\omega\alpha_0}.
\]

With the paper's $e^{+i\omega\tau}$ convention,

\[
Q_0=iS_{\alpha_0}^\dagger\partial_\omega S_{\alpha_0}
=2(\delta'-\alpha_0).
\]

For normalized absolutely continuous packets vanishing at the ends of their spectral support,

\[
\langle\tau\rangle_{\rm out}-\langle\tau\rangle_{\rm in}
=\langle Q_0\rangle_A,
\]

and, with $T=i\partial_\omega$,

\[
\operatorname{Var}_{\rm out}(\tau)
=\operatorname{Var}_A(T+Q_0).
\]

For a real envelope the $T$--$Q_0$ covariance vanishes. These results follow exactly from $S^\dagger T S=T+Q_0$, not from a semiclassical peak approximation.

The duration is

\[
Q_0(\omega;\alpha_0)
=\operatorname{Re}\psi\!\left(\frac{i\omega}{2}\right)
-\ln\frac32-2\alpha_0.
\]

The classical two-crossing duration obtained directly from

\[
e^{2\alpha(\tau)}=\frac\omega6\operatorname{sech}[2(\tau-\tau_0)]
\]

is

\[
\Delta\tau_{\rm cl}
=\operatorname{arcosh}\!\left(\frac{\omega}{6e^{2\alpha_0}}\right).
\]

At fixed $\alpha_0$ and large $\omega$,

\[
Q_0=\ln\frac{\omega}{3e^{2\alpha_0}}
+\frac1{3\omega^2}+O(\omega^{-4}),
\]

\[
\Delta\tau_{\rm cl}=\ln\frac{\omega}{3e^{2\alpha_0}}
-\frac{9e^{4\alpha_0}}{\omega^2}+O(\omega^{-4}).
\]

Thus the exact phase observable recovers the classical relational duration with an explicit $O(\omega^{-2})$ correction.

## Orientation discrimination and WKB boundary

For $h(\alpha)=6e^{2\alpha}$ and $u=\operatorname{arcosh}(\omega/h)$, the local WKB phases satisfy

\[
\partial_\omega\vartheta_\pm=\pm\frac u2,
\qquad
\partial_\omega^2\vartheta_\pm
=\pm\frac1{2\sqrt{\omega^2-h^2}}.
\]

For a narrow Gaussian of variance $\sigma_\omega^2$, the branch clock width is

\[
\sigma_\tau^2
=\frac1{4\sigma_\omega^2}
+\frac{\sigma_\omega^2}{4(\omega_0^2-h^2)},
\]

and the equal-prior optimal error is

\[
P_{\rm err}
=\frac12\operatorname{erfc}\!\left[
\frac{u(\omega_0,\alpha)}{2\sqrt2\,\sigma_\tau}
\right].
\]

This operational reading is valid only outside the Airy region, where the local WKB split into orientations remains meaningful.

## Finite detector and matrix duration

The detector lives in an $M$-dimensional even-oscillator basis. Its coupled spatial operator is

\[
\Theta_M=-\mathbb I_M\partial_\alpha^2+\mathbf W_M(\alpha),
\]

\[
\mathbf W_M
=6e^{4\alpha}\mathbf B_M-12ne^{2\alpha}\mathbf D_M,
\qquad
\mathbf B_M=6\mathbb I_M-\mu^2\mathbf V_M.
\]

Every internal direction is confined precisely when

\[
b_M=6-\mu^2\lambda_{\max}(\mathbf V_M)>0.
\]

For fixed finite $M$ under this condition, the paper obtains a unique self-adjoint limit-point realization with essential spectrum $[0,\infty)$ of multiplicity $M$. The asymptotic wall defines a unitary reflection matrix $\mathbf S_M(\omega)$ and

\[
\mathbf Q_M=i\mathbf S_M^\dagger\partial_\omega\mathbf S_M.
\]

Because the off-diagonal interaction begins at $\mu^2$, the excited-channel amplitude is $O(\mu^2)$, hence

\[
P_{\rm exc}=O(\mu^4),
\qquad
Q_{00}(\mu)-Q_{00}(0)=O(\mu^2).
\]

The equality between scalar-clock conditioning and the spectral detector trace follows from Parseval in this selected finite Hilbert space. This is a local equivalence of two representations of the same positive-frequency sector, not a general clock-neutral theorem for full gravity.

## Verification log

- `Source-derived`: The full four-section/three-appendix chain, generalized Bessel modes, clock POVM, exact scattering phase, multiplicity-one argument, detector wall theorem, matrix observables, and numerical method were reconstructed from the official v1 TeX source and checked against the rendered 9-page PDF.
- `Checked`: Differentiating the displayed phase gives $Q_0=\operatorname{Re}\psi(i\omega/2)-\ln(3/2)-2\alpha_0$ with the paper's $e^{+i\omega\tau}$ sign convention.
- `Checked`: Mathematica reproduced the large-$\omega$ digamma term $\operatorname{Re}\psi(i\omega/2)=\ln(\omega/2)+1/(3\omega^2)+2/(15\omega^4)+\cdots$, the arcosh expansion through $O(\omega^{-4})$, and both WKB phase derivatives with zero residual.
- `Checked`: Mathematica constructed the $M=12,n=2$ matrix $\mathbf V_M$ and found $\lambda_{\max}=18.0956801803$; imposing $\eta=0.65$ gives $\mu^2=0.21552105$ and $b_{12}=2.10$, consistent with the rounded values in the paper.
- `Blocked`: The arXiv source contains the TeX and rendered figures but not the named generation script or raw numerical arrays. The quoted $C_P=0.054$, $C_Q=0.021$, packet probabilities, entropy, trace distances, and convergence residuals therefore could not be independently replayed.
- `Not independently verified`: The full matrix Schrödinger spectral theorem, numerical reflection matrix, finite-difference frequency derivative, and any $M\to\infty$ or field-theory extension. The paper itself makes no $M\to\infty$ claim.

