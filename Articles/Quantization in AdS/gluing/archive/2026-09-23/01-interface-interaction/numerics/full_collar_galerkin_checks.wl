(* ::Package:: *)

(*
  Full positive-collar Galerkin benchmark.

  The cell-centered, mass-lumped discretization keeps every collar cell.
  The connected Hamiltonian retains every nearest-neighbour bond.  The
  declared regional reference Hamiltonian removes only the two bonds at
  x = +/-epsilon, producing Dirichlet-Neumann, Neumann-Neumann, and
  Neumann-Dirichlet blocks on the same finite phase space.
*)

ClearAll[
  buildDifferenceMatrix, sortedModes, connectedData, collarRow,
  continuumCollarColumnSum
];

buildDifferenceMatrix[n_Integer] := SparseArray[
  Join[
    {{1, 1} -> Sqrt[2]},
    Flatten[
      Table[
        {{j + 1, j} -> -1, {j + 1, j + 1} -> 1},
        {j, 1, n - 1}
      ],
      1
    ],
    {{n + 1, n} -> Sqrt[2]}
  ],
  {n + 1, n}
];

sortedModes[c_?MatrixQ] := Module[{vals, vecs, order},
  {vals, vecs} = Eigensystem[c];
  order = Ordering[vals];
  {vals[[order]], Transpose[vecs[[order]]]}
];

connectedData[n_Integer, mass_] := connectedData[n, mass] = Module[
  {h, b, massMatrix, stiffness, operator, values, modes},
  h = 2/n;
  b = buildDifferenceMatrix[n];
  massMatrix = h IdentityMatrix[n];
  stiffness = Normal[Transpose[b] . b]/h + mass^2 massMatrix;
  operator = stiffness/h;
  {values, modes} = sortedModes[N[operator]];
  <|"Stiffness" -> stiffness, "Operator" -> operator,
    "Values" -> values, "Modes" -> modes|>
];

collarRow[n_Integer, epsilon_, mass_: 1] := Module[
  {
    h, collarCells, leftBond, rightBond, b, weights, massMatrix,
    connectedStiffness, regionalStiffness, connectedOperator,
    regionalOperator, connectedValues, connectedModes, regionalValues,
    regionalModes, connectedFrequencies, regionalFrequencies, overlap,
    alpha, beta, energyValues, symplecticResidual, hamiltonianResidual,
    bogoliubovCCR1, bogoliubovCCR2, collarModeCount, globalData,
    energyCoefficientTarget
  },

  h = 2/n;
  collarCells = Round[2 epsilon/h];
  If[! EvenQ[n - collarCells] || collarCells < 1,
    Return[Failure["IncompatibleMesh", <|"N" -> n, "Epsilon" -> epsilon|>]]
  ];

  leftBond = (n - collarCells)/2;
  rightBond = (n + collarCells)/2;
  collarModeCount = collarCells;
  b = buildDifferenceMatrix[n];
  weights = ConstantArray[1, n + 1];
  weights[[leftBond + 1]] = 0;
  weights[[rightBond + 1]] = 0;

  massMatrix = h IdentityMatrix[n];
  globalData = connectedData[n, mass];
  connectedStiffness = globalData["Stiffness"];
  regionalStiffness =
    Normal[Transpose[b] . DiagonalMatrix[weights] . b]/h +
      mass^2 massMatrix;

  connectedOperator = globalData["Operator"];
  regionalOperator = regionalStiffness/h;
  connectedValues = globalData["Values"];
  connectedModes = globalData["Modes"];
  {regionalValues, regionalModes} = sortedModes[N[regionalOperator]];
  connectedFrequencies = Sqrt[connectedValues];
  regionalFrequencies = Sqrt[regionalValues];
  overlap = Transpose[connectedModes] . regionalModes;

  alpha = 1/2 (
      DiagonalMatrix[Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[1/Sqrt[regionalFrequencies]] +
      DiagonalMatrix[1/Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[Sqrt[regionalFrequencies]]
    );
  beta = 1/2 (
      DiagonalMatrix[Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[1/Sqrt[regionalFrequencies]] -
      DiagonalMatrix[1/Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[Sqrt[regionalFrequencies]]
    );

  energyValues = Eigenvalues[N[{connectedStiffness, regionalStiffness}]];
  energyCoefficientTarget =
    N[Tanh[mass (1 - epsilon)]/mass + Coth[mass epsilon]/mass];
  symplecticResidual = Max[Abs[Transpose[overlap] . overlap - IdentityMatrix[n]]];
  hamiltonianResidual = Max[
    Abs[
      Transpose[overlap] . DiagonalMatrix[connectedValues] . overlap -
        Transpose[regionalModes] . connectedOperator . regionalModes
    ]
  ];
  bogoliubovCCR1 = Max[Abs[alpha . Transpose[alpha] - beta . Transpose[beta] - IdentityMatrix[n]]];
  bogoliubovCCR2 = Max[Abs[alpha . Transpose[beta] - beta . Transpose[alpha]]];

  <|
    "N" -> n,
    "H" -> h,
    "Epsilon" -> epsilon,
    "CollarModeCount" -> collarModeCount,
    "MassEigenvalue" -> h,
    "MassConditionNumber" -> 1,
    "EnergyConditionNumber" -> Max[energyValues]/Min[energyValues],
    "HScaledEnergyConditionNumber" -> h Max[energyValues]/Min[energyValues],
    "EnergyCoefficientTarget" -> energyCoefficientTarget,
    "BetaHilbertSchmidtPartialSum" -> Total[Flatten[beta]^2],
    "CollarConstantColumnPartialSum" -> Total[beta[[All, 1]]^2],
    "SymplecticResidual" -> symplecticResidual,
    "HamiltonianResidual" -> hamiltonianResidual,
    "BogoliubovCCR1Residual" -> bogoliubovCCR1,
    "BogoliubovCCR2Residual" -> bogoliubovCCR2
  |>
];

continuumCollarColumnSum[cutoff_Integer, epsilon_, mass_: 1] := Module[
  {rows, momenta, frequencies, overlaps, betaColumn},
  rows = N[Range[1, cutoff, 2]];
  momenta = N[rows Pi/2];
  frequencies = Sqrt[mass^2 + momenta^2];
  overlaps =
    2 Sin[rows Pi/2] Sin[momenta epsilon]/
      (momenta Sqrt[2 epsilon]);
  betaColumn =
    overlaps/2 (Sqrt[frequencies/mass] - Sqrt[mass/frequencies]);
  Total[betaColumn^2]
];

nValues = {64, 128, 256, 512};
epsilonValues = {1/2, 1/4, 1/8};
fixedEpsilonRows = Flatten[
  Table[collarRow[n, epsilon], {epsilon, epsilonValues}, {n, nValues}],
  1
];
epsilonRows = collarRow[512, #] & /@ {1/2, 1/4, 1/8, 1/16};

columnCutoffs = {1023, 2047, 4095, 8191, 16383, 32767};
columnRows = Table[
  With[{sums = continuumCollarColumnSum[#, epsilon] & /@ columnCutoffs},
    <|
      "Epsilon" -> epsilon,
      "Cutoffs" -> columnCutoffs,
      "PartialSums" -> sums,
      "DoublingSlopes" -> Differences[sums]/Log[2],
      "LogCoefficientTarget" -> N[1/(4 Pi epsilon)]
    |>
  ],
  {epsilon, epsilonValues}
];

overlapIntegralResidual = FullSimplify[
  Integrate[Sin[k (x + 1)], {x, -epsilonSymbol, epsilonSymbol}] -
    2 Sin[k] Sin[k epsilonSymbol]/k,
  Assumptions -> 0 < epsilonSymbol < 1 && k > 0
];
hyperbolicResiduals = FullSimplify[
  {
    Coth[2 z] + Csch[2 z] - Coth[z],
    Coth[2 z] - Csch[2 z] - Tanh[z]
  },
  Assumptions -> z > 0
];

allRows = Join[fixedEpsilonRows, epsilonRows];
allChecksPassed = And[
  FreeQ[allRows, _Failure],
  Max[Lookup[allRows, "MassConditionNumber"]] == 1,
  Max[Lookup[allRows, "SymplecticResidual"]] < 10^-10,
  Max[Lookup[allRows, "HamiltonianResidual"]] < 10^-8,
  Max[Lookup[allRows, "BogoliubovCCR1Residual"]] < 10^-10,
  Max[Lookup[allRows, "BogoliubovCCR2Residual"]] < 10^-10,
  Max[
    Abs[
      Lookup[epsilonRows, "HScaledEnergyConditionNumber"] -
        Lookup[epsilonRows, "EnergyCoefficientTarget"]
    ]
  ] < 0.02,
  Max[
    Table[
      Abs[Last[row["DoublingSlopes"]] - row["LogCoefficientTarget"]],
      {row, columnRows}
    ]
  ] < 10^-4,
  overlapIntegralResidual === 0,
  hyperbolicResiduals === {0, 0}
];

Print[
  InputForm[
    <|
      "FixedEpsilonRows" -> fixedEpsilonRows,
      "EpsilonRowsAtN512" -> epsilonRows,
      "ContinuumCollarColumnRows" -> columnRows,
      "OverlapIntegralResidual" -> overlapIntegralResidual,
      "HyperbolicResiduals" -> hyperbolicResiduals,
      "AllChecksPassed" -> allChecksPassed
    |>
  ]
];

If[! TrueQ[allChecksPassed], Exit[1]];
