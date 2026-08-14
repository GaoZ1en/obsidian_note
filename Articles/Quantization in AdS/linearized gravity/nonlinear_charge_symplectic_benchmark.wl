(* ::Package:: *)

(*
  Nonlinear benchmark on the exceptional Virasoro orbit.

    f(theta)=theta+epsilon Sin[2 theta]+eta Cos[2 theta]

  The calculation compares the direct Kirillov--Kostant pullback with the
  inverse higher-charge Poisson matrix and with its Neumann expansion.  The
  base point is eta=0 and monotonicity requires |epsilon|<1/2 there.
*)

ClearAll["Global`*"];

cValue = 100;
workingPrecision = 45;

fExpression = theta + epsilon Sin[2 theta] + eta Cos[2 theta];
fPrime = D[fExpression, theta];
schwarzian = D[fExpression, {theta, 3}]/fPrime -
   3/2 (D[fExpression, {theta, 2}]/fPrime)^2;

(* Vacuum-subtracted coadjoint density.  The charge convention uses
   Exp[+ i p theta], matching the H_p convention in the note. *)
chargeDensity = -C/24 (fPrime^2 - 1) - C/12 schwarzian;

numericIntegral[expression_, epsilonValue_?NumericQ] := NIntegrate[
  Evaluate[expression /. {epsilon -> epsilonValue, eta -> 0, C -> cValue}],
  {theta, 0, 2 Pi},
  WorkingPrecision -> workingPrecision,
  AccuracyGoal -> 32,
  PrecisionGoal -> 32,
  Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
  ];

Clear[chargeMode, chargeDerivativeEpsilon, chargeDerivativeEta];
chargeMode[p_Integer, epsilonValue_?NumericQ] :=
 chargeMode[p, epsilonValue] = Chop[
   numericIntegral[chargeDensity Exp[I p theta]/(2 Pi), epsilonValue],
   10^-30];

chargeDerivativeEpsilon[p_Integer, epsilonValue_?NumericQ] :=
 chargeDerivativeEpsilon[p, epsilonValue] = Chop[
   numericIntegral[D[chargeDensity, epsilon] Exp[I p theta]/(2 Pi),
    epsilonValue],
   10^-30];

chargeDerivativeEta[p_Integer, epsilonValue_?NumericQ] :=
 chargeDerivativeEta[p, epsilonValue] = Chop[
   numericIntegral[D[chargeDensity, eta] Exp[I p theta]/(2 Pi),
    epsilonValue],
   10^-30];

directIntegrand =
   (D[D[fExpression, epsilon], theta]
       D[D[fExpression, eta], {theta, 2}] -
      D[D[fExpression, eta], theta]
       D[D[fExpression, epsilon], {theta, 2}])/fPrime^2 -
    (D[fExpression, epsilon] D[D[fExpression, eta], theta] -
      D[fExpression, eta] D[D[fExpression, epsilon], theta]);

Clear[omegaDirect];
omegaDirect[epsilonValue_?NumericQ] :=
 omegaDirect[epsilonValue] = Chop[
   -cValue/(48 Pi) numericIntegral[directIntegrand, epsilonValue],
   10^-30];

modeWindow[cutoff_Integer] := Join[Range[-cutoff, -2], Range[2, cutoff]];
modeDenominator[p_Integer] := p (p^2 - 1);

benchmarkData[cutoff_Integer, epsilonValue_?NumericQ, maxOrder_Integer : 7] :=
 Module[
  {modes = modeWindow[cutoff], poisson, central, fieldPart, vacuumInverse,
   exactInverse, epsilonTangent, etaTangent, omegaFromCharges,
   spectralRadius, approximants, inverseErrors, pullbackErrors,
   inverseResidual},

  poisson = Chop[Table[
      -I ((modes[[i]] - modes[[j]])
          chargeMode[modes[[i]] + modes[[j]], epsilonValue] +
         cValue modeDenominator[modes[[i]]]
          KroneckerDelta[modes[[i]] + modes[[j]], 0]/12),
      {i, Length[modes]}, {j, Length[modes]}],
    10^-28];

  central = Table[
    -I cValue modeDenominator[modes[[i]]]
      KroneckerDelta[modes[[i]] + modes[[j]], 0]/12,
    {i, Length[modes]}, {j, Length[modes]}];

  fieldPart = poisson - central;
  vacuumInverse = Inverse[central];
  exactInverse = Inverse[poisson];
  epsilonTangent = chargeDerivativeEpsilon[#, epsilonValue] & /@ modes;
  etaTangent = chargeDerivativeEta[#, epsilonValue] & /@ modes;
  omegaFromCharges = Chop[epsilonTangent . exactInverse . etaTangent, 10^-25];
  spectralRadius = Max[Abs[Eigenvalues[vacuumInverse . fieldPart]]];
  approximants = Table[
    Sum[If[r == 0, IdentityMatrix[Length[modes]],
        MatrixPower[-vacuumInverse . fieldPart, r]] . vacuumInverse,
     {r, 0, order}],
    {order, 0, maxOrder}];
  inverseErrors =
   Norm[# - exactInverse, "Frobenius"]/Norm[exactInverse, "Frobenius"] & /@
    approximants;
  pullbackErrors =
   Abs[epsilonTangent . # . etaTangent - omegaFromCharges]/
      Abs[omegaFromCharges] & /@ approximants;
  inverseResidual = Norm[poisson . exactInverse - IdentityMatrix[Length[modes]],
    "Frobenius"];

  <|
   "Cutoff" -> cutoff,
   "Epsilon" -> epsilonValue,
   "MinimumDerivative" -> (1 - 2 Abs[epsilonValue]),
   "DirectOmega" -> omegaDirect[epsilonValue],
   "ChargeOmega" -> omegaFromCharges,
   "DirectRelativeError" ->
    Abs[omegaFromCharges - omegaDirect[epsilonValue]]/Abs[omegaDirect[epsilonValue]],
   "SpectralRadius" -> spectralRadius,
   "InverseResidual" -> inverseResidual,
   "NeumannInverseRelativeErrors" -> inverseErrors,
   "NeumannPullbackRelativeErrors" -> pullbackErrors
   |>
  ];

cutoffScan = benchmarkData[#, 1/10, 6] & /@ {4, 6, 8, 10, 12, 14};
amplitudeScan = benchmarkData[12, #, 7] & /@ {1/50, 1/20, 1/10, 1/5, 7/20};
strongAmplitudeCutoffScan = benchmarkData[#, 7/20, 3] & /@ {12, 16, 20};
vacuumCalibration = benchmarkData[4, 0, 2];

tests = {
   VerificationTest[
    vacuumCalibration["DirectRelativeError"] < 10^-25,
    True,
    TestID -> "Vacuum charge pullback matches direct orbit form"],
   VerificationTest[
    cutoffScan[[-1]]["DirectRelativeError"] < 10^-10,
    True,
    TestID -> "Nonlinear pullback converges at epsilon=0.1"],
   VerificationTest[
    Max[#["InverseResidual"] & /@ Join[cutoffScan, amplitudeScan]] < 10^-25,
    True,
    TestID -> "All finite Poisson inverses pass residual check"],
   VerificationTest[
    amplitudeScan[[3]]["SpectralRadius"] < 1 &&
     Last[amplitudeScan[[3]]["NeumannInverseRelativeErrors"]] <
      First[amplitudeScan[[3]]["NeumannInverseRelativeErrors"]],
    True,
    TestID -> "Neumann series converges at epsilon=0.1"],
   VerificationTest[
    amplitudeScan[[-1]]["MinimumDerivative"] > 0,
    True,
    TestID -> "All benchmark diffeomorphisms are monotone"],
   VerificationTest[
    Last[strongAmplitudeCutoffScan]["DirectRelativeError"] <
     First[strongAmplitudeCutoffScan]["DirectRelativeError"],
    True,
    TestID -> "Strong-amplitude charge pullback improves with cutoff"]
   };

report = TestReport[tests];

compactCutoffScan = cutoffScan /. association_Association :>
    KeyTake[association, {"Cutoff", "DirectOmega", "ChargeOmega",
      "DirectRelativeError", "SpectralRadius"}];
compactAmplitudeScan = Map[
   Function[association,
    Append[
     KeyTake[association, {"Epsilon", "MinimumDerivative",
       "DirectRelativeError", "SpectralRadius"}],
     "NeumannInverseErrorsAtOrders0,2,4,7" ->
      association["NeumannInverseRelativeErrors"][[{1, 3, 5, 8}]]
     ]],
   amplitudeScan
   ];
compactStrongAmplitudeCutoffScan =
  strongAmplitudeCutoffScan /. association_Association :>
    KeyTake[association, {"Cutoff", "DirectRelativeError", "SpectralRadius"}];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "CutoffScanAtEpsilon0.1" -> compactCutoffScan,
   "AmplitudeScanAtCutoff12" -> compactAmplitudeScan,
   "CutoffScanAtEpsilon0.35" -> compactStrongAmplitudeCutoffScan
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
