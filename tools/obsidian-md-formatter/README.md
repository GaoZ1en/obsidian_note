# formatter

A conservative Obsidian plugin for formatting math-heavy Markdown notes. The
formatter follows the local note style used by the physics vault: compact
paragraph spacing, `$...$` inline math, and display math blocks shaped like
`$$\begin{align} ... \end{align}$$`.

With math-delimiter normalization enabled, inline `\(...\)` is converted to
`$...$`. Frontmatter, fenced code blocks, and inline code spans are left
unchanged.

Sentence-start capitalization is enabled by default. It capitalizes lowercase
English prose at paragraph and sentence boundaries while preserving math,
code, URLs, link destinations, Wiki links, images, common abbreviations, and
decimal numbers. List-item starts and Markdown tables keep their original
capitalization.

Title-word capitalization is also enabled by default for ATX and Setext
headings. It capitalizes lowercase English major words, including each major
part of a hyphenated compound, while leaving short articles, conjunctions, and
prepositions unchanged. Inline math, inline code, Wiki links, images, URLs,
technical paths, citations, tags, block IDs, and existing mixed-case notation
such as `AdS`, `pAQFT`, and `xAct` are preserved.

Soft-wrapped prose lines are joined by default, so each paragraph occupies one
Markdown source line and blank lines remain paragraph boundaries. Headings,
lists and their continuation lines, blockquotes, tables, code, display math,
isolated inline math, reference definitions, HTML blocks, and explicit hard
line breaks are not joined. An inline-math-only line directly continuing prose
is joined into that paragraph (for example, `For` followed by `$x=y$,` on the
next source line). Inline math separated from prose by a blank line stays
separate. Prose between multiple inline formulas is treated as ordinary prose.

Bold (`**...**`, `__...__`), italic (`*...*`, `_..._`), combined emphasis,
highlight (`==...==`), and strikethrough (`~~...~~`) at a source-line start
also allow prose joining, including when the emphasis spans a source newline.
The markers are preserved. Labelled fields such as `**Assumptions:** ...`
join with their wrapped body; each new labelled field starts a separate line,
so consecutive `**Status**: ...` and `**Author**: ...` fields stay separate.

## Portable internal links

With **Relativize absolute vault links** enabled (the default), formatting
an Obsidian note converts filesystem-absolute link destinations pointing
inside the current vault. Markdown links become paths relative to the note;
Wiki links become paths relative to the vault root.

For a note at `Literature Notes/arxiv/2026/11/09/2026_11_09_overview.md`
in a vault rooted at `/Users/koishi/Documents/Note`:

- `[inventory](</Users/koishi/Documents/Note/Literature Notes/arxiv/2026/11/09/2026_11_09_inventory.md>)`
  becomes `[inventory](<./2026_11_09_inventory.md>)`.
- `[example](</Users/koishi/Documents/Note/Articles/example.md>)`
  becomes `[example](<../../../../../Articles/example.md>)`.
- `[[/Users/koishi/Documents/Note/Articles/example.md|example]]`
  becomes `[[Articles/example.md|example]]`.

Angle-bracket links retain readable spaces; bare Markdown destinations
remain percent-encoded. Fragments, link titles, images and reference-style
definitions are supported. External URLs and paths outside the vault stay
unchanged, as do frontmatter, fenced code, inline code, and math.

The desktop FileSystemAdapter supplies the vault root; non-filesystem
adapters skip link conversion. Use the diff preview before formatting a
large folder. The converter uses the containing file's actual path.

## Commands

- `Format current note`
- `Format selection`
- `Preview formatting diff`
- `Lint current note`

The file explorer context menu also adds `Format folder` when right-clicking a
folder. It scans Markdown files recursively, shows a confirmation summary, and
then formats only files whose output would change.

By default, Markdown notes are formatted once when opened, and the manual
`Format current note` command applies changes without confirmation. Use
`Preview formatting diff` when you want to inspect the changes before applying
them. The save hook remains disabled by default.

## Development

```sh
npm install
npm run typecheck
npm run test:run
npm run build
```

This project is developed outside `.obsidian/plugins/`. To install it manually,
copy `manifest.json`, `versions.json`, and the built `main.js` into an Obsidian
plugin directory after an explicit installation step.
