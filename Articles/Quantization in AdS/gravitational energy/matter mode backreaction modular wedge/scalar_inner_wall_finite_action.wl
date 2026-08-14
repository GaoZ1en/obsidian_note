(* ::Package:: *)

(* Finite-cutoff AdS--Rindler inner-wall benchmark for the massless complex
   scalar mode and its O(kappa_p^2 epsilon^2) metric response.

   Coordinates are {tau,chi,u}; the retained wedge is chi>=wallChi and the
   inner outward normal points toward decreasing chi.  The modular Killing
   vector is xi=2 Pi partial_tau.  No asymptotic AdS counterterm is placed on
   the artificial inner wall. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll["Global`*"];

$Assumptions = True;
bulkWallAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 && chi > 0 &&
   Element[{tau, chi, u, intervalHalfWidth, amplitudeSquared}, Reals];
wallAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 && chi > 0 &&
   Element[{chi, u, intervalHalfWidth, amplitudeSquared}, Reals];
horizonAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
   Element[{u, intervalHalfWidth, amplitudeSquared}, Reals];
tailAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 && chi > 0 &&
   Element[{chi, intervalHalfWidth, amplitudeSquared}, Reals];

globalCoordinates = {t, r, phi};
rindlerCoordinates = {tau, chi, u};

globalBackground = DiagonalMatrix[{
    -(1 + r^2), 1/(1 + r^2), r^2
    }];
globalMetricResponse = DiagonalMatrix[{
    4 amplitudeSquared,
    4 amplitudeSquared r^2/(1 + r^2)^3,
    0
    }];

intervalCosine = Cos[intervalHalfWidth];
intervalSine = Sin[intervalHalfWidth];
rindlerEmbedding = {
   (Cosh[chi] Cosh[u]
      + intervalCosine Sinh[chi] Cosh[tau])/intervalSine,
   Sinh[chi] Sinh[tau],
   (Sinh[chi] Cosh[tau]
      + intervalCosine Cosh[chi] Cosh[u])/intervalSine,
   Cosh[chi] Sinh[u]
   };

globalMap = {
   ArcTan[rindlerEmbedding[[1]], rindlerEmbedding[[2]]],
   Sqrt[rindlerEmbedding[[3]]^2 + rindlerEmbedding[[4]]^2],
   ArcTan[rindlerEmbedding[[3]], rindlerEmbedding[[4]]]
   };
globalMapRules = Thread[globalCoordinates -> globalMap];
coordinateJacobian = Table[
   D[globalMap[[mu]], rindlerCoordinates[[a]]],
   {mu, 3}, {a, 3}
   ];

pullback[tensor_] := Table[
   Together@Sum[
     coordinateJacobian[[mu, a]] coordinateJacobian[[nu, b]]
      (tensor[[mu, nu]] /. globalMapRules),
     {mu, 3}, {nu, 3}
     ],
   {a, 3}, {b, 3}
   ];

rindlerBackground = DiagonalMatrix[{
    -Sinh[chi]^2, 1, Cosh[chi]^2
    }];
pulledBackBackground = pullback[globalBackground];
backgroundPullbackResidual = FullSimplify[
   pulledBackBackground - rindlerBackground,
   Assumptions -> bulkWallAssumptions
   ];

(* Independent xCoba check of the Rindler background connection and the
   index ordering used by the finite-wall component algebra. *)

DefManifold[MscalarInnerWall, 3, {aa, bb, cc, dd}];
DefChart[
  scalarInnerWallChart,
  MscalarInnerWall,
  {0, 1, 2},
  {tauChart[], chiChart[], uChart[]}
  ];
chartBackground = rindlerBackground /. {
    tau -> tauChart[], chi -> chiChart[], u -> uChart[]
    };
chartBackgroundCTensor =
  CTensor[chartBackground, {-scalarInnerWallChart, -scalarInnerWallChart}];
SetCMetric[
  chartBackgroundCTensor,
  scalarInnerWallChart,
  SignatureOfMetric -> {2, 1, 0}
  ];
MetricCompute[
  chartBackgroundCTensor,
  scalarInnerWallChart,
  "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
chartBackgroundDerivative = CovDOfMetric[chartBackgroundCTensor];
chartCoordinateDerivative = GiveSymbol[PD, scalarInnerWallChart];
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

rindlerMetricResponse = pullback[globalMetricResponse];
rindlerMetricResponseAtSymmetricSlice = FullSimplify[
   rindlerMetricResponse /. tau -> 0,
   Assumptions -> wallAssumptions
   ];
rindlerWallDenominator =
  Cosh[chi] Cosh[u] + intervalCosine Sinh[chi];
expectedWallTimeResponse =
  4 amplitudeSquared intervalSine^2 Sinh[chi]^2/
   rindlerWallDenominator^2;
expectedWallCutResponse =
  4 amplitudeSquared intervalSine^2 Cosh[chi]^2 Sinh[u]^2/
   rindlerWallDenominator^4;

truncate[expression_] := Normal@Series[
    expression, {backreactionParameter, 0, 1}
    ];

wallMetric =
  rindlerBackground
   + backreactionParameter rindlerMetricResponse;
wallMetricInverse = truncate[Inverse[wallMetric]];
wallMetricJets = Table[
   D[wallMetric, rindlerCoordinates[[derivative]]],
   {derivative, 3}
   ];
wallChristoffel = Table[
   truncate[
    1/2 Sum[
      wallMetricInverse[[lambda, sigma]] (
        wallMetricJets[[a, sigma, b]]
         + wallMetricJets[[b, sigma, a]]
         - wallMetricJets[[sigma, a, b]]
        ),
      {sigma, 3}
      ]
    ],
   {lambda, 3}, {a, 3}, {b, 3}
   ];
backgroundChristoffelCrosscheckResidual = FullSimplify[
   (wallChristoffel /. backreactionParameter -> 0)
    - xCobaBackgroundChristoffel,
   Assumptions -> chi > 0
   ];

(* Einstein--GHY/Harlow--Wu finite-wall split. *)

wallNormalLapse = truncate[1/Sqrt[wallMetricInverse[[2, 2]]]];
wallOutwardNormalCovector = {0, -wallNormalLapse, 0};
wallTangentIndices = {1, 3};
wallInducedMetric =
  wallMetric[[wallTangentIndices, wallTangentIndices]];
wallInducedInverse = truncate[Inverse[wallInducedMetric]];
wallExtrinsicCurvature = Table[
   truncate[
    -wallOutwardNormalCovector[[2]]
     wallChristoffel[[
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

wallCutLapse = truncate[1/Sqrt[-wallInducedInverse[[1, 1]]]];
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

wallModularKillingFull = {2 Pi, 0, 0};
wallFutureNormalFull = {
   wallFutureNormal[[1]], 0, wallFutureNormal[[2]]
   };
wallFutureNormalCovectorFull = truncate[
   wallMetric . wallFutureNormalFull
   ];
wallCovariantDerivativeKilling = Table[
   truncate@Sum[
     wallChristoffel[[nu, rho, lambda]]
      wallModularKillingFull[[lambda]],
     {lambda, 3}
     ],
   {rho, 3}, {nu, 3}
   ];
wallRaisedDerivativeKilling = Table[
   truncate@Sum[
     wallMetricInverse[[mu, rho]]
      wallCovariantDerivativeKilling[[rho, nu]],
     {rho, 3}
     ],
   {mu, 3}, {nu, 3}
   ];
wallEinsteinHilbertDensity = truncate[
   1/2 wallCutDensity Sum[
     wallFutureNormalCovectorFull[[mu]]
      wallOutwardNormalCovector[[nu]] (
       wallRaisedDerivativeKilling[[mu, nu]]
        - wallRaisedDerivativeKilling[[nu, mu]]
       ),
     {mu, 3}, {nu, 3}
     ]
   ];

wallBrownYorkCoefficient = FullSimplify[
   Coefficient[
     wallBrownYorkDensity,
     backreactionParameter,
     1
     ] /. tau -> 0,
   Assumptions -> wallAssumptions
   ];
wallEinsteinHilbertCoefficient = FullSimplify[
   Coefficient[
     wallEinsteinHilbertDensity,
     backreactionParameter,
     1
     ] /. tau -> 0,
   Assumptions -> wallAssumptions
   ];
wallBoundaryDescentCoefficient = FullSimplify[
   wallBrownYorkCoefficient - wallEinsteinHilbertCoefficient,
   Assumptions -> wallAssumptions
   ];

(* The finite timelike-wall generator is not the fused horizon corner.  The
   wall-removal operation pairs the GHY source one-form with the boost-corner
   functional I_fuse=2 Pi Length/kappa_p^2.  With the common 1/kappa_p^2
   stripped, the source and length-variation densities on tau=0 are as
   follows. *)

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
    wallTangentIndices,
    wallTangentIndices
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
     wallGravitySourceDensity
      + wallLengthVariationDensity
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
  2 amplitudeSquared Sin[intervalHalfWidth]^2 *
   Tanh[u]^2 Sech[u]^2;
horizonLengthPrimitive =
  2 amplitudeSquared Sin[intervalHalfWidth]^2 Tanh[u]^3/3;
horizonLengthVariation = FullSimplify[
   Limit[horizonLengthPrimitive, u -> Infinity]
    - Limit[horizonLengthPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedHorizonLengthVariation =
  4 amplitudeSquared Sin[intervalHalfWidth]^2/3;
horizonFusedCornerCoefficient =
  2 Pi horizonLengthVariation;

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

(* Fixed-wall endpoint decay.  It makes the noncompact u cut integrable and
   removes the anchor endpoints before the wall is fused. *)

rightAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] wallLengthVariationDensity,
    u -> Infinity
    ],
   Assumptions -> tailAssumptions
   ];
leftAreaTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] wallLengthVariationDensity,
    u -> -Infinity
    ],
   Assumptions -> tailAssumptions
   ];
rightSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[2 u] wallGravitySourceDensity,
    u -> Infinity
    ],
   Assumptions -> tailAssumptions
   ];
leftSourceTailCoefficient = FullSimplify[
   Limit[
    Exp[-2 u] wallGravitySourceDensity,
    u -> -Infinity
    ],
   Assumptions -> tailAssumptions
   ];

(* The modular matter energy omitted by the collar 0<=chi<wallChi vanishes
   quadratically. *)

globalScalarStress = DiagonalMatrix[{
    4 amplitudeSquared/(1 + r^2),
    4 amplitudeSquared/(1 + r^2)^3,
    4 amplitudeSquared r^2 (1 - r^2)/(1 + r^2)^3
    }];
rindlerScalarStress = pullback[globalScalarStress];
collarMatterModularDensity = FullSimplify[
   2 Pi Cosh[chi]/Sinh[chi] *
     (rindlerScalarStress[[1, 1]] /. tau -> 0),
   Assumptions -> wallAssumptions
   ];
expectedCollarMatterModularDensity =
  8 Pi amplitudeSquared intervalSine^4 Sinh[chi] Cosh[chi]/
   rindlerWallDenominator^4;
collarMatterLeadingDensity = FullSimplify[
   Limit[
    collarMatterModularDensity/chi,
    chi -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions -> horizonAssumptions
   ];
expectedCollarMatterLeadingDensity =
  8 Pi amplitudeSquared Sin[intervalHalfWidth]^4 Sech[u]^4;
collarMatterLeadingPrimitive =
  8 Pi amplitudeSquared Sin[intervalHalfWidth]^4 *
   (Tanh[u] - Tanh[u]^3/3);
collarMatterLeadingIntegral = FullSimplify[
   Limit[collarMatterLeadingPrimitive, u -> Infinity]
    - Limit[collarMatterLeadingPrimitive, u -> -Infinity],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];

(* The wall/global-cutoff intersection approaches each interval endpoint
   with R (a-phi_c)->Sinh[chi].  Since the outer density vanishes linearly at
   the endpoint, the omitted boundary strip is O(R^-2). *)

rightAnchorTangentLimit = FullSimplify[
   Limit[
    (rindlerEmbedding[[4]]/rindlerEmbedding[[3]]) /. tau -> 0,
    u -> Infinity
    ],
   Assumptions -> tailAssumptions
   ];
(* r Sin[a-phi] avoids an ArcTan branch condition.  Together with the
   preceding limit and 0<a<Pi/2 it gives r (a-phi)->Sinh[chi]. *)
rightAnchorGapCoefficient = FullSimplify[
   Limit[
    (
      intervalSine rindlerEmbedding[[3]]
       - intervalCosine rindlerEmbedding[[4]]
      ) /. tau -> 0,
    u -> Infinity
    ],
   Assumptions -> tailAssumptions
   ];
outerBoundaryAngularDensity =
  4 Pi amplitudeSquared/Sin[intervalHalfWidth] (
    Cos[phi] - Cos[intervalHalfWidth]
    );
outerEndpointDensity = FullSimplify[
   outerBoundaryAngularDensity /. phi -> intervalHalfWidth
   ];
outerEndpointLinearCoefficient = FullSimplify[
   Limit[
    (outerBoundaryAngularDensity /. {
       phi -> intervalHalfWidth - endpointGap
       })/endpointGap,
    endpointGap -> 0,
    Direction -> "FromAbove"
    ],
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];

(* Orthogonal endpoint and Harlow--Wu checks on the symmetric slice. *)

wallNormalSliceDot = FullSimplify[
   wallOutwardNormalCovector . wallFutureNormalFull /. tau -> 0,
   Assumptions -> wallAssumptions
   ];
wallBoostAngle = FullSimplify[
   ArcSinh[wallNormalSliceDot],
   Assumptions -> wallAssumptions
   ];
wallJointDensityCoefficient = FullSimplify[
   Coefficient[
    wallCutDensity wallBoostAngle,
    backreactionParameter,
    1
    ],
   Assumptions -> wallAssumptions
   ];

backgroundWallProjectorInverse = DiagonalMatrix[{
    -Csch[chi]^2, 0, Sech[chi]^2
    }];
linearHarlowWuEndpointVector = Table[
   FullSimplify[
    1/2 Sum[
      backgroundWallProjectorInverse[[mu, nu]]
       rindlerMetricResponseAtSymmetricSlice[[nu, 2]],
      {nu, 3}
      ],
    Assumptions -> wallAssumptions
    ],
   {mu, 3}
   ];
backgroundCutFutureCovector = {-Sinh[chi], 0, 0};
linearHarlowWuCutDensity = FullSimplify[
   Cosh[chi] backgroundCutFutureCovector .
     linearHarlowWuEndpointVector,
   Assumptions -> wallAssumptions
   ];

(* Scalar-compatible transparent interface polarization.  The same smooth
   scalar and metric are retained on the two sides of the wall, while their
   outward normals are opposite.  Matching configuration data and opposite
   momenta define a Lagrangian correspondence.  The generic algebra below
   verifies cancellation of matter and gravitational source/flux terms. *)

scalarModeRindler =
  Sqrt[amplitudeSquared]/(
    rindlerEmbedding[[1]] + I rindlerEmbedding[[2]]
    )^2;
scalarModeAtSymmetricSlice = FullSimplify[
   scalarModeRindler /. tau -> 0,
   Assumptions -> bulkWallAssumptions
   ];
exteriorScalarNormalDerivative = FullSimplify[
   -D[scalarModeRindler, chi],
   Assumptions -> bulkWallAssumptions
   ];
collarScalarNormalDerivative = FullSimplify[
   D[scalarModeRindler, chi],
   Assumptions -> bulkWallAssumptions
   ];
scalarMomentumMatchingResidual = FullSimplify[
   exteriorScalarNormalDerivative
    + collarScalarNormalDerivative,
   Assumptions -> bulkWallAssumptions
   ];

matterInterfaceSourceResidual = FullSimplify[
   -(-dPhi1 variationPhi1 - dPhi2 variationPhi2)
    -(dPhi1 variationPhi1 + dPhi2 variationPhi2)
   ];
matterInterfaceFluxResidual = FullSimplify[
   (-variationOne1 derivativeTwo1
      - variationOne2 derivativeTwo2
      + variationTwo1 derivativeOne1
      + variationTwo2 derivativeOne2)
    +(variationOne1 derivativeTwo1
      + variationOne2 derivativeTwo2
      - variationTwo1 derivativeOne1
      - variationTwo2 derivativeOne2)
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
   "global metric pulls back to AdS-Rindler" ->
    (backgroundPullbackResidual === ConstantArray[0, {3, 3}]),
   "xCoba background connection crosscheck" ->
    (backgroundChristoffelCrosscheckResidual ===
      ConstantArray[0, {3, 3, 3}]),
   "finite-wall time response component" ->
    FullSimplify[
      rindlerMetricResponseAtSymmetricSlice[[1, 1]]
       - expectedWallTimeResponse,
      Assumptions -> wallAssumptions
      ] === 0,
   "finite-wall cut response component" ->
    FullSimplify[
      rindlerMetricResponseAtSymmetricSlice[[3, 3]]
       - expectedWallCutResponse,
      Assumptions -> wallAssumptions
      ] === 0,
   "inner-wall Brown-York coefficient vanishes" ->
    (wallBrownYorkCoefficient === 0),
   "inner-wall Einstein-Hilbert coefficient vanishes" ->
    (wallEinsteinHilbertCoefficient === 0),
   "inner-wall boundary descent coefficient vanishes" ->
    (wallBoundaryDescentCoefficient === 0),
   "background inner-wall momentum" ->
    (backgroundWallMomentum === DiagonalMatrix[{-1, 1}]),
   "horizon length density" ->
    FullSimplify[
      TrigToExp[
       horizonLengthVariationDensity
        - expectedHorizonLengthVariationDensity
       ],
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon length primitive" ->
    FullSimplify[
      TrigToExp[
       D[horizonLengthPrimitive, u]
        - expectedHorizonLengthVariationDensity
       ],
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon length variation" ->
    FullSimplify[
      horizonLengthVariation - expectedHorizonLengthVariation,
      Assumptions -> horizonAssumptions
      ] === 0,
   "fused corner equals direct RT entropy coefficient" ->
    FullSimplify[
      horizonFusedCornerCoefficient
       - 8 Pi amplitudeSquared Sin[intervalHalfWidth]^2/3,
      Assumptions -> horizonAssumptions
      ] === 0,
   "horizon source is minus length density" ->
    FullSimplify[
      horizonGravitySourceDensity
       + horizonLengthVariationDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "wall-removal transgression vanishes at the horizon" ->
    (horizonTransgressionDensity === 0),
   "wall-removal leading tails agree" ->
    FullSimplify[
      rightTransgressionLeadingTail
       - leftTransgressionLeadingTail,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "right and left area tails agree" ->
    FullSimplify[
      rightAreaTailCoefficient - leftAreaTailCoefficient,
      Assumptions -> tailAssumptions
      ] === 0,
   "right and left source tails agree" ->
    FullSimplify[
      rightSourceTailCoefficient - leftSourceTailCoefficient,
      Assumptions -> tailAssumptions
      ] === 0,
   "collar matter density is linear in chi" ->
    FullSimplify[
      collarMatterLeadingDensity
       - expectedCollarMatterLeadingDensity,
      Assumptions -> horizonAssumptions
      ] === 0,
   "exact collar matter modular density" ->
    FullSimplify[
      collarMatterModularDensity
       - expectedCollarMatterModularDensity,
      Assumptions -> wallAssumptions
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
       - 32 Pi amplitudeSquared
        Sin[intervalHalfWidth]^4/3,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "right wall anchor approaches with R gap Sinh[chi]" ->
    (FullSimplify[
       rightAnchorTangentLimit - Tan[intervalHalfWidth],
       Assumptions -> tailAssumptions
       ] === 0 &&
      FullSimplify[
       rightAnchorGapCoefficient - Sinh[chi],
       Assumptions -> tailAssumptions
       ] === 0),
   "outer density vanishes at the interval endpoint" ->
    (outerEndpointDensity === 0),
   "outer density has the declared linear endpoint coefficient" ->
    FullSimplify[
      outerEndpointLinearCoefficient
       - 4 Pi amplitudeSquared,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "finite-wall cut is orthogonal on tau=0" ->
    (wallNormalSliceDot === 0),
   "finite-wall joint coefficient vanishes" ->
    (wallJointDensityCoefficient === 0),
   "Harlow-Wu endpoint cut density vanishes" ->
    (linearHarlowWuCutDensity === 0),
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

Print["background pullback residual: ", backgroundPullbackResidual];
Print[
 "metric response at tau=0: ",
 rindlerMetricResponseAtSymmetricSlice
 ];
Print["inner-wall Brown-York coefficient: ", wallBrownYorkCoefficient];
Print[
 "inner-wall Einstein-Hilbert coefficient: ",
 wallEinsteinHilbertCoefficient
 ];
Print[
 "inner-wall boundary descent coefficient: ",
 wallBoundaryDescentCoefficient
 ];
Print["wall gravity source density: ", wallGravitySourceDensity];
Print["wall length variation density: ", wallLengthVariationDensity];
Print[
 "wall-removal transgression density: ",
 wallRemovalTransgressionDensity
 ];
Print[
 "wall-removal leading density: ",
 wallRemovalTransgressionLeadingDensity
 ];
Print["horizon fused-corner coefficient: ", horizonFusedCornerCoefficient];
Print["horizon length variation density: ", horizonLengthVariationDensity];
Print[
 "horizon length-density residual: ",
 FullSimplify[
  horizonLengthVariationDensity
   - expectedHorizonLengthVariationDensity,
  Assumptions -> horizonAssumptions
  ]
 ];
Print[
 "horizon primitive residual: ",
 FullSimplify[
  D[horizonLengthPrimitive, u]
   - expectedHorizonLengthVariationDensity,
  Assumptions -> horizonAssumptions
  ]
 ];
Print["fixed-wall area tail coefficient: ", rightAreaTailCoefficient];
Print["fixed-wall source tail coefficient: ", rightSourceTailCoefficient];
Print["collar matter leading integral: ", collarMatterLeadingIntegral];
Print["right anchor R-gap coefficient: ", rightAnchorGapCoefficient];
Print[checks];
Print["All checks passed: ", And @@ Values[checks]];
Print[Count[Values[checks], True], "/", Length[checks], " checks passed"];

If[
 !And @@ Values[checks],
 Exit[1]
 ];
