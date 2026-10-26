(* Self-contained Wolfram Language checks; Wolfram Engine 14.3.
   Run: wolframscript -file alternative_checks.wl
   Analytic proofs and conventions: alternative_quantization.md. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  assumptions = l > 0 && z > 0 && k > 0 && 0 < nu < 1 && Element[d, Reals];
  dm = d/2 - nu; dp = d/2 + nu; c = 2 nu/l;
  ph = (z/l)^dm a + (z/l)^dp b;
  dph = (z/l)^dm da + (z/l)^dp db;
  s = Gamma[1 - nu]/Gamma[1 + nu] (k l/2)^(2 nu);
  cp = l^(1 + 2 nu) Gamma[-nu] k^(2 nu)/(2^(2 nu + 1) Gamma[1 + nu]);
  cm = l^(1 - 2 nu) 2^(2 nu - 1) Gamma[nu] k^(-2 nu)/Gamma[1 - nu];
  checks = <|
    "renormalized variation residual" -> FullSimplify[
      (z/l)^(1 - d) (-D[ph, z] + dm/z ph) dph + c b (da + (z/l)^(2 nu) db), assumptions],
    "Wronskian residual" -> FullSimplify[
      BesselI[-nu, k z] D[BesselK[nu, k z], z] - D[BesselI[-nu, k z], z] BesselK[nu, k z] + 1/z, assumptions],
    "Legendre normalization residual" -> FullSimplify[cp cm + 1/c^2, assumptions],
    "mixed normalization residual" -> FullSimplify[cm s - 1/c, assumptions],
    "half-order covariance residual" -> FullSimplify[
      z BesselI[-1/2, k z] BesselK[1/2, k z] - (1 + Exp[-2 k z])/(2 k), k > 0 && z > 0],
    "weighted action density residual" -> FullSimplify[
      (z/l)^(1 - d) (D[(z/l)^dm Q[z], z]^2 + (dm (dm - d)/z^2) ((z/l)^dm Q[z])^2)
      - (z/l)^(1 - 2 nu) Q'[z]^2
      - D[dm/l (z/l)^(-2 nu) Q[z]^2, z], assumptions],
    "half-order Fourier transform residual" -> FullSimplify[
      Integrate[Exp[-aa k] Sin[k RR], {k, 0, Infinity}, Assumptions -> aa > 0 && RR > 0]/(2 Pi^2 RR)
      - 1/(2 Pi^2 (RR^2 + aa^2)), aa > 0 && RR > 0],
    "Gaussian source integral residual" -> FullSimplify[
      Integrate[k Exp[-L^2 k^2 - 2 z k], {k, 0, Infinity}, Assumptions -> L > 0 && z > 0]
       - (1/(2 L^2) - Sqrt[Pi] z Exp[z^2/L^2] Erfc[z/L]/(2 L^3)), L > 0 && z > 0]
  |>;
  transfer[n_, t_] := 2^(1 - n) t^n BesselK[n, t]/Gamma[n];
  sn[n_, kk_, ll_] := Gamma[1 - n]/Gamma[1 + n] (kk ll/2)^(2 n);
  cov[n_, kk_, ll_, ff_] := ll/(2 n (ff + sn[n, kk, ll]));
  rows = Table[Module[{nn = N[n, 60], zz = N[zz0, 60], kk = N[7/5, 60], ll = N[3/2, 60], ff = N[2/7, 60], q, direct, split},
    q = ff/sn[nn, kk, ll];
    direct = ll^(1 - 2 nn) zz^(2 nn) (BesselI[-nn, kk zz] + q BesselI[nn, kk zz]) BesselK[nn, kk zz]/(1 + q);
    split = ll^(1 - 2 nn) zz^(2 nn) BesselI[nn, kk zz] BesselK[nn, kk zz] + transfer[nn, kk zz]^2 cov[nn, kk, ll, ff];
    {n, zz0, N[Abs[direct - split], 6], N[direct/cov[nn, kk, ll, ff] - 1, 10]}
  ], {n, {1/5, 1/2, 4/5}}, {zz0, {1/10, 1/1000, 1/1000000}}];
  gaussianRows = Table[Module[{zz = N[zz0, 50], integral, exact},
    integral = NIntegrate[k Exp[-k^2] (1 + Exp[-2 k zz])/(8 Pi^2), {k, 0, Infinity}, WorkingPrecision -> 40, AccuracyGoal -> 25];
    exact = (1 - Sqrt[Pi] zz Exp[zz^2] Erfc[zz]/2)/(8 Pi^2);
    {zz0, N[integral, 14], N[Abs[integral - exact], 6]}
  ], {zz0, {1, 1/10, 1/100}}];
  <|"SymbolicResiduals" -> checks,
    "AllSymbolicZero" -> And @@ (TrueQ[# == 0] & /@ Values[checks]),
    "MixedRows_nu_z_absoluteResidual_relativeBoundaryError" -> rows,
    "GaussianRows_z_W_absoluteResidual" -> gaussianRows,
    "GaussianBoundaryValue_L1" -> N[1/(8 Pi^2), 14],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Print[ToString[report, InputForm, PageWidth -> 120]];
