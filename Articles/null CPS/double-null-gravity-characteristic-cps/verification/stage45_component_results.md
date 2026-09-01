# Stage 4.5 exact component-regression result

Executed on 2026-09-01 from the project root with

```text
rtk proxy sage -python scripts/stage45_extended_curvature_hodge_checks.py
```

The host's Sage Python supplies SymPy 1.14.0.  Result:

```text
OVERALL: PASS (37/37)
B_BASIS_ORDER =
[B_112,B_113,B_114,B_123,B_124,B_134,B_212,B_213,
 B_214,B_223,B_224,B_234,B_313,B_323,B_414,B_424]
F1_SYMBOL_SHAPE = (24,24)
F1_TIME_RANK = 24
F1_TIME_DETERMINANT = 2
F1_RADIAL_EIGENVALUE_MULTIPLICITIES = {1:12,-1:12}
F1_RADIAL_MINUS_GEOMETRIC_MULTIPLICITY = 10
F2_TIME_RANK = 24
```

The exact checks V80--V91 cover the $18+6=24$ decomposition; all six
omitted Cartan labels; the rank-six $J$ map; the sixteen-dimensional raw
Bianchi bundle, cyclic/trace projector and exact $H_B$ incidence; the
invertible $16\times16$ row matrix $S$; all four $16\times6$ conjugated
copy-principal matrices; all twenty-four Cartan rows; the complete F1 and
F2 matrices; the F1 timelike determinant and radial Jordan obstruction;
the F2 zero-$B$ derivative columns; and all six exterior-of-exterior
principal constraint identities.

The saved script fixes and prints every basis ordering.  Passing
`--dump-full` prints $H_B$, all four $24\times24$ F1 matrices and all four
$40\times40$ F2 matrices.  These are exact rational matrices, not sampled
numeric blocks.

Evidence boundary: the passing regressions prove the stated finite
component identities and the frozen Jordan/rank obstruction.  They do not
prove a variable-coefficient wave or comparison subsidiary theorem,
finite-regularity uniqueness, an $\ell_{\rm sub}$, Einstein
identification, reset, $P_{\rm cell}^k$ or $P_{\rm rect}^{s,r}$.

