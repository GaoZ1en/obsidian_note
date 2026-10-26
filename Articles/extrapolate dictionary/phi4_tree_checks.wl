(* Tree-level phi^4 extrapolation: all kernels strip only the momentum delta.
   Fresh Wolfram kernel. Run: wolframscript -file phi4_tree_checks.wl *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  ks = {k1, k2, k3, k4}; total = Total[ks];
  sincH[t_] := If[TrueQ[t == 0], 1, Sinh[t]/t];
  assumptions = And @@ Join[Thread[ks > 0], {z > 0, l > 0, u > 0}];
  (* Independent finite polynomial expansion through z^2. *)
  upperSeries = Normal[Series[Exp[-total z] Times @@ (Normal[Series[Sinh[# z]/(# z), {z, 0, 2}]] & /@ ks)/total, {z, 0, 2}]];
  lowerSeries = Normal[Series[z Exp[-total z] Integrate[Times @@ (v (1 + (# z v)^2/6) & /@ ks), {v, 0, 1}], {z, 0, 2}]];
  q = (d - 1)/2;
  conformalDensity = (l/u)^(d - 1) (D[(u/l)^q X[u], u]^2 - (d^2 - 1)/(4 u^2) ((u/l)^q X[u])^2);
  symbolic = <|
    "conformal action density" -> FullSimplify[conformalDensity - X'[u]^2 - D[q/u X[u]^2, u], l > 0 && u > 0 && Element[d, Reals]],
    "half-order Green function" -> FullSimplify[(z u)^(3/2)/l^2 BesselI[1/2, k z] BesselK[1/2, k u] - z u/l^2 Exp[-k u] Sinh[k z]/k, z > 0 && u > z && k > 0 && l > 0],
    "AdS4 small-radius expansion" -> FullSimplify[upperSeries + lowerSeries - (1/total - 4 z/5 + z^2 (3 total/10 + Total[ks^2]/(6 total))), assumptions],
    "AdS3 local constant" -> Integrate[v^3, {v, 0, 1}] - 1/4,
    "AdS3 E1 constant" -> Limit[ExpIntegralE[1, t] + Log[t], t -> 0, Direction -> "FromAbove"] + EulerGamma,
    "AdS4 invariant image kernel" -> FullSimplify[w^2 Hypergeometric2F1[1, 3/2, 3/2, w^2]/(4 Pi^2) - w^2/(4 Pi^2 (1 - w^2)), 0 < w < 1],
    "AdS2 invariant logarithmic kernel" -> FullSimplify[FunctionExpand[w Hypergeometric2F1[1/2, 1, 3/2, w^2]/(2 Pi)] - Log[(1 + w)/(1 - w)]/(4 Pi), 0 < w < 1],
    "local singularity normalization" -> FullSimplify[Gamma[de] Gamma[(d - 1)/2]/(2^(de + 1) Pi^(d/2) Gamma[de/2] Gamma[(de + 1)/2]) - Gamma[(d - 1)/2]/(4 Pi^((d + 1)/2)), de > 0 && d > 1],
    "contact-parameter normalization" -> FullSimplify[(Gamma[de]/(2 Pi^(d/2) Gamma[nu + 1]))^4 Pi^(d/2) Gamma[2 de - d/2] Gamma[2 de]/(2 Gamma[de]^4) - Gamma[2 de - d/2] Gamma[2 de]/(32 Pi^(3 d/2) Gamma[nu + 1]^4)]
  |>;
  momenta = N[{1, 2, 3/2, 5/2}, 60];
  S = Total[momenta];
  f4[zz_] := zz Exp[-S zz] NIntegrate[Times @@ (v sincH[# zz v] & /@ momenta), {v, 0, 1}, WorkingPrecision -> 50, AccuracyGoal -> 35] + Exp[-S zz] Times @@ (sincH[# zz] & /@ momenta)/S;
  f4sum[zz_] := Exp[-S zz]/(zz^4 Times @@ momenta) (Total[Table[Times @@ sig If[TrueQ[sig.momenta == 0], zz, (Exp[(sig.momenta) zz] - 1)/(sig.momenta)], {sig, Tuples[{-1, 1}, 4]}]]/16 + Times @@ (Sinh[# zz] & /@ momenta)/S);
  f3[zz_] := Exp[-S zz] NIntegrate[v^3 Times @@ (sincH[# zz v] & /@ momenta), {v, 0, 1}, WorkingPrecision -> 50, AccuracyGoal -> 35] + Times @@ (sincH[# zz] & /@ momenta) ExpIntegralE[1, S zz];
  data = Table[Module[{zz = N[z0, 60], a4, a3, sub},
    a4 = f4[zz]; a3 = f3[zz]; sub = -Log[zz] - EulerGamma + 1/4;
    {z0, N[a4, 14], N[Abs[a4 - f4sum[zz]], 6], N[(a4 - 1/S)/zz, 12], N[a3 - sub, 14], N[(a3 - sub + Log[S])/zz, 12]}
  ], {z0, {1/10, 1/100, 1/1000, 1/10000}}];
  <|"SymbolicResiduals" -> symbolic,
    "AllSymbolicZero" -> And @@ (TrueQ[# == 0] & /@ Values[symbolic]),
    "Magnitudes" -> momenta,
    "Rows_z_F4_closedResidual_F4errorOverZ_F3ren_F3errorOverZ" -> data,
    "ExpectedLimits" -> <|"F4" -> N[1/S, 14], "F4linear" -> -4/5, "F3ren_mu1" -> N[-Log[S], 14], "F3linear" -> 3 S/4|>,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Print[ToString[report, InputForm, PageWidth -> 120]];
