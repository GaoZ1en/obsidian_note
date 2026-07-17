---
name: notes-git-commit
description: Inspect vault changes and prepare English repository-style git commits. Use when the user asks to commit, stage changes, draft a commit message, summarize changed notes for a commit, or review the working tree before committing.
---

# Notes Git Commit

## Workflow

1. Run `git status --short --untracked-files=all`.
2. Run `git diff --stat` and inspect the changed path names.
3. Identify one coherent requested scope and its explicit exclusions.
4. Read every changed Markdown file in that scope before describing it.
5. Draft the commit message in English and show it before executing `git commit`.
6. After confirmation, stage only the approved paths with explicit `git add -- <paths>` commands. Never use `git add -A` in a mixed worktree.
7. Run `git diff --cached --check` and inspect the staged path list before committing.
8. Commit with the approved message.
9. Run a fresh status after the commit and report any remaining changes without implying that they belong to the commit.

Do not commit `.obsidian/`, `Attachments/`, `.keep-the-rhythm/`, generated caches, PDFs, editor state, or unrelated notes, scripts, and tools unless the user explicitly places those exact paths in scope. If unrelated changes are present, leave them unstaged and avoid implying they were made for the current task.

## Commit Message Format

```text
<type>: <short summary>

Changed files:
- `path/to/file.md` - brief description of content
- `path/to/file2.md` - brief description of content

Details:
- Optional higher-level summary of what was added or modified
```

## Commit Types

- `notes`
- `update`
- `literature`
- `thesis`
- `refactor`
- `cleanup`
