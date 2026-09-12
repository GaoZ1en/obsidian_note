# Tree-level two-scalar spectrum in global AdS3

Research draft and reproducible checks, 12 September 2026.

## Main deliverable

`paper.pdf` is the 13-page English manuscript. `paper.tex` is its editable
LaTeX source. No authorship or affiliation has been assigned by this draft.

The calculation concerns the minimal Einstein–real-scalar action, standard
source-free scalar boundary conditions, Brown–Henneaux metric falloffs, a
regular centre, fixed boundary time, and the connected tree-level four-scalar
sector. The physical one-scalar mass is an input.

The all-level result is **not** inferred only from the numerical tables. The
proof combines local primary form factors, a crossed Casimir equation, its
explicit finite-band uniqueness determinant, and the known high-spin
stress-tensor-exchange result. The manuscript identifies that literature input
and does not extrapolate inversion to low spin.

## Files and commands

```text
paper.tex / paper.pdf       English article draft
verify_symbolic.py          21 arbitrary-parameter rational identities
verify_tensor_modes.py      spin-1 and spin-2 tensor/primary identities
channel_checks.py           exact radial integrals and Hahn reconstruction
verify_radial.py            comparison with the analytic channel formulas
symbolic_report.json        recorded symbolic checks
tensor_report.json          recorded tensor checks
radial_report.json          all 588 exact channel-coefficient comparisons
proof_audit.md              status, inputs, and remaining scope
```

Install Python 3 and SymPy. The radial computation needs only Python's standard
library. Then run:

```bash
python -m pip install -r requirements.txt
python verify_symbolic.py
python verify_tensor_modes.py
python verify_radial.py --level 12 --output radial_report.json
pdflatex -interaction=nonstopmode -halt-on-error paper.tex
pdflatex -interaction=nonstopmode -halt-on-error paper.tex
```

The radial tests use Delta = 21/20, 3/2, 2, 7/3, and N = n + |ell| <= 12.
There are 49 primary coefficients at each mass in each of three channels,
for 588 exact comparisons. Unused off-diagonal reconstruction residuals and
chiral orthogonality are checked as well. No floating-point tolerance is used.

## Provenance

The starting action, canonical circular reduction, and finite radial
reconstruction are the user's notes in `GaoZ1en/obsidian_note`, pinned commit
`3ea676ef5a43cd11a18f551b0adcac222abc8b9a`, especially:

```text
Articles/Quantization in AdS/linearized gravity/
  gravity scalar one and two particle spectrum.md
  scripts/gravity_scalar_radial_blocks.wl
```

The new draft develops an analytic proof of the previously inferred closed
low-spin formulas. The high-spin result is cited to Kraus, Sivaramakrishnan
and Snively, arXiv:1810.01439, Section 4.2, with the inversion-domain restriction
made explicit. Other primary literature is listed in the paper.

The Research Radar endpoint was attempted but could not be retrieved in this
session. No Research Radar content has been inferred. No repository file was
modified or pushed; this package is a local draft for review.

## Scope

This is not a complete diagonalization of every scalar/boundary-graviton Fock
block, a regulator-specific bare mass calculation, an interacting infinite-mode
existence theorem, or a claim of an exhaustive novelty review. See the audit.
