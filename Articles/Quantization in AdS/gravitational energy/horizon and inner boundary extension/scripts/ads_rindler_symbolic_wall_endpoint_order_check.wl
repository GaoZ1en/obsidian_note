(* ::Package:: *)

(*
  Symbolic-frequency endpoint expansion of the corrected complex
  Brown--Henneaux perturbation on a finite AdS--Rindler wall.

  The expansion variable is q=Exp[-u].  Frequency m is kept symbolic.  This
  is intended to determine the first nonzero endpoint order and its polynomial
  frequency growth before estimating the compensated mode sum.
*)

ClearAll["Global`*"];

globalCoordinates = {globalTime, globalRadius, globalAngle};
rindlerCoordinates = {rindlerTime, rindlerChi, rindlerU};
backgroundGlobal = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2}];

unitComplexGaugeSymbolic = With[
  {phase = Exp[-I modeFrequency (globalTime - globalAngle)]}, {
   -phase globalRadius^modeFrequency
     (globalRadius^2 - (modeFrequency - 2) (modeFrequency + 1)/2)/
      (1 + globalRadius^2)^((modeFrequency + 2)/2),
   -I modeFrequency phase globalRadius^(modeFrequency - 1)
     (2 globalRadius^2 + modeFrequency + 1)/
      (2 (1 + globalRadius^2)^(modeFrequency/2)),
   phase globalRadius^(modeFrequency - 2)
     (globalRadius^2 + modeFrequency (modeFrequency + 1)/2)/
      (1 + globalRadius^2)^(modeFrequency/2)}];

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}];
symbolicGlobalH = Map[Factor,
   lieDerivative[unitComplexGaugeSymbolic, backgroundGlobal], {2}];

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
pullback[tensor_] := Table[Sum[
    coordinateJacobian[[mu, a]] coordinateJacobian[[nu, b]]
     (tensor[[mu, nu]] /. globalMapRules),
    {mu, 3}, {nu, 3}], {a, 3}, {b, 3}];

independentComponents = {{1, 1}, {1, 2}, {1, 3}, {2, 2}, {2, 3}, {3, 3}};
symbolicRindlerH = pullback[symbolicGlobalH];
symbolicRindlerComponents = Extract[symbolicRindlerH,
    independentComponents] /. rindlerTime -> 0;

qExpressions = PowerExpand@TrigToExp[
    symbolicRindlerComponents /. rindlerU -> -Log[endpointQ]];

(* Expand the exact positive-q expressions while keeping m symbolic. *)
If[Environment["SYMBOLIC_WALL_ENDPOINT_DEFINITIONS_ONLY"] =!= "1",
endpointSeries = Table[TimeConstrained[
    FullSimplify[Series[expression, {endpointQ, 0, 3}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2],
    180, $Failed], {expression, qExpressions}];
blocked = Cases[endpointSeries, $Failed, Infinity];
endpointCoefficients = If[blocked === {},
   Table[Table[FullSimplify[
      SeriesCoefficient[endpointSeries[[component]],
       {endpointQ, 0, order}],
      Assumptions -> rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2],
     {order, 0, 3}], {component, 6}], $Failed];

testConditions = {
   blocked === {},
   endpointCoefficients =!= $Failed,
   If[endpointCoefficients === $Failed, False,
    endpointCoefficients[[All, 1]] === ConstantArray[0, 6]]
   };
testIDs = {
   "symbolic endpoint series completed",
   "symbolic endpoint coefficients extracted",
   "all corrected complex wall components have zero endpoint constant"
   };

Print[<|
  "IndependentComponents" -> independentComponents,
  "EndpointCoefficientsQ0ThroughQ3" -> endpointCoefficients|>];
adsRindlerSymbolicWallEndpointOrderReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blocked =!= {}, Print["blocked endpoint components: ", Length[blocked]];
 Exit[2]];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
];
