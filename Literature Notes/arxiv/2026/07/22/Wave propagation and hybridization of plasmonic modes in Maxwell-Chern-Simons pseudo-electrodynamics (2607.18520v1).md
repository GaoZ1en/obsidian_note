---
paper id: 2607.18520v1
title: Wave propagation and hybridization of plasmonic modes in Maxwell-Chern-Simons pseudo-electrodynamics
authors:
  - S. Duque Cesar
  - M. J. Neves
publication date: 2026-07-20T21:27
abstract: |-
  The paper studies plane-wave propagation in 2+1-dimensional pseudo-electrodynamics with a nonlocal Chern--Simons term. In vacuum the parity-odd coupling produces a massive dispersion relation and a longitudinal electric component. Adding a local Ohmic constitutive law gives a two-by-two longitudinal/transverse response matrix; the Chern--Simons term hybridizes the two polarizations, and the nonlocal square root can be traded for a cubic equation in a complex refractive-index variable. The algebraic hybridization mechanism is useful, but the source does not impose a genuine interface problem and its reactive and topological-protection claims are not established.
comments: "6 pages, 3 figures"
url: https://arxiv.org/abs/2607.18520v1
summary: "A compact nonlocal Maxwell--Chern--Simons polarization matrix and cubic dispersion benchmark, with unresolved branch and interface physics."
tags: []
---

Back to [[2026_07_22_overview]].

Reason codes: `T2-model`, `T2-spectral`.

## Nonlocal Maxwell--Chern--Simons Equations

The theory is in $1+2$ dimensions with

$$\begin{align}
\eta^{\bar\mu\bar\nu}=\operatorname{diag}(+,-,-), \qquad \bar\Box=\partial_t^2-\partial_x^2-\partial_y^2,
\end{align}$$

and action

$$\begin{align}
\mathcal L=-\frac14F_{\bar\mu\bar\nu} \frac{2}{\sqrt{-\bar\Box}}F^{\bar\mu\bar\nu} +\frac{\theta}{2}\epsilon^{\bar\mu\bar\nu\bar\rho} A_{\bar\mu}\frac{2}{\sqrt{-\bar\Box}} \partial_{\bar\nu}A_{\bar\rho} -j_{\bar\mu}A^{\bar\mu}.
\end{align}$$

The asserted field equation is

$$\begin{align}
\frac{2}{\sqrt{-\bar\Box}} \left(\partial^{\bar\mu}F_{\bar\mu\bar\nu} +\theta\widetilde F_{\bar\nu}\right)=j_{\bar\nu},
\end{align}$$

where

$$\begin{align}
\widetilde F^{\bar\mu} =\frac12\epsilon^{\bar\mu\bar\nu\bar\rho} F_{\bar\nu\bar\rho}.
\end{align}$$

Combining it with the Bianchi identity gives a Klein--Gordon-like field equation,

$$\begin{align}
\frac{2}{\sqrt{-\bar\Box}} (\bar\Box+\theta^2)\widetilde F_{\bar\alpha} =\theta j_{\bar\alpha} +\epsilon_{\bar\mu\bar\nu\bar\alpha} \partial^{\bar\mu}j^{\bar\nu}.
\end{align}$$

The causal branch of $1/\sqrt{-\bar\Box}$ is not specified. This omission becomes important when $\omega^2-k^2$ crosses its cut.

## Vacuum Polarization Matrix and Topological Mass

For a plane wave, the source-free electric amplitudes satisfy

$$\begin{align}
M_{ji}E_i=0, \qquad M_{ji}=(\omega^2-k^2)\delta_{ij}+k_ik_j -i\omega\theta\epsilon_{ji}.
\end{align}$$

For $\mathbf k=(k,0)$,

$$
M=
\begin{pmatrix}
\omega^2&-i\omega\theta\\
i\omega\theta&\omega^2-k^2
\end{pmatrix},
$$

and

$$\begin{align}
\det M=\omega^2(\omega^2-k^2-\theta^2).
\end{align}$$

The propagating branch is

$$\begin{align}
\omega^2=k^2+\theta^2.
\end{align}$$

The Gauss equation

$$\begin{align}
\mathbf k\cdot\mathbf E_0=-i\theta B_0
\end{align}$$

shows that $\theta\ne0$ produces a longitudinal electric component. The extra $\omega=0$ determinant branch is not classified as gauge, constrained, or physical.

## Ohmic Response and TE/TM Hybridization

The material model is not a two-half-space boundary problem. It is the local planar constitutive relation

$$\begin{align}
\mathbf j=\sigma_c\mathbf E, \qquad \rho=\frac{\sigma_c}{\omega}\mathbf k\cdot\mathbf E.
\end{align}$$

Writing

$$\begin{align}
\mathcal R=\frac{2}{\sqrt{\omega^2-k^2}},
\end{align}$$

the amplitudes for propagation along $x$ obey

$$
\begin{pmatrix}
\omega^2+i\omega\sigma_c/\mathcal R&-i\omega\theta\\
i\omega\theta&\omega^2-k^2+i\omega\sigma_c/\mathcal R
\end{pmatrix}
\begin{pmatrix}E_x\\E_y\end{pmatrix}=0.
$$

Here $E_x$ is longitudinal/TM-like and $E_y$ is transverse/TE-like. The determinant is

$$\begin{align}
\left(\omega^2+\frac{i\omega\sigma_c}{\mathcal R}\right) \left(\omega^2-k^2+\frac{i\omega\sigma_c}{\mathcal R}\right) =\omega^2\theta^2.
\end{align}$$

The polarization ratio is, for example,

$$\begin{align}
\frac{E_y}{E_x} =\frac{\omega^2+i\omega\sigma_c/\mathcal R} {i\omega\theta}.
\end{align}$$

Thus the parity-odd term is an antisymmetric off-diagonal mixing of the longitudinal and transverse responses. Complex conductivity or kernel branches generically make the in-plane polarization elliptical.

## Cubic Refractive-Index Equation

For real dissipative $\sigma_c>0$, define

$$\begin{align}
n=\frac{k}{\omega}, \qquad z=\sqrt{1-n^2}, \qquad \mathcal R^{-1}=\frac{\omega z}{2}.
\end{align}$$

The determinant becomes

$$\begin{align}
i\frac{\sigma_c}{2}z^3 +\left(1-\frac{\sigma_c^2}{4}\right)z^2 +i\frac{\sigma_c}{2}z -\frac{\theta^2}{\omega^2}=0.
\end{align}$$

At $\theta=0$,

$$\begin{align}
z\left(1+i\frac{\sigma_c}{2}z\right) \left(z+i\frac{\sigma_c}{2}\right)=0,
\end{align}$$

with a radiative root and two longitudinal/transverse material roots. For $\theta\ne0$, Cardano radicals give three algebraic continuations, but a label such as $m=0$ is not globally physical until the square-root and cube-root branches are followed continuously and attenuation is imposed with the chosen $e^{i(kx-\omega t)}$ convention.

For the TM continuation at large conductivity,

$$\begin{align}
z_{\rm TM}\simeq-\frac{i\sigma_c}{2}, \qquad n\simeq\sqrt{1+\frac{\sigma_c^2}{4}} \simeq\frac{\sigma_c}{2}.
\end{align}$$

This establishes the algebraic refractive-index scaling. It does not by itself prove shielding, vanishing Joule heating, or topological protection; those require normalized eigenvectors and an energy/Poynting balance.

## Why the Reactive Branch Is Not Consistent as Written

The paper chooses

$$\begin{align}
\sigma_c=i\sigma_2, \qquad \omega<k, \qquad \sqrt{\omega^2-k^2}=i\sqrt{k^2-\omega^2}.
\end{align}$$

Let $q=\sqrt{k^2-\omega^2}>0$. Then

$$\begin{align}
\mathcal R^{-1}=\frac{iq}{2},
\end{align}$$

so the material term is

$$\begin{align}
\frac{i\omega\sigma_c}{\mathcal R} =i\omega(i\sigma_2)\frac{iq}{2} =-\frac{i}{2}\omega\sigma_2q,
\end{align}$$

which is imaginary, not the real term needed for the paper's displayed lossless dispersion. A different conductivity convention, square-root prescription, or analytic continuation is required. Moreover, a claimed $k\to0$ massive gap lies outside the assumed subluminal domain $\omega<k$.

## Transferable Calculation Pattern

The reusable sequence is

$$\begin{align}
\text{nonlocal wave equation} \to\text{Fourier kernel} \to\text{longitudinal/transverse response matrix} \to\det M=0 \to\text{polynomial in }z.
\end{align}$$

For a genuine planar-interface problem this must be enlarged by fields on both sides, normal decay constants, dielectric data, and Maxwell jump conditions. None is present here, so “surface plasmon polariton” and “topological protection” are stronger than the calculation supports.

## Verification Note

Checked with Mathematica:

- the vacuum determinant and massive branch;
- the Ohmic two-by-two determinant;
- the transformation to the displayed cubic in $z$;
- the $\theta=0$ factorization;
- the high-conductivity TM scaling;
- the residual imaginary factor in the printed reactive prescription.

Not independently verified: variation and gauge invariance of the nonlocal action, causal definition of the square-root kernel, numerical plots, global Cardano branch assignments, confinement or passivity, Poynting/Joule balances, and experimental applicability. The paper's defensible formal claim is that the Chern--Simons term algebraically hybridizes longitudinal and transverse in-plane amplitudes, while the nonlocal Ohmic dispersion reduces to a solvable cubic.
