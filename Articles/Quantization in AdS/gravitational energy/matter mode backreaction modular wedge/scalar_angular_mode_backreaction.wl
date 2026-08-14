(* ::Package:: *)

(* Exact smooth-wedge benchmark for the lowest massless complex scalar mode
   with nonzero angular momentum in global AdS3,

     Phi = Sqrt[amplitudeSquared] r Exp[-3 I t + I phi]/(1+r^2)^(3/2).

   The matter convention is

     S_m = -Integral sqrt(-g) g^(mu nu) d_mu Phi* d_nu Phi,

   and the metric response is the coefficient of
   lambda = kappa_p^2 epsilon^2.  The phase convention Exp[+I phi] gives
   H_(partial_phi) = -1 at unit KG norm with the charge orientation used
   throughout this project. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll["Global`*"];

$Assumptions =
  amplitudeSquared > 0 && r > 0 &&
   0 < intervalHalfWidth < Pi/2 &&
   Element[{t, r, phi, intervalHalfWidth, amplitudeSquared}, Reals];

intervalAssumptions =
  amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
   -intervalHalfWidth < phi < intervalHalfWidth &&
   Cos[phi] > Cos[intervalHalfWidth] &&
   Cos[phi]^2 > Cos[intervalHalfWidth]^2;

coordinateList = {t, r, phi};
backgroundFactor = 1 + r^2;
backgroundMetric = DiagonalMatrix[{
    -backgroundFactor,
    1/backgroundFactor,
    r^2
    }];
backgroundInverse = FullSimplify[Inverse[backgroundMetric]];
backgroundVolume = FullSimplify[Sqrt[-Det[backgroundMetric]]];

scalarMode =
  Sqrt[amplitudeSquared] r *
   Exp[-3 I t + I phi]/backgroundFactor^(3/2);
scalarModeStar =
  Sqrt[amplitudeSquared] r *
   Exp[3 I t - I phi]/backgroundFactor^(3/2);

scalarKinetic = FullSimplify@Sum[
    backgroundInverse[[mu, nu]] *
     D[scalarModeStar, coordinateList[[mu]]] *
     D[scalarMode, coordinateList[[nu]]],
    {mu, 3}, {nu, 3}
    ];
scalarStress = Table[
   FullSimplify[
    D[scalarModeStar, coordinateList[[mu]]] *
      D[scalarMode, coordinateList[[nu]]]
     + D[scalarModeStar, coordinateList[[nu]]] *
      D[scalarMode, coordinateList[[mu]]]
     - backgroundMetric[[mu, nu]] * scalarKinetic,
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
expectedScalarStress = {
   {
    2 amplitudeSquared (1 + 2 r^2)/backgroundFactor^2,
    0,
    -6 amplitudeSquared r^2/backgroundFactor^3
    },
   {
    0,
    4 amplitudeSquared r^2/backgroundFactor^4,
    0
    },
   {
    -6 amplitudeSquared r^2/backgroundFactor^3,
    0,
    2 amplitudeSquared r^4 (7 - 2 r^2)/backgroundFactor^4
    }
   };

kleinGordonResidual = FullSimplify[
   1/backgroundVolume * Sum[
     D[
      backgroundVolume * backgroundInverse[[mu, nu]] *
       D[scalarMode, coordinateList[[nu]]],
      coordinateList[[mu]]
      ],
     {mu, 3}, {nu, 3}
     ],
   Assumptions -> $Assumptions
   ];

(* Rotating polar--areal gauge:

     ds^2 = -Exp[2 lambda delta_2] F dt^2 + dr^2/F
            + r^2 (dphi + lambda Omega_2 dt)^2.

   Regularity at the centre and a fixed nonrotating boundary frame remove
   the independent homogeneous mass and rotation modes. *)

radialResponse =
  -amplitudeSquared r^2 (2 + 3 r^2)/backgroundFactor^2;
lapseResponse =
  -amplitudeSquared (1 + 2 r^2)/backgroundFactor^3;
shiftResponse =
  -amplitudeSquared (2 + r^2)/(2 backgroundFactor^2);

metricResponse = {
   {
    amplitudeSquared (2 + 6 r^2 + 3 r^4)/backgroundFactor^2,
    0,
    -amplitudeSquared r^2 (2 + r^2)/(2 backgroundFactor^2)
    },
   {
    0,
    amplitudeSquared r^2 (2 + 3 r^2)/backgroundFactor^4,
    0
    },
   {
    -amplitudeSquared r^2 (2 + r^2)/(2 backgroundFactor^2),
    0,
    0
    }
   };
metricResponseFromAnsatz = {
   {
    -radialResponse - 2 backgroundFactor * lapseResponse,
    0,
    r^2 shiftResponse
    },
   {
    0,
    -radialResponse/backgroundFactor^2,
    0
    },
   {
    r^2 shiftResponse,
    0,
    0
    }
   };

centreRegularityData = FullSimplify[{
    Quiet@Limit[radialResponse, r -> 0],
    Quiet@Limit[metricResponse[[2, 2]], r -> 0],
    Quiet@Limit[metricResponse[[1, 3]], r -> 0]
    }, Assumptions -> $Assumptions];
brownHenneauxResponseData = FullSimplify[{
    Quiet@Limit[metricResponse[[1, 1]], r -> Infinity],
    Quiet@Limit[r^4 metricResponse[[2, 2]], r -> Infinity],
    Quiet@Limit[metricResponse[[1, 3]], r -> Infinity],
    metricResponse[[3, 3]]
    }, Assumptions -> $Assumptions];

(* xCoba supplies the AdS3 background connection and curvature.  The
   response is then checked with the covariant first-variation formulas. *)

DefManifold[MangularMode, 3, {aa, bb, cc, dd}];
DefChart[
  angularModeChart,
  MangularMode,
  {0, 1, 2},
  {tt[], rr[], pp[]}
  ];
chartBackground = backgroundMetric /. {
    t -> tt[], r -> rr[], phi -> pp[]
    };
backgroundCTensor =
  CTensor[chartBackground, {-angularModeChart, -angularModeChart}];
SetCMetric[
  backgroundCTensor,
  angularModeChart,
  SignatureOfMetric -> {2, 1, 0}
  ];
MetricCompute[
  backgroundCTensor,
  angularModeChart,
  "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
MetricCompute[
  backgroundCTensor,
  angularModeChart,
  "Ricci"[-1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
backgroundDerivative = CovDOfMetric[backgroundCTensor];
coordinateDerivative = GiveSymbol[PD, angularModeChart];
chartRules = {tt[] -> t, rr[] -> r, pp[] -> phi};
backgroundChristoffel =
  ToValues[
    Christoffel[backgroundDerivative, coordinateDerivative]
    ] /. CTensor[array_, bases_, weight_] :> array /. chartRules;
backgroundRicci =
  ToValues[Ricci[backgroundDerivative]] /.
    CTensor[array_, bases_, weight_] :> array /. chartRules;
backgroundRicciScalar = FullSimplify@Sum[
    backgroundInverse[[mu, nu]] * backgroundRicci[[mu, nu]],
    {mu, 3}, {nu, 3}
    ];

covariantDerivativeMetricResponse = Table[
   FullSimplify[
    D[metricResponse[[mu, nu]], coordinateList[[alpha]]]
     - Sum[
       backgroundChristoffel[[beta, alpha, mu]] *
         metricResponse[[beta, nu]]
        + backgroundChristoffel[[beta, alpha, nu]] *
         metricResponse[[mu, beta]],
       {beta, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {alpha, 3}, {mu, 3}, {nu, 3}
   ];
linearizedChristoffel = Table[
   FullSimplify[
    1/2 * Sum[
      backgroundInverse[[rho, sigma]] * (
        covariantDerivativeMetricResponse[[mu, nu, sigma]]
         + covariantDerivativeMetricResponse[[nu, mu, sigma]]
         - covariantDerivativeMetricResponse[[sigma, mu, nu]]
        ),
      {sigma, 3}
      ],
    Assumptions -> $Assumptions
    ],
   {rho, 3}, {mu, 3}, {nu, 3}
   ];
covariantDerivativeLinearizedChristoffel = Table[
   FullSimplify[
    D[linearizedChristoffel[[rho, mu, nu]],
      coordinateList[[alpha]]]
     + Sum[
       backgroundChristoffel[[rho, alpha, beta]] *
         linearizedChristoffel[[beta, mu, nu]]
        - backgroundChristoffel[[beta, alpha, mu]] *
         linearizedChristoffel[[rho, beta, nu]]
        - backgroundChristoffel[[beta, alpha, nu]] *
         linearizedChristoffel[[rho, mu, beta]],
       {beta, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {alpha, 3}, {rho, 3}, {mu, 3}, {nu, 3}
   ];
linearizedRicci = Table[
   FullSimplify[
    Sum[
     covariantDerivativeLinearizedChristoffel[[rho, rho, mu, nu]]
      - covariantDerivativeLinearizedChristoffel[[nu, rho, mu, rho]],
     {rho, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
metricResponseTrace = FullSimplify[
   Tr[backgroundInverse . metricResponse],
   Assumptions -> $Assumptions
   ];
linearizedRicciScalar = FullSimplify[
   Sum[
    backgroundInverse[[mu, nu]] * linearizedRicci[[mu, nu]],
    {mu, 3}, {nu, 3}
    ] + 2 metricResponseTrace,
   Assumptions -> $Assumptions
   ];
linearizedCosmologicalEinstein = FullSimplify[
   linearizedRicci
    - backgroundMetric * linearizedRicciScalar/2
    + 2 metricResponse,
   Assumptions -> $Assumptions
   ];
sourcedEinsteinResidual = FullSimplify[
   linearizedCosmologicalEinstein - scalarStress,
   Assumptions -> $Assumptions
   ];

stressUpper = FullSimplify[
   backgroundInverse . scalarStress . backgroundInverse,
   Assumptions -> $Assumptions
   ];
stressConservationResidual = Table[
   FullSimplify@Sum[
     D[stressUpper[[mu, nu]], coordinateList[[mu]]]
      + Sum[
        backgroundChristoffel[[mu, mu, beta]] *
          stressUpper[[beta, nu]]
         + backgroundChristoffel[[nu, mu, beta]] *
          stressUpper[[mu, beta]],
        {beta, 3}
        ],
     {mu, 3}
     ],
   {nu, 3}
   ];

(* KG norm and global matter charges. *)

spatialVolume = r/Sqrt[backgroundFactor];
futureNormalTime = 1/Sqrt[backgroundFactor];
kleinGordonDensity = FullSimplify[
   I spatialVolume * futureNormalTime * (
     scalarModeStar * D[scalarMode, t]
      - scalarMode * D[scalarModeStar, t]
     ),
   Assumptions -> $Assumptions
   ];
kleinGordonNorm = FullSimplify[
   Integrate[
    kleinGordonDensity,
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0
    ]
   ];
globalEnergyDensity = FullSimplify[
   spatialVolume * futureNormalTime * scalarStress[[1, 1]],
   Assumptions -> $Assumptions
   ];
globalAngularMomentumDensity = FullSimplify[
   spatialVolume * futureNormalTime * scalarStress[[1, 3]],
   Assumptions -> $Assumptions
   ];
globalEnergy = FullSimplify[
   Integrate[
    globalEnergyDensity,
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0
    ]
   ];
globalAngularMomentum = FullSimplify[
   Integrate[
    globalAngularMomentumDensity,
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0
    ]
   ];

(* Matter modular energy on the t=0 wedge. *)

rtRadius =
  Cos[intervalHalfWidth]/
   Sqrt[Cos[phi]^2 - Cos[intervalHalfWidth]^2];
modularTimeComponent =
  2 Pi/Sin[intervalHalfWidth] * (
    r Cos[phi]/Sqrt[backgroundFactor]
     - Cos[intervalHalfWidth]
    );
matterModularRadialDensity = FullSimplify[
   spatialVolume * futureNormalTime * modularTimeComponent *
     scalarStress[[1, 1]],
   Assumptions -> intervalAssumptions
   ];
expectedMatterModularRadialDensity =
  4 Pi amplitudeSquared r (1 + 2 r^2)/
    (backgroundFactor^3 Sin[intervalHalfWidth]) * (
     r Cos[phi]/Sqrt[backgroundFactor]
      - Cos[intervalHalfWidth]
     );
matterModularRadialPrimitive =
  Pi amplitudeSquared * (
    (1 - 2 r^4) Cot[intervalHalfWidth]/backgroundFactor^2
     + 4 r^3 (5 + 8 r^2) Cos[phi] *
       Csc[intervalHalfWidth]/(15 backgroundFactor^(5/2))
    );
matterModularRadialPrimitiveResidual = FullSimplify[
   D[matterModularRadialPrimitive, r]
    - expectedMatterModularRadialDensity,
   Assumptions -> intervalAssumptions
   ];
matterModularAngularDensity = FullSimplify[
   Limit[matterModularRadialPrimitive, r -> Infinity]
    - (matterModularRadialPrimitive /. r -> rtRadius),
   Assumptions -> intervalAssumptions
   ];
expectedMatterModularAngularDensity =
  Pi amplitudeSquared/15 * (
    32 Cos[phi] Csc[intervalHalfWidth]
     + Cot[intervalHalfWidth] * (
       -45
        + 10 Cos[intervalHalfWidth]^2 Sec[phi]^2
        + 3 Cos[intervalHalfWidth]^4 Sec[phi]^4
       )
    );
matterModularAngularPrimitive =
  Pi amplitudeSquared/15 * (
    32 Sin[phi] Csc[intervalHalfWidth]
     + Cot[intervalHalfWidth] * (
       -45 phi
        + (10 Cos[intervalHalfWidth]^2
           + 3 Cos[intervalHalfWidth]^4) Tan[phi]
        + Cos[intervalHalfWidth]^4 Tan[phi]^3
       )
    );
matterModularAngularPrimitiveResidual = FullSimplify[
   D[matterModularAngularPrimitive, phi]
    - expectedMatterModularAngularDensity,
   Assumptions -> intervalAssumptions
   ];
matterModularEnergy = FullSimplify[
   (matterModularAngularPrimitive /. phi -> intervalHalfWidth)
    - (matterModularAngularPrimitive /. phi -> -intervalHalfWidth),
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedMatterModularEnergy = (
   6 Pi amplitudeSquared * (
     1 - intervalHalfWidth Cot[intervalHalfWidth]
     )
    - 2 Pi amplitudeSquared/15 *
     (14 + Cos[2 intervalHalfWidth]) *
     Sin[intervalHalfWidth]^2
   );

(* Renormalized Brown--York energy and angular momentum at infinity. *)

backreactedFactor =
  backgroundFactor + backreactionParameter * radialResponse;
backreactedMetric = {
   {
    -Exp[2 backreactionParameter * lapseResponse] *
      backreactedFactor
     + r^2 (backreactionParameter * shiftResponse)^2,
    0,
    r^2 backreactionParameter * shiftResponse
    },
   {0, 1/backreactedFactor, 0},
   {r^2 backreactionParameter * shiftResponse, 0, r^2}
   };
cutoffMetric = backreactedMetric[[{1, 3}, {1, 3}]];
cutoffExtrinsicCurvature = FullSimplify[
   Sqrt[backreactedFactor] * D[cutoffMetric, r]/2
   ];
cutoffExtrinsicTrace = FullSimplify[
   Tr[Inverse[cutoffMetric] . cutoffExtrinsicCurvature]
   ];
brownYorkGeometricTensor = FullSimplify[
   cutoffExtrinsicCurvature
    - cutoffExtrinsicTrace * cutoffMetric + cutoffMetric
   ];
cutoffInverseMetric = FullSimplify[Inverse[cutoffMetric]];
cutoffLapse = FullSimplify[1/Sqrt[-cutoffInverseMetric[[1, 1]]]];
cutoffFutureNormal = FullSimplify[
   -cutoffLapse * cutoffInverseMetric[[All, 1]]
   ];
cutoffCharge[boundaryVector_] := FullSimplify[
   -2 Pi r * Sum[
     cutoffFutureNormal[[a]] * boundaryVector[[b]] *
      brownYorkGeometricTensor[[a, b]],
     {a, 2}, {b, 2}
     ]
   ];
globalBrownYorkEnergyCoefficient = FullSimplify@Limit[
    Coefficient[
     Normal@Series[
       cutoffCharge[{1, 0}],
       {backreactionParameter, 0, 1}
       ],
     backreactionParameter, 1
     ],
    r -> Infinity
    ];
globalBrownYorkAngularMomentumCoefficient = FullSimplify@Limit[
    Coefficient[
     Normal@Series[
       cutoffCharge[{0, 1}],
       {backreactionParameter, 0, 1}
       ],
     backreactionParameter, 1
     ],
    r -> Infinity
    ];
boundaryModularWeightIntegral = FullSimplify[
   Integrate[
    modularTimeComponent,
    {phi, -intervalHalfWidth, intervalHalfWidth},
    Assumptions ->
     r > 0 && 0 < intervalHalfWidth < Pi/2
    ]
   ];
outerModularGeometricCharge = FullSimplify[
   cutoffCharge[{1, 0}]/(2 Pi) *
    boundaryModularWeightIntegral
   ];
outerModularChargeCoefficient = FullSimplify@Limit[
    Coefficient[
     Normal@Series[
       outerModularGeometricCharge,
       {backreactionParameter, 0, 1}
       ],
     backreactionParameter, 1
     ],
    r -> Infinity,
    Assumptions -> 0 < intervalHalfWidth < Pi/2
    ];
expectedOuterModularCharge =
  6 Pi amplitudeSquared * (
    1 - intervalHalfWidth Cot[intervalHalfWidth]
    );

(* Direct RT-length response on t=0. *)

rtTangent = {0, D[rtRadius, phi], 1};
rtLineElement = FullSimplify[
   Sqrt[rtTangent . backgroundMetric . rtTangent] /.
    r -> rtRadius,
   Assumptions -> intervalAssumptions
   ];
rtLengthVariationDensity = FullSimplify[
   1/(2 rtLineElement) * Sum[
      (metricResponse[[mu, nu]] /. {t -> 0, r -> rtRadius}) *
       rtTangent[[mu]] * rtTangent[[nu]],
      {mu, 3}, {nu, 3}
      ],
   Assumptions -> intervalAssumptions
   ];
expectedRtLengthVariationDensity =
  amplitudeSquared Cos[intervalHalfWidth]^2 *
   Cot[intervalHalfWidth]/4 *
   (3 + Cos[2 intervalHalfWidth] + 2 Cos[2 phi]) *
   Sec[phi]^4 Tan[phi]^2;
rtLengthPrimitive =
  amplitudeSquared Cos[intervalHalfWidth]^2 *
   Cot[intervalHalfWidth]/4 * (
    (5 + Cos[2 intervalHalfWidth]) Tan[phi]^3/3
     + (1 + Cos[2 intervalHalfWidth]) Tan[phi]^5/5
    );
rtLengthPrimitiveResidual = FullSimplify[
   D[rtLengthPrimitive, phi]
    - expectedRtLengthVariationDensity,
   Assumptions -> intervalAssumptions
   ];
rtLengthVariation = FullSimplify[
   (rtLengthPrimitive /. phi -> intervalHalfWidth)
    - (rtLengthPrimitive /. phi -> -intervalHalfWidth),
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedRtLengthVariation =
  amplitudeSquared/15 *
   (14 + Cos[2 intervalHalfWidth]) *
   Sin[intervalHalfWidth]^2;
rtEntropyCoefficient = 2 Pi * rtLengthVariation;
outerMinusMatterResidual = FullSimplify[
   outerModularChargeCoefficient
    - matterModularEnergy - rtEntropyCoefficient,
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];

(* Local covariant Noether--Stokes identity. *)

modularKillingVector =
  2 Pi/Sin[intervalHalfWidth] * {
    r Cos[t] Cos[phi]/Sqrt[backgroundFactor]
      - Cos[intervalHalfWidth],
    Sqrt[backgroundFactor] Sin[t] Cos[phi],
    -Sqrt[backgroundFactor] Sin[t] Sin[phi]/r
    };
modularKillingCovector = FullSimplify[
   backgroundMetric . modularKillingVector,
   Assumptions -> $Assumptions
   ];
metricResponseUpper = FullSimplify[
   backgroundInverse . metricResponse . backgroundInverse,
   Assumptions -> $Assumptions
   ];
covariantDerivativeMetricResponseUpper = Table[
   FullSimplify[
    D[metricResponseUpper[[nu, rho]], coordinateList[[alpha]]]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]] *
         metricResponseUpper[[beta, rho]]
        + backgroundChristoffel[[rho, alpha, beta]] *
         metricResponseUpper[[nu, beta]],
       {beta, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {alpha, 3}, {nu, 3}, {rho, 3}
   ];
raisedDerivativeMetricResponseUpper = Table[
   FullSimplify[
    Sum[
     backgroundInverse[[mu, alpha]] *
      covariantDerivativeMetricResponseUpper[[alpha, nu, rho]],
     {alpha, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}, {rho, 3}
   ];
metricResponseDivergence = Table[
   FullSimplify[
    Sum[
     covariantDerivativeMetricResponseUpper[[rho, nu, rho]],
     {rho, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {nu, 3}
   ];
metricResponseTraceGradient = Table[
   FullSimplify[
    Sum[
     backgroundInverse[[nu, alpha]] *
      D[metricResponseTrace, coordinateList[[alpha]]],
     {alpha, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {nu, 3}
   ];
kSectorVector = FullSimplify[
   metricResponseDivergence - metricResponseTraceGradient,
   Assumptions -> $Assumptions
   ];
kSectorPotential = Table[
   FullSimplify[
    1/2 * (
      modularKillingVector[[mu]] * kSectorVector[[nu]]
       - modularKillingVector[[nu]] * kSectorVector[[mu]]
      ),
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
covariantDerivativeModularKilling = Table[
   FullSimplify[
    D[modularKillingVector[[nu]], coordinateList[[alpha]]]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]] *
        modularKillingVector[[beta]],
       {beta, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {alpha, 3}, {nu, 3}
   ];
raisedDerivativeModularKilling = Table[
   FullSimplify[
    Sum[
     backgroundInverse[[mu, alpha]] *
      covariantDerivativeModularKilling[[alpha, nu]],
     {alpha, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
fullNoetherPotential = Table[
   FullSimplify[
    1/2 * Sum[
      modularKillingCovector[[rho]] * (
        raisedDerivativeMetricResponseUpper[[mu, nu, rho]]
         - raisedDerivativeMetricResponseUpper[[nu, mu, rho]]
        ),
      {rho, 3}
      ]
     + metricResponseTrace/4 * (
       raisedDerivativeModularKilling[[mu, nu]]
        - raisedDerivativeModularKilling[[nu, mu]]
       )
     - 1/2 * Sum[
       metricResponseUpper[[rho, mu]] *
         covariantDerivativeModularKilling[[rho, nu]]
        - metricResponseUpper[[rho, nu]] *
         covariantDerivativeModularKilling[[rho, mu]],
       {rho, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
constraintPotential = FullSimplify[
   fullNoetherPotential - kSectorPotential,
   Assumptions -> $Assumptions
   ];
covariantDivergenceAntisymmetric[tensor_] := Table[
   FullSimplify[
    Sum[
     D[tensor[[mu, nu]], coordinateList[[nu]]]
      + Sum[
        backgroundChristoffel[[mu, nu, beta]] *
          tensor[[beta, nu]]
         + backgroundChristoffel[[nu, nu, beta]] *
          tensor[[mu, beta]],
        {beta, 3}
        ],
     {nu, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}
   ];
constraintPotentialDivergence =
  covariantDivergenceAntisymmetric[constraintPotential];
linearizedEinsteinUpper = FullSimplify[
   backgroundInverse . linearizedCosmologicalEinstein .
    backgroundInverse,
   Assumptions -> $Assumptions
   ];
contractedEinsteinCurrent = Table[
   FullSimplify[
    Sum[
     modularKillingCovector[[nu]] *
      linearizedEinsteinUpper[[mu, nu]],
     {nu, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}
   ];
localNoetherStokesResidual = FullSimplify[
   constraintPotentialDivergence - contractedEinsteinCurrent,
   Assumptions -> $Assumptions
   ];

futureCauchyNormalCovector = {-Sqrt[backgroundFactor], 0, 0};
innerOutwardNormalCovector = {
   0,
   -Cos[phi]/(
     Sqrt[backgroundFactor] * Sqrt[1 + r^2 Sin[phi]^2]
     ),
   r Sqrt[backgroundFactor] Sin[phi]/
    Sqrt[1 + r^2 Sin[phi]^2]
   };
outerConstraintAngularDensity = FullSimplify@Limit[
    -r * (constraintPotential[[1, 2]] /. t -> 0),
    r -> Infinity,
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
      -intervalHalfWidth < phi < intervalHalfWidth
    ];
expectedOuterConstraintAngularDensity =
  3 Pi amplitudeSquared/Sin[intervalHalfWidth] * (
    Cos[phi] - Cos[intervalHalfWidth]
    );
outerConstraintCharge = FullSimplify[
   Integrate[
    outerConstraintAngularDensity,
    {phi, -intervalHalfWidth, intervalHalfWidth},
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
    ]
   ];
rtSurfaceAssumptions =
  intervalAssumptions &&
   Cos[2 phi] > Cos[2 intervalHalfWidth];
innerOutwardPotentialDensity[potential_] := FullSimplify[
   rtLineElement * Sum[
      futureCauchyNormalCovector[[mu]] *
       innerOutwardNormalCovector[[nu]] * potential[[mu, nu]],
      {mu, 3}, {nu, 3}
      ] /. {t -> 0, r -> rtRadius},
   Assumptions -> rtSurfaceAssumptions
   ];
innerOutwardConstraintDensity =
  innerOutwardPotentialDensity[constraintPotential];
innerOutwardKSectorDensity =
  innerOutwardPotentialDensity[kSectorPotential];
innerAreaDensityResidual = FullSimplify[
   innerOutwardConstraintDensity
    + 2 Pi expectedRtLengthVariationDensity,
   Assumptions -> rtSurfaceAssumptions
   ];
integratedNoetherStokesResidual = FullSimplify[
   outerConstraintCharge - rtEntropyCoefficient
    - matterModularEnergy,
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];

checks = <|
   "massless Klein-Gordon equation" ->
    (kleinGordonResidual === 0),
   "complex stress tensor is symmetric" ->
    (scalarStress === Transpose[scalarStress]),
   "stress tensor includes the angular flux" ->
    FullSimplify[
      scalarStress - expectedScalarStress,
      Assumptions -> $Assumptions
      ] === ConstantArray[0, {3, 3}],
   "stress tensor is conserved" ->
    (stressConservationResidual === {0, 0, 0}),
   "KG norm" ->
    (kleinGordonNorm === Pi amplitudeSquared),
   "global scalar energy" ->
    (globalEnergy === 3 Pi amplitudeSquared),
   "global scalar angular momentum with project orientation" ->
    (globalAngularMomentum === -Pi amplitudeSquared),
   "unit KG norm gives energy three and angular charge minus one" ->
    FullSimplify[
      {globalEnergy, globalAngularMomentum} /.
       amplitudeSquared -> 1/Pi
      ] === {3, -1},
   "rotating polar-areal functions give the metric response" ->
    FullSimplify[
      metricResponseFromAnsatz - metricResponse,
      Assumptions -> $Assumptions
      ] === ConstantArray[0, {3, 3}],
   "metric response is regular at the centre" ->
    (centreRegularityData === {0, 0, 0}),
   "metric response obeys rotating Brown-Henneaux falloff" ->
    (brownHenneauxResponseData === {
      3 amplitudeSquared,
      3 amplitudeSquared,
      -amplitudeSquared/2,
      0
      }),
   "xCoba background Ricci tensor is AdS3" ->
    FullSimplify[
      backgroundRicci + 2 backgroundMetric
      ] === ConstantArray[0, {3, 3}],
   "xCoba background Ricci scalar is minus six" ->
    (backgroundRicciScalar === -6),
   "matter-sourced linearized Einstein equation" ->
    (sourcedEinsteinResidual === ConstantArray[0, {3, 3}]),
   "matter modular radial density" ->
    FullSimplify[
      matterModularRadialDensity
       - expectedMatterModularRadialDensity,
      Assumptions -> intervalAssumptions
      ] === 0,
   "matter modular radial primitive" ->
    (matterModularRadialPrimitiveResidual === 0),
   "matter modular angular density" ->
    FullSimplify[
      matterModularAngularDensity
       - expectedMatterModularAngularDensity,
      Assumptions -> intervalAssumptions
      ] === 0,
   "matter modular angular primitive" ->
    (matterModularAngularPrimitiveResidual === 0),
   "matter modular energy" ->
    FullSimplify[
      matterModularEnergy - expectedMatterModularEnergy,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "global Brown-York energy" ->
    (globalBrownYorkEnergyCoefficient === 3 Pi amplitudeSquared),
   "global Brown-York angular momentum" ->
    (globalBrownYorkAngularMomentumCoefficient ===
      -Pi amplitudeSquared),
   "outer modular Brown-York charge" ->
    FullSimplify[
      outerModularChargeCoefficient
       - expectedOuterModularCharge,
      Assumptions -> 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "direct RT length density" ->
    FullSimplify[
      rtLengthVariationDensity
       - expectedRtLengthVariationDensity,
      Assumptions -> intervalAssumptions
      ] === 0,
   "direct RT length primitive" ->
    (rtLengthPrimitiveResidual === 0),
   "direct RT length variation" ->
    FullSimplify[
      rtLengthVariation - expectedRtLengthVariation,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "outer equals matter plus RT" ->
    (outerMinusMatterResidual === 0),
   "local rotating Noether-Stokes identity" ->
    (localNoetherStokesResidual === {0, 0, 0}),
   "outer local potential equals Brown-York density" ->
    FullSimplify[
      outerConstraintAngularDensity
       - expectedOuterConstraintAngularDensity,
      Assumptions ->
       amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
        -intervalHalfWidth < phi < intervalHalfWidth
      ] === 0,
   "k-sector potential vanishes on the RT bifurcation cut" ->
    FullSimplify[
      innerOutwardKSectorDensity,
      Assumptions -> rtSurfaceAssumptions
      ] === 0,
   "oriented RT potential is minus the area density" ->
    (innerAreaDensityResidual === 0),
   "integrated Noether-Stokes identity" ->
    (integratedNoetherStokesResidual === 0)
   |>;

Print["Angular scalar smooth-wedge checks:"];
KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["Passed ", Count[Values[checks], True], "/", Length[checks],
  " checks."];
Print["a=Pi/4 unit-KG values: ",
 FullSimplify[
  {
   outerModularChargeCoefficient,
   matterModularEnergy,
   rtEntropyCoefficient,
   globalBrownYorkAngularMomentumCoefficient
   } /. {
    amplitudeSquared -> 1/Pi,
    intervalHalfWidth -> Pi/4
    }
  ]
 ];

If[! And @@ Values[checks], Exit[1]];
