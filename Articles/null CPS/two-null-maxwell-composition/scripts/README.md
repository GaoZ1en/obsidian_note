# Verification Scripts

Run from the project root:

```text
python3 scripts/finite_harmonic_reduction.py
wolframscript -file scripts/maxwell_master_commuting_checks.wl
wolframscript -file scripts/phase_ii_goursat_lee_wald_checks.wl
python3 scripts/full_maxwell_composition_checks.py
wolframscript -file scripts/hamiltonian_test_checks.wl
```

## `finite_harmonic_reduction.py`

Uses dependency-free exact rational linear algebra.  It checks:

- the full one-harmonic electric/magnetic/connection compatibility matrix;
- its rank-five $S^2$ redundancy;
- diagonal moment map, zero-level rank, and kernel;
- anchored kernel and dimension formulas for several $L,K$ Darboux blocks;
- invertibility of a separate electric/magnetic master-jet dictionary;
- equivalence of Maxwell and master corner matching;
- the unanchored charged-frame obstruction.

Expected final line:

```text
ALL FINITE-HARMONIC REDUCTION CHECKS PASSED
```

The finite matrices do not prove continuum closedness, a Sobolev quotient, or
bulk Goursat surjectivity.

## `maxwell_master_commuting_checks.wl`

Uses exact Wolfram algebra to check the projected Maxwell/Bianchi identities,
both (E/B) field-strength maps, the fixed-anchor relative-frame relation, and
the full rank of a representative finite matched-master symplectic block.

Expected final line:

```text
ALL MAXWELL/MASTER COMMUTING CHECKS PASSED
```

The analytic commuting diagram is proved by the explicit inverse formulas in
calculation 04; this script is regression evidence.

## `phase_ii_goursat_lee_wald_checks.wl`

Checks the Bessel/Riemann kernel, explicit electric potential lift, both fixed
outer frames and exact anchors, connection compatibility, direct E/B pullback
of the raw Maxwell form, both dressing signs, and conservation of the master
symplectic current.

Expected final line:

```text
ALL PHASE-II GOURSAT/LEE-WALD CHECKS PASSED
```

## `full_maxwell_composition_checks.py`

Uses exact rational arithmetic and starts with three independent E/B trace
spaces plus four independent interface-side frame/connection copies.  It
imposes radiative, electric, magnetic, anchor, curvature, and connection rows,
then verifies both diagonal reductions, final field strength, Lee--Wald
matrix, and a Hamiltonian witness.

Expected final line:

```text
ALL FULL-MAXWELL COMPOSITION CHECKS PASSED
```

## `hamiltonian_test_checks.wl`

This is a kill test, so a passing script confirms the diagnosed obstruction:
finite-cross time and space translations have nonzero symplecticity residuals,
whereas the $SO(3)$ rotation block has zero residual.

Expected final line:

```text
ALL HAMILTONIAN KILL TESTS PASSED
```
