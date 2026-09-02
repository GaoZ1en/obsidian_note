---
paper id: 2608.28736v1
title: "Reimagining Gravity: Generalized Symmetries, Double Copy, and Spinning Black Holes"
authors:
  - Joon-Hwi Kim
publication date: 2026-08-28T17:54:13Z
abstract: "This 14-chapter dissertation develops three views of gravity: a Lorentz gauge theory supporting a proposed center-valued one-form symmetry, a diffeomorphism gauge theory motivated by color--kinematics duality, and a nonlinear interaction of self-dual and anti-self-dual sectors used to organize rotating black holes, worldline actions, and Compton amplitudes."
comments: 479 pages, 47 figures; Ph.D. thesis defended June 29, 2026
url: https://arxiv.org/abs/2608.28736v1
summary: A substantial research map whose most immediately relevant part is the explicit Palatini one-form-symmetry construction; its Ward identity is coherent under stated EFT and topology assumptions, but the thesis does not prove a formulation-independent nonperturbative quantum-gravity symmetry theorem.
tags: []
---

# Verdict

**Correct under the following precise conditions:** for Chapter 3, work in tetradic Palatini or Plebański gravity with a specified global local-Lorentz group $G$, fixed spacetime topology, a homologically trivial closed support $S=\partial V$, and acceptance of the singular multivalued local-Lorentz transformation as an admissible change of variables in the EFT path integral. Under these conditions the spin-holonomy transformation law and the corresponding covariant and canonical Ward identities follow.

**Not proven by the thesis as a whole:** a formulation-independent, nonperturbative one-form symmetry of quantum gravity. The explicit “area” surface operator is topological only through the asserted Ward identity; the text does not separately establish regulator independence, the path-integral measure/Jacobian, arbitrary non-exact supports, topology change, or equivalence after eliminating tetrads and spin connection. The claimed low-energy Standard Model symmetry is therefore best described as a conditional emergent EFT symmetry, not an exact symmetry of the UV-complete theory.

The remaining 13 chapters contain a mixture of reviews, published results, original unpublished constructions, and candidate exact worldline actions. This note records their dependency structure and advertised results. It does not independently verify the 50,880 lines of TeX or the all-orders black-hole dynamics.

# Source and reading status

- Official metadata: https://arxiv.org/abs/2608.28736v1
- Official PDF: 479 pages, 47 figures.
- Source package: 98 files, including 50,880 lines across the TeX files.
- Read completely: front matter, abstract, authorship/status statement, thesis plan, compiled table of contents, and Chapter 3 source.
- Visually checked: Chapter 3 pages containing the gravity application, Ward identity, exponentiated-area operator, defect source, and canonical construction.
- Chapter-level navigation for Chapters 2 and 4--14 was reconstructed from the compiled table of contents, chapter synopses, introductions, conclusions/summaries, and the thesis abstract.
- Independent check: Sage verified the relevant Spin$(4)$ and Spin$(1,3)$ center characters and an $\mathfrak{su}(2)$ representative exponentiating to $-\mathbf 1$.
- Daily context: [[2026_09_01_overview]].

# How to read this thesis

## Fast route for generalized symmetry and CPS

1. Read §§1.2.1 and 1.3 for the problem statement and claim map.
2. Read §§2.2 and 2.5.2 for the first-order Lorentz-gauge and chiral action conventions.
3. In Chapter 3, read §§3.3, 3.5.1--3.5.5, and 3.A. These contain the universal template, gravitational transcription, covariant Ward identity, area-like operator, and canonical check.
4. Read §§3.5.6--3.5.7 only after the formal construction; these give the distributional tetradic-string interpretation.
5. Read §§3.6--3.7 last, because the Standard Model and swampland statements add physical assumptions beyond the Ward identity.

## Fast route for double copy and rotating black holes

1. Chapter 2 supplies the metric/coframe/frame/self-dual dictionary.
2. Chapter 4 defines the proposed diffeomorphism-gauge-theory language and states its dimensional/self-dual limitations.
3. Chapters 5--7 build the self-dual dyon/Taub--NUT/Kerr chain.
4. Chapter 8 provides the all-orders geodesic-deviation machinery required by Chapters 9--11.
5. Chapters 12--13 formulate spinspacetime and the Poisson/symplectic framework.
6. Chapter 14 is the amplitude endpoint and should be read together with the candidate actions of Chapters 10--11.

# Thesis architecture

The dissertation is organized around three questions:

- Does nonlinear dynamical gravity possess generalized symmetries?
- Can color--kinematics duality be explained through a field-theoretic diffeomorphism gauge theory?
- What are the exact point-particle equations/actions and scattering data of spinning black holes?

The dependency graph is

\[
\text{gravity formulations (Ch. 2)}
\longrightarrow
\begin{cases}
\text{Lorentz center symmetry (Ch. 3)},\\
\text{diffeomorphism gauge theory (Ch. 4)},\\
\text{SD/ASD decomposition (Chs. 5--7)}
\end{cases}
\]

and

\[
\text{SD/ASD black holes}
+\text{all-orders deviation (Ch. 8)}
\longrightarrow
\text{probe NJ and actions (Chs. 9--11)}
\longrightarrow
\text{spinspacetime/EOM (Chs. 12--13)}
\longrightarrow
\text{Compton amplitudes (Ch. 14)}.
\]

# Chapter and section tree

This is the complete chapter/section-level tree; key Chapter 3 subsections and the dense endpoint chapters are expanded one level further.

## Chapter 1 — Introduction, pp. 1--16

- 1.1 Gravitation from the Infrared to the Ultraviolet
- 1.2 Open Puzzles in Gravitation
  - 1.2.1 Generalized Symmetries in Dynamical Gravity
  - 1.2.2 Double Copy
  - 1.2.3 Effective Dynamics of Spinning Black Holes
- 1.3 Plan of This Thesis

## Chapter 2 — Reimagining Gravity, pp. 17--66

- 2.1 Gravity as Metric Geometry: Einstein--Hilbert, Landau--Lifshitz, Cheung--Remmen
- 2.2 Gravity as Lorentz Gauge Theory: electric/magnetic equations; second- and first-order coframe GR
- 2.3 Gravity as Frame Geometry: topological limit; first- and second-order frame/teleparallel GR
- 2.4 Simplicity of Self-Dual Gravity: self-dual Yang--Mills/double copy; Plebański second heavenly equation; Mason--Newman
- 2.5 Gravity as a Tapestry of Self-Dual and Anti-Self-Dual Parts: Chalmers--Siegel; chiral coframe/frame actions; covariant color--kinematics; nonlinear SD/ASD superposition
- 2.6 Ending Remarks

## Chapter 3 — Generalized Symmetries in Dynamical Gravity, pp. 67--123

- 3.1 Introduction
- 3.2 The Symmetry Triangle
  - 3.2.1 An Abelian Primer
  - 3.2.2 Multivalued Gauge Transformation
- 3.3 Universal Template for One-Form Symmetry
  - 3.3.1 Multivalued Gauge Transformation
  - 3.3.2 Charged Operator
  - 3.3.3 Ward Identity
  - 3.3.4 Symmetry Operator
- 3.4 More on Multivalued Gauge Transformations
  - 3.4.1 Physicists' Approach
  - 3.4.2 Mathematician's Approach
  - 3.4.3 Explicit Examples
- 3.5 Application to Gravity
  - 3.5.1 Gravity as a Lorentz Gauge Theory
  - 3.5.2 Multivalued Local Lorentz Transformation
  - 3.5.3 Spin Holonomy as Charged Operator
  - 3.5.4 Ward Identity
  - 3.5.5 Exponentiated Area as Symmetry Operator
  - 3.5.6 Tetradic Cosmic String as a Local Lorentz Vortex
  - 3.5.7 Linking and Spin Precession Angle
- 3.6 Physical Implications
- 3.7 Future Directions
- 3.A Canonical Formalism
  - 3.A.1 Phase Space
  - 3.A.2 Ward Identity
  - 3.A.3 Plebański Gravity

## Chapter 4 — Double Copy and Diffeomorphism Gauge Theories, pp. 124--174

- 4.1 Introduction
- 4.2 Color--Kinematics Duality from Equations of Motion: bi-adjoint scalar, nonlinear sigma model, Born--Infeld
- 4.3 Ordinary Gauge Theory: covariance, Wilson line, covariant Taylor expansion
- 4.4 Diffeomorphism Gauge Theory via Color--Kinematics Duality: covariance, Wilson line, covariant Taylor expansion, mathematical perspective
- 4.5 Interpretation as Teleparallel Theory: frame/anholonomy, representations/densities, BF/Chern--Simons/Yang--Mills/GR case studies
- 4.6 Misner String as a Diffeomorphism Vortex: physical and mathematical constructions; torsion-flux measurement
- 4.7 Poisson Gauge Theory
- 4.A From Equations of Motion to Amplitudes
- 4.B Lagrangian Formulations

The thesis itself limits exact GR realizations here to three dimensions or the self-dual sector in four dimensions.

## Chapter 5 — Simplicity of Self-Dual Black Hole, pp. 175--181

- 5.1 Dyon Motion in Dyon Background
- 5.2 Self-Dual Dyon as the Hydrogen Atom
- 5.3 Maximal Superintegrability from Killing--Yano Tensors

## Chapter 6 — Self-Dual Black Hole from Double Copy, pp. 182--197

- 6.1 Introduction
- 6.2 Derivation of Self-Dual Taub--NUT Solution from Double Copy
- 6.3 The Diffeomorphism: direct construction; Kerr--Schild to Gibbons--Hawking by null geodesic flow
- 6.4 Physical Interpretation
- 6.5 More Double Copy Correspondences: Weyl, nonlocal-operator Kerr--Schild, self-dual
- 6.6 Conclusions
- 6.A Double Kerr--Schild Metric
- 6.B A Puzzle Regarding Two Classical Double Copies

## Chapter 7 — Newman--Janis Algorithm from Taub--NUT Instantons, pp. 198--215

- 7.1 Introduction
- 7.2 Intuition and Overview
- 7.3 Factorization of Kerr
- 7.4 Nonlinear Superposition Theorem
- 7.5 Derivation of Kerr Metric
- 7.6 Newman--Janis Algorithm Deciphered
- 7.7 Charged Kerr--Taub--NUT extension
- 7.8 Summary
- 7.A Nonlinear Superposition Theorem
- 7.B Spheroidal Coordinates

## Chapter 8 — Geodesic Deviation to All Orders, pp. 216--236

- 8.1 Introduction
- 8.2 Tangent-bundle formulation
- 8.3 Direct-sum-bundle formulation
- 8.4 Covariant Lie Derivative and Dressing Identity
- 8.5 Recursion for Jacobi Propagators
- 8.6 Lagrangians
- 8.7 All-Orders Geodesic Deviation Equation
- 8.8 Zero-Torsion Identities
- 8.9 Summary and Outlook
- 8.A Covariant Lie-Derivative calculus
- 8.B Explicit Jacobi propagators, Lagrangian, and GDE
- 8.C Gauge-Covariant Translations in Nonabelian Gauge Theory

## Chapter 9 — Probe Newman--Janis Algorithm, pp. 237--249

- 9.1 Introduction
- 9.2 Schwarzschild Equations of Motion
- 9.3 “Derivation” of Kerr Equations of Motion
- 9.4 Hidden Symmetry
- 9.5 Lagrangian Formulation
- 9.6 Linearized Coupling
- 9.7 Spin Exponentiation at All Multiplicities
- 9.8 Uplift to Earth
- 9.9 Compton Amplitude
- 9.10 Interpretation
- 9.11 Conclusion

## Chapter 10 — The Kerr Effective Action, pp. 250--274

- 10.1 Introduction
- 10.2 Flat: free particle, twistor construction, spinspacetime, correspondence space, $N$ and $J$
- 10.3 Earth: curved correspondence space, ordinary minimal coupling, curved $N$ and $J$
- 10.4 Heaven: heavenly portal, curved spinspacetime/correspondence space, chiral action, curved massive twistor space, googly Kerr action
- 10.5 Interpretation
- 10.6 Conclusions
- 10.A Spinspacetime from Adapted Complex Structure
- 10.B Nonabelian Root--Kerr Action

The thesis plan calls the resulting all-orders Kerr action a **candidate**; this tier should be preserved.

## Chapter 11 — The Kerr--Newman Effective Action, pp. 275--286

- 11.1 Introduction
- 11.2 Geodesic Deviation in Einstein--Maxwell Geometry
- 11.3 Kerr--Newman Action
- 11.4 Nonlinear Newman--Janis Shift
- 11.5 Heavenly Equations of Motion
- 11.6 Hidden Symmetry
- 11.7 Curved Massive Twistor Space
- 11.8 Googly Formulation
- 11.9 Interpretation

## Chapter 12 — Spinspacetime, pp. 287--299

- 12.1 Introduction
- 12.2 Reconstructing Spacetime from Poincaré Symmetry
- 12.3 Spin-Induced Spacetime Fuzziness
- 12.4 Unification of Spacetime and Spin
- 12.5 Newman's Derivation
- 12.6 Massive-Twistor Construction
- 12.7 S-Matrix in Massive Twistor Space
- 12.8 What Defines Spinning Black Holes
- 12.9 Conclusions

## Chapter 13 — Exact Black Hole Equations of Motion, pp. 300--329

- 13.1 Universal Poisson Brackets: Poincaré derivation, partial reduction, symplectic leaves
- 13.2 Interacting Universality in Electromagnetism: symplectic perturbations, BMT equations, higher multipoles
- 13.3 Simplicity of Black-Hole Dynamics: complex phase-space geometry, holomorphy/self-duality, real and complex perturbations, Root--Kerr EOM
- 13.4 Dynamical Symmetries and Conserved Charges
- 13.5 Dynamical Newman--Janis Shift of Conserved Charges
- 13.6 Conclusion and Outlook
- 13.A Definition of Black-Hole Coupling

## Chapter 14 — Black Hole Compton Amplitudes, pp. 330--365

- 14.1 Introduction
- 14.2 Summary of Results
- 14.3 Properties: absence of spurious poles, correct physical residues, comparison with literature
- 14.4 Methodology: vertices/master formula and propagators
- 14.5 Interpretation
- 14.6 Kinematic Bases for Relative Amplitudes
- 14.7 Nonabelian Root--Kerr amplitudes: backgrounds, symplectic structure, vertices, helicity derivations, gauge invariance
- 14.8 Kerr amplitudes: graviton backgrounds, symplectic structure, vertices, all helicities, reality/deformations
- 14.9 Conclusions
- 14.A Scalar Compton Amplitudes

## Appendix A — More on Self-Dual Spacetime, pp. 435--443

- A.1 Plebański's Second Heavenly Equation
- A.2 Self-Dual Spacetime as a Cotangent Bundle
- A.3 Curved Twistor Theory: Lax pair, deformed incidence relation, double fibration
- A.4 Canonical Transformations on Fibers

## Appendix B — Worldline Formalisms, pp. 444--457

- B.1 S-Matrix Elements/Scattering Amplitudes: classic worldline formalism, reduction by topology, universal phase-space Feynman rules
- B.2 S-Symplectomorphism/Scattering Generators: classical definition, Magnus series, dequantization, deformation quantization

# Chapter 3 notation dictionary

| Symbol | Meaning |
|---|---|
| $M$ | Four-dimensional spacetime; topology is held fixed |
| $G$ | Chosen global local-Lorentz group, not merely its Lie algebra |
| $\gamma^{AB}$ | Spin connection |
| $e^A$ | Coframe/tetrad |
| $R^{AB}[\gamma]$ | Curvature of the spin connection |
| $B_{AB}[e]$ | Composite Plebański two-form $\frac12\epsilon_{ABCD}e^C\wedge e^D$ |
| $C$ | Closed oriented curve supporting the charged line operator |
| $S$ | Closed oriented codimension-two support of the surface operator |
| $V$ | Branch sheet with $S=\partial V$ in the explicit construction |
| $\Omega_S$ | Multivalued local-Lorentz parameter on $M\setminus S$ |
| $\alpha\in Z(G)$ | Center-valued jump/monodromy of $\Omega_S$ |
| $\lambda\in\mathfrak g$ | A representative satisfying $e^{2\pi\lambda}=\alpha$ |
| $W_\rho(C)$ | Spin holonomy in representation $\rho$ |
| $U_\alpha(S)$ | Proposed one-form symmetry surface operator |
| $\operatorname{link}(C,S)$ | Topological linking number |
| $\kappa^2$ | $8\pi G_N$ |

# Chapter 3 equation ledger

## Palatini action grammar

The local action is written as

\[
L[\gamma,e]
=\frac1{\kappa^2}
\left[B_a[e]\wedge R^a[\gamma]+f[e]\right],
\]

with Einstein gravity corresponding to

\[
L
=\frac1{\kappa^2}\left[
B_a[e]\wedge R^a[\gamma]
-\frac\Lambda6B_a[e]\wedge\star B^a[e]
\right].
\]

This resembles a $BF$ action but is not topological $BF$ theory because $B[e]$ is composite and obeys the simplicity structure inherited from the coframe.

## Multivalued transformation

\[
\gamma\mapsto\Omega_S^{-1}\gamma\Omega_S+\Omega_S^{-1}d\Omega_S,
\qquad
e\mapsto\Omega_S^{-1}e,
\]

with center jump

\[
\lim_{P_+\to P_-}\Omega_S(P_+)\Omega_S^{-1}(P_-)=\alpha\in Z(G).
\]

Because $\Omega_S$ is multivalued, the distributional term $\Omega_S^{-1}dd\Omega_S$ is retained.

## Charged line

\[
W_\rho(C)=\operatorname{Tr}_\rho\,
\mathcal P\exp\oint_C\gamma,
\]

and the branch-cut insertion gives

\[
W_\rho(C)\mapsto
\rho(\alpha)^{\operatorname{link}(C,S)}W_\rho(C).
\]

The center condition is what removes dependence on the arbitrary insertion point/branch sheet.

## Surface operator and Ward identity

\[
U_\alpha(S)=
\exp\left[-\frac{i}{\kappa^2}
\int_M B_a[e]\wedge(\Omega_S^{-1}dd\Omega_S)^a\right],
\]

\[
\left\langle W_\rho(C)U_\alpha(S)\right\rangle
=\rho(\alpha)^{\operatorname{link}(C,S)}
\left\langle W_\rho(C)\right\rangle.
\]

For $\Omega_S=e^{\lambda\phi_S}$ with $e^{2\pi\lambda}=\alpha$,

\[
U_\alpha(S)=
\exp\left[-\frac{2\pi i}{\kappa^2}
\int_S B_a[e]\lambda^a\right]
=\exp\left[-\frac{i}{4G_N}\int_S
\frac12(\star\lambda)_{AB}e^A\wedge e^B\right].
\]

The last expression is area-like, but its topological character is not visible term by term; it depends on the Ward-identity/change-of-variables argument.

## Canonical avatar

On a spatial slice, with

\[
E^i{}_a=\frac12B_{ajk}\epsilon^{ijk},
\]

the surface operator translates the connection by a delta one-form:

\[
U_\alpha(S_0)A^a_iU_\alpha(S_0)^{-1}
=\left(A^a+2\pi\lambda^a\delta_3(S_0)\right)_i,
\qquad
U_\alpha(S_0)E^i{}_aU_\alpha(S_0)^{-1}=E^i{}_a.
\]

Therefore

\[
U_\alpha(S_0)W_\rho(C)U_\alpha(S_0)^{-1}
=\rho(\alpha)^{\operatorname{intersect}_3(C,S_0)}W_\rho(C).
\]

The Plebański appendix supplies a fundamental $B$ field and a Darboux phase space, making this canonical step cleaner than in the composite-$B[e]$ tetrad description.

# Defect interpretation

Applying the multivalued transformation to a flat tetrad/spin-connection background gives

\[
e^A=(e^{-\lambda\phi_S})^A{}_B\bar e^B,
\qquad
R^A{}_B=2\pi\lambda^A{}_B\delta(S).
\]

The metric remains unchanged,

\[
g_{\mu\nu}=\bar g_{\mu\nu},
\]

so scalar geodesics see no conical deficit. The source is instead distributional in the coframe formulation, with both ordinary and dual stress tensors proportional to $\star\lambda\,\delta(S)$ and $\lambda\,\delta(S)$. The author calls this a tetradic cosmic string. Its spin holonomy detects a quantized center phase/spin-precession angle.

This is a formal distributional geometry. It is not a smooth Einstein solution, and its interpretation relies on allowing a multivalued coframe whose metric is single-valued.

# Group and screening conditions

For Lorentzian signature:

\[
G=\operatorname{Spin}(1,3)\cong SL(2,\mathbb C),
\qquad Z(G)=\mathbb Z_2,
\]

or

\[
G=SO^+(3,1),
\qquad Z(G)=1.
\]

The nontrivial Spin center fixes vectors but flips Weyl spinors. Sage confirmed these representation phases. For Euclidean Spin$(4)\cong SU(2)_L\times SU(2)_R$, the two center factors act separately on left and right spinors, while the diagonal center fixes the vector representation.

Screening is representation-dependent:

- vector holonomies can be ended/screened by orbital-angular-momentum operators in tetradic gravity;
- spinor holonomies are ended by local fermionic operators;
- below the lightest massive fermion threshold, the latter can appear as an emergent one-form symmetry of the low-energy EFT.

This last statement assumes the lightest neutrino is massive and concerns the low-energy effective spectrum. Heavy fermions still break the symmetry in the full theory.

# Claim ledger for the whole dissertation

| Claim | Status in this note |
|---|---|
| Center action on spin holonomies | Checked algebraically for the stated Spin groups |
| Chapter 3 covariant/canonical Ward identity | Correct under the explicit path-integral, topology, support, and formalism assumptions |
| Surface operator is a fully regulator-independent topological operator | Not independently proven |
| Exact Standard Model symmetry below the lightest neutrino mass | Conditional emergent-EFT statement |
| Diffeomorphism gauge theory equals full 4D GR | Explicitly not claimed; exact only in 3D or the 4D self-dual sector |
| Kerr as nonlinear SD/ASD Taub--NUT superposition | Source-derived chapter theorem; not rechecked here |
| All-orders geodesic-deviation expansion | Source-derived; explicit terms reported through tenth order |
| Exact Kerr/Kerr--Newman worldline action | Candidate/source-derived; not independently verified |
| Chapter 14 amplitudes lack spurious poles and have correct residues | Source-derived; not independently recomputed |
| Complete exact spinning-black-hole dynamics in generic backgrounds | Not established by this note |

# Relevance to current projects

- **Directly relevant:** Chapter 3 is an action-first example of a surface operator derived by a singular change of variables and checked again in canonical phase space.
- **Regional gluing caution:** the proof uses relative linking and an exact support $S=\partial V$; it does not supply a general gluing theorem for arbitrary regional boundaries or nontrivial homology.
- **Gauge quotient caution:** the existence and charge group depend on the global form of $G$ and on which line/local operators are admitted. Replacing Spin by its quotient changes the symmetry rather than merely changing notation.
- **Boundary/corner caution:** the displayed derivation is on a fixed manifold and does not give boundary counterterms, corner symplectic structure, or edge-mode completion for a finite region.
- **Double-null project:** no PDE well-posedness or characteristic development theorem is supplied; the thesis should not be used to bypass the existing subsidiary-system gate.
- **Spinning-black-hole program:** Chapters 8--14 form a coherent source map for geodesic deviation, twistor/spinspacetime variables, candidate actions, and amplitude diagnostics.

# Verification ledger

## Checked:

- Official metadata, all front matter, the complete compiled chapter/section tree, and the full Chapter 3 source.
- Rendered equations and figures at the key Chapter 3 transitions.
- Sage checks of Spin$(4)$ and Spin$(1,3)$ center characters and a Lie-algebra representative exponentiating to the nontrivial $SU(2)$ center.
- Internal consistency of the charged-line transformation and canonical intersection-number statement at the algebraic level.

## Source-derived:

- The path-integral measure is assumed invariant under the singular multivalued change of variables.
- The distributional tetradic-string stress tensors and absence of scalar conical deficit.
- Higher-curvature persistence of the symmetry.
- All chapter-level black-hole, double-copy, worldline, hidden-symmetry, and amplitude results outside Chapter 3.

## Failed:

- No specific Chapter 3 center-character formula failed the discrete-algebra checks.
- No claim from Chapters 4--14 was subjected to a full independent calculation, so absence of a recorded failure there is not verification.

## Blocked:

- Regulator-independent definition of $\Omega_S^{-1}dd\Omega_S$ and of the distributional surface insertion.
- Path-integral Jacobian/anomaly analysis for the singular transformation.
- Extension from $S=\partial V$ to arbitrary closed non-exact supports and topology-changing sectors.
- Proof that the area-like representative commutes with the stress tensor or is deformation-invariant independently of the Ward identity.
- Equivalence of the symmetry across tetrad, pure-metric, metric-affine, and constrained Plebański formulations.
- Independent tensor/symbolic reproduction of the 14-chapter all-orders results.

# Bottom line

This is worth keeping as a high-priority monograph, especially Chapter 3. Its best use is as a precise construction template:

\[
\text{global gauge-group choice}
\to \text{multivalued transformation}
\to \text{charged holonomy}
\to \text{surface insertion}
\to \text{Ward identity}
\to \text{screening test}.
\]

The stop line is equally precise: the thesis establishes that template in a fixed-topology tetradic/Plebański EFT setting, but it does not close the regulator, measure, arbitrary-homology, finite-boundary/corner, or formulation-independence gates needed for a general quantum-gravity symmetry theorem.
