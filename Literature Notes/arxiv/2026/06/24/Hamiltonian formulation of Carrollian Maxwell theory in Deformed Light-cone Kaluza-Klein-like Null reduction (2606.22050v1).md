---
paper id: 2606.22050v1
title: Hamiltonian formulation of Carrollian Maxwell theory in Deformed Light-cone Kaluza-Klein-like Null reduction
authors:
  - Limin Zeng
publication date: 2026-06-20T14:05
abstract: |-
  The paper constructs magnetic and electric Carrollian Maxwell theories by performing a Kaluza-Klein-like null reduction of a complex Maxwell field in a Bargmann deformed light-cone background with manifest gauge symmetry. It argues that doing the Carrollian limit in Hamiltonian phase space preserves a first-class U(1) Gauss constraint and maintains gauge invariance, while different scalings produce standard magnetic/electric sectors and possible coupled or decoupled scalar sectors.
comments: "9 pages, 1 figure, 1 table. A further study on preprint 2606.11996 and 2602.06280"
url: https://arxiv.org/abs/2606.22050v1
summary: "This paper is useful as a Carrollian Maxwell constraint-bookkeeping reference, especially for checking when Gauss law survives null reduction."
tags: []
---

# Why this is technically relevant

This note was created from [[overview]].

The paper is relevant because it keeps the Hamiltonian constraints visible during a Carrollian/null reduction of Maxwell theory. Its source-derived claim is that a Hamiltonian-first treatment, with independent scalings of canonical variables, preserves a first-class $U(1)$ Gauss constraint in both magnetic and electric Carrollian Maxwell limits.

It is not primarily a boundary-charge or edge-mode paper. The value for current projects is methodological: use it as a reminder to check the canonical constraint algebra before concluding that a Carrollian Maxwell sector has lost gauge invariance.

## Minimal setup

The parent theory is a complex Maxwell field on a deformed light-cone/Bargmann background with manifest $U(1)$ gauge symmetry. A Kaluza-Klein-like null reduction is performed first. The paper then derives canonical variables and a Hamiltonian action before taking Carrollian limits.

The main scaling choice is made in phase space: coordinates, fields, and conjugate momenta are assigned independent powers of the contraction parameter. A term survives in the limiting action only when its scaling exponent is finite; divergent terms are rejected and suppressed terms are dropped.

## Transferable mechanism or formula

The transferable mechanism is:

1. Null-reduce while preserving the gauge variable structure.
1. Derive canonical momenta and constraints.
1. Take the Carrollian limit in Hamiltonian phase space.
1. Check whether the Gauss constraint remains first class.
1. Only then interpret magnetic/electric sectors and scalar remnants.

Source-derived sector behavior:

- Standard magnetic contraction keeps magnetic energy and suppresses electric energy.
- Standard electric contraction keeps electric energy and suppresses magnetic energy.
- Both standard sectors retain a first-class $U(1)$ constraint according to the paper.
- Nonstandard scalings can produce extra scalar sectors, coupled or decoupled.
- In the magnetic case, the paper says a finite interacting magnetic photon-scalar coupling is ruled out by regularity of the scaling limit.

## Relation to current projects

For null-boundary Maxwell notes, this paper is a useful guardrail. If a Carrollian limit seems to remove the gauge constraint, repeat the analysis with canonical variables before the limit. The result may depend on whether the limit is imposed on the Lagrangian fields all at once or on phase-space variables after constraint analysis.

For edge-mode work, the paper is incomplete because it does not construct cut symplectic forms, large/proper gauge quotients, null flux balances, or boundary charge algebras. It may still help identify which bulk constraints should source edge modes.

## What to check later

1. Reproduce the first-class constraint closure for the standard magnetic and electric sectors.
1. Check degree-of-freedom counting in the scalar-extended sectors.
1. Determine whether discarded surface terms are harmless; for edge-mode applications they are probably not harmless by default.
1. Compare the electric/magnetic Carroll sectors with local Maxwell notes on null hypersurfaces.

## Source-derived

- The first-class $U(1)$ Gauss constraint survives in both standard magnetic and electric Carrollian Maxwell limits.
- Scalar sectors can appear in coupled or decoupled ways depending on canonical scaling.
- The paper argues earlier Lagrangian or unified-scaling approaches can obscure gauge invariance.
- The method is proposed as extensible to non-Abelian gauge fields, with fermions left for future work.

## Checked

- Official arXiv metadata, abstract, comments, subject category, and submission time were checked.
- The HTML section structure was inspected.
- The source repeatedly frames the key method as Hamiltonian-first plus independent canonical scalings.

## Not independently verified

- I did not independently rederive the Poisson brackets, first-class closure, degree-of-freedom counts, or secondary/stability constraints.
- I did not verify the limiting actions term by term.
- I did not check the Appendix B path-integral quantization or boundary-condition assumptions.
- I did not inspect PDF-rendered equations.
