(* ::Package:: *)

(*
  Optional product-Fock comparison for the conforming port regulator.

  The reference system consists of the 2 N strict-Dirichlet regional
  oscillators built from the full-field projections r = c + d q, together
  with one independently factorized oscillator for the mass-normalized port
  pair Qq = Sqrt[rho] q, Pq = piq/Sqrt[rho].  The default port frequency is
  the diagonal Schur frequency.  Changing that frequency changes only the
  added port column of the Bogoliubov matrix; the regional creation block is
  invariant.

  Exact/analytic checks:
  - full finite-N Bogoliubov CCR require the port column;
  - the regional block is independent of the chosen port frequency;
  - for every fixed common continuum mode p, its DD-to-DN regional row has
      Sum[n <= cutoff] |beta[p,n]|^2
        = Log[cutoff]/(Pi L Omega[p]) + O[1],
    hence the creation block is not Hilbert-Schmidt.

  Numerical port-Galerkin rows are convergence diagnostics, not the proof of
  the continuum asymptotic.
*)

ClearAll["Global`*"];

PortSchurData[n_Integer, ell_, mass_] := Module[
  {aa, dd, gg, rho, omega2, stiffness, kqq},
  aa = Table[(-1)^(j + 1) Sqrt[2 ell]/(j Pi), {j, n}];
  dd = Join[aa, aa];
  gg = Join[
    Table[aa[[j]] (j Pi/ell)^2, {j, n}],
    Table[aa[[j]] (j Pi/ell)^2, {j, n}]
  ];
  rho = 2 ell/3 - dd.dd;
  omega2 = Join[
    Table[mass^2 + (j Pi/ell)^2, {j, n}],
    Table[mass^2 + (j Pi/ell)^2, {j, n}]
  ];
  kqq = (4 n + 2)/ell + mass^2 rho;
  stiffness = ArrayFlatten[{
    {DiagonalMatrix[omega2], -Transpose[{gg/Sqrt[rho]}]},
    {{-gg/Sqrt[rho]}, {{kqq/rho}}}
  }];
  <|
    "A" -> aa,
    "d" -> dd,
    "g" -> gg,
    "Rho" -> rho,
    "RegionalOmegaSquared" -> omega2,
    "Kqq" -> kqq,
    "MassNormalizedStiffness" -> stiffness
  |>
];

PortBogoliubovData[
  n_Integer,
  ell_: 1,
  mass_: 1,
  portFrequencyScale_: 1,
  precision_: 50
] := Module[
  {
    data, stiffness, eigenvalues, eigenvectors, order, normalFrequencies,
    regionalFrequencies, portFrequency, referenceFrequencies,
    sqrtNormal, invSqrtNormal, sqrtReference, invSqrtReference,
    alpha, beta, identity, ccr1, ccr2, ccr1Regional, lowestRegionalRow,
    lowestPortEntry, positionCovariance, momentumCovariance,
    regionPositionCovariance, regionMomentumCovariance,
    regionSymplecticEigenvalues, squeezeKernel, squeezeSymmetryResidual,
    squeezeLargestSingularValue, logVacuumFidelity
  },
  data = PortSchurData[n, ell, mass];
  stiffness = N[data["MassNormalizedStiffness"], precision];
  {eigenvalues, eigenvectors} = Eigensystem[
    (stiffness + Transpose[stiffness])/2
  ];
  order = Ordering[eigenvalues];
  eigenvalues = eigenvalues[[order]];
  eigenvectors = eigenvectors[[order]];
  normalFrequencies = Sqrt[eigenvalues];
  regionalFrequencies = Sqrt[N[data["RegionalOmegaSquared"], precision]];
  portFrequency = portFrequencyScale Sqrt[N[data["Kqq"]/data["Rho"], precision]];
  referenceFrequencies = Join[regionalFrequencies, {portFrequency}];

  sqrtNormal = DiagonalMatrix[Sqrt[normalFrequencies]];
  invSqrtNormal = DiagonalMatrix[1/Sqrt[normalFrequencies]];
  sqrtReference = DiagonalMatrix[Sqrt[referenceFrequencies]];
  invSqrtReference = DiagonalMatrix[1/Sqrt[referenceFrequencies]];

  alpha = (
    sqrtNormal.eigenvectors.invSqrtReference +
    invSqrtNormal.eigenvectors.sqrtReference
  )/2;
  beta = (
    sqrtNormal.eigenvectors.invSqrtReference -
    invSqrtNormal.eigenvectors.sqrtReference
  )/2;
  identity = IdentityMatrix[2 n + 1];
  ccr1 = Max[Abs[Flatten[
    alpha.Transpose[alpha] - beta.Transpose[beta] - identity
  ]]];
  ccr2 = Max[Abs[Flatten[
    alpha.Transpose[beta] - beta.Transpose[alpha]
  ]]];
  ccr1Regional = Max[Abs[Flatten[
    alpha[[All, 1 ;; 2 n]].Transpose[alpha[[All, 1 ;; 2 n]]] -
    beta[[All, 1 ;; 2 n]].Transpose[beta[[All, 1 ;; 2 n]]] - identity
  ]]];
  lowestRegionalRow = Total[Abs[beta[[1, 1 ;; 2 n]]]^2];
  lowestPortEntry = Abs[beta[[1, -1]]]^2;
  positionCovariance = Transpose[eigenvectors].
    DiagonalMatrix[1/(2 normalFrequencies)].eigenvectors;
  momentumCovariance = Transpose[eigenvectors].
    DiagonalMatrix[normalFrequencies/2].eigenvectors;
  regionPositionCovariance = positionCovariance[[1 ;; n, 1 ;; n]];
  regionMomentumCovariance = momentumCovariance[[1 ;; n, 1 ;; n]];
  regionSymplecticEigenvalues = Sort[Sqrt[Re[Eigenvalues[
    regionPositionCovariance.regionMomentumCovariance
  ]]]];
  squeezeKernel = LinearSolve[alpha, beta];
  squeezeSymmetryResidual = Max[Abs[Flatten[
    squeezeKernel - Transpose[squeezeKernel]
  ]]];
  squeezeLargestSingularValue = Max[SingularValueList[squeezeKernel]];
  logVacuumFidelity = -Total[Log[SingularValueList[alpha]]];

  <|
    "N" -> n,
    "Rho" -> N[data["Rho"], 16],
    "PortFrequencyScale" -> portFrequencyScale,
    "PortFrequency" -> N[portFrequency, 16],
    "LowestFrequency" -> N[First[normalFrequencies], 16],
    "CCR1Residual" -> ccr1,
    "CCR2Residual" -> ccr2,
    "CCRDefectWithoutPort" -> ccr1Regional,
    "RegionalBetaHilbertSchmidtSquared" -> N[
      Total[Flatten[Abs[beta[[All, 1 ;; 2 n]]]^2]], 16
    ],
    "PortBetaHilbertSchmidtSquared" -> N[
      Total[Abs[beta[[All, -1]]]^2], 16
    ],
    "TotalBetaHilbertSchmidtSquared" -> N[
      Total[Flatten[Abs[beta]^2]], 16
    ],
    "LowestRegionalRowSquared" -> N[lowestRegionalRow, 16],
    "LowestPortEntrySquared" -> N[lowestPortEntry, 16],
    "RegionOneMinSymplecticEigenvalue" -> N[
      First[regionSymplecticEigenvalues], 16
    ],
    "RegionOneMaxSymplecticEigenvalue" -> N[
      Last[regionSymplecticEigenvalues], 16
    ],
    "SqueezeSymmetryResidual" -> squeezeSymmetryResidual,
    "SqueezeLargestSingularValue" -> N[
      squeezeLargestSingularValue, 16
    ],
    "LogVacuumFidelity" -> N[logVacuumFidelity, 16],
    "RegionalBetaBlock" -> beta[[All, 1 ;; 2 n]]
  |>
];

DDDNOverlap[p_Integer, n_Integer] := Module[{a = p + 1/2},
  (-1)^(n + p + 1) 2 n/(Pi (n^2 - a^2))
];

overlapSymbolicResidual = FullSimplify[
  (2/ell) Integrate[
    Sin[n Pi y/ell] Sin[(p + 1/2) Pi y/ell],
    {y, 0, ell}
  ] - (-1)^(n + p + 1) 2 n/(Pi (n^2 - (p + 1/2)^2)),
  Assumptions -> {
    ell > 0,
    Element[n, Integers],
    n >= 1,
    Element[p, Integers],
    p >= 0
  }
];

ContinuumBeta[p_Integer, n_Integer, ell_, mass_] := Module[
  {a, globalFrequency, regionalFrequency, overlap},
  a = p + 1/2;
  globalFrequency = Sqrt[mass^2 + (a Pi/ell)^2];
  regionalFrequency = Sqrt[mass^2 + (n Pi/ell)^2];
  overlap = DDDNOverlap[p, n];
  (Sqrt[globalFrequency/regionalFrequency] -
    Sqrt[regionalFrequency/globalFrequency]) overlap/2
];

ContinuumRowPartialSum[p_Integer, cutoff_Integer, ell_: 1, mass_: 1] :=
  Sum[ContinuumBeta[p, n, ell, mass]^2, {n, 1, cutoff}];

fixedRowSymbolicCheck = FullSimplify[
  Limit[
    n (
      (Sqrt[globalFrequency/regionalFrequency] -
        Sqrt[regionalFrequency/globalFrequency])/2
      2 n/(Pi (n^2 - a^2))
    )^2 /. regionalFrequency -> Sqrt[mass^2 + (n Pi/ell)^2],
    n -> Infinity
  ],
  Assumptions -> {
    globalFrequency > 0,
    ell > 0,
    mass >= 0,
    a > 0
  }
];

fixedRowTarget = 1/(Pi ell globalFrequency);
fixedRowAsymptoticPassed = FullSimplify[
  fixedRowSymbolicCheck == fixedRowTarget,
  Assumptions -> {globalFrequency > 0, ell > 0}
];

testedNs = {4, 8, 16, 32, 64, 128};
rows = PortBogoliubovData[#, 1, 1, 1, 50] & /@ testedNs;

frequencyScaleRows = PortBogoliubovData[64, 1, 1, #, 50] & /@ {1/2, 1, 2};
regionalBlockScaleResidual = Max[Abs[Flatten[
  frequencyScaleRows[[1]]["RegionalBetaBlock"] -
  frequencyScaleRows[[3]]["RegionalBetaBlock"]
]]];

continuumCutoffs = {128, 256, 512, 1024, 2048, 4096, 8192};
continuumRows = Table[
  <|
    "N" -> cutoff,
    "P0PartialSum" -> N[ContinuumRowPartialSum[0, cutoff, 1, 1], 16],
    "P0DoublingSlope" -> If[
      cutoff == First[continuumCutoffs],
      Missing["NotAvailable"],
      N[
        (ContinuumRowPartialSum[0, cutoff, 1, 1] -
          ContinuumRowPartialSum[0, cutoff/2, 1, 1])/Log[2],
        16
      ]
    ]
  |>,
  {cutoff, continuumCutoffs}
];

targetP0Coefficient = N[1/(Pi Sqrt[1 + (Pi/2)^2]), 16];
tolerance = 10^-9;
allChecksPassed = And[
  TrueQ[overlapSymbolicResidual == 0],
  TrueQ[fixedRowAsymptoticPassed],
  regionalBlockScaleResidual < 10^-30,
  And @@ Table[
    row["Rho"] > 0 &&
    row["CCR1Residual"] < tolerance &&
    row["CCR2Residual"] < tolerance &&
    row["CCRDefectWithoutPort"] > 10^-6 &&
    row["RegionOneMinSymplecticEigenvalue"] >= 1/2 - tolerance &&
    row["RegionOneMaxSymplecticEigenvalue"] > 1/2 + 10^-6 &&
    row["SqueezeSymmetryResidual"] < tolerance &&
    row["SqueezeLargestSingularValue"] < 1,
    {row, rows}
  ]
];

report = <|
  "OverlapSymbolicResidual" -> overlapSymbolicResidual,
  "FixedRowLimit" -> fixedRowSymbolicCheck,
  "FixedRowTarget" -> fixedRowTarget,
  "FixedRowAsymptoticPassed" -> fixedRowAsymptoticPassed,
  "Rows" -> (KeyDrop[#, "RegionalBetaBlock"] & /@ rows),
  "FrequencyScaleRows" -> (
    KeyTake[#, {
      "PortFrequencyScale",
      "RegionalBetaHilbertSchmidtSquared",
      "PortBetaHilbertSchmidtSquared",
      "TotalBetaHilbertSchmidtSquared"
    }] & /@ frequencyScaleRows
  ),
  "RegionalBlockScaleResidual" -> regionalBlockScaleResidual,
  "ContinuumRows" -> continuumRows,
  "TargetP0LogCoefficient" -> targetP0Coefficient,
  "AllChecksPassed" -> allChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[allChecksPassed], Exit[0], Exit[1]];
