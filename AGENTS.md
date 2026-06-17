# AGENTS.md — Guidelines for AI Agents in This Repository

This repository is a personal Obsidian vault for a theoretical physics graduate student. It contains Markdown notes, literature notes, lecture notes, article drafts, and research references. There is no software build system, test framework, or lint step.

Your answers will be judged by Claude and Gemini. They will evaluate your adherence to the guidelines below, the quality of your edits, and your ability to maintain the integrity of the vault while making incremental improvements.

## Local Skills

Long vault workflows live in local skills under `.codex/skills/`. When a request matches one of these workflows, read the listed `SKILL.md` before editing:

- `obsidian-literature-note` at `.codex/skills/obsidian-literature-note/SKILL.md` - update literature notes in `Literature Notes/`, especially arXiv frontmatter, `summary`, and web-assisted abstract enrichment.
- `obsidian-note-maintainer` at `.codex/skills/obsidian-note-maintainer/SKILL.md` - maintain non-literature notes by fixing frontmatter, summaries, formatting, headings, lists, links, and math delimiters.
- `obsidian-directory-readme` at `.codex/skills/obsidian-directory-readme/SKILL.md` - survey note directories, draft `README.md` files, and maintain `Home.md` when note directories change.
- `notes-git-commit` at `.codex/skills/notes-git-commit/SKILL.md` - inspect note changes, draft a repository-style commit message, and commit after confirmation.

These skills complement this file. They do not override the constraints below.

## Commands

| Task | Command | Notes |
|---|---|---|
| Inspect files | Built-in file read tools preferred; otherwise read-only shell commands are allowed | Use commands such as `rg`, `sed -n`, `cat`, `head`, `tail`, `nl`, `wc`, and `ls` only for inspection |
| Edit notes | Built-in file read/modification tools preferred | Markdown and LaTeX only; show planned changes first |
| Git inspection | `git status`, `git diff`, `git add`, `git commit` | Show the proposed commit message before executing |
| No build step | — | Static Markdown vault only |
| No lint or test step | — | No software tooling in this repository |

## Global Constraints

- Preserve existing content. Do not delete or overwrite notes without explicit instruction.
- Make incremental edits only.
- Show planned changes before editing any file.
- Show the proposed `README.md` before creating or replacing it.
- Show the proposed commit message before running `git commit`.
- Do not add tags or new wiki-links unless explicitly requested.
- Empty `tags: []` in literature-note frontmatter is allowed, but do not populate tags unless explicitly requested.
- Do not normalize, reorder, or rewrite existing frontmatter merely to match a template. Apply template fields incrementally only when fields are missing, malformed, clearly wrong, or explicitly requested.
- Preserve the existing language of each note. Do not translate a note unless explicitly requested.
- Conversation with the user should be in Chinese. File edits and commit messages should be in English unless the user explicitly requests a language change.
- Do not use shell commands to edit files, run project code, install dependencies, access the network, or perform destructive operations unless explicitly requested. Prefer built-in file read/modification tools when they are available. If no dedicated file-read tool is available, read-only shell commands for inspecting files and directories are allowed, such as `rg`, `sed -n`, `cat`, `head`, `tail`, `nl`, `wc`, and `ls`. Git operations remain allowed for inspection, staging, and commits. This restriction applies to shell commands, not to built-in file modification tools or non-shell Mathematica/xAct tool calls used for formula verification. If shell-based Mathematica execution is required, ask before running it unless the user has already explicitly authorized that command.
- Do not edit `.keep-the-rhythm/`, `.obsidian/`, or `Attachments/` unless explicitly requested.
- Do not commit `.obsidian/` or `Attachments/`.

## Concurrent User Changes

- If files differ from what the agent saw earlier, always assume the changes were made intentionally by the user or another authorized agent.
- Treat the current file contents on disk as the source of truth. Do not restore, revert, overwrite, or "fix back" those changes unless the user explicitly asks.
- When editing a file that has changed unexpectedly, re-read the relevant section and make the smallest possible edit on top of the current content.
- Mention unexpected concurrent changes only when they affect the requested task, verification, or edit location. Do not treat them as errors merely because they differ from the agent's previous view.
- If a concurrent change directly conflicts with the requested edit and the intended result is ambiguous, stop and ask for clarification before modifying that part.

## Formula and Derivation Verification

- Before modifying any mathematical formula, symbolic derivation, physics calculation, or equation-heavy note, verify every changed formula with Mathematica whenever it is computationally checkable.
- Use xAct or Mathematica+xAct for tensor, covariant-derivative, variational, and differential-geometry identities where component-free tensor verification is the appropriate check.
- Use SageMath through the Sage MCP for representation-theory, discrete-algebra, finite-group, Lie-algebra, Weyl-character, Young-diagram, symmetric-function, tensor-product decomposition, and combinatorial-representation checks where Sage is the appropriate computational system.
- Prefer available non-shell Mathematica/xAct/Sage MCP tools for verification. Use shell-based Mathematica commands only with explicit user authorization.
- For formula edits, report verification status in the conversation with compact `Verified:`, `Assumptions:`, and `Not verified:` entries.
- For each formula edit, distinguish what was verified by Mathematica or xAct, what depends on stated assumptions or conventions, and what remains unverified because it is not directly machine-checkable.
- Do not present an equation edit as correct merely from inspection. If machine verification is impossible or incomplete, state the exact missing evidence and the assumptions under which the formula is being kept.

## Exposition Style

- When drafting or patching note content, write the final positive exposition directly. Do not include defensive or meta-level discussion such as "unlike the naive approach", "the previous method was wrong", "this resolves the tension", "this is not saying", or similar commentary about failed attempts unless the user explicitly asks for a comparison, diagnosis, or debug explanation.
- When adapting an argument from a paper or another note to a parallel model, present the parallel construction on its own terms. Mention the reference source when useful, then state the definitions, assumptions, sector decomposition, boundary conditions, and conclusion directly.
- Keep conversation-level reasoning, discarded approaches, and repair history out of the note body. The note should read as a self-contained exposition, not as a record of how the answer was found.

## Naming Conventions

- Literature notes: `Title (arXiv ID).md`
- Article sections: `section N title.md`
- Appendices: `Appendix X description.md`
- Topic folders: lowercase with spaces
- Lecture courses: `course name by Instructor/`

## Directory Structure

- `Home.md` — vault homepage and table of contents
- `TODO.md` — research TODOs and planning
- `Articles/` — article and thesis writing workspace
- `Literature Notes/` — arXiv reading notes
- `Note/` — topic notes, mathematics notes, code notes, reading notes, and useful results
- `Lecture/` — course notes, conference notes, online lectures, group meetings, and talks
- `Drafts/` — uncategorized drafts
- `Attachments/` — media files and PDFs, normally ignored

## Local AGENTS Hierarchy

When working inside the following subtrees, consult the local `AGENTS.md` in addition to this root file:

- `Articles/Quantization in AdS3/AGENTS.md`
- `Articles/Quantization in AdS3/Proca-Chern-Simons/AGENTS.md`
- `Articles/Thesis/Bachelor/AGENTS.md`
- `Lecture/courses/AGENTS.md`
- `Lecture/group-meetings/AGENTS.md`
- `Note/useful results/AGENTS.md`
