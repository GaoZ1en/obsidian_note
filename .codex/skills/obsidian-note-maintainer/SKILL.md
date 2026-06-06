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
- For long LaTeX formulas, use a two-stage formula-layout workflow. It is acceptable to draft complex formulas in an expanded one-term-per-line working layout while checking coefficients, signs, indices, or xAct output, but final note content should use compact LaTeX source. Most importantly, if a display formula visually fits on one line, keep the source on one line as `$$ ... $$`; only introduce source line breaks when the displayed formula itself benefits from being multiline. In a multi-line environment, each equation or continuation that visually fits on one line should still occupy one source line. For multi-line environments, prefer `$$\begin{align}` and `\end{align}$$` on the delimiter lines. Do not leave `&`, `\\`, `=`, `+`, `\frac`, `\Gamma`, or single index factors on their own source lines. Avoid global newline-deletion passes; compact only inside intended math blocks and rerun relevant formula or formatting checks.
- Avoid local shorthand symbols that merely rename a single simple expression, term, mode, or already-labelled object. A shorthand should reduce real repetition, name an object or family with independent semantic content, or make a multi-step derivation clearer; otherwise write the expression inline and keep its existing labels or arguments visible.
- Group displayed formulas by mathematical object or logical unit. Different perturbative orders, components, or cases of the same object should usually live in one `align` or display block, even if one entry is much longer; do not split them into separate formula blocks merely because some entries are short and others are long.
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
