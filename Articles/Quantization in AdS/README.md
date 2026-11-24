# Quantization in AdS

Research notes on quantization and perturbative field theory in AdS, including AdS3 gauge and gravity systems, AdS4 linearized gravity, scalar thermodynamics, covariant phase space, pAQFT, and gravitational energy.

## Open a manuscript

For these four drafts, read the saved PDF or open the Markdown section to revise the text. The section map names the Markdown inputs and the TeX fragments generated from them; the TeX root sets the layout and order. A saved PDF is not necessarily newer than the notes.

| Manuscript | Read | Edit the text | Typeset |
|---|---|---|---|
| Maxwell in AdS3 | [PDF](<electric field/article/texfiles/main.pdf>) | [Model](<electric field/article/1_model.md>) · [section map](<electric field/article/pandoc-texfiles.yaml>) | [TeX root](<electric field/article/texfiles/main.tex>) |
| Linearized gravity in AdS3 | [PDF](<linearized gravity/article/texfiles/main.pdf>) | [Model](<linearized gravity/article/1_model.md>) · [section map](<linearized gravity/article/pandoc-texfiles.yaml>) | [TeX root](<linearized gravity/article/texfiles/main.tex>) |
| Gravitational energy | [PDF](<gravitational energy/article/texfiles/main.pdf>) | [Introduction](<gravitational energy/article/0_introduction.md>) · [section map](<gravitational energy/article/pandoc-texfiles.yaml>) | [TeX root](<gravitational energy/article/texfiles/main.tex>) |
| Proca–Chern–Simons | [PDF](<Proca-Chern-Simons/arxiv/texfiles/main.pdf>) | [Model](<Proca-Chern-Simons/arxiv/1_model.md>) · [section map](<Proca-Chern-Simons/arxiv/pandoc-texfiles.yaml>) | [TeX root](<Proca-Chern-Simons/arxiv/texfiles/main.tex>) |

Two other drafts have different entry points: the [early CPS manuscript](<preliminary analysis/article/main.md>) is readable directly in Markdown; the [regional gluing manuscript (PDF)](<gluing/archive/2026-09-23/01-interface-interaction/article/texfiles/main.pdf>) belongs to the historical archive.

For the [CPS conventions](<perturbation/formalism.md>), go straight to the formalism note. The Einstein–scalar spectrum project now lives under perturbation: [action and setup](<perturbation/Einstein scalar spectrum/perturbation.md>) · [two-particle spectrum](<perturbation/Einstein scalar spectrum/two particle spectrum.md>) · [Einstein audit and φ⁴ comparison](<perturbation/Einstein scalar spectrum/Einstein audits and phi4 comparison.md>) · [later contact-spectrum results](<perturbation/Einstein scalar spectrum/Contact spectrum referee results.md>).

## Subdirectories

| Directory | Description |
|---|---|
| [`BRST/`](<BRST/README.md>) | Graded BRST-CPS canonical quantization, with Maxwell, U(1) Chern-Simons, and linearized-gravity benchmarks |
| [`Chern-Simons/`](<Chern-Simons/README.md>) | U(1) and SU(2) Chern-Simons theory: boundary conditions, charges, BTZ and defect sectors; gravity–U(1) mixed central extensions and the geometric AdS-vacuum obstruction |
| [`Proca/`](<Proca/README.md>) | Proca field quantization in AdS3, including modes, correlation functions, symplectic reduction, and heat-kernel methods |
| [`Proca-Chern-Simons/`](<Proca-Chern-Simons/README.md>) | Proca-Chern-Simons theory: formalism, Dirac fermions, Green functions |
| [`ads4 linearized gravity/`](<ads4 linearized gravity/README.md>) | AdS4 linearized gravity, positive-energy modules, symplectic norms, characters, and thermal partition functions |
| [`electric field/`](<electric field/README.md>) | Maxwell field quantization in AdS3: modes, asymptotic behavior, large gauge transformations, and article drafts |
| [`fermion/`](<fermion/README.md>) | Complex Dirac field on global AdS4: standard/alternative polarizations, graded CPS, boundary-complete charges, global modes, CAR, and $D(\Delta_\pm,\tfrac12)$ modules |
| [`gravitational energy/`](<gravitational energy/README.md>) | Perturbative bulk-boundary charge matching and gravitational energy in AdS |
| [`gluing/`](<gluing/README.md>) | Archived gluing research (2026-09-23): [history](<gluing/HISTORY.md>) and [archive by stage](<gluing/archive/2026-09-23/README.md>), spanning interface coupling, boundary-history response, observable algebras, gauge assembly, and BV–BFV comparisons. See also the [consolidated note](<gluing/Gluing and observable algebras.md>). |
| [`Killing horizon/`](<Killing horizon/README.md>) | Scalar quantization on non-rotating BTZ: CPS, continuous modes, HHI states, horizon charges, and tadpoles |
| [`linearized gravity/`](<linearized gravity/README.md>) | AdS3 linearized gravity: modes, asymptotic Killing vectors, CPS formalism, charges, and massive-gravity extensions |
| [`perturbation/`](<perturbation/README.md>) | Perturbative CPS, pAQFT, and old-fashioned perturbation theory, including flat-space scalar checks and global-AdS spectral tests |
| [`preliminary analysis/`](<preliminary analysis/README.md>) | Foundational calculations: constrained systems, path integrals, Dirac formalism |
| [`scalar/`](<scalar/README.md>) | Free scalar quantization in global AdS: fast/slow falloffs, boundary-complete Noether charges, boundary-condition classification, BF stability, and unitarity; [mode expansions and changes of boundary condition](<scalar/Scalar mode expansions and boundary conditions.md>); [slow-representative Galerkin comparison and convergence proof](<scalar/Slow representatives and Galerkin convergence.md>) |
| [`thermodynamics of scalar in ads/`](<thermodynamics of scalar in ads/README.md>) | Scalar field thermodynamics: heat kernel method in various spacetimes |
| [`ttbar-sewing/`](<Articles/Quantization in AdS/gluing/ttbar-sewing/README.md>) | $T\bar T$ Ising: first-order local Hamiltonian and spatial cutoff, exact finite-history sewing, correlators/transport/entropy checks, and continuum UV obstructions |

## Reading Order

1. Start with `preliminary analysis/` for foundational material on constrained Hamiltonian systems
1. Move to `Proca/` for the main massive-vector quantization calculations
1. See `Proca-Chern-Simons/` for the Chern-Simons coupling extension
1. Consult `Chern-Simons/` for the U(1) Chern-Simons boundary conditions and charge algebra
1. Use `BRST/` and `electric field/` for gauge-redundancy and Maxwell-sector constructions
1. Use `scalar/` and `fermion/` for boundary-complete free-field quantization with ordinary and graded symplectic structures
1. Consult `linearized gravity/`, `ads4 linearized gravity/`, and `gravitational energy/` for gravity, module, and charge-matching tracks
1. Use `perturbation/` for CPS perturbation theory and pAQFT formalism notes
1. See `thermodynamics of scalar in ads/` for thermodynamic quantities and heat kernel results
