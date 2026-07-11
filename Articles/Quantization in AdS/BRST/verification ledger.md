---
title: BRST-CPS Verification Ledger
date: 2026-07-12
summary: "Separates machine-verified identities, source-backed structural claims, assumptions, and unverified extensions for the BRST-CPS canonical quantization formalism."
---

# BRST-CPS Verification Ledger

## Machine-verified identities

| Claim | Method | Result |
|---|---|---|
| Quartet differential satisfies $s^{2}=0$ | Mathematica matrix check on $(\lambda,c,\bar c,b)$ | Zero matrix. |
| Quartet homotopy satisfies $s\kappa+\kappa s=1$ on the four coordinate generators | Mathematica matrix check | Identity matrix; rank$(s)=2$ and the generator or one-particle quartet complex has zero cohomology. The full Fock factor retains its vacuum class. |
| Maxwell Feynman-gauge curvature shift | xAct/xTras covariant-derivative check | $\nabla^{\nu}F_{\nu\mu}+\nabla_{\mu}\nabla\cdot A=\nabla^{2}A_{\mu}-R_{\mu\nu}A^{\nu}$; on AdS$_3$ this is $(\nabla^{2}+2)A_{\mu}$. |
| Linearized-gravity Faddeev-Popov operator | xAct/xTras residual check | $sF_{\mu}=(\nabla^{2}\delta_{\mu}^{\nu}+R_{\mu}{}^{\nu})c_{\nu}$ with zero residual; on AdS$_3$ it is $(\nabla^{2}-2)c_{\mu}$. |
| U(1) Chern-Simons Fourier central term | Mathematica boundary integral | $(k/2\pi)\int e^{im\phi}\partial _\phi e^{-im\phi}\,\mathrm{d}\phi=-ikm$. |

The xAct checks used a fresh three-dimensional manifold, an abstract metric-compatible covariant derivative, and the Einstein rule $R_{\mu\nu}=-2g_{\mu\nu}$. The required xTensor, xTras, xPert, xCPS, and xCoba packages loaded without errors.

## Source-backed structural claims

| Claim | Evidence | Status |
|---|---|---|
| Gauge-fixed BRST-CPS has a non-degenerate graded symplectic form and a fundamental canonical relation | Baulieu-Wetzstein, arXiv:2405.18898, Sections 2 and 4 | Source-derived; not reproved in full generality here. |
| Antighost and Nakanishi-Lautrup fields form a contractible pair | Barnich-Brandt-Henneaux, arXiv:hep-th/0002245, Appendix 2.B | Source-derived and reproduced by the finite quartet check. |
| Boundary BFV data have a degree-zero symplectic form and a ghost-number-one cohomological vector field | Cattaneo-Mnev-Reshetikhin, arXiv:1201.0290 | Source-derived. |
| Abelian Chern-Simons bulk and boundary complexes are de Rham/BFV complexes | Cattaneo-Mnev-Reshetikhin, arXiv:1201.0290, Section 7.1 | Source-derived and matched to the local U(1) CPS formulas. |
| Maxwell reduced phase space is the normalizable $(1,1)$ oscillator tower | Local `electric field/article/4_quantization.md` | Inspected target for the cohomology comparison. |
| Maxwell $O(r^{0})$ gauge branches have zero charge under the chosen falloffs | Local `electric field/article/appendix_c_large_gauge_transformations.md` | Inspected boundary-condition result. |
| AdS$_3$ gravity proper mixed roots vanish at the boundary while $(2,0)$ and $(0,2)$ are Brown-Henneaux modes | Local `linearized gravity/article/Appendix C gauge fixing and mode selection.md` | Inspected target for the cohomology comparison. |
| Gravity requires the cutoff-boundary corner contribution in the renormalized symplectic form | Local `linearized gravity/linearize.md` | Inspected variational result. |

## Assumptions

- The free gauge-fixed operators admit Green functions on the selected AdS boundary-condition domains.
- The proper gauge algebra is closed and its non-zero Faddeev-Popov sector admits a modewise contracting homotopy.
- The BRST charge is compatible with the adjoint operation on the chosen extended state space.
- Boundary counterterms have been chosen so that the variational principle, symplectic flux, and charges are finite.
- The comparisons concern perturbation theory around the stated vacuum and do not address Gribov copies.

## Not verified in this formalism version

- non-linear Yang-Mills or non-linear diffeomorphism BRST algebras beyond their linearization;
- reducible gauge theories and ghosts-for-ghosts;
- a closed radial formula and independent normalization integral for every AdS$_3$ Maxwell scalar-polarization quartet partner;
- an independent global mode-by-mode quartet normalization integral for proper AdS$_3$ linearized-gravity modes;
- interacting quantum master equations, BRST anomalies, and renormalized BV-pAQFT products;
- non-perturbative positivity or completeness of the extended indefinite state space.

## Validation summary

The free or linear formalism passes three independent structural tests:

1. Maxwell cohomology leaves the independently known propagating oscillator sector, conditional on completing the global scalar-polarization quartet basis.
2. U(1) Chern-Simons cohomology removes smooth bulk exact modes but keeps boundary currents and topology.
3. Linearized AdS$_3$ gravity removes proper diffeomorphisms but keeps Brown-Henneaux boundary gravitons.

The common mechanism is a graded symplectic resolution followed by ghost-number-zero cohomology, with the proper gauge algebra defined by the renormalized presymplectic kernel.
