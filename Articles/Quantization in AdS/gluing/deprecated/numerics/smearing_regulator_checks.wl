(* ::Package:: *)

(* ===================================================================== *)
(*  Centered smeared-interface observable checks                         *)
(*                                                                       *)
(*  Model and notation: ../formalism.md and                              *)
(*  ../smeared-interface-regulator.md.                                   *)
(*  Numerical benchmark: L = m = 1.                                     *)
(* ===================================================================== *)

ClearAll["Global`*"];

TentHat[z_] := Sinc[z/2]^2;

kernelMass = 2 Integrate[1 - s, {s, 0, 1}];
kernelNormSquared = 2 Integrate[(1 - s)^2, {s, 0, 1}];
fourierResidual = FullSimplify[
  2 Integrate[(1 - s) Cos[z s], {s, 0, 1}] -
    2 (1 - Cos[z])/z^2,
  Assumptions -> Element[z, Reals] && z != 0
];

momentumIntegralExact = 4 Log[2];
momentumCutoff = 2000;
momentumIntegralPartial = NIntegrate[
  u TentHat[u]^2,
  {u, 0, 10, 50, 100, 250, 500, 1000, momentumCutoff},
  WorkingPrecision -> 40,
  AccuracyGoal -> 18,
  PrecisionGoal -> 18,
  MaxRecursion -> 30,
  Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}
];
momentumTailBound = 8/momentumCutoff^2;
momentumTarget = momentumIntegralExact/
  (2 Pi kernelNormSquared^2);

SmearingData[epsilon_, ell_: 1, mass_: 1, uMax_: 200] := Module[
  {
    pMax, momenta, frequencies, filters, normSquared, qVariance,
    rawMomentumVariance, pVariance, commutatorApproximation
  },
  pMax = Ceiling[uMax ell/(Pi epsilon)];
  momenta = Table[(p + 1/2) Pi/ell, {p, 0, pMax}];
  frequencies = Sqrt[mass^2 + momenta^2];
  filters = TentHat /@ (epsilon momenta);
  normSquared = kernelNormSquared/epsilon;
  qVariance = Total[filters^2/(2 ell frequencies)];
  rawMomentumVariance = Total[filters^2 frequencies/(2 ell)];
  pVariance = rawMomentumVariance/normSquared^2;
  commutatorApproximation = Total[filters^2/ell]/normSquared;
  <|
    "Epsilon" -> N[epsilon, 16],
    "ModeCount" -> Length[momenta],
    "QVariance" -> N[qVariance, 16],
    "RenormalizedQVariance" -> N[
      qVariance - Log[ell/epsilon]/(2 Pi),
      16
    ],
    "PVariance" -> N[pVariance, 16],
    "PTargetResidual" -> N[pVariance - momentumTarget, 16],
    "SymplecticEigenvalue" -> N[Sqrt[qVariance pVariance], 16],
    "CCRResidual" -> N[Abs[commutatorApproximation - 1], 16],
    "MassNormalizedQVariance" -> N[
      qVariance/normSquared,
      16
    ],
    "MassNormalizedPVariance" -> N[
      normSquared pVariance,
      16
    ]
  |>
];

testedEpsilons = 1/{4, 8, 16, 32, 64, 128};
rows = SmearingData /@ testedEpsilons;
doublingSlopes = Table[
  <|
    "Epsilon" -> rows[[j]]["Epsilon"],
    "Slope" -> N[
      (rows[[j]]["QVariance"] - rows[[j - 1]]["QVariance"])/Log[2],
      16
    ]
  |>,
  {j, 2, Length[rows]}
];

allChecksPassed = And[
  kernelMass == 1,
  kernelNormSquared == 2/3,
  fourierResidual == 0,
  0 < N[momentumIntegralExact - momentumIntegralPartial, 20] <
    N[momentumTailBound, 20],
  Max[(#1["CCRResidual"] &) /@ rows] < 10^-5,
  Abs[Last[rows]["PTargetResidual"]] < 5 10^-3,
  Abs[Last[doublingSlopes]["Slope"] - 1/(2 Pi)] < 5 10^-3
];

report = <|
  "KernelMass" -> kernelMass,
  "KernelNormSquared" -> kernelNormSquared,
  "FourierResidual" -> fourierResidual,
  "MomentumIntegralPartial" -> N[momentumIntegralPartial, 16],
  "MomentumIntegralExact" -> N[momentumIntegralExact, 16],
  "MomentumTailBound" -> N[momentumTailBound, 16],
  "CanonicalMomentumVarianceTarget" -> N[momentumTarget, 16],
  "Rows" -> rows,
  "DoublingSlopes" -> doublingSlopes,
  "LogarithmicTarget" -> N[1/(2 Pi), 16],
  "AllChecksPassed" -> allChecksPassed
|>;

Print[InputForm[report]];

If[TrueQ[allChecksPassed], Exit[0], Exit[1]];
