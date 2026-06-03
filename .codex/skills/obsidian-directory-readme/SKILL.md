---
name: obsidian-directory-readme
description: Survey Obsidian note directories and draft or update local README.md files for this vault. Use when a directory has five or more Markdown files, has non-obvious organization, the user asks for an index or overview, or notes/directories are added or deleted and Home.md may need maintenance.
---

# Obsidian Directory README

## Workflow

- Read every relevant Markdown file in the target directory before describing it.
- Ignore hidden, generated, dependency, and attachment paths unless explicitly requested, including `.crush/`, `.github/`, `.keep-the-rhythm/`, `.obsidian/`, `.venv/`, `__pycache__/`, and `Attachments/`.
- Group notes by topic rather than listing files mechanically.
- Show the proposed `README.md` draft before creating or replacing it.
- Do not move, rename, delete, or reorganize notes unless explicitly requested and confirmed.
- Do not add tags or new wiki-links unless explicitly requested.

## README Style

- Write concise English summaries unless the user requests another language.
- Explain the directory's purpose and non-obvious organization.
- Prefer stable descriptions of note content over speculative reading paths.
- Keep file titles and mathematical terminology faithful to the notes.

## Home.md Maintenance

- When new notes or directories are added, update `Home.md` as needed.
- When files are deleted, remove corresponding entries from `Home.md`.
- Keep existing `Home.md` callout style and organization.
