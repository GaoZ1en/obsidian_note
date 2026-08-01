ClearAll["Global`*"];

Needs["xAct`xCoba`"];

DefManifold[M2, 2, {a, b, c, d}];
DefChart[ch, M2, {0, 1}, {tauCoordinate[], rhoCoordinate[]}];
DefConstantSymbol[adsRadius];
DefMetric[-1, g[-a, -b], CD, {";", "\[Del]"}];
MetricInBasis[
  g,
  -ch,
  DiagonalMatrix[{
    -adsRadius^2 Sec[rhoCoordinate[]]^2,
    adsRadius^2 Sec[rhoCoordinate[]]^2
  }]
];
MetricCompute[g, ch, "RicciScalar"[], CVSimplify -> FullSimplify];
xCobaCurvatureResidual = FullSimplify[
  ToValues[RicciScalarCD[]] + 2/adsRadius^2,
  adsRadius > 0
];

DefManifold[MStatic, 2, {i, j, k, l}];
DefChart[
  staticChart,
  MStatic,
  {0, 1},
  {staticTime[], staticX[]}
];
DefMetric[-1, gStatic[-i, -j], CDStatic, {";", "\[Del]s"}];
MetricInBasis[
  gStatic,
  -staticChart,
  DiagonalMatrix[{
    -lapse[staticX[]]^2,
    spatialScale[staticX[]]^2
  }]
];
MetricCompute[
  gStatic,
  staticChart,
  "RicciScalar"[],
  CVSimplify -> FullSimplify
];
generalStaticCurvatureExpected =
  -2/(lapse[staticX[]] spatialScale[staticX[]]) *
    D[
      D[lapse[staticX[]], staticX[]]/spatialScale[staticX[]],
      staticX[]
    ];
generalStaticCurvatureResidual = FullSimplify[
  ToValues[RicciScalarCDStatic[]] - generalStaticCurvatureExpected,
  lapse[staticX[]] > 0 && spatialScale[staticX[]] > 0
];

ClearAll[
  x, t, tE, tEp, xp, conformalDimension, z, scalarMass, xi, f, F,
  psi, l0, lp, lm, normalizationSquared
];

lorentzianMetric =
  adsRadius^2 Sec[x]^2 DiagonalMatrix[{-1, 1}];
kineticDensityResidual = FullSimplify[
  Sqrt[-Det[lorentzianMetric]] Inverse[lorentzianMetric]
    - DiagonalMatrix[{-1, 1}],
  adsRadius > 0 && -Pi/2 < x < Pi/2
];
potentialDensityResidual = FullSimplify[
  Sqrt[-Det[lorentzianMetric]]
      (scalarMass^2 - 2 xi/adsRadius^2)
    - (scalarMass^2 adsRadius^2 - 2 xi) Sec[x]^2,
  adsRadius > 0 && -Pi/2 < x < Pi/2
];

psi[n_Integer] :=
  Exp[-I (conformalDimension + n) t] * Cos[x]^conformalDimension *
    GegenbauerC[n, conformalDimension, Sin[x]];
l0[expression_] := I D[expression, t];
lp[expression_] :=
  -Exp[I t] * (
    I Sin[x] D[expression, t] + Cos[x] D[expression, x]
  );
lm[expression_] :=
  Exp[-I t] * (
    -I Sin[x] D[expression, t] + Cos[x] D[expression, x]
  );

modeAssumptions = conformalDimension > 1 && -Pi/2 < x < Pi/2;
modeResiduals = Table[
  FullSimplify[
    -D[psi[n], {x, 2}]
      + conformalDimension (conformalDimension - 1) Sec[x]^2 psi[n]
      - (conformalDimension + n)^2 psi[n],
    modeAssumptions
  ],
  {n, 0, 6}
];
energyResiduals = Table[
  FullSimplify[
    l0[psi[n]] - (conformalDimension + n) psi[n],
    modeAssumptions
  ],
  {n, 0, 6}
];
raisingResiduals = Table[
  FullSimplify[
    lm[psi[n]] + (n + 1) psi[n + 1],
    modeAssumptions
  ],
  {n, 0, 5}
];
loweringResiduals = Table[
  FullSimplify[
    lp[psi[n]] + (n + 2 conformalDimension - 1) psi[n - 1],
    modeAssumptions
  ],
  {n, 1, 6}
];
primaryResidual = FullSimplify[lp[psi[0]], modeAssumptions];

genericScalar = f[t, x];
sl2AlgebraResiduals = {
  FullSimplify[l0[lp[genericScalar]] - lp[l0[genericScalar]] + lp[genericScalar]],
  FullSimplify[l0[lm[genericScalar]] - lm[l0[genericScalar]] - lm[genericScalar]],
  FullSimplify[lp[lm[genericScalar]] - lm[lp[genericScalar]] - 2 l0[genericScalar]]
};
casimirResidual = FullSimplify[
  l0[l0[genericScalar]]
    - (lp[lm[genericScalar]] + lm[lp[genericScalar]])/2
    - Cos[x]^2 * (
      -D[genericScalar, {t, 2}] + D[genericScalar, {x, 2}]
    )
];

normalizationSquared[n_Integer] :=
  2^(2 conformalDimension - 1) * Factorial[n] *
    (n + conformalDimension) * Gamma[conformalDimension]^2/
      (Pi * Gamma[n + 2 conformalDimension]);
normalizationResiduals = Table[
  FullSimplify[
    normalizationSquared[n] * Integrate[
      Cos[x]^(2 conformalDimension) *
        GegenbauerC[n, conformalDimension, Sin[x]]^2,
      {x, -Pi/2, Pi/2},
      Assumptions -> conformalDimension > 1
    ] - 1,
    conformalDimension > 1
  ],
  {n, 0, 4}
];

zInvariant =
  (Cosh[tE - tEp] - Sin[x] Sin[xp])/(Cos[x] Cos[xp]);
invariantLaplacianResidual = FullSimplify[
  Cos[x]^2 * (
    D[F[zInvariant], {tE, 2}] + D[F[zInvariant], {x, 2}]
  )
    - ((zInvariant^2 - 1) F''[zInvariant]
      + 2 zInvariant F'[zInvariant]),
  Assumptions -> Element[{tE, tEp, x, xp}, Reals]
];

legendreGreenResidual = FullSimplify[
  (z^2 - 1) D[LegendreQ[conformalDimension - 1, z], {z, 2}]
    + 2 z D[LegendreQ[conformalDimension - 1, z], z]
    - conformalDimension (conformalDimension - 1) *
      LegendreQ[conformalDimension - 1, z],
  z > 1 && conformalDimension > 1
];

qOne[z_] := z/2 Log[(z + 1)/(z - 1)] - 1;
qOneEquationResidual = FullSimplify[
  (z^2 - 1) D[qOne[z], {z, 2}] + 2 z D[qOne[z], z] - 2 qOne[z],
  z > 1
];
qOneShortDistanceResidual = FullSimplify[
  Limit[qOne[z]/Log[z - 1], z -> 1, Direction -> "FromAbove"] + 1/2
];

deltaValue = 2;
rhoValue = 0.2;
rhoPrimeValue = -0.35;
timeSeparationValue = 0.7;
normalizationSquaredDeltaTwo[n_Integer] :=
  2^(2 deltaValue - 1) * Factorial[n] * (n + deltaValue) *
    Gamma[deltaValue]^2/(Pi * Gamma[n + 2 deltaValue]);
modeDeltaTwo[n_Integer, point_?NumericQ] :=
  N[Sqrt[normalizationSquaredDeltaTwo[n]]] * Cos[point]^deltaValue *
    GegenbauerC[n, deltaValue, Sin[point]];
greenModeSum = Total[Table[
  modeDeltaTwo[n, rhoValue] * modeDeltaTwo[n, rhoPrimeValue] *
    Exp[-(deltaValue + n) timeSeparationValue]/
      (2 (deltaValue + n)),
  {n, 0, 100}
]];
zValue =
  (Cosh[timeSeparationValue] - Sin[rhoValue] Sin[rhoPrimeValue])/
    (Cos[rhoValue] Cos[rhoPrimeValue]);
deltaTwoGreenResidual = Chop[
  greenModeSum - qOne[zValue]/(2 Pi),
  10^-13
];

results = <|
  "xCobaCurvatureResidual" -> xCobaCurvatureResidual,
  "GeneralStaticCurvatureResidual" -> generalStaticCurvatureResidual,
  "KineticDensityResidual" -> kineticDensityResidual,
  "PotentialDensityResidual" -> potentialDensityResidual,
  "Sl2AlgebraResiduals" -> sl2AlgebraResiduals,
  "CasimirResidual" -> casimirResidual,
  "ModeResiduals" -> modeResiduals,
  "EnergyResiduals" -> energyResiduals,
  "RaisingResiduals" -> raisingResiduals,
  "LoweringResiduals" -> loweringResiduals,
  "PrimaryResidual" -> primaryResidual,
  "NormalizationResiduals" -> normalizationResiduals,
  "InvariantLaplacianResidual" -> invariantLaplacianResidual,
  "LegendreGreenResidual" -> legendreGreenResidual,
  "QOneEquationResidual" -> qOneEquationResidual,
  "QOneShortDistanceResidual" -> qOneShortDistanceResidual,
  "DeltaTwoGreenResidual" -> deltaTwoGreenResidual
|>;

Print[results];

allResiduals = Flatten[Values[results]];
If[
  !And @@ (TrueQ[FullSimplify[# == 0, modeAssumptions && adsRadius > 0]] & /@
    allResiduals),
  Exit[1]
];
