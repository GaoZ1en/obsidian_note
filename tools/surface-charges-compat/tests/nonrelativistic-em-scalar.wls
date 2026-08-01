Get[
  "/Users/koishi/Documents/Note/tools/surface-charges-compat/" <>
  "SurfaceChargesCompat.wl"
];

loadResult = SurfaceChargesCompat`LoadSurfaceChargesCompat[];
If[loadResult === $Failed,
  Print["FAIL: compatibility loader"];
  Quit[1]
];

examplePath =
  "/Users/koishi/Documents/Note/tools/surface-charges-compat/" <>
  "upstream/exampleSheet4_ConservedChargeinNonRelativisticBackgrounds.nb";

exampleCells = NotebookImport[examplePath, "Input"];
patchedExampleCells =
  exampleCells /. HoldPattern[Global`metric] :> Global`exampleMetric;

evaluationResult = Block[
  {
    $Assumptions = L > 0 && r > 0,
    $RecursionLimit = 4096
  },
  TimeConstrained[
    MapIndexed[
      Function[{cell, index},
        Print["Evaluating upstream input cell ", First[index]];
        ReleaseHold[cell]
      ],
      patchedExampleCells
    ],
    300,
    $Aborted
  ]
];

If[evaluationResult === $Aborted,
  Print["FAIL: non-relativistic example timed out"];
  Quit[1]
];

residuals = FullSimplify[
  {
    IntegrabilityCondition,
    CheckZero,
    Hamiltonian - L^2/(32 Pi r0^3)
  },
  Assumptions -> {L > 0, r0 > 0}
];

result = <|
  "IntegrabilityCondition" -> IntegrabilityCondition,
  "ReconstructedChargeResidual" -> CheckZero,
  "Hamiltonian" -> Hamiltonian,
  "Residuals" -> residuals
|>;

Print[InputForm[result]];

If[residuals === {0, 0, 0},
  Print["PASS: Einstein-Maxwell-scalar non-relativistic example"];
  Quit[0],
  Print["FAIL: Einstein-Maxwell-scalar non-relativistic example"];
  Quit[1]
];
