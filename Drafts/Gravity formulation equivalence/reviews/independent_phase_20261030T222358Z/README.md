# Independent gravity-CS phase investigation and supplied follow-ups

## Main result

The balanced action-derived Hermitian augmentation B_0 has exact square equal to the specified common Casimir on all 24 real field-plus-multiplier components, an exact anticommuting real complex structure, and eta=0. Its spectral-zeta and common-Casimir determinants coincide, including the phase, on the complete L2 domain with the stated spatial-first finite part.

The later supplied normalized family B_mu=B_0+mu P_b has a purely local separate-spectral phase defect,

eta_Bmu(0)=V_ren mu(mu^2+36)/(8pi^2),

log Z_zeta-log Z_common=-i V_ren mu(mu^2+36)/(32pi),

with no real multiplicative anomaly. This is a regularization/gauge-normalization defect, not an unavoidable physical gauge dependence. The nonlocal comparison uses compatibility of complete equivariant multiplicity traces with the spatially renormalized identity/orbital trace. It is not a claim of finite-radius trace cyclicity.

**Read the trace-order addendum with the frozen mu report:** its original wording about equality before the spatial finite part is too strong if interpreted at finite radius. No frozen report was edited to hide that correction.

## Reports and provenance

- [Initial independent frozen result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/01_frozen_independent_result.md>): recorded before computing the parent's supplied family.
- [Independent balanced completion](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/02_independent_balanced_completion.md>): action, normalization, complete domains, gaps, square, symmetry, and regulator equality.
- [Separately supplied mu-family investigation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/03_supplied_mu_family.md>): independently computed coefficient and three checks, before reading the parent's new synthesis.
- [Supplied-text audit and trace-order correction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/04_supplied_text_audit_and_trace_addendum.md>): explicit finite-radius qualification, scope of imported trace/source results, and Gaussian BRST audit.
- [Revised supplied-text readback](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/05_revised_supplied_text_audit.md>): revised ghost density, ungaugefixed closure, and separation of imported cycle/density versus metric-trace input.

The root AGENTS and math-computation instructions were read. No candidate, synthesis, or prior research note was consulted during the blind derivation. The parent supplied the mu family only after the balanced operator check; no phase coefficient was supplied. Only after both calculations were preserved was the specifically requested new parent note read for a separate audit. Earlier parent source reports and evidence were not inspected. No child delegation was available at this session's maximum depth.

## Actual successful evidence

Each output below was actually produced by Wolfram and read back. All four successful runs returned no messages.

| Calculation | Readable actual output | Literal actual input | Raw returned artifact |
|---|---|---|---|
| 24-by-24 gravity operator | [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/operator_checks.txt>) | [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_01_operator.wl>) | [raw](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/raw_01_balanced_operator.json>) |
| Mu spectral asymptotics and shear | [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/mu_family_checks.txt>) | [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_02_mu_asymptotics.wl>) | [raw](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/raw_02_mu_asymptotics.json>) |
| Exact and numerical eta counting | [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/eta_counting_checks.txt>) | [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_03_eta_counting.wl>) | [raw](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/raw_03_eta_counting.json>) |
| Independent inserted local heat variation | [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/eta_local_variation_checks.txt>) | [input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/invocation_04_eta_variation.wl>) | [raw](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/raw_04_eta_variation.json>) |

Literal input files retain their original Export destinations and must not be replayed without redirecting those paths. Safe no-export reproduction inputs are [the operator script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/operator_checks.wl>) and [the three mu-family modules](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/mu_checks.wl>).

An initial [invalid exploratory output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_phase_20261030T222358Z/raw_00_invalid_exploration.json>) is retained for transparency. Its malformed ArrayFlatten symmetry construction and I->0 principal-symbol substitution were not used as evidence. The successful operator run corrected both.

## Remaining boundary

The balanced result is established without importing a polar trace-cyclicity theorem. The mu local eta coefficient is independently established by local operator variation. Full nonlocal mu-family comparison is established conditional on the explicit complete orbital-trace compatibility input; this independent investigation did not separately reproduce that earlier theorem. The source-dependent metric coefficient/product and finite-fiber metric-cycle transfer are also imported in the supplied note, not newly proved by this review. Nonlinear BV/measure transport, global/chiral framing, modular phases, and Hilbert-space measure equivalence remain outside the demonstrated result.
