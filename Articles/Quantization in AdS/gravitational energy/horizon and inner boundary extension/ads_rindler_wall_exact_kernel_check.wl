(* ::Package:: *)

(*
  DEVELOPMENT-ONLY; NOT EVIDENCE.

  Superseded by ads_rindler_wall_closed_point_jet_check.wl.  This exploratory
  implementation contains an unsafe exact-complex conjugation shortcut and
  must not be cited for frequency degrees, endpoint valuations, or uniform
  wall-tail estimates.
*)

(*
  Exact two-frequency Brown--York wall-flux kernel on the t=0
  AdS--Rindler wall.  Unlike the endpoint-jet regressions, this file keeps
  the full positive q=Exp[-u] dependence before testing divisibility and
  frequency degree.

  The corrected complex Brown--Henneaux mode has one bounded frequency base

      Z(q,chi)^m,

  after the global radial and angular factors are combined.  The tests below
  first prove this factorization for every metric and densitized-momentum
  component, and then inspect the exact ++ and +- antisymmetric flux kernels.
*)

SetEnvironment["SYMBOLIC_WALL_ENDPOINT_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_symbolic_wall_endpoint_order_check.wl"}]];

ClearAll[wallTangent, wallGamma, wallGammaInverse, wallSqrtMinusGamma,
  wallK, wallKUpper, wallKTrace, exactMetricAtQ, exactTauDerivativeAtQ,
  exactWallH, exactWallShift, exactWallShiftTauDerivative, uDerivative,
  exactWallDerivative, exactDeltaK, exactHUpper, exactHTrace,
  exactDeltaKTrace, exactDeltaKUpper, exactDeltaPi, exactMomentumMatrix,
  wallP, wallNPlus, wallNMinus, wallZPlus, wallZMinus, normalizeMode,
  frequencyPowerFreeQ, frequencyDegree, matrixContract, modeReplace,
  modeCoefficientMatrix, kernelCoefficient, kernelCoefficientData];

wallTangent = {1, 3};
wallGamma = DiagonalMatrix[{-Sinh[rindlerChi]^2, Cosh[rindlerChi]^2}];
wallGammaInverse = Inverse[wallGamma];
wallSqrtMinusGamma = Sinh[rindlerChi] Cosh[rindlerChi];
wallK = DiagonalMatrix[{Sinh[rindlerChi] Cosh[rindlerChi],
    -Sinh[rindlerChi] Cosh[rindlerChi]}];
wallKUpper = wallGammaInverse . wallK . wallGammaInverse;
wallKTrace = FullSimplify[Tr[wallGammaInverse . wallK]];

(* At tau=0,

     r^m Exp[I m phi]/(1+r^2)^(m/2) = Z_+^m.

   P is positive, and |Z_+|^2=(P^2-2q^2)/P^2 <= 1. *)
wallP = Cosh[rindlerChi] (1 + endpointQ^2) +
   Sqrt[2] Sinh[rindlerChi] endpointQ;
wallNPlus = Cosh[rindlerChi] (1 + I) +
   2 Sqrt[2] Sinh[rindlerChi] endpointQ +
   Cosh[rindlerChi] (1 - I) endpointQ^2;
wallNMinus = wallNPlus /. I -> -I;
wallZPlus = PowerExpand@TrigToExp[
   wallNPlus/(Sqrt[2] wallP)];
wallZMinus = PowerExpand@TrigToExp[
   wallNMinus/(Sqrt[2] wallP)];
boundedBaseResidual = FullSimplify[
   wallZPlus wallZMinus - (1 - 2 endpointQ^2/wallP^2),
   Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0];
normalizeMode[expression_, chirality_:1] := Cancel@Together@PowerExpand[
   expression/If[chirality == 1, wallZPlus, wallZMinus]^modeFrequency];

exactMetricAtQ = Map[Cancel@Together@PowerExpand@TrigToExp[# /. {
       rindlerTime -> 0, rindlerU -> -Log[endpointQ]}] &,
   symbolicRindlerH, {2}];
exactTauDerivativeAtQ = Map[Cancel@Together@PowerExpand@TrigToExp[# /. {
       rindlerTime -> 0, rindlerU -> -Log[endpointQ]}] &,
   D[symbolicRindlerH, rindlerTime], {2}];

Print["normalizing exact wall metric before Brown--York variation"];
normalizedFullMetric = Map[normalizeMode, exactMetricAtQ, {2}];
normalizedTauDerivative = Map[normalizeMode, exactTauDerivativeAtQ, {2}];
normalizedMetric = normalizedFullMetric[[wallTangent, wallTangent]];
normalizedWallShift = normalizedFullMetric[[wallTangent, 2]];
normalizedWallShiftTauDerivative =
  normalizedTauDerivative[[wallTangent, 2]];
normalizedChiDerivative[expression_] := Cancel@Together[
   D[expression, rindlerChi] +
    modeFrequency D[wallZPlus, rindlerChi]/wallZPlus expression];
normalizedUDerivative[expression_] := Cancel@Together[
   -endpointQ (D[expression, endpointQ] +
      modeFrequency D[wallZPlus, endpointQ]/wallZPlus expression)];
normalizedWallDerivative[componentIndex_, index_] := If[index == 1,
   normalizedWallShiftTauDerivative[[componentIndex]],
   normalizedUDerivative[normalizedWallShift[[componentIndex]]]];
normalizedDeltaK = Table[Cancel@Together[
    -normalizedChiDerivative[normalizedMetric[[a, b]]]/2 +
     (normalizedWallDerivative[b, a] +
       normalizedWallDerivative[a, b])/2 -
     normalizedFullMetric[[2, 2]] wallK[[a, b]]/2],
   {a, 2}, {b, 2}];
normalizedHUpper = Map[Cancel@Together, wallGammaInverse . normalizedMetric .
    wallGammaInverse, {2}];
normalizedHTrace = Cancel@Together[Tr[wallGammaInverse . normalizedMetric]];
normalizedDeltaKTrace = Cancel@Together[
   Tr[wallGammaInverse . normalizedDeltaK] -
    Sum[normalizedHUpper[[a, b]] wallK[[a, b]], {a, 2}, {b, 2}]];
normalizedDeltaKUpper = Table[Cancel@Together[
    Sum[wallGammaInverse[[a, c]] wallGammaInverse[[b, d]]
      normalizedDeltaK[[c, d]], {c, 2}, {d, 2}] -
     Sum[normalizedHUpper[[a, c]] wallGamma[[c, d]] wallKUpper[[d, b]],
      {c, 2}, {d, 2}] -
     Sum[normalizedHUpper[[b, c]] wallGamma[[c, d]] wallKUpper[[d, a]],
      {c, 2}, {d, 2}]], {a, 2}, {b, 2}];
normalizedMomentum = Table[Cancel@Together[wallSqrtMinusGamma * (
      normalizedHTrace (wallKUpper[[a, b]] -
          wallKTrace wallGammaInverse[[a, b]])/2 +
       normalizedDeltaKUpper[[a, b]] -
       normalizedDeltaKTrace wallGammaInverse[[a, b]] +
       wallKTrace normalizedHUpper[[a, b]])], {a, 2}, {b, 2}];
If[Environment["WALL_EXACT_KERNEL_SAVE_NORMALIZED"] === "1",
 DumpSave["/tmp/ads_rindler_wall_exact_kernel_normalized_v2.mx",
  {normalizedMetric, normalizedMomentum, boundedBaseResidual}]];
frequencyPowerFreeQ[expression_, frequencies_List] :=
  FreeQ[expression,
   Power[_, exponent_] /; !FreeQ[exponent, Alternatives @@ frequencies]];
frequencyDegree[expression_, frequencies_List] := Total[
  Exponent[Numerator@Together[expression], #] & /@ frequencies];
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
modeReplace[expression_, frequency_, chirality_] :=
  (expression /. modeFrequency -> frequency) /.
   If[chirality == 1, {}, I -> -I];
Print["checking exact normalized wall metric and momentum components"];
componentFrequencyPowersAbsent = And @@ Flatten[
   frequencyPowerFreeQ[#, {modeFrequency}] & /@
    Join[Flatten[normalizedMetric], Flatten[normalizedMomentum]]];
componentDegrees = {
   Max[frequencyDegree[Numerator@Together[#], {modeFrequency}] & /@
     Flatten[normalizedMetric]],
   Max[frequencyDegree[Numerator@Together[#], {modeFrequency}] & /@
     Flatten[normalizedMomentum]]};
componentQOrders = {
   Min[(Exponent[Numerator@Together[#], endpointQ, Min] -
        Exponent[Denominator@Together[#], endpointQ, Min]) & /@
     Flatten[normalizedMetric]],
   Min[(Exponent[Numerator@Together[#], endpointQ, Min] -
        Exponent[Denominator@Together[#], endpointQ, Min]) & /@
     Flatten[normalizedMomentum]]};

(* After the bounded Z^m factor is removed, both matrices are degree-three
   polynomials in m.  Work coefficientwise, so no giant two-frequency
   Together is needed. *)
modeCoefficientMatrix[matrix_, power_, chirality_] := Map[
   Cancel@Together@Coefficient[
      If[chirality == 1, #, # /. I -> -I], modeFrequency, power] &,
   matrix, {2}];
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
       "Coefficient" -> coefficient, "QOrder" -> qOrder,
       "FrequencyDegree" -> p + qPower,
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
   "bounded frequency base has exact norm squared one minus two q squared over P squared",
   "metric and momentum have only the bounded Z frequency base",
   "exact wall metric residual degree is at most three",
   "exact wall momentum residual degree is at most three",
   "exact tangential wall metric starts at q squared",
   "exact wall momentum starts at q squared",
   "exact same- and mixed-chirality wall fluxes start at q fifth",
   "exact same- and mixed-chirality residual wall-flux degrees are at most six",
   "exact wall flux divided by sinh chi has a finite wall limit"
   };

Print[<|
  "BoundedBaseNormResidual" -> boundedBaseResidual,
  "ComponentDegreesMetricMomentum" -> componentDegrees,
  "ComponentQOrdersMetricMomentum" -> componentQOrders,
  "KernelCoefficientSummaries" ->
   (KeyDrop[#, "Coefficient"] & /@ kernelCoefficientData)|>];
adsRindlerWallExactKernelReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
  " exact wall-kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
