# AGENTS.md — Guidelines for AI Agents in This Repository

## Repository Overview

This is a **personal Obsidian vault** (Markdown-based knowledge base) for a theoretical physics graduate student. Topics include covariant phase space formalism, AdS/CFT, gravitational entropy, gauge theory, and black hole thermodynamics. **There is no software code, build system, or test framework.**

## Commands

| Task | Command | Notes |
|---|---|---|
| Edit notes | Direct file edits | All content is `.md` with LaTeX math |
| No build step | — | Static Markdown files only |
| No lint/test | — | Not a software project |
| Git operations | `git status`, `git add`, `git commit` | Standard Git repo |

## Directory Structure

```
├── Home.md                          # Vault homepage / table of contents
├── TODO.md                          # Research TODOs, career planning
├── Articles/                        # Academic article writing workspace
│   ├── Quantization in AdS3/        # Main research topic
│   │   ├── preliminary analysis/
│   │   ├── electric field in AdS3/
│   │   ├── linearized gravity in AdS3/
│   │   └── thermodynamics of scalar in ads/
│   └── Thesis/Bachelor/             # Bachelor thesis sections
├── Literature Notes/                # Paper reading notes (arXiv IDs in filenames)
├── Problems/                        # Homework organized by week
│   ├── week 1/ … week 7/
├── Lecture/                         # Lecture notes
├── Drafts/                          # Draft documents
└── Attachments/                     # Media (gitignored)
```

## Markdown & LaTeX Conventions

### Math Delimiters
- **Display math**: `$$ ... $$`
- **Inline math**: `$ ... $`
- Use standard LaTeX physics notation (tensors, indices, differential forms)

### Obsidian-Specific Syntax
- **Wiki-links**: `[[Target Note]]` for internal linking
- **Callouts**: `>[!Note]`, `>[!article]`, `>[!warning]`, etc.
- **Tags**: `#tag` or `#nested/tag`
- **Frontmatter**: YAML block at top of file (title, date, tags, etc.)

### Formatting
- **Headings**: `#` through `######`, use hierarchical structure
- **Bold/Italic**: `**bold**` and `*italic*`
- **Code**: `` `inline` `` for short code or commands
- **Lists**: `-` for unordered, `1.` for ordered
- **Blockquotes**: `>` for quotations or remarks

## Naming Conventions

| Type | Convention | Example |
|---|---|---|
| Literature notes | `Title (arXiv ID).md` | `An Algebra of Observables for de Sitter Space (2206.10780v5).md` |
| Article sections | `section N title.md` | `section 1 introduction.md` |
| Appendices | `Appendix X description.md` | `Appendix A spacelike ADM decomposition.md` |
| Problems | `problem N [description].md` | `problem 1.md`, `problem 2 trans. ver..md` |
| Topic folders | lowercase with spaces | `electric field in AdS3/` |

## Git Configuration

- `.gitignore` excludes: `.obsidian/`, `Attachments/`, `*.tex`, `*.pdf`, `*.aux`, `*.log`, `.DS_Store`
- **Do NOT commit** files in `.obsidian/` or `Attachments/`
- Commit messages should be descriptive and in English

## Agent Guidelines

1. **Preserve existing content** — do not delete or overwrite notes without explicit instruction
2. **Follow naming conventions** — match existing patterns for new files
3. **Use proper LaTeX** — ensure math notation is consistent with physics conventions
4. **Maintain wiki-links** — use `[[Note Name]]` syntax for cross-references
5. **Language** — notes are primarily in English; some files use Chinese. Match the language of the target file.
6. **No code generation** — this is not a software project; do not introduce build scripts or tooling unless explicitly requested
7. **Respect structure** — place new files in the appropriate directory (`Articles/`, `Literature Notes/`, `Problems/`, etc.)

## No Existing Cursor/Copilot Rules

No `.cursor/rules/`, `.cursorrules`, or `.github/copilot-instructions.md` files exist in this repository.
