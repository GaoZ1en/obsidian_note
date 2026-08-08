---
name: pandoc-texfiles
description: Create, maintain, and use Pandoc workflows that convert Obsidian Markdown article drafts into LaTeX fragment files under texfiles/data. Use when Codex needs to add or update pandoc-texfiles.yaml mappings, thin article Makefiles, root scripts/pandoc-texfiles helpers, or dry-run/regenerate Markdown-to-TeX article fragments in this vault.
---

# Pandoc Texfiles

## Workflow

- Read the root `AGENTS.md` and any local `AGENTS.md` for the article path before editing.
- Inspect the article directory, the source Markdown files, `texfiles/main.tex`, and existing `texfiles/data/*.tex` before changing mappings.
- Before regenerating fragments, survey source headings, existing TeX labels, manuscript references, and math delimiter style; encode stable choices in `pandoc-texfiles.yaml` rather than fixing generated TeX by hand.
- Keep the article-local structure authoritative. Do not move, rename, or merge manuscript files unless explicitly requested.
- Use the shared helper at `scripts/pandoc-texfiles/build_texfiles.py`; do not copy conversion logic into each article.
- Keep each article's mapping in `pandoc-texfiles.yaml`, with source and target paths relative to that article directory.
- Keep article `Makefile`s thin: delegate fragment generation to the root helper and keep PDF compilation local to `texfiles/main.tex`.
- Define `PDF_POST_HOOK ?= $(LATEXMK) -c main.tex` in article `Makefile`s and run it after successful `make pdf` compilation, so `main.pdf` remains while LaTeX auxiliary files are cleaned automatically.
- Determine the article's numbering policy before writing reference replacements. This decides whether generated references should use `\ref{...}` or display-text links.

## Preconversion Survey

For each article, read enough of the Markdown and current TeX to determine these items before writing or updating `postprocess`:

- Headings: collect section, subsection, and appendix headings from the mapped Markdown files. Prefer exact numbered heading keys in `heading_labels` when duplicate unnumbered headings may occur.
- Labels: inspect existing `texfiles/data/*.tex` and `texfiles/main.tex` for `\label{...}` names. Preserve stable manuscript labels where they already exist.
- References: find prose references such as `Section 1`, `Appendix B`, and explicit TeX references. Put stable replacements in `reference_replacements` only when the target label is known.
- Math delimiters: check whether the manuscript prefers `$...$`, `\(...\)`, `align`, `equation`, or display brackets. Use `inline_math` and `display_math` only for syntactic normalization, not for changing mathematical content.
- TeX cleanup: record local syntactic fixes such as bookmark-safe headings or harmless macro substitutions in `heading_pdf_strings` and `text_replacements`.

After the survey, convert one representative fragment to `/tmp` and inspect headings, labels, references, and math delimiters before overwriting tracked article fragments.

## Numbering And References

Choose one numbering policy per article:

- LaTeX-numbered manuscript: headings should not contain visible numbers after postprocessing. Use `strip_heading_numbers: true`, preserve labels, and write references as `Section \ref{label}` or `Appendix \ref{label}`.
- Markdown-numbered manuscript: headings intentionally keep visible numbers such as `3.4` because `texfiles/preamble.tex` has `\setcounter{secnumdepth}{0}` or the skeleton otherwise suppresses LaTeX counters. Use `strip_heading_numbers: false`, preserve the displayed heading number, and write references as `\hyperref[label]{Section~3.4}` or `\hyperref[label]{Appendix~A}`.

When `secnumdepth` is `0`, do not generate `Section \ref{sec:...}` for section counters unless the counter is known to be stepped elsewhere. It can compile into an empty hyperlink. Prefer `\hyperref[label]{display text}` in this case.

Keep `reference_replacements` narrow:

- Prefer exact Pandoc wikilink output, such as `\href{...}{Appendix A}`, when replacing obsolete Obsidian links.
- Prefer contextual prose replacements such as `shown in Appendix A` over global replacements for `Appendix A`.
- Avoid replacement targets that contain another source key. The helper applies each replacement group in a single scan, but source patterns should still be written as if cascading would be harmful.
- Sort longer and more specific references before shorter ones in YAML for readability, even though the helper also protects longer matches.

## Standard Project Files

- Root helper: `scripts/pandoc-texfiles/build_texfiles.py`
- Root fragment template: `scripts/pandoc-texfiles/fragment.tex`
- Article mapping: `<article>/pandoc-texfiles.yaml`
- Optional article wrapper: `<article>/Makefile`
- Existing TeX assembly: `<article>/texfiles/main.tex`, `preamble.tex`, `information.tex`, and `data/*.tex`

Use this mapping shape:

```yaml
pandoc:
  from: markdown+wikilinks_title_after_pipe
  to: latex
  wrap: none

fragments:
  - source: "1_model.md"
    target: "texfiles/data/section_1.tex"
```

Use `postprocess` when an article should follow manuscript TeX style instead of raw Pandoc style:

```yaml
postprocess:
  strip_heading_numbers: true
  strip_appendix_prefix: true
  inline_math: dollar
  display_math: align
  compact_blank_lines: true
  heading_labels:
    "1. The Maxwell theory in the global AdS$_3$ spacetime": "sec:maxwell-fields-global-ads3"
  heading_pdf_strings:
    "The Maxwell theory in the global AdS$_3$ spacetime": "The Maxwell theory in the global AdS3 spacetime"
  text_replacements:
    '{\Huge|}': '\bigg|'
  reference_replacements:
    "Section 1": 'Section \ref{sec:maxwell-fields-global-ads3}'
```

Prefer exact numbered heading keys when duplicate unnumbered headings may occur. Use `reference_replacements` only for stable manuscript references whose target labels are known. Use `text_replacements` only for local TeX cleanup that is syntactic rather than mathematical.

## Commands

From an article directory:

```bash
make texfiles-dry-run
make texfiles
make force-texfiles
make pdf
make clean
```

`make pdf` should run `latexmk` and then `PDF_POST_HOOK`; by default the hook is `latexmk -c main.tex`, which removes auxiliary files but keeps `main.pdf`. To keep auxiliary files for debugging, run `make pdf PDF_POST_HOOK=true`.

From the vault root or another directory:

```bash
python3 scripts/pandoc-texfiles/build_texfiles.py --config "Articles/.../article/pandoc-texfiles.yaml" --dry-run --force
```

## Verification

- Always run a dry-run before regenerating existing fragments.
- For a new or changed mapping, run the helper once with `--dry-run --force` and confirm the listed Pandoc commands match the intended source-to-target pairs.
- Verify one representative conversion into `/tmp` when changing Pandoc options or the fragment template.
- Inspect the representative conversion for heading labels, visible numbering, `\href{...}` remnants, nested `\hyperref`, and math delimiters before overwriting fragments.
- Do not run `make texfiles` or `make force-texfiles` unless the task explicitly calls for overwriting generated TeX fragments.
- `make pdf` may be used to compile the current `texfiles/main.tex`; report whether it was run separately from fragment regeneration.
- Because the default `make pdf` cleans auxiliary files after a successful compile, inspect `texfiles/main.log` before the hook only when debugging warnings matters, or run `make pdf PDF_POST_HOOK=true` and then grep the retained log.
- After PDF compilation with logs retained, grep `texfiles/main.log` for actual `LaTeX Warning`, `Package ... Warning`, `undefined`, `Rerun`, `Overfull`, and `Underfull` lines. Distinguish hard correctness problems from ordinary overfull box cleanup.

## Formula Boundary

Changing conversion tooling or mappings does not by itself change mathematical content. If the task also asks to edit formulas, derivations, or physics claims in Markdown or TeX, follow the root formula-verification rules before editing those claims.
