(* ::Package:: *)

(*
  Proper-completion transition benchmark for a genuinely projected mode.

  The seed is P_A cos(3 phi)=cos(3 phi)-cos(4 phi)/Sqrt[2] in unit-boundary
  normalization. For v=-p_L zeta, this file evaluates the complete local
  non-Killing section-change potential

    -k_[xi,v][h+L_v G] + k_v[L_xi h]

  on the RT curve. The project orientation is opposite to the 2501
  orientation returned by the potential. This is a fixed-mode transition
  theorem/benchmark, not yet a uniform full-tower operator estimate.
*)

SetEnvironment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll[properLength, properProfile, projectedSeed, properVector,
  properMetric, properCommutator, properPotentialOne, properPotentialTwo,
  properDensityPhi, properDensityX];

properProfile = properLength^2/(properLength^2 + r^2);
transitionProbe = Environment["PROPER_TRANSITION_PROBE"];
If[transitionProbe === $Failed, transitionProbe = "ProjectedCosine3"];
projectedSeed = Switch[transitionProbe,
   "UnprojectedCosine3", unitCosineGauge[3],
   "UnprojectedCosine2", unitCosineGauge[2],
   "UnprojectedCosine5", unitCosineGauge[5],
   "UnprojectedCosine6", unitCosineGauge[6],
   "UnprojectedSine3", unitSineGauge[3],
   "UnprojectedSine2", unitSineGauge[2],
   "UnprojectedSine4", unitSineGauge[4],
   "UnprojectedSine5", unitSineGauge[5],
   "UnprojectedSine6", unitSineGauge[6],
   "ProjectedSine3", projectedSineGauge[3],
   "UnprojectedCosine4", unitCosineGauge[4],
   _, projectedCosineGauge[3]];
expectedTransitionAnomaly = Switch[transitionProbe,
   "UnprojectedCosine3", -11/6,
   "UnprojectedCosine2", 0,
   "UnprojectedCosine5", -19/6,
   "UnprojectedCosine6", 0,
   "UnprojectedSine3", -5/6,
   "UnprojectedSine2", -1,
   "UnprojectedSine4", 0,
   "UnprojectedSine5", -29/6,
   "UnprojectedSine6", -35/3,
   "ProjectedSine3", 0,
   "UnprojectedCosine4", -5,
   _, 0];
properVector = -properProfile projectedSeed;
properMetric = lieMetric[projectedSeed] + lieMetric[properVector];
properCommutator = lieBracketLocal[xiInterval, properVector];
properPotentialOne = localPotential[properCommutator, properMetric];
properPotentialTwo = localPotential[properVector,
   lieCovariantTwoTensor[xiInterval, lieMetric[projectedSeed]]];
properDensityPhi = TimeConstrained[FullSimplify[
    rtLineElement futureNormalLower[[1]] (
       innerNormalLower[[2]] (-properPotentialOne[[1]] +
          properPotentialTwo[[1]]) +
        innerNormalLower[[3]] (-properPotentialOne[[2]] +
          properPotentialTwo[[2]])) /.
     {t -> 0, r -> explicitRtRadius, GNewton -> 1},
    Assumptions -> properLength > 0 && -Pi/4 < phi < Pi/4],
   600, $Failed];
properDensityX = If[properDensityPhi === $Failed, $Failed,
   TimeConstrained[Factor@FullSimplify[
      TrigExpand[properDensityPhi /. phi -> ArcTan[x]]/(1 + x^2),
      Assumptions -> properLength > 0 && -1 < x < 1], 600, $Failed]];

blocked = Cases[{properDensityPhi, properDensityX}, $Failed, Infinity];
(* The seed is unit-boundary. The physical project value 38/1155 contains
   the scale squared 4/[3(3^2-1)]=1/6 and the project/2501 minus sign. *)
local2501Target = FullSimplify[
   Integrate[localUpsilon2501X[projectedSeed], {x, -1, 1},
    Assumptions -> -1 < x < 1]];
pointwiseResidual = If[properDensityX === $Failed, $Failed,
   FullSimplify[Limit[properDensityX, properLength -> Infinity] -
     localUpsilon2501X[projectedSeed], Assumptions -> -1 < x < 1]];
properIntegralSamples = If[properDensityX === $Failed, $Failed,
   Table[NIntegrate[properDensityX /. properLength -> length,
      {x, -1, 1}, WorkingPrecision -> 40, AccuracyGoal -> 22,
      PrecisionGoal -> 22], {length, {2, 4, 8, 16}}]];
integralErrors = If[properIntegralSamples === $Failed, $Failed,
   Abs[properIntegralSamples - local2501Target]];
properIntegralExact = If[properDensityX === $Failed, $Failed,
   TimeConstrained[FullSimplify[
     Integrate[properDensityX, {x, -1, 1},
      Assumptions -> properLength > 0],
     Assumptions -> properLength > 0], 900, $Failed]];
properIntegralLimit = If[properIntegralExact === $Failed, $Failed,
   TimeConstrained[FullSimplify[
     Limit[properIntegralExact, properLength -> Infinity]], 300, $Failed]];
transitionAnomaly = If[MemberQ[{properIntegralLimit, local2501Target},
    $Failed], $Failed,
   FullSimplify[properIntegralLimit - local2501Target]];

testConditions = {
   blocked === {},
   pointwiseResidual === 0,
   properIntegralLimit =!= $Failed,
   transitionAnomaly =!= $Failed,
   If[MissingQ[expectedTransitionAnomaly], True,
    transitionAnomaly === expectedTransitionAnomaly]
   };
testIDs = {
   "projected proper density completed",
   "projected proper density has the local pointwise limit",
   "projected proper integral limit completed",
   "projected transition anomaly completed",
   "transition anomaly matches the endpoint-value prediction"
   };

Print[<|
  "TransitionProbe" -> transitionProbe,
  "ExpectedTransitionAnomaly" -> expectedTransitionAnomaly,
  "Local2501Target" -> local2501Target,
  "ProperIntegralSamples" -> properIntegralSamples,
  "IntegralErrors" -> integralErrors,
  "ProperIntegralExact" -> properIntegralExact,
  "ProperIntegralLimit" -> properIntegralLimit,
  "TransitionAnomaly" -> transitionAnomaly,
  "PointwiseResidual" -> pointwiseResidual|>];
adsRindlerProjectedProperTransitionReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blocked =!= {}, Print["blocked transition expressions: ", Length[blocked]];
 Exit[2]];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
