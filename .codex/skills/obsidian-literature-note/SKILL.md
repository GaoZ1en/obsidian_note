---
name: obsidian-literature-note
description: Maintain arXiv and paper-reading Markdown notes in this vault under Literature Notes/. Use when creating or editing literature-note frontmatter, arXiv metadata, abstract/source summaries, comments or url fields, note-specific summaries, or web-assisted paper enrichment.
---

# Obsidian Literature Note

## Workflow

- Read the target note before editing.
- Preserve the note's existing language and mathematical content.
- Prefer small, incremental changes over broad rewrites.
- Do not add tags or new wiki-links unless explicitly requested.
- Keep `tags: []` empty unless the user explicitly requests tags.
- Prefer adding or improving a concise `summary` rather than rewriting `abstract`.
- Do not rewrite `abstract` unless explicitly asked or the field is clearly malformed.

## arXiv Frontmatter

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

Do not normalize, reorder, or rewrite existing frontmatter merely to match the schema. Apply fields incrementally when they are missing, malformed, clearly wrong, or explicitly requested.

## Source Retrieval

Use online retrieval when the user explicitly requests it or when the task requires confirming arXiv metadata, versions, abstracts, comments, or source-specific paper details.

1. If an arXiv ID or URL is already known, go directly to `https://arxiv.org/html/<id>` when available.
2. If the HTML page is unavailable or insufficient, use `https://arxiv.org/abs/<id>`.
3. Use the PDF or introduction only when HTML and abstract pages are inaccessible or clearly insufficient.
4. Prefer direct source retrieval over generic web search when the canonical paper URL is known.
5. If the user provides a specific source URL, treat it as primary unless it is clearly insufficient.
6. Distinguish source-based summary from broader synthesis.
7. Include the source URL in the conversation when summarizing external material.
8. If broader context is requested, append a short section such as `## Historical context and motivation`.

## Editing Notes

- Keep LaTeX notation consistent with the surrounding note.
- Preserve existing `abstract` wording unless the user asks for a rewrite.
- Avoid adding defensive or repair-history commentary to the note body.
