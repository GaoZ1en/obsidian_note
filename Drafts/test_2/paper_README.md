# Attributed reconstruction: source package

This package contains an English, self-contained reconstruction of a specified three-fibre sector of warped AdS3 backgrounds in eleven-dimensional supergravity. It is **not an independent-originality submission**. The supplied abstract is reproduced with attribution to Ruggero Noris, [arXiv:2611.21727v1](https://arxiv.org/abs/2611.21727v1); its transcription is retained verbatim.

## Build

The root is [paper.tex](<paper.tex>), explicitly configured for **LuaLaTeX**. Bibliography processing uses **BibTeX**, `natbib`, and `unsrtnat`. No shell escape or external code execution is required.

From the extracted directory, with a standard TeX Live installation:

```bash
latexmk -norc -lualatex -interaction=nonstopmode -halt-on-error \
  -file-line-error -outdir=paper_build paper.tex
```

The resulting PDF is written to `paper_build/paper.pdf`. Build output is isolated from the source files. The source package contains no downloaded third-party PDFs.

## Organization

- [paper.tex](<paper.tex>): root, provenance, introduction, conclusion.
- [paper_abstract.tex](<paper_abstract.tex>): verbatim supplied abstract.
- [paper_geometry.tex](<paper_geometry.tex>): conventions, fields, six-component ansatz and field equations.
- [paper_supersymmetry.tex](<paper_supersymmetry.tex>): exact non-null supersymmetry and normalized exceptional algebra.
- [paper_null.tex](<paper_null.tex>): regular null fields, chirality-dependent complete counts and superalgebras.
- [paper_charges.tex](<paper_charges.tex>): flux charges, quantization, spinor descent and causality.
- [paper_appendices.tex](<paper_appendices.tex>): unequal-sphere example, explicit finite certificate and Majorana representation.
- [references.bib](<references.bib>): primary-source bibliography; only cited entries are printed.

## Scope

The non-null reconstruction is the equal-fibre boundary of the source's broader two-parameter families. The round-sphere four-supercharge null branch is also identified explicitly. The complementary Hopf-chirality analysis and unequal-sphere example carry no claim of literature priority. The paper does not classify all invariant fluxes or all global quotients. Computed charges are the specified brane-flux charges; no unspecified warped energy or angular momentum is assigned a value.
