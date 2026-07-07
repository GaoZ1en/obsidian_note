# arXiv Research Profile

This file is the source profile for the daily arXiv recommendation automation. Keep it operational: update it when the recommendation behavior misses a paper, over-prioritizes a weak paper, or when the current research focus changes.

## Screening Scope

Always screen `hep-th`, `gr-qc`, and `math-ph`. Deduplicate by arXiv id and preserve primary plus cross-list categories.

Use author signal and topic signal together. Author signal improves recall and prioritization, but it does not replace technical relevance.

## Priority Tiers

### Tier 1: highest priority

Usually high-priority if technically substantive:

- Noether charges, conserved charges, surface charges, Wald charges, charge integrability, charge algebra, central extensions, flux and balance laws, and explicit constructions of gravitational or gauge-theory charges.
- Asymptotic symmetries and related symmetry structures: large gauge transformations, soft charges, memory effects, BMS-like symmetries, horizon symmetries, boundary symmetry algebras, and symmetry reduction or extension of phase space.
- Wald formalism, Iyer-Wald formalism, covariant phase space, presymplectic potential/current, symplectic current, Hamiltonian generators, reduced phase space, Poisson brackets, and symplectic/Poisson geometry when it directly organizes field-theory or gravity dynamics.
- Boundary and codimension-2 structures: corners, edge modes, corner modes, null infinity, horizons, finite boundaries, entangling surfaces, boundary conditions, boundary terms, corner terms, and boundary-supported phase-space degrees of freedom.

### Tier 2: medium priority

Do not ignore, especially when connected to Tier 1:

- Celestial holography, Carrollian limits or Carrollian structures, de Sitter horizons or de Sitter quantum gravity, black holes, black-hole thermodynamics, holography, AdS/CFT, and gravitational entropy when they involve charges, symmetries, phase space, boundary data, or quantization.
- Heat kernels, one-loop determinants, partition functions, mode sums, quasinormal/highest-weight methods, correlators, alternate quantization, or spectral data when they are useful for AdS/AdS3 quantization or related project calculations.
- Concrete models and formalisms useful as testbeds: Chern-Simons theory, BF or constrained BF theory, supergravity, massive gravity, linearized gravity, Maxwell/Proca/Chern-Simons systems, higher-spin theory, first-order gravity, Palatini/Cartan/Holst formalisms, and topological gravity.

### Tier 3: lower priority

Usually secondary unless directly coupled to Tier 1 or Tier 2:

- BV, BRST, L-infinity, cohomological or homological reformulations, deformation quantization, coadjoint orbits, representation theory, anomalies, index-like quantities, and other mathematically structured tools.
- Promote these only when they explicitly improve the charge, symmetry, CPS, boundary, or quantization workflow.

## Author-Signal Tracking

- Track field-defining big-name authors for broader cultivation. Edward Witten is the explicit anchor example; comparable authors should also be noticed when they post in `hep-th`, `gr-qc`, or `math-ph`.
- Since big-name authors do not post frequently, it is acceptable to log their nearby papers even when the topic is not directly in Tier 1 or Tier 2. Put such papers in `Author-signal watchlist` or `Skipped nearby papers`, not automatically in high-priority recommendations.
- Track rising-star or highly relevant younger researchers in this area: Chandrasekaran, Freidel, Geiller, Pranzetti, Ruzziconi, and Speranza.
- Treat Romain Ruzziconi as a strong author signal for Carrollian holography, celestial/flat-space holography, asymptotic or null-boundary symmetries, and charge/CPS-adjacent work.
- If one of these rising-star authors appears on a paper touching Tier 1 or Tier 2 themes, treat it as a strong candidate for high-priority or medium-priority coverage.
- In every overview, separate technical relevance from author-signal relevance.

## Terminology Handling

- Barnich-Brandt is CPS-adjacent charge/cohomology terminology. Do not use it as an independent screening anchor, and do not promote a paper merely because it mentions Barnich-Brandt.
- If Barnich-Brandt appears together with Noether charges, asymptotic symmetries, Wald/CPS, or surface-charge algebra, treat it as supporting evidence for Tier 1 relevance.

## Negative Filters

Usually skip pure phenomenology, observational cosmology, astrophysical modeling, numerical relativity, generic string landscape material, or generic AdS/CFT papers unless they contain a concrete formalism, calculation, or boundary/charge/quantization structure useful for current projects.

## Reason Codes

Attach compact reason codes to each recommendation:

- `T1-charge`: charges, integrability, algebras, central terms, or flux/balance laws.
- `T1-symmetry`: asymptotic, boundary, large-gauge, horizon, or soft symmetry structures.
- `T1-Wald-CPS`: Wald/Iyer-Wald/CPS, presymplectic currents, Hamiltonian generators, or reduced phase space.
- `T1-boundary`: corner, edge, null-infinity, horizon, finite-boundary, or entangling-surface data.
- `T1-symplectic`: symplectic/Poisson geometry directly organizing a field theory or gravity problem.
- `T2-celestial-carrollian`: celestial, Carrollian, null-boundary, or asymptotic-scattering relevance.
- `T2-dS-BH-holography`: de Sitter, black-hole, entropy, holography, or AdS/CFT relevance.
- `T2-spectral`: heat kernels, one-loop determinants, partition functions, mode sums, correlators, or spectral data.
- `T2-model`: Chern-Simons, BF, supergravity, massive/linearized gravity, Maxwell/Proca, higher-spin, or first-order gravity testbeds.
- `T3-math`: BV, BRST, L-infinity, cohomological, representation-theoretic, anomaly, or index-like structures.
- `A-big-name`: field-defining author signal.
- `A-rising-star`: author signal from the current related-work watchlist.
- `V-update`: updated version of an already tracked paper.
- `M-correction`: included because a prior missed-paper correction says similar papers should be caught.

## Updated Versions Of Tracked Papers

Daily runs should include an `Updated versions of tracked papers` subsection when relevant. Check for version changes in papers already represented in `Literature Notes/`, especially recent detailed notes and recent arXiv screening outputs.

For every version update, record:

- existing local note path;
- old paper id/version;
- latest arXiv version;
- source URL;
- whether the comments or abstract changed in a way that affects reading priority.

Do not rewrite existing literature notes during the daily screening run unless explicitly asked.

## Missed-Paper Correction Loop

When the user identifies a missed or over-prioritized paper, add a short correction note here rather than only adjusting the automation prompt. Each correction should state:

- paper id and title;
- expected placement: high, medium, secondary, watchlist, or skipped;
- reason codes that should have caught it;
- trigger phrases, authors, categories, or formulas that matter;
- what should change in future screening behavior.

## Breakdown Depth

High-priority papers should receive deep breakdowns when source access is sufficient, regardless of page count. Do not treat a short high-priority paper as permission to write a short note: page count only determines whether the workflow is an ordinary deep breakdown or the long-paper monograph mode below. Recast the paper in the local research vocabulary: identify the dynamical fields or algebraic data, boundary conditions, gauge choices and reductions, presymplectic/symplectic or Poisson structure, charge and symmetry data, and formulas that can transfer to the AdS/CPS/edge-mode projects. Make clear where the paper's notation or conventions differ from the vault's working conventions.

Medium-priority papers should not be dropped. At minimum, give a compact technical breakdown in the overview; create a shorter detailed note when the transferable method, formula, or reference value is likely useful later.

### Depth Calibration Note

Use `Literature Notes/Charges of supergravity (2604.09928v1).md` as the local calibration example for high-priority deep breakdowns. Before writing the first high-priority detailed note in a daily run, inspect that note's structure and representative derivation sections. The goal is not to copy its headings, but to match its behavior:

- define the theory before discussing conclusions;
- write the field decomposition, covariant derivatives, curvatures, transformations, symplectic potential, charges, and charge algebra when those objects exist in the source paper;
- keep the relevant equations in the note body rather than replacing them with prose;
- translate paper-specific conventions into the vault's working conventions;
- end with concrete project extensions rather than only a reading summary.

### Deep Breakdown Acceptance Criteria

A high-priority detailed note should not read like an expanded abstract. Before writing the note, inspect the full source structure and produce a paper decomposition. The final note should include, when the paper contains the corresponding material:

- a section-by-section source map explaining what each major section proves or constructs;
- a notation and convention dictionary, including fields, gauge parameters, boundary data, indices, signs, normalizations, and any source/response split;
- an equation ledger of the formulas that carry the paper, preferably with source equation numbers when available, plus a local translation of each formula;
- a derivation chain showing which assumptions and intermediate results lead to the main theorem, charge formula, symplectic form, obstruction, or partition function;
- a boundary/CPS/charge dictionary identifying sources, responses, constraints, gauge directions, boundary modes, symplectic or Poisson data, charges, and quotient operations;
- a comparison with nearby vault projects or notes that states exactly which object can be reused and which convention must be changed first;
- a verification section after the decomposition, not instead of the decomposition.

For a high-priority paper, `Source-derived` should contain precise source claims and formulas, not only prose summaries. `Checked` should contain independent checks only. `Not independently verified` should describe remaining formula chains or theorem steps, not compensate for the absence of a technical skeleton.

If the paper is selected as high-priority but source access is insufficient for this level of decomposition, say so in the overview and either postpone the detailed note or label it explicitly as a preliminary source map. A preliminary source map is an unfinished placeholder, not the completed treatment of a high-priority paper.

### Long High-Priority Papers

For long high-priority papers, especially papers around 30 pages or longer in theoretical physics, do not solve the length problem by selecting only a few sections. Shorter papers can also trigger this mode when they are technically dense, appendix-heavy, or built around a long formula chain. Assume token budget is available. The correct response is to split the work into modules and cover the whole paper.

Use a monograph-mode workflow:

- build a complete section tree first, including appendices when they contain definitions, proofs, examples, or computations used by the main text;
- assign section clusters to paper-breakdown subagents, not verification-only subagents;
- require each cluster breakdown to include local purpose, definitions, assumptions, important equations, derivation steps, and links to later use in the paper;
- merge the cluster outputs into one master detailed note with a global notation dictionary, global equation ledger, and global derivation map;
- add a `How to read this long paper` section that distinguishes essential, technical-reference, and optional-background sections, but still records the content of every section;
- use separate follow-up or appendix notes only when a single note would become hard to navigate, and link them from the master note for that day.

For long papers, a high-priority detailed note may be much longer than ordinary daily notes. A short note is never an acceptable completed treatment of a high-priority paper; it is acceptable only when explicitly labeled as `preliminary source map` and the overview says that the full deep or monograph-mode breakdown remains unfinished.

## Formula And Computation Checks

For formula-heavy papers, try to reproduce as much of the calculational chain as the available time, sources, and tools allow. This is stronger than a representative spot check, but it still requires honest reporting of what was and was not checked.

Use:

- Mathematica for ordinary algebra, variational manipulations that are not tensor-package-specific, mode sums, determinant identities, special-function reductions, and consistency checks.
- xAct for tensor, covariant-derivative, variational, CPS, or differential-geometry identities.
- Sage for representation theory, Lie algebra, character, Young-diagram, or discrete-algebra checks.

Do not mark a claim as checked unless an explicit computation or comparable verification was actually performed. If source inspection was done without independent reproduction, put the claim under `Source-derived` or `Not independently verified`.

When a full reproduction is too large, split it into smaller verifiable targets and record the exact boundary of the verification.

## Weekly Digest

Weekly digest runs should read the daily overview files from the previous workweek and produce:

- top papers worth actually reading;
- medium-priority papers worth upgrading to detailed notes;
- author-signal items worth remembering;
- version updates that matter;
- missed-paper or over-prioritization patterns;
- suggested edits to this profile.

The weekly digest should not modify old daily overviews or detailed paper notes.
