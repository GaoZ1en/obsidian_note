(* ::Package:: *)

(*
  Liouville measure in higher-charge coordinates and the projected
  determinant of the Virasoro Poisson operator.  The thermal zero-point
  determinant is kept separate from the static phase-space Pfaffian.
*)

ClearAll["Global`*"];

modeDenominator[p_] := p (p^2 - 1);
modeWindow[cutoff_Integer] := Join[Range[-cutoff, -2], Range[2, cutoff]];

centralMatrix[cutoff_Integer, centralCharge_] := Module[
  {modes = modeWindow[cutoff]},
  Table[
   -I centralCharge modeDenominator[modes[[i]]]
     KroneckerDelta[modes[[i]] + modes[[j]], 0]/12,
   {i, Length[modes]}, {j, Length[modes]}]
  ];

linearModeMatrix[cutoff_Integer, chargeMode_Integer] := Module[
  {modes = modeWindow[cutoff]},
  Table[
   -I (modes[[i]] - modes[[j]])
    KroneckerDelta[modes[[i]] + modes[[j]], chargeMode],
   {i, Length[modes]}, {j, Length[modes]}]
  ];

firstLogDetVariation[cutoff_Integer, chargeMode_Integer] := Module[
  {inverse = Inverse[centralMatrix[cutoff, cQ]]},
  FullSimplify[Tr[inverse . linearModeMatrix[cutoff, chargeMode]]]
  ];

quadraticLogDetCoefficient[cutoff_Integer, chargeMode_Integer] := Module[
  {modes = modeWindow[cutoff], diagonalContribution, pathContribution},
  diagonalContribution = 576/(chargeMode^2 - 1)
    Sum[1/(p^2 - 1), {p, 2, cutoff}];
  pathContribution = 144 Total@Table[
      If[MemberQ[modes, p + chargeMode],
       (2 p + chargeMode)^2/
        (modeDenominator[p] modeDenominator[p + chargeMode]),
       0],
      {p, modes}];
  FullSimplify[diagonalContribution - pathContribution]
  ];

matrixQuadraticLogDetCoefficient[cutoff_Integer, chargeMode_Integer] :=
 Module[{inverse = Inverse[centralMatrix[cutoff, cQ]], lPositive,
   lNegative, lZero, fZeroCoefficient},
  lPositive = linearModeMatrix[cutoff, chargeMode];
  lNegative = linearModeMatrix[cutoff, -chargeMode];
  lZero = linearModeMatrix[cutoff, 0];
  fZeroCoefficient = 12/(cQ (chargeMode^2 - 1));
  FullSimplify[
   cQ^2 (fZeroCoefficient Tr[inverse . lZero] -
      Tr[inverse . lPositive . inverse . lNegative])]
  ];

infiniteQuadraticCoefficient[chargeMode_Integer?Positive] := Module[
  {summand, pathSum},
  summand[p_] := (2 p + chargeMode)^2/
    (modeDenominator[p] modeDenominator[p + chargeMode]);
  pathSum = FullSimplify[
    2 Sum[summand[p], {p, 2, Infinity}] +
     If[chargeMode >= 4,
      Sum[summand[p], {p, 2 - chargeMode, -2}], 0]];
  FullSimplify[
   432/(chargeMode^2 - 1) - 144 pathSum]
  ];

quadraticCoefficients = Association@Table[
    ToString[mode] -> infiniteQuadraticCoefficient[mode],
    {mode, 2, 4}];

cutoffConvergence = Association@Table[
    ToString[cutoff] -> quadraticLogDetCoefficient[cutoff, 2],
    {cutoff, {4, 8, 16, 32, 64}}];

(* Vacuum determinant, one factor from each conjugate pair. *)
vacuumPairEigenvalue[n_Integer?Positive] :=
  (cQ n (n^2 - 1)/12)^2;

vacuumLiouvillePair[n_Integer?Positive] :=
  12/(cQ n (n^2 - 1));

(* The thermal first-order path integral supplies the oscillator determinant.
   Its zero-point exponent, not the static Pfaffian by itself, fixes Delta c. *)
zetaModeSum = FullSimplify[Zeta[-1] - 1];
thermalZeroPointExponent = FullSimplify[zetaModeSum/2];
centralChargeShift = FullSimplify[-24 thermalZeroPointExponent];

tests = {
   VerificationTest[
    And @@ Table[firstLogDetVariation[6, mode] == 0,
      {mode, {-3, -2, 2, 3}}],
    True,
    TestID -> "No linear determinant variation along higher charges"],
   VerificationTest[
    Values[quadraticCoefficients],
    {104, 26, 188/25},
    TestID -> "Infinite quadratic determinant coefficients"],
   VerificationTest[
    matrixQuadraticLogDetCoefficient[6, 2],
    quadraticLogDetCoefficient[6, 2],
    TestID -> "Trace expansion agrees with finite matrix calculation"],
   VerificationTest[
    Abs[N[Last[Values[cutoffConvergence]] - 104]] < 4,
    True,
    TestID -> "Finite projected determinant converges to r=2 coefficient"],
   VerificationTest[
    FullSimplify[
     Sqrt[vacuumPairEigenvalue[5]] vacuumLiouvillePair[5],
     Assumptions -> cQ > 0],
    1,
    TestID -> "Vacuum Pfaffian is inverse square root determinant"],
   VerificationTest[zetaModeSum, -13/12,
    TestID -> "Zeta-regularized higher-mode sum"],
   VerificationTest[thermalZeroPointExponent, -13/24,
    TestID -> "Chiral thermal zero-point exponent"],
   VerificationTest[centralChargeShift, 13,
    TestID -> "Central-charge shift from thermal determinant"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "QuadraticLogDetCoefficients" -> quadraticCoefficients,
   "Mode2CutoffConvergence" -> cutoffConvergence,
   "ZetaModeSum" -> zetaModeSum,
   "ThermalZeroPointExponent" -> thermalZeroPointExponent,
   "CentralChargeShift" -> centralChargeShift
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
