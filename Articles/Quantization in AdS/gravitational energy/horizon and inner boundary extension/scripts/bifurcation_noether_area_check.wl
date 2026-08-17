(* ::Package:: *)

(* Fixed-surface bifurcation-cut check in the gravitational-energy project
   convention.  At a point of gamma choose background normal coordinates

     G = diag(-1,1,q),

   take the tangent to gamma along coordinate 3, and normalize the boost by

     xi = s (x^1 d/dx^0 + x^0 d/dx^1).

   Since xi vanishes on gamma, the pullback of the project Noether tensor

     Q^{mu nu} = (nabla^mu xi^nu - nabla^nu xi^mu)/(2 kappa_p^2)

   depends only on the metric and the fixed boost derivative there. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

ClearAll[
  amp, surfaceGravity, kappaP, q,
  h00, h01, h02, h11, h12, h22,
  r00, r01, r02, r11, r12, r22,
  backgroundMetric, firstMetric, secondMetric, metricFamily,
  inverseMetric, boostDerivative, noetherTensor01,
  noetherDensity, areaDensity, densityDifference,
  densityDifferenceCoefficients, nullK, nullL, hkk, hll,
  expectedSecondDifference, areaCoefficients, expectedAreaCoefficients,
  extremalRules, assumptions, results, testReport
  ];

backgroundMetric = DiagonalMatrix[{-1, 1, q}];
firstMetric = {
   {h00, h01, h02},
   {h01, h11, h12},
   {h02, h12, h22}
   };
secondMetric = {
   {r00, r01, r02},
   {r01, r11, r12},
   {r02, r12, r22}
   };

metricFamily = backgroundMetric + amp firstMetric + amp^2 secondMetric;
inverseMetric = Inverse[metricFamily];

(* boostDerivative[[mu,alpha]] = partial_alpha xi^mu *)
boostDerivative = {
   {0, surfaceGravity, 0},
   {surfaceGravity, 0, 0},
   {0, 0, 0}
   };

noetherTensor01 = 1/(2 kappaP^2) Sum[
    inverseMetric[[1, alpha]] boostDerivative[[2, alpha]] -
     inverseMetric[[2, alpha]] boostDerivative[[1, alpha]],
    {alpha, 3}
    ];

(* This sign is the cut orientation for which the background density is
   +s Sqrt[q]/kappa_p^2. *)
noetherDensity = -Sqrt[-Det[metricFamily]] noetherTensor01;
areaDensity = Sqrt[metricFamily[[3, 3]]];
densityDifference = kappaP^2 noetherDensity - surfaceGravity areaDensity;

assumptions = {q > 0, kappaP > 0, surfaceGravity > 0};

densityDifferenceCoefficients = Table[
   FullSimplify[
    SeriesCoefficient[densityDifference, {amp, 0, order}],
    Assumptions -> assumptions
    ],
   {order, 0, 2}
   ];

nullK = {1, 1, 0}/Sqrt[2];
nullL = {-1, 1, 0}/Sqrt[2];
hkk = FullSimplify[nullK . firstMetric . nullK];
hll = FullSimplify[nullL . firstMetric . nullL];
expectedSecondDifference =
  surfaceGravity Sqrt[q] hkk hll/2;

areaCoefficients = Table[
   FullSimplify[
    SeriesCoefficient[areaDensity, {amp, 0, order}],
    Assumptions -> assumptions
    ],
   {order, 0, 2}
   ];
expectedAreaCoefficients = {
   Sqrt[q],
   Sqrt[q] h22/(2 q),
   Sqrt[q] (r22/(2 q) - h22^2/(8 q^2))
   };

extremalRules = {h01 -> 0, h11 -> -h00};

results = <|
   "BackgroundNoetherDensity" -> FullSimplify[
     noetherDensity /. amp -> 0,
     Assumptions -> assumptions
     ],
   "DifferenceCoefficients" -> densityDifferenceCoefficients,
   "SecondDifferenceMinusNullProduct" -> FullSimplify[
     densityDifferenceCoefficients[[3]] - expectedSecondDifference,
     Assumptions -> assumptions
     ],
   "ExtremalGaugeSecondDifference" -> FullSimplify[
     densityDifferenceCoefficients[[3]] /. extremalRules,
     Assumptions -> assumptions
     ],
   "AreaCoefficientResiduals" -> FullSimplify[
     areaCoefficients - expectedAreaCoefficients,
     Assumptions -> assumptions
     ]
   |>;

Print[results];

testReport = TestReport[{
   VerificationTest[
    results["BackgroundNoetherDensity"],
    surfaceGravity Sqrt[q]/kappaP^2
    ],
   VerificationTest[
    results["DifferenceCoefficients"][[1]], 0
    ],
   VerificationTest[
    results["DifferenceCoefficients"][[2]], 0
    ],
   VerificationTest[
    results["SecondDifferenceMinusNullProduct"], 0
    ],
   VerificationTest[
    results["ExtremalGaugeSecondDifference"], 0
    ],
   VerificationTest[
    results["AreaCoefficientResiduals"], ConstantArray[0, 3]
    ],
   VerificationTest[
    FreeQ[densityDifferenceCoefficients[[3]],
     r00 | r01 | r02 | r11 | r12 | r22], True
    ],
   VerificationTest[
    FreeQ[densityDifferenceCoefficients[[3]], h02 | h12], True
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
