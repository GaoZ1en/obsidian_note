---
paper id: 2607.14330v1
title: "The variational approach to infrared divergencies: Applications to black hole action integrals and holographic Wilson loops"
authors:
  - M. Arroyo
  - D. Arteaga
  - M. Bañados
  - A. Faraggi
publication date: 2026-07-15T19:48
abstract: |-
  The paper renormalizes the variation of an on-shell action rather than the action itself. On shell the bulk term vanishes, leaving a boundary one-form on solution space; separating its exact and non-exact parts gives the counterterm and the finite thermodynamic response. The construction is applied to several black holes and to holographic Wilson loops.
comments: "30 pages, one figure"
url: https://arxiv.org/abs/2607.14330v1
summary: "A boundary-first prescription that extracts finite black-hole actions from the exact and non-exact parts of the on-shell variational one-form."
tags: []
---

Back to [[2026_07_17_overview]].

The useful shift is to regard infrared renormalization as a problem in the differential geometry of solution space. Instead of evaluating a divergent action and then guessing counterterms, the paper first computes its on-shell variation. The equations of motion erase the bulk variation, while the boundary data naturally separate into an exact piece, which can be integrated into a boundary subtraction, and a non-exact piece, which carries the physical response.

# The on-shell action as a one-form on solution space

For fields \(\phi^a\) and a boundary functional \(B\), the starting point is

$$
\delta I
=
\int_M E_a\,\delta\phi^a
+
\int_{\partial M}\theta_a^{\mu}\,\delta\phi^a
+
\delta B.
$$

On a family of solutions \(\phi^a(x;q_n,\mu_n)\), the bulk term vanishes. The remaining expression is a one-form on the parameter space whose coordinates are charges \(q_n\) and their conjugate boundary potentials \(\mu_n\). The paper organizes the bare surface contribution as

$$
\int_{\partial M}\theta
=
q_n\,\delta\mu_n
+
\delta\!\left[\Theta_0(q,\mu)+\Theta_\infty(r,\mu)\right].
$$

Here \(\Theta_0\) denotes a finite exact piece and \(\Theta_\infty\) contains the regulator-dependent radial terms. Choosing

$$
B=-\Theta_0-\Theta_\infty
$$

leaves the finite response

$$
\delta I_{\mathrm{ren}}=q_n(\mu)\,\delta\mu_n.
$$

The renormalized action exists locally only if this one-form is closed,

$$
\frac{\partial q_n}{\partial\mu_m}
=
\frac{\partial q_m}{\partial\mu_n}.
$$

Once that condition holds, \(I_{\mathrm{ren}}\) is recovered by integrating the response in potential space. Its additive constant remains invisible to the variational method.

# Why radial divergences become exact variations

Let \(K(r)\) be the regulated region bounded at radius \(r\). On shell, varying the bulk action over a thin radial slab gives a boundary contribution. The paper packages this as

$$
\delta\!\int_{K(r)}L
=
\frac{d\Theta(r)}{dr}\,dr.
$$

Consequently the explicitly radial, divergent part of the on-shell variation is exact in solution space. It can be removed by integrating \(\Theta_\infty\) without changing the non-exact response \(q_n\delta\mu_n\). This is the central mechanism behind the claim that no bulk subtraction is required.

The statement depends on working within a smooth family of solutions and on correctly including every physical boundary, including horizons, axes, Misner strings, and world-sheet endpoints. A missing boundary component can move a genuinely physical term into the apparently exact sector.

# Euclidean black holes and thermodynamic potentials

For a Euclidean black-hole saddle, the independent boundary potentials include the inverse temperature \(\beta\), angular velocities, and electromagnetic chemical potentials. Regularity at the horizon relates some integration constants to these potentials. The finite variational form then has the thermodynamic shape

$$
\delta I_E
=
E\,\delta\beta
-
J\,\delta(\beta\Omega)
-
Q\,\delta(\beta\Phi)
$$

up to the convention used for the signs of \(\Omega\) and \(\Phi\). Integrating gives the familiar grand-canonical combination

$$
I_E=\beta E-S-\beta\Omega J-\beta\Phi Q
$$

after the entropy-containing exact term has been fixed by the horizon contribution.

The examples are meant to show that the same variational split reproduces standard answers without separately constructing a holographic counterterm series:

- Schwarzschild and Schwarzschild--AdS isolate the horizon term that is missed by evaluating only the bulk Einstein--Hilbert integral.
- Kerr--Newman and Kerr--Newman--AdS test simultaneous variations of temperature, rotation, and charge.
- STU black holes test several scalar/electric charges and the integrability of a multidimensional response one-form.

# Taub--NUT and Taub--Bolt: regularity is part of the phase space

The NUT and Bolt examples expose a useful limitation. The Euclidean time period and NUT charge cannot be varied independently if the Misner strings are to remain regular. One must first restrict to

$$
\beta=8\pi n
$$

and then pull the boundary one-form back to that regular submanifold of solution space. If this constraint is not imposed, the variation is not the variation of the intended regular saddle and its apparent non-integrability is not an infrared-renormalization failure.

This is directly analogous to imposing boundary conditions before asking whether a covariant phase-space charge is integrable: the allowed tangent variations determine which one-form is being tested.

# Holographic Wilson loops

For a classical string world sheet ending on a contour at the asymptotic boundary, the bare area is infrared divergent. The same prescription varies the on-shell world-sheet action with respect to endpoint data. The radial divergence again lies in an exact endpoint term, while the non-exact part gives the finite force or response conjugate to the boundary separation. Integrating that response reconstructs the regularized quark--antiquark potential up to an additive constant.

This example is valuable because it shows that the method is not tied to the Einstein action: what matters is an on-shell variational identity and a controlled decomposition of the boundary one-form.

# Translation to the vault's boundary and CPS language

The paper's \(\theta_a^{\mu}\delta\phi^a\) is the boundary presymplectic-potential current. Its exact pieces are close in role to changing the boundary action or corner potential. The finite one-form \(q_n\delta\mu_n\) is not automatically a Hamiltonian charge variation: it is the thermodynamic response of the Euclidean on-shell action. A CPS comparison still requires identifying the Lorentzian cut, the symmetry generator, and the corresponding \(\delta Q_\xi-i_\xi\Theta\).

The transferable lesson for the gravitational-energy notes is procedural:

1. choose the allowed solution family and boundary conditions;
2. compute the complete on-shell boundary variation;
3. separate exact regulator-dependent terms from the non-exact response;
4. test closure only after all regularity relations have been imposed;
5. integrate last, accepting that a variational method cannot fix the additive constant.

# Verification boundary

The source's central differential-form logic and the parameter-space integrability condition were reconstructed directly. The examples were followed through the paper's own boundary variations, but their complete metric-by-metric substitutions were not independently reproduced. In particular, the general claim that every radial divergence is exact depends on the paper's smooth-family and boundary-completeness assumptions rather than on a standalone theorem proved for arbitrary theories.

