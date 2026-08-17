---
paper id: 2608.14133v1
title: "A groupoidal approach to quantum reference frames"
authors:
  - Samuel Fedida
  - Alberto Ibort
  - Arnau Mas-Dorca
publication date: 2026-08-14
abstract: |-
  A continuous-groupoid version of operational quantum reference frames is developed. It gives a fiberwise relativization map, canonical sharp frames, localization limits, curved-spacetime relational fields based on the Poincare groupoid, and a preliminary Atiyah-groupoid extension to internal gauge symmetry.
comments: "78 pages, 7 figures; groupoid QRF construction and relational QFT"
url: https://arxiv.org/abs/2608.14133v1
summary: "A rigorous bounded-operator kinematical extension of QRF relativization to groupoids, with curved-spacetime and gauge applications whose dynamics and unbounded fields remain open."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: the system is a measurable Hilbert field over the base of a second-countable continuous groupoid; the frame is a principal, fiberwise ultraweakly continuous, normalized covariant POVM field; system observables are essentially bounded decomposable operator fields; and the source marginal is absolutely continuous with respect to the chosen base measure in the paper's null-set sense. Under these hypotheses, the groupoid relativization map is a normal unital completely positive map into the invariant joint algebra. It is a normal \(*\)-homomorphism for a sharp frame, and the stated localization and injectivity results require metrizability, identity arrows in the POVM supports, and ultraweak continuity of the operator field.

The statement should be rewritten as: the Poincare groupoid is a natural **kinematical** replacement for a global Poincare symmetry group on a generic curved spacetime. The paper does not prove that this is the unique physical replacement, nor does it construct interacting curved-spacetime QFT, quantum gravity or Yang--Mills dynamics. Its full groupoid contains every oriented, time-oriented tangent-space isometry; a connection, causal propagation or dynamics may instead select a holonomy or path subgroupoid.

# Groupoid quantum reference frames

For a continuous groupoid \(\Gamma\rightrightarrows M\), a principal QRF consists of a Hilbert field \(\mathcal H_{\mathcal R}^x\), a fiberwise unitary representation \(U_\alpha\), and normalized POVMs

\[
E_{\mathcal R}^x:\operatorname{Bor}(\Gamma^x)
\longrightarrow \mathcal E(\mathcal H_{\mathcal R}^x)
\]

obeying left-translation covariance,

\[
U_\alpha E_{\mathcal R}^{s(\alpha)}(\Delta)U_\alpha^\dagger
=E_{\mathcal R}^{t(\alpha)}(L_\alpha\Delta).
\]

The source marginal is

\[
F_{\mathcal R,s}^x(N)
=E_{\mathcal R}^x\bigl(s^{-1}(N)\cap\Gamma^x\bigr).
\]

The condition \(F_{\mathcal R,s}^x\ll\mu\) removes dependence on representatives of \(\mu\)-almost-everywhere operator fields. Here \(\ll\) means null-set continuity. The paper separately defines the stronger operator-norm condition

\[
\lVert E(\Delta)\rVert\le c\,\mu(\Delta),
\]

and correctly proves that this stronger condition is incompatible with the norm-one localization property for non-atomic \(\mu\). Thus the canonical position-like PVM is \(\mu\)-continuous but does not admit a uniform operator-norm-bounded density; there is no contradiction between its sharpness and admissibility.

# Relativization theorem

For a system representation \(V\) and bounded decomposable field \(A=(A_x)\), the joint relativization map is

\[
\mathcal E^{\mathcal R}(A)_x
=\int_{\Gamma^x}
\bigl(V_\beta A_{s(\beta)}V_\beta^\dagger\bigr)
\otimes dE_{\mathcal R}^x(\beta).
\]

Restricting the frame to a normal state field \(\omega\) replaces the POVM by its Born measure. The theorem establishes linearity, normality, unitality, complete positivity, contractivity and groupoid invariance. Sharpness makes the orthogonal POVM sectors multiplicative, hence turns the map into a normal \(*\)-homomorphism.

If a localizable frame admits states whose Born measures converge weakly to \(\delta_{1_x}\), then for an ultraweakly continuous field

\[
\mathcal E^{\mathcal R}_{\omega_n}(A)_x
\xrightarrow[n\to\infty]{\mathrm{uw}} A_x.
\]

This is an operational sharp-frame limit. It does not make the reference frame classical dynamically, and it does not show norm convergence or convergence for arbitrary measurable fields.

# Canonical frame and reductions

Given a continuous Haar system \(\nu^x\), the canonical frame is

\[
\mathcal H_{\mathcal R,\mathrm{can}}^x=L^2(\Gamma^x,\nu^x),
\]

with the left regular representation and multiplication PVM \(M_{\mathbf 1_\Delta}\). With source compatibility between the Haar system and the base measure, it is principal, sharp, localizable and admissible. The resulting relativization embeds the bounded decomposable system algebra as a von Neumann subalgebra of the invariant joint algebra.

The reduction checks have a narrow scope:

- A one-object groupoid gives the usual group QRF.
- An action-groupoid QRF reduces to a torsor QRF only for the specified constant family of frame POVMs.
- Torsor relativization is recovered only for constant system-operator fields.
- In flat spacetime, the canonical Poincare-groupoid frame becomes the ideal \(L^2(\mathrm{Poin})\) frame.

These qualifications matter: the groupoid construction is genuinely broader than ordinary group relativization, but the familiar torsor formula is not recovered for arbitrary fields.

# Curved spacetime and gauge extension

For an oriented, time-oriented Lorentzian spacetime, the Poincare groupoid is the gauge groupoid of its orthonormal-frame bundle. An arrow compares two tangent frames by a linear isometry. The construction does not use a Levi--Civita connection and therefore does not identify an arrow with parallel transport along a physical path.

Relational bounded fields are transported along these arrows and averaged against frame statistics. Disintegration produces local or semilocal kernels only as almost-everywhere representatives. The causality propositions are conditional implications from stipulated microcausality assumptions; they do not construct a nontrivial causal interacting example on a generic curved background.

The Atiyah-groupoid extension likewise covers bounded operator fields transforming by unitary conjugation. A gauge potential transforms affinely and is not included. Spin structures, projective representations, connections, path ordering, holonomy constraints and Yang--Mills equations remain outside the construction.

# Independent verification

## Checked

- Mathematica checked a finite pair-groupoid model with two base points and canonical sharp PVMs. The relativization map was unital and multiplicative with identically zero matrix residuals.
- In the same model, restricting the frame to the basis state at the identity arrow returned the appropriate system fiber \(A_x\) with zero residual at both base points.
- The distinction between null-set \(\mu\)-continuity and the paper's stronger operator-norm absolute continuity was checked directly against the canonical multiplication PVM.
- The complete official TeX source and 78-page PDF were read. Rendered pages 1, 25, 39, 52, 67 and 76 visually confirm the abstract, marginal/disintegration formulas, flat-space construction, curved-to-flat reduction and representative appendix proofs.

## Assumptions

- Second-countability and the stated continuous/Lie groupoid and Haar-system hypotheses.
- A quasi-invariant base measure and source compatibility where used.
- Separable continuous Hilbert fields, honest rather than projective unitary representations, and measurable normalized POVM fields.
- Essentially bounded decomposable system fields; ultraweak continuity for the localization and injectivity statements.

## Not independently verified

- Every measure-theoretic lemma in the appendices, including all joint-measurability choices in the global localization sequence.
- The cited imprimitivity, dilation and operator-valued integration theorems from their primary sources.
- Any unbounded-field, interacting, dynamical, spinorial, boundary/edge-mode or gauge-connection extension.
- Nontrivial causal curved-spacetime examples or a uniqueness theorem selecting the full Poincare groupoid over a dynamical subgroupoid.

# Relevance to the vault

The paper is useful operator-algebraic background for relational observables and for distinguishing a fiberwise covariance construction from a physical gauge reduction. It does not yet supply the covariant phase-space data needed in the vault: no presymplectic potential, boundary flux, moment map, surface charge, edge-mode symplectic form or gluing theorem is derived. Its Atiyah-groupoid extension should therefore not be conflated with the vault's gravitational boundary gluing program.

# Bottom line

Use the main theorem as a conditional bounded-operator kinematical relativization result. Cite the canonical frame as an existence and consistency construction, not as a physically prepared frame. Any transfer to curved-spacetime QFT, gauge theory or gravity must add unbounded operator domains, dynamics, connection/holonomy data, causal control and boundary degrees of freedom.
