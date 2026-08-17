(* ::Package:: *)

(* Renormalized outer Brown--York charge, exact Einstein--Hilbert Noether cut,
   and CPS k-sector surface tensor of the m=1 collar mode.  The cutoff equals
   one in the asymptotic region, so only the uncut Brown--Henneaux
   representative is needed.  All coefficients use
   g(alpha)=G+alpha h+alpha^2 k+O(alpha^3). *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  timeCoord, radialCoord, angleCoord, horizonRadius, perturbationParameter,
  linearScale, quadraticScale,
  coordinateList, backgroundMetric, boundaryWave, waveFirst, waveSecond,
  baseVector, modularKillingFull, lieDerivative, linearMetric,
  quadraticMetric, tangentIndices,
  gamma0, gamma1, gamma2, inverse0, inverse1, inverse2, extrinsic0,
  extrinsic1, extrinsic2, trace0, trace1, trace2, brownYork0, brownYork1,
  brownYork2, inversePolynomial, lapsePolynomial, tauPolynomial,
  cutDensityPolynomial, modularKillingTangent, brownYorkPolynomial,
  extrinsicPolynomial, chargeDensityPolynomial, ehChargeDensityPolynomial,
  linearChargeDensity, quadraticChargeDensity,
  kLinearChargeDensity, hQuadraticChargeDensity, linearCharge,
  quadraticCharge, kLinearCharge, hQuadraticCharge,
  ehQuadraticChargeDensity, ehKLinearChargeDensity,
  ehHQuadraticChargeDensity, ehQuadraticCharge, ehKLinearCharge,
  ehHQuadraticCharge, backgroundInverse, backgroundChristoffel,
  kUp, kTrace, kDivergence, kGradientTrace, kVectorA,
  kSectorSurfaceTensor, backgroundFutureNormal,
  backgroundFutureCovariant, backgroundOuterNormalCovariant,
  kSectorSurfaceDensity, kSectorSurfaceCharge, pureHBulkCharge,
  testReport
  ];

coordinateList = {timeCoord, radialCoord, angleCoord};
backgroundMetric = {
   {-horizonRadius^2 Sinh[radialCoord]^2, 0, 0},
   {0, 1, 0},
   {0, 0, horizonRadius^2 Cosh[radialCoord]^2}
   };

boundaryWave = Cos[timeCoord + angleCoord];
waveFirst = D[boundaryWave, timeCoord];
waveSecond = D[boundaryWave, {timeCoord, 2}];

baseVector = {
   boundaryWave/2 +
    waveSecond (Coth[radialCoord] - 1)/(2 horizonRadius^2),
   -waveFirst/2,
   boundaryWave/2 -
    waveSecond (1 - Tanh[radialCoord])/(2 horizonRadius^2)
   };
modularKillingFull = {2 Pi/horizonRadius, 0, 0};

lieDerivative[vector_, tensor_] := Table[
   FullSimplify[
    Sum[
      vector[[alpha]] D[tensor[[mu, nu]], coordinateList[[alpha]]],
      {alpha, 3}
      ] +
     Sum[
      tensor[[alpha, nu]] D[vector[[alpha]], coordinateList[[mu]]],
      {alpha, 3}
      ] +
     Sum[
      tensor[[mu, alpha]] D[vector[[alpha]], coordinateList[[nu]]],
      {alpha, 3}
      ]
    ],
   {mu, 3}, {nu, 3}
   ];

linearMetric = lieDerivative[baseVector, backgroundMetric];
quadraticMetric = FullSimplify[1/2 lieDerivative[baseVector, linearMetric]];

backgroundInverse = FullSimplify[Inverse[backgroundMetric]];
backgroundChristoffel = Table[
   FullSimplify[
    1/2 Sum[
      backgroundInverse[[lambda, sigma]]
       (D[backgroundMetric[[sigma, nu]], coordinateList[[mu]]] +
        D[backgroundMetric[[sigma, mu]], coordinateList[[nu]]] -
        D[backgroundMetric[[mu, nu]], coordinateList[[sigma]]]),
      {sigma, 3}
      ]
    ],
   {lambda, 3}, {mu, 3}, {nu, 3}
   ];

(* The k-sector surface tensor appearing before the second-order equation is
   used is S_{xi,k}^{mu nu}=xi^[mu](div k^{nu]}-grad^{nu]} tr k). *)
kUp = FullSimplify[
   backgroundInverse . quadraticMetric . backgroundInverse
   ];
kTrace = FullSimplify[Tr[backgroundInverse . quadraticMetric]];
kDivergence = Table[
   FullSimplify[
    Sum[
     D[kUp[[nu, rho]], coordinateList[[rho]]] +
      Sum[
       backgroundChristoffel[[nu, rho, lambda]] kUp[[lambda, rho]] +
        backgroundChristoffel[[rho, rho, lambda]] kUp[[nu, lambda]],
       {lambda, 3}
       ],
     {rho, 3}
     ]
    ],
   {nu, 3}
   ];
kGradientTrace = Table[
   FullSimplify[
    Sum[
     backgroundInverse[[nu, alpha]]
      D[kTrace, coordinateList[[alpha]]],
     {alpha, 3}
     ]
    ],
   {nu, 3}
   ];
kVectorA = FullSimplify[kDivergence - kGradientTrace];
kSectorSurfaceTensor = Table[
   FullSimplify[
    1/2
     (modularKillingFull[[mu]] kVectorA[[nu]] -
       modularKillingFull[[nu]] kVectorA[[mu]])
    ],
   {mu, 3}, {nu, 3}
   ];
backgroundFutureNormal = {1/(horizonRadius Sinh[radialCoord]), 0, 0};
backgroundFutureCovariant =
  FullSimplify[backgroundMetric . backgroundFutureNormal];
backgroundOuterNormalCovariant = {0, 1, 0};
kSectorSurfaceDensity = FullSimplify[
   horizonRadius Cosh[radialCoord]
    Sum[
     backgroundFutureCovariant[[mu]]
      backgroundOuterNormalCovariant[[nu]]
      kSectorSurfaceTensor[[mu, nu]],
     {mu, 3}, {nu, 3}
     ],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
kSectorSurfaceCharge = FullSimplify[
   Integrate[
    Limit[kSectorSurfaceDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];

(* The radial shift in quadraticMetric decays too fast to contribute to the
   renormalized limit.  This is checked explicitly below.  The tangential
   radial-gauge coefficients determine the finite Brown--York charge. *)
tangentIndices = {1, 3};
gamma0 = backgroundMetric[[tangentIndices, tangentIndices]];
gamma1 = linearScale linearMetric[[tangentIndices, tangentIndices]];
gamma2 = quadraticScale quadraticMetric[[tangentIndices, tangentIndices]];

inverse0 = FullSimplify[Inverse[gamma0]];
inverse1 = FullSimplify[-inverse0 . gamma1 . inverse0];
inverse2 = FullSimplify[
   inverse0 . gamma1 . inverse0 . gamma1 . inverse0 -
    inverse0 . gamma2 . inverse0
   ];

extrinsic0 = FullSimplify[1/2 D[gamma0, radialCoord]];
extrinsic1 = FullSimplify[1/2 D[gamma1, radialCoord]];
extrinsic2 = FullSimplify[1/2 D[gamma2, radialCoord]];

trace0 = FullSimplify[Tr[inverse0 . extrinsic0]];
trace1 = FullSimplify[
   Tr[inverse0 . extrinsic1 + inverse1 . extrinsic0]
   ];
trace2 = FullSimplify[
   Tr[inverse0 . extrinsic2 + inverse1 . extrinsic1 +
     inverse2 . extrinsic0]
   ];

brownYork0 = FullSimplify[extrinsic0 - trace0 gamma0 + gamma0];
brownYork1 = FullSimplify[
   extrinsic1 - trace1 gamma0 - trace0 gamma1 + gamma1
   ];
brownYork2 = FullSimplify[
   extrinsic2 - trace2 gamma0 - trace1 gamma1 - trace0 gamma2 + gamma2
   ];

inversePolynomial =
  inverse0 + perturbationParameter inverse1 +
   perturbationParameter^2 inverse2;
lapsePolynomial = Normal@Series[
    1/Sqrt[-inversePolynomial[[1, 1]]],
    {perturbationParameter, 0, 2}
    ];
tauPolynomial = Normal@Series[
    -lapsePolynomial inversePolynomial[[All, 1]],
    {perturbationParameter, 0, 2}
    ];
cutDensityPolynomial = Normal@Series[
    Sqrt[
     gamma0[[2, 2]] + perturbationParameter gamma1[[2, 2]] +
      perturbationParameter^2 gamma2[[2, 2]]
     ],
    {perturbationParameter, 0, 2}
    ];

modularKillingTangent = {2 Pi/horizonRadius, 0};
brownYorkPolynomial =
  brownYork0 + perturbationParameter brownYork1 +
   perturbationParameter^2 brownYork2;
extrinsicPolynomial =
  extrinsic0 + perturbationParameter extrinsic1 +
   perturbationParameter^2 extrinsic2;
chargeDensityPolynomial = FullSimplify[
   Normal@Series[
     -cutDensityPolynomial
      Sum[
       tauPolynomial[[a]] modularKillingTangent[[b]]
        brownYorkPolynomial[[a, b]],
       {a, 2}, {b, 2}
       ],
     {perturbationParameter, 0, 2}
     ],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
ehChargeDensityPolynomial = FullSimplify[
   Normal@Series[
     -cutDensityPolynomial
      Sum[
       tauPolynomial[[a]] modularKillingTangent[[b]]
        extrinsicPolynomial[[a, b]],
       {a, 2}, {b, 2}
       ],
     {perturbationParameter, 0, 2}
     ],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];

linearChargeDensity = FullSimplify[
   Coefficient[chargeDensityPolynomial, perturbationParameter, 1]/linearScale,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
quadraticChargeDensity = FullSimplify[
   Coefficient[chargeDensityPolynomial, perturbationParameter, 2] /.
    {linearScale -> 1, quadraticScale -> 1},
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
kLinearChargeDensity = FullSimplify[
   Coefficient[
     Coefficient[chargeDensityPolynomial, perturbationParameter, 2],
     quadraticScale, 1
     ] /. linearScale -> 0,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
hQuadraticChargeDensity = FullSimplify[
   Coefficient[
     Coefficient[chargeDensityPolynomial, perturbationParameter, 2],
     linearScale, 2
     ] /. quadraticScale -> 0,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
ehQuadraticChargeDensity = FullSimplify[
   Coefficient[ehChargeDensityPolynomial, perturbationParameter, 2] /.
    {linearScale -> 1, quadraticScale -> 1},
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
ehKLinearChargeDensity = FullSimplify[
   Coefficient[
     Coefficient[ehChargeDensityPolynomial, perturbationParameter, 2],
     quadraticScale, 1
     ] /. linearScale -> 0,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
ehHQuadraticChargeDensity = FullSimplify[
   Coefficient[
     Coefficient[ehChargeDensityPolynomial, perturbationParameter, 2],
     linearScale, 2
     ] /. quadraticScale -> 0,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];

linearCharge = FullSimplify[
   Integrate[
    Limit[linearChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
quadraticCharge = FullSimplify[
   Integrate[
    Limit[quadraticChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
kLinearCharge = FullSimplify[
   Integrate[
    Limit[kLinearChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
hQuadraticCharge = FullSimplify[
   Integrate[
    Limit[hQuadraticChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
ehQuadraticCharge = FullSimplify[
   Integrate[
    Limit[ehQuadraticChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
ehKLinearCharge = FullSimplify[
   Integrate[
    Limit[ehKLinearChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
ehHQuadraticCharge = FullSimplify[
   Integrate[
    Limit[ehHQuadraticChargeDensity, radialCoord -> Infinity],
    {angleCoord, 0, 2 Pi},
    Assumptions -> horizonRadius > 0
    ]
   ];
pureHBulkCharge = FullSimplify[
   ehKLinearCharge - kSectorSurfaceCharge + ehHQuadraticCharge
   ];

results = <|
   "QuadraticRadialShiftScaledLimit" ->
    FullSimplify[
     Limit[
      Exp[4 radialCoord]
       {quadraticMetric[[1, 2]], quadraticMetric[[2, 3]]},
      radialCoord -> Infinity
      ]
     ],
   "LinearChargeDensityLimit" ->
    FullSimplify[Limit[linearChargeDensity, radialCoord -> Infinity]],
   "QuadraticChargeDensityLimit" ->
    FullSimplify[Limit[quadraticChargeDensity, radialCoord -> Infinity]],
   "KLinearChargeDensityLimit" ->
    FullSimplify[Limit[kLinearChargeDensity, radialCoord -> Infinity]],
   "HQuadraticChargeDensityLimit" ->
    FullSimplify[Limit[hQuadraticChargeDensity, radialCoord -> Infinity]],
   "IntegratedLinearChargeWithoutKappa" -> linearCharge,
   "IntegratedQuadraticChargeWithoutKappa" -> quadraticCharge,
   "IntegratedKLinearChargeWithoutKappa" -> kLinearCharge,
   "IntegratedHQuadraticChargeWithoutKappa" -> hQuadraticCharge,
   "EHQuadraticChargeDensityLimit" ->
    FullSimplify[Limit[ehQuadraticChargeDensity, radialCoord -> Infinity]],
   "EHKLinearChargeDensityLimit" ->
    FullSimplify[Limit[ehKLinearChargeDensity, radialCoord -> Infinity]],
   "EHHQuadraticChargeDensityLimit" ->
    FullSimplify[Limit[ehHQuadraticChargeDensity, radialCoord -> Infinity]],
   "IntegratedEHQuadraticChargeWithoutKappa" -> ehQuadraticCharge,
   "IntegratedEHKLinearChargeWithoutKappa" -> ehKLinearCharge,
   "IntegratedEHHQuadraticChargeWithoutKappa" -> ehHQuadraticCharge,
   "IntegratedBoundaryDescentQuadratic" ->
    FullSimplify[quadraticCharge - ehQuadraticCharge],
   "BoundaryDescentQuadraticDensityLimit" ->
    FullSimplify[
     Limit[
      quadraticChargeDensity - ehQuadraticChargeDensity,
      radialCoord -> Infinity
      ]
     ],
   "IntegratedBoundaryDescentKLinear" ->
    FullSimplify[kLinearCharge - ehKLinearCharge],
   "IntegratedBoundaryDescentHQuadratic" ->
    FullSimplify[hQuadraticCharge - ehHQuadraticCharge],
   "KSectorSurfaceDensityLimit" ->
    FullSimplify[Limit[kSectorSurfaceDensity, radialCoord -> Infinity]],
   "IntegratedKSectorSurfaceCharge" -> kSectorSurfaceCharge,
   "PureHBulkCurrentCharge" -> pureHBulkCharge
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[
    FullSimplify[
     results["QuadraticRadialShiftScaledLimit"] -
      ConstantArray[
       -3 (horizonRadius^2 + 1)
         Sin[2 (angleCoord + timeCoord)]/(4 horizonRadius^2),
       2
       ]
     ],
    {0, 0}
    ],
   VerificationTest[
    FullSimplify[
     results["LinearChargeDensityLimit"] +
      Pi (horizonRadius^2 + 1)
       Sin[angleCoord + timeCoord]/horizonRadius
     ],
    0
    ],
   VerificationTest[
    FullSimplify[
     results["QuadraticChargeDensityLimit"] -
      Pi (horizonRadius^2 + 1)
       (1 - 3 Cos[2 (angleCoord + timeCoord)])/(4 horizonRadius)
     ],
    0
    ],
   VerificationTest[results["IntegratedLinearChargeWithoutKappa"], 0],
   VerificationTest[
    FullSimplify[
     results["IntegratedQuadraticChargeWithoutKappa"] -
      Pi^2 (horizonRadius^2 + 1)/(2 horizonRadius)
     ],
    0
    ],
   VerificationTest[
    FullSimplify[
     results["IntegratedKLinearChargeWithoutKappa"] -
      results["IntegratedQuadraticChargeWithoutKappa"]
     ],
    0
    ],
   VerificationTest[
    results["IntegratedHQuadraticChargeWithoutKappa"],
    0
    ],
   VerificationTest[
    FullSimplify[
     results["IntegratedEHQuadraticChargeWithoutKappa"] -
      results["IntegratedQuadraticChargeWithoutKappa"]
     ],
    0
    ],
   VerificationTest[
    FullSimplify[
     results["IntegratedEHKLinearChargeWithoutKappa"] -
      results["IntegratedQuadraticChargeWithoutKappa"]
     ],
    0
    ],
   VerificationTest[
    results["IntegratedEHHQuadraticChargeWithoutKappa"],
    0
    ],
   VerificationTest[
    results["IntegratedBoundaryDescentQuadratic"],
    0
    ],
   VerificationTest[
    results["BoundaryDescentQuadraticDensityLimit"],
    0
    ],
   VerificationTest[
    results["IntegratedKSectorSurfaceCharge"],
    0
    ],
   VerificationTest[
    FullSimplify[
     results["PureHBulkCurrentCharge"] -
      results["IntegratedQuadraticChargeWithoutKappa"]
     ],
    0
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
