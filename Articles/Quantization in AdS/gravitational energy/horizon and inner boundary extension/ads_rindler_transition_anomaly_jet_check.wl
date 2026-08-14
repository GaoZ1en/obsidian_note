(* ::Package:: *)

(*
  Algebraic regression for the proper-transition endpoint functional.

  The exact rational proper-integral limits computed independently for the
  listed trigonometric modes are compared with the endpoint-jet formula

    A[f] = -1/6 Sum_sigma f_sigma(-f''_sigma-f_sigma)
           -1/6 ( f_+ f'_+ - f_- f'_- ).

  Its symmetric bilinear polarization is then shown to annihilate the full
  image of the fixed-anchor projection P_A, because every term contains at
  least one endpoint value from each quadratic monomial.
*)

ClearAll[phi, endpointA, anomalyQuadratic, anomalyBilinear,
  projectAnchor, trigModes];
endpointA = Pi/4;
anomalyQuadratic[f_] := FullSimplify[-1/6 (
    Sum[(f /. phi -> endpoint)
      (-(D[f, {phi, 2}] /. phi -> endpoint) -
        (f /. phi -> endpoint)),
     {endpoint, {-endpointA, endpointA}}] +
    (f /. phi -> endpointA) (D[f, phi] /. phi -> endpointA) -
    (f /. phi -> -endpointA) (D[f, phi] /. phi -> -endpointA))];
anomalyBilinear[f_, g_] := FullSimplify[
   (anomalyQuadratic[f + g] - anomalyQuadratic[f] -
      anomalyQuadratic[g])/2];
projectAnchor[f_] := FullSimplify[f +
    ((f /. phi -> endpointA) + (f /. phi -> -endpointA))/2 Cos[4 phi] -
    ((f /. phi -> endpointA) - (f /. phi -> -endpointA))/2 Sin[2 phi]];

trigModes = <|
   "Cosine2" -> Cos[2 phi], "Cosine3" -> Cos[3 phi],
   "Cosine4" -> Cos[4 phi], "Cosine5" -> Cos[5 phi],
   "Cosine6" -> Cos[6 phi], "Sine2" -> Sin[2 phi],
   "Sine3" -> Sin[3 phi], "Sine4" -> Sin[4 phi],
   "Sine5" -> Sin[5 phi], "Sine6" -> Sin[6 phi]|>;
expectedExactAnomalies = <|
   "Cosine2" -> 0, "Cosine3" -> -11/6, "Cosine4" -> -5,
   "Cosine5" -> -19/6, "Cosine6" -> 0,
   "Sine2" -> -1, "Sine3" -> -5/6, "Sine4" -> 0,
   "Sine5" -> -29/6, "Sine6" -> -35/3|>;
jetAnomalies = anomalyQuadratic /@ trigModes;
quadraticResiduals = AssociationMap[
   FullSimplify[jetAnomalies[#] - expectedExactAnomalies[#]] &,
   Keys[trigModes]];

projectedSymbols = Sum[coefficient[index] trigModes[[index]],
   {index, Length[trigModes]}];
projectedGeneric = projectAnchor[projectedSymbols];
projectedEndpointResiduals = FullSimplify[{
    projectedGeneric /. phi -> -endpointA,
    projectedGeneric /. phi -> endpointA}];
projectedAnomalyResidual = FullSimplify[
   anomalyQuadratic[projectedGeneric]];
projectedBilinearResidual = FullSimplify[
   anomalyBilinear[projectAnchor[projectedSymbols],
    projectAnchor[Sum[other[index] trigModes[[index]],
      {index, Length[trigModes]}]]]];

crossChecks = <|
   "Cosine3Cosine4" -> FullSimplify[
     anomalyBilinear[Cos[3 phi], Cos[4 phi]] + 13/(3 Sqrt[2])],
   "Sine3Sine2" -> FullSimplify[
     anomalyBilinear[Sin[3 phi], Sin[2 phi]] + 2 Sqrt[2]/3],
   "ProjectedCosine3" -> anomalyQuadratic[
     Cos[3 phi] - Cos[4 phi]/Sqrt[2]],
   "ProjectedSine3" -> anomalyQuadratic[
     Sin[3 phi] - Sin[2 phi]/Sqrt[2]]|>;

testConditions = {
   Values[quadraticResiduals] === ConstantArray[0, Length[trigModes]],
   Values[crossChecks] === ConstantArray[0, Length[crossChecks]],
   projectedEndpointResiduals === {0, 0},
   projectedAnomalyResidual === 0,
   projectedBilinearResidual === 0
   };
testIDs = {
   "endpoint jet formula reproduces ten exact mode anomalies",
   "cross and projected anomaly checks",
   "generic projected trigonometric polynomial fixes both anchors",
   "endpoint anomaly vanishes on the generic projected polynomial",
   "bilinear endpoint anomaly vanishes on two projected polynomials"
   };

Print[<|
  "JetAnomalies" -> jetAnomalies,
  "QuadraticResiduals" -> quadraticResiduals,
  "CrossChecks" -> crossChecks,
  "ProjectedEndpointResiduals" -> projectedEndpointResiduals,
  "ProjectedAnomalyResidual" -> projectedAnomalyResidual,
  "ProjectedBilinearResidual" -> projectedBilinearResidual|>];
adsRindlerTransitionAnomalyJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
