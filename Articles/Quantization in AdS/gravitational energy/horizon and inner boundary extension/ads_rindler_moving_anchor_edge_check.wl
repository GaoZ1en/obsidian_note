(* ::Package:: *)

(*
  Exact endpoint algebra for the moving-anchor extension of the
  AdS3-Rindler Brown-Henneaux sector.

  The proper-completion transition anomaly is decomposed into two endpoint
  coordinates q_+/- and two oriented differential traces p_+/-.  The script
  also checks the bounded fixed-anchor projection algebra, surjectivity of
  the four finite-jet traces on a low trigonometric block, and the
  unprojected cos(3 phi) falsification value -11/6.

  This is an algebraic anchor-work check.  It does not identify p_+/- with
  the momentum obtained by varying a complete asymptotic moving-anchor
  action; that geometric identification is a separate claim.
*)

ClearAll["Global`*"];

a = Pi/4;

qPlus[f_] := FullSimplify[f /. phi -> a];
qMinus[f_] := FullSimplify[f /. phi -> -a];

pPlus[f_] := FullSimplify[
   (-D[f, {phi, 2}] - f + D[f, phi])/6 /. phi -> a];
pMinus[f_] := FullSimplify[
   (-D[f, {phi, 2}] - f - D[f, phi])/6 /. phi -> -a];

transitionAnomaly[f_] := FullSimplify[-1/6 (
     Sum[(f (-D[f, {phi, 2}] - f) /. phi -> sigma a),
       {sigma, {-1, 1}}] +
      (f D[f, phi] /. phi -> a) -
      (f D[f, phi] /. phi -> -a))];

anchorFactorization[f_] := FullSimplify[
   transitionAnomaly[f] +
    qPlus[f] pPlus[f] + qMinus[f] pMinus[f]];

polarizedAnomaly[f_, g_] := FullSimplify[
   (transitionAnomaly[f + g] - transitionAnomaly[f] -
      transitionAnomaly[g])/2];

polarizedFactorization[f_, g_] := FullSimplify[
   polarizedAnomaly[f, g] + 1/2 (
      qPlus[f] pPlus[g] + qPlus[g] pPlus[f] +
       qMinus[f] pMinus[g] + qMinus[g] pMinus[f])];

projectA[f_] := FullSimplify[
   f + (qPlus[f] + qMinus[f])/2 Cos[4 phi] -
    (qPlus[f] - qMinus[f])/2 Sin[2 phi]];

reconstructFromProjected[f_] := FullSimplify[
   projectA[f] - (qPlus[f] + qMinus[f])/2 Cos[4 phi] +
     (qPlus[f] - qMinus[f])/2 Sin[2 phi] - f];

genericPolynomial = Sum[c[n] Cos[n phi] + s[n] Sin[n phi], {n, 2, 8}];
secondPolynomial = Sum[d[n] Cos[n phi] + t[n] Sin[n phi], {n, 2, 8}];

traceBasis = {Cos[2 phi], Sin[2 phi], Cos[3 phi], Sin[3 phi]};
traceMatrix = Table[
   {qPlus[f], qMinus[f], pPlus[f], pMinus[f]}, {f, traceBasis}];

cosineThreeAnomaly = transitionAnomaly[Cos[3 phi]];

(* The canonical anchor potential +P_alpha delta Q_alpha has radial work
   Sum p_alpha q_alpha = -A.  Its symmetric polarization therefore cancels
   the transition anomaly. *)
anchorWork[f_] := FullSimplify[
   qPlus[f] pPlus[f] + qMinus[f] pMinus[f]];
anchorWorkPolarized[f_, g_] := FullSimplify[
   (anchorWork[f + g] - anchorWork[f] - anchorWork[g])/2];

testConditions = {
   anchorFactorization[genericPolynomial] === 0,
   polarizedFactorization[genericPolynomial, secondPolynomial] === 0,
   qPlus[projectA[genericPolynomial]] === 0,
   qMinus[projectA[genericPolynomial]] === 0,
   FullSimplify[projectA[projectA[genericPolynomial]] -
      projectA[genericPolynomial]] === 0,
   reconstructFromProjected[genericPolynomial] === 0,
   MatrixRank[traceMatrix] === 4,
   cosineThreeAnomaly === -11/6,
   FullSimplify[anchorWork[genericPolynomial] +
      transitionAnomaly[genericPolynomial]] === 0,
   FullSimplify[anchorWorkPolarized[genericPolynomial, secondPolynomial] +
      polarizedAnomaly[genericPolynomial, secondPolynomial]] === 0
   };

testIDs = {
   "quadratic transition anomaly factors into oriented endpoint traces",
   "polarized anomaly has the symmetric q-p factorization",
   "fixed-anchor projection kills the right endpoint coordinate",
   "fixed-anchor projection kills the left endpoint coordinate",
   "fixed-anchor projection is idempotent",
   "projected-plus-complement splitting reconstructs the input",
   "four endpoint traces are independent on the m=2,3 block",
   "unprojected cosine m=3 anomaly is -11/6",
   "radial anchor work cancels the quadratic transition anomaly",
   "polarized anchor work cancels the bilinear transition anomaly"
   };

Print[<|
  "TraceMatrix" -> traceMatrix,
  "TraceRank" -> MatrixRank[traceMatrix],
  "CosineThreeAnomaly" -> cosineThreeAnomaly,
  "GenericFactorizationResidual" -> anchorFactorization[genericPolynomial]
  |>];

movingAnchorEdgeReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
