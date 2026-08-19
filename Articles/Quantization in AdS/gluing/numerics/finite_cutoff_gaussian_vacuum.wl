(* ::Package:: *)

(* ===================================================================== *)
(*  Finite-cutoff global Gaussian vacuum in the regional representation  *)
(*                                                                       *)
(*  Loads finite_cutoff_canonical_gluing.wl, transforms the reduced       *)
(*  parity variables back to left/right canonical variables, constructs  *)
(*  alpha, beta and Z=alpha^-1 beta, and checks the squeezed state        *)
(*  against the global-Hamiltonian covariance.                            *)
(* ===================================================================== *)

ClearAll["Global`*"];

canonicalScript = FileNameJoin[{
  DirectoryName[$InputFileName],
  "finite_cutoff_canonical_gluing.wl"
}];
Block[{Print = (Null &)}, Get[canonicalScript]];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

gaussianData[Nmax_] := Module[
  {data, u, permutation, tGrouped, tInterlaced, parity,
   configurationMap, zero, fullMap, omegaReference,
   omegaGlobal, sqrtReference, sqrtGlobal,
   qFromRegional, pFromRegional, alpha, beta, z,
   sigmaRegional, sigmaReference, sigmaFromZ,
   xCovariance, pCovariance, occupationFromCovariance,
   occupationFromBeta, overlapFromZ, overlapFromAlpha,
   overlapFromCovariance, energyFromBeta, energyFromCovariance},
  data = canonicalData[Nmax];
  u = data["U"];
  permutation = interlacingPermutation[Nmax];
  tGrouped = ArrayFlatten[{
    {u, ConstantArray[0, {Nmax, Nmax}]},
    {ConstantArray[0, {Nmax, Nmax}], IdentityMatrix[Nmax]}
  }];
  tInterlaced = tGrouped . permutation;
  parity = 1/Sqrt[2] ArrayFlatten[{
    {IdentityMatrix[Nmax], IdentityMatrix[Nmax]},
    {IdentityMatrix[Nmax], -IdentityMatrix[Nmax]}
  }];
  configurationMap = parity . tInterlaced;
  zero = ConstantArray[0, {2 Nmax, 2 Nmax}];
  fullMap = ArrayFlatten[{
    {configurationMap, zero},
    {zero, Inverse[Transpose[configurationMap]]}
  }];

  omegaReference = DiagonalMatrix[Join[
    Sqrt[Diagonal[data["OmegaMinusSquared"]]],
    Sqrt[Diagonal[data["OmegaMinusSquared"]]]
  ]];
  omegaGlobal = DiagonalMatrix[Sqrt[data["GlobalFrequenciesSquared"]]];
  sqrtReference = MatrixPower[N[omegaReference, workingPrecision], 1/2];
  sqrtGlobal = MatrixPower[N[omegaGlobal, workingPrecision], 1/2];

  qFromRegional = Inverse[configurationMap];
  pFromRegional = Transpose[configurationMap];
  alpha = 1/2 (
    sqrtGlobal . qFromRegional . Inverse[sqrtReference]
    + Inverse[sqrtGlobal] . pFromRegional . sqrtReference
  );
  beta = 1/2 (
    sqrtGlobal . qFromRegional . Inverse[sqrtReference]
    - Inverse[sqrtGlobal] . pFromRegional . sqrtReference
  );
  z = LinearSolve[alpha, beta];

  sigmaRegional = fullMap . data["SigmaGlobal"] . Transpose[fullMap];
  sigmaReference = 1/2 ArrayFlatten[{
    {Inverse[omegaReference], zero},
    {zero, omegaReference}
  }];

  xCovariance = 1/2 Inverse[sqrtReference] .
    Inverse[IdentityMatrix[2 Nmax] + z] .
    (IdentityMatrix[2 Nmax] - z) .
    Inverse[sqrtReference];
  pCovariance = 1/2 sqrtReference .
    Inverse[IdentityMatrix[2 Nmax] - z] .
    (IdentityMatrix[2 Nmax] + z) .
    sqrtReference;
  sigmaFromZ = ArrayFlatten[{{xCovariance, zero}, {zero, pCovariance}}];

  occupationFromBeta = ConjugateTranspose[beta] . beta;
  occupationFromCovariance = 1/2 (
    sqrtReference . xCovariance . sqrtReference
    + Inverse[sqrtReference] . pCovariance . Inverse[sqrtReference]
    - IdentityMatrix[2 Nmax]
  );

  overlapFromZ = Det[IdentityMatrix[2 Nmax]
      - z . ConjugateTranspose[z]]^(1/4);
  overlapFromAlpha = 1/Sqrt[Abs[Det[alpha]]];
  overlapFromCovariance = 1/Det[sigmaReference + sigmaRegional]^(1/4);

  energyFromBeta = Tr[omegaReference . occupationFromBeta];
  energyFromCovariance = 1/2 Tr[
      pCovariance + omegaReference . omegaReference . xCovariance
    ] - 1/2 Tr[omegaReference];

  Join[data, <|
    "ConfigurationMap" -> configurationMap,
    "FullMap" -> fullMap,
    "OmegaReference" -> omegaReference,
    "Alpha" -> alpha,
    "Beta" -> beta,
    "Z" -> z,
    "SigmaRegionalLR" -> sigmaRegional,
    "SigmaReference" -> sigmaReference,
    "SigmaFromZ" -> sigmaFromZ,
    "OccupationFromBeta" -> occupationFromBeta,
    "OccupationFromCovariance" -> occupationFromCovariance,
    "OverlapFromZ" -> overlapFromZ,
    "OverlapFromAlpha" -> overlapFromAlpha,
    "OverlapFromCovariance" -> overlapFromCovariance,
    "EnergyFromBeta" -> energyFromBeta,
    "EnergyFromCovariance" -> energyFromCovariance
  |>]
];

Do[
  Module[
    {data, alpha, beta, z, canonicalOne, canonicalTwo,
     zSymmetry, zPositivity, annihilationResidual,
     covarianceResidual, occupationResidual, overlapResidual,
     energyResidual, determinantMResidual, plusOmega,
     referenceHalfOmega, xFactor, factorizedOverlap,
     factorizedOverlapResidual, hsDeterminantResidual,
     frequencyDeterminantRatio},
    data = gaussianData[nCut];
    alpha = data["Alpha"];
    beta = data["Beta"];
    z = data["Z"];

    canonicalOne = Max[Abs[
      alpha . ConjugateTranspose[alpha]
      - beta . ConjugateTranspose[beta]
      - IdentityMatrix[2 nCut]
    ]];
    canonicalTwo = Max[Abs[
      alpha . Transpose[beta] - beta . Transpose[alpha]
    ]];
    zSymmetry = Max[Abs[z - Transpose[z]]];
    zPositivity = Min[Eigenvalues[N[
      IdentityMatrix[2 nCut] - z . ConjugateTranspose[z],
      workingPrecision
    ]]];
    annihilationResidual = Max[Abs[alpha . z - beta]];
    covarianceResidual = Max[Abs[
      data["SigmaFromZ"] - data["SigmaRegionalLR"]
    ]];
    occupationResidual = Max[Abs[
      data["OccupationFromBeta"] - data["OccupationFromCovariance"]
    ]];
    overlapResidual = Max[Abs[{
      data["OverlapFromZ"] - data["OverlapFromAlpha"],
      data["OverlapFromZ"] - data["OverlapFromCovariance"]
    }]];
    energyResidual = Abs[
      data["EnergyFromBeta"] - data["EnergyFromCovariance"]
    ];
    determinantMResidual = Abs[
      Det[N[data["MPlus"], workingPrecision]]
      - Det[N[data["D"], workingPrecision]] (1 + 2 nCut)
    ]/Det[N[data["MPlus"], workingPrecision]];
    plusOmega = DiagonalMatrix[Sqrt[data["PlusValues"]]];
    referenceHalfOmega = DiagonalMatrix[
      Sqrt[Diagonal[data["OmegaMinusSquared"]]]
    ];
    xFactor = MatrixPower[referenceHalfOmega, 1/2] . data["U"] .
      Inverse[plusOmega] . Transpose[data["U"]] .
      MatrixPower[referenceHalfOmega, 1/2];
    factorizedOverlap = 2^(nCut/2)
      (Det[referenceHalfOmega]/Det[plusOmega])^(1/4)
      Det[data["MPlus"]]^(-1/4)
      Det[IdentityMatrix[nCut] + xFactor]^(-1/2);
    factorizedOverlapResidual = Abs[
      factorizedOverlap - data["OverlapFromZ"]
    ];
    hsDeterminantResidual = Abs[
      data["OverlapFromZ"]
      - Det[IdentityMatrix[2 nCut]
          + beta . ConjugateTranspose[beta]]^(-1/4)
    ];
    frequencyDeterminantRatio =
      Det[referenceHalfOmega]/Det[plusOmega];

    assert[
      "Bogoliubov canonical identities at N=" <> ToString[nCut],
      Max[canonicalOne, canonicalTwo] < tolerance
    ];
    assert[
      "Z is symmetric at N=" <> ToString[nCut],
      zSymmetry < tolerance
    ];
    assert[
      "1-Z.Zdagger is positive at N=" <> ToString[nCut],
      zPositivity > 0
    ];
    assert[
      "squeezed-state annihilation equation at N=" <> ToString[nCut],
      annihilationResidual < tolerance
    ];
    assert[
      "squeezed and global-Hamiltonian covariances agree at N=" <>
        ToString[nCut],
      covarianceResidual < tolerance
    ];
    assert[
      "occupation matrices agree at N=" <> ToString[nCut],
      occupationResidual < tolerance
    ];
    assert[
      "overlap formulas agree at N=" <> ToString[nCut],
      overlapResidual < tolerance
    ];
    assert[
      "regional excitation energies agree at N=" <> ToString[nCut],
      energyResidual < tolerance
    ];
    assert[
      "det(MPlus)=det(D)(1+2N) at N=" <> ToString[nCut],
      determinantMResidual < tolerance
    ];
    assert[
      "factorized overlap formula at N=" <> ToString[nCut],
      factorizedOverlapResidual < tolerance
    ];
    assert[
      "overlap equals det(1+beta.betadagger)^(-1/4) at N=" <>
        ToString[nCut],
      hsDeterminantResidual < tolerance
    ];
    assert[
      "feedback-zero determinant interlacing at N=" <> ToString[nCut],
      1 < frequencyDeterminantRatio <
        Last[Diagonal[referenceHalfOmega]]/mass
    ];

    Print[
      "N=", nCut,
      " overlap=", N[data["OverlapFromZ"], 10],
      " particles=", N[Tr[data["OccupationFromBeta"]], 10],
      " energy=", N[data["EnergyFromBeta"], 10],
      " covariance residual=", N[covarianceResidual, 5]
    ];
  ],
  {nCut, {1, 2, 4, 8, 16}}
];

benchmarkN = {2, 4, 8, 16, 32, 64};
diagnosticTable = Table[
  Module[{data = gaussianData[nCut]},
    {nCut, data["OverlapFromZ"],
     Tr[data["OccupationFromBeta"]], data["EnergyFromBeta"]}
  ],
  {nCut, benchmarkN}
];

expectedAtEight = {
  5.23710051374448266756950840835*^-4,
  639.617291178325428366851622287,
  12637.9829203767141463667045660
};
observedAtEight = diagnosticTable[[3, 2 ;; 4]];
assert[
  "stored N=8 Gaussian benchmark",
  Max[Abs[observedAtEight - expectedAtEight]] < 10^-25
];

Print["columns: {N, overlap, regional particle number, regional energy}"];
Print[TableForm[N[diagnosticTable, 12]]];

effectiveExponentTable = Table[
  Module[
    {nLow, fLow, fHigh, particlesLow, particlesHigh,
     energyLow, energyHigh, overlapCoefficient},
    nLow = diagnosticTable[[jRow, 1]];
    fLow = diagnosticTable[[jRow, 2]];
    fHigh = diagnosticTable[[jRow + 1, 2]];
    particlesLow = diagnosticTable[[jRow, 3]];
    particlesHigh = diagnosticTable[[jRow + 1, 3]];
    energyLow = diagnosticTable[[jRow, 4]];
    energyHigh = diagnosticTable[[jRow + 1, 4]];
    overlapCoefficient = (
      -Log[fHigh] + 2 Log[fLow]
    )/(2 nLow Log[2]);
    {2 nLow,
     Log[particlesHigh/particlesLow]/Log[2],
     Log[energyHigh/energyLow]/Log[2],
     overlapCoefficient}
  ],
  {jRow, 1, Length[diagnosticTable] - 1}
];

Print[
  "effective columns: {upper N, particle power, energy power, ",
  "coefficient of N log N in -log(overlap)}"
];
Print[TableForm[N[effectiveExponentTable, 10]]];

If[TrueQ[testFailed],
  Print["ERROR: finite-cutoff Gaussian vacuum checks failed."];
  Exit[1]
];

Print["All finite-cutoff Gaussian vacuum checks passed."];
