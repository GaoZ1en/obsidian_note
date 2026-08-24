(* ::Package:: *)

(* ===================================================================== *)
(*  Port Galerkin canonical normal-form checks                            *)
(*                                                                       *)
(*  Model and notation: ../formalism.md and ../port-canonical-normal-form.md. *)
(*  Benchmark parameters for numerical scaling tables: L = m = 1.       *)
(*                                                                       *)
(*  This script verifies finite-N identities.  Fits or apparent limiting *)
(*  values printed by the script are numerical evidence, not proofs.     *)
(* ===================================================================== *)

ClearAll["Global`*"];

PortData[n_Integer, ell_, mass_] := Module[
  {aa, dd, gg, h2, rho, omega2, mm, kk},
  aa = Table[(-1)^(j + 1) Sqrt[2 ell]/(j Pi), {j, n}];
  dd = Join[aa, aa];
  gg = Join[
    Table[aa[[j]] (j Pi/ell)^2, {j, n}],
    Table[aa[[j]] (j Pi/ell)^2, {j, n}]
  ];
  h2 = ell/3;
  rho = 2 h2 - dd.dd;
  omega2 = Join[
    Table[mass^2 + (j Pi/ell)^2, {j, n}],
    Table[mass^2 + (j Pi/ell)^2, {j, n}]
  ];
  mm = ArrayFlatten[{
    {IdentityMatrix[2 n], Transpose[{dd}]},
    {{dd}, {{2 h2}}}
  }];
  kk = ArrayFlatten[{
    {DiagonalMatrix[omega2], Transpose[{mass^2 dd}]},
    {{mass^2 dd}, {{2 (1/ell + mass^2 h2)}}}
  }];
  <|
    "A" -> aa,
    "d" -> dd,
    "g" -> gg,
    "h2" -> h2,
    "Rho" -> rho,
    "OmegaSquared" -> omega2,
    "M" -> mm,
    "K" -> kk
  |>
];

SchurTransform[n_Integer, dd_] := ArrayFlatten[{
  {IdentityMatrix[2 n], -Transpose[{dd}]},
  {ConstantArray[0, {1, 2 n}], {{1}}}
}];

SymmetricPower[matrix_, power_] := Module[{values, vectors},
  {values, vectors} = Eigensystem[(matrix + Transpose[matrix])/2];
  Transpose[vectors].DiagonalMatrix[values^power].vectors
];

NormalFormChecks[n_Integer, ell_: 1, mass_: 1, precision_: 60] := Module[
  {
    exact, dd, gg, rho, mm, kk, transform, transformedM, transformedK,
    expectedM, expectedK, massEigenvalues, shat2, rhohat, discriminant,
    muMinus, muPlus, zero, identity, j0, jm, mHalf, mInvHalf,
    canonicalK, eigenvalues, orthogonalRows, velocityMap, canonicalMap,
    sourceVelocityHamiltonian, sourceCanonicalHamiltonian,
    normalHamiltonian, velocitySymplecticResidual,
    velocityHamiltonianResidual, velocitySymplecticRelativeResidual,
    velocityHamiltonianRelativeResidual, canonicalSymplecticResidual,
    canonicalHamiltonianResidual, canonicalSymplecticRelativeResidual,
    canonicalHamiltonianRelativeResidual,
    generalizedValues, generalizedVectors, order, normalizedVectors,
    qVariance, qVelocityVariance, residualMomentumVariance, exactQVariance
  },
  exact = PortData[n, ell, mass];
  dd = exact["d"];
  gg = exact["g"];
  rho = exact["Rho"];
  mm = N[exact["M"], precision];
  kk = N[exact["K"], precision];

  transform = N[SchurTransform[n, dd], precision];
  transformedM = Transpose[transform].mm.transform;
  transformedK = Transpose[transform].kk.transform;
  expectedM = DiagonalMatrix[Join[ConstantArray[1, 2 n], {rho}]];
  expectedK = ArrayFlatten[{
    {DiagonalMatrix[exact["OmegaSquared"]], -Transpose[{gg}]},
    {{-gg}, {{(4 n + 2)/ell + mass^2 rho}}}
  }];

  massEigenvalues = Sort[Eigenvalues[mm]];
  shat2 = (dd.dd)/ell;
  rhohat = rho/ell;
  discriminant = Sqrt[(1 - 2/3)^2 + 4 shat2];
  muMinus = (1 + 2/3 - discriminant)/2;
  muPlus = (1 + 2/3 + discriminant)/2;

  zero = ConstantArray[0, {2 n + 1, 2 n + 1}];
  identity = IdentityMatrix[2 n + 1];
  j0 = ArrayFlatten[{{zero, -identity}, {identity, zero}}];
  jm = ArrayFlatten[{{zero, -mm}, {mm, zero}}];
  mHalf = SymmetricPower[mm, 1/2];
  mInvHalf = SymmetricPower[mm, -1/2];
  canonicalK = mInvHalf.kk.mInvHalf;
  canonicalK = (canonicalK + Transpose[canonicalK])/2;
  {eigenvalues, orthogonalRows} = Eigensystem[canonicalK];
  order = Ordering[eigenvalues];
  eigenvalues = eigenvalues[[order]];
  orthogonalRows = orthogonalRows[[order]];
  velocityMap = ArrayFlatten[{
    {orthogonalRows.mHalf, zero},
    {zero, orthogonalRows.mHalf}
  }];
  canonicalMap = ArrayFlatten[{
    {orthogonalRows.mHalf, zero},
    {zero, orthogonalRows.mInvHalf}
  }];
  sourceVelocityHamiltonian = ArrayFlatten[{{kk, zero}, {zero, mm}}];
  sourceCanonicalHamiltonian = ArrayFlatten[{
    {kk, zero},
    {zero, Inverse[mm]}
  }];
  normalHamiltonian = ArrayFlatten[{
    {DiagonalMatrix[eigenvalues], zero},
    {zero, identity}
  }];
  velocitySymplecticResidual = Max[
    Abs[Flatten[Transpose[velocityMap].j0.velocityMap - jm]]
  ];
  velocityHamiltonianResidual = Max[Abs[Flatten[
    Transpose[velocityMap].normalHamiltonian.velocityMap -
      sourceVelocityHamiltonian
  ]]];
  velocitySymplecticRelativeResidual = velocitySymplecticResidual/
    Max[Abs[Flatten[jm]]];
  velocityHamiltonianRelativeResidual = velocityHamiltonianResidual/
    Max[Abs[Flatten[sourceVelocityHamiltonian]]];
  canonicalSymplecticResidual = Max[
    Abs[Flatten[Transpose[canonicalMap].j0.canonicalMap - j0]]
  ];
  canonicalHamiltonianResidual = Max[Abs[Flatten[
    Transpose[canonicalMap].normalHamiltonian.canonicalMap -
      sourceCanonicalHamiltonian
  ]]];
  canonicalSymplecticRelativeResidual = canonicalSymplecticResidual/
    Max[Abs[Flatten[j0]]];
  canonicalHamiltonianRelativeResidual = canonicalHamiltonianResidual/
    Max[Abs[Flatten[sourceCanonicalHamiltonian]]];

  {generalizedValues, generalizedVectors} = Eigensystem[{kk, mm}];
  order = Ordering[generalizedValues];
  generalizedValues = generalizedValues[[order]];
  generalizedVectors = generalizedVectors[[order]];
  normalizedVectors = (#/Sqrt[#.mm.#]) & /@ generalizedVectors;
  qVariance = Total[(Last /@ normalizedVectors)^2/(2 Sqrt[generalizedValues])];
  qVelocityVariance = Total[
    (Last /@ normalizedVectors)^2 Sqrt[generalizedValues]/2
  ];
  residualMomentumVariance = rho^2 qVelocityVariance;
  exactQVariance = Sum[
    Sin[r Pi/2]^2/(2 ell Sqrt[mass^2 + (r Pi/(2 ell))^2]),
    {r, 1, 2 n + 1}
  ];

  <|
    "N" -> n,
    "Rho" -> N[rho, 16],
    "RhoAsymptoticRatio" -> N[rho/(4 ell/(Pi^2 n)), 16],
    "SchurMassResidual" -> Max[Abs[Flatten[transformedM - expectedM]]],
    "SchurStiffnessResidual" -> Max[Abs[Flatten[transformedK - expectedK]]],
    "MassDeterminantResidual" -> Abs[Det[mm] - rho],
    "MassUnitEigenvalueResidual" -> If[
      n == 1,
      0,
      Max[Abs[massEigenvalues[[2 ;; -2]] - 1]]
    ],
    "MassSmallEigenvalue" -> First[massEigenvalues],
    "MassSmallEigenvalueFormulaResidual" -> Abs[
      First[massEigenvalues] - muMinus
    ],
    "MassLargeEigenvalueFormulaResidual" -> Abs[
      Last[massEigenvalues] - muPlus
    ],
    "MassSmallOverThreeRhoFifths" -> N[
      First[massEigenvalues]/((3/5) rhohat), 16
    ],
    "VelocitySymplecticResidual" -> velocitySymplecticResidual,
    "VelocitySymplecticRelativeResidual" ->
      velocitySymplecticRelativeResidual,
    "VelocityHamiltonianResidual" -> velocityHamiltonianResidual,
    "VelocityHamiltonianRelativeResidual" ->
      velocityHamiltonianRelativeResidual,
    "CanonicalSymplecticResidual" -> canonicalSymplecticResidual,
    "CanonicalSymplecticRelativeResidual" ->
      canonicalSymplecticRelativeResidual,
    "CanonicalHamiltonianResidual" -> canonicalHamiltonianResidual,
    "CanonicalHamiltonianRelativeResidual" ->
      canonicalHamiltonianRelativeResidual,
    "QVariance" -> N[qVariance, 16],
    "QVarianceOverLogN" -> N[qVariance/Log[n], 16],
    "ExactTowerQVariance" -> N[exactQVariance, 16],
    "ResidualMomentumVariance" -> N[residualMomentumVariance, 16],
    "MassNormalizedQVariance" -> N[rho qVariance, 16],
    "MassNormalizedPVariance" -> N[residualMomentumVariance/rho, 16],
    "ReducedPairSymplecticEigenvalue" -> N[
      Sqrt[qVariance residualMomentumVariance], 16
    ],
    "QVelocityVariance" -> N[qVelocityVariance, 16]
  |>
];

symbolicMassChecks = FullSimplify[
  Module[{s, h2, rho, block, discriminant, muMinus, muPlus},
    block = {{1, s}, {s, 2 h2}};
    rho = 2 h2 - s^2;
    discriminant = Sqrt[(1 - 2 h2)^2 + 4 s^2];
    muMinus = (1 + 2 h2 - discriminant)/2;
    muPlus = (1 + 2 h2 + discriminant)/2;
    {
      Det[block] == rho,
      Tr[block] == muMinus + muPlus,
      Det[block - muMinus IdentityMatrix[2]] == 0,
      Det[block - muPlus IdentityMatrix[2]] == 0,
      muMinus muPlus == rho
    }
  ],
  Assumptions -> {s > 0, h2 > 0, 2 h2 > s^2}
];

symbolicSchurChecks = Module[
  {n, ellSymbol, massSymbol, data, transform, expectedM, expectedK},
  n = 2;
  data = PortData[n, ellSymbol, massSymbol];
  transform = SchurTransform[n, data["d"]];
  expectedM = DiagonalMatrix[
    Join[ConstantArray[1, 2 n], {data["Rho"]}]
  ];
  expectedK = ArrayFlatten[{
    {DiagonalMatrix[data["OmegaSquared"]], -Transpose[{data["g"]}]},
    {{-data["g"]}, {{(4 n + 2)/ellSymbol + massSymbol^2 data["Rho"]}}}
  }];
  FullSimplify[
    {
      Transpose[transform].data["M"].transform == expectedM,
      Transpose[transform].data["K"].transform == expectedK
    },
    Assumptions -> {ellSymbol > 0, massSymbol > 0}
  ]
];

symbolicComplexStructureChecks = FullSimplify[
  Module[{frequency, j0, complexStructure, metric},
    j0 = {{0, -1}, {1, 0}};
    complexStructure = {{0, 1/frequency}, {-frequency, 0}};
    metric = j0.complexStructure;
    {
      complexStructure.complexStructure == -IdentityMatrix[2],
      Transpose[complexStructure].j0.complexStructure == j0,
      metric == DiagonalMatrix[{frequency, 1/frequency}],
      Det[metric] == 1
    }
  ],
  Assumptions -> frequency > 0
];

testedNs = {2, 4, 8, 16, 32, 64, 128};
rows = NormalFormChecks /@ testedNs;
exactTolerance = 10^-25;
numericalRelativeTolerance = 10^-9;
qVarianceDoublingSlopes = Table[
  <|
    "N" -> rows[[j]]["N"],
    "PortSlope" -> N[
      (rows[[j]]["QVariance"] - rows[[j - 1]]["QVariance"])/Log[2],
      16
    ],
    "ExactTowerSlope" -> N[
      (rows[[j]]["ExactTowerQVariance"] -
        rows[[j - 1]]["ExactTowerQVariance"])/Log[2],
      16
    ]
  |>,
  {j, 2, Length[rows]}
];

allExactChecksPassed = And[
  And @@ symbolicMassChecks,
  And @@ symbolicSchurChecks,
  And @@ symbolicComplexStructureChecks,
  And @@ Table[
    And[
      row["Rho"] > 0,
      row["SchurMassResidual"] < exactTolerance,
      row["SchurStiffnessResidual"] < exactTolerance,
      row["MassDeterminantResidual"] < exactTolerance,
      row["MassUnitEigenvalueResidual"] < exactTolerance,
      row["MassSmallEigenvalueFormulaResidual"] < exactTolerance,
      row["MassLargeEigenvalueFormulaResidual"] < exactTolerance,
      row["VelocitySymplecticRelativeResidual"] <
        numericalRelativeTolerance,
      row["VelocityHamiltonianRelativeResidual"] <
        numericalRelativeTolerance,
      row["CanonicalSymplecticRelativeResidual"] <
        numericalRelativeTolerance,
      row["CanonicalHamiltonianRelativeResidual"] <
        numericalRelativeTolerance
    ],
    {row, rows}
  ]
];

report = <|
  "SymbolicMassChecks" -> symbolicMassChecks,
  "SymbolicSchurChecks" -> symbolicSchurChecks,
  "SymbolicComplexStructureChecks" -> symbolicComplexStructureChecks,
  "Rows" -> rows,
  "QVarianceDoublingSlopes" -> qVarianceDoublingSlopes,
  "TargetQVarianceLogCoefficient" -> N[1/(2 Pi), 16],
  "AllExactChecksPassed" -> allExactChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[allExactChecksPassed], Exit[0], Exit[1]];
