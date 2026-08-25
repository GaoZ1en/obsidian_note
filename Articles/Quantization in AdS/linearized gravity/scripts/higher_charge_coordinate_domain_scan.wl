(* ::Package:: *)

(*
  Numerical diagnostics for the domain of the higher-charge coordinate chart
  on the exceptional Virasoro orbit Diff^+(S^1)/PSL(2,R).

  A deterministic family of orientation-preserving trigonometric
  diffeomorphisms is sampled.  For every sample we compute

    - the fixed/actual stabilizer overlap R Z and K E=(R Z)^dagger,
    - the low-mode Hill-monodromy Jacobian,
    - a vacuum-preconditioned principal block of J_H^>.

  A finite Fourier block is only a convergence diagnostic for the infinite
  operator; it is not treated as a finite-dimensional Poisson algebra.
*)

ClearAll["Global`*"];

cValue = 100.;
kappaSquared = 24. Pi/cValue;
gridSize = 768;
oversampleSize = 6144;
defaultCutoff = 14;
modeMaximum = 8;

angles = 2. Pi Range[0, gridSize - 1]/gridSize;
oversampleAngles = 2. Pi Range[0, oversampleSize - 1]/oversampleSize;
lowModes = Range[-1, 1];

derivativeData[cosineCoefficients_List, sineCoefficients_List,
  evaluationAngles_List] := Module[
  {modes = Range[2, 1 + Length[cosineCoefficients]], fp, fpp, fppp,
   fpppp, f},
  fp = 1. + Sum[
      cosineCoefficients[[j]] Cos[modes[[j]] evaluationAngles] +
       sineCoefficients[[j]] Sin[modes[[j]] evaluationAngles],
      {j, Length[modes]}];
  fpp = Sum[
     -modes[[j]] cosineCoefficients[[j]] Sin[modes[[j]] evaluationAngles] +
      modes[[j]] sineCoefficients[[j]] Cos[modes[[j]] evaluationAngles],
     {j, Length[modes]}];
  fppp = Sum[
     -modes[[j]]^2 cosineCoefficients[[j]] Cos[modes[[j]] evaluationAngles] -
      modes[[j]]^2 sineCoefficients[[j]] Sin[modes[[j]] evaluationAngles],
     {j, Length[modes]}];
  fpppp = Sum[
     modes[[j]]^3 cosineCoefficients[[j]] Sin[modes[[j]] evaluationAngles] -
      modes[[j]]^3 sineCoefficients[[j]] Cos[modes[[j]] evaluationAngles],
     {j, Length[modes]}];
  (* The additive constant makes f(0)=0 and does not affect any singular value. *)
  f = evaluationAngles + Sum[
      cosineCoefficients[[j]] Sin[modes[[j]] evaluationAngles]/modes[[j]] -
       sineCoefficients[[j]] (Cos[modes[[j]] evaluationAngles] - 1.)/
        modes[[j]],
      {j, Length[modes]}];
  <|"f" -> f, "fp" -> fp, "fpp" -> fpp, "fppp" -> fppp,
   "fpppp" -> fpppp|>
  ];

scaleToMinimumDerivative[rawCosines_List, rawSines_List,
  targetMinimum_?NumericQ] := Module[{raw, minimum, scale},
  raw = derivativeData[rawCosines, rawSines, oversampleAngles]["fp"] - 1.;
  minimum = Min[raw];
  If[minimum >= 0., Return[$Failed]];
  scale = (1. - targetMinimum)/(-minimum);
  {scale rawCosines, scale rawSines}
  ];

fundamentalMatrices[data_Association] := Module[
  {f = data["f"], fp = data["fp"], fpp = data["fpp"], psi1,
   psi2, psi1p, psi2p, frames, initialFrame},
  psi1 = Cos[f/2.]/Sqrt[fp];
  psi2 = 2. Sin[f/2.]/Sqrt[fp];
  psi1p = -0.5 Sqrt[fp] Sin[f/2.] -
    0.5 fpp Cos[f/2.]/fp^(3/2);
  psi2p = Sqrt[fp] Cos[f/2.] - fpp Sin[f/2.]/fp^(3/2);
  frames = MapThread[{{#1, #2}, {#3, #4}} &,
    {psi1, psi2, psi1p, psi2p}];
  initialFrame = First[frames];
  (# . Inverse[initialFrame]) & /@ frames
  ];

constraintVector[matrix_] :=
  {matrix[[1, 2]], matrix[[2, 1]],
   matrix[[1, 1]] - matrix[[2, 2]]};

monodromyJacobian[data_Association] := Module[
  {matrices, lowVariations, columns},
  matrices = fundamentalMatrices[data];
  lowVariations = {ConstantArray[1., gridSize], 2. Cos[angles],
    -2. Sin[angles]};
  columns = Table[
    constraintVector[-(2. Pi/gridSize) Total[MapThread[
         Inverse[#1] . {{0., 0.},
              {kappaSquared #2/(4. Pi), 0.}} . #1 &,
         {matrices, lowVariations[[j]]}]]],
    {j, 3}];
  Chop[Transpose[columns], 10^-12]
  ];

poissonPrincipalMatrix[data_Association, cutoff_Integer] := Module[
  {fp = data["fp"], fpp = data["fpp"], fppp = data["fppp"],
   fpppp = data["fpppp"], schwarzian, schwarzianPrime, density,
   densityPrime, highModes, highFourier, highExtractor, columns},
  schwarzian = fppp/fp - 1.5 (fpp/fp)^2;
  schwarzianPrime = fpppp/fp - 4. fpp fppp/fp^2 +
    3. fpp^3/fp^3;
  density = -cValue/24. (fp^2 - 1.) - cValue/12. schwarzian;
  densityPrime = -cValue/12. fp fpp - cValue/12. schwarzianPrime;
  highModes = Join[Range[-cutoff, -2], Range[2, cutoff]];
  highFourier = Transpose[Outer[Exp[I #1 #2] &, highModes, angles]];
  highExtractor = ConjugateTranspose[highFourier]/gridSize;
  columns = Transpose@Table[
     With[{mode = highModes[[j]]},
      ((2. Pi/kappaSquared) ((I mode)^3 + I mode) -
          2. I mode density - densityPrime) Exp[I mode angles]],
     {j, Length[highModes]}];
  highExtractor . columns
  ];

Clear[vacuumPrincipalMatrix];
vacuumPrincipalMatrix[cutoff_Integer] := vacuumPrincipalMatrix[cutoff] =
  poissonPrincipalMatrix[
   derivativeData[ConstantArray[0., modeMaximum - 1],
    ConstantArray[0., modeMaximum - 1], angles], cutoff];

coordinateDiagnostics[cosines_List, sines_List,
  cutoff_Integer : defaultCutoff] := Module[
  {data, eMatrix, zMatrix, rMatrix, kMatrix, rz, ke, monoJacobian,
   poissonMatrix, preconditioned, singularRZ, singularPoisson,
   minimumDerivative},
  data = derivativeData[cosines, sines, angles];
  minimumDerivative = Min[data["fp"]];
  If[minimumDerivative <= 0., Return[$Failed]];
  eMatrix = Transpose[Outer[Exp[I #1 #2] &, lowModes, angles]];
  zMatrix = Transpose[
    Table[Exp[I mode data["f"]]/data["fp"], {mode, lowModes}]];
  rMatrix = ConjugateTranspose[eMatrix]/gridSize;
  kMatrix = ConjugateTranspose[zMatrix]/gridSize;
  rz = rMatrix . zMatrix;
  ke = kMatrix . eMatrix;
  monoJacobian = monodromyJacobian[data];
  poissonMatrix = poissonPrincipalMatrix[data, cutoff];
  preconditioned = LinearSolve[vacuumPrincipalMatrix[cutoff], poissonMatrix];
  singularRZ = SingularValueList[rz];
  singularPoisson = SingularValueList[preconditioned];
  <|
   "MinimumDerivative" -> minimumDerivative,
   "AbsDetRZ" -> Abs[Det[rz]],
   "MinimumSingularRZ" -> Min[singularRZ],
   "ConditionRZ" -> Max[singularRZ]/Min[singularRZ],
   "KEAdjointResidual" -> Norm[ke - ConjugateTranspose[rz], "Frobenius"],
   "MonodromyJacobianDeterminantRatio" ->
    Abs[Det[monoJacobian]]/(kappaSquared^3/2.),
   "MonodromyJacobianMinimumSingular" ->
    Min[SingularValueList[monoJacobian]],
   "PreconditionedJMinimumSingular" -> Min[singularPoisson],
   "PreconditionedJCondition" -> Max[singularPoisson]/Min[singularPoisson],
   "DeterminantRelationResidual" ->
    Abs[Abs[Det[monoJacobian]]/(kappaSquared^3/2.) - Abs[Det[rz]]]
   |>
  ];

zeroCoefficients = ConstantArray[0., modeMaximum - 1];

oneModeScan = Flatten@Table[
   Module[{cosines = zeroCoefficients, diagnostics},
    cosines[[mode - 1]] = 1. - targetMinimum;
    diagnostics = coordinateDiagnostics[cosines, zeroCoefficients];
    Join[<|"Family" -> "OneMode", "Mode" -> mode,
      "TargetMinimumDerivative" -> targetMinimum|>, diagnostics]
    ],
   {mode, {2, 3, 4, 6, 8}},
   {targetMinimum, {0.8, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01, 0.001}}];

SeedRandom[20260812];
randomScan = Flatten@Table[
   Table[
    Module[{rawCosines, rawSines, scaled, diagnostics},
     rawCosines = RandomVariate[NormalDistribution[], modeMaximum - 1];
     rawSines = RandomVariate[NormalDistribution[], modeMaximum - 1];
     scaled = scaleToMinimumDerivative[rawCosines, rawSines,
       targetMinimum];
     diagnostics = coordinateDiagnostics[scaled[[1]], scaled[[2]]];
     Join[<|"Family" -> "Random", "TargetMinimumDerivative" ->
        targetMinimum, "Sample" -> sample|>, diagnostics]
     ],
    {sample, 1, 12}],
   {targetMinimum, {0.8, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01, 0.005,
     0.001}}];

allSamples = Join[oneModeScan, randomScan];

worstBy[key_] := First@MinimalBy[allSamples, #1[key] &];

worstRZ = worstBy["MinimumSingularRZ"];
worstMonodromy = worstBy["MonodromyJacobianMinimumSingular"];
worstPoisson = worstBy["PreconditionedJMinimumSingular"];

principalBlockCutoffExample = Association@Table[
   cutoff -> Module[{cosines = zeroCoefficients},
     cosines[[6 - 1]] = 1. - 0.5;
     coordinateDiagnostics[cosines, zeroCoefficients, cutoff]],
   {cutoff, {8, 10, 12, 14, 16, 18}}];

vacuumDiagnostics = coordinateDiagnostics[zeroCoefficients, zeroCoefficients];

tests = {
   VerificationTest[
    vacuumDiagnostics["MinimumDerivative"] == 1. &&
     Abs[vacuumDiagnostics["AbsDetRZ"] - 1.] < 10^-12 &&
     Abs[vacuumDiagnostics["MonodromyJacobianDeterminantRatio"] - 1.] <
      10^-10,
    True, TestID -> "Vacuum normalization"],
   VerificationTest[
    Max[allSamples[[All, "KEAdjointResidual"]]] < 10^-12,
    True, TestID -> "K E equals adjoint of R Z"],
   VerificationTest[
    Min[allSamples[[All, "MinimumDerivative"]]] > 0.,
    True, TestID -> "All sampled maps preserve orientation"],
   VerificationTest[
    Min[allSamples[[All, "MinimumSingularRZ"]]] > 10^-8,
    True, TestID -> "No stabilizer-overlap singularity in scan"],
   VerificationTest[
    Min[allSamples[[All, "MonodromyJacobianMinimumSingular"]]] > 10^-8,
    True, TestID -> "No monodromy-Jacobian singularity in scan"],
   VerificationTest[
    Max[allSamples[[All, "DeterminantRelationResidual"]]] < 10^-7,
    True, TestID -> "Monodromy and stabilizer determinant relation"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "SampleCount" -> Length[allSamples],
   "VacuumDiagnostics" -> vacuumDiagnostics,
   "MinimumAbsDetRZ" -> Min[allSamples[[All, "AbsDetRZ"]]],
   "MinimumSingularRZInScan" ->
    Min[allSamples[[All, "MinimumSingularRZ"]]],
   "MinimumMonodromySingularInScan" ->
    Min[allSamples[[All, "MonodromyJacobianMinimumSingular"]]],
   "MinimumPrincipalBlockSingularInScan" ->
    Min[allSamples[[All, "PreconditionedJMinimumSingular"]]],
   "WorstStabilizerOverlap" -> worstRZ,
   "WorstMonodromyJacobian" -> worstMonodromy,
   "WorstProjectedPoissonBlock" -> worstPoisson,
   "OneModeNearBoundary" ->
    Select[oneModeScan,
     #1["TargetMinimumDerivative"] == 0.01 &&
       MemberQ[{2, 4, 8}, #1["Mode"]] &],
   "PrincipalBlockCutoffArtifactExample" -> principalBlockCutoffExample,
   "MaximumDeterminantRelationResidual" ->
    Max[allSamples[[All, "DeterminantRelationResidual"]]]
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
