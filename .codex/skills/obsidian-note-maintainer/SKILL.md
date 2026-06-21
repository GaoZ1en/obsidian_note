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

- Use `$ ... $` for inline math.
- Let the local formatter plugin handle mechanical Markdown cleanup: display delimiters, `align` wrappers, blank lines, list markers, and trailing whitespace.
- Do not spend prompt budget manually compacting formula source unless editing a snippet that will not pass through the formatter, the source layout affects mathematical readability, or the user asks.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.
- Group displayed formulas by mathematical object or logical unit. Different perturbative orders, components, or cases of the same object should usually live in one `align` or display block, even if one entry is much longer; do not split them into separate formula blocks merely because some entries are short and others are long.
- Do not skip heading levels.
- Prefer ordinary Markdown headings and lists; the formatter handles marker normalization and spacing cleanup.
- Repair broken internal links only when the intended target is clear.
- Keep LaTeX notation consistent with the surrounding note, especially tensors, indices, and differential forms.
- Keep Obsidian callout syntax consistent when callouts are already present.

## Exposition

- Write final note content directly as positive exposition.
- Keep discarded approaches, debugging history, and conversation-level reasoning out of the note body.
- When adapting an argument from another source, present the adapted construction on its own terms and cite the source only when useful.
