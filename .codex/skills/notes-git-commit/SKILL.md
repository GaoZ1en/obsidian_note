---
name: notes-git-commit
description: Inspect vault changes and prepare English repository-style git commits. Use when the user asks to commit, stage changes, draft a commit message, summarize changed notes for a commit, or review the working tree before committing.
---

# Notes Git Commit

## Workflow

1. Run `git status`.
2. Run `git diff --stat`.
3. Read changed Markdown files before describing them.
4. Draft the commit message in English.
5. Show the proposed message before executing `git commit`.
6. After confirmation, run `git add -A` and `git commit -m "..."`.

Do not commit `.obsidian/` or `Attachments/`. If unrelated changes are present, identify them and avoid implying they were made for the current task.

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
