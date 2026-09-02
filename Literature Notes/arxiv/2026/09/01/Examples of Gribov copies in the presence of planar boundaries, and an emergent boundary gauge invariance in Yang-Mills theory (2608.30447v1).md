---
paper id: 2608.30447v1
title: Examples of Gribov copies in the presence of planar boundaries, and an emergent boundary gauge invariance in Yang-Mills theory
authors:
  - David Dudal
  - Luigi Rosa
  - Sebbe Stouten
publication date: 2026-08-31T08:36
abstract: |-
  The paper constructs explicit zero modes of the SU(2) Yang--Mills Faddeev--Popov operator between planar perfect-electric or perfect-magnetic conductors and then studies an additional local invariance carried by boundary multiplier fields. The zero-mode constructions include finite-action and finite-L2 examples. The PEC multiplier symmetry follows from the Bianchi identity, whereas the PMC transformation also moves the bulk gauge field distributionally and requires a regulator prescription or a boundary counterterm.
comments: "16 pages, 6 .jpg figures"
url: https://arxiv.org/abs/2608.30447v1
summary: "A useful finite-boundary gauge-fixing test: the Gribov zero modes are explicit, but the PMC boundary symmetry is regulator- and counterterm-dependent."
tags: []
---

# Verdict

The explicit Gribov-copy constructions are correct within their stated Euclidean SU(2), Landau-gauge ansätze. They establish nontrivial Faddeev--Popov zero modes compatible with planar PEC/PMC conditions, including examples for which the zero mode, gauge-field (L^2)-norm, and Yang--Mills action are finite.

The boundary-symmetry claim must be split:

- For PEC plates, the multiplier-field shift is an off-shell local redundancy following from the covariant Bianchi identity.
- For PMC plates, the proposed transformation moves (A_mu) by a distribution supported on the plate. It is an infinitesimal regulated identity only after choosing a prescription with (delta(0)=0), or after adding the displayed boundary (b^2) counterterm. A smooth Gaussian replacement is not automatically harmless: its self-overlap diverges like (1/arepsilon).
- Neither construction proves a continuum Gribov--Zwanziger theory with boundaries, a global gauge slice, positivity of the remaining Faddeev--Popov spectrum, or a physical edge-mode phase space.

Reason codes: `T1-boundary`, `T1-symmetry`, `T2-model`.

# Source map

1. **Introduction.** Reviews the Gribov ambiguity and motivates PEC/PMC plates and auxiliary boundary fields.
2. **General setup.** Fixes three-dimensional Euclidean SU(2) Yang--Mills in Landau gauge, defines the Faddeev--Popov operator, its zero modes, finite-action and finite-(L^2) conditions, and the two plate boundary conditions.
3. **Cylindrical construction.** Uses a rotating color basis to construct PMC-compatible zero modes and transfers a center-vortex example.
4. **Spherical construction.** Uses a hedgehog gauge field, derives the PEC/PMC restrictions on its radial profile, solves a piecewise ODE numerically, and then localizes the profile to obtain finite-(L^2) copies for both boundary types.
5. **Emergent boundary gauge invariance.** Lifts PEC/PMC conditions with plate multiplier fields, derives separate local transformations, analyzes dimensional regularization versus a cutoff/counterterm, and discusses what survives bulk Faddeev--Popov gauge fixing.
6. **Conclusion.** Defers the actual boundary Gribov--Zwanziger construction.

# Theory, geometry, and conventions

## Bulk gauge theory

The copy construction is performed in three-dimensional Euclidean space with

\[
S_{\mathrm{YM}}=\frac14\int d^3x\,F_{ij}^aF_{ij}^a,
\qquad
F_{ij}^a=\partial_iA_j^a-\partial_jA_i^a+g\epsilon^{abc}A_i^bA_j^c,
\]

and Landau gauge (partial_iA_i^a=0). The Hermitian Faddeev--Popov operator is

\[
\mathcal M^{ab}=-\left(\delta^{ab}\partial^2-g\epsilon^{abc}A_i^c\partial_i\right).
\]

An infinitesimal zero mode satisfies (mathcal M^{ab}omega^b=0). Then

\[
\widehat A_i^a=A_i^a-left(\delta^{ab}\partial_i-g\epsilon^{abc}A_i^c\right)\omega^b
\]

also satisfies Landau gauge to the order used in the infinitesimal construction.

Two distinct falloff conditions are tracked:

\[
S_{\mathrm{YM}}[A]<\infty,
\qquad
\lVert A\rVert_2^2=\int d^3x\,A_i^aA_i^a<\infty.
\]

Finite action is enough for Euclidean weighting. Finite (L^2)-norm is the stronger condition entering the conventional definition of the Gribov region as local minima of the norm along gauge orbits.

## Plates and boundary conditions

The plates are at (z=\pm L/2) with normal (n_i=\delta_{i3}). In three dimensions the paper uses

\[
\text{PMC}:\quad F_{i3}^a\big|_{z=\pm L/2}=0,
\qquad
\text{PEC}:\quad F_{12}^a\big|_{z=\pm L/2}=0.
\]

These are homogeneous gauge-covariant conditions. Their vanishing is invariant under ordinary adjoint gauge transformations.

# Explicit Faddeev--Popov zero modes

## Cylindrical PMC family

Introduce the angle-dependent color basis

\[
T_1=\cos(k\varphi)\tau_1+\sin(k\varphi)\tau_2,
\quad
T_2=-\sin(k\varphi)\tau_1+\cos(k\varphi)\tau_2,
\quad
T_3=\tau_3,
\]

with integer (k). In orthonormal cylindrical components choose

\[
A_{\hat\rho}=A_{\hat z}=0,
\qquad
A_{\hat\varphi}=a(\rho)T_3,
\qquad
\omega=\sigma(\rho)T_1.
\]

The field is color-Abelian but the zero mode is not color-constant. The FP equation becomes

\[
\sigma''+\frac1\rho\sigma'-\frac{k^2}{\rho^2}\sigma
-\frac{gk}{\rho}a\sigma=0,
\]

so Henyey reconstruction gives

\[
a(\rho)=\frac{\rho}{gk}
\left(\frac{\sigma''}{\sigma}+\frac{\sigma'}{\rho\sigma}-\frac{k^2}{\rho^2}\right).
\]

For

\[
\sigma(\rho)=\frac{\rho^k}{1+\rho^{2k}},
\]

one obtains

\[
a(\rho)=-\frac{8k}{g}\frac{\rho^{2k-1}}{(1+\rho^{2k})^2},
\]

and

\[
F_{\hat\rho\hat\varphi}^3
=\frac1\rho\partial_\rho(\rho a)
=-\frac{16k^2}{g}
\frac{\rho^{2k-2}(1-\rho^{2k})}{(1+\rho^{2k})^3}.
\]

This satisfies PMC everywhere because (F_{i3}=0), but not PEC. The radial power counts give:

- (lVert A\rVert_2<\infty) for (k\ge1);
- (lVert\omega\rVert_2<\infty) for (k\ge2);
- (S_{\mathrm{YM}}<\infty) for (k\ge1).

Thus (k\ge2) supplies the simultaneous finite family. The zero mode places the configuration on a Faddeev--Popov horizon; it does not prove that every other eigenvalue is positive.

## Center-vortex transfer

For a thick center vortex with only

\[
A_\varphi^a=\frac1g\delta^{a3}\frac{\mu(\rho)}\rho,
\]

nonzero, (F_{13}=F_{23}=0), so the PMC condition is automatic. The paper imports the known center-vortex zero modes. This is a transfer of a cited construction, not an independent classification of boundary copies.

## Spherical hedgehog family

The second ansatz is

\[
A_i^a=\epsilon_{aij}x_jh(r),
\]

with zero mode

\[
\omega^a=(\sigma(r)\sin\varphi\sin\theta,
\sigma(r)\cos\varphi\sin\theta,0).
\]

Writing (psi=r\sigma), the FP equation becomes

\[
h(r)=\frac1{g\psi(r)}\left(\psi''+\frac4r\psi'\right).
\]

Both PEC and PMC constraints at the plates reduce to the same boundary value

\[
h(r)=\frac{2}{gr^2}
\quad\text{where a sphere intersects }z=\pm L/2.
\]

The paper first chooses a profile that approaches this value outside (r=L/2). The outer equation is

\[
\psi''+\frac4r\psi'-\frac2{r^2}\psi=0,
\]

with exponents

\[
p_\pm=\frac{-3\pm\sqrt{17}}2.
\]

Keeping the decaying branch makes the zero mode square-integrable and the action finite, but (A\sim r^{-1}) leaves (lVert A\rVert_2) divergent.

The stronger construction instead takes (h) smooth and supported in (r\le L/4). Outside,

\[
\psi''+\frac4r\psi'=0,
\qquad
\psi_{\mathrm{out}}=\frac b{r^3},
\]

so (omega\sim r^{-4}). Smooth matching supplies examples for which (omega), (A), and the action are all finite and both PEC and PMC conditions are trivial at the plates. This is an existence construction inside a radial ansatz, not completeness of the boundary Gribov problem.

# Boundary multiplier symmetry

## PEC: an off-shell Bianchi redundancy

In four dimensions the PEC condition is lifted with plate fields (b_i^{a,\pm}):

\[
S_{\mathrm{PEC}}=\frac14\int d^dx\,F_{\mu\nu}^aF_{\mu\nu}^a
+\int d^dx\,b_i^{a,\pm}n_\nu\widetilde F_{i\nu}^a\delta_\pm.
\]

Besides ordinary bulk gauge transformations, the action has

\[
\Delta b_i^{a,\pm}=D_i^{ab}\omega^{b,\pm},
\qquad
\Delta A_\mu^a=0.
\]

After tangential integration by parts, its variation is proportional to

\[
D_i(n_\nu\widetilde F_{i\nu}),
\]

which vanishes by the covariant Bianchi identity. This redundancy is independent of the bulk equations of motion. It survives ordinary gauge fixing and requires a separate boundary gauge fixing if the (b)-field formulation is retained.

## PMC: a regulator-dependent infinitesimal identity

For

\[
S_{\mathrm{PMC}}=\frac14\int d^dx\,F_{\mu\nu}^aF_{\mu\nu}^a
+\int d^dx\,b_i^{a,\pm}n_\nu F_{i\nu}^a\delta_\pm,
\]

the proposed transformation is

\[
\Delta b_i^{a,\pm}=D_i^{ab}\omega^{b,\pm},
\qquad
\Delta A_\mu^a=-n_\mu\omega^{a,\pm}\delta_\pm.
\]

At first order, the bulk equation-of-motion term cancels the variation from (Delta b). A remaining self-supported term contains (delta_\pm^2), represented as (delta(0)). The paper gives two branches:

1. dimensional regularization, with (delta(0)=0);
2. a cutoff prescription with the boundary counterterm

\[
S_{\mathrm{count}}=\frac{\delta(0)}2
\int_{\Sigma_\pm}d^{d-1}x\,b_i^{a,\pm}b_i^{a,\pm}.
\]

Its variation cancels the displayed (-\delta(0)\int b_iD_i\omega) term. The resulting statement is therefore a property of the regulated and renormalized action, not a regulator-free symmetry of arbitrary distributional fields.

For a normalized Gaussian plate profile

\[
\delta_\varepsilon(z)=\frac{e^{-z^2/\varepsilon^2}}{\sqrt\pi\,\varepsilon},
\]

one has

\[
\int_{-\infty}^{\infty}\delta_\varepsilon(z)^2dz
=\frac1{\sqrt{2\pi}\,\varepsilon}.
\]

Thus replacing (delta) by a smooth narrow Gaussian does affect the self-overlap and demands the same counterterm logic. The unqualified sentence that the smooth replacement leaves the conclusion unaffected is false without this qualification.

## Gauge-fixed PMC theory

Ordinary Faddeev--Popov gauge fixing breaks the PMC shift by plate terms involving (partial_z h) and (partial_z\bar c). The paper introduces boundary BRST doublets to impose their vanishing through a BRST-exact deformation. This supports invariance of gauge-invariant observables under the stated cohomological assumptions. The subsequent (alpha\to0) argument uses transformations proportional to (1/\alpha), so it should not be read as a uniform off-shell symmetry statement.

Adding a bulk Gribov--Zwanziger horizon term or Curci--Ferrari mass changes the (A)-equation without changing the plate multiplier variation. The PMC shift is then genuinely broken. The construction of a consistent combined bulk/boundary Gribov--Zwanziger restriction is explicitly future work.

# Translation into the vault's sewing language

The paper is useful because it separates three structures that should not be conflated:

1. **Physical transmission data:** PEC/PMC impose homogeneous conditions on curvature components at each plate.
2. **Bulk gauge saturation:** ordinary SU(2) gauge transformations act on (A) and the multiplier fields.
3. **Multiplier redundancy:** lifting a constraint with a tangential one-form (b_i) introduces an additional redundancy of the presentation.

The (b_i) fields are Lagrange multipliers for boundary curvature conditions. Nothing here proves that they are independent physical edge oscillators. For PEC the extra redundancy is intrinsic to the Bianchi identity. For PMC it mixes the multiplier with a singular normal shift of (A), so its admissible group, regulator, boundary functional space, and counterterm must be kept explicit.

This is not yet the spatial-region sewing quotient used elsewhere in the vault. The paper does not construct two regional solution spaces, a common interface moment map, an extension image of gauge transformations, or a reduced symplectic product. Its contribution is narrower: boundary constraints do not remove the Gribov problem, and the multiplier implementation carries an additional gauge-fixing layer.

# Verification ledger

## Checked:

- Mathematica reproduced the Henyey reconstruction of (a(\rho)) from (sigma(\rho)).
- Mathematica reproduced (F_{\hat\rho\hat\varphi}^3=\rho^{-1}\partial_\rho(\rho a)).
- Direct integrals at (k=2) confirm finite gauge-field norm, zero-mode norm, and action; the (k=1) zero-mode norm diverges.
- Mathematica reproduced the outer spherical exponents ((-3\pm\sqrt{17})/2).
- The printed inner series has residual (O(r^2)), exactly as claimed; the explicit residual coefficient is ((80c_1-161)r^2/10).
- The linear PMC equation-of-motion cancellation and the (b^2) counterterm cancellation are exact at the displayed algebraic level.
- The normalized Gaussian self-overlap is (1/(\sqrt{2\pi}\varepsilon)), so the thin-width limit is divergent.
- PDF pages 4 and 11--13 were rendered and visually checked after text extraction reported an embedded-font mismatch.

## Source-derived:

- The numerical shooting and matching shown in the two figure sets were read from the source and figures. No numerical data or solver code was included, so the plotted parameter values were not independently reproduced.
- The center-vortex zero modes are imported from cited literature.
- The BRST-doublet/cohomology argument follows the source under its regularization and boundary assumptions.

## Failed:

- The statement that the plate delta distribution may simply be replaced by a narrow Gaussian “without affecting the final conclusion” is false without an accompanying counterterm or subtraction: the Gaussian self-product diverges as (1/\varepsilon).

## Blocked:

- Full positivity of the Faddeev--Popov operator away from the exhibited zero eigenvalue is not supplied and was not reconstructed.
- The numerical spherical matching cannot be replayed exactly because the source contains plots but no coefficients (b,c_i), grids, tolerances, or solver notebook.
- A renormalized all-orders boundary Slavnov--Taylor identity and combined bulk/boundary Gribov--Zwanziger construction are absent; these are future-work claims.
- The existence of a global boundary gauge group on a specified Sobolev or distributional field space is not proved.

# What this paper actually establishes

**Established:** explicit ansatz-level FP zero modes with PEC/PMC plates; finite-action and finite-(L^2) examples; an exact PEC multiplier redundancy; a PMC first-variation cancellation under a stated regulator/counterterm prescription.

**Not established:** every orbit meeting a boundary Gribov region, positivity or uniqueness of a gauge representative, gauge-fixing independence, a continuum boundary quotient, a physical edge-mode theory, or a nonperturbative Casimir calculation.

Daily package: [[2026_09_01_overview]].
