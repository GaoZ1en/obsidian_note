(* ::Package:: *)

(*
  Explicit area-displacement endpoint term for the a=Pi/4 RT geodesic and
  the project-normalized real Brown--Henneaux diffeomorphism.

  The normal-frame formula is the one verified independently by
  ads3_extremal_area_displacement_check.wl:

    B_area = [h_{ua} V^a + (1/2) V_a D_u V^a]_{partial gamma}.

  For h=L_zeta G the same geometric extremal curve has V=-zeta_perp.
*)

Needs["xAct`xTensor`"];

ClearAll["Global`*"];

globalCoordinates = {globalTime, globalRadius, globalAngle};
backgroundMetric = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2
    }];
backgroundInverse = FullSimplify[Inverse[backgroundMetric]];
backgroundChristoffel = Table[
   FullSimplify[
    1/2 Sum[
      backgroundInverse[[lambda, sigma]]
       (D[backgroundMetric[[sigma, nu]], globalCoordinates[[mu]]] +
        D[backgroundMetric[[sigma, mu]], globalCoordinates[[nu]]] -
        D[backgroundMetric[[mu, nu]], globalCoordinates[[sigma]]]),
      {sigma, 3}]
    ],
   {lambda, 3}, {mu, 3}, {nu, 3}
   ];

projectAmplitude = Sqrt[3]/(6 Sqrt[Pi]);
projectGaugeVector = projectAmplitude {
    -globalRadius^4 Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)^2,
    -globalRadius (3 + 2 globalRadius^2)
      Sin[2 (globalTime - globalAngle)]/(1 + globalRadius^2),
    (3 + globalRadius^2)
      Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)
    };

lieMetric[vector_] := Table[
   Together@Sum[
     vector[[lambda]] D[backgroundMetric[[mu, nu]],
        globalCoordinates[[lambda]]] +
      backgroundMetric[[lambda, nu]]
       D[vector[[lambda]], globalCoordinates[[mu]]] +
      backgroundMetric[[mu, lambda]]
       D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}
   ];
linearMetric = lieMetric[projectGaugeVector];
lieCovariantTwoTensor[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}
   ];
quadraticMetric =
  1/2 lieCovariantTwoTensor[projectGaugeVector, linearMetric];

(* Unit-speed RT geodesic at chi=0. *)
rtRadius = Sqrt[Cosh[2 geodesicU]];
rtAngle = ArcTan[Tanh[geodesicU]];
rtRules = {
   globalTime -> 0,
   globalRadius -> rtRadius,
   globalAngle -> rtAngle
   };
rtTangent = {0, D[rtRadius, geodesicU], D[rtAngle, geodesicU]};

(* Parallel orthonormal normal frame with eta_ab=diag(-1,1). *)
normalTime = {1/Sqrt[1 + rtRadius^2], 0, 0};
normalSpace = {
   0,
   Sqrt[2] Cosh[geodesicU]/rtRadius,
   -Sqrt[2] Sinh[geodesicU]/rtRadius^2
   };
normalFrame = {normalTime, normalSpace};
normalMetric = DiagonalMatrix[{-1, 1}];

metricOnRt = FullSimplify[backgroundMetric /. rtRules];
christoffelOnRt = FullSimplify[backgroundChristoffel /. rtRules];
linearMetricOnRt = FullSimplify[linearMetric /. rtRules];
quadraticMetricOnRt = FullSimplify[quadraticMetric /. rtRules];
gaugeVectorOnRt = FullSimplify[projectGaugeVector /. rtRules];

covariantDerivativeAlong[vector_] := Table[
   FullSimplify[
    D[vector[[mu]], geodesicU] +
     Sum[
      christoffelOnRt[[mu, nu, rho]] rtTangent[[nu]] vector[[rho]],
      {nu, 3}, {rho, 3}]
    ],
   {mu, 3}
   ];

tangentNormResidual = FullSimplify[
   rtTangent . metricOnRt . rtTangent - 1];
normalGramResidual = FullSimplify[
   Table[
     normalFrame[[a]] . metricOnRt . normalFrame[[b]],
     {a, 2}, {b, 2}] - normalMetric
   ];
tangentNormalResidual = FullSimplify[
   Table[
    rtTangent . metricOnRt . normalFrame[[a]], {a, 2}]
   ];
parallelNormalResidual = FullSimplify[
   covariantDerivativeAlong /@ normalFrame
   ];

(* Upper normal-frame components zeta^a=eta^{ab} n_b.zeta. *)
gaugeNormalUpper = FullSimplify[
   normalMetric . Table[
     normalFrame[[a]] . metricOnRt . gaugeVectorOnRt,
     {a, 2}]
   ];
displacementUpper = FullSimplify[-gaugeNormalUpper];
displacementLower = FullSimplify[normalMetric . displacementUpper];
displacementDerivativeUpper = FullSimplify[
   D[displacementUpper, geodesicU]];

metricUa = FullSimplify[
   Table[
    Sum[
     rtTangent[[mu]] normalFrame[[a, nu]]
      linearMetricOnRt[[mu, nu]],
     {mu, 3}, {nu, 3}],
    {a, 2}]
   ];

covariantDerivativeLinearMetric = Table[
   Together[
    D[linearMetric[[mu, nu]], globalCoordinates[[rho]]] -
     Sum[
      backgroundChristoffel[[lambda, rho, mu]]
        linearMetric[[lambda, nu]] +
       backgroundChristoffel[[lambda, rho, nu]]
        linearMetric[[mu, lambda]],
      {lambda, 3}]
    ],
   {rho, 3}, {mu, 3}, {nu, 3}
   ];
covariantDerivativeLinearMetricOnRt = FullSimplify[
   covariantDerivativeLinearMetric /. rtRules];
normalDerivativeMetricUU = FullSimplify[
   Table[
    Sum[
     normalFrame[[a, rho]] rtTangent[[mu]] rtTangent[[nu]]
      covariantDerivativeLinearMetricOnRt[[rho, mu, nu]],
     {rho, 3}, {mu, 3}, {nu, 3}],
    {a, 2}]
   ];

areaEndpointDensity = FullSimplify[
   metricUa . displacementUpper +
    1/2 displacementLower . displacementDerivativeUpper
   ];
linearMetricUU = FullSimplify[
   rtTangent . linearMetricOnRt . rtTangent];
quadraticMetricUU = FullSimplify[
   rtTangent . quadraticMetricOnRt . rtTangent];
fixedSurfaceQuadraticDensity = FullSimplify[
   quadraticMetricUU/2 - linearMetricUU^2/8];
crossAreaDensity = FullSimplify[
   1/2 displacementUpper . normalDerivativeMetricUU +
    metricUa . displacementDerivativeUpper];
embeddingAreaDensity = FullSimplify[
   1/2 (
    (normalMetric . displacementDerivativeUpper) .
      displacementDerivativeUpper +
     displacementLower . displacementUpper)];
totalQuadraticAreaDensity = FullSimplify[
   fixedSurfaceQuadraticDensity + crossAreaDensity +
    embeddingAreaDensity];
fixedSurfaceRightTail = FullSimplify[
   Limit[fixedSurfaceQuadraticDensity, geodesicU -> Infinity]];
fixedSurfaceLeftTail = FullSimplify[
   Limit[fixedSurfaceQuadraticDensity, geodesicU -> -Infinity]];
crossRightTail = FullSimplify[
   Limit[crossAreaDensity, geodesicU -> Infinity]];
crossLeftTail = FullSimplify[
   Limit[crossAreaDensity, geodesicU -> -Infinity]];
embeddingRightTail = FullSimplify[
   Limit[embeddingAreaDensity, geodesicU -> Infinity]];
embeddingLeftTail = FullSimplify[
   Limit[embeddingAreaDensity, geodesicU -> -Infinity]];
totalRightTail = FullSimplify[
   Limit[totalQuadraticAreaDensity, geodesicU -> Infinity]];
totalLeftTail = FullSimplify[
   Limit[totalQuadraticAreaDensity, geodesicU -> -Infinity]];
fixedSurfaceRightLeading = FullSimplify[
   Limit[Exp[2 geodesicU] fixedSurfaceQuadraticDensity,
    geodesicU -> Infinity]];
fixedSurfaceLeftLeading = FullSimplify[
   Limit[Exp[-2 geodesicU] fixedSurfaceQuadraticDensity,
    geodesicU -> -Infinity]];
crossRightLeading = FullSimplify[
   Limit[Exp[2 geodesicU] crossAreaDensity,
    geodesicU -> Infinity]];
crossLeftLeading = FullSimplify[
   Limit[Exp[-2 geodesicU] crossAreaDensity,
    geodesicU -> -Infinity]];
embeddingRightLeading = FullSimplify[
   Limit[Exp[2 geodesicU] embeddingAreaDensity,
    geodesicU -> Infinity]];
embeddingLeftLeading = FullSimplify[
   Limit[Exp[-2 geodesicU] embeddingAreaDensity,
    geodesicU -> -Infinity]];
totalRightLeading = FullSimplify[
   Limit[Exp[2 geodesicU] totalQuadraticAreaDensity,
    geodesicU -> Infinity]];
totalLeftLeading = FullSimplify[
   Limit[Exp[-2 geodesicU] totalQuadraticAreaDensity,
    geodesicU -> -Infinity]];
rightEndpointLimit = FullSimplify[
   Limit[areaEndpointDensity, geodesicU -> Infinity]];
leftEndpointLimit = FullSimplify[
   Limit[areaEndpointDensity, geodesicU -> -Infinity]];
orientedEndpointDifference = FullSimplify[
   rightEndpointLimit - leftEndpointLimit];
rightEndpointLeading = FullSimplify[
   Limit[Exp[2 geodesicU] areaEndpointDensity,
    geodesicU -> Infinity]];
leftEndpointLeading = FullSimplify[
   Limit[Exp[-2 geodesicU] areaEndpointDensity,
    geodesicU -> -Infinity]];

results = <|
   "TangentNormResidual" -> tangentNormResidual,
   "NormalGramResidual" -> normalGramResidual,
   "TangentNormalResidual" -> tangentNormalResidual,
   "ParallelNormalResidual" -> parallelNormalResidual,
   "GaugeNormalUpper" -> gaugeNormalUpper,
   "DisplacementUpper" -> displacementUpper,
   "MetricUa" -> metricUa,
   "AreaEndpointDensity" -> areaEndpointDensity,
   "LinearMetricUU" -> linearMetricUU,
   "QuadraticMetricUU" -> quadraticMetricUU,
   "FixedSurfaceQuadraticDensity" -> fixedSurfaceQuadraticDensity,
   "FixedSurfaceRightTail" -> fixedSurfaceRightTail,
   "FixedSurfaceLeftTail" -> fixedSurfaceLeftTail,
   "CrossAreaDensity" -> crossAreaDensity,
   "EmbeddingAreaDensity" -> embeddingAreaDensity,
   "TotalQuadraticAreaDensity" -> totalQuadraticAreaDensity,
   "CrossRightTail" -> crossRightTail,
   "CrossLeftTail" -> crossLeftTail,
   "EmbeddingRightTail" -> embeddingRightTail,
   "EmbeddingLeftTail" -> embeddingLeftTail,
   "TotalRightTail" -> totalRightTail,
   "TotalLeftTail" -> totalLeftTail,
   "FixedSurfaceRightLeading" -> fixedSurfaceRightLeading,
   "FixedSurfaceLeftLeading" -> fixedSurfaceLeftLeading,
   "CrossRightLeading" -> crossRightLeading,
   "CrossLeftLeading" -> crossLeftLeading,
   "EmbeddingRightLeading" -> embeddingRightLeading,
   "EmbeddingLeftLeading" -> embeddingLeftLeading,
   "TotalRightLeading" -> totalRightLeading,
   "TotalLeftLeading" -> totalLeftLeading,
   "RightEndpointLimit" -> rightEndpointLimit,
   "LeftEndpointLimit" -> leftEndpointLimit,
   "OrientedEndpointDifference" -> orientedEndpointDifference,
   "RightEndpointLeading" -> rightEndpointLeading,
   "LeftEndpointLeading" -> leftEndpointLeading
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[results["TangentNormResidual"], 0],
   VerificationTest[results["NormalGramResidual"], ConstantArray[0, {2, 2}]],
   VerificationTest[results["TangentNormalResidual"], {0, 0}],
   VerificationTest[
    results["ParallelNormalResidual"], ConstantArray[0, {2, 3}]],
   VerificationTest[results["FixedSurfaceRightTail"], 0],
   VerificationTest[results["FixedSurfaceLeftTail"], 0],
   VerificationTest[results["CrossRightTail"], 0],
   VerificationTest[results["CrossLeftTail"], 0],
   VerificationTest[results["EmbeddingRightTail"], 0],
   VerificationTest[results["EmbeddingLeftTail"], 0],
   VerificationTest[results["TotalRightTail"], 0],
   VerificationTest[results["TotalLeftTail"], 0],
   VerificationTest[results["FixedSurfaceRightLeading"], 0],
   VerificationTest[results["FixedSurfaceLeftLeading"], 0],
   VerificationTest[results["CrossRightLeading"], 0],
   VerificationTest[results["CrossLeftLeading"], 0],
   VerificationTest[results["EmbeddingRightLeading"], 0],
   VerificationTest[results["EmbeddingLeftLeading"], 0],
   VerificationTest[results["TotalRightLeading"], 0],
   VerificationTest[results["TotalLeftLeading"], 0],
   VerificationTest[results["RightEndpointLimit"], 0],
   VerificationTest[results["LeftEndpointLimit"], 0],
   VerificationTest[results["OrientedEndpointDifference"], 0],
   VerificationTest[results["RightEndpointLeading"], 0],
   VerificationTest[results["LeftEndpointLeading"], 0]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
If[testReport["TestsFailedCount"] =!= 0, Exit[1]];
