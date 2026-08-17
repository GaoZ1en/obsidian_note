(* ::Package:: *)

(*
  Determine the exact frequency-dependent phase between the compact closed
  mode used by the transition-kernel engine and the unit-boundary project
  basis.  Bilinear point checks determine only products of these phases, so
  this vector-level audit is required before applying P_A in the closed-mode
  basis.
*)

SetEnvironment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll[closedModePhaseCheck, closedComplexMode, phaseRatios,
  cosineResiduals, sineResiduals];

closedComplexMode[frequency_Integer?Positive] := {
   -Exp[-I frequency (t - phi)] r^frequency
     (r^2 - (frequency - 2) (frequency + 1)/2)/
     (1 + r^2)^((frequency + 2)/2),
   -I frequency Exp[-I frequency (t - phi)] r^(frequency - 1)
     (2 r^2 + frequency + 1)/(2 (1 + r^2)^(frequency/2)),
   Exp[-I frequency (t - phi)] r^(frequency - 2)
     (r^2 + frequency (frequency + 1)/2)/
     (1 + r^2)^(frequency/2)
   };

phaseRatios = Table[
   With[{numerator =
      unitComplexGaugeMode[frequency] /. GNewton -> 1 /.
       {t -> 0, phi -> 0, r -> 1},
     denominator =
      closedComplexMode[frequency] /. {t -> 0, phi -> 0, r -> 1}},
    FullSimplify[numerator/denominator]],
   {frequency, 2, 8}];

cosineResiduals = Table[
   FullSimplify[
    unitCosineGauge[frequency] -
     Re[phaseRatios[[frequency - 1, 1]]]
       ComplexExpand[Re[closedComplexMode[frequency]]] +
     Im[phaseRatios[[frequency - 1, 1]]]
       ComplexExpand[Im[closedComplexMode[frequency]]],
    Assumptions -> Element[{t, phi, r}, Reals] && r > 0],
   {frequency, 2, 8}];

testConditions = {
   And @@ (SameQ @@ # & /@ phaseRatios),
   FreeQ[phaseRatios, Indeterminate | ComplexInfinity],
   And @@ (PossibleZeroQ /@ Flatten[cosineResiduals])
   };
testIDs = {
   "each vector has one component-independent phase",
   "all phase ratios are finite",
   "phase map reproduces every project cosine vector"
   };

Print[<|"FrequencyPhaseRatios2Through8" -> phaseRatios,
  "CosineResiduals2Through8" -> cosineResiduals|>];
adsRindlerClosedModePhaseMapReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True, Exit[1]];
