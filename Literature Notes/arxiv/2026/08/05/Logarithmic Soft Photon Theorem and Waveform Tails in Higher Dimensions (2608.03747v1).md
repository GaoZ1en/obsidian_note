---
paper id: 2608.03747v1
title: Logarithmic Soft Photon Theorem and Waveform Tails in Higher Dimensions
authors:
  - Biswajit Sahoo
publication date: 2026-08-04T14:39
abstract: |-
  The paper derives a logarithmic one-loop soft-photon theorem for massive scalar QED in spacetime dimension greater than four and matches its classical part to long-time electromagnetic waveform tails. Even and odd dimensions differ because of both the radiation kernel and the causal support of the retarded Green function.
comments: "13 pages plus detailed derivation"
url: https://arxiv.org/abs/2608.03747v1
summary: "A careful separation of soft nonanalyticity, retarded waveform tails, and the genuinely quantum photon-pole residue in higher dimensions."
tags: []
---

Back to [[2026_08_05_overview]].

The paper is useful less as a charge construction than as a translation manual between three layers that are often conflated:

$$\begin{align}
\text{soft amplitude at }\omega>0, \qquad \text{full-frequency retarded current}, \qquad \text{late/early-time waveform}.
\end{align}$$

Its contour analysis also gives a precise criterion for calling part of a loop correction “intrinsically quantum.”

## Radiation Kernel and Straight-Worldline Tails

In mostly-plus $d>4$ Minkowski spacetime, an asymptotic trajectory is

$$\begin{align}
X_a^\mu=r_a^\mu+v_a^\mu\tau_a+Y_a^\mu(\tau_a),
\end{align}$$

where $Y_a$ is the long-range acceleration correction. In the radiation zone,

$$\begin{align}
\widetilde A^\mu(\omega,\vec x) \simeq \frac{e^{i\omega r}}{4\pi r^{(d-2)/2}} \left(\frac{\omega+i0}{2\pi i}\right)^{(d-4)/2} \widehat J^\mu(k), \qquad k^\mu=\omega\mathbf n^\mu.
\end{align}$$

The ordered asymptotic window is

$$\begin{align}
\mathcal R\ll|u|\ll r, \qquad r^{-1}\ll|\omega|\sim|u|^{-1}\ll\mathcal R^{-1}.
\end{align}$$

Straight incoming and outgoing half-worldlines give

$$\begin{align}
\widehat J_{\mathrm{st}}^\mu(k) =\sum_{\mathrm{in}}q'_bv_b^{\prime\mu} \frac{i e^{-ik\cdot r'_b}}{k\cdot v'_b+i0} -\sum_{\mathrm{out}}q_bv_b^\mu \frac{i e^{-ik\cdot r_b}}{k\cdot v_b-i0}.
\end{align}$$

For even $d\ge6$, the integer power of $\omega$ transforms to a derivative of a delta function supported in the hard interaction interval; no persistent asymptotic radiative field remains. For odd $d\ge5$, the branch point produces

$$\begin{align}
A_{\mathrm{st}} \sim r^{-(d-2)/2} \frac{\Theta(u+\mathbf n\cdot r_b)} {(u+\mathbf n\cdot r_b)^{(d-4)/2}}.
\end{align}$$

This is a decaying tail, not permanent kick memory.

## The Logarithmic Momentum Region

Long-range Lorentz acceleration is inserted once into the current. The unique overlap region

$$\begin{align}
|\omega|\ll|\ell|\ll\mathcal R^{-1}
\end{align}$$

contains the marginal radial integral

$$\begin{align}
\int_{|\omega|}^{\mathcal R^{-1}} \frac{d|\ell|}{|\ell|} \sim-\ln|\omega|.
\end{align}$$

Power counting identifies the marginal term at expansion indices $m=0$, $n=d-4$, so

$$\begin{align}
\widehat J_{\mathrm{acc}}\big|_{\ln} \sim\omega^{d-4}\ln\omega.
\end{align}$$

Lower momenta do not add another logarithm; higher momenta change analytic hard coefficients.

Retarded support introduces a second even/odd split. In even dimensions, propagation is confined to the light cone and mixed incoming-to-outgoing acceleration terms vanish in the asymptotic arrangement. In odd dimensions, the Green function has inside-light-cone support, allowing

$$\begin{align}
\mathrm{out}\to\mathrm{out}, \qquad \mathrm{in}\to\mathrm{in}, \qquad \mathrm{in}\to\mathrm{out},
\end{align}$$

but not the reverse mixed ordering.

## From the Logarithm to Late-Time Power Laws

For even dimensions,

$$\begin{align}
\widetilde A_{\mathrm{acc},\log} \sim r^{-(d-2)/2}\omega^{3(d-4)/2} \left[ \ln(\omega+i0)\mathcal C_{\mathrm{out}} +\ln(\omega-i0)\mathcal C_{\mathrm{in}} \right].
\end{align}$$

The inverse transform gives

$$\begin{align}
u\to+\infty: \quad A_{\mathrm{acc}} \sim\frac{\mathcal C_{\mathrm{out}}} {r^{(d-2)/2}u^{(3d-10)/2}},
\end{align}$$

$$\begin{align}
u\to-\infty: \quad A_{\mathrm{acc}} \sim\frac{\mathcal C_{\mathrm{in}}} {r^{(d-2)/2}|u|^{(3d-10)/2}}.
\end{align}$$

In odd dimensions, differentiating the branch-transform formula

$$\begin{align}
\int\frac{d\omega}{2\pi}e^{-i\omega s}
(\omega+i0)^\alpha =\frac{e^{i\pi\alpha/2}}{\Gamma(-\alpha)} \frac{\Theta(s)}{s^{\alpha+1}}
\end{align}$$

produces a logarithmic late tail,

$$\begin{align}
A_{\mathrm{acc}} \sim \frac{\ln u}{r^{(d-2)/2}u^{(3d-10)/2}} \left( \mathcal C_{\mathrm{out}} +\mathcal C_{\mathrm{mix}} +\mathcal C_{\mathrm{in}} \right) \quad(u\to+\infty).
\end{align}$$

The same-order nonlogarithmic late coefficient is not fixed; the $\ln u$ coefficient is the universal part.

## One-Loop Scalar-QED Soft Factor

For massive scalar QED with a nonderivative gauge-invariant hard contact interaction, the soft-emission/exchange diagrams reduce in the logarithmic region to a scalar master integral,

$$\begin{align}
\mathcal K^{\mathrm F}_{ab} =\int_\omega^\Lambda\frac{d^d\ell}{(2\pi)^d} \frac{1}{\ell^2-i0} \frac{1}{(P_a\cdot\ell-i0) (P_b\cdot\ell+i0)^{d-3}}.
\end{align}$$

The tensor soft factor is reconstructed by first extending the master integral off shell in a separately homogeneous way, differentiating with respect to ambient momentum, and only then imposing $P_i^2=-\mathfrak m_i^2$. Going on shell before differentiating would miss norm and discriminant derivatives.

The logarithmic theorem takes the pairwise transverse form

$$\begin{align}
\mathcal S_{\mathrm{em}}^{\ln} =\ln\omega \sum_b\sum_{a\ne b} Q_aQ_b^2(k\cdot P_b)^{d-4} \left( \varepsilon\cdot P_a -\frac{k\cdot P_a}{k\cdot P_b} \varepsilon\cdot P_b \right) \left[\mathrm{matter}_{ab}+\mathrm{photon}_{ab}\right].
\end{align}$$

The actual amplitude statement is

$$\begin{align}
\mathcal M^{(1)}_{n+1}ig|_{\omega^{d-4}\ln\omega} =\mathcal S_{\mathrm{em}}^{\ln}\mathcal M_n^{(0)}.
\end{align}$$

## Retarded Versus Feynman Residues

The positive-energy quantum amplitude fixes the $\ln\omega$ coefficient but not a negative-frequency continuation. The classical waveform instead requires the separate boundary values $\ln(\omega+i0)$ and $\ln(\omega-i0)$.

To separate classical and quantum pieces, the paper compares the full retarded and Feynman integrals using the same contour. With a contour that excludes the retarded photon pole,

$$\begin{align}
\text{retarded integral}=\text{matter-particle residues},
\end{align}$$

$$\begin{align}
\text{Feynman integral} =\text{same matter residues} +\text{one extra Feynman photon residue}.
\end{align}$$

Only the difference—the extra Feynman residue—is intrinsically quantum. Calling an individual term “quantum” merely because it is represented by a photon pole in another contour closure would be incorrect.

## Scope and Claim Boundary

The calculation assumes $d>4$, massive hard particles with generic relative velocities, one leading long-range electromagnetic iteration, and the ordered radiation-zone limit. The quantum proof is one-loop minimally coupled massive scalar QED with a nonderivative contact hard interaction. General spin, nonminimal coupling, higher loops, and one-loop exactness are not proved. Analytic terms below the logarithmic order and the same-order nonlogarithmic coefficient remain undetermined.

For celestial/asymptotic work, the paper supplies waveform nonanalyticity and causal support, not a large-gauge charge algebra or CPS derivation of the soft theorem.

## Verification Note

- **Checked with Mathematica:** replacing $\varepsilon$ by $k$ annihilates every displayed ordered-pair soft factor exactly. The exponent identity $3(d-4)/2+1=(3d-10)/2$ reproduces the stated inverse-transform power law.
- **Rendered PDF inspection:** the $i0$ prescriptions, even/odd branch formulas, and late/early-time equations were checked visually because their layout is not reliable in plain-text extraction.
- **Source-derived:** the region expansion, residue coefficients, master integral, distributional Fourier transforms, and matching between the classical and quantum coefficients were not independently recomputed.
