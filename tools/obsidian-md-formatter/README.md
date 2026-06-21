# formatter

A conservative Obsidian plugin for formatting math-heavy Markdown notes. The
formatter follows the local note style used by the physics vault: compact
paragraph spacing, `$...$` inline math, and display math blocks shaped like
`$$\begin{align} ... \end{align}$$`.

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
