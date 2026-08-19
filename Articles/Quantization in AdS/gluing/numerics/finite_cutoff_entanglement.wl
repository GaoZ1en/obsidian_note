(* ::Package:: *)

(* ===================================================================== *)
(*  Reduced regional Gaussian states and entanglement at finite cutoff   *)
(* ===================================================================== *)

ClearAll["Global`*"];

gaussianScript = FileNameJoin[{
  DirectoryName[$InputFileName],
  "finite_cutoff_gaussian_vacuum.wl"
}];
Block[{Print = (Null &)}, Get[gaussianScript]];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

symplecticMatrix[modeCount_] := ArrayFlatten[{
  {ConstantArray[0, {modeCount, modeCount}], IdentityMatrix[modeCount]},
  {-IdentityMatrix[modeCount], ConstantArray[0, {modeCount, modeCount}]}
}];

symplecticEigenvalues[covariance_] := Module[
  {modeCount, j, values},
  modeCount = Length[covariance]/2;
  j = symplecticMatrix[modeCount];
  values = Sort[Abs[Eigenvalues[N[
    I j . covariance, workingPrecision
  ]]]];
  Mean /@ Partition[values, 2]
];

entropyTerm[nu_] := (
  (nu + 1/2) Log[nu + 1/2]
  - If[Abs[nu - 1/2] < 10^-40, 0,
      (nu - 1/2) Log[nu - 1/2]]
);

renyiTerm[nu_, alphaRenyi_] :=
  Log[(nu + 1/2)^alphaRenyi - (nu - 1/2)^alphaRenyi]/
    (alphaRenyi - 1);

modularMatrix[covariance_] := Module[{modeCount, j},
  modeCount = Length[covariance]/2;
  j = symplecticMatrix[modeCount];
  Chop[
    2 I j . MatrixFunction[ArcCoth, 2 I covariance . j],
    10^-40
  ]
];

matrixFunctionFromEigensystem[function_, matrix_] := Module[
  {values, vectors, basis},
  {values, vectors} = Eigensystem[N[matrix, workingPrecision]];
  basis = Transpose[vectors];
  basis . DiagonalMatrix[function /@ values] . Inverse[basis]
];

covarianceFromModular[modular_] := Module[{modeCount, j},
  modeCount = Length[modular]/2;
  j = symplecticMatrix[modeCount];
  Chop[
    I/2 matrixFunctionFromEigensystem[Coth, I j . modular/2] . j,
    10^-40
  ]
];

entanglementData[Nmax_] := Module[
  {data, sigma, leftIndices, rightIndices, sigmaLeft, sigmaRight,
   nuLeft, nuRight, entropy, renyiTwo, modularLeft,
   subsystemOrder, sigmaSubsystem, a, b, c, jSub},
  data = gaussianData[Nmax];
  sigma = data["SigmaRegionalLR"];
  leftIndices = Join[Range[1, Nmax], Range[2 Nmax + 1, 3 Nmax]];
  rightIndices = Join[
    Range[Nmax + 1, 2 Nmax], Range[3 Nmax + 1, 4 Nmax]
  ];
  sigmaLeft = sigma[[leftIndices, leftIndices]];
  sigmaRight = sigma[[rightIndices, rightIndices]];
  nuLeft = symplecticEigenvalues[sigmaLeft];
  nuRight = symplecticEigenvalues[sigmaRight];
  entropy = Total[entropyTerm /@ nuLeft];
  renyiTwo = Total[renyiTerm[#, 2] & /@ nuLeft];
  modularLeft = modularMatrix[sigmaLeft];

  subsystemOrder = Join[leftIndices, rightIndices];
  sigmaSubsystem = sigma[[subsystemOrder, subsystemOrder]];
  a = sigmaSubsystem[[1 ;; 2 Nmax, 1 ;; 2 Nmax]];
  b = sigmaSubsystem[[
    2 Nmax + 1 ;; 4 Nmax, 2 Nmax + 1 ;; 4 Nmax
  ]];
  c = sigmaSubsystem[[1 ;; 2 Nmax, 2 Nmax + 1 ;; 4 Nmax]];
  jSub = symplecticMatrix[Nmax];

  Join[data, <|
    "SigmaLeft" -> sigmaLeft,
    "SigmaRight" -> sigmaRight,
    "NuLeft" -> nuLeft,
    "NuRight" -> nuRight,
    "Entropy" -> entropy,
    "RenyiTwo" -> renyiTwo,
    "MutualInformation" -> 2 entropy,
    "ModularLeft" -> modularLeft,
    "PurityBlockA" ->
      a . jSub . a + c . jSub . Transpose[c] - jSub/4,
    "PurityBlockCross" -> a . jSub . c + c . jSub . b,
    "CrossCovariance" -> c
  |>]
];

Do[
  Module[
    {data, modeCount, jFull, fullPurity, leftUncertainty,
     spectrumResidual, modularSymmetry, modularPositivity,
     modularReconstruction, purityBlockResidual, crossBlockNorm},
    data = entanglementData[nCut];
    modeCount = 2 nCut;
    jFull = symplecticMatrix[modeCount];
    fullPurity = Max[Abs[
      data["SigmaRegionalLR"] . jFull . data["SigmaRegionalLR"]
      - jFull/4
    ]];
    leftUncertainty = Min[Re[Eigenvalues[N[
      data["SigmaLeft"] + I symplecticMatrix[nCut]/2,
      workingPrecision
    ]]]];
    spectrumResidual = Max[Abs[
      data["NuLeft"] - data["NuRight"]
    ]];
    modularSymmetry = Max[Abs[
      data["ModularLeft"] - Transpose[data["ModularLeft"]]
    ]];
    modularPositivity = Min[Eigenvalues[N[
      data["ModularLeft"], workingPrecision
    ]]];
    modularReconstruction = Max[Abs[
      covarianceFromModular[data["ModularLeft"]]
      - data["SigmaLeft"]
    ]];
    purityBlockResidual = Max[Abs[Join[
      Flatten[data["PurityBlockA"]],
      Flatten[data["PurityBlockCross"]]
    ]]];
    crossBlockNorm = Norm[data["CrossCovariance"], "Frobenius"];

    assert[
      "full covariance is pure at N=" <> ToString[nCut],
      fullPurity < tolerance
    ];
    assert[
      "left covariance obeys uncertainty relation at N=" <>
        ToString[nCut],
      leftUncertainty > -tolerance
    ];
    assert[
      "left state is mixed at N=" <> ToString[nCut],
      Min[data["NuLeft"]] > 1/2
    ];
    assert[
      "left and right symplectic spectra agree at N=" <> ToString[nCut],
      spectrumResidual < tolerance
    ];
    assert[
      "modular matrix is symmetric at N=" <> ToString[nCut],
      modularSymmetry < tolerance
    ];
    assert[
      "modular matrix is positive at N=" <> ToString[nCut],
      modularPositivity > 0
    ];
    assert[
      "modular matrix reconstructs covariance at N=" <> ToString[nCut],
      modularReconstruction < tolerance
    ];
    assert[
      "purity block identities at N=" <> ToString[nCut],
      purityBlockResidual < tolerance
    ];
    assert[
      "cross-region covariance is nonzero at N=" <> ToString[nCut],
      crossBlockNorm > 0
    ];
    assert[
      "entropy ordering at N=" <> ToString[nCut],
      data["Entropy"] > data["RenyiTwo"] > 0
    ];

    Print[
      "N=", nCut,
      " nu=", N[data["NuLeft"], 8],
      " S=", N[data["Entropy"], 10],
      " S2=", N[data["RenyiTwo"], 10],
      " mutual information=", N[data["MutualInformation"], 10],
      " modular residual=", N[modularReconstruction, 5],
      " purity-block residual=", N[purityBlockResidual, 5]
    ];
  ],
  {nCut, {1, 2, 4, 8}}
];

expectedNFour = {
  6.8567568017639984133,
  5.6982864624152502201,
  13.7135136035279968267
};
dataNFour = entanglementData[4];
observedNFour = {
  dataNFour["Entropy"], dataNFour["RenyiTwo"],
  dataNFour["MutualInformation"]
};
assert[
  "stored N=4 entanglement benchmark",
  Max[Abs[observedNFour - expectedNFour]] < 10^-18
];

If[TrueQ[testFailed],
  Print["ERROR: finite-cutoff entanglement checks failed."];
  Exit[1]
];

Print["All finite-cutoff entanglement checks passed."];
