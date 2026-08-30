ClearAll["Global`*"];

$Assumptions = r > 0 && 0 < th < Pi;

id2 = IdentityMatrix[2];
z2 = ConstantArray[0, {2, 2}];
pauli = {
  {{0, 1}, {1, 0}},
  {{0, -I}, {I, 0}},
  {{1, 0}, {0, -1}}
};

gamma = Join[
  {ArrayFlatten[{{-I id2, z2}, {z2, I id2}}]},
  (ArrayFlatten[{{z2, -I #}, {I #, z2}}] &) /@ pauli
];
eta = DiagonalMatrix[{-1, 1, 1, 1}];

cliffordResiduals = Table[
  FullSimplify[gamma[[a]].gamma[[b]] + gamma[[b]].gamma[[a]] -
    2 eta[[a, b]] IdentityMatrix[4]],
  {a, 4}, {b, 4}
];
hermiticityResiduals = Join[
  {ConjugateTranspose[gamma[[1]]] + gamma[[1]]},
  Table[ConjugateTranspose[gamma[[a]]] - gamma[[a]], {a, 2, 4}]
];

coords = {t, r, th, ph};
f = 1 + r^2;
metric = DiagonalMatrix[{-f, 1/f, r^2, r^2 Sin[th]^2}];
inverseMetric = FullSimplify[Inverse[metric]];

(* coframe[[a,mu]]=e^a_mu and frame[[a,mu]]=e_a^mu *)
coframe = DiagonalMatrix[{Sqrt[f], 1/Sqrt[f], r, r Sin[th]}];
frame = FullSimplify[Inverse[coframe]];

christoffel[nu_, mu_, lam_] := christoffel[nu, mu, lam] =
  FullSimplify[1/2 Sum[
    inverseMetric[[nu, rho]] (
      D[metric[[rho, lam]], coords[[mu]]] +
      D[metric[[rho, mu]], coords[[lam]]] -
      D[metric[[mu, lam]], coords[[rho]]]
    ), {rho, 4}]];

omega[mu_, a_, b_] := omega[mu, a, b] = FullSimplify[
  Sum[
    eta[[a, c]] coframe[[c, nu]] (
      D[frame[[b, nu]], coords[[mu]]] +
      Sum[christoffel[nu, mu, lam] frame[[b, lam]], {lam, 4}]
    ),
    {c, 4}, {nu, 4}
  ]
];

omegaAntisymmetryResiduals = Table[
  FullSimplify[omega[mu, a, b] + omega[mu, b, a]],
  {mu, 4}, {a, 4}, {b, 4}
];

spinConnection[mu_] := spinConnection[mu] = FullSimplify[
  1/4 Sum[omega[mu, a, b] gamma[[a]].gamma[[b]], {a, 4}, {b, 4}]
];

contractedSpinConnection = FullSimplify[
  Sum[frame[[a, mu]] gamma[[a]].spinConnection[mu], {a, 4}, {mu, 4}]
];

expectedContractedSpinConnection = FullSimplify[
  gamma[[2]] (Sqrt[f]/r + r/(2 Sqrt[f])) +
  gamma[[3]] Cot[th]/(2 r)
];

diracConnectionResidual = FullSimplify[
  contractedSpinConnection - expectedContractedSpinConnection
];

(* Leading and first subleading Frobenius equations at r=infinity. *)
mAssumptions = 0 < m < 1/2;
deltaMinus = 3/2 - m;
deltaPlus = 3/2 + m;
slowLeadingResidual = FullSimplify[-deltaMinus + 3/2 - m,
  Assumptions -> mAssumptions];
fastLeadingResidual = FullSimplify[deltaPlus - 3/2 - m,
  Assumptions -> mAssumptions];
slowSubleadingCoefficient = FullSimplify[1 - 2 m,
  Assumptions -> mAssumptions];
fastSubleadingCoefficient = FullSimplify[1 + 2 m,
  Assumptions -> mAssumptions];

gammaR = gamma[[2]];
pPlus = (IdentityMatrix[4] + gammaR)/2;
pMinus = (IdentityMatrix[4] - gammaR)/2;
slowSubleadingProjectorResidual = FullSimplify[
  (gammaR (m - 1) - m IdentityMatrix[4]).pMinus -
    (1 - 2 m) pMinus
];
fastSubleadingProjectorResidual = FullSimplify[
  (gammaR (-m - 1) - m IdentityMatrix[4]).pPlus +
    (1 + 2 m) pPlus
];

checks = <|
  "CliffordAllZero" -> (cliffordResiduals === ConstantArray[0, {4, 4, 4, 4}]),
  "HermiticityAllZero" -> (hermiticityResiduals === ConstantArray[0, {4, 4, 4}]),
  "SpinConnectionAntisymmetric" ->
    (omegaAntisymmetryResiduals === ConstantArray[0, {4, 4, 4}]),
  "DiracConnectionResidualZero" ->
    (diracConnectionResidual === ConstantArray[0, {4, 4}]),
  "SlowIndicialEquation" -> (slowLeadingResidual === 0),
  "FastIndicialEquation" -> (fastLeadingResidual === 0),
  "SlowSubleadingDenominatorPositive" ->
    TrueQ[FullSimplify[slowSubleadingCoefficient > 0,
      Assumptions -> mAssumptions]],
  "FastSubleadingDenominatorPositive" ->
    TrueQ[FullSimplify[fastSubleadingCoefficient > 0,
      Assumptions -> mAssumptions]],
  "SlowSubleadingProjectorResidualZero" ->
    (slowSubleadingProjectorResidual === ConstantArray[0, {4, 4}]),
  "FastSubleadingProjectorResidualZero" ->
    (fastSubleadingProjectorResidual === ConstantArray[0, {4, 4}])
|>;

Print[checks];
allPassed = TrueQ[And @@ Values[checks]];
Print[If[allPassed, "OVERALL: PASS", "OVERALL: FAIL"]];
If[! TrueQ[checks["DiracConnectionResidualZero"]],
  Print["ComputedConnection=", MatrixForm[contractedSpinConnection]];
  Print["ExpectedConnection=", MatrixForm[expectedContractedSpinConnection]];
  Print["ConnectionResidual=", MatrixForm[diracConnectionResidual]];
];
If[allPassed, Exit[0], Exit[1]];
