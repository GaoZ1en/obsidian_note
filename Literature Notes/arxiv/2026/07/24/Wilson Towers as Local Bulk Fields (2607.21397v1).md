---
paper id: 2607.21397v1
title: Wilson Towers as Local Bulk Fields
authors:
  - Vishal Gayari
  - Chethan Krishnan
publication date: 2026-07-23T14:58
abstract: |-
  The paper rewrites the thermal-AdS3 Wilson spool for a local free bulk scalar as a tower of single-winding Wilson loops, one for each multi-trace global primary. Symmetric-function and cycle-index methods organize fixed-particle sectors; boundary-graviton dressing reconstructs Virasoro characters. A light insertion on a heavy state is then represented by a Verlinde line, giving a proposed microscopic interpretation of the BTZ one-loop determinant in terms of heavy Wilson lines and a modular S-kernel density.
comments: "19+22 pages"
url: https://arxiv.org/abs/2607.21397v1
summary: "Cycle-index and Young-diagram decompositions turn the scalar determinant into one Wilson loop per multi-particle primary, directly extending the vault's arbitrary-N primary-counting framework."
tags: []
---

Back to [[2026_07_24_overview]].

# Why this is worth keeping

The paper supplies a direct bridge between three objects already used separately in the vault:

\[
\text{bosonic Fock space}
\longleftrightarrow
\text{cycle index of }S_N
\longleftrightarrow
\text{multi-winding Wilson spool}.
\]

Its strongest transferable content is the fixed-\(N\) primary decomposition:

\[
\operatorname{Sym}^N\mathcal H_1
=
\bigoplus_{\text{global primaries }P}
\mathcal V_{h_P}\otimes\bar{\mathcal V}_{\bar h_P}.
\]

This gives a precise meaning to “one Wilson loop per multi-trace primary.” The phrase does **not** follow from the connected spool alone; it appears only after plethystic exponentiation, fixed-\(N\) extraction, and removal of the overall \(SL(2)\times SL(2)\) descendant tower.

# From the scalar determinant to a Wilson spool

For a scalar in thermal \(\mathrm{AdS}_3\), define
\[
h=\frac12\left(1+\sqrt{1+m^2}\right),
\qquad
\chi_1(q,\bar q)
=\frac{q^h\bar q^h}{(1-q)(1-\bar q)}.
\]
The one-loop determinant is organized by connected windings:
\[
\log Z_{\rm scalar}
=\sum_{n\ge1}\frac1n
\chi_1(q^n,\bar q^n).
\]
Introducing a particle-number fugacity,
\[
Z(t)
=\exp\left[
\sum_{n\ge1}\frac{t^n}{n}
\chi_1(q^n,\bar q^n)
\right]
=\sum_{N\ge0}t^N\chi_N(q,\bar q),
\]
where
\[
\chi_N
=
\operatorname{Tr}_{\operatorname{Sym}^N\mathcal H_1}
q^{L_0}\bar q^{\bar L_0}.
\]

The distinction is important:

- the Wilson spool computes \(\log Z\), the connected multi-winding object;
- exponentiation builds the bosonic Fock space;
- the coefficient of \(t^N\) is the \(N\)-particle character;
- only after decomposing \(\chi_N\) into global conformal modules does one obtain the Wilson tower indexed by primaries.

# Cycle types are winding data

For a cycle type
\[
\mu=(1^{m_1}2^{m_2}\cdots)\vdash N,
\qquad
z_\mu=\prod_{k\ge1}k^{m_k}m_k!,
\]
the symmetric-power character is
\[
\chi_N(q,\bar q)
=
\sum_{\mu\vdash N}\frac1{z_\mu}
\prod_{k\ge1}
\chi_1(q^k,\bar q^k)^{m_k}.
\]
A \(k\)-cycle in the symmetrizer identifies \(k\) one-particle labels and produces
\[
\operatorname{Tr}_{\mathcal H_1}U^k,
\]
which is the \(k\)-winding trace.

The first cases are
\[
\chi_2
=\frac12\left[
\chi_1(q,\bar q)^2
+\chi_1(q^2,\bar q^2)
\right],
\]
\[
\chi_3
=\frac16\left[
\chi_1^3
+3\chi_1\chi_1(q^2,\bar q^2)
+2\chi_1(q^3,\bar q^3)
\right].
\]
The product \(\chi_1^2\) represents two independent one-particle traces, not “two particles in the same state”; the permutation-cycle interpretation is the precise one.

# Removing the total descendants

Strip the common global descendant denominator:
\[
P_N(q,\bar q)
=(1-q)(1-\bar q)\chi_N(q,\bar q)
\]
\[
\hspace{3.5em}
=(q\bar q)^{Nh}
\sum_{m,\bar m\ge0}
d^{(N)}_{m,\bar m}q^m\bar q^{\bar m}.
\]
Then
\[
\chi_N
=
\sum_{m,\bar m}
d^{(N)}_{m,\bar m}
W_{(Nh+m,Nh+\bar m)},
\]
with the single global-module character
\[
W_{(h_P,\bar h_P)}
=
\frac{q^{h_P}\bar q^{\bar h_P}}
{(1-q)(1-\bar q)}.
\]
Each nonzero multiplicity \(d^{(N)}_{m,\bar m}\) is therefore a single-winding Wilson loop attached to a multi-trace primary.

For two particles,
\[
d^{(2)}_{m,\bar m}
=\frac{1+(-1)^{m+\bar m}}2,
\]
so \(m\) and \(\bar m\) have the same parity.

For three particles,
\[
d^{(3)}_{m,\bar m}
=\frac{(m+1)(\bar m+1)}6
+\frac12
\mathbf1_{m\ {\rm even}}
\mathbf1_{\bar m\ {\rm even}}
+\frac13c_mc_{\bar m},
\]
where
\[
c_m=
\begin{cases}
1,&m=0\pmod3,\\
-1,&m=1\pmod3,\\
0,&m=2\pmod3.
\end{cases}
\]
This explicit \(N=3\) formula is immediately reusable in the arbitrary-\(N\) multi-particle-primary note.

# Counting primaries versus constructing them

Let the permutation representation split as
\[
W_N=V_N\oplus\mathbb C\,\partial_{\rm tot},
\]
where \(V_N\) is the standard zero-sum representation. Removing the total derivative gives the counting formula
\[
d^{(N)}_{m,\bar m}
=\frac1{N!}
\sum_{\sigma\in S_N}
\chi_{\operatorname{Sym}^mV_N}(\sigma)
\chi_{\operatorname{Sym}^{\bar m}V_N}(\sigma).
\]
This counts primaries but does not construct their \(h\)-dependent coefficients. Honest global primaries must satisfy
\[
L_1^{\rm tot}\Psi=0,
\qquad
\bar L_1^{\rm tot}\Psi=0,
\]
using
\[
L_1L_{-1}^p|\mathcal O\rangle
=p(2h+p-1)
L_{-1}^{p-1}|\mathcal O\rangle.
\]

The appendices give concrete examples:

- \(N=2,(m,\bar m)=(1,1)\):
  \[
  (\partial_1-\partial_2)
  (\bar\partial_1-\bar\partial_2)
  :\mathcal O\mathcal O:
  \]
  is primary.
- \(N=3,(1,1)\): zero-sum representatives alone do not give the honest primary; the two orbit coefficients obey \(c_A=-2c_B\).
- \(N=3,(2,2)\): eight \(S_3\)-invariant derivative orbits reduce to a two-dimensional simultaneous kernel, yielding two \(h\)-dependent primaries.

The conceptual lesson is the same as in oscillator-kernel constructions: quotienting by total descendants counts a kernel dimension, while an explicit primary requires solving the raising-operator equations with their \(h\)-dependent coefficients.

# Young diagrams separate chiral permutation types

Two different partitions must not be conflated:

- \(\mu\vdash N\) labels conjugacy classes and hence winding cycles;
- \(\lambda\vdash N\) labels irreducible \(S_N\) representations and hence Young diagrams.

Frobenius gives
\[
s_\lambda(x)
=\sum_{\mu\vdash N}
\frac{\chi^\lambda(\mu)}{z_\mu}
\prod_kp_k(x)^{m_k},
\]
while the refined Cauchy identity gives
\[
\chi_N(q,\bar q)
=\sum_{\lambda\vdash N}
s_\lambda(x)s_\lambda(y),
\]
with
\[
x_\ell=q^{h+\ell},
\qquad
y_{\bar\ell}=\bar q^{h+\bar\ell}.
\]
Matching the same \(\lambda\) in both chiralities is the diagonal \(S_N\)-invariance condition for a bosonic state.

At \(N=2\), the symmetric Young diagram selects even chiral derivative level and the antisymmetric diagram selects odd level; pairing identical diagrams across the two chiralities reproduces the same-parity rule.

Expanding the Schur functions produces matched cycle monomials
\[
\prod_k
p_k(x)^{m_k}p_k(y)^{m_k},
\]
not only individual \(p_n(x)p_n(y)\) factors. This sharpens one loose sentence in the source.

# Boundary-graviton dressing

For a generic non-vacuum, non-degenerate Virasoro module, the character factorizes as
\[
\chi^{\rm Vir}_{h_P,\bar h_P}
=
\chi^{\rm Vir}_{\rm vac}(q)
\bar\chi^{\rm Vir}_{\rm vac}(\bar q)
\chi^{\rm global}_{h_P,\bar h_P},
\]
with
\[
\chi^{\rm Vir}_{\rm vac}(q)
=\prod_{n\ge2}(1-q^n)^{-1}.
\]
The global Wilson loop already contains the \(L_{-1},\bar L_{-1}\) towers. The vacuum factors add the boundary-graviton generators \(L_{-n},\bar L_{-n}\) for \(n\ge2\).

This is a character identity. It does not prove that every generalized-free global primary is already an exact finite-\(c\) Virasoro primary with unchanged weight. At finite \(c\), one generally expects \(1/c\) improvements and mixing; null vectors or degenerate modules also invalidate the generic Verma factorization.

# BTZ, Verlinde lines, and the modular kernel

The heavy representation is parameterized by
\[
c=1+6Q^2,
\qquad
h(P)=\frac{Q^2}{4}+P^2,
\qquad
\widehat\chi_P(\tau)
=\frac{q^{P^2}}{\eta(\tau)}.
\]
A light topological defect \(a\) acts on the heavy module as
\[
\mathsf D_a|_{\mathcal V_P}
=\frac{S_{aP}}{S_{0P}},
\]
so the twisted character is
\[
\mathcal Z^{\rm tw}_{a|P}
=\frac{S_{aP}}{S_{0P}}\widehat\chi_P.
\]
Weighting by the vacuum modular row produces
\[
\int_0^\infty dP\,
S_{0P}
\frac{S_{aP}}{S_{0P}}
\widehat\chi_P(\tau)
=\widehat\chi_a(-1/\tau).
\]
The geometric interpretation exchanges a light spatially wound probe around the heavy Polyakov line for a complementary-cycle loop in the BTZ handlebody.

This last step has a wider assumption boundary than the thermal-AdS counting:

- the source does not derive the full BTZ determinant after the modular step, but asserts that plethystic exponentiation proceeds as before;
- \(S_{0P}\) is a universal modular/Cardy density, not an exact microscopic density for an arbitrary individual CFT;
- analytic continuation for genuinely light/subthreshold \(a\), convergence, and noncompact Verlinde-line normalization are left implicit;
- interpreting a smooth horizon as an ensemble of heavy singular Wilson-line states is holographic input, not a consequence of the character identity alone.

# Mapping to existing vault formalism

For `Articles/Quantization in AdS/perturbation/multi-particle primaries.md`,
\[
\text{paper }h=\Delta/2,\qquad
(m,\bar m)\leftrightarrow(p,q),
\qquad
d^{(N)}_{m,\bar m}\leftrightarrow M_N(p,q).
\]
The paper's \(P_N\) retains \((q\bar q)^{Nh}\), while the vault's reduced polynomial removes the common \(N\Delta/2\) ground weight. The cycle-index formulas are otherwise the same construction.

The paper's \(L_1\) identity is the derivative-slot version of the vault's oscillator raising operator. Its new contributions are:

1. the closed \(N=3\) multiplicity;
2. explicit honest \(N=3\) primaries;
3. the Young-diagram resolution linking chiral representation types;
4. the identification of each primary module with a single Wilson loop.

For `Literature Notes/arxiv/2026/07/03/What's the Matter with 3D Gravity? (2607.01319v1).md`, the cycle multiplicities \(\ell_r\) there are the present \(m_r\), with the same
\[
z_\mu=\prod_r r^{m_r}m_r!.
\]
The earlier note derives the cycle sum from conical-defect/Teichmüller quantization and keeps finite-\(G_N\) binding effects. This paper starts from the free determinant and resolves the same cycle sum into a tower of multi-trace-primary loops. Together:
\[
\text{cone localization}
\to
\text{cycle-index spool}
\to
\operatorname{Sym}^N\mathcal H_1
\to
\text{primary Wilson tower}
\to
\text{Virasoro dressing}.
\]

# Verification note

## Checked with Sage

- Expanded the plethystic \(N=2\) and \(N=3\) characters to bidegree seven, multiplied by \((1-q)(1-\bar q)\), and reproduced the displayed formulas for \(d^{(2)}_{m,\bar m}\) and \(d^{(3)}_{m,\bar m}\) with no mismatches.
- Verified
  \[
  \sum_{\mu\vdash N}\frac1{z_\mu}=1
  \]
  for \(1\le N\le8\), confirming the conjugacy-class normalization.
- The resulting \(N=3\) multiplicity table is nonnegative and integral in the tested range.

## Source-derived or blocked

- The explicit \(N=3\) primary coefficients were read from the appendix but not independently annihilated by both raising operators.
- The finite-\(c\) Virasoro-primary interpretation is not established beyond the generic character factorization.
- The BTZ modular integral was not independently checked because the source does not print the explicit noncompact kernel \(S_{aP}(c)\) or its analytic-continuation conventions.
- The “smooth horizon as ensemble” interpretation remains additional holographic input.
