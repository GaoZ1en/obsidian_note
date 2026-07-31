---
paper id: 2607.28262v1
title: The reduced Dirac structure of General Relativity on manifolds with corners
authors:
  - Alberto S. Cattaneo
  - Filippo Fila-Robattino
  - Manuel Tecchiolli
publication date: 2026-07-30T14:18
abstract: |-
  The paper derives a corner Poisson structure for four-dimensional Palatini--Cartan gravity. Starting from the boundary constraint algebra, it identifies residual corner vector fields and one-forms as a pre-Dirac distribution, reduces its non-maximal directions, proves that the reduced distribution is the graph of a Poisson bivector, and rewrites the same structure as a strict affine BF²V theory.
comments: ""
url: https://arxiv.org/abs/2607.28262v1
summary: "A technically central construction of the non-null Palatini--Cartan corner phase space, with an explicit reduced Poisson bivector and a BF-like affine presentation, but with several source-level sign and typing defects that matter for reuse."
tags: []
---

Back to [[2026_07_31_overview]].

This is a high-priority monograph-mode reading because the paper attempts exactly the chain that is usually left implicit:

\[
S_M\longrightarrow \delta S_M
\text{ boundary potential}
\text{ boundary constraints}
\text{ corner residuals}
\text{ Dirac reduction}
\text{ corner Poisson bivector}.
\]

The main result is not yet a physical surface-charge algebra. It is a classical geometric construction on a non-null codimension-two stratum: the residuals of the Palatini--Cartan boundary constraints span a pre-Dirac distribution, reduction makes it maximal, and maximality plus involutivity identifies it as the graph of a Poisson bivector. The later BF²V description packages that bivector homologically.

## How to read this long paper

The paper has three logically distinct layers.

1. Sections 2--3 provide the abstract machinery: stratified spaces, graded Poisson geometry, BF\(^{k}\)V data, standard Courant algebroids, and the general passage from a boundary constraint to a corner pair \(X+\beta\).
2. Sections 4--5 perform the Palatini--Cartan construction: first the boundary presymplectic reduction and constraint algebra, then the corner residual one-forms, the second reduction, and the explicit bivector.
3. Section 6 rewrites the answer as an affine Poisson/BF²V system. This is conceptually useful, but several formulas in this section have type or sign problems; the graph-of-\(\pi\) result in Section 5 is the safer core.

For a first technical pass, read Sections 3.1, 4.2, 5.1--5.4, and 6 in that order. Appendix A fixes wedge-map and representative lemmas used during reduction; Appendix B supplies the long closure computation; Appendix C checks the graph relation \(\pi^\sharp(\mathcal X_\alpha)=\mathbb X_\alpha\).

## Source structure

- **Section 1: Introduction.** Explains why the singular naive BV--BFV descent for Palatini--Cartan gravity motivates a classical reduction before constructing strict BF²V data.
- **Section 2: Geometrical background.**
  - Stratified spaces and the distinction \(M\supset\Sigma\supset\Gamma\).
  - Graded symplectic/Poisson geometry, coisotropic reduction, first-class constraints, and moment maps.
  - BF\(^{k}\)V assignments along increasing codimension.
  - Generalized geometry: the standard Courant bundle \(TP\oplus T^*P\), isotropic/involutive distributions, and graphs of closed two-forms or Poisson bivectors.
- **Section 3: Dirac corner structures in classical field theory.**
  - Extracts a boundary presymplectic potential and symplectic phase space.
  - Shows how integration by parts on a boundary with boundary produces a residual corner one-form.
  - Packages each constraint as \(X_\alpha+\mathcal X_\alpha\in T F_\Gamma\oplus T^*F_\Gamma\).
  - Reduces by the common kernel of the residual one-forms.
  - Tests the mechanism on Yang--Mills and four-dimensional \(BF\) theory.
- **Section 4: Palatini--Cartan gravity on a manifold with boundary.**
  - Defines the coframe \(e\), Lorentz connection \(\omega\), and action.
  - Derives the pre-boundary potential and degenerate two-form.
  - Quotients the connection ambiguity, imposes the structural constraint, and states the Lorentz, tangential-diffeomorphism, and normal-deformation constraints.
- **Section 5: Palatini--Cartan gravity on a manifold with corners.**
  - Splits fields near \(\Gamma\), records tangential and transverse constraints, and derives four residual one-forms.
  - Proves isotropy and involutivity of the resulting pre-Dirac distribution.
  - Quotients the common kernel and fixes representatives through torsion, Einstein, and transverse-Bianchi conditions.
  - Uses \(E=e^2/2\) and \(\Omega=e(\omega-\omega_0)\) as reduced variables.
  - Shows that the reduced distribution is the graph of the explicit bivector \(\pi\).
- **Section 6: BF²V structure.**
  - Adds shifted ghosts and momenta to the reduced corner fields.
  - Writes the degree-one symplectic form and BF²V Hamiltonian.
  - Gives the cohomological vector field \(Q\), its affine action on momenta, and the corresponding affine Poisson bivector.
  - Identifies the Palatini--Cartan construction with a \(BF\)-type specialization.
- **Appendix A: Useful identities and notation.** Linear algebra of the maps \(W_e:\alpha\mapsto e\wedge\alpha\), decompositions relative to \(e,\epsilon_m,\epsilon_n\), and representative-fixing lemmas.
- **Appendix B: Long computations.** Source-order Dorfman-bracket closure and isotropy calculations for the corner generators.
- **Appendix C: Poisson-graph proof.** Verifies generator by generator that contraction of the displayed bivector with the residual one-forms reproduces their vector-field parts.

## Fields, gradings, and conventions

The spacetime dimension is \(D=4\). The boundary \(\Sigma\) and corner \(\Gamma\) have dimensions \(3\) and \(2\). Both induced metrics are assumed nondegenerate; the construction therefore excludes null boundaries and null corners.

The internal Lorentz bundle is \(\mathcal V\), and

\[
\Omega_X^{i,j}:=\Omega^i(X,\wedge^j\mathcal V).
\]

The fundamental fields are

\[
e\in\Omega^{1,1}_{\mathrm{nd}}(M),\qquad
\omega\in\mathcal A_M,\qquad
F_\omega=d\omega+\frac12[\omega,\omega].
\]

Wedge symbols and the internal trace are suppressed. Thus \(e^2\delta\omega\), for example, means the top internal-degree contraction of wedge products. A fixed connection \(\omega_0\) is used to make diffeomorphism generators covariant.

Near the boundary, \(\epsilon_n\in\Omega_\Sigma^{0,1}\) is a fixed transverse coframe component with \(\delta\epsilon_n=0\). Near the corner, \(\epsilon_m\) is the second transverse coframe component. The notation \(F_{\omega_m}\) denotes the curvature component involving the \(m\)-transverse connection data.

The wedge maps

\[
W_k^{X,(i,j)}:\Omega_X^{i,j}\to\Omega_X^{i+k,j+k},
\qquad
\alpha\mapsto e^k\alpha
\]

control which connection components survive presymplectic reduction.

The reduced corner variables are

\[
E:=\frac12e^2\in\Omega_\Gamma^{2,2},
\qquad
\Omega:=e(\omega-\omega_0)\in\Omega_\Gamma^{2,3}.
\]

A representative of the connection class is written schematically as

\[
\omega-\omega_0=e\,r+\epsilon_m\epsilon_n\,b,
\]

with \(r,b\) determined by the source's decomposition lemmas. The result is local only on the open locus where the required wedge maps and decompositions have constant rank.

The four odd boundary multipliers descend to:

\[
c\in\Omega_\Gamma^{0,2}[1],\quad
\zeta\in\mathfrak X(\Gamma)[1],\quad
\eta,\lambda\in C^\infty(\Gamma)[1].
\]

They respectively represent Lorentz rotations, tangential diffeomorphisms, the \(m\)-normal deformation inside \(\Sigma\), and the \(n\)-normal deformation of \(\Sigma\).

The standard Courant pairing is taken with the graded signs appropriate to the shifted generators. The paper calls its nonskew bracket the Dorfman bracket. This convention matters because one displayed introductory identity uses the wrong symmetrization; see **Failed** below.

## From the Palatini--Cartan action to the boundary phase space

The action is written as

\[
S_M[e,\omega]
=\int_M\frac1{(D-2)!}e^{D-2}F_\omega
+\frac{\Lambda}{D!}e^D.
\tag{23}
\]

For \(D=4\), variation of the connection yields torsionlessness,

\[
d_\omega e=0,
\]

while variation of the coframe yields the Einstein equation. The source prints the cosmological term with the opposite sign in the equation of motion from the one obtained by varying its displayed action; the paper later sets \(\Lambda=0\), so this defect does not enter the corner bivector.

The boundary term in \(\delta S_M\) is

\[
\widetilde\alpha_\Sigma
=\int_\Sigma\frac12e^2\,\delta\omega,
\tag{29}
\]

and therefore

\[
\widetilde\varpi_\Sigma
=\delta\widetilde\alpha_\Sigma
=\int_\Sigma e\,\delta e\,\delta\omega.
\tag{30}
\]

Its kernel shifts \(\omega\) by \(v\in\Omega_\Sigma^{1,2}\) satisfying \(ev=0\), while all transverse fields and jets are invisible. After quotienting,

\[
\varpi_\Sigma
=\int_\Sigma e\,\delta e\,\delta[\omega],
\qquad
\omega'\sim\omega
\Longleftrightarrow
\omega'-\omega\in\ker W_1^{\Sigma,(1,2)}.
\tag{31--32}
\]

The torsion equation is not invariant under an arbitrary representative shift. The structural condition

\[
\epsilon_n d_\omega e=e\sigma
\]

fixes one representative of \([\omega]\), provided the boundary metric is nondegenerate.

The first-class boundary constraints are

\[
\begin{aligned}
L_c&=\int_\Sigma c\,e\,d_\omega e,\\
P_\xi&=\int_\Sigma
\frac12\iota_\xi(e^2)F_\omega
+\iota_\xi(\omega-\omega_0)e\,d_\omega e,\\
H_\lambda&=\int_\Sigma
\lambda\epsilon_n
\left(eF_\omega+\frac{\Lambda}{3!}e^3\right).
\end{aligned}
\]

Their Hamiltonian vector fields generate Lorentz transformations, covariantized tangential diffeomorphisms, and normal deformations. On a closed \(\Sigma\), their brackets close into constraints. When \(\partial\Sigma=\Gamma\), the integrations by parts leave corner one-forms.

## The four residual corner one-forms

Writing the boundary vector field as

\[
\xi=\zeta+\eta\,\partial_m,
\]

the defining relation is

\[
\delta\phi_\alpha
=\iota_{\mathbb X_\alpha}\varpi_\Sigma
-\pi_\Gamma^*\mathcal X_\alpha.
\]

The source obtains

\[
\begin{aligned}
\mathcal J_c
&=\int_\Gamma c\,e\,\delta e,\\
\mathcal E_\zeta
&=\int_\Gamma
\iota_\zeta e\,e\,\delta\omega
+\iota_\zeta(\omega-\omega_0)e\,\delta e,\\
\mathcal K_\eta
&=\int_\Gamma
\eta\epsilon_m e\,\delta\omega
+\eta(\omega-\omega_0)_m e\,\delta e,\\
\mathcal F_\lambda
&=\int_\Gamma
\lambda\epsilon_n e\,\delta\omega.
\end{aligned}
\tag{38}
\]

The paired vector fields \(\mathbb J_c,\mathbb E_\zeta,\mathbb K_\eta,\mathbb F_\lambda\) are the restrictions of the boundary Hamiltonian fields. The generalized distribution

\[
D_{\mathrm{pre}}
=\operatorname{span}_{C^\infty(F_\Gamma)}
\{\mathbb X_\alpha+\mathcal X_\alpha\}
\subset (TF_\Gamma\oplus T^*F_\Gamma)[1]
\]

is shown to be isotropic and involutive after imposing the corner restrictions of torsion, Einstein, and structural equations.

This is the first genuinely useful conceptual step: \(\mathcal X_\alpha\) is not assumed exact. It is the residual variation attached to a transformation. Only when \(\mathcal X_\alpha=\delta Q_\alpha\) can it be called the variation of an integrated corner charge without further qualification.

## Why the first distribution is not yet Dirac

Involutive and isotropic does not imply maximal isotropic. The common kernel of the one-forms contains changes in \(e,\omega\) satisfying

\[
e\,\mathbb X_e=0,\qquad e\,\mathbb X_\omega=0,
\]

as well as changes in the transverse fields and jets. The reduction therefore:

1. quotients these common-kernel directions;
2. replaces \((e,\omega)\) by \(E=e^2/2\) and \(\Omega=e(\omega-\omega_0)\);
3. fixes \(\epsilon_m,\omega_m,\partial_m e,\partial_m\omega\) using the transverse torsion, Einstein, and Bianchi equations;
4. sets higher transverse jets to zero.

The source's representative-fixing chain is

\[
d_\omega e=0
\quad\Longrightarrow\quad
[e,F_\omega]=0,
\]

together with

\[
\epsilon_mF_\omega=eF_{\omega_m},
\qquad
[\epsilon_m,F_\omega]=[e,F_{\omega_m}],
\]

and their \(n\)-transverse analogues. The Einstein relation controls the image of \(W_e\); the transverse Bianchi relation controls the complementary kernel and is therefore needed for uniqueness.

The resulting reduced space \(P_\Gamma\) is not simply the space of arbitrary \((E,\Omega)\). It is the constrained representative space on which the transverse variables are functions of the reduced data and the equations above.

## The reduced Dirac graph and corner Poisson bivector

On \(P_\Gamma\), the Lorentz residual simplifies to

\[
\mathcal J_c=\int_\Gamma c\,\delta E,
\qquad
\mathbb J_{c,E}=[c,E],
\qquad
\mathbb J_{c,\Omega}=e\,d_{\omega_0}c+[c,\Omega].
\]

The other residuals can likewise be expressed in \((E,\Omega)\), plus the fixed representative data \(r,b,\epsilon_m,\Omega_m\). The crucial spanning statement is that a general one-form

\[
A=\int_\Gamma a\,\delta E,\qquad
B=\int_\Gamma b\,\delta\Omega
\]

can be decomposed into the four residual families because an internal vector \(b\) decomposes as

\[
b=\iota_\varsigma e+\nu\epsilon_n+\tau\epsilon_m.
\]

Thus \(\{\mathcal J,\mathcal E,\mathcal F,\mathcal K\}\) spans \(T^*P_\Gamma\).

The paper then gives the bivector

\[
\begin{aligned}
\pi=\int_\Gamma&
\frac12E\left[\frac{\delta}{\delta E},\frac{\delta}{\delta E}\right]
-\frac{\delta}{\delta\Omega}
\left(
e\,d_{\omega_0}\frac{\delta}{\delta E}
+\left[\Omega,\frac{\delta}{\delta E}\right]
\right)
+\left[\frac{\delta}{\delta E},\epsilon_m\right]
\frac{\delta}{\delta\epsilon_m}\\
&+\frac{\delta}{\delta\Omega_m}
\left(
e\,d_{\omega_m^0}\frac{\delta}{\delta E}
+\left[\Omega_m,\frac{\delta}{\delta E}\right]
+\epsilon_m d_{\omega_0}\frac{\delta}{\delta E}
\right)\\
&+\frac12(F_\omega+\Theta)
\frac{\delta}{\delta\Omega}
\frac{\delta}{\delta\Omega}
+(F_{\omega_m}+\Theta_m)
\frac{\delta}{\delta\Omega}
\frac{\delta}{\delta\Omega_m}\\
&+\left(
d_{\omega_m}\frac{\delta}{\delta\Omega}
-\left[\frac{\delta}{\delta\Omega}r,\epsilon_m\right]
\right)
\frac{\delta}{\delta\epsilon_m}\\
&-W_e^{-1}
\left[
\frac{\delta}{\delta\Omega}\epsilon_m\epsilon_n b,
\epsilon_m
\right]
\frac{\delta}{\delta\epsilon_m},
\end{aligned}
\tag{58}
\]

where

\[
\Theta=-[e,\omega-\omega_0]r-d_\omega(\omega-\omega_0),
\]

\[
\Theta_m
=-[\epsilon_m,\omega-\omega_0]r
-d_\omega(\omega-\omega_0)_m
-d_{\omega_m}(\omega-\omega_0).
\]

The formula should be read as a local field-space bivector with suppressed distributional kernels and graded wedges. Appendix C establishes

\[
\pi^\sharp(\mathcal X_\alpha)=\mathbb X_\alpha
\]

for the generators. Since their one-form parts span \(T^*P_\Gamma\),

\[
D=\{\pi^\sharp(\alpha)+\alpha:\alpha\in T^*P_\Gamma\}
=\operatorname{graph}(\pi).
\]

The prior involutivity of \(D\) then implies \([\pi,\pi]_{\mathrm S}=0\). This is an indirect proof of the Jacobi identity through the Courant graph theorem; the source does not directly evaluate the Schouten bracket of the full displayed expression.

## Strict BF²V and the affine presentation

The last section enlarges the reduced classical corner space by ghosts and their momenta. In schematic canonical notation,

\[
\mathcal F_\Gamma
\simeq
P_\Gamma
\times T^*[1]\bigl(
\Omega_\Gamma^{0,2}[1]
\oplus\Omega_\Gamma^{0,1}[1]
\bigr),
\]

with Lorentz-type ghost \(c\), translation-type ghost \(\tau\), and conjugates. The degree-one symplectic form is the strict BF²V form (source Eq. 59). A representative constraint (Eq. 60) makes the cotangent variables compatible with the quotient.

The long Hamiltonian in Eq. 61 packages:

- the action of \(c\) on \(E,\Omega\);
- the action of \(\tau\) through covariant derivatives and curvature;
- the ghost brackets;
- the momentum terms needed for the cohomological closure.

The compact forms (63)--(64) expose the \(BF\)-like structure. The associated cohomological vector field \(Q\) is displayed in Eq. 65, and Eqs. 66--68 are the identities used to argue \(Q^2=0\). The momenta transform affinely (Eq. 69), preserving the symplectic form (Eq. 70); dualizing gives the affine Poisson bivector of Eq. 71.

The proposed identification with the standard \(BF\) variables is

\[
A=\omega,\qquad
B=E,\qquad
\phi=\frac12\mu^2,\qquad
\tau=e\mu,\qquad
B^\dagger=0.
\]

This explains why the reduced gravity corner resembles \(BF\) theory while retaining the simplicity/decomposability information carried by \(E=e^2/2\). It is an equivalence of the reduced geometric presentation, not a claim that four-dimensional gravity has become unconstrained topological \(BF\) theory.

## Translation into the vault's CPS and charge language

The boundary chain is

\[
S_M
\xrightarrow{\delta}
\widetilde\alpha_\Sigma
\xrightarrow{\delta}
\widetilde\varpi_\Sigma
\xrightarrow{\text{kernel quotient}}
\varpi_\Sigma.
\]

Thus \(\widetilde\alpha_\Sigma\) is the boundary representative of \(\theta\), and \(\widetilde\varpi_\Sigma=\delta\widetilde\alpha_\Sigma\) is the corresponding field-space two-form \(\omega=\delta\theta\). The paper uses \(\alpha,\varpi\), not the vault's \(\theta,\omega\), so translating both the spacetime connection \(\omega\) and the presymplectic current requires care.

The equation

\[
\delta\phi_\alpha
=\iota_{\mathbb X_\alpha}\varpi_\Sigma
-\pi_\Gamma^*\mathcal X_\alpha
\]

is the finite-boundary Hamiltonian identity: \(\mathcal X_\alpha\) is the corner obstruction to the constraint being Hamiltonian without boundary data. It is analogous to a surface-charge one-form \(k_\alpha[\delta\Phi;\Phi]\), but the paper does not:

- integrate all \(\mathcal X_\alpha\) to functions \(Q_\alpha\);
- establish field-space integrability;
- choose flux versus charge boundary conditions;
- derive a central extension;
- construct a radiative phase space or a null-boundary flux balance law.

Accordingly, Eq. 58 is a Poisson bracket on reduced corner field data, not yet the algebra of integrated gravitational surface charges. Its value for the charge project is that it gives a concrete reduced geometric carrier on which a charge/integrability analysis could be performed.

The fixed \(\omega_0\) is a background structure used in covariantized diffeomorphisms and in \(\Omega=e(\omega-\omega_0)\). Dependence on this reference connection must be tracked when comparing to Iyer--Wald or Barnich--Brandt representatives.

## Concrete extensions for the current projects

1. **Integrate the residual one-forms.** Determine boundary conditions for which \(\mathcal J_c,\mathcal E_\zeta,\mathcal K_\eta,\mathcal F_\lambda\) are exact on solution space, and compute their algebra using Eq. 58.
2. **Keep finite-cutoff and corner terms.** Compare the identity defining \(\mathcal X_\alpha\) with the Iyer--Wald \(k_\xi=\delta Q_\xi-\iota_\xi\theta\) chain before taking asymptotic limits.
3. **Null extension.** The nondegenerate induced metrics are essential to the wedge-map inversions and transverse decompositions. A null version needs a different reduction and should not be obtained by merely taking a limit of the displayed bivector.
4. **Reference-connection dependence.** Test whether changing \(\omega_0\) acts by a Poisson isomorphism or adds a nontrivial corner improvement.
5. **Direct Jacobi check in a truncation.** Restrict Eq. 58 to a finite-dimensional homogeneous sector and evaluate \([\pi,\pi]_{\mathrm S}\) directly; this would test the graph proof independently.
6. **Compare the strict and homotopy descents.** Relate the reduced BF²V answer here to the earlier singular pre-BF²V/\(P_\infty\) corner theory and identify exactly what the quotient removes.

## Verification log

### Checked

- **Standard Courant identity:** an explicit one-dimensional test with \(X=x^2\partial_x\), \(Y=x^3\partial_x\), and polynomial one-forms reproduced
  \[
  [u,v]_{\mathrm D}+[v,u]_{\mathrm D}
  =d\langle u,v\rangle
  \]
  and contradicted the source's displayed difference identity.
- **Lie--Poisson Jacobi:** Sage independently evaluated representative \(\mathfrak{su}(2)^*\) coordinate Jacobiators and returned zero, checking the algebraic core of the first term in Eq. 58.
- **Decomposability:** Sage exterior algebra verified \(E=e_0\wedge e_1\) obeys \(E\wedge E=0\), while its pairing with a complementary two-plane is nonzero. This checks the simplicity information retained by \(E=e^2/2\).
- **Mixed \(BF\) generator type and sign:** a Sage \(\mathfrak{su}(2)\) test gives the mixed bracket as
  \[
  \{L_c,M_\tau\}=-M_{[c,\tau]},
  \]
  consistent with the semidirect action and inconsistent with the generator type printed in the source.
- The PDF rendering of page 36 was inspected directly: the long reduced bivector appears visibly as Eq. 58, including the representative-dependent \(r,b,\Theta,\Theta_m\) terms that text extraction can scramble.

### Blocked

- The full Jacobi identity for Eq. 58 was not independently evaluated. Its field-dependent inverse \(W_e^{-1}\), representative functions \(r,b\), suppressed distributional kernels, and constraints defining \(P_\Gamma\) are not supplied in a form suitable for a direct computer-algebra transcription.
- The full Appendix B Dorfman closure was not reproduced term by term. Several steps use source-specific graded field-space sign conventions and on-shell representative constraints whose machine-readable definitions are incomplete.
- The source states but does not display the pullback used in Proposition 6.6; this prevents an independent check of the claimed equivalence at that step.
- The proof of \(Q^2=0\) does not explicitly show \(Q^2c\), and the domain/quotient behavior of the \(W_e\) kernels is not fully specified. The complete BF²V cohomological closure therefore remains source-derived.
- No physical charge integrability, gluing law, or representation of the Poisson algebra is constructed in the paper, so none can be independently checked from it.

### Failed

- **Dorfman identity in the geometric review:** the source displays the difference of the two Dorfman brackets as \(d\langle u,v\rangle\). With its stated standard convention, the correct identity uses the sum. The explicit polynomial test gives zero for “sum minus exact term” and a nonzero result for “difference minus exact term.”
- **BF\(^{k}\)V degree count:** the displayed condition \(k(d-1)=2\) does not match the degree of the stated data in dimension \(D=d+1\). The formula needs a convention repair before reuse.
- **Cosmological sign:** Eq. 23 contains \(+\Lambda e^D/D!\), but the immediately following coframe equation carries a minus sign. Direct variation of the displayed action gives a plus sign. Later sections set \(\Lambda=0\), so downstream formulas used here are unaffected.
- **Corner sign chain:** the plus sign in source Eq. 43 conflicts with the minus signs in Eqs. 40 and 45 and with the subsequent derivation, which follows the minus-sign chain.
- **Mixed BF bracket:** the source prints a term of the form \(-L_{[c,\tau]}\), although \([c,\tau]\) has the translation-parameter type. The independent Lie-algebra test yields \(-M_{[c,\tau]}\).
- **Additional source defects:** \(T[1]P\) appears where the conventional object is \(T^*[1]P\); the declared type of \(\nu^\dagger\) conflicts with its use; one intermediate symplectic expression omits a \(\delta e\) factor; and the representative pullback in Proposition 6.6 is not written. These are not harmless when implementing the BF²V formulas literally.

The reliable core is therefore conditional but nontrivial: the classical reduction and graph-of-\(\pi\) argument give a coherent local corner Poisson structure on the stated non-null constrained locus. The full strict BF²V transcription should be reused only after repairing the listed source formulas and fixing all grading conventions explicitly.
