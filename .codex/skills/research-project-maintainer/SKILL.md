---
name: research-project-maintainer
description: "Maintain active research project workspaces in this theoretical physics Obsidian vault. Use when Codex needs to advance the user's own research projects rather than general literature management: summarize project state, update project README/TODO/Drafts files, turn conversations or advisor requests into concrete next actions, coordinate manuscript and topic notes, preserve local AGENTS rules, and trigger Mathematica/xAct/Sage verification before formula or derivation edits."
---

# Research Project Maintainer

Use this skill to maintain the user's active research-project workspaces. Keep the
output project-facing: update the durable project artifact that needs the change,
not a transcript of the conversation.

## Preflight

1. Read the root `AGENTS.md` and every local `AGENTS.md` that applies to the target path.
2. Identify the target project directory or note set before editing. If the request does not name one, infer it only from directly relevant open context; otherwise ask for the path.
3. Use adjacent vault skills when their narrower scope applies:
   - Use `obsidian-literature-note` for files under `Literature Notes/`.
   - Use `obsidian-directory-readme` when the main task is creating or replacing a directory `README.md`.
   - Use `obsidian-note-maintainer` for ordinary non-project note cleanup.
   - Use `notes-git-commit` when staging or committing changes.
4. Before editing, state the intended files and the kind of change for each file.
5. Do not edit `.keep-the-rhythm/`, `.obsidian/`, or `Attachments/` unless the user explicitly requests it.

## Workflow

1. Read the target project's `README.md`, `TODO.md`, `Drafts.md`, and directly relevant notes when they exist.
3. Identify the current research state:
   - active question
   - known result or partial result
   - next calculation, writing task, or advisor question
   - blocked point or missing verification
4. Make incremental edits only. Preserve existing language, notation, file boundaries, and project structure.
5. Put durable exposition in topic notes or manuscript files. Put provisional ideas, calculations, and unresolved options in `Drafts.md`.
6. Put concrete next actions in `TODO.md`. Avoid broad aspirations that do not specify an immediate research action.
7. Update `README.md` only when the project structure, core note set, or current project orientation changes.
8. Preserve the existing language of each note. Use English for file edits only when the target file is already in English or the user asks for English.

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
- Use Sage through the Sage MCP for representation-theory, discrete-algebra, finite-group, Lie-algebra, Weyl-character, Young-diagram, symmetric-function, tensor-product decomposition, and combinatorial-representation checks.
- Report verification status with compact `Verified:`, `Assumptions:`, and `Not verified:` entries.
- Do not present formula edits as correct from inspection alone.
- If verification is blocked by tooling, keep the formula unchanged unless the user explicitly accepts an assumption-only edit.
- When applying local formula-layout rules, distinguish short and long displays explicitly: keep short formulas and short component lists on one source line, but in genuinely multiline `align` blocks make every source line an actual LaTeX row by ending each non-final displayed row with `\\`. Do not insert source-only line breaks inside one displayed row. For long additive formulas, count only additive monomial terms on the right-hand side of the equality: keep at most six right-hand-side terms on one displayed row; if there are more than six, split those right-hand-side terms as evenly as possible across multiple `\\` rows. Do not count or constrain the left-hand side for this limit.

## Project State Updates

When updating project-management files, keep entries concrete and checkable:

- `TODO.md`: use tasks that name the next calculation, file, equation, section, or advisor question.
- `Drafts.md`: keep provisional routes, unresolved options, scratch derivations, and meeting-prep notes.
- `README.md`: record stable orientation, file map, current project phase, and non-obvious project organization.

Use this compact task shape when it helps preserve context:

```markdown
- [ ] Action: ...
  Context: ...
  Check: ...
```

Avoid adding tags, Dataview fields, new wiki-links, or bibliography automation unless explicitly requested.

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
- Keep discarded approaches and repair history out of manuscript files unless the user explicitly asks for a comparison or diagnosis.
