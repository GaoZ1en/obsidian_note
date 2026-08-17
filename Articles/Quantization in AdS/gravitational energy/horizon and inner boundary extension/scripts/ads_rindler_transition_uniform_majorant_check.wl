(* ::Package:: *)

(*
  Scalar majorant and schedule regression for the exact projected
  proper-transition factorization produced by
  ads_rindler_transition_point_jet_check.wl.

  Put lambda=L^2.  After removal of the common bounded mode factors, the
  positive-lambda numerator powers have endpoint q valuations

      lambda^1 q^3, lambda^2 q^2,
      lambda^3 q^4, lambda^4 q^6,

  over (1+lambda q)^4.  The lambda^4 term tends to the local q^2 density.
  This file verifies the elementary estimates which make the complete
  difference O(lambda^-1) in L^1.  It does not recompute the tensor kernel.
*)

ClearAll["Global`*"];

profileFraction[z_] = z/(1 + z);
profileDifference[z_] = 1 - profileFraction[z]^4;
profileDifferenceMajorant[z_] = 4/(1 + z);

profileDifferenceResidual = Factor[
   profileDifferenceMajorant[z] - profileDifference[z]];
profileDifferencePositive = FullSimplify[
   profileDifferenceResidual >= 0, Assumptions -> z >= 0];

endpointWeightBound = FullSimplify[
   1/Sqrt[1 - q] <= Sqrt[2], Assumptions -> 0 <= q <= 1/2];
centreWeightIntegral = Integrate[1/Sqrt[1 - q], {q, 1/2, 1},
   Assumptions -> 0 <= q <= 1];
betaIntegral = Integrate[z^2/(1 + z)^4, {z, 0, Infinity},
   Assumptions -> z >= 0];
logarithmicBound = FullSimplify[
   Log[1 + lambda/2] <= lambda^2, Assumptions -> lambda >= 1];

(* Bounds after q=z/lambda on 0<=q<=1/2. *)
endpointBounds = {
   Log[1 + lambda/2]/lambda^3,
   betaIntegral/lambda,
   1/(2 lambda),
   1/(2 lambda)
   };
endpointScaledBounds = FullSimplify[lambda endpointBounds,
   Assumptions -> lambda >= 1];
endpointUniformConditions = FullSimplify[
   Thread[endpointScaledBounds <= {1, 1/3, 1/2, 1/2}],
   Assumptions -> lambda >= 1];

(* On 1/2<=q<=1, the four pointwise profile bounds are respectively
   2/lambda^3, 4/lambda^2, 1/lambda, 4/lambda. *)
centrePointwiseBounds = {2/lambda^3, 4/lambda^2,
   1/lambda, 4/lambda};
centreScaledBounds = FullSimplify[
   lambda centrePointwiseBounds centreWeightIntegral,
   Assumptions -> lambda >= 1];
centreUniformConditions = FullSimplify[
   Thread[centreScaledBounds <=
     {2 Sqrt[2], 4 Sqrt[2], Sqrt[2], 4 Sqrt[2]}],
   Assumptions -> lambda >= 1];

(* The exact structure regression gives total unit-boundary frequency degree
   six.  On an M-block this yields M^6/L^2.  The outer Brown--York source
   curvature is now exactly zero; the remaining nonzero exponents are the
   declared conservative finite-action sector bounds. *)
scheduleRules = {
   properLength -> modeCutoff^10,
   wallHalfRadialCutoff -> 1/(2 modeCutoff^10),
   (* Use the composed exact value rather than a nested rule: ReplaceAll is
      simultaneous and therefore would otherwise leave wallHalfRadialCutoff
      unresolved inside this right-hand side. *)
   wallSinhCutoff ->
    4 modeCutoff^10/(4 modeCutoff^20 - 1),
   outerCutoff -> modeCutoff^30
   };
scheduleErrors = {
   modeCutoff^6/properLength^2,
   modeCutoff^7 (wallHalfRadialCutoff/properLength^5 + 1/properLength^6),
   modeCutoff^6 wallHalfRadialCutoff/outerCutoff^5,
   modeCutoff^7/properLength^2,
   modeCutoff^8 wallSinhCutoff/properLength,
   0,
   modeCutoff^6/outerCutoff^6,
   modeCutoff^7 properLength^2/outerCutoff^2
   } /. scheduleRules;
scheduleExponents = If[TrueQ[# === 0], -Infinity,
     Exponent[Numerator@Together[#], modeCutoff] -
      Exponent[Denominator@Together[#], modeCutoff]] & /@ scheduleErrors;

testConditions = {
   profileDifferencePositive === True,
   endpointWeightBound === True,
   centreWeightIntegral === Sqrt[2],
   betaIntegral === 1/3,
   logarithmicBound === True,
   And @@ endpointUniformConditions,
   And @@ centreUniformConditions,
   scheduleExponents ===
    {-14, -53, -154, -13, -12, -Infinity, -174, -33}
   };
testIDs = {
   "fourth-profile local difference is bounded by four over one plus z",
   "endpoint-half centre weight is bounded by square-root two",
   "centre-half coordinate weight is integrable",
   "lambda-squared endpoint profile has beta integral one third",
   "logarithmic lambda term is subleading to lambda inverse",
   "all four endpoint-half contributions are uniformly O(lambda inverse)",
   "all four centre-half contributions are uniformly O(lambda inverse)",
   "explicit schedule makes all eight outer-separated operator errors decay"
   };

Print[<|
  "ProfileDifferenceResidual" -> profileDifferenceResidual,
  "EndpointScaledBounds" -> endpointScaledBounds,
  "CentreScaledBounds" -> centreScaledBounds,
  "ScheduleErrors" -> scheduleErrors,
  "ScheduleExponents" -> scheduleExponents|>];
adsRindlerTransitionUniformMajorantReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
