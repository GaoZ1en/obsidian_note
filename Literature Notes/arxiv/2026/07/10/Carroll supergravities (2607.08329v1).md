---
paper id: 2607.08329v1
title: Carroll supergravities
authors:
  - Marc Henneaux
publication date: 2026-07-09T10:15
abstract: |-
  The paper derives the electric and magnetic Carrollian limits of four-dimensional N=1 supergravity. Starting from the Hamiltonian form of the Lorentzian theory, it contracts the lapse and supersymmetry multipliers so that the limiting theories retain first-class constraints, and it gives a covariant formulation of the electric limit. The construction extends directly to extended supergravity models.
comments: ""
url: https://arxiv.org/abs/2607.08329v1
summary: "The Hamiltonian contraction isolates electric ultralocal and magnetic spatial-gradient sectors of N=1 supergravity while preserving a Carroll supersymmetry constraint algebra whose square gives the Hamiltonian constraint."
tags: []
---

Daily screening: [[2026_07_10_overview]]

## Why This Is Useful

The paper gives a compact testbed for taking Carroll limits without losing the gauge structure of a gravitational theory. Its reusable point is methodological: prepare the theory in Hamiltonian form, scale the Lagrange multipliers rather than the canonical variables, and take the contraction directly on the first-class constraints. The electric and magnetic theories then retain the same local supersymmetry algebra while preserving complementary pieces of the Lorentzian dynamics.

## Lorentzian Supergravity Before the Contraction

The starting theory is $N=1$, $D=4$ supergravity with tetrad ${h^{(\alpha)}}_\mu$, Rarita-Schwinger field $\psi_\mu$, and

$$\begin{align}
S=S_I+S_{II}+S_{III},
\end{align}$$

where

$$\begin{align}
S_I=\frac{1}{2\kappa^2}\int d^4x\,\sqrt{-{}^4g}\,{}^4R, \qquad S_{II}=-\int d^4x\,\sqrt{-{}^4g}\,\bar\psi_\mu\gamma^{\mu\nu\rho}D_\nu\psi_\rho,
\end{align}$$

and $S_{III}$ contains the quartic gravitino terms required by local supersymmetry. The normalization is

$$\begin{align}
\kappa^2=\frac{8\pi G}{c^4}.
\end{align}$$

The Hamiltonian derivation uses time gauge, ${h^{(0)}}_m=0$, and spatial triads ${h^{(a)}}_m$. After absorbing gravitino-dependent shifts into the gravitational momentum, the canonical action is

$$\begin{aligned}
S&=S^{\rm Kin}-S^H,\\
S^{\rm Kin} &=\int d^4x\left[ {\pi_{(a)}}^r\dot h^{(a)}{}_r +\sqrt g\,\bar\psi_{(a)}\gamma^{(0)}\gamma^{(a)(b)}\dot\psi_{(b)} \right],\\
S^H &=\int d^4x\left[ N\mathcal H+N^k\mathcal H_k+\bar\chi\mathcal S +\frac12\lambda_{(a)(b)}J^{(a)(b)} \right].
\end{aligned}$$

The canonical brackets are

$$\begin{align}
\{h^{(a)}{}_m(x),\pi_{(b)}{}^r(y)\} =\delta^{(a)}{}_{(b)}\delta_m^r\delta(x,y),
\end{align}$$

$$\begin{align}
\{\psi_{(a)}^A(x),\psi_{(b)}^B(y)\} =-\frac{i}{4}g^{-1/2}(\gamma_{(b)}\gamma_{(a)})^{AB}\delta(x,y).
\end{align}$$

The first-class constraints have distinct roles:

- $\mathcal H$ generates normal deformations;
- $\mathcal H_k$ generates spatial diffeomorphisms;
- $\mathcal S$ generates local supersymmetry;
- $J^{(a)(b)}$ generates local $SO(3)$ rotations of the triad.

The time gauge is especially convenient because the residual local group is $SO(3)$ both before and after the Carroll contraction.

## Electric Carroll Supergravity

The electric limit rescales the lapse and fermionic multiplier as

$$\begin{align}
N^E=2\kappa^2N, \qquad \chi^E=2\kappa^2\chi,
\end{align}$$

and then sends $\kappa^2\to\infty$ with $N^E,\chi^E$ and the canonical variables fixed. The kinetic term is unchanged, while

$$\begin{align}
S^{H,E}=\int d^4x\left[ N^E\mathcal H^E+N^k\mathcal H_k+\bar\chi^E\mathcal S^E +\frac12\lambda_{(a)(b)}J^{(a)(b)} \right].
\end{align}$$

The surviving dynamical constraints are

$$\begin{aligned}
\mathcal H^E &=G_{ijmn}\pi^{ij}\pi^{mn} -\sqrt g\,G_{ijmn}\pi^{ij} \bar\psi_{(a)}\gamma^{(0)}\gamma^{(a)(b)}\psi^{(c)} h_{(b)}{}^m h_{(c)}{}^n -\sqrt g\,M_4',\\
\mathcal S^E &=\gamma_{(a)}\psi_{(b)}h^{(a)}{}_m h^{(b)}{}_n\pi^{mn} -\sqrt g\,M_3'.
\end{aligned}$$

All spatial derivatives disappear from $\mathcal H^E$ and $\mathcal S^E$; only $\mathcal H_k$ retains spatial Lie derivatives. The electric theory is therefore ultralocal in its dynamical constraints, but its algebraic quartic-fermion terms survive.

This limit is the supergravity counterpart of the electric Carroll limit of Einstein gravity: the momentum-squared part of the Hamiltonian constraint is retained, and the supersymmetry constraint remains its fermionic square root.

## Magnetic Carroll Supergravity

The magnetic limit instead uses

$$\begin{align}
N^M=(2\kappa^2)^{-1}N,
\end{align}$$

and sends $\kappa^2\to0$. The limiting Hamiltonian is

$$\begin{align}
S^{H,M}=\int d^4x\left[ N^M\mathcal H^M+N^k\mathcal H_k+\bar\chi\mathcal S^M +\frac12\lambda_{(a)(b)}J^{(a)(b)} \right],
\end{align}$$

with

$$\begin{align}
\mathcal H^M=-\sqrt g\,R, \qquad \mathcal S^M=2\sqrt g\,\gamma^{(0)}\gamma^{(a)(b)}D_{(a)}\psi_{(b)}.
\end{align}$$

The spatial curvature and gravitino gradients survive, while momentum-quadratic and quartic-fermion terms disappear. Varying the conjugate momentum no longer solves for that momentum; it imposes vanishing extrinsic curvature. Thus the magnetic limit keeps the spatial geometry that underlies positive-energy arguments but freezes normal evolution.

## The Common Carroll Supersymmetry Algebra

Despite retaining different terms, both limits have the same characteristic local constraint algebra:

$$\begin{align}
\{\mathcal S_A^{E}(x),\mathcal S_B^{E}(y)\} =-i\delta_{AB}\mathcal H^E(x)\delta(x-y), \qquad \{\mathcal H^E(x),\mathcal H^E(y)\}=0,
\end{align}$$

and

$$\begin{align}
\{\mathcal S_A^{M}(x),\mathcal S_B^{M}(y)\} =-i\delta_{AB}\mathcal H^M(x)\delta(x-y), \qquad \{\mathcal H^M(x),\mathcal H^M(y)\}=0.
\end{align}$$

There is no momentum constraint on the right-hand side. This is the local version of the contracted rigid algebra

$$\begin{align}
[Q^A,\bar Q_B]=-\frac{i}{2}(\gamma_0)^A{}_B P^0, \qquad [K_i,Q^A]=0,
\end{align}$$

so Carroll spinors and supercharges are inert under Carroll boosts.

For the magnetic theory, the derivative constraints can yield nonzero on-shell surface charges for energy and supersymmetry. In the electric theory the corresponding surface integrals vanish because the dynamical constraints are ultralocal.

## Covariant Electric Action and the Magnetic Obstruction

The electric gravitational action can be written without time gauge as

$$\begin{align}
S_2^E=\int d^4x\,h\left( K^E_{\alpha\beta}K_E^{\alpha\beta}-(K^E)^2 \right), \qquad K^E_{\alpha\beta}=-\frac12\mathcal L_n g_{\alpha\beta}.
\end{align}$$

The gravitino is split into a transverse Carroll vector-spinor $\Phi_{(\alpha)}$ and a longitudinal spinor $\Psi n^{(\alpha)}$. With Carroll gamma matrices $\Gamma$ and $\rho^{(\alpha)}$, the covariant spin-$3/2$ sector is

$$\begin{aligned}
S_{3/2}^E=\int d^4x\,h\big[& \bar\Phi_{(\alpha)}\Gamma\rho^{(\alpha)(\beta)}\mathcal L_n\Phi_{(\beta)} -\bar\Phi_{(\alpha)}\Gamma\rho^{(\alpha)(\beta)}\Phi^{(\gamma)}K^E_{(\beta)(\gamma)}\\
&-\bar\Psi\rho_{(\gamma)}\Phi_{(\delta)}
G^{(\gamma)(\delta)(\alpha)(\beta)}K^E_{(\alpha)(\beta)} +L^{\rm quartic}
\big].
\end{aligned}$$

The magnetic theory does not admit the same direct off-shell covariantization. Its spatial connection is well defined only after the equation $K_{\alpha\beta}=0$ is used, and the naive contracted supersymmetry transformations diverge off shell. A covariant magnetic action therefore requires either adding on-shell-trivial improvements to the transformations or gauging the super-Carroll algebra directly.

## Transfer to Current Boundary and Phase-Space Work

This is not a covariant phase-space charge construction, but it isolates three useful lessons:

1. A Carroll limit is safest at the level of canonical variables and first-class constraints.
2. Electric and magnetic contractions can share a constraint algebra while carrying inequivalent local dynamics and inequivalent surface-charge content.
3. Off-shell covariance can fail even when the on-shell contracted algebra is regular; this distinction matters when importing a Carroll action into CPS or boundary-charge calculations.

## Verification Note

- Checked with Mathematica: inserting $N=N^E/(2\kappa^2)$ into the Lorentzian Hamiltonian and taking $\kappa^2\to\infty$ retains the momentum, mixed gravitino-momentum, and quartic pieces shown in $\mathcal H^E$ while suppressing curvature and spatial-gradient pieces.
- Checked with Mathematica: inserting $N=2\kappa^2N^M$ and taking $\kappa^2\to0$ leaves only $-N^M\sqrt g\,R$ in the Hamiltonian constraint.
- Source-derived: the full first-class constraint algebra, the quartic gravitino cancellations, the covariant electric supersymmetry transformations, and the off-shell obstruction in the magnetic case.
