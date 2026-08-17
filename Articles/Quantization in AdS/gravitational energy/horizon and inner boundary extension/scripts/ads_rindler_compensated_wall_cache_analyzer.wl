(* ::Package:: *)

(*
  Development analyzer for the exact compensated-wall coefficient cache.
  The cache is not evidence; all final claims must be rerun from the source
  point-jet script without relying on /tmp state.
*)

ClearAll["Global`*"];
cachePath = "/tmp/ads_rindler_compensated_wall_point_jet.mx";
If[!FileExistsQ[cachePath], Print["missing cache: ", cachePath]; Exit[2]];
Get[cachePath];
Get["/tmp/ads_rindler_wall_closed_point_jet.mx"];

algebraicConjugate[expression_] := expression /.
   z_Complex :> Conjugate[z];
matrixContract[first_, second_] := Total@Flatten[first second];
valuation[expression_, variable_] := If[TrueQ[expression === 0], Infinity,
  Exponent[Numerator@Together[expression], variable, Min] -
   Exponent[Denominator@Together[expression], variable, Min]];
parameterDecay[expression_, parameter_] := Module[
  {rational = Together[expression], numeratorDegree, denominatorDegree},
  numeratorDegree = Exponent[Numerator[rational], parameter];
  denominatorDegree = Exponent[Denominator[rational], parameter];
  denominatorDegree - numeratorDegree];
leadingAtInfinity[expression_, parameter_] := Module[
  {rational = Together[expression], numerator, denominator,
   numeratorDegree, denominatorDegree},
  numerator = Numerator[rational];
  denominator = Denominator[rational];
  numeratorDegree = Exponent[numerator, parameter];
  denominatorDegree = Exponent[denominator, parameter];
  Cancel@Together[
    Coefficient[numerator, parameter, numeratorDegree]/
     Coefficient[denominator, parameter, denominatorDegree]]];
laurentCoefficientAssociation[expression_, variable_, maximumOrder_] :=
 Module[{rational = Together[expression], numerator, denominator,
   numeratorOrder, denominatorOrder, valuationOrder, numeratorRegular,
   denominatorRegular, coefficientAssociation = <||>, order,
   seriesIndex, numeratorCoefficient, denominatorCoefficient,
   convolution},
  numerator = Numerator[rational];
  denominator = Denominator[rational];
  numeratorOrder = Exponent[numerator, variable, Min];
  denominatorOrder = Exponent[denominator, variable, Min];
  valuationOrder = numeratorOrder - denominatorOrder;
  numeratorRegular = Cancel[numerator/variable^numeratorOrder];
  denominatorRegular = Cancel[denominator/variable^denominatorOrder];
  Do[
   order = valuationOrder + seriesIndex;
   If[order <= maximumOrder,
    numeratorCoefficient = Coefficient[numeratorRegular, variable,
      seriesIndex];
    convolution = Sum[
      Coefficient[denominatorRegular, variable, k]
       Lookup[coefficientAssociation, order - k, 0],
      {k, 1, seriesIndex}];
    AssociateTo[coefficientAssociation,
     order -> Cancel@Together[(numeratorCoefficient - convolution)/
       Coefficient[denominatorRegular, variable, 0]]]],
   {seriesIndex, 0, Max[0, maximumOrder - valuationOrder]}];
  coefficientAssociation];
metricPlus = compensatedWallHCoefficientsRational;
momentumPlus = compensatedWallDeltaPiCoefficientsRational;
metricMinus = Map[Cancel@Together, Map[algebraicConjugate, metricPlus, {3}],
  {3}];
momentumMinus = Map[Cancel@Together,
  Map[algebraicConjugate, momentumPlus, {3}], {3}];
If[Environment["COMPENSATED_WALL_COMPARE_MAIN_ARRAYS"] === "1",
 mainMetricCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedWallHCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
 mainMomentumCoefficients = Table[
   Map[Cancel@Together[If[chirality == 1, #,
       algebraicConjugate[#]]] &,
    compensatedWallDeltaPiCoefficientsRational[[power + 1]], {2}],
   {chirality, {1, -1}}, {power, 0, 4}];
 Print[<|"MetricPlusEqual" ->
    TrueQ[mainMetricCoefficients[[1]] === metricPlus],
   "MetricMinusEqual" ->
    TrueQ[mainMetricCoefficients[[2]] === metricMinus],
   "MetricMinusResidualZero" -> And @@ Flatten[Map[TrueQ[# === 0] &,
      Map[Cancel@Together, mainMetricCoefficients[[2]] - metricMinus,
       {3}], {3}]],
   "MomentumPlusEqual" ->
    TrueQ[mainMomentumCoefficients[[1]] === momentumPlus],
   "MomentumMinusEqual" ->
    TrueQ[mainMomentumCoefficients[[2]] === momentumMinus],
   "MomentumMinusResidualZero" -> And @@ Flatten[Map[TrueQ[# === 0] &,
      Map[Cancel@Together, mainMomentumCoefficients[[2]] - momentumMinus,
       {3}], {3}]]|>];
 Exit[0]];
If[Environment["COMPENSATED_WALL_SCALED_ARRAY_LEADING"] === "1",
 scaledMetricPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> layerY/layerScale}] &, metricPlus, {3}];
 scaledMomentumPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> layerY/layerScale}] &, momentumPlus, {3}];
 scaledArraySummary[array_] := Map[If[TrueQ[# === 0],
      <|"Zero" -> True|>, Module[{decay = parameterDecay[#, layerScale]},
       <|"Decay" -> decay,
        "Leading" -> leadingAtInfinity[#, layerScale]|>]] &,
    array, {3}];
 Print[<|"ScaledMetricPlus" -> scaledArraySummary[scaledMetricPlus],
   "ScaledMomentumPlus" -> scaledArraySummary[scaledMomentumPlus]|>];
 Exit[0]];
If[Environment["COMPENSATED_WALL_SCALED_KERNEL_LEADING_TABLE"] === "1",
 scaledMetricPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> layerY/layerScale}] &, metricPlus, {3}];
 scaledMomentumPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> layerY/layerScale}] &, momentumPlus, {3}];
 scaledMetricMinus = Map[Cancel@Together,
   Map[algebraicConjugate, scaledMetricPlus, {3}], {3}];
 scaledMomentumMinus = Map[Cancel@Together,
   Map[algebraicConjugate, scaledMomentumPlus, {3}], {3}];
 scaledEntryData[expression_] := If[TrueQ[expression === 0],
   <|"Zero" -> True, "Decay" -> Infinity, "Leading" -> 0|>,
   Module[{decay = parameterDecay[expression, layerScale]},
    <|"Zero" -> False, "Decay" -> decay,
     "Leading" -> leadingAtInfinity[expression, layerScale]|>]];
 metricData = Map[scaledEntryData, {scaledMetricPlus, scaledMetricMinus},
   {4}];
 momentumData = Map[scaledEntryData,
   {scaledMomentumPlus, scaledMomentumMinus}, {4}];
 scaledKernelLeadingData = Flatten@Table[Module[
    {firstIndex = If[firstChirality == 1, 1, 2],
     secondIndex = If[secondChirality == 1, 1, 2], terms,
     nonzeroTerms, minimumDecay, leadingSum},
    terms = Join[
      Flatten@Table[<|
        "Decay" -> momentumData[[firstIndex, p + 1, a, b, "Decay"]] +
          metricData[[secondIndex, qPower + 1, a, b, "Decay"]],
        "Leading" ->
          momentumData[[firstIndex, p + 1, a, b, "Leading"]]
           metricData[[secondIndex, qPower + 1, a, b, "Leading"]]|>,
       {a, 2}, {b, 2}],
      Flatten@Table[<|
        "Decay" -> momentumData[[secondIndex, qPower + 1, a, b, "Decay"]] +
          metricData[[firstIndex, p + 1, a, b, "Decay"]],
        "Leading" ->
          -momentumData[[secondIndex, qPower + 1, a, b, "Leading"]]
           metricData[[firstIndex, p + 1, a, b, "Leading"]]|>,
       {a, 2}, {b, 2}]];
    nonzeroTerms = Select[terms,
      Lookup[#, "Decay"] =!= Infinity &&
       ! TrueQ[Lookup[#, "Leading"] === 0] &];
    If[nonzeroTerms === {}, Nothing,
     minimumDecay = Min[Lookup[nonzeroTerms, "Decay"]];
     leadingSum = Cancel@Together@Total[
       Lookup[Select[nonzeroTerms,
         Lookup[#, "Decay"] == minimumDecay &], "Leading"]];
     <|"Chiralities" -> {firstChirality, secondChirality},
       "Powers" -> {p, qPower}, "Degree" -> p + qPower,
       "CandidateDecay" -> minimumDecay,
       "CandidateLeadingZero" -> TrueQ[leadingSum === 0],
       "CandidateLeading" -> leadingSum|>]],
   {firstChirality, {1}}, {secondChirality, {1, -1}},
   {p, 0, 4}, {qPower, 0, 4}];
 Print[<|"ScaledKernelLeadingData" -> scaledKernelLeadingData|>];
 Exit[0]];
If[Environment["COMPENSATED_WALL_FIXED_ETA_ARRAY_AUDIT"] === "1",
 fixedEtaMetric = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> 1/(2 layerScale)}] &, metricPlus, {3}];
 fixedEtaMomentum = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> 1/(2 layerScale)}] &, momentumPlus, {3}];
 auditScaledEntry[expression_, label_] := If[TrueQ[expression === 0],
   Nothing, Module[{decay, normalized, tExpression, realComponents},
    decay = parameterDecay[expression, layerScale];
    normalized = Cancel@Together[layerScale^decay expression];
    tExpression = Cancel@Together@PowerExpand[
      normalized /. layerScale -> 1/Sqrt[layerT]];
    realComponents = {Cancel@Together@ComplexExpand[Re[tExpression]],
      Cancel@Together@ComplexExpand[Im[tExpression]]};
    MapIndexed[If[TrueQ[#1 === 0], Nothing, Module[
       {component = #1, leading, residual, numeratorRules, denominator,
        denominatorConstant, normalizedDenominator, denominatorRules,
        denominatorAtZero, tOrders, xOrders, effectiveXOrders},
       leading = Cancel@Together[component /. layerT -> 0];
       residual = Cancel@Together[component - leading];
       If[TrueQ[residual === 0],
        <|"Label" -> label,
          "Component" -> If[First[#2] == 1, "real", "imaginary"],
          "Decay" -> decay, "RationalInT" -> FreeQ[component, Sqrt[layerT]],
          "LeadingQOrder" -> valuation[leading, layerQ],
          "LeadingQLargeDecay" -> parameterDecay[leading, layerQ],
          "ResidualZero" -> True,
          "DenominatorCoefficientsNonnegative" -> True|>,
        numeratorRules = CoefficientRules[
          Expand[Numerator[residual]], {layerT, layerQ}];
        denominator = Expand[Denominator[residual]];
        denominatorConstant = denominator /.
          {layerT -> 0, layerQ -> 0};
        normalizedDenominator = Expand[denominator/denominatorConstant];
        denominatorRules = CoefficientRules[normalizedDenominator,
          {layerT, layerQ}];
        denominatorAtZero = Expand[
          normalizedDenominator /. layerT -> 0];
        tOrders = #[[1, 1]] & /@ numeratorRules;
        xOrders = #[[1, 2]] & /@ numeratorRules;
        effectiveXOrders = MapThread[#1 - 2 (#2 - 1) &,
          {xOrders, tOrders}];
        <|"Label" -> label,
          "Component" -> If[First[#2] == 1, "real", "imaginary"],
          "Decay" -> decay, "RationalInT" -> FreeQ[component, Sqrt[layerT]],
          "LeadingQOrder" -> valuation[leading, layerQ],
          "LeadingQLargeDecay" -> parameterDecay[leading, layerQ],
          "ResidualZero" -> False,
          "ResidualMinimumTOrder" -> Min[tOrders],
          "ResidualMinimumQOrder" -> Min[xOrders],
          "ResidualMaximumEffectiveQOrder" -> Max[effectiveXOrders],
          "ResidualDenominatorAtZeroDegree" ->
           Exponent[denominatorAtZero, layerQ],
          "DenominatorCoefficientsNonnegative" -> And @@
           (TrueQ[Last[#] >= 0] & /@ denominatorRules)|>]]] &,
     realComponents]]];
 fixedEtaArrayAudit = Flatten@Join[
   MapIndexed[auditScaledEntry[#1,
       {"metric", First[#2] - 1, #2[[2]], #2[[3]]}] &,
    fixedEtaMetric, {3}],
   MapIndexed[auditScaledEntry[#1,
       {"momentum", First[#2] - 1, #2[[2]], #2[[3]]}] &,
    fixedEtaMomentum, {3}]];
 Print[<|"FixedEtaArrayAudit" -> fixedEtaArrayAudit|>];
 Exit[0]];

If[Environment["COMPENSATED_WALL_PROJECTED_HORIZON"] === "1",
 horizonBase = Cancel@Together[
   (1 + I)/Sqrt[2] (1 - I endpointQ^2)/(1 + endpointQ^2)];
 chiralityMetric[chirality_, power_] := If[chirality == 1,
   metricPlus[[power + 1]], metricMinus[[power + 1]]];
 chiralityMomentum[chirality_, power_] := If[chirality == 1,
   momentumPlus[[power + 1]], momentumMinus[[power + 1]]];
 horizonKernelCoefficient[ch1_, ch2_, p_, qPower_] :=
  horizonKernelCoefficient[ch1, ch2, p, qPower] =
   Cancel@Together@ComplexExpand@Total[
     Map[Cancel@Together[# /. wallHalfRadial -> 0] &,
      Join[
       Flatten[chiralityMomentum[ch1, p]
         chiralityMetric[ch2, qPower]],
       -Flatten[chiralityMomentum[ch2, qPower]
         chiralityMetric[ch1, p]]]]];
 complexHorizonKernel[ch1_, frequency1_, ch2_, frequency2_] := Module[
   {phase1 = If[ch1 == 1, horizonBase^frequency1,
      algebraicConjugate[horizonBase]^frequency1],
    phase2 = If[ch2 == 1, horizonBase^frequency2,
      algebraicConjugate[horizonBase]^frequency2]},
   Cancel@Together[phase1 phase2 Sum[
      frequency1^p frequency2^qPower
       horizonKernelCoefficient[ch1, ch2, p, qPower],
      {p, 0, 4}, {qPower, 0, 4}]]];
 If[Environment["COMPENSATED_WALL_HORIZON_TABLE"] === "1",
  horizonTable = Flatten@Table[Module[
     {coefficient, scaled, inverseScaled, decay, leading, residual,
      inverseResidual, residualDecay, residualLeading},
     coefficient = horizonKernelCoefficient[1, secondChirality, p, qPower];
     If[TrueQ[coefficient === 0], Nothing,
      scaled = Cancel@Together[coefficient /.
         {compensationLambda -> layerScale^2,
          endpointQ -> layerQ/layerScale}];
      inverseScaled = Cancel@Together[scaled /.
         layerScale -> 1/layerInverse];
      decay = valuation[inverseScaled, layerInverse];
      leading = Cancel@Together@Limit[
        inverseScaled/layerInverse^decay, layerInverse -> 0,
        Direction -> "FromAbove"];
      residual = If[decay == 0, Cancel@Together[scaled - leading], scaled];
      inverseResidual = Cancel@Together[
        residual /. layerScale -> 1/layerInverse];
      residualDecay = valuation[inverseResidual, layerInverse];
      residualLeading = Cancel@Together@Limit[
        inverseResidual/layerInverse^residualDecay,
        layerInverse -> 0, Direction -> "FromAbove"];
      <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
        "Powers" -> {p, qPower}, "Degree" -> p + qPower,
        "LayerDecay" -> decay, "LayerLeading" -> leading,
        "ResidualDecay" -> residualDecay,
        "ResidualLeadingQOrder" -> valuation[residualLeading, layerQ],
        "ResidualLeadingQLargeDecay" ->
         parameterDecay[residualLeading, layerQ]|>]],
    {secondChirality, {1, -1}}, {p, 0, 4}, {qPower, 0, 4}];
  Print[<|"HorizonCoefficientTable" -> horizonTable|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_HORIZON_MONOMIAL_AUDIT"] === "1",
  horizonMonomialTable = Flatten@Table[Module[
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
  Print[<|"HorizonMonomialTable" -> horizonMonomialTable|>];
  Exit[0]];
 projectedComponents[frequency_, "Cosine"] := {
   {1, frequency, 1/2}, {-1, frequency, 1/2},
   {1, 4, Cos[Pi frequency/4]/2},
   {-1, 4, Cos[Pi frequency/4]/2}};
 projectedComponents[frequency_, "Sine"] := {
   {1, frequency, 1/(2 I)}, {-1, frequency, -1/(2 I)},
   {1, 2, -Sin[Pi frequency/4]/(2 I)},
   {-1, 2, Sin[Pi frequency/4]/(2 I)}};
 firstFrequency = ToExpression[Environment["COMPENSATED_WALL_FIRST_FREQUENCY"]];
 secondFrequency = ToExpression[Environment["COMPENSATED_WALL_SECOND_FREQUENCY"]];
 firstSector = Environment["COMPENSATED_WALL_FIRST_SECTOR"];
 secondSector = Environment["COMPENSATED_WALL_SECOND_SECTOR"];
 firstComponents = projectedComponents[firstFrequency, firstSector];
 secondComponents = projectedComponents[secondFrequency, secondSector];
 projectedKernel = Cancel@Together@Sum[
   firstComponent[[3]] secondComponent[[3]]
    complexHorizonKernel[firstComponent[[1]], firstComponent[[2]],
     secondComponent[[1]], secondComponent[[2]]],
   {firstComponent, firstComponents},
   {secondComponent, secondComponents}];
 projectedLayerKernel = Cancel@Together[projectedKernel /.
    {compensationLambda -> layerScale^2,
     endpointQ -> layerQ/layerScale}];
 projectedLayerInverseKernel = Cancel@Together[
   projectedLayerKernel /. layerScale -> 1/layerInverse];
 If[Environment["COMPENSATED_WALL_PROJECTED_SPECIALIZE"] === "1",
  projectedLayerSpecialized = Cancel@Together[
    projectedLayerKernel /. layerQ -> 2/5];
  Print[<|"ProjectedPair" -> {{firstSector, firstFrequency},
       {secondSector, secondFrequency}},
    "ProjectedKernelLeafCount" -> LeafCount[projectedKernel],
    "ProjectedLayerLeafCount" -> LeafCount[projectedLayerKernel],
    "SpecializedLayerDecay" ->
     parameterDecay[projectedLayerSpecialized, layerScale],
    "SpecializedLayerLeading" ->
     leadingAtInfinity[projectedLayerSpecialized, layerScale],
    "SpecializedLayerLeafCount" -> LeafCount[projectedLayerSpecialized]|>];
  Exit[0]];
 projectedLayerDecay = If[TrueQ[projectedLayerKernel === 0], Infinity,
   valuation[projectedLayerInverseKernel, layerInverse]];
 projectedLayerLeading = If[TrueQ[projectedLayerKernel === 0], 0,
   Cancel@Together@Limit[
     projectedLayerInverseKernel/layerInverse^projectedLayerDecay,
     layerInverse -> 0, Direction -> "FromAbove"]];
 projectedLayerDirectLeading = If[TrueQ[projectedLayerKernel === 0], 0,
   Cancel@Together@Limit[layerScale^projectedLayerDecay
     projectedLayerKernel, layerScale -> Infinity]];
 Print[<|"ProjectedPair" -> {{firstSector, firstFrequency},
      {secondSector, secondFrequency}},
    "ProjectedKernelZero" -> TrueQ[projectedKernel === 0],
    "ProjectedLayerLDecay" -> projectedLayerDecay,
    "ProjectedLayerLeading" -> projectedLayerLeading,
    "ProjectedLayerDirectLeading" -> projectedLayerDirectLeading,
    "ProjectedLayerLeadingQOrder" -> If[
      TrueQ[projectedLayerLeading === 0], Infinity,
      valuation[projectedLayerLeading, layerQ]],
    "ProjectedLayerLeadingQLargeDecay" -> If[
      TrueQ[projectedLayerLeading === 0], Infinity,
      parameterDecay[projectedLayerLeading, layerQ]],
    "ProjectedLayerLeadingIntegral" -> If[
      TrueQ[projectedLayerLeading === 0], 0,
      Integrate[projectedLayerLeading/layerQ,
       {layerQ, 0, Infinity}, Assumptions -> layerQ > 0]]|>];
 Exit[0]];

Print[<|
  "MetricLeafCounts" -> Map[LeafCount, metricPlus, {3}],
  "MomentumLeafCounts" -> Map[LeafCount, momentumPlus, {3}]|>];

If[Environment["COMPENSATED_WALL_FIXED_ETA_PHASE_AUDIT"] === "1",
 fixedEtaEndpointBase = (1 + I)/Sqrt[2];
 fixedEtaBaseRational = Cancel@Together[baseValue /.
    {Cosh[rindlerChi] ->
      (1 + wallHalfRadial^2)/(1 - wallHalfRadial^2),
     Sinh[rindlerChi] ->
      2 wallHalfRadial/(1 - wallHalfRadial^2)}];
 fixedEtaPhaseRatio = Cancel@Together[
   fixedEtaBaseRational/fixedEtaEndpointBase /.
    {endpointQ -> layerQ/layerScale,
     wallHalfRadial -> 1/(2 layerScale)}];
 fixedEtaPhaseT = Cancel@Together@PowerExpand[
   fixedEtaPhaseRatio /. layerScale -> 1/Sqrt[layerT]];
 fixedEtaPhaseDifferenceOverT = Cancel@Together[
   (fixedEtaPhaseT - 1)/layerT];
 fixedEtaWProfile =
  32 I (layerQ^4 + layerQ^3/Sqrt[2])/(1 + 2 layerQ^2)^4;
 fixedEtaWeightedPhaseResidual = Cancel@Together[
   fixedEtaWProfile fixedEtaPhaseDifferenceOverT];
 auditPhaseComponent[component_] := If[TrueQ[component === 0], Nothing,
   Module[{numeratorRules, denominator, denominatorConstant,
     normalizedDenominator, denominatorRules, denominatorAtZero,
     tOrders, xOrders, effectiveXOrders},
    numeratorRules = CoefficientRules[Expand[Numerator[component]],
      {layerT, layerQ}];
    denominator = Expand[Denominator[component]];
    denominatorConstant = denominator /.
      {layerT -> 0, layerQ -> 0};
    normalizedDenominator = Expand[denominator/denominatorConstant];
    denominatorRules = CoefficientRules[normalizedDenominator,
      {layerT, layerQ}];
    denominatorAtZero = Expand[normalizedDenominator /. layerT -> 0];
    tOrders = #[[1, 1]] & /@ numeratorRules;
    xOrders = #[[1, 2]] & /@ numeratorRules;
    effectiveXOrders = MapThread[#1 - 2 #2 &, {xOrders, tOrders}];
    <|"MinimumXOrder" -> Min[xOrders],
      "MaximumEffectiveXOrder" -> Max[effectiveXOrders],
      "DenominatorAtZeroDegree" -> Exponent[denominatorAtZero, layerQ],
      "DenominatorCoefficientsNonnegative" -> And @@
       (TrueQ[FullSimplify[Last[#] >= 0]] & /@ denominatorRules)|>]];
 fixedEtaPhaseAudit = auditPhaseComponent /@ {
    Cancel@Together@ComplexExpand[Re[fixedEtaWeightedPhaseResidual]],
    Cancel@Together@ComplexExpand[Im[fixedEtaWeightedPhaseResidual]]};
 fixedEtaPhaseModulusSquared = Cancel@Together@ComplexExpand[
   Re[fixedEtaPhaseT]^2 + Im[fixedEtaPhaseT]^2];
 fixedEtaPhaseModulusDefect = Factor[
   1 - fixedEtaPhaseModulusSquared];
 Print[<|"FixedEtaPhaseRatio" -> fixedEtaPhaseT,
   "FixedEtaPhaseRationalInT" -> FreeQ[fixedEtaPhaseT, Sqrt[layerT]],
   "FixedEtaPhaseModulusDefect" -> fixedEtaPhaseModulusDefect,
   "FixedEtaWeightedPhaseAudit" -> fixedEtaPhaseAudit|>];
 Exit[0]];

If[Environment["COMPENSATED_WALL_FIXED_ETA_UNIFORM_ALL"] === "1",
 Print["precomputing fixed-eta metric and momentum arrays"];
 fixedEtaMetricPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> 1/(2 layerScale)}] &, metricPlus, {3}];
 fixedEtaMomentumPlus = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> 1/(2 layerScale)}] &, momentumPlus, {3}];
 fixedEtaMetricMinus = Map[Cancel@Together,
   Map[algebraicConjugate, fixedEtaMetricPlus, {3}], {3}];
 fixedEtaMomentumMinus = Map[Cancel@Together,
   Map[algebraicConjugate, fixedEtaMomentumPlus, {3}], {3}];
 fixedEtaWProfile =
  32 I (layerQ^4 + layerQ^3/Sqrt[2])/(1 + 2 layerQ^2)^4;
 fixedEtaWronskian[secondChirality_, p_, qPower_] := Which[
   secondChirality == 1 && {p, qPower} === {0, 1},
     fixedEtaWProfile,
   secondChirality == 1 && {p, qPower} === {1, 0},
     -fixedEtaWProfile,
   secondChirality == -1 && MemberQ[{{0, 1}, {1, 0}}, {p, qPower}],
     -fixedEtaWProfile,
   True, 0];
 fixedEtaKernelCoefficient[secondChirality_, p_, qPower_] := Module[
   {secondMetric = If[secondChirality == 1,
      fixedEtaMetricPlus, fixedEtaMetricMinus],
    secondMomentum = If[secondChirality == 1,
      fixedEtaMomentumPlus, fixedEtaMomentumMinus], products},
   products = Join[
     Flatten[fixedEtaMomentumPlus[[p + 1]]
       secondMetric[[qPower + 1]]],
     -Flatten[secondMomentum[[qPower + 1]]
       fixedEtaMetricPlus[[p + 1]]]];
   Cancel@Together@Total[products]];
 auditFixedEtaUniformComponent[component_] := If[TrueQ[component === 0],
   Nothing, Module[{numeratorRules, denominator, denominatorConstant,
     normalizedDenominator, denominatorRules, denominatorAtZero,
     tOrders, xOrders, effectiveXOrders},
    numeratorRules = CoefficientRules[Expand[Numerator[component]],
      {layerT, layerQ}];
    denominator = Expand[Denominator[component]];
    denominatorConstant = denominator /.
      {layerT -> 0, layerQ -> 0};
    normalizedDenominator = Expand[denominator/denominatorConstant];
    denominatorRules = CoefficientRules[normalizedDenominator,
      {layerT, layerQ}];
    denominatorAtZero = Expand[normalizedDenominator /. layerT -> 0];
    tOrders = #[[1, 1]] & /@ numeratorRules;
    xOrders = #[[1, 2]] & /@ numeratorRules;
    effectiveXOrders = MapThread[#1 - 2 #2 &, {xOrders, tOrders}];
    <|"MinimumTOrder" -> Min[tOrders],
      "MinimumXOrder" -> Min[xOrders],
      "MaximumEffectiveXOrder" -> Max[effectiveXOrders],
      "DenominatorAtZeroDegree" -> Exponent[denominatorAtZero, layerQ],
      "DenominatorCoefficientsNonnegative" -> And @@
       (TrueQ[FullSimplify[Last[#] >= 0]] & /@ denominatorRules)|>]];
 fixedEtaRepresentativePairs = Join[
   ({1, #[[1]], #[[2]]} &) /@
    Select[Tuples[Range[0, 4], 2], First[#] < Last[#] &],
   ({-1, #[[1]], #[[2]]} &) /@
    Select[Tuples[Range[0, 4], 2], First[#] <= Last[#] &]];
 fixedEtaUniformData = Map[Function[representative, Module[
    {coefficient, kernelT, wronskian, leading, uniformResidual,
     realComponents, componentAudit,
     secondChirality = representative[[1]], p = representative[[2]],
     qPower = representative[[3]]},
    Print["auditing fixed-eta coefficient ", secondChirality, " ",
      {p, qPower}];
    coefficient = fixedEtaKernelCoefficient[secondChirality, p, qPower];
    If[TrueQ[coefficient === 0],
     <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
       "Powers" -> {p, qPower}, "Degree" -> p + qPower,
       "Zero" -> True, "RationalInT" -> True,
       "LeadingMatchesWronskian" ->
        TrueQ[fixedEtaWronskian[secondChirality, p, qPower] === 0],
       "ComponentAudit" -> {}|>,
     kernelT = Cancel@Together@PowerExpand[
       coefficient /. layerScale -> 1/Sqrt[layerT]];
     wronskian = fixedEtaWronskian[secondChirality, p, qPower];
     leading = Cancel@Together[kernelT /. layerT -> 0];
     uniformResidual = Cancel@Together[(kernelT - wronskian)/layerT];
     realComponents = {
       Cancel@Together@ComplexExpand[Re[uniformResidual]],
       Cancel@Together@ComplexExpand[Im[uniformResidual]]};
     componentAudit = auditFixedEtaUniformComponent /@ realComponents;
     <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
       "Powers" -> {p, qPower}, "Degree" -> p + qPower,
       "Zero" -> False, "RationalInT" -> FreeQ[kernelT, Sqrt[layerT]],
       "LeadingMatchesWronskian" ->
        TrueQ[Cancel@Together[leading - wronskian] === 0],
       "ComponentAudit" -> componentAudit|>]]],
   fixedEtaRepresentativePairs];
 fixedEtaNonzeroData = Select[fixedEtaUniformData, ! Lookup[#, "Zero"] &];
 fixedEtaComponentAudit = Flatten[Lookup[fixedEtaUniformData,
    "ComponentAudit"]];
 Print[<|
   "NonzeroCoefficientCount" -> Length[fixedEtaNonzeroData],
   "MaximumFrequencyDegree" -> Max[Lookup[fixedEtaNonzeroData, "Degree"]],
   "AllRationalInT" -> And @@ Lookup[fixedEtaUniformData, "RationalInT"],
   "AllLeadingTermsMatchWronskian" ->
    And @@ Lookup[fixedEtaUniformData, "LeadingMatchesWronskian"],
   "SameChiralityReconstruction" ->
    "K++(p,q)=-K++(q,p), K++(p,p)=0",
   "MixedChiralityReconstruction" ->
    "K+-(p,q)=-Conjugate[K+-(q,p)]",
   "MinimumUniformXOrder" ->
    Min[Lookup[fixedEtaComponentAudit, "MinimumXOrder"]],
   "MinimumUniformLargeXMargin" -> Min[
     Lookup[fixedEtaComponentAudit, "DenominatorAtZeroDegree"] -
      Lookup[fixedEtaComponentAudit, "MaximumEffectiveXOrder"]],
   "AllUniformDenominatorsNonnegative" -> And @@
    Lookup[fixedEtaComponentAudit,
      "DenominatorCoefficientsNonnegative"]|>];
 Exit[0]];

If[Environment["COMPENSATED_WALL_ANALYZE_ONE"] === "1",
 p = ToExpression[Environment["COMPENSATED_WALL_P"]];
 qPower = ToExpression[Environment["COMPENSATED_WALL_Q"]];
 chirality = Environment["COMPENSATED_WALL_CHIRALITY"];
 secondMetric = If[chirality === "same", metricPlus, metricMinus];
 secondMomentum = If[chirality === "same", momentumPlus, momentumMinus];
 products = Join[
   Flatten[momentumPlus[[p + 1]] secondMetric[[qPower + 1]]],
   -Flatten[secondMomentum[[qPower + 1]] metricPlus[[p + 1]]]];
 If[Environment["COMPENSATED_WALL_LAYER_PRODUCT_DECAYS_ONLY"] === "1",
  nonzeroProducts = Select[products, ! TrueQ[# === 0] &];
  layerProducts = Map[Cancel@Together[# /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale,
         wallHalfRadial -> layerY/layerScale}] &, nonzeroProducts];
  layerProductDecays = parameterDecay[#, layerScale] & /@ layerProducts;
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "MinimumProductLDecay" -> If[layerProductDecays === {}, Infinity,
      Min[layerProductDecays]],
    "ProductLDecayParity" -> DeleteDuplicates[Mod[layerProductDecays, 2]],
    "ProductLDecays" -> layerProductDecays|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_FIXED_ETA_COEFFICIENT"] === "1",
  fixedEtaProducts = Map[Cancel@Together[# /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale,
         wallHalfRadial -> 1/(2 layerScale)}] &, products];
  fixedEtaCoefficient = TimeConstrained[
    Cancel@Together[Total[fixedEtaProducts]], 300, $Failed];
  If[fixedEtaCoefficient === $Failed,
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "FixedEtaCoefficient" -> $Failed|>]; Exit[3]];
  If[TrueQ[fixedEtaCoefficient === 0],
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "FixedEtaZero" -> True|>]; Exit[0]];
  If[Environment["COMPENSATED_WALL_FIXED_ETA_UNIFORM_ONE"] === "1",
   fixedEtaWProfile =
    32 I (layerQ^4 + layerQ^3/Sqrt[2])/(1 + 2 layerQ^2)^4;
   fixedEtaWronskian = Which[
     chirality === "same" && {p, qPower} === {0, 1},
       fixedEtaWProfile,
     chirality === "same" && {p, qPower} === {1, 0},
       -fixedEtaWProfile,
     chirality === "mixed" && MemberQ[{{0, 1}, {1, 0}}, {p, qPower}],
       -fixedEtaWProfile,
     True, 0];
   fixedEtaTKernel = Cancel@Together@PowerExpand[
     fixedEtaCoefficient /. layerScale -> 1/Sqrt[layerT]];
   fixedEtaUniformResidual = Cancel@Together[
     (fixedEtaTKernel - fixedEtaWronskian)/layerT];
   fixedEtaUniformComponents = {
     Cancel@Together@ComplexExpand[Re[fixedEtaUniformResidual]],
     Cancel@Together@ComplexExpand[Im[fixedEtaUniformResidual]]};
   auditUniformComponent[component_] := If[TrueQ[component === 0],
     Nothing, Module[{numeratorRules, denominator,
       denominatorConstant, normalizedDenominator, denominatorRules,
       denominatorAtZero, tOrders, xOrders, effectiveXOrders},
      numeratorRules = CoefficientRules[Expand[Numerator[component]],
        {layerT, layerQ}];
      denominator = Expand[Denominator[component]];
      denominatorConstant = denominator /.
        {layerT -> 0, layerQ -> 0};
      normalizedDenominator = Expand[denominator/denominatorConstant];
      denominatorRules = CoefficientRules[normalizedDenominator,
        {layerT, layerQ}];
      denominatorAtZero = Expand[normalizedDenominator /. layerT -> 0];
      tOrders = #[[1, 1]] & /@ numeratorRules;
      xOrders = #[[1, 2]] & /@ numeratorRules;
      effectiveXOrders = MapThread[#1 - 2 #2 &, {xOrders, tOrders}];
      <|"MinimumTOrder" -> Min[tOrders],
        "MinimumXOrder" -> Min[xOrders],
        "MaximumEffectiveXOrder" -> Max[effectiveXOrders],
        "DenominatorAtZeroDegree" ->
         Exponent[denominatorAtZero, layerQ],
        "DenominatorCoefficientsNonnegative" -> And @@
         (TrueQ[Last[#] >= 0] & /@ denominatorRules)|>]];
   fixedEtaUniformAudit =
    auditUniformComponent /@ fixedEtaUniformComponents;
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "FixedEtaUniformRationalInT" ->
      FreeQ[fixedEtaTKernel, Sqrt[layerT]],
     "FixedEtaWronskian" -> fixedEtaWronskian,
     "FixedEtaUniformAudit" -> fixedEtaUniformAudit|>];
   Exit[0]];
  fixedEtaInverse = Cancel@Together[
    fixedEtaCoefficient /. layerScale -> 1/layerInverse];
  fixedEtaDecay = valuation[fixedEtaInverse, layerInverse];
  fixedEtaLeading = Cancel@Together@Limit[
    fixedEtaInverse/layerInverse^fixedEtaDecay,
    layerInverse -> 0, Direction -> "FromAbove"];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "FixedEtaDecay" -> fixedEtaDecay,
    "FixedEtaLeading" -> fixedEtaLeading,
    "FixedEtaLeadingQOrder" -> valuation[fixedEtaLeading, layerQ],
    "FixedEtaLeadingQLargeDecay" ->
     parameterDecay[fixedEtaLeading, layerQ],
    "FixedEtaCoefficientLeafCount" -> LeafCount[fixedEtaCoefficient]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_BOUND_ONLY"] === "1",
  productSummaries = Map[If[TrueQ[# === 0], Nothing,
      Module[{layerProduct, layerLeadingProduct},
       layerProduct = Cancel@Together[# /.
          {compensationLambda -> layerScale^2,
           endpointQ -> layerQ/layerScale,
           wallHalfRadial -> layerY/layerScale}];
       layerLeadingProduct = leadingAtInfinity[layerProduct, layerScale];
       <|"LeafCount" -> LeafCount[#],
         "CompactLambdaDecay" -> parameterDecay[#, compensationLambda],
         "LayerLDecay" -> parameterDecay[layerProduct, layerScale],
         "LayerLeadingQOrder" -> valuation[layerLeadingProduct, layerQ],
         "LayerLeadingQLargeDecay" ->
          parameterDecay[layerLeadingProduct, layerQ],
         "LayerLeadingYOrder" -> valuation[layerLeadingProduct, layerY],
         "LayerLeadingLeafCount" -> LeafCount[layerLeadingProduct]|>]] &,
    products];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "ProductSummaries" -> productSummaries|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_LAYER_LEADING_ONLY"] === "1",
  layerProducts = Map[Cancel@Together[# /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale,
         wallHalfRadial -> layerY/layerScale}] &, products];
  layerProductDecays = parameterDecay[#, layerScale] & /@ layerProducts;
  minimumLayerDecay = Min[layerProductDecays];
  layerLeadingTerms = MapThread[
    If[#2 === minimumLayerDecay,
      leadingAtInfinity[#1, layerScale], 0] &,
    {layerProducts, layerProductDecays}];
  layerLeadingSum = Cancel@Together[Total[layerLeadingTerms]];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "ProductMinimumLDecay" -> minimumLayerDecay,
    "LeadingSumZero" -> TrueQ[layerLeadingSum === 0],
    "LeadingSum" -> layerLeadingSum,
    "LeadingSumQOrder" -> If[TrueQ[layerLeadingSum === 0], Infinity,
      valuation[layerLeadingSum, layerQ]],
    "LeadingSumQLargeDecay" -> If[TrueQ[layerLeadingSum === 0], Infinity,
      parameterDecay[layerLeadingSum, layerQ]],
    "LeadingSumYOrder" -> If[TrueQ[layerLeadingSum === 0], Infinity,
      valuation[layerLeadingSum, layerY]]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_LAYER_LAURENT_ONLY"] === "1",
  layerInverseProducts = Select[Map[Cancel@Together[(# /.
          {compensationLambda -> layerScale^2,
           endpointQ -> layerQ/layerScale,
           wallHalfRadial -> layerY/layerScale}) /.
        layerScale -> 1/layerInverse] &, products],
    ! TrueQ[# === 0] &];
  productLaurentData = laurentCoefficientAssociation[
       #, layerInverse, 4] & /@ layerInverseProducts;
  summedLaurentData = Association@Table[order -> Cancel@Together@Total[
       Lookup[productLaurentData, order, 0]], {order, -4, 4}];
  nonzeroLaurentData = Select[summedLaurentData, ! TrueQ[# === 0] &];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "SummedLaurentData" -> nonzeroLaurentData|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_LAYER_ONLY"] === "1",
  layerProducts = Map[Cancel@Together[# /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale,
         wallHalfRadial -> layerY/layerScale}] &, products];
  layerCoefficient = TimeConstrained[
    Cancel@Together[Total[layerProducts]], 300, $Failed];
  If[layerCoefficient === $Failed,
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "LayerCoefficient" -> $Failed|>]; Exit[3]];
  If[TrueQ[layerCoefficient === 0],
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "LayerCoefficient" -> 0|>]; Exit[0]];
  layerLeading = leadingAtInfinity[layerCoefficient, layerScale];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "LayerCoefficientLeafCount" -> LeafCount[layerCoefficient],
    "LayerLDecay" -> parameterDecay[layerCoefficient, layerScale],
    "LayerLeadingQOrder" -> valuation[layerLeading, layerQ],
    "LayerLeadingQLargeDecay" -> parameterDecay[layerLeading, layerQ],
    "LayerLeadingYOrder" -> valuation[layerLeading, layerY],
    "LayerLeadingLeafCount" -> LeafCount[layerLeading]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_LAYER_SERIES_ONLY"] === "1",
  layerProducts = Map[Cancel@Together[# /.
        {compensationLambda -> layerScale^2,
         endpointQ -> layerQ/layerScale,
         wallHalfRadial -> layerY/layerScale}] &, products];
  layerSeriesData = Table[
    layerSeriesCoefficient = Cancel@Together@Total[
       SeriesCoefficient[# /. layerScale -> 1/layerInverse,
          {layerInverse, 0, order}] & /@ layerProducts];
    <|"Order" -> order,
      "Zero" -> TrueQ[layerSeriesCoefficient === 0],
      "QOrder" -> If[TrueQ[layerSeriesCoefficient === 0], Infinity,
        valuation[layerSeriesCoefficient, layerQ]],
      "QLargeDecay" -> If[TrueQ[layerSeriesCoefficient === 0], Infinity,
        parameterDecay[layerSeriesCoefficient, layerQ]],
      "YOrder" -> If[TrueQ[layerSeriesCoefficient === 0], Infinity,
        valuation[layerSeriesCoefficient, layerY]],
      "LeafCount" -> LeafCount[layerSeriesCoefficient]|>,
    {order, 0, 6}];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "LayerSeries" -> layerSeriesData|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_SPECIALIZE_QY"] === "1",
  specializedProducts = Map[Cancel@Together[# /.
       {endpointQ -> 2/5, wallHalfRadial -> 1/7}] &, products];
  specializedCoefficient = Cancel@Together[Total[specializedProducts]];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "SpecializedZero" -> TrueQ[specializedCoefficient === 0],
    "SpecializedLambdaDecay" -> If[
      TrueQ[specializedCoefficient === 0], Infinity,
      parameterDecay[specializedCoefficient, compensationLambda]],
    "SpecializedLeafCount" -> LeafCount[specializedCoefficient]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_SPECIALIZE_LAYER_XY"] === "1",
  specializedLayerY = If[
    Environment["COMPENSATED_WALL_LAYER_Y_ZERO"] === "1", 0, 1/7];
  specializedProducts = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> (2/5)/layerScale,
        wallHalfRadial -> specializedLayerY/layerScale}] &, products];
  specializedCoefficient = Cancel@Together[Total[specializedProducts]];
  specializedLayerDecay = If[TrueQ[specializedCoefficient === 0], Infinity,
    parameterDecay[specializedCoefficient, layerScale]];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "SpecializedLayerZero" -> TrueQ[specializedCoefficient === 0],
    "SpecializedLayerLDecay" -> specializedLayerDecay,
    "SpecializedLayerLeading" -> If[
      TrueQ[specializedCoefficient === 0], 0,
      leadingAtInfinity[specializedCoefficient, layerScale]],
    "SpecializedLayerLeafCount" -> LeafCount[specializedCoefficient]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_LAYER_HORIZON_ONLY"] === "1",
  horizonLayerProducts = Map[Cancel@Together[# /.
       {compensationLambda -> layerScale^2,
        endpointQ -> layerQ/layerScale,
        wallHalfRadial -> 0}] &, products];
  horizonLayerCoefficient = Cancel@Together[Total[horizonLayerProducts]];
  If[TrueQ[horizonLayerCoefficient === 0],
   Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
     "HorizonLayerCoefficient" -> 0|>]; Exit[0]];
  horizonLayerDecay = parameterDecay[horizonLayerCoefficient, layerScale];
  horizonLayerLeading = leadingAtInfinity[
    horizonLayerCoefficient, layerScale];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "HorizonLayerLDecay" -> horizonLayerDecay,
    "HorizonLayerLeading" -> horizonLayerLeading,
    "HorizonLayerLeadingQOrder" ->
     valuation[horizonLayerLeading, layerQ],
    "HorizonLayerLeadingQLargeDecay" ->
     parameterDecay[horizonLayerLeading, layerQ],
    "HorizonLayerLeadingLeafCount" -> LeafCount[horizonLayerLeading]|>];
  Exit[0]];
 If[Environment["COMPENSATED_WALL_HORIZON_EXACT_ONLY"] === "1",
  horizonProducts = Map[Cancel@Together[# /. wallHalfRadial -> 0] &,
    products];
  horizonCoefficient = Cancel@Together[Total[horizonProducts]];
  Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
    "HorizonZero" -> TrueQ[horizonCoefficient === 0],
    "HorizonQOrder" -> If[TrueQ[horizonCoefficient === 0], Infinity,
      valuation[horizonCoefficient, endpointQ]],
    "HorizonLambdaDecay" -> If[TrueQ[horizonCoefficient === 0], Infinity,
      parameterDecay[horizonCoefficient, compensationLambda]],
    "HorizonLeafCount" -> LeafCount[horizonCoefficient],
    "HorizonCoefficient" -> horizonCoefficient|>];
  Exit[0]];
 terms = Flatten[
    momentumPlus[[p + 1]] secondMetric[[qPower + 1]] -
     secondMomentum[[qPower + 1]] metricPlus[[p + 1]]];
 Print[<|"Powers" -> {p, qPower}, "Chirality" -> chirality,
   "TermLeafCounts" -> (LeafCount /@ terms),
   "SeparateTogetherLeafCounts" -> (LeafCount[Together[#]] & /@ terms)|>];
 separate = Together /@ terms;
 coefficient = TimeConstrained[Cancel@Together[Total[separate]], 300,
    $Failed];
 If[coefficient === $Failed,
  Print[<|"Coefficient" -> $Failed|>],
  If[Environment["COMPENSATED_WALL_SUMMARY_ONLY"] === "1",
   scaledCoefficient = Cancel@Together[
     coefficient /. compensationLambda -> coreScale/endpointQ^2];
   layerCoefficient = Cancel@Together[
     coefficient /. {compensationLambda -> layerScale^2,
       endpointQ -> layerQ/layerScale,
       wallHalfRadial -> layerY/layerScale}];
   layerLeading = leadingAtInfinity[layerCoefficient, layerScale];
   Print[<|
     "CoefficientLeafCount" -> LeafCount[coefficient],
     "CompactLambdaDecay" ->
      parameterDecay[coefficient, compensationLambda],
     "ScaledQOrder" -> valuation[scaledCoefficient, endpointQ],
     "ScaledCoreDecay" -> parameterDecay[scaledCoefficient, coreScale],
     "ScaledWallOrder" -> valuation[scaledCoefficient, wallHalfRadial],
     "LayerLDecay" -> parameterDecay[layerCoefficient, layerScale],
     "LayerLeadingQOrder" -> valuation[layerLeading, layerQ],
     "LayerLeadingQLargeDecay" -> parameterDecay[layerLeading, layerQ],
     "LayerLeadingYOrder" -> valuation[layerLeading, layerY],
     "LayerLeadingLeafCount" -> LeafCount[layerLeading]|>],
   Print[<|"Coefficient" -> coefficient,
     "CoefficientLeafCount" -> LeafCount[coefficient]|>]]];
 Exit[If[coefficient === $Failed, 3, 0]]];
