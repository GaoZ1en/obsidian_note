(* ::Package:: *)

(* ===================================================================== *)
(*  Maxwell theory on a cut interval times S^1                          *)
(*                                                                       *)
(*  The Gauss-reduced transverse vector modes are compared channel by    *)
(*  channel. A polar finite overlap gives an exact symplectic map. The   *)
(*  angular zero-mode rotor is checked separately.                       *)
(* ===================================================================== *)

ClearAll["Global`*"];

ellLength = 1;
circleRadius = 1;
coupling = 2;
workingPrecision = 60;
tolerance = 10^-35;
$MaxExtraPrecision = 10000;
testFailed = False;

assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

cosineOverlap[n_, j_] := If[n == 0,
  Sqrt[2] (-1)^(j + 1)/((j - 1/2) Pi),
  (-1)^(n + j) (2 j - 1)/
    (Pi (n^2 - (j - 1/2)^2))
];

regionalRadialIndices[Nmax_, angularMomentum_] :=
  If[angularMomentum == 0, Range[1, Nmax], Range[0, Nmax - 1]];

vectorOverlapMatrix[Nmax_, angularMomentum_] := Module[
  {nValues, jValues, angularWaveNumber},
  nValues = regionalRadialIndices[Nmax, angularMomentum];
  jValues = Range[1, Nmax];
  angularWaveNumber = Abs[angularMomentum]/circleRadius;
  N[Table[
    Sqrt[angularWaveNumber^2 + (n Pi/ellLength)^2]/
      Sqrt[angularWaveNumber^2 + ((j - 1/2) Pi/ellLength)^2]
      cosineOverlap[n, j],
    {n, nValues}, {j, jValues}],
    workingPrecision
  ]
];

polarOrthogonalMaxwell[matrix_] := Module[{u, singularValues, v},
  {u, singularValues, v} = SingularValueDecomposition[matrix];
  u . Transpose[v]
];

symplecticMatrixMaxwell[modeCount_] := Module[{zero, identity},
  zero = ConstantArray[0, {modeCount, modeCount}];
  identity = IdentityMatrix[modeCount];
  ArrayFlatten[{{zero, identity}, {-identity, zero}}]
];

maxwellChannelData[Nmax_, angularMomentum_] := Module[
  {nValues, jValues, angularWaveNumber, overlap, orthogonalOverlap,
   identity, zero, configurationMap, s, jMatrix,
   omegaRegional, omegaGlobalAffected, sqrtRegional, sqrtGlobal,
   alpha, beta, globalFrequenciesSquared, globalHamiltonian,
   regionalHamiltonian, sigmaGlobal, sigmaRegional},
  nValues = regionalRadialIndices[Nmax, angularMomentum];
  jValues = Range[1, Nmax];
  angularWaveNumber = Abs[angularMomentum]/circleRadius;
  overlap = vectorOverlapMatrix[Nmax, angularMomentum];
  orthogonalOverlap = polarOrthogonalMaxwell[overlap];
  identity = IdentityMatrix[Nmax];
  zero = ConstantArray[0, {2 Nmax, 2 Nmax}];
  configurationMap = ArrayFlatten[{
    {orthogonalOverlap, ConstantArray[0, {Nmax, Nmax}]},
    {ConstantArray[0, {Nmax, Nmax}], identity}
  }];
  s = ArrayFlatten[{
    {configurationMap, zero},
    {zero, Inverse[Transpose[configurationMap]]}
  }];
  jMatrix = symplecticMatrixMaxwell[2 Nmax];
  omegaRegional = Sqrt[
    angularWaveNumber^2 + (Pi nValues/ellLength)^2
  ];
  omegaGlobalAffected = Sqrt[
    angularWaveNumber^2 + (Pi (jValues - 1/2)/ellLength)^2
  ];
  sqrtRegional = DiagonalMatrix[Sqrt[omegaRegional]];
  sqrtGlobal = DiagonalMatrix[Sqrt[omegaGlobalAffected]];
  alpha = 1/2 (
    sqrtGlobal . Transpose[orthogonalOverlap] . Inverse[sqrtRegional]
    + Inverse[sqrtGlobal] . Transpose[orthogonalOverlap] . sqrtRegional
  );
  beta = 1/2 (
    sqrtGlobal . Transpose[orthogonalOverlap] . Inverse[sqrtRegional]
    - Inverse[sqrtGlobal] . Transpose[orthogonalOverlap] . sqrtRegional
  );
  globalFrequenciesSquared = Join[
    omegaGlobalAffected^2, omegaRegional^2
  ];
  globalHamiltonian = ArrayFlatten[{
    {DiagonalMatrix[globalFrequenciesSquared], zero},
    {zero, IdentityMatrix[2 Nmax]}
  }];
  regionalHamiltonian = Inverse[Transpose[s]] .
    globalHamiltonian . Inverse[s];
  sigmaGlobal = 1/2 ArrayFlatten[{
    {DiagonalMatrix[1/Sqrt[globalFrequenciesSquared]], zero},
    {zero, DiagonalMatrix[Sqrt[globalFrequenciesSquared]]}
  }];
  sigmaRegional = s . sigmaGlobal . Transpose[s];
  <|
    "RadialIndices" -> nValues,
    "AngularWaveNumber" -> angularWaveNumber,
    "Overlap" -> overlap,
    "OrthogonalOverlap" -> orthogonalOverlap,
    "ConfigurationMap" -> configurationMap,
    "S" -> s,
    "J" -> jMatrix,
    "OmegaRegional" -> omegaRegional,
    "OmegaGlobalAffected" -> omegaGlobalAffected,
    "Alpha" -> alpha,
    "Beta" -> beta,
    "GlobalFrequenciesSquared" -> globalFrequenciesSquared,
    "GlobalHamiltonian" -> globalHamiltonian,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>
];

regionalNeumannMode[n_, y_] := If[n == 0,
  1/Sqrt[ellLength],
  Sqrt[2/ellLength] Cos[n Pi y/ellLength]
];

regionalNeumannModeDerivative[n_, y_] := If[n == 0,
  0,
  -Sqrt[2/ellLength] (n Pi/ellLength) *
    Sin[n Pi y/ellLength]
];

globalAffectedNeumannMode[j_, y_] :=
  Sqrt[2/ellLength] Cos[(j - 1/2) Pi y/ellLength];

globalAffectedNeumannModeDerivative[j_, y_] :=
  -Sqrt[2/ellLength] ((j - 1/2) Pi/ellLength) *
    Sin[(j - 1/2) Pi y/ellLength];

vectorOverlapIntegral[n_, j_, angularMomentum_] := Module[
  {angularWaveNumber, regionalFrequency, globalFrequency},
  angularWaveNumber = Abs[angularMomentum]/circleRadius;
  regionalFrequency = Sqrt[
    angularWaveNumber^2 + (n Pi/ellLength)^2
  ];
  globalFrequency = Sqrt[
    angularWaveNumber^2 + ((j - 1/2) Pi/ellLength)^2
  ];
  NIntegrate[
    (angularWaveNumber^2 regionalNeumannMode[n, y]
        globalAffectedNeumannMode[j, y]
      + regionalNeumannModeDerivative[n, y]
        globalAffectedNeumannModeDerivative[j, y])/
      (regionalFrequency globalFrequency),
    {y, 0, ellLength}, WorkingPrecision -> 35,
    AccuracyGoal -> 25, PrecisionGoal -> 25
  ]
];

Do[
  Module[
    {data, nValues, integralBlock, overlapResidual,
     orthogonalityResidual, symplecticResidual,
     hamiltonianResidual, canonicalOne, canonicalTwo,
     purityResidual},
    data = maxwellChannelData[8, angularMomentum];
    nValues = data["RadialIndices"];
    integralBlock = Table[
      vectorOverlapIntegral[nValues[[nIndex]], jMode,
        angularMomentum],
      {nIndex, 1, 3}, {jMode, 1, 3}
    ];
    overlapResidual = Max[Abs[
      integralBlock - data["Overlap"][[1 ;; 3, 1 ;; 3]]
    ]];
    Print[
      "angular channel ", angularMomentum,
      " vector-overlap residual=", N[overlapResidual, 10]
    ];
    orthogonalityResidual = Max[Abs[
      Transpose[data["OrthogonalOverlap"]] .
        data["OrthogonalOverlap"] - IdentityMatrix[8]
    ]];
    symplecticResidual = Max[Abs[
      Transpose[data["S"]] . data["J"] . data["S"] - data["J"]
    ]];
    hamiltonianResidual = Max[Abs[
      Transpose[data["S"]] . data["RegionalHamiltonian"] . data["S"]
        - data["GlobalHamiltonian"]
    ]];
    canonicalOne = Max[Abs[
      data["Alpha"] . Transpose[data["Alpha"]]
        - data["Beta"] . Transpose[data["Beta"]]
        - IdentityMatrix[8]
    ]];
    canonicalTwo = Max[Abs[
      data["Alpha"] . Transpose[data["Beta"]]
        - data["Beta"] . Transpose[data["Alpha"]]
    ]];
    purityResidual = Max[Abs[
      data["SigmaRegional"] . data["J"] . data["SigmaRegional"]
        - data["J"]/4
    ]];

    assert["transverse-vector overlap formula in angular channel " <>
      ToString[angularMomentum], overlapResidual < 10^-30];
    assert["polar vector overlap is orthogonal in angular channel " <>
      ToString[angularMomentum], orthogonalityResidual < tolerance];
    assert["Maxwell channel map is symplectic in angular channel " <>
      ToString[angularMomentum], symplecticResidual < tolerance];
    assert["Maxwell channel Hamiltonians intertwine in angular channel " <>
      ToString[angularMomentum], hamiltonianResidual < tolerance];
    assert["Maxwell channel Bogoliubov identities in angular channel " <>
      ToString[angularMomentum], Max[canonicalOne, canonicalTwo] < tolerance];
    assert["Maxwell channel covariance is pure in angular channel " <>
      ToString[angularMomentum], purityResidual < tolerance];
  ],
  {angularMomentum, {0, 2}}
];

(* Harmonic angular-zero sector: the open axial Wilson line and uniform  *)
(* normal electric flux reduce exactly as in 1+1 Maxwell.                *)
length1 = 1;
length2 = 1;
jRotorRegional = {
  {0, 0, 1, 0}, {0, 0, 0, 1},
  {-1, 0, 0, 0}, {0, -1, 0, 0}
};
rotorEmbedding = {
  {1/2, 0}, {1/2, 0}, {0, 1}, {0, 1}
};
jRotorGlobal = {{0, 1}, {-1, 0}};
rotorHamiltonianRegional = DiagonalMatrix[{
  0, 0, coupling^2 length1, coupling^2 length2
}];
rotorHamiltonianGlobal = DiagonalMatrix[{
  0, coupling^2 (length1 + length2)
}];
assert[
  "cylinder harmonic Wilson-line sector has the global symplectic form",
  Transpose[rotorEmbedding] . jRotorRegional . rotorEmbedding
    == jRotorGlobal
];
assert[
  "cylinder harmonic electric-flux Hamiltonian glues exactly",
  Transpose[rotorEmbedding] . rotorHamiltonianRegional . rotorEmbedding
    == rotorHamiltonianGlobal
];
assert[
  "cylinder harmonic sector is a rotor, not an oscillator",
  rotorHamiltonianGlobal[[1, 1]] == 0
];

If[TrueQ[testFailed],
  Print["ERROR: Maxwell-cylinder checks failed."];
  $Failed,
  Print["All Maxwell-cylinder checks passed."]
];
