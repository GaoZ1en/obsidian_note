(* Exact finite Grassmann check of the supplied type-II generating function.
   This is a separate follow-up; no earlier evidence is overwritten.
   Forms are component-first and ghosts commute with dx. i=xi^mu i_mu.
   Left odd derivatives define p=F_q and Q=F_P. Coordinate Jacobians use
   delta Q = M delta q, hence right derivatives in odd input columns. *)
Module[{ep, pop, clean, make, add, scale, odd, mul, deriv, deven, zero,
  kappa, e, w, rh, ta, ee, oo, la, xi, ff, qe, qw, qr, qt,
  pe, pw, pl, px, qeExpected, qwExpected, qrExpected, qtExpected,
  qeres, qwres, qrres, qtres, sTau, sRho, aTau, aRho, wrong,
  pIdentity, scalar, result, out, n, fzero, fadd, fscale, fwedge, fcontract,
  fscalar, fone, ftwo, fthree, fTop, ffForm, ef, of, rform, tform, eform, wform},
 n = 24;
 ep[i_, j_, k_] := Signature[{i, j, k}];
 pop[z_Integer] := DigitCount[z, 2, 1];
 clean[z_Association] := Select[Map[Expand, z], # =!= 0 &];
 make[ls_List] := If[ls === {}, <||>, clean[Merge[Association /@ ls, Total]]];
 add[z__Association] := clean[Merge[{z}, Total]];
 scale[c_, z_Association] := clean[Map[c # &, z]];
 odd[i_Integer] := Association[2^(i - 1) -> 1];
 scalar[c_] := If[c === 0, <||>, <|0 -> c|>];
 mul[z_Association, v_Association] := make[Flatten[Table[
  If[BitAnd[m, nn] != 0, Nothing,
   BitOr[m, nn] -> z[m] v[nn] (-1)^Sum[
    If[BitAnd[m, 2^j] != 0, pop[BitAnd[nn, 2^j - 1]], 0], {j, 0, n - 1}]],
  {m, Keys[z]}, {nn, Keys[v]}], 1]];
 deriv[z_Association, i_Integer] := make[Table[
   If[BitAnd[m, 2^(i - 1)] == 0, Nothing,
     BitXor[m, 2^(i - 1)] -> (-1)^pop[BitAnd[m, 2^(i - 1) - 1]] z[m]],
   {m, Keys[z]}]];
 deven[z_Association, x_] := clean[Map[D[#, x] &, z]];
 zero[z_Association] := (z === <||>);
 e = Array[ec, {3, 3}]; w = Array[wc, {3, 3}];
 rh = Array[rc, 3]; ta = Array[tc, 3];
 ee = Table[odd[3 (mu - 1) + a], {mu, 3}, {a, 3}];
 oo = Table[odd[9 + 3 (mu - 1) + a], {mu, 3}, {a, 3}];
 la = Table[odd[18 + a], {a, 3}]; xi = Table[odd[21 + mu], {mu, 3}];
 ff = add[
   add @@ Flatten[Table[add[scale[e[[mu, a]], ee[[mu, a]]], scale[w[[mu, a]], oo[[mu, a]]],
     scale[rh[[a]] w[[mu, a]] + ta[[a]] e[[mu, a]], xi[[mu]]]], {mu, 3}, {a, 3}], 1],
   add @@ Table[scale[rh[[a]], la[[a]]], {a, 3}],
   add @@ Flatten[Table[scale[ep[nu, mu, si]/kappa, mul[mul[ee[[mu, a]], xi[[nu]]], oo[[si, a]]]],
      {nu, 3}, {mu, 3}, {si, 3}, {a, 3}], 3],
   add @@ Flatten[Table[add[
      scale[-ep[nu, ro, mu] rh[[a]]/(2 kappa), mul[mul[ee[[mu, a]], xi[[nu]]], xi[[ro]]]],
      scale[-ep[nu, ro, mu] ta[[a]]/(2 kappa), mul[mul[oo[[mu, a]], xi[[nu]]], xi[[ro]]]]],
      {nu, 3}, {ro, 3}, {mu, 3}, {a, 3}], 3],
   add @@ Flatten[Table[scale[-ep[nu, ro, si] ta[[a]] rh[[a]]/(3 kappa),
      mul[mul[xi[[nu]], xi[[ro]]], xi[[si]]]], {nu, 3}, {ro, 3}, {si, 3}, {a, 3}], 3]
 ];
 (* Independent conversion of the supplied form expression. Exterior masks
    label dx monomials; Grassmann coefficients commute with dx as specified. *)
 fzero[] := ConstantArray[<||>, 8];
 fadd[zs__List] := Table[add @@ ({zs}[[All, j]]), {j, 8}];
 fscale[c_, z_List] := scale[c, #] & /@ z;
 fscalar[z_Association] := ReplacePart[fzero[], 1 -> z];
 fone[z_List] := Fold[ReplacePart[#1, (2^(#2 - 1) + 1) -> z[[#2]]] &, fzero[], Range[3]];
 ftwo[z_List] := ReplacePart[fzero[], {7 -> z[[1]], 6 -> scale[-1, z[[2]]], 4 -> z[[3]]}];
 fthree[z_Association] := ReplacePart[fzero[], 8 -> z];
 fwedge[z_List, v_List] := Module[{res = fzero[], sg, mask},
   Do[If[BitAnd[m, nn] == 0,
      mask = BitOr[m, nn];
      sg = (-1)^Sum[If[BitAnd[m, 2^j] != 0, pop[BitAnd[nn, 2^j - 1]], 0], {j, 0, 2}];
      res[[mask + 1]] = add[res[[mask + 1]], scale[sg, mul[z[[m + 1]], v[[nn + 1]]]]]],
     {m, 0, 7}, {nn, 0, 7}]; res];
 fcontract[z_List] := Module[{res = fzero[], mask, sg},
   Do[If[BitAnd[m, 2^(mu - 1)] != 0,
      mask = BitXor[m, 2^(mu - 1)]; sg = (-1)^pop[BitAnd[m, 2^(mu - 1) - 1]];
      res[[mask + 1]] = add[res[[mask + 1]], scale[sg, mul[xi[[mu]], z[[m + 1]]]]]],
     {m, 0, 7}, {mu, 3}]; res];
 ffForm = add @@ Table[
   ef = ftwo[ee[[All, a]]]; of = ftwo[oo[[All, a]]];
   rform = fthree[scalar[rh[[a]]]]; tform = fthree[scalar[ta[[a]]]];
   eform = fone[scalar /@ e[[All, a]]]; wform = fone[scalar /@ w[[All, a]]];
   fTop = fadd[fwedge[ef, eform], fwedge[of, wform],
      fwedge[rform, fadd[fscalar[la[[a]]], fcontract[wform]]], fwedge[tform, fcontract[eform]],
      fscale[1/kappa, fwedge[ef, fcontract[of]]],
      fscale[1/(2 kappa), fwedge[ef, fcontract[fcontract[rform]]]],
      fscale[1/(2 kappa), fwedge[of, fcontract[fcontract[tform]]]],
      fscale[1/(3 kappa), fwedge[tform, fcontract[fcontract[fcontract[rform]]]]]];
   fTop[[8]], {a, 3}];
 qe = Table[deriv[ff, 3 (mu - 1) + a], {mu, 3}, {a, 3}];
 qw = Table[deriv[ff, 9 + 3 (mu - 1) + a], {mu, 3}, {a, 3}];
 qr = Table[deven[ff, rh[[a]]], {a, 3}]; qt = Table[deven[ff, ta[[a]]], {a, 3}];
 pe = Table[deven[ff, e[[mu, a]]], {mu, 3}, {a, 3}];
 pw = Table[deven[ff, w[[mu, a]]], {mu, 3}, {a, 3}];
 pl = Table[deriv[ff, 18 + a], {a, 3}]; px = Table[deriv[ff, 21 + nu], {nu, 3}];
 qeExpected = Table[add[scalar[e[[mu, a]]],
    add @@ Flatten[Table[scale[ep[nu, mu, si]/kappa, mul[xi[[nu]], oo[[si, a]]]], {nu, 3}, {si, 3}], 1],
    add @@ Flatten[Table[scale[-ep[nu, ro, mu] rh[[a]]/(2 kappa), mul[xi[[nu]], xi[[ro]]]], {nu, 3}, {ro, 3}], 1]],
    {mu, 3}, {a, 3}];
 qwExpected = Table[add[scalar[w[[mu, a]]],
    add @@ Flatten[Table[scale[ep[nu, mu, si]/kappa, mul[xi[[nu]], ee[[si, a]]]], {nu, 3}, {si, 3}], 1],
    add @@ Flatten[Table[scale[-ep[nu, ro, mu] ta[[a]]/(2 kappa), mul[xi[[nu]], xi[[ro]]]], {nu, 3}, {ro, 3}], 1]],
    {mu, 3}, {a, 3}];
 qrExpected = Table[add[la[[a]], add @@ Table[scale[w[[mu, a]], xi[[mu]]], {mu, 3}],
    add @@ Flatten[Table[scale[-ep[nu, ro, mu]/(2 kappa), mul[mul[ee[[mu, a]], xi[[nu]]], xi[[ro]]]],
      {nu, 3}, {ro, 3}, {mu, 3}], 2],
    add @@ Flatten[Table[scale[-ep[nu, ro, si] ta[[a]]/(3 kappa), mul[mul[xi[[nu]], xi[[ro]]], xi[[si]]]],
      {nu, 3}, {ro, 3}, {si, 3}], 2]], {a, 3}];
 qtExpected = Table[add[add @@ Table[scale[e[[mu, a]], xi[[mu]]], {mu, 3}],
    add @@ Flatten[Table[scale[-ep[nu, ro, mu]/(2 kappa), mul[mul[oo[[mu, a]], xi[[nu]]], xi[[ro]]]],
      {nu, 3}, {ro, 3}, {mu, 3}], 2],
    add @@ Flatten[Table[scale[-ep[nu, ro, si] rh[[a]]/(3 kappa), mul[mul[xi[[nu]], xi[[ro]]], xi[[si]]]],
      {nu, 3}, {ro, 3}, {si, 3}], 2]], {a, 3}];
 qeres = Table[zero[add[qe[[mu, a]], scale[-1, qeExpected[[mu, a]]]]], {mu, 3}, {a, 3}];
 qwres = Table[zero[add[qw[[mu, a]], scale[-1, qwExpected[[mu, a]]]]], {mu, 3}, {a, 3}];
 qrres = Table[zero[add[qr[[a]], scale[-1, qrExpected[[a]]]]], {a, 3}];
 qtres = Table[zero[add[qt[[a]], scale[-1, qtExpected[[a]]]]], {a, 3}];
 (* Q/q Schur complement. Right B=-left B, so D-CB=D+C d_left Qeven. *)
 sTau = Table[add[deriv[qt[[a]], 21 + j],
    add @@ Table[mul[xi[[mu]], deriv[qe[[mu, a]], 21 + j]], {mu, 3}]], {a, 3}, {j, 3}];
 sRho = Table[add[deriv[qr[[a]], 21 + j],
    add @@ Table[mul[xi[[mu]], deriv[qw[[mu, a]], 21 + j]], {mu, 3}]], {a, 3}, {j, 3}];
 (* Independently, p/P Schur complement in parity order (rho,tau; E,Omega).
    Its right B=-left derivative of p_xi with respect to odd E or Omega. *)
 aTau = Table[add[deven[px[[j]], ta[[a]]],
    add @@ Table[mul[deriv[px[[j]], 3 (mu - 1) + a], xi[[mu]]], {mu, 3}]], {j, 3}, {a, 3}];
 aRho = Table[add[deven[px[[j]], rh[[a]]],
    add @@ Table[mul[deriv[px[[j]], 9 + 3 (mu - 1) + a], xi[[mu]]], {mu, 3}]], {j, 3}, {a, 3}];
 wrong = Table[add[deriv[qt[[a]], 21 + j],
    add @@ Table[scale[-1, mul[xi[[mu]], deriv[qe[[mu, a]], 21 + j]]], {mu, 3}],
    scalar[-e[[j, a]]]], {a, 3}, {j, 3}];
 pIdentity = Table[add[px[[nu]],
    scalar[-Sum[rh[[a]] w[[nu, a]] + ta[[a]] e[[nu, a]], {a, 3}]],
    add @@ Flatten[Table[scale[ep[nu, mu, si]/kappa, mul[pe[[mu, a]], pw[[si, a]]]],
      {mu, 3}, {si, 3}, {a, 3}], 2]], {nu, 3}];
 result = <|
   "supplied_form_generator_equals_component_generator" -> zero[add[ffForm, scale[-1, ff]]],
   "all_Qe_components_match_left_derivative" -> And @@ Flatten[qeres],
   "all_Qomega_components_match_left_derivative" -> And @@ Flatten[qwres],
   "all_Qrho_components_match_left_derivative" -> And @@ qrres,
   "all_Qtau_components_match_left_derivative" -> And @@ qtres,
   "Qq_right_Schur_tau_block_equals_e" -> And @@ Flatten[Table[zero[add[sTau[[a, j]], scalar[-e[[j, a]]]]], {a, 3}, {j, 3}]],
   "Qq_right_Schur_rho_block_equals_w" -> And @@ Flatten[Table[zero[add[sRho[[a, j]], scalar[-w[[j, a]]]]], {a, 3}, {j, 3}]],
   "pP_right_Schur_tau_block_equals_e" -> And @@ Flatten[Table[zero[add[aTau[[j, a]], scalar[-e[[j, a]]]]], {j, 3}, {a, 3}]],
   "pP_right_Schur_rho_block_equals_w" -> And @@ Flatten[Table[zero[add[aRho[[j, a]], scalar[-w[[j, a]]]]], {j, 3}, {a, 3}]],
   "exact_inverse_antifield_identity" -> And @@ (zero /@ pIdentity),
   "using_left_B_in_ungraded_Schur_is_wrong" -> ! And @@ (zero /@ Flatten[wrong]),
   "wrong_Schur_11_nonzero_monomials" -> Length[wrong[[1, 1]]],
   "coframe_determinant" -> Det[e],
   "mixed_Qq_Berezinian" -> 1/Det[e],
   "mixed_pP_Berezinian" -> Det[e],
   "full_canonical_Berezinian_qp_to_QP" -> 1/Det[e]^2,
   "full_semidensity_factor_qp_to_QP_positive_body" -> 1/Det[e],
   "generating_function_Grassmann_monomials" -> Length[ff]
 |>;
 out = FileNameJoin[{DirectoryName[$InputFileName], "typeII_checks.actual.txt"}];
 Export[out, ToString[result, InputForm, PageWidth -> 100], "Text"];
 result
]
