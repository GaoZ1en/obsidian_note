---
paper id: 2606.22028v1
title: Holonomies and Boundary Symmetries in the Discrete Warped Chern-Simons Gravity
authors:
  - H. T. Ozer
  - Aytul Filiz
publication date: 2026-06-20T13:04
abstract: |-
  The paper proposes a discrete warped Chern-Simons description of three-dimensional warped gravity in which ordered link holonomies along noncontractible boundary cycles replace continuous gauge connections. Boundary monodromies classify physical sectors by conjugacy classes, while an additional U(1) holonomy supplies warped charge data. The paper derives a discrete entropy relation from boundary holonomy data and argues that the continuum warped holonomy conditions are recovered in a large-lattice limit.
comments: "69 pages"
url: https://arxiv.org/abs/2606.22028v1
summary: "This paper is a three-dimensional gravity testbed for organizing boundary sectors, charges, and thermodynamics directly by holonomy and monodromy data."
tags: []
---

# What this paper does

This note was created from [[overview]].

The paper builds a discrete warped Chern-Simons model for three-dimensional warped gravity. Its main organizing idea is that once local plaquette holonomies are constrained to be trivial, the physically relevant gauge-invariant information is encoded in noncontractible boundary cycles and their ordered monodromy products.

The result is a boundary-holonomy description of warped sectors, residual symmetries, and thermodynamic observables. The source frames this as an alternative to starting from a smooth continuum geometry and imposing regularity conditions.

## Setup and conventions

The source starts from the lower-spin $SL(2,\mathbb R)+U(1)$ gauge structure associated with warped AdS3 holography and warped conformal field theories. The discrete boundary framework replaces continuous gauge connections along noncontractible cycles with ordered products of link holonomies.

The non-Abelian sector carries an $SL(2,\mathbb R)$ monodromy. The additional $U(1)$ holonomy supplies the warped contribution to boundary charge data.

## Technical skeleton

The construction has the following source-derived structure.

1. Local plaquette flatness constraints remove local bulk curvature data.
1. Ordered products around noncontractible boundary cycles define total boundary monodromy matrices.
1. The conjugacy class of the non-Abelian monodromy classifies hyperbolic, elliptic, and parabolic sectors.
1. The $U(1)$ holonomy augments these sectors with warped charge data.
1. Residual boundary symmetries are analyzed as stabilizers of the monodromy sector.
1. A discrete entropy relation is derived from boundary holonomy data and argued to reproduce warped black-hole/WCFT structure in the continuum limit.

## Formalism map to my projects

The local project translation is:

- link holonomies = discrete connection variables;
- boundary monodromy = gauge-invariant boundary-sector label;
- conjugacy class = coarse phase-space chamber;
- $U(1)$ holonomy = warped charge contribution;
- residual stabilizer = boundary symmetry algebra data;
- entropy relation = thermodynamic observable reconstructed from boundary data.

This is useful for AdS3/Chern-Simons and edge-mode work because it treats boundary sectors as holonomy moduli rather than local metric data. It is also a useful contrast with finite-boundary metric polarizations: here local flatness leaves global boundary cycles as the natural physical data.

## Symplectic structure, charges, or boundary data

The paper is directly about boundary data and charges, but the daily screening did not verify the full symplectic form. The source-derived charge claim is that the $U(1)$ holonomy supplies the warped contribution to boundary charges, while the non-Abelian monodromy classifies the $SL(2,\mathbb R)$ sector.

For CPS use, the next thing to check is whether the discrete phase space admits a transparent symplectic form on monodromy moduli, and how the continuum limit matches standard warped AdS3 Chern-Simons boundary charges.

## Key formulas and derivations

Source-derived objects:

- total non-Abelian boundary monodromy as an ordered product around the boundary cycle;
- total $U(1)$ holonomy around the same cycle;
- hyperbolic, elliptic, and parabolic sectors as conjugacy classes of the $SL(2,\mathbb R)$ monodromy;
- residual boundary symmetries as stabilizer structures of each monodromy sector;
- entropy relation built from boundary holonomy/monodromy data.

Displayed equations in the HTML were not independently transcribed because the formula extraction is not reliable enough for detailed formula copying.

## Mathematica/xAct/Sage checks

No Mathematica, xAct, Sage, or independent group-theory computation was run.

Possible future checks:

- use Sage or Mathematica to classify sample $SL(2,\mathbb R)$ monodromy conjugacy classes by trace;
- check the large-lattice expansion of ordered products in simple cases;
- compare the $U(1)$ holonomy charge contribution with standard warped Chern-Simons boundary charge formulae.

## Source-derived

- The paper claims boundary monodromies are fundamental variables rather than auxiliary smooth-background quantities.
- It claims hyperbolic, elliptic, and parabolic sectors arise from monodromy conjugacy classes.
- It claims the large-lattice limit recovers continuum warped holonomy conditions.
- It claims entropy and warped thermodynamics can be reconstructed directly from boundary holonomy data.

## Checked

- Official arXiv metadata, abstract, comments, and subject categories were checked.
- The HTML introduction and boundary-monodromy section were inspected.
- The daily note preserved primary `hep-th` plus cross-list categories `gr-qc` and `math-ph`.

## Not independently verified

- I did not check the discrete action, constraint algebra, residual symmetry derivation, entropy relation, or continuum limit.
- I did not compare with standard warped AdS3/WCFT charge normalizations.
- I did not inspect the PDF rendering.

## Possible extensions

1. Compare this monodromy-sector classification with standard AdS3 Chern-Simons holonomy regularity conditions.
1. Extract the discrete phase-space variables and see whether they admit a compact Poisson description.
1. Check whether the warped $U(1)$ charge contribution has an analogue in current Proca-Chern-Simons or edge-mode notes.

## Reading use

Read the abstract, Section 3 for the discrete construction, and Section 4 for boundary monodromy matrices and sector classification. Only read the thermodynamics section after matching the normalization conventions to standard warped Chern-Simons gravity.
