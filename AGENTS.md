# AGENTS.md — Note Vault

This repository is a personal Obsidian vault for theoretical-physics research notes, literature notes, lectures, article drafts, helper scripts, and a few local tool subprojects. Ordinary Markdown/LaTeX notes have no repository-wide build or lint command.

## Core Working Rules

- Read every `AGENTS.md` applicable to the target path and the relevant files before editing.
- Preserve existing content, notation, language, headings, file boundaries, and public behavior. Make small local changes unless the user explicitly requests a redesign.
- Do not delete, overwrite, move, rename, or merge notes without explicit authorization.
- Do not add tags, Dataview fields, bibliography automation, or new wiki-links unless explicitly requested.
- Distinguish what was edited, inspected, tested, assumed, and left unverified. Do not call work complete without the relevant edit and check.
- For `tools/` subprojects, read `package.json`, run the narrow package-specific test/typecheck/lint command, and do not install or update dependencies unless requested.

## Local Skills

Project-local skills under `.codex/skills/` are authoritative for their workflows:

- `research-project-maintainer` at `.codex/skills/research-project-maintainer/SKILL.md`: advance an active research project.
- `pandoc-texfiles` at `.codex/skills/pandoc-texfiles/SKILL.md`: maintain Markdown-to-TeX generation.
- `notes-git-commit` at `.codex/skills/notes-git-commit/SKILL.md`: review, stage, or commit approved vault changes.

Use `note-math-verify` when available for formula-heavy notes. Use narrower applicable skills before broader maintenance or commit workflows; `pandoc-texfiles` owns its generation commands, and `notes-git-commit` runs last.

## Formula And Source Verification

- Before changing a mathematical formula, symbolic derivation, physics calculation, or equation-heavy claim, run every computationally appropriate check.
- Use Mathematica for ordinary algebra, integrals, matrices, special functions, and ODE/PDE reductions; xAct/Mathematica+xAct for tensor, variational, covariant-derivative, curvature, and differential-geometry identities; Sage for representation theory and discrete algebra.
- Preserve assumptions, signs, normalizations, boundary conditions, gauge choices, regularity, and domains. Do not simplify away a term without stating the condition that removes it.
- Report formula edits with compact `Verified:`, `Assumptions:`, and `Not verified:` entries. Inspection alone is not verification; if a check is impossible, state the exact missing evidence and keep the claim conditional.
- For mathematical PDFs, use text extraction for navigation and rendered pages for formula, table, label, and layout evidence. Distinguish extracted, visually confirmed, and machine-verified content.

## Repository Utilities

- `scripts/validate_vault_policy.py` audits skill metadata, the AGENTS hierarchy, skill-name collisions, and the indexed Quantization-in-AdS directories.
- Generated Pandoc fragments and source-note edits are separate scopes; follow `pandoc-texfiles` before regeneration.

## Local AGENTS Hierarchy

Consult the local file in addition to this root file when working below:

- `Articles/Quantization in AdS/AGENTS.md`
- `Articles/Quantization in AdS/gluing/AGENTS.md`
- `Literature Notes/arxiv/AGENTS.md`
