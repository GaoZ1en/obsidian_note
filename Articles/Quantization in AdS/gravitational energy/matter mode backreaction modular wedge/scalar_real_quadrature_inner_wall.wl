(* ::Package:: *)

(* Finite AdS--Rindler wall benchmark for the real quadrature of the lowest
   massless scalar mode.  The time-evolution Harlow--Wu endpoint one-form and
   the fully Dirichlet Hayward joint are computed separately. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll["Global`*"];

bulkAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 && chi > 0 &&
   Element[{
     tau, chi, u, intervalHalfWidth, amplitudeSquared
     }, Reals];
wallAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 && chi > 0 &&
   Element[{chi, u, intervalHalfWidth, amplitudeSquared}, Reals];
horizonAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
   Element[{u, tau, intervalHalfWidth, amplitudeSquared}, Reals];

intervalSine = Sin[intervalHalfWidth];
intervalCosine = Cos[intervalHalfWidth];
rindlerCoordinates = {tau, chi, u};

(* Embedding coordinates (X_-1,X_0,X_1,X_2). *)

rindlerEmbedding = {
   (Cosh[chi] Cosh[u]
      + intervalCosine Sinh[chi] Cosh[tau])/intervalSine,
   Sinh[chi] Sinh[tau],
   (Sinh[chi] Cosh[tau]
      + intervalCosine Cosh[chi] Cosh[u])/intervalSine,
   Cosh[chi] Sinh[u]
   };
embeddingJacobian = Table[
   D[rindlerEmbedding[[alpha]], rindlerCoordinates[[a]]],
   {alpha, 4}, {a, 3}
   ];
embeddingMetric = DiagonalMatrix[{-1, -1, 1, 1}];
rindlerBackground = DiagonalMatrix[{
    -Sinh[chi]^2, 1, Cosh[chi]^2
    }];
backgroundPullbackResidual = FullSimplify[
   Transpose[embeddingJacobian] . embeddingMetric .
     embeddingJacobian - rindlerBackground,
   Assumptions -> bulkAssumptions
   ];
rindlerBackgroundInverse = FullSimplify[Inverse[rindlerBackground]];

embeddingTimeCosine = rindlerEmbedding[[1]];
embeddingTimeSine = rindlerEmbedding[[2]];
embeddingRadialCosine = rindlerEmbedding[[3]];
embeddingRadialSine = rindlerEmbedding[[4]];
globalBackgroundFactor = FullSimplify[
   embeddingTimeCosine^2 + embeddingTimeSine^2,
   Assumptions -> bulkAssumptions
   ];
globalRadiusSquared = FullSimplify[
   embeddingRadialCosine^2 + embeddingRadialSine^2,
   Assumptions -> bulkAssumptions
   ];
globalCosineFourTime = Together[
   (
    embeddingTimeCosine^4
     - 6 embeddingTimeCosine^2 embeddingTimeSine^2
     + embeddingTimeSine^4
    )/globalBackgroundFactor^2
   ];
globalSineFourTime = Together[
   4 embeddingTimeCosine embeddingTimeSine (
     embeddingTimeCosine^2 - embeddingTimeSine^2
     )/globalBackgroundFactor^2
   ];

globalTimeDerivative = Table[
   Together[
    (embeddingTimeCosine
       D[embeddingTimeSine, rindlerCoordinates[[a]]]
      - embeddingTimeSine
       D[embeddingTimeCosine, rindlerCoordinates[[a]]])/
     globalBackgroundFactor
    ],
   {a, 3}
   ];
globalRadiusDerivative = Table[
   Together[
    (embeddingRadialCosine
       D[embeddingRadialCosine, rindlerCoordinates[[a]]]
      + embeddingRadialSine
       D[embeddingRadialSine, rindlerCoordinates[[a]]])/
     Sqrt[globalRadiusSquared]
    ],
   {a, 3}
   ];
globalRadiusNumeratorDerivative = Table[
   Together[
    embeddingRadialCosine
      D[embeddingRadialCosine, rindlerCoordinates[[a]]]
     + embeddingRadialSine
      D[embeddingRadialSine, rindlerCoordinates[[a]]]
    ],
   {a, 3}
   ];
globalAngleDerivative = Table[
   Together[
    (embeddingRadialCosine
       D[embeddingRadialSine, rindlerCoordinates[[a]]]
      - embeddingRadialSine
       D[embeddingRadialCosine, rindlerCoordinates[[a]]])/
     globalRadiusSquared
    ],
   {a, 3}
   ];

globalTimeResponse = (
   4 amplitudeSquared
    - 4 amplitudeSquared globalCosineFourTime/
     (3 globalBackgroundFactor^2)
   );
globalRadialResponse = (
   4 amplitudeSquared globalRadiusSquared/globalBackgroundFactor^3
    - 4 amplitudeSquared globalRadiusSquared globalCosineFourTime/
     globalBackgroundFactor^4
   );
rindlerMetricResponse = Table[
   Together[
    globalTimeResponse
      globalTimeDerivative[[a]] globalTimeDerivative[[b]]
     + globalRadialResponse
      globalRadiusNumeratorDerivative[[a]]
       globalRadiusNumeratorDerivative[[b]]/globalRadiusSquared
    ],
   {a, 3}, {b, 3}
   ];
symmetricDenominator =
  Cosh[chi] Cosh[u]
   + intervalCosine Sinh[chi];
symmetricDenominatorChi =
  Sinh[chi] Cosh[u]
   + intervalCosine Cosh[chi];
symmetricDenominatorU = Cosh[chi] Sinh[u];
symmetricRadiusSquared =
  (symmetricDenominator^2 - intervalSine^2)/intervalSine^2;
symmetricGlobalTimeResponse =
  4 amplitudeSquared (
    1 - intervalSine^4/(3 symmetricDenominator^4)
    );
symmetricGlobalRadialResponse = (
   4 amplitudeSquared intervalSine^4 *
    (symmetricDenominator^2 - intervalSine^2)^2/
    symmetricDenominator^8
   );
symmetricTimeTauDerivative =
  intervalSine Sinh[chi]/symmetricDenominator;
symmetricRadiusNumeratorChi =
  symmetricDenominator symmetricDenominatorChi/intervalSine^2;
symmetricRadiusNumeratorU =
  symmetricDenominator symmetricDenominatorU/intervalSine^2;
rindlerMetricResponseAtSymmetricSlice = {
   {
    symmetricGlobalTimeResponse symmetricTimeTauDerivative^2,
    0,
    0
    },
   {
    0,
    symmetricGlobalRadialResponse symmetricRadiusNumeratorChi^2/
     symmetricRadiusSquared,
    symmetricGlobalRadialResponse
     symmetricRadiusNumeratorChi symmetricRadiusNumeratorU/
      symmetricRadiusSquared
    },
   {
    0,
    symmetricGlobalRadialResponse
     symmetricRadiusNumeratorChi symmetricRadiusNumeratorU/
      symmetricRadiusSquared,
    symmetricGlobalRadialResponse symmetricRadiusNumeratorU^2/
     symmetricRadiusSquared
    }
   };

(* Only the tau-chi and tau-u components have a nonzero first tau jet at
   the reflection-symmetric cut. *)

symmetricTimeTauChiJet =
  D[symmetricTimeTauDerivative, chi];
symmetricTimeTauUJet =
  D[symmetricTimeTauDerivative, u];
symmetricRadiusNumeratorTauTau =
  Sinh[chi] (
    Sinh[chi] + intervalCosine Cosh[chi] Cosh[u]
    )/intervalSine^2;
symmetricTauChiJet = FullSimplify[
   symmetricGlobalTimeResponse symmetricTimeTauDerivative
      symmetricTimeTauChiJet
    + symmetricGlobalRadialResponse
      symmetricRadiusNumeratorTauTau
      symmetricRadiusNumeratorChi/symmetricRadiusSquared,
   Assumptions -> wallAssumptions
   ];
symmetricTauUJet = FullSimplify[
   symmetricGlobalTimeResponse symmetricTimeTauDerivative
      symmetricTimeTauUJet
    + symmetricGlobalRadialResponse
      symmetricRadiusNumeratorTauTau
      symmetricRadiusNumeratorU/symmetricRadiusSquared,
   Assumptions -> wallAssumptions
   ];
rindlerMetricResponseTauJetAtSymmetricSlice = {
   {0, symmetricTauChiJet, symmetricTauUJet},
   {symmetricTauChiJet, 0, 0},
   {symmetricTauUJet, 0, 0}
   };
rindlerMetricResponseJetsAtSymmetricSlice = {
   rindlerMetricResponseTauJetAtSymmetricSlice,
   D[rindlerMetricResponseAtSymmetricSlice, chi],
   D[rindlerMetricResponseAtSymmetricSlice, u]
   };

(* Independent xCoba connection check for the background index ordering. *)

DefManifold[MrealInnerWall, 3, {aa, bb, cc, dd}];
DefChart[
  realInnerWallChart,
  MrealInnerWall,
  {0, 1, 2},
  {tauChart[], chiChart[], uChart[]}
  ];
chartBackground = rindlerBackground /. {
    tau -> tauChart[], chi -> chiChart[], u -> uChart[]
    };
chartBackgroundCTensor =
  CTensor[chartBackground, {-realInnerWallChart, -realInnerWallChart}];
SetCMetric[
  chartBackgroundCTensor,
  realInnerWallChart,
  SignatureOfMetric -> {2, 1, 0}
  ];
MetricCompute[
  chartBackgroundCTensor,
  realInnerWallChart,
  "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
chartBackgroundDerivative = CovDOfMetric[chartBackgroundCTensor];
chartCoordinateDerivative = GiveSymbol[PD, realInnerWallChart];
chartRules = {
   tauChart[] -> tau, chiChart[] -> chi, uChart[] -> u
   };
xCobaBackgroundChristoffel =
  ToValues[
    Christoffel[
     chartBackgroundDerivative,
     chartCoordinateDerivative
     ]
    ] /. CTensor[array_, bases_, weight_] :> array /. chartRules;

(* Linearized wall geometry on the reflection-symmetric tau=0 cut.  The
   tau derivative is taken before restricting to the cut. *)

truncate[expression_] := Normal@Series[
    expression, {backreactionParameter, 0, 1}
    ];
backgroundMetricJets = Table[
   D[rindlerBackground, rindlerCoordinates[[derivative]]],
   {derivative, 3}
   ];
wallMetricAtSymmetricSlice =
  rindlerBackground
   + backreactionParameter rindlerMetricResponseAtSymmetricSlice;
wallMetricInverseAtSymmetricSlice = FullSimplify[
   rindlerBackgroundInverse
    - backreactionParameter rindlerBackgroundInverse .
      rindlerMetricResponseAtSymmetricSlice .
      rindlerBackgroundInverse,
   Assumptions -> wallAssumptions
   ];
wallMetricJetsAtSymmetricSlice = Table[
   backgroundMetricJets[[derivative]]
    + backreactionParameter
     rindlerMetricResponseJetsAtSymmetricSlice[[derivative]],
   {derivative, 3}
   ];
wallChristoffelAtSymmetricSlice = Table[
   truncate[
    1/2 Sum[
      wallMetricInverseAtSymmetricSlice[[lambda, sigma]] (
        wallMetricJetsAtSymmetricSlice[[a, sigma, b]]
         + wallMetricJetsAtSymmetricSlice[[b, sigma, a]]
         - wallMetricJetsAtSymmetricSlice[[sigma, a, b]]
        ),
      {sigma, 3}
      ]
    ],
   {lambda, 3}, {a, 3}, {b, 3}
   ];
backgroundChristoffelCrosscheckResidual = FullSimplify[
   (wallChristoffelAtSymmetricSlice /.
      backreactionParameter -> 0)
    - (xCobaBackgroundChristoffel /. tau -> 0),
   Assumptions -> chi > 0
   ];

wallNormalLapse = truncate[
   1/Sqrt[wallMetricInverseAtSymmetricSlice[[2, 2]]]
   ];
wallOutwardNormalCovector = {0, -wallNormalLapse, 0};
wallTangentIndices = {1, 3};
wallInducedMetric =
  wallMetricAtSymmetricSlice[[wallTangentIndices, wallTangentIndices]];
wallInducedInverse = truncate[Inverse[wallInducedMetric]];
wallExtrinsicCurvature = Table[
   truncate[
    -wallOutwardNormalCovector[[2]]
     wallChristoffelAtSymmetricSlice[[
       2,
       wallTangentIndices[[a]],
       wallTangentIndices[[b]]
       ]]
    ],
   {a, 2}, {b, 2}
   ];
wallExtrinsicTrace = truncate@Sum[
    wallInducedInverse[[a, b]] wallExtrinsicCurvature[[a, b]],
    {a, 2}, {b, 2}
    ];
wallBrownYorkTensor = Table[
   truncate[
    wallExtrinsicCurvature[[a, b]]
     - wallExtrinsicTrace wallInducedMetric[[a, b]]
    ],
   {a, 2}, {b, 2}
   ];
wallCutLapse = truncate[
   1/Sqrt[-wallInducedInverse[[1, 1]]]
   ];
wallFutureNormal = Table[
   truncate[-wallCutLapse wallInducedInverse[[a, 1]]],
   {a, 2}
   ];
wallCutDensity = truncate[Sqrt[wallInducedMetric[[2, 2]]]];
wallModularKillingTangent = {2 Pi, 0};
wallBrownYorkDensity = truncate[
   -wallCutDensity Sum[
     wallFutureNormal[[a]] wallModularKillingTangent[[b]]
      wallBrownYorkTensor[[a, b]],
     {a, 2}, {b, 2}
     ]
   ];
wallBrownYorkCoefficient = FullSimplify[
   Coefficient[
    wallBrownYorkDensity, backreactionParameter, 1
    ],
   Assumptions -> wallAssumptions
   ];

(* On a reflection-symmetric cut the Komar/EH density reduces to four
   response components and one tau jet.  The generic expansion below checks
   the reduction before it is specialized to the selected response. *)

genericInverseTime = (
   -Csch[chi]^2
    - backreactionParameter genericTimeResponse Csch[chi]^4
   );
genericInverseRadial =
  1 - backreactionParameter genericRadialResponse;
genericChristoffelRadialTimeTime = (
   Sinh[chi] Cosh[chi]
    + backreactionParameter (
     genericTimeRadialTauJet - genericTimeResponseChi/2
      - genericRadialResponse Sinh[chi] Cosh[chi]
     )
   );
genericChristoffelTimeRadialTime = (
   Coth[chi]
    + backreactionParameter (
     -genericTimeResponseChi Csch[chi]^2/2
      + genericTimeResponse Cosh[chi] Csch[chi]^3
     )
   );
genericKomarPrefactor =
  Pi * Cosh[chi] * (
    1 + backreactionParameter genericCutResponse Sech[chi]^2/2
    ) * (
    -Sinh[chi]
     + backreactionParameter genericTimeResponse Csch[chi]/2
    ) * (
    -1 - backreactionParameter genericRadialResponse/2
    );
genericEinsteinHilbertDensity = truncate[
   genericKomarPrefactor (
    genericInverseTime genericChristoffelRadialTimeTime
     - genericInverseRadial genericChristoffelTimeRadialTime
    )
   ];
genericEinsteinHilbertCoefficient =
  Coefficient[
   genericEinsteinHilbertDensity, backreactionParameter, 1
   ];
expectedGenericEinsteinHilbertCoefficient =
  Pi (
    Coth[chi] (
      genericTimeResponseChi - genericTimeRadialTauJet
      )
     + Cosh[chi]^2 genericRadialResponse
     - Coth[chi]^2 genericTimeResponse
     - genericCutResponse
    );
genericEinsteinHilbertReductionResidual = FullSimplify[
   TrigToExp[Together[
     genericEinsteinHilbertCoefficient
      - expectedGenericEinsteinHilbertCoefficient
     ]],
   Assumptions -> chi > 0
   ];
wallTimeResponseAtSymmetricSlice =
  rindlerMetricResponseAtSymmetricSlice[[1, 1]];
wallRadialResponseAtSymmetricSlice =
  rindlerMetricResponseAtSymmetricSlice[[2, 2]];
wallCutResponseAtSymmetricSlice =
  rindlerMetricResponseAtSymmetricSlice[[3, 3]];
wallTimeRadialTauJetAtSymmetricSlice =
  rindlerMetricResponseTauJetAtSymmetricSlice[[1, 2]];
wallEinsteinHilbertCoefficient =
  Pi (
    Coth[chi] (
      D[wallTimeResponseAtSymmetricSlice, chi]
       - wallTimeRadialTauJetAtSymmetricSlice
      )
     + Cosh[chi]^2 wallRadialResponseAtSymmetricSlice
     - Coth[chi]^2 wallTimeResponseAtSymmetricSlice
     - wallCutResponseAtSymmetricSlice
    );
wallBoundaryDescentCoefficient =
  wallBrownYorkCoefficient - wallEinsteinHilbertCoefficient;
wallBrownYorkHorizonLimit = FullSimplify[
   Limit[
    wallBrownYorkCoefficient,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
wallEinsteinHilbertHorizonLimit = FullSimplify[
   Limit[
    wallEinsteinHilbertCoefficient,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
wallBoundaryDescentHorizonLimit = FullSimplify[
   wallBrownYorkHorizonLimit - wallEinsteinHilbertHorizonLimit,
   Assumptions -> horizonAssumptions
   ];

(* Symmetric-cut wall source, fused corner, and regulator limits. *)

backgroundWallInducedMetric =
  rindlerBackground[[wallTangentIndices, wallTangentIndices]];
backgroundWallInducedInverse = FullSimplify[
   Inverse[backgroundWallInducedMetric]
   ];
backgroundWallExtrinsicCurvature =
  FullSimplify[-D[backgroundWallInducedMetric, chi]/2];
backgroundWallExtrinsicTrace = FullSimplify[
   Tr[
    backgroundWallInducedInverse .
     backgroundWallExtrinsicCurvature
    ]
   ];
backgroundWallMomentum = FullSimplify[
   Sqrt[-Det[backgroundWallInducedMetric]] (
     backgroundWallInducedInverse .
       backgroundWallExtrinsicCurvature .
       backgroundWallInducedInverse
      - backgroundWallExtrinsicTrace
       backgroundWallInducedInverse
     ),
   Assumptions -> chi > 0
   ];
wallInducedMetricResponse =
  rindlerMetricResponseAtSymmetricSlice[[
    wallTangentIndices, wallTangentIndices
    ]];
wallGravitySourceDensity = FullSimplify[
   -1/2 Sum[
     backgroundWallMomentum[[a, b]]
      wallInducedMetricResponse[[a, b]],
     {a, 2}, {b, 2}
     ],
   Assumptions -> wallAssumptions
   ];
wallLengthVariationDensity = FullSimplify[
   wallInducedMetricResponse[[2, 2]]/(2 Cosh[chi]),
   Assumptions -> wallAssumptions
   ];
wallRemovalTransgressionDensity = FullSimplify[
   2 Pi (
     wallGravitySourceDensity + wallLengthVariationDensity
     ),
   Assumptions -> wallAssumptions
   ];
horizonLengthVariationDensity = FullSimplify[
   Limit[
    wallLengthVariationDensity,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedHorizonLengthVariationDensity =
  amplitudeSquared * Sin[intervalHalfWidth]^2 * (
    Cos[2 intervalHalfWidth] + Cosh[2 u]
    ) * Sech[u]^4 * Tanh[u]^2;

sechTwoPrimitive = Tanh[u];
sechFourPrimitive = Tanh[u] - Tanh[u]^3/3;
sechSixPrimitive =
  Tanh[u] - 2 Tanh[u]^3/3 + Tanh[u]^5/5;
horizonLengthPrimitive =
  2 amplitudeSquared Sin[intervalHalfWidth]^2 (
    sechTwoPrimitive
     - (1 + Sin[intervalHalfWidth]^2) sechFourPrimitive
     + Sin[intervalHalfWidth]^2 sechSixPrimitive
    );
horizonLengthVariation = FullSimplify[
   Limit[horizonLengthPrimitive, u -> Infinity]
    - Limit[horizonLengthPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedHorizonLengthVariation =
  4 amplitudeSquared Sin[intervalHalfWidth]^2/15 (
    3 + 2 Cos[intervalHalfWidth]^2
    );
horizonFusedCornerCoefficient = 2 Pi horizonLengthVariation;
horizonGravitySourceDensity = FullSimplify[
   Limit[
    wallGravitySourceDensity,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
horizonTransgressionDensity = FullSimplify[
   Limit[
    wallRemovalTransgressionDensity,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
wallRemovalTransgressionLinearDensity = FullSimplify[
   Limit[
    wallRemovalTransgressionDensity/chi,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
wallRemovalTransgressionLeadingDensity = FullSimplify[
   Limit[
    wallRemovalTransgressionDensity/chi^2,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedTransgressionLeadingDensity =
  -Pi * amplitudeSquared * Sech[u]^2 *
    Sin[intervalHalfWidth]^2/3 * (
     4 Sech[u]^4 Sin[intervalHalfWidth]^4
      + 3 Cos[2 intervalHalfWidth] Sech[u]^2 Tanh[u]^2
     + 3 (-4 + Tanh[u]^2 + Tanh[u]^4)
     );
rightTransgressionLeadingTail = FullSimplify[
   Limit[
    Exp[2 u] wallRemovalTransgressionLeadingDensity,
    u -> Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
leftTransgressionLeadingTail = FullSimplify[
   Limit[
    Exp[-2 u] wallRemovalTransgressionLeadingDensity,
    u -> -Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];

(* Real-scalar energy removed with the collar. *)

globalStressAtRindlerPoint = {
   {
    4 amplitudeSquared (
      globalBackgroundFactor
       + (globalRadiusSquared - 1) globalCosineFourTime
      )/globalBackgroundFactor^2,
    8 amplitudeSquared Sqrt[globalRadiusSquared]
      globalSineFourTime/globalBackgroundFactor^3,
    0
    },
   {
    8 amplitudeSquared Sqrt[globalRadiusSquared]
      globalSineFourTime/globalBackgroundFactor^3,
    4 amplitudeSquared (
      globalBackgroundFactor
       + (globalRadiusSquared - 1) globalCosineFourTime
      )/globalBackgroundFactor^4,
    0
    },
   {
    0,
    0,
    -4 amplitudeSquared globalRadiusSquared (
      globalRadiusSquared - 1
       + globalBackgroundFactor globalCosineFourTime
      )/globalBackgroundFactor^3
    }
   };
globalCoordinateDerivatives = {
   globalTimeDerivative,
   globalRadiusDerivative,
   globalAngleDerivative
   };
rindlerStressTimeTime = Together@Sum[
    globalStressAtRindlerPoint[[mu, nu]]
     globalCoordinateDerivatives[[mu, 1]]
     globalCoordinateDerivatives[[nu, 1]],
    {mu, 3}, {nu, 3}
    ];
collarMatterModularDensity = FullSimplify[
   2 Pi Cosh[chi]/Sinh[chi] *
     (rindlerStressTimeTime /. tau -> 0),
   Assumptions -> wallAssumptions
   ];
rindlerWallDenominator =
  Cosh[chi] Cosh[u]
   + intervalCosine Sinh[chi];
globalRadiusSquaredAtSymmetricSlice = FullSimplify[
   globalRadiusSquared /. tau -> 0,
   Assumptions -> wallAssumptions
   ];
expectedCollarMatterModularDensity =
  16 Pi * amplitudeSquared * Sin[intervalHalfWidth]^6 *
   Sinh[chi] * Cosh[chi] * globalRadiusSquaredAtSymmetricSlice/
   rindlerWallDenominator^6;
collarMatterLeadingDensity = FullSimplify[
   Limit[
    collarMatterModularDensity/chi,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedCollarMatterLeadingDensity =
  16 Pi * amplitudeSquared * Sin[intervalHalfWidth]^4 * (
    Sech[u]^4
     - Sin[intervalHalfWidth]^2 Sech[u]^6
    );
collarMatterLeadingPrimitive =
  16 Pi amplitudeSquared Sin[intervalHalfWidth]^4 (
    sechFourPrimitive
     - Sin[intervalHalfWidth]^2 sechSixPrimitive
    );
collarMatterLeadingIntegral = FullSimplify[
   Limit[collarMatterLeadingPrimitive, u -> Infinity]
    - Limit[collarMatterLeadingPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedCollarMatterLeadingIntegral =
  64 Pi amplitudeSquared Sin[intervalHalfWidth]^4/15 (
    5 - 4 Sin[intervalHalfWidth]^2
    );

(* Fixed wall at a general finite modular-time cut.  Harlow--Wu and Hayward
   are kept as distinct endpoint structures. *)

linearJointNormalProduct =
  rindlerMetricResponse[[1, 2]]/Sinh[chi];
linearHaywardJointDensity =
  Cosh[chi] linearJointNormalProduct;
linearHarlowWuCutDensity = linearHaywardJointDensity/2;
genericHaywardEndpointDensity =
  Cosh[chi] genericTimeRadialResponse/Sinh[chi];
genericHarlowWuEndpointDensity =
  Cosh[chi] genericTimeRadialResponse/(2 Sinh[chi]);
jointHarlowWuRelationResidual = FullSimplify[
   genericHaywardEndpointDensity
    - 2 genericHarlowWuEndpointDensity,
   Assumptions -> chi > 0
   ];
symmetricHaywardJointDensity = Together[
   linearHaywardJointDensity /. tau -> 0
   ];
symmetricHarlowWuCutDensity =
  symmetricHaywardJointDensity/2;
horizonHaywardJointDensity = FullSimplify[
   D[rindlerMetricResponse[[1, 2]], chi] /. chi -> 0,
   Assumptions -> horizonAssumptions
   ];
expectedHorizonHaywardJointDensity =
  4 amplitudeSquared * Sin[intervalHalfWidth]^2 *
   Sinh[tau] * Cosh[tau] * Sech[u]^6 * (
    Cosh[u]^4
     + Cos[intervalHalfWidth]^2 Cosh[u]^2
     - Cos[intervalHalfWidth]^2 Sin[intervalHalfWidth]^2
     - Sin[intervalHalfWidth]^4/3
    );
horizonHaywardJointPrimitive =
  4 amplitudeSquared * Sin[intervalHalfWidth]^2 *
   Sinh[tau] * Cosh[tau] * (
    sechTwoPrimitive
     + Cos[intervalHalfWidth]^2 sechFourPrimitive
     - (
       Cos[intervalHalfWidth]^2 Sin[intervalHalfWidth]^2
        + Sin[intervalHalfWidth]^4/3
       ) sechSixPrimitive
    );
horizonHaywardJointIntegral = FullSimplify[
   Limit[horizonHaywardJointPrimitive, u -> Infinity]
    - Limit[horizonHaywardJointPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
     Element[tau, Reals]
   ];
jointRightTail = FullSimplify[
   Limit[
    Exp[2 u] horizonHaywardJointDensity,
    u -> Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
     Element[tau, Reals]
   ];
jointLeftTail = FullSimplify[
   Limit[
    Exp[-2 u] horizonHaywardJointDensity,
    u -> -Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
     Element[tau, Reals]
   ];

(* Transparent two-sided interface algebra and selected smooth scalar. *)

realScalarRindler = FullSimplify[
   2 Sqrt[amplitudeSquared] (
     embeddingTimeCosine^2 - embeddingTimeSine^2
     )/globalBackgroundFactor^2,
   Assumptions -> bulkAssumptions
   ];
exteriorScalarNormalDerivative = FullSimplify[
   -D[realScalarRindler, chi],
   Assumptions -> bulkAssumptions
   ];
collarScalarNormalDerivative = FullSimplify[
   D[realScalarRindler, chi],
   Assumptions -> bulkAssumptions
   ];
scalarMomentumMatchingResidual = FullSimplify[
   exteriorScalarNormalDerivative
    + collarScalarNormalDerivative,
   Assumptions -> bulkAssumptions
   ];
matterInterfaceSourceResidual = FullSimplify[
   -(-dPhi variationPhi) - (dPhi variationPhi)
   ];
matterInterfaceFluxResidual = FullSimplify[
   (-variationOne derivativeTwo
      + variationTwo derivativeOne)
    +(variationOne derivativeTwo
      - variationTwo derivativeOne)
   ];
momentumPlus = {{p11, p12}, {p12, p22}};
metricVariation = {{q11, q12}, {q12, q22}};
momentumVariationOne = {{dp111, dp112}, {dp112, dp122}};
momentumVariationTwo = {{dp211, dp212}, {dp212, dp222}};
metricVariationOne = {{dq111, dq112}, {dq112, dq122}};
metricVariationTwo = {{dq211, dq212}, {dq212, dq222}};
gravityInterfaceSourceResidual = FullSimplify[
   -1/2 Sum[
      momentumPlus[[a, b]] metricVariation[[a, b]],
      {a, 2}, {b, 2}
      ]
    -1/2 Sum[
      (-momentumPlus[[a, b]]) metricVariation[[a, b]],
      {a, 2}, {b, 2}
    ]
   ];
rightAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] wallLengthVariationDensity,
    u -> Infinity
    ],
   Assumptions -> wallAssumptions
   ];
leftAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] wallLengthVariationDensity,
    u -> -Infinity
    ],
   Assumptions -> wallAssumptions
   ];
rightSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] wallGravitySourceDensity,
    u -> Infinity
    ],
   Assumptions -> wallAssumptions
   ];
leftSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] wallGravitySourceDensity,
    u -> -Infinity
    ],
   Assumptions -> wallAssumptions
   ];
gravityInterfaceFluxResidual = FullSimplify[
   -1/2 Sum[
      momentumVariationOne[[a, b]]
        metricVariationTwo[[a, b]]
       - momentumVariationTwo[[a, b]]
        metricVariationOne[[a, b]],
      {a, 2}, {b, 2}
      ]
    -1/2 Sum[
      (-momentumVariationOne[[a, b]])
        metricVariationTwo[[a, b]]
       - (-momentumVariationTwo[[a, b]])
        metricVariationOne[[a, b]],
      {a, 2}, {b, 2}
      ]
   ];


checks = <|
   "embedding pulls back to AdS-Rindler" ->
    (backgroundPullbackResidual === ConstantArray[0, {3, 3}]),
   "xCoba background connection crosscheck" ->
    (backgroundChristoffelCrosscheckResidual ===
      ConstantArray[0, {3, 3, 3}]),
   "generic symmetric-cut EH reduction" ->
    (genericEinsteinHilbertReductionResidual === 0),
   "symmetric wall Brown-York coefficient vanishes only at the horizon" ->
    (wallBrownYorkHorizonLimit === 0),
   "horizon EH coefficient is minus the fused area density" ->
    FullSimplify[
      wallEinsteinHilbertHorizonLimit
       + 2 Pi horizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon descent coefficient is plus the fused area density" ->
    FullSimplify[
      wallBoundaryDescentHorizonLimit
       - 2 Pi horizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "background wall momentum" ->
    (backgroundWallMomentum === DiagonalMatrix[{-1, 1}]),
   "horizon length density" ->
    FullSimplify[TrigToExp[Together[
      horizonLengthVariationDensity
       - expectedHorizonLengthVariationDensity
      ]], Assumptions -> horizonAssumptions] === 0,
   "horizon length primitive" ->
    FullSimplify[
      D[horizonLengthPrimitive, u]
       - expectedHorizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon length variation" ->
    FullSimplify[
      horizonLengthVariation - expectedHorizonLengthVariation,
      Assumptions -> horizonAssumptions
      ] === 0,
   "fused corner equals the real-mode RT coefficient" ->
    FullSimplify[
      horizonFusedCornerCoefficient
       - 8 Pi amplitudeSquared Sin[intervalHalfWidth]^2/15 (
        3 + 2 Cos[intervalHalfWidth]^2
        ),
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon source is minus length density" ->
    FullSimplify[
      horizonGravitySourceDensity
       + horizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "wall-removal transgression has no constant term" ->
    (horizonTransgressionDensity === 0),
   "wall-removal transgression has no linear term" ->
    (wallRemovalTransgressionLinearDensity === 0),
   "wall-removal quadratic density" ->
    FullSimplify[TrigToExp[Together[
      wallRemovalTransgressionLeadingDensity
       - expectedTransgressionLeadingDensity
      ]], Assumptions -> horizonAssumptions] === 0,
   "wall-removal quadratic tails agree" ->
    FullSimplify[TrigToExp[
      rightTransgressionLeadingTail
       - leftTransgressionLeadingTail],
      Assumptions -> horizonAssumptions
      ] === 0,
   "fixed-wall area tails agree" ->
    FullSimplify[
      rightAreaTailCoefficient - leftAreaTailCoefficient,
      Assumptions -> wallAssumptions
      ] === 0,
   "fixed-wall source tails agree" ->
    FullSimplify[
      rightSourceTailCoefficient - leftSourceTailCoefficient,
      Assumptions -> wallAssumptions
      ] === 0,
   "collar matter leading density" ->
    FullSimplify[
      collarMatterLeadingDensity
       - expectedCollarMatterLeadingDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "collar matter leading primitive" ->
    FullSimplify[
      D[collarMatterLeadingPrimitive, u]
       - expectedCollarMatterLeadingDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "collar matter leading integral" ->
    FullSimplify[
      collarMatterLeadingIntegral
       - expectedCollarMatterLeadingIntegral,
      Assumptions -> horizonAssumptions
      ] === 0,
   "symmetric Hayward joint coefficient vanishes" ->
    (symmetricHaywardJointDensity === 0),
   "symmetric Harlow-Wu endpoint density vanishes" ->
    (symmetricHarlowWuCutDensity === 0),
   "fixed-cut Hayward and Harlow-Wu coefficients stay distinct" ->
    (jointHarlowWuRelationResidual === 0),
   "general-cut horizon Hayward density" ->
    FullSimplify[TrigToExp[Together[
      horizonHaywardJointDensity
       - expectedHorizonHaywardJointDensity
      ]], Assumptions -> horizonAssumptions] === 0,
   "general-cut horizon Hayward primitive" ->
    FullSimplify[
      D[horizonHaywardJointPrimitive, u]
       - expectedHorizonHaywardJointDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "general-cut joint tails agree" ->
    FullSimplify[
      jointRightTail - jointLeftTail,
      Assumptions -> horizonAssumptions
      ] === 0,
   "smooth scalar has opposite interface momenta" ->
    (scalarMomentumMatchingResidual === 0),
   "matter interface source cancels" ->
    (matterInterfaceSourceResidual === 0),
   "matter interface symplectic flux cancels" ->
    (matterInterfaceFluxResidual === 0),
   "gravity interface source cancels" ->
    (gravityInterfaceSourceResidual === 0),
   "gravity interface symplectic flux cancels" ->
    (gravityInterfaceFluxResidual === 0)
   |>;

Print["Real scalar quadrature finite-wall checks:"];
KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["Passed ", Count[Values[checks], True], "/", Length[checks],
  " checks."];
Print["general-cut horizon Hayward integral: ",
 InputForm[horizonHaywardJointIntegral]];

If[! And @@ Values[checks], Exit[1]];
