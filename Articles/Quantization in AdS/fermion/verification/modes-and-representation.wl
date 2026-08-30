ClearAll["Global`*"];

deltaPlus[m_] := 3/2 + m;
deltaMinus[m_] := 3/2 - m;

principalLevel[nr_, kap_] := Piecewise[{
  {2 nr + kap - 1, kap > 0},
  {2 nr + Abs[kap], kap < 0}
}];

standardEnergy[nr_, kap_, m_] := Piecewise[{
  {m + 2 nr + kap + 1/2, kap > 0},
  {m + 2 nr + Abs[kap] + 3/2, kap < 0}
}];

alternativeEnergy[nr_, kap_, m_] := standardEnergy[nr, kap, -m];

sampleQuantumNumbers = Flatten[
  Table[{nr, kap}, {nr, 0, 4}, {kap, Join[Range[-5, -1], Range[1, 5]]}],
  1
];

standardSpectrumChecks = And @@ (
  FullSimplify[
    standardEnergy[#[[1]], #[[2]], m] ==
      deltaPlus[m] + principalLevel[#[[1]], #[[2]]]
  ] & /@ sampleQuantumNumbers
);

alternativeSpectrumChecks = And @@ (
  FullSimplify[
    alternativeEnergy[#[[1]], #[[2]], m] ==
      deltaMinus[m] + principalLevel[#[[1]], #[[2]]]
  ] & /@ sampleQuantumNumbers
);

levelDegeneracy[N_] := Sum[2 k, {k, 1, N + 1}];
degeneracyChecks = And @@ Table[
  levelDegeneracy[N] == (N + 1) (N + 2),
  {N, 0, 20}
];

casimir[delta_] := FullSimplify[delta (delta - 3) + 3/4];
casimirChecks = FullSimplify[
  casimir[deltaPlus[m]] == m^2 - 3/2 &&
  casimir[deltaMinus[m]] == m^2 - 3/2
];

(* Section 01 -> angular separation -> unrotated radial matrix.  The ordered
   harmonic basis is {Omega_kappa, Omega_-kappa}; sigma.rhat exchanges the
   two entries and K = 1 + sigma.L has eigenvalues {kappa, -kappa}. *)
angularKMatrix[kap_] := DiagonalMatrix[{kap, -kap}];
radialHarmonicExchange = PauliMatrix[1];

angularConventionChecks = FullSimplify[
  radialHarmonicExchange.radialHarmonicExchange == IdentityMatrix[2] &&
  radialHarmonicExchange.angularKMatrix[kap] +
      angularKMatrix[kap].radialHarmonicExchange == ConstantArray[0, {2, 2}] &&
  angularKMatrix[kap].UnitVector[2, 1] == kap UnitVector[2, 1] &&
  angularKMatrix[kap].radialHarmonicExchange.UnitVector[2, 1] ==
    -kap radialHarmonicExchange.UnitVector[2, 1],
  Assumptions -> kap != 0
];

unrotatedRadialMatrix[energy_, mass_, kap_, rho_] := {
  {kap Csc[rho], -(energy + mass Sec[rho])},
  {energy - mass Sec[rho], -kap Csc[rho]}
};

(* With the Section 01 gamma matrices and the ansatz
   (i G Omega_-kappa, F Omega_kappa)^T, these are the actual upper/lower
   coefficients of (slash nabla - m) psi after the common rescaling. *)
section01SeparatedResidual = {
  (-energy - mass Sec[rho]) I g -
    I (fPrime - kap Csc[rho] f),
  I*I (gPrime + kap Csc[rho] g) +
    (energy - mass Sec[rho]) f
};

section01DerivativeSolution = First[Solve[
  Thread[section01SeparatedResidual == {0, 0}],
  {fPrime, gPrime}
]];

section01ToRadialMatrixCheck = FullSimplify[
  ({fPrime, gPrime} /. section01DerivativeSolution) ==
    unrotatedRadialMatrix[energy, mass, kap, rho].{f, g},
  Assumptions ->
    0 < rho < Pi/2 && Element[{energy, mass, kap}, Reals] && kap != 0
];

kappaSignBranchGuardCheck = FullSimplify[
  unrotatedRadialMatrix[energy, mass, -kap, rho] -
    unrotatedRadialMatrix[energy, mass, kap, rho] ==
      {{-2 kap Csc[rho], 0}, {0, 2 kap Csc[rho]}},
  Assumptions -> 0 < rho < Pi/2 && kap != 0
];

radialRotation[rho_] := {
  {Cos[rho/2], Sin[rho/2]},
  {-Sin[rho/2], Cos[rho/2]}
};

rotationDerivativeCheck = FullSimplify[
  D[radialRotation[rho], rho].Inverse[radialRotation[rho]] ==
    {{0, 1/2}, {-1/2, 0}},
  Assumptions -> 0 < rho < Pi/2
];

rotatedRadialMatrix = FullSimplify[
  radialRotation[rho].unrotatedRadialMatrix[energy, mass, kap, rho].
      Inverse[radialRotation[rho]] +
    D[radialRotation[rho], rho].Inverse[radialRotation[rho]],
  Assumptions ->
    0 < rho < Pi/2 && Element[{energy, mass, kap}, Reals]
];

expectedRotatedRadialMatrix = {
  {kap Cot[rho] - mass Tan[rho],
    -(energy - 1/2 + mass + kap)},
  {energy - 1/2 - mass - kap,
    -kap Cot[rho] + mass Tan[rho]}
};

exactSymbolicRadialRotationCheck = FullSimplify[
  rotatedRadialMatrix == expectedRotatedRadialMatrix,
  Assumptions ->
    0 < rho < Pi/2 && Element[{energy, mass, kap}, Reals]
];

(* Cotăescu's unitary radial reduction, L=1, positive kappa branch. *)
radialNormalization[nr_, mass_, kap_] := Sqrt[
  2 Factorial[nr] Gamma[nr + mass + kap + 1]/
    (Gamma[nr + kap + 1/2] Gamma[nr + mass + 1/2])
];

fHatPlus[rho_, nr_, mass_, kap_] :=
  radialNormalization[nr, mass, kap] Sin[rho]^kap Cos[rho]^mass *
    JacobiP[nr, kap - 1/2, mass - 1/2, Cos[2 rho]];

fHatMinus[rho_, nr_, mass_, kap_] := If[nr == 0, 0,
  radialNormalization[nr, mass, kap] Sin[rho]^(kap + 1) Cos[rho]^(mass + 1) *
    JacobiP[nr - 1, kap + 1/2, mass + 1/2, Cos[2 rho]]
];

epsilon[nr_, mass_, kap_] := 2 nr + mass + kap;

odeResidualPlus[rho_, nr_, mass_, kap_] := FullSimplify[
  -D[fHatPlus[rho, nr, mass, kap], {rho, 2}] +
  (mass (mass - 1)/Cos[rho]^2 + kap (kap - 1)/Sin[rho]^2) *
    fHatPlus[rho, nr, mass, kap] -
  epsilon[nr, mass, kap]^2 fHatPlus[rho, nr, mass, kap],
  Assumptions -> 0 < rho < Pi/2
];

odeResidualMinus[rho_, nr_, mass_, kap_] := FullSimplify[
  -D[fHatMinus[rho, nr, mass, kap], {rho, 2}] +
  (mass (mass + 1)/Cos[rho]^2 + kap (kap + 1)/Sin[rho]^2) *
    fHatMinus[rho, nr, mass, kap] -
  epsilon[nr, mass, kap]^2 fHatMinus[rho, nr, mass, kap],
  Assumptions -> 0 < rho < Pi/2
];

odeSamples = {{0, 1/4, 1}, {1, 1/4, 1}, {2, 1/3, 2},
  {0, -1/4, 1}, {1, -1/4, 1}, {2, -1/3, 2}};

odeChecks = And @@ Flatten[Table[
  {
    odeResidualPlus[rho, q[[1]], q[[2]], q[[3]]] === 0,
    odeResidualMinus[rho, q[[1]], q[[2]], q[[3]]] === 0
  },
  {q, odeSamples}
]];

fHatPlusNegativeKappa[rho_, nr_, mass_, k_] :=
  radialNormalization[nr, mass, k] Sqrt[(nr + mass + 1/2)/(nr + k + 1/2)] *
    Sin[rho]^(k + 1) Cos[rho]^mass *
    JacobiP[nr, k + 1/2, mass - 1/2, Cos[2 rho]];

fHatMinusNegativeKappa[rho_, nr_, mass_, k_] :=
  -radialNormalization[nr, mass, k] Sqrt[(nr + k + 1/2)/(nr + mass + 1/2)] *
    Sin[rho]^k Cos[rho]^(mass + 1) *
    JacobiP[nr, k - 1/2, mass + 1/2, Cos[2 rho]];

(* Direct first-order Dirac checks.  The ODE residuals below are retained only
   as regressions of the squared system. *)
firstOrderResidualsPositiveKappa[rho_, nr_, mass_, kap_] := Module[
  {eps = 2 nr + mass + kap, nu = mass + kap,
   superpotential = kap Cot[rho] - mass Tan[rho]},
  {
    FullSimplify[
      D[fHatMinus[rho, nr, mass, kap], rho] +
        superpotential fHatMinus[rho, nr, mass, kap] -
        (eps - nu) fHatPlus[rho, nr, mass, kap],
      Assumptions -> 0 < rho < Pi/2
    ],
    FullSimplify[
      -D[fHatPlus[rho, nr, mass, kap], rho] +
        superpotential fHatPlus[rho, nr, mass, kap] -
        (eps + nu) fHatMinus[rho, nr, mass, kap],
      Assumptions -> 0 < rho < Pi/2
    ]
  }
];

firstOrderResidualsNegativeKappa[rho_, nr_, mass_, k_] := Module[
  {eps = 2 nr + mass + k + 1, nu = mass - k,
   superpotential = -k Cot[rho] - mass Tan[rho]},
  {
    FullSimplify[
      D[fHatMinusNegativeKappa[rho, nr, mass, k], rho] +
        superpotential fHatMinusNegativeKappa[rho, nr, mass, k] -
        (eps - nu) fHatPlusNegativeKappa[rho, nr, mass, k],
      Assumptions -> 0 < rho < Pi/2
    ],
    FullSimplify[
      -D[fHatPlusNegativeKappa[rho, nr, mass, k], rho] +
        superpotential fHatPlusNegativeKappa[rho, nr, mass, k] -
        (eps + nu) fHatMinusNegativeKappa[rho, nr, mass, k],
      Assumptions -> 0 < rho < Pi/2
    ]
  }
];

firstOrderSamples = Flatten[
  Table[{nr, mass, k}, {mass, {1/4, -1/4}}, {k, {1, 2}}, {nr, 0, 2}],
  2
];

positiveKappaFirstOrderChecks = And @@ Table[
  firstOrderResidualsPositiveKappa[
    rho, q[[1]], q[[2]], q[[3]]
  ] === {0, 0},
  {q, firstOrderSamples}
];

negativeKappaFirstOrderChecks = And @@ Table[
  firstOrderResidualsNegativeKappa[
    rho, q[[1]], q[[2]], q[[3]]
  ] === {0, 0},
  {q, firstOrderSamples}
];

positiveKappaMissingComponentCheck =
  fHatMinus[rho, 0, mass, 1] === 0 &&
  FullSimplify[
    -D[fHatPlus[rho, 0, mass, 1], rho] +
      (Cot[rho] - mass Tan[rho]) fHatPlus[rho, 0, mass, 1],
    Assumptions -> 0 < rho < Pi/2
  ] === 0;

negativeKappaODEResiduals[rho_, nr_, mass_, k_] := {
  FullSimplify[
    -D[fHatPlusNegativeKappa[rho, nr, mass, k], {rho, 2}] +
      (mass (mass - 1)/Cos[rho]^2 + k (k + 1)/Sin[rho]^2) *
        fHatPlusNegativeKappa[rho, nr, mass, k] -
      (2 nr + mass + k + 1)^2 fHatPlusNegativeKappa[rho, nr, mass, k],
    Assumptions -> 0 < rho < Pi/2
  ],
  FullSimplify[
    -D[fHatMinusNegativeKappa[rho, nr, mass, k], {rho, 2}] +
      (mass (mass + 1)/Cos[rho]^2 + k (k - 1)/Sin[rho]^2) *
        fHatMinusNegativeKappa[rho, nr, mass, k] -
      (2 nr + mass + k + 1)^2 fHatMinusNegativeKappa[rho, nr, mass, k],
    Assumptions -> 0 < rho < Pi/2
  ]
};

negativeKappaSamples = {{0, 1/4, 1}, {1, 1/4, 1}, {2, 1/3, 2},
  {0, -1/4, 1}, {1, -1/4, 1}, {2, -1/3, 2}};

negativeKappaODEChecks = And @@ Table[
  negativeKappaODEResiduals[rho, q[[1]], q[[2]], q[[3]]] === {0, 0},
  {q, negativeKappaSamples}
];

(* Jacobi orthogonality gives these two component norms exactly. *)
normPlus[nr_, mass_, kap_] := (nr + mass + kap)/(2 nr + mass + kap);
normMinus[nr_, mass_, kap_] := Piecewise[{
  {0, nr == 0},
  {nr/(2 nr + mass + kap), nr > 0}
}];

normalizationSamples = {{0, 1/4, 1}, {1, 1/4, 1}, {2, 1/3, 2},
  {0, -1/4, 1}, {1, -1/4, 1}, {2, -1/3, 2}};

normalizationChecks = And @@ Table[
  FullSimplify[normPlus[q[[1]], q[[2]], q[[3]]] +
    normMinus[q[[1]], q[[2]], q[[3]]] == 1],
  {q, normalizationSamples}
];

normNegativeKappaPlus[nr_, mass_, k_] :=
  (nr + mass + 1/2)/(2 nr + k + mass + 1);
normNegativeKappaMinus[nr_, mass_, k_] :=
  (nr + k + 1/2)/(2 nr + k + mass + 1);

negativeKappaNormalizationChecks = And @@ Table[
  FullSimplify[
    normNegativeKappaPlus[q[[1]], q[[2]], q[[3]]] +
      normNegativeKappaMinus[q[[1]], q[[2]], q[[3]]] == 1
  ],
  {q, negativeKappaSamples}
];

(* Independent exact sample integrals.  The general normalization proof remains
   the analytic Jacobi-orthogonality calculation in Section 07. *)
directNormalizationSamples = {
  {0, 1/4, 1}, {1, 1/4, 1}, {2, 1/4, 2},
  {0, -1/4, 1}, {1, -1/4, 1}, {2, -1/4, 2}
};

directPositiveKappaNorm[nr_, mass_, kap_] := FullSimplify[
  Integrate[
    fHatPlus[rho, nr, mass, kap]^2 +
      fHatMinus[rho, nr, mass, kap]^2,
    {rho, 0, Pi/2},
    GenerateConditions -> False
  ]
];

directNegativeKappaNorm[nr_, mass_, k_] := FullSimplify[
  Integrate[
    fHatPlusNegativeKappa[rho, nr, mass, k]^2 +
      fHatMinusNegativeKappa[rho, nr, mass, k]^2,
    {rho, 0, Pi/2},
    GenerateConditions -> False
  ]
];

directPositiveKappaNormalizationChecks = And @@ Table[
  directPositiveKappaNorm[q[[1]], q[[2]], q[[3]]] === 1,
  {q, directNormalizationSamples}
];

directNegativeKappaNormalizationChecks = And @@ Table[
  directNegativeKappaNorm[q[[1]], q[[2]], q[[3]]] === 1,
  {q, directNormalizationSamples}
];

normalizabilityChecks = FullSimplify[
  (-2 + 2 m < -1) && (-2 - 2 m < -1) && (2 m < 1),
  Assumptions -> 0 < m < 1/2
];

(* Level-one compact-basis boost regression.  On the lowest spin doublet,
   [M_i^-,M_j^+]=2 delta_ij H-2 I epsilon_ijk J_k. *)
leviCivita = Normal[LeviCivitaTensor[3]];
spinOneGenerators = Table[
  Table[-I leviCivita[[k, i, j]], {i, 3}, {j, 3}],
  {k, 3}
];
spinHalfGenerators = Table[PauliMatrix[k]/2, {k, 3}];
spinOrbit = FullSimplify[
  Sum[
    KroneckerProduct[spinOneGenerators[[k]], spinHalfGenerators[[k]]],
    {k, 3}
  ]
];
boostGram[delta_] := FullSimplify[
  2 delta IdentityMatrix[6] + 2 spinOrbit
];

boostGramCharacteristicCheck = FullSimplify[
  Factor[CharacteristicPolynomial[boostGram[delta], lambda]] ==
    (2 (delta - 1) - lambda)^2 (2 delta + 1 - lambda)^4
];

projectorSpinHalf = FullSimplify[(IdentityMatrix[6] - 2 spinOrbit)/3];
projectorSpinThreeHalf = FullSimplify[IdentityMatrix[6] - projectorSpinHalf];
zUp = UnitVector[6, 5];

boostSelectionProjectorChecks =
  FullSimplify[projectorSpinHalf.projectorSpinHalf == projectorSpinHalf] &&
  FullSimplify[
    projectorSpinThreeHalf.projectorSpinThreeHalf == projectorSpinThreeHalf
  ] &&
  FullSimplify[projectorSpinHalf.projectorSpinThreeHalf ==
    ConstantArray[0, {6, 6}]];

spinHalfClebschWeightCheck = FullSimplify[
  Conjugate[zUp].projectorSpinHalf.zUp == 1/3
];

lowestToLevelOneMatrixElementSquaredCheck = FullSimplify[
  Conjugate[zUp].projectorSpinHalf.boostGram[delta].
      projectorSpinHalf.zUp == 2 (delta - 1)/3,
  Assumptions -> delta > 1
];

boostAdjointAndPositivityCheck = FullSimplify[
  Sqrt[2 (delta - 1)/3] ==
    Conjugate[Sqrt[2 (delta - 1)/3]] &&
  2 (delta - 1)/3 > 0,
  Assumptions -> delta > 1
];

checks = <|
  "SpectrumAlgebraStandardDeltaPlus" -> TrueQ[standardSpectrumChecks],
  "SpectrumAlgebraAlternativeDeltaMinus" -> TrueQ[alternativeSpectrumChecks],
  "LevelDegeneracyAlgebra" -> TrueQ[degeneracyChecks],
  "CasimirAlgebraBothRoots" -> TrueQ[casimirChecks],
  "AngularKappaEigenvalueAndExchangeConvention" ->
    TrueQ[angularConventionChecks],
  "Section01DiracBlocksToUnrotatedRadialMatrix" ->
    TrueQ[section01ToRadialMatrixCheck],
  "KappaSignBranchCannotBeSilentlyMixed" ->
    TrueQ[kappaSignBranchGuardCheck],
  "RadialRotationDerivativeTerm" -> TrueQ[rotationDerivativeCheck],
  "ExactSymbolicUnrotatedToRotatedRadialMatrix" ->
    TrueQ[exactSymbolicRadialRotationCheck],
  "PositiveKappaFirstOrderResidualsZero" ->
    TrueQ[positiveKappaFirstOrderChecks],
  "NegativeKappaFirstOrderResidualsZero" ->
    TrueQ[negativeKappaFirstOrderChecks],
  "NZeroMissingComponentFirstOrderCompatible" ->
    TrueQ[positiveKappaMissingComponentCheck],
  "SquaredODEPositiveKappaRegression" -> TrueQ[odeChecks],
  "SquaredODENegativeKappaRegression" -> TrueQ[negativeKappaODEChecks],
  "JacobiNormFractionAlgebraPositiveKappa" -> TrueQ[normalizationChecks],
  "JacobiNormFractionAlgebraNegativeKappa" ->
    TrueQ[negativeKappaNormalizationChecks],
  "DirectExactNormIntegralsPositiveKappa" ->
    TrueQ[directPositiveKappaNormalizationChecks],
  "DirectExactNormIntegralsNegativeKappa" ->
    TrueQ[directNegativeKappaNormalizationChecks],
  "MassWindowPowerCounting" -> TrueQ[normalizabilityChecks],
  "LevelOneBoostGramEigenvalues" -> TrueQ[boostGramCharacteristicCheck],
  "LevelOneBoostSelectionProjectors" -> TrueQ[boostSelectionProjectorChecks],
  "LevelOneBoostCGWeight" -> TrueQ[spinHalfClebschWeightCheck],
  "LowestToLevelOneBoostMatrixElement" ->
    TrueQ[lowestToLevelOneMatrixElementSquaredCheck],
  "BoostAdjointAndPositivity" -> TrueQ[boostAdjointAndPositivityCheck]
|>;

Print[checks];
allPassed = TrueQ[And @@ Values[checks]];
Print[If[allPassed, "OVERALL: PASS", "OVERALL: FAIL"]];
If[allPassed, Exit[0], Exit[1]];
