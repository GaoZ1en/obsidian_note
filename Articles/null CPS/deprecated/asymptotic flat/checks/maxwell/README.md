# Maxwell symbolic checks

## Scope

`run_all.wls` reproduces the finite symbolic checks used by the proposed
formalism-plus-3D-Maxwell manuscript.  It covers:

1. radial monomial differentiation and the resonant/nonresonant gauge
   primitives;
2. the exact Bondi-coordinate Maxwell density and its leading divergence;
3. cancellation of the Coulomb and radiative logarithms, including first and
   second field variations;
4. the Bessel--Laplace formula and the zero/pole structure of the
   Hankel--Mellin threshold coefficient;
5. the null-lid kernel ODE, affine endpoint pairing and
   polarization-dependent finite-dimensional kernel models.

These checks support finite algebraic identities in `3d Maxwell.md`.  They do
not prove the conormal remainder estimates, contour shifts, Borel extension,
closedness of infinite-dimensional gauge images or the completeness of a
counterterm category.

## Run

From the vault root:

```sh
rtk wolframscript -file "Articles/null hypersurface/asymptotic flat/checks/maxwell/run_all.wls"
```

The script prints one line per check and exits with status `1` if any check
fails.

## Reproducibility boundary

- Tested with the local `wolframscript` kernel available on 2026-07-25.
- The Bessel--Laplace identity is checked both symbolically where possible and
  numerically at a noninteger spectral weight with 50-digit working precision.
- The coefficientwise zero/residue statements follow from the pole structure
  of reciprocal Gamma functions.  The script audits representative integer
  grids and the displayed residue formula; a finite grid is not a substitute
  for that argument and neither one proves the full conormal image theorem.
