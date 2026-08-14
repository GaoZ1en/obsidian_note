Get[FileNameJoin[{DirectoryName[$InputFileName],
    "modular_wedge_corner_benchmark.wl"}]];

ClearAll[generalIyerWaldPotential, lieBracket, regulatorLength];

generalIyerWaldPotential[vector_, variation_] := Module[
  {
   localTrace, localUpper, localDerivative, localDivergence,
   localTraceGradient, vectorDerivative, vectorDerivativeRaised,
   localConnectionVariation, localConnectionDerivativeVariation,
   localChargeCoefficient
   },
  localTrace = Together@Tr[inverseMetric . variation];
  localUpper = Map[Together, inverseMetric . variation . inverseMetric, {2}];
  localDerivative = Table[
    covariantDerivativeCovariantTwo[variation, derivative],
    {derivative, 3}
    ];
  localDivergence = Table[
    Together@Sum[
      D[localUpper[[nu, rho]], coordinates[[rho]]]
       + Sum[
         christoffel[[nu, rho, lambda]] localUpper[[lambda, rho]]
          + christoffel[[rho, rho, lambda]] localUpper[[nu, lambda]],
         {lambda, 3}
         ],
      {rho, 3}
      ],
    {nu, 3}
    ];
  localTraceGradient = Table[
    Together@Sum[
      inverseMetric[[mu, lambda]] D[localTrace, coordinates[[lambda]]],
      {lambda, 3}
      ],
    {mu, 3}
    ];
  vectorDerivative = Table[
    Together[
     D[vector[[nu]], coordinates[[rho]]]
      + Sum[christoffel[[nu, rho, lambda]] vector[[lambda]], {lambda, 3}]
     ],
    {nu, 3}, {rho, 3}
    ];
  vectorDerivativeRaised = Table[
    Together@Sum[
      inverseMetric[[mu, rho]] vectorDerivative[[nu, rho]],
      {rho, 3}
      ],
    {nu, 3}, {mu, 3}
    ];
  localConnectionVariation = Table[
    1/2 Sum[
      inverseMetric[[nu, beta]] (
        localDerivative[[alpha, rho, beta]]
         + localDerivative[[rho, alpha, beta]]
         - localDerivative[[beta, alpha, rho]]
        ),
      {beta, 3}
      ],
    {nu, 3}, {alpha, 3}, {rho, 3}
    ];
  localConnectionDerivativeVariation = Table[
    -Sum[localUpper[[mu, alpha]] vectorDerivative[[nu, alpha]], {alpha, 3}]
     + Sum[
       inverseMetric[[mu, alpha]]
        localConnectionVariation[[nu, alpha, rho]] vector[[rho]],
       {alpha, 3}, {rho, 3}
       ],
    {mu, 3}, {nu, 3}
    ];
  localChargeCoefficient = Table[
    -localConnectionDerivativeVariation[[mu, nu]]
     - localTrace vectorDerivativeRaised[[nu, mu]]/2
     + vector[[mu]] (
       localDivergence[[nu]] - localTraceGradient[[nu]]
       ),
    {mu, 3}, {nu, 3}
    ];
  Table[
   Together[
     localChargeCoefficient[[mu, nu]]
      - localChargeCoefficient[[nu, mu]]
     ]/(16 Pi GNewton),
   {mu, 3}, {nu, 3}
   ]
  ];

lieBracket[first_, second_] := Table[
  Sum[
   first[[rho]] D[second[[mu]], coordinates[[rho]]]
    - second[[rho]] D[first[[mu]], coordinates[[rho]]],
   {rho, 3}
   ],
  {mu, 3}
  ];

properProfile = regulatorLength^2/(regulatorLength^2 + r^2);
properCompletion = (-properProfile realGaugeVector) /. GNewton -> 1;
properMode = (realMode + lieMetric[properCompletion]) /. GNewton -> 1;
properCommutator = lieBracket[xiInterval, properCompletion];

firstPotential = generalIyerWaldPotential[
    properCommutator,
    properMode
    ] /. GNewton -> 1;
secondPotential = generalIyerWaldPotential[
    properCompletion,
    modularVariation /. GNewton -> 1
    ] /. GNewton -> 1;

(* Equation (4.37), converted from the paper's gamma orientation to the
   outward inner-boundary orientation used in the main benchmark. *)
properUpsilonPotential = -firstPotential + secondPotential;
properUpsilonPhi = FullSimplify[
   rtLineElement Sum[
      futureNormalLower[[mu]] innerNormalLower[[nu]]
       properUpsilonPotential[[mu, nu]],
      {mu, 3}, {nu, 3}
      ] /. {t -> 0, r -> explicitRtRadius},
   Assumptions -> regulatorLength > 0 && -Pi/4 < phi < Pi/4
   ];
properUpsilonX = Factor@FullSimplify[
    TrigExpand[properUpsilonPhi /. phi -> ArcTan[x]]/(1 + x^2),
    Assumptions -> regulatorLength > 0 && -1 < x < 1
    ];

rightAnchorScaledDensity = FullSimplify[
   Limit[
    (properUpsilonX /. x -> 1 - anchorCoordinate/regulatorLength^2)/
     regulatorLength^2,
    regulatorLength -> Infinity
    ],
   Assumptions -> anchorCoordinate > 0
   ];
pointwiseLimitResidual = FullSimplify[
   Limit[properUpsilonX, regulatorLength -> Infinity]
    - expectedInnerIntegrandX,
   Assumptions -> -1 < x < 1
   ];
properProbeChecks = <|
   "proper density has the local pointwise limit" ->
    (pointwiseLimitResidual === 0),
   "no finite L^-2 anchor-layer contribution" ->
    (rightAnchorScaledDensity === 0),
   "proper density is even" -> FullSimplify[
      properUpsilonX - (properUpsilonX /. x -> -x),
      Assumptions -> regulatorLength > 0 && -1 < x < 1
      ] === 0
   |>;

Print["Proper-completion Upsilon density: ", properUpsilonX];
Print[properProbeChecks];
Print["All proper-completion checks passed: ", And @@ Values[properProbeChecks]];
Print[
 "Right-anchor scaled density (dx=-dz/L^2): ",
 rightAnchorScaledDensity
 ];
properIntegralSamples = Table[
   NIntegrate[
    properUpsilonX /. regulatorLength -> length,
    {x, -1, 1},
    WorkingPrecision -> 40,
    AccuracyGoal -> 24,
    PrecisionGoal -> 24
    ],
   {length, {2, 4, 8, 16, 32}}
   ];
Do[
 Print[
  "L=", length, ": ",
  properIntegralSamples[[index]]
  ],
 {index, 5}, {length, {{2, 4, 8, 16, 32}[[index]]}}
 ];
Print["Local target: ", N[-32/105, 30]];
properNumericalConvergence =
  Abs[Last[properIntegralSamples] + 32/105] < 10^-5;
Print["Numerical convergence check: ", properNumericalConvergence];
If[!And @@ Values[properProbeChecks] || !properNumericalConvergence,
 Exit[1]];
