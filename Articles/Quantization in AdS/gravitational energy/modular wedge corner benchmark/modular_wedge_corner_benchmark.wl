ClearAll["Global`*"];

$Assumptions = GNewton > 0 && r > 0 && -Pi/4 < phi < Pi/4;

coordinates = {t, r, phi};
adsFactor = Sqrt[1 + r^2];
metric = DiagonalMatrix[{-(1 + r^2), 1/(1 + r^2), r^2}];
inverseMetric = Simplify[Inverse[metric]];

christoffel = Table[
   1/2 Sum[
     inverseMetric[[mu, lambda]] (
       D[metric[[lambda, nu]], coordinates[[rho]]]
        + D[metric[[lambda, rho]], coordinates[[nu]]]
        - D[metric[[nu, rho]], coordinates[[lambda]]]
       ),
     {lambda, 3}
     ],
   {mu, 3}, {nu, 3}, {rho, 3}
   ];

lieMetric[vector_] := Table[
   Together@Sum[
     vector[[lambda]] D[metric[[mu, nu]], coordinates[[lambda]]]
      + metric[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]]
      + metric[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
     {lambda, 3}
     ],
   {mu, 3}, {nu, 3}
   ];

lieCovariantTwoTensor[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], coordinates[[lambda]]]
      + tensor[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]]
      + tensor[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
     {lambda, 3}
     ],
   {mu, 3}, {nu, 3}
   ];

(* Interval A: t=0, |phi| <= a, with a=Pi/4 in the explicit mode test. *)
modularKilling[a_] := (2 Pi/Sin[a]) {
    r Cos[t] Cos[phi]/adsFactor - Cos[a],
    adsFactor Sin[t] Cos[phi],
    -adsFactor Sin[t] Sin[phi]/r
    };

rtRadius[a_] := Cos[a]/Sqrt[Cos[phi]^2 - Cos[a]^2];

killingResidual[a_] := FullSimplify[
   Table[
    Sum[
     modularKilling[a][[lambda]] D[metric[[mu, nu]], coordinates[[lambda]]]
      + metric[[lambda, nu]] D[modularKilling[a][[lambda]], coordinates[[mu]]]
      + metric[[mu, lambda]] D[modularKilling[a][[lambda]], coordinates[[nu]]],
     {lambda, 3}
     ],
    {mu, 3}, {nu, 3}
    ],
   Assumptions -> 0 < a < Pi/2 && r > 0
   ];

rtKillingResidual[a_] := FullSimplify[
   modularKilling[a] /. {t -> 0, r -> rtRadius[a]},
   Assumptions -> 0 < a < Pi/2 && -a < phi < a && Cos[phi] > Cos[a]
   ];

rtVelocity[a_] := {0, D[rtRadius[a], phi], 1};
rtAcceleration[a_] := Table[
   FullSimplify[
    D[rtVelocity[a][[mu]], phi]
     + Sum[
       (christoffel[[mu, nu, rho]] /. {t -> 0, r -> rtRadius[a]})
        rtVelocity[a][[nu]] rtVelocity[a][[rho]],
       {nu, 3}, {rho, 3}
       ],
    Assumptions -> 0 < a < Pi/2 && -a < phi < a && Cos[phi] > Cos[a]
    ],
   {mu, 3}
   ];

(* The parameter phi need not be affine.  Geodesicity requires the
   acceleration to be parallel to the tangent. *)
rtGeodesicResidual[a_] := FullSimplify[
   {
    rtAcceleration[a][[1]],
    rtAcceleration[a][[2]] rtVelocity[a][[3]]
     - rtAcceleration[a][[3]] rtVelocity[a][[2]]
    },
   Assumptions -> 0 < a < Pi/2 && -a < phi < a && Cos[phi] > Cos[a]
   ];

modularCovector[a_] := Simplify[metric . modularKilling[a]];
modularDerivative[a_] := Table[
   FullSimplify[
    D[modularCovector[a][[nu]], coordinates[[mu]]]
     - Sum[
       christoffel[[lambda, mu, nu]] modularCovector[a][[lambda]],
       {lambda, 3}
       ],
    Assumptions -> 0 < a < Pi/2 && r > 0
    ],
   {mu, 3}, {nu, 3}
   ];

surfaceGravitySquared[a_] := FullSimplify[
   -1/2 Sum[
      inverseMetric[[mu, alpha]] inverseMetric[[nu, beta]]
       modularDerivative[a][[mu, nu]] modularDerivative[a][[alpha, beta]],
      {mu, 3}, {nu, 3}, {alpha, 3}, {beta, 3}
      ] /. {t -> 0, r -> rtRadius[a]},
   Assumptions -> 0 < a < Pi/2 && -a < phi < a && Cos[phi] > Cos[a]
   ];

(* Normalized complex left Brown-Henneaux primary and its large diffeomorphism. *)
modeAmplitude = Sqrt[3 GNewton]/3;
complexGaugeVector = {
   I modeAmplitude Exp[-2 I (t - phi)] r^4/(1 + r^2)^2,
   -modeAmplitude Exp[-2 I (t - phi)] r (3 + 2 r^2)/(1 + r^2),
   -I modeAmplitude Exp[-2 I (t - phi)] (3 + r^2)/(1 + r^2)
   };

barXiOne = 1/2 Exp[I (t + phi)] {
    r/adsFactor,
    -I adsFactor,
    adsFactor/r
    };

explicitModeUpper =
  8 Sqrt[3 GNewton] Exp[-4 I t]/(1 + r^2)^2 *
   Outer[Times, barXiOne, barXiOne];
explicitModeLower = FullSimplify[metric . explicitModeUpper . metric];
modeIdentityResidual = FullSimplify[
   lieMetric[complexGaugeVector] - explicitModeLower,
   Assumptions -> GNewton > 0 && r > 0
   ];

(* Unit real quadrature with phase i. Its boundary tangential components vanish
   at phi=+-Pi/4 on t=0. *)
realGaugeVector = Sqrt[2] modeAmplitude {
    -r^4 Cos[2 (t - phi)]/(1 + r^2)^2,
    -r (3 + 2 r^2) Sin[2 (t - phi)]/(1 + r^2),
    (3 + r^2) Cos[2 (t - phi)]/(1 + r^2)
    };

(* This equality is essential: a componentwise phase choice with the
   opposite radial sign is still a pure diffeomorphism, but it is not the
   declared Brown--Henneaux primary quadrature. *)
declaredRealQuadrature = FullSimplify[
   (I complexGaugeVector - I ComplexExpand[Conjugate[complexGaugeVector]])/
    Sqrt[2],
   Assumptions -> Element[{t, r, phi}, Reals] && GNewton > 0 && r > 0];
realQuadratureResidual = FullSimplify[
   realGaugeVector - declaredRealQuadrature,
   Assumptions -> Element[{t, r, phi}, Reals] && GNewton > 0 && r > 0];

anchorTangentialResidual = Block[
   {$Assumptions = GNewton > 0},
   FullSimplify@Table[
     Limit[
      realGaugeVector[[component]] /. {t -> 0, phi -> endpoint},
      r -> Infinity
      ],
     {component, {1, 3}}, {endpoint, {-Pi/4, Pi/4}}
     ]
   ];

realMode = lieMetric[realGaugeVector];
xiInterval = modularKilling[Pi/4];
modularVariation = lieCovariantTwoTensor[xiInterval, realMode];

(* A local extremal-gauge completion can be chosen with v=-realGaugeVector in
   a neighbourhood of gamma_A.  The formula below is the Einstein Iyer-Wald
   k_v[modularVariation] potential in the conventions of article/3_algebras.md. *)
completionVector = -realGaugeVector;
variationTrace = Together@Tr[inverseMetric . modularVariation];
variationUpper = Map[Together, inverseMetric . modularVariation . inverseMetric, {2}];
variationMixed = Map[Together, inverseMetric . modularVariation, {2}];

completionDerivative = Table[
   Together[
    D[completionVector[[nu]], coordinates[[rho]]]
     + Sum[
       christoffel[[nu, rho, lambda]] completionVector[[lambda]],
       {lambda, 3}
       ]
    ],
   {nu, 3}, {rho, 3}
   ];

completionDerivativeRaised = Table[
   Together@Sum[
     inverseMetric[[mu, rho]] completionDerivative[[nu, rho]],
     {rho, 3}
     ],
   {nu, 3}, {mu, 3}
   ];

variationDivergence = Table[
   Together@Sum[
     D[variationUpper[[nu, rho]], coordinates[[rho]]]
      + Sum[
        christoffel[[nu, rho, lambda]] variationUpper[[lambda, rho]]
         + christoffel[[rho, rho, lambda]] variationUpper[[nu, lambda]],
        {lambda, 3}
        ],
     {rho, 3}
     ],
   {nu, 3}
   ];

variationTraceGradient = Table[
   Together@Sum[
     inverseMetric[[mu, lambda]] D[variationTrace, coordinates[[lambda]]],
     {lambda, 3}
     ],
   {mu, 3}
   ];

covariantDerivativeCovariantTwo[tensor_, sigma_] := Table[
   D[tensor[[alpha, beta]], coordinates[[sigma]]]
    - Sum[
      christoffel[[lambda, sigma, alpha]] tensor[[lambda, beta]]
       + christoffel[[lambda, sigma, beta]] tensor[[alpha, lambda]],
      {lambda, 3}
      ],
   {alpha, 3}, {beta, 3}
   ];

modularVariationDerivative = Table[
   covariantDerivativeCovariantTwo[modularVariation, sigma],
   {sigma, 3}
   ];

(* Directly vary Q_v and subtract i_v theta, using (4.11), (4.22), and
   (4.24) of 2501.08308v2.  This form is valid for a non-Killing v. *)
connectionVariation = Table[
   1/2 Sum[
     inverseMetric[[nu, beta]] (
       modularVariationDerivative[[alpha, rho, beta]]
        + modularVariationDerivative[[rho, alpha, beta]]
        - modularVariationDerivative[[beta, alpha, rho]]
       ),
     {beta, 3}
     ],
   {nu, 3}, {alpha, 3}, {rho, 3}
   ];

connectionDerivativeVariation = Table[
   -Sum[
     variationUpper[[mu, alpha]] completionDerivative[[nu, alpha]],
     {alpha, 3}
     ]
    + Sum[
      inverseMetric[[mu, alpha]] connectionVariation[[nu, alpha, rho]]
       completionVector[[rho]],
      {alpha, 3}, {rho, 3}
      ],
   {mu, 3}, {nu, 3}
   ];

chargeFormCoefficient = Table[
   -connectionDerivativeVariation[[mu, nu]]
    - variationTrace/2 completionDerivativeRaised[[nu, mu]]
    + completionVector[[mu]] (
      variationDivergence[[nu]] - variationTraceGradient[[nu]]
      ),
   {mu, 3}, {nu, 3}
   ];

iyerWaldPotential = Table[
   Together[
     chargeFormCoefficient[[mu, nu]] - chargeFormCoefficient[[nu, mu]]
     ]/(16 Pi GNewton),
   {mu, 3}, {nu, 3}
   ];

potentialDivergence = Table[
   Together@Sum[
     D[iyerWaldPotential[[mu, nu]], coordinates[[nu]]]
      + Sum[
        christoffel[[mu, nu, lambda]] iyerWaldPotential[[lambda, nu]]
         + christoffel[[nu, nu, lambda]] iyerWaldPotential[[mu, lambda]],
        {lambda, 3}
        ],
     {nu, 3}
     ],
   {mu, 3}
   ];

symplecticP[mu_, nu_, rho_, sigma_, alpha_, beta_] :=
  (
   inverseMetric[[mu, alpha]] inverseMetric[[beta, nu]] inverseMetric[[rho, sigma]]
    - 1/2 inverseMetric[[mu, sigma]] inverseMetric[[nu, alpha]] inverseMetric[[beta, rho]]
    - 1/2 inverseMetric[[mu, nu]] inverseMetric[[rho, sigma]] inverseMetric[[alpha, beta]]
    - 1/2 inverseMetric[[nu, rho]] inverseMetric[[mu, alpha]] inverseMetric[[beta, sigma]]
    + 1/2 inverseMetric[[nu, rho]] inverseMetric[[mu, sigma]] inverseMetric[[alpha, beta]]
   );

completionMetricVariation = lieMetric[completionVector];
completionMetricDerivative = Table[
   covariantDerivativeCovariantTwo[completionMetricVariation, sigma],
   {sigma, 3}
   ];

symplecticCurrent = Table[
   Sum[
     symplecticP[mu, nu, rho, sigma, alpha, beta] (
       completionMetricVariation[[nu, rho]]
        modularVariationDerivative[[sigma, alpha, beta]]
        - modularVariation[[nu, rho]]
        completionMetricDerivative[[sigma, alpha, beta]]
       ),
     {nu, 3}, {rho, 3}, {sigma, 3}, {alpha, 3}, {beta, 3}
     ]/(16 Pi GNewton),
   {mu, 3}
   ];

(* The linearized-gravity notes use the opposite bulk-current convention from
   2501.08308v2.  Evaluate their displayed two-form directly to calibrate the
   sign before comparing canonical energies. *)
completionPhysicalTrace = Together@Tr[inverseMetric . completionMetricVariation];
completionPhysicalUpper = inverseMetric . completionMetricVariation . inverseMetric;
completionPhysicalMixed = inverseMetric . completionMetricVariation;
completionPhysicalDivergence = Table[
   Together@Sum[
     D[completionPhysicalUpper[[nu, rho]], coordinates[[rho]]]
      + Sum[
        christoffel[[nu, rho, lambda]] completionPhysicalUpper[[lambda, rho]]
         + christoffel[[rho, rho, lambda]] completionPhysicalUpper[[nu, lambda]],
        {lambda, 3}
        ],
     {rho, 3}
     ],
   {nu, 3}
   ];
completionPhysicalTraceGradient = Table[
   Together@Sum[
     inverseMetric[[mu, lambda]]
      D[completionPhysicalTrace, coordinates[[lambda]]],
     {lambda, 3}
     ],
   {mu, 3}
   ];
completionPhysicalMixedDerivative = Table[
   D[completionPhysicalMixed[[mu, nu]], coordinates[[rho]]]
    + Sum[
      christoffel[[mu, rho, lambda]] completionPhysicalMixed[[lambda, nu]]
       - christoffel[[lambda, rho, nu]] completionPhysicalMixed[[mu, lambda]],
      {lambda, 3}
      ],
   {rho, 3}, {mu, 3}, {nu, 3}
   ];
modularVariationMixedDerivative = Table[
   D[variationMixed[[mu, nu]], coordinates[[rho]]]
    + Sum[
      christoffel[[mu, rho, lambda]] variationMixed[[lambda, nu]]
       - christoffel[[lambda, rho, nu]] variationMixed[[mu, lambda]],
      {lambda, 3}
      ],
   {rho, 3}, {mu, 3}, {nu, 3}
   ];

projectBulkSymplecticCurrent = Table[
   -1/(16 Pi GNewton) (
     1/2 Sum[
       variationUpper[[mu, nu]]
         D[completionPhysicalTrace, coordinates[[nu]]]
        - completionPhysicalUpper[[mu, nu]]
         D[variationTrace, coordinates[[nu]]],
       {nu, 3}
       ]
      - 1/2 (
        variationTrace completionPhysicalTraceGradient[[mu]]
         - completionPhysicalTrace variationTraceGradient[[mu]]
        )
      + 1/2 Sum[
        variationUpper[[nu, rho]] Sum[
          inverseMetric[[mu, sigma]]
           completionMetricDerivative[[sigma, nu, rho]],
          {sigma, 3}
          ]
         - completionPhysicalUpper[[nu, rho]] Sum[
          inverseMetric[[mu, sigma]]
           modularVariationDerivative[[sigma, nu, rho]],
          {sigma, 3}
          ],
        {nu, 3}, {rho, 3}
        ]
      - Sum[
        variationUpper[[nu, rho]]
          completionPhysicalMixedDerivative[[rho, mu, nu]]
         - completionPhysicalUpper[[nu, rho]]
          modularVariationMixedDerivative[[rho, mu, nu]],
        {nu, 3}, {rho, 3}
        ]
      + 1/2 (
        variationTrace completionPhysicalDivergence[[mu]]
         - completionPhysicalTrace variationDivergence[[mu]]
        )
     ),
   {mu, 3}
   ];

identitySamplePoints = {
   {t -> 1/10, r -> 2, phi -> 1/5, GNewton -> 1},
   {t -> -1/7, r -> 3/2, phi -> -1/6, GNewton -> 2},
   {t -> 1/4, r -> 5/3, phi -> 1/8, GNewton -> 3/2}
   };
phaseSpaceIdentityResidual = Block[
   {$MaxExtraPrecision = 10000},
   Quiet@N[
    Table[
     (potentialDivergence - symplecticCurrent) /. point,
     {point, identitySamplePoints}
     ],
    30
    ]
   ];
conventionSignResidual = Block[
   {$MaxExtraPrecision = 10000},
   Quiet@N[
     Table[
      (projectBulkSymplecticCurrent + symplecticCurrent) /. point,
      {point, identitySamplePoints}
      ],
     30
     ]
   ];

rtDefiningFunction =
  r Cos[phi]/Sqrt[1 + r^2] - Cos[Pi/4];
spatialGradient = {
   0,
   (1 + r^2) D[rtDefiningFunction, r],
   D[rtDefiningFunction, phi]/r^2
   };
spatialGradientNorm = Sqrt@Together@Sum[
    metric[[mu, nu]] spatialGradient[[mu]] spatialGradient[[nu]],
    {mu, 3}, {nu, 3}
    ];

(* The wedge is rtDefiningFunction>=0, so its inner outward normal points to
   rtDefiningFunction<0. *)
innerNormalUpper = -spatialGradient/spatialGradientNorm;
innerNormalLower = metric . innerNormalUpper;
futureNormalLower = {-adsFactor, 0, 0};
explicitRtRadius = 1/Sqrt[2 Cos[phi]^2 - 1];
rtLineElement = Sqrt@Together[
    D[explicitRtRadius, phi]^2/(1 + explicitRtRadius^2)
     + explicitRtRadius^2
    ];

innerIntegrandPhi = FullSimplify[
   rtLineElement Sum[
      futureNormalLower[[mu]] innerNormalLower[[nu]]
       iyerWaldPotential[[mu, nu]],
      {mu, 3}, {nu, 3}
      ] /. {t -> 0, r -> explicitRtRadius},
   Assumptions -> GNewton > 0 && -Pi/4 < phi < Pi/4
   ];

innerIntegrandX = FullSimplify[
   TrigExpand[innerIntegrandPhi /. phi -> ArcTan[x]]/(1 + x^2),
   Assumptions -> 0 < x < 1
   ];

(* For the globally large choice v=-zeta_R, retain the asymptotic boundary
   term instead of applying the proper-gauge falloff assumed in (4.36).  With
   the outward radial normal, the t=0 density is -r k_v^{tr}. *)
outerIntegrandPhi = FullSimplify[
   -r iyerWaldPotential[[1, 2]] /. t -> 0,
   Assumptions -> GNewton > 0 && r > 0 && -Pi/4 < phi < Pi/4
   ];
outerLimitDensity = Block[
   {$Assumptions = GNewton > 0 && -Pi/4 < phi < Pi/4},
   FullSimplify@Limit[outerIntegrandPhi, r -> Infinity]
   ];
outerCharge = FullSimplify[
   Integrate[outerLimitDensity, {phi, -Pi/4, Pi/4}],
   Assumptions -> GNewton > 0
   ];

expectedInnerIntegrandX =
  (-5 + 13 x^2 - 11 x^4 + 3 x^6)/16;

innerPrimitive[x_] := (
    -5 x + 13 x^3/3 - 11 x^5/5 + 3 x^7/7
    )/16;

cutoffX[R_] := Sqrt[(R^2 - 1)/(R^2 + 1)];
regulatedInnerCharge[R_] := 2 innerPrimitive[cutoffX[R]];

(* Compare with the raw finite-order inner surface tensor of the current
   gravitational-energy project.  Convert from g=G+h_BH to
   g=G+kappa h_project+kappa^2 k_project. *)
kappaGravity = Sqrt[8 Pi GNewton];
projectGaugeVector = realGaugeVector/kappaGravity;
projectH = realMode/kappaGravity;
projectK = 1/2 lieCovariantTwoTensor[projectGaugeVector, projectH];

(* Independent component expansion of E_mn=R_mn-R g_mn/2-g_mn through
   epsilon^2 for G+epsilon h_project+epsilon^2 k_project.  To avoid a very
   large global expression, form the metric and its first two coordinate jets
   at each high-precision sample point, then assemble the curvature locally. *)
metricCoefficient = {metric, projectH, projectK};
truncateEpsilon[expression_] := Normal@Series[expression, {epsilon, 0, 2}];

numericEinsteinCoefficients[point_] := Module[
   {
    metricEpsilon, firstJet, secondJet, inverseEpsilon,
    inverseFirstJet, connectionEpsilon, connectionFirstJet,
    ricciEpsilon, scalarEpsilon, einsteinEpsilon
    },
   metricEpsilon = Sum[
     epsilon^order N[metricCoefficient[[order + 1]] /. point, 50],
     {order, 0, 2}
     ];
   firstJet = Table[
     Sum[
      epsilon^order N[
        D[metricCoefficient[[order + 1]], coordinates[[derivative]]] /. point,
        50
        ],
      {order, 0, 2}
      ],
     {derivative, 3}
     ];
   secondJet = Table[
     Sum[
      epsilon^order N[
        D[
          metricCoefficient[[order + 1]],
          coordinates[[firstDerivative]], coordinates[[secondDerivative]]
          ] /. point,
        50
        ],
      {order, 0, 2}
      ],
     {firstDerivative, 3}, {secondDerivative, 3}
     ];
   inverseEpsilon = Map[
     truncateEpsilon,
     Inverse[metricEpsilon],
     {2}
     ];
   inverseFirstJet = Table[
     truncateEpsilon@(-Sum[
        inverseEpsilon[[mu, alpha]] firstJet[[derivative, alpha, beta]]
         inverseEpsilon[[beta, nu]],
        {alpha, 3}, {beta, 3}
        ]),
     {derivative, 3}, {mu, 3}, {nu, 3}
     ];
   connectionEpsilon = Table[
     truncateEpsilon@(1/2 Sum[
        inverseEpsilon[[mu, lambda]] (
          firstJet[[rho, lambda, nu]] + firstJet[[nu, lambda, rho]]
           - firstJet[[lambda, nu, rho]]
          ),
        {lambda, 3}
        ]),
     {mu, 3}, {nu, 3}, {rho, 3}
     ];
   connectionFirstJet = Table[
     truncateEpsilon@(1/2 Sum[
        inverseFirstJet[[derivative, mu, lambda]] (
          firstJet[[rho, lambda, nu]] + firstJet[[nu, lambda, rho]]
           - firstJet[[lambda, nu, rho]]
          )
         + inverseEpsilon[[mu, lambda]] (
          secondJet[[derivative, rho, lambda, nu]]
           + secondJet[[derivative, nu, lambda, rho]]
           - secondJet[[derivative, lambda, nu, rho]]
          ),
        {lambda, 3}
        ]),
     {derivative, 3}, {mu, 3}, {nu, 3}, {rho, 3}
     ];
   ricciEpsilon = Table[
     truncateEpsilon@(
       Sum[
        connectionFirstJet[[rho, rho, mu, nu]]
         - connectionFirstJet[[nu, rho, mu, rho]],
        {rho, 3}
        ]
        + Sum[
         connectionEpsilon[[rho, rho, lambda]]
           connectionEpsilon[[lambda, mu, nu]]
          - connectionEpsilon[[rho, nu, lambda]]
           connectionEpsilon[[lambda, mu, rho]],
         {rho, 3}, {lambda, 3}
         ]
       ),
     {mu, 3}, {nu, 3}
     ];
   scalarEpsilon = truncateEpsilon@Sum[
      inverseEpsilon[[mu, nu]] ricciEpsilon[[mu, nu]],
      {mu, 3}, {nu, 3}
      ];
   einsteinEpsilon = Table[
     truncateEpsilon@(
       ricciEpsilon[[mu, nu]]
        - metricEpsilon[[mu, nu]] scalarEpsilon/2
        - metricEpsilon[[mu, nu]]
       ),
     {mu, 3}, {nu, 3}
     ];
   Table[
    Coefficient[einsteinEpsilon, epsilon, order],
    {order, 0, 2}
    ]
   ];

einsteinCoefficientResidual =
  numericEinsteinCoefficients /@ identitySamplePoints;

projectHUpper = inverseMetric . projectH . inverseMetric;
projectHMixed = inverseMetric . projectH;
projectHTrace = Together@Tr[inverseMetric . projectH];
projectH2 = Together@Sum[
    projectH[[mu, nu]] projectHUpper[[mu, nu]],
    {mu, 3}, {nu, 3}
    ];
projectS2 = Together[-projectH2/4 + projectHTrace^2/8];

xiDerivative = Table[
   D[xiInterval[[nu]], coordinates[[rho]]]
    + Sum[
      christoffel[[nu, rho, lambda]] xiInterval[[lambda]],
      {lambda, 3}
      ],
   {nu, 3}, {rho, 3}
   ];
xiDerivativeRaised = Table[
   Sum[
    inverseMetric[[mu, rho]] xiDerivative[[nu, rho]],
    {rho, 3}
    ],
   {nu, 3}, {mu, 3}
   ];
xiDerivativeAntisymmetric = Table[
   (xiDerivativeRaised[[nu, mu]] - xiDerivativeRaised[[mu, nu]])/2,
   {mu, 3}, {nu, 3}
   ];

projectA2OnRt = Table[
   Sum[
    projectHMixed[[mu, rho]] projectHUpper[[rho, sigma]]
      xiDerivative[[nu, sigma]]
     - projectHMixed[[nu, rho]] projectHUpper[[rho, sigma]]
      xiDerivative[[mu, sigma]],
    {rho, 3}, {sigma, 3}
    ],
   {mu, 3}, {nu, 3}
   ];
projectSH = Table[
   Together[
    projectS2 xiDerivativeAntisymmetric[[mu, nu]]
     + projectA2OnRt[[mu, nu]]/2
    ],
   {mu, 3}, {nu, 3}
   ];

projectKUpper = inverseMetric . projectK . inverseMetric;
projectKTrace = Together@Tr[inverseMetric . projectK];
projectSKOnRt = Table[
   Together[
    projectKTrace/2 xiDerivativeAntisymmetric[[mu, nu]]
     - 1/2 Sum[
       projectKUpper[[rho, mu]] xiDerivative[[nu, rho]]
        - projectKUpper[[rho, nu]] xiDerivative[[mu, rho]],
       {rho, 3}
       ]
    ],
   {mu, 3}, {nu, 3}
   ];

projectInnerIntegrandPhi = FullSimplify[
   rtLineElement Sum[
      futureNormalLower[[mu]] innerNormalLower[[nu]]
       (projectSH[[nu, mu]] + projectSKOnRt[[nu, mu]]),
      {mu, 3}, {nu, 3}
      ] /. {t -> 0, r -> explicitRtRadius},
   Assumptions -> GNewton > 0 && -Pi/4 < phi < Pi/4
   ];
projectInnerIntegrandX = Factor@FullSimplify[
    TrigExpand[projectInnerIntegrandPhi /. phi -> ArcTan[x]]/(1 + x^2),
    Assumptions -> 0 < x < 1
    ];
expectedProjectInnerIntegrandX =
  -(1 - x^2)^2 (1 + x^2)/8;

checks = <|
   "modular Killing equation" -> (killingResidual[a] === ConstantArray[0, {3, 3}]),
   "modular field vanishes on RT" -> (rtKillingResidual[a] === {0, 0, 0}),
   "RT curve is geodesic" -> (rtGeodesicResidual[a] === {0, 0}),
   "surface gravity is 2 Pi" -> (surfaceGravitySquared[a] === 4 Pi^2),
   "normalized mode equals Lie derivative" -> (modeIdentityResidual === ConstantArray[0, {3, 3}]),
   "real vector equals declared primary quadrature" ->
    (realQuadratureResidual === {0, 0, 0}),
   "real mode keeps interval anchors fixed" -> (anchorTangentialResidual === ConstantArray[0, {2, 2}]),
   "Iyer-Wald divergence equals symplectic current" ->
    (Max[Abs@Flatten[phaseSpaceIdentityResidual]] < 10^-20),
   "project and 2501 bulk-current conventions have opposite sign" ->
    (Max[Abs@Flatten[conventionSignResidual]] < 10^-20),
   "inner integrand rational form" -> FullSimplify[
      innerIntegrandX - expectedInnerIntegrandX,
      Assumptions -> 0 < x < 1
      ] === 0,
   "primitive differentiates to integrand" -> FullSimplify[
      D[innerPrimitive[x], x] - expectedInnerIntegrandX,
      Assumptions -> 0 < x < 1
      ] === 0,
   "global large completion has finite outer charge" ->
    FreeQ[outerCharge, DirectedInfinity | Indeterminate],
   "background, linear, and sourced second-order Einstein equations" ->
    (Max[Abs@Flatten[einsteinCoefficientResidual]] < 10^-20),
   "raw project inner tensor rational form" -> FullSimplify[
      projectInnerIntegrandX - expectedProjectInnerIntegrandX,
      Assumptions -> 0 < x < 1
      ] === 0,
   "raw project inner tensor vanishes at both anchors" ->
    (Limit[projectInnerIntegrandX, x -> 1, Direction -> "FromBelow"] === 0 &&
     Limit[projectInnerIntegrandX, x -> -1, Direction -> "FromAbove"] === 0)
   |>;

Print[checks];
Print["All checks passed: ", And @@ Values[checks]];
Print["Regulated inner charge: ", regulatedInnerCharge[R]];
Print[
 "Large-R leading form: -32/105 + 1/(3 R^6) + O[R^-8]"
 ];
Print["Global large-completion outer density: ", outerLimitDensity];
Print["Global large-completion outer charge: ", outerCharge];
Print["Raw project inner charge density: ", projectInnerIntegrandX];
If[!And @@ Values[checks], Exit[1]];
