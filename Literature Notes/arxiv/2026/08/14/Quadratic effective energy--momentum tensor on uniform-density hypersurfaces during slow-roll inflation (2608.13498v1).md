---
paper id: 2608.13498v1
title: Quadratic effective energy--momentum tensor on uniform-density hypersurfaces during slow-roll inflation
authors:
  - Inyong Cho
publication date: 2026-08-13
abstract: |-
  The scalar quadratic effective energy--momentum tensor is evaluated on completely fixed uniform-density hypersurfaces during slow-roll inflation. The calculation separates strict and intermediate infrared and ultraviolet orderings, compares four gauges, and attributes the uniform-density ultraviolet enhancements to a slowly evolving density clock and the Laplacian in the density constraint.
comments: "18 pages"
url: https://arxiv.org/abs/2608.13498v1
summary: "A detailed gauge-conditioning benchmark for quadratic cosmological effective sources, with explicit order-of-limits control and no claim of gauge-invariant observability."
tags: []
---

Back to [[2026_08_14_overview]].

The direct verdict is:

> The formulas define a completely gauge-fixed quadratic effective source, not a gauge-invariant stress tensor or relational observable. The paper states this limitation correctly. Its robust structural result is the clock-shift relation between uniform-density and comoving slicings and the resulting regime-dependent gauge hierarchy.

# How to read this long paper

- **Essential:** Sections II--IV for conventions, gauge transformation, the 2EMT definition, and the uniform-density clock displacement.
- **Main results:** Sections IV--VI and Tables I--II for strict/intermediate IR/UV behavior and four-gauge comparison.
- **Scope control:** Section VII. Complete gauge fixing is not the same as constructing an observable.
- **Technical reference:** Appendix A gives the general Fourier-space quadratic source; Appendices B--D give recalculated longitudinal, spatially-flat, and comoving expressions.
- **Do not combine:** a common component ratio, equality of component magnitudes, gauge invariance, and observational equivalence.

# Complete source map

1. **Introduction:** motivates uniform-density slicing and separates raw gauge-fixed backreaction from relational observables.
2. **Scalar perturbations and quadratic effective source:** fixes metric/scalar conventions, Bardeen variables, slow-roll parameters, wavelength orderings, and the Fourier-pair definition of the 2EMT.
3. **Uniform-density gauge:** imposes \(\delta\rho=E=0\), solves for the clock displacement, and compares it with comoving slicing.
4. **Long-wavelength uniform-density 2EMT:** displays full, exact \(\sigma_1\)-reordered, and intermediate-IR expressions.
5. **Short-wavelength uniform-density 2EMT:** does the analogous calculation for \(\sigma_2\) and separates common \(k^4\) scaling from clock-specific enhancements.
6. **Four-gauge comparison:** contrasts longitudinal, spatially-flat, comoving, and uniform-density results in four asymptotic regimes.
7. **Interpretation:** explains physical-clock conditioning and sketches, but does not construct, a relational completion.
8. **Conclusions:** restates the structured gauge dependence and limitations.
9. **Appendix A:** records the full quadratic source in terms of \(\Psi,Q,E\).
10. **Appendices B--D:** recalculate the other three gauges using the same three-stage ordering.

# Perturbation conventions

The scalar-perturbed metric is

$$
ds^2=a^2(\eta)\left[
-(1+2\alpha)d\eta^2-2\beta_{,i}d\eta\,dx^i
+\bigl((1-2\psi)\delta_{ij}+2E_{,ij}\bigr)dx^idx^j
\right].
$$

Under \(\xi^\mu=(\xi^0,\partial^i\zeta)\), define

$$
Q=\beta+E',
\qquad
\widetilde Q=Q-\xi^0.
$$

The gauge-invariant combinations are

$$
\Phi=\alpha-Q'-\mathcal H Q,
\qquad
\Psi=\psi+\mathcal H Q,
$$

$$
\delta\phi_{\rm gi}=\delta\phi-\phi_0'Q.
$$

For the canonical scalar without anisotropic stress, \(\Phi=\Psi\). The slow-roll identity used repeatedly is

$$
\mathcal H'-\mathcal H^2=-\epsilon\mathcal H^2.
$$

# Four asymptotic orderings

The paper keeps slow roll and wavelength expansions independent:

$$
\sigma_1=\frac{k}{\mathcal H}\ll1
\quad\text{(IR)},
\qquad
\sigma_2=\frac{\mathcal H}{k}\ll1
\quad\text{(UV)}.
$$

- Strict IR/UV: \(\sigma_i^2\ll\epsilon,\delta\ll1\); take the wavelength limit at fixed nonzero slow roll.
- Intermediate IR/UV: \(\epsilon,\delta\ll\sigma_i^2\ll1\); expand first in slow roll, then order by gradients.

This is not cosmetic. Terms that are slow-roll suppressed in the strict IR can dominate once \(\sigma_1^2\gg\epsilon,\delta\).

# Definition and epistemic status of the 2EMT

The second-order Einstein equation is rearranged as

$$
G_{\mu\nu}^{(1)}[g^{(2)}]
=8\pi G\,T_{\mu\nu}^{(1)}[g^{(2)},\delta\phi^{(2)}]
+8\pi G\,T_{\mu\nu}^{(2,{\rm eff})},
$$

where

$$
T_{\mu\nu}^{(2,{\rm eff})}
=T_{\mu\nu}^{(2)}[g^{(1)},\delta\phi^{(1)}]
-\frac1{8\pi G}G_{\mu\nu}^{(2)}[g^{(1)}].
$$

For a Fourier pair \(\mathbf k,-\mathbf k\),

$$
\widehat\tau_{\mu\nu}(k)
=8\pi G\langle T_{\mu\nu}^{(2,{\rm eff})}\rangle_k.
$$

The brackets denote the spatial Fourier pairing, not an independently specified stochastic, spatial, or ensemble average.

The diagnostic components are

$$
\rho_{\rm raw}=\frac{\tau_{00}}{a^2},
\qquad
p_{\rm raw}=\frac{\tau_{ii}}{a^2},
\qquad
w_{\rm raw}=\frac{p_{\rm raw}}{\rho_{\rm raw}},
$$

with no sum on \(i\). The label raw is essential: \(w_{\rm raw}\) is not automatically a physical equation of state.

# Uniform-density gauge and clock displacement

The complete scalar gauge conditions are

$$
\delta\rho=0,
\qquad
E=0.
$$

Since

$$
\delta\rho_{\rm gi}=\delta\rho-\rho_0'Q,
$$

the uniform-density clock displacement is

$$
Q_{\rm UD}=-\frac{\delta\rho_{\rm gi}}{\rho_0'}.
$$

Using the linear \(00\) constraint and

$$
\rho_0'=-\frac{3\mathcal H\phi_0'^2}{a^2},
\qquad
4\pi G\phi_0'^2=\mathcal H^2-\mathcal H',
$$

one obtains

$$
Q_{\rm UD}
=\frac{3\mathcal H(\Psi'+\mathcal H\Psi)-\Delta\Psi}
{3\mathcal H(\mathcal H'-\mathcal H^2)}.
$$

For comoving gauge,

$$
Q_{\rm C}
=\frac{\Psi'+\mathcal H\Psi}{\mathcal H'-\mathcal H^2}.
$$

Therefore the key relation is

$$
\boxed{
Q_{\rm UD}-Q_{\rm C}
=-\frac{\Delta\Psi}
{3\mathcal H(\mathcal H'-\mathcal H^2)}
}.
$$

In Fourier space, the difference is gradient suppressed in the IR but scales in magnitude as

$$
\frac1{\epsilon\mathcal H}\frac{k^2}{\mathcal H^2}\Psi
$$

in the UV. The \(1/\epsilon\) comes from the slowly evolving density clock; the additional \(k^2/\mathcal H^2\) comes from the Laplacian in the density constraint.

# Strict and intermediate IR

Define

$$
\mathcal F_{\rm LW}=\mathcal H^2|A_1|^2.
$$

In the strict IR,

$$
\widehat\tau_{00}^{\rm UD}
\simeq9\mathcal F_{\rm LW},
\qquad
\widehat\tau_{ii}^{\rm UD}
\simeq-3\mathcal F_{\rm LW},
$$

$$
w_{\rm raw}^{\rm UD}\simeq-\frac13.
$$

The constant pieces through the retained slow-roll order equal the recalculated comoving expressions. Thus

$$
\widehat\tau_{\mu\nu}^{\rm UD}
-\widehat\tau_{\mu\nu}^{\rm C}
=O(\sigma_1^2\mathcal F_{\rm LW}).
$$

This is a limiting adiabatic equivalence of two matter clocks, not gauge invariance of the 2EMT.

In the intermediate IR,

$$
\frac{\widehat\tau_{00}^{\rm UD}}{\mathcal F_{\rm LW}}
\simeq
9-4\sigma_1^2-\frac{22}{3}\sigma_1^4
+\frac{10}{9}\sigma_1^6+(49\epsilon-36\delta)+\cdots,
$$

$$
\frac{\widehat\tau_{ii}^{\rm UD}}{\mathcal F_{\rm LW}}
\simeq
-3+34\sigma_1^2+\frac{64}{9}\sigma_1^4
+\frac{58}{27}\sigma_1^6-\frac{2}{27}\sigma_1^8
+(5\epsilon+12\delta)+\cdots.
$$

The leading ratio remains \(-1/3\), but uniform-density and comoving coefficients differ already at \(O(\sigma_1^2)\).

# Strict and intermediate UV

Factor out the common derivative scaling

$$
\mathcal F_{\rm SW}
=\frac{2\pi Gk^4}{a^2}(|c_1|^2+|c_2|^2).
$$

This factor already carries \(\sigma_2^{-4}\). It is the common \(k^4\) behavior of the quadratic source, not a uniform-density-specific enhancement.

In the strict UV,

$$
\widehat\tau_{00}^{\rm UD}
\simeq\frac{\mathcal F_{\rm SW}}{9\epsilon\sigma_2^2},
$$

$$
\widehat\tau_{ii}^{\rm UD}
\simeq-\frac{11\mathcal F_{\rm SW}}{27\epsilon\sigma_2^2},
$$

$$
w_{\rm raw}^{\rm UD}\simeq-\frac{11}{3}.
$$

Restoring the common factor, the full scaling is

$$
\widehat\tau_{\mu\nu}^{\rm UD}
\propto\epsilon^{-1}\sigma_2^{-6}.
$$

The three factors have different meanings:

1. \(\sigma_2^{-4}\): common short-wavelength derivative scaling;
2. \(1/\epsilon\): ill-conditioning of a slowly evolving matter clock;
3. \(\sigma_2^{-2}\): extra Laplacian sensitivity of uniform-density slicing.

In the intermediate UV,

$$
\frac{\widehat\tau_{00}^{\rm UD}}{\mathcal F_{\rm SW}}
\simeq\frac1{9\epsilon}
\left[\sigma_2^{-2}-48-(\epsilon-2\delta)\sigma_2^{-2}
+45\sigma_2^2+\cdots\right],
$$

$$
\frac{\widehat\tau_{ii}^{\rm UD}}{\mathcal F_{\rm SW}}
\simeq\frac1{\epsilon}
\left[-\frac{11}{27}\sigma_2^{-2}-\frac89-31\sigma_2^2
-(\tfrac1{27}\epsilon-2\delta)\sigma_2^{-2}+\cdots\right].
$$

The leading behavior is unchanged; the intermediate expansion resolves its subleading gradient hierarchy.

# Four-gauge comparison

| Regime | Longitudinal | Spatially flat | Comoving | Uniform density |
|---|---:|---:|---:|---:|
| strict IR \(w_{\rm raw}\) | \(-1\) | \(-1\) | \(-1/3\) | \(-1/3\) |
| intermediate IR \(w_{\rm raw}\) | \(-1/3\) | \(-1/3\) | \(-1/3\) | \(-1/3\) |
| strict UV \(w_{\rm raw}\) | \(5/9\) | \(1/3\) | \(11/3\) | \(-11/3\) |
| extra UV clock factor | none | none | \(1/\epsilon\) | \(1/(\epsilon\sigma_2^2)\) |

The equal intermediate-IR ratio does not imply equality of \(\widehat\tau_{00}\) or \(\widehat\tau_{ii}\). Component magnitudes remain strongly gauge dependent.

The matter-clock pair shares \(1/\epsilon\), but the comoving strict-UV density is negative while the uniform-density density is positive and additionally gradient enhanced. The shared absolute ratio \(11/3\) is not equality of sources.

# Observability boundary

Complete gauge fixing selects one representative on each perturbative diffeomorphism orbit. It does not specify:

- a common physical clock across representations;
- the same observer congruence;
- the same physical hypersurface;
- a measurement, averaging, or coarse-graining prescription;
- the clock and observer corrections needed for a relational observable.

The paper sketches a future relational completion

$$
\mathscr O_{\rm 2EMT}^{G}(X_*)
=\left[
\tau_{\mu\nu,G}^{(2)}u_G^\mu u_G^\nu
+\Delta_{{\rm clock},G}
+\Delta_{{\rm observer},G}
\right]_{X_G=X_*},
$$

but does not claim this as a unique or completed observable.

# Relevance to current projects

**Reason codes:** T2-model, T2-dS-BH-holography, T3-math.

- The paper is a clean cautionary example for effective stress tensors: gauge fixing and an intuitively physical clock do not establish gauge-invariant energy.
- Its strict/intermediate separation is a useful template for noncommuting small-parameter limits.
- The \(1/\epsilon\) factor is best understood as a conditioning problem of the clock map, not a dynamical instability.
- This is medium priority because the mechanism is useful for cosmological perturbation and effective-source diagnostics, but it does not directly advance the vault's boundary/CPS or AdS quantization calculations.

# Evidence audit

## Source-derived

- The official abstract, full 18-page PDF, complete TeX source, all main sections, and four appendices were read.
- PDF pages 1, 5, 10, 14, and 17 were rendered and visually checked; the clock equations, comparison discussion, appendix formulas, and layout were legible.
- The general Fourier-space 2EMT is a long formula in \(\Psi,Q,E\); its role and conventions were audited, but it was not reproduced in full here.

## Checked

- **Mathematica:** subtracting the displayed uniform-density and comoving shifts gives exactly \(-\Delta\Psi/[3\mathcal H(\mathcal H'-\mathcal H^2)]\).
- **Mathematica:** the complete strict-IR constant coefficients of the uniform-density and comoving \(\widehat\tau_{00}\) and \(\widehat\tau_{ii}\) expressions agree identically through the displayed slow-roll order.
- **Mathematica:** dividing the leading uniform-density UV components by \(\mathcal F_{\rm SW}\) gives \(1/(9\epsilon\sigma_2^2)\) and \(-11/(27\epsilon\sigma_2^2)\), with ratio \(-11/3\).
- **Order check:** using \(\mathcal H'-\mathcal H^2=-\epsilon\mathcal H^2\) and \(\Delta\Psi\mapsto-k^2\Psi\) produces the stated magnitude \(k^2/(\epsilon\mathcal H^3)\) of the clock difference.
- **Logic check:** equality of \(w_{\rm raw}\) does not imply equality of the two components; the tables display explicit counterexamples.

## Blocked

- No symbolic notebook or code is supplied for the large substitutions from the general 2EMT into all four gauges. Reproducing every coefficient would require rebuilding the perturbative tensor-algebra pipeline.
- No relational observable, common observer prescription, or averaging/coarse-graining implementation is supplied, so the raw 2EMT cannot be tested for gauge-independent observational content.

## Not independently verified

- Every coefficient in the long full Fourier-space formulas and the three comparison-gauge appendices.
- Second-order gauge transformation of a completed relational observable.
- Renormalization, stochastic averaging, quantum expectation values, or a physical ultraviolet instability.
- Applicability beyond a canonical single-field slow-roll background and the displayed linear mode approximations.

# Achieved claim tier

**Verified tier:** exact algebraic checks of the clock relation, strict-IR matching, and leading UV hierarchy, together with a complete source-level audit of gauge and order-of-limits qualifications.

**Not achieved:** a machine reproduction of the full 2EMT coefficient tables or a gauge-invariant relational backreaction observable.
