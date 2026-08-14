(* ::Package:: *)

(* Component residual check for the m=1 BTZ collar mode.  xCoba supplies the
   background connection.  The perturbative coefficient engine then expands
   the cosmological Einstein tensor for

     g(a)=G+a h+a^2 k,

   and separately evaluates E^(2)[h,h] and E^(1)[k]. *)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

$MaxExtraPrecision = 10000;

ClearAll[
  t, rho, phi, aa, rp, rho0, coordinateList, backgroundMetric,
  backgroundInverse, boundaryWave, waveFirst, waveSecond, baseVector,
  smoothStep, transitionCutoff, cutVector, lieDerivative,
  linearPerturbation, secondPerturbation, evaluateJets, zeroJets,
  einsteinFromJets, pointRules1, pointRules2, checkPoint,
  pointResult1, pointResult2, results, rawResidualNorms,
  residualNorms, residualNorm,
  backgroundConnectionResidual, linearResidualPoint1,
  linearResidualPoint2, totalSecondResidualPoint1,
  totalSecondResidualPoint2, splitSecondResidualPoint1,
  splitSecondResidualPoint2, testReport
  ];

DefManifold[Mcheck, 3, {a, b, c, d}];
DefChart[btzCheck, Mcheck, {0, 1, 2}, {tt[], rr[], pp[]}];

rp = 2;
rho0 = Log[2]/2;
coordinateList = {t, rho, phi};
backgroundMetric = {
   {-rp^2 Sinh[rho]^2, 0, 0},
   {0, 1, 0},
   {0, 0, rp^2 Cosh[rho]^2}
   };
backgroundInverse = FullSimplify[Inverse[backgroundMetric]];

metricCTensor = CTensor[
   backgroundMetric /. {t -> tt[], rho -> rr[], phi -> pp[]},
   {-btzCheck, -btzCheck}
   ];
SetCMetric[metricCTensor, btzCheck, SignatureOfMetric -> {2, 1, 0}];
MetricCompute[
  metricCTensor, btzCheck, "Christoffel"[1, -1, -1],
  CVSimplify -> FullSimplify, Verbose -> False
  ];
backgroundCovariantDerivative = CovDOfMetric[metricCTensor];
coordinateDerivative = GiveSymbol[PD, btzCheck];
xCobaChristoffel =
  ToValues[
    Christoffel[backgroundCovariantDerivative, coordinateDerivative]
    ] /. CTensor[array_, bases_, weight_] :> array /. {
    tt[] -> t, rr[] -> rho, pp[] -> phi
    };

boundaryWave = Cos[t + phi];
waveFirst = D[boundaryWave, t];
waveSecond = D[boundaryWave, {t, 2}];
baseVector = {
   boundaryWave/2 + waveSecond (Coth[rho] - 1)/(2 rp^2),
   -waveFirst/2,
   boundaryWave/2 - waveSecond (1 - Tanh[rho])/(2 rp^2)
   };

smoothStep[x_] :=
  462 x^6 - 1980 x^7 + 3465 x^8 - 3080 x^9 + 1386 x^10 -
   252 x^11;
transitionCutoff = smoothStep[rho/rho0 - 1];
cutVector = transitionCutoff baseVector;

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

linearPerturbation = lieDerivative[cutVector, backgroundMetric];
secondPerturbation =
  Simplify[1/2 lieDerivative[cutVector, linearPerturbation]];

pointRules1 = {
   t -> N[0, 100],
   phi -> N[Pi/4, 100],
   rho -> N[3 rho0/2, 100]
   };
pointRules2 = {
   t -> N[Pi/7, 100],
   phi -> N[Pi/11, 100],
   rho -> N[7 rho0/4, 100]
   };

evaluateJets[tensor_, rules_] := <|
   "Value" -> Block[{$MaxExtraPrecision = 10000}, N[tensor /. rules, 100]],
   "First" -> Table[
     Block[{$MaxExtraPrecision = 10000},
      N[D[tensor, coordinateList[[alpha]]] /. rules, 100]],
     {alpha, 3}
     ],
   "Second" -> Table[
     Block[{$MaxExtraPrecision = 10000},
      N[D[tensor, coordinateList[[alpha]], coordinateList[[beta]]] /.
        rules, 100]],
     {alpha, 3}, {beta, 3}
     ]
   |>;

zeroJets = <|
   "Value" -> ConstantArray[0, {3, 3}],
   "First" -> ConstantArray[0, {3, 3, 3}],
   "Second" -> ConstantArray[0, {3, 3, 3, 3}]
   |>;

einsteinFromJets[jets_] := Module[
   {metricSeries, firstSeries, secondSeries, inverseSeries,
    inverseDerivative, metricDerivativeCombination,
    metricSecondDerivativeCombination, connectionSeries,
    connectionDerivative, ricciSeries, scalarSeries, einsteinSeries},
   metricSeries = jets[[All, "Value"]];
   firstSeries = jets[[All, "First"]];
   secondSeries = jets[[All, "Second"]];
   inverseSeries = {
     Inverse[metricSeries[[1]]],
     -Inverse[metricSeries[[1]]] . metricSeries[[2]] .
      Inverse[metricSeries[[1]]],
     Inverse[metricSeries[[1]]] . metricSeries[[2]] .
       Inverse[metricSeries[[1]]] . metricSeries[[2]] .
       Inverse[metricSeries[[1]]] -
      Inverse[metricSeries[[1]]] . metricSeries[[3]] .
       Inverse[metricSeries[[1]]]
     };
   inverseDerivative = Table[
     -Sum[
       inverseSeries[[left + 1]] .
        firstSeries[[middle + 1, derivative]] .
        inverseSeries[[order - left - middle + 1]],
       {left, 0, order}, {middle, 0, order - left}
       ],
     {order, 0, 2}, {derivative, 3}
     ];
   metricDerivativeCombination = Table[
     firstSeries[[order + 1, mu, sigma, nu]] +
      firstSeries[[order + 1, nu, sigma, mu]] -
      firstSeries[[order + 1, sigma, mu, nu]],
     {order, 0, 2}, {sigma, 3}, {mu, 3}, {nu, 3}
     ];
   metricSecondDerivativeCombination = Table[
     secondSeries[[order + 1, derivative, mu, sigma, nu]] +
      secondSeries[[order + 1, derivative, nu, sigma, mu]] -
      secondSeries[[order + 1, derivative, sigma, mu, nu]],
     {order, 0, 2}, {derivative, 3}, {sigma, 3}, {mu, 3},
     {nu, 3}
     ];
   connectionSeries = Table[
     1/2 Sum[
       inverseSeries[[split + 1, lambda, sigma]]
        metricDerivativeCombination[[order - split + 1, sigma, mu, nu]],
       {split, 0, order}, {sigma, 3}
       ],
     {order, 0, 2}, {lambda, 3}, {mu, 3}, {nu, 3}
     ];
   connectionDerivative = Table[
     1/2 Sum[
       inverseDerivative[[split + 1, derivative, lambda, sigma]]
         metricDerivativeCombination[[order - split + 1, sigma, mu, nu]] +
        inverseSeries[[split + 1, lambda, sigma]]
         metricSecondDerivativeCombination[[order - split + 1,
          derivative, sigma, mu, nu]],
       {split, 0, order}, {sigma, 3}
       ],
     {order, 0, 2}, {derivative, 3}, {lambda, 3}, {mu, 3},
     {nu, 3}
     ];
   ricciSeries = Table[
     Sum[
       connectionDerivative[[order + 1, lambda, lambda, mu, nu]] -
        connectionDerivative[[order + 1, nu, lambda, mu, lambda]],
       {lambda, 3}
       ] +
      Sum[
       connectionSeries[[split + 1, lambda, lambda, sigma]]
         connectionSeries[[order - split + 1, sigma, mu, nu]] -
        connectionSeries[[split + 1, lambda, nu, sigma]]
         connectionSeries[[order - split + 1, sigma, mu, lambda]],
       {split, 0, order}, {lambda, 3}, {sigma, 3}
       ],
     {order, 0, 2}, {mu, 3}, {nu, 3}
     ];
   scalarSeries = Table[
     Sum[
      inverseSeries[[split + 1, mu, nu]]
       ricciSeries[[order - split + 1, mu, nu]],
      {split, 0, order}, {mu, 3}, {nu, 3}
      ],
     {order, 0, 2}
     ];
   einsteinSeries = Table[
     ricciSeries[[order + 1]] -
      1/2 Sum[
        metricSeries[[split + 1]]
         (scalarSeries[[order - split + 1]] +
           2 KroneckerDelta[order - split, 0]),
        {split, 0, order}
        ],
     {order, 0, 2}
     ];
   <|"Connection" -> connectionSeries, "Einstein" -> einsteinSeries|>
   ];

residualNorm[array_] := Max[Abs[Flatten[N[array]]]];

checkPoint[rules_] := Block[{$MaxExtraPrecision = 100000}, Module[
   {backgroundJets, hJets, kJets, full, hOnly, kOnly,
    xCobaConnectionAtPoint, backgroundConnectionRaw, linearRaw,
    totalSecondRaw, splitSecondRaw},
   backgroundJets = evaluateJets[backgroundMetric, rules];
   hJets = evaluateJets[linearPerturbation, rules];
   kJets = evaluateJets[secondPerturbation, rules];
   full = einsteinFromJets[{backgroundJets, hJets, kJets}];
   hOnly = einsteinFromJets[{backgroundJets, hJets, zeroJets}];
   kOnly = einsteinFromJets[{backgroundJets, kJets, zeroJets}];
   xCobaConnectionAtPoint = Block[{$MaxExtraPrecision = 10000},
     N[xCobaChristoffel /. rules, 100]
     ];
   backgroundConnectionRaw =
    full["Connection"][[1]] - xCobaConnectionAtPoint;
   linearRaw = full["Einstein"][[2]];
   totalSecondRaw = full["Einstein"][[3]];
   splitSecondRaw =
    hOnly["Einstein"][[3]] + kOnly["Einstein"][[2]];
   <|
    "BackgroundConnectionResidual" ->
     Chop[backgroundConnectionRaw, 10^-70],
    "LinearResidual" -> Chop[linearRaw, 10^-70],
    "TotalSecondResidual" -> Chop[totalSecondRaw, 10^-70],
    "SplitSecondResidual" -> Chop[splitSecondRaw, 10^-70],
    "RawNorms" -> <|
      "BackgroundConnectionResidual" ->
       residualNorm[backgroundConnectionRaw],
      "LinearResidual" -> residualNorm[linearRaw],
      "TotalSecondResidual" -> residualNorm[totalSecondRaw],
      "SplitSecondResidual" -> residualNorm[splitSecondRaw]
      |>
    |>
   ]];

pointResult1 = checkPoint[pointRules1];
pointResult2 = checkPoint[pointRules2];
backgroundConnectionResidual =
  {pointResult1["BackgroundConnectionResidual"],
   pointResult2["BackgroundConnectionResidual"]};
linearResidualPoint1 = pointResult1["LinearResidual"];
linearResidualPoint2 = pointResult2["LinearResidual"];
totalSecondResidualPoint1 = pointResult1["TotalSecondResidual"];
totalSecondResidualPoint2 = pointResult2["TotalSecondResidual"];
splitSecondResidualPoint1 = pointResult1["SplitSecondResidual"];
splitSecondResidualPoint2 = pointResult2["SplitSecondResidual"];

results = <|
   "BackgroundConnectionResidual" -> backgroundConnectionResidual,
   "LinearResidualPoint1" -> linearResidualPoint1,
   "LinearResidualPoint2" -> linearResidualPoint2,
   "TotalSecondResidualPoint1" -> totalSecondResidualPoint1,
   "TotalSecondResidualPoint2" -> totalSecondResidualPoint2,
   "SplitSecondResidualPoint1" -> splitSecondResidualPoint1,
   "SplitSecondResidualPoint2" -> splitSecondResidualPoint2
   |>;

rawResidualNorms = <|
   "Point1" -> pointResult1["RawNorms"],
   "Point2" -> pointResult2["RawNorms"]
   |>;
residualNorms = Map[residualNorm, results];

Print[rawResidualNorms];
Print[residualNorms];

testReport = TestReport[{
   VerificationTest[
    results["BackgroundConnectionResidual"],
    ConstantArray[0, {2, 3, 3, 3}]
    ],
   VerificationTest[
    results["LinearResidualPoint1"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    results["LinearResidualPoint2"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    results["TotalSecondResidualPoint1"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    results["TotalSecondResidualPoint2"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    results["SplitSecondResidualPoint1"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    results["SplitSecondResidualPoint2"], ConstantArray[0, {3, 3}]
    ],
   VerificationTest[
    Max[Flatten[Values /@ Values[rawResidualNorms]]] < 10^-70,
    True
    ]
   }];

Print[<|
  "TestsSucceededCount" -> testReport["TestsSucceededCount"],
  "TestsFailedCount" -> testReport["TestsFailedCount"]
  |>];
