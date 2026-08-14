(* ::Package:: *)

(*
  Exact Green kernel for the exceptional Virasoro orbit at a finite circle
  diffeomorphism f, including the two finite-rank corrections required by
  the fixed Fourier slice |p| >= 2.
*)

ClearAll["Global`*"];

(* ---------- Symbolic conjugation and vacuum kernel ---------- *)

schwarzianF[x_] :=
  f'''[x]/f'[x] - 3/2 (f''[x]/f'[x])^2;

ellF[x_] := -f'[x]^2/4 - schwarzianF[x]/2;

hillSolution[sign_Integer, x_] :=
  Exp[I sign f[x]/2]/Sqrt[f'[x]];

stabilizer[mode_Integer, x_] := Exp[I mode f[x]]/f'[x];

thirdOrderOperator[expression_, x_] :=
  D[expression, {x, 3}] - 4 ellF[x] D[expression, x] -
   2 D[ellF[x], x] expression;

conjugatedVector[x_] := u[f[x]]/f'[x];

hillResidual = FullSimplify[
   D[hillSolution[1, x], {x, 2}] - ellF[x] hillSolution[1, x],
   Assumptions -> f'[x] > 0
   ];

conjugationResidual = FullSimplify[
   thirdOrderOperator[conjugatedVector[x], x] -
    f'[x]^2 (u'''[f[x]] + u'[f[x]]),
   Assumptions -> f'[x] > 0
   ];

stabilizerResiduals = Table[
   FullSimplify[thirdOrderOperator[stabilizer[mode, x], x],
    Assumptions -> f'[x] > 0],
   {mode, -1, 1}
   ];

vacuumGreen[s_] :=
  (Pi - s) (1 - Cos[s])/(2 Pi) - 3 Sin[s]/(4 Pi);

vacuumBulkResidual = FullSimplify[
   D[vacuumGreen[s], {s, 3}] + D[vacuumGreen[s], s] +
    (1 + 2 Cos[s])/(2 Pi),
   Assumptions -> 0 < s < 2 Pi
   ];

vacuumJump = FullSimplify[
   Limit[D[vacuumGreen[s], {s, 2}], s -> 0,
     Direction -> "FromAbove"] -
    Limit[D[vacuumGreen[s], {s, 2}], s -> 2 Pi,
     Direction -> "FromBelow"]
   ];

vacuumFourierChecks = Table[
   FullSimplify[
    Integrate[vacuumGreen[s] Exp[-I n s], {s, 0, 2 Pi},
     GenerateConditions -> False] -
     If[Abs[n] >= 2, I/(n (n^2 - 1)), 0]
    ],
   {n, -8, 8}
   ];

(* ---------- Fixed-slice finite-rank formula ---------- *)

(*
  E embeds the fixed Fourier low modes exp(i u phi), R extracts their
  Fourier coefficients, Z embeds the actual stabilizers exp(i a f)/f',
  and K imposes the Fredholm compatibility conditions against Z.

  If G_f is the transported vacuum Green operator, the inverse on the fixed
  higher-mode slice is

    G_f^> = (1-Z (R Z)^-1 R) G_f (1-E (K E)^-1 K).
*)

cValue = 100;
kappaSquared = 24 Pi/cValue;

numericBenchmark[gridSize_Integer, cutoff_Integer, epsilonValue_] := Module[
  {angles, fValues, fPrimeValues, fSecondValues, fThirdValues,
   schwarzianValues, hValues, hPrimeValues, lowModes, highModes,
   eMatrix, zMatrix, kMatrix, rMatrix, highFourier, highExtractor,
   differences, rawGreenMatrix, compatibleSources, rawSolutions,
   constrainedSolutions, greenCoefficientMatrix, poissonOperatorMatrix,
   directInverse, relativeError, rightCompatibilityResidual,
   leftSliceResidual, inverseResidual},

  angles = N[2 Pi Range[0, gridSize - 1]/gridSize, 40];
  fValues = angles + epsilonValue Sin[2 angles];
  fPrimeValues = 1 + 2 epsilonValue Cos[2 angles];
  fSecondValues = -4 epsilonValue Sin[2 angles];
  fThirdValues = -8 epsilonValue Cos[2 angles];
  schwarzianValues = fThirdValues/fPrimeValues -
    3/2 (fSecondValues/fPrimeValues)^2;
  hValues = -cValue/24 (fPrimeValues^2 - 1) -
    cValue/12 schwarzianValues;
  hPrimeValues = N[
    D[-cValue/24 ((1 + 2 epsilonValue Cos[2 t])^2 - 1) -
       cValue/12 ((-8 epsilonValue Cos[2 t])/
          (1 + 2 epsilonValue Cos[2 t]) -
         3/2 ((-4 epsilonValue Sin[2 t])/
             (1 + 2 epsilonValue Cos[2 t]))^2), t] /. t -> angles,
    40];

  lowModes = Range[-1, 1];
  highModes = Join[Range[-cutoff, -2], Range[2, cutoff]];
  eMatrix = Transpose[Outer[Exp[I #1 #2] &, lowModes, angles]];
  zMatrix = Transpose[
    Table[Exp[I mode fValues]/fPrimeValues, {mode, lowModes}]];
  kMatrix = ConjugateTranspose[zMatrix]/gridSize;
  rMatrix = ConjugateTranspose[eMatrix]/gridSize;
  highFourier =
   Transpose[Outer[Exp[I #1 #2] &, highModes, angles]];
  highExtractor = ConjugateTranspose[highFourier]/gridSize;

  differences = Mod[Outer[Subtract, fValues, fValues], 2 Pi];
  rawGreenMatrix = kappaSquared/gridSize
    (vacuumGreen[differences]/Outer[Times, fPrimeValues, fPrimeValues]);

  compatibleSources = highFourier -
    eMatrix . LinearSolve[kMatrix . eMatrix, kMatrix . highFourier];
  rawSolutions = rawGreenMatrix . compatibleSources;
  constrainedSolutions = rawSolutions -
    zMatrix . LinearSolve[rMatrix . zMatrix, rMatrix . rawSolutions];
  greenCoefficientMatrix = highExtractor . constrainedSolutions;

  poissonOperatorMatrix = highExtractor . Transpose@Table[
      With[{mode = highModes[[column]]},
       (((2 Pi/kappaSquared) ((I mode)^3 + I mode) -
            2 I mode hValues - hPrimeValues) Exp[I mode angles])
       ],
      {column, Length[highModes]}];
  directInverse = Inverse[poissonOperatorMatrix];

  relativeError =
   Norm[greenCoefficientMatrix - directInverse, "Frobenius"]/
    Norm[directInverse, "Frobenius"];
  rightCompatibilityResidual = Norm[kMatrix . compatibleSources, "Frobenius"];
  leftSliceResidual = Norm[rMatrix . constrainedSolutions, "Frobenius"];
  inverseResidual = Norm[
    poissonOperatorMatrix . greenCoefficientMatrix -
     IdentityMatrix[Length[highModes]], "Frobenius"];

  <|
   "GridSize" -> gridSize,
   "Cutoff" -> cutoff,
   "Epsilon" -> epsilonValue,
   "MinimumDerivative" -> Min[fPrimeValues],
   "RelativeKernelError" -> relativeError,
   "RightCompatibilityResidual" -> rightCompatibilityResidual,
   "LeftSliceResidual" -> leftSliceResidual,
   "InverseResidual" -> inverseResidual
   |>
  ];

benchmarkScan = numericBenchmark[512, #, 1/10] & /@ {4, 6, 8, 10, 12};
vacuumBenchmark = numericBenchmark[256, 6, 0];

tests = {
   VerificationTest[hillResidual, 0,
    TestID -> "Transported Hill solutions"],
   VerificationTest[conjugationResidual, 0,
    TestID -> "Third-order conjugation identity"],
   VerificationTest[stabilizerResiduals, {0, 0, 0},
    TestID -> "Three transported stabilizers"],
   VerificationTest[vacuumBulkResidual, 0,
    TestID -> "Vacuum Green equation away from diagonal"],
   VerificationTest[vacuumJump, 1,
    TestID -> "Vacuum Green delta-function jump"],
   VerificationTest[vacuumFourierChecks, ConstantArray[0, 17],
    TestID -> "Vacuum Green Fourier coefficients"],
   VerificationTest[vacuumBenchmark["RelativeKernelError"] < 10^-6,
    True, TestID -> "Vacuum fixed-slice kernel"],
   VerificationTest[
    Last[benchmarkScan]["RelativeKernelError"] < 10^-6 &&
     Last[benchmarkScan]["RelativeKernelError"] <
      First[benchmarkScan]["RelativeKernelError"],
    True, TestID -> "Finite-diffeomorphism kernel convergence"],
   VerificationTest[
    Max[Last[benchmarkScan] /@ {"RightCompatibilityResidual",
        "LeftSliceResidual"}] < 10^-25,
    True, TestID -> "Both finite-rank constraints"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "VacuumBenchmark" -> vacuumBenchmark,
   "FiniteDiffeomorphismScan" -> benchmarkScan
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
