---
name: research-project-maintainer
description: "Coordinate active research project workspaces in this theoretical physics Obsidian vault. Use when Codex needs to advance the user's own research projects rather than general literature management: summarize project state, update project README/TODO/Drafts files, turn conversations or advisor requests into concrete next actions, coordinate manuscript and topic notes, preserve local AGENTS rules, and route paper reading, formula verification, note maintenance, and commits to the narrower available skills."
---

# Research Project Maintainer

Maintain the durable state of an active research project. Update the smallest project artifact that needs the result; do not archive the conversation itself.

## Preflight

1. Read the root and applicable local `AGENTS.md` files.
2. Resolve the target project from the request or directly relevant open context; ask for the path only when a safe inference is impossible.
3. Read the project's `README.md`, `TODO.md`, `Drafts.md`, and directly relevant notes when they exist.
4. Before editing, state the intended files and the kind of change for each.
5. Route narrower work first: use `note-math-verify` for formula-heavy verification and `notes-git-commit` last for authorized staging or commits. Use another available narrow note, paper, or Pandoc skill when its scope clearly owns the task.

## Project-State Loop

1. Identify the active question, established or partial result, next calculation or writing task, and any blocker or missing verification.
2. Decide which durable artifact owns each update using the table below.
3. Make incremental edits that preserve notation, language, file boundaries, and project structure.
4. Re-read the changed section and run the narrow relevant verification.
5. Report the new project state, exact checks, remaining blocker, and next one or two executable actions.

| Artifact | Content |
|---|---|
| `README.md` | Stable orientation, file map, current phase, and non-obvious organization; update only when these change. |
| `TODO.md` | Immediate calculations, file/section edits, blockers, and advisor questions. |
| `Drafts.md` | Provisional routes, unresolved options, scratch derivations, discarded-but-useful approaches, and meeting preparation. |
| Topic note | Durable definitions, computations, assumptions, and results. |
| Manuscript | Polished exposition only; exclude conversation history and repair bookkeeping. |

Use concrete tasks rather than aspirations. This shape is available when context must travel with a task:

```markdown
- [ ] Action: ...
  Context: ...
  Check: ...
```

## Conversation And Advisor Distillation

- Stable conclusions or definitions go to the relevant topic note.
- Remaining work goes to `TODO.md`; unresolved routes or meeting questions go to `Drafts.md`.
- For advisor-assigned reading, record only why it was assigned, its project connection, one technical point to extract, one discussion question, and whether deeper reading is needed.
- Use a full literature-note workflow only when creating or editing a durable literature note, not for every assigned paper.

## Formula Work

Formula and derivation changes follow the root verification contract and any target-subtree conventions. Use `note-math-verify` when available; do not edit a computationally checkable claim from inspection alone. Keep boundary conditions, gauge quotients, regularity, action finiteness, conventions, and the exact unverified boundary explicit.

## Boundaries

- Do not edit `.keep-the-rhythm/`, `.obsidian/`, or `Attachments/` unless explicitly requested.
- Do not introduce tags, Dataview fields, bibliography automation, or new wiki-links unless requested.
- Do not turn project notes into broad literature surveys.
- Do not move, rename, delete, or merge project files without explicit authorization.
- Preserve local section numbering, appendix names, topic-folder names, and each note's existing language.
- Keep discarded approaches and repair history out of manuscripts unless the user requests a comparison or diagnosis.
