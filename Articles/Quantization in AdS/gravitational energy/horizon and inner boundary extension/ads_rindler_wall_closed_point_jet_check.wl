(* ::Package:: *)

(*
  Exact wall-flux kernel from a closed normalized point jet.

  Instead of pulling back a tensor containing W^m, first write the global
  Brown--Henneaux vector as zeta_m=W^m U_m.  At tau=0 the jet of the inverse
  global/Rindler Jacobian is obtained by differentiating J K=1.  This gives
  the normalized Rindler-vector jet through second order without any
  frequency-dependent powers or ArcTan simplification.  That jet is exactly
  what the linearized Brown--York momentum needs.
*)

ClearAll["Global`*"];

coordinates = {rindlerTime, rindlerChi, rindlerU};
embedding = {
   Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] +
    Sinh[rindlerChi] Cosh[rindlerTime],
   Sinh[rindlerChi] Sinh[rindlerTime],
   Sqrt[2] Sinh[rindlerChi] Cosh[rindlerTime] +
    Cosh[rindlerChi] Cosh[rindlerU],
   Cosh[rindlerChi] Sinh[rindlerU]};
{xOne, xTwo, xThree, xFour} = embedding;
rSquared = Expand[xThree^2 + xFour^2];
onePlusRSquared = Expand[xOne^2 + xTwo^2];
commonBase = Cancel@Together[
   (xOne - I xTwo) (xThree + I xFour)/onePlusRSquared];

(* Use s=r^2 as the second global coordinate.  This removes the mutually
   cancelling square roots present in dr and U^r. *)
globalJacobian = {
   Table[Cancel@Together[(xOne D[xTwo, coordinate] -
        xTwo D[xOne, coordinate])/onePlusRSquared],
     {coordinate, coordinates}],
   Table[Cancel@Together[D[rSquared, coordinate]],
     {coordinate, coordinates}],
   Table[Cancel@Together[(xThree D[xFour, coordinate] -
        xFour D[xThree, coordinate])/rSquared],
     {coordinate, coordinates}]};

aa = (modeFrequency - 2) (modeFrequency + 1)/2;
bb = modeFrequency (modeFrequency + 1)/2;
normalizedGlobalVector = {
   -(rSquared - aa)/(1 + rSquared),
   -I modeFrequency (2 rSquared + modeFrequency + 1),
   (rSquared + bb)/rSquared};

wallRules = {
   rindlerTime -> 0,
   Cosh[rindlerU] -> (1 + endpointQ^2)/(2 endpointQ),
   Sinh[rindlerU] -> (1 - endpointQ^2)/(2 endpointQ)};
wallReduce[expression_] := Cancel@Together@PowerExpand[
   expression /. wallRules];

Print["building wall jets of the algebraic coordinate map"];
jValue = Map[wallReduce, globalJacobian, {2}];
jFirst = Table[Map[wallReduce,
    D[globalJacobian, coordinates[[a]]], {2}], {a, 3}];
jSecond = Table[Map[wallReduce,
    D[globalJacobian, coordinates[[a]], coordinates[[b]]], {2}],
   {a, 3}, {b, 3}];
uValue = Map[wallReduce, normalizedGlobalVector];
uFirst = Table[Map[wallReduce,
    D[normalizedGlobalVector, coordinates[[a]]]], {a, 3}];
uSecond = Table[Map[wallReduce,
    D[normalizedGlobalVector, coordinates[[a]], coordinates[[b]]]],
   {a, 3}, {b, 3}];

Print["inverting the point Jacobian and its first two jets"];
kValue = Map[Cancel@Together, Inverse[jValue], {2}];
Print["point inverse completed"];
kFirst = Table[Map[Cancel@Together,
    -kValue . jFirst[[a]] . kValue, {2}], {a, 3}];
Print["first inverse jet completed"];
kSecond = Table[Map[Cancel@Together,
    kValue . jFirst[[b]] . kValue . jFirst[[a]] . kValue +
     kValue . jFirst[[a]] . kValue . jFirst[[b]] . kValue -
     kValue . jSecond[[a, b]] . kValue, {2}],
   {a, 3}, {b, 3}];
Print["second inverse jet completed"];

vectorValue = Map[Cancel@Together, kValue . uValue];
Print["normalized vector value completed"];
vectorFirst = Table[Map[Cancel@Together,
    kFirst[[a]] . uValue + kValue . uFirst[[a]]], {a, 3}];
Print["normalized vector first jet completed"];
vectorSecond = Table[Map[Cancel@Together,
    kSecond[[a, b]] . uValue + kFirst[[a]] . uFirst[[b]] +
     kFirst[[b]] . uFirst[[a]] + kValue . uSecond[[a, b]]],
   {a, 3}, {b, 3}];
Print["normalized vector second jet completed"];

(* Construct the phase jets from log W rather than differentiating the full
   rational quotient W.  This is algebraically identical but avoids a large
   intermediate common denominator. *)
baseFactors = {xOne - I xTwo, xThree + I xFour,
   onePlusRSquared};
baseSigns = {1, 1, -1};
baseFactorValues = Map[wallReduce, baseFactors];
baseFactorFirst = Table[
   wallReduce[D[baseFactors[[j]], coordinates[[a]]]],
   {j, 3}, {a, 3}];
baseFactorSecond = Table[
   wallReduce[D[baseFactors[[j]], coordinates[[a]], coordinates[[b]]]],
   {j, 3}, {a, 3}, {b, 3}];
baseValue = Cancel@Together[
   baseFactorValues[[1]] baseFactorValues[[2]]/
    baseFactorValues[[3]]];
logBaseFirst = Table[Cancel@Together@Sum[
    baseSigns[[j]] baseFactorFirst[[j, a]]/baseFactorValues[[j]],
    {j, 3}], {a, 3}];
logBaseSecond = Table[Cancel@Together@Sum[baseSigns[[j]] (
      baseFactorSecond[[j, a, b]]/baseFactorValues[[j]] -
       baseFactorFirst[[j, a]] baseFactorFirst[[j, b]]/
        baseFactorValues[[j]]^2), {j, 3}],
   {a, 3}, {b, 3}];
Print["common phase logarithmic jets completed"];

(* Work coefficientwise in m.  U_m and all of its coordinate jets have
   degree two.  Multiplication by one or two derivatives of W^m merely
   shifts the coefficient arrays by one or two places. *)
polynomialCoefficient[expression_, power_] := Cancel@Together[
   Coefficient[expression, modeFrequency, power]];
vectorCoefficients = Table[
   Map[polynomialCoefficient[#, power] &, vectorValue],
   {power, 0, 2}];
vectorFirstCoefficients = Table[
   Map[polynomialCoefficient[#, power] &, vectorFirst[[a]]],
   {power, 0, 2}, {a, 3}];
vectorSecondCoefficients = Table[
   Map[polynomialCoefficient[#, power] &, vectorSecond[[a, b]]],
   {power, 0, 2}, {a, 3}, {b, 3}];
zeroVector = ConstantArray[0, 3];
vectorCoefficientAt[power_] := If[0 <= power <= 2,
   vectorCoefficients[[power + 1]], zeroVector];
vectorFirstCoefficientAt[power_, a_] := If[0 <= power <= 2,
   vectorFirstCoefficients[[power + 1, a]], zeroVector];
vectorSecondCoefficientAt[power_, a_, b_] := If[0 <= power <= 2,
   vectorSecondCoefficients[[power + 1, a, b]], zeroVector];
phaseVectorFirstCoefficients = Table[Map[Cancel@Together,
    vectorFirstCoefficientAt[power, a] +
     If[power >= 1,
      logBaseFirst[[a]] vectorCoefficientAt[power - 1], zeroVector]],
   {power, 0, 3}, {a, 3}];
Print["phase-vector first coefficient jet completed"];
phaseVectorSecondCoefficients = Table[Map[Cancel@Together,
    vectorSecondCoefficientAt[power, a, b] +
     If[power >= 1,
      logBaseFirst[[a]] vectorFirstCoefficientAt[power - 1, b] +
       logBaseFirst[[b]] vectorFirstCoefficientAt[power - 1, a] +
       logBaseSecond[[a, b]] vectorCoefficientAt[power - 1],
      zeroVector] +
     If[power >= 2,
      logBaseFirst[[a]] logBaseFirst[[b]]
       vectorCoefficientAt[power - 2], zeroVector]],
   {power, 0, 4}, {a, 3}, {b, 3}];
Print["phase-vector second coefficient jet completed"];
phaseVectorFirstCoefficientAt[power_, a_] := If[0 <= power <= 3,
   phaseVectorFirstCoefficients[[power + 1, a]], zeroVector];
phaseVectorSecondCoefficientAt[power_, a_, b_] := If[0 <= power <= 4,
   phaseVectorSecondCoefficients[[power + 1, a, b]], zeroVector];

metric = DiagonalMatrix[{-Sinh[rindlerChi]^2, 1,
    Cosh[rindlerChi]^2}];
metricValue = metric;
metricFirst = Table[D[metric, coordinates[[a]]], {a, 3}];
metricSecond = Table[D[metric, coordinates[[a]], coordinates[[b]]],
   {a, 3}, {b, 3}];

Print["assembling normalized metric and first derivative jets"];
hCoefficients = Table[Cancel@Together@Sum[
    vectorCoefficientAt[power][[c]] metricFirst[[c, a, b]] +
     metricValue[[c, b]]
      phaseVectorFirstCoefficientAt[power, a][[c]] +
     metricValue[[a, c]]
      phaseVectorFirstCoefficientAt[power, b][[c]], {c, 3}],
   {power, 0, 3}, {a, 3}, {b, 3}];
Print["normalized metric coefficient jet completed"];
hDerivativeCoefficient[power_, d_, a_, b_] :=
 hDerivativeCoefficient[power, d, a, b] = If[0 <= power <= 4,
   Sum[
    phaseVectorFirstCoefficientAt[power, d][[c]]
      metricFirst[[c, a, b]] +
     vectorCoefficientAt[power][[c]] metricSecond[[d, c, a, b]] +
     metricFirst[[d, c, b]]
      phaseVectorFirstCoefficientAt[power, a][[c]] +
     metricValue[[c, b]]
      phaseVectorSecondCoefficientAt[power, d, a][[c]] +
     metricFirst[[d, a, c]]
      phaseVectorFirstCoefficientAt[power, b][[c]] +
     metricValue[[a, c]]
      phaseVectorSecondCoefficientAt[power, d, b][[c]], {c, 3}], 0];

wallTangent = {1, 3};
wallGamma = metric[[wallTangent, wallTangent]];
wallGammaInverse = Inverse[wallGamma];
wallSqrtMinusGamma = Sinh[rindlerChi] Cosh[rindlerChi];
wallK = DiagonalMatrix[{Sinh[rindlerChi] Cosh[rindlerChi],
    -Sinh[rindlerChi] Cosh[rindlerChi]}];
wallKUpper = wallGammaInverse . wallK . wallGammaInverse;
wallKTrace = FullSimplify[Tr[wallGammaInverse . wallK]];
zeroMatrixThree = ConstantArray[0, {3, 3}];
hCoefficientAt[power_] := If[0 <= power <= 3,
   hCoefficients[[power + 1]], zeroMatrixThree];
wallHCoefficients = Table[
   hCoefficientAt[power][[wallTangent, wallTangent]],
   {power, 0, 4}];
wallDerivativeCoefficient[power_, componentIndex_, tangentIndex_] :=
 hDerivativeCoefficient[power, wallTangent[[tangentIndex]],
   wallTangent[[componentIndex]], 2];
wallDeltaKCoefficients = Table[
   Print["assembling wall delta K frequency power ", power];
   Table[Cancel@Together[
     -hDerivativeCoefficient[power, 2, wallTangent[[a]],
        wallTangent[[b]]]/2 +
      (wallDerivativeCoefficient[power, b, a] +
        wallDerivativeCoefficient[power, a, b])/2 -
      hCoefficientAt[power][[2, 2]] wallK[[a, b]]/2],
    {a, 2}, {b, 2}], {power, 0, 4}];
Print["required normalized metric derivative coefficients completed"];
(* The full densitized Brown--York linearization above reduces exactly, for
   gamma_AB=diag(-sinh^2 chi,cosh^2 chi), to the following three independent
   components.  Keeping only the final Together is much smaller than raising
   indices and simplifying at every intermediate stage. *)
wallDeltaPiCoefficients = Table[Module[
    {hWall = wallHCoefficients[[power + 1]],
     deltaK = wallDeltaKCoefficients[[power + 1]]},
    {{Cancel@Together[(-hWall[[1, 1]] Csch[rindlerChi]^2 +
          2 deltaK[[2, 2]] Csch[rindlerChi] Sech[rindlerChi] +
          hWall[[2, 2]] Sech[rindlerChi]^2)/2],
      Cancel@Together[-deltaK[[1, 2]] Csch[rindlerChi]
        Sech[rindlerChi]]},
     {Cancel@Together[-deltaK[[1, 2]] Csch[rindlerChi]
        Sech[rindlerChi]],
      Cancel@Together[Sech[rindlerChi] (
         (2 deltaK[[1, 1]] + hWall[[1, 1]] Coth[rindlerChi])
           Csch[rindlerChi] -
          hWall[[2, 2]] Sech[rindlerChi])/2]}}],
   {power, 0, 4}];
Print["Brown--York coefficient jet completed"];

(* Rationalize the wall radius with y=tanh(chi/2).  All exact order tests
   below are then ordinary polynomial valuations in q and y. *)
wallHalfRadialRules = {
   Sinh[rindlerChi] -> 2 wallHalfRadial/(1 - wallHalfRadial^2),
   Cosh[rindlerChi] -> (1 + wallHalfRadial^2)/
     (1 - wallHalfRadial^2),
   Csch[rindlerChi] -> (1 - wallHalfRadial^2)/
     (2 wallHalfRadial),
   Sech[rindlerChi] -> (1 - wallHalfRadial^2)/
     (1 + wallHalfRadial^2),
   Tanh[rindlerChi] -> 2 wallHalfRadial/(1 + wallHalfRadial^2),
   Coth[rindlerChi] -> (1 + wallHalfRadial^2)/
     (2 wallHalfRadial)};
wallRationalize[expression_] := Cancel@Together[
   expression /. wallHalfRadialRules];
algebraicConjugate[expression_] := expression /.
   z_Complex :> Conjugate[z];
hCoefficientsRational = Map[wallRationalize,
   hCoefficients, {3}];
wallHCoefficientsRational = Map[wallRationalize,
   wallHCoefficients, {3}];
wallDeltaPiCoefficientsRational = Map[wallRationalize,
   wallDeltaPiCoefficients, {3}];
Print["half-radial rationalization completed"];
modeTwoMetricQTwo = Map[Cancel@Together@Limit[#/endpointQ^2,
      endpointQ -> 0, Direction -> "FromAbove"] &,
   Sum[2^power wallHCoefficientsRational[[power + 1]],
    {power, 0, 4}], {2}];
expectedModeTwoMetricQTwo =
 48 I wallHalfRadial^2/(1 + wallHalfRadial^2)^2 {{1, -1}, {-1, 1}};
If[Environment["ADS_RINDLER_WALL_CALIBRATION_ONLY"] === "1",
 Print[<|"ClosedModeTwoQTwo" -> modeTwoMetricQTwo,
   "CandidateDirectModeTwoQTwo" -> expectedModeTwoMetricQTwo,
   "Residual" ->
    Map[Cancel@Together, modeTwoMetricQTwo - expectedModeTwoMetricQTwo,
     {2}]|>];
 Exit[0]];
If[Environment["ADS_RINDLER_WALL_POINT_JET_DEFINITIONS_ONLY"] =!= "1",
If[Environment["ADS_RINDLER_WALL_SAVE_CACHE"] === "1",
 DumpSave["/tmp/ads_rindler_wall_closed_point_jet.mx", {
   hCoefficientsRational, wallHCoefficientsRational,
   wallDeltaPiCoefficientsRational,
   baseValue}];
 Print["development cache saved"]];

componentQOrder[matrix_] := Min[
   (Exponent[Numerator@Together[#], endpointQ, Min] -
      Exponent[Denominator@Together[#], endpointQ, Min]) & /@
    Select[Flatten[matrix], ! TrueQ[# === 0] &]];
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
metricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    wallHCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
momentumCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    wallDeltaPiCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
metricDegree = 3;
momentumDegree = 4;
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

Print["assembling closed coefficientwise wall-flux kernels"];
kernelCoefficientData = Flatten@Table[Module[
    {coefficient, numerator, denominator, qOrder, wallOrder,
     qFiveCoefficient, qFiveWallOrder, horizonRestriction,
     horizonQOrder},
    Print["kernel coefficient ", chiralities, " powers ",
     {p, qPower}];
    coefficient = kernelCoefficient[
      chiralities[[1]], chiralities[[2]], p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     numerator = Numerator@Together[coefficient];
     denominator = Denominator@Together[coefficient];
     qOrder = Exponent[numerator, endpointQ, Min] -
       Exponent[denominator, endpointQ, Min];
     wallOrder = Exponent[numerator, wallHalfRadial, Min] -
       Exponent[denominator, wallHalfRadial, Min];
     qFiveCoefficient = Cancel@Together[
        coefficient/endpointQ^5] /. endpointQ -> 0;
     qFiveWallOrder = If[TrueQ[qFiveCoefficient === 0], Infinity,
       Exponent[Numerator@Together[qFiveCoefficient],
          wallHalfRadial, Min] -
        Exponent[Denominator@Together[qFiveCoefficient],
          wallHalfRadial, Min]];
     horizonRestriction = Cancel@Together[
       coefficient /. wallHalfRadial -> 0];
     horizonQOrder = If[TrueQ[horizonRestriction === 0], Infinity,
       Exponent[Numerator@Together[horizonRestriction], endpointQ,
          Min] -
        Exponent[Denominator@Together[horizonRestriction], endpointQ,
          Min]];
     <|"Chiralities" -> chiralities, "Powers" -> {p, qPower},
       "QOrder" -> qOrder, "TotalFrequencyDegree" -> p + qPower,
       "HalfRadialOrder" -> wallOrder,
       "QFiveHalfRadialOrder" -> qFiveWallOrder,
       "HorizonQOrder" -> horizonQOrder|>]],
   {chiralities, {{1, 1}, {1, -1}}},
   {p, 0, momentumDegree}, {qPower, 0, momentumDegree}];

baseNormResidual = wallRationalize[
   baseValue algebraicConjugate[baseValue] -
    (1 - 2 endpointQ^2/
      (Cosh[rindlerChi] (1 + endpointQ^2) +
        Sqrt[2] Sinh[rindlerChi] endpointQ)^2)];
testConditions = {
   baseNormResidual === 0,
   modeTwoMetricQTwo === expectedModeTwoMetricQTwo,
   metricDegree <= 3,
   momentumDegree <= 4,
   componentQOrder[wallHCoefficientsRational] >= 2,
   componentQOrder[wallDeltaPiCoefficientsRational] >= 2,
   And @@ Thread[Lookup[kernelCoefficientData, "QOrder"] >= 5],
   And @@ Thread[
     Lookup[kernelCoefficientData, "TotalFrequencyDegree"] <= 7],
   And @@ Thread[
     Lookup[kernelCoefficientData, "QFiveHalfRadialOrder"] >= 1],
   And @@ Thread[Lookup[kernelCoefficientData, "HorizonQOrder"] >= 6]
   };
testIDs = {
   "common wall frequency base has the exact bounded norm",
   "closed mode-two q-squared metric matches the direct endpoint pullback",
   "normalized wall metric has frequency degree at most three",
   "normalized Brown--York momentum has frequency degree at most four",
   "complete normalized wall metric starts at q squared",
   "complete normalized wall momentum starts at q squared",
   "all nonzero ++ and +- wall-flux coefficients start at q fifth",
   "complete wall-flux residual frequency degree is at most seven",
   "the q fifth coefficient vanishes at least linearly at the wall",
   "the exact horizon restriction starts at q sixth"
   };

Print[<|
  "BaseNormResidual" -> baseNormResidual,
  "MetricMomentumDegrees" -> {metricDegree, momentumDegree},
  "MetricMomentumQOrders" ->
   {componentQOrder[wallHCoefficientsRational],
    componentQOrder[wallDeltaPiCoefficientsRational]},
  "KernelCoefficientSummaries" -> kernelCoefficientData|>];
adsRindlerWallClosedPointJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
  " closed point-jet wall-kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
];
