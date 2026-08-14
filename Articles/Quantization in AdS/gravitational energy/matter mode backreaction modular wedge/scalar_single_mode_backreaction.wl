(* ::Package:: *)

(* Exact benchmark for a KG-normalized massless complex scalar mode in
   global AdS3 and its stationary axisymmetric O(kappa_p^2 epsilon^2)
   metric response. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll["Global`*"];

$Assumptions =
  amplitudeSquared > 0 && r > 0 &&
   0 < intervalHalfWidth < Pi/2 &&
   -intervalHalfWidth < phi < intervalHalfWidth;

intervalAssumptions =
  0 < intervalHalfWidth < Pi/2 &&
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

(* Matter convention:

   S_m = -Integral sqrt(-g) g^(mu nu) d_mu Phi* d_nu Phi,

   T_mn = d_m Phi* d_n Phi + d_n Phi* d_m Phi
          - g_mn d Phi* . d Phi. *)

scalarMode =
  Sqrt[amplitudeSquared] Exp[-2 I t]/backgroundFactor;
scalarModeStar =
  Sqrt[amplitudeSquared] Exp[2 I t]/backgroundFactor;

scalarKinetic = FullSimplify@Sum[
    backgroundInverse[[mu, nu]]
     D[scalarModeStar, coordinateList[[mu]]]
     D[scalarMode, coordinateList[[nu]]],
    {mu, 3}, {nu, 3}
    ];

scalarStress = Table[
   FullSimplify[
    D[scalarModeStar, coordinateList[[mu]]]
      D[scalarMode, coordinateList[[nu]]]
     + D[scalarModeStar, coordinateList[[nu]]]
      D[scalarMode, coordinateList[[mu]]]
     - backgroundMetric[[mu, nu]] scalarKinetic
    ],
   {mu, 3}, {nu, 3}
   ];
expectedScalarStress = DiagonalMatrix[{
    4 amplitudeSquared/backgroundFactor,
    4 amplitudeSquared/backgroundFactor^3,
    4 amplitudeSquared r^2 (1 - r^2)/backgroundFactor^3
    }];

backgroundVolume = FullSimplify[Sqrt[-Det[backgroundMetric]]];
kleinGordonResidual = FullSimplify[
   1/backgroundVolume Sum[
     D[
      backgroundVolume backgroundInverse[[mu, nu]]
       D[scalarMode, coordinateList[[nu]]],
      coordinateList[[mu]]
      ],
     {mu, 3}, {nu, 3}
     ]
   ];

(* The exact sourced metric is represented in areal radial gauge by

     ds^2 = -Exp[2 lambda delta_2(r)] F(r) dt^2
            + dr^2/F(r) + r^2 dphi^2,

   where lambda = kappa_p^2 epsilon^2. *)

radialResponse =
  -4 amplitudeSquared r^2/backgroundFactor;
lapseResponse =
  -2 amplitudeSquared/backgroundFactor^2;

backreactedFactor =
  backgroundFactor + backreactionParameter radialResponse;
backreactedLapse =
  backreactionParameter lapseResponse;
backreactedMetric = DiagonalMatrix[{
    -Exp[2 backreactedLapse] backreactedFactor,
    1/backreactedFactor,
    r^2
    }];

metricResponse = Map[
   FullSimplify@Coefficient[
      Normal@Series[#, {backreactionParameter, 0, 1}],
      backreactionParameter, 1
      ] &,
   backreactedMetric,
   {2}
   ];
expectedMetricResponse = DiagonalMatrix[{
    4 amplitudeSquared,
    4 amplitudeSquared r^2/backgroundFactor^3,
    0
    }];
centreRegularityResidual = FullSimplify[{
    Quiet@Limit[radialResponse, r -> 0],
    Quiet@Limit[metricResponse[[2, 2]], r -> 0]
    }];
brownHenneauxResponseData = FullSimplify[{
    Quiet@Limit[metricResponse[[1, 1]], r -> Infinity],
    Quiet@Limit[r^4 metricResponse[[2, 2]], r -> Infinity],
    metricResponse[[3, 3]]
    }];

(* xCoba supplies the curvature and background connection used in the
   Einstein and stress-conservation residuals. *)

DefManifold[MscalarBackreaction, 3, {aa, bb, cc, dd}];
DefChart[
  scalarBackreactionChart,
  MscalarBackreaction,
  {0, 1, 2},
  {tt[], rr[], pp[]}
  ];

chartMetric = backreactedMetric /. {
    t -> tt[], r -> rr[], phi -> pp[]
    };
metricCTensor =
  CTensor[chartMetric, {-scalarBackreactionChart, -scalarBackreactionChart}];
SetCMetric[
  metricCTensor,
  scalarBackreactionChart,
  SignatureOfMetric -> {2, 1, 0}
  ];
MetricCompute[
  metricCTensor,
  scalarBackreactionChart,
  "Ricci"[-1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];
MetricCompute[
  metricCTensor,
  scalarBackreactionChart,
  "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify,
  Verbose -> False
  ];

backreactedDerivative = CovDOfMetric[metricCTensor];
coordinateDerivative =
  GiveSymbol[PD, scalarBackreactionChart];
chartRules = {tt[] -> t, rr[] -> r, pp[] -> phi};

ricciArray =
  ToValues[Ricci[backreactedDerivative]] /.
    CTensor[array_, bases_, weight_] :> array /. chartRules;
christoffelArray =
  ToValues[
    Christoffel[backreactedDerivative, coordinateDerivative]
    ] /. CTensor[array_, bases_, weight_] :> array /. chartRules;

backreactedInverse = FullSimplify[Inverse[backreactedMetric]];
ricciScalar = FullSimplify@Sum[
    backreactedInverse[[mu, nu]] ricciArray[[mu, nu]],
    {mu, 3}, {nu, 3}
    ];
cosmologicalEinstein = FullSimplify[
   ricciArray - ricciScalar backreactedMetric/2 - backreactedMetric
   ];

backgroundEinsteinResidual = Map[
   FullSimplify[# /. backreactionParameter -> 0] &,
   cosmologicalEinstein,
   {2}
   ];
sourcedEinsteinCoefficient = Map[
   FullSimplify@Coefficient[
      Normal@Series[#, {backreactionParameter, 0, 1}],
      backreactionParameter, 1
      ] &,
   cosmologicalEinstein,
   {2}
   ];
sourcedEinsteinResidual = FullSimplify[
   sourcedEinsteinCoefficient - scalarStress
   ];

backgroundChristoffel = FullSimplify[
   christoffelArray /. backreactionParameter -> 0
   ];
stressUpper = FullSimplify[
   backgroundInverse . scalarStress . backgroundInverse
   ];
stressConservationResidual = Table[
   FullSimplify@Sum[
     D[stressUpper[[mu, nu]], coordinateList[[mu]]]
      + Sum[
        backgroundChristoffel[[mu, mu, lambda]]
          stressUpper[[lambda, nu]]
         + backgroundChristoffel[[nu, mu, lambda]]
          stressUpper[[mu, lambda]],
        {lambda, 3}
        ],
     {mu, 3}
     ],
   {nu, 3}
   ];

(* KG norm and global charges. *)

spatialVolume = r/Sqrt[backgroundFactor];
futureNormalTime = 1/Sqrt[backgroundFactor];
kleinGordonDensity = FullSimplify[
   I spatialVolume futureNormalTime (
     scalarModeStar D[scalarMode, t]
      - scalarMode D[scalarModeStar, t]
     )
   ];
kleinGordonNorm = FullSimplify[
   Integrate[
    kleinGordonDensity,
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0
    ]
   ];

globalEnergyDensity = FullSimplify[
   spatialVolume futureNormalTime scalarStress[[1, 1]]
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
    spatialVolume futureNormalTime scalarStress[[1, 3]],
    {r, 0, Infinity}, {phi, -Pi, Pi},
    Assumptions -> amplitudeSquared > 0
    ]
   ];

(* Matter modular energy in the t=0 interval wedge. *)

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
    scalarStress[[1, 1]]
   ];
manifestlyPositiveMatterModularDensity =
  8 Pi amplitudeSquared r/
    (backgroundFactor^2 Sin[intervalHalfWidth]) (
     r Cos[phi]/Sqrt[backgroundFactor]
      - Cos[intervalHalfWidth]
     );
matterModularDensityFactorizationResidual = FullSimplify[
   matterModularRadialDensity
    - manifestlyPositiveMatterModularDensity
   ];

radialVariable = r/Sqrt[backgroundFactor];
matterModularRadialPrimitive =
  8 Pi amplitudeSquared/Sin[intervalHalfWidth] (
    Cos[phi] radialVariable^3/3
     - Cos[intervalHalfWidth] radialVariable^2/2
    );
matterModularRadialPrimitiveResidual = FullSimplify[
   D[matterModularRadialPrimitive, r]
    - matterModularRadialDensity
   ];

matterModularAngularDensity = FullSimplify[
   Quiet@Limit[matterModularRadialPrimitive, r -> Infinity]
    - (matterModularRadialPrimitive /. r -> rtRadius),
   Assumptions -> intervalAssumptions
   ];
expectedMatterModularAngularDensity =
  8 Pi amplitudeSquared/Sin[intervalHalfWidth] (
    Cos[phi]/3 - Cos[intervalHalfWidth]/2
     + Cos[intervalHalfWidth]^3/(6 Cos[phi]^2)
    );

matterModularAngularPrimitive =
  8 Pi amplitudeSquared/Sin[intervalHalfWidth] (
    Sin[phi]/3 - Cos[intervalHalfWidth] phi/2
     + Cos[intervalHalfWidth]^3 Tan[phi]/6
    );
matterModularAngularPrimitiveResidual = FullSimplify[
   D[matterModularAngularPrimitive, phi]
    - expectedMatterModularAngularDensity
   ];
matterModularEnergy = FullSimplify[
   (matterModularAngularPrimitive /. phi -> intervalHalfWidth)
    - (matterModularAngularPrimitive /. phi -> -intervalHalfWidth),
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];
expectedMatterModularEnergy =
  8 Pi amplitudeSquared (
    (2 + Cos[intervalHalfWidth]^2)/3
     - intervalHalfWidth Cot[intervalHalfWidth]
    );

(* Renormalized Brown--York charge.  The geometric tensor B_ab below omits
   the overall 1/kappa_p^2.  Since backreactionParameter equals
   kappa_p^2 epsilon^2, its linear coefficient is directly the epsilon^2
   coefficient of the physical charge. *)

cutoffMetric = {
   {backreactedMetric[[1, 1]], 0},
   {0, backreactedMetric[[3, 3]]}
   };
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
  Exp[-backreactedLapse]/Sqrt[backreactedFactor];

globalBrownYorkGeometricCharge = FullSimplify[
   -2 Pi r cutoffFutureNormalTime brownYorkGeometricTensor[[1, 1]]
   ];
globalBrownYorkEnergyCoefficient = FullSimplify@Quiet@Limit[
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
    boundaryModularWeightIntegral
   ];
outerModularChargeCoefficient = FullSimplify@Quiet@Limit[
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

(* Direct first variation of the RT geodesic length. *)

rtTangent = {0, D[rtRadius, phi], 1};
rtLineElement = FullSimplify[
   Sqrt[rtTangent . backgroundMetric . rtTangent] /. r -> rtRadius,
   Assumptions -> intervalAssumptions
   ];
rtLengthVariationDensity = FullSimplify[
   1/(2 rtLineElement)
     Sum[
      (metricResponse[[mu, nu]] /. r -> rtRadius)
       rtTangent[[mu]] rtTangent[[nu]],
      {mu, 3}, {nu, 3}
     ],
   Assumptions -> intervalAssumptions
   ];
expectedRtLengthVariationDensity =
  2 amplitudeSquared Cos[intervalHalfWidth]^3/
    Sin[intervalHalfWidth] Sin[phi]^2/Cos[phi]^4;
rtLengthPrimitive =
  2 amplitudeSquared Cos[intervalHalfWidth]^3/
    (3 Sin[intervalHalfWidth]) Tan[phi]^3;
rtLengthPrimitiveResidual = FullSimplify[
   D[rtLengthPrimitive, phi]
    - expectedRtLengthVariationDensity
   ];
rtLengthVariation = FullSimplify[
   (rtLengthPrimitive /. phi -> intervalHalfWidth)
    - (rtLengthPrimitive /. phi -> -intervalHalfWidth),
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];
expectedRtLengthVariation =
  4 amplitudeSquared Sin[intervalHalfWidth]^2/3;

(* Since kappa_p^2/(4 G)=2 Pi, the epsilon^2 coefficient of
   Length/(4 G) is 2 Pi times the coefficient computed above. *)

rtEntropyCoefficient = 2 Pi rtLengthVariation;
outerMinusMatterResidual = FullSimplify[
   outerModularChargeCoefficient
    - matterModularEnergy - rtEntropyCoefficient,
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];

(* Local k-sector Noether--Stokes identity in the finite-action project
   convention.  Antisymmetrization has weight one half.  The two potentials
   are

     S_xi[k] = xi_rho nabla^[mu k^{nu]rho}
               + k/2 nabla^[mu xi^{nu]}
               - k^{rho[mu} nabla_rho xi^{nu]},

     S_{xi,k}^{[0]}[k]
             = xi^[mu (nabla_rho k^{nu]rho} - nabla^{nu]} k).

   Their difference C_xi[k] obeys

     nabla_nu C_xi^{mu nu}[k] = xi_nu E^(1,mu nu)[k]. *)

localNoetherAssumptions =
  amplitudeSquared > 0 && r > 0 &&
   0 < intervalHalfWidth < Pi/2 &&
   Element[{t, r, phi, intervalHalfWidth, amplitudeSquared}, Reals];

modularKillingVector =
  2 Pi/Sin[intervalHalfWidth] {
    r Cos[t] Cos[phi]/Sqrt[backgroundFactor]
      - Cos[intervalHalfWidth],
    Sqrt[backgroundFactor] Sin[t] Cos[phi],
    -Sqrt[backgroundFactor] Sin[t] Sin[phi]/r
    };
modularKillingCovector = FullSimplify[
   backgroundMetric . modularKillingVector,
   Assumptions -> localNoetherAssumptions
   ];

metricResponseUpper = FullSimplify[
   backgroundInverse . metricResponse . backgroundInverse
   ];
metricResponseTrace = FullSimplify[
   Tr[backgroundInverse . metricResponse]
   ];

covariantDerivativeMetricResponseUpper = Table[
   FullSimplify[
    D[
      metricResponseUpper[[nu, rho]],
      coordinateList[[alpha]]
      ]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]]
         metricResponseUpper[[beta, rho]]
        + backgroundChristoffel[[rho, alpha, beta]]
         metricResponseUpper[[nu, beta]],
       {beta, 3}
       ],
    Assumptions -> localNoetherAssumptions
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
    Assumptions -> localNoetherAssumptions
    ],
   {mu, 3}, {nu, 3}, {rho, 3}
   ];

metricResponseDivergence = Table[
   FullSimplify[
    Sum[
     covariantDerivativeMetricResponseUpper[[rho, nu, rho]],
     {rho, 3}
     ],
    Assumptions -> localNoetherAssumptions
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
    Assumptions -> localNoetherAssumptions
    ],
   {nu, 3}
   ];
kSectorVector = FullSimplify[
   metricResponseDivergence - metricResponseTraceGradient,
   Assumptions -> localNoetherAssumptions
   ];
kSectorPotential = Table[
   FullSimplify[
    1/2 (
      modularKillingVector[[mu]] kSectorVector[[nu]]
       - modularKillingVector[[nu]] kSectorVector[[mu]]
      ),
    Assumptions -> localNoetherAssumptions
    ],
   {mu, 3}, {nu, 3}
   ];

covariantDerivativeModularKilling = Table[
   FullSimplify[
    D[
      modularKillingVector[[nu]],
      coordinateList[[alpha]]
      ]
     + Sum[
       backgroundChristoffel[[nu, alpha, beta]]
        modularKillingVector[[beta]],
       {beta, 3}
       ],
    Assumptions -> localNoetherAssumptions
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
    Assumptions -> localNoetherAssumptions
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
    Assumptions -> localNoetherAssumptions
    ],
   {mu, 3}, {nu, 3}
   ];

constraintPotential = FullSimplify[
   fullNoetherPotential - kSectorPotential,
   Assumptions -> localNoetherAssumptions
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
    Assumptions -> localNoetherAssumptions
    ],
   {mu, 3}
   ];

constraintPotentialDivergence =
  covariantDivergenceAntisymmetric[constraintPotential];
sourcedEinsteinUpper = FullSimplify[
   backgroundInverse . sourcedEinsteinCoefficient . backgroundInverse
   ];
contractedEinsteinCurrent = Table[
   FullSimplify[
    Sum[
     modularKillingCovector[[nu]]
      sourcedEinsteinUpper[[mu, nu]],
     {nu, 3}
     ],
    Assumptions -> localNoetherAssumptions
    ],
   {mu, 3}
   ];
localNoetherStokesResidual = FullSimplify[
   constraintPotentialDivergence - contractedEinsteinCurrent,
   Assumptions -> localNoetherAssumptions
   ];

(* Surface representatives and orientations on the t=0 wedge.  The future
   Cauchy normal is tau_mu dx^mu=-Sqrt[1+r^2] dt.  At the outer cutoff the
   outward normal is +dr/Sqrt[1+r^2].  At the RT cut the normal below points
   out of the retained wedge, toward decreasing

     r Cos[phi]/Sqrt[1+r^2] - Cos[intervalHalfWidth]. *)

futureCauchyNormalCovector = {-Sqrt[backgroundFactor], 0, 0};
outerNormalCovector = {0, 1/Sqrt[backgroundFactor], 0};
innerOutwardNormalCovector = {
   0,
   -Cos[phi]/(
     Sqrt[backgroundFactor] Sqrt[1 + r^2 Sin[phi]^2]
     ),
   r Sqrt[backgroundFactor] Sin[phi]/
    Sqrt[1 + r^2 Sin[phi]^2]
   };
innerNormalizationResidual = FullSimplify[
   innerOutwardNormalCovector . backgroundInverse .
     innerOutwardNormalCovector - 1,
   Assumptions -> localNoetherAssumptions
   ];

outerConstraintAngularDensity = FullSimplify@Quiet@Limit[
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
outerConstraintAngularDensityResidual = FullSimplify[
   outerConstraintAngularDensity
    - expectedOuterConstraintAngularDensity,
   Assumptions ->
    amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2 &&
     -intervalHalfWidth < phi < intervalHalfWidth
   ];
outerConstraintCharge = FullSimplify[
   Integrate[
    outerConstraintAngularDensity,
    {phi, -intervalHalfWidth, intervalHalfWidth},
    Assumptions ->
     amplitudeSquared > 0 && 0 < intervalHalfWidth < Pi/2
    ]
   ];

(* The last inequality follows from
   Cos[2 phi]-Cos[2 a]=2 (Cos[phi]^2-Cos[a]^2)>0 in the open RT chart.  It is
   stated explicitly so that products of the two positive square roots are
   simplified without PowerExpand. *)
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
innerOutwardFullPotentialDensity =
  innerOutwardPotentialDensity[fullNoetherPotential];
innerOutwardKSectorDensity =
  innerOutwardPotentialDensity[kSectorPotential];
innerAreaDensityResidual = FullSimplify[
   innerOutwardConstraintDensity
    + 2 Pi expectedRtLengthVariationDensity,
   Assumptions -> rtSurfaceAssumptions
   ];
(* The preceding pointwise residual identifies the inner density with the
   already verified exact RT primitive, so no second raw Integrate call is
   needed here. *)
innerOutwardConstraintCharge = -rtEntropyCoefficient;
integratedNoetherStokesResidual = FullSimplify[
   outerConstraintCharge + innerOutwardConstraintCharge
    - matterModularEnergy,
   Assumptions -> 0 < intervalHalfWidth < Pi/2
   ];

checks = <|
   "massless Klein-Gordon equation" ->
    (kleinGordonResidual === 0),
   "stress tensor is symmetric" ->
    (scalarStress === Transpose[scalarStress]),
   "stress tensor has the declared components" ->
    FullSimplify[scalarStress - expectedScalarStress] ===
     ConstantArray[0, {3, 3}],
   "stress tensor is conserved" ->
    (stressConservationResidual === {0, 0, 0}),
   "KG norm is 2 Pi amplitudeSquared" ->
    (kleinGordonNorm === 2 Pi amplitudeSquared),
   "normalized mode has unit KG norm" ->
    (kleinGordonNorm /. amplitudeSquared -> 1/(2 Pi)) === 1,
   "global scalar energy is 4 Pi amplitudeSquared" ->
    (globalEnergy === 4 Pi amplitudeSquared),
   "normalized mode has energy 2" ->
    (globalEnergy /. amplitudeSquared -> 1/(2 Pi)) === 2,
   "scalar angular momentum vanishes" ->
    (globalAngularMomentum === 0),
   "metric response has the declared components" ->
    FullSimplify[metricResponse - expectedMetricResponse] ===
     ConstantArray[0, {3, 3}],
   "metric response is regular at the centre" ->
    (centreRegularityResidual === {0, 0}),
   "metric response obeys Brown-Henneaux falloff" ->
    (brownHenneauxResponseData === {
      4 amplitudeSquared, 4 amplitudeSquared, 0
      }),
   "background cosmological Einstein equation" ->
    (backgroundEinsteinResidual === ConstantArray[0, {3, 3}]),
   "matter-sourced linearized Einstein equation" ->
    (sourcedEinsteinResidual === ConstantArray[0, {3, 3}]),
   "matter modular radial primitive" ->
    (matterModularRadialPrimitiveResidual === 0),
   "matter modular density has the manifest wedge-positive factorization" ->
    (matterModularDensityFactorizationResidual === 0),
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
      Assumptions -> 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "Brown-York energy equals scalar energy" ->
    (globalBrownYorkEnergyCoefficient === globalEnergy),
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
   "RT length primitive" ->
    (rtLengthPrimitiveResidual === 0),
   "direct RT length variation" ->
    FullSimplify[
      rtLengthVariation - expectedRtLengthVariation,
      Assumptions -> 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "outer equals matter plus RT" ->
    (outerMinusMatterResidual === 0),
   "full Noether potential is antisymmetric" ->
    (FullSimplify[
       fullNoetherPotential + Transpose[fullNoetherPotential],
       Assumptions -> localNoetherAssumptions
       ] === ConstantArray[0, {3, 3}]),
   "k-sector potential is antisymmetric" ->
    (FullSimplify[
       kSectorPotential + Transpose[kSectorPotential],
       Assumptions -> localNoetherAssumptions
       ] === ConstantArray[0, {3, 3}]),
   "local k-sector Noether-Stokes identity" ->
    (localNoetherStokesResidual === {0, 0, 0}),
   "inner RT normal is unit spacelike" ->
    (innerNormalizationResidual === 0),
   "outer constraint-potential density equals Brown-York density" ->
    (outerConstraintAngularDensityResidual === 0),
   "outer constraint-potential charge equals Brown-York charge" ->
    FullSimplify[
      outerConstraintCharge - outerModularChargeCoefficient,
      Assumptions -> 0 < intervalHalfWidth < Pi/2
      ] === 0,
   "k-sector potential vanishes on the RT fixed cut" ->
    (innerOutwardKSectorDensity === 0),
   "RT constraint-potential density equals minus area density" ->
    (innerAreaDensityResidual === 0),
   "full and constraint potentials agree on the RT fixed cut" ->
    FullSimplify[
      innerOutwardFullPotentialDensity
       - innerOutwardConstraintDensity,
      Assumptions -> rtSurfaceAssumptions
      ] === 0,
   "integrated oriented Noether-Stokes identity" ->
    (integratedNoetherStokesResidual === 0)
   |>;

Print[checks];
Print["All checks passed: ", And @@ Values[checks]];
Print[Count[Values[checks], True], "/", Length[checks], " checks passed"];
Print["KG norm: ", kleinGordonNorm];
Print["Global energy: ", globalEnergy];
Print["Matter modular energy: ", matterModularEnergy];
Print["Outer modular charge: ", outerModularChargeCoefficient];
Print["RT length coefficient: ", rtLengthVariation];
Print["RT entropy coefficient: ", rtEntropyCoefficient];
Print["Inner outward constraint density: ", innerOutwardConstraintDensity];
Print["Inner area-density residual: ", innerAreaDensityResidual];
Print[
 "Inner full-minus-constraint density: ",
 FullSimplify[
  innerOutwardFullPotentialDensity - innerOutwardConstraintDensity,
  Assumptions -> rtSurfaceAssumptions
  ]
 ];
Print[
 "a=Pi/4 normalized values: ",
 FullSimplify[
  {
   outerModularChargeCoefficient,
   matterModularEnergy,
   rtEntropyCoefficient
   } /. {
    intervalHalfWidth -> Pi/4,
    amplitudeSquared -> 1/(2 Pi)
    }
  ]
 ];

If[!And @@ Values[checks], Exit[1]];
