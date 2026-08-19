(* ::Package:: *)

(* ===================================================================== *)
(*  Off-center interval cut and canonical-normalization audit            *)
(*                                                                       *)
(*  This script keeps (c1,c2,q) until the classical mode conditions are  *)
(*  identified, includes common-pole q=0 modes, and compares two finite  *)
(*  symplectic choices: the gradient-metric symmetrizer and a modewise   *)
(*  L2-normalized canonical regulator.                                   *)
(* ===================================================================== *)

ClearAll["Global`*"];

mass = 1;
workingPrecision = 80;
tolerance = 10^-42;
$MaxExtraPrecision = 10000;
testFailed = False;

assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

portOverlapForLength[Nmax_, length_] :=
  Table[(-1)^(n + 1) Sqrt[2 length]/(n Pi), {n, 1, Nmax}];

waveNumberSquaredForLength[Nmax_, length_] :=
  Table[(n Pi/length)^2, {n, 1, Nmax}];

dirichletBasisForLength[Nmax_, length_, y_] :=
  Table[Sqrt[2/length] Sin[n Pi y/length], {n, 1, Nmax}];

normalizedGeneralizedModesOffCenter[k_, m_] := Module[
  {values, vectors, order, sortedValues, sortedRows, normalizedRows},
  {values, vectors} = Eigensystem[{
    N[k, workingPrecision], N[m, workingPrecision]
  }];
  order = Ordering[values];
  sortedValues = values[[order]];
  sortedRows = vectors[[order]];
  normalizedRows = (#/Sqrt[
      Conjugate[#] . N[m, workingPrecision] . #
    ]) & /@ sortedRows;
  {sortedValues, Transpose[normalizedRows]}
];

symplecticMatrixOffCenter[modeCount_] := Module[{zero, identity},
  zero = ConstantArray[0, {modeCount, modeCount}];
  identity = IdentityMatrix[modeCount];
  ArrayFlatten[{{zero, identity}, {-identity, zero}}]
];

offCenterResponse[data_, kSquared_] := Module[
  {d1, d2, length1, length2},
  d1 = data["D1Values"];
  d2 = data["D2Values"];
  length1 = data["Length1"];
  length2 = data["Length2"];
  1/length1 + 1/length2
    - 2 kSquared/length1 Total[1/(d1 - kSquared)]
    - 2 kSquared/length2 Total[1/(d2 - kSquared)]
];

offCenterData[Nmax_, length1_, length2_] := Module[
  {a1, a2, a, d1Values, d2Values, dValues, d, v, lambda, h,
   r, gradientM, gradientK, values, uGradient, l2Gram,
   modeL2Gram, l2Weights, vL2, canonicalM, canonicalK,
   zero, identity, sL2, j, globalHamiltonian,
   regionalHamiltonian, omega, sigmaGlobal, sigmaRegional},
  a1 = portOverlapForLength[Nmax, length1];
  a2 = portOverlapForLength[Nmax, length2];
  a = Join[a1, a2];
  d1Values = waveNumberSquaredForLength[Nmax, length1];
  d2Values = waveNumberSquaredForLength[Nmax, length2];
  dValues = Join[d1Values, d2Values];
  d = DiagonalMatrix[dValues];
  v = d . a;
  lambda = 1/length1 + 1/length2;
  h = v/lambda;
  r = IdentityMatrix[2 Nmax] + Outer[Times, a, h];
  gradientM = d + Outer[Times, v, v]/lambda;
  gradientK = mass^2 gradientM + d . d;
  {values, uGradient} = normalizedGeneralizedModesOffCenter[
    gradientK, gradientM
  ];

  l2Gram = IdentityMatrix[2 Nmax]
    + Outer[Times, a, h] + Outer[Times, h, a]
    + (length1 + length2)/3 Outer[Times, h, h];
  modeL2Gram = Transpose[uGradient] . l2Gram . uGradient;
  l2Weights = Diagonal[modeL2Gram];
  vL2 = uGradient . DiagonalMatrix[1/Sqrt[l2Weights]];
  canonicalM = Inverse[Transpose[vL2]] . Inverse[vL2];
  canonicalK = Inverse[Transpose[vL2]] .
    DiagonalMatrix[values] . Inverse[vL2];

  zero = ConstantArray[0, {2 Nmax, 2 Nmax}];
  identity = IdentityMatrix[2 Nmax];
  sL2 = ArrayFlatten[{
    {vL2, zero}, {zero, Inverse[Transpose[vL2]]}
  }];
  j = symplecticMatrixOffCenter[2 Nmax];
  globalHamiltonian = ArrayFlatten[{
    {DiagonalMatrix[values], zero}, {zero, identity}
  }];
  regionalHamiltonian = ArrayFlatten[{
    {canonicalK, zero}, {zero, Inverse[canonicalM]}
  }];
  omega = Sqrt[values];
  sigmaGlobal = 1/2 ArrayFlatten[{
    {DiagonalMatrix[1/omega], zero},
    {zero, DiagonalMatrix[omega]}
  }];
  sigmaRegional = sL2 . sigmaGlobal . Transpose[sL2];

  <|
    "N" -> Nmax,
    "Length1" -> length1,
    "Length2" -> length2,
    "A1" -> a1,
    "A2" -> a2,
    "A" -> a,
    "D1Values" -> d1Values,
    "D2Values" -> d2Values,
    "DValues" -> dValues,
    "D" -> d,
    "v" -> v,
    "Lambda" -> lambda,
    "h" -> h,
    "R" -> r,
    "GradientM" -> gradientM,
    "GradientK" -> gradientK,
    "FrequenciesSquared" -> values,
    "UGradient" -> uGradient,
    "L2Gram" -> l2Gram,
    "ModeL2Gram" -> modeL2Gram,
    "L2Weights" -> l2Weights,
    "VL2" -> vL2,
    "CanonicalM" -> canonicalM,
    "CanonicalK" -> canonicalK,
    "S" -> sL2,
    "J" -> j,
    "GlobalHamiltonian" -> globalHamiltonian,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>
];

regionalFieldRow[data_, x_] := Module[
  {length1, length2, cut, nCut, zero, h},
  length1 = data["Length1"];
  length2 = data["Length2"];
  cut = -1 + length1;
  nCut = data["N"];
  zero = ConstantArray[0, nCut];
  h = data["h"];
  If[x <= cut,
    Join[dirichletBasisForLength[nCut, length1, x + 1], zero]
      + (x + 1)/length1 h,
    Join[zero, dirichletBasisForLength[nCut, length2, 1 - x]]
      + (1 - x)/length2 h
  ]
];

globalFieldRow[data_, x_] := regionalFieldRow[data, x] . data["VL2"];

windowWightman[data_, x_, time_, xPrime_, timePrime_, window_] := Module[
  {row, rowPrime, omega, keep},
  row = globalFieldRow[data, x];
  rowPrime = globalFieldRow[data, xPrime];
  omega = Sqrt[data["FrequenciesSquared"]];
  keep = Range[1, Min[window, Length[omega]]];
  Total[
    row[[keep]] rowPrime[[keep]]
      Exp[-I omega[[keep]] (time - timePrime)]/(2 omega[[keep]])
  ]
];

exactWindowWightman[x_, time_, xPrime_, timePrime_, window_] := Module[
  {length, waveNumbers, omega, row, rowPrime},
  length = 2;
  waveNumbers = Table[r Pi/length, {r, 1, window}];
  omega = Sqrt[mass^2 + waveNumbers^2];
  row = Table[Sqrt[2/length] Sin[r Pi (x + 1)/length],
    {r, 1, window}];
  rowPrime = Table[Sqrt[2/length] Sin[r Pi (xPrime + 1)/length],
    {r, 1, window}];
  Total[row rowPrime Exp[-I omega (time - timePrime)]/(2 omega)]
];

cutChoices = {{4/5, 6/5}, {7/10, 13/10}, {13/20, 27/20}};

Do[
  Module[
    {data, eigenK, waveK, poleDistances, responseOrPoleResiduals,
     symplecticResidual, hamiltonianResidual, covariancePurity,
     l2NormalizationResidual, l2SelfAdjointResidual,
     gradientIdentityResidual, fixedWindow, exactFrequencies,
     frequencyResidual, correlatorResidual, lowModeL2OffDiagonal,
     dynamicMatrix, l2DynamicMatrix},
    data = offCenterData[nCut, lengths[[1]], lengths[[2]]];
    eigenK = data["FrequenciesSquared"] - mass^2;
    waveK = data["DValues"];
    poleDistances = Min[Abs[waveK - #]] & /@ eigenK;
    responseOrPoleResiduals = MapThread[
      If[#2 < tolerance,
        Abs[data["h"] . data["VL2"][[All, #3]]],
        Abs[offCenterResponse[data, #1]]
      ] &,
      {eigenK, poleDistances, Range[Length[eigenK]]}
    ];
    symplecticResidual = Max[Abs[
      Transpose[data["S"]] . data["J"] . data["S"] - data["J"]
    ]];
    hamiltonianResidual = Max[Abs[
      Transpose[data["S"]] . data["RegionalHamiltonian"] . data["S"]
        - data["GlobalHamiltonian"]
    ]];
    covariancePurity = Max[Abs[
      data["SigmaRegional"] . data["J"] . data["SigmaRegional"]
        - data["J"]/4
    ]];
    l2NormalizationResidual = Max[Abs[
      Diagonal[Transpose[data["VL2"]] . data["L2Gram"] . data["VL2"]]
        - 1
    ]];
    dynamicMatrix = LinearSolve[
      N[data["R"], workingPrecision],
      N[mass^2 data["R"] + data["D"], workingPrecision]
    ];
    l2DynamicMatrix = N[data["L2Gram"], workingPrecision] .
      dynamicMatrix;
    l2SelfAdjointResidual = Max[Abs[
      l2DynamicMatrix - Transpose[l2DynamicMatrix]
    ]];
    gradientIdentityResidual = Max[Abs[
      data["GradientM"]
        - (data["D"] + data["Lambda"] Outer[Times,
            data["h"], data["h"]])
    ]];
    fixedWindow = Min[6, 2 nCut];
    exactFrequencies = Table[
      Sqrt[mass^2 + (r Pi/2)^2], {r, 1, fixedWindow}
    ];
    frequencyResidual = Max[Abs[
      Sqrt[data["FrequenciesSquared"][[1 ;; fixedWindow]]]
        - exactFrequencies
    ]];
    correlatorResidual = Abs[
      windowWightman[data, -1/2, 37/100, 1/2, -21/100,
        fixedWindow]
      - exactWindowWightman[-1/2, 37/100, 1/2, -21/100,
        fixedWindow]
    ];
    lowModeL2OffDiagonal = Max[Abs[
      (Transpose[data["VL2"]] . data["L2Gram"] . data["VL2"]
        - IdentityMatrix[2 nCut])[[
          1 ;; fixedWindow, 1 ;; fixedWindow
        ]]
    ]];

    assert[
      "DtN roots or common-pole q=0 modes at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      Max[responseOrPoleResiduals] < tolerance
    ];
    assert[
      "modewise-L2 canonical map is symplectic at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      symplecticResidual < tolerance
    ];
    assert[
      "modewise-L2 Hamiltonian intertwining at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      hamiltonianResidual < tolerance
    ];
    assert[
      "modewise-L2 covariance is pure at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      covariancePurity < tolerance
    ];
    assert[
      "individual reconstructed modes are L2-normalized at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      l2NormalizationResidual < tolerance
    ];
    assert[
      "gradient symmetrizer equals reconstructed gradient Gram at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      gradientIdentityResidual < tolerance
    ];
    assert[
      "ordinary L2 Gram is not an exact finite-N symmetrizer at cut " <>
        ToString[lengths, InputForm] <> ", N=" <> ToString[nCut],
      l2SelfAdjointResidual > 10^-8
    ];

    Print[
      "cut=", N[lengths, 4],
      " N=", nCut,
      " low-frequency error=", N[frequencyResidual, 6],
      " low-mode L2 offdiag=", N[lowModeL2OffDiagonal, 6],
      " six-mode W error=", N[correlatorResidual, 6],
      " L2 self-adjoint defect=", N[l2SelfAdjointResidual, 6]
    ];
  ],
  {lengths, cutChoices}, {nCut, {4, 8, 16}}
];

Module[
  {data, targetWaveNumberSquared, targetIndex, poleDistance,
   qAmplitude},
  data = offCenterData[4, 4/5, 6/5];
  targetWaveNumberSquared = (5 Pi/2)^2;
  targetIndex = First[Ordering[
    Abs[data["FrequenciesSquared"] - mass^2
      - targetWaveNumberSquared], 1
  ]];
  poleDistance = Abs[
    data["FrequenciesSquared"][[targetIndex]] - mass^2
      - targetWaveNumberSquared
  ];
  qAmplitude = Abs[
    data["h"] . data["VL2"][[All, targetIndex]]
  ];
  assert[
    "common regional pole k=5 Pi/2 is retained",
    poleDistance < tolerance
  ];
  assert[
    "common-pole mode has q=0",
    qAmplitude < tolerance
  ];
];

Module[
  {data, parity, transformedGradientM, expectedPlus, expectedGradient,
   previousCenteredMetric, gradientLimitResidual,
   previousMetricMismatch},
  data = offCenterData[4, 1, 1];
  parity = 1/Sqrt[2] ArrayFlatten[{
    {IdentityMatrix[4], IdentityMatrix[4]},
    {IdentityMatrix[4], -IdentityMatrix[4]}
  }];
  parity = N[parity, workingPrecision];
  transformedGradientM = parity .
    N[data["GradientM"], workingPrecision] . parity;
  expectedPlus = N[data["D"][[1 ;; 4, 1 ;; 4]], workingPrecision]
    + Outer[Times,
        N[data["v"][[1 ;; 4]], workingPrecision],
        N[data["v"][[1 ;; 4]], workingPrecision]
      ];
  expectedGradient = ArrayFlatten[{
    {expectedPlus, ConstantArray[0, {4, 4}]},
    {ConstantArray[0, {4, 4}],
      N[data["D"][[1 ;; 4, 1 ;; 4]], workingPrecision]}
  }];
  previousCenteredMetric = ArrayFlatten[{
    {expectedPlus, ConstantArray[0, {4, 4}]},
    {ConstantArray[0, {4, 4}], IdentityMatrix[4]}
  }];
  gradientLimitResidual = Max[Abs[
    transformedGradientM - expectedGradient
  ]];
  previousMetricMismatch = Max[Abs[
    transformedGradientM - previousCenteredMetric
  ]];
  assert[
    "off-center gradient metric has a continuous centered limit",
    gradientLimitResidual < tolerance
  ];
  assert[
    "previous centered unit pole-sector metric is not that limit",
    previousMetricMismatch > 1
  ];
  Print[
    "centered-limit mismatch of previous pole-sector metric=",
    N[previousMetricMismatch, 8]
  ];
];

If[TrueQ[testFailed],
  Print["ERROR: off-center cut checks failed."];
  Exit[1]
];

Print["All off-center cut checks passed."];
