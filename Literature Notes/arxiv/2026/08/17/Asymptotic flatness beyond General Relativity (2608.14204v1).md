---
paper id: 2608.14204v1
title: Asymptotic flatness beyond General Relativity
authors:
  - David Maibach
publication date: 2026-08-14T11:22
abstract: |-
  The paper integrates the Bondi--Sachs radial hierarchy with a general stress tensor, proposes componentwise falloff conditions compatible with a smooth asymptotically flat expansion, and applies them to second-order scalar--vector--tensor gravity. It derives a ledger of conditions on the coupling functions at the asymptotic vacuum, supplements the metric analysis with matter equations of motion and stability signs, and argues that the surviving phase space has the standard BMS diffeomorphisms together with large U(1) gauge transformations.
comments: "Official abstract says 34 pages and no figures; the official v1 PDF retrieved on 2026-08-17 has 54 pages"
url: https://arxiv.org/abs/2608.14204v1
summary: "A useful Bondi--Sachs stress-tensor framework and SVT screening proposal whose advertised all-operator theorem is not established by the current component audit because tetrad peeling orders are applied as uniform Bondi-coordinate component orders."
tags: []
---

# Direct verdict and claim tier

Not proven by the current derivation; the evidence only shows: the general Bondi--Sachs radial integration gives a useful **conditional** stress-tensor falloff ledger, the minimally coupled scalar and Maxwell examples reproduce the expected leading flux laws, and the Brans--Dicke conformal-frame example correctly displays a non-minimal-coupling subtlety. The stronger claim that every operator in the full scalar--vector--tensor (SVT) action has been checked component by component and that the entire stated admissible class therefore has the standard BMS phase space is not established.

The blocking defect is precise. The source identifies the peeling statement that physical/tetrad curvature components are (O(r^{-1})) with a uniform estimate for covariant Bondi-coordinate components,

\[
R_{\mu\nu\alpha\beta},\ G_{\mu\nu},\ L^{\mu\nu\alpha\beta}=O(r^{-1}),
\]

and later uses (L_{\mu\nu\alpha\beta}\le O(r^{-1})) in the (L_4) and (L_5) component ledgers. This is false as a coordinate-component statement. For the linearized radiative Bondi metric

\[
g_{xx}=r^2+\varepsilon r c(u),
\qquad
g_{yy}=r^2-\varepsilon r c(u),
\]

an independent direct curvature calculation gives

\[
R_{uxux}=-\frac{\varepsilon r}{2}\,\ddot c(u)+O(\varepsilon^2),
\]

which is (O(r)), not (O(r^{-1})). The associated orthonormal angular component is (O(r^{-1})), exactly as peeling requires. The missing angular frame factors matter when such curvature is contracted with field strengths and Hessians. The final SVT allowance table may contain correct entries, but the printed uniform estimate and the scans that invoke it do not prove them.

Two further localized inconsistencies were found:

1. For (Phi=\phi_0+\phi_1(u,x^A)/r+\phi_2(u,x^A)/r^2+\cdots), the source repeatedly states (\Box\Phi=2\phi_1/r^3+\cdots). Direct computation instead gives
   \[
   \Box\Phi=\frac{2\partial_u\phi_2+D^2\phi_1}{r^3}+O(r^{-4}),
   \]
   which the paper itself later writes correctly in its equation-of-motion section. The wrong coefficient does not change the quoted (O(r^{-3})) power counting, but it invalidates several displayed coefficient-level (L_5) formulas.
2. Section 4 defines (f^A=-\lim_{r\to\infty}\xi^A) and then writes the BMS vector with (+f^A\partial_A). One of these signs must be changed. The standard convention is (Y^A=\lim\xi^A).

Claim tier: classical asymptotic analysis and a proposed screening ledger. This is not yet a covariant-phase-space construction, charge theorem, memory theorem, or quantum result.

# How to read this long paper

- Essential route: Sections 2--4 for the general Bondi hierarchy, the SVT screening ledger and the conditional BMS conclusion. Read the coordinate-versus-tetrad curvature failure below before reusing any \(L_4\) or \(L_5\) entry.
- Technical-reference route: Appendices C--F for stress tensors, power-counting tables and scalar/vector equations. These appendices supply the source chain but inherit the same curvature-component issue.
- Optional background: Section 1 and the minimally coupled scalar/Maxwell appendices. They are useful calibrations and do not establish the general SVT theorem.

# Why this paper is still useful

The failure of the all-operator proof does not erase the paper's useful organizing structure:

- it asks which covariant stress components obstruct each radial Bondi equation rather than imposing a single undifferentiated (T_{ab}=O(r^{-2})) rule;
- it separates metric closure, matter-equation consistency and vacuum stability;
- it records the Jordan/Einstein-frame distinction for radiating non-minimal scalars;
- it makes explicit which results are intended as inputs for a future Wald--Zoupas analysis.

For the vault's CPS projects, the right use is as a **derivation checklist**, not as an established theorem about the complete SVT class.

# Source map

## Section 1 — Motivation

The target is an infrared diagnostic for beyond-GR theories: first determine whether a smooth Bondi expansion closes, then derive BMS charges and memory in later work. The selected theory class is the gauge-invariant scalar--vector--tensor action with second-order field equations.

## Section 2 — General stress tensor in Bondi--Sachs gauge

The metric is

\[
ds^2=-\frac Vr e^{2\beta}du^2-2e^{2\beta}du\,dr
+r^2h_{AB}(dx^A-U^Adu)(dx^B-U^Bdu),
\]

with (\det h=\det q) and smooth inverse-(r) expansions. The hierarchy is integrated in the order (\beta\), (U^A\), (V\), trace-free (h_{AB}), and finally the supplementary mass- and angular-momentum-aspect equations.

The proposed slowest covariant falloffs are

\[
T_{rr}=O(r^{-3}),\quad T_{rA}=O(r^{-2}),\quad T_{ur}=O(r^{-3}),
\]
\[
T_{uu}=O(r^{-2}),\quad T_{uA}=O(r^{-2}),\quad
(T_{AB})^{\mathrm{TF}}=O(r^{-1}).
\]

The angular trace may be (O(1)). Smoothness without logarithms imposes relations among leading coefficients, including

\[
D^B T_{AB}^{(1)}=-8\pi T_{rA}^{(3)},
\qquad
2T_{ur}^{(3)}=(2+D^2)T_{rr}^{(3)}+2D_AT_r^{(2)A}.
\]

These are not generic conservation identities: they are log-removal conditions within the assumed pure (1/r) ansatz.

The local mass-aspect balance is written schematically as

\[
2\partial_uM
=D_AD_BN^{AB}-N_{AB}N^{AB}-8\pi T_{uu}^{(2)}
+\text{total-derivative matter terms}.
\]

The (T_{rr}^{(3)}) contribution is Schott-like: its sphere integral is a retarded-time derivative and shifts the identification of the Bondi mass rather than furnishing manifestly positive flux.

## Brans--Dicke specialization

The Jordan-frame effective source has slower (u)-components generated by

\[
\nabla_\mu\nabla_\nu\Phi-g_{\mu\nu}\Box\Phi.
\]

For (\phi_0>0) and (2\omega+3>0), the conformal metric

\[
\widetilde g_{\mu\nu}=\frac{\Phi}{\phi_0}g_{\mu\nu}
\]

has the standard leading Bondi falloffs. The paper's frame equivalence here is classical and vacuum-asymptotic. It does not show equality of Wald--Zoupas potentials, corner terms or quantum observables between frames.

## Section 3 — SVT action and proposed constraint ledger

The action is decomposed into (L_2+L_3+L_4+L_5), with coupling functions of

\[
(\Phi,X,Y,F,\widetilde F),
\qquad
X=-\frac12\nabla_a\Phi\nabla^a\Phi.
\]

At an asymptotic vacuum ((\phi_0,0,0,0,0)), the radiative ansatz gives the weights

\[
\Phi-\phi_0=O(r^{-1}),\quad X=O(r^{-3}),\quad
F,\widetilde F=O(r^{-4}),\quad Y=O(r^{-6}).
\]

For analytic couplings, the paper proposes

\[
G_4(\phi_0,0)\ne0,
\qquad
G_2|_0=G_{2,\Phi}|_0=G_{2,\Phi\Phi}|_0=0,
\]

while (G_3,G_5,\widehat G_3,\mathring{\widehat G}_3,
\widehat G_4,\mathring{\widehat G}_4) have unrestricted finite vacuum values. Scalar-EOM consistency then adds

\[
G_{2,\Phi\Phi\Phi}|_0=0,
\]

because a cubic potential produces an unmatched (r^{-2}) scalar source. Stability is summarized by

\[
G_4|_0>0,
\qquad G_{2,X}|_0>0,
\qquad G_{2,F}|_0>0.
\]

These sign conditions assume that these individual coefficients diagonalize and normalize the asymptotic kinetic matrix. In a general mixed SVT vacuum, positivity of three diagonal entries alone is not a proof that the full kinetic matrix is positive or that all characteristic speeds are real; the source does not diagonalize the complete quadratic action.

## Non-minimal (G_4) coupling

For a radiating scalar with (G_{4,\Phi}(\phi_0)\ne0), the effective Jordan-frame source has

\[
\left[\frac{T^{\mathrm{eff}}}{G_4}\right]_{uu}
=\frac{G_{4,\Phi}}{G_4}\frac{\ddot\phi_1}{r}+O(r^{-2}),
\]

and analogous slow (uA) and (ur) terms. If (G_4=G_4(\Phi)), a conformal Einstein-frame metric removes the improvement Hessian. If (G_4) genuinely depends on (X), no ordinary conformal transformation reaches Einstein gravity.

The paper then says a mass-aspect redefinition is enough for the (X)-dependent case. This should be weakened: a mass-aspect redefinition can absorb total-(u)-derivative balance terms, but it does not by itself prove that all metric coefficients satisfy the standard Bondi gauge/falloff conditions. Section 4 in fact concedes that (\beta_{(1)}\ne0) would require an enlarged phase space, then invokes the Einstein frame even though the preceding section says that frame is unavailable for genuine (X)-dependence. The derivative-coupled (G_4(\Phi,X)) case therefore remains unresolved in the printed argument.

## Singular power-law couplings

For a coupling (G\sim Z^p) near the vacuum, the paper defines a background growth exponent and compares every stress component against the proposed ledger. Metric falloffs alone allegedly permit (G_5=O(r)), while the scalar equation closes that window to (G_5=O(1)). Vector mixings retain positive growth allowances.

These allowances inherit the same component-counting problem as the analytic ledger. They are proposed targets until the coordinate/tetrad conversion is redone operator by operator.

## Section 4 — BMS vectors

Once the standard Bondi metric phase space is assumed, the usual equations yield

\[
\partial_uY^A=0,
\qquad
D_AY_B+D_BY_A=q_{AB}D_CY^C,
\qquad
f=\alpha(x^A)+\frac u2D_AY^A.
\]

The scalar boundary datum transforms within

\[
\Phi=\phi_0+\frac{\phi_1(u,x^A)}r+O(r^{-2}),
\]

and the vector boundary datum transforms within its radiative falloff up to a compensating (U(1)) gauge transformation. This establishes a kinematic action of BMS only after the Bondi phase space has been justified. It does not derive surface charges, integrability or the charge algebra.

## Appendices

- Appendix A repeats the hierarchy for a minimally coupled massless scalar.
- Appendix B does the same for source-free Maxwell theory.
- Appendix C lists long stress-tensor variations for the SVT sectors.
- Appendix D presents power-counting tables for the operator components.
- The final appendices give the scalar/vector Euler--Lagrange equations and an all-derivatives growth argument.

# Global notation and equation ledger

| object | meaning and convention |
|---|---|
| \(u,r,x^A\) | retarded time, areal radius and unit-sphere coordinates |
| \(q_{AB},D_A\) | unit-sphere metric and compatible derivative |
| \(h_{AB},C_{AB},N_{AB}\) | angular metric, trace-free shear and news \(N_{AB}=\partial_uC_{AB}\) |
| \(\beta,U^A,V,M\) | Bondi--Sachs radial fields and mass aspect |
| \(\Phi=\phi_0+\phi_1/r+\cdots\) | scalar expansion about the constant asymptotic vacuum |
| \(X,Y,F,\widetilde F\) | scalar kinetic and scalar--vector invariants used by the SVT couplings |
| \(G_i,\widehat G_i,\mathring{\widehat G}_i\) | scalar--tensor and vector--tensor coupling functions evaluated at the vacuum when marked by \(|_0\) |
| \(Y^A,\alpha\) | sphere conformal Killing vector and supertranslation datum in the BMS generator |

The source dependency chain is:

1. The Bondi ansatz plus the radial Einstein equations gives the componentwise stress falloffs and log-removal relations.
2. The radiative weights of \(\Phi,X,Y,F,\widetilde F\) are inserted into each \(L_2\)--\(L_5\) stress tensor to produce the master coupling table.
3. Scalar and vector equations add the cubic-potential restriction and remove some singular-coupling windows; the printed proof fails at step 2 wherever tetrad peeling is used as a coordinate-component bound.
4. Only after standard Bondi closure is assumed does the residual-diffeomorphism calculation produce BMS kinematics. A future Wald--Zoupas calculation would still be required for charges, flux and algebra.

# Independent checks

## 1. Radiative coordinate curvature — failed source claim

Using the local angular-plane Bondi metric

\[
g_{uu}=-1,quad g_{ur}=-1,quad
g_{xx}=r^2+\varepsilon r c(u),quad
g_{yy}=r^2-\varepsilon r c(u),
\]

Mathematica constructed the Christoffel symbols and Riemann tensor directly. To first order in (\varepsilon),

\[
R_{uxux}=-\frac12\varepsilon r\,c''(u).
\]

Checked: the source's uniform (R_{\mu\nu\alpha\beta}=O(r^{-1})) statement is incorrect for Bondi coordinate components.

Assumptions: local angular chart, linearized trace-free shear, flat leading Bondi metric, generic (c''(u)\ne0).

Not verified: a corrected full SVT component ledger with every angular frame factor restored.

## 2. Scalar wave operator — corrected coefficient

For

\[
\Phi=\frac{\phi_1(u,x,y)}r+\frac{\phi_2(u,x,y)}{r^2},
\]

direct evaluation of (\Box\Phi=(\sqrt{-g})^{-1}\partial_a(\sqrt{-g}g^{ab}\partial_b\Phi)) on the leading retarded metric returned

\[
\Box\Phi=
\frac{\partial_x^2\phi_1+\partial_y^2\phi_1+2\partial_u\phi_2}{r^3}
+O(r^{-4}).
\]

Checked: the (O(r^{-3})) order used in the paper is correct.

Assumptions: smooth pure (1/r) expansion; the local planar Laplacian becomes the unit-sphere (D^2) in the global Bondi chart.

Not verified: the paper's displayed coefficient (2\phi_1), which is contradicted by this computation and by the paper's later formula.

## 3. PDF and source audit

The official abstract, versioned PDF and TeX source were retrieved. The PDF reports 54 pages, despite the official abstract comments saying 34 pages. Pages 1, 29 and 49 were rendered and visually inspected; equations, the master table discussion and the (L_5) appendix are legible and agree with the extracted source at the inspected locations.

## Evidence ledger

Checked: the radiative Bondi curvature component, the scalar wave-operator coefficient and the inspected source/PDF locations.

Failed: the uniform coordinate-component curvature estimate and the displayed coefficient-level scalar formula.

Blocked: certification of the full SVT allowance table until the tetrad-to-coordinate conversion is redone operator by operator.

Not independently verified: the unrecomputed stress tensors, complete mixed kinetic matrix and any future Wald--Zoupas charge construction.

# Relevance to current projects

## Direct transfer

- The decomposition between falloff closure, balance-law redefinitions and genuine flux is directly useful for the vault's Brown--Henneaux and moving-boundary CPS work.
- The warning that a non-minimal frame transformation may change the identification of asymptotic data should be carried into any proposed equivalence of charges.
- The stress-component ledger is a good checklist for future matter-coupled gluing calculations, provided every entry is independently rederived.

## Boundary to preserve

- No Wald--Zoupas potential, symplectic flux, corner ambiguity or charge bracket is computed here.
- BMS kinematics do not imply existence, finiteness or integrability of charges.
- A total derivative in a mass-loss equation is not automatically a removable local phase-space term.
- Stability of the full SVT kinetic system is not established by three isolated sign conditions.
- The full all-operator SVT theorem must remain unverified until the coordinate-component power counting is repaired.

# Bottom line

Use the paper as a structured hypothesis generator for Bondi matter falloffs and as a detailed source for the general-stress hierarchy. Do not cite its master SVT constraint table or its “entire admissible SVT class has BMS” conclusion as established. The next technically meaningful step would be a corrected tetrad-to-coordinate component scan, beginning with the (L_4) double-dual-Riemann and (L_5) curvature--Hessian sectors, followed by a separate covariant-phase-space analysis of frame changes and boundary terms.
