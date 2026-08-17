(* ::Package:: *)

(*
  Corrected fixed-anchor projected Brown--Henneaux linear perturbations at a
  finite AdS--Rindler wall.  The endpoint coordinate is q=Exp[-u].

  This is a finite-mode wall-data benchmark, not a uniform tower theorem.
*)

ClearAll["Global`*"];

globalCoordinates = {globalTime, globalRadius, globalAngle};
rindlerCoordinates = {rindlerTime, rindlerChi, rindlerU};
backgroundGlobal = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2}];

unitComplexGauge[m_Integer?Positive] := With[
  {phase = Exp[-I m (globalTime - globalAngle)]}, {
   -phase globalRadius^m
     (globalRadius^2 - (m - 2) (m + 1)/2)/
      (1 + globalRadius^2)^((m + 2)/2),
   -I m phase globalRadius^(m - 1)
     (2 globalRadius^2 + m + 1)/
      (2 (1 + globalRadius^2)^(m/2)),
   phase globalRadius^(m - 2)
     (globalRadius^2 + m (m + 1)/2)/
      (1 + globalRadius^2)^(m/2)
   }];
unitCosineGauge[m_Integer?Positive] := ComplexExpand[
   Re[unitComplexGauge[m]], globalCoordinates];
unitSineGauge[m_Integer?Positive] := -ComplexExpand[
   Im[unitComplexGauge[m]], globalCoordinates];
projectedCosineGauge[m_Integer?Positive] :=
  unitCosineGauge[m] + Cos[m Pi/4] unitCosineGauge[4];
projectedSineGauge[m_Integer?Positive] :=
  unitSineGauge[m] - Sin[m Pi/4] unitSineGauge[2];

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}];

embedding = {
   Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] +
    Sinh[rindlerChi] Cosh[rindlerTime],
   Sinh[rindlerChi] Sinh[rindlerTime],
   Sqrt[2] Sinh[rindlerChi] Cosh[rindlerTime] +
    Cosh[rindlerChi] Cosh[rindlerU],
   Cosh[rindlerChi] Sinh[rindlerU]};
globalMap = {
   ArcTan[embedding[[1]], embedding[[2]]],
   Sqrt[embedding[[3]]^2 + embedding[[4]]^2],
   ArcTan[embedding[[3]], embedding[[4]]]};
coordinateJacobian = Table[
   D[globalMap[[mu]], rindlerCoordinates[[a]]],
   {mu, 3}, {a, 3}];
globalMapRules = Thread[globalCoordinates -> globalMap];

pullback[tensor_] := Table[
   Sum[coordinateJacobian[[mu, a]] coordinateJacobian[[nu, b]]
     (tensor[[mu, nu]] /. globalMapRules),
    {mu, 3}, {nu, 3}],
   {a, 3}, {b, 3}];

independentComponents = {{1, 1}, {1, 2}, {1, 3}, {2, 2}, {2, 3}, {3, 3}};
complexFrequencies = {2, 3, 4, 5};

endpointConstant[expression_] := Module[
  {q, transformed, direct, series},
  transformed = PowerExpand@TrigToExp[
     expression /. {rindlerTime -> 0, rindlerU -> -Log[q]}];
  direct = TimeConstrained[FullSimplify[
     Limit[transformed, q -> 0, Direction -> "FromAbove"],
     Assumptions -> 0 < q < 1 && rindlerChi > 0], 60, $Failed];
  If[direct =!= $Failed, Return[direct]];
  series = TimeConstrained[
    FullSimplify[Normal@Series[Together[transformed], {q, 0, 0}],
     Assumptions -> 0 < q < 1 && rindlerChi > 0],
    90, $Failed];
  If[series === $Failed, Return[$Failed]];
  FullSimplify[Limit[series, q -> 0, Direction -> "FromAbove"],
   Assumptions -> rindlerChi > 0]
  ];

complexLinearRindlerComponents = Table[
   Extract[pullback[lieDerivative[unitComplexGauge[frequency],
      backgroundGlobal]],
    independentComponents],
   {frequency, complexFrequencies}];

LaunchKernels[];
DistributeDefinitions[endpointConstant, rindlerTime, rindlerChi, rindlerU];
complexConstantEndpointTable = ParallelMap[endpointConstant,
   complexLinearRindlerComponents, {2}];
CloseKernels[];

blocked = Cases[complexConstantEndpointTable, $Failed, Infinity];
complexEndpointAssociation = AssociationThread[
   complexFrequencies -> complexConstantEndpointTable];
constantEndpointTable = {
   ComplexExpand[Re[complexEndpointAssociation[3] +
      Cos[3 Pi/4] complexEndpointAssociation[4]], {rindlerChi}],
   -ComplexExpand[Im[complexEndpointAssociation[3] -
      Sin[3 Pi/4] complexEndpointAssociation[2]], {rindlerChi}],
   ComplexExpand[Re[complexEndpointAssociation[5] +
      Cos[5 Pi/4] complexEndpointAssociation[4]], {rindlerChi}],
   -ComplexExpand[Im[complexEndpointAssociation[5] -
      Sin[5 Pi/4] complexEndpointAssociation[2]], {rindlerChi}]
   };

testConditions = {
   blocked === {},
   constantEndpointTable === ConstantArray[0, {4, 6}]
   };
testIDs = {
   "all projected endpoint series completed",
   "all four projected linear wall tensors have zero endpoint constant"
   };

Print[<|
  "ComplexFrequencies" -> complexFrequencies,
  "ComplexConstantEndpointTable" -> complexConstantEndpointTable,
  "ConstantEndpointTable" -> constantEndpointTable|>];

adsRindlerProjectedWallEndpointReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blocked =!= {}, Print["blocked endpoint series: ", Length[blocked]];
 Exit[2]];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
