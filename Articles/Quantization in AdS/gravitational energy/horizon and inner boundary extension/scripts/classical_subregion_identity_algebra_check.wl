(* ::Package:: *)

(*
  Algebraic regression for the normalization and section structure of the
  final classical subregion identity.

  This is not a component calculation of a new gravitational mode.  It checks
  the Taylor-coefficient/second-derivative factor, the decomposition of a
  geometric area into metric/cross/embedding pieces, and equality of two
  extended-space sections related by a gauge degeneracy.
*)

ClearAll["Global`*"];

parameterFamily = backgroundValue + parameter linearValue +
   parameter^2 quadraticCoefficient;
secondDerivative = D[parameterFamily, {parameter, 2}] /. parameter -> 0;

(* The exact-diffeomorphism geometric area has three nonzero coordinate
   representatives whose sum vanishes. *)
metricAreaCoefficient = areaMetric;
crossAreaCoefficient = areaCross;
embeddingAreaCoefficient = -areaMetric - areaCross;
geometricAreaCoefficient = FullSimplify[
   metricAreaCoefficient + crossAreaCoefficient +
    embeddingAreaCoefficient];

(* Abstract pulled-back observable depends only on Delta_X g. *)
fieldTangent = Array[h, 4];
verticalTangent = Array[r, 4];
embeddingTangent = -verticalTangent;
fixedSectionPulledBack = fieldTangent;
hwSectionPulledBack = fieldTangent + verticalTangent + embeddingTangent;
sectionResidual = Expand[
   hwSectionPulledBack - fixedSectionPulledBack];

(* Final identity in second-derivative normalization. *)
outerSecondDerivative = areaSecondDerivative + completedEnergy;
identityResidual = Expand[
   outerSecondDerivative - areaSecondDerivative - completedEnergy];

testConditions = {
   secondDerivative === 2 quadraticCoefficient,
   geometricAreaCoefficient === 0,
   sectionResidual === ConstantArray[0, 4],
   identityResidual === 0
   };
testIDs = {
   "second derivative is twice the quadratic Taylor coefficient",
   "exact-diffeomorphism geometric area cancels only after all pieces are summed",
   "fixed and HW sections have identical pulled-back tangent",
   "classical subregion identity uses one consistent quadratic normalization"
   };

Print[<|
  "SecondDerivative" -> secondDerivative,
  "GeometricAreaCoefficient" -> geometricAreaCoefficient,
  "SectionResidual" -> sectionResidual,
  "IdentityResidual" -> identityResidual|>];
classicalSubregionIdentityAlgebraReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
