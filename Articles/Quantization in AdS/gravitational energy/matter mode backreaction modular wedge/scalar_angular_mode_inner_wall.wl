(* ::Package:: *)

(* Finite AdS--Rindler wall benchmark for the lowest massless complex scalar
   mode with phase Exp[-3 I t + I phi].  This is the first project benchmark
   whose metric response has a nonzero t-phi component.  Hayward and
   Harlow--Wu endpoint structures are computed as distinct variational
   objects and are never summed together. *)

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
globalTimeDerivative = Table[
   Together[
    (embeddingTimeCosine *
       D[embeddingTimeSine, rindlerCoordinates[[a]]]
      - embeddingTimeSine *
       D[embeddingTimeCosine, rindlerCoordinates[[a]]])/
     globalBackgroundFactor
    ],
   {a, 3}
   ];
globalRadiusDerivative = Table[
   Together[
    (embeddingRadialCosine *
       D[embeddingRadialCosine, rindlerCoordinates[[a]]]
      + embeddingRadialSine *
       D[embeddingRadialSine, rindlerCoordinates[[a]]])/
     Sqrt[globalRadiusSquared]
    ],
   {a, 3}
   ];
globalRadiusNumeratorDerivative = Table[
   Together[
    embeddingRadialCosine *
      D[embeddingRadialCosine, rindlerCoordinates[[a]]]
     + embeddingRadialSine *
      D[embeddingRadialSine, rindlerCoordinates[[a]]]
    ],
   {a, 3}
   ];
globalAngleDerivative = Table[
   Together[
    (embeddingRadialCosine *
       D[embeddingRadialSine, rindlerCoordinates[[a]]]
      - embeddingRadialSine *
       D[embeddingRadialCosine, rindlerCoordinates[[a]]])/
     globalRadiusSquared
    ],
   {a, 3}
   ];

globalTimeResponse =
  amplitudeSquared * (
    2 + 6 globalRadiusSquared + 3 globalRadiusSquared^2
    )/globalBackgroundFactor^2;
globalRadialResponse =
  amplitudeSquared * globalRadiusSquared *
   (2 + 3 globalRadiusSquared)/globalBackgroundFactor^4;
globalTimeAngleResponse =
  -amplitudeSquared * globalRadiusSquared *
   (2 + globalRadiusSquared)/(2 globalBackgroundFactor^2);
rindlerMetricResponse = Table[
   globalTimeResponse *
      globalTimeDerivative[[a]] * globalTimeDerivative[[b]]
     + globalRadialResponse *
      globalRadiusNumeratorDerivative[[a]] *
       globalRadiusNumeratorDerivative[[b]]/globalRadiusSquared
     + globalTimeAngleResponse * (
       globalTimeDerivative[[a]] * globalAngleDerivative[[b]]
        + globalAngleDerivative[[a]] * globalTimeDerivative[[b]]
       ),
   {a, 3}, {b, 3}
   ];
rindlerMetricResponseAtSymmetricSlice = Table[
   FullSimplify[
    rindlerMetricResponse[[a, b]] /. tau -> 0,
    Assumptions -> wallAssumptions
    ],
   {a, 3}, {b, 3}
   ];
rindlerMetricResponseTauJetAtSymmetricSlice = Table[
   FullSimplify[
    D[rindlerMetricResponse[[a, b]], tau] /. tau -> 0,
    Assumptions -> wallAssumptions
    ],
   {a, 3}, {b, 3}
   ];
rindlerMetricResponseJetsAtSymmetricSlice = {
   rindlerMetricResponseTauJetAtSymmetricSlice,
   D[rindlerMetricResponseAtSymmetricSlice, chi],
   D[rindlerMetricResponseAtSymmetricSlice, u]
   };
Print["constructed angular response and symmetric jets"];

(* Linearized wall geometry at tau=0.  Derivatives are taken before the
   restriction, so the rotation-odd tau jets remain present.  The same
   AdS3 background is independently validated with xCoba in the companion
   smooth-wedge regression. *)

truncate[expression_] := Normal@Series[
    expression, {backreactionParameter, 0, 1}
    ];
backgroundMetricJets = Table[
   D[rindlerBackground, rindlerCoordinates[[derivative]]],
   {derivative, 3}
   ];
coordinateBackgroundChristoffel = Table[
   FullSimplify[
    1/2 * Sum[
      rindlerBackgroundInverse[[li, si]] * (
        backgroundMetricJets[[ai, si, bi]]
         + backgroundMetricJets[[bi, si, ai]]
         - backgroundMetricJets[[si, ai, bi]]
        ),
      {si, 3}
      ],
    Assumptions -> chi > 0
    ],
   {li, 3}, {ai, 3}, {bi, 3}
   ];
wallMetricAtSymmetricSlice =
  rindlerBackground
   + backreactionParameter * rindlerMetricResponseAtSymmetricSlice;
wallMetricInverseAtSymmetricSlice =
  rindlerBackgroundInverse
   - backreactionParameter * rindlerBackgroundInverse .
     rindlerMetricResponseAtSymmetricSlice .
     rindlerBackgroundInverse;
expectedBackgroundChristoffel = ConstantArray[0, {3, 3, 3}];
expectedBackgroundChristoffel[[1, 1, 2]] = Coth[chi];
expectedBackgroundChristoffel[[1, 2, 1]] = Coth[chi];
expectedBackgroundChristoffel[[2, 1, 1]] = Sinh[chi] Cosh[chi];
expectedBackgroundChristoffel[[2, 3, 3]] = -Sinh[chi] Cosh[chi];
expectedBackgroundChristoffel[[3, 2, 3]] = Tanh[chi];
expectedBackgroundChristoffel[[3, 3, 2]] = Tanh[chi];
backgroundChristoffelCrosscheckResidual =
  coordinateBackgroundChristoffel - expectedBackgroundChristoffel;
Print["crosschecked coordinate background connection"];
covariantDerivativeResponseAtSymmetricSlice = Table[
    rindlerMetricResponseJetsAtSymmetricSlice[[ai, mi, ni]]
     - Sum[
       coordinateBackgroundChristoffel[[beta, ai, mi]] *
         rindlerMetricResponseAtSymmetricSlice[[beta, ni]]
       + coordinateBackgroundChristoffel[[beta, ai, ni]] *
         rindlerMetricResponseAtSymmetricSlice[[mi, beta]],
       {beta, 3}
       ],
   {ai, 3}, {mi, 3}, {ni, 3}
   ];
linearizedChristoffelAtSymmetricSlice =
  ConstantArray[0, {3, 3, 3}];
linearizedChristoffelAtSymmetricSlice[[2, 1, 1]] = Together[
   covariantDerivativeResponseAtSymmetricSlice[[1, 1, 2]]
    - covariantDerivativeResponseAtSymmetricSlice[[2, 1, 1]]/2
   ];
linearizedChristoffelAtSymmetricSlice[[2, 1, 3]] = Together[
   1/2 * (
     covariantDerivativeResponseAtSymmetricSlice[[1, 3, 2]]
      + covariantDerivativeResponseAtSymmetricSlice[[3, 1, 2]]
      - covariantDerivativeResponseAtSymmetricSlice[[2, 1, 3]]
     )
   ];
linearizedChristoffelAtSymmetricSlice[[2, 3, 1]] =
  linearizedChristoffelAtSymmetricSlice[[2, 1, 3]];
linearizedChristoffelAtSymmetricSlice[[2, 3, 3]] = Together[
   covariantDerivativeResponseAtSymmetricSlice[[3, 3, 2]]
    - covariantDerivativeResponseAtSymmetricSlice[[2, 3, 3]]/2
   ];
linearizedChristoffelAtSymmetricSlice[[1, 2, 1]] = Together[
   -Csch[chi]^2 *
    covariantDerivativeResponseAtSymmetricSlice[[2, 1, 1]]/2
   ];
wallChristoffelAtSymmetricSlice =
  coordinateBackgroundChristoffel
   + backreactionParameter *
    linearizedChristoffelAtSymmetricSlice;
Print["constructed wall connection"];

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
    -wallOutwardNormalCovector[[2]] *
     wallChristoffelAtSymmetricSlice[[
      2,
      wallTangentIndices[[a]],
      wallTangentIndices[[b]]
      ]]
    ],
   {a, 2}, {b, 2}
   ];
wallExtrinsicTrace = truncate@Sum[
    wallInducedInverse[[a, b]] * wallExtrinsicCurvature[[a, b]],
    {a, 2}, {b, 2}
    ];
wallBrownYorkTensor = Table[
   truncate[
    wallExtrinsicCurvature[[a, b]]
     - wallExtrinsicTrace * wallInducedMetric[[a, b]]
    ],
   {a, 2}, {b, 2}
   ];
wallCutLapse = truncate[
   1/Sqrt[-wallInducedInverse[[1, 1]]]
   ];
wallFutureNormal = Table[
   truncate[-wallCutLapse * wallInducedInverse[[a, 1]]],
   {a, 2}
   ];
wallCutDensity = truncate[Sqrt[wallInducedMetric[[2, 2]]]];
wallModularKillingTangent = {2 Pi, 0};
wallBrownYorkDensity = truncate[
   -wallCutDensity * Sum[
     wallFutureNormal[[a]] * wallModularKillingTangent[[b]] *
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

(* The symmetric-cut Komar/EH coefficient reduces covariantly to four
   response components and the tau jet of h_(tau chi).  The first block
   verifies the algebra for independent symbols; the second substitutes the
   rotating response.  Offdiagonal wall data remain active in Brown--York
   and in the endpoint joint below. *)

genericInverseTime = (
   -Csch[chi]^2
    - backreactionParameter * genericTimeResponse * Csch[chi]^4
   );
genericInverseRadial =
  1 - backreactionParameter * genericRadialResponse;
genericChristoffelRadialTimeTime = (
   Sinh[chi] Cosh[chi]
    + backreactionParameter * (
     genericTimeRadialTauJet - genericTimeResponseChi/2
      - genericRadialResponse Sinh[chi] Cosh[chi]
     )
   );
genericChristoffelTimeRadialTime = (
   Coth[chi]
    + backreactionParameter * (
     -genericTimeResponseChi Csch[chi]^2/2
      + genericTimeResponse Cosh[chi] Csch[chi]^3
     )
   );
genericKomarPrefactor =
  Pi Cosh[chi] * (
    1 + backreactionParameter * genericCutResponse Sech[chi]^2/2
    ) * (
    -Sinh[chi]
     + backreactionParameter * genericTimeResponse Csch[chi]/2
    ) * (
    -1 - backreactionParameter * genericRadialResponse/2
    );
genericEinsteinHilbertDensity = truncate[
   genericKomarPrefactor * (
    genericInverseTime * genericChristoffelRadialTimeTime
     - genericInverseRadial * genericChristoffelTimeRadialTime
    )
   ];
genericEinsteinHilbertCoefficient =
  Coefficient[
   genericEinsteinHilbertDensity, backreactionParameter, 1
   ];
expectedGenericEinsteinHilbertCoefficient =
  Pi * (
    Coth[chi] * (
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
  rindlerMetricResponseJetsAtSymmetricSlice[[1, 1, 2]];
wallEinsteinHilbertCoefficient =
   Pi * (
     Coth[chi] * (
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
   Limit[
    wallBoundaryDescentCoefficient,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
Print["constructed Brown-York and EH wall generators"];

(* Wall source, fused length, and regulator limits. *)

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
   Sqrt[-Det[backgroundWallInducedMetric]] * (
     backgroundWallInducedInverse .
       backgroundWallExtrinsicCurvature .
       backgroundWallInducedInverse
      - backgroundWallExtrinsicTrace *
       backgroundWallInducedInverse
     ),
   Assumptions -> chi > 0
   ];
wallInducedMetricResponse =
  rindlerMetricResponseAtSymmetricSlice[[
    wallTangentIndices, wallTangentIndices
    ]];
wallGravitySourceDensity = FullSimplify[
   -1/2 * Sum[
     backgroundWallMomentum[[a, b]] *
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
   2 Pi * (
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
  amplitudeSquared * Sin[intervalHalfWidth]^2/2 *
   Sech[u]^2 Tanh[u]^2 * (
    3 - Sin[intervalHalfWidth]^2 Sech[u]^2
    );
horizonLengthPrimitive =
  amplitudeSquared * Sin[intervalHalfWidth]^2/2 * (
    Tanh[u]^3
     - Sin[intervalHalfWidth]^2 Tanh[u]^3/3
     + Sin[intervalHalfWidth]^2 Tanh[u]^5/5
    );
horizonLengthVariation = FullSimplify[
   Limit[horizonLengthPrimitive, u -> Infinity]
    - Limit[horizonLengthPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedHorizonLengthVariation =
  amplitudeSquared/15 *
   (14 + Cos[2 intervalHalfWidth]) *
   Sin[intervalHalfWidth]^2;
horizonFusedCornerCoefficient = 2 Pi * horizonLengthVariation;
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
rightTransgressionLeadingTail = FullSimplify[
   Limit[
    Exp[2 u] * wallRemovalTransgressionLeadingDensity,
    u -> Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
leftTransgressionLeadingTail = FullSimplify[
   Limit[
    Exp[-2 u] * wallRemovalTransgressionLeadingDensity,
    u -> -Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
Print["constructed fused wall limits"];

(* Matter modular energy removed with the collar. *)

globalStressAtRindlerPoint = {
   {
    2 amplitudeSquared *
     (1 + 2 globalRadiusSquared)/globalBackgroundFactor^2,
    0,
    -6 amplitudeSquared * globalRadiusSquared/
     globalBackgroundFactor^3
    },
   {
    0,
    4 amplitudeSquared * globalRadiusSquared/
     globalBackgroundFactor^4,
    0
    },
   {
    -6 amplitudeSquared * globalRadiusSquared/
     globalBackgroundFactor^3,
    0,
    2 amplitudeSquared * globalRadiusSquared^2 *
     (7 - 2 globalRadiusSquared)/globalBackgroundFactor^4
    }
   };
globalCoordinateDerivatives = {
   globalTimeDerivative,
   globalRadiusDerivative,
   globalAngleDerivative
   };
rindlerStressTimeTime = Together@Sum[
    globalStressAtRindlerPoint[[mu, nu]] *
     globalCoordinateDerivatives[[mu, 1]] *
     globalCoordinateDerivatives[[nu, 1]],
    {mu, 3}, {nu, 3}
    ];
collarMatterModularDensity = FullSimplify[
   2 Pi Cosh[chi]/Sinh[chi] *
     (rindlerStressTimeTime /. tau -> 0),
   Assumptions -> wallAssumptions
   ];
collarMatterLeadingDensity = FullSimplify[
   Limit[
    collarMatterModularDensity/chi,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedCollarMatterLeadingDensity =
  4 Pi amplitudeSquared Sin[intervalHalfWidth]^4 * (
    2 Sech[u]^4
     - Sin[intervalHalfWidth]^2 Sech[u]^6
    );
collarMatterLeadingIntegral = FullSimplify[
   Integrate[
    expectedCollarMatterLeadingDensity,
    {u, -Infinity, Infinity},
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
    ]
   ];
expectedCollarMatterLeadingIntegral =
  32 Pi amplitudeSquared Sin[intervalHalfWidth]^4/15 *
   (5 - 2 Sin[intervalHalfWidth]^2);
Print["constructed collar matter limits"];

(* Nonorthogonal endpoint structures.  Rotation makes the local tau=0
   joint nonzero even though its integral over the symmetric cut vanishes. *)

genericHaywardEndpointDensity =
  Cosh[chi] * genericTimeRadialResponse/Sinh[chi];
genericHarlowWuEndpointDensity =
  Cosh[chi] * genericTimeRadialResponse/(2 Sinh[chi]);
jointHarlowWuRelationResidual = FullSimplify[
   genericHaywardEndpointDensity
    - 2 genericHarlowWuEndpointDensity,
   Assumptions -> chi > 0
   ];
symmetricHaywardJointDensity = FullSimplify[
   Cosh[chi] *
    rindlerMetricResponseAtSymmetricSlice[[1, 2]]/Sinh[chi],
   Assumptions -> wallAssumptions
   ];
symmetricHarlowWuCutDensity = symmetricHaywardJointDensity/2;
horizonSymmetricHaywardJointDensity = FullSimplify[
   Limit[
    symmetricHaywardJointDensity,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedHorizonSymmetricHaywardJointDensity =
  amplitudeSquared Sin[intervalHalfWidth]^2/2 *
   Tanh[u] * (
    Sech[u]^2
     + Sin[intervalHalfWidth]^2 Sech[u]^4
    );
horizonSymmetricHaywardJointIntegral = FullSimplify[
   Integrate[
    horizonSymmetricHaywardJointDensity,
    {u, -Infinity, Infinity},
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
    ]
   ];
jointSymmetricRightTail = FullSimplify[
   Limit[
    Exp[2 u] * horizonSymmetricHaywardJointDensity,
    u -> Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
jointSymmetricLeftTail = FullSimplify[
   Limit[
    Exp[-2 u] * horizonSymmetricHaywardJointDensity,
    u -> -Infinity
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
Print["constructed joint limits"];

(* Transparent two-sided interface algebra and the selected smooth mode. *)

angularScalarRindler =
  Sqrt[amplitudeSquared] *
   (embeddingTimeCosine - I embeddingTimeSine)^3 *
   (embeddingRadialCosine + I embeddingRadialSine)/
   globalBackgroundFactor^3;
exteriorScalarNormalDerivative = -D[angularScalarRindler, chi];
collarScalarNormalDerivative = D[angularScalarRindler, chi];
scalarMomentumMatchingResidual =
  (
   exteriorScalarNormalDerivative
    + collarScalarNormalDerivative
  );
matterInterfaceSourceResidual = FullSimplify[
   -(-dPhi variationPhi) - (dPhi variationPhi)
   ];
matterInterfaceFluxResidual = FullSimplify[
   (-variationOne derivativeTwo
      + variationTwo derivativeOne)
    + (variationOne derivativeTwo
      - variationTwo derivativeOne)
   ];
momentumPlus = {{p11, p12}, {p12, p22}};
metricVariation = {{q11, q12}, {q12, q22}};
momentumVariationOne = {{dp111, dp112}, {dp112, dp122}};
momentumVariationTwo = {{dp211, dp212}, {dp212, dp222}};
metricVariationOne = {{dq111, dq112}, {dq112, dq122}};
metricVariationTwo = {{dq211, dq212}, {dq212, dq222}};
gravityInterfaceSourceResidual = FullSimplify[
   -1/2 * Sum[
      momentumPlus[[a, b]] * metricVariation[[a, b]],
      {a, 2}, {b, 2}
      ]
    - 1/2 * Sum[
      (-momentumPlus[[a, b]]) * metricVariation[[a, b]],
      {a, 2}, {b, 2}
      ]
   ];
gravityInterfaceFluxResidual = FullSimplify[
   -1/2 * Sum[
      momentumVariationOne[[a, b]] *
        metricVariationTwo[[a, b]]
       - momentumVariationTwo[[a, b]] *
        metricVariationOne[[a, b]],
      {a, 2}, {b, 2}
      ]
    - 1/2 * Sum[
      (-momentumVariationOne[[a, b]]) *
        metricVariationTwo[[a, b]]
       - (-momentumVariationTwo[[a, b]]) *
        metricVariationOne[[a, b]],
      {a, 2}, {b, 2}
      ]
   ];
rightAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] * wallLengthVariationDensity,
    u -> Infinity
    ],
   Assumptions -> wallAssumptions
   ];
leftAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] * wallLengthVariationDensity,
    u -> -Infinity
    ],
   Assumptions -> wallAssumptions
   ];
rightSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] * wallGravitySourceDensity,
    u -> Infinity
    ],
   Assumptions -> wallAssumptions
   ];
leftSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] * wallGravitySourceDensity,
    u -> -Infinity
    ],
   Assumptions -> wallAssumptions
   ];

checks = <|
   "embedding pulls back to AdS-Rindler" ->
    (backgroundPullbackResidual === ConstantArray[0, {3, 3}]),
   "AdS-Rindler background connection crosscheck" ->
    FullSimplify[
      backgroundChristoffelCrosscheckResidual,
      Assumptions -> chi > 0
      ] === ConstantArray[0, {3, 3, 3}],
   "generic symmetric-cut EH reduction" ->
    (genericEinsteinHilbertReductionResidual === 0),
   "rotation gives a nonzero symmetric wall time-radial response" ->
    FullSimplify[
      rindlerMetricResponseAtSymmetricSlice[[1, 2]],
      Assumptions -> wallAssumptions
      ] =!= 0,
   "symmetric wall Brown-York coefficient vanishes at the horizon" ->
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
    FullSimplify[
      horizonLengthVariationDensity
       - expectedHorizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
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
   "fused corner equals the angular-mode RT coefficient" ->
    FullSimplify[
      horizonFusedCornerCoefficient
       - 2 Pi amplitudeSquared/15 *
        (14 + Cos[2 intervalHalfWidth]) *
        Sin[intervalHalfWidth]^2,
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
   "wall-removal quadratic tails agree" ->
    FullSimplify[
      rightTransgressionLeadingTail
       - leftTransgressionLeadingTail,
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
    FullSimplify[TrigToExp[Together[
      collarMatterLeadingDensity
       - expectedCollarMatterLeadingDensity
      ]], Assumptions -> horizonAssumptions] === 0,
   "collar matter leading integral" ->
    FullSimplify[
      collarMatterLeadingIntegral
       - expectedCollarMatterLeadingIntegral,
      Assumptions -> horizonAssumptions
      ] === 0,
   "tau-zero Hayward density is locally nonzero" ->
    (horizonSymmetricHaywardJointDensity =!= 0),
   "tau-zero Hayward density is the rotation-odd profile" ->
    FullSimplify[
      horizonSymmetricHaywardJointDensity
       - expectedHorizonSymmetricHaywardJointDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "tau-zero Hayward density integrates to zero" ->
    (horizonSymmetricHaywardJointIntegral === 0),
   "tau-zero joint tails have opposite signs" ->
    FullSimplify[
      jointSymmetricRightTail + jointSymmetricLeftTail,
      Assumptions -> horizonAssumptions
      ] === 0,
   "fixed-cut Hayward and Harlow-Wu coefficients stay distinct" ->
    (jointHarlowWuRelationResidual === 0),
   "smooth angular scalar has opposite interface momenta" ->
    (scalarMomentumMatchingResidual === 0),
   "matter interface source cancels" ->
    (matterInterfaceSourceResidual === 0),
   "matter interface symplectic flux cancels" ->
    (matterInterfaceFluxResidual === 0),
   "gravity interface source cancels including offdiagonal data" ->
    (gravityInterfaceSourceResidual === 0),
   "gravity interface symplectic flux cancels including offdiagonal data" ->
    (gravityInterfaceFluxResidual === 0)
   |>;

Print["Angular scalar finite-wall checks:"];
KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["Passed ", Count[Values[checks], True], "/", Length[checks],
  " checks."];
Print["horizon Brown-York/EH/descent limits: ",
 InputForm[{
   wallBrownYorkHorizonLimit,
   wallEinsteinHilbertHorizonLimit,
   wallBoundaryDescentHorizonLimit
   }]];
Print["symmetric-cut horizon Hayward density: ",
 InputForm[horizonSymmetricHaywardJointDensity]];
Print["quadratic wall-removal density: ",
 InputForm[wallRemovalTransgressionLeadingDensity]];
Print["collar matter leading density: ",
 InputForm[collarMatterLeadingDensity]];

If[! And @@ Values[checks], Exit[1]];
