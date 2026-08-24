---
paper id: 2608.21193v1
title: "Resonance crossings as entire functions of the Koopman operator"
authors:
  - Priscilla Canizares
publication date: 2026-08-21T23:02
abstract: |-
  A finite-window Magnus generator replaces the small denominator of near-identity averaging by bounded oscillatory integrals. A model-driven Kerr 3:2 crossing reproduces the stationary-phase jump and its resonant-phase dependence.
comments: ""
url: https://arxiv.org/abs/2608.21193v1
summary: "The finite-window coefficients are regular at resonance, but the global operator-logarithm language and numerical performance claims require sharper qualifications."
tags: []
---

# Compact verdict

**Direct verdict.** Correct for the finite-window coefficient identities and their detuning-regularity at every fixed Magnus order. The statement should be rewritten as: finite-time ordered integrals are entire functions of the detunings; they provide a locally chosen logarithmic generator for the one-cycle Koopman evolution. The complex logarithm is not itself an entire function of a general operator, and $U_\Lambda$ has eigenvalue one whenever $\delta\Lambda=2\pi n$, not only at the physical resonance $\delta=0$.

Reason codes: `T2-spectral`, `T2-model`, `T3-math`.

# Main statements

For detuning $\delta=\mathbf{k}\cdot\boldsymbol\Upsilon$, near-identity averaging uses

$$
w_{\mathbf{k}}=\frac{\mathcal G_{\mathbf{k}}}{i\delta},
$$

which diverges at $\delta=0$. The first finite-window coefficient is instead

$$
\chi_{\mathbf{k}}
=\mathcal G_{\mathbf{k}}
\frac{e^{i\delta\Lambda}-1}{i\delta}
=\mathcal G_{\mathbf{k}}\Lambda e^{i\delta\Lambda/2}
\operatorname{sinc}\!\left(\frac{\delta\Lambda}{2}\right),
$$

so

$$
|\chi_{\mathbf{k}}|\le |\mathcal G_{\mathbf{k}}|\Lambda,
\qquad
\chi_{\mathbf{k}}\longrightarrow \mathcal G_{\mathbf{k}}\Lambda
\quad(\delta\to0).
$$

At higher fixed orders, the coefficients are compact-simplex integrals of entire phase factors. For example,

$$
\int_0^\Lambda ds_1\int_0^{s_1}ds_2\,
e^{i\delta_1s_1+i\delta_2s_2}
=\frac{\mathcal W(\delta_1+\delta_2)-\mathcal W(\delta_1)}{i\delta_2},
$$

where $\mathcal W(\delta)=\int_0^\Lambda e^{i\delta s}ds$; the apparent pole is removable. This proves coefficientwise regularity, not convergence of the full Magnus series. The paper states the usual sufficient smallness condition separately.

For a linearly swept resonance, stationary phase predicts

$$
|\Delta J_{\rm res}|
=2|\mathcal G_{\mathbf{k}_{\rm res}}|
\sqrt{\frac{2\pi}{|\dot\delta|}}
\left|\cos\left(q_0+\frac\pi4\operatorname{sgn}\dot\delta\right)\right|.
$$

The model experiment reports $\Xi=3.52\pm0.09$ at $q_0=0$, consistent with $2\sqrt\pi=3.54$, and recovers the predicted phase zeros.

# Verification ledger

## Source-derived

- The complete official TeX source and 16-page PDF were inspected.
- The Kerr crossing uses a modelled forcing and prescribed sweep; it is not a self-force evolution. The paper itself says that matched-cost accuracy against partial averaging remains open.

## Checked

- Mathematica verified $\mathcal W(0)=\Lambda$ and the removable second-order difference-quotient limit $-i\mathcal W'(\delta_1)$.
- The first-order sinc form, uniform bound, and stationary-phase normalization $2\sqrt\pi$ are algebraically consistent.
- Direct spectral substitution gives $e^{i\delta\Lambda}=1$ also at $\delta\Lambda=2\pi n$. The paper later acknowledges the corresponding off-resonance window zeros, so “eigenvalue one means resonance” is too strong.

## Blocked

- The published source contains figures but no executable code, measured frequency grids, located-crossing tables, or generated numerical arrays; those data are available only on request. The reported $10^{-6}$ saturation, $10^{-15}$ comparison, crossing sequence, and error bars were therefore not numerically reproduced.

## Not independently verified

- The Kerr frequency extraction, torus projection, tidal-fit calibration, and multi-crossing composition were inspected only through the manuscript.
- Fixed-order coefficient regularity does not establish convergence, a globally single-valued operator logarithm, or superior computational cost at matched waveform accuracy.

# Relevance

The ordered product of finite-window evolution maps is useful for the user's distinction between sequential composition and global associativity. It supplies a regular finite-time construction, but its branch choice, convergence, and long-time error must be separated from the coefficientwise cancellation of resonance denominators.
