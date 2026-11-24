# The Mathematics of Fields and Interfaces

**Topology, geometry, analysis and quantum algebras**  
An English mathematical companion to *Lorentzian Sewing: Geometry, Dynamics, and Observables*. It is a separate book; it does not require any sources or generated files from the other volume.

## Build the book

Run these commands **from the directory containing `main.tex`**. Use a current TeX Live distribution with LuaLaTeX, `latexmk`, the Libertinus text and math fonts, `microtype`, TikZ/PGF and the packages loaded in the preamble. The copy prepared for reading was built with TeX Live 2026. All figures are drawn in TeX. References and the concept index are contained in the sources; no network, shell escape, BibTeX, Biber or MakeIndex step is required.

```sh
mkdir -p build
latexmk -lualatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex
```

The resulting book is `build/main.pdf`. On macOS the default MacTeX executables are in `/Library/TeX/texbin`.

## Reading and source layout

Start with the preface for the reader's background and conventions. The five parts develop spaces and integration; the geometry of fields and spacetime; distributions, waves and gauge complexes; classical and quantum observables; and an application to a field on a spatial circle. Problem sets have worked solutions or hints. The back matter contains a chapter-by-chapter guide to the original book, a linked index of concepts and references.

`main.tex` determines the reading order. In `chapters/`, `01.tex` through `12.tex` are followed by `complexes.tex` (printed Chapter 13). The source files `13.tex` through `17.tex` are printed Chapters 14–18. Cross-references use labels rather than the filenames. Build the root document, not the chapter fragments.
