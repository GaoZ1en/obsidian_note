(* ::Package:: *)

(*
  Finite-N bridge between the boundary-feedback variables and the
  variational port Galerkin canonical variables.

  Exact identities:
  - port Euler-Lagrange equations equal the regional forced equations plus
    the rho_N-regulated feedback equation;
  - C = c + d q and V = cdot + d qdot are the Schur canonical pair;
  - coefficient velocities are not canonical after q varies;
  - Galerkin mode projections are the exact canonical normal coordinates;
  - the finite-N port pair must be retained in the normal CCR.
*)

ClearAll["Global`*"];

PortBridgeData[n_Integer, ell_, mass_] := Module[
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

symbolicBridgeChecks = Module[
  {
    n = 3, ell, mass, data, dd, gg, rho, mm, kk, transform,
    c, cdd, q, qdd, equation, regionalEquation, qEquation, flux,
    expectedFeedback, rdot, qdot, sourceVelocity, schurMomentum,
    coefficientVelocityBracket, expectedCoefficientVelocityBracket,
    expectedSchurM, expectedSchurK
  },
  data = PortBridgeData[n, ell, mass];
  dd = data["d"];
  gg = data["g"];
  rho = data["Rho"];
  mm = data["M"];
  kk = data["K"];
  transform = SchurTransform[n, dd];
  c = Array[cSymbol, 2 n];
  cdd = Array[cddSymbol, 2 n];
  q = qSymbol;
  qdd = qddSymbol;
  equation = mm.Join[cdd, {qdd}] + kk.Join[c, {q}];
  regionalEquation = Take[equation, 2 n];
  qEquation = Last[equation];
  flux = 2 q/ell - gg.c;
  expectedFeedback = rho (qdd + mass^2 q) + flux;

  rdot = Array[rdotSymbol, 2 n];
  qdot = qdotSymbol;
  sourceVelocity = transform.Join[rdot, {qdot}];
  schurMomentum = Transpose[transform].mm.sourceVelocity;

  coefficientVelocityBracket = Take[
    Inverse[mm],
    {1, 2 n},
    {1, 2 n}
  ];
  expectedCoefficientVelocityBracket =
    IdentityMatrix[2 n] + Outer[Times, dd, dd]/rho;

  expectedSchurM = DiagonalMatrix[
    Join[ConstantArray[1, 2 n], {rho}]
  ];
  expectedSchurK = ArrayFlatten[{
    {DiagonalMatrix[data["OmegaSquared"]], -Transpose[{gg}]},
    {{-gg}, {{(4 n + 2)/ell + mass^2 rho}}}
  }];

  FullSimplify[
    {
      qEquation - dd.regionalEquation == expectedFeedback,
      Transpose[transform].mm.transform == expectedSchurM,
      Transpose[transform].kk.transform == expectedSchurK,
      Take[schurMomentum, 2 n] == rdot,
      Last[schurMomentum] == rho qdot,
      coefficientVelocityBracket == expectedCoefficientVelocityBracket,
      gg.dd == 4 n/ell
    },
    Assumptions -> ell > 0 && mass > 0
  ]
];

BridgeRow[n_Integer, ell_: 1, mass_: 1, precision_: 60] := Module[
  {
    data, dd, rho, mm, kk, transform, mHalf, mInvHalf,
    canonicalK, eigenvalues, orthogonalRows, order, modeColumns,
    qProjection, pProjection, schurQMap, schurPMap, identity, zero, j0,
    sourceMap, normalHamiltonian, sourceHamiltonian, regionalFrequencies,
    normalFrequencies, sqrtRegional, invSqrtRegional, sqrtNormal,
    invSqrtNormal, ar, aq, br, bq, alpha, beta, gamma, delta,
    ccr1Residual, ccr2Residual, omittedPortCCRResidual,
    modeOrthonormalResidual, modeEigenResidual, projectionResidual,
    schurSymplecticResidual, sourceSymplecticResidual,
    hamiltonianResidual, modeEigenRelativeResidual,
    hamiltonianRelativeResidual
  },
  data = PortBridgeData[n, ell, mass];
  dd = N[data["d"], precision];
  rho = N[data["Rho"], precision];
  mm = N[data["M"], precision];
  kk = N[data["K"], precision];
  transform = N[SchurTransform[n, data["d"]], precision];
  mHalf = SymmetricPower[mm, 1/2];
  mInvHalf = SymmetricPower[mm, -1/2];
  canonicalK = mInvHalf.kk.mInvHalf;
  canonicalK = (canonicalK + Transpose[canonicalK])/2;
  {eigenvalues, orthogonalRows} = Eigensystem[canonicalK];
  order = Ordering[eigenvalues];
  eigenvalues = eigenvalues[[order]];
  orthogonalRows = orthogonalRows[[order]];
  modeColumns = mInvHalf.Transpose[orthogonalRows];

  qProjection = Transpose[modeColumns].mm;
  pProjection = Transpose[modeColumns];
  schurQMap = qProjection.transform;
  schurPMap = pProjection.Inverse[Transpose[transform]];

  identity = IdentityMatrix[2 n + 1];
  zero = ConstantArray[0, {2 n + 1, 2 n + 1}];
  j0 = ArrayFlatten[{{zero, -identity}, {identity, zero}}];
  sourceMap = ArrayFlatten[{
    {qProjection, zero},
    {zero, pProjection}
  }];
  normalHamiltonian = ArrayFlatten[{
    {DiagonalMatrix[eigenvalues], zero},
    {zero, identity}
  }];
  sourceHamiltonian = ArrayFlatten[{
    {kk, zero},
    {zero, Inverse[mm]}
  }];

  regionalFrequencies = Sqrt[N[data["OmegaSquared"], precision]];
  normalFrequencies = Sqrt[eigenvalues];
  sqrtRegional = DiagonalMatrix[Sqrt[regionalFrequencies]];
  invSqrtRegional = DiagonalMatrix[1/Sqrt[regionalFrequencies]];
  sqrtNormal = DiagonalMatrix[Sqrt[normalFrequencies]];
  invSqrtNormal = DiagonalMatrix[1/Sqrt[normalFrequencies]];

  ar = schurQMap[[All, 1 ;; 2 n]];
  aq = schurQMap[[All, -1]];
  br = schurPMap[[All, 1 ;; 2 n]];
  bq = schurPMap[[All, -1]];
  alpha = (sqrtNormal.ar.invSqrtRegional +
      invSqrtNormal.br.sqrtRegional)/2;
  beta = (sqrtNormal.ar.invSqrtRegional -
      invSqrtNormal.br.sqrtRegional)/2;
  gamma = sqrtNormal.aq/Sqrt[2];
  delta = invSqrtNormal.bq/Sqrt[2];

  ccr1Residual = Max[Abs[Flatten[
    alpha.Transpose[alpha] - beta.Transpose[beta] +
      Outer[Times, gamma, delta] + Outer[Times, delta, gamma] -
      identity
  ]]];
  ccr2Residual = Max[Abs[Flatten[
    alpha.Transpose[beta] - beta.Transpose[alpha] +
      Outer[Times, delta, gamma] - Outer[Times, gamma, delta]
  ]]];
  omittedPortCCRResidual = Max[Abs[Flatten[
    alpha.Transpose[alpha] - beta.Transpose[beta] - identity
  ]]];

  modeOrthonormalResidual = Max[Abs[Flatten[
    Transpose[modeColumns].mm.modeColumns - identity
  ]]];
  modeEigenResidual = Max[Abs[Flatten[
    kk.modeColumns -
      mm.modeColumns.DiagonalMatrix[eigenvalues]
  ]]];
  projectionResidual = Max[Abs[Flatten[
    qProjection - orthogonalRows.mHalf
  ]]];
  schurSymplecticResidual = Max[Abs[Flatten[
    schurQMap.Transpose[schurPMap] - identity
  ]]];
  sourceSymplecticResidual = Max[Abs[Flatten[
    sourceMap.j0.Transpose[sourceMap] - j0
  ]]];
  hamiltonianResidual = Max[Abs[Flatten[
    Transpose[sourceMap].normalHamiltonian.sourceMap -
      sourceHamiltonian
  ]]];
  modeEigenRelativeResidual = modeEigenResidual/
    Max[Abs[Flatten[kk.modeColumns]]];
  hamiltonianRelativeResidual = hamiltonianResidual/
    Max[Abs[Flatten[sourceHamiltonian]]];

  <|
    "N" -> n,
    "Rho" -> N[rho, 16],
    "ModeOrthonormalResidual" -> modeOrthonormalResidual,
    "ModeEigenResidual" -> modeEigenResidual,
    "ModeEigenRelativeResidual" -> modeEigenRelativeResidual,
    "ProjectionResidual" -> projectionResidual,
    "SchurSymplecticResidual" -> schurSymplecticResidual,
    "SourceSymplecticResidual" -> sourceSymplecticResidual,
    "HamiltonianResidual" -> hamiltonianResidual,
    "HamiltonianRelativeResidual" -> hamiltonianRelativeResidual,
    "CCR1ResidualWithPort" -> ccr1Residual,
    "CCR2ResidualWithPort" -> ccr2Residual,
    "CCRDefectWithoutPort" -> omittedPortCCRResidual
  |>
];

testedNs = {2, 4, 8, 16, 32, 64};
rows = BridgeRow /@ testedNs;
tolerance = 10^-9;

allChecksPassed = And[
  And @@ symbolicBridgeChecks,
  And @@ Table[
    And[
      row["Rho"] > 0,
      row["ModeOrthonormalResidual"] < tolerance,
      row["ModeEigenRelativeResidual"] < tolerance,
      row["ProjectionResidual"] < tolerance,
      row["SchurSymplecticResidual"] < tolerance,
      row["SourceSymplecticResidual"] < tolerance,
      row["HamiltonianRelativeResidual"] < tolerance,
      row["CCR1ResidualWithPort"] < tolerance,
      row["CCR2ResidualWithPort"] < tolerance,
      row["CCRDefectWithoutPort"] > 10^-6
    ],
    {row, rows}
  ]
];

Print[
  InputForm[
    <|
      "SymbolicBridgeChecks" -> symbolicBridgeChecks,
      "Rows" -> rows,
      "AllChecksPassed" -> allChecksPassed
    |>
  ]
];

If[! TrueQ[allChecksPassed], Exit[1]];
