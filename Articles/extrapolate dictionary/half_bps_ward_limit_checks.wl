(* Independent supplement to the analytic Ward boundary-limit proof.
   This finite check is not the distributional proof. Fresh kernel required. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{wr, ih, pts, bd, lim},
  wr = FullSimplify[
    t (BesselI[1, t] BesselK[0, t] + BesselI[0, t] BesselK[1, t]) - 1,
    Assumptions -> t > 0];
  ih = Integrate[t^2 BesselK[2, t]/2, {t, 0, Infinity}];
  pts = N[10^Range[-8, 4, 1/2], 60];
  bd = Max[Table[Sqrt[t] BesselI[0, t] BesselK[0, t], {t, pts}]];
  lim = Series[t BesselI[1, t] BesselK[0, t], {t, 0, 2}];
  <|"WronskianResidual" -> wr, "IntegralH" -> ih,
    "SampleMaxSqrtTH" -> bd, "DiagonalDerivativeSeries" -> lim,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ]
]
