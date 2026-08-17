(* ::Package:: *)

(*
  Direct off-diagonal proper-completion transition benchmark.

  The pair is (P_A sin 3phi, P_A sin 4phi), whose physical project-oriented
  local matrix entry is 4/(21 Sqrt[5]). Removing the two physical scales and
  the project/2501 sign gives the unit-boundary 2501 target -4 Sqrt[2]/7.

  This file bilinearizes the full non-Killing section-change potential
  directly; it does not use three quadratic evaluations.
*)

SetEnvironment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll[properLength, properProfile, seedOne, seedTwo, properVectorOne,
  properVectorTwo, residualMetricOne, residualMetricTwo, commutatorOne,
  commutatorTwo, properBilinearPotential, properBilinearDensityPhi,
  properBilinearDensityX];

properProfile = properLength^2/(properLength^2 + r^2);
bilinearProbe = Environment["PROPER_BILINEAR_PROBE"];
If[bilinearProbe === $Failed, bilinearProbe = "ProjectedSine3Sine4"];
{seedOne, seedTwo, expectedTransitionAnomaly} = Switch[bilinearProbe,
   "Cosine2Cosine5", {unitCosineGauge[2], unitCosineGauge[5],
     -1/(3 Sqrt[2])},
   "Cosine2Cosine6", {unitCosineGauge[2], unitCosineGauge[6],
     0},
   "Cosine2Cosine7", {unitCosineGauge[2], unitCosineGauge[7],
     1/(3 Sqrt[2])},
   "Cosine2Sine3", {unitCosineGauge[2], unitSineGauge[3],
     Missing["NoHardcodedAnomaly"]},
   "ProjectedCosine2Cosine3", {projectedCosineGauge[2],
     projectedCosineGauge[3], 0},
   "Sine2Sine4", {unitSineGauge[2], unitSineGauge[4],
     2/3},
   "Sine2Sine5", {unitSineGauge[2], unitSineGauge[5],
     8 Sqrt[2]/3},
   "Sine2Sine6", {unitSineGauge[2], unitSineGauge[6],
     19/3},
   "Cosine3Cosine5", {unitCosineGauge[3], unitCosineGauge[5],
     -5/2},
   "Cosine2Cosine3", {unitCosineGauge[2], unitCosineGauge[3],
     -1/(3 Sqrt[2])},
   "Cosine2Cosine4", {unitCosineGauge[2], unitCosineGauge[4],
     -1/3},
   "Cosine3Cosine4", {unitCosineGauge[3], unitCosineGauge[4],
     -13/(3 Sqrt[2])},
   "Sine3Sine2", {unitSineGauge[3], unitSineGauge[2],
     -4/(3 Sqrt[2])},
   _, {projectedSineGauge[3], projectedSineGauge[4], 0}];
properVectorOne = -properProfile seedOne;
properVectorTwo = -properProfile seedTwo;
residualMetricOne = lieMetric[seedOne] + lieMetric[properVectorOne];
residualMetricTwo = lieMetric[seedTwo] + lieMetric[properVectorTwo];
commutatorOne = lieBracketLocal[xiInterval, properVectorOne];
commutatorTwo = lieBracketLocal[xiInterval, properVectorTwo];

properBilinearPotential = 1/2 (
   -localPotential[commutatorOne, residualMetricTwo]
   -localPotential[commutatorTwo, residualMetricOne]
   +localPotential[properVectorOne,
      lieCovariantTwoTensor[xiInterval, lieMetric[seedTwo]]]
   +localPotential[properVectorTwo,
      lieCovariantTwoTensor[xiInterval, lieMetric[seedOne]]]);
properBilinearDensityPhi = TimeConstrained[FullSimplify[
    rtLineElement futureNormalLower[[1]] (
       innerNormalLower[[2]] properBilinearPotential[[1]] +
        innerNormalLower[[3]] properBilinearPotential[[2]]) /.
     {t -> 0, r -> explicitRtRadius, GNewton -> 1},
    Assumptions -> properLength > 0 && -Pi/4 < phi < Pi/4],
   900, $Failed];
properBilinearDensityX = If[properBilinearDensityPhi === $Failed, $Failed,
   TimeConstrained[Factor@FullSimplify[
      TrigExpand[properBilinearDensityPhi /. phi -> ArcTan[x]]/(1 + x^2),
      Assumptions -> properLength > 0 && -1 < x < 1], 900, $Failed]];
properEndpointPoleResidues = If[
   Environment["PROPER_BILINEAR_ENDPOINT_POLE"] === "1" &&
    properBilinearDensityX =!= $Failed,
   TimeConstrained[FullSimplify[{
      Limit[(1 - x^2) properBilinearDensityX, x -> -1,
       Direction -> "FromAbove"],
      Limit[(1 - x^2) properBilinearDensityX, x -> 1,
       Direction -> "FromBelow"]}, Assumptions -> properLength > 0],
    300, $Failed], Missing["NotRequested"]];
properEndpointValues = If[
   Environment["PROPER_BILINEAR_ENDPOINT_POLE"] === "1" &&
    properBilinearDensityX =!= $Failed,
   TimeConstrained[FullSimplify[{
      Limit[properBilinearDensityX, x -> -1,
       Direction -> "FromAbove"],
      Limit[properBilinearDensityX, x -> 1,
       Direction -> "FromBelow"]}, Assumptions -> properLength > 0],
    300, $Failed], Missing["NotRequested"]];
properEndpointSeries = If[
   Environment["PROPER_BILINEAR_ENDPOINT_POLE"] === "1" &&
    properBilinearDensityX =!= $Failed,
   TimeConstrained[FullSimplify[{
      Series[properBilinearDensityX /. x -> -1 + endpointD,
       {endpointD, 0, 3}],
      Series[properBilinearDensityX /. x -> 1 - endpointD,
       {endpointD, 0, 3}]}, Assumptions -> properLength > 0],
    300, $Failed], Missing["NotRequested"]];
properEndpointScaledProfiles = If[
   Environment["PROPER_BILINEAR_ENDPOINT_PROFILE"] === "1" &&
    properBilinearDensityX =!= $Failed,
   TimeConstrained[FullSimplify[{
      Limit[(properBilinearDensityX /.
          {x -> -1 + endpointY/endpointLambda,
           properLength -> Sqrt[endpointLambda]})/endpointLambda,
       endpointLambda -> Infinity],
      Limit[(properBilinearDensityX /.
          {x -> 1 - endpointY/endpointLambda,
           properLength -> Sqrt[endpointLambda]})/endpointLambda,
       endpointLambda -> Infinity]},
     Assumptions -> endpointY > 0], 300, $Failed],
   Missing["NotRequested"]];
properEndpointProfileIntegrals = If[
   ListQ[properEndpointScaledProfiles],
   TimeConstrained[FullSimplify[
     Integrate[#, {endpointY, 0, Infinity},
        Assumptions -> endpointY > 0] & /@
      properEndpointScaledProfiles], 300, $Failed],
   Missing["NotRequested"]];

blocked = Cases[{properBilinearDensityPhi, properBilinearDensityX},
   $Failed, Infinity];
localUnitTarget = FullSimplify[Integrate[
    localUpsilon2501BilinearX[seedOne, seedTwo], {x, -1, 1},
    Assumptions -> -1 < x < 1]];
expectedUnitTarget = -4 Sqrt[2]/7;
If[bilinearProbe =!= "ProjectedSine3Sine4",
 expectedUnitTarget = localUnitTarget];
pointwiseResidual = If[properBilinearDensityX === $Failed, $Failed,
   FullSimplify[
    Limit[properBilinearDensityX, properLength -> Infinity] -
     localUpsilon2501BilinearX[seedOne, seedTwo],
    Assumptions -> -1 < x < 1]];
properSamples = If[properBilinearDensityX === $Failed, $Failed,
   Table[NIntegrate[properBilinearDensityX /. properLength -> length,
      {x, -1, 1}, WorkingPrecision -> 40, AccuracyGoal -> 22,
      PrecisionGoal -> 22], {length, {2, 4, 8, 16}}]];
sampleErrors = If[properSamples === $Failed, $Failed,
   Abs[properSamples - expectedUnitTarget]];
properIntegralExact = If[properBilinearDensityX === $Failed, $Failed,
   TimeConstrained[FullSimplify[Integrate[properBilinearDensityX,
      {x, -1, 1}, Assumptions -> properLength > 0],
     Assumptions -> properLength > 0], 900, $Failed]];
properIntegralLimit = If[properIntegralExact === $Failed, $Failed,
   TimeConstrained[FullSimplify[
     Limit[properIntegralExact, properLength -> Infinity]], 300, $Failed]];
properIntegralAsymptotic = If[
   Environment["PROPER_BILINEAR_ASYMPTOTIC"] === "1" &&
    properIntegralExact =!= $Failed,
   TimeConstrained[FullSimplify[
     Series[properIntegralExact, {properLength, Infinity, 4}],
     Assumptions -> properLength > 1], 300, $Failed],
   Missing["NotRequested"]];
transitionAnomaly = If[properIntegralLimit === $Failed, $Failed,
   FullSimplify[properIntegralLimit - localUnitTarget]];
transitionMomentLimits = If[
   Environment["PROPER_BILINEAR_MOMENTS"] === "1" &&
    properBilinearDensityX =!= $Failed,
   Table[TimeConstrained[FullSimplify[Limit[
       Integrate[x^momentOrder (
          properBilinearDensityX -
           localUpsilon2501BilinearX[seedOne, seedTwo]),
        {x, -1, 1}, Assumptions -> properLength > 0],
       properLength -> Infinity]], 300, $Failed],
    {momentOrder, 0, 6}], Missing["NotRequested"]];

testConditions = {
   blocked === {},
   localUnitTarget === expectedUnitTarget,
   pointwiseResidual === 0,
   properIntegralLimit =!= $Failed,
   If[MissingQ[expectedTransitionAnomaly],
    transitionAnomaly =!= $Failed, transitionAnomaly === expectedTransitionAnomaly]
   };
testIDs = {
   "projected proper bilinear density completed",
   "unit-boundary local bilinear target",
   "proper bilinear density has the local pointwise limit",
   "proper bilinear integral limit completed",
   "proper bilinear transition anomaly matches endpoint prediction"
   };

Print[<|
  "BilinearProbe" -> bilinearProbe,
  "ExpectedTransitionAnomaly" -> expectedTransitionAnomaly,
  "LocalUnitTarget" -> localUnitTarget,
  "ProperBilinearSamples" -> properSamples,
  "FiniteLOrdinaryEndpointPoleResidues" -> properEndpointPoleResidues,
  "FiniteLOrdinaryEndpointValues" -> properEndpointValues,
  "FiniteLEndpointSeries" -> properEndpointSeries,
  "EndpointScaledProfiles" -> properEndpointScaledProfiles,
  "EndpointProfileIntegrals" -> properEndpointProfileIntegrals,
  "SampleErrors" -> sampleErrors,
  "ProperIntegralExact" -> properIntegralExact,
  "ProperIntegralAsymptotic" -> properIntegralAsymptotic,
  "ProperIntegralLimit" -> properIntegralLimit,
  "TransitionAnomaly" -> transitionAnomaly,
  "TransitionMomentLimits0Through6" -> transitionMomentLimits,
  "PointwiseResidual" -> pointwiseResidual|>];
If[Environment["PROPER_BILINEAR_PRINT_DENSITY"] === "1",
 Print["ProperBilinearDensityXInputForm -> ",
  InputForm[properBilinearDensityX]]];
adsRindlerProjectedProperBilinearReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blocked =!= {}, Print["blocked bilinear expressions: ", Length[blocked]];
 Exit[2]];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
