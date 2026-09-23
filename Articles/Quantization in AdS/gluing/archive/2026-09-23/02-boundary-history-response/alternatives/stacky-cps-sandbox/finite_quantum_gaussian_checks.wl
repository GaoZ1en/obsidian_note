ExactReducedMatrices[n_Integer, ell_, mass_] := Module[
  {ks, aa, gg, bb, dd, h2, mm, kk, om2},
  ks = Range[n] Pi/ell;
  aa = Table[(-1)^(j + 1) Sqrt[2 ell]/(j Pi), {j, n}];
  gg = aa ks^2;
  bb = Join[(ell/2) gg, (ell/2) gg];
  dd = Join[aa, aa];
  h2 = ell/3;
  om2 = Join[ks^2 + mass^2, ks^2 + mass^2];
  mm = IdentityMatrix[2 n]
    + Outer[Times, bb, dd]
    + Outer[Times, dd, bb]
    + 2 h2 Outer[Times, bb, bb];
  kk = DiagonalMatrix[om2]
    + mass^2 (Outer[Times, bb, dd] + Outer[Times, dd, bb])
    + 2 (mass^2 h2 + 1/ell) Outer[Times, bb, bb];
  <|"M" -> mm, "K" -> kk, "OmegaSquared" -> om2|>
];

GaussianChecks[n_Integer, ell_: 1, mass_: 1, prec_: 60] := Module[
  {
    data, mm, kk, om2, dim, id, zero, jid, commutator,
    mhalf, minvhalf, kcal, eigensystem, order, omegaSquared,
    eigenvectors, orthogonal, omega, wref, alpha, beta, zz,
    globalQCov, globalPCov, globalCov, referenceCov,
    naiveCoefficientCov, coefficientToCanonical, naiveCanonicalCov,
    globalUncertainty, referenceUncertainty, naiveUncertainty,
    normalizationFromZ, normalizationFromAlpha, minHermitianEigenvalue
  },
  data = ExactReducedMatrices[n, ell, mass];
  mm = N[data["M"], prec];
  kk = N[data["K"], prec];
  om2 = N[data["OmegaSquared"], prec];
  dim = 2 n;
  id = IdentityMatrix[dim];
  zero = ConstantArray[0, {dim, dim}];
  jid = ArrayFlatten[{{zero, -id}, {id, zero}}];
  commutator = -jid;
  mhalf = MatrixPower[mm, 1/2];
  minvhalf = MatrixPower[mm, -1/2];
  kcal = minvhalf.kk.minvhalf;
  eigensystem = Eigensystem[kcal];
  order = Ordering[eigensystem[[1]]];
  omegaSquared = eigensystem[[1, order]];
  eigenvectors = eigensystem[[2, order]];
  orthogonal = Transpose[eigenvectors];
  omega = DiagonalMatrix[Sqrt[omegaSquared]];
  wref = DiagonalMatrix[Sqrt[om2]];
  alpha = 1/2 (
    MatrixPower[omega, 1/2].Transpose[orthogonal].MatrixPower[wref, -1/2]
    + MatrixPower[omega, -1/2].Transpose[orthogonal].MatrixPower[wref, 1/2]
  );
  beta = 1/2 (
    MatrixPower[omega, 1/2].Transpose[orthogonal].MatrixPower[wref, -1/2]
    - MatrixPower[omega, -1/2].Transpose[orthogonal].MatrixPower[wref, 1/2]
  );
  zz = LinearSolve[alpha, beta];

  globalQCov = 1/2 orthogonal.Inverse[omega].Transpose[orthogonal];
  globalPCov = 1/2 orthogonal.omega.Transpose[orthogonal];
  globalCov = ArrayFlatten[{{globalQCov, zero}, {zero, globalPCov}}];
  referenceCov = 1/2 ArrayFlatten[{
    {Inverse[wref], zero},
    {zero, wref}
  }];

  naiveCoefficientCov = referenceCov;
  coefficientToCanonical = ArrayFlatten[{{mhalf, zero}, {zero, mhalf}}];
  naiveCanonicalCov = coefficientToCanonical.naiveCoefficientCov
    .Transpose[coefficientToCanonical];

  globalUncertainty = globalCov + I/2 commutator;
  referenceUncertainty = referenceCov + I/2 commutator;
  naiveUncertainty = naiveCanonicalCov + I/2 commutator;
  normalizationFromZ = Det[id - zz.ConjugateTranspose[zz]]^(1/4);
  normalizationFromAlpha = 1/Sqrt[Abs[Det[alpha]]];
  minHermitianEigenvalue[matrix_] := Min[Re[Eigenvalues[
    (matrix + ConjugateTranspose[matrix])/2
  ]]];

  <|
    "N" -> n,
    "OrthogonalResidual" -> Max[Abs[Flatten[
      Transpose[orthogonal].orthogonal - id
    ]]],
    "BogoliubovCCRResidual" -> Max[Abs[Flatten[
      alpha.ConjugateTranspose[alpha]
      - beta.ConjugateTranspose[beta]
      - id
    ]]],
    "BogoliubovSymmetryResidual" -> Max[Abs[Flatten[
      alpha.Transpose[beta] - beta.Transpose[alpha]
    ]]],
    "ZSymmetryResidual" -> Max[Abs[Flatten[zz - Transpose[zz]]]],
    "MinEigenOneMinusZZDagger"
      -> Min[Eigenvalues[id - zz.ConjugateTranspose[zz]]],
    "SqueezedAnnihilationResidual"
      -> Max[Abs[Flatten[alpha.zz - beta]]],
    "NormalizationResidual"
      -> Abs[normalizationFromZ - normalizationFromAlpha],
    "GlobalMinUncertaintyEigenvalue"
      -> minHermitianEigenvalue[globalUncertainty],
    "TransportedReferenceMinUncertaintyEigenvalue"
      -> minHermitianEigenvalue[referenceUncertainty],
    "NaiveSameLabelMinUncertaintyEigenvalue"
      -> minHermitianEigenvalue[naiveUncertainty],
    "BetaHilbertSchmidtSquared" -> Tr[beta.ConjugateTranspose[beta]],
    "VacuumOverlapMagnitude" -> normalizationFromAlpha
  |>
];

testedNs = {1, 2, 4, 8, 16, 32};
checks = GaussianChecks /@ testedNs;
tolerance = 10^-28;

allFiniteQuantumChecksPassed = And @@ Flatten@Table[
  {
    row["OrthogonalResidual"] < tolerance,
    row["BogoliubovCCRResidual"] < tolerance,
    row["BogoliubovSymmetryResidual"] < tolerance,
    row["ZSymmetryResidual"] < tolerance,
    row["MinEigenOneMinusZZDagger"] > 0,
    row["SqueezedAnnihilationResidual"] < tolerance,
    row["NormalizationResidual"] < tolerance,
    row["GlobalMinUncertaintyEigenvalue"] > -tolerance,
    row["TransportedReferenceMinUncertaintyEigenvalue"] > -tolerance
  },
  {row, checks}
];

report = <|
  "Checks" -> checks,
  "AllFiniteQuantumChecksPassed" -> allFiniteQuantumChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[report["AllFiniteQuantumChecksPassed"]], Exit[0], Exit[1]];
