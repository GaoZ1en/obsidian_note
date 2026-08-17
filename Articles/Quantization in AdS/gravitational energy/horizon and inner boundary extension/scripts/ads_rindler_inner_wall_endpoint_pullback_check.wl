(* ::Package:: *)

(*
  Exact global-to-Rindler endpoint pullback for the a=Pi/4 real
  Brown--Henneaux mode.  The endpoint variable is q=Exp[-u], q->0+.
*)

ClearAll["Global`*"];

globalCoordinates = {globalTime, globalRadius, globalAngle};
rindlerCoordinates = {rindlerTime, rindlerChi, rindlerU};

backgroundGlobal = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2
    }];
projectAmplitude = Sqrt[3]/(6 Sqrt[Pi]);
projectGaugeVector = projectAmplitude {
    -globalRadius^4 Cos[2 (globalTime - globalAngle)]/
      (1 + globalRadius^2)^2,
    -globalRadius (3 + 2 globalRadius^2)
      Sin[2 (globalTime - globalAngle)]/(1 + globalRadius^2),
    (3 + globalRadius^2)
      Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)
    };

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}];

linearGlobal = lieDerivative[projectGaugeVector, backgroundGlobal];
quadraticGlobal = 1/2 lieDerivative[projectGaugeVector, linearGlobal];

embedding = {
   Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] +
    Sinh[rindlerChi] Cosh[rindlerTime],
   Sinh[rindlerChi] Sinh[rindlerTime],
   Sqrt[2] Sinh[rindlerChi] Cosh[rindlerTime] +
    Cosh[rindlerChi] Cosh[rindlerU],
   Cosh[rindlerChi] Sinh[rindlerU]
   };
globalMap = {
   ArcTan[embedding[[1]], embedding[[2]]],
   Sqrt[embedding[[3]]^2 + embedding[[4]]^2],
   ArcTan[embedding[[3]], embedding[[4]]]
   };
coordinateJacobian = Table[
   D[globalMap[[mu]], rindlerCoordinates[[a]]],
   {mu, 3}, {a, 3}];
globalMapRules = Thread[globalCoordinates -> globalMap];

pullback[tensor_] := Table[
   Sum[
    coordinateJacobian[[mu, a]] coordinateJacobian[[nu, b]]
     (tensor[[mu, nu]] /. globalMapRules),
    {mu, 3}, {nu, 3}],
   {a, 3}, {b, 3}];

hRindler = pullback[linearGlobal];
kRindler = pullback[quadraticGlobal];

independentComponents = {{1, 1}, {1, 2}, {1, 3}, {2, 2}, {2, 3}, {3, 3}};
endpointAmplitude = 1/Sqrt[3 Pi];
expectedH = ConstantArray[0, 6];

endpointLimit[expression_] := Module[{q, transformed, direct, endpointSeries},
   transformed = PowerExpand@TrigToExp[
      expression /. {
        rindlerTime -> 0,
        rindlerU -> -Log[q]
        }];
   direct = TimeConstrained[
    FullSimplify[
     Limit[transformed, q -> 0, Direction -> "FromAbove"],
     Assumptions -> 0 < q < 1 && rindlerChi > 0],
    30,
    $Failed];
   If[direct =!= $Failed, Return[direct]];

   (* The quadratic (chi,u) component can be much slower under a direct
      Limit even though its regular endpoint series is elementary.  The
      fallback keeps all nonpositive powers through q^0; a genuine pole
      therefore remains visible instead of being mistaken for a zero
      constant coefficient. *)
   endpointSeries = TimeConstrained[
     FullSimplify[
      Normal@Series[Together[transformed], {q, 0, 0}],
      Assumptions -> 0 < q < 1 && rindlerChi > 0],
     60,
     $Failed];
   If[endpointSeries === $Failed, Return[$Failed]];
   FullSimplify[
    Limit[endpointSeries, q -> 0, Direction -> "FromAbove"],
    Assumptions -> rindlerChi > 0]
   ];

hExpressions = Extract[hRindler, independentComponents];
kRelationExpressions = MapThread[
   #1 + 2 endpointAmplitude #2 &,
   {Extract[kRindler, independentComponents], hExpressions}];

LaunchKernels[];
DistributeDefinitions[endpointLimit, rindlerTime, rindlerChi, rindlerU];
hEndpoint = ParallelMap[endpointLimit, hExpressions];
kRelationEndpoint = ParallelMap[endpointLimit, kRelationExpressions];
CloseKernels[];

testConditions = Join[
   MapThread[
    FullSimplify[#1 - #2, Assumptions -> rindlerChi > 0] === 0 &,
    {hEndpoint, expectedH}],
   Map[# === 0 &, kRelationEndpoint]
   ];
testIDs = Join[
   Map["exact h endpoint component " <> ToString[#] &, independentComponents],
   Map["exact k+2h/sqrt(3pi) endpoint component " <> ToString[#] &,
    independentComponents]
   ];

endpointPullbackTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print["h endpoint = ", hEndpoint];
Print["k+2h/sqrt(3pi) endpoint = ", kRelationEndpoint];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
blockedTestIDs = Pick[testIDs,
   Join[Map[# === $Failed &, hEndpoint],
    Map[# === $Failed &, kRelationEndpoint]]];
If[blockedTestIDs =!= {},
 Print["blocked tests: ", blockedTestIDs]; Exit[2]];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
