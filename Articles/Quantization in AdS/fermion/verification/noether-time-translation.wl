ClearAll["Global`*"];

$Assumptions = r > 0 && 0 < th < Pi && energy > 0;

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

gammaAB[a_, b_] := (gamma[[a]].gamma[[b]] -
    gamma[[b]].gamma[[a]])/2;

coords = {t, r, th, ph};
f = 1 + r^2;
metric = DiagonalMatrix[{-f, 1/f, r^2, r^2 Sin[th]^2}];
inverseMetric = FullSimplify[Inverse[metric]];
coframe = DiagonalMatrix[{Sqrt[f], 1/Sqrt[f], r, r Sin[th]}];
frame = FullSimplify[Inverse[coframe]];
eta = DiagonalMatrix[{-1, 1, 1, 1}];

christoffel[nu_, mu_, lam_] := christoffel[nu, mu, lam] =
  FullSimplify[1/2 Sum[
    inverseMetric[[nu, sig]] (
      D[metric[[sig, lam]], coords[[mu]]] +
      D[metric[[sig, mu]], coords[[lam]]] -
      D[metric[[mu, lam]], coords[[sig]]]
    ),
    {sig, 4}
  ]];

omega[mu_, a_, b_] := omega[mu, a, b] = FullSimplify[
  Sum[
    eta[[a, c]] coframe[[c, nu]] (
      D[frame[[b, nu]], coords[[mu]]] +
      Sum[christoffel[nu, mu, lam] frame[[b, lam]], {lam, 4}]
    ),
    {c, 4}, {nu, 4}
  ]
];

spinConnectionT = FullSimplify[
  1/4 Sum[omega[1, a, b] gammaAB[a, b], {a, 4}, {b, 4}]
];

xiContravariant = {1, 0, 0, 0};
xiCovariant = FullSimplify[metric.xiContravariant];
nablaXiCoordinate = Table[
  FullSimplify[
    D[xiCovariant[[nu]], coords[[mu]]] -
      Sum[christoffel[lam, mu, nu] xiCovariant[[lam]], {lam, 4}]
  ],
  {mu, 4}, {nu, 4}
];
nablaXiFrame = Table[
  FullSimplify[
    Sum[
      frame[[a, mu]] frame[[b, nu]] nablaXiCoordinate[[mu, nu]],
      {mu, 4}, {nu, 4}
    ]
  ],
  {a, 4}, {b, 4}
];

kosmannT = FullSimplify[
  1/4 Sum[nablaXiFrame[[a, b]] gammaAB[a, b], {a, 4}, {b, 4}]
];

timeKosmannCancellation = FullSimplify[
  spinConnectionT + kosmannT
] === ConstantArray[0, {4, 4}];

wallNormal = {0, Sqrt[f], 0, 0};
wallExtrinsicCurvature = FullSimplify[
  Sum[
    D[wallNormal[[mu]], coords[[mu]]] +
      Sum[
        christoffel[mu, mu, lam] wallNormal[[lam]],
        {lam, 4}
      ],
    {mu, 4}
  ]
];
wallExtrinsicCurvatureCheck = FullSimplify[
  wallExtrinsicCurvature == 2 Sqrt[f]/r + r/Sqrt[f]
];

gamma5 = FullSimplify[I gamma[[1]].gamma[[2]].gamma[[3]].gamma[[4]]];
gamma5Checks =
  FullSimplify[gamma5.gamma5] === IdentityMatrix[4] &&
  And @@ Table[
    FullSimplify[gamma5.gamma[[a]] + gamma[[a]].gamma5] ===
      ConstantArray[0, {4, 4}],
    {a, 4}
  ];

particleNoetherEigenvalue = FullSimplify[
  I/2 ((-I energy) - (I energy))
];
negativeFrequencyNoetherEigenvalue = FullSimplify[
  I/2 ((I energy) - (-I energy))
];
u1OneParticleEigenvalue = FullSimplify[
  I/2 ((-I) - I)
];

lower = {{0, 1}, {0, 0}};
sigmaZ = {{1, 0}, {0, -1}};
idFock = IdentityMatrix[2];

a = KroneckerProduct[lower, idFock];
b = KroneckerProduct[sigmaZ, lower];
ad = ConjugateTranspose[a];
bd = ConjugateTranspose[b];
idTwoMode = IdentityMatrix[4];

hamiltonian = energy (ad.a + bd.b);
u1Charge = ad.a - bd.b;
fieldOperator = a Exp[-I energy t] + bd Exp[I energy t];

carChecks =
  a.ad + ad.a === idTwoMode &&
  b.bd + bd.b === idTwoMode &&
  a.b + b.a === ConstantArray[0, {4, 4}] &&
  a.bd + bd.a === ConstantArray[0, {4, 4}];

hamiltonianGeneratorChecks =
  FullSimplify[hamiltonian.a - a.hamiltonian] === -energy a &&
  FullSimplify[hamiltonian.bd - bd.hamiltonian] === energy bd &&
  FullSimplify[
    D[fieldOperator, t] -
      I (hamiltonian.fieldOperator - fieldOperator.hamiltonian)
  ] === ConstantArray[0, {4, 4}];

u1GeneratorChecks =
  u1Charge.a - a.u1Charge === -a &&
  u1Charge.bd - bd.u1Charge === -bd &&
  FullSimplify[
    u1Charge.fieldOperator - fieldOperator.u1Charge + fieldOperator
  ] === ConstantArray[0, {4, 4}];

antiparticleNormalOrderingCheck = FullSimplify[
  -energy b.bd - (energy bd.b - energy idTwoMode)
] === ConstantArray[0, {4, 4}];

checks = <|
  "FiniteWallExtrinsicCurvature" ->
    TrueQ[wallExtrinsicCurvatureCheck],
  "KosmannTimeConnectionCancellation" -> TrueQ[timeKosmannCancellation],
  "Gamma5AnticommutesWithDiracGammas" -> TrueQ[gamma5Checks],
  "PositiveFrequencyNoetherEigenvaluePlusE" ->
    TrueQ[particleNoetherEigenvalue === energy],
  "NegativeFrequencyNoetherEigenvalueMinusE" ->
    TrueQ[negativeFrequencyNoetherEigenvalue === -energy],
  "U1OneParticleEigenvaluePlusOne" ->
    TrueQ[u1OneParticleEigenvalue === 1],
  "TwoModeCAR" -> TrueQ[carChecks],
  "HamiltonianGeneratesTimeTranslation" ->
    TrueQ[hamiltonianGeneratorChecks],
  "U1ChargeGeneratesFieldPhase" -> TrueQ[u1GeneratorChecks],
  "AntiparticleNormalOrderingConstant" ->
    TrueQ[antiparticleNormalOrderingCheck]
|>;

Print[checks];
allPassed = TrueQ[And @@ Values[checks]];
Print[If[allPassed, "OVERALL: PASS", "OVERALL: FAIL"]];
If[allPassed, Exit[0], Exit[1]];
