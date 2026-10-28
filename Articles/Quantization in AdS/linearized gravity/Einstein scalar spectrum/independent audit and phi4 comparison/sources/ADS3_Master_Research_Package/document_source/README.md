# Document sources and build guide

This directory contains the **eighteen authoring parts** used to assemble the English master note, the original koishi template, the portable assembly script, and the generated modular TeX. The delivered reader files are in [`../docs/`](../docs/): [Markdown](../docs/ADS3_Einstein_Scalar_Master_Note.md), [standalone TeX](../docs/ADS3_Einstein_Scalar_Master_Note.tex), and [PDF](../docs/ADS3_Einstein_Scalar_Master_Note.pdf).

The delivered build has 11 chapters and complete thematic appendices, with 59,091 whitespace-delimited Markdown words, 501 explicit equation tags, and a 190-page PDF. The separate [source-and-claim map](../docs/ADS3_Source_and_Claim_Map.md) contains 74 claim dossiers. It is maintained separately from the master-note assembly.

## Build requirements

The complete Markdown-to-PDF workflow requires:

- Python 3; the delivered assembly used the same Python 3.12 environment recorded for the package.
- Pandoc, available as `pandoc` on `PATH`, to convert the assembled Markdown abstract and body into LaTeX.
- A LaTeX distribution providing pdfLaTeX, latexmk, and the packages in the original and generated preambles.

The document builder uses Python's standard library and invokes Pandoc. It does not run the scientific verification or require its SymPy/NumPy dependency stack. LaTeX is used by the subsequent PDF compilation step. The detailed package verification environment is specified separately in [`../requirements.txt`](../requirements.txt) and the [reproducibility guide](../README_REPRODUCIBILITY.md).

## Compile the existing standalone TeX

From the **package root**, run:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error -cd docs/ADS3_Einstein_Scalar_Master_Note.tex
```

The `-cd` option makes the TeX file's directory the compilation directory. The output is `docs/ADS3_Einstein_Scalar_Master_Note.pdf`, with LaTeX's auxiliary and log files beside it. The standalone TeX embeds the preamble, title information, abstract, and body; compiling it does not require Pandoc or the modular source tree.

## Regenerate the master note

From the **package root**, run:

```bash
python document_source/build_master.py
latexmk -pdf -interaction=nonstopmode -halt-on-error -cd docs/ADS3_Einstein_Scalar_Master_Note.tex
```

The first command reads the source parts in the fixed order below and regenerates the master Markdown and TeX. The second command produces the PDF. The packaged builder resolves its inputs relative to its own directory and uses the portable output target `OUT = ROOT / "docs"`; no historical workspace path is needed.

The document builder writes:

| Output | Purpose |
| --- | --- |
| `../docs/ADS3_Einstein_Scalar_Master_Note.md` | Complete assembled Markdown. |
| `../docs/ADS3_Einstein_Scalar_Master_Note.tex` | Complete standalone LaTeX source. |
| `tex_build/abstract.tex`, `tex_build/body.tex` | Converted and formatted abstract and body. |
| `tex_build/preamble.tex`, `tex_build/information.tex`, `tex_build/main.tex` | Modular preamble, title page information, and entry point. |
| `tex_build/abstract.md`, `tex_build/body.md` | Intermediate Markdown written during regeneration. |
| `tex_build/ADS3_Einstein_Scalar_Master_Note.tex` | A build-directory copy of the standalone TeX. |
| `assembly_manifest.json` | Input-part SHA256 hashes, editorial integration records, word/line counts, equation-tag counts, duplicate-tag checks, and control-character checks. |

The builder normalizes mathematical delimiters outside code fences, applies the explicit editorial integration rules contained in `build_master.py`, and records provenance-reference moves. It reports duplicate equation tags or invalid control characters as build failures. Inspect `assembly_manifest.json` and the LaTeX log when reviewing a regenerated edition.

Generated Markdown and TeX files are replaced when the builder runs. Make textual changes in the authoring parts so that regeneration preserves them. The scientific run records, original sources, and source-and-claim map are not modified by this builder.

## Authoring parts and assembly order

Paths in this table are relative to `document_source/`. The authoring subdirectories are retained so the source order and contribution boundaries remain inspectable.

| Order | Source part | Assembled content |
| ---: | --- | --- |
| 1 | `frontmatter.md` | Metadata, abstract, and Chapter 1: the problem, conventions, and proof dependencies. |
| 2 | `physics/physics.md` | Chapters 2–4: classical theory, unreduced canonical derivation, and Einstein pair input. |
| 3 | `finite_chapter.md` | Chapter 5: complete finite spectra and worked examples. |
| 4 | `exact_chapter.md` | Chapter 6: exact kernels, protected families, and coefficient gaps. |
| 5 | `cluster/cluster.md` | Chapter 7: the fixed-degree cluster hierarchy. |
| 6 | `semiclassical/chapter8.md` | Chapter 8: balanced high excitation and soft positive modes. |
| 7 | `semiclassical/chapter9.md` | Chapter 9: stable particle-number pencils and expansions. |
| 8 | `semiclassical/chapter10.md` | Chapter 10: universality classes and counterexamples. |
| 9 | `discussion.md` | Chapter 11: scope, limitations, and remaining problems. |
| 10 | `physics/physics_appendices.md` | Appendices A–D: canonical inverses, quantum subtraction, source–Casimir identities, and ancillary formal transfer. |
| 11 | `finite_appendices.md` | Appendices F–G: intertwiners, Racah compilation, positive pair ordering, and the collision gap. |
| 12 | `exact_appendices.md` | Appendices K, L, and O: full kernel classifications, low-channel eigenspaces, and algebraic obstructions. |
| 13 | `cluster/cluster_appendices.md` | Appendix CL: complete cluster proofs and exact specializations. |
| 14 | `semiclassical/appendix_sc.md` | Appendix SC: balanced spectral limits and soft-mode proofs. |
| 15 | `semiclassical/appendix_st.md` | Appendix ST: stable metrics, normal forms, and low effective operators. |
| 16 | `semiclassical/appendix_un.md` | Appendix UN: exact determining identities for universality. |
| 17 | `verification_appendix.md` | Appendix V: verification evidence and its interpretation. |
| 18 | `bibliography.md` | References used in the note. |

The thematic appendix labels are intentional. They are stable proof references, rather than a consecutively renamed alphabetic sequence.

## The supplied template and typesetting changes

`template_original/` preserves all **eleven files** of koishi's uploaded template: `main.tex`, `preamble.tex`, `information.tex`, `snippets.tex`, and seven files under `data/`. This directory is the original template record. The reader edition is generated from it by `build_master.py`.

The original `\documentclass[a4paper,11pt]{article}` and page geometry are retained, including the **15.7 cm text width and 22.5 cm text height**. The generated preamble adds the support required by the long note:

- T1/UTF-8 text setup and Latin Modern fonts.
- Additional mathematical fonts and bold symbols.
- Long tables, booktabs rules, and array support.
- Microtypography, URL and code wrapping, and limited display breaking.
- Heading spacing, wider table-of-contents page-number space, Unicode/bookmark support, and PDF metadata.

The template's debugging `showlabels` package is disabled in the reader edition. The original template files are retained unchanged; typesetting additions are visible in the builder and generated preamble.

For an optional check of the modular TeX, run from the package root:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error -cd document_source/tex_build/main.tex
```

This produces `document_source/tex_build/main.pdf`. Compile the standalone file in `docs/` when updating the delivered reader PDF.

## Documents, proofs, and execution evidence

Document regeneration assembles and typesets the argument. It does not rerun the finite spectra, canonical integrals, cluster certificates, or semiclassical checks. To execute those checks, use the package-root command:

```bash
python -B reproduce_all.py --output-dir runs/current/my_new_run
```

The completed full portable run, inherited Galois certificates, earlier authoring runs, and root independent arithmetic are distinguished in the [package README](../README.md), the [reproducibility guide](../README_REPRODUCIBILITY.md), and the [source-and-claim map](../docs/ADS3_Source_and_Claim_Map.md). The documented post-run frontend revision changed three explanatory strings only; it has its own syntax-tree and CLI evidence and is not described as a second full mathematical execution.

Throughout the note the physical claim is $E=E_0+Gg+o(G)$ on a fixed finite block of the dressed scalar branch, with the prescribed pair-input domain and optional continuum-response conditions kept explicit. Formatting or regeneration does not strengthen those hypotheses or the status of an inherited certificate.
