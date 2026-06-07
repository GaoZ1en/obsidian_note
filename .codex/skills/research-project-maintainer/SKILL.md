---
name: research-project-maintainer
description: Maintain active research project workspaces in this theoretical physics Obsidian vault. Use when Codex needs to advance the user's own research projects rather than general literature management: summarize project state, update project README/TODO/Drafts files, turn conversations or advisor requests into concrete next actions, coordinate manuscript and topic notes, preserve local AGENTS rules, and trigger Mathematica/xAct verification before formula or derivation edits.
---

# Research Project Maintainer

## Workflow

1. Read the applicable `AGENTS.md` hierarchy before editing.
2. Read the target project's `README.md`, `TODO.md`, `Drafts.md`, and directly relevant notes when they exist.
3. Identify the current research state:
   - active question
   - known result or partial result
   - next calculation, writing task, or advisor question
   - blocked point or missing verification
4. Make incremental edits only. Preserve existing language, notation, file boundaries, and project structure.
5. Put durable exposition in topic notes or manuscript files. Put provisional ideas, calculations, and unresolved options in `Drafts.md`.
6. Put concrete next actions in `TODO.md`. Avoid broad aspirations that do not specify an immediate research action.
7. Update `README.md` only when the project structure, core note set, or current project orientation changes.

## Conversation Distillation

When a research conversation should be saved, do not archive the whole exchange. Distill it into the smallest useful project artifact:

- Add conclusions or definitions to the relevant note when they are stable.
- Add a task to `TODO.md` when work remains.
- Add an unresolved calculation, possible route, or meeting question to `Drafts.md`.
- Add advisor-assigned reading only when it changes the project state, introduces a method to reuse, or creates a concrete discussion question.

Use this compact structure when helpful:

```markdown
- [ ] Action: ...
  Context: ...
  Check: ...
```

## Advisor-Assigned Reading

For papers assigned by the advisor, prefer a light project-facing record over a full literature workflow:

- why this paper was assigned
- relation to the active project
- one technical point to extract
- one question or follow-up for discussion
- whether deeper reading is needed

Use `obsidian-literature-note` only when editing a file under `Literature Notes/`, confirming arXiv metadata, or preparing a durable paper note.

## Formula and Derivation Changes

Before modifying formulas, derivations, tensor identities, or equation-heavy sections, follow the root `AGENTS.md` verification rules.

- Use Mathematica for algebraic checks when computationally checkable.
- Use xAct or Mathematica+xAct for tensor, variational, covariant-derivative, curvature, and differential-geometry checks.
- Report verification status with compact `Verified:`, `Assumptions:`, and `Not verified:` entries.
- Do not present formula edits as correct from inspection alone.

## Project File Roles

- `README.md`: stable project orientation, file map, and non-obvious organization.
- `TODO.md`: immediate next actions, blocked points, and questions to bring to the advisor.
- `Drafts.md`: provisional derivations, exploratory routes, discarded-but-still-useful calculations, and rough meeting preparation.
- Topic notes: durable definitions, computations, and results.
- Manuscript files: polished exposition only; keep conversation history and repair notes out of the manuscript.

## Boundaries

- Do not introduce Dataview, tags, new wiki-links, or bibliography automation unless explicitly requested.
- Do not turn project notes into broad literature surveys.
- Do not move, rename, delete, or merge project files without explicit instruction.
- Preserve local naming conventions such as section numbering, appendix naming, and established topic folder names.
