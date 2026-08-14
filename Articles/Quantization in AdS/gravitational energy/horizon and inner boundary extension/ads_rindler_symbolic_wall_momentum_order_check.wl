(* ::Package:: *)

(*
  Exact symbolic-frequency endpoint expansion of the linearized densitized
  Brown--York momentum on a fixed AdS--Rindler wall.  The normalization
  1/kappa_p^2 is stripped and the inner outward normal is -d chi.

  This file derives delta Pi from the Gaussian-normal ADM identity before
  substituting the corrected complex Brown--Henneaux mode.  It is independent
  of the numerical finite-difference momentum used in the H47 benchmark.
*)

SetEnvironment["SYMBOLIC_WALL_ENDPOINT_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_symbolic_wall_endpoint_order_check.wl"}]];

ClearAll[wallTangent, wallGamma, wallGammaInverse, wallSqrtMinusGamma,
  wallK, wallKUpper, wallKTrace, wallConnection, wallCovariantDerivative,
  wallH, wallShift, wallDeltaK, wallHUpper, wallHTrace, wallDeltaKTrace,
  wallDeltaKUpper, wallDeltaPi];

wallTangent = {1, 3};
wallGamma = DiagonalMatrix[{-Sinh[rindlerChi]^2, Cosh[rindlerChi]^2}];
wallGammaInverse = Inverse[wallGamma];
wallSqrtMinusGamma = Sinh[rindlerChi] Cosh[rindlerChi];
wallK = DiagonalMatrix[{Sinh[rindlerChi] Cosh[rindlerChi],
    -Sinh[rindlerChi] Cosh[rindlerChi]}];
wallKUpper = wallGammaInverse . wallK . wallGammaInverse;
wallKTrace = FullSimplify[Tr[wallGammaInverse . wallK]];

(* First construct the exact endpoint jet of all six h components and an
   independent exact tau-derivative jet. The pullback Jacobian depends on tau,
   so partial_tau must not be inferred from the chiral phase alone. The
   linearized momentum uses only first derivatives, hence q^3 jets are closed
   through q^3. *)
symbolicRindlerAtQ = PowerExpand@TrigToExp[
    symbolicRindlerH /. {rindlerTime -> 0,
      rindlerU -> -Log[endpointQ]}];
wallMetricJet = Map[FullSimplify[
     Normal@Series[#, {endpointQ, 0, 3}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2] &,
   symbolicRindlerAtQ, {2}];
symbolicRindlerTauAtQ = PowerExpand@TrigToExp[
    D[symbolicRindlerH, rindlerTime] /. {rindlerTime -> 0,
      rindlerU -> -Log[endpointQ]}];
wallTauDerivativeJet = Map[FullSimplify[
     Normal@Series[#, {endpointQ, 0, 3}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2] &,
   symbolicRindlerTauAtQ, {2}];
wallH = wallMetricJet[[wallTangent, wallTangent]];
wallShift = wallMetricJet[[wallTangent, 2]];
uDerivative[expression_] := -endpointQ D[expression, endpointQ];
wallShiftTauDerivative = wallTauDerivativeJet[[wallTangent, 2]];
wallDerivative[componentIndex_, index_] := If[index == 1,
   wallShiftTauDerivative[[componentIndex]],
   uDerivative[wallShift[[componentIndex]]]];
wallDeltaK = Table[Expand[
    -D[wallH[[a, b]], rindlerChi]/2 +
     (wallDerivative[b, a] + wallDerivative[a, b])/2 -
     wallMetricJet[[2, 2]] wallK[[a, b]]/2],
   {a, 2}, {b, 2}];
wallHUpper = FullSimplify[wallGammaInverse . wallH . wallGammaInverse];
wallHTrace = FullSimplify[Tr[wallGammaInverse . wallH]];
wallDeltaKTrace = FullSimplify[
   Tr[wallGammaInverse . wallDeltaK] -
    Sum[wallHUpper[[a, b]] wallK[[a, b]], {a, 2}, {b, 2}]];
wallDeltaKUpper = Table[FullSimplify[
    Sum[wallGammaInverse[[a, c]] wallGammaInverse[[b, d]]
       wallDeltaK[[c, d]], {c, 2}, {d, 2}] -
     Sum[wallHUpper[[a, c]] wallGamma[[c, d]] wallKUpper[[d, b]],
       {c, 2}, {d, 2}] -
     Sum[wallHUpper[[b, c]] wallGamma[[c, d]] wallKUpper[[d, a]],
       {c, 2}, {d, 2}]], {a, 2}, {b, 2}];
wallDeltaPi = Table[FullSimplify[wallSqrtMinusGamma * (
      wallHTrace (wallKUpper[[a, b]] -
          wallKTrace wallGammaInverse[[a, b]])/2 +
       wallDeltaKUpper[[a, b]] -
       wallDeltaKTrace wallGammaInverse[[a, b]] +
       wallKTrace wallHUpper[[a, b]])], {a, 2}, {b, 2}];

independentWallMomentum = {wallDeltaPi[[1, 1]], wallDeltaPi[[1, 2]],
   wallDeltaPi[[2, 2]]};
momentumQExpressions = independentWallMomentum;
momentumEndpointSeries = Table[TimeConstrained[
    FullSimplify[Series[expression, {endpointQ, 0, 3}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2],
    300, $Failed], {expression, momentumQExpressions}];
blockedMomentum = Cases[momentumEndpointSeries, $Failed, Infinity];
momentumEndpointCoefficients = If[blockedMomentum === {},
   Table[Table[FullSimplify[SeriesCoefficient[
       momentumEndpointSeries[[component]], {endpointQ, 0, order}],
      Assumptions -> rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2],
     {order, 0, 3}], {component, 3}], $Failed];
leadingPhase = Exp[I modeFrequency Pi/4];
leadingMomentumPolynomialResiduals = If[
   momentumEndpointCoefficients === $Failed, {$Failed},
   FullSimplify[#/leadingPhase,
      Assumptions -> rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2] & /@
    momentumEndpointCoefficients[[All, 3]]];
leadingMetricTangential = If[wallMetricJet === $Failed, $Failed,
   Map[FullSimplify[Coefficient[#, endpointQ, 2]] &,
    wallH, {2}]];
leadingMomentumMatrix = If[momentumEndpointCoefficients === $Failed,
   $Failed, {{momentumEndpointCoefficients[[1, 3]],
      momentumEndpointCoefficients[[2, 3]]},
     {momentumEndpointCoefficients[[2, 3]],
      momentumEndpointCoefficients[[3, 3]]}}];
leadingFluxContraction = If[
   MemberQ[{leadingMetricTangential, leadingMomentumMatrix}, $Failed],
   $Failed, FullSimplify[Sum[
      leadingMetricTangential[[a, b]] leadingMomentumMatrix[[a, b]],
      {a, 2}, {b, 2}],
     Assumptions -> rindlerChi > 0 &&
      Element[modeFrequency, Integers] && modeFrequency >= 2]];

metricCoefficient[order_] := Map[
   FullSimplify[Coefficient[#, endpointQ, order]] &, wallH, {2}];
momentumCoefficient[order_] := Map[
   FullSimplify[Coefficient[#, endpointQ, order]] &,
   {{momentumQExpressions[[1]], momentumQExpressions[[2]]},
    {momentumQExpressions[[2]], momentumQExpressions[[3]]}}, {2}];
metricTwo = metricCoefficient[2];
metricThree = metricCoefficient[3];
momentumTwo = momentumCoefficient[2];
momentumThree = momentumCoefficient[3];
frequencyReplace[expression_, symbol_] := expression /.
   modeFrequency -> symbol;
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
frequencyDegreeAfterPhase[matrix_] := Max[Map[
    Exponent[Cancel[Together[#/leadingPhase]] // Numerator,
      modeFrequency] &, matrix, {2}]];
metricTwoDegree = frequencyDegreeAfterPhase[metricTwo];
metricThreeDegree = frequencyDegreeAfterPhase[metricThree];
momentumTwoDegree = frequencyDegreeAfterPhase[momentumTwo];
momentumThreeDegree = frequencyDegreeAfterPhase[momentumThree];
fluxQFiveDegreeBound = Max[
   momentumTwoDegree + metricThreeDegree,
   momentumThreeDegree + metricTwoDegree];
smallWallLimits = {
   Map[FullSimplify[Limit[#/rindlerChi^2, rindlerChi -> 0,
       Direction -> "FromAbove"]] &, metricTwo, {2}],
   Map[FullSimplify[Limit[#/rindlerChi, rindlerChi -> 0,
       Direction -> "FromAbove"]] &, metricThree, {2}],
   Map[FullSimplify[Limit[#, rindlerChi -> 0,
       Direction -> "FromAbove"]] &, momentumTwo, {2}],
   Map[FullSimplify[Limit[rindlerChi #, rindlerChi -> 0,
       Direction -> "FromAbove"]] &, momentumThree, {2}]};
smallWallLimitsFinite = FreeQ[smallWallLimits,
   Indeterminate | ComplexInfinity | DirectedInfinity];

testConditions = {
   blockedMomentum === {},
   momentumEndpointCoefficients =!= $Failed,
   If[momentumEndpointCoefficients === $Failed, False,
    momentumEndpointCoefficients[[All, 1 ;; 2]] ===
     ConstantArray[0, {3, 2}]],
   If[momentumEndpointCoefficients === $Failed, False,
    And @@ (PolynomialQ[#, modeFrequency] & /@
       leadingMomentumPolynomialResiduals)],
   leadingFluxContraction === 0,
   metricTwoDegree === 3,
   metricThreeDegree <= 4,
   momentumTwoDegree === 3,
   momentumThreeDegree <= 4,
   fluxQFiveDegreeBound <= 7,
   smallWallLimitsFinite
   };
testIDs = {
   "symbolic Brown--York momentum endpoint series completed",
   "symbolic Brown--York momentum coefficients extracted",
   "all momentum components start at q squared or faster",
   "leading momentum coefficients are polynomial in frequency after phase",
   "leading q squared metric-momentum contraction vanishes",
   "metric q squared coefficient has degree three",
   "metric q cubed coefficient has degree at most four",
   "momentum q squared coefficient has degree three",
   "momentum q cubed coefficient has degree at most four",
   "q fifth wall-flux coefficient has total degree at most seven",
   "coefficient matrices have the declared small-wall scaling"
   };

Print[<|
  "MomentumComponents" -> {{rindlerTime, rindlerTime},
    {rindlerTime, rindlerU}, {rindlerU, rindlerU}},
  "MomentumEndpointCoefficientsQ0ThroughQ3" ->
   momentumEndpointCoefficients,
  "LeadingMetricTangential" -> leadingMetricTangential,
  "LeadingFluxContraction" -> leadingFluxContraction,
  "MetricDegreesQ2Q3" -> {metricTwoDegree, metricThreeDegree},
  "MomentumDegreesQ2Q3" -> {momentumTwoDegree, momentumThreeDegree},
  "FluxQFiveDegreeBound" -> fluxQFiveDegreeBound,
  "SmallWallScaledLimits" -> smallWallLimits|>];
adsRindlerSymbolicWallMomentumOrderReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blockedMomentum =!= {},
 Print["blocked momentum components: ", Length[blockedMomentum]]; Exit[2]];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
