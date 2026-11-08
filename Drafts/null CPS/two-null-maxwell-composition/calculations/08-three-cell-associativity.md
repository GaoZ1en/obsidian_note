# Three-Cell Associativity

This is theorem L-G for finite local cells. Calculation 16 proves that the
same reduction-by-stages maps commute with restriction from $X_\infty$ and
with exhaustion.

## 1. Direct verdict

**Status: proved** for the same anchored rapid-angular matched-$H^1$ Maxwell
sector as L-F:

$$
\boxed{
(\mathcal P_1\circ\mathcal P_2)\circ\mathcal P_3
\simeq_{\mathrm{sympl}}
\mathcal P_1\circ(\mathcal P_2\circ\mathcal P_3).}
\tag{1.1}
$$

The proof is not Abelian frame addition alone.  It uses Goursat uniqueness,
reduction by stages, two internal Lee--Wald cancellations, and transitivity of
the full Maxwell compatibility relation.

## 2. Simultaneous full-Maxwell compatibility locus

Let $N_{12}$ and $N_{23}$ be the two internal null interfaces.  Define

$$
\mathcal C_{123}^{\mathrm{Max}}
=\{(A_1,A_2,A_3):
\tau_1(N_{12})\sim\tau_2(N_{12}),\
\tau_2(N_{23})\sim\tau_3(N_{23})\},
\tag{2.1}
$$

where each $\sim$ means the complete conditions (3.1)--(3.2) of calculation
07: equality of $i^*F$, equality of $i^*(*F)$, and a connection transition
with compatible endpoint frames.

The two interfaces have independent transition functions
$\zeta_{12},\zeta_{23}$ and independent diagonal groups

$$
\mathcal G_{12}\times\mathcal G_{23}.
\tag{2.2}
$$

No cell variables are identified before (2.1) is imposed.

## 3. Transitivity of the connection and curvature data

On the simultaneous locus,

$$
A_2-A_1=d\zeta_{12},
\qquad
A_3-A_2=d\zeta_{23}
$$

on the respective interfaces.  Whenever the two transitions are compared on
a common endpoint cut,

$$
A_3-A_1=d(\zeta_{12}+\zeta_{23}).
\tag{3.1}
$$

The magnetic curvatures and the dual/electric fluxes obey ordinary equality
transitivity.  Because the bundle is trivial and the cuts have no harmonic
one-forms, no additional holonomy cocycle is hidden in (3.1).  This step would
need extra data for $H^1(S)\neq0$ or a nontrivial bundle.

## 4. Goursat uniqueness and equality of the two maps

By calculation 07, complete Maxwell trace matching is equivalent to matching
both E/B master traces plus the potential transition equation.  Both iterated
constructions

$$
G_{(12)3},\qquad G_{1(23)}:
\mathcal C_{123}^{\mathrm{Max}}
\longrightarrow
\mathcal P(D_1\cup D_2\cup D_3)
\tag{4.1}
$$

therefore solve the same two master Goursat problems with the same outer data.
Uniqueness gives the same $F_{\mu\nu}$.  The canonical potential lift of
calculation 05 then gives the same anchored Maxwell class; (3.1) identifies
the regional representatives.  Hence

$$
G_{(12)3}=G_{1(23)}.
\tag{4.2}
$$

## 5. Reduction by stages

The two interface groups act on disjoint frame copies and commute.  On the
anchored linear core, calculation 05 provides a continuous slice, so both
actions have closed images and the quotient is regular.  Therefore

$$
\mathcal C_{123}^{\mathrm{Max}}//
(\mathcal G_{12}\times\mathcal G_{23})
\simeq
(\mathcal C_{123}^{\mathrm{Max}}//\mathcal G_{12})//\mathcal G_{23}
\simeq
(\mathcal C_{123}^{\mathrm{Max}}//\mathcal G_{23})//\mathcal G_{12}.
\tag{5.1}
$$

The finite regression begins with independent cell and frame variables.  Its
compatibility locus has four physical trace dimensions and two diagonal gauge
dimensions; either reduction order has dimensions

$$
6\longrightarrow5\longrightarrow4.
\tag{5.2}
$$

## 6. Two internal flux cancellations

Retain both internal interface currents until restriction to (2.1).  Opposite
orientations and full trace matching give

$$
\Omega_{N_{12},1}+\Omega_{N_{12},2}=0,
\qquad
\Omega_{N_{23},2}+\Omega_{N_{23},3}=0.
\tag{6.1}
$$

Transition-generated endpoint terms cancel after the corresponding diagonal
reduction.  Consequently both parenthesizations pull back the union form to

$$
\left.(\Omega_1+\Omega_2+\Omega_3)
\right|_{\mathcal C_{123}^{\mathrm{Max}}},
\tag{6.2}
$$

and (4.2) makes the resulting symplectic maps identical.

## 7. Full-Maxwell finite regression

`scripts/full_maxwell_composition_checks.py` uses exact rational arithmetic.
For one real harmonic it starts from

- three independent E/B physical trace spaces;
- independent $\chi_L,\chi_R,\bar q_L^E,\bar q_R^E,
  \bar q_L^B,\bar q_R^B$ on both interfaces;
- complete radiative, electric, magnetic, anchor, curvature, and connection
  rows imposed only afterwards.

The $24$-dimensional product has compatibility rank $18$.  Its six-dimensional
kernel parameterization contains four physical directions and exactly two
diagonal directions.  The script verifies both stage orders, the final
$F$ quotient, the reduced Lee--Wald matrix, and a quadratic Hamiltonian witness
are identical.  It ends with

```text
ALL FULL-MAXWELL COMPOSITION CHECKS PASSED
```

This is regression evidence for the full gauge/corner bookkeeping.  The
analytic associativity proof is Sections 2--6.

## 8. Theorem L-G

L-G is `proved` on the anchored rapid-angular matched-$H^1$ core. The theorem
does not include charged outer frames, $\ell=0$, nontrivial bundle topology,
or a stronger Sobolev completion.

## Verified

- two independent full compatibility blocks and their exact ranks;
- exactly two diagonal kernels and reduction by stages;
- equality of final field strength, Lee--Wald matrix, and a finite quadratic
  witness in both parenthesizations.

## Assumptions

- L-D through L-F;
- commuting Abelian interface groups and the anchored continuous slice;
- trivial topology with no harmonic cut one-forms.

## Not verified

- non-Abelian or singular reduction by stages;
- topology with transition cocycles beyond exact functions.
