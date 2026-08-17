(* ::Package:: *)

(*
  Complete far-joint area--angle kernel from the rational wall point jet.

  The outer normal is represented by d(r^2), whose positive rescaling drops
  out of the normalized angle.  At tau=0 and u>0,

    sqrt(1-cos(eta)^2)=sech(chi) partial_u(r^2)/|d(r^2)|,

  so the linearized angle can be evaluated without square roots.  All mode
  dependence is kept coefficientwise after zeta_m=W^m U_m is factorized.
*)

SetEnvironment["ADS_RINDLER_WALL_POINT_JET_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_wall_closed_point_jet_check.wl"}]];

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
wallSechRational = wallRationalize[Sech[rindlerChi]];
normalPlaneIdentityResidual = Cancel@Together[
   outerNormSquaredRational - normalNumeratorRational^2 -
    wallSechRational^2 outerUComponent^2];

inversePerturbationCoefficient[power_] := Map[Cancel@Together,
   -inverseMetricRational . hCoefficientsRational[[power + 1]] .
    inverseMetricRational, {2}];
inversePerturbationCoefficients = Table[
   inversePerturbationCoefficient[power], {power, 0, 3}];

jointAngleCoefficients = Table[Module[
    {inversePerturbation = inversePerturbationCoefficients[[power + 1]],
     deltaInnerNorm, deltaOuterNorm, deltaNumerator},
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
       (wallSechRational outerUComponent)]],
   {power, 0, 3}];
jointDensityCoefficients = Table[Cancel@Together[
    -hCoefficientsRational[[power + 1, 1, 1]]/
      (2 wallRationalize[Sinh[rindlerChi]])],
   {power, 0, 3}];
Print["complete joint angle and density coefficient arrays assembled"];

jointChiralCoefficient[array_, chirality_, power_] :=
 If[chirality == 1, array[[power + 1]],
  algebraicConjugate[array[[power + 1]]]];
jointKernelCoefficient[firstChirality_, secondChirality_, p_, qPower_] :=
 Cancel@Together[
   jointChiralCoefficient[jointAngleCoefficients, firstChirality, p]
     jointChiralCoefficient[jointDensityCoefficients, secondChirality,
      qPower] -
    jointChiralCoefficient[jointAngleCoefficients, secondChirality,
      qPower]
     jointChiralCoefficient[jointDensityCoefficients, firstChirality, p]];

valuation[expression_, variable_] := If[TrueQ[expression === 0], Infinity,
   Exponent[Numerator@Together[expression], variable, Min] -
    Exponent[Denominator@Together[expression], variable, Min]];

Print["assembling complete coefficientwise joint kernels"];
jointKernelCoefficientData = Flatten@Table[Module[
    {coefficient, qOrder, wallOrder, qFiveCoefficient,
     qFiveWallOrder, horizonRestriction, horizonQOrder},
    coefficient = jointKernelCoefficient[
      chiralities[[1]], chiralities[[2]], p, qPower];
    If[TrueQ[coefficient === 0], Nothing,
     qOrder = valuation[coefficient, endpointQ];
     wallOrder = valuation[coefficient, wallHalfRadial];
     qFiveCoefficient = Cancel@Together[
        coefficient/endpointQ^5] /. endpointQ -> 0;
     qFiveWallOrder = valuation[qFiveCoefficient, wallHalfRadial];
     horizonRestriction = Cancel@Together[
       coefficient /. wallHalfRadial -> 0];
     horizonQOrder = valuation[horizonRestriction, endpointQ];
     <|"Chiralities" -> chiralities, "Powers" -> {p, qPower},
       "QOrder" -> qOrder, "HalfRadialOrder" -> wallOrder,
       "TotalFrequencyDegree" -> p + qPower,
       "QFiveHalfRadialOrder" -> qFiveWallOrder,
       "HorizonQOrder" -> horizonQOrder|>]],
   {chiralities, {{1, 1}, {1, -1}}},
   {p, 0, 3}, {qPower, 0, 3}];

jointAngleQOrder = Min[valuation[#, endpointQ] & /@
    Select[jointAngleCoefficients, ! TrueQ[# === 0] &]];
jointDensityQOrder = Min[valuation[#, endpointQ] & /@
    Select[jointDensityCoefficients, ! TrueQ[# === 0] &]];
testConditions = {
   normalPlaneIdentityResidual === 0,
   jointAngleQOrder >= 2,
   jointDensityQOrder >= 2,
   Select[jointKernelCoefficientData,
      Lookup[#, "Chiralities"] === {1, 1} &] === {},
   And @@ Thread[Lookup[jointKernelCoefficientData, "QOrder"] >= 5],
   And @@ Thread[
     Lookup[jointKernelCoefficientData, "TotalFrequencyDegree"] <= 6],
   And @@ Thread[
     Lookup[jointKernelCoefficientData, "HalfRadialOrder"] >= 1],
   And @@ Thread[
     Lookup[jointKernelCoefficientData, "QFiveHalfRadialOrder"] >= 1],
   And @@ (TrueQ[# === Infinity] & /@
     Lookup[jointKernelCoefficientData, "HorizonQOrder"])
   };
testIDs = {
   "outer-normal Gram identity removes every angle square root",
   "complete normalized joint angle begins at q squared",
   "complete normalized joint density begins at q squared",
   "same-chirality joint kernel vanishes identically",
   "all nonzero same- and mixed-chirality joint kernels start at q fifth",
   "complete normalized joint-kernel frequency degree is at most six",
   "the complete mixed joint kernel vanishes linearly at the wall",
   "the q fifth mixed joint coefficient vanishes linearly at the wall",
   "the exact horizon restriction of the joint kernel vanishes"
   };

Print[<|
  "NormalPlaneIdentityResidual" -> normalPlaneIdentityResidual,
  "AngleDensityQOrders" -> {jointAngleQOrder, jointDensityQOrder},
  "KernelCoefficientSummaries" -> jointKernelCoefficientData|>];
adsRindlerJointClosedPointJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
  " closed point-jet joint-kernel tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
