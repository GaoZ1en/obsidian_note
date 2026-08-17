(* ::Package:: *)

(*
  Exact symbolic-frequency endpoint jet of the moving Hayward area--angle
  pair.  All operations are performed in a finite Laurent jet in
  q=Exp[-u].  The target is the first possible q^5 joint symplectic term, so
  the metric is needed only through q^3 and the background outer normal only
  through the corresponding finite Laurent order.

  The reference joint is the intersection of chi=epsilon and a fixed global
  radial cylinder at tau=0.  The inner outward normal is -d chi and the outer
  normal is the normalized gradient of global r.  The formulas compute the
  first variations Delta_X eta and Delta_X sqrt(q) from a generic pulled-back
  metric tangent.  They therefore apply to the far-anchor part of the
  compensated moving lift; the r~L switching joint is a separate estimate.
*)

SetEnvironment["SYMBOLIC_WALL_ENDPOINT_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_symbolic_wall_endpoint_order_check.wl"}]];

ClearAll[truncateJet, backgroundInverseRindler, outerCovector,
  outerJet, hJet, hInverseJet, innerCovector, outerNormSquared,
  normalNumerator, backgroundCosine, deltaInnerNormSquared,
  deltaOuterNormSquared, deltaNormalNumerator, deltaCosine,
  deltaAngle, deltaDensity, coefficientList, firstNonzeroOrder,
  frequencyDegree];

jetOrder = 4;
truncateJet[expression_, order_:jetOrder] := Together[
   Normal@Series[expression, {endpointQ, 0, order}]];

backgroundInverseRindler = DiagonalMatrix[{
    -Csch[rindlerChi]^2, 1, Sech[rindlerChi]^2}];
outerCovector = Table[D[globalMap[[2]], coordinate],
   {coordinate, rindlerCoordinates}];
outerJet = Map[FullSimplify[
     Normal@Series[PowerExpand@TrigToExp[# /. {
          rindlerTime -> 0, rindlerU -> -Log[endpointQ]}],
       {endpointQ, 0, 4}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0] &,
   outerCovector];
hJet = Map[FullSimplify[
     Normal@Series[PowerExpand@TrigToExp[# /. {
          rindlerTime -> 0, rindlerU -> -Log[endpointQ]}],
       {endpointQ, 0, 3}],
     Assumptions -> 0 < endpointQ < 1 && rindlerChi > 0 &&
       Element[modeFrequency, Integers] && modeFrequency >= 2] &,
   symbolicRindlerH, {2}];
hInverseJet = Map[truncateJet,
   -backgroundInverseRindler . hJet . backgroundInverseRindler, {2}];

innerCovector = {0, -1, 0};
outerNormSquared = truncateJet[
   outerJet . backgroundInverseRindler . outerJet, 4];
normalNumerator = truncateJet[
   innerCovector . backgroundInverseRindler . outerJet, 4];
backgroundCosine = truncateJet[
   normalNumerator/Sqrt[outerNormSquared], 4];

deltaInnerNormSquared = truncateJet[
   innerCovector . hInverseJet . innerCovector, 4];
deltaOuterNormSquared = truncateJet[
   outerJet . hInverseJet . outerJet, 4];
deltaNormalNumerator = truncateJet[
   innerCovector . hInverseJet . outerJet, 4];
deltaCosine = truncateJet[
   deltaNormalNumerator/Sqrt[outerNormSquared] -
    backgroundCosine/2 (deltaInnerNormSquared +
      deltaOuterNormSquared/outerNormSquared), 3];
deltaAngle = truncateJet[
   -deltaCosine/Sqrt[1 - backgroundCosine^2], 3];
positiveQReduce[expression_] := PowerExpand[expression] /.
   Sqrt[endpointQ^2] -> endpointQ;
deltaAngle = Together[positiveQReduce[deltaAngle]];

(* At tau=0 the joint tangent is partial_tau and its background line density
   is sinh(chi). *)
deltaDensity = truncateJet[-hJet[[1, 1]]/(2 Sinh[rindlerChi]), 3];

coefficientList[expression_] := Table[FullSimplify[
    Coefficient[expression, endpointQ, order],
    Assumptions -> rindlerChi > 0 &&
     Element[modeFrequency, Integers] && modeFrequency >= 2],
   {order, 0, 3}];
jointAngleCoefficients = coefficientList[deltaAngle];
jointDensityCoefficients = coefficientList[deltaDensity];
firstNonzeroOrder[list_] := FirstCase[Range[0, Length[list] - 1],
   order_ /; !TrueQ[list[[order + 1]] === 0], Missing["NotFound"]];
jointAngleLeadingOrder = firstNonzeroOrder[jointAngleCoefficients];
jointDensityLeadingOrder = firstNonzeroOrder[jointDensityCoefficients];
leadingPhase = Exp[I modeFrequency Pi/4];
frequencyDegree[expression_] := Exponent[
   Cancel[Together[expression/leadingPhase]] // Numerator,
   modeFrequency];
jointAngleDegrees = frequencyDegree /@ jointAngleCoefficients[[3 ;; 4]];
jointDensityDegrees = frequencyDegree /@ jointDensityCoefficients[[3 ;; 4]];

(* Both leading coefficients carry the same phase and m(m^2-1), so their
   antisymmetric q^4 product vanishes.  The first possible q^5 coefficient
   combines orders (2,3) and (3,2). *)
leadingJointFluxContraction = FullSimplify[
   (jointAngleCoefficients[[3]] /. modeFrequency -> mm)
     (jointDensityCoefficients[[3]] /. modeFrequency -> nn) -
    (jointAngleCoefficients[[3]] /. modeFrequency -> nn)
     (jointDensityCoefficients[[3]] /. modeFrequency -> mm),
   Assumptions -> rindlerChi > 0 &&
    Element[{mm, nn}, Integers] && mm >= 2 && nn >= 2];
jointFluxQFiveDegreeBound = Max[
   jointAngleDegrees[[1]] + jointDensityDegrees[[2]],
   jointAngleDegrees[[2]] + jointDensityDegrees[[1]]];

angleTwoSmallWall = FullSimplify[Limit[
    jointAngleCoefficients[[3]]/rindlerChi,
    rindlerChi -> 0, Direction -> "FromAbove"]];
angleThreeSmallWall = FullSimplify[Limit[
    jointAngleCoefficients[[4]], rindlerChi -> 0,
    Direction -> "FromAbove"]];
densityTwoSmallWall = FullSimplify[Limit[
    jointDensityCoefficients[[3]]/rindlerChi,
    rindlerChi -> 0, Direction -> "FromAbove"]];
densityThreeSmallWall = FullSimplify[Limit[
    jointDensityCoefficients[[4]]/rindlerChi^2,
    rindlerChi -> 0, Direction -> "FromAbove"]];

testConditions = {
   FreeQ[{jointAngleCoefficients, jointDensityCoefficients},
    $Failed | Indeterminate | ComplexInfinity | DirectedInfinity],
   jointAngleLeadingOrder === 2,
   jointDensityLeadingOrder === 2,
   leadingJointFluxContraction === 0,
   jointAngleDegrees === {3, 4},
   jointDensityDegrees === {3, 4},
   jointFluxQFiveDegreeBound === 7,
   FreeQ[{angleTwoSmallWall, angleThreeSmallWall,
     densityTwoSmallWall, densityThreeSmallWall},
    Indeterminate | ComplexInfinity | DirectedInfinity]
   };
testIDs = {
   "moving-joint endpoint coefficients are finite",
   "joint angle variation starts at q squared",
   "joint density variation starts at q squared",
   "joint symplectic q fourth coefficient vanishes",
   "joint angle q2 q3 degrees are three and four",
   "joint density q2 q3 degrees are three and four",
   "joint q fifth degree bound is seven",
   "joint q2 q3 coefficients have finite small-wall scalings"
   };

Print[<|
  "BackgroundCosineLeading" -> FullSimplify[
    Limit[positiveQReduce[backgroundCosine], endpointQ -> 0,
     Direction -> "FromAbove"], Assumptions -> rindlerChi > 0],
  "JointAngleCoefficientsQ0ThroughQ3" -> jointAngleCoefficients,
  "JointDensityCoefficientsQ0ThroughQ3" -> jointDensityCoefficients,
  "LeadingJointFluxContraction" -> leadingJointFluxContraction,
  "AngleDegreesQ2Q3" -> jointAngleDegrees,
  "DensityDegreesQ2Q3" -> jointDensityDegrees,
  "JointFluxQFiveDegreeBound" -> jointFluxQFiveDegreeBound,
  "SmallWallScaledLimits" -> {angleTwoSmallWall, angleThreeSmallWall,
    densityTwoSmallWall, densityThreeSmallWall}|>];

adsRindlerSymbolicMovingJointOrderReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
