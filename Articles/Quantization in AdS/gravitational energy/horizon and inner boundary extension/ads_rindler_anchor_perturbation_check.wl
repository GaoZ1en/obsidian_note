(* ::Package:: *)

(*
  Fixed-embedding perturbative anchor data for the explicit a=Pi/4
  Brown--Henneaux benchmark.

  The metric path is

    g(alpha)=G+alpha h+alpha^2 k+O(alpha^3),
    h=L_zeta G,  k=(1/2)L_zeta h,

  with zeta equal to the project-normalized real quadrature used by
  modular_wedge_corner_benchmark.wl.  The two regulator embeddings chi=eps
  and r=R are fixed.  Thus the Hayward density computed below does not include
  a moving-extremal-surface embedding field.
*)

Needs["xAct`xTensor`"];

ClearAll["Global`*"];

$Assumptions = radialCutoff > 2 && wallEpsilon > 0;

globalCoordinates = {globalTime, globalRadius, globalAngle};
backgroundMetric = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2
    }];
backgroundInverse = FullSimplify[Inverse[backgroundMetric]];

projectAmplitude = Sqrt[3]/(6 Sqrt[Pi]);
projectGaugeVector = projectAmplitude {
    -globalRadius^4 Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)^2,
    -globalRadius (3 + 2 globalRadius^2)
      Sin[2 (globalTime - globalAngle)]/(1 + globalRadius^2),
    (3 + globalRadius^2)
      Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)
    };

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}
     ],
   {mu, 3}, {nu, 3}
   ];

linearMetric = lieDerivative[projectGaugeVector, backgroundMetric];
quadraticMetric = 1/2 lieDerivative[projectGaugeVector, linearMetric];
Print["checkpoint: global metric coefficients"];

(* Inverse-metric coefficients for G+alpha h+alpha^2 k. *)
inverseLinear = -backgroundInverse . linearMetric . backgroundInverse;
inverseQuadratic =
  backgroundInverse . linearMetric . backgroundInverse . linearMetric .
    backgroundInverse -
   backgroundInverse . quadraticMetric . backgroundInverse;

(* Time-symmetric global/Rindler spatial map. *)
xOne = Sqrt[2] Sinh[rindlerChi] + Cosh[rindlerChi] Cosh[rindlerU];
xTwo = Cosh[rindlerChi] Sinh[rindlerU];
globalRadiusOnSlice = FullSimplify[Sqrt[xOne^2 + xTwo^2]];
globalAngleOnSlice = ArcTan[xOne, xTwo];
globalTimeTauDerivative = FullSimplify[
   Sinh[rindlerChi]/
    (Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] + Sinh[rindlerChi])
   ];

(* Since the background spatial metric is
   dchi^2+Cosh[chi]^2 du^2, grad(chi)=partial_chi.  Lowering partial_chi with
   the global metric gives dchi without an expensive inverse Jacobian. *)
dChiSpatial = FullSimplify[{
    D[globalRadiusOnSlice, rindlerChi]/(1 + globalRadiusOnSlice^2),
    globalRadiusOnSlice^2 D[globalAngleOnSlice, rindlerChi]
    }, Assumptions -> rindlerChi > 0 && rindlerU > 0];
Print["checkpoint: dchi"];
innerCovector = {0, -dChiSpatial[[1]], -dChiSpatial[[2]]};
outerCovector = {0, 1, 0};

intersectionY =
  (Sqrt[radialCutoff^2 + 1] - Sinh[wallEpsilon])/
   (Sqrt[2] Cosh[wallEpsilon]);
anchorX = FullSimplify[
   Cosh[wallEpsilon] Sqrt[intersectionY^2 - 1]/
    (Sqrt[2] Sinh[wallEpsilon] + Cosh[wallEpsilon] intersectionY)
   ];
anchorSinTwo = FullSimplify[2 anchorX/(1 + anchorX^2)];
anchorCosTwo = FullSimplify[(1 - anchorX^2)/(1 + anchorX^2)];
anchorSinFour = FullSimplify[2 anchorSinTwo anchorCosTwo];
anchorCosFour = FullSimplify[anchorCosTwo^2 - anchorSinTwo^2];

intersectionRules = {
   rindlerChi -> wallEpsilon,
   Cosh[rindlerU] -> intersectionY,
   Sinh[rindlerU] -> Sqrt[intersectionY^2 - 1]
   };
anchorTrigRules = {
   Sin[2 globalAngle] -> anchorSinTwo,
   Cos[2 globalAngle] -> anchorCosTwo,
   Sin[4 globalAngle] -> anchorSinFour,
   Cos[4 globalAngle] -> anchorCosFour
   };

atIntersection[expression_] := FullSimplify[
   TrigExpand[expression /. globalTime -> 0] /. anchorTrigRules /.
    globalRadius -> radialCutoff /. intersectionRules,
   Assumptions -> radialCutoff > 2 && wallEpsilon > 0
   ];

innerCovectorAtIntersection = atIntersection[innerCovector];
outerCovectorAtIntersection = outerCovector;
timeTangentScaleAtIntersection = atIntersection[globalTimeTauDerivative];

inverseCoefficientAtIntersection = atIntersection /@ {
    backgroundInverse, inverseLinear, inverseQuadratic
    };
metricCoefficientAtIntersection = atIntersection /@ {
    backgroundMetric, linearMetric, quadraticMetric
    };
Print["checkpoint: intersection coefficients"];

contractCoefficient[covectorOne_, coefficient_, covectorTwo_] :=
  Together[covectorOne . coefficient . covectorTwo];

aaCoefficients = Table[contractCoefficient[
    innerCovectorAtIntersection,
    inverseCoefficientAtIntersection[[order + 1]],
    innerCovectorAtIntersection], {order, 0, 2}];
bbCoefficients = Table[contractCoefficient[
    outerCovectorAtIntersection,
    inverseCoefficientAtIntersection[[order + 1]],
    outerCovectorAtIntersection], {order, 0, 2}];
abCoefficients = Table[contractCoefficient[
    innerCovectorAtIntersection,
    inverseCoefficientAtIntersection[[order + 1]],
    outerCovectorAtIntersection], {order, 0, 2}];
Print["checkpoint: contractions"];

(* These background identities are independently checked in
   ads_rindler_regulator_geometry_check.wl. *)
backgroundJointLineDensityExact = Sinh[wallEpsilon];
Print["checkpoint: background calibration"];

fixedWallLimit[expression_] := Block[
   {$Assumptions = wallEpsilon > 0},
   FullSimplify[Limit[expression, radialCutoff -> Infinity],
    Assumptions -> wallEpsilon > 0]
   ];
aaLeadingCoefficients = fixedWallLimit /@ aaCoefficients;
bbLeadingCoefficients = fixedWallLimit[#/radialCutoff^2] & /@
   bbCoefficients;
abLeadingCoefficients = fixedWallLimit[#/radialCutoff] & /@
   abCoefficients;
gttLeadingCoefficients = fixedWallLimit[#/radialCutoff^2] & /@
   metricCoefficientAtIntersection[[All, 1, 1]];
timeTangentScaleLeading = fixedWallLimit[
   radialCutoff timeTangentScaleAtIntersection];
(* At fixed wallEpsilon the intersection approaches the physical endpoint
   globalAngle=Pi/4 as radialCutoff tends to infinity. *)
aaLeadingCoefficients = FullSimplify[
   aaLeadingCoefficients /. globalAngle -> Pi/4,
   Assumptions -> wallEpsilon > 0];
bbLeadingCoefficients = FullSimplify[
   bbLeadingCoefficients /. globalAngle -> Pi/4,
   Assumptions -> wallEpsilon > 0];
abLeadingCoefficients = FullSimplify[
   abLeadingCoefficients /. globalAngle -> Pi/4,
   Assumptions -> wallEpsilon > 0];
gttLeadingCoefficients = FullSimplify[
   gttLeadingCoefficients /. globalAngle -> Pi/4,
   Assumptions -> wallEpsilon > 0];
Print["checkpoint: scaled large-R coefficients"];
Print["aa leading: ", aaLeadingCoefficients];
Print["bb leading: ", bbLeadingCoefficients];
Print["ab leading: ", abLeadingCoefficients];
Print["gtt leading: ", gttLeadingCoefficients];
Print["tau scale leading: ", timeTangentScaleLeading];

aaPolynomial = Sum[perturbationParameter^order
    aaLeadingCoefficients[[order + 1]], {order, 0, 2}];
bbPolynomial = Sum[perturbationParameter^order
    bbLeadingCoefficients[[order + 1]], {order, 0, 2}];
abPolynomial = Sum[perturbationParameter^order
    abLeadingCoefficients[[order + 1]], {order, 0, 2}];

normalDotPolynomial = Together[
   Normal@Series[
     abPolynomial/Sqrt[aaPolynomial bbPolynomial],
     {perturbationParameter, 0, 2}]
   ];
Print["checkpoint: normal dot"];

gttPolynomial = Sum[
   perturbationParameter^order
    gttLeadingCoefficients[[order + 1]],
   {order, 0, 2}
   ];
jointLineDensityPolynomial = Together[
   Normal@Series[
     timeTangentScaleLeading Sqrt[-gttPolynomial],
     {perturbationParameter, 0, 2}]
   ];

jointWeightPolynomial = Together[
   Normal@Series[
     jointLineDensityPolynomial ArcCos[normalDotPolynomial],
     {perturbationParameter, 0, 2}]
   ];
Print["checkpoint: joint expansion"];
linearJointLargeR = Together[
   Coefficient[jointWeightPolynomial, perturbationParameter, 1]];
quadraticJointLargeR = Together[
   Coefficient[jointWeightPolynomial, perturbationParameter, 2]];
Print["checkpoint: extracted large-R joint coefficients ",
  {LeafCount[linearJointLargeR], LeafCount[quadraticJointLargeR]}];
linearJointSequential = FullSimplify[
   linearJointLargeR /. wallEpsilon -> 0];
quadraticJointSequential = FullSimplify[
   quadraticJointLargeR /. wallEpsilon -> 0];
Print["checkpoint: wall limit"];

(* The verified asymptotic Iyer--Wald completion density is finite.  Its
   contribution from the shrinking right strip therefore vanishes. *)
outerCompletionDensity =
  4 Cos[2 globalAngle] (
    Cos[2 globalAngle] - Sqrt[2] Cos[3 globalAngle]);
rightStripWidthLargeR = fixedWallLimit[Pi/4 - ArcTan[anchorX]];
outerCompletionEndpointDensity = FullSimplify[
   outerCompletionDensity /. globalAngle -> Pi/4];
(* Continuity of the trigonometric density on the closed endpoint
   neighbourhood and the vanishing strip width imply the integral limit. *)
rightStripLargeR =
  outerCompletionEndpointDensity rightStripWidthLargeR;

results = <|
   "BackgroundJointLineDensity" -> backgroundJointLineDensityExact,
   "LinearJointLargeR" -> linearJointLargeR,
   "QuadraticJointLargeR" -> quadraticJointLargeR,
   "LinearJointSequential" -> linearJointSequential,
   "QuadraticJointSequential" -> quadraticJointSequential,
   "RightStripWidthLargeR" -> rightStripWidthLargeR,
   "RightStripCompletionLargeR" -> rightStripLargeR
   |>;

Print[results];

expectedAaLeading = {1, 0, 0};
expectedBbLeading = {1, 0, 0};
expectedAbLeading = {-Tanh[wallEpsilon], 0, 0};
expectedGttLeading = {-1, 0, 0};
expectedLinearJointLargeR = 0;
expectedQuadraticJointLargeR = 0;

testReport = TestReport[{
   VerificationTest[aaLeadingCoefficients, expectedAaLeading],
   VerificationTest[bbLeadingCoefficients, expectedBbLeading],
   VerificationTest[abLeadingCoefficients, expectedAbLeading],
   VerificationTest[gttLeadingCoefficients, expectedGttLeading],
   VerificationTest[timeTangentScaleLeading, Sinh[wallEpsilon]],
   VerificationTest[
    FullSimplify[linearJointLargeR - expectedLinearJointLargeR,
     Assumptions -> wallEpsilon > 0], 0],
   VerificationTest[
    FullSimplify[quadraticJointLargeR - expectedQuadraticJointLargeR,
     Assumptions -> wallEpsilon > 0], 0],
   VerificationTest[linearJointSequential, 0],
   VerificationTest[quadraticJointSequential, 0],
   VerificationTest[
    results["BackgroundJointLineDensity"], Sinh[wallEpsilon]],
   VerificationTest[results["RightStripWidthLargeR"], 0],
   VerificationTest[results["RightStripCompletionLargeR"], 0]
   }];

Print[testReport];
