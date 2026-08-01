toolRoot = DirectoryName[DirectoryName[$InputFileName]];
Get[FileNameJoin[{toolRoot, "SurfaceChargesCompat.wl"}]];

loadResult = SurfaceChargesCompat`LoadSurfaceChargesCompat[];
If[loadResult === $Failed,
  Print["FAIL: compatibility loader"];
  Quit[1]
];

testMetric = {
  {-1 + 2 mass/radius, 0, 0, 0},
  {0, 1/(1 - 2 mass/radius), 0, 0},
  {0, 0, radius^2, 0},
  {0, 0, 0, radius^2 Sin[polar]^2}
};
testCoordinates = {time, radius, polar, azimuth};
testKillingVector = {1, 0, 0, 0};
testPerturbation = D[testMetric, mass] deltaMass;

RGtensors[testMetric, testCoordinates, {0, 0}];

localVariation = FullSimplify[
  ChargesEinstein[
    testKillingVector,
    testPerturbation,
    -1,
    {1, 2}
  ],
  Assumptions -> {
    radius > 2 mass,
    mass > 0,
    0 < polar < Pi
  }
];

integratedVariation = FullSimplify[
  Integrate[
    localVariation,
    {polar, 0, Pi},
    {azimuth, 0, 2 Pi}
  ],
  Assumptions -> {radius > 2 mass, mass > 0}
];

localResidual = FullSimplify[
  localVariation - deltaMass Sin[polar]/(4 Pi),
  Assumptions -> {
    radius > 2 mass,
    mass > 0,
    0 < polar < Pi
  }
];
integratedResidual =
  FullSimplify[integratedVariation - deltaMass];

result = <|
  "MathematicaVersion" -> $Version,
  "RGTCVersion" -> $RGTCversion,
  "LocalVariation" -> localVariation,
  "LocalResidual" -> localResidual,
  "IntegratedVariation" -> integratedVariation,
  "IntegratedResidual" -> integratedResidual,
  "SystemClassifyProtected" ->
    MemberQ[Attributes[System`Classify], Protected],
  "SystemCommutatorProtected" ->
    MemberQ[Attributes[System`Commutator], Protected]
|>;

Print[InputForm[result]];

If[
  localResidual === 0
    && integratedResidual === 0
    && TrueQ[result["SystemClassifyProtected"]]
    && TrueQ[result["SystemCommutatorProtected"]],
  Print["PASS: Schwarzschild surface charge"];
  Quit[0],
  Print["FAIL: Schwarzschild surface charge"];
  Quit[1]
];
