(* ::Package:: *)

(*
  Finite-cutoff Brown--York Neumann polarization on the non-rotating BTZ
  brick wall.  The calculation uses the inner outward normal n=-d/d rho and
  the project convention

    Pi^{ij}=sqrt(-gamma) (K^{ij}-K gamma^{ij})/kappa_p^2,
    B=-1/2 Pi^{ij} delta gamma_ij.

  It tests the area-changing r_+ family and both chiral Brown--Henneaux
  representatives before any near-horizon smooth completion is imposed.
*)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  t, rho, phi, rp, kp2, boostScale, mode, chirality, alpha, gamma,
  gammaInverse,
  wallMomentum, linearizedWallMomentum, lieDerivative, boundaryWave,
  waveFirst, waveSecond, brownHenneauxVector, backgroundMetric, perturbation,
  momentumVariation, inducedVariation, neumannDensity,
  boundarySource, neumannVariation, horizonArea
  ];

coordinates = {t, rho, phi};
backgroundMetric = {
   {-rp^2 Sinh[rho]^2, 0, 0},
   {0, 1, 0},
   {0, 0, rp^2 Cosh[rho]^2}
   };

lieDerivative[vector_, tensor_] := Table[
   FullSimplify[
    Sum[
      vector[[a]] D[tensor[[mu, nu]], coordinates[[a]]],
      {a, 3}
      ] +
     Sum[
      tensor[[a, nu]] D[vector[[a]], coordinates[[mu]]],
      {a, 3}
      ] +
     Sum[
      tensor[[mu, a]] D[vector[[a]], coordinates[[nu]]],
      {a, 3}
      ]
    ],
   {mu, 3}, {nu, 3}
   ];

(* Gaussian-normal inner-wall momentum density. *)
wallMomentum[metric_] := Module[
   {induced, inducedInverse, extrinsic, extrinsicTrace, density},
   induced = metric[[{1, 3}, {1, 3}]];
   inducedInverse = FullSimplify[Inverse[induced]];
   extrinsic = FullSimplify[-1/2 D[induced, rho]];
   extrinsicTrace = FullSimplify[
     Tr[inducedInverse . extrinsic]
     ];
   density = FullSimplify[Sqrt[-Det[induced]]];
   FullSimplify[
    density (
       inducedInverse . extrinsic . inducedInverse -
        extrinsicTrace inducedInverse
       )/kp2,
    Assumptions -> {rp > 0, rho > 0}
    ]
   ];

(* Exact first variation about a background induced metric.  This avoids a
   symbolic inversion of the fully perturbed 2x2 metric. *)
linearizedWallMomentum[metric0_, variation_] := Module[
   {induced0, inverse0, extrinsic0, trace0, density0, variationInduced,
    variationInverse, variationExtrinsic, variationTrace, variationDensity,
    tensor0, variationTensor},
   induced0 = metric0[[{1, 3}, {1, 3}]];
   variationInduced = variation[[{1, 3}, {1, 3}]];
   inverse0 = FullSimplify[Inverse[induced0]];
   extrinsic0 = FullSimplify[-1/2 D[induced0, rho]];
   trace0 = FullSimplify[Tr[inverse0 . extrinsic0]];
   density0 = rp^2 Sinh[rho] Cosh[rho];
   variationInverse = FullSimplify[-inverse0 . variationInduced . inverse0];
   variationExtrinsic = FullSimplify[-1/2 D[variationInduced, rho]];
   variationTrace = FullSimplify[
     Tr[variationInverse . extrinsic0 + inverse0 . variationExtrinsic]
     ];
   variationDensity = FullSimplify[
     density0 Tr[inverse0 . variationInduced]/2
     ];
   tensor0 = FullSimplify[
     inverse0 . extrinsic0 . inverse0 - trace0 inverse0
     ];
   variationTensor = FullSimplify[
     variationInverse . extrinsic0 . inverse0 +
      inverse0 . variationExtrinsic . inverse0 +
      inverse0 . extrinsic0 . variationInverse -
      variationTrace inverse0 - trace0 variationInverse
     ];
   FullSimplify[(variationDensity tensor0 + density0 variationTensor)/kp2]
   ];

backgroundMomentum = wallMomentum[backgroundMetric];
backgroundInduced = backgroundMetric[[{1, 3}, {1, 3}]];

(* A unified left/right representative. chirality=+1 gives t+phi and
   chirality=-1 gives t-phi. *)
boundaryWave = Cos[mode (t + chirality phi)];
waveFirst = D[boundaryWave, t];
waveSecond = D[boundaryWave, {t, 2}];
brownHenneauxVector = {
   boundaryWave/2 +
    waveSecond (Coth[rho] - 1)/(2 rp^2),
   -waveFirst/2,
   chirality (
     boundaryWave/2 -
      waveSecond (1 - Tanh[rho])/(2 rp^2)
     )
   };

perturbation = lieDerivative[brownHenneauxVector, backgroundMetric];
momentumVariation[modeValue_, chiralityValue_] := FullSimplify[
   linearizedWallMomentum[
    backgroundMetric,
    perturbation /. {mode -> modeValue, chirality -> chiralityValue}
    ],
   Assumptions -> {rp > 0, rho > 0}
   ];
inducedVariation = perturbation[[{1, 3}, {1, 3}]];

(* The Neumann Legendre density and its abstract field-space identity. *)
neumannDensity = 1/2 Sum[
    backgroundMomentum[[i, j]] backgroundInduced[[i, j]],
    {i, 2}, {j, 2}
    ] // FullSimplify;
boundarySource = -1/2 Sum[
    backgroundMomentum[[i, j]] D[backgroundInduced[[i, j]], rp],
    {i, 2}, {j, 2}
    ];
neumannVariation = FullSimplify[D[neumannDensity, rp]];
horizonArea = 2 Pi rp;

(* The fixed-boost area family uses lambda as its time coordinate and
   g_lambda lambda=-boostScale^2 sinh^2 rho.  Unlike the fixed-t family, its
   Neumann momentum is not constant under delta r_+. *)
fixedBoostMetric = {
   {-boostScale^2 Sinh[rho]^2, 0, 0},
   {0, 1, 0},
   {0, 0, rp^2 Cosh[rho]^2}
   };
fixedBoostInduced = fixedBoostMetric[[{1, 3}, {1, 3}]];
fixedBoostMomentum = FullSimplify[
   wallMomentum[fixedBoostMetric],
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
fixedBoostMomentumVariation = FullSimplify[
   D[fixedBoostMomentum, rp],
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
fixedBoostSourceDensity = FullSimplify[
   -1/2 Sum[
     fixedBoostMomentum[[i, j]] D[fixedBoostInduced[[i, j]], rp],
     {i, 2}, {j, 2}
     ],
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
fixedBoostNeumannDensity = FullSimplify[
   1/2 Sum[
     fixedBoostMomentum[[i, j]] fixedBoostInduced[[i, j]],
     {i, 2}, {j, 2}
     ],
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
fixedBoostNeumannSourceDensity = FullSimplify[
   fixedBoostSourceDensity + D[fixedBoostNeumannDensity, rp],
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
fixedBoostFusedCornerDerivative = 2 Pi boostScale Cosh[rho]/kp2;
legendreTransgressionResidual[legendreCoefficient_] := FullSimplify[
   2 Pi (
     fixedBoostSourceDensity +
      legendreCoefficient D[fixedBoostNeumannDensity, rp]
     ) + fixedBoostFusedCornerDerivative,
   Assumptions -> {rp > 0, boostScale > 0, rho > 0}
   ];
legendreHorizonResidual[legendreCoefficient_] := FullSimplify[
   Limit[
    legendreTransgressionResidual[legendreCoefficient],
    rho -> 0, Direction -> "FromAbove"
    ],
   Assumptions -> {rp > 0, boostScale > 0}
   ];

(* Pair the Brown--Henneaux variation with the r_+ variation in the wall
   symplectic flux. *)
parameterInducedVariation = D[backgroundInduced, rp];
parameterMomentumVariation = D[backgroundMomentum, rp];
mixedFluxDensity = FullSimplify[
   -1/2 Sum[
     momentumVariation[1, 1][[i, j]] parameterInducedVariation[[i, j]] -
      parameterMomentumVariation[[i, j]] inducedVariation[[i, j]],
     {i, 2}, {j, 2}
     ],
   Assumptions -> {rp > 0, rho > 0, mode >= 1, chirality^2 == 1}
   ];

nearHorizonVectorLeading = FullSimplify[
   Series[brownHenneauxVector, {rho, 0, 1}] // Normal,
   Assumptions -> {rp > 0, mode >= 1, chirality^2 == 1}
   ];
nearHorizonInducedLeading = FullSimplify[
   Series[inducedVariation, {rho, 0, 0}] // Normal,
   Assumptions -> {rp > 0, mode >= 1, chirality^2 == 1}
   ];

backgroundInverse = FullSimplify[Inverse[backgroundMetric]];
perturbationNorm[modeValue_, chiralityValue_] := FullSimplify[
   Sum[
    backgroundInverse[[mu, aa]] backgroundInverse[[nu, bb]]
     (perturbation /. {mode -> modeValue, chirality -> chiralityValue})[[mu, nu]]
     (perturbation /. {mode -> modeValue, chirality -> chiralityValue})[[aa, bb]],
    {mu, 3}, {nu, 3}, {aa, 3}, {bb, 3}
    ],
   Assumptions -> {rp > 0, rho > 0}
   ];
leftMode1NormPole = FullSimplify[
   Limit[rho^2 perturbationNorm[1, 1], rho -> 0,
    Direction -> "FromAbove"],
   Assumptions -> rp > 0
   ];
rightMode2NormPole = FullSimplify[
   Limit[rho^2 perturbationNorm[2, -1], rho -> 0,
    Direction -> "FromAbove"],
   Assumptions -> rp > 0
   ];

results = <|
   "BackgroundMomentum" -> backgroundMomentum,
   "ParameterMomentumVariation" -> parameterMomentumVariation,
   "NeumannDensity" -> neumannDensity,
   "ParameterSourcePlusNeumannVariation" ->
    FullSimplify[boundarySource + neumannVariation],
   "HorizonAreaVariation" -> D[horizonArea, rp],
   "FixedBoostMomentum" -> fixedBoostMomentum,
   "FixedBoostMomentumVariation" -> fixedBoostMomentumVariation,
   "FixedBoostSourceDensity" -> fixedBoostSourceDensity,
   "FixedBoostNeumannDensity" -> fixedBoostNeumannDensity,
   "FixedBoostNeumannSourceDensity" -> fixedBoostNeumannSourceDensity,
   "DirichletTransgressionResidual" -> legendreHorizonResidual[0],
   "NeumannTransgressionResidual" -> legendreHorizonResidual[1],
   "GeneralLegendreTransgressionResidual" ->
    legendreHorizonResidual[legendreParameter],
   "BrownHenneauxRadialMetricComponents" ->
    FullSimplify[
     {perturbation[[2, 2]], perturbation[[1, 2]], perturbation[[2, 3]]},
     Assumptions -> chirality^2 == 1
     ],
   "LeftMode1MomentumVariation" -> momentumVariation[1, 1],
   "RightMode2MomentumVariation" -> momentumVariation[2, -1],
   "MixedFluxDensity" -> mixedFluxDensity,
   "NearHorizonVectorLeading" -> nearHorizonVectorLeading,
   "NearHorizonInducedLeading" -> nearHorizonInducedLeading,
   "LeftMode1InvariantPole" -> leftMode1NormPole,
   "RightMode2InvariantPole" -> rightMode2NormPole
   |>;

Print[results];

expectedMomentum = {{-1/kp2, 0}, {0, 1/kp2}};

testReport = TestReport[{
   VerificationTest[results["BackgroundMomentum"], expectedMomentum],
   VerificationTest[results["ParameterMomentumVariation"],
    ConstantArray[0, {2, 2}]],
   VerificationTest[results["NeumannDensity"],
    rp^2 Cosh[2 rho]/(2 kp2)],
   VerificationTest[results["ParameterSourcePlusNeumannVariation"], 0],
   VerificationTest[results["HorizonAreaVariation"], 2 Pi],
   VerificationTest[
    results["FixedBoostMomentum"],
    {{-rp/(boostScale kp2), 0}, {0, boostScale/(rp kp2)}}
    ],
   VerificationTest[
    results["FixedBoostMomentumVariation"],
    {{-1/(boostScale kp2), 0},
     {0, -boostScale/(rp^2 kp2)}}
    ],
   VerificationTest[
    results["FixedBoostSourceDensity"],
    -boostScale Cosh[rho]^2/kp2
    ],
   VerificationTest[
    results["FixedBoostNeumannDensity"],
    boostScale rp Cosh[2 rho]/(2 kp2)
    ],
   VerificationTest[
    results["FixedBoostNeumannSourceDensity"],
    -boostScale/(2 kp2)
    ],
   VerificationTest[results["DirichletTransgressionResidual"], 0],
   VerificationTest[
    results["NeumannTransgressionResidual"],
    Pi boostScale/kp2
    ],
   VerificationTest[
    results["GeneralLegendreTransgressionResidual"],
    Pi boostScale legendreParameter/kp2
    ],
   VerificationTest[results["BrownHenneauxRadialMetricComponents"],
    {0, 0, 0}],
   VerificationTest[
    FullSimplify[
     results["LeftMode1MomentumVariation"]
     ],
    ConstantArray[0, {2, 2}]
    ],
   VerificationTest[
    FullSimplify[
     results["RightMode2MomentumVariation"]
     ],
    ConstantArray[0, {2, 2}]
    ],
   VerificationTest[results["MixedFluxDensity"], 0],
   VerificationTest[
    FullSimplify[results["LeftMode1InvariantPole"] -
      1 (1 + rp^2)^2 Sin[t + phi]^2/(2 rp^4),
     Assumptions -> rp > 0],
    0
    ],
   VerificationTest[
    FullSimplify[results["RightMode2InvariantPole"] -
      2 (4 + rp^2)^2 Sin[2 (t - phi)]^2/rp^4,
     Assumptions -> rp > 0],
    0
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
