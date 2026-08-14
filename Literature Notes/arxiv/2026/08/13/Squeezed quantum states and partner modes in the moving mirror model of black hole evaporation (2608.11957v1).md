---
paper id: 2608.11957v1
title: Squeezed quantum states and partner modes in the moving mirror model of black hole evaporation
authors:
  - Kuan-Nan Lin
  - Pisin Chen
  - Michael R. R. Good
  - Yasusada Nambu
publication date: 2026-08-12
abstract: |-
  The paper rewrites particle production by a perfectly reflecting moving mirror in a Rindler/Milne basis. For an asymptotically null mirror, outgoing Minkowski modes are history-dependent squeezed Milne modes and their Rindler partners remain beyond the asymptote; for a mirror returning to timelike infinity, both sectors reach future null infinity and undergo individual and mutual Bogoliubov mixing.
comments: "27 pages"
url: https://arxiv.org/abs/2608.11957v1
summary: "A useful mode-basis decomposition explaining when a Planck-like mirror spectrum is only approximate and how partner modes enter, but its continuum correlation formulas require wave-packet or distributional regularization not supplied in the paper."
tags: []
---

# Why this is medium priority

Reason codes: `T2-spectral`, `T2-dS-BH-holography`.

This is a controlled free-field analogue for the active horizon/KMS pipeline. Its main value is to separate three statements that are often conflated:

1. a mode basis has an exact Bose--Einstein occupation factor;
2. an inertial detector's modes are Bogoliubov mixtures of that basis;
3. number correlations in sharp continuum-frequency modes are well defined.

The paper gives a useful answer to the first two. The third requires a regulator that is not fully specified.

# Source map

- Section II: in-vacuum squeezing structure for asymptotically null and timelike-final mirrors.
- Section III: connected number correlations.
- Section IV: Fourier formulas for moving-mirror Bogoliubov coefficients.
- Section V: eternal-formation trajectory, exact coefficients, Milne squeezing, and Rindler partner.
- Section VI: formation-and-evaporation trajectory; both Rindler and Milne sectors at $\mathscr I_R^+$.
- Section VII: numerical spectra/correlations, entropy comparison, and statistical inversion.
- Appendices A--C: continuum integral identities.

# 1. Geometry and mode split

Use null coordinates $u=t-x$, $v=t+x$. The mirror trajectory defines inverse ray-tracing functions

$$
u=F(v),
\qquad
v=P(u),
\qquad
F(P(u))=u.
$$

For the asymptotically null trajectory,

$$
F(v)=
\begin{cases}
v,&v\le0,\\
-\kappa^{-1}\log(1-\kappa v),&0\le v<v_0=\kappa^{-1}.
\end{cases}
$$

The line $v=v_0$ divides the past null surface into:

- a Milne sector $v<v_0$, whose modes are reflected into $\mathscr I_R^+$;
- a Rindler sector $v>v_0$, which never meets the mirror and supplies the partner modes at $\mathscr I_L^+$ on the mirror's right.

These Rindler/Milne modes are an entangled pair in the Minkowski in-vacuum, with occupation factor

$$
n_\Omega=\frac1{e^{2\pi\Omega/\kappa}-1}.
$$

# 2. Exact versus idealized spectrum

For a right-moving out frequency $\omega$ and incoming frequency $\omega'$, the coefficient is the Fourier transform

$$
\beta^R_{\omega,-\omega'}
=-\frac1{2\pi}\sqrt{\frac{\omega'}\omega}
\int_{-\infty}^{v_0}dv\,
e^{-i\omega'v-i\omega F(v)}.
$$

Extending the accelerated motion to the infinite past gives the Carlitz--Willey expression

$$
|\beta^R_{\omega,-\omega'}|^2
=\frac1{2\pi\kappa\omega'}
\frac1{e^{2\pi\omega/\kappa}-1}.
$$

For the actual trajectory, static motion at $T<0$ and accelerated motion at $T>0$ give separate contributions. The latter contains an upper incomplete gamma function. Only when

$$
\omega'\gg\kappa,
\qquad
\omega'\gg\omega
$$

does its asymptotic term cancel the static contribution and leave the complete-gamma Planck factor. At $\omega'\ll\kappa$ the leading behavior is instead

$$
\beta^R_{\omega,-\omega'}
\simeq-\frac{i}{2\pi}sqrt{\frac{\omega'}\omega}
\frac1{\omega+\omega'}.
$$

Therefore a Planck-like kernel in a restricted frequency regime does not establish exact thermality of the integrated particle number or the outgoing state.

# 3. Squeezed Milne modes and partners

The reflected Milne annihilator is related to inertial out modes by a second Bogoliubov map. The outgoing number decomposes as

$$
\langle b_\omega^{R\dagger}b_\omega^R\rangle
=\int_0^\infty d\Omega\,
\frac{|\alpha^{\rm II}_{\omega,-\Omega}|^2}
{e^{2\pi\Omega/\kappa}-1}
\left(1+e^{2\pi\Omega/\kappa}
\frac{|\beta^{\rm II}_{\omega,-\Omega}|^2}
{|\alpha^{\rm II}_{\omega,-\Omega}|^2}
\right).
$$

The first factor is the exact Milne occupation. The second records mirror-history-dependent mixing. In the eternal Carlitz--Willey limit,

$$
\alpha^{\rm II}_{\omega,-\Omega}=\delta(\omega-\Omega),
\qquad
\beta^{\rm II}_{\omega,-\Omega}=0,
$$

so the inertial out mode coincides with an unsqueezed Milne mode. For the finite-history trajectory, the out particle is a squeezed Milne mode and gains same-side frequency correlations in addition to correlations with its Rindler partner.

This is a basis-dependent structural statement. It does not identify a localized interior black-hole degree of freedom; the partner here is the Rindler member of a specified free-field mode decomposition.

# 4. Mirror returning to timelike infinity

If the mirror stops accelerating before the would-be asymptote, there is no true horizon. The authors nevertheless split the past null surface at the would-be $v_0$ and propagate both bases forward. Both the Rindler and Milne sectors are then accessible at $\mathscr I_R^+$.

The inertial spectrum contains:

1. individual squeezing of Rindler modes;
2. individual squeezing of Milne modes;
3. mutual Rindler--Milne mixing inherited from their vacuum entanglement.

Equation (66) expresses all three through four history-dependent coefficients. A finite stopping time replaces complete gamma functions by incomplete ones, so the Planck form is not recovered for generic fixed stopping data.

# 5. Correlations and the regulator problem

The paper uses the connected number correlation

$$
Q(k_1,k_2)=
\langle N_{k_1}N_{k_2}\rangle
-\langle N_{k_1}\rangle\langle N_{k_2}\rangle,
\qquad k_1\ne k_2.
$$

For the ideal continuum thermofield-double limit it writes

$$
Q^{RL}(\omega_1,-\omega_2)
=\frac{[\delta(\omega_1-\omega_2)]^2}
{4\sinh(\pi\omega_1/\kappa)
\sinh(\pi\omega_2/\kappa)}.
$$

This expression is not a defined Schwartz distribution: $\delta^2$ needs a finite-time, box, detector-response, or wave-packet prescription. Likewise $\delta(0)$ in the ideal occupation is only heuristically identified with an observation duration.

More seriously, the exact $\alpha$ coefficient contains $(\omega-\omega'+i0)^{-1}$. The submitted TeX source contains internal author comments acknowledging uncertainty about correlation plots involving this pole and discussing smoothing the trajectory as a numerical regulator. The published main text does not state the smoothing profile, principal-value prescription, frequency cutoffs, or convergence test used for the plotted $Q$ curves.

Accordingly:

> Not proven by the current formulas/plots: the numerical magnitude and detailed shape of the sharp-mode correlations. The evidence supports the qualitative existence of additional Bogoliubov mixing, but the continuum correlation observable requires a stated regulator.

# Independent verification

## Checked

- **Mathematica:** verified the inverse relation
  $$
  F(v)=-\kappa^{-1}\log(1-\kappa v),
  \qquad
  P(u)=\kappa^{-1}(1-e^{-\kappa u})
  $$
  on $0<v<\kappa^{-1}$.
- **Mathematica:** using
  $$
  |\Gamma(1+ix)|^2=\frac{\pi x}{\sinh\pi x},
  $$
  reproduced the Bose--Einstein modulus in the ideal coefficient.
- **Algebraic check:** the no-secondary-squeezing limit $\alpha=\delta$, $\beta=0$ reduces the Milne decomposition to the standard Planck occupation.
- **Visual confirmation:** rendered PDF pages 12, 13, 15, 18, 19, and 23 and checked the exact coefficients, Milne decomposition, timelike-final mode split, three-term spectrum, and correlation/entropy discussion against the TeX source.

## Assumptions

- A massless scalar field in 1+1 Minkowski space and a perfectly reflecting prescribed mirror; backreaction is absent.
- Particle notions are basis-dependent and refer to specified Minkowski, Rindler, or Milne positive-frequency choices.
- The eternal Planck expression is a spectral density in continuum normalization, not a finite particle number.
- The timelike-final Rindler/Milne partition uses a would-be asymptote rather than a causal horizon.

## Not independently verified

- The incomplete-gamma asymptotics were not given uniform error bounds across the frequency integrals.
- The Bogoliubov completeness/canonical identities for the piecewise trajectories were not independently integrated.
- The numerical correlation plots cannot be reproduced exactly because the regulator and integration settings are absent from the paper.
- The connected number correlation is not an entanglement monotone; the paper explicitly distinguishes it from entanglement entropy.
- No result here proves information recovery, Hilbert-space unitarity of an evaporating black hole, or equivalence to higher-dimensional Hawking radiation.

# Claim tier and takeaway

**Achieved claim tier:** analytic free-field mode decomposition and verified ideal thermal factor, with a source-supported qualitative squeezing mechanism. Sharp-mode correlation magnitudes remain regulator-dependent and unverified.

The reusable lesson for the AdS-Rindler/KMS project is:

$$
\text{Planck factor in one basis}
\not\Rightarrow
\text{thermal outgoing state in another basis}.
$$

One must state the Cauchy split, normalize wave packets, verify the full Bogoliubov identities, and separate mutual partner correlations from same-side correlations induced by additional squeezing.
