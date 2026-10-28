# Simplification research attachment

Read `simplification_findings.md` for the complete derivations, assumptions,
source provenance, comparisons with earlier work, and limits of the claims.

Read `jastrow_chiral_family.md` for the further many-body result: the actual
Einstein-scalar kernel in the maximally-chiral sector is a constant plus two
positive pair pseudopotentials. Its complete saturation space is the quartic
Jastrow ideal, with exact O(G) energies and primary multiplicities at all p.

`three_body_chiral_spectrum.md` completes the remaining calculation for three
particles: every nonsaturating primary eigenvalue comes from an explicit 2x2
matrix at arbitrary spin and Delta>1. Its three recoupling coefficients are
computed from one pair-coincidence value and one second-order Taylor coefficient.

- `direct_k4_benchmark.py`: independent exact rational implementation of the
  frozen Direct K4 constraint kernel and free primary reconstruction. It does
  not use an energy spectrum or the crossed recurrence to compute its matrices.
- `direct_k4_benchmark.json`: five-mass benchmark, 45 exact high-spin comparisons.
- `racah_bispectral_checks.py`: all-index rational certificates, arbitrary-test-
  function Racah algebra checks, finite-degree and local-source checks.
- `racah_bispectral_checks.json`: 58 zero residuals and polynomial expressions.
- `jastrow_exact_checks.py` / `.json`: p=3, Delta=2, J=12 exact polynomial
  action with both weighted-inner-product and Casimir-polynomial projectors,
  including a quadratic-Jastrow negative control.
- `three_body_chiral_checks.py` / `.json`: 85 direct Bargmann-wavefunction
  cases and 765 exact checks of the complete 2x2 spectrum formulas.
- `three_body_racah_symbolic.py` / `.json`: six generic-spin/generic-mass
  identities connecting coincidence, norm, and finite-Racah derivations.
- `three_body_spectrum_cli.py`: a directly usable calculator for the proved
  complete three-particle spectrum at any rational Delta>1 and integer J>=0.
  It outputs exact radicals, decimal values, and physical multiplicities as
  JSON, removing redundant auxiliary channels and checking primary counts.
- `three_body_spectrum_examples.json`: CLI examples at Delta=2 and J=0,1,2,12,
  covering the ground primary, absent primary, dependent auxiliary channel,
  and Jastrow plus two residual trajectories.

## Calculate a spectrum

```bash
python3 -m pip install -r requirements.txt
python3 three_body_spectrum_cli.py --delta 7/3 --j 12 --digits 20 --output spectrum.json
```

Each physical branch lists `g3`, with energy `E = E_free + G*g3 + O(G^2)`,
and its multiplicity. At J=1 the primary spectrum is empty. At low J a zero
eigenvalue of the auxiliary 2x2 matrix is removed because it is a dependent
generator; physical saturated primaries are instead counted through the
Jastrow ideal. The calculator implements the closed formulas, and is separate
from the independent verification programs below.

## Reproduce the research checks

Reproduce with Python 3.10+:

```bash
python3 -m pip install -r requirements.txt
python3 direct_k4_benchmark.py --N 8
python3 racah_bispectral_checks.py
python3 jastrow_exact_checks.py
python3 three_body_chiral_checks.py
python3 three_body_racah_symbolic.py
```

The Direct K4, Jastrow, and direct three-body programs use only the Python
standard library. The calculator and two symbolic certificate programs use SymPy 1.14.0,
installed through the ordinary Python environment. No script depends on a
workspace-specific path or a bundled dependency directory.

Racah functions here are formal polynomial/terminating-sequence tools. These
files make no infinite-lattice positive orthogonality or completeness claim.
