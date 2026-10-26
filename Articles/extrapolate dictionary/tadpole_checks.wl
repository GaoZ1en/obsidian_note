(* One-loop tadpole in EAdS4, standard conformal scalar.
   Fresh kernel: wolframscript -file tadpole_checks.wl *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  g = 1/(4 Pi^2 l^2 Sinh[rho/l]^2);
  uHad = ((rho/l)/Sinh[rho/l])^(3/2);
  hConf = 1/(8 Pi^2 l^2 (Cosh[rho/l] - 1));
  finiteParts = <|
    "geodesic-leading" -> Limit[g - 1/(4 Pi^2 rho^2), rho -> 0, Assumptions -> l > 0],
    "Hadamard-U" -> Limit[g - uHad/(4 Pi^2 rho^2), rho -> 0, Assumptions -> l > 0],
    "conformal-direct" -> Limit[g - hConf, rho -> 0, Assumptions -> l > 0]|>;
  cnu = l^(1 + 2 nu) Gamma[-nu] k^(2 nu)/(2^(2 nu + 1) Gamma[nu + 1]);
  cp = l^(1 + 2 nu) Gamma[3/2 + nu]/(2 Pi^(3/2) Gamma[1 + nu]) R^(-3 - 2 nu);
  Qfun[t_] := (Exp[-2 t] SinhIntegral[2 t] - 2 Sinh[t]^2 ExpIntegralE[1, 2 t])/t;
  aa = 2 EulerGamma + 2 Log[2] - 4;
  symbolic = <|
    "geodesic finite part" -> Simplify[finiteParts["geodesic-leading"] + 1/(12 Pi^2 l^2)],
    "Hadamard finite part" -> Simplify[finiteParts["Hadamard-U"] + 1/(48 Pi^2 l^2)],
    "conformal finite part" -> Simplify[finiteParts["conformal-direct"] + 1/(16 Pi^2 l^2)],
    "momentum logarithmic coefficient" -> FullSimplify[(D[cnu, nu] /. nu -> 1/2) + l^2 k (2 Log[k l] + aa), l > 0 && k > 0],
    "position logarithmic coefficient" -> FullSimplify[(D[cp, nu] /. nu -> 1/2) - l^2/(Pi^2 R^4) (2 Log[l/R] + 2 Log[2] - 1), l > 0 && R > 0],
    "small-argument mass insertion" -> FullSimplify[Normal[Series[Qfun[t], {t, 0, 1}]] - (2 + t (2 Log[t] + aa)), t > 0],
    "inner radial primitive" -> FullSimplify[D[-Sinh[t v]^2/v + t SinhIntegral[2 t v], v] - Sinh[t v]^2/v^2, t > 0 && v > 0],
    "outer radial primitive" -> FullSimplify[D[-Exp[-2 t v]/v + 2 t ExpIntegralE[1, 2 t v], v] - Exp[-2 t v]/v^2, t > 0 && v > 0],
    "physical local subtraction expansion" -> FullSimplify[Normal[Series[l^(2 + 2 e) z^(-1 - 2 e)/(1 + 2 e), {e, 0, 1}]] - l^2/z (1 + e (2 Log[l/z] - 2)), l > 0 && z > 0],
    "schemes at fixed physical mass" -> Simplify[(lam/2 (-1/(16 Pi^2 l^2)) + lam/(48 Pi^2 l^2)) - lam/2 (-1/(48 Pi^2 l^2))]
  |>;
  rows = Table[Module[{tt = N[t0, 80], hh = N[10^-12, 80], deriv, closed},
    deriv = (BesselI[1/2 + hh, tt] BesselK[1/2 + hh, tt] - BesselI[1/2 - hh, tt] BesselK[1/2 - hh, tt])/(2 hh);
    closed = -Qfun[tt];
    {t0, N[closed, 16], N[Abs[deriv - closed], 6]}
  ], {t0, {1/100, 1/10, 1, 5}}];
  conv = Table[Module[{zz = N[z0, 60], kk = N[7/5, 60], ll = N[3/2, 60], B0, derivative, local, ren, target},
    B0 = (1 - Exp[-2 kk zz])/(2 kk zz);
    derivative = ll^2/zz (-Qfun[kk zz] + 2 Log[ll/zz] B0);
    local = ll^2/zz (2 Log[ll/zz] - 2);
    ren = derivative - local;
    target = -ll^2 kk (2 Log[kk ll] + aa);
    {z0, N[ren, 16], N[target, 16], N[ren - target, 8]}
  ], {z0, {1/10, 1/1000, 1/1000000}}];
  <|"FiniteParts" -> finiteParts,
    "SymbolicResiduals" -> symbolic,
    "AllSymbolicZero" -> And @@ (TrueQ[# == 0] & /@ Values[symbolic]),
    "Rows_t_orderDerivative_finiteDifferenceError" -> rows,
    "Rows_z_renormalizedMassDerivative_boundaryTarget_error" -> conv,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Print[ToString[report, InputForm, PageWidth -> 120]];
