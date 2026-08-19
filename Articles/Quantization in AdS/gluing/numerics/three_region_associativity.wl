(* ::Package:: *)

(* ===================================================================== *)
(*  Three-region associativity of interval gluing                        *)
(*                                                                       *)
(*  The two interface histories are eliminated in both Schur-complement *)
(*  orders. The resulting feedback map, spectrum, canonical map, vacuum  *)
(*  covariance and correlators are compared in a common coordinate order. *)
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

leftLiftOverlap[Nmax_, length_] :=
  Table[Sqrt[2 length]/(n Pi), {n, 1, Nmax}];

rightLiftOverlap[Nmax_, length_] :=
  portOverlapForLength[Nmax, length];

sortedThreeRegionModes[dynamic_, l2Gram_] := Module[
  {values, rows, order, u, weights, vL2},
  {values, rows} = Eigensystem[N[dynamic, workingPrecision]];
  order = Ordering[Re[values]];
  values = Re[values[[order]]];
  u = Transpose[Re[rows[[order]]]];
  weights = Diagonal[Transpose[u] . l2Gram . u];
  vL2 = u . DiagonalMatrix[1/Sqrt[weights]];
  {values, vL2}
];

interfaceSystem[Nmax_, lengths_] := Module[
  {length1, length2, length3, aLeft, aRight,
   d1, d2, d3, vRight1, vRight2, vLeft2, vLeft3,
   lambda, b, a},
  {length1, length2, length3} = lengths;
  aLeft = leftLiftOverlap[Nmax, #] & /@ lengths;
  aRight = rightLiftOverlap[Nmax, #] & /@ lengths;
  d1 = DiagonalMatrix[waveNumberSquaredForLength[Nmax, length1]];
  d2 = DiagonalMatrix[waveNumberSquaredForLength[Nmax, length2]];
  d3 = DiagonalMatrix[waveNumberSquaredForLength[Nmax, length3]];
  vRight1 = d1 . aRight[[1]];
  vRight2 = d2 . aRight[[2]];
  vLeft2 = d2 . aLeft[[2]];
  vLeft3 = d3 . aLeft[[3]];
  lambda = {
    {1/length1 + 1/length2, -1/length2},
    {-1/length2, 1/length2 + 1/length3}
  };
  b = {
    Join[vRight1, vLeft2, ConstantArray[0, Nmax]],
    Join[ConstantArray[0, Nmax], vRight2, vLeft3]
  };
  a = Transpose[{
    Join[aRight[[1]], aLeft[[2]], ConstantArray[0, Nmax]],
    Join[ConstantArray[0, Nmax], aRight[[2]], aLeft[[3]]]
  }];
  <|
    "Lambda" -> lambda,
    "BoundaryDerivativeMap" -> b,
    "LiftOverlap" -> a,
    "D" -> ArrayFlatten[{
      {d1, ConstantArray[0, {Nmax, Nmax}],
        ConstantArray[0, {Nmax, Nmax}]},
      {ConstantArray[0, {Nmax, Nmax}], d2,
        ConstantArray[0, {Nmax, Nmax}]},
      {ConstantArray[0, {Nmax, Nmax}],
        ConstantArray[0, {Nmax, Nmax}], d3}
    }]
  |>
];

eliminateLeftFirst[lambda_, b_] := Module[
  {a, off, d, b1, b2, h2, h1},
  a = lambda[[1, 1]];
  off = lambda[[1, 2]];
  d = lambda[[2, 2]];
  b1 = b[[1]];
  b2 = b[[2]];
  h2 = (b2 - (off/a) b1)/(d - off^2/a);
  h1 = (b1 - off h2)/a;
  {h1, h2}
];

eliminateRightFirst[lambda_, b_] := Module[
  {a, off, d, b1, b2, h1, h2},
  a = lambda[[1, 1]];
  off = lambda[[1, 2]];
  d = lambda[[2, 2]];
  b1 = b[[1]];
  b2 = b[[2]];
  h1 = (b1 - (off/d) b2)/(a - off^2/d);
  h2 = (b2 - off h1)/d;
  {h1, h2}
];

threeRegionData[Nmax_, lengths_, h_] := Module[
  {system, d, liftOverlap, r, stiffness, dynamic,
   qGram, l2Gram, values, vL2, canonicalM, canonicalK,
   zero, identity, s, j, globalHamiltonian,
   regionalHamiltonian, omega, sigmaGlobal, sigmaRegional},
  system = interfaceSystem[Nmax, lengths];
  d = system["D"];
  liftOverlap = system["LiftOverlap"];
  r = IdentityMatrix[3 Nmax] + liftOverlap . h;
  stiffness = mass^2 r + d;
  dynamic = LinearSolve[
    N[r, workingPrecision], N[stiffness, workingPrecision]
  ];
  qGram = {
    {(lengths[[1]] + lengths[[2]])/3, lengths[[2]]/6},
    {lengths[[2]]/6, (lengths[[2]] + lengths[[3]])/3}
  };
  l2Gram = IdentityMatrix[3 Nmax]
    + liftOverlap . h + Transpose[h] . Transpose[liftOverlap]
    + Transpose[h] . qGram . h;
  {values, vL2} = sortedThreeRegionModes[dynamic, l2Gram];
  canonicalM = Inverse[Transpose[vL2]] . Inverse[vL2];
  canonicalK = Inverse[Transpose[vL2]] .
    DiagonalMatrix[values] . Inverse[vL2];
  zero = ConstantArray[0, {3 Nmax, 3 Nmax}];
  identity = IdentityMatrix[3 Nmax];
  s = ArrayFlatten[{
    {vL2, zero}, {zero, Inverse[Transpose[vL2]]}
  }];
  j = symplecticMatrixOffCenter[3 Nmax];
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
  Join[system, <|
    "N" -> Nmax,
    "Lengths" -> lengths,
    "H" -> h,
    "R" -> r,
    "Stiffness" -> stiffness,
    "Dynamic" -> dynamic,
    "QGram" -> qGram,
    "L2Gram" -> l2Gram,
    "FrequenciesSquared" -> values,
    "VL2" -> vL2,
    "CanonicalM" -> canonicalM,
    "CanonicalK" -> canonicalK,
    "S" -> s,
    "J" -> j,
    "GlobalHamiltonian" -> globalHamiltonian,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>]
];

threeRegionFieldRow[data_, x_] := Module[
  {nCut, lengths, cut1, cut2, zero, h1, h2, y},
  nCut = data["N"];
  lengths = data["Lengths"];
  cut1 = lengths[[1]];
  cut2 = lengths[[1]] + lengths[[2]];
  zero = ConstantArray[0, nCut];
  h1 = data["H"][[1]];
  h2 = data["H"][[2]];
  Which[
    x <= cut1,
      y = x;
      Join[dirichletBasisForLength[nCut, lengths[[1]], y], zero, zero]
        + (y/lengths[[1]]) h1,
    x <= cut2,
      y = x - cut1;
      Join[zero, dirichletBasisForLength[nCut, lengths[[2]], y], zero]
        + (1 - y/lengths[[2]]) h1 + (y/lengths[[2]]) h2,
    True,
      y = x - cut2;
      Join[zero, zero, dirichletBasisForLength[nCut, lengths[[3]], y]]
        + (1 - y/lengths[[3]]) h2
  ]
];

threeRegionWightman[data_, x_, time_, xPrime_, timePrime_, window_] :=
  Module[{row, rowPrime, omega, keep},
    row = threeRegionFieldRow[data, x] . data["VL2"];
    rowPrime = threeRegionFieldRow[data, xPrime] . data["VL2"];
    omega = Sqrt[data["FrequenciesSquared"]];
    keep = Range[1, Min[window, Length[omega]]];
    Total[
      row[[keep]] rowPrime[[keep]]
        Exp[-I omega[[keep]] (time - timePrime)]/(2 omega[[keep]])
    ]
  ];

exactThreeRegionWindowWightman[x_, time_, xPrime_, timePrime_,
    window_, totalLength_] := Module[{waveNumbers, omega, row, rowPrime},
  waveNumbers = Table[r Pi/totalLength, {r, 1, window}];
  omega = Sqrt[mass^2 + waveNumbers^2];
  row = Table[Sqrt[2/totalLength] Sin[r Pi x/totalLength],
    {r, 1, window}];
  rowPrime = Table[Sqrt[2/totalLength] Sin[r Pi xPrime/totalLength],
    {r, 1, window}];
  Total[row rowPrime Exp[-I omega (time - timePrime)]/(2 omega)]
];

lengths = {3/5, 7/10, 7/10};

associativityTable = Table[
  Module[
    {system, hDirect, hLeft, hRight, dataLeft, dataRight,
     hResidual, dynamicResidual, frequencyResidual,
     symplecticResidual, hamiltonianResidual, covarianceResidual,
     correlatorResidual, fixedWindow, exactFrequencies,
     continuumFrequencyResidual, continuumCorrelatorResidual,
     wLeft, wRight, wExact},
    system = interfaceSystem[nCut, lengths];
    hDirect = LinearSolve[
      N[system["Lambda"], workingPrecision],
      N[system["BoundaryDerivativeMap"], workingPrecision]
    ];
    hLeft = N[eliminateLeftFirst[
      system["Lambda"], system["BoundaryDerivativeMap"]
    ], workingPrecision];
    hRight = N[eliminateRightFirst[
      system["Lambda"], system["BoundaryDerivativeMap"]
    ], workingPrecision];
    hResidual = Max[Abs[Join[
      Flatten[hLeft - hDirect], Flatten[hRight - hDirect]
    ]]];
    dataLeft = threeRegionData[nCut, lengths, hLeft];
    dataRight = threeRegionData[nCut, lengths, hRight];
    dynamicResidual = Max[Abs[
      dataLeft["Dynamic"] - dataRight["Dynamic"]
    ]];
    frequencyResidual = Max[Abs[
      dataLeft["FrequenciesSquared"] - dataRight["FrequenciesSquared"]
    ]];
    symplecticResidual = Max[Abs[Join[
      Flatten[Transpose[dataLeft["S"]] . dataLeft["J"] .
        dataLeft["S"] - dataLeft["J"]],
      Flatten[Transpose[dataRight["S"]] . dataRight["J"] .
        dataRight["S"] - dataRight["J"]]
    ]]];
    hamiltonianResidual = Max[Abs[Join[
      Flatten[Transpose[dataLeft["S"]] .
        dataLeft["RegionalHamiltonian"] . dataLeft["S"]
        - dataLeft["GlobalHamiltonian"]],
      Flatten[Transpose[dataRight["S"]] .
        dataRight["RegionalHamiltonian"] . dataRight["S"]
        - dataRight["GlobalHamiltonian"]]
    ]]];
    covarianceResidual = Max[Abs[
      dataLeft["SigmaRegional"] - dataRight["SigmaRegional"]
    ]];
    fixedWindow = Min[6, 3 nCut];
    wLeft = threeRegionWightman[
      dataLeft, 3/10, 37/100, 17/10, -21/100, fixedWindow
    ];
    wRight = threeRegionWightman[
      dataRight, 3/10, 37/100, 17/10, -21/100, fixedWindow
    ];
    correlatorResidual = Abs[wLeft - wRight];
    exactFrequencies = Table[
      Sqrt[mass^2 + (r Pi/Total[lengths])^2],
      {r, 1, fixedWindow}
    ];
    continuumFrequencyResidual = Max[Abs[
      Sqrt[dataLeft["FrequenciesSquared"][[1 ;; fixedWindow]]]
        - exactFrequencies
    ]];
    wExact = exactThreeRegionWindowWightman[
      3/10, 37/100, 17/10, -21/100, fixedWindow, Total[lengths]
    ];
    continuumCorrelatorResidual = Abs[wLeft - wExact];

    assert["two Schur orders give the same interface map at N=" <>
      ToString[nCut], hResidual < tolerance];
    assert["two gluing orders give the same dynamics at N=" <>
      ToString[nCut], dynamicResidual < tolerance];
    assert["two gluing orders give the same spectrum at N=" <>
      ToString[nCut], frequencyResidual < tolerance];
    assert["both three-region maps are symplectic at N=" <>
      ToString[nCut], symplecticResidual < tolerance];
    assert["both three-region Hamiltonians intertwine at N=" <>
      ToString[nCut], hamiltonianResidual < tolerance];
    assert["two gluing orders give the same vacuum covariance at N=" <>
      ToString[nCut], covarianceResidual < 10^-35];
    assert["two gluing orders give the same Wightman function at N=" <>
      ToString[nCut], correlatorResidual < 10^-35];

    Print[
      "N=", nCut,
      " order covariance defect=", N[covarianceResidual, 6],
      " order W defect=", N[correlatorResidual, 6],
      " low-frequency error=", N[continuumFrequencyResidual, 6],
      " six-mode W error=", N[continuumCorrelatorResidual, 6]
    ];
    {nCut, continuumFrequencyResidual, continuumCorrelatorResidual}
  ],
  {nCut, {2, 4, 8, 16}}
];

assert[
  "three-region low-frequency error decreases with cutoff",
  And @@ Thread[Rest[associativityTable[[All, 2]]] <
    Most[associativityTable[[All, 2]]]]
];
assert[
  "three-region Wightman error decreases with cutoff",
  And @@ Thread[Rest[associativityTable[[All, 3]]] <
    Most[associativityTable[[All, 3]]]]
];

If[TrueQ[testFailed],
  Print["ERROR: three-region associativity checks failed."];
  $Failed,
  Print["All three-region associativity checks passed."]
];
