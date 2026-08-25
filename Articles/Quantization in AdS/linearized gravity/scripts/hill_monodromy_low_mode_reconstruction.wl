(* ::Package:: *)

(*
  Nonperturbative implicit reconstruction of H[-1], H[0], H[1] from the
  exceptional-orbit Hill monodromy.  Fourier convention:

    H(phi) = Sum[H[n] Exp[I n phi], n in Integers].
*)

ClearAll["Global`*"];

cValue = 100;
kappaSquared = 24 Pi/cValue;

(* ---------- Local implicit-function theorem at the vacuum ---------- *)

yVac[t_] := {{Cos[t/2], 2 Sin[t/2]},
   {-Sin[t/2]/2, Cos[t/2]}};

deltaA[deltaEll_] := {{0, 0}, {deltaEll, 0}};

firstMonodromyVariation[deltaEll_] :=
  -Integrate[
    Inverse[yVac[t]] . deltaA[deltaEll] . yVac[t],
    {t, 0, 2 Pi}, GenerateConditions -> False];

lowDensityVariation =
  h0 + 2 hc Cos[t] - 2 hs Sin[t];
lowEllVariation = kappaSquared lowDensityVariation/(4 Pi);
deltaMonodromy = FullSimplify[firstMonodromyVariation[lowEllVariation]];

constraintVector[matrix_] :=
  {matrix[[1, 2]], matrix[[2, 1]], matrix[[1, 1]] - matrix[[2, 2]]};

lowJacobian = FullSimplify[
   D[constraintVector[deltaMonodromy], {{h0, hc, hs}}]
   ];
lowJacobianDeterminant = FullSimplify[Det[lowJacobian]];

(* ---------- A finite diffeomorphism and its exact orbit density ---------- *)

fExpression[amplitude_] :=
  phi + amplitude (3/25 Sin[2 phi] + 7/100 Cos[3 phi]);

schwarzian[expression_, coordinate_] :=
  D[expression, {coordinate, 3}]/D[expression, coordinate] -
   3/2 (D[expression, {coordinate, 2}]/D[expression, coordinate])^2;

orbitDensity[amplitude_] := Module[{f = fExpression[amplitude]},
  -cValue/24 (D[f, phi]^2 - 1) -
   cValue/12 schwarzian[f, phi]
  ];

fourierCoefficient[expression_, n_Integer] := NIntegrate[
  Evaluate[expression Exp[-I n phi]/(2 Pi)],
  {phi, 0, 2 Pi}, WorkingPrecision -> 50,
  AccuracyGoal -> 36, PrecisionGoal -> 36,
  Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
  ];

Clear[exactLowModes];
exactLowModes[amplitude_] := exactLowModes[amplitude] = Module[
  {density = orbitDensity[amplitude], hZero, hOne},
  hZero = Chop[fourierCoefficient[density, 0], 10^-35];
  hOne = Chop[fourierCoefficient[density, 1], 10^-35];
  <|"H0" -> hZero, "H1" -> hOne, "H-1" -> Conjugate[hOne]|>
  ];

Clear[highDensity];
highDensity[amplitude_] := highDensity[amplitude] = Module[
  {density = orbitDensity[amplitude], low = exactLowModes[amplitude]},
  density - low["H0"] - low["H1"] Exp[I phi] -
   low["H-1"] Exp[-I phi]
  ];

(* ---------- Solve the three monodromy constraints ---------- *)

Clear[monodromyMatrix];
monodromyMatrix[amplitude_?NumericQ, hZero_?NumericQ,
  hCos_?NumericQ, hSin_?NumericQ] := Module[
  {highExpression = highDensity[amplitude], ell, solutions},
  ell[t_?NumericQ] := N[
    -1/4 + kappaSquared/(4 Pi)
      (highExpression /. phi -> t) +
     kappaSquared/(4 Pi)
      (hZero + 2 hCos Cos[t] - 2 hSin Sin[t]),
    45];
  solutions = NDSolveValue[
    {y1''[t] == ell[t] y1[t], y2''[t] == ell[t] y2[t],
     y1[0] == 1, y1'[0] == 0, y2[0] == 0, y2'[0] == 1},
    {y1, y2}, {t, 0, 2 Pi},
    WorkingPrecision -> 32, AccuracyGoal -> 20, PrecisionGoal -> 20,
    MaxSteps -> Infinity
    ];
  Chop[{{solutions[[1]][2 Pi], solutions[[2]][2 Pi]},
    {solutions[[1]]'[2 Pi], solutions[[2]]'[2 Pi]}}, 10^-18]
  ];

monodromyConstraints[amplitude_?NumericQ, hZero_?NumericQ,
  hCos_?NumericQ, hSin_?NumericQ] :=
 constraintVector[monodromyMatrix[amplitude, hZero, hCos, hSin]];

monodromyConstraint1[amplitude_?NumericQ, hZero_?NumericQ,
  hCos_?NumericQ, hSin_?NumericQ] :=
 monodromyConstraints[amplitude, hZero, hCos, hSin][[1]];
monodromyConstraint2[amplitude_?NumericQ, hZero_?NumericQ,
  hCos_?NumericQ, hSin_?NumericQ] :=
 monodromyConstraints[amplitude, hZero, hCos, hSin][[2]];
monodromyConstraint3[amplitude_?NumericQ, hZero_?NumericQ,
  hCos_?NumericQ, hSin_?NumericQ] :=
 monodromyConstraints[amplitude, hZero, hCos, hSin][[3]];

reconstructLowModes[amplitude_?NumericQ] := Module[
  {exact = exactLowModes[amplitude], initialH1, root, reconstructed,
   finalMonodromy},
  initialH1 = exact["H1"];
  root = FindRoot[
    {monodromyConstraint1[amplitude, z0, zc, zs] == 0,
     monodromyConstraint2[amplitude, z0, zc, zs] == 0,
     monodromyConstraint3[amplitude, z0, zc, zs] == 0},
    {{z0, exact["H0"]}, {zc, Re[initialH1]}, {zs, Im[initialH1]}},
    WorkingPrecision -> 28, AccuracyGoal -> 16, PrecisionGoal -> 16];
  reconstructed = <|
    "H0" -> (z0 /. root),
    "H1" -> ((zc + I zs) /. root),
    "H-1" -> ((zc - I zs) /. root)
    |>;
  finalMonodromy = monodromyMatrix[amplitude, reconstructed["H0"],
    Re[reconstructed["H1"]], Im[reconstructed["H1"]]];
  <|
   "Amplitude" -> amplitude,
   "ExactLowModes" -> exact,
   "ReconstructedLowModes" -> reconstructed,
   "LowModeError" -> Max[Abs[Values[reconstructed - exact]]],
   "MonodromyMinusVacuumError" ->
    Norm[finalMonodromy + IdentityMatrix[2], "Frobenius"]
   |>
  ];

nonperturbativeBenchmark = reconstructLowModes[1];

(* ---------- Existing quadratic formula ---------- *)

quadraticLowModes[amplitude_, cutoff_Integer : 36] := Module[
  {density = orbitDensity[amplitude], coefficients, fZero, fOne},
  coefficients = Association@Table[
     n -> Chop[fourierCoefficient[density, n], 10^-35],
     {n, -cutoff, cutoff}];
  fZero = 12/cValue Sum[
     coefficients[n] coefficients[-n]/(n^2 - 1),
     {n, 2, cutoff}];
  fOne = 12/cValue Sum[
     coefficients[n] coefficients[1 - n]/(n (n - 1)),
     {n, 3, cutoff}];
  <|"H0" -> fZero, "H1" -> fOne, "H-1" -> Conjugate[fOne]|>
  ];

perturbativeScan = Table[
   Module[{exact = exactLowModes[amplitude],
     quadratic = quadraticLowModes[amplitude]},
    <|
     "Amplitude" -> amplitude,
     "ExactNorm" -> Max[Abs[Values[exact]]],
     "QuadraticError" -> Max[Abs[Values[exact - quadratic]]],
     "ScaledQuarticError" ->
      Max[Abs[Values[exact - quadratic]]]/amplitude^4
     |>
    ],
   {amplitude, {1/20, 1/10, 1/5, 2/5}}
   ];

tests = {
   VerificationTest[
    FullSimplify[lowJacobianDeterminant],
    kappaSquared^3/2,
    TestID -> "Vacuum monodromy Jacobian determinant"],
   VerificationTest[
    nonperturbativeBenchmark["LowModeError"] < 10^-15,
    True,
    TestID -> "Nonperturbative recovery of all three low modes"],
   VerificationTest[
    nonperturbativeBenchmark["MonodromyMinusVacuumError"] < 10^-15,
    True,
    TestID -> "Exceptional-orbit monodromy is minus identity"],
   VerificationTest[
    perturbativeScan[[1]]["QuadraticError"] <
      perturbativeScan[[-1]]["QuadraticError"] &&
     Max[#["ScaledQuarticError"] & /@ perturbativeScan]/
       Min[#["ScaledQuarticError"] & /@ perturbativeScan] < 1.1,
    True,
    TestID -> "Quadratic formula matches with quartic error on test family"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "VacuumConstraintJacobian" -> lowJacobian,
   "VacuumJacobianDeterminant" -> lowJacobianDeterminant,
   "NonperturbativeBenchmark" -> nonperturbativeBenchmark,
   "PerturbativeScan" -> perturbativeScan
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
