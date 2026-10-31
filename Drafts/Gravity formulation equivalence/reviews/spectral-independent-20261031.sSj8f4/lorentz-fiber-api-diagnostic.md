# Excluded Sage API attempt

The first focused Lorentz-fiber execution returned `ok=false`, before writing a result file. The exact reported failure was:

```text
TypeError: 'NotImplementedType' object is not callable
File "lorentz_fiber_check.py", line 58, in <module>
File "sage/structure/element.pyx", line 3933, in sage.structure.element.Matrix.__mul__
File "sage/structure/coerce.pyx", line 1244, in sage.structure.coerce.CoercionModel.bin_op
File "sage/matrix/action.pyx", line 282, in sage.matrix.action.MatrixMatrixAction._act_
File "sage/matrix/matrix0.pyx", line 5741, in sage.matrix.matrix0.Matrix._matrix_times_matrix_
  return self._multiply_classical(right)
```

The failed call's tool-reported code SHA-256 was `606a53a83da5bcc9dedda20d0bf0338dbe5de94c1569e4a16fb03698f7fad180`. Sage version was 10.9. The input tried ordinary generic matrix multiplication over a native ExteriorAlgebra, for which Sage did not implement the required backend.

The [repaired executable](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/lorentz_fiber_check.py>) uses an explicit `mm(X,Y)` that multiplies the coefficients in their original order and adds them with the native ExteriorAlgebra operations. It does not replace odd coefficients by commuting symbols or discard nilpotent terms. Native rational matrix operations are unchanged.

The N=1 subset and the final relevant N=2 check then each returned eight exact `True` labels. Only those successful runs are evidence; the API failure is not a failed mathematical residual and is not counted as a pass. See [the supplied audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/supplied_note17_audit.md>) for all actual successful returns and safe replay instructions.
