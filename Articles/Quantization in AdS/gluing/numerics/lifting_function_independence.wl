(* ::Package:: *)

(* ===================================================================== *)
(*  Independence of the auxiliary lifting function                       *)
(*                                                                       *)
(*  Exact test: the difference of two lifts lies in the retained         *)
(*  Dirichlet span. The two feedback systems are related by a rank-one   *)
(*  configuration map and its cotangent lift.                            *)
(*                                                                       *)
(*  Convergence test: a smooth polynomial difference has an infinite     *)
(*  sine expansion. The derivative-trace, spectrum, reconstructed field  *)
(*  and fixed-window Wightman defects are measured as N increases.        *)
(* ===================================================================== *)

ClearAll["Global`*"];

offCenterScript = FileNameJoin[{
  DirectoryName[$InputFileName], "off_center_cut.wl"
}];
Block[{Print = (Null &)}, Get[offCenterScript]];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

sortedRightEigensystem[matrix_] := Module[
  {values, rows, order},
  {values, rows} = Eigensystem[N[matrix, workingPrecision]];
  order = Ordering[Re[values]];
  {Re[values[[order]]], Transpose[Re[rows[[order]]]]}
];

liftingData[Nmax_, length1_, length2_, a_, gamma_, liftNorm_] := Module[
  {aLinear, dValues, d, v, h, b, r, stiffness,
   dynamic, values, u, l2Gram, weights, vL2, canonicalM,
   canonicalK, zero, identity, s, j, globalHamiltonian,
   regionalHamiltonian, omega, sigmaGlobal, sigmaRegional},
  aLinear = Join[
    portOverlapForLength[Nmax, length1],
    portOverlapForLength[Nmax, length2]
  ];
  dValues = Join[
    waveNumberSquaredForLength[Nmax, length1],
    waveNumberSquaredForLength[Nmax, length2]
  ];
  d = DiagonalMatrix[dValues];
  v = d . aLinear;
  h = v/gamma;
  b = v - d . a;
  r = IdentityMatrix[2 Nmax] + Outer[Times, a, h];
  stiffness = mass^2 IdentityMatrix[2 Nmax] + d
    + Outer[Times, mass^2 a - b, h];
  dynamic = LinearSolve[
    N[r, workingPrecision], N[stiffness, workingPrecision]
  ];
  {values, u} = sortedRightEigensystem[dynamic];
  l2Gram = IdentityMatrix[2 Nmax]
    + Outer[Times, a, h] + Outer[Times, h, a]
    + liftNorm Outer[Times, h, h];
  weights = Diagonal[Transpose[u] . l2Gram . u];
  vL2 = u . DiagonalMatrix[1/Sqrt[weights]];
  canonicalM = Inverse[Transpose[vL2]] . Inverse[vL2];
  canonicalK = Inverse[Transpose[vL2]] .
    DiagonalMatrix[values] . Inverse[vL2];
  zero = ConstantArray[0, {2 Nmax, 2 Nmax}];
  identity = IdentityMatrix[2 Nmax];
  s = ArrayFlatten[{
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
  sigmaRegional = s . sigmaGlobal . Transpose[s];
  <|
    "N" -> Nmax,
    "Length1" -> length1,
    "Length2" -> length2,
    "A" -> a,
    "ALinear" -> aLinear,
    "D" -> d,
    "v" -> v,
    "Gamma" -> gamma,
    "h" -> h,
    "b" -> b,
    "R" -> r,
    "Stiffness" -> stiffness,
    "Dynamic" -> dynamic,
    "FrequenciesSquared" -> values,
    "L2Gram" -> l2Gram,
    "VL2" -> vL2,
    "CanonicalM" -> canonicalM,
    "CanonicalK" -> canonicalK,
    "S" -> s,
    "J" -> j,
    "GlobalHamiltonian" -> globalHamiltonian,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>
];

liftingFieldRow[data_, x_, lift1_, lift2_] := Module[
  {nCut, length1, length2, cut, zero, qRow},
  nCut = data["N"];
  length1 = data["Length1"];
  length2 = data["Length2"];
  cut = -1 + length1;
  zero = ConstantArray[0, nCut];
  qRow = data["h"];
  If[x <= cut,
    Join[dirichletBasisForLength[nCut, length1, x + 1], zero]
      + lift1[x + 1] qRow,
    Join[zero, dirichletBasisForLength[nCut, length2, 1 - x]]
      + lift2[1 - x] qRow
  ]
];

liftingWightman[data_, x_, time_, xPrime_, timePrime_, window_,
    lift1_, lift2_] := Module[{row, rowPrime, omega, keep},
  row = liftingFieldRow[data, x, lift1, lift2] . data["VL2"];
  rowPrime = liftingFieldRow[data, xPrime, lift1, lift2] . data["VL2"];
  omega = Sqrt[data["FrequenciesSquared"]];
  keep = Range[1, Min[window, Length[omega]]];
  Total[
    row[[keep]] rowPrime[[keep]]
      Exp[-I omega[[keep]] (time - timePrime)]/(2 omega[[keep]])
  ]
];

(* Exact finite-span change of lifting. *)

Module[
  {nCut, length1, length2, base, aBase, sVector, aChanged,
   gammaBase, gammaChanged, hBase, tConfiguration,
   liftNormBase, liftNormChanged, changed, conjugacyResidual,
   qResidual, l2GramResidual, canonicalMetricChanged,
   canonicalStiffnessChanged, sCotangent, symplecticResidual,
   hamiltonianResidual, fieldResiduals, samplePoints,
   liftBase1, liftBase2, liftChanged1, liftChanged2,
   correlatorResidual, wBase, wChanged},
  nCut = 4;
  length1 = 4/5;
  length2 = 6/5;
  base = offCenterData[nCut, length1, length2];
  aBase = base["A"];
  sVector = N[ConstantArray[0, 2 nCut], workingPrecision];
  sVector[[1]] = 1/100;
  sVector[[nCut + 2]] = -1/150;
  aChanged = aBase - sVector;
  gammaBase = 1/length1 + 1/length2;
  gammaChanged = gammaBase + base["v"] . sVector;
  hBase = N[base["h"], workingPrecision];
  tConfiguration = IdentityMatrix[2 nCut]
    + Outer[Times, sVector, hBase];
  liftNormBase = (length1 + length2)/3;
  liftNormChanged = liftNormBase - 2 aBase . sVector
    + sVector . sVector;
  changed = liftingData[
    nCut, length1, length2, aChanged, gammaChanged,
    liftNormChanged
  ];

  conjugacyResidual = Max[Abs[
    changed["Dynamic"] . tConfiguration
      - tConfiguration . LinearSolve[
          N[base["R"], workingPrecision],
          N[mass^2 base["R"] + base["D"], workingPrecision]
        ]
  ]];
  qResidual = Max[Abs[
    changed["h"] . tConfiguration - hBase
  ]];
  l2GramResidual = Max[Abs[
    Transpose[tConfiguration] . changed["L2Gram"] . tConfiguration
      - base["L2Gram"]
  ]];

  canonicalMetricChanged = Inverse[Transpose[tConfiguration]] .
    base["CanonicalM"] . Inverse[tConfiguration];
  canonicalStiffnessChanged = Inverse[Transpose[tConfiguration]] .
    base["CanonicalK"] . Inverse[tConfiguration];
  sCotangent = ArrayFlatten[{
    {tConfiguration, ConstantArray[0, {2 nCut, 2 nCut}]},
    {ConstantArray[0, {2 nCut, 2 nCut}],
      Inverse[Transpose[tConfiguration]]}
  }];
  symplecticResidual = Max[Abs[
    Transpose[sCotangent] . base["J"] . sCotangent - base["J"]
  ]];
  hamiltonianResidual = Max[Abs[
    Transpose[sCotangent] . ArrayFlatten[{
      {canonicalStiffnessChanged,
        ConstantArray[0, {2 nCut, 2 nCut}]},
      {ConstantArray[0, {2 nCut, 2 nCut}],
        Inverse[canonicalMetricChanged]}
    }] . sCotangent
      - base["RegionalHamiltonian"]
  ]];

  liftBase1[y_] := y/length1;
  liftBase2[y_] := y/length2;
  liftChanged1[y_] := y/length1
    - sVector[[1]] dirichletBasisForLength[nCut, length1, y][[1]];
  liftChanged2[y_] := y/length2
    - sVector[[nCut + 2]]
      dirichletBasisForLength[nCut, length2, y][[2]];
  samplePoints = {-3/4, -1/2, 1/2, 3/4};
  fieldResiduals = Table[
    Max[Abs[
      liftingFieldRow[changed, x, liftChanged1, liftChanged2] .
        tConfiguration
      - liftingFieldRow[base, x, liftBase1, liftBase2]
    ]],
    {x, samplePoints}
  ];
  wBase = liftingWightman[
    base, -1/2, 37/100, 1/2, -21/100, 6,
    liftBase1, liftBase2
  ];
  wChanged = liftingWightman[
    changed, -1/2, 37/100, 1/2, -21/100, 6,
    liftChanged1, liftChanged2
  ];
  correlatorResidual = Abs[wBase - wChanged];

  assert["finite-span lifting dynamics are conjugate",
    conjugacyResidual < tolerance];
  assert["finite-span lifting preserves the interface value",
    qResidual < tolerance];
  assert["finite-span lifting preserves the reconstructed L2 Gram",
    l2GramResidual < tolerance];
  assert["cotangent lift is symplectic",
    symplecticResidual < tolerance];
  assert["cotangent lift intertwines the canonical Hamiltonians",
    hamiltonianResidual < tolerance];
  assert["finite-span reconstructed fields agree",
    Max[fieldResiduals] < tolerance];
  assert["finite-span Wightman functions agree",
    correlatorResidual < 10^-35];
];

(* Smooth lifting difference with an infinite sine tail. *)

polynomialCoefficient[n_, length_, epsilon_] :=
  epsilon Sqrt[2 length] 2 (1 - (-1)^n)/(n Pi)^3;

smoothLiftingTable = Table[
  Module[
    {length1, length2, epsilon, base, aBase, sVector,
     aChanged, gammaBase, gammaChanged, liftNormBase,
     liftNormChanged, changed, tConfiguration, qTraceResidual,
     frequencyResidual, wBase, wChanged, correlatorResidual,
     liftBase1, liftBase2, liftChanged1, liftChanged2,
     fieldResidual},
    length1 = 4/5;
    length2 = 6/5;
    epsilon = 1/10;
    base = offCenterData[nCut, length1, length2];
    aBase = base["A"];
    sVector = Join[
      Table[polynomialCoefficient[n, length1, epsilon],
        {n, 1, nCut}],
      ConstantArray[0, nCut]
    ];
    aChanged = aBase - sVector;
    gammaBase = 1/length1 + 1/length2;
    gammaChanged = gammaBase + epsilon/length1;
    liftNormBase = (length1 + length2)/3;
    liftNormChanged = liftNormBase
      - epsilon length1/6 + epsilon^2 length1/30;
    changed = liftingData[
      nCut, length1, length2, aChanged, gammaChanged,
      liftNormChanged
    ];
    tConfiguration = IdentityMatrix[2 nCut]
      + Outer[Times, sVector, base["h"]];
    qTraceResidual = Max[Abs[
      (changed["h"] . tConfiguration - base["h"]) .
        base["VL2"][[All, 1 ;; 2]]
    ]];
    frequencyResidual = Max[Abs[
      Sqrt[changed["FrequenciesSquared"][[1 ;; 4]]]
        - Sqrt[base["FrequenciesSquared"][[1 ;; 4]]]
    ]];

    liftBase1[y_] := y/length1;
    liftBase2[y_] := y/length2;
    liftChanged1[y_] := y/length1
      - epsilon (y/length1) (1 - y/length1);
    liftChanged2[y_] := y/length2;
    wBase = liftingWightman[
      base, -1/2, 37/100, 1/2, -21/100, 4,
      liftBase1, liftBase2
    ];
    wChanged = liftingWightman[
      changed, -1/2, 37/100, 1/2, -21/100, 4,
      liftChanged1, liftChanged2
    ];
    correlatorResidual = Abs[wBase - wChanged];
    fieldResidual = Max[Abs[
      (liftingFieldRow[changed, -1/2, liftChanged1, liftChanged2] .
          tConfiguration
        - liftingFieldRow[base, -1/2, liftBase1, liftBase2]) .
        base["VL2"][[All, 1 ;; 2]]
    ]];
    Print[
      "N=", nCut,
      " trace defect=", N[qTraceResidual, 8],
      " low-frequency defect=", N[frequencyResidual, 8],
      " field defect=", N[fieldResidual, 8],
      " four-mode W defect=", N[correlatorResidual, 8]
    ];
    {nCut, qTraceResidual, frequencyResidual,
      fieldResidual, correlatorResidual}
  ],
  {nCut, {2, 4, 8, 16, 32}}
];

assert[
  "smooth lifting trace defect decreases with cutoff",
  And @@ Thread[Rest[smoothLiftingTable[[All, 2]]] <
    Most[smoothLiftingTable[[All, 2]]]]
];
assert[
  "smooth lifting low-frequency defect decreases with cutoff",
  And @@ Thread[Rest[smoothLiftingTable[[All, 3]]] <
    Most[smoothLiftingTable[[All, 3]]]]
];
assert[
  "smooth lifting reconstructed-field defect decreases with cutoff",
  And @@ Thread[Rest[smoothLiftingTable[[All, 4]]] <
    Most[smoothLiftingTable[[All, 4]]]]
];
assert[
  "smooth lifting Wightman defect decreases with cutoff",
  And @@ Thread[Rest[smoothLiftingTable[[All, 5]]] <
    Most[smoothLiftingTable[[All, 5]]]]
];

If[TrueQ[testFailed],
  Print["ERROR: lifting-function checks failed."];
  $Failed,
  Print["All lifting-function checks passed."]
];
