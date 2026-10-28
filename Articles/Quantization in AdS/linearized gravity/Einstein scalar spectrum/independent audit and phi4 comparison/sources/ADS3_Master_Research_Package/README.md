# Global AdS₃ Einstein–Scalar

## Complete Finite First-Order Spectra and Their Structures

This package contains the English master research note, its editable Markdown and standalone TeX, the compiled PDF, a detailed source-and-claim map, the supplied koishi template, and executable verification with preserved run records.

The delivered note has **11 chapters and complete thematic proof appendices**. Its reader PDF is **190 pages**; the assembled Markdown contains **59,091 whitespace-delimited words and 501 explicit equation tags**. The companion map contains **74 claim dossiers**, connecting statements to proof locations, hypotheses, dependencies, absorbed audit corrections, implementations, and current or inherited verification. These figures describe the delivered build.

## Start here

| Deliverable | Purpose |
| --- | --- |
| [Master note — PDF](docs/ADS3_Einstein_Scalar_Master_Note.pdf) | The complete reader edition, with contents, bookmarks, equations, and proof appendices. |
| [Master note — Markdown](docs/ADS3_Einstein_Scalar_Master_Note.md) | The complete English text in an editable, searchable format. |
| [Master note — standalone TeX](docs/ADS3_Einstein_Scalar_Master_Note.tex) | The complete typesetting source; it compiles directly without the modular authoring tree. |
| [Source and claim map](docs/ADS3_Source_and_Claim_Map.md) | The 74 claim dossiers and the source/proof/verification relationships. |
| [Reproducibility guide](README_REPRODUCIBILITY.md) | The required executable suites, exact environment, recorded results, provenance distinctions, and rejection rules. |
| [Document-source guide](document_source/README.md) | Source-part order, the supplied template, regeneration, and LaTeX compilation. |

Readers who want the finite spectral answer first can begin with Chapter 5, then use Chapters 2–4 for the physical derivation and Chapter 6 for exact kernels and protected families. The source-and-claim map is the reference for the precise status and dependencies of an individual result.

## Scientific scope

The note treats the minimally coupled Einstein–real-scalar problem in global AdS₃ with unit AdS radius, physical scalar gap $\Delta>1$, source-free fast falloff, Brown–Henneaux boundary data, a fixed boundary cylinder and clock, and the specified canonical quantum prescription and physical-gap subtraction. Its energy convention is

$$
E=E_0+Gg+o(G)
$$

on each fixed finite block. The scalar spectrum belongs to the **dressed scalar branch with no independent free boundary-graviton occupation**. Constraint backreaction and virtual gravitational effects enter the pair interaction and inverse dressing.

The physical derivation distinguishes three interfaces: the constructive direct canonical finite pair calculation; the closed Einstein channel formula on the matching renormalized source/Hessian/observable domain; and an optional comparison with a general continuum response representative, whose boundary, lapse/shift, and endpoint conditions remain explicit. The finite spectral construction uses the declared pair input and does not depend on completing that optional continuum reconstruction.

| Part of the note | Main content |
| --- | --- |
| Chapters 1–4 | Conventions, boundary-completed classical theory, covariant phase space, free modes, unreduced canonical perturbation theory, physical-gap subtraction, and the normalized Einstein pair input. |
| Chapter 5 | Complete finite Bose-primary and descendant spectra: physical Gram matrices, exact characteristic polynomials, multiplicities, eigenspaces, projectors, and compressed Racah constructions. |
| Chapter 6 | Collision-kernel classification, logarithmic-symbol bases, Hilbert series, protected low-channel families, exact equality cases, coefficient gaps, and algebraic obstructions. |
| Chapter 7 | Fixed right degree and large left degree: empirical atomic laws, recursive cluster spectral sets, exchange constraints, Fredholm determinants, and retained exact specializations. |
| Chapter 8 | Two large excitation degrees: the geometric spectral law, the distinction between the limiting zero atom and the exact kernel, and exponentially soft positive spectra. |
| Chapter 9 | Fixed excitation degrees and large particle number: exact finite pencils, half-integer expansions, the special chiral integer expansion, and its first correction. |
| Chapters 10–11 | Universality hypotheses, explicit counterexamples to stronger claims, the limits of the established results, and remaining problems. |

The thematic appendices supply the detailed proofs and the ancillary formal transfer results with their hypotheses. Exact algebraic roots and isolating intervals are accepted as complete finite answers; a universal expression by radicals is not assumed. High-excitation and large-particle-number limits are limits of the coefficients $g$ and do not supply a uniform finite-$G$ error estimate or all-order energy control.

## Reproduce the executable checks

The recorded environment is **CPython 3.12.14**, with exact dependency pins in [requirements.txt](requirements.txt): SymPy 1.14.0, mpmath 1.3.0, python-flint 0.9.0, NumPy 2.3.5, and SciPy 1.17.0.

For a new virtual environment on a system providing `python3.12`, run from the package directory:

```bash
python3.12 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
```

With that interpreter active, the complete verification command is:

```bash
python -B reproduce_all.py --output-dir runs/current/my_new_run
```

Alternatively, call `.venv/bin/python` explicitly in place of `python`. On Windows the virtual-environment executable is `Scripts/python.exe`. The output directory must not already exist. Each subsequent reproduction needs a new directory name. Once dependencies are installed, the verification uses only the packaged files and requires no network access.

The complete entry point runs all five required groups. It validates actual task payloads and their inventories, checks hashes, and rejects missing or stale results, failed subprocesses, incomplete summaries, and optimized Python. The independent source trees are copied into fresh private workspaces so scripts that write beside their source files cannot overwrite earlier records. `code/engine` remains the single canonical Fock implementation.

### What actually ran

The complete fresh portable execution recorded in [runs/current/portable_01/reproduce_all_summary.json](runs/current/portable_01/reproduce_all_summary.json) **passed in 102.638021 seconds**:

| Group | Required coverage | Result |
| --- | --- | --- |
| Mandatory hierarchy | All 11 jobs | Passed |
| Finite spectra | All 7 regression tasks | Passed |
| Independent physics | 111 physics checks and 10 ancillary checks | Passed |
| Independent cluster | All 7 programs | Passed |
| Independent semiclassical | All 6 programs | Passed |

All 72 protected file hashes agreed before and after that run; all 19 independent workspace source copies retained their hashes. The portable gate rejected 60 tested missing, malformed, or false payload/summary cases and an optimized invocation. The hierarchy suite separately rejected its nine own mutations and its own optimized invocation. These are different units of verification coverage and are not added into an artificial single test count.

After that complete pass, **three frontend documentation strings** were clarified: help, the level multiplicity rule, and the shell closure statement now name the dressed scalar branch with no independent free boundary-graviton excitations. The entire non-string abstract syntax tree is identical. Fresh help and a two-particle ground-level CLI check passed, with dimension one and $g=-56/5$. The exact diff, both hashes, commands, and outputs are retained in [the post-run revision record](runs/current/portable_scope_revision_01/revision.json). The complete earlier run is preserved exactly; no further full mathematical run is claimed for this documentation-only revision.

## Compile the supplied TeX

Install a LaTeX distribution providing **pdfLaTeX**, **latexmk**, and the packages used by the supplied preamble. From the package directory:

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error -cd docs/ADS3_Einstein_Scalar_Master_Note.tex
```

This compiles the standalone source and writes the PDF beside it in `docs/`. Pandoc and the numerical Python dependencies are not needed for this direct TeX compilation.

The koishi template's **A4, 11-point `article` class and original page geometry are retained**. The generated preamble adds fonts, mathematical notation, tables, line wrapping, and bookmark support needed by the long note; debug `showlabels` output is disabled. The original eleven-file template remains preserved under `document_source/template_original/`.

### Regenerate Markdown and TeX from the authoring parts

For a complete document rebuild, install **Pandoc** in addition to Python and the LaTeX tools. Then run from the package directory:

```bash
python document_source/build_master.py
latexmk -pdf -interaction=nonstopmode -halt-on-error -cd docs/ADS3_Einstein_Scalar_Master_Note.tex
```

The Python script assembles the eighteen source parts and regenerates the Markdown, standalone TeX, modular TeX, and assembly manifest. The second command compiles the PDF. Regeneration replaces the generated master-note files; the [document-source guide](document_source/README.md) describes the source order and build outputs. The source-and-claim map and the scientific execution records are separate artifacts and are not regenerated by this document builder.

## Package layout and evidence

| Directory or file | Contents and interpretation |
| --- | --- |
| `docs/` | The delivered master note in three formats and the source-and-claim map. |
| `document_source/` | Eighteen authoring parts in their original subfolders, the portable builder, preserved template, and generated modular TeX. |
| `code/engine/` | The canonical finite-spectrum implementation. |
| `code/research/` | The advanced modules required by the audited hierarchy and finite checks. |
| `checks/` | Required semantic validators, finite regressions, independent source trees, and explicitly labelled reference inputs. |
| `runs/current/` | Calculations actually executed during this synthesis, including the full portable run, original authoring records, the root independent Vandermonde norm, and the frontend wording check. |
| `runs/inherited/fock_galois/` | Three retained original Galois certificates: two S5 examples and one S6 example. These were not rerun by `reproduce_all.py`. |
| `sources/` | Preserved original source material and repository snapshots for review. |
| `provenance/` | Source inventories, copy/hash records, claim evidence, and documented packaging revisions. |
| `README_REPRODUCIBILITY.md` | The detailed executable contract and result interpretation. |

A preserved source, a proof, a finite calculation, a numerical diagnostic, and a fresh execution record serve different purposes. `checks/reference/hierarchy/` contains inherited schema/reference inputs; those files are not evidence of a fresh run. Earlier authoring records preserve their original timestamps, commands, and environment information. Historical absolute paths in those records are provenance, not execution dependencies. The source-and-claim map and the reproducibility guide identify these distinctions for individual results.

The package can be used to read the argument, inspect its original sources and corrections, reproduce the stated finite checks, or extend the finite spectral calculations while retaining the note's explicit physical and analytic hypotheses.
