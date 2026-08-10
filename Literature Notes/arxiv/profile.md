# arXiv Research Profile

This file is the research profile for the daily arXiv recommendation automation. It is authoritative for screening scope, priority, author signals, reason codes, breakdown depth, and verification expectations. Operational sequencing, output paths, file safety, and daily/weekly workflow rules belong in `Literature Notes/arxiv/AGENTS.md`. Update this profile when the recommendation behavior misses a paper, over-prioritizes a weak paper, or when the current research focus changes.

## Screening Scope

Always screen `hep-th`, `gr-qc`, and `math-ph`. Deduplicate by arXiv id and preserve primary plus cross-list categories.

## Screening And Placement Rules

Assign the technical tier first, then attach every applicable reason code. Author signals, version updates, and missed-paper corrections are cross-cutting placement modifiers; they improve recall and auditability but do not replace technical relevance.

### Tier 1: Highest Priority

Usually high-priority if technically substantive:

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
- Medium priority: provide at least a compact technical breakdown in the overview, and create a lighter detailed note when its method, formula, or reference value is reusable.
- Preliminary source map: use only when source access prevents a completed treatment. Label it explicitly as unfinished and record that status in the overview.

### High-Priority Acceptance Criteria

Use `Literature Notes/Charges of supergravity (2604.09928v1).md` as a behavioral calibration, not as a fixed heading template. A completed high-priority note must follow the paper's technical structure rather than read like an expanded abstract, and must include when applicable:

- a source map covering every major section and useful appendix;
- the theory, notation, and conventions, including fields or algebraic data, parameters, boundary conditions, gauge choices, indices, signs, normalizations, and source/response splits;
- the important equations and a derivation map showing how assumptions and intermediate results lead to the central theorem, charge, symplectic form, obstruction, partition function, or algebra;
- a local translation into the vault's CPS, charge, boundary, edge-mode, AdS, or spectral conventions, including concrete reusable objects and required convention changes;
- a verification boundary recorded after, not instead of, the technical reconstruction.

### Monograph-Mode Additions

Use monograph mode for papers around 30 pages or longer and for shorter papers that are technically dense, appendix-heavy, or organized around a long formula chain. In addition to the ordinary high-priority criteria:

- build a complete section tree, including appendices used by the main argument;
- organize the source into coherent section clusters, each recording its purpose, definitions, assumptions, important equations, derivation steps, and later dependencies;
- synthesize a global notation dictionary, equation ledger, and derivation map;
- add a `How to read this long paper` guide distinguishing essential, technical-reference, and optional-background sections while still recording every section;
- use linked follow-up or appendix notes only when a single master note would become hard to navigate.

## Formula And Computation Checks

For formula-heavy papers, reconstruct the source chain first, then reproduce as much of the checkable calculation as the available sources and tools allow. Split a large chain into smaller targets and record the exact verification boundary.

Use:

- Mathematica for ordinary algebra, variational manipulations that are not tensor-package-specific, mode sums, determinant identities, special-function reductions, and consistency checks.
- xAct for tensor, covariant-derivative, variational, CPS, or differential-geometry identities.
- Sage for representation theory, Lie algebra, character, Young-diagram, or discrete-algebra checks.

Use evidence labels consistently:

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
