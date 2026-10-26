(* Conformal AdS4 phi^4: two-vertex trees and thin-slab source matching.
   Fresh Wolfram kernel; wolframscript -file multivertex_checks.wl *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  assumptions = s > 0 && t > 0 && q > 0 && q != t && u > 0;
  laplaceLeg = (Exp[-t u] - Exp[-q u])/(q^2 - t^2);
  J = 1/((s + t) (s + q) (t + q));
  radialIntegrated = (1/(s + t) - 1/(s + q))/(q^2 - t^2);
  (* Six generic external magnitudes, separated into triples. *)
  ks = {k1, k2, k3, k4, k5, k6}; ss = Total[ks[[1 ;; 3]]]; tt = Total[ks[[4 ;; 6]]];
  BB = Times @@ (1 - # z + 2 (# z)^2/3 & /@ ks);
  outer = Normal[Series[BB (1/(ss + tt) + z (1 - q z))/((ss + q) (tt + q)), {z, 0, 2}]];
  mixed = z^2/5 (1/(ss + q) + 1/(tt + q));
  expected = 1/((ss + tt) (ss + q) (tt + q)) + z^2 (Total[ks^2]/(6 (ss + tt) (ss + q) (tt + q)) - 3/10 (1/(ss + q) + 1/(tt + q)));
  (* Inner scaled classical profile with endpoint value a, treating spatial Laplacian Da as a coefficient. *)
  inner[v_] := v a + z^2 (-Da (v^3 - v)/6 + lam a^3 (v^5 - v)/120);
  symbolic = <|
    "Laplace-transformed internal line ODE" -> FullSimplify[-D[laplaceLeg, {u, 2}] + q^2 laplaceLeg - Exp[-t u], assumptions],
    "boundary exchange integral" -> FullSimplify[radialIntegrated - J, assumptions],
    "sixpoint expansion" -> FullSimplify[outer + mixed - expected],
    "slab endpoint" -> Simplify[{inner[0], inner[1] - a}],
    "slab normal derivative" -> Simplify[(D[inner[v], v] /. v -> 1) - a - z^2 (-Da/3 + lam a^3/30)],
    "cubic source coefficient" -> (-1/12 + 1/30) + 1/20,
    "sixpoint channel count" -> 6! 4^2/(2 (4!)^2) - Binomial[6, 3]/2,
    "tree functional coefficient" -> 4^2/(2 (4!)^2) - 1/72,
    "nonlinear source-map coefficient" -> (1/20)/6 - (2 (3/10))/72,
    "uniform radial majorant" -> FullSimplify[Integrate[(a - r + 1/s) (a - r + 1/t), {r, 0, a}] + 1/(s t (s + t)) - (a^3/3 + a^2/2 (1/s + 1/t) + a/(s t) + 1/(s t (s + t))), a > 0 && s > 0 && t > 0],
    "nonlinear jump through cubic radius" -> Simplify[Normal[Series[(a + z b + z^2 (-Da + lam a^3/6)/2 + z^3 (-Db + lam a^2 b/2)/6) - z (b + z (-Da + lam a^3/6) + z^2 (-Db + lam a^2 b/2)/2) + z^2 (-(Da + z Db)/3 + lam (a + z b)^3/30), {z, 0, 3}]] - (a + z^2 (Da/6 - lam a^3/20) - lam z^3 a^2 b/15)]
  |>;
  sinhc[x_] := If[TrueQ[x == 0], 1, Sinh[x]/x];
  bb[x_] := Exp[-x] sinhc[x];
  (* Exact compact quadrants; use a Duffy map for the triangle, then fixed
     high-precision Gauss-Legendre rules. Compare 16 and 24 nodes explicitly. *)
  gauss[n_] := gauss[n] = Module[{xx, roots, deriv},
    roots = Sort[xx /. NSolve[LegendreP[n, xx] == 0, xx, WorkingPrecision -> 60]];
    deriv = D[LegendreP[n, xx], xx];
    Table[{(1 + rt)/2, 1/((1 - rt^2) (deriv /. xx -> rt)^2)}, {rt, roots}]
  ];
  quad1[fn_, rule_] := Total[(#[[2]] fn[#[[1]]]) & /@ rule];
  quad2[fn_, rule_] := Total[Flatten[Table[rr[[2]] vv[[2]] fn[rr[[1]], vv[[1]]], {rr, rule}, {vv, rule}]]];
  channel[aa_List, bbb_List, qq_, zz_, order_] := Module[{sa = Total[aa], sb = Total[bbb], ba, bc, oo, io, oi, ii, rule = gauss[order]},
    ba = Times @@ (bb[# zz] & /@ aa); bc = Times @@ (bb[# zz] & /@ bbb);
    oo = ba bc (1/(sa + sb) + zz bb[qq zz])/((sa + qq) (sb + qq));
    io = zz^2 bc Exp[-(sa + qq) zz]/(sb + qq) quad1[Function[v, v^4 sinhc[qq zz v] Times @@ (sinhc[# zz v] & /@ aa)], rule];
    oi = zz^2 ba Exp[-(sb + qq) zz]/(sa + qq) quad1[Function[v, v^4 sinhc[qq zz v] Times @@ (sinhc[# zz v] & /@ bbb)], rule];
    ii = zz^3 Exp[-(sa + sb) zz] quad2[Function[{r, v}, r^4 v^8 sinhc[qq zz v r] Exp[-qq zz v] ((Times @@ (sinhc[# zz v r] & /@ aa)) (Times @@ (sinhc[# zz v] & /@ bbb)) + (Times @@ (sinhc[# zz v] & /@ aa)) (Times @@ (sinhc[# zz v r] & /@ bbb)))], rule];
    oo + io + oi + ii
  ];
  configs = {{ {1, 1, 1}, {1, 1, 1}, Sqrt[3]}, {{1, 1, Sqrt[2]}, {2, 1, Sqrt[5]}, 0}};
  rows = Table[Module[{aa = N[cfg[[1]], 50], bbb = N[cfg[[2]], 50], qq = N[cfg[[3]], 50], sa, sb, lim, correction},
    sa = Total[aa]; sb = Total[bbb]; lim = 1/((sa + sb) (sa + qq) (sb + qq));
    correction = Total[Join[aa, bbb]^2] lim/6 - 3/10 (1/(sa + qq) + 1/(sb + qq));
    <|"configuration" -> cfg, "boundary" -> N[lim, 14], "expectedQuadratic" -> N[correction, 14],
      "rows_z_kernel_quadraticRatio_quadratureDifference" -> Table[Module[{zz = N[z0, 50], val, low}, val = channel[aa, bbb, qq, zz, 24]; low = channel[aa, bbb, qq, zz, 16]; {z0, N[val, 14], N[(val - lim)/zz^2, 14], N[Abs[val - low], 6]}], {z0, {1/10, 1/100, 1/1000}}]|>
  ], {cfg, configs}];
  <|"SymbolicResiduals" -> symbolic,
    "AllSymbolicZero" -> And @@ (TrueQ[# == 0] & /@ Flatten[Values[symbolic]]),
    "NumericalChannels" -> rows,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Print[ToString[report, InputForm, PageWidth -> 120]];
