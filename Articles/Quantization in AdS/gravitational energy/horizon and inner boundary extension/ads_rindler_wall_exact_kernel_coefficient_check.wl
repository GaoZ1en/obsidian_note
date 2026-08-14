(* ::Package:: *)

(*
  DEVELOPMENT-ONLY; NOT EVIDENCE.

  This cache analyzer belongs to the superseded exploratory exact-kernel
  implementation.  Use ads_rindler_wall_closed_point_jet_check.wl for the
  calibrated exact wall theorem.
*)

(*
  Lightweight coefficientwise analyzer for the normalized matrices generated
  by ads_rindler_wall_exact_kernel_check.wl with

      WALL_EXACT_KERNEL_SAVE_NORMALIZED=1.

  It avoids ever constructing a monolithic two-frequency expression.
*)

ClearAll["Global`*"];
normalizationCache = "/tmp/ads_rindler_wall_exact_kernel_normalized_v2.mx";
If[!FileExistsQ[normalizationCache],
 Print["missing normalized wall-kernel cache: ", normalizationCache];
 Exit[2]];
Get[normalizationCache];

frequencyPowerFreeQ[expression_, frequencies_List] :=
  FreeQ[expression,
   Power[_, exponent_] /; !FreeQ[exponent, Alternatives @@ frequencies]];
frequencyDegree[expression_, frequencies_List] := Total[
  Exponent[Numerator@Together[expression], #] & /@ frequencies];
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
modeCoefficientMatrix[matrix_, power_, chirality_] := Map[
   Cancel@Together@Coefficient[
      If[chirality == 1, #, # /. I -> -I], modeFrequency, power] &,
   matrix, {2}];

componentFrequencyPowersAbsent = And @@ Flatten[
   frequencyPowerFreeQ[#, {modeFrequency}] & /@
    Join[Flatten[normalizedMetric], Flatten[normalizedMomentum]]];
componentDegrees = {
   Max[frequencyDegree[#, {modeFrequency}] & /@
     Flatten[normalizedMetric]],
   Max[frequencyDegree[#, {modeFrequency}] & /@
     Flatten[normalizedMomentum]]};
componentQOrders = {
   Min[(Exponent[Numerator@Together[#], endpointQ, Min] -
        Exponent[Denominator@Together[#], endpointQ, Min]) & /@
     Flatten[normalizedMetric]],
   Min[(Exponent[Numerator@Together[#], endpointQ, Min] -
        Exponent[Denominator@Together[#], endpointQ, Min]) & /@
     Flatten[normalizedMomentum]]};

metricModeCoefficients = Table[
   modeCoefficientMatrix[normalizedMetric, power, chirality],
   {chirality, {1, -1}}, {power, 0, 3}];
momentumModeCoefficients = Table[
   modeCoefficientMatrix[normalizedMomentum, power, chirality],
   {chirality, {1, -1}}, {power, 0, 3}];
chiralityIndex[1] = 1;
chiralityIndex[-1] = 2;
kernelCoefficient[firstChirality_, secondChirality_, p_, qPower_] :=
 Cancel@Together[
   matrixContract[
     momentumModeCoefficients[[chiralityIndex[firstChirality], p + 1]],
     metricModeCoefficients[[chiralityIndex[secondChirality], qPower + 1]]] -
    matrixContract[
     momentumModeCoefficients[[chiralityIndex[secondChirality], qPower + 1]],
     metricModeCoefficients[[chiralityIndex[firstChirality], p + 1]]]];

Print["assembling coefficientwise exact ++ and +- wall-flux kernels"];
kernelCoefficientData = Flatten@Table[Module[
    {coefficient, numerator, denominator, qOrder, smallWallLimit},
    coefficient = kernelCoefficient[
      chiralities[[1]], chiralities[[2]], p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     numerator = Factor[Numerator@Together[coefficient]];
     denominator = Factor[Denominator@Together[coefficient]];
     qOrder = Exponent[numerator, endpointQ, Min] -
       Exponent[denominator, endpointQ, Min];
     smallWallLimit = FullSimplify[Limit[
        coefficient/(endpointQ^5 Sinh[rindlerChi]),
        rindlerChi -> 0, Direction -> "FromAbove"],
       Assumptions -> 0 < endpointQ < 1];
     <|"Chiralities" -> chiralities, "Powers" -> {p, qPower},
       "QOrder" -> qOrder, "FrequencyDegree" -> p + qPower,
       "SmallWallScaledLimitFinite" ->
        FreeQ[smallWallLimit,
         Indeterminate | ComplexInfinity | DirectedInfinity]|>]],
   {chiralities, {{1, 1}, {1, -1}}}, {p, 0, 3}, {qPower, 0, 3}];

testConditions = {
   boundedBaseResidual === 0,
   componentFrequencyPowersAbsent,
   componentDegrees[[1]] <= 3,
   componentDegrees[[2]] <= 3,
   componentQOrders[[1]] >= 2,
   componentQOrders[[2]] >= 2,
   And @@ Thread[Lookup[kernelCoefficientData, "QOrder"] >= 5],
   And @@ Thread[Lookup[kernelCoefficientData, "FrequencyDegree"] <= 6],
   And @@ Lookup[kernelCoefficientData, "SmallWallScaledLimitFinite"]
   };
testIDs = {
   "bounded frequency base norm identity",
   "metric and momentum have only the bounded frequency base",
   "exact normalized wall metric degree is at most three",
   "exact normalized wall momentum degree is at most three",
   "exact tangential wall metric starts at q squared",
   "exact wall momentum starts at q squared",
   "all nonzero ++ and +- wall-flux coefficients start at q fifth",
   "all residual wall-flux coefficients have degree at most six",
   "wall flux divided by q fifth sinh chi has a finite wall limit"
   };

Print[<|
  "BoundedBaseNormResidual" -> boundedBaseResidual,
  "ComponentDegreesMetricMomentum" -> componentDegrees,
  "ComponentQOrdersMetricMomentum" -> componentQOrders,
  "KernelCoefficientSummaries" -> kernelCoefficientData|>];
adsRindlerWallExactKernelCoefficientReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
  " exact wall-kernel coefficient tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
