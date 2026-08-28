# Verification Scripts

Run from the project root:

```text
python3 scripts/finite_harmonic_reduction.py
wolframscript -file scripts/maxwell_master_commuting_checks.wl
wolframscript -file scripts/phase_ii_goursat_lee_wald_checks.wl
python3 scripts/full_maxwell_composition_checks.py
wolframscript -file scripts/hamiltonian_test_checks.wl
python3 scripts/global_horizon_exhaustion_checks.py
python3 scripts/global_repair_regressions.py
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

This is an obstruction test, so a passing script confirms the diagnosed
moving-boundary statement:
finite-cross time and space translations have nonzero symplecticity residuals,
whereas the $SO(3)$ rotation block has zero residual.

Expected final line:

```text
ALL HAMILTONIAN KILL TESTS PASSED
```

## `global_horizon_exhaustion_checks.py`

Uses sampled Schwartz massive spectral packets and deterministic finite spectral
matrices to check:

- $\Omega_{X_T}\to\Omega_{X_\infty}$ on two nontrivial packets;
- finite-cut time and space translation residuals decay as $T$ grows;
- characteristic Hamiltonian matrices and the active-$\partial_z$ sign;
- translation commutation and a rotational symplectic block;
- the full Maxwell/master dictionary with shared corner data;
- algebraic Weyl composition depends on symplectic gluing, not L-H-trans.

Expected final line:

```text
ALL GLOBAL HORIZON EXHAUSTION CHECKS PASSED
```

The packet calculation is a regression only. It does not prove the massive
$L^2$ tail theorem, the graph-fixed-point range, direct-sum dominated
convergence, or the potential quotient.

## `global_repair_regressions.py`

Uses exact finite arithmetic and small deterministic samples to check:

- finite harmonic projection removes $\ell=0$ and retains an additional
  master-adjoint kernel witness;
- sampled future-causal increments have monotone $u,v$ and remain in the
  endpoint rectangle/triangle;
- a finite trace bilinear obeys its displayed operator-norm bound;
- plus/minus potential re-anchoring maps satisfy the cocycle and reproduce the
  smaller-cut anchored section;
- an even finite Weyl clock witness has norm distance two from the identity.

Expected final line:

```text
ALL GLOBAL REPAIR REGRESSIONS PASSED
```

These are regressions only. They do not prove compact-support Kunneth,
continuum on-shell quotient exactness, causal convexity or global
hyperbolicity, regional/global Green uniqueness, the Uniform Boundedness
Principle hypothesis, Schwartz/energy endpoint limits, or the universal Weyl
$C^*$ theorem.
