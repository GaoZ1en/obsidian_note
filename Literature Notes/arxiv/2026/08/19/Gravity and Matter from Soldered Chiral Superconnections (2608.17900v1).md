---
paper id: 2608.17900v1
title: Gravity and Matter from Soldered Chiral Superconnections
authors:
  - P. D. Alvarez
  - J. T. Hartwig
  - A. Sharma
publication date: 2026-08-18T15:33
abstract: |-
  The paper separates a doubled chiral orthosymplectic gauge superconnection from an independent Clifford-valued coframe. Exterior powers of the coframe generate Plebanski two-forms and gravitational invariants whose chiral weights recover Einstein--Cartan--Holst gravity. The original odd one-forms have only algebraic equations; a separately added spinorial BF-type term becomes a Weyl kinetic term after a soldering ansatz. The ansatz defines a reduced spin-1/2 theory and is not generically a consistent truncation.
comments: "69 pages"
url: https://arxiv.org/abs/2608.17900v1
summary: "A useful first-order algebraic construction with an honest reduced-theory boundary, but its fermionic projector formulas contain a localized Clifford-sign inconsistency."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: use a nondegenerate coframe; keep the left/right duality, orientation, invariant-pairing and Immirzi conventions fixed; treat \(\langle F\wedge F\rangle\) as one complete Chern--Weil invariant; and interpret the matter ansatz as defining a reduced field space rather than a generic consistent truncation.

The bosonic construction then reproduces Einstein--Cartan--Holst gravity with a cosmological term by assigning different weights to the two chiral sectors. The original superconnection invariants do **not** propagate the odd one-forms. Propagating spin-\(1/2\) dynamics appears only after adding a new spinorial BF-type invariant and imposing composite one- and two-form ansätze.

One convention defect must be repaired before reusing the residual-supersymmetry formulas. With the paper's mostly-plus metric and Pauli matrices, equation (A.1) implies
\[
\{\gamma_a,\gamma_b\}=-2\eta_{ab},
\]
but equation (C.20) states the opposite sign, and equation (7.2) uses projectors appropriate to the opposite sign. In the stated Appendix A convention the gamma-trace projector must carry an extra minus sign. This is a localized but real algebraic failure; it does not affect the wedge-based Plebanski identities, whose symmetric Clifford part drops out.

# How to read this long paper

## Essential route

1. Introduction for the separation between connection and soldering form.
2. Sections 3.2--3.4 for \(\slashed e^2\), the Plebanski sectors and Lorentz covariance.
3. Sections 4.2--5.1 for the three invariants and the chiral weights that recover Einstein--Cartan--Holst gravity.
4. Section 5.3 for the decisive result that the unrestricted odd one-forms are algebraic and generically vanish.
5. Section 6.1 for the added spinorial BF term and its Weyl reduction.
6. Section 7.3 for the distinction between reduced equations and a consistent truncation.

## Technical-reference route

- Appendix A for signature, spinor and duality conventions.
- Appendix B for explicit Plebanski identities.
- Appendix C for the \(6\times6\) graded representation and the failure of the vector Clifford span to close under one odd transformation.
- Appendix D for the three-coframe identity producing the Hodge-dual coframe.
- Appendix E for the field-space pullback of the vector-spinor variation.

## Optional background

The extended comparisons with MacDowell--Mansouri, unconventional supersymmetry and the flat graded-module closure are useful context but not needed to extract the gravitational action or reduced Weyl system.

# Complete source map

- **Section 1:** motivates keeping the coframe outside the gauge superconnection.
- **Section 2:** defines \(\mathfrak{osp}(1|2)_L\oplus\mathfrak{osp}(1|2)_R\), its connection and supercurvature.
- **Section 3:** constructs \(\slashed e=e^a\gamma_a\), its exterior algebra, Hodge behavior and Lorentz covariance.
- **Section 4:** lifts \(\slashed e\) to the graded representation and evaluates \(\langle\slashed e^4\rangle\), \(\langle\slashed e^2F\rangle\) and \(\langle F^2\rangle\).
- **Section 5:** combines the invariants, derives the Einstein--Cartan--Holst weights and varies the unrestricted bosonic and vector-spinor fields.
- **Section 6:** imposes composite matter ansätze, adds the spinorial BF invariant and derives the reduced Dirac-type system.
- **Section 7:** separates Lorentz equivariance, residual supersymmetry, background invariance and dynamical truncation.
- **Section 8:** summarizes the construction and proposes a super-coframe and non-topological Hodge-dual extensions.
- **Appendix A:** conventions.
- **Appendix B:** chiral Plebanski two-forms.
- **Appendix C:** explicit graded matrices, induced odd maps and closure.
- **Appendix D:** three-coframe Clifford identity.
- **Appendix E:** matter-ansatz subspace and tangent variation.

# Algebra and independent soldering form

The gauge algebra is
\[
\mathfrak g=\mathfrak{osp}(1|2)_L\oplus\mathfrak{osp}(1|2)_R.
\]
Each chiral connection has an even spin connection and an odd spinor-valued one-form:
\[
A_L=\frac12\omega_L^{ab}J^L_{ab}+\Psi_L^\alpha Q_\alpha,
\qquad
A_R=\frac12\omega_R^{ab}J^R_{ab}+\Psi_{R\dot\alpha}\bar Q^{\dot\alpha}.
\]
The frame is deliberately not a translation or AdS-boost component. It is introduced as the tensorial one-form
\[
\slashed e=e^a\gamma_a,
\qquad
\slashed e\longmapsto S^{-1}\slashed eS.
\]
This makes the conceptual split clear: \(\omega\) transports internal frames, while \(e\) solders the Lorentz vector bundle to spacetime.

The even supercurvatures are
\[
\mathcal F_L^{ab}=R_L^{ab}-(\Sigma^{ab})_{\alpha\beta}
\Psi_L^\alpha\wedge\Psi_L^\beta,
\]
and its dotted right-handed analogue, while
\[
\rho_L=D_L\Psi_L,
\qquad
\rho_R=D_R\Psi_R.
\]

# Exterior Clifford algebra and Plebanski forms

Because the wedge antisymmetrizes the frame indices,
\[
\slashed e^{\wedge p}
=e^{a_1}\wedge\cdots\wedge e^{a_p}\gamma_{a_1\cdots a_p}.
\]
Odd powers exchange chirality and even powers preserve it. In particular,
\[
\slashed e\wedge\slashed e
=-2e^a\wedge e^b
\begin{pmatrix}\Sigma_{ab}&0\\0&\bar\Sigma_{ab}\end{pmatrix}.
\]
The chiral two-forms are
\[
B^i=\frac12\epsilon^i{}_{jk}e^j\wedge e^k+i e^0\wedge e^i,
\qquad
\bar B^i=\frac12\epsilon^i{}_{jk}e^j\wedge e^k-i e^0\wedge e^i,
\]
with the paper's labels
\[
*B^i=-iB^i,
\qquad
*\bar B^i=+i\bar B^i.
\]
They satisfy simplicity automatically because both come from one coframe:
\[
B^i\wedge B^j=2i\delta^{ij}\operatorname{vol}_e,
\quad
\bar B^i\wedge\bar B^j=-2i\delta^{ij}\operatorname{vol}_e,
\quad
B^i\wedge\bar B^j=0.
\]
Thus this is reduced Plebanski gravity: there is no independent \(B\) field and no simplicity multiplier.

# Three invariant four-forms

The basic invariants are
\[
\langle\slashed e^4\rangle,
\qquad
\langle\slashed e^2\wedge F\rangle,
\qquad
\langle F\wedge F\rangle.
\]
Their roles are:

- \(\langle\slashed e^4\rangle\): volume/cosmological term in one chiral sector; the equal-weight left--right sum cancels.
- \(\langle\slashed e^2F\rangle\): Plebanski \(B\wedge F\), containing the Einstein or Holst contraction depending on relative weights.
- \(\langle F^2\rangle\): one super-Chern--Weil density. Its curvature-square and \(\rho\wedge\rho\) components must not be varied as independent bulk terms.

The action is
\[
S=\int_M\left[
\lambda_4\langle\slashed e^4\rangle
+\lambda_2\langle\slashed e^2F\rangle
+\lambda_0\langle FF\rangle
\right].
\]

# Chiral weights and Einstein--Cartan--Holst gravity

In the source conventions,
\[
\langle\slashed e^2F\rangle_L
+\langle\slashed e^2F\rangle_R
=2e^a\wedge e^b\wedge R_{ab}
\]
is the Holst contraction, whereas
\[
\langle\slashed e^2F\rangle_L
-\langle\slashed e^2F\rangle_R
=i\epsilon_{abcd}e^a\wedge e^b\wedge R^{cd}
\]
produces Einstein--Cartan. The required weights are
\[
\lambda_2^L=\frac{1}{32\pi G}\left(\frac1\gamma-i\right),
\qquad
\lambda_2^R=\frac{1}{32\pi G}\left(\frac1\gamma+i\right),
\]
with opposite cosmological weights and
\[
\frac{\lambda_4^L}{\lambda_2^L}=\frac\Lambda{24}
\]
in the pure chiral normalization.

The resulting bosonic action is
\[
S_{\rm ECH}=\frac1{32\pi G}\int
\left[
\epsilon_{abcd}e^a e^b R^{cd}
+\frac2\gamma e^a e^bR_{ab}
-\frac\Lambda6\epsilon_{abcd}e^ae^be^ce^d
\right].
\]
For nondegenerate \(e\) and \(\gamma^2\ne-1\), the connection equation gives \(T^a=0\); the Holst contribution then drops from the local vacuum Einstein equation. At \(\gamma=\pm i\), only one chiral compatibility equation remains.

# Why the original odd one-forms do not propagate

The derivative-looking \(\rho\wedge\rho\) term belongs to the complete Chern--Weil density, whose variation is a boundary term by \(DF=0\). The only local odd-field equation therefore comes from \(\langle\slashed e^2F\rangle\):
\[
\lambda_2^L e^a\wedge e^b
(\Sigma_{ab})_{\alpha\beta}\Psi_L^\beta=0,
\]
with a dotted analogue. For an invertible frame this reduces to an algebraic Clifford kernel and forces the active \(\Psi\) to vanish. Generic Immirzi weights therefore give
\[
\Psi_L=\Psi_R=0.
\]
At \(\gamma=\pm i\), one equation disappears because that entire chiral coefficient is inactive; no propagation is generated.

# Added spinorial BF term and Weyl reduction

The matter ansätze use opposite Weyl components of one Dirac spinor:
\[
\Psi_L=P_L\slashed e\,\psi=e^{\alpha\dot\alpha}\psi_{R\dot\alpha},
\qquad
\Psi_L^{(2)}=P_L(\slashed e\wedge\slashed e)\psi.
\]
The additional invariant is
\[
S_{{\rm kin},L}
=\frac16\int\epsilon_{\alpha\beta}
\Psi_L^{(2)\alpha}\wedge D_L\Psi_L^\beta.
\]
Using
\[
H_\alpha{}^{\dot\beta}
=6i(*e^a)(\sigma_a)_\alpha{}^{\dot\beta},
\]
it reduces to the standard first-order Weyl kinetic form plus the torsion coupling. The old algebraic \(\langle\slashed e^2F\rangle\) equation is then balanced by the derivative equation and becomes a mass-like left--right mixing. The paper does not canonically normalize the system or extract a physical mass.

In the Lorentzian real completion one must add the Hermitian-conjugate right sector and impose the relevant reality relation. The purely left theory is complex.

# Equivariance is not consistent truncation

Kinematically,
\[
\Psi_\mu=\gamma_\mu\psi
\]
retains the gamma-trace spin-\(1/2\) component and removes the independent spin-\(3/2\) part.

Lorentz transformations preserve this subspace through the standard intertwiner. On a bosonic background, tangency of a residual odd transformation \(\delta\Psi=D\epsilon\) gives a twistor-spinor equation after the Clifford-sign convention is made consistent. Invariance of the odd curvature is stronger:
\[
\delta\rho=D^2\epsilon=\mathcal R\epsilon,
\]
and imposes an additional curvature/torsion condition.

Dynamically, restricting before variation yields only the tangent projection
\[
\gamma_\mu\widehat{\mathcal E}_\Psi^\mu=0.
\]
A solution lifts to the unrestricted one- and two-form theory only if the complementary gamma-traceless equations also vanish. The source derives a twistor-type normal equation for \(\psi_L\) that is not implied by the reduced Weyl equation. Generic reduced solutions therefore do not lift.

# Localized source defects

## Failed: Clifford/projector sign

Appendix A equation (A.1) states, for \(\eta=(-,+,+,+)\),
\[
\sigma_a\bar\sigma_b+\sigma_b\bar\sigma_a=-2\eta_{ab}.
\]
The displayed Dirac matrices consequently obey \(\{\gamma_a,\gamma_b\}=-2\eta_{ab}\), not the \(+2\eta_{ab}\) asserted in Appendix C equation (C.20).

With the Appendix A convention, the source expression
\[
(P_{1/2})_\mu{}^\nu=\frac14\gamma_\mu\gamma^\nu
\]
in equation (7.2) obeys \(P_{1/2}^2=-P_{1/2}\), so it is not a projector. The repaired formula is
\[
(P_{1/2})_\mu{}^\nu=-\frac14\gamma_\mu\gamma^\nu,
\qquad
P_{3/2}=1-P_{1/2}.
\]
Alternatively one may multiply all gamma matrices by \(i\) and consistently use the \(+2\eta\) convention. The twistor equations must inherit the same choice.

This defect does not invalidate the conclusion that the original algebraic vector-spinor equation forces \(\Psi=0\): the gamma-trace argument reaches the same result after the signs are changed consistently.

## Typographical and production defects

- Equation (2.12) for \(\mathcal F_R\) prints dotted \(\Psi_L\) fields; the surrounding definitions require \(\Psi_R\).
- PDF page 37 visibly contains the editing markers `[--[` and `]--]` around a superseded matter-ansatz paragraph. This is a production artifact, not a second ansatz.

# Relation to current research

- The clean separation between a connection and an independent soldering form is relevant to first-order boundary and gluing formalisms.
- The automatic simplicity of \(\slashed e^2\) is a useful reduced-Plebanski identity, but it removes the independent \(B\)-field sector rather than solving its full constrained phase space.
- The paper does not compute a symplectic potential, boundary charge, corner algebra, flux, or gluing relation. Its utility is as an action-level and representation-level model.
- The distinction between tangent reduced equations and normal parent equations is directly reusable when testing ansätze in covariant phase space.

# Verification log

## Source-derived

- The orthosymplectic invariant pairings, chiral action weights and complete variational analysis.
- The spinorial BF reduction, torsion current and mass-like interpretation.
- The residual-supersymmetry and consistent-truncation discussion, after correcting the Clifford convention.

## Checked

- The complete 3,800-line TeX source was inspected in section order. Six representative pages of the 69-page official PDF were rendered and visually audited, including the visible page-37 editing artifact.
- Mathematica constructed the displayed Pauli and Dirac matrices with \(\eta=(-,+,+,+)\). The residual for \(\{\gamma_a,\gamma_b\}+2\eta_{ab}\) was zero, while the residual for the source's \(+2\eta\) claim was nonzero.
- Mathematica found \(P_{\rm source}^2+P_{\rm source}=0\), not \(P_{\rm source}^2-P_{\rm source}=0\); the repaired minus-sign projector was idempotent with zero residual.
- An independent exterior-algebra computation reproduced
  \[
  B^i\wedge B^j=2i\delta^{ij}\operatorname{vol}_e,
  \quad
  \bar B^i\wedge\bar B^j=-2i\delta^{ij}\operatorname{vol}_e,
  \quad
  B^i\wedge\bar B^j=0
  \]
  with zero residuals.

## Blocked or not independently verified

- A full component reconstruction of every \(6\times6\) supertrace and the three-coframe identity was not attempted after the Clifford-sign conflict; those formulas require the authors' intended global convention to be fixed first.
- The predicted four-fermion interaction after eliminating torsion is not derived in the paper and remains explicitly future work.
- No Hamiltonian degree-of-freedom count is supplied for the reduced BF-extended theory, so the absence of additional constrained modes is not independently established.

# Audit notes

- **Claim tier:** classical action and reduced Euler--Lagrange construction; no quantization or CPS theorem.
- **Gravity boundary:** Einstein--Cartan--Holst recovery assumes an invertible coframe and fixed chiral reality conditions.
- **Matter boundary:** the kinetic term is an additional invariant, not generated by the three original superconnection polynomials.
- **Supersymmetry boundary:** only residual transformations satisfying background equations are discussed; there is no off-shell local supersymmetry of the reduced matter theory.
- **Truncation boundary:** reduced solutions need not solve the unrestricted auxiliary spinorial BF equations.
- **Reason codes:** `T2-model`, `T3-math`.

# Reading recommendation

Use the bosonic exterior-algebra construction and the reduced-versus-parent variational analysis as references. Do not import equations (7.2), (7.6), (7.17) or the Appendix C Clifford module without first choosing one global gamma convention and repairing all dependent signs. For the vault's active programme, the next useful step would be to derive the presymplectic potential of the repaired action and test which boundary terms survive the soldering ansatz.
