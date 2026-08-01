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
standalone inline math, reference definitions, HTML blocks, and explicit hard
line breaks are not joined.

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
