ClearAll[d, a, s, n, z, k, eps, w, bubble, closed, qint, qform, report];
report = Block[{$Messages = {}, $MessageList = {}},
  w[x_, r_] := Exp[-(x - 1) r]/(4 Pi Sinh[r]);
  bubble = Sum[1/((2 a + d) (2 a + 3 d - 2)), {a, 0, Infinity}, Assumptions -> d > 1];
  closed = (PolyGamma[0, 3 d/2 - 1] - PolyGamma[0, d/2])/(4 (d - 1));
  qint = Table[(-1)^n/(2 Sqrt[2 Pi]) Integrate[(1 - z)^(3 d/2 - 2) JacobiP[n, 0, d - 1, 1 - 2 z], {z, 0, 1}, Assumptions -> d > 1], {n, 0, 4}];
  qform = Table[Pochhammer[1 - d/2, n]/(Sqrt[2 Pi] (3 d - 2) Pochhammer[3 d/2, n]), {n, 0, 4}];
  <|
   "WEquation" -> FullSimplify[D[w[d, s], {s, 2}] + 2 Coth[s] D[w[d, s], s] - d (d - 2) w[d, s], Assumptions -> s > 0],
   "BubbleSum" -> bubble,
   "BubbleResidual" -> FullSimplify[bubble - closed, Assumptions -> d > 1],
   "CubicGroundOverlapsResidual" -> FullSimplify[qint - qform, Assumptions -> d > 1],
   "Delta2MassOverLambdaSquared" -> FullSimplify[-closed/(4 Pi) /. d -> 2],
   "Delta2GapOverLambdaSquared" -> FullSimplify[-closed/(8 Pi (d - 1)) /. d -> 2],
   "Delta2DirectOFPTGround" -> Sum[-1/(16 Pi (k + 2) (k + 3)), {k, 0, Infinity}],
   "Delta2DirectOFPT10" -> Sum[-(2 k + 5)/(24 Pi (k + 2) (k + 3) (k + 4)), {k, 0, Infinity}],
   (* k=0 in the following sum is a decoupled exact resonance, NOT a term obtained by cancelling 0/0. *)
   "Delta2DirectOFPT11" -> Sum[-(22 + 34 k + 9 k^2)/(80 Pi (k + 1) (k + 2) (k + 3) (k + 4)), {k, 1, Infinity}],
   "Delta2DirectOFPT20" -> Sum[-(25 + 8 k)/(80 Pi (k + 2) (k + 4) (k + 5)), {k, 0, Infinity}],
   "Delta2PairCoefficient" -> FullSimplify[(1/(Sqrt[2 Pi] (3 d - 2)))^2 (1/(3 d) - 2/d) /. d -> 2],
   "BFMassLimitOverLambdaSquared" -> Limit[-closed/(4 Pi), d -> 1, Direction -> "FromAbove"],
   "FlatLimitCoefficient" -> Limit[-d closed/(4 Pi), d -> Infinity],
   "Delta2ResidueDerivativeSum" -> Sum[1/(16 (a + 1)^2 (a + 2)^2), {a, 0, Infinity}],
   "VacuumDelta2Integral" -> Integrate[Exp[-3 s]/Sinh[s], {s, eps, Infinity}, Assumptions -> eps > 0],
   "VacuumDelta2Series" -> Series[-Exp[-2 eps] - Log[1 - Exp[-2 eps]], {eps, 0, 1}],
   "VacuumFinitePartNumericalResidual" -> Table[
      With[{dd = val, ee = 10^-8},
       NIntegrate[Exp[-3 (dd - 1) s]/Sinh[s], {s, ee, Infinity}, WorkingPrecision -> 45, AccuracyGoal -> 30, PrecisionGoal -> 30]
       - N[-Log[2 ee] - EulerGamma - PolyGamma[0, (3 dd - 2)/2] + 3 (dd - 1) ee, 40]],
      {val, {6/5, 3/2, 2, 37/10}}],
   "VacuumSpectralPartialFractionResidual" -> Together[(a + 1)/((3 d + 2 a) (3 d + 2 a - 2)) - ((2 - 3 d/2)/(a + 3 d/2 - 1) + (3 d/2 - 1)/(a + 3 d/2))/4],
   "FixedGapResolventResidual" -> Together[1/((x + m)^2 (x + M)) - 1/((M - m) (x + m)^2) + (1/(x + m) - 1/(x + M))/(M - m)^2],
   "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>
];
Export["/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-renormalization/wolfram_results.txt", ToString[report, InputForm, PageWidth -> 100], "Text"];
report
