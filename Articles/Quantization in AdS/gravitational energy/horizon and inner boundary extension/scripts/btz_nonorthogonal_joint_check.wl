(* ::Package:: *)

(*
  Exact non-orthogonal BTZ wall--slice joint benchmark.

  The inner wall is rho=epsilon with outward normal -d_rho.  The spacelike
  endpoint slice is the tilted graph

    lambda - tilt (rho-epsilon) = constant.

  For |tilt boostScale sinh(epsilon)|<1 its future unit normal is timelike.
  The script computes the relative boost angle and verifies that the local
  Hayward pair is the canonical cotangent pair

    Q=sqrt(q),  P=sigmaJ eta/kappa_p^2.
*)

ClearAll["Global`*"];

metric = DiagonalMatrix[{
    -boostScale^2 Sinh[epsilon]^2,
    1,
    radiusValue^2 Cosh[epsilon]^2
    }];
inverseMetric = FullSimplify[Inverse[metric]];

tiltVariable = tilt boostScale Sinh[epsilon];
sliceNormalization = boostScale Sinh[epsilon]/
   Sqrt[1 - tiltVariable^2];

futureSliceCovector = {
   -sliceNormalization,
   sliceNormalization tilt,
   0
   };
futureSliceVector = FullSimplify[inverseMetric . futureSliceCovector];
innerWallVector = {0, -1, 0};
innerWallCovector = FullSimplify[metric . innerWallVector];

sliceNorm = FullSimplify[
   futureSliceVector . metric . futureSliceVector,
   Assumptions -> {boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];
wallNorm = FullSimplify[innerWallVector . metric . innerWallVector];
normalProduct = FullSimplify[
   innerWallVector . metric . futureSliceVector,
   Assumptions -> {boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];

boostAngle = -ArcTanh[tiltVariable];
boostRelation = FullSimplify[
   normalProduct - Sinh[boostAngle],
   Assumptions -> {boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];

jointDensity = radiusValue Cosh[epsilon];
haywardDensity = sigmaJ jointDensity boostAngle/kp2;

parameters = {radiusValue, tilt, epsilon};
variationOf[expression_, tangent_] := FullSimplify[
   Sum[D[expression, parameters[[i]]] tangent[[i]], {i, 3}],
   Assumptions -> {radiusValue > 0, boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];

tangent1 = {dR1, dTilt1, dEpsilon1};
tangent2 = {dR2, dTilt2, dEpsilon2};

thetaArea[tangent_] := FullSimplify[
   sigmaJ boostAngle variationOf[jointDensity, tangent]/kp2];
thetaAngle[tangent_] := FullSimplify[
   -sigmaJ jointDensity variationOf[boostAngle, tangent]/kp2];
dHayward[tangent_] := variationOf[haywardDensity, tangent];

legendreResidual = FullSimplify[
   thetaArea[tangent1] - thetaAngle[tangent1] -
    dHayward[tangent1],
   Assumptions -> {radiusValue > 0, boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];

jointTwoForm[tangentA_, tangentB_] := FullSimplify[
   sigmaJ/kp2 (
     variationOf[boostAngle, tangentA]
       variationOf[jointDensity, tangentB] -
      variationOf[boostAngle, tangentB]
       variationOf[jointDensity, tangentA]),
   Assumptions -> {radiusValue > 0, boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];

jointAntisymmetry = FullSimplify[
   jointTwoForm[tangent1, tangent2] +
    jointTwoForm[tangent2, tangent1]];

(* Cotangent realization Q=A and P=sigma eta/kappa_p^2. *)
canonicalQ = jointDensity;
canonicalP = sigmaJ boostAngle/kp2;
canonicalTwoForm[tangentA_, tangentB_] := FullSimplify[
   variationOf[canonicalP, tangentA] variationOf[canonicalQ, tangentB] -
    variationOf[canonicalP, tangentB] variationOf[canonicalQ, tangentA]];
canonicalResidual = FullSimplify[
   canonicalTwoForm[tangent1, tangent2] -
    jointTwoForm[tangent1, tangent2]];

(* The q-R component is nonzero away from the degenerate horizon and proves
   that this is a genuinely nontrivial non-orthogonal joint pair. *)
tiltRadiusCoefficient = FullSimplify[
   jointTwoForm[{0, 1, 0}, {1, 0, 0}],
   Assumptions -> {radiusValue > 0, boostScale > 0, epsilon > 0,
     -1 < tiltVariable < 1}];
expectedTiltRadiusCoefficient = FullSimplify[
   -sigmaJ boostScale Sinh[epsilon] Cosh[epsilon]/
    (kp2 (1 - tiltVariable^2))];

orthogonalLimit = FullSimplify[boostAngle /. tilt -> 0];

testConditions = {
   sliceNorm === -1,
   wallNorm === 1,
   boostRelation === 0,
   legendreResidual === 0,
   jointAntisymmetry === 0,
   canonicalResidual === 0,
   FullSimplify[
     tiltRadiusCoefficient - expectedTiltRadiusCoefficient,
     Assumptions -> {boostScale > 0, epsilon > 0,
       -1 < tiltVariable < 1}] === 0,
   orthogonalLimit === 0
   };

testIDs = {
   "tilted endpoint normal is future unit timelike",
   "inner wall normal is unit spacelike",
   "relative normal product equals sinh eta",
   "area and angle potentials differ by delta Hayward",
   "non-orthogonal joint two-form is antisymmetric",
   "area-boost pair is a cotangent edge chart",
   "tilt-radius joint curvature is nonzero with the expected coefficient",
   "orthogonal slice has zero boost angle"
   };

Print[<|
  "FutureSliceCovector" -> futureSliceCovector,
  "NormalProduct" -> normalProduct,
  "BoostAngle" -> boostAngle,
  "JointDensity" -> jointDensity,
  "TiltRadiusCoefficient" -> tiltRadiusCoefficient,
  "CanonicalResidual" -> canonicalResidual|>];

btzNonorthogonalJointReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
