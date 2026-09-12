# Editable Article

[paper.tex](paper.tex) is the locally audited revision based on the unchanged [imported revision 2](../imported/revision-2/paper.tex). Read [paper.pdf](paper.pdf) for the compiled version and [the audit](../revision%202%20audit.md) for verification scope.

From this directory, build with:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build paper.tex
cp build/paper.pdf paper.pdf
```

The source is maintained directly in LaTeX; it is not a generated Pandoc fragment. The adjacent `../scripts/` directory contains the executed independent checks named in the article. See [TODO](../TODO.md) for publication work and excluded extensions.
