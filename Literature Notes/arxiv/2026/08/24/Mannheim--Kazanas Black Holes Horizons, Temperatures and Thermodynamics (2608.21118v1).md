---
paper id: 2608.21118v1
title: "Mannheim--Kazanas Black Holes: Horizons, Temperatures and Thermodynamics"
authors:
  - Bekir Can Lütfüoğlu
publication date: 2026-08-21T22:00
abstract: |-
  The paper organizes the positive-mass de Sitter branch of Mannheim--Kazanas conformal-gravity black holes, derives its two-horizon parameter window, compares Killing, Bousso--Hawking, Tolman, and effective temperature conventions, and evaluates the pure Weyl-squared Wald entropy.
comments: "14 pages, 3 figures"
url: https://arxiv.org/abs/2608.21118v1
summary: "A convention-conscious horizon analysis with a reusable Weyl-squared Wald entropy, but an internal coupling-sign inconsistency in the response discussion."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct under the stated Schwarzschild gauge, Riemann-sign convention, pure Weyl-squared action, and positive-mass de Sitter branch, except for one internal sign inconsistency in the heat-capacity discussion. The horizon window, root ordering, temperatures, curvature, and displayed Wald entropy are independently reproduced. A global first law is deliberately not claimed.

Reason codes: `T1-Wald-CPS`, `T1-charge`, `T1-boundary`, `T2-dS-BH-holography`, `T2-model`.

The paper is useful for the vault's inner-boundary work because it cleanly separates invariant horizon data from choices of time normalization and thermodynamic ensemble. Its schematic first laws are not a CPS derivation of Hamiltonians or integrability.

# Source map

1. Section I states the scope: no new solution and no global phase diagram, only a consistent horizon/temperature/entropy convention set.
2. Section II fixes the pure Weyl-squared action, Mannheim--Kazanas lapse, curvature convention, and singular branch.
3. Section III proves the two-positive-root window, root ordering, Nariai endpoint, and small-$\kappa$ limits.
4. Section IV compares Killing, Bousso--Hawking, Tolman, and ensemble-dependent effective temperatures.
5. Section V derives the Wald entropy, records schematic separate-horizon first laws, and defines a restricted fixed-$(\gamma,\kappa)$ heat capacity.
6. Section VI summarizes the geometric and thermodynamic claims.

# Action, metric, and curvature

The action is

$$
I_{\rm CG}=\frac{\alpha_{\rm W}}{16\pi}
\int d^4x\sqrt{-g}\,C_{\mu\nu\rho\sigma}C^{\mu\nu\rho\sigma}.
$$

In Schwarzschild gauge,

$$
ds^2=-B(r)dt^2+\frac{dr^2}{B(r)}+r^2d\Omega_2^2,
$$

with

$$
B(r)=1-3\beta\gamma
-\frac{\beta(2-3\beta\gamma)}r
+\gamma r-\kappa r^2.
$$

Writing

$$
A=1-3\beta\gamma,
\qquad
\mu=\beta(2-3\beta\gamma),
$$

gives $B=A-\mu/r+\gamma r-\kappa r^2$. The Schwarzschild--de Sitter limit is $\gamma=0$, $\mu=2\beta$, $\kappa=\Lambda/3$.

The curvature data are

$$
R=12\kappa-\frac{6\gamma}{r}+\frac{6\beta\gamma}{r^2},
$$

$$
C_{\hat t\hat r\hat t\hat r}
=-\frac{\mu+\beta\gamma r}{r^3},
\qquad
C_{\mu\nu\rho\sigma}C^{\mu\nu\rho\sigma}
=\frac{12(\mu+\beta\gamma r)^2}{r^6}.
$$

# Black-hole window

For $\beta>0$, the Schwarzschild--de Sitter-connected positive-mass branch has

$$
-\frac13<\beta\gamma<\frac23,
\qquad
0<\kappa<\kappa_{\rm N},
\qquad
\kappa_{\rm N}=\frac{1+3\beta\gamma}{27\beta^2}.
$$

The horizon cubic is

$$
rB(r)=-\kappa r^3+\gamma r^2+Ar-\mu.
$$

Since $B\to-\infty$ at both positive-radius ends and

$$
B(3\beta)=\frac{1+3\beta\gamma}{3}-9\kappa\beta^2>0,
$$

there are two positive roots separated by $3\beta$. Their ordering and the third root are

$$
0<r_{\rm b}<3\beta<r_{\rm c},
\qquad r_{\rm n}<0.
$$

At $\kappa=\kappa_{\rm N}$,

$$
B(3\beta)=B'(3\beta)=0,
\qquad B''(3\beta)=-\frac{2}{9\beta^2},
$$

so the positive horizons merge at the Nariai point.

The factorization

$$
rB(r)=-\kappa(r-r_{\rm b})(r-r_{\rm c})(r-r_{\rm n})
$$

implies

$$
\gamma=\kappa(r_{\rm b}+r_{\rm c}+r_{\rm n}),
\quad
A=-\kappa(r_{\rm b}r_{\rm c}+r_{\rm b}r_{\rm n}+r_{\rm c}r_{\rm n}),
\quad
\mu=-\kappa r_{\rm b}r_{\rm c}r_{\rm n}.
$$

The window is a root-structure statement, not a stability theorem.

# Horizon temperatures and normalization

For the coordinate Killing vector $\partial_t$,

$$
T_h^{(K)}=\frac{|B'(r_h)|}{4\pi}.
$$

Using $B(r_h)=0$,

$$
B'(r_h)=\frac{A}{r_h}+2\gamma-3\kappa r_h.
$$

Therefore

$$
T_{\rm b}^{(K)}
=\frac1{4\pi}\left(\frac{A}{r_{\rm b}}+2\gamma-3\kappa r_{\rm b}\right),
$$

$$
T_{\rm c}^{(K)}
=\frac1{4\pi}\left(3\kappa r_{\rm c}-2\gamma-\frac{A}{r_{\rm c}}\right).
$$

In root variables,

$$
T_{\rm b}^{(K)}
=\frac{\kappa(r_{\rm c}-r_{\rm b})(r_{\rm b}-r_{\rm n})}{4\pi r_{\rm b}},
\qquad
T_{\rm c}^{(K)}
=\frac{\kappa(r_{\rm c}-r_{\rm b})(r_{\rm c}-r_{\rm n})}{4\pi r_{\rm c}}.
$$

Their ratio exceeds one because

$$
r_{\rm c}(r_{\rm b}-r_{\rm n})
-r_{\rm b}(r_{\rm c}-r_{\rm n})
=(-r_{\rm n})(r_{\rm c}-r_{\rm b})>0.
$$

Thus the two horizons are not in thermal equilibrium away from degeneracy.

The Bousso--Hawking prescription chooses the geodesic static radius $r_0$, with $B'(r_0)=0$, and rescales both temperatures by the same factor:

$$
T_h^{(BH)}=\frac{T_h^{(K)}}{\sqrt{B(r_0)}}.
$$

Near Nariai, writing $r_{\rm b,c}=3\beta\mp\varepsilon+O(\varepsilon^2)$,

$$
T_h^{(K)}\sim\frac{\varepsilon}{18\pi\beta^2},
\qquad
\sqrt{B(r_0)}\sim\frac{\varepsilon}{3\beta},
$$

so

$$
T_{\rm N}^{(BH)}=\frac1{6\pi\beta}.
$$

This does not contradict the vanishing coordinate-Killing temperature: the limiting clocks are different. Tolman temperatures add $1/\sqrt{B(R)}$ for the specified static observer. An effective two-horizon temperature requires an ensemble and is not a new horizon surface gravity.

# Weyl-squared Wald entropy

With the paper's orientation convention,

$$
S_{\mathcal H}=-2\pi\int_{\mathcal H}d^2x\sqrt h\,
\frac{\partial\mathcal L}{\partial R_{\mu\nu\rho\sigma}}
\epsilon_{\mu\nu}\epsilon_{\rho\sigma}.
$$

Since

$$
\frac{\partial\mathcal L}{\partial R_{\mu\nu\rho\sigma}}
=\frac{\alpha_{\rm W}}{8\pi}C^{\mu\nu\rho\sigma}
$$

inside the binormal contraction, spherical symmetry gives

$$
S_h=-4\pi\alpha_{\rm W}r_h^2
C_{\hat t\hat r\hat t\hat r}\big|_{r_h}.
$$

Hence

$$
S_h=4\pi\alpha_{\rm W}
\left(\frac\mu{r_h}+\beta\gamma\right)
=4\pi\alpha_{\rm W}
\left(1-2\beta\gamma+\gamma r_h-\kappa r_h^2\right).
$$

The second form uses the horizon equation. Pure de Sitter has zero entropy for the pure Weyl-squared action because $C_{\mu\nu\rho\sigma}=0$. At Nariai,

$$
S_{\rm N}=\frac{8\pi\alpha_{\rm W}}3.
$$

A Gauss--Bonnet addition would shift the entropy by a topological constant; it is not included in this action.

# First-law boundary

The paper writes only schematic, separately oriented horizon laws,

$$
dE_{\rm b}=T_{\rm b}dS_{\rm b}
+\Psi_\gamma^{(\rm b)}d\gamma
+\Theta_\kappa^{(\rm b)}d\kappa+\cdots,
$$

$$
dE_{\rm c}=-T_{\rm c}dS_{\rm c}
+\Psi_\gamma^{(\rm c)}d\gamma
+\Theta_\kappa^{(\rm c)}d\kappa+\cdots.
$$

No energy definition, boundary condition, Hamiltonian integrability proof, or combined-static-patch ensemble is supplied. The fixed-$(\gamma,\kappa)$ heat capacity is explicitly a restricted response along a one-parameter solution branch.

# Independent checks

## Checked

- xAct/xCoba independently gives

  $$
  R=-B''-\frac{4B'}r+\frac{2(1-B)}{r^2}
  $$

  and

  $$
  C_{\hat t\hat r\hat t\hat r}
  =\frac{r^2B''-2rB'+2B-2}{6r^2},
  \qquad C^2=12C_{\hat t\hat r\hat t\hat r}^2.
  $$

  Substituting the Mannheim--Kazanas lapse reproduces the paper's Ricci scalar, Weyl component, and invariant.
- Mathematica reproduces $B(3\beta)$, $\kappa_{\rm N}$, the double-root equations, and $B''(3\beta)=-2/(9\beta^2)$.
- The horizon derivative identity, root-factor temperatures, and $T_{\rm b}^{(K)}>T_{\rm c}^{(K)}$ reduce exactly to the stated algebra.
- The Nariai Bousso--Hawking ratio gives $1/(6\pi\beta)$.
- Both forms of the Wald entropy differ by zero after imposing $B(r_h)=0$.
- The branch $\beta(r_{\rm b})$ has the smooth limit $r_{\rm b}(1-\kappa r_{\rm b}^2)/2$ as $\gamma\to0$.
- The PDF pages containing temperature plots and Wald equations were rendered; equations and figure labels are visually consistent with the TeX source.

## Failed

- The sign language in the fixed-$(\gamma,\kappa)$ heat-capacity figure and prose is internally inconsistent with the displayed action and entropy. Equations (37)--(40) give positive Schwarzschild-connected black-hole entropy for $\alpha_{\rm W}>0$, but the caption/prose calls $-\alpha_{\rm W}>0$ the “entropy-positive choice.” One must either reverse the Wald-entropy sign convention or replace that later phrase by $\alpha_{\rm W}>0$; both cannot hold simultaneously.

## Source-derived

- The Mannheim--Kazanas lapse is imported as the general Bach-flat spherical solution in the fixed conformal/Schwarzschild gauge.
- The separate-horizon first-law forms and interpretation of $\gamma$ as an additional thermodynamic hair are literature-motivated rather than derived here.

## Blocked

- A CPS charge, global de Sitter energy, integrability analysis, and complete work-term matrix cannot be checked because the submission intentionally supplies no boundary conditions or Hamiltonian definition.
- The plotted heat-capacity arrays or generation code are absent; the underlying analytic branch formulas are present, but the exact plotting pipeline was not replayed.

## Not independently verified

- No perturbative stability, ghost-sector, observational, or Euclidean path-integral claim is established by the horizon analysis.

# Translation to the vault's inner-boundary conventions

1. Fix the action and its overall sign before comparing entropy or charge representatives.
2. Fix the horizon generator normalization before writing $T\,\delta S$; the Bousso--Hawking rescaling changes the generator and therefore the Hamiltonian normalization.
3. Treat black-hole and cosmological horizons as oppositely oriented boundary components. Their local first laws do not automatically combine into one integrable global Hamiltonian.
4. Decide whether $\gamma$ and $\kappa$ are fixed theory data or varying solution-space coordinates. This choice changes the allowed variations and the work terms.
5. The paper's best reusable object is the local entropy density/result, not the schematic energy.
