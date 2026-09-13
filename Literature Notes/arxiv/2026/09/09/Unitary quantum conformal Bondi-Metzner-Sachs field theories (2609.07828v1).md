---
paper id: 2609.07828v1
title: "Unitary quantum conformal Bondi-Metzner-Sachs field theories"
authors:
  - Daniel Grumiller
  - Iva Lovrekovic
publication date: 2026-09-07T18:00
abstract: |-
  Positivity and vertex-algebra admissibility reduce quantum conformal BMS_3 theories to four central-charge candidates. Using known W_(2,2,2,1) module classifications and spectral flow, the paper lists their primary spectra and checks BPS-like, upper-weight, and holographic-gap inequalities.
comments: "11 pages, 2 TikZ figures"
url: https://arxiv.org/abs/2609.07828v1
summary: "A finite representation-theoretic classification with fully checkable spectral arithmetic; unitarity is proved for only the first three of the four candidates."
tags: []
---

# Why this is high priority

Reason codes: `T1-symmetry`, `T2-celestial-carrollian`, `T3-math`.

The paper analyzes the quantum algebra that combines superrotations, supertranslations, superdilatations, and super-special-conformal transformations in three-dimensional conformal BMS symmetry. Its strongest result is a sharply finite candidate list and explicit representation spectra, directly bearing on the boundary-symmetry side of flat holography.

# Direct verdict

**Correct with one essential status distinction:** the algebraic central-charge relation, four admissible levels, listed primary spectra, and finite spectral inequalities are internally consistent. CFT I--III are unitary by the external theorem cited by the authors. CFT IV satisfies the known necessary positivity/admissibility conditions, but its unitarity remains unresolved. Therefore “four unitary theories” is not established; the correct statement is **three proven unitary theories plus one admissible unitarity candidate**.

The bulk holographic interpretation is conjectural. The paper does not construct a boundary action, state space from first principles, bulk/boundary map, or a quantum relation between the Chern--Simons and boundary levels.

# Complete source map

1. **Introduction:** identifies the quantum conformal BMS$_3$ algebra with $W_{(2,2,2,1)}$ and states the spectrum-classification goal.
2. **Quantum algebra:** gives all mode commutators, normal-ordered composites, the Jacobi relation between $c$ and $k$, level duality, and important subalgebras.
3. **Unitarity restrictions:** combines $c,k\ge0$ with vertex-algebra admissibility to isolate four levels.
4. **Physical states:** defines highest-weight primaries by $(q,h)$ and introduces spectral flow.
5. **Spectra:** lists all primaries and organizes all irreducible modules into spectral-flow orbits.
6. **BPS-type bound:** checks $h\ge q^2/(2k)$ and identifies four extremal non-vacuum primaries in every candidate.
7. **Gap and upper bound:** checks $h\ge c/24$ and $h\le2k$ on the finite lists; the general gap discussion uses additional assumptions on the lowest primary.
8. **Outlook:** marks CFT IV unitarity, partition functions, supersymmetric/higher-spin extensions, BMS$_4$, and holography as open.
9. **Supplement:** gives notation dictionaries, Jacobi calculations, complete primary lists, spectral-flow orbits, and the classical $\mathfrak{so}(3,2)$ Chern--Simons wedge algebra.

# Quantum conformal BMS$_3$ algebra

The generators are $L_n$ (superrotations), $J_n$ (superdilatations), $M_n$ (supertranslations), and $K_n$ (super-SCTs). The linear brackets include

$$
[L_n,L_m]=(n-m)L_{n+m}+\frac c{12}(n^3-n)\delta_{n+m,0},
$$

$$
[J_n,J_m]=kn\delta_{n+m,0},
\qquad
[J_n,M_m]=M_{n+m},
\qquad
[J_n,K_m]=-K_{n+m},
$$

$$
[M_n,M_m]=[K_n,K_m]=0.
$$

$[M_n,K_m]$ contains $L,J$ and three quadratic/cubic normal-ordered composites. Imposing the remaining Jacobi identities fixes their coefficients and requires

$$
c=-12k+28-\frac{30}{k+1}.
$$

The presentation is singular at $c=1$, $k=1/4$, but the relevant coefficients have removable limits; for example,

$$
\lim_{k\to1/4}\frac{4k-1}{c(k)-1}=\frac59.
$$

The level map

$$
\widetilde k=\frac{3-2k}{2(k+1)}
$$

is an involution and leaves $c(k)$ invariant. It exposes a second large-$c$ branch near $k=-1^-$, although that branch is excluded by positive level.

# Positivity and the four candidates

Necessary positivity of the Virasoro and current sectors requires $c\ge0$ and $k\ge0$. Combined with the Jacobi curve, this gives

$$
\frac23-\sqrt{\frac5{18}}\le k\le
\frac23+\sqrt{\frac5{18}},
$$

and

$$
0\le c\le40-12\sqrt{10}\approx2.05267.
$$

The cited admissible-vertex-algebra classification leaves

| candidate | $k$ | $c$ | irreducible modules | primaries | unitarity status |
|---|---:|---:|---:|---:|---|
| I | $1/4$ | $1$ | 4 | 5 | proved |
| II | $1/3$ | $3/2$ | 9 | 12 | proved |
| III | $3/4$ | $13/7$ | 12 | 21 | proved |
| IV | $2/3$ | $2$ | 18 | 30 | open; necessary conditions only |

The paper's title and some shorthand uses “unitary” for all four, but its footnote and outlook correctly preserve this distinction.

# Primaries and spectral flow

Primary states satisfy

$$
J_0|q,h\rangle=q|q,h\rangle,
\qquad
L_0|q,h\rangle=h|q,h\rangle,
$$

and are annihilated by every positive mode. The spectral-flow automorphism is

$$
\psi(L_n)=L_n-J_n+\frac k2\delta_{n0},
\qquad
\psi(J_n)=J_n-k\delta_{n0},
$$

$$
\psi(M_n)=M_{n-1},
\qquad
\psi(K_n)=K_{n+1}.
$$

If the top space of $L(q,h)$ has dimension $i$, then

$$
\psi(L(q,h))
=L\left(q+i-1-k,\ h-q-i+1+\frac k2\right).
$$

Starting from the vacuum gives the universal extremal modules

$$
L(0,0)\longrightarrow L(-k,k/2)
\longrightarrow L(-2k,2k).
$$

Additional spectral-flow orbits complete the spectra for II--IV. The complete finite lists are supplied in the supplement; their counts include the vacuum and top-space multiplicities.

# Spectral inequalities

The current-sector positivity bound is

$$
h\ge\frac{q^2}{2k}.
$$

Every listed spectrum satisfies it. Four non-vacuum primaries in each candidate saturate it:

$$
(q,h)=(\pm k,k/2),\qquad(\pm2k,2k).
$$

Every non-vacuum primary also obeys

$$
h\ge\frac c{24},
$$

with minimum margins

$$
\frac1{12},\quad\frac1{24},\quad\frac1{84},\quad0
$$

for I--IV respectively. CFT IV saturates the gap at $(q,h)=(\pm1/6,1/12)$.

Finally, all listed primaries obey

$$
h\le2k.
$$

Unlike the BPS inequality, this upper bound is a property of the classified finite spectra and their spectral-flow orbits, not a general positivity theorem for arbitrary $W_{(2,2,2,1)}$ representations.

The paper's broader derivation of the gap away from the four lists assumes that the lowest non-vacuum charge is not half-integral and that one of $i_\pm$ equals one. Its resulting condition

$$
-1<k\le6q_0^2+\frac12
$$

is conditional on those representation assumptions.

# Independent checks

**Checked (rendered PDF, TeX source, Sage, and exact rational arithmetic):**

- The rendered BPS/gap page agrees with the TeX source and displays the four finite spectra against both bounds.
- Substitution of $k=1/4,1/3,3/4,2/3$ into the Jacobi relation gives $c=1,3/2,13/7,2$ exactly.
- Sage verifies that the level-duality map is involutive and that $c(\widetilde k)=c(k)$ identically.
- The $k\to1/4$ removable coefficient limit is exactly $5/9$.
- The complete lists contain $5,12,21,30$ primaries, exactly as in the table.
- Exact enumeration verifies the BPS bound, gap bound, and upper bound for every non-vacuum primary in all four lists.
- Each list has exactly four non-vacuum BPS saturators. The minimum gap margins are exactly $1/12,1/24,1/84,0$.

**Source- and literature-derived:** completeness of the irreducible-module classification, positivity of the underlying vertex algebras, the full normal-ordered Jacobi calculation, and the external unitarity theorem for CFT I--III.

**Not verified / open:** unitarity of CFT IV, modular-invariant partition functions, thermal behavior, a quantum bulk-level dictionary, and any BMS$_4$ extension.

# Bulk interpretation and vault relevance

The supplement identifies the wedge algebra with $\mathfrak{so}(3,2)$ and recalls a three-dimensional conformal-gravity Chern--Simons action. This gives a candidate classical bulk origin, not a quantum holographic duality. In particular, the semiclassical identification $k_{CS}=-k$ cannot literally match an integrally normalized bulk level to any of the four fractional boundary levels; the paper leaves quantum and normalization corrections open.

For the vault programme, this is downstream representation data for a specific boundary symmetry algebra. It does not construct the regional observable algebra that should be represented, nor prove a sewing rule, state restriction map, or bulk reconstruction theorem. Its useful input is the finite set of admissible central data and the exact separation between proven unitarity, necessary positivity, and conjectural holography.

Back to [[2026_09_09_overview]].
