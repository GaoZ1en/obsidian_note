(* Exact checks for the regulator/Gram finite-part report. No numerical quadrature. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  lam = 4 (c^2 - x y); f = lam^(-1/2);
  (* Hessian coefficients in pp, pq+qp, qq, eta order. *)
  hessian = {D[f, {c, 2}], 2 D[f, c, y], 4 D[f, {y, 2}], -2 D[f, y]};
  num = {(2 c^2 + x y)/3, -x c, x^2, -x (c^2 - x y)/3};
  hcheck = FullSimplify[hessian - 48 num/lam^(5/2),
    Assumptions -> x > 0 && y > 0 && c > Sqrt[x y]];
  sfuture = 6 u^2 (a-u)^2 + r^2 (4 a^2 - 6 (u^2 + (a-u)^2)) + 6 r^4;
  scheck = Expand[sfuture - (4 a^2 r^2 + 6 (u^2-r^2) ((a-u)^2-r^2))];
  radial = Integrate[r sfuture, r];
  moment = FullSimplify[Pi/(60 a) 2 Integrate[(radial /. r -> u) - (radial /. r -> 0), {u, 0, a/2}], Assumptions -> a > 0];
  momentcheck = FullSimplify[moment - Pi a^6/3360];
  (* External imaginary coordinate shifts versus real-time Abel transform. *)
  multiplier = FullSimplify[Exp[-I ep (tx-I d1)+I eq (ty+I d2)]/Exp[-I ep tx+I eq ty]];
  oscillator = Integrate[-Exp[(I om-eps) time] Sin[omega time]/omega,
    {time,0,Infinity}, Assumptions -> eps>0 && omega>0 && Element[om,Reals]];
  oscillatorcheck = FullSimplify[oscillator - 1/((om+I eps)^2-omega^2),
    Assumptions -> eps>0 && omega>0 && Element[om,Reals]];
  weightcheck = Expand[(lam + 6 y (x+y-2c)) /. {y -> t^2 x, c -> t x}] - 6 t^2 (1-t)^2 x^2;
  <|"HessianResiduals" -> hcheck, "FutureRestWeightResidual" -> scheck,
    "QuadraticTTMoment" -> moment, "MomentResidual" -> momentcheck,
    "ExternalMultiplier" -> multiplier, "AbelOscillatorResidual" -> oscillatorcheck,
    "CollinearWeightResidual" -> Expand[weightcheck],
    "Messages" -> (ToString[#, InputForm]& /@ $MessageList)|>
];
Print[ToString[report, InputForm, PageWidth -> 100]];
