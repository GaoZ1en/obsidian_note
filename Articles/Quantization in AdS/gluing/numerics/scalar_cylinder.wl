(* ::Package:: *)

(* ===================================================================== *)
(*  Massive scalar on a cut interval times S^1                          *)
(*                                                                       *)
(*  Each angular channel is an interval problem with effective mass.     *)
(*  A polar-orthogonalized finite overlap supplies a canonical channel   *)
(*  regulator. Exact overlap partial sums diagnose the continuum         *)
(*  Shale--Stinespring condition.                                        *)
(* ===================================================================== *)

ClearAll["Global`*"];

ellLength = 1;
circleRadius = 1;
mass = 1;
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

integerHalfIntegerOverlap[n_, j_] :=
  (-1)^(n + j) 2 n/(Pi (n^2 - (j - 1/2)^2));

overlapMatrix[Nmax_] := N[
  Table[integerHalfIntegerOverlap[n, j], {n, 1, Nmax},
    {j, 1, Nmax}],
  workingPrecision
];

polarOrthogonal[matrix_] := matrix . MatrixPower[
  Transpose[matrix] . matrix, -1/2
];

symplecticMatrixCylinder[modeCount_] := Module[{zero, identity},
  zero = ConstantArray[0, {modeCount, modeCount}];
  identity = IdentityMatrix[modeCount];
  ArrayFlatten[{{zero, identity}, {-identity, zero}}]
];

channelData[Nmax_, angularMomentum_] := Module[
  {muSquared, overlap, orthogonalOverlap, identity, zero,
   configurationMap, s, j, radialRegional, radialGlobalOdd,
   omegaRegional, omegaGlobalOdd, sqrtRegional, sqrtGlobal,
   alpha, beta, globalFrequenciesSquared, globalHamiltonian,
   regionalHamiltonian, sigmaGlobal, sigmaRegional},
  muSquared = mass^2 + angularMomentum^2/circleRadius^2;
  overlap = overlapMatrix[Nmax];
  orthogonalOverlap = polarOrthogonal[overlap];
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
  j = symplecticMatrixCylinder[2 Nmax];

  radialRegional = Table[n Pi/ellLength, {n, 1, Nmax}];
  radialGlobalOdd = Table[(jMode - 1/2) Pi/ellLength,
    {jMode, 1, Nmax}];
  omegaRegional = Sqrt[muSquared + radialRegional^2];
  omegaGlobalOdd = Sqrt[muSquared + radialGlobalOdd^2];
  sqrtRegional = DiagonalMatrix[Sqrt[omegaRegional]];
  sqrtGlobal = DiagonalMatrix[Sqrt[omegaGlobalOdd]];
  alpha = 1/2 (
    sqrtGlobal . Transpose[orthogonalOverlap] . Inverse[sqrtRegional]
    + Inverse[sqrtGlobal] . Transpose[orthogonalOverlap] . sqrtRegional
  );
  beta = 1/2 (
    sqrtGlobal . Transpose[orthogonalOverlap] . Inverse[sqrtRegional]
    - Inverse[sqrtGlobal] . Transpose[orthogonalOverlap] . sqrtRegional
  );

  globalFrequenciesSquared = Join[
    omegaGlobalOdd^2, omegaRegional^2
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
    "EffectiveMassSquared" -> muSquared,
    "Overlap" -> overlap,
    "OrthogonalOverlap" -> orthogonalOverlap,
    "ConfigurationMap" -> configurationMap,
    "S" -> s,
    "J" -> j,
    "OmegaRegional" -> omegaRegional,
    "OmegaGlobalOdd" -> omegaGlobalOdd,
    "Alpha" -> alpha,
    "Beta" -> beta,
    "GlobalFrequenciesSquared" -> globalFrequenciesSquared,
    "GlobalHamiltonian" -> globalHamiltonian,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>
];

betaPartialFromOverlap[effectiveMass_, overlap_] := Module[
  {n, omegaRegional, omegaGlobal, ratio, factor},
  n = Range[Length[overlap]];
  omegaRegional = N[Sqrt[
    effectiveMass^2 + (Pi n/ellLength)^2
  ], workingPrecision];
  omegaGlobal = N[Sqrt[
    effectiveMass^2 + (Pi (n - 1/2)/ellLength)^2
  ], workingPrecision];
  ratio = Outer[Times, 1/omegaRegional, omegaGlobal];
  factor = (Sqrt[ratio] - 1/Sqrt[ratio])/2;
  Total[(overlap factor)^2, 2]
];

cylinderBetaPartial[radialCutoff_, angularCutoff_] := Module[
  {overlap, values},
  overlap = overlapMatrix[radialCutoff];
  values = Table[
    betaPartialFromOverlap[
      Sqrt[mass^2 + angularMomentum^2/circleRadius^2], overlap
    ],
    {angularMomentum, 0, angularCutoff}
  ];
  First[values] + 2 Total[Rest[values]]
];

Do[
  Module[
    {data, overlapFormulaResidual, orthogonalityResidual,
     symplecticResidual, hamiltonianResidual, canonicalOne,
     canonicalTwo, purityResidual, exactIntegral},
    data = channelData[8, angularMomentum];
    exactIntegral = Table[
      NIntegrate[
        2 Sin[n Pi y] Sin[(jMode - 1/2) Pi y],
        {y, 0, 1}, WorkingPrecision -> workingPrecision
      ],
      {n, 1, 3}, {jMode, 1, 3}
    ];
    overlapFormulaResidual = Max[Abs[
      exactIntegral - data["Overlap"][[1 ;; 3, 1 ;; 3]]
    ]];
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

    assert["closed overlap formula in angular channel " <>
      ToString[angularMomentum], overlapFormulaResidual < tolerance];
    assert["polar overlap is orthogonal in angular channel " <>
      ToString[angularMomentum], orthogonalityResidual < tolerance];
    assert["channel canonical map is symplectic for angular channel " <>
      ToString[angularMomentum], symplecticResidual < tolerance];
    assert["channel Hamiltonians intertwine for angular channel " <>
      ToString[angularMomentum], hamiltonianResidual < tolerance];
    assert["channel Bogoliubov identities for angular channel " <>
      ToString[angularMomentum], Max[canonicalOne, canonicalTwo] < tolerance];
    assert["channel vacuum covariance is pure for angular channel " <>
      ToString[angularMomentum], purityResidual < tolerance];
  ],
  {angularMomentum, {0, 3}}
];

fixedChannelTable = Table[
  {nCut, betaPartialFromOverlap[mass, overlapMatrix[nCut]]},
  {nCut, {8, 16, 32, 64, 128, 256}}
];
Print["fixed angular channel partial Hilbert--Schmidt sums:"];
Print[N[fixedChannelTable, 10]];
assert[
  "fixed-channel Hilbert--Schmidt partial sum grows monotonically",
  And @@ Thread[Rest[fixedChannelTable[[All, 2]]] >
    Most[fixedChannelTable[[All, 2]]]]
];

cylinderTable = Table[
  With[{value = cylinderBetaPartial[cutoff, cutoff]},
    {cutoff, value, value/cutoff}
  ],
  {cutoff, {8, 16, 32, 64}}
];
Print["cylinder partial Hilbert--Schmidt sums:"];
Print[N[cylinderTable, 10]];
assert[
  "cylinder Hilbert--Schmidt partial sum grows monotonically",
  And @@ Thread[Rest[cylinderTable[[All, 2]]] >
    Most[cylinderTable[[All, 2]]]]
];
assert[
  "cylinder common-cutoff growth is asymptotically at least linear",
  Last[cylinderTable[[All, 2]]]/
      cylinderTable[[-2, 2]] > 1.9
];

expectedFixed256 = 1.9447825379200092839;
expectedCylinder64 = 29.239145553457116296;
assert[
  "stored fixed-channel N=256 benchmark",
  Abs[fixedChannelTable[[-1, 2]] - expectedFixed256] < 10^-18
];
assert[
  "stored cylinder cutoff-64 benchmark",
  Abs[cylinderTable[[-1, 2]] - expectedCylinder64] < 10^-14
];

If[TrueQ[testFailed],
  Print["ERROR: scalar-cylinder checks failed."];
  $Failed,
  Print["All scalar-cylinder checks passed."]
];
