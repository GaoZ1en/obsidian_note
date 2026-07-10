---
paper id: 2607.08482v1
title: Quantum corrections to the near-extremal thermodynamics of (warped) BTZ black holes
authors:
  - Emilie Despontin
  - Stéphane Detournay
  - Robinson Mancilla
  - Chiara Toldo
publication date: 2026-07-09T13:40
abstract: |-
  The paper studies one-loop effects in near-extremal BTZ and warped BTZ black holes in topologically massive gravity. It tracks Schwarzian and rotational modes that are zero modes in the extremal throat, computes their leading temperature-dependent eigenvalues, and matches the throat calculation to off-shell eigenmodes in the full geometry. The treatment shows that rotational modes require non-normalizable first-order corrections and cannot be discarded independently of boundary conditions and ensemble.
comments: "50 pages"
url: https://arxiv.org/abs/2607.08482v1
summary: "Near-extremal TMG requires both Schwarzian and rotational spectral sectors; the rotational correction probes gluing to the asymptotic region and changes the logarithmic thermodynamics of warped BTZ."
tags: []
---

Daily screening: [[2026_07_10_overview]]

## Spectral problem and why the rotational sector matters

The paper studies the Euclidean quadratic fluctuation operator around BTZ and warped BTZ black holes in topologically massive gravity (TMG). The key mechanism is not merely the existence of throat zero modes. It is the comparison between:

- normalizable zero modes of the strict extremal throat;
- their leading finite-temperature lifts;
- off-shell eigenmodes of the full black-hole geometry;
- the asymptotic boundary conditions and thermodynamic ensemble used to define the path integral.

The Schwarzian sector obeys ordinary first-order perturbation theory. The rotational sector does not: its first-order eigenfunction correction is non-normalizable in the throat, so the term involving the unperturbed operator acting on the corrected eigenfunction must be retained.

## TMG and its quadratic operator

The action is

$$
S_{\rm TMG}=S_{\rm EH}+\frac1\mu S_{\rm CS},
$$

with

$$
S_{\rm EH}=\frac{1}{2\kappa^2}\int d^3x\sqrt{-g}
\left(R+\frac{2}{\ell^2}\right),
$$

$$
S_{\rm CS}=\frac{1}{4\kappa^2}\int d^3x\sqrt{-g}\,
\varepsilon^{\mu\nu\rho}
\left(
\Gamma^\alpha{}_{\mu\beta}\partial_\nu\Gamma^\beta{}_{\rho\alpha}
+\frac23\Gamma^\kappa{}_{\mu\beta}\Gamma^\beta{}_{\nu\alpha}\Gamma^\alpha{}_{\rho\kappa}
\right).
$$

The field equation is

$$
R_{\mu\nu}-\frac12g_{\mu\nu}R-\frac1{\ell^2}g_{\mu\nu}
+\frac1\mu C_{\mu\nu}=0.
$$

After gauge fixing, the physical spin-two fluctuations are taken transverse and traceless. On a locally AdS$_3$ background the TMG Lichnerowicz problem factorizes through the curl operator $\bar D_\mu{}^\alpha$:

$$
\frac1{64\pi}
\left(\delta_\mu^\alpha+\frac1\mu\bar D_\mu{}^\alpha\right)
\left(-\Box-\frac2{\ell^2}\right)h_{\alpha\nu}^{\rm TT}
=\lambda h_{\mu\nu}^{\rm TT}.
$$

The associated first-order eigenvalue equation is

$$
\bar D_\mu{}^\alpha h_{\alpha\nu}^{\rm TT}=\gamma h_{\mu\nu}^{\rm TT},
$$

which gives

$$
\lambda=\frac1{64\pi}
\left(\frac1{\ell^2}-\gamma^2\right)
\left(1+\frac\gamma\mu\right).
$$

This first-order reduction is central in the BTZ calculation and is modified, rather than globally available, in warped BTZ.

## Near-extremal BTZ throat

At fixed TMG angular momentum the horizons are separated as

$$
r_\pm=r_0\pm\lambda\,\delta r
-\frac{1+\mu\ell}{1-\mu\ell}
\frac{(\lambda\delta r)^2}{2r_0},
$$

where the quadratic term enforces the fixed-charge ensemble. With $\ell_2=\ell/2$,

$$
T_{\rm TMG}=\frac{\lambda\delta r}{2\pi\ell_2^2}.
$$

The decoupled Euclidean throat is

$$
ds^2=\ell_2^2\left(\sinh^2\eta\,d\tau^2+d\eta^2\right)
+r_0^2\left[d\phi+\frac{i\ell_2}{r_0}(1-\cosh\eta)d\tau\right]^2.
$$

The Newman-Penrose coframe is chosen as

$$
\begin{aligned}
\bar k&=\frac{\ell_2}{\sqrt2}(i\sinh\eta\,d\tau+d\eta),\\
\bar l&=\frac{\ell_2}{\sqrt2}(-i\sinh\eta\,d\tau+d\eta),\\
\bar p&=i\ell_2(1-\cosh\eta)d\tau+r_0d\phi.
\end{aligned}
$$

The Schwarzian modes live in the $kk$ and $ll$ components, whereas rotational modes also have $pk$ and $pl$ components. This decomposition makes the finite-temperature transverse-traceless conditions tractable.

## Schwarzian modes as a closed throat sector

For $|n|>1$, the leading correction remains normalizable and satisfies

$$
\left\langle \bar h_{\rm Schw}^{(-n)}\middle|
\bar{\mathcal L}\,\delta h_{\rm Schw}^{(n)}\right\rangle=0.
$$

Ordinary first-order perturbation theory therefore gives

$$
\delta\lambda_{\rm Schw}^{(n)}
=\left\langle \bar h_{\rm Schw}^{(-n)}\middle|
\delta\mathcal L\,\bar h_{\rm Schw}^{(n)}\right\rangle
=\frac{|n|T}{32r_0}
\left(1+\frac1{2\mu\ell_2}\right).
$$

Zeta-regularizing the product over $n\ge2$ yields

$$
\delta\log Z_{\rm throat}^{\rm Schw}
=\frac32\log T+\text{constant}.
$$

The throat behaves as a closed system for these modes: the correction does not leave the original Hilbert space.

## Rotational modes and the open-throat correction

For $|n|>0$, the rotational mode uses

$$
\bar h_{\mu\nu}^{\rm Rot.}
=\bar h_{kk}\bar k_\mu\bar k_\nu
+2\bar h_{pk}\bar k_{(\mu}\bar p_{\nu)}
+(k\leftrightarrow l).
$$

The order-$T$ transverse-traceless correction is non-normalizable:

$$
\left\langle\bar h_{\rm Rot}^{(-n)}\middle|\delta h_{\rm Rot}^{(n)}\right\rangle
\longrightarrow\infty.
$$

Consequently,

$$
\left\langle\bar h_{\rm Rot}^{(-n)}\middle|
\bar{\mathcal L}\,\delta h_{\rm Rot}^{(n)}\right\rangle\ne0,
$$

and the correct eigenvalue shift is

$$
\begin{aligned}
\delta\lambda_{\rm Rot}^{(n)}
&=\left\langle\bar h_{\rm Rot}^{(-n)}\middle|
\delta\mathcal L\,\bar h_{\rm Rot}^{(n)}
+\bar{\mathcal L}\,\delta h_{\rm Rot}^{(n)}
\right\rangle\\
&=-\frac{|n|T}{32r_0}
\left(1-\frac1{2\mu\ell_2}\right).
\end{aligned}
$$

The second term records information from the far region. The throat is therefore effectively an open system for rotational modes, and discarding the non-normalizable correction would give the wrong finite-temperature lift.

## Full BTZ geometry and the small-temperature match

In the full geometry, the first-order eigenproblem gives exact eigenvalues

$$
\lambda_{\rm Schw}^{(n)}
=\frac{|n|(r_+-r_-)[2r_+-|n|(r_+-r_-)]}
{64\pi\ell^2r_+^2}
\left[1+\frac{r_+-|n|(r_+-r_-)}{\mu\ell r_+}\right],
$$

$$
\lambda_{\rm Rot}^{(n)}
=\frac{|n|(r_+-r_-)[|n|(r_--r_+)-2r_+]}
{64\pi\ell^2r_+^2}
\left[1+\frac{|n|(r_--r_+)-r_+}{\mu\ell r_+}\right].
$$

Using $r_+-r_-=\pi\ell^2T+O(T^2)$, these reduce to the two throat coefficients above. The match is the evidence that the non-normalizable rotational correction is the near-horizon remnant of gluing the throat to the asymptotic geometry.

## Boundary conditions and order of limits

At finite temperature the asymptotic behavior is schematically

$$
h_{ab}^{\rm Schw}\sim O(r^m),
\qquad
h_{ab}^{\rm Rot}\sim O(r^{2+m}),
\qquad
m=|n|\left(1-\frac{r_-}{r_+}\right).
$$

These modes violate standard Brown-Henneaux and CSS falloffs for generic finite $T$. When $T\to0$, $m\to0$: Schwarzian modes approach normalizable $O(r^0)$ behavior, while rotational modes approach source-like $O(r^2)$ behavior compatible with CSS-type boundary data. The limits $r\to\infty$ and $T\to0$ therefore do not commute harmlessly.

The choice of ensemble is separate from the falloff conditions, but the paper shows that they interact. Fixed angular momentum motivates the canonical BTZ analysis; CSS boundary conditions are more naturally associated with a grand-canonical description.

## Warped BTZ and the deformed first-order problem

Warped BTZ has nonzero traceless Ricci tensor

$$
\bar E_{\mu\nu}=\frac{\nu^2-1}{\ell^2}
\left(g_{\mu\nu}-3p_\mu p_\nu\right),
$$

so the simple three-factor TMG operator decomposition no longer holds for arbitrary perturbations. For the Schwarzian and rotational ansatzes, the paper introduces the restricted deformed equation

$$
D_\mu{}^\alpha h_{\alpha\nu}
=\gamma h_{\mu\nu}+\beta(\nu)h_{kk}k_\mu k_\nu,
\qquad
\beta(1)=0.
$$

This is a mode-specific device, not a covariant spectral theorem. It yields the small-$T$ lifts

$$
\lambda_{\rm Schw}^{(n)}
=\frac{(5\nu^2+3)|n|T}{192\nu^2r_0}+O(T^2),
$$

$$
\lambda_{\rm Rot}^{(n)}
=\frac{(\nu^2-3)|n|T}{96\nu^2r_0}+O(T^2).
$$

For $\nu>\sqrt3$, the rotational eigenvalue is positive and contributes

$$
\delta\log Z_{\rm throat}^{\rm Rot}=\frac12\log T+\text{constant}.
$$

Together with the Schwarzian sector, the quadratic warped-CFT ensemble gives $2\log T$. The sign is not universally benign: the massive-graviton BF window quoted by the paper lies where the rotational coefficient is negative, so the corresponding saddle may be unstable.

## Transfer to AdS$_3$ quantization work

The most reusable items are:

1. the exact TMG Lichnerowicz-to-first-order spectral map on locally AdS$_3$ backgrounds;
2. the rule for non-normalizable perturbative corrections,
   $\langle h|\delta\mathcal L|h\rangle+\langle h|\bar{\mathcal L}|\delta h\rangle$;
3. the distinction between throat normalizability and full-geometry boundary admissibility;
4. the explicit dependence of logarithmic corrections on boundary conditions and ensemble;
5. the Newman-Penrose decomposition as an analytic bridge between near-horizon and full-geometry modes.

## Verification note

- Checked with Mathematica: expanding the two exact BTZ eigenvalues at $r_+-r_-=\pi\ell^2T$ reproduces the displayed Schwarzian and rotational coefficients, using $\ell_2=\ell/2$.
- Checked with Mathematica: the warped coefficients at $\nu=1$ reduce to the BTZ coefficients at $\mu\ell=3$.
- Source-derived: the explicit Newman-Penrose mode profiles, transverse-traceless solutions, non-normalizability integrals, warped deformed first-order equation, one-loop determinant measure, and boundary-condition analysis.
