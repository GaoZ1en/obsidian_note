(* ::Package:: *)

(*
  Exact two-frequency Brown--York kernel for the compensated pulled-back wall
  perturbation

      Delta_X g = L_(f_L zeta) G,
      f_L = r^2/(L^2+r^2).

  The script reuses the independently calibrated algebraic point jet of
  ads_rindler_wall_closed_point_jet_check.wl and inserts f_L before taking
  either metric derivative.  After assembling the antisymmetric Brown--York
  products it takes the fused-horizon limit and studies the endpoint/core
  scaling

      lambda=L^2,       t=lambda q^2,

  coefficientwise in two symbolic Brown--Henneaux frequencies.  It proves
  that the apparent order-one layer is the endpoint Wronskian killed by the
  fixed-anchor projection, while the projected remainder is O(L^-2), not the
  O(L^-4) suggested by a fixed-point low-mode probe.  The companion direct
  finite-wall regression proves the exact diagonal
  tanh(epsilon/2)=1/(2L) with the conservative degree-seven L^-2 bound.
  No fitted finite-frequency ansatz is used.
*)

SetEnvironment[
 "ADS_RINDLER_WALL_POINT_JET_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_wall_closed_point_jet_check.wl"}]];

ClearAll[compensationLambda, coreScale, compensatedProfile,
  compensatedProfileValue, compensatedProfileFirst,
  compensatedProfileSecond, compensatedVectorCoefficientAt,
  compensatedVectorFirstCoefficientAt,
  compensatedVectorSecondCoefficientAt,
  compensatedPhaseVectorFirstCoefficientAt,
  compensatedPhaseVectorSecondCoefficientAt,
  compensatedHCoefficientAt, compensatedHDerivativeCoefficient,
  compensatedWallDerivativeCoefficient, componentParameterDecay,
  compensatedKernelCoefficient];

matrixContract[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
chiralityIndex[1] = 1;
chiralityIndex[-1] = 2;

(* Every derivative is taken in the ambient Rindler chart before the wall is
   restricted.  Use the already calibrated s=r^2 coordinate jet and the
   scalar chain rule; differentiating the expanded embedding expression a
   second time and only then rationalizing creates a gratuitously large
   intermediate expression. *)
rSquaredValue = wallReduce[rSquared];
rSquaredFirst = jValue[[2]];
rSquaredSecond = Table[jFirst[[a, 2, b]], {a, 3}, {b, 3}];
compensatedProfileValue = Cancel@Together[
   rSquaredValue/(compensationLambda + rSquaredValue)];
compensatedProfileFirst = Table[Cancel@Together[
   compensationLambda rSquaredFirst[[a]]/
    (compensationLambda + rSquaredValue)^2], {a, 3}];
compensatedProfileSecond = Table[Cancel@Together[
   compensationLambda rSquaredSecond[[a, b]]/
     (compensationLambda + rSquaredValue)^2 -
    2 compensationLambda rSquaredFirst[[a]] rSquaredFirst[[b]]/
     (compensationLambda + rSquaredValue)^3], {a, 3}, {b, 3}];

compensatedVectorCoefficients = Table[Map[Cancel@Together,
    compensatedProfileValue vectorCoefficientAt[power]],
   {power, 0, 2}];
compensatedVectorFirstCoefficients = Table[Map[Cancel@Together,
    compensatedProfileFirst[[a]] vectorCoefficientAt[power] +
     compensatedProfileValue vectorFirstCoefficientAt[power, a]],
   {power, 0, 2}, {a, 3}];
compensatedVectorSecondCoefficients = Table[Map[Cancel@Together,
    compensatedProfileSecond[[a, b]] vectorCoefficientAt[power] +
     compensatedProfileFirst[[a]] vectorFirstCoefficientAt[power, b] +
     compensatedProfileFirst[[b]] vectorFirstCoefficientAt[power, a] +
     compensatedProfileValue vectorSecondCoefficientAt[power, a, b]],
   {power, 0, 2}, {a, 3}, {b, 3}];

compensatedVectorCoefficientAt[power_] := If[0 <= power <= 2,
   compensatedVectorCoefficients[[power + 1]], zeroVector];
compensatedVectorFirstCoefficientAt[power_, a_] := If[0 <= power <= 2,
   compensatedVectorFirstCoefficients[[power + 1, a]], zeroVector];
compensatedVectorSecondCoefficientAt[power_, a_, b_] :=
 If[0 <= power <= 2,
  compensatedVectorSecondCoefficients[[power + 1, a, b]], zeroVector];

compensatedPhaseVectorFirstCoefficients = Table[Map[Cancel@Together,
    compensatedVectorFirstCoefficientAt[power, a] +
     If[power >= 1,
      logBaseFirst[[a]] compensatedVectorCoefficientAt[power - 1],
      zeroVector]],
   {power, 0, 3}, {a, 3}];
compensatedPhaseVectorSecondCoefficients = Table[Map[Cancel@Together,
    compensatedVectorSecondCoefficientAt[power, a, b] +
     If[power >= 1,
      logBaseFirst[[a]]
        compensatedVectorFirstCoefficientAt[power - 1, b] +
       logBaseFirst[[b]]
        compensatedVectorFirstCoefficientAt[power - 1, a] +
       logBaseSecond[[a, b]]
        compensatedVectorCoefficientAt[power - 1], zeroVector] +
     If[power >= 2,
      logBaseFirst[[a]] logBaseFirst[[b]]
       compensatedVectorCoefficientAt[power - 2], zeroVector]],
   {power, 0, 4}, {a, 3}, {b, 3}];

compensatedPhaseVectorFirstCoefficientAt[power_, a_] :=
 If[0 <= power <= 3,
  compensatedPhaseVectorFirstCoefficients[[power + 1, a]], zeroVector];
compensatedPhaseVectorSecondCoefficientAt[power_, a_, b_] :=
 If[0 <= power <= 4,
  compensatedPhaseVectorSecondCoefficients[[power + 1, a, b]], zeroVector];

Print["assembling compensated normalized metric point jet"];
compensatedHCoefficients = Table[Cancel@Together@Sum[
    compensatedVectorCoefficientAt[power][[c]]
      metricFirst[[c, a, b]] +
     metricValue[[c, b]]
      compensatedPhaseVectorFirstCoefficientAt[power, a][[c]] +
     metricValue[[a, c]]
      compensatedPhaseVectorFirstCoefficientAt[power, b][[c]], {c, 3}],
   {power, 0, 3}, {a, 3}, {b, 3}];
compensatedHCoefficientAt[power_] := If[0 <= power <= 3,
   compensatedHCoefficients[[power + 1]], zeroMatrixThree];
compensatedHDerivativeCoefficient[power_, d_, a_, b_] :=
 compensatedHDerivativeCoefficient[power, d, a, b] =
  If[0 <= power <= 4, Sum[
    compensatedPhaseVectorFirstCoefficientAt[power, d][[c]]
      metricFirst[[c, a, b]] +
     compensatedVectorCoefficientAt[power][[c]]
      metricSecond[[d, c, a, b]] +
     metricFirst[[d, c, b]]
      compensatedPhaseVectorFirstCoefficientAt[power, a][[c]] +
     metricValue[[c, b]]
      compensatedPhaseVectorSecondCoefficientAt[power, d, a][[c]] +
     metricFirst[[d, a, c]]
      compensatedPhaseVectorFirstCoefficientAt[power, b][[c]] +
     metricValue[[a, c]]
      compensatedPhaseVectorSecondCoefficientAt[power, d, b][[c]],
    {c, 3}], 0];

compensatedWallHCoefficients = Table[
   compensatedHCoefficientAt[power][[wallTangent, wallTangent]],
   {power, 0, 4}];
compensatedWallDerivativeCoefficient[power_, componentIndex_, tangentIndex_] :=
 compensatedHDerivativeCoefficient[power, wallTangent[[tangentIndex]],
   wallTangent[[componentIndex]], 2];
compensatedWallDeltaKCoefficients = Table[
   Print["assembling compensated wall delta K frequency power ", power];
   Table[Cancel@Together[
     -compensatedHDerivativeCoefficient[power, 2,
        wallTangent[[a]], wallTangent[[b]]]/2 +
      (compensatedWallDerivativeCoefficient[power, b, a] +
        compensatedWallDerivativeCoefficient[power, a, b])/2 -
      compensatedHCoefficientAt[power][[2, 2]] wallK[[a, b]]/2],
    {a, 2}, {b, 2}], {power, 0, 4}];
compensatedWallHCoefficientsRational = Map[wallRationalize,
   compensatedWallHCoefficients, {3}];
compensatedWallDeltaKCoefficientsRational = Map[wallRationalize,
   compensatedWallDeltaKCoefficients, {3}];
wallCschRational = (1 - wallHalfRadial^2)/(2 wallHalfRadial);
wallSechRational = (1 - wallHalfRadial^2)/(1 + wallHalfRadial^2);
wallCothRational = (1 + wallHalfRadial^2)/(2 wallHalfRadial);
compensatedWallDeltaPiCoefficientsRational = Table[Module[
    {hWall = compensatedWallHCoefficientsRational[[power + 1]],
     deltaK = compensatedWallDeltaKCoefficientsRational[[power + 1]]},
    {{Cancel@Together[(-hWall[[1, 1]] wallCschRational^2 +
          2 deltaK[[2, 2]] wallCschRational wallSechRational +
          hWall[[2, 2]] wallSechRational^2)/2],
      Cancel@Together[-deltaK[[1, 2]] wallCschRational
        wallSechRational]},
     {Cancel@Together[-deltaK[[1, 2]] wallCschRational
        wallSechRational],
      Cancel@Together[wallSechRational (
         (2 deltaK[[1, 1]] + hWall[[1, 1]] wallCothRational)
           wallCschRational -
          hWall[[2, 2]] wallSechRational)/2]}}],
   {power, 0, 4}];
Print["compensated wall point jet rationalized"];
If[Environment["ADS_RINDLER_COMPENSATED_WALL_SAVE_CACHE"] === "1",
 compensatedFullHCoefficientsRational = Map[wallRationalize,
   compensatedHCoefficients, {3}];
 DumpSave["/tmp/ads_rindler_compensated_wall_point_jet.mx", {
   compensatedFullHCoefficientsRational,
   compensatedWallHCoefficientsRational,
   compensatedWallDeltaPiCoefficientsRational}];
 Print["development compensated-wall cache saved"]];
If[Environment["ADS_RINDLER_COMPENSATED_WALL_JET_ONLY"] =!= "1",

compensatedMetricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedWallHCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
compensatedMomentumCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedWallDeltaPiCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];

chiralityMetric[chirality_, power_] :=
 compensatedMetricCoefficients[[chiralityIndex[chirality], power + 1]];
chiralityMomentum[chirality_, power_] :=
 compensatedMomentumCoefficients[[chiralityIndex[chirality], power + 1]];
(* Set y=tanh(epsilon/2) to zero only after the antisymmetric products have
   been assembled.  The separate Brown--York components are singular in this
   limit even though their curvature is finite. *)
horizonKernelCoefficient[ch1_, ch2_, p_, qPower_] :=
 horizonKernelCoefficient[ch1, ch2, p, qPower] =
  Cancel@Together@ComplexExpand@Total[
    Map[Cancel@Together[# /. wallHalfRadial -> 0] &,
     Join[
      Flatten[chiralityMomentum[ch1, p] chiralityMetric[ch2, qPower]],
      -Flatten[chiralityMomentum[ch2, qPower]
        chiralityMetric[ch1, p]]]]];

parameterDecay[expression_, parameter_] := Module[
  {rational = Together[expression]},
  Exponent[Denominator[rational], parameter] -
   Exponent[Numerator[rational], parameter]];
valuation[expression_, variable_] := If[TrueQ[expression === 0], Infinity,
  Exponent[Numerator@Together[expression], variable, Min] -
   Exponent[Denominator@Together[expression], variable, Min]];

Print["assembling fused-horizon coefficient table and uniform envelope"];
horizonCoefficientData = Flatten@Table[Module[
    {coefficient, scaled, inverseScaled, decay, leading},
    coefficient = horizonKernelCoefficient[1, secondChirality, p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     scaled = Cancel@Together[coefficient /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale}];
     inverseScaled = Cancel@Together[
       scaled /. layerScale -> 1/layerInverse];
     decay = valuation[inverseScaled, layerInverse];
     leading = Cancel@Together@Limit[
       inverseScaled/layerInverse^decay, layerInverse -> 0,
       Direction -> "FromAbove"];
     <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
       "Powers" -> {p, qPower}, "Degree" -> p + qPower,
       "CompactLambdaDecay" ->
        parameterDecay[coefficient, compensationLambda],
       "LayerDecay" -> decay, "LayerLeading" -> leading|>]],
   {secondChirality, {1, -1}}, {p, 0, 4}, {qPower, 0, 4}];

(* Write t=L^-2 and x=Lq.  After subtracting the four order-one endpoint
   Wronskian coefficients, every real/imaginary residual numerator contains
   t.  For a monomial t^a x^b on tx^2<=1,

       t^a x^b <= t x^(b-2(a-1))   (x>=1).

   The following exact audit checks both the x->0 and x->infinity powers.
   Positivity of every normalized denominator coefficient supplies a uniform
   lower bound by its t=0 polynomial. *)
horizonResidualEnvelopeData = Flatten@Table[Module[
    {coefficient, scaledT, realComponents},
    coefficient = horizonKernelCoefficient[1, secondChirality, p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     scaledT = Cancel@Together@PowerExpand[coefficient /.
        {compensationLambda -> 1/layerT,
         endpointQ -> layerQ Sqrt[layerT]}];
     realComponents = {Cancel@Together@ComplexExpand[Re[scaledT]],
       Cancel@Together@ComplexExpand[Im[scaledT]]};
     MapIndexed[Module[
       {component = #1, leadingT, residualT, numeratorRules,
        denominator, denominatorConstant, normalizedDenominator,
        denominatorRules, denominatorAtZero, tOrders, xOrders,
        effectiveXOrders},
       If[TrueQ[component === 0], Nothing,
        leadingT = Cancel@Together@Limit[component, layerT -> 0,
          Direction -> "FromAbove"];
        residualT = Cancel@Together[component - leadingT];
        If[TrueQ[residualT === 0], Nothing,
         numeratorRules = CoefficientRules[
           Expand[Numerator[residualT]], {layerT, layerQ}];
         denominator = Expand[Denominator[residualT]];
         denominatorConstant = denominator /.
           {layerT -> 0, layerQ -> 0};
         normalizedDenominator = Expand[
           denominator/denominatorConstant];
         denominatorRules = CoefficientRules[normalizedDenominator,
           {layerT, layerQ}];
         denominatorAtZero = Expand[
           normalizedDenominator /. layerT -> 0];
         tOrders = #[[1, 1]] & /@ numeratorRules;
         xOrders = #[[1, 2]] & /@ numeratorRules;
         effectiveXOrders = MapThread[#1 - 2 (#2 - 1) &,
           {xOrders, tOrders}];
         <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
           "Powers" -> {p, qPower},
           "Component" -> If[First[#2] == 1, "real", "imaginary"],
           "MinimumTOrder" -> Min[tOrders],
           "MinimumXOrder" -> Min[xOrders],
           "MaximumEffectiveXOrder" -> Max[effectiveXOrders],
           "DenominatorAtZeroDegree" ->
            Exponent[denominatorAtZero, layerQ],
           "DenominatorCoefficientsNonnegative" -> And @@
            (TrueQ[Last[#] >= 0] & /@ denominatorRules)|>]]] &,
      realComponents]]],
   {secondChirality, {1, -1}}, {p, 0, 4}, {qPower, 0, 4}];

layerProfile = 32 I layerQ^4/(1 + 2 layerQ^2)^4;
expectedOrderZero = {
  {"same", {0, 1}, layerProfile},
  {"same", {1, 0}, -layerProfile},
  {"mixed", {0, 1}, -layerProfile},
  {"mixed", {1, 0}, -layerProfile}};
actualOrderZero = ({Lookup[#, "Chirality"], Lookup[#, "Powers"],
      Lookup[#, "LayerLeading"]} &) /@
   Select[horizonCoefficientData, Lookup[#, "LayerDecay"] == 0 &];

(* At the right endpoint alpha=exp(i Pi/4).  The four order-zero entries sum
   to 32 F(x)(Q_f Dg-Df Q_g), where Q is endpoint value and D its tangential
   derivative.  P_A kills Q for both real sectors. *)
endpointCosineResidual = FullSimplify[
   Cos[Pi symbolicFrequency/4] +
    Cos[Pi symbolicFrequency/4] Cos[Pi]];
endpointSineResidual = FullSimplify[
   Sin[Pi symbolicFrequency/4] -
    Sin[Pi symbolicFrequency/4] Sin[Pi/2]];
horizonPhaseRatio = Cancel@Together[
   ((1 + I)/Sqrt[2] (1 - I endpointQ^2)/(1 + endpointQ^2))/
    ((1 + I)/Sqrt[2])];
horizonPhaseDifference = Cancel@Together[horizonPhaseRatio - 1];
horizonPhaseModulusSquared = Cancel@Together@ComplexExpand[
   Re[horizonPhaseRatio]^2 + Im[horizonPhaseRatio]^2];

horizonBase = (1 + I)/Sqrt[2] *
  (1 - I endpointQ^2)/(1 + endpointQ^2);
complexHorizonKernel[ch1_, frequency1_, ch2_, frequency2_] := Module[
  {phase1 = If[ch1 == 1, horizonBase^frequency1,
     algebraicConjugate[horizonBase]^frequency1],
   phase2 = If[ch2 == 1, horizonBase^frequency2,
     algebraicConjugate[horizonBase]^frequency2]},
  Cancel@Together[phase1 phase2 Sum[
     frequency1^p frequency2^qPower
      horizonKernelCoefficient[ch1, ch2, p, qPower],
     {p, 0, 4}, {qPower, 0, 4}]]];
projectedComponents[frequency_, "Cosine"] := {
  {1, frequency, 1/2}, {-1, frequency, 1/2},
  {1, 4, Cos[Pi frequency/4]/2},
  {-1, 4, Cos[Pi frequency/4]/2}};
projectedComponents[frequency_, "Sine"] := {
  {1, frequency, 1/(2 I)}, {-1, frequency, -1/(2 I)},
  {1, 2, -Sin[Pi frequency/4]/(2 I)},
  {-1, 2, Sin[Pi frequency/4]/(2 I)}};
projectedHorizonKernel[frequency1_, sector1_, frequency2_, sector2_] :=
 Cancel@Together@Sum[
   firstComponent[[3]] secondComponent[[3]]
    complexHorizonKernel[firstComponent[[1]], firstComponent[[2]],
     secondComponent[[1]], secondComponent[[2]]],
   {firstComponent, projectedComponents[frequency1, sector1]},
   {secondComponent, projectedComponents[frequency2, sector2]}];
selectedProjectedKernel = projectedHorizonKernel[3, "Cosine", 2, "Cosine"];
selectedProjectedLayer = Cancel@Together[selectedProjectedKernel /.
   {compensationLambda -> layerScale^2,
    endpointQ -> layerQ/layerScale}];
selectedProjectedLeading = Cancel@Together@Limit[
   layerScale^2 selectedProjectedLayer, layerScale -> Infinity];
selectedProjectedIntegral = FullSimplify@Integrate[
   selectedProjectedLeading/layerQ, {layerQ, 0, Infinity},
   Assumptions -> layerQ > 0];

testConditions = {
   Length[horizonCoefficientData] == 27,
   Max[Lookup[horizonCoefficientData, "Degree"]] == 6,
   Min[Lookup[horizonCoefficientData, "CompactLambdaDecay"]] >= 2,
   actualOrderZero === expectedOrderZero,
   Min[Lookup[horizonResidualEnvelopeData, "MinimumTOrder"]] >= 1,
   Min[Lookup[horizonResidualEnvelopeData, "MinimumXOrder"]] >= 4,
   And @@ Map[
     Lookup[#, "MaximumEffectiveXOrder"] <
       Lookup[#, "DenominatorAtZeroDegree"] &,
     horizonResidualEnvelopeData],
   And @@ Lookup[horizonResidualEnvelopeData,
     "DenominatorCoefficientsNonnegative"],
   endpointCosineResidual === 0 && endpointSineResidual === 0 &&
    Cancel@Together[horizonBase -
       (1 + I)/Sqrt[2] * (1 - I endpointQ^2)/(1 + endpointQ^2)] === 0 &&
    horizonPhaseDifference === -(1 + I) endpointQ^2/(1 + endpointQ^2) &&
    horizonPhaseModulusSquared === (1 + endpointQ^4)/(1 + endpointQ^2)^2,
   Cancel@Together[selectedProjectedLeading +
       16 Sqrt[2] (15 layerQ^4 + 44 layerQ^6)/
        (1 + 2 layerQ^2)^4] === 0 &&
    FullSimplify[selectedProjectedIntegral + 59 Sqrt[2]/3] === 0
   };
testIDs = {
   "fused-horizon compensated kernel has exactly 27 nonzero coefficients",
   "fused-horizon frequency degree is exactly six",
   "every fixed-compact coefficient decays at least as lambda inverse squared",
   "the only order-one layer coefficients are the endpoint Wronskian quartet",
   "every Wronskian-subtracted real component contains L inverse squared",
   "every residual envelope vanishes at least as x fourth at the endpoint",
   "every residual envelope is integrable at large scaled radius",
   "all normalized residual denominators have nonnegative coefficients",
   "fixed-anchor projection and exact phase identities remove the endpoint Wronskian",
   "the projected cosine-three/cosine-two layer has the exact L inverse squared integral"
   };

Print[<|
  "NonzeroCoefficientCount" -> Length[horizonCoefficientData],
  "OrderZeroCoefficients" -> actualOrderZero,
  "ResidualEnvelopeExtrema" -> <|
    "MinimumTOrder" ->
     Min[Lookup[horizonResidualEnvelopeData, "MinimumTOrder"]],
    "MinimumXOrder" ->
     Min[Lookup[horizonResidualEnvelopeData, "MinimumXOrder"]],
    "MinimumLargeXMargin" -> Min[
      Lookup[horizonResidualEnvelopeData, "DenominatorAtZeroDegree"] -
       Lookup[horizonResidualEnvelopeData, "MaximumEffectiveXOrder"]]|>,
  "SelectedProjectedLeading" -> selectedProjectedLeading,
  "SelectedProjectedIntegral" -> selectedProjectedIntegral|>];
adsRindlerCompensatedWallClosedPointJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " compensated fused-horizon wall-kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
];
