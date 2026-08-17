(* ::Package:: *)

(*
  DEVELOPMENT-ONLY; NOT EVIDENCE.

  Superseded by ads_rindler_wall_closed_point_jet_check.wl.  This exploratory
  closed-kernel route used an unsafe exact-complex conjugation replacement;
  do not use its output as proof of the wall-kernel degree or endpoint order.
*)

(*
  Closed two-frequency Brown--York wall-flux kernel.

  The global complex Brown--Henneaux vector is factorized before the
  global-to-Rindler pullback as

      zeta_m = W^m U_m,

      W = Exp[-I t] r Exp[I phi]/Sqrt[1+r^2].

  W is written directly in embedding coordinates, so no ArcTan or
  frequency-dependent powers ever enter the remaining algebra.  U_m is a
  degree-two polynomial in m.  Hence h_m/W^m is degree three and
  delta Pi_m/W^m is degree four.  The complete ++ and +- flux kernels are
  analyzed coefficientwise in m,n.
*)

ClearAll["Global`*"];

rindlerCoordinates = {rindlerTime, rindlerChi, rindlerU};
embedding = {
   Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] +
    Sinh[rindlerChi] Cosh[rindlerTime],
   Sinh[rindlerChi] Sinh[rindlerTime],
   Sqrt[2] Sinh[rindlerChi] Cosh[rindlerTime] +
    Cosh[rindlerChi] Cosh[rindlerU],
   Cosh[rindlerChi] Sinh[rindlerU]};
{embeddingOne, embeddingTwo, embeddingThree, embeddingFour} = embedding;

globalRadiusSquared = Expand[embeddingThree^2 + embeddingFour^2];
onePlusGlobalRadiusSquared = Expand[embeddingOne^2 + embeddingTwo^2];
commonBase = Cancel@Together[
   (embeddingOne - I embeddingTwo) (embeddingThree + I embeddingFour)/
    onePlusGlobalRadiusSquared];

(* Algebraic differentials of global t,r,phi. *)
globalJacobian = {
   Table[Cancel@Together[(embeddingOne D[embeddingTwo, coordinate] -
        embeddingTwo D[embeddingOne, coordinate])/
       onePlusGlobalRadiusSquared], {coordinate, rindlerCoordinates}],
   Table[Cancel@Together[(embeddingThree D[embeddingThree, coordinate] +
        embeddingFour D[embeddingFour, coordinate])/
       Sqrt[globalRadiusSquared]], {coordinate, rindlerCoordinates}],
   Table[Cancel@Together[(embeddingThree D[embeddingFour, coordinate] -
        embeddingFour D[embeddingThree, coordinate])/
       globalRadiusSquared], {coordinate, rindlerCoordinates}]};
inverseGlobalJacobian = FullSimplify[Inverse[globalJacobian],
   Assumptions -> rindlerChi > 0 && Element[rindlerU, Reals] &&
    Element[rindlerTime, Reals]];

aa = (modeFrequency - 2) (modeFrequency + 1)/2;
bb = modeFrequency (modeFrequency + 1)/2;
normalizedGlobalVector = {
   -(globalRadiusSquared - aa)/(1 + globalRadiusSquared),
   -I modeFrequency (2 globalRadiusSquared + modeFrequency + 1)/
     (2 Sqrt[globalRadiusSquared]),
   (globalRadiusSquared + bb)/globalRadiusSquared};
normalizedRindlerVector = Map[Cancel@Together,
   inverseGlobalJacobian . normalizedGlobalVector];

rindlerMetric = DiagonalMatrix[{
    -Sinh[rindlerChi]^2, 1, Cosh[rindlerChi]^2}];
logBaseDerivative = Table[Cancel@Together[
    D[commonBase, coordinate]/commonBase],
   {coordinate, rindlerCoordinates}];
normalizedVectorDerivative[component_, derivative_] := Cancel@Together[
   D[normalizedRindlerVector[[component]],
     rindlerCoordinates[[derivative]]] +
    modeFrequency logBaseDerivative[[derivative]]
      normalizedRindlerVector[[component]]];

normalizedMetricPerturbation = Table[Cancel@Together@Sum[
    normalizedRindlerVector[[component]]
      D[rindlerMetric[[a, b]], rindlerCoordinates[[component]]] +
     rindlerMetric[[component, b]]
      normalizedVectorDerivative[component, a] +
     rindlerMetric[[a, component]]
      normalizedVectorDerivative[component, b],
    {component, 3}], {a, 3}, {b, 3}];

(* Take all derivatives before restricting to the t=0 wall. *)
normalizedMetricTauDerivative = Map[Cancel@Together[
     D[#, rindlerTime] + modeFrequency logBaseDerivative[[1]] #] &,
   normalizedMetricPerturbation, {2}];
normalizedMetricChiDerivative = Map[Cancel@Together[
     D[#, rindlerChi] + modeFrequency logBaseDerivative[[2]] #] &,
   normalizedMetricPerturbation, {2}];
normalizedMetricUDerivative = Map[Cancel@Together[
     D[#, rindlerU] + modeFrequency logBaseDerivative[[3]] #] &,
   normalizedMetricPerturbation, {2}];

wallRules = {
   rindlerTime -> 0,
   Cosh[rindlerU] -> (1 + endpointQ^2)/(2 endpointQ),
   Sinh[rindlerU] -> (1 - endpointQ^2)/(2 endpointQ)};
wallReduce[expression_] := Cancel@Together@PowerExpand[
   expression /. wallRules];
wallBase = wallReduce[commonBase];
wallBaseMinus = wallBase /. I -> -I;
wallBaseNormResidual = FullSimplify[
   wallBase wallBaseMinus -
    (1 - 2 endpointQ^2/
      (Cosh[rindlerChi] (1 + endpointQ^2) +
        Sqrt[2] Sinh[rindlerChi] endpointQ)^2),
   Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0];

wallHFull = Map[wallReduce, normalizedMetricPerturbation, {2}];
wallHTau = Map[wallReduce, normalizedMetricTauDerivative, {2}];
wallHChi = Map[wallReduce, normalizedMetricChiDerivative, {2}];
wallHU = Map[wallReduce, normalizedMetricUDerivative, {2}];

wallTangent = {1, 3};
wallGamma = rindlerMetric[[wallTangent, wallTangent]];
wallGammaInverse = Inverse[wallGamma];
wallSqrtMinusGamma = Sinh[rindlerChi] Cosh[rindlerChi];
(* Inner outward normal is -d chi. *)
wallK = DiagonalMatrix[{Sinh[rindlerChi] Cosh[rindlerChi],
    -Sinh[rindlerChi] Cosh[rindlerChi]}];
wallKUpper = wallGammaInverse . wallK . wallGammaInverse;
wallKTrace = FullSimplify[Tr[wallGammaInverse . wallK]];

wallH = wallHFull[[wallTangent, wallTangent]];
wallShift = wallHFull[[wallTangent, 2]];
wallShiftTau = wallHTau[[wallTangent, 2]];
wallShiftU = wallHU[[wallTangent, 2]];
wallDerivative[componentIndex_, tangentIndex_] := If[tangentIndex == 1,
   wallShiftTau[[componentIndex]], wallShiftU[[componentIndex]]];
wallDeltaK = Table[Cancel@Together[
    -wallHChi[[wallTangent[[a]], wallTangent[[b]]]]/2 +
     (wallDerivative[b, a] + wallDerivative[a, b])/2 -
     wallHFull[[2, 2]] wallK[[a, b]]/2], {a, 2}, {b, 2}];
wallHUpper = Map[Cancel@Together,
   wallGammaInverse . wallH . wallGammaInverse, {2}];
wallHTrace = Cancel@Together[Tr[wallGammaInverse . wallH]];
wallDeltaKTrace = Cancel@Together[
   Tr[wallGammaInverse . wallDeltaK] -
    Sum[wallHUpper[[a, b]] wallK[[a, b]], {a, 2}, {b, 2}]];
wallDeltaKUpper = Table[Cancel@Together[
    Sum[wallGammaInverse[[a, c]] wallGammaInverse[[b, d]]
      wallDeltaK[[c, d]], {c, 2}, {d, 2}] -
     Sum[wallHUpper[[a, c]] wallGamma[[c, d]] wallKUpper[[d, b]],
      {c, 2}, {d, 2}] -
     Sum[wallHUpper[[b, c]] wallGamma[[c, d]] wallKUpper[[d, a]],
      {c, 2}, {d, 2}]], {a, 2}, {b, 2}];
wallDeltaPi = Table[Cancel@Together[wallSqrtMinusGamma * (
      wallHTrace (wallKUpper[[a, b]] -
          wallKTrace wallGammaInverse[[a, b]])/2 +
       wallDeltaKUpper[[a, b]] -
       wallDeltaKTrace wallGammaInverse[[a, b]] +
       wallKTrace wallHUpper[[a, b]])], {a, 2}, {b, 2}];

frequencyDegree[expression_] := Exponent[
   Numerator@Together[expression], modeFrequency];
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
coefficientMatrix[matrix_, power_, chirality_] := Map[
   Cancel@Together@Coefficient[
      If[chirality == 1, #, # /. I -> -I], modeFrequency, power] &,
   matrix, {2}];

metricDegree = Max[frequencyDegree /@ Flatten[wallH]];
momentumDegree = Max[frequencyDegree /@ Flatten[wallDeltaPi]];
metricCoefficients = Table[
   coefficientMatrix[wallH, power, chirality],
   {chirality, {1, -1}}, {power, 0, metricDegree}];
momentumCoefficients = Table[
   coefficientMatrix[wallDeltaPi, power, chirality],
   {chirality, {1, -1}}, {power, 0, momentumDegree}];
chiralityIndex[1] = 1;
chiralityIndex[-1] = 2;
kernelCoefficient[firstChirality_, secondChirality_, p_, qPower_] :=
 Cancel@Together[
   matrixContract[
     momentumCoefficients[[chiralityIndex[firstChirality], p + 1]],
     metricCoefficients[[chiralityIndex[secondChirality], qPower + 1]]] -
    matrixContract[
     momentumCoefficients[[chiralityIndex[secondChirality], qPower + 1]],
     metricCoefficients[[chiralityIndex[firstChirality], p + 1]]]];

Print["assembling closed coefficientwise ++ and +- wall-flux kernels"];
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
       "QOrder" -> qOrder, "TotalFrequencyDegree" -> p + qPower,
       "SmallWallScaledLimitFinite" ->
        FreeQ[smallWallLimit,
         Indeterminate | ComplexInfinity | DirectedInfinity]|>]],
   {chiralities, {{1, 1}, {1, -1}}},
   {p, 0, momentumDegree}, {qPower, 0, metricDegree}];

componentQOrder[matrix_] := Min[
   (Exponent[Numerator@Together[#], endpointQ, Min] -
      Exponent[Denominator@Together[#], endpointQ, Min]) & /@
    Flatten[matrix]];
testConditions = {
   wallBaseNormResidual === 0,
   metricDegree <= 3,
   momentumDegree <= 4,
   componentQOrder[wallH] >= 2,
   componentQOrder[wallDeltaPi] >= 2,
   And @@ Thread[Lookup[kernelCoefficientData, "QOrder"] >= 5],
   And @@ Thread[
     Lookup[kernelCoefficientData, "TotalFrequencyDegree"] <= 7],
   And @@ Lookup[kernelCoefficientData, "SmallWallScaledLimitFinite"]
   };
testIDs = {
   "wall common base has norm at most one with the exact q squared deficit",
   "normalized metric perturbation has frequency degree at most three",
   "normalized Brown--York momentum has frequency degree at most four",
   "complete normalized wall metric starts at q squared",
   "complete normalized wall momentum starts at q squared",
   "all nonzero same- and mixed-chirality wall-flux coefficients start at q fifth",
   "complete wall-flux residual frequency degree is at most seven",
   "complete q fifth wall flux divided by sinh chi has a finite wall limit"
   };

Print[<|
  "WallBaseNormResidual" -> wallBaseNormResidual,
  "MetricMomentumDegrees" -> {metricDegree, momentumDegree},
  "MetricMomentumQOrders" ->
   {componentQOrder[wallH], componentQOrder[wallDeltaPi]},
  "KernelCoefficientSummaries" -> kernelCoefficientData|>];
adsRindlerWallClosedKernelReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
  " closed wall-kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
