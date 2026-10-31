(* Actual 48-component gravitational form algebra and H3 tadpole.
   Every execution writes to a fresh private directory. No existing result is overwritten.
   Analytic inputs: actual Hodge blocks, homogeneous spin Plancherel densities,
   vanishing coincident covariant derivative kernels. These are not proved by CAS. *)
Module[{report, result, dir, tmp, sourcePath = $InputFileName, preview, machine},
 report = Block[{$Messages = {}, $MessageList = {}},
  result = Module[{basis, deg, wed, con, eps, rot, boost, swap, star, hh,
    id3 = IdentityMatrix[3], id6 = IdentityMatrix[6], idx, p0, p1, p2,
    kh1, kh, sg, dz, az, fv, wv, a, b, c, i, j, u, v, checks = <||>, ck,
    k0, k1, k2, kg, pair, part, expected, derivativeF, derivativeW,
    ds, heat, small, lam, q0, q1, q2, cl, gl, asym, cutPrimitive,
    m, z, coefficientAtThreshold, fields, aggregate, sectors},
   ck[label_, expr_] := AssociateTo[checks, label -> TrueQ[expr]];
   eps[a_, b_, c_] := Signature[{a, b, c}];
   basis = Join @@ Table[Subsets[Range[3], {p}], {p, 0, 3}];
   deg = Length /@ basis;
   wed[a_] := Table[If[MemberQ[basis[[j]], a], 0,
      If[Sort[Prepend[basis[[j]], a]] === basis[[i]],
        (-1)^Count[basis[[j]], x_ /; x < a], 0]], {i, 8}, {j, 8}];
   con[a_] := Transpose[wed[a]];
   rot[a_] := Table[eps[a, b, c], {c, 3}, {b, 3}];
   boost[a_] := ArrayFlatten[{{0 id3, -rot[a]}, {rot[a], 0 id3}}];
   swap = ArrayFlatten[{{0 id3, id3}, {id3, 0 id3}}];
   star = Table[If[Sort[Join[basis[[j]], basis[[i]]]] === Range[3],
       Signature[Join[basis[[j]], basis[[i]]], 0], {i, 8}, {j, 8}];
   hh = KroneckerProduct[star, swap];
   sg = DiagonalMatrix[Flatten[Table[ConstantArray[(-1)^(p + 1), 6], {p, deg}]]];
   idx[p_] := Flatten[Table[If[deg[[i]] == p, Range[6 (i - 1) + 1, 6 i], {}], {i, 8}]];
   pair[i_, sig_, a_] := 6 (i - 1) + 3 sig + a;
   p0 = Table[KroneckerDelta[i, a] KroneckerDelta[j, b]/3, {i, 3}, {a, 3}, {j, 3}, {b, 3}];
   p1 = Table[(KroneckerDelta[i, j] KroneckerDelta[a, b] - KroneckerDelta[i, b] KroneckerDelta[a, j])/2, {i, 3}, {a, 3}, {j, 3}, {b, 3}];
   p2 = Table[(KroneckerDelta[i, j] KroneckerDelta[a, b] + KroneckerDelta[i, b] KroneckerDelta[a, j])/2, {i, 3}, {a, 3}, {j, 3}, {b, 3}] - p0;
   kh1 = ConstantArray[0, {18, 18}];
   Do[kh1[[pair[i, u, a], pair[j, u, b]]] = k0 p0[[i, a, j, b]] + k1 p1[[i, a, j, b]] + k2 p2[[i, a, j, b]],
      {i, 3}, {j, 3}, {a, 3}, {b, 3}, {u, 0, 1}];
   kh = ConstantArray[0, {48, 48}];
   kh[[idx[0], idx[0]]] = kg id6;
   kh[[idx[1], idx[1]]] = kh1;
   kh = kh + hh.kh.hh;
   dz = Sum[KroneckerProduct[con[i], boost[i]], {i, 3}];
   az = Sum[KroneckerProduct[wed[i],
       Sum[fv[i, a] boost[a] + wv[i, a] KroneckerProduct[IdentityMatrix[2], rot[a]], {a, 3}]], {i, 3}];
   sectors = Table[Expand[Tr[(dz.az.kh)[[idx[p], idx[p]]]]], {p, 0, 3}];
   aggregate = Expand[Tr[sg.dz.az.kh]];
   expected = (8 k0 - 6 k1 + 10 k2 - 12 kg) Sum[fv[i, i], {i, 3}]/3;
   ck["Hodge cyclic involution", hh.hh === IdentityMatrix[48]];
   ck["boost generators positive-metric symmetric", And @@ Table[boost[i] === Transpose[boost[i]], {i, 3}]];
   ck["gravitational boost commutator", And @@ Flatten[Table[boost[i].boost[j] - boost[j].boost[i] == -Sum[eps[i, j, a] KroneckerProduct[IdentityMatrix[2], rot[a]], {a, 3}], {i, 3}, {j, 3}]]];
   ck["all physical fiber contractions", Expand[aggregate - expected] === 0];
   ck["degree zero sector", Expand[sectors[[1]] - 4 kg Sum[fv[i, i], {i, 3}]] === 0];
   ck["degree one sector", Expand[sectors[[2]] - (8 k0/3 + 2 k1 + 10 k2/3) Sum[fv[i, i], {i, 3}]] === 0];
   ck["degree two sector", Expand[sectors[[3]] - 4 k1 Sum[fv[i, i], {i, 3}]] === 0];
   ck["top degree zero", sectors[[4]] === 0];
   derivativeF = Table[Expand[Tr[sg.KroneckerProduct[con[i].wed[j], boost[a]].kh]], {i, 3}, {j, 3}, {a, 3}];
   derivativeW = Table[Expand[Tr[sg.KroneckerProduct[con[i].wed[j], KroneckerProduct[IdentityMatrix[2], rot[a]]].kh]], {i, 3}, {j, 3}, {a, 3}];
   ck["coframe derivative fiber trace zero", And @@ ((# === 0) & /@ Flatten[derivativeF])];
   ck["connection derivative trace is divergence tensor", And @@ Flatten[Table[Expand[derivativeW[[i, j, a]] - eps[i, j, a] derivativeW[[1, 2, 3]]] === 0, {i, 3}, {j, 3}, {a, 3}]]];
   ds[m_, s_] := (4 Pi s)^(-3/2) (1 + 2 m^2 s) Exp[-(5 - m^2) s];
   heat = FullSimplify[(expected/2 /. {k0 -> ds[0, z], k1 -> (ds[0, z] + 2 ds[1, z])/3,
       kg -> (ds[0, z] + 2 ds[1, z])/3, k2 -> (ds[0, z] + 2 ds[1, z] + 2 ds[2, z])/5})/Sum[fv[i, i], {i, 3}]];
   ck["full-spin helicity combination", FullSimplify[heat - (2/3) (ds[0, z] - 2 ds[1, z] + ds[2, z])] === 0];
   ck["scalar heat Plancherel normalization", FullSimplify[Integrate[lam^2 Exp[-z (lam^2 + 5)]/(2 Pi^2), {lam, 0, Infinity}, Assumptions -> z > 0] - ds[0, z], z > 0] === 0];
   small = Series[(4 Pi z)^(3/2) heat, {z, 0, 2}];
   ck["leading supertrace heat cancellation", Normal[small] == 4 z + 10 z^2/3];
   cutPrimitive[m_, lam_] := lam + (2 m^2 - 5)/Sqrt[5 - m^2] ArcTan[lam/Sqrt[5 - m^2]];
   ck["all three spectral primitives", And @@ Table[FullSimplify[D[cutPrimitive[m, lam], lam] - (lam^2 + m^2)/(lam^2 + 5 - m^2)] === 0, {m, 0, 2}]];
   q0 = Sqrt[lam^2 - 5]; q1 = Sqrt[lam^2 - 4]; q2 = Sqrt[lam^2 - 1];
   cl = (-q0 + 2 q1 - q2 - Sqrt[5] ArcTan[Sqrt[5]/q0] + 3 ArcTan[2/q1] + 3 ArcTan[1/q2])/(3 Pi^2);
   gl = Sqrt[z - 5] - 2 (z - 3)/Sqrt[z - 4] + (z + 3)/Sqrt[z - 1];
   ck["cutoff derivative equals positive-density tail", FullSimplify[D[cl, lam] + (gl /. z -> lam^2)/(3 Pi^2 lam), lam > Sqrt[5]] === 0];
   asym = FullSimplify[Series[cl /. lam -> 1/z, {z, 0, 3}], z > 0];
   ck["large cutoff coefficient", Limit[lam cl, lam -> Infinity] == 1/Pi^2];
   coefficientAtThreshold = Limit[cl, lam -> Sqrt[5], Direction -> "FromAbove"];
   ck["threshold coefficient", FullSimplify[coefficientAtThreshold - (3 - Sqrt[5])/(6 Pi)] === 0];
   ck["strictly nonzero finite tadpole", (6 - Sqrt[5])/(6 Pi) > 0];
   <|"Checks" -> checks, "AllPassed" -> And @@ Values[checks],
     "DegreeTraces" -> sectors, "Supertrace" -> aggregate,
     "ConnectionDerivativeCoefficient" -> derivativeW[[1, 2, 3]],
     "HeatIntegrand" -> heat, "SmallHeatExpansion" -> small,
     "CutoffCoefficient" -> cl, "CutoffAsymptotic" -> asym,
     "ThresholdCoefficient" -> coefficientAtThreshold,
     "Scope" -> "Exact finite fiber algebra and elementary spectral identities. HC completeness, trace domains, geodesic symmetry and Ward identities are analytic questions, not CAS consequences."|>
  ];
  <|"Result" -> result, "Failed" -> (result === $Failed || result === $Aborted),
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ];
 tmp = RunProcess[{"mktemp", "-d", "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/one-loop-cs-tadpole-parent.XXXXXX"}];
 If[tmp["ExitCode"] =!= 0, Return[tmp]];
 dir = StringTrim[tmp["StandardOutput"]];
 If[StringQ[sourcePath] && FileExistsQ[sourcePath], CopyFile[sourcePath, FileNameJoin[{dir, "source.wl"}]]];
 machine = Export[FileNameJoin[{dir, "result.wxf"}], report, "WXF"];
 preview = Export[FileNameJoin[{dir, "result.txt"}], ToString[report, InputForm, PageWidth -> 100], "Text"];
 Export[FileNameJoin[{dir, "checks.json"}], <|"Checks" -> report["Result"]["Checks"],
   "AllPassed" -> report["Result"]["AllPassed"], "Failed" -> report["Failed"], "Messages" -> report["Messages"]|>, "RawJSON"];
 {preview, machine, report["Result"]["AllPassed"], report["Failed"], report["Messages"]}
]
