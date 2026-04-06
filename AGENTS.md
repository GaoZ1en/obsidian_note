# AGENTS.md — Guidelines for AI Agents in This Repository

## Repository Overview

This is a **personal Obsidian vault** (Markdown-based knowledge base) for a theoretical physics graduate student. Topics include covariant phase space formalism, AdS/CFT, gravitational entropy, gauge theory, and black hole thermodynamics. **There is no software code, build system, or test framework.**

## Commands

| Task | Command | Notes |
|---|---|---|
| Edit notes | Direct file edits | All content is `.md` with LaTeX math |
| No build step | — | Static Markdown files only |
| No lint/test | — | Not a software project |
| Git operations | `git status`, `git diff`, `git add`, `git commit` | See Git Workflow below |

## Agent Scope

You are permitted to perform the following tasks:

### 1. Git Operations
- Run `git status`, `git diff`, `git add`, `git commit`
- Write descriptive commit messages listing changed files and content summaries
- **Always show the proposed commit message to the user before executing**

### 2. Metadata Writing (YAML Frontmatter)
Add or update YAML frontmatter at the top of notes. **Do NOT add tags or wiki-links** unless explicitly asked.

**Literature notes** (arXiv papers in `Literature Notes/`):
```yaml
---
paper id: 2206.10780v5
title: Paper Title Here
authors: [Author One, Author Two]
publication date: 2022-06-22T00:22
abstract: "Brief summary of the paper's abstract and main results."
comments: "54 pages, v5: correction at end of section 2.4"
url: https://arxiv.org/abs/2206.10780v5
tags: []
---
```

**Non-literature notes** (Articles, Note, Lecture, etc.):
```yaml
---
title: Note Title
date: 2025-04-05
summary: "Brief summary of the note's content (1-2 sentences)."
---
```

### 3. Formatting
- Unify math display style (`$$ ... $$` for display, `$ ... $` for inline)
- Fix heading hierarchy (no skipping levels: `#` → `##` → `###`)
- Fix broken internal links
- Standardize list formatting (`-` for unordered, `1.` for ordered)
- Ensure consistent LaTeX physics notation (tensors, indices, differential forms)

### 4. Content Processing
- Generate summaries of long notes and add to frontmatter `summary` field
- Organize uncategorized drafts into proper directories
- Merge duplicate notes (only with explicit user confirmation)
- Extract key formulas/results to `Note/useful results/` (only with explicit instruction)

### 5. Home.md Maintenance
- When new notes or directories are added, update `Home.md` table of contents
- When files are deleted, remove corresponding entries from `Home.md`
- Keep callout blocks (`>[!Note]`, `>[!article]`, etc.) consistent

### 6. File Management & README Generation

When asked to organize a directory, browse each `.md` file, categorize them by topic, and generate a `README.md`.

**README.md format:**
```markdown
# Directory Name

Brief description of what this directory contains.

## Contents

### Category Name (if applicable)
| File | Description |
|---|---|
| file1.md | Brief description of content |
| file2.md | Brief description of content |
```

**Workflow:**
1. List all `.md` files in the target directory
2. Read the first 10-15 lines of each file to understand its content
3. Group files by topic/theme
4. Write a `README.md` with directory title, description, and categorized file table
5. Add reading order section if applicable
6. **Show the proposed README to the user before creating the file**

**When to add README:**
- Directories with 5+ `.md` files
- Directories with complex or non-obvious organization
- Research directories with multiple subtopics

### Prohibited Actions
- **Do NOT delete** any notes or content without explicit instruction
- **Do NOT overwrite** existing content — only make incremental changes
- **Do NOT add tags** (`#tag`) or wiki-links (`[[link]]`) unless explicitly asked
- **Do NOT run** shell commands other than git operations
- **Do NOT introduce** build scripts, tooling, or code
- **Do NOT edit** `.keep-the-rhythm/` backup files unless explicitly asked

### Pre-Execution Confirmation
For any edit (not git operations), **show the planned changes to the user before executing**.

## Git Commit Workflow

When asked to commit, follow this process:

1. Run `git status` to see changed files
2. Run `git diff --stat` to understand the scope of changes
3. Read changed files to understand their content
4. Write a commit message using the format below
5. **Show the proposed commit message to the user before executing**
6. After confirmation, run `git add -A && git commit -m "..."`

### Commit Message Format

```
<type>: <short summary>

Changed files:
- `path/to/file.md` — brief description of content
- `path/to/file2.md` — brief description of content

Details (optional):
- What was added/modified
```

**Commit types:**
| Type | Usage |
|---|---|
| `notes` | New notes added |
| `update` | Existing notes modified |
| `literature` | Literature/paper notes |
| `thesis` | Thesis-related changes |
| `refactor` | File reorganization |
| `cleanup` | Deletions and housekeeping |

## Directory Structure

```
├── Home.md                          # Vault homepage / table of contents
├── TODO.md                          # Research TODOs, career planning
├── Articles/                        # Academic article writing workspace
│   ├── Quantization in AdS3/        # Main research topic
│   │   ├── Proca in AdS3/
│   │   ├── Proca-Chern-Simons/
│   │   ├── electric field in AdS3/
│   │   ├── linearized gravity in AdS3/
│   │   ├── preliminary analysis/
│   │   └── thermodynamics of scalar in ads/
│   ├── Noether charge/
│   ├── Thesis/Bachelor/
│   ├── TTbar deformation/
│   ├── Test particle/
│   ├── Ryu-Takayanagi formula/
│   └── higher form symmetry/
├── Literature Notes/                # arXiv paper reading notes
├── Note/
│   ├── Physics/                     # Physics topic notes
│   ├── Mathematics/                 # Math reference notes
│   ├── Code/                        # Programming tips (vim, xAct, tikz)
│   ├── Reading/                     # Textbook/lecture reading notes
│   │   ├── adscft/
│   │   ├── black hole thermodynamics/
│   │   ├── symmetry and topology/
│   │   └── archived/                # Abandoned topics (was "give up")
│   └── useful results/              # Quick-reference formulas
├── Lecture/
│   ├── courses/                     # University courses (by semester)
│   │   ├── graduate/
│   │   └── undergraduate/
│   ├── conferences/                 # Conferences and summer schools
│   ├── online-lectures/             # Online course notes
│   ├── group-meetings/              # Weekly group meeting notes
│   └── talks/                       # Academic talks and seminars
├── Drafts/                          # Working drafts (uncategorized)
└── Attachments/                     # Media files (gitignored)
```

## Markdown & LaTeX Conventions

### Math Delimiters
- **Display math (aligned)**: `$$\begin{align} ... \end{align}$$` — use for multi-line equations
- **Display math (single)**: `$\displaystyle{...}$` — use for single-line displayed equations
- Use standard LaTeX physics notation (tensors, indices, differential forms)

### Obsidian-Specific Syntax
- **Callouts**: `>[!Note]`, `>[!article]`, `>[!warning]`, etc.
- **Frontmatter**: YAML block at top of file
- **Wiki-links**: `[[Target Note]]` — only use if already present in the file; do NOT add new ones unless asked
- **Tags**: `#tag` — do NOT add tags unless explicitly asked

### Formatting
- **Headings**: `#` through `######`, use hierarchical structure (no skipping levels)
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
| Topic folders | lowercase with spaces | `electric field in AdS3/` |
| Lecture courses | `course name by Instructor/` | `general relativity by Yu Tian and Xiaoning Wu/` |

## Git Configuration

- `.gitignore` excludes: `.obsidian/`, `Attachments/`, `*.tex`, `*.pdf`, `*.aux`, `*.log`, `.DS_Store`
- **Do NOT commit** files in `.obsidian/` or `Attachments/`
- Commit messages must be in English

## Agent Guidelines

1. **Preserve existing content** — do not delete or overwrite notes without explicit instruction
2. **Follow naming conventions** — match existing patterns for new files
3. **Use proper LaTeX** — ensure math notation is consistent with physics conventions
4. **No tags or wiki-links** — do NOT add `#tags` or `[[links]]` unless explicitly asked
5. **Language** — notes are primarily in English; some files use Chinese. Match the language of the target file.
6. **No code generation** — this is not a software project; do not introduce build scripts or tooling
7. **Respect structure** — place new files in the appropriate directory
8. **Show changes before editing** — always present your plan before making edits
9. **Read before describing** — when generating README or commit messages, read file content first to produce accurate descriptions
9. **Read before describing** — when generating README or commit messages, read file content first to produce accurate descriptions

## Local AGENTS Hierarchy

When working inside the following subtrees, consult the local `AGENTS.md` in addition to this root file:

- `Articles/Quantization in AdS3/AGENTS.md` — umbrella rules for the AdS3 quantization research workspace
- `Articles/Quantization in AdS3/Proca-Chern-Simons/AGENTS.md` — local manuscript and workflow rules for the Proca-Chern-Simons project
- `Articles/Thesis/Bachelor/AGENTS.md` — thesis-specific structure and naming rules
- `Lecture/courses/AGENTS.md` — course-note organization, homework, and cheat-sheet conventions
- `Lecture/group-meetings/AGENTS.md` — chronological weekly meeting-note conventions
- `Note/useful results/AGENTS.md` — compact quick-reference note conventions

## Ignore During Routine Edits

- `.keep-the-rhythm/` contains automated backups; do not edit, reorganize, or summarize it unless explicitly asked.
- `.obsidian/` contains editor configuration; avoid modifying it unless the user explicitly asks.
- `Attachments/` stores media and PDFs; do not reorganize or edit its contents unless explicitly asked.

## No Existing Cursor/Copilot Rules

No `.cursor/rules/`, `.cursorrules`, or `.github/copilot-instructions.md` files exist in this repository.
