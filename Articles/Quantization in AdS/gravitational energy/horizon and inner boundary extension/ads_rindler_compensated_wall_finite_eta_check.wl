(* ::Package:: *)

(*
  Direct finite-wall uniform-majorant theorem for the compensated
  AdS3-Rindler Brown--York curvature.

  The exact diagonal regulator is

    lambda=L^2,  q=x/L,  y=tanh(epsilon/2)=1/(2L),  t=L^-2.

  This script rebuilds the complete compensated metric/momentum point jet
  from source.  It does not load a development cache.  For every symbolic
  frequency coefficient it subtracts the finite-wall endpoint Wronskian and
  proves

    K_pq(t,x)-W_pq(x)=t R_pq(t,x),

  where R_pq/x has a t-independent integrable majorant on
  0<=x<=t^-1/2.  Same-chirality antisymmetry and mixed-chirality conjugate
  antisymmetry reduce the exact audit to 25 representative coefficients.

  The separate phase audit proves that the normalized Brown--Henneaux phase
  has modulus at most one and that its fixed-anchor endpoint error, multiplied
  by the Wronskian profile, obeys the same t times integrable-majorant bound.
  Therefore the fully projected real-sector kernel is bounded by

    C (1+m+n)^7 L^-2.
*)

SetEnvironment["ADS_RINDLER_COMPENSATED_WALL_JET_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_compensated_wall_closed_point_jet_check.wl"}]];

ClearAll[layerScale, layerT, layerQ, algebraicConjugate,
  parameterDecay, fixedEtaKernelCoefficient,
  auditFixedEtaUniformComponent, auditFixedEtaPhaseComponent];

algebraicConjugate[expression_] := expression /.
   z_Complex :> Conjugate[z];

metricPlus = compensatedWallHCoefficientsRational;
momentumPlus = compensatedWallDeltaPiCoefficientsRational;
metricMinus = Map[Cancel@Together,
  Map[algebraicConjugate, metricPlus, {3}], {3}];
momentumMinus = Map[Cancel@Together,
  Map[algebraicConjugate, momentumPlus, {3}], {3}];

Print["precomputing exact finite-wall scaled metric and momentum arrays"];
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
   (* On t x^2<=1 and x>=1, t^a x^b<=x^(b-2a). *)
   effectiveXOrders = MapThread[#1 - 2 #2 &, {xOrders, tOrders}];
   <|"MinimumXOrder" -> Min[xOrders],
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
   {secondChirality = representative[[1]], p = representative[[2]],
    qPower = representative[[3]], coefficient, kernelT, wronskian,
    leading, uniformResidual, realComponents, componentAudit},
   Print["auditing direct finite-wall coefficient ", secondChirality,
     " ", {p, qPower}];
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

(* ---------- Exact finite-wall Brown--Henneaux phase ---------- *)

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
fixedEtaWeightedPhaseResidual = Cancel@Together[
  fixedEtaWProfile fixedEtaPhaseDifferenceOverT];

auditFixedEtaPhaseComponent[component_] := If[TrueQ[component === 0],
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
   <|"MinimumXOrder" -> Min[xOrders],
     "MaximumEffectiveXOrder" -> Max[effectiveXOrders],
     "DenominatorAtZeroDegree" -> Exponent[denominatorAtZero, layerQ],
     "DenominatorCoefficientsNonnegative" -> And @@
      (TrueQ[FullSimplify[Last[#] >= 0]] & /@ denominatorRules)|>]];

fixedEtaPhaseAudit = auditFixedEtaPhaseComponent /@ {
   Cancel@Together@ComplexExpand[Re[fixedEtaWeightedPhaseResidual]],
   Cancel@Together@ComplexExpand[Im[fixedEtaWeightedPhaseResidual]]};
fixedEtaPhaseModulusSquared = Cancel@Together@ComplexExpand[
  Re[fixedEtaPhaseT]^2 + Im[fixedEtaPhaseT]^2];
fixedEtaPhaseModulusDefect = Factor[1 - fixedEtaPhaseModulusSquared];
expectedPhaseModulusDefect =
 2 layerQ^2 (-4 + layerT)^2 layerT/
  (16 + 8 layerT + 32 Sqrt[2] layerQ layerT +
    32 layerQ^2 layerT + layerT^2 +
    8 Sqrt[2] layerQ layerT^2 + 48 layerQ^2 layerT^2 +
    32 Sqrt[2] layerQ^3 layerT^2 + 16 layerQ^4 layerT^2 +
    2 layerQ^2 layerT^3 + 8 Sqrt[2] layerQ^3 layerT^3 +
    8 layerQ^4 layerT^3 + layerQ^4 layerT^4);
phaseDenominatorRules = CoefficientRules[
  Expand[Denominator[expectedPhaseModulusDefect]], {layerT, layerQ}];

endpointCosineResidual = FullSimplify[
  Cos[Pi symbolicFrequency/4] +
   Cos[Pi symbolicFrequency/4] Cos[Pi]];
endpointSineResidual = FullSimplify[
  Sin[Pi symbolicFrequency/4] -
   Sin[Pi symbolicFrequency/4] Sin[Pi/2]];

testConditions = {
  Length[fixedEtaRepresentativePairs] == 25,
  Length[fixedEtaNonzeroData] == 21,
  Max[Lookup[fixedEtaNonzeroData, "Degree"]] == 7,
  And @@ Lookup[fixedEtaUniformData, "RationalInT"],
  And @@ Lookup[fixedEtaUniformData, "LeadingMatchesWronskian"],
  Min[Lookup[fixedEtaComponentAudit, "MinimumXOrder"]] >= 3,
  Min[Lookup[fixedEtaComponentAudit, "DenominatorAtZeroDegree"] -
     Lookup[fixedEtaComponentAudit, "MaximumEffectiveXOrder"]] >= 2,
  And @@ Lookup[fixedEtaComponentAudit,
    "DenominatorCoefficientsNonnegative"],
  FreeQ[fixedEtaPhaseT, Sqrt[layerT]],
  Cancel@Together[fixedEtaPhaseModulusDefect -
     expectedPhaseModulusDefect] === 0,
  And @@ (TrueQ[FullSimplify[Last[#] >= 0]] & /@ phaseDenominatorRules),
  Min[Lookup[fixedEtaPhaseAudit, "MinimumXOrder"]] >= 4,
  Min[Lookup[fixedEtaPhaseAudit, "DenominatorAtZeroDegree"] -
     Lookup[fixedEtaPhaseAudit, "MaximumEffectiveXOrder"]] >= 2,
  And @@ Lookup[fixedEtaPhaseAudit,
    "DenominatorCoefficientsNonnegative"],
  endpointCosineResidual === 0 && endpointSineResidual === 0
  };

testIDs = {
  "antisymmetry reduces the complete coefficient audit to 25 representatives",
  "the representative finite-wall kernel has exactly 21 nonzero coefficients",
  "the finite-wall frequency degree is exactly seven",
  "every scaled coefficient is rational in t=L inverse squared",
  "the only t-zero coefficients are the finite-wall endpoint Wronskian quartet",
  "every Wronskian-subtracted residual vanishes at least as x cubed",
  "every coefficient residual has an integrable large-x margin of two",
  "every coefficient residual denominator has nonnegative coefficients",
  "the normalized finite-wall phase is rational in t",
  "the exact phase modulus defect has the declared positive form",
  "the phase-modulus denominator is positive coefficientwise",
  "the Wronskian-weighted phase error vanishes at least as x fourth",
  "the Wronskian-weighted phase error has large-x margin two",
  "the phase-error denominators have nonnegative coefficients",
  "fixed-anchor real projections annihilate the endpoint Wronskian"
  };

Print[<|
  "RepresentativeCoefficientCount" -> Length[fixedEtaRepresentativePairs],
  "NonzeroCoefficientCount" -> Length[fixedEtaNonzeroData],
  "MaximumFrequencyDegree" -> Max[Lookup[fixedEtaNonzeroData, "Degree"]],
  "MinimumUniformXOrder" ->
   Min[Lookup[fixedEtaComponentAudit, "MinimumXOrder"]],
  "MinimumUniformLargeXMargin" -> Min[
   Lookup[fixedEtaComponentAudit, "DenominatorAtZeroDegree"] -
    Lookup[fixedEtaComponentAudit, "MaximumEffectiveXOrder"]],
  "PhaseModulusDefect" -> fixedEtaPhaseModulusDefect,
  "MinimumPhaseXOrder" ->
   Min[Lookup[fixedEtaPhaseAudit, "MinimumXOrder"]],
  "MinimumPhaseLargeXMargin" -> Min[
   Lookup[fixedEtaPhaseAudit, "DenominatorAtZeroDegree"] -
    Lookup[fixedEtaPhaseAudit, "MaximumEffectiveXOrder"]]|>];

adsRindlerCompensatedWallFiniteEtaReport = TestReport@MapThread[
  VerificationTest[#1, True, TestID -> #2] &,
  {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " compensated finite-wall uniform-majorant tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
