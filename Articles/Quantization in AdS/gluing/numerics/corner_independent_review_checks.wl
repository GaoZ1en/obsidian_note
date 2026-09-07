(* Independent review, 2026-09-07.
   Finite exact checks only: these do not prove PDE or microlocal statements.
   Convention: Omega = dp wedge dq; beta is the ordinary dot pairing. *)
ClearAll[x1, x2, y1, y2, y3, y4, q, p, hbar];
xx = {x1, x2};
yy = {y1, y2, y3, y4};
jj = {{0, 1}, {-1, 0}};
rr = {x1, x2, x1*x2 + x1^2, x1^3 - x2^2};
dr = Outer[D, rr, xx];
aa = jj.Transpose[dr];
bb = {{1, 0, 0, 0}, {0, 1, 0, 0}};
bf = -Transpose[bb].jj;
at = Thread[xx -> bb.yy];
pp = (dr.aa) /. at;
ff = y1*y3 + Sin[y2]*y4^2;
gg = y2*y4 + y3^2*y1;
hh = y1*y2 + y3*y4;
grad[f_] := D[f, #] & /@ yy;
br[f_, g_] := Simplify[grad[f].pp.grad[g]];
da[h_, u_] := Sum[D[aa, xx[[k]]]*h[[k]], {k, 2}].u;
uf = grad[ff];
ug = grad[gg];
correction = bf.(da[aa.ug, uf] - da[aa.uf, ug]) /. at;
gradientFormula = (Outer[D, uf, yy].pp.ug
  - Outer[D, ug, yy].pp.uf + correction);
brResidual = Simplify[bb.rr - xx];
transposeResidual = Simplify[aa.bf - IdentityMatrix[2]];
gradientResidual = Simplify[grad[br[ff, gg]] - gradientFormula];
jacobiResidual = Simplify[
  br[ff, br[gg, hh]] + br[gg, br[hh, ff]] + br[hh, br[ff, gg]]];
correctionAtPoint = Simplify[correction /. Thread[yy -> {1, 0, 1, 1}]];

(* A nonlinear canonical shear preserves the Poisson tensor but its bare
   pullback does not intertwine a constant Wick/Moyal product. *)
shearJacobian = Outer[D, {q, p + q^2}, {q, p}];
shearResidual = Simplify[shearJacobian.jj.Transpose[shearJacobian] - jj];
moyal4[f_, g_] := Sum[(I*hbar/2)^r/Factorial[r] Sum[
  (-1)^k*Binomial[r, k]*D[f, {q, r - k}, {p, k}]
    *D[g, {q, k}, {p, r - k}], {k, 0, r}], {r, 0, 4}];
shearPullback = (p - q^2)^2;
wickAnomaly = Simplify[moyal4[shearPullback, shearPullback] - shearPullback^2];
checks = {
  <|"name" -> "nonlinear_graph_BR_identity", "passed" -> (brResidual === {0, 0})|>,
  <|"name" -> "regular_transpose_right_inverse", "passed" -> (transposeResidual === ConstantArray[0, {2, 2}])|>,
  <|"name" -> "full_nonlinear_gradient", "passed" -> (gradientResidual === {0, 0, 0, 0})|>,
  <|"name" -> "leaf_bracket_Jacobi", "passed" -> (jacobiResidual === 0)|>,
  <|"name" -> "omitted_background_correction_is_nonzero", "passed" -> (correctionAtPoint === {-1, -1, 0, 0})|>,
  <|"name" -> "nonlinear_shear_is_symplectic", "passed" -> (shearResidual === ConstantArray[0, {2, 2}])|>,
  <|"name" -> "bare_nonlinear_pullback_fails_Wick_intertwining", "passed" -> (Simplify[wickAnomaly - 2*hbar^2*(p - q^2)] === 0 && wickAnomaly =!= 0)|>
};
result = <|
  "scope" -> "Independent finite-dimensional algebraic review; no PDE or microlocal proof",
  "allPassed" -> And @@ Lookup[checks, "passed"],
  "groupCount" -> Length[checks],
  "checks" -> checks,
  "residuals" -> <|
    "BR" -> brResidual,
    "ABflat" -> transposeResidual,
    "fullGradient" -> gradientResidual,
    "Jacobi" -> jacobiResidual,
    "backgroundCorrectionAtPoint" -> correctionAtPoint,
    "nonlinearShearSymplecticity" -> shearResidual,
    "WickAnomaly" -> ToString[wickAnomaly, InputForm]
  |>
|>;
Print[ExportString[result, "RawJSON"]];
