---
paper id: 2607.24238v1
title: Milnor metric for Morse--Smale flows from field theory
authors:
  - Giovanni Molinari
  - Michele Schiavina
publication date: 2026-07-27T10:17
abstract: |-
  Abelian BF theory in an axial gauge defined by a Morse--Smale vector field is reduced by two BV pushforwards: first to the zero Pollicott--Ruelle resonant complex and then to twisted cohomology. The proposed partition function combines the Ruelle dynamical factor and finite-complex torsion to reproduce the Milnor metric, giving a field-theoretic interpretation of the relation between Milnor and Ray--Singer metrics.
comments: "44 pages + Appendices + Bibliography"
url: https://arxiv.org/abs/2607.24238v1
summary: "A useful BF/BV-to-dynamical-torsion construction whose final Milnor identification has a parity mismatch and an unresolved axial Jacobian."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

This paper is worth retaining for its two-stage BV reduction, not as a completed field-theoretic proof of Fried’s theorem. The source itself treats infinite-dimensional gauge-fixing independence as an expectation, and the final formulas expose two additional technical gaps.

# Abelian BF theory and its BV complex

Let \(M\) be compact, connected, oriented, and closed, with \(\dim M=n\). Let \(E\to M\) be a flat Hermitian bundle induced by a unitary representation of \(\pi_1(M)\). The classical fields are

\[
\mathcal F_{\rm cl}
=
\Omega^1(M,E)\oplus\Omega^{n-2}(M,E),
\]

with action

\[
S_{\rm BF}[A,B]
=
\int_M B\wedge_h d^\nabla A.
\tag{77}
\]

The exact-shift symmetries are reducible, so the BV space contains the full de Rham towers:

\[
\mathcal F_{\rm BF}
=
\Omega^\bullet(M,E)[1]
\oplus
\Omega^\bullet(M,E)[n-2].
\tag{79}
\]

The degree-\(-1\) pairing is induced by the twisted wedge product, and the cohomological vector field is

\[
Q_{\rm BF}(A,B)
=
(d^\nabla A,d^\nabla B).
\tag{83}
\]

Thus the residual fields naturally live on twisted cohomology, while a gauge fixing must choose complements to exact and coexact directions.

# Morse--Smale flow and the resonant complex

Let \(V\) be a smooth, \(C^\infty\)-linearizable, Morse--Smale vector field satisfying the source’s non-alignment condition at every closed orbit. The covariant Lie derivative is

\[
\mathcal L_{V,\nabla}
=d^\nabla\iota_V+\iota_Vd^\nabla.
\]

Microlocal completion on anisotropic Sobolev spaces yields a spectral projector \(\pi_0\) onto the zero Pollicott--Ruelle resonant states and a chain homotopy \(h_V\) such that

\[
I
=
\pi_0+d^\nabla h_V+h_Vd^\nabla.
\tag{34}
\]

The completed complex decomposes as

\[
\mathcal H_m^\bullet
=
C_{V,\nabla}^\bullet(0)
\oplus
\operatorname{Im}
\bigl(d^\nabla|_{\ker\pi_0}\bigr)
\oplus
\operatorname{Im}
\bigl(\iota_V|_{\ker\pi_0}\bigr).
\tag{35}
\]

The zero-resonant complex retains the topology:

\[
H^\bullet
\bigl(C_{V,\nabla}^\bullet(0),d^\nabla\bigr)
\cong H^\bullet(M,E).
\tag{37}
\]

The role of the flow is therefore to supply a dynamical finite-dimensional model of twisted cohomology, not to change the residual cohomology.

# First BV pushforward: nonzero resonances

The axial Lagrangian uses the \(\iota_V\)-image in the nonzero-resonant sector. Formally integrating this sector produces the flat-regularized determinant

\[
\mathfrak R_{V,\rho}(0)
=
\prod_{k=0}^{n-1}
\left[
\det{}^\flat
\widetilde{\mathcal L}^{(k)}_{V,\nabla}
\right]^{(-1)^{n+k}}.
\tag{71}
\]

This is the closed-orbit/Ruelle contribution. After the pushforward, the effective BF theory is supported on

\[
C_{V,\nabla}^\bullet(0)[1]
\oplus
C_{V,\nabla}^\bullet(0)[n-2].
\]

Conceptually, the infinite-dimensional field theory has been replaced by a finite resonant complex while keeping the determinant factor of the integrated fluctuations.

# Second BV pushforward: resonant complex to cohomology

Choose an auxiliary metric \(h_{\rm aux}\) on the zero-resonant complex and form its finite-dimensional adjoint and Laplacian. Then

\[
C_{V,\nabla}^k(0)
=
\operatorname{Im}d^\nabla
\oplus
\operatorname{Im}\widetilde d^{\nabla,\dagger}
\oplus
\ker\widetilde\Delta_k.
\tag{103}
\]

Integrating the exact/coexact fluctuation pair leaves

\[
\ker\widetilde\Delta_\bullet
\simeq H^\bullet(M,E)
\]

as the residual field space. The finite Gaussian determinant is

\[
\prod_{k=0}^{n}
\left(
\det{}'\widetilde\Delta_k
\right)^{(-1)^{k+1}k/2}.
\]

The source chooses \(h_{\rm aux}\) so that the chain isomorphism from the zero-resonant complex to the Thom--Smale complex is an isometry. Under this special choice, the determinant becomes the numerical Thom--Smale torsion.

# Proposed axial partition function

The two pushforwards are combined in

\[
\boxed{
\mathfrak Z^V_{\rm BF}
=
\mathfrak R_{V,\rho}(0)^{(-1)^n}
\prod_{k=0}^{n}
\left(
\det{}'\widetilde\Delta_k
\right)^{(-1)^{k+1}k/2}
\mu^{(1)}.
}
\tag{107}
\]

Here \(\mu^{(1)}\) is the induced determinant-line element on cohomology. The proposed Milnor norm is

\[
\|\mu_H\|_{M,V}
=
\left|
\tau(C_{\rm TS}^\bullet)
\right|
\left|
\mathfrak R_{V,\rho}(0)
\right|^{-1}.
\tag{110}
\]

The source then identifies

\[
|\mathfrak Z^V_{\rm BF}|
=
\|\mu_H\|_{M,V}.
\tag{111}
\]

This is meant to parallel the metric/Lorenz-gauge result in which Abelian BF theory produces the Ray--Singer metric. Equality of the Ray--Singer and Milnor metrics is then read as field-theoretic gauge-fixing independence.

# Assumptions carried by the construction

The reduction requires more than the label “Morse--Smale”:

- \(V\) is smooth and \(C^\infty\)-linearizable;
- stable and unstable manifolds meet transversally;
- the closed-orbit holonomy satisfies the stated non-alignment condition;
- the anisotropic Sobolev regularity parameter is sufficiently large;
- the special auxiliary metric makes the resonant/Thom--Smale chain map isometric;
- no acyclicity is assumed, so every determinant is interpreted on the determinant line over twisted cohomology.

The microlocal trace, resonance, and Thom--Smale identifications are imported theorems. The source does not rebuild them inside the BV calculation.

# Two source-level obstructions

## Parity of the Ruelle factor

Equation (107) contains

\[
\mathfrak R(0)^{(-1)^n},
\]

whereas Eq. (110) requires

\[
|\mathfrak R(0)|^{-1}.
\]

Without an odd-dimensional assumption, an unstated inversion convention, or a correction to one equation, Eq. (111) follows directly only when \(n\) is odd. The paper states no global odd-\(n\) restriction.

This is not a cosmetic sign: it changes the claimed norm by a square of the Ruelle factor in even dimension.

## Normalizing the axial vector at fixed points

The axial-Jacobian argument normalizes

\[
\widehat V=\frac{V}{\|V\|}
\]

and seeks \(\det'(\iota_V)=1\). But a Morse--Smale vector field has critical points, and \(V/\|V\|\) is singular there. The reparametrization lemma invoked by the source assumes a smooth strictly positive rescaling, which \(1/\|V\|\) is not at a zero of \(V\).

The assertion that this singularity is removable is not accompanied by a local determinant or regularization calculation. Therefore the axial Jacobian is not established by the displayed argument.

# Relation to BV and local formalism

The useful dictionary is:

| Paper object | Local interpretation |
|---|---|
| first BV pushforward | integrate nonzero dynamical/resonant fluctuations |
| \(C_{V,\nabla}^\bullet(0)\) | finite residual complex carrying cohomology |
| second BV pushforward | Hodge-type reduction of residual fields to cohomology |
| \(\mathfrak R_{V,\rho}(0)\) | regularized one-loop dynamical determinant |
| Thom--Smale torsion | finite-complex measure on the determinant line |
| Milnor metric | norm on the determinant line of twisted cohomology |

The paper has a genuine BV symplectic structure, but not a spacetime-boundary CPS problem. There is no asymptotic boundary, surface charge, corner field, or flux. Its transfer value is the organization of residual fields and determinant-line measures under successive pushforwards.

# Verification note

- The full TeX source and appendices were read; Eqs. (107) and (110)--(111) were checked against the rendered pages.
- The parity mismatch follows by direct comparison of the displayed exponents and requires no imported theorem.
- The fixed-point problem follows from the incompatibility between a Morse--Smale zero of \(V\) and smooth positivity of the rescaling \(1/\|V\|\).
- No independent microlocal construction of the anisotropic spaces, Pollicott--Ruelle projector, flat determinant, or resonant/Thom--Smale chain isomorphism was performed.
- Consequently, the two pushforward chain is source-derived; the final Milnor identification remains blocked by the two issues above.
