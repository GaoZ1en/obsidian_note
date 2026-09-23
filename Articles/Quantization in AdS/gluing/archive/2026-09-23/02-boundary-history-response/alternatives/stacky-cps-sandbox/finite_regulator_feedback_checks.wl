ExactMatrices[n_Integer, ell_, mass_] := Module[
  {ks, aa, gg, bb, dd, h2, mm, kk, om2},
  ks = Range[n] Pi/ell;
  aa = Table[(-1)^(j + 1) Sqrt[2 ell]/(j Pi), {j, n}];
  gg = aa ks^2;
  bb = Join[(ell/2) gg, (ell/2) gg];
  dd = Join[aa, aa];
  h2 = ell/3;
  om2 = Join[ks^2 + mass^2, ks^2 + mass^2];
  mm = IdentityMatrix[2 n]
    + Outer[Times, bb, dd]
    + Outer[Times, dd, bb]
    + 2 h2 Outer[Times, bb, bb];
  kk = DiagonalMatrix[om2]
    + mass^2 (Outer[Times, bb, dd] + Outer[Times, dd, bb])
    + 2 (mass^2 h2 + 1/ell) Outer[Times, bb, bb];
  <|"M" -> mm, "K" -> kk, "b" -> bb, "d" -> dd, "OmegaSquared" -> om2|>
];

PortAndFeedbackMatrices[n_Integer, ell_, mass_] := Module[
  {data, bb, dd, h2, om2, rho, portM, portK, feedbackM, feedbackK},
  data = ExactMatrices[n, ell, mass];
  bb = data["b"];
  dd = data["d"];
  h2 = ell/3;
  om2 = data["OmegaSquared"];
  rho = 2 h2 - dd.dd;
  portM = ArrayFlatten[{
    {IdentityMatrix[2 n], Transpose[{dd}]},
    {{dd}, {{2 h2}}}
  }];
  portK = ArrayFlatten[{
    {DiagonalMatrix[om2], mass^2 Transpose[{dd}]},
    {mass^2 {dd}, {{2 (1/ell + mass^2 h2)}}}
  }];
  feedbackM = IdentityMatrix[2 n] + Outer[Times, dd, bb];
  feedbackK = DiagonalMatrix[om2] + mass^2 Outer[Times, dd, bb];
  <|
    "Rho" -> rho,
    "PortM" -> portM,
    "PortK" -> portK,
    "FeedbackM" -> feedbackM,
    "FeedbackK" -> feedbackK
  |>
];

DirectIntegralMatrices[n_Integer, ell_, mass_] := Module[
  {data, bb, y, h, u, left, right, mm, kk},
  data = ExactMatrices[n, ell, mass];
  bb = data["b"];
  h[y_] := y/ell;
  u[j_, y_] := Sqrt[2/ell] Sin[j Pi y/ell];
  left[col_, y_] := If[col <= n, u[col, y], 0] + h[y] bb[[col]];
  right[col_, y_] := If[col > n, u[col - n, y], 0] + h[y] bb[[col]];
  mm = Table[
    FullSimplify@Integrate[
      left[i, y] left[j, y] + right[i, y] right[j, y],
      {y, 0, ell},
      Assumptions -> ell > 0
    ],
    {i, 2 n}, {j, 2 n}
  ];
  kk = Table[
    FullSimplify@Integrate[
      D[left[i, y], y] D[left[j, y], y]
        + D[right[i, y], y] D[right[j, y], y]
        + mass^2 (left[i, y] left[j, y] + right[i, y] right[j, y]),
      {y, 0, ell},
      Assumptions -> ell > 0 && mass > 0
    ],
    {i, 2 n}, {j, 2 n}
  ];
  <|"M" -> mm, "K" -> kk|>
];

DirectPortMatrices[n_Integer, ell_, mass_] := Module[
  {y, h, u, left, right, mm, kk},
  h[y_] := y/ell;
  u[j_, y_] := Sqrt[2/ell] Sin[j Pi y/ell];
  left[col_, y_] := Which[
    col <= n, u[col, y],
    col <= 2 n, 0,
    True, h[y]
  ];
  right[col_, y_] := Which[
    col <= n, 0,
    col <= 2 n, u[col - n, y],
    True, h[y]
  ];
  mm = Table[
    FullSimplify@Integrate[
      left[i, y] left[j, y] + right[i, y] right[j, y],
      {y, 0, ell},
      Assumptions -> ell > 0
    ],
    {i, 2 n + 1}, {j, 2 n + 1}
  ];
  kk = Table[
    FullSimplify@Integrate[
      D[left[i, y], y] D[left[j, y], y]
        + D[right[i, y], y] D[right[j, y], y]
        + mass^2 (left[i, y] left[j, y] + right[i, y] right[j, y]),
      {y, 0, ell},
      Assumptions -> ell > 0 && mass > 0
    ],
    {i, 2 n + 1}, {j, 2 n + 1}
  ];
  <|"M" -> mm, "K" -> kk|>
];

NumericChecks[n_Integer, ell_: 1, mass_: 1, prec_: 60] := Module[
  {
    exact, extra, mm, kk, portM, portK, feedbackM, feedbackK, rho,
    id, zero, jid, jm, mh, scan, evals, feedbackEvals,
    relativeResidual, feedbackRelativeResidual
  },
  exact = ExactMatrices[n, ell, mass];
  extra = PortAndFeedbackMatrices[n, ell, mass];
  mm = N[exact["M"], prec];
  kk = N[exact["K"], prec];
  portM = N[extra["PortM"], prec];
  portK = N[extra["PortK"], prec];
  feedbackM = N[extra["FeedbackM"], prec];
  feedbackK = N[extra["FeedbackK"], prec];
  rho = N[extra["Rho"], prec];
  id = IdentityMatrix[2 n];
  zero = ConstantArray[0, {2 n, 2 n}];
  jid = ArrayFlatten[{{zero, -id}, {id, zero}}];
  jm = ArrayFlatten[{{zero, -mm}, {mm, zero}}];
  mh = MatrixPower[mm, 1/2];
  scan = ArrayFlatten[{{mh, zero}, {zero, mh}}];
  evals = Sort[Eigenvalues[{kk, mm}]];
  feedbackEvals = Sort[Eigenvalues[{feedbackK, feedbackM}]];
  relativeResidual = Max@Table[
    Module[{unit, rel, expected},
      unit = UnitVector[n, j];
      rel = Join[unit, -unit];
      expected = mass^2 + (j Pi/ell)^2;
      Max[
        Max[Abs[mm.rel - rel]],
        Max[Abs[kk.rel - N[expected, prec] rel]]
      ]
    ],
    {j, n}
  ];
  feedbackRelativeResidual = Max@Table[
    Module[{unit, rel, expected},
      unit = UnitVector[n, j];
      rel = Join[unit, -unit];
      expected = mass^2 + (j Pi/ell)^2;
      Max[
        Max[Abs[feedbackM.rel - rel]],
        Max[Abs[feedbackK.rel - N[expected, prec] rel]]
      ]
    ],
    {j, n}
  ];
  <|
    "N" -> n,
    "MSymmetricResidual" -> Max[Abs[Flatten[mm - Transpose[mm]]]],
    "KSymmetricResidual" -> Max[Abs[Flatten[kk - Transpose[kk]]]],
    "MinEigenM" -> Min[Eigenvalues[mm]],
    "MinGeneralizedEigenvalue" -> Min[evals],
    "CanonicalResidual" -> Max[Abs[Flatten[Transpose[scan].jid.scan - jm]]],
    "RelativeSectorResidual" -> relativeResidual,
    "PortMSymmetricResidual" -> Max[Abs[Flatten[portM - Transpose[portM]]]],
    "PortKSymmetricResidual" -> Max[Abs[Flatten[portK - Transpose[portK]]]],
    "MinEigenPortM" -> Min[Eigenvalues[portM]],
    "MinGeneralizedEigenvaluePort" -> Min[Eigenvalues[{portK, portM}]],
    "Rho" -> rho,
    "RhoTailFormulaResidual" -> Abs[
      rho - N[2 ell/3 - (4 ell/Pi^2) Sum[1/j^2, {j, n}], prec]
    ],
    "FeedbackMSymmetricResidual"
      -> Max[Abs[Flatten[feedbackM - Transpose[feedbackM]]]],
    "FeedbackKSymmetricResidual"
      -> Max[Abs[Flatten[feedbackK - Transpose[feedbackK]]]],
    "ActionFeedbackEvolutionResidual" -> Max[Abs[Flatten[
      LinearSolve[mm, kk] - LinearSolve[feedbackM, feedbackK]
    ]]],
    "FeedbackRelativeSectorResidual" -> feedbackRelativeResidual,
    "Eigenvalues" -> evals,
    "FeedbackEigenvalues" -> feedbackEvals
  |>
];

exactFormula = ExactMatrices[2, 1, 1];
directFormula = DirectIntegralMatrices[2, 1, 1];
portFormula = PortAndFeedbackMatrices[2, 1, 1];
directPortFormula = DirectPortMatrices[2, 1, 1];
exactFormulaChecks = <|
  "DirectMassMatrix" -> TrueQ[FullSimplify[directFormula["M"] == exactFormula["M"]]],
  "DirectStiffnessMatrix" -> TrueQ[FullSimplify[directFormula["K"] == exactFormula["K"]]],
  "DirectPortMassMatrix"
    -> TrueQ[FullSimplify[directPortFormula["M"] == portFormula["PortM"]]],
  "DirectPortStiffnessMatrix"
    -> TrueQ[FullSimplify[directPortFormula["K"] == portFormula["PortK"]]]
|>;

testedNs = {1, 2, 4, 8, 16};
matrixChecks = NumericChecks /@ testedNs;
transportGrowthChecks = Table[
  Module[{data, bb, dd, mm, expectedNormSquared, expectedRayleigh},
    data = ExactMatrices[n, 1, 1];
    bb = data["b"];
    dd = data["d"];
    mm = data["M"];
    expectedNormSquared = Pi^2 Sum[j^2, {j, n}];
    expectedRayleigh = 1 + 4 n + (2 Pi^2/3) Sum[j^2, {j, n}];
    <|
      "N" -> n,
      "BNormSquaredIdentity"
        -> TrueQ[FullSimplify[bb.bb == expectedNormSquared]],
      "BDotDIdentity" -> TrueQ[FullSimplify[bb.dd == 2 n]],
      "MRayleighIdentity" -> TrueQ[FullSimplify[
        (bb.mm.bb)/(bb.bb) == expectedRayleigh
      ]]
    |>
  ],
  {n, testedNs}
];

windowNs = {4, 8, 16, 32, 64};
windowSize = 6;
windowErrors = Table[
  Module[{row, evals, feedbackEvals, expected},
    row = NumericChecks[n];
    evals = row["Eigenvalues"];
    feedbackEvals = row["FeedbackEigenvalues"];
    expected = N[Table[1 + (r Pi/2)^2, {r, windowSize}], 50];
    <|
      "N" -> n,
      "ActionMaxFirstSixSquaredFrequencyError"
        -> Max[Abs[Take[evals, windowSize] - expected]],
      "FeedbackMaxFirstSixSquaredFrequencyError"
        -> Max[Abs[Take[feedbackEvals, windowSize] - expected]]
    |>
  ],
  {n, windowNs}
];

tolerance = 10^-30;
allMatrixChecksPassed = And @@ Flatten@Table[
  {
    row["MSymmetricResidual"] < tolerance,
    row["KSymmetricResidual"] < tolerance,
    row["MinEigenM"] > 0,
    row["MinGeneralizedEigenvalue"] > 0,
    row["CanonicalResidual"] < tolerance,
    row["RelativeSectorResidual"] < tolerance,
    row["PortMSymmetricResidual"] < tolerance,
    row["PortKSymmetricResidual"] < tolerance,
    row["MinEigenPortM"] > 0,
    row["MinGeneralizedEigenvaluePort"] > 0,
    row["Rho"] > 0,
    row["RhoTailFormulaResidual"] < tolerance,
    row["ActionFeedbackEvolutionResidual"] > tolerance,
    row["FeedbackRelativeSectorResidual"] < tolerance
  },
  {row, matrixChecks}
];

actionWindowErrorValues = windowErrors[[All, "ActionMaxFirstSixSquaredFrequencyError"]];
feedbackWindowErrorValues = windowErrors[[All, "FeedbackMaxFirstSixSquaredFrequencyError"]];
actionFixedWindowErrorsDecrease = And @@ Thread[
  Rest[actionWindowErrorValues] < Most[actionWindowErrorValues]
];
feedbackFixedWindowErrorsDecrease = And @@ Thread[
  Rest[feedbackWindowErrorValues] < Most[feedbackWindowErrorValues]
];

report = <|
  "ExactFormulaChecks" -> exactFormulaChecks,
  "MatrixChecks" -> (
    KeyDrop[#, {"Eigenvalues", "FeedbackEigenvalues"}] & /@ matrixChecks
  ),
  "TransportGrowthChecks" -> transportGrowthChecks,
  "FixedWindowErrors" -> windowErrors,
  "ActionFixedWindowErrorsStrictlyDecrease" -> actionFixedWindowErrorsDecrease,
  "FeedbackFixedWindowErrorsStrictlyDecrease" -> feedbackFixedWindowErrorsDecrease,
  "AllPassed" -> And[
    And @@ Values[exactFormulaChecks],
    allMatrixChecksPassed,
    And @@ Flatten[Values[KeyDrop[#, "N"]] & /@ transportGrowthChecks],
    actionFixedWindowErrorsDecrease,
    feedbackFixedWindowErrorsDecrease
  ]
|>;

Print[InputForm[report]];

If[TrueQ[report["AllPassed"]], Exit[0], Exit[1]];
