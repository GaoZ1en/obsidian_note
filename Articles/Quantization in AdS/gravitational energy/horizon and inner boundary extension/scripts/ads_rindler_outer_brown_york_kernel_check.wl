(* ::Package:: *)

(*
  Exact two-frequency renormalized Brown--York source kernel and article
  Harlow--Wu/Cauchy-corner subtraction on a finite global cylinder
  s=r^2=S. Together these are the complete fixed-cylinder outer
  variational-flux pieces; the moving Hayward joint is a separate sector.

  The corrected Brown--Henneaux vector is factorized as zeta_m=W^m U_m with

      W=Exp[-I t] Sqrt[s/(1+s)] Exp[I phi].

  All frequency dependence left after removing W^m is polynomial.  The
  script differentiates before setting s=S and checks the complete ++ and +-
  kernels coefficientwise at z=1/S=R^{-2}.
*)

ClearAll["Global`*"];

coordinates = {globalTime, globalRadiusSquared, globalAngle};
metric = DiagonalMatrix[{
   -(1 + globalRadiusSquared),
   1/(4 globalRadiusSquared (1 + globalRadiusSquared)),
   globalRadiusSquared}];
inverseMetric = DiagonalMatrix[{
   -1/(1 + globalRadiusSquared),
   4 globalRadiusSquared (1 + globalRadiusSquared),
   1/globalRadiusSquared}];

aa = (modeFrequency - 2) (modeFrequency + 1)/2;
bb = modeFrequency (modeFrequency + 1)/2;
normalizedVector = {
   -(globalRadiusSquared - aa)/(1 + globalRadiusSquared),
   -I modeFrequency (2 globalRadiusSquared + modeFrequency + 1),
   (globalRadiusSquared + bb)/globalRadiusSquared};
logBaseFirst = {-I,
   1/(2 globalRadiusSquared (1 + globalRadiusSquared)), I};

zeroVector = ConstantArray[0, 3];
zeroMatrixThree = ConstantArray[0, {3, 3}];
polynomialCoefficient[expression_, power_] := Cancel@Together[
   Coefficient[expression, modeFrequency, power]];
vectorCoefficients = Table[
   Map[polynomialCoefficient[#, power] &, normalizedVector],
   {power, 0, 2}];
vectorCoefficientAt[power_] := If[0 <= power <= 2,
   vectorCoefficients[[power + 1]], zeroVector];
vectorFirstCoefficientAt[power_, derivative_] := If[0 <= power <= 2,
   Map[Cancel@Together,
    D[vectorCoefficientAt[power], coordinates[[derivative]]]], zeroVector];
phaseVectorFirstCoefficientAt[power_, derivative_] := If[0 <= power <= 3,
   Map[Cancel@Together,
    vectorFirstCoefficientAt[power, derivative] +
     If[power >= 1,
      logBaseFirst[[derivative]] vectorCoefficientAt[power - 1],
      zeroVector]], zeroVector];

metricFirst = Table[D[metric, coordinates[[a]]], {a, 3}];
hCoefficients = Table[Cancel@Together@Sum[
    vectorCoefficientAt[power][[c]] metricFirst[[c, a, b]] +
     metric[[c, b]] phaseVectorFirstCoefficientAt[power, a][[c]] +
     metric[[a, c]] phaseVectorFirstCoefficientAt[power, b][[c]],
   {c, 3}], {power, 0, 3}, {a, 3}, {b, 3}];
hCoefficientAt[power_] := If[0 <= power <= 3,
   hCoefficients[[power + 1]], zeroMatrixThree];
If[Environment["ADS_RINDLER_OUTER_VECTOR_DEBUG_ONLY"] === "1",
 debugDirectVectorDerivative = Table[Map[FullSimplify,
     (D[(Exp[-I globalTime]
           Sqrt[globalRadiusSquared/(1 + globalRadiusSquared)]
           Exp[I globalAngle])^2
          (normalizedVector /. modeFrequency -> 2),
         coordinates[[derivative]]]/
        (Exp[-I globalTime]
          Sqrt[globalRadiusSquared/(1 + globalRadiusSquared)]
          Exp[I globalAngle])^2) /.
      {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}],
    {derivative, 3}];
 debugClosedVectorDerivative = Table[Map[FullSimplify,
     Sum[2^power phaseVectorFirstCoefficientAt[power, derivative],
       {power, 0, 3}] /.
      {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}],
    {derivative, 3}];
 Print[<|"VectorCoefficients" -> vectorCoefficients,
   "DirectVectorDerivative" -> debugDirectVectorDerivative,
   "ClosedVectorDerivative" -> debugClosedVectorDerivative|>];
 Exit[0]];
hDerivativeCoefficient[power_, derivative_, a_, b_] :=
 hDerivativeCoefficient[power, derivative, a, b] = If[0 <= power <= 4,
   Cancel@Together[
    D[hCoefficientAt[power][[a, b]], coordinates[[derivative]]] +
     If[power >= 1,
      logBaseFirst[[derivative]]
       hCoefficientAt[power - 1][[a, b]], 0]], 0];

tangent = {1, 3};
gamma = metric[[tangent, tangent]];
gammaInverse = inverseMetric[[tangent, tangent]];
sqrtMinusGamma = Sqrt[globalRadiusSquared (1 + globalRadiusSquared)];
normalLapse = 1/(2 sqrtMinusGamma);

christoffelBackground = Table[Cancel@Together[1/2 Sum[
     inverseMetric[[rho, lambda]] (
       D[metric[[lambda, mu]], coordinates[[nu]]] +
        D[metric[[lambda, nu]], coordinates[[mu]]] -
        D[metric[[mu, nu]], coordinates[[lambda]]]), {lambda, 3}]],
   {rho, 3}, {mu, 3}, {nu, 3}];
outerK = Table[Cancel@Together[
   -normalLapse christoffelBackground[[2, tangent[[a]], tangent[[b]]]]],
   {a, 2}, {b, 2}];
outerKTrace = Cancel@Together[Tr[gammaInverse . outerK]];
outerKUpper = Map[Cancel@Together, gammaInverse . outerK . gammaInverse,
   {2}];
outerTUpper = Map[Cancel@Together,
   outerKUpper - outerKTrace gammaInverse + gammaInverse, {2}];

deltaChristoffelCoefficient[power_, rho_, mu_, nu_] :=
 deltaChristoffelCoefficient[power, rho, mu, nu] = Cancel@Together[
   1/2 Sum[
     (-Sum[inverseMetric[[rho, a]] hCoefficientAt[power][[a, b]]
          inverseMetric[[b, lambda]], {a, 3}, {b, 3}]) (
       D[metric[[lambda, mu]], coordinates[[nu]]] +
        D[metric[[lambda, nu]], coordinates[[mu]]] -
        D[metric[[mu, nu]], coordinates[[lambda]]]) +
      inverseMetric[[rho, lambda]] (
       hDerivativeCoefficient[power, nu, lambda, mu] +
        hDerivativeCoefficient[power, mu, lambda, nu] -
        hDerivativeCoefficient[power, lambda, mu, nu]),
     {lambda, 3}]];

outerDeltaKCoefficients = Table[
   Print["assembling outer delta K frequency power ", power];
   Table[Cancel@Together[
     -(hCoefficientAt[power][[2, 2]]/(2 normalLapse))
       christoffelBackground[[2, tangent[[a]], tangent[[b]]]] -
      normalLapse deltaChristoffelCoefficient[
       power, 2, tangent[[a]], tangent[[b]]]],
    {a, 2}, {b, 2}], {power, 0, 4}];

outerHCoefficients = Table[
   hCoefficientAt[power][[tangent, tangent]], {power, 0, 4}];
outerDeltaPiCoefficients = Table[Module[
    {hWall = outerHCoefficients[[power + 1]],
     deltaKLower = outerDeltaKCoefficients[[power + 1]],
     hUpper, traceH, deltaGammaInverse, deltaKUpper, deltaKTrace,
     deltaTUpper},
    hUpper = gammaInverse . hWall . gammaInverse;
    traceH = Tr[gammaInverse . hWall];
    deltaGammaInverse = -hUpper;
    deltaKUpper = gammaInverse . deltaKLower . gammaInverse -
      hUpper . outerK . gammaInverse -
      gammaInverse . outerK . hUpper;
    deltaKTrace = Tr[gammaInverse . deltaKLower] -
      Tr[hUpper . outerK];
    deltaTUpper = deltaKUpper - deltaKTrace gammaInverse -
      outerKTrace deltaGammaInverse + deltaGammaInverse;
    Map[Cancel@Together,
     sqrtMinusGamma (deltaTUpper + traceH outerTUpper/2), {2}]],
   {power, 0, 4}];
Print["renormalized outer Brown--York coefficient jet completed"];

(* Independent fixed-mode calibration: build g+alpha L_zeta g first, then
   expand the complete normalized-normal Brown--York tensor. *)
alpha = Unique["alpha"];
modeTwoBase = Exp[-I globalTime] *
   Sqrt[globalRadiusSquared/(1 + globalRadiusSquared)] *
   Exp[I globalAngle];
modeTwoVector = modeTwoBase^2 (
   normalizedVector /. modeFrequency -> 2);
modeTwoHDirect = Table[Cancel@Together@Sum[
    modeTwoVector[[lambda]]
      D[metric[[mu, nu]], coordinates[[lambda]]] +
     metric[[lambda, nu]]
      D[modeTwoVector[[lambda]], coordinates[[mu]]] +
     metric[[mu, lambda]]
      D[modeTwoVector[[lambda]], coordinates[[nu]]], {lambda, 3}],
   {mu, 3}, {nu, 3}];
truncateOne[expression_] := Normal@Series[expression, {alpha, 0, 1}];
directMetric = metric + alpha modeTwoHDirect;
directInverse = Map[Cancel@Together, truncateOne[Inverse[directMetric]], {2}];
directChristoffel = Table[truncateOne[1/2 Sum[
      directInverse[[rho, lambda]] (
       D[directMetric[[lambda, mu]], coordinates[[nu]]] +
        D[directMetric[[lambda, nu]], coordinates[[mu]]] -
        D[directMetric[[mu, nu]], coordinates[[lambda]]]), {lambda, 3}]],
   {rho, 3}, {mu, 3}, {nu, 3}];
directNormalLapse = truncateOne[1/Sqrt[directInverse[[2, 2]]]];
directGamma = directMetric[[tangent, tangent]];
directGammaInverse = Map[Cancel@Together,
   truncateOne[Inverse[directGamma]], {2}];
directK = Table[truncateOne[
   -directNormalLapse
    directChristoffel[[2, tangent[[a]], tangent[[b]]]]],
   {a, 2}, {b, 2}];
directKUpper = Map[Cancel@Together,
   truncateOne[directGammaInverse . directK . directGammaInverse], {2}];
directKTrace = truncateOne[Tr[directGammaInverse . directK]];
directSqrtMinusGamma = truncateOne[Sqrt[-Det[directGamma]]];
directPi = Map[Cancel@Together, truncateOne[
    directSqrtMinusGamma (directKUpper -
      directKTrace directGammaInverse + directGammaInverse)], {2}];
directModeTwoDeltaPiAtPoint = Map[FullSimplify,
   Coefficient[directPi, alpha, 1] /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
closedModeTwoDeltaPiAtPoint = Map[FullSimplify,
   (modeTwoBase^2 Total@Table[
       2^power outerDeltaPiCoefficients[[power + 1]],
       {power, 0, 4}]) /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
modeTwoDeltaPiCalibrationResidual = Map[FullSimplify,
   directModeTwoDeltaPiAtPoint - closedModeTwoDeltaPiAtPoint, {2}];
modeTwoHCalibrationResidual = Map[FullSimplify,
   (modeTwoHDirect - modeTwoBase^2 Total@Table[
       2^power hCoefficients[[power + 1]], {power, 0, 3}]) /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
modeTwoVectorDerivativeCalibrationResidual = Table[Map[FullSimplify,
    (D[modeTwoVector, coordinates[[derivative]]]/modeTwoBase^2 -
       Total@Table[
        2^power phaseVectorFirstCoefficientAt[power, derivative],
        {power, 0, 3}]) /.
     {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}],
   {derivative, 3}];
directModeTwoHAtPoint = Map[FullSimplify,
   modeTwoHDirect /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
closedModeTwoHAtPoint = Map[FullSimplify,
   (modeTwoBase^2 Total@Table[
       2^power hCoefficients[[power + 1]], {power, 0, 3}]) /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
directModeTwoDeltaKAtPoint = Map[FullSimplify,
   Coefficient[directK, alpha, 1] /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
closedModeTwoDeltaKAtPoint = Map[FullSimplify,
   (modeTwoBase^2 Total@Table[
       2^power outerDeltaKCoefficients[[power + 1]],
       {power, 0, 4}]) /.
    {globalTime -> 0, globalRadiusSquared -> 2, globalAngle -> 0}, {2}];
modeTwoDeltaKCalibrationResidual = Map[FullSimplify,
   directModeTwoDeltaKAtPoint - closedModeTwoDeltaKAtPoint, {2}];

(* The article Cauchy potential contains the separate corner subtraction

     C_Gamma[g;delta g]
       =-1/2 sqrt(q) tau_a gamma^(a nu) n^rho delta g_(nu rho).

   Derive its linear prefactor from the full metric rather than folding it
   into the Brown--York source curvature. *)
genericCornerH = {{cornerHtt, cornerHts, cornerHtphi},
   {cornerHts, cornerHss, cornerHsphi},
   {cornerHtphi, cornerHsphi, cornerHphiphi}};
cornerBeta = Unique["cornerBeta"];
cornerMetric = metric + cornerBeta genericCornerH;
cornerInverse = Map[Cancel@Together,
   Normal@Series[Inverse[cornerMetric], {cornerBeta, 0, 1}], {2}];
cornerNormalLapse = Normal@Series[
   1/Sqrt[cornerInverse[[2, 2]]], {cornerBeta, 0, 1}];
cornerNormalUpper = Map[Cancel@Together,
   cornerNormalLapse cornerInverse[[All, 2]]];
cornerGammaInverse = Map[Cancel@Together,
   Normal@Series[Inverse[cornerMetric[[tangent, tangent]]],
    {cornerBeta, 0, 1}], {2}];
cornerTimeLapse = Normal@Series[
   1/Sqrt[-cornerGammaInverse[[1, 1]]], {cornerBeta, 0, 1}];
cornerTauUpper = {
   -cornerTimeLapse cornerGammaInverse[[1, 1]], 0,
   -cornerTimeLapse cornerGammaInverse[[1, 2]]};
cornerCutDensity = Normal@Series[
   Sqrt[cornerMetric[[3, 3]]], {cornerBeta, 0, 1}];
cornerPrefactor = Table[Normal@Series[
    cornerCutDensity cornerTauUpper[[nu]] cornerNormalUpper[[rho]],
    {cornerBeta, 0, 1}], {nu, 3}, {rho, 3}];
cornerPrefactorOne = Map[Cancel@Together,
   Coefficient[cornerPrefactor, cornerBeta, 1], {2}];
expectedCornerPrefactorOne = {
   {2 globalRadiusSquared cornerHts/(1 + globalRadiusSquared),
    cornerHphiphi + globalRadiusSquared cornerHtt/(1 + globalRadiusSquared) -
     4 globalRadiusSquared^2 (1 + globalRadiusSquared) cornerHss,
    -2 cornerHsphi},
   {0, 0, 0},
   {0, -2 cornerHtphi, 0}};
cornerPrefactorResidual = Map[
   FullSimplify[PowerExpand[#], Assumptions -> globalRadiusSquared > 0] &,
   cornerPrefactorOne - expectedCornerPrefactorOne, {2}];
cornerRulesFor[hMatrix_] := Thread[
   {cornerHtt, cornerHts, cornerHtphi, cornerHss,
     cornerHsphi, cornerHphiphi} ->
    {hMatrix[[1, 1]], hMatrix[[1, 2]], hMatrix[[1, 3]],
     hMatrix[[2, 2]], hMatrix[[2, 3]], hMatrix[[3, 3]]}];
cornerPrefactorFor[hMatrix_] := Map[Cancel@Together,
   expectedCornerPrefactorOne /. cornerRulesFor[hMatrix], {2}];
cornerCurvature[first_, second_] := Cancel@Together[-1/2 Total@Flatten[
    cornerPrefactorFor[first] second -
     cornerPrefactorFor[second] first]];

algebraicConjugate[expression_] := expression /.
   z_Complex :> Conjugate[z];
outerReduce[expression_] := Cancel@Together@PowerExpand[
   expression /. globalRadiusSquared -> 1/outerZ];
outerHCoefficientsZ = Map[outerReduce, outerHCoefficients, {3}];
outerDeltaPiCoefficientsZ = Map[outerReduce,
   outerDeltaPiCoefficients, {3}];

metricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    outerHCoefficientsZ[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
momentumCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    outerDeltaPiCoefficientsZ[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
chiralityIndex[1] = 1;
chiralityIndex[-1] = 2;
matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
kernelCoefficient[firstChirality_, secondChirality_, p_, qPower_] :=
 Cancel@Together[
   matrixContract[
     momentumCoefficients[[chiralityIndex[firstChirality], p + 1]],
     metricCoefficients[[chiralityIndex[secondChirality], qPower + 1]]] -
    matrixContract[
     momentumCoefficients[[chiralityIndex[secondChirality], qPower + 1]],
     metricCoefficients[[chiralityIndex[firstChirality], p + 1]]]];
valuation[expression_, variable_] := If[TrueQ[expression === 0], Infinity,
  Exponent[Numerator@Together[expression], variable, Min] -
   Exponent[Denominator@Together[expression], variable, Min]];

Print["assembling coefficientwise outer Brown--York kernels"];
kernelCoefficientData = Flatten@Table[Module[
    {coefficient, zOrder},
    Print["outer kernel coefficient ", chiralities,
     " powers ", {p, qPower}];
    coefficient = kernelCoefficient[
      chiralities[[1]], chiralities[[2]], p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     zOrder = valuation[coefficient, outerZ];
     <|"Chiralities" -> chiralities, "Powers" -> {p, qPower},
       "OuterZOrder" -> zOrder,
       "TotalFrequencyDegree" -> p + qPower|>]],
   {chiralities, {{1, 1}, {1, -1}}}, {p, 0, 4}, {qPower, 0, 4}];

cornerMetricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    hCoefficients[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 3}];
cornerKernelCoefficient[firstChirality_, secondChirality_, p_, qPower_] :=
 outerReduce@cornerCurvature[
   cornerMetricCoefficients[[chiralityIndex[firstChirality], p + 1]],
   cornerMetricCoefficients[[chiralityIndex[secondChirality], qPower + 1]]];
Print["assembling coefficientwise outer Cauchy-corner kernels"];
cornerKernelCoefficientData = Flatten@Table[Module[
    {coefficient, zOrder},
    coefficient = cornerKernelCoefficient[
      chiralities[[1]], chiralities[[2]], p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     zOrder = valuation[coefficient, outerZ];
     <|"Chiralities" -> chiralities, "Powers" -> {p, qPower},
       "OuterZOrder" -> zOrder,
       "TotalFrequencyDegree" -> p + qPower|>]],
   {chiralities, {{1, 1}, {1, -1}}}, {p, 0, 3}, {qPower, 0, 3}];

testConditions = {
   AnyTrue[Flatten[outerHCoefficientsZ], ! TrueQ[# === 0] &],
   AnyTrue[Flatten[outerDeltaPiCoefficientsZ], ! TrueQ[# === 0] &],
   modeTwoVectorDerivativeCalibrationResidual ===
    ConstantArray[0, {3, 3}],
   modeTwoHCalibrationResidual === ConstantArray[0, {3, 3}],
   modeTwoDeltaKCalibrationResidual === ConstantArray[0, {2, 2}],
   modeTwoDeltaPiCalibrationResidual === ConstantArray[0, {2, 2}],
   kernelCoefficientData === {},
   cornerPrefactorResidual === ConstantArray[0, {3, 3}],
   And @@ Thread[
     Lookup[cornerKernelCoefficientData, "OuterZOrder"] >= 1],
   And @@ Thread[
     Lookup[cornerKernelCoefficientData, "TotalFrequencyDegree"] <= 6]
   };
testIDs = {
   "outer induced-metric point jet is nonzero",
   "outer Brown--York momentum point jet is nonzero",
   "closed mode-two vector derivative jet matches direct differentiation",
   "closed mode-two metric matches the independent direct Lie derivative",
   "closed mode-two extrinsic curvature matches the full-metric linearization",
   "closed mode-two momentum matches the independent full-metric linearization",
   "the complete outer Brown--York source kernel vanishes identically",
   "outer Cauchy-corner prefactor matches its direct full-metric variation",
   "every nonzero outer Cauchy-corner coefficient is at least R inverse squared",
   "outer Cauchy-corner residual frequency degree is at most six"
   };

Print[<|"ModeTwoMetricCalibrationResidual" -> modeTwoHCalibrationResidual,
  "ModeTwoVectorDerivativeCalibrationResidual" ->
   modeTwoVectorDerivativeCalibrationResidual,
  "ModeTwoExtrinsicCalibrationResidual" -> modeTwoDeltaKCalibrationResidual,
  "ModeTwoMomentumCalibrationResidual" -> modeTwoDeltaPiCalibrationResidual,
  "OuterKernelCoefficientSummaries" -> kernelCoefficientData,
  "CornerPrefactorResidual" -> cornerPrefactorResidual,
  "OuterCornerKernelCoefficientSummaries" ->
   cornerKernelCoefficientData|>];
adsRindlerOuterBrownYorkKernelReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " outer Brown--York kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
