---
paper id: 2606.25878v1
title: From Cosmological Cuts to Yang--Mills Wavefunctions in de Sitter Space
authors:
  - Song He
  - Jiajie Mei
  - Yuyu Mo
publication date: 2026-06-24T14:22
abstract: |-
  The paper reconstructs tree-level Yang-Mills wavefunctions in four-dimensional de Sitter space from cosmological cuts. Cut discontinuities factorize into lower-point wavefunctions glued by cut propagators and transverse projectors. The reconstruction separates cut-detectable data from cut-invisible contact completions fixed by current conservation and the flat-space limit, producing explicit four-, five-, and six-gluon results.
comments: "44 pages; ancillary files include 5pt and 6pt gluon results"
url: https://arxiv.org/abs/2606.25878v1
summary: "Medium-priority de Sitter wavefunction technology: cosmological cuts reconstruct Yang-Mills wavefunctions by gluing lower-point data, with longitudinal/contact completions fixed by current conservation and flat-space limits."
tags: []
---

Daily overview: [[2026_06_25_overview]]

# Why this is medium-priority

This paper is useful if the project needs explicit de Sitter wavefunction data or a cut-based reconstruction method. It is not directly about AdS normal modes, CPS charges, or edge modes. Its transferable content is a reconstruction pattern:

1. compute discontinuities across cosmological energy channels;
1. glue lower-point wavefunctions through cut propagators and transverse projectors;
1. reconstruct the cut-detectable part;
1. add the sparse cut-invisible completion demanded by current conservation and the flat-space limit.

# Cosmological-cut logic

The source treats the late-time de Sitter wavefunction coefficient for Yang-Mills theory as the analogue of a flat-space amplitude, but with total-energy singularities and cosmological cuts replacing ordinary unitarity cuts. In schematic form, a cut through an internal channel $I$ has the structure

$$\begin{align}
\operatorname{Disc}_I\psi_n^{\rm YM}
\sim
\sum_{\rm pol.}
\psi_L^{\rm YM}\,\Pi_I\,\psi_R^{\rm YM},
\end{align}$$

where $\Pi_I$ is the transverse projector or cut-propagator data for the internal gluon. This is not meant as an exact single formula for all topologies; the paper works through concrete tree and loop-like graph classes and shows how the gluing looks in each case.

The analogy with flat-space generalized unitarity is useful but incomplete. Cosmological cuts determine the discontinuity-bearing part of the wavefunction. They do not automatically determine local terms invisible to those cuts.

# Scalar skeleton plus Yang-Mills numerator

For ray-like trees and one-loop $n$-gon topologies, the paper finds that the maximal cut can be organized as a scalar $\phi^3$ discontinuity dressed by an ordered Yang-Mills numerator. Schematically,

$$\begin{align}
\operatorname{Disc}\psi_{\Gamma}^{\rm YM}
\sim
N_\Gamma^{\rm YM}\,
\operatorname{Disc}\psi_\Gamma^{\phi^3}.
\end{align}$$

The numerator is built locally from the gluing maps, polarization contractions, momenta, and transverse projectors. This is the part most likely to be reusable: the scalar wavefunction supplies the energy-denominator skeleton, while Yang-Mills adds a structured numerator rather than changing the entire analytic architecture.

# Reconstruction and completions

The paper then uses cut data to reconstruct four-, five-, and six-gluon wavefunctions in momentum space. The result splits into two pieces:

$$\begin{align}
\psi_n^{\rm YM}
=\psi_{n,{\rm cut}}^{\rm YM}
+\psi_{n,{\rm inv}}^{\rm YM}.
\end{align}$$

Here $\psi_{n,{\rm cut}}^{\rm YM}$ is determined by lower-point gluing and discontinuities. The cut-invisible term $\psi_{n,{\rm inv}}^{\rm YM}$ is fixed by imposing current conservation and matching the flat-space limit.

Through six points, the terms without longitudinal propagators follow the pole structure of color-ordered scalar $\phi^3+\phi^4$ wavefunctions, dressed by local Yang-Mills numerators. Longitudinal propagators collapse parts of that scalar structure into contact-type contributions, and the first internal-line corrections appear at six points.

# Propagator collapse and longitudinal sectors

The appendix records the detailed Feynman-rule checks. The useful local rule is that longitudinal propagators can collapse a nominal exchange topology into a contact-like contribution. In the source's six-point examples, a mixed transverse/longitudinal pattern is expressed as a scalar factor acted on by local collapse operators. A representative schematic structure is

$$\begin{align}
\psi_{\rm mixed}
\sim
\frac1{q^2}\left[(k_A-k_B)-\widehat C_A+\widehat C_B\right]
\left[(k_C-k_D)-\widehat C_C+\widehat C_D\right]\psi_{\rm scalar}.
\end{align}$$

The exact source formulas are graph-dependent. The point for later use is that longitudinal pieces are not arbitrary corrections: they are local operations on a scalar skeleton and are needed to satisfy current conservation.

# Local use case

For current AdS/CPS notes, this paper is a reference rather than an immediate work item. It becomes relevant if one needs:

1. explicit low-point de Sitter gauge-field wavefunction data;
1. a comparison between AdS Witten-diagram reconstruction and de Sitter cosmological-cut reconstruction;
1. an example where Ward/current-conservation conditions fix contact completions not visible from factorization cuts.

# Verification log

## Checked

- No independent reconstruction of the four-, five-, or six-point Yang-Mills wavefunctions was performed.

## Blocked

- The exact formulas are long and partially stored in ancillary files for the five- and six-point results. A faithful independent check would require importing the ancillary data and comparing the reconstructed expressions with direct Feynman-rule calculations.

## Failed

- No failed independent check was found. The formulas in this note are source-derived and schematic where marked.
