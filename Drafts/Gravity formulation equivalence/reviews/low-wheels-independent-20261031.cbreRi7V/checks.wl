(* Independent low-wheel algebra. Exact finite-dimensional symbol checks only.
   No spectral, Schatten, noncompact trace, or QME theorem is certified by this file. *)
Module[{dir, report, checks = <||>, forms, eps, ins, cross, ba, w, f, ja, xi,
  r2, id6, dw, dl, db, dc, hm1, hm2, c0, cm1, jmat, a1, a2, inds,
  simp, block, mult, jxi, fp, pp0, pp1, pp2, swap, iv, f1, star21,
  f2, f3, btr, expected, t, k0, k1, k2, superKernel, superIntegral,
  l, aa, lowIntegral, cLambda, heatCounter, smat, bmat, comm, out},
 dir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/low-wheels-independent-20261031.cbreRi7V";
 report = Block[{$Messages = {}, $MessageList = {}},
 forms = Flatten[Table[Subsets[Range[3], {p}], {p, 0, 3}], 1];
 eps[a_] := Table[If[MemberQ[forms[[v]], a], 0,
   If[forms[[u]] === Sort[Prepend[forms[[v]], a]],
      (-1)^Count[forms[[v]], z_ /; z < a], 0]], {u, 8}, {v, 8}];
 ins[a_] := Transpose[eps[a]];
 cross[v_] := {{0, -v[[3]], v[[2]]}, {v[[3]], 0, -v[[1]]}, {-v[[2]], v[[1]], 0}};
 ba[a_] := ArrayFlatten[{{ConstantArray[0, {3, 3}], -cross[UnitVector[3, a]]},
   {cross[UnitVector[3, a]], ConstantArray[0, {3, 3}]}}];
 w = Array[ww, {3, 3}]; f = Array[ff, {3, 3}];
 ja[a_] := ArrayFlatten[{{cross[w[[a]]], -cross[f[[a]]]},
   {cross[f[[a]]], cross[w[[a]]]}}];
 (* A generic rational covector makes these exact polynomial identities in all 18 j coefficients.
    General-covector and all-orders parity arguments are analytic in proof.md. *)
 xi = {2, -3, 5}; r2 = xi.xi; id6 = IdentityMatrix[6];
 dw = I KroneckerProduct[Sum[xi[[a]] eps[a], {a, 3}], id6];
 dl = -I KroneckerProduct[Sum[xi[[a]] ins[a], {a, 3}], id6];
 db = Sum[KroneckerProduct[eps[a], ba[a]], {a, 3}];
 dc = Transpose[db];
 hm1 = dl/r2; hm2 = dc/r2;
 c0 = dl.dw/r2; cm1 = (dl.db + dc.dw)/r2;
 jmat = Sum[KroneckerProduct[eps[a], ja[a]], {a, 3}];
 a1 = hm1.jmat.c0; a2 = hm2.jmat.c0 + hm1.jmat.cm1;
 inds[p_] := Flatten[(Range[6 (# - 1) + 1, 6 #] &) /@ Flatten[Position[Length /@ forms, p]]];
 block[m_, p_] := m[[inds[p], inds[p]]];
 simp[x_] := Simplify[x]; mult = {1, 2, 1, 0};
 jxi = Sum[xi[[a]] ja[a], {a, 3}];
 AssociateTo[checks, "coexact_principal_is_projection" -> (c0.c0 === c0)];
 AssociateTo[checks, "coexact_principal_form_ranks" -> (Table[Tr[block[c0, p]]/6, {p, 0, 3}] === mult)];
 AssociateTo[checks, "coexact_subprincipal_output_identity" -> (simp[c0.hm2 + cm1.hm1 - hm2] === ConstantArray[0, {48, 48}])];
 AssociateTo[checks, "principal_A_equals_internal_contraction_on_coexact" -> (simp[a1 + I KroneckerProduct[IdentityMatrix[8], jxi].c0/r2] === ConstantArray[0, {48, 48}])];
 AssociateTo[checks, "linear_subprincipal_trace" -> (simp[Table[Tr[block[a2, p]], {p, 0, 3}] - 4 mult Tr[f]/r2] === {0, 0, 0, 0})];
 AssociateTo[checks, "quadratic_principal_trace" -> (simp[Table[Tr[block[a1.a1, p]], {p, 0, 3}] + mult Tr[jxi.jxi]/r2^2] === {0, 0, 0, 0})];
 AssociateTo[checks, "cubic_principal_fiber_trace_zero" -> (simp[Table[Tr[block[a1.a1.a1, p]], {p, 0, 3}]] === {0, 0, 0, 0})];
 AssociateTo[checks, "gravitational_Killing_trace" -> (simp[Sum[Tr[ja[a].ja[a]], {a, 3}] - 4 (Total[Flatten[f^2]] - Total[Flatten[w^2]])] === 0)];
 AssociateTo[checks, "BV_coexact_rank_cancellation" -> ({-1, 1, -1, 1}.mult === 0)];
 (* Exact trace of the algebraic coframe insertion against invariant Hodge kernels. *)
 swap = Table[Boole[i == b && a == j], {i, 3}, {a, 3}, {j, 3}, {b, 3}];
 swap = ArrayReshape[swap, {9, 9}]; iv = Flatten[IdentityMatrix[3]];
 pp0 = Outer[Times, iv, iv]/3; pp1 = (IdentityMatrix[9] - swap)/2;
 pp2 = (IdentityMatrix[9] + swap)/2 - pp0;
 (* Embed a 9x9 spatial/internal operator in two gravitational internal copies. *)
 fp[q_] := Table[Boole[Quotient[a - 1, 3] == Quotient[b - 1, 3]]
    q[[3 (i - 1) + Mod[a - 1, 3] + 1, 3 (j - 1) + Mod[b - 1, 3] + 1]],
    {i, 3}, {a, 6}, {j, 3}, {b, 6}] // (ArrayReshape[#, {18, 18}] &);
 f1 = kk0 fp[pp0] + kk1 fp[pp1] + kk2 fp[pp2];
 star21 = KroneckerProduct[{{0, 0, 1}, {0, -1, 0}, {1, 0, 0}}, id6];
 f2 = Transpose[star21].f1.star21; f3 = kkM id6;
 btr = Table[Tr[dc[[inds[p], inds[p + 1]]].{f1, f2, f3}[[p + 1]].db[[inds[p + 1], inds[p]]]], {p, 0, 2}] // simp;
 expected = {12 kk1, 8 kk0 + 6 kk1 + 10 kk2, 12 kkM};
 AssociateTo[checks, "invariant_linear_wheel_spin_contractions" -> (simp[btr - expected] === {0, 0, 0})];
 k0 = Exp[-5 t]/(4 Pi t)^(3/2);
 k1 = (Exp[-5 t] + 2 (1 + 2 t) Exp[-4 t])/(3 (4 Pi t)^(3/2));
 k2 = (Exp[-5 t] + 2 (1 + 2 t) Exp[-4 t] + 2 (1 + 8 t) Exp[-t])/(5 (4 Pi t)^(3/2));
 superKernel = 8 k0 - 18 k1 + 10 k2;
 AssociateTo[checks, "super_linear_heat_leading_cancellation" -> (FullSimplify[Limit[t^(1/2) superKernel, t -> 0, Direction -> "FromAbove"] - 24/(4 Pi)^(3/2)] === 0)];
 superIntegral = Integrate[superKernel, {t, 0, Infinity}, Assumptions -> True, GenerateConditions -> False];
 AssociateTo[checks, "full_super_tadpole_density" -> (FullSimplify[superIntegral - (6 - Sqrt[5])/Pi] === 0)];
 aa[m_, x_] := Sqrt[Max[x - 5 + m^2, 0]];
 lowIntegral = (2/Pi^2) (aa[0, l] - Sqrt[5] ArcTan[aa[0, l]/Sqrt[5]]
    - 2 (aa[1, l] - (3/2) ArcTan[aa[1, l]/2]) + aa[2, l] + 3 ArcTan[aa[2, l]]);
 cLambda = (6 - Sqrt[5])/Pi - lowIntegral;
 AssociateTo[checks, "cutoff_five_super_tadpole_density" -> (FullSimplify[(cLambda /. l -> 5) - (3 - Sqrt[5])/Pi] === 0)];
 AssociateTo[checks, "cutoff_six_analytic_positive_lower_bound" -> (FullSimplify[(3 - Sqrt[5])/Pi - 11/(10 Pi^2) > 0] === True)];
 smat = {{s1, 0}, {0, s2}}; bmat = {{0, b}, {b, 0}};
 comm = smat.bmat - bmat.smat;
 heatCounter = Expand[Tr[smat.(bmat.comm - comm.bmat)]];
 AssociateTo[checks, "heat_weighted_cyclic_defect_exact_control" -> (Expand[heatCounter + 2 b^2 (s1 - s2)^2] === 0)];
 <|"checks" -> checks, "allPassed" -> And @@ Values[checks],
   "linearSpinTraces" -> btr, "fullSuperTadpoleDensity" -> superIntegral,
   "cutoffFiveDensity" -> FullSimplify[cLambda /. l -> 5],
   "cutoffSixDensityNumeric60" -> N[cLambda /. l -> 6, 60],
   "heatCyclicDefect" -> heatCounter,
   "covectorUsed" -> xi,
   "messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
 ];
 Export[FileNameJoin[{dir, "results.wxf"}], report, "WXF"];
 Export[FileNameJoin[{dir, "results.txt"}], ToString[report, InputForm, PageWidth -> 110], "Text"];
 <|"allPassed" -> report["allPassed"], "messages" -> report["messages"],
   "results" -> FileNameJoin[{dir, "results.txt"}], "exact" -> FileNameJoin[{dir, "results.wxf"}]|>
]
