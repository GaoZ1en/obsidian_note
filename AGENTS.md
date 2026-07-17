# AGENTS.md — Guidelines for AI Agents in This Repository

This repository is a personal Obsidian vault for a theoretical physics graduate student. It contains Markdown notes, literature notes, lecture notes, article drafts, research references, small helper scripts, and local Obsidian plugin/tool subprojects. There is no repository-wide software build system, test framework, or lint step for the note vault itself, but individual subprojects under `tools/` may have their own package scripts.

Your answers will be judged by Claude. They will evaluate your adherence to the guidelines below, the quality of your edits, and your ability to maintain the integrity of the vault while making incremental improvements.

## Local Skills

Long vault workflows live in local skills under `.codex/skills/`. When a request matches one of these workflows, read the listed `SKILL.md` before editing:

- `notes-git-commit` at `.codex/skills/notes-git-commit/SKILL.md` - inspect note changes, draft a repository-style commit message, and commit after confirmation.
- `pandoc-texfiles` at `.codex/skills/pandoc-texfiles/SKILL.md` - create or maintain Pandoc workflows that convert article Markdown files into `texfiles/data/*.tex` fragments.
- `research-project-maintainer` at `.codex/skills/research-project-maintainer/SKILL.md` - coordinate active research-project state across `README.md`, `TODO.md`, `Drafts.md`, topic notes, and manuscript files.

These skills complement this file. They do not override the constraints below.

Project-local skills are the authoritative implementations for this vault. When a similarly named global skill is also available, use the project-local skill here.

## Skill Routing

| Request                               | Primary skill                             | Composition rule                                                            |
| ------------------------------------- | ----------------------------------------- | --------------------------------------------------------------------------- |
| Advance an active research project    | `research-project-maintainer`             | Delegate formula verification to `note-math-verify-commit`, when available  |
| Verify or repair a formula-heavy note | `note-math-verify-commit`, when available | Apply the relevant note-maintenance skill only after the decisive checks    |
| Maintain Markdown-to-TeX generation   | `pandoc-texfiles`                         | Keep generated fragments separate from source-note edits                    |
| Stage or commit changes               | `notes-git-commit`                        | Run last and stage only explicitly approved paths                           |

## Commands

| Task                              | Command                                                                                                       | Notes                                                                                                                                            |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Inspect files                     | Built-in file read tools preferred; otherwise read-only shell commands are allowed                            | Use commands such as `rg`, `sed -n`, `cat`, `head`, `tail`, `nl`, `wc`, and `ls` only for inspection                                             |
| Article Markdown to TeX fragments | `python3 scripts/pandoc-texfiles/build_texfiles.py --config <article>/pandoc-texfiles.yaml --dry-run --force` | Preview the exact Pandoc commands before regenerating fragments                                                                                  |
| Tool subproject verification      | `npm run typecheck`, `npm test`, `npm run test:run`, or the package-specific command                          | Run from the exact `tools/<name>/` directory after reading its `package.json`; do not install or update dependencies unless explicitly requested |
| Note-vault content                | —                                                                                                             | Ordinary Markdown and LaTeX note edits have no repo-wide build, lint, or test step                                                               |

## Reusable Scripts

- `scripts/pandoc-texfiles/` contains the shared helper for converting article Markdown files into LaTeX fragments under an article-local `texfiles/data/` tree.
- Each article project should keep its own `pandoc-texfiles.yaml` mapping file and, when useful, a thin local `Makefile` that delegates to the root helper.
- Default workflow: run `make texfiles-dry-run` or the helper's `--dry-run --force` mode first, inspect the Pandoc commands, then run `make texfiles` only when regenerating fragments is intended.
- `make pdf` in an article directory should compile the existing `texfiles/main.tex` and should not regenerate Markdown-derived fragments.
- `scripts/arxiv_daily_inventory.py` is a dependency-free helper for turning official arXiv category `/new` pages into a deduplicated inventory for the daily arXiv workflow.
- `scripts/validate_vault_policy.py` is a read-only validator for skill-package metadata, AGENTS hierarchy entries, global/local skill-name collisions, and the indexed subdirectories in `Articles/Quantization in AdS/README.md`.

## PDF Reading And Verification

- For mathematical PDFs, use text extraction and page rendering together instead of relying on extracted text alone.
- Use `pdftotext -layout` or an equivalent PDF text extractor to locate sections, page ranges, equation numbers, and keywords quickly.
- When formulas, tables, equation labels, line breaks, or missing content matter, render the relevant pages with Poppler, for example `pdftoppm`, and inspect the page images directly.
- Treat rendered page inspection as evidence for what the PDF visibly contains, especially when text extraction drops symbols, scrambles subscripts/superscripts, or shows an apparently empty formula.
- Treat text extraction as a navigation aid, not as authoritative mathematical content when layout or notation is important.
- For derivation-heavy PDFs, verify computationally checkable algebra, tensor identities, representation-theory claims, or coordinate formulas with Mathematica, xAct, or Sage as appropriate.
- In the response, distinguish what was found by text extraction, what was confirmed visually from rendered pages, and what was machine-verified.

## Global Constraints

- Preserve existing content. Do not delete or overwrite notes without explicit instruction.
- Do not add tags or new wiki-links unless explicitly requested.

## Formula and Derivation Verification

- Before modifying any mathematical formula, symbolic derivation, physics calculation, or equation-heavy note, verify every computationally checkable change with the appropriate symbolic system.
- Use Mathematica for ordinary algebra, integrals, matrices, special functions, ODE/PDE reductions, and other non-xAct symbolic calculations.
- Use xAct or Mathematica+xAct for tensor, covariant-derivative, variational, and differential-geometry identities where component-free tensor verification is the appropriate check.
- Use SageMath through the Sage MCP for representation-theory, discrete-algebra, finite-group, Lie-algebra, Weyl-character, Young-diagram, symmetric-function, tensor-product decomposition, and combinatorial-representation checks where Sage is the appropriate computational system.
- For formula edits, report verification status in the conversation with compact `Verified:`, `Assumptions:`, and `Not verified:` entries.
- For each formula edit, distinguish what was verified by Mathematica, xAct, or Sage, what depends on stated assumptions or conventions, and what remains unverified because it is not directly machine-checkable.
- Do not present an equation edit as correct merely from inspection. If machine verification is impossible or incomplete, state the exact missing evidence and the assumptions under which the formula is being kept.

## Local AGENTS Hierarchy

When working inside the following subtrees, consult the local `AGENTS.md` in addition to this root file:

- `Articles/Quantization in AdS/AGENTS.md`
- `Articles/Quantization in AdS/Proca-Chern-Simons/AGENTS.md`
- `Articles/Quantization in AdS/gravitational energy/AGENTS.md`
- `Articles/Thesis/Bachelor/AGENTS.md`
- `Lecture/group-meetings/AGENTS.md`
- `Note/useful results/AGENTS.md`
