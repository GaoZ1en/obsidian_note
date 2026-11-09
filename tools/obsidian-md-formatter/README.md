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

Absolute Wiki-link normalization is enabled by default. For example, in a vault
located at `/Users/koishi/Documents/Note`,
`[[/Users/koishi/Documents/Note/Articles/example.md#Section|label]]` becomes
`[[Articles/example.md#Section|label]]`. The root is detected from Obsidian's
filesystem adapter, not hardcoded. Links and embeds preserve extensions, aliases,
heading anchors and block references. POSIX paths, Windows drive/UNC paths and
local `file:///` URLs are supported. Relative links, paths outside the vault,
frontmatter, code and math spans are not rewritten. If no filesystem root is
available (for example on mobile), link conversion is skipped. Disable
`Normalize absolute Wiki links` to retain the old behavior. This runs through
all existing formatting entry points; it does not add a background vault scan.
As with the other rules, `Format selection` treats the selected text as an
independent Markdown fragment; include surrounding code/math delimiters when
those regions should remain protected.

Absolute ordinary Markdown links and image/reference destinations are also
normalized by default. Unlike Wiki links, their destination must be relative
to the **source note's directory**, not the vault root, so the Markdown syntax
and labels remain intact and path components are URL-encoded. For example,
`[label](</vault/Articles/a.md#Heading>)` in `Literature/paper.md` becomes
`[label](<../Articles/a.md#Heading>)`. The source note path is passed explicitly
for every command and open/save/folder hook; conversion is skipped if it is
unavailable. Disable `Normalize absolute Markdown links` independently of Wiki
links. Fragments are preserved rather than guessed: code-viewer fragments such
as `#L7-L27` must be replaced with a real Obsidian heading or block reference
when repairing a broken jump.

Display-math row normalization reaches a stable form before environment line
positions are recorded. In particular, joining source-only wraps must not
introduce extra closing tokens for `align`, `align*`, or `aligned`; explicit row
breaks and nested environments remain intact on repeated formatting.

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
