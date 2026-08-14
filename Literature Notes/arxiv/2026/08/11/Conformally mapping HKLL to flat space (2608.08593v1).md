---
paper id: 2608.08593v1
title: "Conformally mapping HKLL to flat space"
authors:
  - Nirmalya Kajuri
  - Rhitaparna Pal
publication date: 2026-08-09T09:16
abstract: |-
  A conformally coupled scalar in AdS3 is mapped through the Einstein static universe to a massless scalar inside an accelerating circular mirror in 2+1-dimensional Minkowski space. The global HKLL kernel becomes a mirror-response reconstruction kernel, but only for boundary data obeying a discrete global spectral condition. The corresponding AdS-Rindler map exposes exponential amplification of high transverse momentum and the failure of a bounded local reconstruction map from a partial mirror.
comments: "21 pages, no figures"
url: https://arxiv.org/abs/2608.08593v1
summary: "A clean conformal bridge from global and Rindler HKLL to accelerating-mirror reconstruction, with the crucial restriction that mirror response data must lie in the global AdS spectral image."
tags: []
---

Daily overview: [[2026_08_11_overview]]

## Placement

Reason codes: `T2-spectral`, `T2-dS-BH-holography`, `T1-boundary`.

This is a medium-priority detailed note. It is directly useful for boundary reconstruction, alternative boundary conditions, and spectral obstructions, but treats one free conformally coupled scalar and does not develop gravitational charges, covariant phase space, edge modes, or interacting reconstruction.

## Source map

- Sections 2--3 derive global AdS$_3$ HKLL from the half Einstein static universe (ESU), including the logarithmic representative of the smearing kernel.
- Section 4 conformally maps the global construction to an accelerating circular mirror in Minkowski space and characterizes the admissible mirror-response data.
- Section 5 maps AdS-Rindler reconstruction to a partial mirror, first through separated flat modes and then through the common $\mathbb R\times\mathbb H^2$ conformal frame.
- Appendix A records the global AdS mode conventions and normalization.
- Appendix B derives the half-ESU Green identity and the master projection formula.
- Appendix C gives the independent flat-space mode expansion and matches its kernel to the conformal image of HKLL.
- Appendix D derives the large-transverse-momentum WKB behavior responsible for the Rindler obstruction.

## Global AdS and half-ESU reconstruction

For a conformally coupled scalar in AdS$_3$ with standard quantization,

$$
(\Box_{\mathrm{AdS}}+3/4)\Phi_{\mathrm{AdS}}=0,
\qquad
\Delta=\frac32,
$$

the global frequencies are

$$
\omega_{nj}=\frac32+|j|+2n.
$$

Writing AdS$_3$ as a Weyl rescaling of half the ESU gives

$$
\Phi_{\mathrm{AdS}}=z^{1/2}\Phi_{\mathrm{ESU}},
\qquad
(\Box_{\mathrm{ESU}}+1/4)\Phi_{\mathrm{ESU}}=0.
$$

Standard AdS quantization becomes a Dirichlet condition at the ESU equator, with response

$$
\mathcal O_D=-\partial_\rho\Phi_{\mathrm{ESU}}\big|_{\rho=\pi/2}=\mathcal O.
$$

Regular Dirichlet modes obey $\ell+|j|$ odd, equivalently $\ell=|j|+2n+1$. A naive power kernel

$$
\Theta(Q)Q^{-1/2}
$$

solves the homogeneous equation away from its support boundary but has zero projection on every admissible global mode. Differentiating the power family at the spectral zero produces the nontrivial representative

$$
\Theta(Q)Q^{-1/2}\log\frac{Q}{z}.
$$

Its pointwise equation-of-motion residual is proportional to $-z^{-2}Q^{-1/2}$ rather than zero. The reconstructed field nevertheless solves the equation because this residual has vanishing projection on the admissible spectral subspace. Thus the kernel is an equivalence-class representative modulo functions that annihilate allowed boundary data, not a pointwise Green function.

The half-ESU master identity fixes the projection normalization to

$$
C=2\sqrt2\,\pi^2.
$$

## Accelerating-mirror reconstruction

The ESU-to-Minkowski map is

$$
\tau=\arctan v+\arctan u,
\qquad
\rho=\arctan v-\arctan u,
$$

with conformal factor $\Omega=\cos\tau+\cos\rho$. The combined AdS-to-Minkowski Weyl factor is

$$
\Lambda=\frac z\Omega=\frac{1-r^2+t^2}{2},
\qquad
\Phi_M=\Lambda^{-1/2}\Phi_{\mathrm{AdS}}.
$$

The AdS boundary maps to the uniformly accelerating circular mirror

$$
r^2-t^2=1,
$$

and the AdS bulk maps to $r^2-t^2<1$. With mirror rapidity $\eta$ and angle $\theta$,

$$
B(\eta,\theta)
=(\sinh\eta,\cosh\eta\cos\theta,\cosh\eta\sin\theta),
\qquad
\frac{d\tau}{d\eta}=\operatorname{sech}\eta.
$$

The normal response transforms as

$$
\mathcal O_M(\eta,\theta)
=\operatorname{sech}^{3/2}\eta\,\mathcal O_D(\tau(\eta),\theta).
$$

For an interior point $x=(t,r,\theta)$, define

$$
\sigma_b
=\frac12\left(1+r^2-t^2+2t\sinh\eta'
-2r\cosh\eta'\cos(\theta-\theta')\right).
$$

The flat reconstruction kernel is

$$
K_M
=\frac{\cosh\eta'}{2\sqrt2\,\pi^2}
\frac{\Theta(\sigma_b)}{\sqrt{\sigma_b}}
\log\frac{\sigma_b}{\Lambda(x)\cosh\eta'}.
$$

An independent flat-mode calculation reproduces this expression exactly after the global AdS spectral restriction is imposed.

## What the mirror data do and do not determine

Arbitrary Dirichlet or response data on the timelike mirror do not determine a unique solution: independent characteristic data may enter through the null caps. The construction works on the smaller class whose mirror response extends to the global half-ESU discrete spectrum. On this admissible subspace, the same global mode coefficients determine both the mirror response and the cap data.

This is the main conceptual boundary of the flat-space statement. The paper does not give a reconstruction theorem for unrestricted local mirror data, nor does it remove the need for characteristic data in the generic timelike-boundary problem.

## AdS-Rindler and partial-mirror obstruction

The AdS-Rindler half-circle wedge maps to

$$
\mathcal W=\{X>|T|,\ r^2-T^2<1\},
$$

with only the corresponding patch of the accelerating mirror available. In polar Rindler coordinates the mirror is $\varrho=1$. For tangential eigenvalue $\lambda$ and

$$
\kappa=\sqrt{\lambda+\frac14},
$$

the response-normalized Dirichlet radial solution is

$$
R_D(\varrho)
=\frac{\varrho^{-1/2-\kappa}-\varrho^{-1/2+\kappa}}{2\kappa},
\qquad
R_D(1)=0,
\qquad
-R_D'(1)=1.
$$

With $u=-\log\varrho$ and $\Psi=\varrho^{1/2}\Phi$, the radial factor is $\sinh(\kappa u)/\kappa$ and grows exponentially at fixed interior $u>0$. The elementary static modes

$$
\Phi_n(\varrho,\theta)
=\frac{\varrho^{-n-1}-\varrho^n}{2n+1}P_n(\sin\theta)
$$

have unit mirror response but grow as $\varrho^{-n-1}/(2n+1)$ in the interior. Hence the formal static smearing series diverges.

In the common $\mathbb R\times\mathbb H^2$ frame, the separated equation

$$
g''+\tanh\sigma\,g'
+\left(\omega^2+\frac14-k^2\operatorname{sech}^2\sigma\right)g=0
$$

has WKB growth

$$
\log|g|=|k|\arcsin(\tanh\sigma)+O(\log|k|).
$$

This is the flat conformal image of the familiar AdS-Rindler high-momentum obstruction: bounded boundary response does not control the interior in a norm that would yield a continuous local smearing map.

## Verification log

### Checked

- Read the complete TeX source and visually inspected representative rendered PDF pages covering the global kernel, conformal map, mirror kernel, Rindler modes, and conclusions.
- Mathematica numerically evaluated the $n=j=0$ center projection. The ordinary power kernel gave zero, while the logarithmic kernel gave $27.9154567985\ldots=2\sqrt2\pi^2$ with residual below $8\times10^{-36}$.
- Mathematica symbolically verified $R_D(1)=0$ and $-R_D'(1)=1$ for the response-normalized Rindler radial mode.
- Mathematica symbolically verified that the static modes vanish at the mirror, have unit outward response, and grow with coefficient $(2n+1)^{-1}\varrho^{-n-1}$ toward $\varrho=0$.

### Source-derived

- The full global-mode projection identity, the conformal transformation of the response, the independent flat-mode matching, and the large-$|k|$ WKB estimate are reconstructed from the source derivations.
- The claim that the null-cap data are fixed is conditional on the response belonging to the discrete global half-ESU spectral image.

### Blocked

- The derivatives of $\Theta(Q)$ generate singular-support terms. The source does not provide a complete distributional calculation of these terms, so the local equation-of-motion argument was not independently verified at the support boundary. The exact mode projection does verify the reconstructed admissible field.
- No machine-readable numerical dataset or code accompanies the paper; none is needed for its analytic examples, but no independent norm-completion theorem for the partial-mirror map is available to test.

### Failed

- None in the checked formulas.

## Relevance and limits

The useful lesson for current boundary/gluing work is structural: timelike response data can reconstruct a bulk field only after specifying the admissible solution space, and a formal kernel may be defined only modulo annihilators of that space. The partial-mirror example supplies an explicit spectral instability showing why injectivity on smooth modes is weaker than a bounded reconstruction theorem.

The construction is limited to a free conformally coupled scalar in three dimensions with standard Dirichlet quantization. Alternate quantization, Neumann mirrors, masses not related by conformal coupling, higher dimensions, interactions, and quantum-state reconstruction are left open.

## Next checks

- Repeat the master projection for the alternate-quantization/Neumann branch and track the precise response weight.
- Formulate the admissible mirror-response space as the image of a Sobolev space on the global half-ESU and identify the norm in which reconstruction is continuous.
- Compare the partial-mirror exponential amplification with the spectral estimates in the current finite-cutoff gluing benchmarks.
