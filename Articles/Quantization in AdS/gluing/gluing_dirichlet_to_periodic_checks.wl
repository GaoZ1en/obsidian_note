ClearAll["Global`*"];

(* Interval Poisson extension and Dirichlet-to-Neumann map. *)
intervalSolution[x_, len_] :=
  qA Sin[k (len - x)]/Sin[k len] + qB Sin[k x]/Sin[k len];

dtn[len_] :=
  k/Sin[k len] {{Cos[k len], -1}, {-1, Cos[k len]}};

poissonMode[len_, left_, right_, coord_] :=
  (left Sin[k (len - coord)] + right Sin[k coord])/Sin[k len];

dtnResidual = FullSimplify[
  {
    -D[intervalSolution[x, len], x] /. x -> 0,
    D[intervalSolution[x, len], x] /. x -> len
  } - dtn[len].{qA, qB},
  Assumptions -> {
    Element[{k, len, qA, qB}, Reals],
    len > 0,
    Sin[k len] != 0
  }
];

dtnDetResidual = FullSimplify[
  Det[dtn[len1] + dtn[len2]]
    + 4 k^2 Sin[k (len1 + len2)/2]^2/
      (Sin[k len1] Sin[k len2]),
  Assumptions -> {
    Element[{k, len1, len2}, Reals],
    len1 > 0,
    len2 > 0,
    Sin[k len1] != 0,
    Sin[k len2] != 0
  },
  TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
];

dtnZeroLimitResidual = FullSimplify[
  Limit[dtn[len], k -> 0]
    - (1/len) {{1, -1}, {-1, 1}},
  Assumptions -> {len > 0}
];

dtnZeroKernelResidual = FullSimplify[
  Limit[dtn[len1] + dtn[len2], k -> 0].{1, 1},
  Assumptions -> {len1 > 0, len2 > 0}
];

(* Non-equal continuum split L_1 = L, L_2 = 2 L. *)
unequalDtnDetResidual = FullSimplify[
  Det[dtn[len] + dtn[2 len]]
    + 4 k^2 Sin[3 k len/2]^2/(Sin[k len] Sin[2 k len]),
  Assumptions -> {
    len > 0,
    Element[k, Reals],
    Sin[k len] != 0,
    Sin[2 k len] != 0
  },
  TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
];

firstUnequalWaveNumber = 2 Pi/(3 len);

unequalDtnKernelResidual = FullSimplify[
  (dtn[len] + dtn[2 len]) /. k -> firstUnequalWaveNumber,
  Assumptions -> {len > 0}
];

unequalReconstructionResiduals = FullSimplify[
  {
    poissonMode[len, 1, -1/2, x] - Cos[k x],
    poissonMode[len, 0, Sqrt[3]/2, x] - Sin[k x],
    poissonMode[2 len, -1/2, 1, y] - Cos[k (len + y)],
    poissonMode[2 len, Sqrt[3]/2, 0, y] - Sin[k (len + y)]
  } /. k -> firstUnequalWaveNumber,
  Assumptions -> {len > 0, Element[{x, y}, Reals]},
  TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
];

(* CPS boundary-flux cancellation at one cut. *)
fluxResidual = Expand[
  (dq11 drho12 - dq12 drho11)
    + (dq21 drho22 - dq22 drho21) /. {
      dq21 -> dq11,
      dq22 -> dq12,
      drho21 -> -drho11,
      drho22 -> -drho12
    }
];

(* Lattice Dirichlet blocks and the two gluing bonds. *)
dirichletK[nsite_Integer] := Table[
  mass^2 KroneckerDelta[row, col]
    + (1/eps^2) (
      2 KroneckerDelta[row, col]
        - KroneckerDelta[row + 1, col]
        - KroneckerDelta[row - 1, col]
    ),
  {row, 1, nsite},
  {col, 1, nsite}
];

periodicK[nsite_Integer] := Table[
  mass^2 KroneckerDelta[row, col]
    + (1/eps^2) (
      2 KroneckerDelta[row, col]
        - KroneckerDelta[Mod[row, nsite] + 1, col]
        - KroneckerDelta[Mod[row - 2, nsite] + 1, col]
    ),
  {row, 1, nsite},
  {col, 1, nsite}
];

gluedK[n1_Integer, n2_Integer] := Module[
  {nsite = n1 + n2, base, glue},
  base = ArrayFlatten[
    {
      {dirichletK[n1], ConstantArray[0, {n1, n2}]},
      {ConstantArray[0, {n2, n1}], dirichletK[n2]}
    }
  ];
  glue = Table[
    -(1/eps^2) Boole[
      {row, col} == {n1, n1 + 1}
        || {row, col} == {n1 + 1, n1}
        || {row, col} == {nsite, 1}
        || {row, col} == {1, nsite}
    ],
    {row, 1, nsite},
    {col, 1, nsite}
  ];
  base + glue
];

latticeGlueResiduals = Table[
  Simplify[gluedK[n1, n2] - periodicK[n1 + n2]],
  {n1, 2, 5},
  {n2, 2, 5}
];

(* Explicit non-equal lattice split N_1 = 2, N_2 = 3. *)
unequalBlockCharacteristicResiduals = {
  Factor[
    Det[zeta IdentityMatrix[2] - dirichletK[2]]
      - (zeta - mass^2 - 1/eps^2)
        (zeta - mass^2 - 3/eps^2)
  ],
  Factor[
    Det[zeta IdentityMatrix[3] - dirichletK[3]]
      - (zeta - mass^2 - (2 - Sqrt[2])/eps^2)
        (zeta - mass^2 - 2/eps^2)
        (zeta - mass^2 - (2 + Sqrt[2])/eps^2)
  ]
};

unequalPeriodicCharacteristicResidual = Factor[
  Det[zeta IdentityMatrix[5] - gluedK[2, 3]]
    - (zeta - mass^2)
      (zeta - mass^2 - (5 - Sqrt[5])/(2 eps^2))^2
      (zeta - mass^2 - (5 + Sqrt[5])/(2 eps^2))^2
];

(* Full periodic spectrum at N = 7. *)
periodicEigenResiduals = Table[
  With[
    {
      n = 7,
      vec = Table[Exp[2 Pi I r (j - 1)/7]/Sqrt[7], {j, 1, 7}],
      eig = mass^2 + 4 Sin[Pi r/7]^2/eps^2
    },
    FullSimplify[
      periodicK[n].vec - eig vec,
      Assumptions -> {Element[{mass, eps}, Reals], eps > 0}
    ]
  ],
  {r, 0, 6}
];

(* Full Dirichlet spectrum at N_i = 6. *)
dirichletEigenResiduals = Table[
  With[
    {
      nsite = 6,
      vec = Table[Sqrt[2/7] Sin[Pi r j/7], {j, 1, 6}],
      eig = mass^2 + 4 Sin[Pi r/14]^2/eps^2
    },
    FullSimplify[
      dirichletK[nsite].vec - eig vec,
      Assumptions -> {Element[{mass, eps}, Reals], eps > 0},
      TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
    ]
  ],
  {r, 1, 6}
];

(* Mode-space form of the endpoint gluing interaction. *)
dirichletMode[nsite_Integer, mode_Integer, site_Integer] :=
  Sqrt[2/(nsite + 1)] Sin[Pi mode site/(nsite + 1)];

fockCouplingResidual = Module[
  {
    n1 = 3,
    n2 = 4,
    q1First,
    q1Last,
    q2First,
    q2Last,
    directExpression,
    modeExpression
  },
  q1First = Sum[
    dirichletMode[n1, mode1, 1] x1[mode1]/Sqrt[2 freq1[mode1]],
    {mode1, 1, n1}
  ];
  q1Last = Sum[
    dirichletMode[n1, mode1, n1] x1[mode1]/Sqrt[2 freq1[mode1]],
    {mode1, 1, n1}
  ];
  q2First = Sum[
    dirichletMode[n2, mode2, 1] x2[mode2]/Sqrt[2 freq2[mode2]],
    {mode2, 1, n2}
  ];
  q2Last = Sum[
    dirichletMode[n2, mode2, n2] x2[mode2]/Sqrt[2 freq2[mode2]],
    {mode2, 1, n2}
  ];
  directExpression = -(q1Last q2First + q2Last q1First)/eps^2;
  modeExpression = -1/(2 eps^2) Sum[
    (
      dirichletMode[n1, mode1, n1] dirichletMode[n2, mode2, 1]
        + dirichletMode[n1, mode1, 1] dirichletMode[n2, mode2, n2]
    ) x1[mode1] x2[mode2]/Sqrt[freq1[mode1] freq2[mode2]],
    {mode1, 1, n1},
    {mode2, 1, n2}
  ];
  FullSimplify[
    Expand[directExpression - modeExpression],
    Assumptions -> {
      eps > 0,
      And @@ Table[freq1[mode1] > 0, {mode1, 1, n1}],
      And @@ Table[freq2[mode2] > 0, {mode2, 1, n2}]
    }
  ]
];

equalChainParityResiduals = Flatten@Table[
  FullSimplify[
    dirichletMode[nsite, mode, nsite]
      - (-1)^(mode + 1) dirichletMode[nsite, mode, 1]
  ],
  {nsite, 2, 6},
  {mode, 1, nsite}
];

(* Finite-lattice Bogoliubov proof in real orthonormal mode bases. *)
bogoliubovAlphaCoefficient[periodicFrequency_, dirichletFrequency_] :=
  (periodicFrequency + dirichletFrequency)/
    (2 Sqrt[periodicFrequency dirichletFrequency]);

bogoliubovBetaCoefficient[periodicFrequency_, dirichletFrequency_] :=
  (periodicFrequency - dirichletFrequency)/
    (2 Sqrt[periodicFrequency dirichletFrequency]);

bogoliubovCoefficientResiduals = FullSimplify[
  {
    bogoliubovAlphaCoefficient[periodicFrequency1, dirichletFrequency]
        bogoliubovAlphaCoefficient[periodicFrequency2, dirichletFrequency]
      - bogoliubovBetaCoefficient[periodicFrequency1, dirichletFrequency]
        bogoliubovBetaCoefficient[periodicFrequency2, dirichletFrequency]
      - (periodicFrequency1 + periodicFrequency2)/
        (2 Sqrt[periodicFrequency1 periodicFrequency2]),
    bogoliubovAlphaCoefficient[periodicFrequency1, dirichletFrequency]
        bogoliubovBetaCoefficient[periodicFrequency2, dirichletFrequency]
      - bogoliubovBetaCoefficient[periodicFrequency1, dirichletFrequency]
        bogoliubovAlphaCoefficient[periodicFrequency2, dirichletFrequency]
      - (periodicFrequency2 - periodicFrequency1)/
        (2 Sqrt[periodicFrequency1 periodicFrequency2])
  },
  Assumptions -> {
    periodicFrequency1 > 0,
    periodicFrequency2 > 0,
    dirichletFrequency > 0
  }
];

bogoliubovDefinitionResidual = FullSimplify[
  Sqrt[periodicFrequency/2]
      (annihilator + creator)/Sqrt[2 dirichletFrequency]
    + I/Sqrt[2 periodicFrequency]
      (-I Sqrt[dirichletFrequency/2]
        (annihilator - creator))
    - bogoliubovAlphaCoefficient[
        periodicFrequency,
        dirichletFrequency
      ] annihilator
    - bogoliubovBetaCoefficient[
        periodicFrequency,
        dirichletFrequency
      ] creator,
  Assumptions -> {
    periodicFrequency > 0,
    dirichletFrequency > 0
  }
];

oneModeAnnihilate[expression_] :=
  (
    Sqrt[oscillatorFrequency] modeCoordinate expression
      + D[expression, modeCoordinate]/Sqrt[oscillatorFrequency]
  )/Sqrt[2];

oneModeCreate[expression_] :=
  (
    Sqrt[oscillatorFrequency] modeCoordinate expression
      - D[expression, modeCoordinate]/Sqrt[oscillatorFrequency]
  )/Sqrt[2];

oneModeHamiltonianResidual = FullSimplify[
  -D[testWavefunction[modeCoordinate], {modeCoordinate, 2}]/2
    + oscillatorFrequency^2 modeCoordinate^2
      testWavefunction[modeCoordinate]/2
    - oscillatorFrequency (
      oneModeCreate[
        oneModeAnnihilate[testWavefunction[modeCoordinate]]
      ]
        + testWavefunction[modeCoordinate]/2
    ),
  Assumptions -> {oscillatorFrequency > 0}
];

dirichletBasis[nsite_Integer] := Table[
  dirichletMode[nsite, mode, site],
  {site, 1, nsite},
  {mode, 1, nsite}
];

dirichletBlockBasis[n1_Integer, n2_Integer] := ArrayFlatten[
  {
    {
      dirichletBasis[n1],
      ConstantArray[0, {n1, n2}]
    },
    {
      ConstantArray[0, {n2, n1}],
      dirichletBasis[n2]
    }
  }
];

dirichletFrequencyList[nsite_Integer] := Table[
  Sqrt[
    mass^2
      + 4 Sin[Pi mode/(2 (nsite + 1))]^2/eps^2
  ],
  {mode, 1, nsite}
];

realPeriodicWaveNumbers[nsite_Integer] := Join[
  {0},
  Flatten@Table[
    Which[
      2 waveNumber < nsite,
        {waveNumber, waveNumber},
      2 waveNumber == nsite,
        {waveNumber},
      True,
        {}
    ],
    {waveNumber, 1, Floor[nsite/2]}
  ]
];

realPeriodicModeList[nsite_Integer] := Join[
  {ConstantArray[1/Sqrt[nsite], nsite]},
  Flatten[
    Table[
      Which[
        2 waveNumber < nsite,
          {
            Table[
              Sqrt[2/nsite]
                Cos[2 Pi waveNumber (site - 1)/nsite],
              {site, 1, nsite}
            ],
            Table[
              Sqrt[2/nsite]
                Sin[2 Pi waveNumber (site - 1)/nsite],
              {site, 1, nsite}
            ]
          },
        2 waveNumber == nsite,
          {
            Table[
              (-1)^(site - 1)/Sqrt[nsite],
              {site, 1, nsite}
            ]
          },
        True,
          {}
      ],
      {waveNumber, 1, Floor[nsite/2]}
    ],
    1
  ]
];

realPeriodicBasis[nsite_Integer] :=
  Transpose[realPeriodicModeList[nsite]];

realPeriodicFrequencyList[nsite_Integer] :=
  Sqrt[
    mass^2
      + 4 Sin[Pi #/nsite]^2/eps^2
  ] & /@ realPeriodicWaveNumbers[nsite];

realBogoliubovMatrixResidual[n1_Integer, n2_Integer] := Module[
  {
    nsite = n1 + n2,
    parameterRules = {mass -> 3/2, eps -> 4/5},
    dirichletModes,
    periodicModes,
    overlap,
    dirichletFrequencies,
    periodicFrequencies,
    dirichletRoot,
    dirichletInverseRoot,
    periodicRoot,
    periodicInverseRoot,
    alphaMatrix,
    betaMatrix,
    stiffness,
    residuals
  },
  dirichletModes = N[dirichletBlockBasis[n1, n2], 80];
  periodicModes = N[realPeriodicBasis[nsite], 80];
  overlap = Transpose[periodicModes].dirichletModes;
  dirichletFrequencies = N[
    Join[
      dirichletFrequencyList[n1],
      dirichletFrequencyList[n2]
    ] /. parameterRules,
    80
  ];
  periodicFrequencies = N[
    realPeriodicFrequencyList[nsite] /. parameterRules,
    80
  ];
  dirichletRoot = DiagonalMatrix[Sqrt[dirichletFrequencies]];
  dirichletInverseRoot =
    DiagonalMatrix[1/Sqrt[dirichletFrequencies]];
  periodicRoot = DiagonalMatrix[Sqrt[periodicFrequencies]];
  periodicInverseRoot =
    DiagonalMatrix[1/Sqrt[periodicFrequencies]];
  alphaMatrix = (
    periodicRoot.overlap.dirichletInverseRoot
      + periodicInverseRoot.overlap.dirichletRoot
  )/2;
  betaMatrix = (
    periodicRoot.overlap.dirichletInverseRoot
      - periodicInverseRoot.overlap.dirichletRoot
  )/2;
  stiffness = N[periodicK[nsite] /. parameterRules, 80];
  residuals = {
    Transpose[dirichletModes].dirichletModes
      - IdentityMatrix[nsite],
    Transpose[periodicModes].periodicModes
      - IdentityMatrix[nsite],
    overlap.Transpose[overlap] - IdentityMatrix[nsite],
    Transpose[periodicModes].stiffness.periodicModes
      - DiagonalMatrix[periodicFrequencies^2],
    Transpose[dirichletModes].stiffness.dirichletModes
      - Transpose[overlap].
        DiagonalMatrix[periodicFrequencies^2].overlap,
    alphaMatrix.Transpose[alphaMatrix]
      - betaMatrix.Transpose[betaMatrix]
      - IdentityMatrix[nsite],
    alphaMatrix.Transpose[betaMatrix]
      - betaMatrix.Transpose[alphaMatrix]
  };
  Max[
    Abs[
      Flatten[
        Chop[N[residuals, 70], 10^-55]
      ]
    ]
  ]
];

realBogoliubovMatrixResiduals =
  realBogoliubovMatrixResidual @@@ {
    {2, 3},
    {3, 4},
    {4, 2},
    {4, 5}
  };

continuumSpectrumResidual = FullSimplify[
  Limit[
    Sqrt[mass^2 + 4 Sin[Pi mode eps/circ]^2/eps^2],
    eps -> 0,
    Direction -> "FromAbove"
  ] - Sqrt[mass^2 + (2 Pi mode/circ)^2],
  Assumptions -> {
    Element[{mass, circ}, Reals],
    mass > 0,
    circ > 0,
    Element[mode, Integers]
  }
];

(* Arbitrary two-piece Fock inequivalence from the periodic constant mode. *)
generalZeroModeOverlapResidual = FullSimplify[
  Integrate[
    (1/Sqrt[circ]) Sqrt[2/pieceLen]
      Sin[Pi mode x/pieceLen],
    {x, 0, pieceLen},
    GenerateConditions -> False
  ] - Sqrt[2 pieceLen/circ]
      (1 - (-1)^mode)/(Pi mode),
  Assumptions -> {
    circ > 0,
    pieceLen > 0,
    Element[mode, Integers],
    mode > 0
  }
];

oddModeNumber[index_] := 2 index + 1;

pieceDirichletFrequency[index_, length_] :=
  Sqrt[mass^2 + (Pi oddModeNumber[index]/length)^2];

oddPieceZeroModeBetaSquared[index_, length_] :=
  2 length (pieceDirichletFrequency[index, length] - mass)^2/
    (circ mass pieceDirichletFrequency[index, length]
      Pi^2 oddModeNumber[index]^2);

generalBetaAsymptoticResidual = FullSimplify[
  Limit[
    oddModeNumber[index] oddPieceZeroModeBetaSquared[index, pieceLen],
    index -> Infinity
  ] - 2/(mass Pi circ),
  Assumptions -> {mass > 0, circ > 0, pieceLen > 0}
];

twoPieceGeneralBetaAsymptoticResidual = FullSimplify[
  Limit[
    oddModeNumber[index] (
      oddPieceZeroModeBetaSquared[index, pieceLen1]
        + oddPieceZeroModeBetaSquared[index, pieceLen2]
    ),
    index -> Infinity
  ] - 4/(mass Pi circ),
  Assumptions -> {
    mass > 0,
    pieceLen1 > 0,
    pieceLen2 > 0,
    circ == pieceLen1 + pieceLen2
  }
];

(* Why zeta subtraction does not repair Fock implementability. *)
oddHarmonicIdentityResidual = FullSimplify[
  Sum[1/(2 index + 1), {index, 0, cutoff - 1}]
    - (HarmonicNumber[2 cutoff] - HarmonicNumber[cutoff]/2),
  Assumptions -> {
    Element[cutoff, Integers],
    cutoff > 0
  }
];

oddHarmonicAsymptoticResidual = FullSimplify[
  Limit[
    HarmonicNumber[2 cutoff] - HarmonicNumber[cutoff]/2
      - (Log[cutoff]/2 + Log[2] + EulerGamma/2),
    cutoff -> Infinity
  ]
];

oddZetaRegulator =
  regulatorScale^regulatorParameter *
    (1 - 2^(-1 - regulatorParameter)) *
    Zeta[1 + regulatorParameter];

oddZetaResidueResidual = FullSimplify[
  Limit[
    regulatorParameter oddZetaRegulator,
    regulatorParameter -> 0
  ] - 1/2,
  Assumptions -> {regulatorScale > 0}
];

oddZetaFinitePartResidual = FullSimplify[
  Limit[
    oddZetaRegulator - 1/(2 regulatorParameter),
    regulatorParameter -> 0
  ]
    - (
      EulerGamma + Log[2] + Log[regulatorScale]
    )/2,
  Assumptions -> {regulatorScale > 0}
];

oddZetaScaleShiftResidual = FullSimplify[
  (
    (EulerGamma + Log[2] + Log[regulatorScale2])/2
      - (EulerGamma + Log[2] + Log[regulatorScale1])/2
  )
    - Log[regulatorScale2/regulatorScale1]/2,
  Assumptions -> {
    regulatorScale1 > 0,
    regulatorScale2 > 0
  }
];

oneModeSqueezedOverlapResidual = FullSimplify[
  1/Cosh[squeezeParameter]
    - 1/Sqrt[1 + Sinh[squeezeParameter]^2],
  Assumptions -> {Element[squeezeParameter, Reals]}
];

smallBetaVacuumOverlapResidual = FullSimplify[
  Limit[
    -Log[(1 + betaParameter^2)^(-1/4)]/betaParameter^2,
    betaParameter -> 0
  ] - 1/4
];

(* Global AdS3 benchmark: glue two non-equal angular wedges. *)
adsMetric = DiagonalMatrix[
  {-(1 + radial^2), 1/(1 + radial^2), radial^2}
];

adsInverseMetric = DiagonalMatrix[
  {-1/(1 + radial^2), 1 + radial^2, 1/radial^2}
];

adsLapse = Sqrt[1 + radial^2];
adsSpatialMetric = DiagonalMatrix[
  {1/(1 + radial^2), radial^2}
];
adsSpatialInverse = Inverse[adsSpatialMetric];
adsSpatialRootDet = Sqrt[Det[adsSpatialMetric]];

adsGeometryResiduals = FullSimplify[
  {
    adsMetric.adsInverseMetric - IdentityMatrix[3],
    Det[adsMetric] + radial^2,
    adsLapse/adsSpatialRootDet - (1 + radial^2)/radial,
    adsLapse adsSpatialRootDet adsSpatialInverse[[1, 1]]
      - radial (1 + radial^2),
    adsLapse adsSpatialRootDet adsSpatialInverse[[2, 2]]
      - 1/radial,
    adsLapse adsSpatialRootDet - radial,
    adsSpatialRootDet/adsLapse - radial/(1 + radial^2)
  },
  Assumptions -> {radial > 0}
];

(* The arbitrary-kappa radial Jacobi mode solves the separated KG equation. *)
adsZ = (1 - adsRadial^2)/(1 + adsRadial^2);

adsRadialAnsatz =
  adsRadial^adsKappa *
    (1 + adsRadial^2)^(-(adsDelta + adsKappa)/2) *
    adsProfile[adsZ];

adsModeFrequency = adsDelta + 2 adsLevel + adsKappa;
adsMassSquared = adsDelta (adsDelta - 2);

adsRawRadialResidual = FullSimplify[
  1/adsRadial D[
    adsRadial (1 + adsRadial^2)
      D[adsRadialAnsatz, adsRadial],
    adsRadial
  ]
    + (
      adsModeFrequency^2/(1 + adsRadial^2)
        - adsKappa^2/adsRadial^2
        - adsMassSquared
    ) adsRadialAnsatz,
  Assumptions -> {
    adsRadial > 0,
    adsDelta > 1,
    adsKappa >= 0,
    Element[adsLevel, Integers],
    adsLevel >= 0
  }
];

adsZCanonical = FullSimplify[adsZ];

adsJacobiSecondRule =
  Derivative[2][adsProfile][adsZCanonical] ->
    FullSimplify[
      -(
        (
          adsDelta - 1 - adsKappa
            - (adsKappa + adsDelta + 1) adsZCanonical
        ) Derivative[1][adsProfile][adsZCanonical]
          + adsLevel (adsLevel + adsKappa + adsDelta)
            adsProfile[adsZCanonical]
      )/(1 - adsZCanonical^2)
    ];

adsJacobiRadialResidual = FullSimplify[
  adsRawRadialResidual /. adsJacobiSecondRule,
  Assumptions -> {
    adsRadial > 0,
    adsDelta > 1,
    adsKappa >= 0,
    Element[adsLevel, Integers],
    adsLevel >= 0
  }
];

adsAngularDtn[opening_, separation_] :=
  separation/Sin[separation opening] {
    {Cos[separation opening], -1},
    {-1, Cos[separation opening]}
  };

adsAngularPoisson[opening_, left_, right_, angle_, separation_] :=
  (
    left Sin[separation (opening - angle)]
      + right Sin[separation angle]
  )/Sin[separation opening];

adsAngularDtnDeterminantResidual = FullSimplify[
  Det[
    adsAngularDtn[openingOne, angularSeparation]
      + adsAngularDtn[openingTwo, angularSeparation]
  ]
    + 4 angularSeparation^2
      Sin[angularSeparation (openingOne + openingTwo)/2]^2/
      (
        Sin[angularSeparation openingOne]
          Sin[angularSeparation openingTwo]
      ),
  Assumptions -> {
    Element[
      {openingOne, openingTwo, angularSeparation},
      Reals
    ],
    openingOne > 0,
    openingTwo > 0,
    Sin[angularSeparation openingOne] != 0,
    Sin[angularSeparation openingTwo] != 0
  },
  TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
];

adsUnequalAngularMatricesResidual = FullSimplify[
  {
    adsAngularDtn[2 Pi/3, 1]
      - 1/Sqrt[3] {{-1, -2}, {-2, -1}},
    adsAngularDtn[4 Pi/3, 1]
      - 1/Sqrt[3] {{1, 2}, {2, 1}}
  }
];

adsUnequalAngularKernelResidual = FullSimplify[
  adsAngularDtn[2 Pi/3, 1]
    + adsAngularDtn[4 Pi/3, 1]
];

adsUnequalAngularReconstructionResiduals = FullSimplify[
  {
    adsAngularPoisson[2 Pi/3, 1, -1/2, angleOne, 1]
      - Cos[angleOne],
    adsAngularPoisson[2 Pi/3, 0, Sqrt[3]/2, angleOne, 1]
      - Sin[angleOne],
    adsAngularPoisson[4 Pi/3, -1/2, 1, angleTwo, 1]
      - Cos[2 Pi/3 + angleTwo],
    adsAngularPoisson[4 Pi/3, Sqrt[3]/2, 0, angleTwo, 1]
      - Sin[2 Pi/3 + angleTwo]
  },
  Assumptions -> {Element[{angleOne, angleTwo}, Reals]},
  TransformationFunctions -> {Automatic, TrigExpand, TrigFactor}
];

adsBetaHighEnergyResidual = FullSimplify[
  Limit[
    (
      (fixedFrequency - dirichletFrequency)^2/
        (4 fixedFrequency dirichletFrequency)
    )/(
      dirichletFrequency/(4 fixedFrequency)
    ),
    dirichletFrequency -> Infinity
  ] - 1,
  Assumptions -> {fixedFrequency > 0}
];

adsSemidiscreteAngularLimitResidual = FullSimplify[
  Limit[
    Sqrt[
      4 Sin[angularMode eps/2]^2/eps^2
    ],
    eps -> 0,
    Direction -> "FromAbove"
  ] - Abs[angularMode],
  Assumptions -> {Element[angularMode, Reals]}
];

(* Equal-half Dirichlet-pole sector. *)
equalHalfFluxResidual = FullSimplify[
  {
    amp1 k Cos[k len] - amp2 k,
    -amp1 k + amp2 k Cos[k len]
  } /. {
    k len -> n Pi,
    amp2 -> (-1)^n amp1
  },
  Assumptions -> {
    Element[n, Integers],
    Element[{k, len, amp1}, Reals]
  }
];

results = <|
  "DtNMapResidual" -> dtnResidual,
  "DtNDeterminantResidual" -> dtnDetResidual,
  "DtNZeroLimitResidual" -> dtnZeroLimitResidual,
  "DtNZeroKernelResidual" -> dtnZeroKernelResidual,
  "UnequalDtNDeterminantResidual" -> unequalDtnDetResidual,
  "UnequalDtNKernelResidual" -> unequalDtnKernelResidual,
  "UnequalReconstructionResiduals" -> unequalReconstructionResiduals,
  "CPSFluxResidual" -> fluxResidual,
  "LatticeGlueAllZero" ->
    And @@
      (TrueQ[FullSimplify[# == 0]] & /@ Flatten[latticeGlueResiduals]),
  "PeriodicEigenResiduals" -> periodicEigenResiduals,
  "DirichletEigenResiduals" -> dirichletEigenResiduals,
  "UnequalBlockCharacteristicResiduals" ->
    unequalBlockCharacteristicResiduals,
  "UnequalPeriodicCharacteristicResidual" ->
    unequalPeriodicCharacteristicResidual,
  "FockCouplingResidual" -> fockCouplingResidual,
  "EqualChainParityResiduals" -> equalChainParityResiduals,
  "BogoliubovCoefficientResiduals" ->
    bogoliubovCoefficientResiduals,
  "BogoliubovDefinitionResidual" ->
    bogoliubovDefinitionResidual,
  "OneModeHamiltonianResidual" ->
    oneModeHamiltonianResidual,
  "RealBogoliubovMatrixResiduals" ->
    realBogoliubovMatrixResiduals,
  "ContinuumSpectrumResidual" -> continuumSpectrumResidual,
  "GeneralZeroModeOverlapResidual" ->
    generalZeroModeOverlapResidual,
  "GeneralBetaAsymptoticResidual" ->
    generalBetaAsymptoticResidual,
  "TwoPieceGeneralBetaAsymptoticResidual" ->
    twoPieceGeneralBetaAsymptoticResidual,
  "OddHarmonicIdentityResidual" ->
    oddHarmonicIdentityResidual,
  "OddHarmonicAsymptoticResidual" ->
    oddHarmonicAsymptoticResidual,
  "OddZetaResidueResidual" ->
    oddZetaResidueResidual,
  "OddZetaFinitePartResidual" ->
    oddZetaFinitePartResidual,
  "OddZetaScaleShiftResidual" ->
    oddZetaScaleShiftResidual,
  "OneModeSqueezedOverlapResidual" ->
    oneModeSqueezedOverlapResidual,
  "SmallBetaVacuumOverlapResidual" ->
    smallBetaVacuumOverlapResidual,
  "AdSGeometryResiduals" -> adsGeometryResiduals,
  "AdSJacobiRadialResidual" -> adsJacobiRadialResidual,
  "AdSAngularDtNDeterminantResidual" ->
    adsAngularDtnDeterminantResidual,
  "AdSUnequalAngularMatricesResidual" ->
    adsUnequalAngularMatricesResidual,
  "AdSUnequalAngularKernelResidual" ->
    adsUnequalAngularKernelResidual,
  "AdSUnequalAngularReconstructionResiduals" ->
    adsUnequalAngularReconstructionResiduals,
  "AdSBetaHighEnergyResidual" -> adsBetaHighEnergyResidual,
  "AdSSemidiscreteAngularLimitResidual" ->
    adsSemidiscreteAngularLimitResidual,
  "EqualHalfPoleFluxResidual" -> equalHalfFluxResidual
|>;

Print[results];
