(* ::Package:: *)

(* Exact smooth-wedge benchmark for the real quadrature of the lowest
   massless scalar normal mode in global AdS3.  The scalar action is

     S_m = -1/2 Integral sqrt(-g) (d varphi)^2,

   and varphi = epsilon (u plus its complex conjugate) with
   u = Sqrt[amplitudeSquared] Exp[-2 I t]/(1+r^2).  The metric response is
   the coefficient of lambda=kappa_p^2 epsilon^2. *)

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

positiveFrequencyMode =
  Sqrt[amplitudeSquared] Exp[-2 I t]/backgroundFactor;
realQuadrature = FullSimplify[
   positiveFrequencyMode + Conjugate[positiveFrequencyMode],
   Assumptions -> $Assumptions
   ];
expectedRealQuadrature =
  2 Sqrt[amplitudeSquared] Cos[2 t]/backgroundFactor;

scalarKinetic = FullSimplify@Sum[
    backgroundInverse[[mu, nu]]
     D[realQuadrature, coordinateList[[mu]]]
     D[realQuadrature, coordinateList[[nu]]],
    {mu, 3}, {nu, 3}
    ];
scalarStress = Table[
   FullSimplify[
    TrigExpand[
     D[realQuadrature, coordinateList[[mu]]]
       D[realQuadrature, coordinateList[[nu]]]
      - backgroundMetric[[mu, nu]] scalarKinetic/2
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
expectedScalarStress = {
   {
    4 amplitudeSquared (
      backgroundFactor + (r^2 - 1) Cos[4 t]
      )/backgroundFactor^2,
    8 amplitudeSquared r Sin[4 t]/backgroundFactor^3,
    0
    },
   {
    8 amplitudeSquared r Sin[4 t]/backgroundFactor^3,
    4 amplitudeSquared (
      backgroundFactor + (r^2 - 1) Cos[4 t]
      )/backgroundFactor^4,
    0
    },
   {
    0,
    0,
    -4 amplitudeSquared r^2 (
      r^2 - 1 + backgroundFactor Cos[4 t]
      )/backgroundFactor^3
    }
   };

kleinGordonResidual = FullSimplify[
   1/backgroundVolume Sum[
     D[
      backgroundVolume backgroundInverse[[mu, nu]]
       D[realQuadrature, coordinateList[[nu]]],
      coordinateList[[mu]]
      ],
     {mu, 3}, {nu, 3}
     ],
   Assumptions -> $Assumptions
   ];

(* Polar--areal gauge.  Regularity fixes f_2(t,0)=0; the boundary-time
   normalization fixes delta_2(t,infinity)=0. *)

radialResponse = (
   -4 amplitudeSquared r^2/backgroundFactor
    + 4 amplitudeSquared r^2 Cos[4 t]/backgroundFactor^2
   );
lapseResponse = (
   -2 amplitudeSquared/backgroundFactor^2
    + amplitudeSquared (
      -2/backgroundFactor^2 + 8/(3 backgroundFactor^3)
      ) Cos[4 t]
   );

metricResponse = DiagonalMatrix[{
    4 amplitudeSquared
     - 4 amplitudeSquared Cos[4 t]/(3 backgroundFactor^2),
    4 amplitudeSquared r^2/backgroundFactor^3
     - 4 amplitudeSquared r^2 Cos[4 t]/backgroundFactor^4,
    0
    }];
metricResponseFromAnsatz = DiagonalMatrix[{
    -radialResponse - 2 backgroundFactor lapseResponse,
    -radialResponse/backgroundFactor^2,
    0
    }];

centreRegularityData = FullSimplify[{
    Quiet@Limit[radialResponse, r -> 0],
    Quiet@Limit[metricResponse[[2, 2]], r -> 0],
    Quiet@Limit[metricResponse[[1, 1]], r -> 0]
    }, Assumptions -> $Assumptions];
brownHenneauxResponseData = FullSimplify[{
    Quiet@Limit[metricResponse[[1, 1]], r -> Infinity],
    Quiet@Limit[r^4 metricResponse[[2, 2]], r -> Infinity],
    Quiet@Limit[r^2 (
       metricResponse[[1, 1]] - 4 amplitudeSquared
       ), r -> Infinity],
    metricResponse[[3, 3]]
    }, Assumptions -> $Assumptions];

(* xCoba supplies the background connection and Ricci tensor.  The
   first-order connection and Ricci tensors are then constructed covariantly
   from k, avoiding any finite-lambda truncation ambiguity. *)

DefManifold[MrealQuadrature, 3, {aa, bb, cc, dd}];
DefChart[
  realQuadratureChart,
  MrealQuadrature,
  {0, 1, 2},
  {tt[], rr[], pp[]}
  ];
chartBackground = backgroundMetric /. {
    t -> tt[], r -> rr[], phi -> pp[]
    };
backgroundCTensor =
  CTensor[chartBackground, {-realQuadratureChart, -realQuadratureChart}];
SetCMetric[
  backgroundCTensor,
  realQuadratureChart,
  SignatureOfMetric -> {2, 1, 0}
  ];
MetricCompute[
  backgroundCTensor,
  realQuadratureChart,
  "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
MetricCompute[
  backgroundCTensor,
  realQuadratureChart,
  "Ricci"[-1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
backgroundDerivative = CovDOfMetric[backgroundCTensor];
coordinateDerivative = GiveSymbol[PD, realQuadratureChart];
chartRules = {tt[] -> t, rr[] -> r, pp[] -> phi};
backgroundChristoffel =
  ToValues[
    Christoffel[backgroundDerivative, coordinateDerivative]
    ] /. CTensor[array_, bases_, weight_] :> array /. chartRules;
backgroundRicci =
  ToValues[Ricci[backgroundDerivative]] /.
    CTensor[array_, bases_, weight_] :> array /. chartRules;
backgroundRicciScalar = FullSimplify@Sum[
    backgroundInverse[[mu, nu]] backgroundRicci[[mu, nu]],
    {mu, 3}, {nu, 3}
    ];

covariantDerivativeMetricResponse = Table[
   FullSimplify[
    D[metricResponse[[mu, nu]], coordinateList[[alpha]]]
     - Sum[
       backgroundChristoffel[[beta, alpha, mu]]
         metricResponse[[beta, nu]]
        + backgroundChristoffel[[beta, alpha, nu]]
         metricResponse[[mu, beta]],
       {beta, 3}
       ],
    Assumptions -> $Assumptions
    ],
   {alpha, 3}, {mu, 3}, {nu, 3}
   ];
linearizedChristoffel = Table[
   FullSimplify[
    1/2 Sum[
      backgroundInverse[[rho, sigma]] (
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
       backgroundChristoffel[[rho, alpha, beta]]
         linearizedChristoffel[[beta, mu, nu]]
        - backgroundChristoffel[[beta, alpha, mu]]
         linearizedChristoffel[[rho, beta, nu]]
        - backgroundChristoffel[[beta, alpha, nu]]
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
    backgroundInverse[[mu, nu]] linearizedRicci[[mu, nu]],
    {mu, 3}, {nu, 3}
    ] + 2 metricResponseTrace,
   Assumptions -> $Assumptions
   ];
linearizedCosmologicalEinstein = FullSimplify[
   linearizedRicci
    - backgroundMetric linearizedRicciScalar/2
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
        backgroundChristoffel[[mu, mu, beta]]
          stressUpper[[beta, nu]]
         + backgroundChristoffel[[nu, mu, beta]]
          stressUpper[[mu, beta]],
        {beta, 3}
        ],
     {mu, 3}
     ],
   {nu, 3}
   ];

(* Global matter charges. *)

spatialVolume = r/Sqrt[backgroundFactor];
futureNormalTime = 1/Sqrt[backgroundFactor];
globalEnergyDensity = FullSimplify[
   spatialVolume futureNormalTime scalarStress[[1, 1]],
   Assumptions -> $Assumptions
   ];
globalEnergy = FullSimplify[
   Integrate[
    globalEnergyDensity,
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0 && Element[t, Reals]
    ]
   ];
globalAngularMomentum = FullSimplify[
   Integrate[
    spatialVolume futureNormalTime scalarStress[[1, 3]],
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0 && Element[t, Reals]
    ]
   ];

(* Matter modular energy on the t=0 wedge. *)

rtRadius =
  Cos[intervalHalfWidth]/
   Sqrt[Cos[phi]^2 - Cos[intervalHalfWidth]^2];
modularTimeComponent =
  2 Pi/Sin[intervalHalfWidth] (
    r Cos[phi]/Sqrt[backgroundFactor]
     - Cos[intervalHalfWidth]
    );
matterModularRadialDensity = FullSimplify[
   spatialVolume futureNormalTime modularTimeComponent
     scalarStress[[1, 1]] /. t -> 0,
   Assumptions -> intervalAssumptions
   ];
manifestlyPositiveMatterModularDensity =
  16 Pi amplitudeSquared r^3/
    (backgroundFactor^3 Sin[intervalHalfWidth]) (
     r Cos[phi]/Sqrt[backgroundFactor]
      - Cos[intervalHalfWidth]
     );
matterModularDensityResidual = FullSimplify[
   matterModularRadialDensity
    - manifestlyPositiveMatterModularDensity,
   Assumptions -> intervalAssumptions
   ];
matterModularRadialPrimitive =
  4 Pi amplitudeSquared r^4/(5 Sin[intervalHalfWidth]) (
    -5 Cos[intervalHalfWidth]/backgroundFactor^2
     + 4 r Cos[phi]/backgroundFactor^(5/2)
    );
matterModularRadialPrimitiveResidual = FullSimplify[
   D[matterModularRadialPrimitive, r]
    - matterModularRadialDensity,
   Assumptions -> intervalAssumptions
   ];
matterModularAngularDensity = FullSimplify[
   Limit[matterModularRadialPrimitive, r -> Infinity]
    - (matterModularRadialPrimitive /. r -> rtRadius),
   Assumptions -> intervalAssumptions
   ];
expectedMatterModularAngularDensity =
  4 Pi amplitudeSquared/5 (
    4 Cos[phi] Csc[intervalHalfWidth]
     + Cot[intervalHalfWidth] (
       -5 + Cos[intervalHalfWidth]^4 Sec[phi]^4
       )
    );
matterModularAngularPrimitive =
  4 Pi amplitudeSquared/5 (
    4 Sin[phi] Csc[intervalHalfWidth]
     + Cot[intervalHalfWidth] (
       -5 phi + Cos[intervalHalfWidth]^4 (
         Tan[phi] + Tan[phi]^3/3
         )
       )
    );
matterModularAngularPrimitiveResidual = FullSimplify[
   D[matterModularAngularPrimitive, phi]
    - expectedMatterModularAngularDensity,
   Assumptions -> intervalAssumptions
   ];
matterModularEnergy = FullSimplify[
   (matterModularAngularPrimitive /.
      phi -> intervalHalfWidth)
    - (matterModularAngularPrimitive /.
      phi -> -intervalHalfWidth),
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
   ];
expectedMatterModularEnergy =
  8 Pi amplitudeSquared/15 (
    12 + Cos[intervalHalfWidth]^2
     + 2 Cos[intervalHalfWidth]^4
     - 15 intervalHalfWidth Cot[intervalHalfWidth]
    );

(* Renormalized Brown--York outer charge on t=0. *)

backreactedFactor =
  backgroundFactor + backreactionParameter radialResponse;
backreactedMetric = DiagonalMatrix[{
    -Exp[2 backreactionParameter lapseResponse]
      backreactedFactor,
    1/backreactedFactor,
    r^2
    }];
cutoffMetric = backreactedMetric[[{1, 3}, {1, 3}]];
cutoffExtrinsicCurvature = FullSimplify[
   Sqrt[backreactedFactor] D[cutoffMetric, r]/2
   ];
cutoffExtrinsicTrace = FullSimplify[
   Tr[Inverse[cutoffMetric] . cutoffExtrinsicCurvature]
   ];
brownYorkGeometricTensor = FullSimplify[
   cutoffExtrinsicCurvature
    - cutoffExtrinsicTrace cutoffMetric + cutoffMetric
   ];
cutoffFutureNormalTime =
  Exp[-backreactionParameter lapseResponse]/
   Sqrt[backreactedFactor];
globalBrownYorkGeometricCharge = FullSimplify[
   -2 Pi r cutoffFutureNormalTime
    brownYorkGeometricTensor[[1, 1]] /. t -> 0
   ];
globalBrownYorkEnergyCoefficient = FullSimplify@Limit[
    Coefficient[
     Normal@Series[
       globalBrownYorkGeometricCharge,
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
   -r cutoffFutureNormalTime brownYorkGeometricTensor[[1, 1]]
     boundaryModularWeightIntegral /. t -> 0
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
  8 Pi amplitudeSquared (
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
   1/(2 rtLineElement) Sum[
      (metricResponse[[mu, nu]] /. {t -> 0, r -> rtRadius})
       rtTangent[[mu]] rtTangent[[nu]],
      {mu, 3}, {nu, 3}
      ],
   Assumptions -> intervalAssumptions
   ];
expectedRtLengthVariationDensity =
  2 amplitudeSquared Cos[intervalHalfWidth]^4 *
   Cot[intervalHalfWidth] Sec[phi]^4 Tan[phi]^2;
rtLengthPrimitive =
  2 amplitudeSquared Cos[intervalHalfWidth]^4 *
   Cot[intervalHalfWidth] (
    Tan[phi]^3/3 + Tan[phi]^5/5
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
  4 amplitudeSquared Sin[intervalHalfWidth]^2/15 (
    3 + 2 Cos[intervalHalfWidth]^2
    );
rtEntropyCoefficient = 2 Pi rtLengthVariation;
outerMinusMatterResidual = FullSimplify[
   outerModularChargeCoefficient
    - matterModularEnergy - rtEntropyCoefficient,
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];

(* Local Noether--Stokes identity for the time-dependent response. *)

modularKillingVector =
  2 Pi/Sin[intervalHalfWidth] {
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
    D[metricResponseUpper[[nu, rho]],
      coordinateList[[alpha]]]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]]
         metricResponseUpper[[beta, rho]]
        + backgroundChristoffel[[rho, alpha, beta]]
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
     backgroundInverse[[mu, alpha]]
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
     backgroundInverse[[nu, alpha]]
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
    1/2 (
      modularKillingVector[[mu]] kSectorVector[[nu]]
       - modularKillingVector[[nu]] kSectorVector[[mu]]
      ),
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
covariantDerivativeModularKilling = Table[
   FullSimplify[
    D[modularKillingVector[[nu]], coordinateList[[alpha]]]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]]
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
     backgroundInverse[[mu, alpha]]
      covariantDerivativeModularKilling[[alpha, nu]],
     {alpha, 3}
     ],
    Assumptions -> $Assumptions
    ],
   {mu, 3}, {nu, 3}
   ];
fullNoetherPotential = Table[
   FullSimplify[
    1/2 Sum[
      modularKillingCovector[[rho]] (
        raisedDerivativeMetricResponseUpper[[mu, nu, rho]]
         - raisedDerivativeMetricResponseUpper[[nu, mu, rho]]
        ),
      {rho, 3}
      ]
     + metricResponseTrace/4 (
       raisedDerivativeModularKilling[[mu, nu]]
        - raisedDerivativeModularKilling[[nu, mu]]
       )
     - 1/2 Sum[
       metricResponseUpper[[rho, mu]]
         covariantDerivativeModularKilling[[rho, nu]]
        - metricResponseUpper[[rho, nu]]
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
        backgroundChristoffel[[mu, nu, beta]]
          tensor[[beta, nu]]
         + backgroundChristoffel[[nu, nu, beta]]
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
     modularKillingCovector[[nu]]
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
     Sqrt[backgroundFactor] Sqrt[1 + r^2 Sin[phi]^2]
     ),
   r Sqrt[backgroundFactor] Sin[phi]/
    Sqrt[1 + r^2 Sin[phi]^2]
   };
outerConstraintAngularDensity = FullSimplify@Limit[
    -r (constraintPotential[[1, 2]] /. t -> 0),
    r -> Infinity,
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
      -intervalHalfWidth < phi < intervalHalfWidth
    ];
expectedOuterConstraintAngularDensity =
  4 Pi amplitudeSquared/Sin[intervalHalfWidth] (
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
   rtLineElement Sum[
      futureCauchyNormalCovector[[mu]]
       innerOutwardNormalCovector[[nu]] potential[[mu, nu]],
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
   "real quadrature is u plus u-star" ->
    FullSimplify[
      realQuadrature - expectedRealQuadrature,
      Assumptions -> $Assumptions
      ] === 0,
   "massless Klein-Gordon equation" ->
    (kleinGordonResidual === 0),
   "real stress tensor is symmetric" ->
    (scalarStress === Transpose[scalarStress]),
   "real stress tensor has static and frequency-four pieces" ->
    FullSimplify[
      scalarStress - expectedScalarStress,
      Assumptions -> $Assumptions
      ] === ConstantArray[0, {3, 3}],
   "stress tensor is conserved" ->
    (stressConservationResidual === {0, 0, 0}),
   "global scalar energy is time independent" ->
    (globalEnergy === 4 Pi amplitudeSquared),
   "unit underlying positive-frequency mode gives energy two" ->
    (globalEnergy /. amplitudeSquared -> 1/(2 Pi)) === 2,
   "scalar angular momentum vanishes" ->
    (globalAngularMomentum === 0),
   "polar-areal functions give the declared metric response" ->
    FullSimplify[
      metricResponseFromAnsatz - metricResponse,
      Assumptions -> $Assumptions
      ] === ConstantArray[0, {3, 3}],
   "metric response is regular at the centre" ->
    FullSimplify[
      centreRegularityData - {
        0, 0,
        4 amplitudeSquared -
         4 amplitudeSquared Cos[4 t]/3
        },
      Assumptions -> $Assumptions
      ] === {0, 0, 0},
   "metric response obeys Brown-Henneaux falloff" ->
    (brownHenneauxResponseData === {
      4 amplitudeSquared, 4 amplitudeSquared, 0, 0
      }),
   "xCoba background Ricci tensor is AdS3" ->
    FullSimplify[
      backgroundRicci + 2 backgroundMetric
      ] === ConstantArray[0, {3, 3}],
   "xCoba background Ricci scalar is minus six" ->
    (backgroundRicciScalar === -6),
   "matter-sourced linearized Einstein equation" ->
    (sourcedEinsteinResidual === ConstantArray[0, {3, 3}]),
   "matter modular density has the manifest wedge-positive form" ->
    (matterModularDensityResidual === 0),
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
    (globalBrownYorkEnergyCoefficient === 4 Pi amplitudeSquared),
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
   "local time-dependent Noether-Stokes identity" ->
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

Print["Real scalar quadrature smooth-wedge checks:"];
KeyValueMap[Print[#1, ": ", #2] &, checks];
Print["Passed ", Count[Values[checks], True], "/", Length[checks],
  " checks."];
Print["a=Pi/4 normalized values: ",
 FullSimplify[
  {
   outerModularChargeCoefficient,
   matterModularEnergy,
   rtEntropyCoefficient
   } /. {
    amplitudeSquared -> 1/(2 Pi),
    intervalHalfWidth -> Pi/4
    }
  ]
 ];

If[! And @@ Values[checks], Exit[1]];
