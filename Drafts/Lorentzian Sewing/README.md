# Lorentzian Sewing: Geometry, Dynamics, and Observables

An English graduate text for readers familiar with an action principle, a wave equation, and basic QFT and GR. The introduction begins with a pulse that meets an artificial wall. Parts I–IV build the geometry, the open regional field theory, the classical reconstruction, and the perturbative quantum comparison. Appendices A–C treat orientations, traces and hyperbolic support, and Hadamard distributions. Appendix D, *Geometry from the ground up: building a seam*, can be read first: it starts with open sets and ends by constructing fields on two strips with sign-valued gluing maps. Worked checks and exercises are interleaved with the theory; there is no separate volume of models.

## Reading

For a first pass, read the introduction, the signed-collar construction, and Chapters 4, 7, and 8. Chapter 7 derives transmission from variation and proves smooth reconstruction on a regular nonlinear branch; Chapter 8 constructs and tests the causal response. Chapter 9 treats observables that cross the cut. Part IV distinguishes a symplectic label space, a state, and a renormalization prescription. The guide at the back points to definitions and central formulas.

The claims are of different kinds. The smooth atlas and field descent results have explicit geometric hypotheses. The regular-branch statement is local and starts with classical solutions smooth up to each half-face. The general causal interface theorem requires range, support and uniqueness on named domains; it comes with solved spacelike, timelike and characteristic problems, not a universal boundary-value theorem. The quantum chapters prove specific linear and perturbative comparisons and give an explicit loop extension, not an all-orders theorem for arbitrary defects, gauges or null surfaces.

## Editable LaTeX source

The project entry is `main.tex` (LuaLaTeX). `chapters/` contains the introduction and Chapters 1–13; `appendices/` contains A–D. The entry for Appendix D is `appendices/D.tex`; its differential geometry, bundle, and field constructions are split into three included files. `guide.tex` and `reading.tex` supply the notation guide, reading suggestions and references. Diagrams are vector TikZ drawings in the source. There are no external image files or bibliography databases. `Checks.md` records selected independent checks and their scope, separately from the text.

With a standard TeX Live installation providing LuaLaTeX, Libertinus, TikZ and latexmk, run this in the source directory:

```sh
out=$(mktemp -d) || exit 1
latexmk -lualatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$out" main.tex
printf 'PDF: %s/main.pdf\n' "$out"
```

The source was written as a separate manuscript. It does not replace the original note on gluing and observable algebras.
