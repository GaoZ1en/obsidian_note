ClearAll[
  x, y, z1, z2, L, p, k, n, r, eCoupling, alpha, aDot, pCanonical,
  xShift, kappa, phase, teMode, tmMode, divergence, curl,
  hNeumann, uZero, uNeumann, hZero, jZero, hMode, jMode,
  sineValue, cosineValue, omegaSquared, teMatrix, tmMatrix,
  finiteDirichletBasis, finiteMasterBasis, finiteDirichletMass,
  finiteDirichletStiffness, finiteMasterMass, finiteMasterStiffness,
  oneDimensionalLagrangian, oneDimensionalMomentum,
  oneDimensionalHamiltonian, checks
];

xShift = x + L;
kappa = Sqrt[p^2 + k^2];
phase = Exp[I p z1];

teMode = {0, 0, Sin[k xShift]} phase;
tmMode = {I p Cos[k xShift], k Sin[k xShift], 0} phase/kappa;

divergence[vector_] :=
  D[vector[[1]], x] + D[vector[[2]], z1] + D[vector[[3]], z2];

curl[vector_] := {
  D[vector[[3]], z1] - D[vector[[2]], z2],
  D[vector[[1]], z2] - D[vector[[3]], x],
  D[vector[[2]], x] - D[vector[[1]], z1]
};

hNeumann = -y^2/(2 L);
uZero = 1/Sqrt[L];
uNeumann = Sqrt[2/L] Cos[n Pi y/L];

hZero = FullSimplify[
  Integrate[uZero hNeumann, {y, 0, L}],
  Assumptions -> L > 0
];
jZero = FullSimplify[
  Integrate[uZero D[hNeumann, {y, 2}], {y, 0, L}],
  Assumptions -> L > 0
];
hMode = FullSimplify[
  Integrate[uNeumann hNeumann, {y, 0, L}],
  Assumptions -> L > 0 && Element[n, Integers] && n >= 1
];
jMode = FullSimplify[
  Integrate[uNeumann D[hNeumann, {y, 2}], {y, 0, L}],
  Assumptions -> L > 0 && Element[n, Integers] && n >= 1
];

sineValue = Sin[k L];
cosineValue = Cos[k L];
omegaSquared = p^2 + k^2;

teMatrix = {
  {sineValue, 0, -1},
  {0, sineValue, -1},
  {k cosineValue, k cosineValue, 0}
};

tmMatrix = {
  {k sineValue, 0, -1},
  {0, k sineValue, -1},
  {omegaSquared cosineValue, omegaSquared cosineValue, 0}
};

finiteDirichletBasis = {
  Sqrt[2] Sin[Pi y],
  Sqrt[2] Sin[2 Pi y],
  y
};
finiteMasterBasis = {
  1,
  Sqrt[2] Cos[Pi y],
  Sqrt[2] Cos[2 Pi y],
  -y^2/2
};

finiteDirichletMass = Table[
  Integrate[
    finiteDirichletBasis[[row]] finiteDirichletBasis[[column]],
    {y, 0, 1}
  ],
  {row, Length[finiteDirichletBasis]},
  {column, Length[finiteDirichletBasis]}
];
finiteDirichletStiffness = Table[
  Integrate[
    D[finiteDirichletBasis[[row]], y]
      D[finiteDirichletBasis[[column]], y] +
    (3/2)^2 finiteDirichletBasis[[row]]
      finiteDirichletBasis[[column]],
    {y, 0, 1}
  ],
  {row, Length[finiteDirichletBasis]},
  {column, Length[finiteDirichletBasis]}
];
finiteMasterMass = Table[
  Integrate[
    (3/2)^2 finiteMasterBasis[[row]]
      finiteMasterBasis[[column]] +
    D[finiteMasterBasis[[row]], y]
      D[finiteMasterBasis[[column]], y],
    {y, 0, 1}
  ],
  {row, Length[finiteMasterBasis]},
  {column, Length[finiteMasterBasis]}
];
finiteMasterStiffness = Table[
  Integrate[
    (
      -D[finiteMasterBasis[[row]], {y, 2}] +
      (3/2)^2 finiteMasterBasis[[row]]
    )
    (
      -D[finiteMasterBasis[[column]], {y, 2}] +
      (3/2)^2 finiteMasterBasis[[column]]
    ),
    {y, 0, 1}
  ],
  {row, Length[finiteMasterBasis]},
  {column, Length[finiteMasterBasis]}
];

oneDimensionalLagrangian =
  (aDot - alpha)^2/(2 eCoupling^2 L);
oneDimensionalMomentum =
  D[oneDimensionalLagrangian, aDot];
oneDimensionalHamiltonian = FullSimplify[
  pCanonical aDot - oneDimensionalLagrangian /.
    First[Solve[pCanonical == oneDimensionalMomentum, aDot]]
];

checks = <|
  "TEDivergence" ->
    FullSimplify[divergence[teMode]] === 0,
  "TMDivergence" ->
    FullSimplify[divergence[tmMode]] === 0,
  "TECurlCurl" ->
    FullSimplify[
      curl[curl[teMode]] - (p^2 + k^2) teMode
    ] === {0, 0, 0},
  "TMCurlCurl" ->
    FullSimplify[
      curl[curl[tmMode]] - (p^2 + k^2) tmMode
    ] === {0, 0, 0},
  "TEGluingDeterminant" ->
    FullSimplify[Det[teMatrix] - k Sin[2 k L]] === 0,
  "TMGluingDeterminant" ->
    FullSimplify[
      Det[tmMatrix] - k (p^2 + k^2) Sin[2 k L]
    ] === 0,
  "NeumannLiftingZeroCoefficient" ->
    hZero === -L^(3/2)/6,
  "NeumannLiftingZeroSource" ->
    jZero === -1/Sqrt[L],
  "NeumannLiftingPositiveCoefficient" ->
    FullSimplify[
      hMode + (-1)^n Sqrt[2] L^(3/2)/(n^2 Pi^2),
      Assumptions -> L > 0 && Element[n, Integers] && n >= 1
    ] === 0,
  "NeumannLiftingPositiveSource" ->
    jMode === 0,
  "TMModalKineticCoefficient" ->
    FullSimplify[
      Integrate[
        p^2 uNeumann^2 + D[uNeumann, y]^2,
        {y, 0, L}
      ] - (p^2 + (n Pi/L)^2),
      Assumptions -> L > 0 && p > 0 &&
        Element[n, Integers] && n >= 1
    ] === 0,
  "TMModalStiffnessCoefficient" ->
    FullSimplify[
      Integrate[
        (D[uNeumann, {y, 2}] - p^2 uNeumann)^2,
        {y, 0, L}
      ] - (p^2 + (n Pi/L)^2)^2,
      Assumptions -> L > 0 && p > 0 &&
        Element[n, Integers] && n >= 1
    ] === 0,
  "TENormalization" ->
    FullSimplify[
      Integrate[
        Sin[r Pi (x + L)/(2 L)]^2/L,
        {x, -L, L}
      ],
      Assumptions -> L > 0 && Element[r, Integers] && r >= 1
    ] === 1,
  "TMNormalization" ->
    FullSimplify[
      Integrate[
        (
          p^2 Cos[r Pi (x + L)/(2 L)]^2 +
          (r Pi/(2 L))^2 Sin[r Pi (x + L)/(2 L)]^2
        )/
        (
          L (p^2 + (r Pi/(2 L))^2)
        ),
        {x, -L, L}
      ],
      Assumptions -> L > 0 && p > 0 &&
        Element[r, Integers] && r >= 1
    ] === 1,
  "FiniteDirichletMassPositive" ->
    Min[Eigenvalues[N[finiteDirichletMass, 40]]] > 0,
  "FiniteDirichletStiffnessPositive" ->
    Min[Eigenvalues[N[finiteDirichletStiffness, 40]]] > 0,
  "FiniteMasterMassPositive" ->
    Min[Eigenvalues[N[finiteMasterMass, 40]]] > 0,
  "FiniteMasterStiffnessPositive" ->
    Min[Eigenvalues[N[finiteMasterStiffness, 40]]] > 0,
  "OnePlusOneMomentum" ->
    oneDimensionalMomentum ===
      (aDot - alpha)/(eCoupling^2 L),
  "OnePlusOneHamiltonian" ->
    FullSimplify[
      oneDimensionalHamiltonian -
      (eCoupling^2 L pCanonical^2/2 + alpha pCanonical)
    ] === 0
|>;

Print[
  InputForm[
    <|
      "Checks" -> checks,
      "AllChecksPassed" -> And @@ Values[checks]
    |>
  ]
];
