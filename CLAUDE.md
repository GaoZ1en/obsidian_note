# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

@/Users/koishi/.claude/RTK.md

## Repository Overview

This repository is a personal Obsidian vault for a theoretical physics graduate student. It contains Markdown notes, literature notes, lecture notes, article drafts, and research references. There is no software build system, test framework, or lint step.

## Preferred Skills

When a request matches one of the reusable workflows below, prefer the corresponding skill:

- `obsidian-literature-note` — update literature notes in `Literature Notes/`, especially arXiv frontmatter, `summary`, and web-assisted abstract enrichment
- `obsidian-note-maintainer` — maintain non-literature notes by fixing frontmatter, summaries, formatting, headings, lists, links, and math delimiters
- `obsidian-directory-readme` — survey a note directory and draft a `README.md`
- `notes-git-commit` — inspect note changes, draft a repository-style commit message, and commit after confirmation
- `research-project-maintainer` — maintain active research project workspaces: summarize project state, update project README/TODO/Drafts files, turn conversations or advisor requests into concrete next actions, coordinate manuscript and topic notes, preserve local AGENTS rules, and trigger Mathematica/xAct verification before formula or derivation edits

These skills complement this file. They do not override the constraints below.

## Obsidian MCP Usage

Use the Obsidian MCP server as the preferred access layer for this vault when it is available. MCP access changes the access method only; all repository rules in this file still apply.

- Prefer `search_vault`, `read_note`, and `read_multiple_notes` for discovery and context gathering.
- Treat `list_notes(folder=...)` results cautiously: this MCP may return the full vault instead of the requested folder. Filter results manually by path prefix and Markdown extension before using them.
- Ignore hidden, generated, dependency, and attachment paths returned by MCP unless explicitly requested, including `.crush/`, `.github/`, `.keep-the-rhythm/`, `.obsidian/`, `.venv/`, `__pycache__/`, and `Attachments/`.
- Before any MCP write operation, show the planned changes in the conversation.
- Prefer `update_note` for note edits and use its `dryRun` option before applying changes when available.
- Do not use `auto_backlink_vault` unless explicitly requested; automatic backlinks count as adding wiki-links.
- Do not use MCP tools to delete, move, rename, or reorganize notes or folders unless explicitly requested and confirmed.

## Commands

| Task | Command | Notes |
|---|---|---|
| Inspect files | Built-in file read tools preferred; otherwise read-only shell commands are allowed | Use commands such as `rg`, `sed -n`, `cat`, `head`, `tail`, `nl`, `wc`, and `ls` only for inspection |
| Edit notes | Obsidian MCP preferred; direct Markdown edits if MCP is unavailable | Markdown and LaTeX only; show planned changes first |
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

## Metadata Templates

### Literature Notes

Use this schema for arXiv papers stored under `Literature Notes/`:

```yaml
---
paper id: 2206.10780v5
title: Paper Title Here
authors: [Author One, Author Two]
publication date: 2022-06-22T00:22
abstract: "Brief summary of the paper's abstract and main results."
comments: "54 pages, v5: correction at end of section 2.4"
url: https://arxiv.org/abs/2206.10780v5
summary: "One-sentence note-specific summary."
tags: []
---
```

Rules:

- Prefer adding a concise `summary` rather than rewriting the existing `abstract`.
- Do not rewrite `abstract` unless explicitly asked.
- Keep `tags: []` empty unless the user explicitly requests tags.

### Non-Literature Notes

Use this schema for ordinary notes, articles, lectures, and similar files:

```yaml
---
title: Note Title
date: 2025-04-05
summary: "Brief summary of the note's content in one or two sentences."
---
```

## Literature Note Rules

When the user explicitly asks for online retrieval:

1. Read the target note before editing.
2. If an arXiv ID or arXiv URL is already known, go directly to `https://arxiv.org/html/<id>` as the primary source when available.
3. If the HTML page is unavailable or insufficient, use the arXiv abstract page `https://arxiv.org/abs/<id>` next.
4. Use the PDF or introduction only when the HTML and abstract pages are inaccessible or clearly insufficient.
5. Prefer direct source retrieval over generic web search when the canonical paper URL is already known.
6. If the user provides a specific source URL, treat it as the primary source unless it is clearly insufficient.
7. Distinguish source-based summary from broader synthesis.
8. Include the source URL in the conversation when summarizing external material.
9. If broader context is requested, append a short section such as `## Historical context and motivation`.

## Formatting Conventions

- Use `$$ ... $$` for display math.
- Use `$ ... $` for inline math.
- Do not skip heading levels.
- Use `-` for unordered lists.
- Use `1.` for ordered lists.
- Repair broken internal links only when the intended target is clear.
- Keep LaTeX notation consistent with the surrounding note, especially tensors, indices, and differential forms.
- Keep Obsidian callout syntax consistent when callouts are already present.

## Home and Directory Maintenance

- When new notes or directories are added, update `Home.md` as needed.
- When files are deleted, remove the corresponding entries from `Home.md`.
- Keep `Home.md` callout blocks consistent.
- For directories with 5 or more Markdown files, or directories with non-obvious organization, prefer drafting a `README.md`.
- When generating a directory `README.md`, read each file before describing it, group files by topic, and show the draft before writing the file.

## Git Workflow

When asked to commit:

1. Run `git status`.
2. Run `git diff --stat`.
3. Read the changed Markdown files before describing them.
4. Draft the commit message in English.
5. Show the proposed message before executing.
6. After confirmation, run `git add -A` and `git commit -m "..."`.

Commit message format:

```text
<type>: <short summary>

Changed files:
- `path/to/file.md` — brief description of content
- `path/to/file2.md` — brief description of content

Details:
- Optional higher-level summary of what was added or modified
```

Commit types:

- `notes`
- `update`
- `literature`
- `thesis`
- `refactor`
- `cleanup`

## Formula and Derivation Verification

- Before modifying any mathematical formula, symbolic derivation, physics calculation, or equation-heavy note, verify every changed formula with Mathematica whenever it is computationally checkable.
- Use xAct or Mathematica+xAct for tensor, covariant-derivative, variational, and differential-geometry identities where component-free tensor verification is the appropriate check.
- Prefer available non-shell Mathematica/xAct tools for verification. Use shell-based Mathematica commands only with explicit user authorization.
- For formula edits, report verification status in the conversation with compact `Verified:`, `Assumptions:`, and `Not verified:` entries.
- For each formula edit, distinguish what was verified by Mathematica or xAct, what depends on stated assumptions or conventions, and what remains unverified because it is not directly machine-checkable.
- Do not present an equation edit as correct merely from inspection. If machine verification is impossible or incomplete, state the exact missing evidence and the assumptions under which the formula is being kept.
- When applying local formula-layout rules, distinguish short and long displays explicitly: keep short formulas and short component lists on one source line, but in genuinely multiline `align` blocks make every source line an actual LaTeX row by ending each non-final displayed row with `\\`. Do not insert source-only line breaks inside one displayed row. For long additive formulas, count only additive monomial terms on the right-hand side of the equality: keep at most six right-hand side terms on one displayed row; if there are more than six, split those right-hand side terms as evenly as possible across multiple `\\` rows. Do not count or constrain the left-hand side for this limit.

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
