(* ::Package:: *)

(*
  Exact compactified RT-curve formulas used in the conormal reduction of the
  proper-transition kernel.  This is a structural check: it does not compute
  the integrated transition anomaly.
*)

ClearAll[q, lambda, m, sigma, phiQ, rQ, phaseQ, closedMode,
  pulledMode, expectedMode, reducedMode, seriesCoefficients,
  frequencyDegrees, profile, profileFirst, profileSecond,
  expectedProfileFirst, expectedProfileSecond];

phiQ = ArcCos[q]/2;
rQ = 1/Sqrt[q];
phaseQ = Exp[I sigma m phiQ];

closedMode = {
   -Exp[I sigma m phi] r^m
     (r^2 - (m - 2) (m + 1)/2)/(1 + r^2)^((m + 2)/2),
   -I sigma m Exp[I sigma m phi] r^(m - 1)
     (2 r^2 + m + 1)/(2 (1 + r^2)^(m/2)),
   Exp[I sigma m phi] r^(m - 2)
     (r^2 + m (m + 1)/2)/(1 + r^2)^(m/2)
   };

pulledMode = PowerExpand[closedMode /. {r -> rQ, phi -> phiQ}];
expectedMode = phaseQ {
    -(1 - (m - 2) (m + 1) q/2)/(1 + q)^((m + 2)/2),
    -I sigma m (2 + (m + 1) q)/
      (2 Sqrt[q] (1 + q)^(m/2)),
    (1 + m (m + 1) q/2)/(1 + q)^(m/2)
    };

modeResidual = FullSimplify[pulledMode - expectedMode,
   Assumptions -> 0 < q < 1 && m >= 2 && Element[m, Integers] &&
     sigma^2 == 1];

reducedMode = FullSimplify[
   {expectedMode[[1]], Sqrt[q] expectedMode[[2]], expectedMode[[3]]}/
    phaseQ,
   Assumptions -> 0 < q < 1 && m >= 2 && Element[m, Integers] &&
     sigma^2 == 1];
seriesCoefficients = Table[
   Coefficient[Normal@Series[reducedMode[[component]], {q, 0, 3}],
    q, order], {component, 1, 3}, {order, 0, 3}];
frequencyDegrees = Map[
   Exponent[Numerator[Together[#]], m] &, seriesCoefficients, {2}];

profile = lambda/(lambda + r^2);
profileFirst = D[profile, r];
profileSecond = D[profile, {r, 2}];
expectedProfileFirst = -2 lambda q^(3/2)/(1 + lambda q)^2;
expectedProfileSecond =
  2 lambda q^2 (3 - lambda q)/(1 + lambda q)^3;
profileResidual = FullSimplify[
   ({profile, profileFirst, profileSecond} /. r -> rQ) -
    {lambda q/(1 + lambda q), expectedProfileFirst,
     expectedProfileSecond},
   Assumptions -> q > 0 && lambda > 0];

testConditions = {
   modeResidual === {0, 0, 0},
   profileResidual === {0, 0, 0},
   Max[Flatten[frequencyDegrees]] <= 4,
   frequencyDegrees[[1, 1]] === 0,
   frequencyDegrees[[3, 2]] === 2
   };
testIDs = {
   "closed Brown-Henneaux mode has the exact compactified RT form",
   "proper profile and its first two radial derivatives reduce exactly",
   "mode coefficients through q cubed have frequency degree at most four",
   "leading time component is frequency independent after phase removal",
   "first angular correction has frequency degree two"
   };

Print[<|
  "ModeResidual" -> modeResidual,
  "ProfileResidual" -> profileResidual,
  "FrequencyDegreesByComponentAndQOrder" -> frequencyDegrees|>];
adsRindlerTransitionCompactifiedModeReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
