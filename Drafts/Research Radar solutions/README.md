# Research Radar solutions

This directory answers the Research Radar problems selected on 2 October 2026. The live public export was successfully retrieved from [Research Radar](https://research-radar.gao-zien.chatgpt.site/problems); the unchanged source snapshot is `sources/radar-2026-10-02.json`. Each retained card has a separate directory and its complete original `problem.json`. The website itself has not been edited.

The user's exclusions are black-hole entropy, sewing/gluing, and null/Rindler work. BRST and singular-CPS cards contain independent questions as well as sewing-specific acceptance criteria. The working scope retains their independent calculations and explicitly defers their sewing requirements. The historical killed TMG card is retained for an evidence audit, without treating it as a request to resume its failed programme.

The user subsequently added a second stage: after completing these retained Radar questions, apply the new gluing formalism to [Gravitational sewing and relational time](../Gravitational%20sewing%20and%20relational%20time/README.md). That application is now written and checked in [a continuum quadratic radiative benchmark](../Gravitational%20sewing%20and%20relational%20time/radiative-observable-sewing.md): exact regional Green-response assembly, the corrected Weyl/Fock comparison, an obstruction to the closed-region tensor-product quotient, and an explicit boundary-reference-clock experiment. It is a specific later addition, not a request to resume every excluded sewing card.

## Retained problems and actual completion state

| Card | Directory | State against the original question |
|---|---|---|
| rr-003 | [Non-vacuum Virasoro orbit](rr-003%20Non-vacuum%20Virasoro%20orbit/solution.md) | Classical hyperbolic benchmark derived: bulk charge normalization, exact CPS/KKS pullback, global stabilizer quotient, monodromy, and global Darboux chart. Explicit bulk boundary assumptions. |
| intrinsic-cps-quantization | [Scalar reconstruction](Intrinsic%20CPS%20quantization/observable-reconstruction.md), [Maxwell gauge reconstruction](Intrinsic%20CPS%20quantization/maxwell-reconstruction.md), [earlier quantization](Intrinsic%20CPS%20quantization/solution.md) | Expanded to the user's four-part reconstruction question. For the nonlinear scalar cylinder, the closed equation ideal, continuous characters, derivations, declared smooth plots, and Peierls/CPS form are compared explicitly. The scalar reconstruction topology does not make the bracket jointly continuous. A second Maxwell benchmark reconstructs the full holonomy/flux cylinder, including large proper gauge and the normalized causal bracket. The earlier Virasoro representation alone did not answer this question. |
| rr-004 | [Kerr nonlinear QNM](rr-004%20Kerr%20nonlinear%20QNM/solution.md), [rotating source](rr-004%20Kerr%20nonlinear%20QNM/kerr-quadratic.md), [chiral identity](rr-004%20Kerr%20nonlinear%20QNM/chiral-source-identity.md), [invariant coefficient](rr-004%20Kerr%20nonlinear%20QNM/invariant-selected-coupling.md) | Selected-channel criterion met on the declared analytic domain: scalar pairing comparison; independently solved rotating DD source; normalized metric-CPS projection and gauge-completed invariant waveform coefficient. The outgoing residual-kernel theorem proves the full Einstein implication for any response in its class. A convergent infinite-angular metric construction remains a stronger unproved extension. |
| rr-005 | [BRST boundary anomaly](rr-005%20BRST%20boundary%20anomaly/solution.md), [requirement audit](rr-005%20BRST%20boundary%20anomaly/requirements-audit.md) | Original one-loop criterion met in the stated Abelian model: zero sourced anomaly class, consistency and controlled collar independence, including multi-current contacts. A finite charged algebra is an additional result. Its stronger continuum operator limit remains unproved; seam work deferred. |
| rr-006 | [Singular CPS](rr-006%20Singular%20CPS/solution.md) | Independent benchmark derived: SU(2) circle strata, invariant Poisson algebra, Haar radial operator, self-adjoint domain, and all-label spectrum. Self-sewing comparison deferred. |
| rr-011 | [Finite BRST model](rr-011%20Renormalized%20BRST%20perturbation/solution.md), [continuum model](rr-011%20Renormalized%20BRST%20perturbation/continuum.md) | Independent benchmarks derived: exact interacting mechanical equivalence, plus a local Stueckelberg BV/pAQFT comparison with explicit first-order counterterms and formal relative-evolution intertwining. This does not generalize to scalar QED without further work. Sewing chain maps deferred. |
| rr-015 | [Warped AdS3 TMG audit](rr-015%20Warped%20AdS3%20TMG%20audit/solution.md) | Historical negative result audited. The existing note does not prove a complete propagating representation basis; the reopening conditions remain unsatisfied. No new positive quantization claimed. |

“Derived” or “constructed” refers only to the explicit benchmark and assumptions in the corresponding solution. It does not promote a finite computer check into an infinite-dimensional theorem. The independent benchmark answers and the historical TMG audit are written. The intrinsic-CPS item now also contains the requested nonlinear observable-to-geometry reconstruction, with its topology and admissibility limits stated explicitly. The stronger continuum charge-operator programme is distinguished from rr-005's completed one-loop criterion. The rr-004 selected coefficient now has an invariant, normalized construction; its complete infinite-angular metric extension remains unproved. The [requirement audit](requirements-audit.md) distinguishes the original criteria from those stronger continuations. The requested second-stage application is also complete in its declared quadratic radiative scope; full Einstein gauge/ghost/frame assembly and clock backreaction remain stronger unproved continuations. This completes the requested scoped work, not the unrestricted research programmes.

## Excluded cards

| Card | Reason |
|---|---|
| 46850ca8-53de-46b7-8890-02e1571a5d1d | Minimal regional data for observable sewing: gluing. |
| rr-008 | Boundary Ward normalization for interacting sewing: gluing. |
| 57c6f5bb-64ee-43a2-ae2c-aaf55462ca5e | Framed gauge algebra and Wilson sewing: gluing. |
| rr-009 | General null CPS: null. |
| rr-014 | Administrative merge into rr-008: gluing; not an independently solved charge theorem. |
| rr-013 | Gravitational regional sewing: gluing. |
| rr-010 | Maxwell characteristic and compact gauge sewing benchmarks: null/gluing. |
| rr-001 | Polyhomogeneous null infinity: null. |
| 0008850a-71bc-4ff2-bdba-31dfeb99a785 | State sewing and Unruh: gluing/Rindler. |
| rr-007 | Glue first, then trace: gluing. |
| rr-012 | Rindler and AdS--Rindler reconstruction: Rindler. |
| rr-016 | Static-patch characteristic Maxwell: null; also historically killed. |
| rr-002 | Dynamical black-hole entropy: entropy. |

Kerr ringdown and the hyperbolic Virasoro orbit remain included: their questions do not ask for black-hole entropy. Merely working on a black-hole background is not an entropy exclusion.

## Evidence conventions

Each solution states its definitions and action or classical input, derives the result, and separates `Verified`, `Assumptions`, and `Not verified`. Verification directories contain exact tool requests and observed outputs, including failed harness attempts with their corrections identified in the notes. Source metadata in a Radar card are starting points, not independently verified claims. Literature-derived theorems are attributed separately from new calculations. No pre-existing note has been moved or overwritten, and no changes have been staged or committed.
