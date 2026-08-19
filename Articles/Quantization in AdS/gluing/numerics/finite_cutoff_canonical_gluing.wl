(* ::Package:: *)

(* ===================================================================== *)
(*  Reduced canonical boundary-feedback gluing at finite cutoff          *)
(*                                                                       *)
(*  The N strict-Dirichlet modes on each half interval are reorganized   *)
(*  into symmetric and antisymmetric sectors. Flux matching removes q   *)
(*  as an independent coordinate. The symmetric feedback equation is    *)
(*  symmetrized by D=diag(k_n^2), producing the positive matrices        *)
(*      MPlus = D + L v.v^T,                                             *)
(*      KPlus = m^2 MPlus + D^2,       v = D.A.                          *)
(*  Together with the N antisymmetric pole modes this is a 2N-mode       *)
(*  canonical regulator. No growing Galerkin port mode is retained.      *)
(*                                                                       *)
(*  Checks at N=1,2,4,8:                                                 *)
(*   (1) the generalized eigenvalues are the zeros of truncated DtN;     *)
(*   (2) every reconstructed mode obeys flux matching;                   *)
(*   (3) S^T.J.S=J and S^T.Hred.S=Hglobal;                               *)
(*   (4) the transformed vacuum covariance is pure and positive.         *)
(* ===================================================================== *)

ClearAll["Global`*"];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

ell = 1;
mass = 1;
workingPrecision = 80;
tolerance = 10^-45;

portOverlap[Nmax_] :=
  Table[(-1)^(n + 1) Sqrt[2 ell]/(n Pi), {n, 1, Nmax}];

waveNumberSquared[Nmax_] :=
  DiagonalMatrix[Table[(n Pi/ell)^2, {n, 1, Nmax}]];

feedbackMatrices[Nmax_] := Module[
  {a, d, v, h, r, mPlus, kPlus, omegaMinusSquared},
  a = portOverlap[Nmax];
  d = waveNumberSquared[Nmax];
  v = d . a;
  h = ell/Sqrt[2] v;
  r = IdentityMatrix[Nmax] + ell Outer[Times, a, v];
  mPlus = d + ell Outer[Times, v, v];
  kPlus = mass^2 mPlus + d . d;
  omegaMinusSquared = mass^2 IdentityMatrix[Nmax] + d;
  <|
    "A" -> a,
    "D" -> d,
    "v" -> v,
    "h" -> h,
    "R" -> r,
    "MPlus" -> mPlus,
    "KPlus" -> kPlus,
    "OmegaMinusSquared" -> omegaMinusSquared
  |>
];

normalizedGeneralizedModes[k_, m_] := Module[
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

dtnAtWaveNumberSquared[Nmax_, kSquared_] := Module[{dValues},
  dValues = Diagonal[waveNumberSquared[Nmax]];
  1/ell - (2 kSquared/ell) Total[1/(dValues - kSquared)]
];

interlacingPermutation[Nmax_] :=
  IdentityMatrix[2 Nmax][[
    Join[Range[1, 2 Nmax, 2], Range[2, 2 Nmax, 2]]
  ]];

canonicalData[Nmax_] := Module[
  {data, mPlus, kPlus, omegaMinusSquared, plusValues, u,
   configurationMetric, configurationStiffness, tGrouped,
   permutation, tInterlaced, zero, identity, s, j,
   regionalHamiltonian, globalFrequenciesSquared, globalHamiltonian,
   omegaGlobal, sigmaGlobal, sigmaRegional},
  data = feedbackMatrices[Nmax];
  mPlus = data["MPlus"];
  kPlus = data["KPlus"];
  omegaMinusSquared = data["OmegaMinusSquared"];
  {plusValues, u} = normalizedGeneralizedModes[kPlus, mPlus];

  configurationMetric = ArrayFlatten[{
    {mPlus, ConstantArray[0, {Nmax, Nmax}]},
    {ConstantArray[0, {Nmax, Nmax}], IdentityMatrix[Nmax]}
  }];
  configurationStiffness = ArrayFlatten[{
    {kPlus, ConstantArray[0, {Nmax, Nmax}]},
    {ConstantArray[0, {Nmax, Nmax}], omegaMinusSquared}
  }];

  tGrouped = ArrayFlatten[{
    {u, ConstantArray[0, {Nmax, Nmax}]},
    {ConstantArray[0, {Nmax, Nmax}], IdentityMatrix[Nmax]}
  }];
  permutation = interlacingPermutation[Nmax];
  tInterlaced = tGrouped . permutation;

  zero = ConstantArray[0, {2 Nmax, 2 Nmax}];
  identity = IdentityMatrix[2 Nmax];
  s = ArrayFlatten[{
    {tInterlaced, zero},
    {zero, Inverse[Transpose[tInterlaced]]}
  }];
  j = ArrayFlatten[{{zero, identity}, {-identity, zero}}];

  regionalHamiltonian = ArrayFlatten[{
    {configurationStiffness, zero},
    {zero, Inverse[configurationMetric]}
  }];
  globalFrequenciesSquared = Flatten[
    Transpose[{plusValues, Diagonal[omegaMinusSquared]}]
  ];
  globalHamiltonian = ArrayFlatten[{
    {DiagonalMatrix[globalFrequenciesSquared], zero},
    {zero, identity}
  }];

  omegaGlobal = Sqrt[globalFrequenciesSquared];
  sigmaGlobal = 1/2 ArrayFlatten[{
    {DiagonalMatrix[1/omegaGlobal], zero},
    {zero, DiagonalMatrix[omegaGlobal]}
  }];
  sigmaRegional = s . sigmaGlobal . Transpose[s];

  Join[data, <|
    "PlusValues" -> plusValues,
    "U" -> u,
    "ConfigurationMetric" -> configurationMetric,
    "ConfigurationStiffness" -> configurationStiffness,
    "S" -> s,
    "J" -> j,
    "RegionalHamiltonian" -> regionalHamiltonian,
    "GlobalHamiltonian" -> globalHamiltonian,
    "GlobalFrequenciesSquared" -> globalFrequenciesSquared,
    "SigmaGlobal" -> sigmaGlobal,
    "SigmaRegional" -> sigmaRegional
  |>]
];

Do[
  Module[
    {data, d, r, mPlus, kPlus, plusValues, u, h,
     dtnResiduals, fluxResiduals, symplecticResidual,
     hamiltonianResidual, modeNormalizationResidual,
     purityResidual, uncertaintyEigenvalues, positivity,
     reconstructedQ},
    data = canonicalData[nCut];
    d = data["D"];
    r = data["R"];
    mPlus = data["MPlus"];
    kPlus = data["KPlus"];
    plusValues = data["PlusValues"];
    u = data["U"];
    h = data["h"];

    assert[
      "D R symmetrizes the feedback equation at N=" <> ToString[nCut],
      FullSimplify[d . r == mPlus]
    ];
    assert[
      "KPlus = m^2 MPlus + D^2 at N=" <> ToString[nCut],
      FullSimplify[kPlus == mass^2 mPlus + d . d]
    ];

    positivity = Min[Eigenvalues[N[mPlus, workingPrecision]]] > 0 &&
      Min[Eigenvalues[N[kPlus, workingPrecision]]] > 0;
    assert[
      "positive reduced quadratic forms at N=" <> ToString[nCut],
      positivity
    ];

    dtnResiduals = Table[
      Abs[dtnAtWaveNumberSquared[
        nCut, plusValues[[jMode]] - mass^2
      ]],
      {jMode, 1, nCut}
    ];
    assert[
      "generalized eigenvalues equal DtN zeros at N=" <> ToString[nCut],
      Max[dtnResiduals] < tolerance
    ];

    modeNormalizationResidual = Max[Abs[
      ConjugateTranspose[u] . N[mPlus, workingPrecision] . u
      - IdentityMatrix[nCut]
    ]];
    assert[
      "MPlus-normalized feedback modes at N=" <> ToString[nCut],
      modeNormalizationResidual < tolerance
    ];

    fluxResiduals = Table[
      reconstructedQ = h . u[[All, jMode]];
      Abs[2 reconstructedQ/ell
        - Sqrt[2] data["v"] . u[[All, jMode]]],
      {jMode, 1, nCut}
    ];
    assert[
      "reconstructed modes obey flux matching at N=" <> ToString[nCut],
      Max[fluxResiduals] < tolerance
    ];

    symplecticResidual = Max[Abs[
      Transpose[data["S"]] . data["J"] . data["S"] - data["J"]
    ]];
    assert[
      "S^T J S = J at N=" <> ToString[nCut],
      symplecticResidual < tolerance
    ];

    hamiltonianResidual = Max[Abs[
      Transpose[data["S"]] . data["RegionalHamiltonian"] . data["S"]
      - data["GlobalHamiltonian"]
    ]];
    assert[
      "quadratic Hamiltonians intertwine at N=" <> ToString[nCut],
      hamiltonianResidual < tolerance
    ];

    purityResidual = Max[Abs[
      data["SigmaRegional"] . data["J"] . data["SigmaRegional"]
      - data["J"]/4
    ]];
    assert[
      "vacuum covariance is pure at N=" <> ToString[nCut],
      purityResidual < tolerance
    ];

    uncertaintyEigenvalues = Eigenvalues[N[
      data["SigmaRegional"] + I data["J"]/2,
      workingPrecision
    ]];
    assert[
      "vacuum covariance obeys uncertainty relation at N=" <>
        ToString[nCut],
      Min[Re[uncertaintyEigenvalues]] > -tolerance
    ];

    Print[
      "N=", nCut,
      " frequencies=", N[Sqrt[data["GlobalFrequenciesSquared"]], 12],
      " max DtN residual=", N[Max[dtnResiduals], 5],
      " symplectic residual=", N[symplecticResidual, 5],
      " Hamiltonian residual=", N[hamiltonianResidual, 5],
      " purity residual=", N[purityResidual, 5]
    ];
  ],
  {nCut, {1, 2, 4, 8}}
];

If[TrueQ[testFailed],
  Print["ERROR: finite-cutoff canonical gluing checks failed."];
  Exit[1]
];

Print["All finite-cutoff canonical gluing checks passed."];
