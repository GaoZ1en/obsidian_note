(* ::Package:: *)

(* ===================================================================== *)
(*  Glued scalar correlators in the finite-cutoff feedback regulator     *)
(*                                                                       *)
(*  The same Wightman functions are computed (i) as normalized global   *)
(*  mode sums and (ii) by propagating the global-vacuum covariance.      *)
(*  The reconstructed modes are checked against the projected regional   *)
(*  equations, both boundary conditions, interface continuity and flux, *)
(*  and the exact reduced equal-time CCR.                                *)
(* ===================================================================== *)

ClearAll["Global`*"];

gaussianScript = FileNameJoin[{
  DirectoryName[$InputFileName],
  "finite_cutoff_gaussian_vacuum.wl"
}];
Block[{Print = (Null &)}, Get[gaussianScript]];

testFailed = False;
assert[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

dirichletBasis[Nmax_, y_] :=
  Table[Sqrt[2/ell] Sin[n Pi y/ell], {n, 1, Nmax}];

dirichletBasisDerivativeAtInterface[Nmax_] :=
  Table[Sqrt[2/ell] (n Pi/ell) (-1)^n, {n, 1, Nmax}];

parityMatrix[Nmax_] := 1/Sqrt[2] ArrayFlatten[{
  {IdentityMatrix[Nmax], IdentityMatrix[Nmax]},
  {IdentityMatrix[Nmax], -IdentityMatrix[Nmax]}
}];

fieldRows[data_, Nmax_, y_] := Module[
  {zero, basis, qRegional, leftRegional, rightRegional,
   configurationMap},
  zero = ConstantArray[0, Nmax];
  basis = dirichletBasis[Nmax, y];
  configurationMap = data["ConfigurationMap"];
  qRegional = Join[data["h"], data["h"]]/Sqrt[2];
  leftRegional = Join[basis, zero] + (y/ell) qRegional;
  rightRegional = Join[zero, basis] + (y/ell) qRegional;
  <|
    "QRegional" -> qRegional,
    "LeftRegional" -> leftRegional,
    "RightRegional" -> rightRegional,
    "QGlobal" -> qRegional . configurationMap,
    "LeftGlobal" -> leftRegional . configurationMap,
    "RightGlobal" -> rightRegional . configurationMap
  |>
];

phaseRow[configurationRow_, time_, omega_] :=
  Join[
    configurationRow Cos[omega time],
    configurationRow Sin[omega time]/omega
  ];

velocityPhaseRow[configurationRow_, time_, omega_] :=
  Join[
    -configurationRow omega Sin[omega time],
    configurationRow Cos[omega time]
  ];

wightmanModeSum[rowA_, rowB_, timeA_, timeB_, omega_] :=
  Total[
    rowA rowB Exp[-I omega (timeA - timeB)]/(2 omega)
  ];

wightmanCovariance[data_, rowA_, rowB_, timeA_, timeB_] := Module[
  {omega, initialWightman},
  omega = Sqrt[data["GlobalFrequenciesSquared"]];
  initialWightman = data["SigmaGlobal"] + I data["J"]/2;
  phaseRow[rowA, timeA, omega] . initialWightman .
    phaseRow[rowB, timeB, omega]
];

projectedModeResiduals[data_, Nmax_] := Module[
  {configurationMap, plusMinusMap, cPlus, cMinus, cLeft, cRight,
   qRow, omegaSquared, regionalFrequencySquared, forcing},
  configurationMap = data["ConfigurationMap"];
  plusMinusMap = parityMatrix[Nmax] . configurationMap;
  cPlus = plusMinusMap[[1 ;; Nmax, All]];
  cMinus = plusMinusMap[[Nmax + 1 ;; 2 Nmax, All]];
  cLeft = (cPlus + cMinus)/Sqrt[2];
  cRight = (cPlus - cMinus)/Sqrt[2];
  qRow = data["h"] . cPlus;
  omegaSquared = data["GlobalFrequenciesSquared"];
  regionalFrequencySquared = data["OmegaMinusSquared"];
  forcing = Outer[
    Times, data["A"], (mass^2 - omegaSquared) qRow
  ];
  <|
    "Left" -> regionalFrequencySquared . cLeft
      - cLeft . DiagonalMatrix[omegaSquared] + forcing,
    "Right" -> regionalFrequencySquared . cRight
      - cRight . DiagonalMatrix[omegaSquared] + forcing,
    "CPlus" -> cPlus,
    "CMinus" -> cMinus,
    "CLeft" -> cLeft,
    "CRight" -> cRight,
    "QRow" -> qRow
  |>
];

correlatorData[Nmax_] := Module[
  {data, omega, sampleLeft, sampleRight, qRows, leftRows, rightRows,
   sampleTimes, modeValues, covarianceValues, modeResiduals,
   zero, interfaceRows, derivative, qRegional, leftDerivativeRegional,
   rightDerivativeRegional, fluxResidual, continuityResidual,
   boundaryResidual, symplecticLRResidual, coordinateMomentumResidual,
   equalTimeFieldResidual, fieldVelocityKernelMode,
   fieldVelocityKernelPhase, fieldVelocityKernelResidual,
   time, yLeft, yRight},
  data = gaussianData[Nmax];
  omega = Sqrt[data["GlobalFrequenciesSquared"]];
  time = {37/100, -21/100};
  yLeft = 23 ell/100;
  yRight = 71 ell/100;
  sampleTimes = time;
  sampleLeft = fieldRows[data, Nmax, yLeft];
  sampleRight = fieldRows[data, Nmax, yRight];
  qRows = sampleLeft["QGlobal"];
  leftRows = sampleLeft["LeftGlobal"];
  rightRows = sampleRight["RightGlobal"];

  modeValues = {
    wightmanModeSum[leftRows, leftRows, time[[1]], time[[2]], omega],
    wightmanModeSum[leftRows, rightRows, time[[1]], time[[2]], omega],
    wightmanModeSum[qRows, qRows, time[[1]], time[[2]], omega],
    wightmanModeSum[qRows, leftRows, time[[1]], time[[2]], omega],
    wightmanModeSum[qRows, rightRows, time[[1]], time[[2]], omega]
  };
  covarianceValues = {
    wightmanCovariance[data, leftRows, leftRows, time[[1]], time[[2]]],
    wightmanCovariance[data, leftRows, rightRows, time[[1]], time[[2]]],
    wightmanCovariance[data, qRows, qRows, time[[1]], time[[2]]],
    wightmanCovariance[data, qRows, leftRows, time[[1]], time[[2]]],
    wightmanCovariance[data, qRows, rightRows, time[[1]], time[[2]]]
  };

  modeResiduals = projectedModeResiduals[data, Nmax];
  zero = ConstantArray[0, Nmax];
  interfaceRows = fieldRows[data, Nmax, ell];
  derivative = dirichletBasisDerivativeAtInterface[Nmax];
  qRegional = interfaceRows["QRegional"];
  leftDerivativeRegional = Join[derivative, zero] + qRegional/ell;
  rightDerivativeRegional = Join[zero, derivative] + qRegional/ell;
  fluxResidual = Max[Abs[
    (leftDerivativeRegional + rightDerivativeRegional) .
      data["ConfigurationMap"]
  ]];
  continuityResidual = Max[Abs[Join[
    interfaceRows["LeftGlobal"] - interfaceRows["QGlobal"],
    interfaceRows["RightGlobal"] - interfaceRows["QGlobal"]
  ]]];
  boundaryResidual = Max[Abs[Join[
    fieldRows[data, Nmax, 0]["LeftGlobal"],
    fieldRows[data, Nmax, 0]["RightGlobal"]
  ]]];

  symplecticLRResidual = Max[Abs[
    data["FullMap"] . data["J"] . Transpose[data["FullMap"]]
      - data["J"]
  ]];
  coordinateMomentumResidual = Max[Abs[
    Take[
      data["FullMap"] . data["J"] . Transpose[data["FullMap"]],
      {1, 2 Nmax}, {2 Nmax + 1, 4 Nmax}
    ] - IdentityMatrix[2 Nmax]
  ]];
  equalTimeFieldResidual = Max[Abs[{
    phaseRow[leftRows, time[[1]], omega] . data["J"] .
      phaseRow[leftRows, time[[1]], omega],
    phaseRow[leftRows, time[[1]], omega] . data["J"] .
      phaseRow[rightRows, time[[1]], omega]
  }]];
  fieldVelocityKernelMode = leftRows . rightRows;
  fieldVelocityKernelPhase = phaseRow[leftRows, time[[1]], omega] .
    data["J"] . velocityPhaseRow[rightRows, time[[1]], omega];
  fieldVelocityKernelResidual = Abs[
    fieldVelocityKernelMode - fieldVelocityKernelPhase
  ];

  Join[data, <|
    "SampleTimes" -> sampleTimes,
    "SamplePoints" -> {yLeft, yRight},
    "ModeValues" -> modeValues,
    "CovarianceValues" -> covarianceValues,
    "ProjectedModeResiduals" -> modeResiduals,
    "BoundaryResidual" -> boundaryResidual,
    "ContinuityResidual" -> continuityResidual,
    "FluxResidual" -> fluxResidual,
    "SymplecticLRResidual" -> symplecticLRResidual,
    "CoordinateMomentumResidual" -> coordinateMomentumResidual,
    "EqualTimeFieldResidual" -> equalTimeFieldResidual,
    "FieldVelocityKernelMode" -> fieldVelocityKernelMode,
    "FieldVelocityKernelPhase" -> fieldVelocityKernelPhase,
    "FieldVelocityKernelResidual" -> fieldVelocityKernelResidual
  |>]
];

Do[
  Module[
    {data, correlatorResidual, projectedEquationResidual,
     hermiticityResidual, sampleLeft, sampleRight, omega, t1, t2,
     reverseCross},
    data = correlatorData[nCut];
    correlatorResidual = Max[Abs[
      data["ModeValues"] - data["CovarianceValues"]
    ]];
    projectedEquationResidual = Max[Abs[Join[
      Flatten[data["ProjectedModeResiduals"]["Left"]],
      Flatten[data["ProjectedModeResiduals"]["Right"]]
    ]]];
    {t1, t2} = data["SampleTimes"];
    sampleLeft = fieldRows[data, nCut, data["SamplePoints"][[1]]];
    sampleRight = fieldRows[data, nCut, data["SamplePoints"][[2]]];
    omega = Sqrt[data["GlobalFrequenciesSquared"]];
    reverseCross = wightmanModeSum[
      sampleRight["RightGlobal"], sampleLeft["LeftGlobal"],
      t2, t1, omega
    ];
    hermiticityResidual = Abs[
      data["ModeValues"][[2]] - Conjugate[reverseCross]
    ];

    assert[
      "mode-sum and covariance Wightman functions at N=" <>
        ToString[nCut],
      correlatorResidual < tolerance
    ];
    assert[
      "projected field equation in both regions at N=" <>
        ToString[nCut],
      projectedEquationResidual < tolerance
    ];
    assert[
      "outer Dirichlet condition at N=" <> ToString[nCut],
      data["BoundaryResidual"] < tolerance
    ];
    assert[
      "interface continuity at N=" <> ToString[nCut],
      data["ContinuityResidual"] < tolerance
    ];
    assert[
      "oriented flux matching at N=" <> ToString[nCut],
      data["FluxResidual"] < tolerance
    ];
    assert[
      "left-right reduced symplectic form at N=" <> ToString[nCut],
      data["SymplecticLRResidual"] < tolerance
    ];
    assert[
      "reduced coordinate-momentum CCR at N=" <> ToString[nCut],
      data["CoordinateMomentumResidual"] < tolerance
    ];
    assert[
      "equal-time field-field commutator at N=" <> ToString[nCut],
      data["EqualTimeFieldResidual"] < tolerance
    ];
    assert[
      "field-velocity finite-rank CCR kernel at N=" <>
        ToString[nCut],
      data["FieldVelocityKernelResidual"] < tolerance
    ];
    assert[
      "Wightman Hermiticity at N=" <> ToString[nCut],
      hermiticityResidual < tolerance
    ];

    Print[
      "N=", nCut,
      " W12=", N[data["ModeValues"][[2]], 10],
      " Wqq=", N[data["ModeValues"][[3]], 10],
      " Wq1=", N[data["ModeValues"][[4]], 10],
      " Wq2=", N[data["ModeValues"][[5]], 10],
      " max residual=", N[Max[
        correlatorResidual, projectedEquationResidual,
        data["BoundaryResidual"], data["ContinuityResidual"],
        data["FluxResidual"], data["SymplecticLRResidual"],
        data["CoordinateMomentumResidual"],
        data["EqualTimeFieldResidual"],
        data["FieldVelocityKernelResidual"], hermiticityResidual
      ], 5]
    ];
  ],
  {nCut, {1, 2, 4, 8}}
];

If[TrueQ[testFailed],
  Print["ERROR: finite-cutoff correlator checks failed."];
  Exit[1]
];

Print["All finite-cutoff correlator checks passed."];
