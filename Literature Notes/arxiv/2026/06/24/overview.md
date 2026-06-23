---
title: arXiv research recommendations 2026-06-24
date: 2026-06-24
summary: "Daily screening of hep-th, gr-qc, and math-ph for boundary, charge, CPS, Carrollian, Maxwell, and spectral-method relevance."
tags: []
---

# Today at a glance

Beijing run date: 2026-06-24. Official arXiv new-list date checked: Tuesday, 23 June 2026.

Strongest match today:

1. [[A Linearized Obstruction to the Supersymmetric Extension of Conformal Boundary Conditions in Euclidean Gravity (2606.22810v1)|A Linearized Obstruction to the Supersymmetric Extension of Conformal Boundary Conditions in Euclidean Gravity]] - high priority. Technical relevance: finite-boundary Euclidean gravity, Witten/York conformal boundary data, LS ellipticity, supergravity boundary conditions, and source/response polarization. Author-signal relevance: none. Reason codes: `T1-boundary`, `T1-Wald-CPS`, `T2-model`.
1. [[Holonomies and Boundary Symmetries in the Discrete Warped Chern-Simons Gravity (2606.22028v1)|Holonomies and Boundary Symmetries in the Discrete Warped Chern-Simons Gravity]] - high priority but source-derived only. Technical relevance: three-dimensional Chern-Simons gravity, boundary holonomies, monodromy sectors, boundary charges, and warped thermodynamics. Author-signal relevance: none. Reason codes: `T1-symmetry`, `T1-boundary`, `T1-charge`, `T2-model`, `T2-dS-BH-holography`.
1. [[Hamiltonian formulation of Carrollian Maxwell theory in Deformed Light-cone Kaluza-Klein-like Null reduction (2606.22050v1)|Hamiltonian formulation of Carrollian Maxwell theory in Deformed Light-cone Kaluza-Klein-like Null reduction]] - medium priority with a detailed note. Technical relevance: null reduction, Carrollian Maxwell, first-class Gauss constraint, and Hamiltonian constraint bookkeeping. Author-signal relevance: none. Reason codes: `T2-celestial-carrollian`, `T2-model`, `T1-symmetry`.
1. [[Gauge invariant generalizations of the Proca equation and the Yang-Mills-Proca equation (2606.20828v1)|Gauge invariant generalizations of the Proca equation and the Yang-Mills-Proca equation]] - medium priority with a short detailed note. Technical relevance: gauge-invariant Proca/Yang-Mills-Proca testbed for massive vector constraints. Author-signal relevance: none. Reason codes: `T2-model`, `T1-symmetry`.

No active missed-paper correction was present in `profile.md`. No watched-author match was found in the new-list pages for Witten, Chandrasekaran, Freidel, Geiller, Pranzetti, or Speranza.

# High-priority recommendations

## A Linearized Obstruction to the Supersymmetric Extension of Conformal Boundary Conditions in Euclidean Gravity

- arXiv: [2606.22810v1](https://arxiv.org/abs/2606.22810)
- Categories: `hep-th`; cross-listed `gr-qc`, `math-ph`
- Reason codes: `T1-boundary`, `T1-Wald-CPS`, `T2-model`
- Technical relevance: high. Author-signal relevance: none.
- Detailed note: [[A Linearized Obstruction to the Supersymmetric Extension of Conformal Boundary Conditions in Euclidean Gravity (2606.22810v1)]]

Source claim: Witten's finite-boundary conformal condition fixes the boundary conformal class and mean curvature while leaving the trace-free extrinsic curvature as conjugate response; the paper claims that this bosonic polarization has no separated linear half-supersymmetric completion in four-dimensional linearized minimal Euclidean supergravity at the flat-half-space, highest-derivative symbol level.

Transferable mechanism: The useful object is not a finished charge formula but a sharp boundary-polarization obstruction. Supersymmetry tries to make the chiral gravitino boundary datum close back onto $K_{ab}^{\mathrm{tf}}$, while the Witten/York boundary condition deliberately leaves $K_{ab}^{\mathrm{tf}}$ unfixed as a Neumann response.

Use case: Treat this as a finite-boundary diagnostic for AdS/CPS and edge-mode projects: before imposing a supersymmetric or gauge-compatible boundary multiplet, identify which data are sources, which are responses, and which are quotient/gauge directions.

Verification status: official abstract and HTML were inspected; no xAct/Mathematica reproduction or ancillary script run was performed.

## Holonomies and Boundary Symmetries in the Discrete Warped Chern-Simons Gravity

- arXiv: [2606.22028v1](https://arxiv.org/abs/2606.22028)
- Categories: primary `hep-th`; cross-listed `gr-qc`, `math-ph`
- Reason codes: `T1-symmetry`, `T1-boundary`, `T1-charge`, `T2-model`, `T2-dS-BH-holography`
- Technical relevance: high. Author-signal relevance: none.
- Detailed note: [[Holonomies and Boundary Symmetries in the Discrete Warped Chern-Simons Gravity (2606.22028v1)]]

Source claim: The paper builds a discrete warped Chern-Simons description of three-dimensional warped gravity in which ordered boundary holonomy products and monodromies replace continuous gauge connections along noncontractible cycles. It classifies physical sectors by conjugacy classes of the non-Abelian monodromy and uses the extra $U(1)$ holonomy as warped charge data.

Transferable mechanism: This is directly useful as a 3d gravity/CS example where the boundary phase-space labels are holonomy and monodromy data rather than local smooth-geometry fields. It is close to Wilson-loop, boundary charge, and residual symmetry language.

Use case: Compare with AdS3 Chern-Simons boundary conditions, warped AdS3/WCFT charge assignments, and edge-mode treatments where noncontractible-cycle data survive local flatness constraints.

Verification status: abstract and selected HTML sections were inspected. I did not reproduce the discrete holonomy construction or entropy relation.

# Medium-priority technical candidates

## Hamiltonian formulation of Carrollian Maxwell theory in Deformed Light-cone Kaluza-Klein-like Null reduction

- arXiv: [2606.22050v1](https://arxiv.org/abs/2606.22050)
- Categories: `hep-th`
- Reason codes: `T2-celestial-carrollian`, `T2-model`, `T1-symmetry`
- Technical relevance: medium-high. Author-signal relevance: none.
- Detailed note: [[Hamiltonian formulation of Carrollian Maxwell theory in Deformed Light-cone Kaluza-Klein-like Null reduction (2606.22050v1)]]

Source claim: A complex Maxwell field is null-reduced in a deformed light-cone/Bargmann background, then Carrollian limits are taken in Hamiltonian phase space with independent canonical scalings. The paper claims that both magnetic and electric Carrollian Maxwell sectors preserve a first-class $U(1)$ Gauss constraint.

Transferable method/formula: The transferable point is constraint bookkeeping: take the Carroll/null limit after deriving canonical variables and constraints, then check whether Gauss law remains first class. This is relevant to null-boundary Maxwell and edge-mode reductions.

Likely use case: Recheck whether electric/magnetic Carroll sectors in local Maxwell notes keep or lose proper gauge transformations under a chosen scaling.

Reason it is not high-priority today: It does not construct boundary charges, null flux balance, a cut symplectic form, or a large/proper gauge quotient. It is a Hamiltonian model note rather than a CPS boundary-charge paper.

## Gauge invariant generalizations of the Proca equation and the Yang-Mills-Proca equation

- arXiv: [2606.20828v1](https://arxiv.org/abs/2606.20828)
- Categories: `math-ph`
- Reason codes: `T2-model`, `T1-symmetry`
- Technical relevance: medium. Author-signal relevance: none.
- Detailed note: [[Gauge invariant generalizations of the Proca equation and the Yang-Mills-Proca equation (2606.20828v1)]]

Source claim: The paper proposes gauge-invariant systems containing the ordinary Proca equation among their solutions by introducing extra vector fields, then extends the construction to several masses and Yang-Mills-Proca equations.

Transferable method/formula: It may provide a small massive-vector testbed for comparing Stueckelberg-like gauge restoration, extra-field formulations, and Proca/Chern-Simons constraint structures.

Likely use case: Keep as a reference when checking whether a massive vector model is genuinely gauge restored or only embeds Proca solutions in a larger system.

Reason it is not high-priority today: It is equation-level and does not discuss CPS, boundary symplectic structure, charge algebras, or edge modes.

## Heat Kernel and Resurgence

- arXiv: [2606.21909v1](https://arxiv.org/abs/2606.21909)
- Categories: primary `math-ph`; cross-listed `hep-th`, `math.CV`, `math.DG`
- Reason codes: `T2-spectral`, `T3-math`
- Technical relevance: medium. Author-signal relevance: none.

Compact breakdown: The paper studies resurgent structure of short-time heat-kernel asymptotics using Picard-Lefschetz theory on complexified path space. Its source claim is that the heat kernel has a 1-Gevrey small-time expansion whose Borel transform detects complex-geometric data beyond the real geodesic sector, with a confirming test on $H^2$. Transferable use is conceptual rather than immediate: it may help organize nonperturbative ambiguities in heat-kernel and determinant calculations. It is not high-priority today because it does not directly address AdS mode sums, boundary conditions, or one-loop determinants in the current project notation.

## Statistical Physics of Planar Carroll Systems

- arXiv: [2606.23039v1](https://arxiv.org/abs/2606.23039)
- Categories: primary `math-ph`; cross-listed `hep-th`
- Reason codes: `T2-celestial-carrollian`, `T1-symplectic`, `T3-math`
- Technical relevance: medium. Author-signal relevance: none.

Compact breakdown: The paper builds statistical mechanics for planar Carroll systems using central extensions and Souriau geometric thermodynamics. The source claim is that rotating systems with planar Carroll central charges have a well-defined partition function, logarithmic area-scaling entropy, and a two-dimensional ideal-gas pressure law. Transferable use is to compare Carrollian moment-map thermodynamics with null-boundary or horizon thermodynamic variables. It is not high-priority today because it is not a gauge/gravity boundary-charge construction.

## The conformal null string in d+2 and d dimensions

- arXiv: [2606.22498v1](https://arxiv.org/abs/2606.22498)
- Categories: `hep-th`
- Reason codes: `T2-celestial-carrollian`, `T3-math`
- Technical relevance: medium-low. Author-signal relevance: none.

Compact breakdown: The paper relates a conformal string in Dirac $d+2$ dimensional conformal space to a $d$-dimensional tensionless/null string through slice choices and Dirac reduction, mapping a Virasoro semidirect Kac-Moody constraint algebra to Carrollian-Weyl symmetry. It is useful as a small algebraic reference for Carrollian reductions but not directly tied to field-theory boundary charges today.

# Secondary candidates

## N=1 Supersymmetry, Weil-Petersson Volume Recursion, and a Spectral Curve

- arXiv: [2606.20796v1](https://arxiv.org/abs/2606.20796)
- Categories: primary `hep-th`; cross-listed `math-ph`
- Reason codes: `T2-spectral`, `T3-math`
- Technical relevance: secondary. Author-signal relevance: none.

This derives the Stanford-Witten-Norbury volume recursion from a spectral curve. It is mathematically adjacent to gravity path-integral and recursion technology, but not close enough to current CPS/boundary projects to prioritize today.

## Non-relativistic limits of N=4 supersymmetric Yang-Mills theory and S-duality

- arXiv: [2606.21494v1](https://arxiv.org/abs/2606.21494)
- Categories: `hep-th`
- Reason codes: `T1-symmetry`, `T2-model`
- Technical relevance: secondary. Author-signal relevance: none.

This studies nonrelativistic limits, S-duality, monopole moduli-space quantum mechanics, theta terms, and electric/magnetic one-form symmetries. It is a symmetry-limit paper, but not close enough to null-boundary or Carrollian Maxwell to outrank the direct Carrollian Maxwell submission.

## The Entanglement Wedge Polygon

- arXiv: [2606.21081v1](https://arxiv.org/abs/2606.21081)
- Categories: `hep-th`
- Reason codes: `T2-dS-BH-holography`, `T1-boundary`
- Technical relevance: secondary. Author-signal relevance: none.

This proposes a codimension-1 entanglement wedge polygon in holographic spacetimes and studies examples in AdS. It is relevant to holographic subregion geometry, but the screening profile today favors explicit charge, CPS, boundary, and Carrollian structures.

# Author-signal watchlist

No new-list author match was found for the tracked names in `profile.md`: Edward Witten, Chandrasekaran, Freidel, Geiller, Pranzetti, or Speranza.

Technical Witten signal, not author signal: arXiv:2606.22810v1 is centered on Witten's conformal boundary condition, but Witten is not an author; it is therefore not tagged `A-big-name`.

# Updated versions of tracked papers

Checked recent detailed notes and recent arXiv screening outputs represented in `Literature Notes/`.

1. `Literature Notes/Charges of supergravity (2604.09928v1).md`
   - Old paper id/version in note: `2604.09928v1`
   - Latest arXiv version: `2604.09928v2`
   - Source URL: [https://arxiv.org/abs/2604.09928](https://arxiv.org/abs/2604.09928)
   - Comments/abstract priority effect: v2 is marked "improved version prepared for publication"; this affects reading priority because the local detailed note is on v1 and the paper is directly in the charge/supergravity track. Reason codes: `V-update`, `T1-charge`, `T1-Wald-CPS`, `T2-model`.

1. `Literature Notes/Covariant phase space and the semi-classical Einstein equation (2510.19939v1).md`
   - Old paper id/version in note: `2510.19939v1`
   - Latest arXiv version: `2510.19939v2`
   - Source URL: [https://arxiv.org/abs/2510.19939](https://arxiv.org/abs/2510.19939)
   - Comments/abstract priority effect: v2 was revised on 2026-04-14; the abstract remains directly relevant to semi-classical CPS and Hollands-Iyer-Wald identities. Reason codes: `V-update`, `T1-Wald-CPS`, `T1-symplectic`.

1. `Literature Notes/Black hole thermodynamics is around the corner (2510.04499v1).md`
   - Old paper id/version in note: `2510.04499v1`
   - Latest arXiv version: `2510.04499v2`
   - Source URL: [https://arxiv.org/abs/2510.04499](https://arxiv.org/abs/2510.04499)
   - Comments/abstract priority effect: v2 is the version to appear in CQG and includes the same corner/Wald-entropy theme; update is worth noting but lower than the two CPS/supergravity updates above. Reason codes: `V-update`, `T1-boundary`, `T1-Wald-CPS`, `T2-dS-BH-holography`.

No update found today for: `2604.11884v2`, `2604.07334v1`, `2604.13163v1`, `2601.07915v1`, `2510.07017v1`.

# Reading order

1. Read arXiv:2606.22810 first. It gives the cleanest finite-boundary source/response obstruction and directly informs how to phrase boundary data in CPS language.
1. Read arXiv:2606.22028 next for a 3d Chern-Simons/warped-gravity boundary-holonomy example.
1. Read arXiv:2606.22050 after that as a compact Hamiltonian constraint check for Carrollian Maxwell reductions.
1. Skim arXiv:2606.20828 only if Proca/Yang-Mills-Proca gauge restoration becomes relevant to the Proca-Chern-Simons notes.
1. Keep arXiv:2606.21909 and arXiv:2606.23039 as method references for heat kernels/resurgence and Carrollian thermodynamics.

# Why these match my current projects

The strongest match is the boundary-polarization theme. arXiv:2606.22810 and arXiv:2606.22028 both force the question of what the real boundary data are: conformal source plus extrinsic-curvature response in one case, holonomy/monodromy sector plus boundary charge data in the other. That is directly aligned with finite-boundary, CPS, charge, corner, and edge-mode work.

The Maxwell/Proca items are testbed papers. arXiv:2606.22050 is useful because it keeps the Gauss constraint visible during a Carrollian/null reduction. arXiv:2606.20828 is useful because it gives a small massive-vector gauge-restoration model, though it does not yet speak the CPS language.

The heat-kernel and Carrollian-statistical papers match secondary threads: one-loop/spectral methods for AdS and thermodynamic structures for Carrollian or null systems. They are worth logging but not reading before the boundary/CPS papers.

# Retrospective context

No previous daily `overview.md` files were found under `Literature Notes/arxiv/`. I lightly scanned the existing monthly arXiv screening notes for January, February, and March 2026. Today's arXiv:2606.22810 naturally follows the finite-null-boundary and corner/edge-mode themes highlighted in February and March, while arXiv:2606.22028 follows the January note's interest in 3d gauge theories and Chern-Simons/BF quantization. The previous recommendations remain unchanged; today's papers add a finite-boundary supergravity obstruction and a discrete warped-CS holonomy example rather than replacing earlier priorities.

# Skipped nearby papers

- [2606.20790](https://arxiv.org/abs/2606.20790), Complexity Inequalities for Quantum Subsystems. Reason codes: `T2-dS-BH-holography` nearby only. Skipped because it is complexity/entanglement-inequality oriented and not a charge, boundary condition, CPS, or spectral-calculation paper.
- [2606.21079](https://arxiv.org/abs/2606.21079), Linear Growth of Holographic Time-like Entanglement Entropy and Kasner exponents. Reason codes: `T2-dS-BH-holography`. Skipped because it is holographic extremal-surface dynamics, not a boundary-charge or phase-space construction.
- [2606.21537](https://arxiv.org/abs/2606.21537), Near-horizon modifications in finite N holography. Reason codes: `T2-dS-BH-holography`, `T2-spectral`. Skipped because it is finite-$N$ reconstruction/nonlocality and spectral form factor oriented; it is interesting but less aligned than the Carrollian and finite-boundary items.
- [2606.21522](https://arxiv.org/abs/2606.21522), Asymptotically safe quantum gravity and its phenomenology - a review. Reason codes: `T2-dS-BH-holography` nearby. Skipped because the profile deprioritizes broad phenomenology/review material without a direct boundary, charge, or CPS construction.
- [2606.22204](https://arxiv.org/abs/2606.22204), AdS black holes with nonminimal $F^{\alpha\beta}F^{\gamma\lambda}R_{\alpha\gamma}R_{\beta\lambda}$ coupling. Reason codes: `T2-dS-BH-holography`, `T2-model`. Skipped because it is black-hole thermodynamic phase-transition modeling, not boundary-charge formalism.
- [2606.23650](https://arxiv.org/abs/2606.23650), Position-Space Renormalization and Half-Space Truncations in $\phi^4_4$. Reason codes: `T3-math`, boundary-adjacent. Skipped because the half-space observable technology is mathematically nearby but not currently tied to gauge/gravity boundary data.

# Source queries

Official arXiv sources used:

- [hep-th new](https://arxiv.org/list/hep-th/new), showing new listings for Tuesday, 23 June 2026; total 153 entries, 35 new submissions.
- [gr-qc new](https://arxiv.org/list/gr-qc/new), showing new listings for Tuesday, 23 June 2026; total 146 entries, 50 new submissions.
- [math-ph new](https://arxiv.org/list/math-ph/new), showing new listings for Tuesday, 23 June 2026; total 124 entries, 18 new submissions.

Candidate abs/html pages inspected:

- [2606.22810](https://arxiv.org/abs/2606.22810), [HTML](https://arxiv.org/html/2606.22810)
- [2606.22028](https://arxiv.org/abs/2606.22028), [HTML](https://arxiv.org/html/2606.22028)
- [2606.22050](https://arxiv.org/abs/2606.22050), [HTML](https://arxiv.org/html/2606.22050)
- [2606.20828](https://arxiv.org/abs/2606.20828), [HTML](https://arxiv.org/html/2606.20828)
- [2606.21909](https://arxiv.org/abs/2606.21909), [HTML](https://arxiv.org/html/2606.21909)
- [2606.23039](https://arxiv.org/abs/2606.23039), [HTML](https://arxiv.org/html/2606.23039)
- [2606.22498](https://arxiv.org/abs/2606.22498), [HTML](https://arxiv.org/html/2606.22498)

Author-signal checks:

- Searched the official new-list pages for Witten, Chandrasekaran, Freidel, Geiller, Pranzetti, and Speranza.
- No author match found.
- arXiv:2606.22810 mentions Witten's conformal boundary condition as technical background, but that is not an `A-big-name` author signal.

Deduplication decisions:

- arXiv:2606.22028 appears as a primary `hep-th` new submission and as a cross-list in `gr-qc` and `math-ph`; kept once with primary plus cross-list categories preserved.
- Other recommended items were kept by arXiv id; no duplicate recommendation entries were created.

Retrieval failures:

- No arXiv outage or listing failure observed.
- Formula-rich HTML sometimes suppresses or mangles displayed equations; for detailed notes I therefore mark formula-level claims as source-derived unless independently checked.

# Missed-paper correction follow-up

`profile.md` contains the missed-paper correction loop instructions but no active correction entries. No current paper was included because of an active correction. No edit was made to `profile.md`.
