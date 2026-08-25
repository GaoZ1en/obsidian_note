(* ::Package:: *)

(*
  Finite-N reduced-state and open-system checks for
  ../reduced-state-open-system-scalar.md.

  Exact analytic statements are proved in the note.  This script checks the
  displayed matrices, sector split, generalized spectrum, Gaussian
  covariances, Williamson spectra, response identity, time-domain
  elimination, noise commutator, and isolated-bath KMS/FDR weights.

  The entropy table and its N-dependence are numerical observations only.
  The large-N entropy, port-only covariance, and finite-family modular
  generator tables added below are likewise checked observations, not
  continuum theorems.
*)

ClearAll["Global`*"];

PortHamiltonianData[n_Integer, ell_: 1, mass_: 1] := Module[
  {aa, waveNumbers, frequencies, d0, b, rho, kappa, massMatrix,
   stiffnessMatrix},
  aa = Table[(-1)^(j + 1) Sqrt[2 ell]/(j Pi), {j, n}];
  waveNumbers = Table[j Pi/ell, {j, n}];
  frequencies = Sqrt[waveNumbers^2 + mass^2];
  d0 = DiagonalMatrix[frequencies^2];
  b = aa waveNumbers^2;
  rho = 2 ell/3 - 2 aa.aa;
  kappa = (4 n + 2)/ell + mass^2 rho;
  massMatrix = DiagonalMatrix[
    Join[ConstantArray[1, 2 n], {rho}]
  ];
  stiffnessMatrix = ArrayFlatten[{
    {d0, 0 d0, Transpose[{-b}]},
    {0 d0, d0, Transpose[{-b}]},
    {{-b}, {-b}, {{kappa}}}
  }];
  <|
    "A" -> aa,
    "WaveNumbers" -> waveNumbers,
    "Frequencies" -> frequencies,
    "D0" -> d0,
    "b" -> b,
    "Rho" -> rho,
    "Kappa" -> kappa,
    "M" -> massMatrix,
    "K" -> stiffnessMatrix
  |>
];

SectorTransform[n_Integer] := ArrayFlatten[{
  {
    IdentityMatrix[n]/Sqrt[2],
    IdentityMatrix[n]/Sqrt[2],
    ConstantArray[0, {n, 1}]
  },
  {
    IdentityMatrix[n]/Sqrt[2],
    -IdentityMatrix[n]/Sqrt[2],
    ConstantArray[0, {n, 1}]
  },
  {
    ConstantArray[0, {1, n}],
    ConstantArray[0, {1, n}],
    {{1}}
  }
}];

GroundCovariance[data_, precision_: 60] := Module[
  {massMatrix, stiffnessMatrix, mHalf, mInvHalf, dynamicalMatrix,
   eigenvalues, eigenvectors, order, frequencies, xCovariance,
   pCovariance},
  massMatrix = N[data["M"], precision];
  stiffnessMatrix = N[data["K"], precision];
  mHalf = DiagonalMatrix[Sqrt[Diagonal[massMatrix]]];
  mInvHalf = DiagonalMatrix[1/Sqrt[Diagonal[massMatrix]]];
  dynamicalMatrix = mInvHalf.stiffnessMatrix.mInvHalf;
  dynamicalMatrix = (dynamicalMatrix + Transpose[dynamicalMatrix])/2;
  {eigenvalues, eigenvectors} = Eigensystem[dynamicalMatrix];
  order = Ordering[eigenvalues];
  eigenvalues = eigenvalues[[order]];
  eigenvectors = eigenvectors[[order]];
  frequencies = Sqrt[eigenvalues];
  xCovariance = mInvHalf.Transpose[eigenvectors].
    DiagonalMatrix[1/(2 frequencies)].eigenvectors.mInvHalf;
  pCovariance = mHalf.Transpose[eigenvectors].
    DiagonalMatrix[frequencies/2].eigenvectors.mHalf;
  <|
    "Eigenvalues" -> eigenvalues,
    "Frequencies" -> frequencies,
    "Eigenvectors" -> eigenvectors,
    "X" -> xCovariance,
    "P" -> pCovariance,
    "MHalf" -> mHalf,
    "MInvHalf" -> mInvHalf
  |>
];

RegionalGroundCovariance[data_, precision_: 60] := Module[
  {n, plusMass, plusStiffness, plusData, plusCovariance,
   minusX, minusP, plusIndices},
  n = Length[data["A"]];
  plusMass = DiagonalMatrix[Join[ConstantArray[1, n], {data["Rho"]}]];
  plusStiffness = ArrayFlatten[{
    {data["D0"], Transpose[{-Sqrt[2] data["b"]}]},
    {{-Sqrt[2] data["b"]}, {{data["Kappa"]}}}
  }];
  plusData = <|"M" -> plusMass, "K" -> plusStiffness|>;
  plusCovariance = GroundCovariance[plusData, precision];
  minusX = DiagonalMatrix[1/(2 data["Frequencies"])];
  minusP = DiagonalMatrix[data["Frequencies"]/2];
  plusIndices = Range[n];
  <|
    "XInterior" -> (
      plusCovariance["X"][[plusIndices, plusIndices]] + minusX
    )/2,
    "PInterior" -> (
      plusCovariance["P"][[plusIndices, plusIndices]] + minusP
    )/2,
    "XPort" -> Last[Last[plusCovariance["X"]]],
    "PPort" -> Last[Last[plusCovariance["P"]]]
  |>
];

CachedRegionalGroundCovariance[n_Integer, ell_, mass_, precision_] :=
  CachedRegionalGroundCovariance[n, ell, mass, precision] =
    RegionalGroundCovariance[
      PortHamiltonianData[n, ell, mass], precision
    ];

ReducedSymplecticEigenvalues[xCovariance_, pCovariance_, indices_] :=
  Sort[Sqrt[Re[Eigenvalues[
    xCovariance[[indices, indices]].pCovariance[[indices, indices]]
  ]]]];

PortOnlyRow[n_Integer, ell_: 1, mass_: 1, precision_: 60] := Module[
  {covariance, xqq, pqq, nu, entropy},
  covariance = CachedRegionalGroundCovariance[n, ell, mass, precision];
  xqq = covariance["XPort"];
  pqq = covariance["PPort"];
  nu = Sqrt[xqq pqq];
  entropy = EntropyFromSymplecticEigenvalues[{nu}];
  <|
    "N" -> n,
    "Xqq" -> N[xqq, 18],
    "PpiPi" -> N[pqq, 18],
    "PortSymplecticEigenvalue" -> N[nu, 18],
    "PortEntropy" -> N[entropy, 18]
  |>
];

EntropyAsymptoticRow[n_Integer, ell_: 1, mass_: 1,
  precision_: 50] := Module[
  {covariance, values, entropy},
  covariance = CachedRegionalGroundCovariance[n, ell, mass, precision];
  values = ReducedSymplecticEigenvalues[
    covariance["XInterior"], covariance["PInterior"], Range[n]
  ];
  entropy = EntropyFromSymplecticEigenvalues[values];
  <|
    "N" -> n,
    "mL" -> N[mass ell, 12],
    "Entropy" -> N[entropy, 18],
    "EntropyMinusLogNOver6" -> N[entropy - Log[n]/6, 18]
  |>
];

AddDoublingSlopes[rows_List] := MapIndexed[
  Function[{row, index},
    If[
      First[index] == 1,
      Append[row, "DoublingSlope" -> Missing["NotApplicable"]],
      Append[
        row,
        "DoublingSlope" -> N[
          (row["Entropy"] - rows[[First[index] - 1]]["Entropy"])/
            Log[2],
          18
        ]
      ]
    ]
  ],
  rows
];

BulkBumpCoefficients[n_Integer, {left_, right_}, ell_: 1,
  precision_: 80] := Module[{normalization},
  normalization = Sqrt[NIntegrate[
    ((y - left)^3 (right - y)^3)^2,
    {y, left, right},
    WorkingPrecision -> precision,
    AccuracyGoal -> Floor[precision/2],
    PrecisionGoal -> Floor[precision/2]
  ]];
  Table[
    NIntegrate[
      Sqrt[2/ell] Sin[j Pi y/ell]
        (y - left)^3 (right - y)^3/normalization,
      {y, left, right},
      WorkingPrecision -> precision,
      AccuracyGoal -> Floor[precision/2],
      PrecisionGoal -> Floor[precision/2],
      Method -> "GlobalAdaptive"
    ],
    {j, n}
  ]
];

InteriorModularData[n_Integer, ell_: 1, mass_: 1,
  precision_: 100] := Module[
  {covariance, x, p, xValues, xVectors, xHalf, bMatrix, bValues,
   bVectors, order, nus, epsilon, williamsonA, gx, gp, generator,
   stationaryResidual, williamsonResidual},
  covariance = CachedRegionalGroundCovariance[n, ell, mass, precision];
  x = covariance["XInterior"];
  p = covariance["PInterior"];
  {xValues, xVectors} = Eigensystem[(x + Transpose[x])/2];
  xHalf = Transpose[xVectors].DiagonalMatrix[Sqrt[xValues]].xVectors;
  bMatrix = (xHalf.p.xHalf + Transpose[xHalf.p.xHalf])/2;
  {bValues, bVectors} = Eigensystem[bMatrix];
  order = Ordering[bValues];
  bValues = bValues[[order]];
  bVectors = bVectors[[order]];
  nus = Sqrt[bValues];
  epsilon = Log[(nus + 1/2)/(nus - 1/2)];
  williamsonA = xHalf.Transpose[bVectors].
    DiagonalMatrix[1/Sqrt[nus]];
  gx = Inverse[Transpose[williamsonA]].DiagonalMatrix[epsilon].
    Inverse[williamsonA];
  gp = williamsonA.DiagonalMatrix[epsilon].
    Transpose[williamsonA];
  generator = ArrayFlatten[{
    {ConstantArray[0, {n, n}], gp},
    {-gx, ConstantArray[0, {n, n}]}
  }];
  williamsonResidual = Max[Abs[Flatten[Join[
    x - williamsonA.DiagonalMatrix[nus].Transpose[williamsonA],
    p - Inverse[Transpose[williamsonA]].DiagonalMatrix[nus].
      Inverse[williamsonA]
  ]]]];
  stationaryResidual = Max[Abs[Flatten[
    generator.ArrayFlatten[{{x, 0 x}, {0 p, p}}] +
      ArrayFlatten[{{x, 0 x}, {0 p, p}}].Transpose[generator]
  ]]];
  <|
    "X" -> x,
    "P" -> p,
    "SymplecticEigenvalues" -> nus,
    "Epsilon" -> epsilon,
    "Gx" -> gx,
    "Gp" -> gp,
    "Generator" -> generator,
    "WilliamsonReconstructionResidual" -> williamsonResidual,
    "StationaryResidual" -> stationaryResidual
  |>
];

ModularFixedFamilyRow[n_Integer, ell_: 1, mass_: 1,
  precision_: 100] := Module[
  {data, f, g, dPhiMomentum, dPiPosition},
  data = InteriorModularData[n, ell, mass, precision];
  f = BulkBumpCoefficients[n, {ell/4, 3 ell/4}, ell, precision];
  g = BulkBumpCoefficients[n, {ell/5, 2 ell/3}, ell, precision];
  dPhiMomentum = data["Gp"].f;
  dPiPosition = -data["Gx"].g;
  <|
    "N" -> n,
    "MinimumNuMinusHalf" -> N[
      Min[data["SymplecticEigenvalues"] - 1/2], 12
    ],
    "MaximumModularFrequency" -> N[Max[data["Epsilon"]], 12],
    "StationaryResidual" -> N[data["StationaryResidual"], 12],
    "WilliamsonReconstructionResidual" -> N[
      data["WilliamsonReconstructionResidual"], 12
    ],
    "PhiPhiCommutatorPairing" -> N[g.dPhiMomentum, 16],
    "PhiPiCovariancePairing" -> N[
      dPhiMomentum.data["P"].g, 16
    ],
    "PiPiCommutatorPairing" -> N[f.dPiPosition, 16],
    "PiPhiCovariancePairing" -> N[
      dPiPosition.data["X"].f, 16
    ],
    "DeltaPhiCoefficientNorm" -> N[Norm[dPhiMomentum], 12],
    "DeltaPiCoefficientNorm" -> N[Norm[dPiPosition], 12]
  |>
];

EntropyFromSymplecticEigenvalues[values_] := Total[
  Map[
    Function[nu,
      If[
        nu - 1/2 < 10^-12,
        0,
        (nu + 1/2) Log[nu + 1/2] -
          (nu - 1/2) Log[nu - 1/2]
      ]
    ],
    values
  ]
];

NontrivialSpectrum[values_] := Select[values, # > 1/2 + 10^-9 &];

ResponseC[data_, z_] := Module[
  {waveNumbers, b, rho, kappa, mass},
  waveNumbers = data["WaveNumbers"];
  b = data["b"];
  rho = data["Rho"];
  kappa = data["Kappa"];
  mass = Sqrt[First[Diagonal[data["D0"]]] - First[waveNumbers]^2];
  kappa - rho (mass^2 + z) -
    2 Total[b^2/(waveNumbers^2 - z)]
];

Responsec[data_, z_, ell_: 1] := Module[
  {aa, waveNumbers, rho},
  aa = data["A"];
  waveNumbers = data["WaveNumbers"];
  rho = data["Rho"];
  2/ell - rho z -
    2 z Total[aa^2 waveNumbers^2/(waveNumbers^2 - z)]
];

FiniteRow[n_Integer, ell_: 1, mass_: 1, precision_: 60] := Module[
  {data, covariance, massMatrix, stiffnessMatrix, transform,
   transformedMass, transformedStiffness, plusPort, minus, cross,
   plusMass, plusStiffness, plusSquaredFrequencies, plusMomentaSquared,
   antiSquaredFrequencies, fullSymplectic, interiorIndices,
   portCompleteIndices, interiorComplementIndices,
   portCompleteComplementIndices, interiorSymplectic,
   portCompleteSymplectic, interiorComplementSymplectic,
   portCompleteComplementSymplectic, interiorNontrivial,
   portCompleteNontrivial, interiorComplementNontrivial,
   portCompleteComplementNontrivial, responseResiduals,
   interlacingPassed, identity},
  data = PortHamiltonianData[n, ell, mass];
  covariance = GroundCovariance[data, precision];
  massMatrix = N[data["M"], precision];
  stiffnessMatrix = N[data["K"], precision];
  transform = N[SectorTransform[n], precision];
  transformedMass = Transpose[transform].massMatrix.transform;
  transformedStiffness = Transpose[transform].stiffnessMatrix.transform;
  plusPort = Join[Range[n], {2 n + 1}];
  minus = Range[n + 1, 2 n];
  cross = transformedStiffness[[plusPort, minus]];
  plusMass = transformedMass[[plusPort, plusPort]];
  plusStiffness = transformedStiffness[[plusPort, plusPort]];
  plusSquaredFrequencies = Sort[Eigenvalues[{
    plusStiffness, plusMass
  }]];
  plusMomentaSquared = plusSquaredFrequencies - mass^2;
  antiSquaredFrequencies = Sort[Eigenvalues[{
    transformedStiffness[[minus, minus]],
    transformedMass[[minus, minus]]
  }]];
  responseResiduals = Quiet[
    Map[
      Abs[ResponseC[data, #]]/(1 + Abs[data["Kappa"]]) &,
      plusMomentaSquared
    ],
    {Divide::indet, Divide::infy}
  ];
  interlacingPassed = And[
    First[plusMomentaSquared] > 0,
    And @@ Table[
      plusMomentaSquared[[j]] < data["WaveNumbers"][[j]]^2 <
        plusMomentaSquared[[j + 1]],
      {j, n}
    ]
  ];
  identity = IdentityMatrix[2 n + 1];
  fullSymplectic = Sort[Sqrt[Re[Eigenvalues[
    covariance["X"].covariance["P"]
  ]]]];
  interiorIndices = Range[n];
  portCompleteIndices = Join[Range[n], {2 n + 1}];
  interiorComplementIndices = Join[Range[n + 1, 2 n], {2 n + 1}];
  portCompleteComplementIndices = Range[n + 1, 2 n];
  interiorSymplectic = ReducedSymplecticEigenvalues[
    covariance["X"], covariance["P"], interiorIndices
  ];
  portCompleteSymplectic = ReducedSymplecticEigenvalues[
    covariance["X"], covariance["P"], portCompleteIndices
  ];
  interiorComplementSymplectic = ReducedSymplecticEigenvalues[
    covariance["X"], covariance["P"], interiorComplementIndices
  ];
  portCompleteComplementSymplectic = ReducedSymplecticEigenvalues[
    covariance["X"], covariance["P"], portCompleteComplementIndices
  ];
  interiorNontrivial = NontrivialSpectrum[interiorSymplectic];
  portCompleteNontrivial = NontrivialSpectrum[portCompleteSymplectic];
  interiorComplementNontrivial =
    NontrivialSpectrum[interiorComplementSymplectic];
  portCompleteComplementNontrivial =
    NontrivialSpectrum[portCompleteComplementSymplectic];
  <|
    "N" -> n,
    "Rho" -> N[data["Rho"], 16],
    "MinimumStiffnessEigenvalue" -> N[Min[Eigenvalues[stiffnessMatrix]], 16],
    "SectorCouplingResidual" -> Max[Abs[Flatten[cross]]],
    "AntisymmetricSpectrumResidual" -> Max[Abs[
      antiSquaredFrequencies - data["Frequencies"]^2
    ]],
    "SymmetricResponseResidual" -> Max[responseResiduals],
    "SymmetricInterlacingPassed" -> interlacingPassed,
    "CovariancePurityResidual" -> Max[Abs[Flatten[
      covariance["X"].covariance["P"] - identity/4
    ]]],
    "FullMinimumSymplecticEigenvalue" -> First[fullSymplectic],
    "InteriorMinimumSymplecticEigenvalue" -> First[interiorSymplectic],
    "InteriorMaximumSymplecticEigenvalue" -> Last[interiorSymplectic],
    "PortCompleteMinimumSymplecticEigenvalue" -> First[portCompleteSymplectic],
    "PortCompleteMaximumSymplecticEigenvalue" -> Last[portCompleteSymplectic],
    "InteriorEntropy" -> N[
      EntropyFromSymplecticEigenvalues[interiorSymplectic], 16
    ],
    "PortCompleteEntropy" -> N[
      EntropyFromSymplecticEigenvalues[portCompleteSymplectic], 16
    ],
    "InteriorComplementSpectrumResidual" -> If[
      Length[interiorNontrivial] == Length[interiorComplementNontrivial],
      Max[Abs[interiorNontrivial - interiorComplementNontrivial]],
      Infinity
    ],
    "PortCompleteComplementSpectrumResidual" -> If[
      Length[portCompleteNontrivial] ==
        Length[portCompleteComplementNontrivial],
      Max[Abs[portCompleteNontrivial - portCompleteComplementNontrivial]],
      Infinity
    ]
  |>
];

TimeDomainEliminationCheck[n_Integer: 4, ell_: 1, mass_: 1,
  precision_: 50] := Module[
  {data, covariance, dimension, massMatrix, stiffnessMatrix, mHalf,
   mInvHalf, dynamicalMatrix, eigenvalues, eigenvectors, order,
   normalFrequencies, x0, xdot0, qbar0, qbarDot0, fullSolution,
   c20, v20, qForcing, drivenSolution, differences, testedTimes,
   fullAcceleration, equationResidual, y},
  data = PortHamiltonianData[n, ell, mass];
  covariance = GroundCovariance[data, precision];
  dimension = 2 n + 1;
  massMatrix = N[data["M"], precision];
  stiffnessMatrix = N[data["K"], precision];
  mHalf = covariance["MHalf"];
  mInvHalf = covariance["MInvHalf"];
  dynamicalMatrix = mInvHalf.stiffnessMatrix.mInvHalf;
  {eigenvalues, eigenvectors} = Eigensystem[dynamicalMatrix];
  order = Ordering[eigenvalues];
  eigenvalues = eigenvalues[[order]];
  eigenvectors = eigenvectors[[order]];
  normalFrequencies = Sqrt[eigenvalues];
  x0 = N[Table[Sin[j]/(j + 1), {j, dimension}], precision];
  xdot0 = N[Table[Cos[2 j]/(j + 2), {j, dimension}], precision];
  qbar0 = mHalf.x0;
  qbarDot0 = mHalf.xdot0;
  fullSolution[t_?NumericQ] := mInvHalf.Transpose[eigenvectors].(
    Cos[normalFrequencies t] (eigenvectors.qbar0) +
      Sin[normalFrequencies t]/normalFrequencies
        (eigenvectors.qbarDot0)
  );
  fullAcceleration[t_?NumericQ] := -mInvHalf.Transpose[eigenvectors].(
    normalFrequencies^2 (
      Cos[normalFrequencies t] (eigenvectors.qbar0) +
        Sin[normalFrequencies t]/normalFrequencies
          (eigenvectors.qbarDot0)
    )
  );
  c20 = x0[[n + 1 ;; 2 n]];
  v20 = xdot0[[n + 1 ;; 2 n]];
  qForcing[t_?NumericQ] := Last[fullSolution[t]];
  drivenSolution = NDSolveValue[
    {
      y''[t] == -N[data["D0"], 35].y[t] +
        N[data["b"], 35] qForcing[t],
      y[0] == N[c20, 35],
      y'[0] == N[v20, 35]
    },
    y,
    {t, 0, 1},
    WorkingPrecision -> 35,
    AccuracyGoal -> 22,
    PrecisionGoal -> 22
  ];
  testedTimes = {1/5, 3/5, 1};
  equationResidual = Max[Abs[Flatten[Table[
    massMatrix.fullAcceleration[t] + stiffnessMatrix.fullSolution[t],
    {t, testedTimes}
  ]]]];
  differences = Table[
    fullSolution[t][[n + 1 ;; 2 n]] -
      drivenSolution[t],
    {t, testedTimes}
  ];
  <|
    "DrivenEliminationResidual" -> Max[Abs[Flatten[differences]]],
    "FullEquationResidual" -> equationResidual
  |>
];

NoiseChecks[n_Integer: 6, ell_: 1, mass_: 1, beta_: 3,
  precision_: 60] := Module[
  {data, covariance, b, frequencies, xCoefficient, pCoefficient,
   commutatorCoefficient, commutatorTarget, commutatorResidual,
   dissipativeWeights, kmsNoiseWeights, fdrResidual, x22, p22,
   actualNoise, stationarityDefect, systemPositionIndices,
   initialCrossCorrelation},
  data = PortHamiltonianData[n, ell, mass];
  covariance = GroundCovariance[data, precision];
  b = N[data["b"], precision];
  frequencies = N[data["Frequencies"], precision];
  xCoefficient[t_] := b Cos[frequencies t];
  pCoefficient[t_] := b Sin[frequencies t]/frequencies;
  commutatorCoefficient[t_, s_] :=
    xCoefficient[t].pCoefficient[s] - pCoefficient[t].xCoefficient[s];
  commutatorTarget[t_, s_] :=
    -Total[b^2 Sin[frequencies (t - s)]/frequencies];
  commutatorResidual = Abs[
    commutatorCoefficient[7/10, 1/5] - commutatorTarget[7/10, 1/5]
  ];
  dissipativeWeights = b^2/(2 frequencies);
  kmsNoiseWeights = dissipativeWeights Coth[beta frequencies/2];
  fdrResidual = Max[Abs[
    kmsNoiseWeights - Coth[beta frequencies/2] dissipativeWeights
  ]];
  x22 = covariance["X"][[n + 1 ;; 2 n, n + 1 ;; 2 n]];
  p22 = covariance["P"][[n + 1 ;; 2 n, n + 1 ;; 2 n]];
  actualNoise[t_, s_] :=
    xCoefficient[t].x22.xCoefficient[s] +
      pCoefficient[t].p22.pCoefficient[s];
  stationarityDefect = Abs[
    actualNoise[7/10, 1/5] - actualNoise[1/2, 0]
  ];
  systemPositionIndices = Join[Range[n], {2 n + 1}];
  initialCrossCorrelation = Norm[
    b.covariance["X"][[n + 1 ;; 2 n, systemPositionIndices]]
  ];
  <|
    "NoiseCommutatorResidual" -> commutatorResidual,
    "IsolatedBathKMSFDRWeightResidual" -> fdrResidual,
    "ActualGluedVacuumStationarityDefect" -> stationarityDefect,
    "ActualGluedVacuumInitialCrossCorrelation" ->
      initialCrossCorrelation
  |>
];

symbolicChecks = FullSimplify[
  Module[
    {n = 3, ell, mass, data, z, responseDerivativeTarget,
     stiffnessSchurTarget},
    data = PortHamiltonianData[n, ell, mass];
    responseDerivativeTarget = -data["Rho"] -
      2 Total[
        data["A"]^2 data["WaveNumbers"]^4/
          (data["WaveNumbers"]^2 - z)^2
      ];
    stiffnessSchurTarget = 2/ell + mass^2 data["Rho"] +
      4 mass^2/ell Total[1/(data["WaveNumbers"]^2 + mass^2)];
    {
      ResponseC[data, z] == Responsec[data, z, ell],
      D[Responsec[data, z, ell], z] == responseDerivativeTarget,
      data["Kappa"] -
        2 data["b"].Inverse[data["D0"]].data["b"] ==
          stiffnessSchurTarget,
      data["Rho"] ==
        4 ell/Pi^2 Sum[1/j^2, {j, n + 1, Infinity}]
    }
  ],
  Assumptions -> {ell > 0, mass > 0, z > 0}
];

testedNs = {2, 4, 8, 16, 32};
rows = Quiet[
  FiniteRow /@ testedNs,
  {Divide::indet, Divide::infy}
];
largeEntropyNs = {32, 64, 128, 256};
largeEntropyRows = AddDoublingSlopes[
  EntropyAsymptoticRow[#, 1, 1, 50] & /@ largeEntropyNs
];
massDependenceRows = Association@Table[
  ToString[N[mass]] -> AddDoublingSlopes[
    EntropyAsymptoticRow[#, 1, mass, MachinePrecision] & /@
      {64, 128, 256}
  ],
  {mass, {1/2, 2, 4}}
];
massDependenceRows["1"] = Rest[largeEntropyRows];
portOnlyRows = PortOnlyRow[#, 1, 1, 50] & /@ {8, 16, 32, 64};
modularFixedFamilyRows = ModularFixedFamilyRow[#, 1, 1, 110] & /@
  {4, 6, 8, 10, 12, 16, 20, 24, 28};
timeDomainEliminationCheck = TimeDomainEliminationCheck[];
timeDomainEliminationResidual =
  timeDomainEliminationCheck["DrivenEliminationResidual"];
noiseChecks = NoiseChecks[];
tolerance = 10^-8;

allChecksPassed = And[
  And @@ symbolicChecks,
  timeDomainEliminationResidual < tolerance,
  noiseChecks["NoiseCommutatorResidual"] < tolerance,
  noiseChecks["IsolatedBathKMSFDRWeightResidual"] < tolerance,
  noiseChecks["ActualGluedVacuumStationarityDefect"] > 10^-8,
  noiseChecks["ActualGluedVacuumInitialCrossCorrelation"] > 10^-8,
  And @@ (#["PortSymplecticEigenvalue"] > 1/2 & /@ portOnlyRows),
  And @@ (#["PortEntropy"] > 0 & /@ portOnlyRows),
  And @@ (Chop[#["StationaryResidual"], 10^-20] == 0 & /@
    modularFixedFamilyRows),
  And @@ (#["WilliamsonReconstructionResidual"] < 10^-30 & /@
    modularFixedFamilyRows),
  And @@ Table[
    And[
      row["Rho"] > 0,
      row["MinimumStiffnessEigenvalue"] > 0,
      row["SectorCouplingResidual"] < tolerance,
      row["AntisymmetricSpectrumResidual"] < tolerance,
      row["SymmetricResponseResidual"] < tolerance,
      TrueQ[row["SymmetricInterlacingPassed"]],
      row["CovariancePurityResidual"] < tolerance,
      row["FullMinimumSymplecticEigenvalue"] >= 1/2 - tolerance,
      row["InteriorMinimumSymplecticEigenvalue"] >= 1/2 - tolerance,
      row["PortCompleteMinimumSymplecticEigenvalue"] >= 1/2 - tolerance,
      row["InteriorComplementSpectrumResidual"] < tolerance,
      row["PortCompleteComplementSpectrumResidual"] < tolerance
    ],
    {row, rows}
  ]
];

report = <|
  "Parameters" -> <|"L" -> 1, "m" -> 1, "Beta" -> 3|>,
  "SymbolicChecks" -> symbolicChecks,
  "Rows" -> rows,
  "LargeEntropyRows" -> largeEntropyRows,
  "MassDependenceRows" -> massDependenceRows,
  "PortOnlyRows" -> portOnlyRows,
  "ModularFixedFamilyRows" -> modularFixedFamilyRows,
  "TimeDomainEliminationCheck" -> timeDomainEliminationCheck,
  "NoiseChecks" -> noiseChecks,
  "AllChecksPassed" -> allChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[allChecksPassed], Exit[0], Exit[1]];
