---
paper id: 2606.17139v2
title: Planck mass gravitinos in Einstein-Maxwell backgrounds
authors:
  - Artur Krawczyk
  - Krzysztof A. Meissner
  - Hermann Nicolai
  - Bartłomiej Sikorski
publication date: 2026-06-15T18:00
abstract: |-
  The paper revisits the consistency of a minimally coupled charged massive Rarita--Schwinger field in an Einstein--Maxwell background. Constraint solvability and characteristic analysis give the same lower mass bound; a Stückelberg spinor isolates the helicity-one-half obstruction and leads, after gauge fixing and ghosts, to propagators with ordinary high-momentum falloff.
comments: "v2 revised 17 July 2026; arXiv comments field empty"
url: https://arxiv.org/abs/2606.17139v2
summary: "A reusable constrained-field benchmark linking spin-3/2 causality, Stückelberg completion, BRST gauge fixing, and renormalizable propagators."
tags: []
---

Back to [[2026_07_20_overview]].

This is useful as a medium-priority benchmark for the Proca/BRST thread. Its central mechanism is unusually clean: the same background-dependent matrix controls both solvability of the nondynamical Rarita--Schwinger component and propagation of the Stückelberg helicity-(1/2) mode. The note keeps the result in the minimally coupled theory; the paper itself warns that Pauli terms change numerical coefficients.

# Charged Rarita--Schwinger field and the Planckian bound

The paper uses signature ((+,-,-,-)),

$$
\{\gamma^\mu,\gamma^\nu\}=2g^{\mu\nu},
\qquad
\gamma^{\mu_1\cdots\mu_n}
=
\gamma^{[\mu_1}\cdots\gamma^{\mu_n]},
$$

and the minimally coupled action

$$
\frac{\mathcal L}{\sqrt{-g}}
=
-i\bar\psi_\mu\gamma^{\mu\nu\rho}D_\nu\psi_\rho
+m\bar\psi_\mu\gamma^{\mu\nu}\psi_\nu,
$$

with

$$
D_\mu\psi_\nu
=
\partial_\mu\psi_\nu
-\Gamma^\rho{}_{\mu\nu}\psi_\rho
+\frac14\omega_{\mu ab}\gamma^{ab}\psi_\nu
+iqA_\mu\psi_\nu.
$$

The background is assumed to solve

$$
G^{\mu\nu}=\kappa^2T_{\rm Maxwell}^{\mu\nu}+\Lambda g^{\mu\nu},
\qquad
\kappa^{-1}=M_{\rm Pl}.
$$

The claimed sufficient consistency condition is

$$
\boxed{
m^2>
\frac{2q^2}{3\kappa^2}
-\frac{\Lambda}{3}
}.
$$

It is a strict bound in the minimally coupled local analysis. The shift that temporarily removes (\Lambda) assumes (\Lambda>-3m^2); the more negative regime already has a tachyonic/nonunitary obstruction without electromagnetism.

# Solving the nondynamical component

The equation of motion is

$$
E^\mu
\equiv
-i\gamma^{\mu\nu\rho}D_\nu\psi_\rho
+m\gamma^{\mu\nu}\psi_\nu
=0.
$$

For a chosen time coordinate, (\psi_i) are dynamical while (\psi_0) has no time derivative. Taking the divergence of (E^\mu) and using the gamma trace gives a matrix multiplying (\psi_0),

$$
\mathcal M
=
\gamma_\mu G^{\mu0}
+2q\gamma_\mu\gamma^5\widetilde F^{\mu0}
+3m^2\gamma^0.
$$

The determinant identity

$$
\det\!\left[\gamma^\mu(a_\mu+\gamma^5b_\mu)\right]
=(a+b)^2(a-b)^2
$$

turns invertibility of (\mathcal M) into two Lorentzian norm conditions. In an orthonormal Einstein--Maxwell frame, introduce

$$
\mathcal E
=
\frac{\kappa^2\vec E^{,2}}{6m^2},
\qquad
\mathcal B
=
\frac{\kappa^2\vec B^{,2}}{6m^2}.
$$

Degeneracy would require

$$
(1+\mathcal E+\mathcal B)^2
-4\sin^2\theta\,\mathcal E\mathcal B
-\frac{8q^2}{3\kappa^2m^2}\mathcal B
=0.
$$

For (0\leq\sin^2\theta\leq1), its left side is bounded below by

$$
(1+\mathcal E-\mathcal B)^2
+4\mathcal B
\left(1-\frac{2q^2}{3\kappa^2m^2}\right).
$$

Thus (m^2>2q^2/(3\kappa^2)) keeps the constraint matrix nonsingular for every electromagnetic field, and restoring (\Lambda) gives the boxed bound. Without gravitational backreaction the corresponding matrix becomes singular at

$$
\vec B^{,2}
=
\left(\frac{3m^2}{2q}\right)^2,
$$

the Velo--Zwanziger obstruction.

# Characteristic cone

For a derivative discontinuity

$$
[-i\partial_\mu\psi_\nu]=n_\mu\Psi_\nu,
$$

the principal equations imply

$$
n^2\Psi_\mu=n_\mu(n\!\cdot\!\Psi).
$$

The discontinuity of the constraint gives the characteristic matrix

$$
\gamma_\mu
\left(
n^\mu
+\frac{G^{\mu\nu}n_\nu}{3m^2}
+\frac{2q}{3m^2}\widetilde F^{\mu\nu}\gamma^5n_\nu
\right),
$$

so the two characteristic branches obey

$$
\left(
n^\mu
+\frac{G^{\mu\nu}n_\nu}{3m^2}
\pm
\frac{2q\widetilde F^{\mu\nu}n_\nu}{3m^2}
\right)^2=0.
$$

Using the Einstein--Maxwell relation, the coefficient multiplying the metric quadratic form can be completed to

$$
\begin{aligned}
A={}&1-
\frac{4q^4}{9\kappa^4m^4}
+\frac{\kappa^4}{36m^4}
\left(
\vec E^{,2}-\vec B^{,2}
+\frac{4q^2}{\kappa^4}
\right)^2\\
&+
\frac{\kappa^4}{9m^4}
(\vec E\!\cdot\!\vec B)^2.
\end{aligned}
$$

The same mass bound makes this coefficient positive and also makes the Maxwell-stress coefficient positive. The source therefore concludes that no timelike characteristic normal exists under the bound. This is a local causality/hyperbolicity statement for the specified background system, not a proof of global well-posedness on an arbitrary spacetime.

# Stückelberg spinor isolates helicity one-half

The free massive theory is rewritten with a spinor (\chi) transforming as

$$
\delta\chi=m\epsilon,
\qquad
\delta\psi_\mu
=
\left(\partial_\mu-\frac{im}{2}\gamma_\mu\right)\epsilon.
$$

The invariant vector-spinor is

$$
\psi'_\mu
=
\psi_\mu
-\frac1m
\left(\partial_\mu-\frac{im}{2}\gamma_\mu\right)\chi.
$$

After covariantization, commuting derivatives produces curvature and electromagnetic terms. The principal (\chi) equation is

$$
\frac32i\slashed\partial\chi
+\frac{q}{m^2}
\gamma_\mu\widetilde F^{\mu\nu}\gamma^5\partial_\nu\chi
+\frac{i}{2m^2}
\gamma_\mu G^{\mu\nu}\partial_\nu\chi
+\cdots=0.
$$

Its characteristic matrix is exactly the one obtained from the Rarita--Schwinger constraint, after an overall normalization. The equality of the two characteristic equations is the transferable mechanism: the Stückelberg helicity-(1/2) field turns a hidden constraint pathology into an ordinary principal-symbol pathology.

For the vault's Proca work, the analogous question is whether the longitudinal Stückelberg field reproduces every background-dependent constraint determinant before gauge fixing. For BRST, (\chi) is also the field that makes the redundant gauge description explicit enough to define a controlled ghost sector.

# Dirac-like propagators and the ghost complex

The unitary-gauge propagator contains terms growing with momentum,

$$
\left[
\gamma^{\nu\rho\mu}p_\rho+m\gamma^{\nu\mu}
\right]^{-1}
=
\frac{\slashed p+m}{p^2-m^2}
\left[
\eta^{\mu\nu}
-\frac13\gamma^\mu\gamma^\nu
+\frac{p^\mu\gamma^\nu-\gamma^\mu p^\nu}{3m}
-\frac{2p^\mu p^\nu}{3m^2}
\right].
$$

The gauge choice

$$
G=\gamma\!\cdot\!\psi+i\chi
$$

with the differential gauge-fixing kernel (i\slashed\partial-m) permits the field redefinition

$$
\psi_\mu
=
\phi_\mu-rac12\gamma_\mu\gamma\!\cdot\!\phi,
$$

and the combination

$$
\xi
=
-\frac12\gamma\!\cdot\!\phi
+\frac32i\chi.
$$

The quadratic gauge-fixed Lagrangian becomes

$$
\mathcal L+\mathcal L_{\rm gf}
=
-\bar\phi_\mu(i\slashed\partial+m)\phi^\mu
+\bar\xi(i\slashed\partial+m)\xi,
$$

with propagators

$$
\langle\phi_\mu\bar\phi_\nu\rangle
=
-\eta_{\mu\nu}
\frac{i\slashed p-m}{p^2-m^2+i0},
\qquad
\langle\xi\bar\xi\rangle
=
\frac{i\slashed p-m}{p^2-m^2+i0}.
$$

Both now fall as (1/p). Because the gauge parameter is fermionic, the Faddeev--Popov spinor ghosts (c,c') are commuting. The derivative kernel in the gauge condition also introduces a Nielsen--Kallosh/Nakanishi--Lautrup sector. The source packages the gauge fixing and ghosts into a BRST-exact term (s\Xi), then covariantizes it and restores the curvature couplings suppressed by (m^{-1}) and (m^{-2}).

This is the main reusable reference value: a clean high-momentum propagator is not obtained by merely projecting the unitary propagator; it follows from the Stückelberg redundancy, a derivative gauge-fixing operator, and its complete ghost complex.

# Verification boundary

**Checked.** Mathematica reproduced the lower-bound identity for the constraint determinant and the completed-square form of the characteristic metric coefficient. Under (\mathcal E,\mathcal B\geq0), (0\leq\sin^2\theta\leq1), (m^2>2q^2/(3\kappa^2)), and real nonzero (m,\kappa), both expressions are strictly positive. The equality of the two displayed characteristic matrices is also immediate after normalizing the principal (\chi) equation.

**Assumptions.** Minimal electromagnetic coupling; a classical Einstein--Maxwell background; the paper's gamma-matrix and curvature conventions; (\Lambda>-3m^2) for the temporary cosmological-constant shift; local characteristic analysis; suitable boundary conditions are not part of the result.

**Not verified.** The full gamma-matrix determinant, every curvature-commutator coefficient in (\mathcal L_{D^2}+\mathcal L_{D^3}), inversion of the complete vector-spinor kinetic operator, BRST closure including all barred-field signs, the functional determinants and polarization count, and global well-posedness. Those parts remain source-derived. Nonminimal Pauli couplings lie outside the checked chain and can change the bound.
