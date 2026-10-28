# Stable-N analytic continuation package

The complete proof is in `NEW_STABLE_ANALYTIC_STRUCTURES.md`. The new results
are the all-degree generic normal form, the complete chiral quadrupole/
octupole low cluster, its Gegenbauer operator, and every first `1/N` energy
coefficient. All are statements about the already fixed coefficient of `G`.

## Dependencies

Python 3.10 or later and SymPy. NumPy is only needed for the optional
finite-N numerical convergence comparison.

```bash
python -m pip install sympy numpy
```

## Direct closed spectrum: no old package or matrix needed

```bash
python chiral_edge.py --delta 2 --p 12
python chiral_edge.py --delta 2 --p 12 --b 4 --expand-state
python chiral_edge.py --delta symbolic --p 12 --b 2
```

With no `--b`, the interface returns a compact parametrization of the entire
cluster. For a branch, it returns the exact minimum, constant gap, first
`1/N` coefficient, and a compact Gegenbauer state. The remainder is
`O(N^-2)` at fixed finite `P,Delta`; it is not a joint growing-P bound.
The `b=0,1` minimum is exact for every physical stable N.

## Independent proof-level checks

All these commands are standalone in this directory:

```bash
python verify_new_stable.py --no-prior
python verify_second_independent.py
python verify_closed_rates.py
python effective_second.py --delta 2 --verify
```

`independent_core.py` and `verify_second_independent.py` reconstruct the
Bose pair operator from Lagrange projectors of the differential Casimir.
They import neither the previous CG implementation nor the stable-N code.
The audited Einstein pair eigenvalues are retained physical input.

For a fresh all-mass derivation of the third-order coefficients:

```bash
python effective_second.py --delta symbolic --output effective_second_symbolic_independent.json
python verify_closed_rates.py
```

This exact symbolic derivation takes longer than evaluating the closed
formulas. It only needs the files in this directory and SymPy.

## Optional direct comparison to the frozen earlier package

`verify_new_stable.py` without `--no-prior` additionally compares the new
formula to full earlier-backend primary blocks at P=8 and P=12. Its default
location is `../../prior/fock_research/general` relative to this directory;
set `ADS3_FOCK_GENERAL` to the directory containing `stable_n.py` if the
frozen source is elsewhere.

```bash
ADS3_FOCK_GENERAL=/absolute/path/to/fock_research/general python verify_new_stable.py --numerical
```

This comparison is separate from the standalone proof-level checks.

## Recorded evidence

- `new_stable_verification.json`: symbolic residues, six all-mass jets,
  Gegenbauer identities, larger complete block comparisons, and physical-
  Gram numerical convergence.
- `effective_second_symbolic.json`: retained generic derivation from the
  preceding CG/occupation backend.
- `effective_second_symbolic_independent.json`: fresh generic derivation
  from the new differential-Casimir/creation backend.
- `generic_second_crosscheck.json`: exact equality of the two derivations,
  all closed rational rates, and the compact energy formula.
- `second_independent_verification.json`: six independent rational-mass
  checks of the C2 formulas.
- `effective_second_2.json`: Delta=2 coefficients and complete P=10/P=12
  reduced-resolvent comparisons.
- `chiral_edge_P12_b4.json`: a directly evaluable nonminimum branch example.

The exploratory scripts and resonance scan are retained as provenance.
They are not the proof of the all-degree theorem, which uses the residue
and binary valuation argument in §§2.1–2.2.
