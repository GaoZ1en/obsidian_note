(* ::Package:: *)

(*
  Complete outer-joint comparison between the raw Brown--Henneaux mode and
  its proper compensated lift

      Delta_X g = L_(f_L zeta) G,
      f_L = r^2/(L^2+r^2).

  The exact diagonal wall schedule is

      lambda=L^2,  y=tanh(epsilon/2)=1/(2L),

  and the outer endpoint is described by q=exp(-u_R).  Put z=q/y and use
  the compact wall variable v=y/(1-y).  This
  script rebuilds the compensated metric point jet from source and proves,
  coefficientwise in two symbolic Brown--Henneaux frequencies, that

      F_joint^comp-F_joint^raw = z^2 R(v,z),

  where R is bounded on 0<=v,z<=1.  The declared outer schedule R=L^3
  obeys z<=1 for L>=2.  Consequently the complete mismatch is bounded by

      C (1+m+n)^6 L^2/R^2.

  No development cache is loaded.
*)

SetEnvironment["ADS_RINDLER_COMPENSATED_WALL_JET_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_compensated_wall_closed_point_jet_check.wl"}]];

ClearAll[outerRatio, scheduleY, scheduleL, jointArrayData,
  jointChiralCoefficientFrom, jointKernelCoefficientFrom,
  auditOuterMismatchComponent];

inverseMetricRational = Map[wallRationalize, Inverse[metric], {2}];
outerCovectorRational = Map[
   wallRationalize[wallReduce[#]] &,
   Table[D[rSquared, coordinate], {coordinate, coordinates}]];
innerCovector = {0, -1, 0};
outerNormSquaredRational = Cancel@Together[
   outerCovectorRational . inverseMetricRational .
    outerCovectorRational];
normalNumeratorRational = Cancel@Together[
   innerCovector . inverseMetricRational . outerCovectorRational];
outerUComponent = outerCovectorRational[[3]];
jointWallSechRational = wallRationalize[Sech[rindlerChi]];
normalPlaneIdentityResidual = Cancel@Together[
   outerNormSquaredRational - normalNumeratorRational^2 -
    jointWallSechRational^2 outerUComponent^2];

rawFullMetricCoefficients = PadRight[hCoefficientsRational, 4,
   ConstantArray[0, {3, 3}]];
compensatedFullMetricCoefficients = Table[
   Map[wallRationalize, compensatedHCoefficientAt[power], {2}],
   {power, 0, 3}];

jointArrayData[fullMetricCoefficients_] := Module[
  {inversePerturbationCoefficients, angleCoefficients,
   densityCoefficients},
  inversePerturbationCoefficients = Map[
    Map[Cancel@Together,
       -inverseMetricRational . # . inverseMetricRational, {2}] &,
    fullMetricCoefficients];
  angleCoefficients = Map[Function[inversePerturbation, Module[
      {deltaInnerNorm, deltaOuterNorm, deltaNumerator},
      deltaInnerNorm = Cancel@Together[
        innerCovector . inversePerturbation . innerCovector];
      deltaOuterNorm = Cancel@Together[
        outerCovectorRational . inversePerturbation .
         outerCovectorRational];
      deltaNumerator = Cancel@Together[
        innerCovector . inversePerturbation . outerCovectorRational];
      Cancel@Together[-(deltaNumerator - normalNumeratorRational/2
            (deltaInnerNorm +
              deltaOuterNorm/outerNormSquaredRational))/
        (jointWallSechRational outerUComponent)]]],
    inversePerturbationCoefficients];
  densityCoefficients = Map[Cancel@Together[
       -#[[1, 1]]/(2 wallRationalize[Sinh[rindlerChi]])] &,
    fullMetricCoefficients];
  <|"Angle" -> angleCoefficients, "Density" -> densityCoefficients|>];

Print["assembling raw and compensated joint angle/density arrays"];
rawJointArrays = jointArrayData[rawFullMetricCoefficients];
compensatedJointArrays = jointArrayData[compensatedFullMetricCoefficients];

jointChiralCoefficientFrom[array_, chirality_, power_] :=
 If[chirality == 1, array[[power + 1]],
  algebraicConjugate[array[[power + 1]]]];
jointKernelCoefficientFrom[data_, firstChirality_, secondChirality_,
   p_, qPower_] := Cancel@Together[
  jointChiralCoefficientFrom[data["Angle"], firstChirality, p]
    jointChiralCoefficientFrom[data["Density"], secondChirality,
     qPower] -
   jointChiralCoefficientFrom[data["Angle"], secondChirality, qPower]
    jointChiralCoefficientFrom[data["Density"], firstChirality, p]];

outerMismatchRepresentativePairs = Join[
  ({1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 3], 2], First[#] < Last[#] &],
  ({-1, #[[1]], #[[2]]} &) /@
   Select[Tuples[Range[0, 3], 2], First[#] <= Last[#] &]];

auditOuterMismatchComponent[component_] := If[TrueQ[component === 0],
  Nothing, Module[{quotient, numeratorRules, denominator,
    denominatorConstant, normalizedDenominator, denominatorRules,
    yOrders, zOrders},
   quotient = Cancel@Together[component/outerRatio^2];
   numeratorRules = CoefficientRules[Expand[Numerator[quotient]],
     {scheduleY, outerRatio}];
   denominator = Expand[Denominator[quotient]];
   denominatorConstant = denominator /.
     {scheduleY -> 0, outerRatio -> 0};
   normalizedDenominator = Expand[denominator/denominatorConstant];
   denominatorRules = CoefficientRules[normalizedDenominator,
     {scheduleY, outerRatio}];
   yOrders = #[[1, 1]] & /@ numeratorRules;
   zOrders = #[[1, 2]] & /@ numeratorRules;
   <|"MinimumYOrderAfterZSquared" -> Min[yOrders],
     "MinimumZOrderAfterZSquared" -> Min[zOrders],
     "DenominatorConstantNonzero" ->
      ! TrueQ[denominatorConstant === 0],
     "DenominatorCoefficientsNonnegative" -> And @@
      (TrueQ[FullSimplify[Last[#] >= 0]] & /@ denominatorRules)|>]];

Print["auditing complete compensated-minus-raw outer-joint kernel"];
outerMismatchData = Map[Function[representative, Module[
   {secondChirality = representative[[1]], p = representative[[2]],
    qPower = representative[[3]], rawCoefficient,
    compensatedCoefficient, mismatchCoefficient, scheduledMismatch,
    realComponents, componentAudit},
   Print["auditing outer-joint coefficient ", secondChirality,
     " ", {p, qPower}];
   rawCoefficient = jointKernelCoefficientFrom[rawJointArrays, 1,
     secondChirality, p, qPower];
   compensatedCoefficient = jointKernelCoefficientFrom[
     compensatedJointArrays, 1, secondChirality, p, qPower];
   mismatchCoefficient = Cancel@Together[
     compensatedCoefficient - rawCoefficient];
   scheduledMismatch = Cancel@Together@PowerExpand[
     mismatchCoefficient /. {
       compensationLambda -> (1 + scheduleY)^2/(4 scheduleY^2),
       wallHalfRadial -> scheduleY/(1 + scheduleY),
       endpointQ -> scheduleY outerRatio/(1 + scheduleY)}];
   realComponents = {
     Cancel@Together@ComplexExpand[Re[scheduledMismatch]],
     Cancel@Together@ComplexExpand[Im[scheduledMismatch]]};
   componentAudit = auditOuterMismatchComponent /@ realComponents;
   <|"Chirality" -> If[secondChirality == 1, "same", "mixed"],
     "Powers" -> {p, qPower}, "Degree" -> p + qPower,
     "MismatchVanishesAtLambdaZero" -> TrueQ[
       Cancel@Together[mismatchCoefficient /.
          compensationLambda -> 0] === 0],
     "Zero" -> TrueQ[scheduledMismatch === 0],
     "ComponentAudit" -> componentAudit|>]],
  outerMismatchRepresentativePairs];

outerMismatchNonzeroData = Select[outerMismatchData,
   ! Lookup[#, "Zero"] &];
outerMismatchComponentAudit = Flatten[Lookup[outerMismatchData,
   "ComponentAudit"]];

(* At the exact outer intersection q_R=exp(-arccosh(Y_R)).  The implication
   Y_R>=cosh(-log y) gives q_R<=y without manipulating the square root in
   q_R.  For R=L^3 and y=1/(2L), sqrt(R^2+1)>=R supplies the following exact
   polynomial lower bound. *)
scheduleSinh = 4 scheduleL/(4 scheduleL^2 - 1);
scheduleCosh = (4 scheduleL^2 + 1)/(4 scheduleL^2 - 1);
outerYLower = Cancel@Together[
   (scheduleL^3 - scheduleSinh)/(Sqrt[2] scheduleCosh)];
targetCosh = scheduleL + 1/(4 scheduleL);
outerEndpointPolynomial = Expand[
   16 scheduleL^4 (4 scheduleL^4 - scheduleL^2 - 4)^2 -
    2 (4 scheduleL^2 + 1)^4];
outerEndpointPolynomialShifted = Expand[
   outerEndpointPolynomial /. scheduleL -> scheduleL + 2];

testConditions = {
  normalPlaneIdentityResidual === 0,
  Length[outerMismatchRepresentativePairs] == 16,
  And @@ Lookup[outerMismatchData, "MismatchVanishesAtLambdaZero"],
  Max[Lookup[outerMismatchNonzeroData, "Degree"]] <= 6,
  Min[Lookup[outerMismatchComponentAudit,
     "MinimumYOrderAfterZSquared"]] >= 0,
  Min[Lookup[outerMismatchComponentAudit,
     "MinimumZOrderAfterZSquared"]] >= 0,
  And @@ Lookup[outerMismatchComponentAudit,
    "DenominatorConstantNonzero"],
  And @@ Lookup[outerMismatchComponentAudit,
    "DenominatorCoefficientsNonnegative"],
  And @@ (TrueQ[FullSimplify[Last[#] >= 0]] & /@
     CoefficientRules[outerEndpointPolynomialShifted, {scheduleL}]),
  TrueQ[FullSimplify[outerYLower >= targetCosh,
    Assumptions -> scheduleL >= 2]]
  };

testIDs = {
  "outer-normal Gram identity removes every angle square root",
  "antisymmetry reduces the complete joint audit to sixteen representatives",
  "the compensated joint becomes the raw joint when lambda vanishes",
  "the complete outer-joint mismatch has frequency degree at most six",
  "after removing z squared no mismatch coefficient has a negative y power",
  "after removing z squared no mismatch coefficient has a negative z power",
  "every mismatch denominator has a nonzero origin value",
  "every normalized mismatch denominator has nonnegative coefficients",
  "the endpoint comparison polynomial is positive for L at least two",
  "the exact schedule has q_R/y at most one for L at least two"
  };

Print[<|
  "RepresentativeCoefficientCount" ->
   Length[outerMismatchRepresentativePairs],
  "NonzeroCoefficientCount" -> Length[outerMismatchNonzeroData],
  "MaximumFrequencyDegree" ->
   Max[Lookup[outerMismatchNonzeroData, "Degree"]],
  "MinimumYOrderAfterZSquared" -> Min[
   Lookup[outerMismatchComponentAudit,
    "MinimumYOrderAfterZSquared"]],
  "MinimumZOrderAfterZSquared" -> Min[
   Lookup[outerMismatchComponentAudit,
    "MinimumZOrderAfterZSquared"]],
  "OuterEndpointPolynomial" -> Factor[outerEndpointPolynomial]
  |>];

adsRindlerCompensatedJointOuterMismatchReport = TestReport@MapThread[
  VerificationTest[#1, True, TestID -> #2] &,
  {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " compensated outer-joint mismatch tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
