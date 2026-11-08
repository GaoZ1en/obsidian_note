# arXiv Research Profile

This file is the research profile for the daily arXiv recommendation automation. It is authoritative for screening scope, priority, author signals, reason codes, breakdown depth, and verification expectations. Operational sequencing, output paths, file safety, and daily/weekly workflow rules belong in `Literature Notes/arxiv/AGENTS.md`. Update this profile when the recommendation behavior misses a paper, over-prioritizes a weak paper, or when the current research focus changes.

## Screening Scope

Always screen `hep-th`, `gr-qc`, and `math-ph`. Deduplicate by arXiv id and preserve primary plus cross-list categories.

## Screening And Placement Rules

Choose priority by technical relevance and explain the reason in ordinary prose. The codes below are optional shorthand, not fields that must be filled in for every paper. Consider authorship, version updates, and recorded missed papers when useful, while keeping the technical reason for reading a paper clear.

### Daily Selection Calibration — 2026-09-22

The daily target is **3–5 high-priority papers for deep reconstruction and derivation checks, plus around 10 medium-priority papers for brief sketches**. These are workload targets, not quotas: do not pad a thin issue; rank a crowded issue by relevance and defer overflow rather than routinely expanding the deep queue. An exceptional excess needs a concrete reason in the overview.

Keep screening the complete inventory. Reserve daily high priority for papers with a concrete use in the current CPS, regional sewing, boundary-charge, or AdS quantization work, and state that use before admitting a paper to the deep queue. Topic overlap, an interesting model, or an opportunity to audit questionable claims is insufficient by itself. Useful but less immediate material belongs in the medium sketch selection or deferred candidates. Previously untracked replacements must meet the same relevance threshold; do not turn the daily run into a backlog-clearing exercise.

### Tier 1: Highest Priority

Strong relevance signals, subject to the daily immediate-use threshold above:

- `T1-charge`: Noether, conserved, surface, or Wald charges; integrability, charge algebra, central extensions, flux/balance laws, and explicit gravitational or gauge-theory charge constructions.
- `T1-symmetry`: asymptotic, boundary, large-gauge, horizon, soft, or BMS-like symmetries; memory effects; and symmetry reduction or phase-space extension.
- `T1-Wald-CPS`: Wald/Iyer-Wald formalism, covariant phase space, presymplectic potentials or currents, symplectic currents, Hamiltonian generators, and reduced phase space.
- `T1-boundary`: corners, edge or corner modes, null infinity, horizons, finite boundaries, entangling surfaces, boundary conditions or terms, and boundary-supported phase-space degrees of freedom.
- `T1-symplectic`: symplectic or Poisson geometry when it directly organizes field-theory or gravity dynamics.

### Tier 2: Medium Priority

Do not ignore, especially when connected to Tier 1:

- `T2-celestial-carrollian`: celestial holography, Carrollian limits or structures, null-boundary physics, and asymptotic scattering.
- `T2-dS-BH-holography`: de Sitter horizons or quantum gravity, black holes and thermodynamics, gravitational entropy, holography, and AdS/CFT when connected to charges, symmetries, phase space, boundary data, or quantization.
- `T2-spectral`: heat kernels, one-loop determinants, partition functions, mode sums, quasinormal or highest-weight methods, correlators, alternate quantization, and spectral data useful for AdS/AdS3 quantization or related calculations.
- `T2-model`: Chern-Simons, BF or constrained BF theory, supergravity, massive or linearized gravity, Maxwell/Proca/Chern-Simons systems, higher-spin theory, first-order gravity, Palatini/Cartan/Holst formalisms, and topological gravity as concrete testbeds.

### Tier 3: Lower Priority

Usually secondary unless directly coupled to Tier 1 or Tier 2:

- `T3-math`: BV, BRST, L-infinity, cohomological or homological reformulations, deformation quantization, coadjoint orbits, representation theory, anomalies, index-like quantities, and other mathematically structured tools.
- Promote these only when they explicitly improve the charge, symmetry, CPS, boundary, or quantization workflow.

### Cross-Cutting Placement Modifiers

- `A-big-name`: field-defining author signal. Track Edward Witten and comparable authors for broader cultivation; place technically nearby but non-Tier-1/2 papers in `Author-signal watchlist` or `Skipped nearby papers`, not automatically among high-priority recommendations.
- `A-rising-star`: author signal from Chandrasekaran, Freidel, Geiller, Pranzetti, Ruzziconi, Speranza, or another explicitly maintained related-work watchlist. A Tier 1 or Tier 2 match strengthens placement, but authorship alone does not determine the tier.
- `V-update`: an updated version of a paper already tracked in the vault.
- `M-correction`: inclusion or changed placement required by a recorded missed-paper correction.
- Negative filter: usually skip pure phenomenology, observational cosmology, astrophysical modeling, numerical relativity, generic string-landscape work, and generic AdS/CFT unless the paper contains a concrete formalism, calculation, or boundary/charge/quantization structure useful for current projects.

## Breakdown Depth

### Coverage By Placement

- High priority: produce a completed deep note whenever source access is sufficient, regardless of page count. A short paper is not permission for a shallow note.
- Medium priority: write a brief sketch in the overview, normally one short paragraph or 3–5 short bullets covering the question, main source claim, method or construction, likely use, and why it is not high priority. Inspect only the official source material needed for that sketch. Include a central formula only when it materially helps, with its assumptions and a clear statement of whether it has been independently checked. Do not routinely perform full decomposition, derivation reproduction, CAS verification, or create a separate detailed note; deeper treatment requires an explicit request or selection as a high-priority paper before detailed reading begins. Briefly list additional candidates that have not been read.
- Preliminary source map: use only when source access prevents a completed treatment. Label it explicitly as unfinished and record that status in the overview.

### High-Priority Acceptance Criteria

Use `Literature Notes/Charges of supergravity (2604.09928v1).md` as a behavioral calibration, not as a fixed heading template. A completed high-priority note must follow the paper's technical structure rather than read like an expanded abstract, and must include when applicable:

- an account of the argument across the major sections and useful appendices, with source references where needed;
- the theory, notation, and conventions, including fields or algebraic data, parameters, boundary conditions, gauge choices, indices, signs, normalizations, and source/response splits;
- the important equations and derivation steps showing how assumptions and intermediate results lead to the central theorem, charge, symplectic form, obstruction, partition function, or algebra;
- a local translation into the vault's CPS, charge, boundary, edge-mode, AdS, or spectral conventions, including concrete reusable objects and required convention changes;
- a clear account of what was independently reproduced and what remains unresolved, alongside the technical explanation.

These requirements concern the mathematical content. Use headings and tables only when they help the reader follow it; a separate source map or derivation table is optional. Write the note as an explanation of the paper, not an audit report.

### Monograph-Mode Additions

For papers around 30 pages or longer, and shorter papers with dense arguments or substantial appendices, allow enough space to explain the full argument. Cover the major sections and the appendices used by the results, grouping related material when that improves readability. Keep definitions, assumptions, important equations, intermediate steps, and their connections explicit.

A section outline, notation table, equation list, derivation diagram, or reading guide may help with a particular paper. Use only what helps; do not produce all of them by default or repeat the same material in several forms. Use linked follow-up or appendix notes only when a single main note would become hard to navigate. The required technical depth does not depend on these presentation choices.

## Formula And Computation Checks

For formula-heavy high-priority papers, reconstruct the argument first, then reproduce as much of the checkable calculation as the available sources and tools allow. Split a long calculation into manageable steps and explain exactly what was checked and what remains unresolved. Medium sketches report the source's claims unless a specific check was actually performed; they do not carry a general derivation-verification requirement.

Use:

- Mathematica for ordinary algebra, variational manipulations that are not tensor-package-specific, mode sums, determinant identities, special-function reductions, and consistency checks.
- xAct for tensor, covariant-derivative, variational, CPS, or differential-geometry identities.
- Sage for representation theory, Lie algebra, character, Young-diagram, or discrete-algebra checks.

Explain the distinction between source claims, reproduced results, and unresolved questions in ordinary prose. The following labels are optional shorthand when they make that distinction clearer; they do not require separate sections or a checklist:

- `Source-derived`: precise claims or formulas obtained from source reading but not independently reproduced.
- `Checked`: only content independently reproduced by an explicit computation or comparable verification.
- `Blocked`: a check stopped by an exact missing definition, convention, intermediate result, source defect, or tool limitation.
- `Failed`: a source claim or equation contradicts an explicit check under the stated assumptions; do not rely on downstream claims that depend on it.
- `Not independently verified`: concise residual non-computable or source-dependent claims; do not use it to compensate for a missing technical reconstruction.

## Weekly Digest

Weekly digest runs should read the daily overview files from the previous workweek and produce:

- top papers worth actually reading;
- medium-priority papers worth upgrading to detailed notes;
- author-signal items worth remembering;
- version updates that matter;
- missed-paper or over-prioritization patterns;
- suggested edits to this profile.

The weekly digest should not modify old daily overviews or detailed paper notes.
