---
paper id: 2608.20529v1
title: "Supersymmetric Virasoro Minimal Strings: Unified Perturbative and Non-Perturbative Treatment"
authors:
  - Clifford V. Johnson
publication date: 2026-08-21T03:42
abstract: |-
  Positive double-scaled matrix models organize the four known N=1 supersymmetric Virasoro minimal strings, add two unorientable 0A-minus variants, and compute perturbative amplitudes and selected nonperturbative spectra. The same spectral-density logic proposes broad N=2 and N=4 families and recovers their JT limits.
comments: "33 pages, 8 figures, 7 tables"
url: https://arxiv.org/abs/2608.20529v1
summary: "A broad matrix-model synthesis with an exact vanishing-amplitude mechanism, useful spectral-flow dictionaries, and explicit nonperturbative existence caveats for the new extended-supersymmetry families."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct for the exact string-equation identities, the N=1 soft/hard-edge organization, and the perturbative consequences derived from them. The new N=2 and N=4 families are proposals supported by spectral-density matching and selected numerical solutions; the paper explicitly does not establish nonperturbative existence for every proposed model.

Reason codes: `T2-dS-BH-holography`, `T2-spectral`, `T2-model`, `T3-math`, `A-big-name`.

This is useful to the vault's Virasoro work as a nonperturbative matrix-model comparison, not as a construction of the AdS3 vacuum-orbit Hilbert space. Matching a Cardy density and generating topological amplitudes do not prove equivalence to canonical Brown--Henneaux quantization.

# Organizing equation

The positive-matrix models are encoded by

$$
u\mathcal R^2
-\frac{\hbar^2}{2}\mathcal R\mathcal R''
+\frac{\hbar^2}{4}(\mathcal R')^2
=\hbar^2\Gamma^2,
$$

with

$$
\mathcal R=\sum_{k\ge1}t_kR_k[u]+x.
$$

The Gel'fand--Dikii polynomials begin as

$$
R_1=u,
\qquad
R_2=u^2-\frac{\hbar^2}{3}u'',
$$

$$
R_3=u^3-\frac{\hbar^2}{2}(u')^2
-\hbar^2uu''+\frac{\hbar^4}{10}u''''.
$$

At $\Gamma=0$ and leading genus order,

$$
u_0\mathcal R_0^2=0,
\qquad
\mathcal R_0=\sum_{k\ge1}t_ku_0^k+x.
$$

The two branches generate the familiar endpoints:

- $\mathcal R_0=0$ near $\mu\le0$ gives a soft edge, $\rho_0(E)\sim\sqrt{E-E_0}$;
- $u_0=0$ over $x>0$ gives a hard edge, $\rho_0(E)\sim E^{-1/2}$.

The two superconformal vacuum characters select two sets of $t_k$, so the plus theories sit at the soft edge while the minus theories sit at the hard edge.

# The N=1 quartet and sextet

The four standard theories are labeled

$$
\{0A^-,0B^-,0A^+,0B^+\}.
$$

Type A uses the positive/Wishart-like description; type B uses a symmetric two-cut system. The signs distinguish the two N=1 vacuum-character choices and their $(-1)^F$ interpretation.

An exact observation enlarges this to six theories. If $u=0$, then every $R_k[u]=0$ and

$$
\mathcal R=x,
\qquad
\mathcal R'=1,
\qquad
\mathcal R''=0.
$$

The string equation reduces to

$$
\frac{\hbar^2}{4}=\hbar^2\Gamma^2.
$$

Hence $u=0$ is an exact solution for $\Gamma=\pm1/2$, not merely a finite-order cancellation. These two unorientable $0A^-$ variants have vanishing perturbative amplitudes apart from the universal cylinder.

For the $0B^-$ system,

$$
r^2=\frac12
\left(u_{\Gamma=1/2}+u_{\Gamma=-1/2}\right),
$$

so its non-cylinder perturbative correlators vanish on the hard-edge side for the same reason.

# Plus sectors and amplitudes

The plus-sector perturbation theory is soft-edge and shares the bosonic VMS $u_0$ data, though the nonperturbative completion differs. Representative quantum volumes include

$$
V_{0,3}^{0A^+}=1,
$$

$$
V_{0,4}^{0A^+}
=\frac{2c-15}{24}+\sum_{i=1}^4P_i^2,
$$

$$
V_{1,1}^{0A^+}
=\frac{2c-15}{576}+\frac{P^2}{24}.
$$

For $0B^+$, the perturbative genus expansion has the same soft-edge core with a coupling rescaling

$$
\hbar_{0B}=\sqrt2\,\hbar_{0A}.
$$

The paper stresses that perturbative equality does not make the underlying positive matrix integrals identical.

# Ramond deformation

The parameter $\Gamma$ admits a large-background interpretation in the type-A string equation and organizes Ramond insertions for $0A^-$. The analogous continuous variation is unavailable for the standard $0B$ construction because its two-cut map specifically uses the pair $\Gamma=\pm1/2$.

The $0A^+$ soft-edge endpoint is also singular under the same deformation without an extra regulator. Thus “Ramond gas available” is a branch-dependent statement, not a uniform property of the quartet.

# N=2 and N=4 proposals

For N=2, spectral flow and $U(1)_R$ charge produce image lattices, massive sectors, and discrete BPS residues. Different primitive and nonprimitive lattices generate hard- and soft-edge densities, including examples with charges $q=0,1/2,1/4,-1$.

At $\hat c=2$, unit spectral-flow fields have dimension one and can extend N=2 to the small N=4 algebra if they are mutually local. This locality is not automatic for nonprimitive theories.

The large-level N=4 limit yields the fixed-spin JT density

$$
\rho_{0,J}^{N=4\,\mathrm{JT}}(E)
=\frac{J}{\pi^2\hbar_{\rm JT}E^2}
\sinh\!\left(2\pi\sqrt{E-J^2}\right)
\Theta(E-J^2).
$$

These are persuasive matrix-model constructions, but the paper itself says that lifting every proposed leading density to a globally well-behaved nonperturbative string-equation solution remains open.

# Numerical evidence

Selected $\hbar=10^{-3}$ solutions are shown for N=2 soft and hard edges. The appendix explains the ODE and Schrödinger numerical procedures, but the arXiv source supplies figures rather than raw grids, solver scripts, tolerances, or residual logs. The plots therefore count as source-derived numerical evidence, not independently reproducible data in this run.

# Independent verification

## Checked

- Substitution verifies exactly that $u=0$ solves the full string equation only at $\Gamma^2=1/4$.
- The soft/hard endpoint powers follow directly from the Abel-transform formula for $\rho_0(E)$.
- The identity $\cosh(2x)-1=2\sinh^2x$ supports one of the N=2 density recombinations.
- Opposite-$\Gamma$ averaging cancels all odd powers in the displayed perturbative expansion.

## Source-derived

- The complete 33-page PDF and TeX source, including numerical appendix and all figures, were inspected.
- The paper explicitly separates proven N=1 organization, proposed extended-supersymmetry families, selected numerical solutions, and open nonperturbative existence.

## Not independently verified

- The higher-genus volume formulas imported from earlier work were not rederived.
- The numerical ODE/spectral-density plots were not rerun because no raw code or data accompany the arXiv source.
- No worldsheet BRST construction, modular-complete CFT proof, 3D gravity equivalence, or all-model nonperturbative existence theorem is supplied.

# Takeaway

The exact $\Gamma=\pm1/2$ cancellation and soft/hard-edge dictionary are the most reusable results. Treat the N=2/N=4 catalog as a well-developed proposal with examples, not a fully classified nonperturbative theory space.
