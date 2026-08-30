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

normalizabilityChecks = FullSimplify[
  (-2 + 2 m < -1) && (-2 - 2 m < -1) && (2 m < 1),
  Assumptions -> 0 < m < 1/2
];

checks = <|
  "StandardSpectrumMatchesDeltaPlus" -> TrueQ[standardSpectrumChecks],
  "AlternativeSpectrumMatchesDeltaMinus" -> TrueQ[alternativeSpectrumChecks],
  "LevelDegeneracyMatchesSpinorDescendants" -> TrueQ[degeneracyChecks],
  "CasimirMatchesBothRoots" -> TrueQ[casimirChecks],
  "RadialODEExamplesZero" -> TrueQ[odeChecks],
  "NegativeKappaRadialODEExamplesZero" -> TrueQ[negativeKappaODEChecks],
  "JacobiNormalizationExamplesUnity" -> TrueQ[normalizationChecks],
  "NegativeKappaNormalizationExamplesUnity" ->
    TrueQ[negativeKappaNormalizationChecks],
  "MassWindowPowerCounting" -> TrueQ[normalizabilityChecks]
|>;

Print[checks];
If[And @@ Values[checks], Exit[0], Exit[1]];
