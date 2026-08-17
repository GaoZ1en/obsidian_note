(* ::Package:: *)

(* Compact non-rotating BTZ brick-wall geometry in the project convention. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

DefManifold[M, 3, {a, b, c, d}];
DefChart[btz, M, {0, 1, 2}, {tt[], rr[], pp[]}];
DefConstantSymbol /@ {rp, kp2, boostScale};

metricX = {
   {-rp^2 Sinh[rr[]]^2, 0, 0},
   {0, 1, 0},
   {0, 0, rp^2 Cosh[rr[]]^2}
   };
metricCTensor = CTensor[metricX, {-btz, -btz}];
SetCMetric[metricCTensor, btz, SignatureOfMetric -> {2, 1, 0}];

MetricCompute[
  metricCTensor, btz, "Ricci"[-1, -1],
  CVSimplify -> FullSimplify, Verbose -> False
  ];
MetricCompute[
  metricCTensor, btz, "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify, Verbose -> False
  ];

covariantDerivative = CovDOfMetric[metricCTensor];
coordinateDerivative = GiveSymbol[PD, btz];
ricciX = ToValues[Ricci[covariantDerivative]] /.
   CTensor[array_, bases_, weight_] :> array;
christoffelX =
  ToValues[Christoffel[covariantDerivative, coordinateDerivative]] /.
   CTensor[array_, bases_, weight_] :> array;

coordinateRules = {tt[] -> t, rr[] -> rho, pp[] -> phi};
metric = metricX /. coordinateRules;
ricci = ricciX /. coordinateRules;
christoffel = christoffelX /. coordinateRules;
inverseMetric = FullSimplify[Inverse[metric]];
coordinates = {t, rho, phi};

lieMetric[vector_] := Table[
   FullSimplify[
    Sum[vector[[alpha]] D[metric[[mu, nu]], coordinates[[alpha]]], {alpha, 3}] +
     Sum[metric[[alpha, nu]] D[vector[[alpha]], coordinates[[mu]]], {alpha, 3}] +
     Sum[metric[[mu, alpha]] D[vector[[alpha]], coordinates[[nu]]], {alpha, 3}]
    ],
   {mu, 3}, {nu, 3}
   ];

covector[vector_] := FullSimplify[metric . vector];

covariantDerivativeOfCovector[vector_] := Module[
   {vectorCovariant = covector[vector]},
   Table[
    FullSimplify[
     D[vectorCovariant[[nu]], coordinates[[mu]]] -
      Sum[
       christoffel[[lambda, mu, nu]] vectorCovariant[[lambda]],
       {lambda, 3}
       ]
     ],
    {mu, 3}, {nu, 3}
    ]
   ];

raiseBoth[array_] := Table[
   FullSimplify[
    Sum[
     inverseMetric[[mu, alpha]] inverseMetric[[nu, beta]] array[[alpha, beta]],
     {alpha, 3}, {beta, 3}
     ]
    ],
   {mu, 3}, {nu, 3}
   ];

surfaceGravitySquared[down_, up_] := FullSimplify[
   -1/2 Sum[down[[mu, nu]] up[[mu, nu]], {mu, 3}, {nu, 3}]
   ];

dot[vector1_, vector2_] := FullSimplify[vector1 . metric . vector2];

divergence[vector_] := FullSimplify[
   Sum[
    D[vector[[mu]], coordinates[[mu]]] +
     Sum[christoffel[[mu, mu, lambda]] vector[[lambda]], {lambda, 3}],
    {mu, 3}
    ]
   ];

stationaryKilling = {1, 0, 0};
modularKilling = {2 Pi/rp, 0, 0};
boostNormalizedKilling = {boostScale/rp, 0, 0};
futureNormal = {1/(rp Sinh[rho]), 0, 0};
outerWallNormal = {0, 1, 0};
innerWallNormal = {0, -1, 0};

nablaStationary = covariantDerivativeOfCovector[stationaryKilling];
nablaStationaryUp = raiseBoth[nablaStationary];
nablaModular = covariantDerivativeOfCovector[modularKilling];
nablaModularUp = raiseBoth[nablaModular];
nablaBoostNormalized = covariantDerivativeOfCovector[boostNormalizedKilling];
nablaBoostNormalizedUp = raiseBoth[nablaBoostNormalized];

outerExtrinsicTrace = divergence[outerWallNormal];
innerExtrinsicTrace = divergence[innerWallNormal];
wallDensity = rp^2 Sinh[rho] Cosh[rho];
cutDensity = rp Cosh[rho];

modularNoether = Table[
   FullSimplify[
    (nablaModularUp[[mu, nu]] - nablaModularUp[[nu, mu]])/(2 kp2)
    ],
   {mu, 3}, {nu, 3}
   ];
boostNormalizedNoether = Table[
   FullSimplify[
    (nablaBoostNormalizedUp[[mu, nu]] -
       nablaBoostNormalizedUp[[nu, mu]])/(2 kp2)
    ],
   {mu, 3}, {nu, 3}
   ];
futureNormalCovariant = covector[futureNormal];
innerWallNormalCovariant = covector[innerWallNormal];
innerNoetherOutward = FullSimplify[
   2 Pi cutDensity
    Sum[
     futureNormalCovariant[[mu]] innerWallNormalCovariant[[nu]]
      modularNoether[[mu, nu]],
     {mu, 3}, {nu, 3}
     ]
   ];
innerBoostNoetherOutward = FullSimplify[
   2 Pi cutDensity
    Sum[
     futureNormalCovariant[[mu]] innerWallNormalCovariant[[nu]]
      boostNormalizedNoether[[mu, nu]],
     {mu, 3}, {nu, 3}
     ]
   ];

gammaTT = -rp^2 Sinh[rho]^2;
gammaPP = rp^2 Cosh[rho]^2;
innerKTT = FullSimplify[1/2 innerWallNormal[[2]] D[gammaTT, rho]];
innerKPP = FullSimplify[1/2 innerWallNormal[[2]] D[gammaPP, rho]];
innerBrownYorkTT = FullSimplify[
   (innerKTT - innerExtrinsicTrace gammaTT)/kp2
   ];
innerBrownYorkPP = FullSimplify[
   (innerKPP - innerExtrinsicTrace gammaPP)/kp2
   ];
innerBrownYorkPPUpper = FullSimplify[innerBrownYorkPP/gammaPP^2];
innerBrownYorkModularCharge = FullSimplify[
   -2 Pi cutDensity futureNormal[[1]] modularKilling[[1]] innerBrownYorkTT
   ];

(* Fixed-boost regulator.  In a unit flow coordinate lambda the wall metric is
   -boostScale^2 Sinh[rho]^2 d lambda^2 + gammaPP d phi^2.  Vary rp while
   holding boostScale, rho, and the flow interval fixed. *)
boostWallDensity = boostScale rp Sinh[rho] Cosh[rho];
boostWallSourceRp = FullSimplify[
   -1/2 2 Pi boostWallDensity innerBrownYorkPPUpper D[gammaPP, rp]
   ];
horizonArea = 2 Pi rp;
wallCutArea = 2 Pi rp Cosh[rho];
boostCornerAction = boostScale wallCutArea/kp2;
boostWallPlusCornerSourceRp = FullSimplify[
   boostWallSourceRp + D[boostCornerAction, rp]
   ];

results = <|
   "RicciPlus2Metric" -> FullSimplify[ricci + 2 metric],
   "LieStationaryMetric" -> lieMetric[stationaryKilling],
   "FutureNormalNorm" -> dot[futureNormal, futureNormal],
   "OuterWallNormalNorm" -> dot[outerWallNormal, outerWallNormal],
   "InnerWallNormalNorm" -> dot[innerWallNormal, innerWallNormal],
   "FutureOuterOrthogonality" -> dot[futureNormal, outerWallNormal],
   "FutureInnerOrthogonality" -> dot[futureNormal, innerWallNormal],
   "StationarySurfaceGravitySquared" ->
    surfaceGravitySquared[nablaStationary, nablaStationaryUp],
   "ModularSurfaceGravitySquared" ->
    surfaceGravitySquared[nablaModular, nablaModularUp],
   "BoostNormalizedSurfaceGravitySquared" ->
    surfaceGravitySquared[nablaBoostNormalized, nablaBoostNormalizedUp],
   "OuterExtrinsicTrace" -> outerExtrinsicTrace,
   "InnerExtrinsicTrace" -> innerExtrinsicTrace,
   "InnerGHYDensity" -> FullSimplify[wallDensity innerExtrinsicTrace],
   "InnerNoetherOutward" -> innerNoetherOutward,
   "InnerNoetherHorizonLimit" ->
    FullSimplify[Limit[innerNoetherOutward, rho -> 0, Direction -> "FromAbove"]],
   "InnerBoostNoetherOutward" -> innerBoostNoetherOutward,
   "InnerBoostNoetherHorizonLimit" ->
    FullSimplify[
     Limit[innerBoostNoetherOutward, rho -> 0, Direction -> "FromAbove"]
     ],
   "AreaOver4G" -> 4 Pi^2 rp/kp2,
   "InnerBrownYorkModularCharge" -> innerBrownYorkModularCharge,
   "InnerBrownYorkHorizonLimit" ->
    FullSimplify[
     Limit[innerBrownYorkModularCharge, rho -> 0, Direction -> "FromAbove"]
     ],
   "BoostWallSourceRp" -> boostWallSourceRp,
   "BoostCornerVariationRp" -> FullSimplify[D[boostCornerAction, rp]],
   "BoostWallPlusCornerSourceRp" -> boostWallPlusCornerSourceRp,
   "BoostWallPlusCornerHorizonLimit" ->
    FullSimplify[
     Limit[boostWallPlusCornerSourceRp, rho -> 0, Direction -> "FromAbove"]
     ],
   "ParameterVariationInducedMetric" ->
    {D[gammaTT, rp], D[gammaPP, rp]}
   |>;

Print[results];

testReport = TestReport[{
  VerificationTest[results["RicciPlus2Metric"], ConstantArray[0, {3, 3}]],
  VerificationTest[results["LieStationaryMetric"], ConstantArray[0, {3, 3}]],
  VerificationTest[results["FutureNormalNorm"], -1],
  VerificationTest[results["OuterWallNormalNorm"], 1],
  VerificationTest[results["InnerWallNormalNorm"], 1],
  VerificationTest[results["FutureOuterOrthogonality"], 0],
  VerificationTest[results["FutureInnerOrthogonality"], 0],
  VerificationTest[
   results["OuterExtrinsicTrace"], Coth[rho] + Tanh[rho]
   ],
  VerificationTest[
   results["InnerExtrinsicTrace"], -2 Coth[2 rho]
   ],
  VerificationTest[
   results["InnerGHYDensity"], -rp^2 Cosh[2 rho]
   ],
  VerificationTest[
   results["InnerNoetherHorizonLimit"] + results["AreaOver4G"], 0
   ],
  VerificationTest[
   results["InnerBoostNoetherHorizonLimit"] +
    boostScale horizonArea/kp2,
   0
   ],
  VerificationTest[results["InnerBrownYorkHorizonLimit"], 0],
  VerificationTest[
   results["BoostWallSourceRp"],
   -2 Pi boostScale Cosh[rho]^2/kp2
   ],
  VerificationTest[
   results["BoostWallPlusCornerHorizonLimit"], 0
   ],
  VerificationTest[
   results["ParameterVariationInducedMetric"],
   {-2 rp Sinh[rho]^2, 2 rp Cosh[rho]^2}
   ]
  }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
