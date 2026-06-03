---
name: obsidian-note-maintainer
description: Maintain non-literature Obsidian notes in this theoretical physics vault. Use when editing ordinary notes, drafts, lecture notes, article sections, homework, summaries, Markdown structure, frontmatter, headings, lists, internal links, or LaTeX delimiters outside Literature Notes/.
---

# Obsidian Note Maintainer

## Workflow

- Read the target note before editing.
- Preserve existing content, language, notation, and mathematical meaning.
- Make incremental edits only.
- Do not add tags or new wiki-links unless explicitly requested.
- Do not normalize, reorder, or rewrite frontmatter merely to match a template.
- Use the root `AGENTS.md` formula-verification rules before changing formulas, derivations, or equation-heavy content.

## Non-Literature Frontmatter

Use this schema for ordinary notes, articles, lectures, homework notes, and drafts when frontmatter is missing or clearly malformed:

```yaml
---
title: Note Title
date: 2025-04-05
summary: "Brief summary of the note's content in one or two sentences."
---
```

Apply fields incrementally. Preserve existing valid fields unless the user asks for normalization.

## Formatting

- Use `$$ ... $$` for display math.
- Use `$ ... $` for inline math.
- Do not skip heading levels.
- Use `-` for unordered lists.
- Use `1.` for ordered lists.
- Repair broken internal links only when the intended target is clear.
- Keep LaTeX notation consistent with the surrounding note, especially tensors, indices, and differential forms.
- Keep Obsidian callout syntax consistent when callouts are already present.

## Exposition

- Write final note content directly as positive exposition.
- Keep discarded approaches, debugging history, and conversation-level reasoning out of the note body.
- When adapting an argument from another source, present the adapted construction on its own terms and cite the source only when useful.
