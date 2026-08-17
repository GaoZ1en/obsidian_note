(* ::Package:: *)

(* Direct project-convention Lee--Wald canonical energy for the m=1 BTZ
   collar mode.  The current is derived by varying the project potential

     vartheta^mu[b] = -1/2 (g^{mu a} nabla^n b_{a n}
                                  - g^{a b} nabla^mu b_{a b})

   with the overall 1/kappa_p^2 removed.  Inserting the physical variations
   kappa_p h cancels that factor. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  timeCoord, radialCoord, angleCoord, horizonRadius, chi, collarRadius,
  coordinateList, backgroundMetric, backgroundInverse,
  backgroundChristoffel, boundaryWave, waveFirst, waveSecond, baseVector,
  cutVector, lieDerivative, metricPerturbation, flowPerturbation,
  covariantDerivativeTensor, connectionVariation, thetaVariation,
  thetaBackground, traceBackground, symplecticCurrent, canonicalDensity,
  radialDensity, chiValue, chiFirst, chiSecond, densityPolynomial,
  coefficientChiChiSecond, coefficientChiFirstChiSecond,
  coefficientChiChiFirst, coefficientChiFirstSquared, primitiveA,
  primitiveB, primitiveC, radialPrimitive, primitiveResidual, smoothStep,
  smoothCutoff, cutoffRules, directEnergy, targetEnergy, testReport
  ];

coordinateList = {timeCoord, radialCoord, angleCoord};
backgroundMetric = {
   {-horizonRadius^2 Sinh[radialCoord]^2, 0, 0},
   {0, 1, 0},
   {0, 0, horizonRadius^2 Cosh[radialCoord]^2}
   };
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
cutVector = chi[radialCoord] baseVector;

lieDerivative[vector_, tensor_] := Table[
   Simplify[
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

metricPerturbation = lieDerivative[cutVector, backgroundMetric];
flowPerturbation = FullSimplify[
   (2 Pi/horizonRadius) D[metricPerturbation, timeCoord]
   ];

covariantDerivativeTensor[tensor_] := Table[
   Simplify[
    D[tensor[[mu, nu]], coordinateList[[beta]]] -
     Sum[
      backgroundChristoffel[[lambda, beta, mu]] tensor[[lambda, nu]] +
       backgroundChristoffel[[lambda, beta, nu]] tensor[[mu, lambda]],
      {lambda, 3}
      ]
    ],
   {beta, 3}, {mu, 3}, {nu, 3}
   ];

connectionVariation[variation_] := Module[
   {derivative = covariantDerivativeTensor[variation]},
   Table[
    Simplify[
     1/2 Sum[
       backgroundInverse[[lambda, sigma]]
        (derivative[[mu, sigma, nu]] +
         derivative[[nu, sigma, mu]] -
         derivative[[sigma, mu, nu]]),
       {sigma, 3}
       ]
     ],
    {lambda, 3}, {mu, 3}, {nu, 3}
    ]
   ];

thetaVariation[metricVariation_, argument_] := Module[
   {deltaInverse, argumentDerivative, deltaConnection,
    deltaArgumentDerivative, deltaFirstTerm, deltaSecondTerm},
   deltaInverse = FullSimplify[
     -backgroundInverse . metricVariation . backgroundInverse
     ];
   argumentDerivative = covariantDerivativeTensor[argument];
   deltaConnection = connectionVariation[metricVariation];
   deltaArgumentDerivative = Table[
     Simplify[
      -Sum[
        deltaConnection[[lambda, beta, mu]] argument[[lambda, nu]] +
         deltaConnection[[lambda, beta, nu]] argument[[mu, lambda]],
        {lambda, 3}
        ]
      ],
     {beta, 3}, {mu, 3}, {nu, 3}
     ];
   deltaFirstTerm = Table[
     Simplify[
      Sum[
       (deltaInverse[[out, alpha]] backgroundInverse[[nu, beta]] +
          backgroundInverse[[out, alpha]] deltaInverse[[nu, beta]])
         argumentDerivative[[beta, alpha, nu]] +
        backgroundInverse[[out, alpha]] backgroundInverse[[nu, beta]]
         deltaArgumentDerivative[[beta, alpha, nu]],
       {alpha, 3}, {nu, 3}, {beta, 3}
       ]
      ],
     {out, 3}
     ];
   deltaSecondTerm = Table[
     Simplify[
      Sum[
       (deltaInverse[[alpha, beta]] backgroundInverse[[out, gamma]] +
          backgroundInverse[[alpha, beta]] deltaInverse[[out, gamma]])
         argumentDerivative[[gamma, alpha, beta]] +
        backgroundInverse[[alpha, beta]] backgroundInverse[[out, gamma]]
         deltaArgumentDerivative[[gamma, alpha, beta]],
       {alpha, 3}, {beta, 3}, {gamma, 3}
       ]
      ],
     {out, 3}
     ];
   FullSimplify[-1/2 (deltaFirstTerm - deltaSecondTerm)]
   ];

thetaBackground[argument_] := Module[
   {argumentDerivative = covariantDerivativeTensor[argument]},
   Table[
    FullSimplify[
     -1/2
      (Sum[
         backgroundInverse[[out, alpha]]
          backgroundInverse[[nu, beta]]
          argumentDerivative[[beta, alpha, nu]],
         {alpha, 3}, {nu, 3}, {beta, 3}
         ] -
       Sum[
        backgroundInverse[[alpha, beta]]
         backgroundInverse[[out, gamma]]
         argumentDerivative[[gamma, alpha, beta]],
        {alpha, 3}, {beta, 3}, {gamma, 3}
        ])
     ],
    {out, 3}
    ]
   ];
traceBackground[variation_] :=
  FullSimplify[Tr[backgroundInverse . variation]];

symplecticCurrent = FullSimplify[
   thetaVariation[metricPerturbation, flowPerturbation] -
    thetaVariation[flowPerturbation, metricPerturbation] +
    1/2 traceBackground[metricPerturbation]
     thetaBackground[flowPerturbation] -
    1/2 traceBackground[flowPerturbation]
     thetaBackground[metricPerturbation]
   ];

(* sqrt(sigma) tau_mu = -r_+^2 sinh(rho) cosh(rho) delta_mu^t. *)
canonicalDensity = FullSimplify[
   -horizonRadius^2 Sinh[radialCoord] Cosh[radialCoord]
    symplecticCurrent[[1]],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
radialDensity = FullSimplify[
   Integrate[canonicalDensity, {angleCoord, 0, 2 Pi}],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];

(* Reconstruct the angle-integrated density as an exact radial derivative. *)
densityPolynomial = Expand[
   radialDensity /. {
     chi[radialCoord] -> chiValue,
     Derivative[1][chi][radialCoord] -> chiFirst,
     Derivative[2][chi][radialCoord] -> chiSecond
     }
   ];
coefficientChiChiSecond = FullSimplify[
   Coefficient[Coefficient[densityPolynomial, chiValue, 1], chiSecond, 1]
   ];
coefficientChiFirstChiSecond = FullSimplify[
   Coefficient[Coefficient[densityPolynomial, chiFirst, 1], chiSecond, 1]
   ];
coefficientChiChiFirst = FullSimplify[
   Coefficient[Coefficient[densityPolynomial, chiValue, 1], chiFirst, 1]
   ];
coefficientChiFirstSquared = FullSimplify[
   Coefficient[densityPolynomial, chiFirst, 2]
   ];
primitiveB = coefficientChiChiSecond;
primitiveC = FullSimplify[coefficientChiFirstChiSecond/2];
primitiveA = FullSimplify[
   (coefficientChiChiFirst - D[primitiveB, radialCoord])/2,
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];
radialPrimitive =
  primitiveA chi[radialCoord]^2 +
   primitiveB chi[radialCoord] Derivative[1][chi][radialCoord] +
   primitiveC Derivative[1][chi][radialCoord]^2;
primitiveResidual = FullSimplify[
   Together[radialDensity - D[radialPrimitive, radialCoord]],
   Assumptions -> {horizonRadius > 0, radialCoord > 0}
   ];

(* C^5 smoothstep on x in [0,1]. *)
smoothStep[x_] :=
  462 x^6 - 1980 x^7 + 3465 x^8 - 3080 x^9 + 1386 x^10 -
   252 x^11;
smoothCutoff[r_, r0_] := Piecewise[{
    {0, r <= r0},
    {smoothStep[r/r0 - 1], r < 2 r0}
    }, 1];
cutoffRules[r0_] := {
   chi[radialCoord] -> smoothCutoff[radialCoord, r0],
   Derivative[1][chi][radialCoord] ->
    D[smoothCutoff[x, r0], x] /. x -> radialCoord,
   Derivative[2][chi][radialCoord] ->
    D[smoothCutoff[x, r0], {x, 2}] /. x -> radialCoord
   };

directEnergy[rpValue_, r0Value_] := NIntegrate[
   Evaluate[
    radialDensity /. horizonRadius -> rpValue /. cutoffRules[r0Value]
    ],
   {radialCoord, 0, r0Value, 2 r0Value, Infinity},
   WorkingPrecision -> 50,
   AccuracyGoal -> 30,
   PrecisionGoal -> 30,
   Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
   ];

targetEnergy[rpValue_] := Pi^2 (rpValue^2 + 1)/rpValue;

results = <|
   "RadialDensity" -> radialDensity,
   "PrimitiveConstantCoefficient" -> primitiveA,
   "PrimitiveResidual" -> primitiveResidual,
   "DirectEnergyRho0Log2Over2" -> directEnergy[2, Log[2]/2],
   "DirectEnergyRho0Log2" -> directEnergy[2, Log[2]],
   "TargetEnergyAtRPlus2" -> N[targetEnergy[2], 50],
   "DirectEnergyRPlus3Rho0Log2Over2" ->
    directEnergy[3, Log[2]/2],
   "DirectEnergyRPlus3Rho0Log2" -> directEnergy[3, Log[2]],
   "TargetEnergyAtRPlus3" -> N[targetEnergy[3], 50]
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[
    FullSimplify[
     results["PrimitiveConstantCoefficient"] -
      Pi^2 (horizonRadius^2 + 1)/horizonRadius,
     Assumptions -> horizonRadius > 0
     ],
    0
    ],
   VerificationTest[results["PrimitiveResidual"], 0],
   VerificationTest[
    Abs[results["DirectEnergyRho0Log2Over2"] -
      results["TargetEnergyAtRPlus2"]] < 10^-25,
    True
    ],
   VerificationTest[
    Abs[results["DirectEnergyRho0Log2"] -
      results["TargetEnergyAtRPlus2"]] < 10^-25,
    True
    ],
   VerificationTest[
    Abs[results["DirectEnergyRho0Log2Over2"] -
      results["DirectEnergyRho0Log2"]] < 10^-25,
    True
    ],
   VerificationTest[
    Abs[results["DirectEnergyRPlus3Rho0Log2Over2"] -
      results["TargetEnergyAtRPlus3"]] < 10^-25,
    True
    ],
   VerificationTest[
    Abs[results["DirectEnergyRPlus3Rho0Log2"] -
      results["TargetEnergyAtRPlus3"]] < 10^-25,
    True
    ],
   VerificationTest[
    Abs[results["DirectEnergyRPlus3Rho0Log2Over2"] -
      results["DirectEnergyRPlus3Rho0Log2"]] < 10^-25,
    True
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
