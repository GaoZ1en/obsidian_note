(* ::Package:: *)

(*
  Smooth-interface Gaussian regulator.

  The connected Dirichlet scalar is compared on the same mass-lumped
  cell-centered phase space with a Hamiltonian containing the normalized
  smooth potential g w_epsilon, where Integral[w_epsilon]=1.  The principal
  symbol and every configuration degree of freedom are unchanged.
*)

ClearAll[
  baseBump, smoothProfile, buildDifferenceMatrix, sortedModes, connectedData,
  smoothBarrierRow
];

baseBump[s_?NumericQ] := If[
  Abs[s] < 1,
  Exp[1 - 1/(1 - s^2)],
  0
];

bumpMass = NIntegrate[baseBump[s], {s, -1, 1}, WorkingPrecision -> 30];
smoothProfile[x_?NumericQ, epsilon_?NumericQ] :=
  baseBump[x/epsilon]/(epsilon bumpMass);

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

sortedModes[c_?MatrixQ] := Module[{values, vectors, order},
  {values, vectors} = Eigensystem[c];
  order = Ordering[values];
  {values[[order]], Transpose[vectors[[order]]]}
];

connectedData[n_Integer, mass_] := connectedData[n, mass] = Module[
  {h, b, massMatrix, stiffness, operator, values, modes},
  h = 2/n;
  b = buildDifferenceMatrix[n];
  massMatrix = h IdentityMatrix[n];
  stiffness = Normal[Transpose[b] . b]/h + mass^2 massMatrix;
  operator = stiffness/h;
  {values, modes} = sortedModes[N[operator]];
  <|
    "MassMatrix" -> massMatrix,
    "Stiffness" -> stiffness,
    "Operator" -> operator,
    "Values" -> values,
    "Modes" -> modes
  |>
];

smoothBarrierRow[
  n_Integer,
  epsilon_?NumericQ,
  coupling_?NumericQ,
  mass_: 1
] := Module[
  {
    h, points, profile, globalData, massMatrix, connectedStiffness,
    connectedOperator, connectedValues, connectedModes, barrierStiffness,
    barrierOperator, barrierValues, barrierModes, connectedFrequencies,
    barrierFrequencies, overlap, alpha, beta, energyValues,
    symplecticResidual, hamiltonianResidual, bogoliubovCCR1,
    bogoliubovCCR2
  },

  h = 2/n;
  points = Table[-1 + (j - 1/2) h, {j, 1, n}];
  profile = N[smoothProfile[#, epsilon] & /@ points];
  profile = profile/(h Total[profile]);
  globalData = connectedData[n, mass];
  massMatrix = globalData["MassMatrix"];
  connectedStiffness = globalData["Stiffness"];
  connectedOperator = globalData["Operator"];
  connectedValues = globalData["Values"];
  connectedModes = globalData["Modes"];

  barrierStiffness =
    connectedStiffness + coupling h DiagonalMatrix[profile];
  barrierOperator = barrierStiffness/h;
  {barrierValues, barrierModes} = sortedModes[N[barrierOperator]];
  connectedFrequencies = Sqrt[connectedValues];
  barrierFrequencies = Sqrt[barrierValues];
  overlap = Transpose[connectedModes] . barrierModes;

  alpha = 1/2 (
      DiagonalMatrix[Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[1/Sqrt[barrierFrequencies]] +
      DiagonalMatrix[1/Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[Sqrt[barrierFrequencies]]
    );
  beta = 1/2 (
      DiagonalMatrix[Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[1/Sqrt[barrierFrequencies]] -
      DiagonalMatrix[1/Sqrt[connectedFrequencies]] . overlap .
        DiagonalMatrix[Sqrt[barrierFrequencies]]
    );

  energyValues = Eigenvalues[N[{barrierStiffness, connectedStiffness}]];
  symplecticResidual =
    Max[Abs[Transpose[overlap] . overlap - IdentityMatrix[n]]];
  hamiltonianResidual = Max[
    Abs[
      Transpose[overlap] . DiagonalMatrix[connectedValues] . overlap -
        Transpose[barrierModes] . connectedOperator . barrierModes
    ]
  ];
  bogoliubovCCR1 = Max[
    Abs[
      alpha . Transpose[alpha] - beta . Transpose[beta] - IdentityMatrix[n]
    ]
  ];
  bogoliubovCCR2 =
    Max[Abs[alpha . Transpose[beta] - beta . Transpose[alpha]]];

  <|
    "N" -> n,
    "H" -> h,
    "Epsilon" -> epsilon,
    "Coupling" -> coupling,
    "ActiveCellCount" -> Count[profile, value_ /; value > 0],
    "ProfileMaximum" -> Max[profile],
    "ProfileMass" -> h Total[profile],
    "MassConditionNumber" -> 1,
    "EnergyConditionNumber" -> Max[energyValues]/Min[energyValues],
    "EnergyBound" -> 1 + coupling Tanh[mass]/(2 mass),
    "CellsPerBarrierLength" ->
      1/(h Sqrt[coupling/(epsilon bumpMass)]),
    "BetaHilbertSchmidtPartialSum" -> Total[Flatten[beta]^2],
    "SymplecticResidual" -> symplecticResidual,
    "HamiltonianResidual" -> hamiltonianResidual,
    "BogoliubovCCR1Residual" -> bogoliubovCCR1,
    "BogoliubovCCR2Residual" -> bogoliubovCCR2
  |>
];

nValues = {64, 128, 256, 512};
fixedParameterRows = smoothBarrierRow[#, 1/4, 4] & /@ nValues;
couplingValues = {1, 4, 16, 64, 256};
couplingRows = smoothBarrierRow[512, 1/4, #] & /@ couplingValues;
epsilonValues = {1/2, 1/4, 1/8, 1/16, 1/32, 1/64};
epsilonRows = smoothBarrierRow[512, #, 4] & /@ epsilonValues;
pointInteractionRows = smoothBarrierRow[#, 2/#, 4] & /@ nValues;

traceResolventResidual = FullSimplify[
  Sum[
    1/(massSymbol^2 + (r Pi/(2 lengthSymbol))^2),
    {r, 1, Infinity}
  ] -
    (lengthSymbol Coth[2 lengthSymbol massSymbol]/massSymbol -
      1/(2 massSymbol^2)),
  Assumptions -> lengthSymbol > 0 && massSymbol > 0
];

frequencyFactorResidual = FullSimplify[
  PowerExpand[
    Sqrt[omegaP/omegaJ] - Sqrt[omegaJ/omegaP] -
      (omegaP - omegaJ)/Sqrt[omegaP omegaJ]
  ],
  Assumptions -> omegaP > 0 && omegaJ > 0
];

deltaBetaResidual = FullSimplify[
  -couplingSymbol/(4 (omegaP^2 - omegaJ^2))
      (omegaP - omegaJ)/Sqrt[omegaP omegaJ] +
    couplingSymbol/(
      4 (omegaP + omegaJ) Sqrt[omegaP omegaJ]
    ),
  Assumptions ->
    couplingSymbol > 0 && omegaP > 0 && omegaJ > 0 && omegaP != omegaJ
];

allRows = Join[
  fixedParameterRows,
  couplingRows,
  epsilonRows,
  pointInteractionRows
];
allChecksPassed = And[
  Min[Lookup[allRows, "ProfileMaximum"]] > 0,
  Max[Abs[Lookup[allRows, "ProfileMass"] - 1]] < 10^-12,
  Max[Lookup[allRows, "MassConditionNumber"]] == 1,
  And @@ Thread[
    Lookup[allRows, "EnergyConditionNumber"] <=
      Lookup[allRows, "EnergyBound"] + 10^-8
  ],
  Max[Lookup[allRows, "SymplecticResidual"]] < 10^-10,
  Max[Lookup[allRows, "HamiltonianResidual"]] < 10^-8,
  Max[Lookup[allRows, "BogoliubovCCR1Residual"]] < 10^-10,
  Max[Lookup[allRows, "BogoliubovCCR2Residual"]] < 10^-10,
  Last[
    Abs[Differences[Lookup[fixedParameterRows, "BetaHilbertSchmidtPartialSum"]]]
  ] < 10^-5,
  traceResolventResidual === 0,
  frequencyFactorResidual === 0,
  deltaBetaResidual === 0
];

Print[
  InputForm[
    <|
      "FixedParameterRows" -> fixedParameterRows,
      "CouplingRowsAtN512" -> couplingRows,
      "EpsilonRowsAtN512" -> epsilonRows,
      "PointInteractionRows" -> pointInteractionRows,
      "TraceResolventResidual" -> traceResolventResidual,
      "FrequencyFactorResidual" -> frequencyFactorResidual,
      "DeltaBetaResidual" -> deltaBetaResidual,
      "AllChecksPassed" -> allChecksPassed
    |>
  ]
];

If[! TrueQ[allChecksPassed], Exit[1]];
