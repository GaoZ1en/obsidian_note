(* Exact Grassmann-polynomial check of the field-dependent ghost map.
   At one point e_mu^a=delta_mu^a, but every first jet of e and omega
   is independent. This is a component frame choice, not a field equation.
   Odd monomials use integer bit masks and left Grassmann derivatives. *)
Module[{ep, clean, add, scale, odd, mul, deriv, pop, make, xi, lam, dxi, dlam,
  om, de, dom, cross, tau, rho, dtau, drho, qe, qw, qt, qr, qxi, qlam,
  torsion, curv, qxiExpected, qlamExpected, qeExpected, qwExpected,
  ef, wf, ee, ew, gen, bracket, deltaExpected, weightedDelta, weightedExpected, rr, report, out, aa},
 ep[i_, j_, k_] := Signature[{i, j, k}];
 pop[n_Integer] := DigitCount[n, 2, 1];
 clean[z_Association] := Select[Map[Expand, z], # =!= 0 &];
 make[ls_List] := If[ls === {}, <||>, clean[Merge[Association /@ ls, Total]]];
 add[z__Association] := clean[Merge[{z}, Total]];
 scale[c_, z_Association] := clean[Map[c # &, z]];
 odd[i_Integer] := Association[2^(i - 1) -> 1];
 mul[z_Association, w_Association] := make[Flatten[Table[
   If[BitAnd[m, n] =!= 0, Nothing,
    BitOr[m, n] -> z[m] w[n] (-1)^Sum[
      If[BitAnd[m, 2^j] != 0, pop[BitAnd[n, 2^j - 1]], 0], {j, 0, 30}]],
   {m, Keys[z]}, {n, Keys[w]}], 1]];
 deriv[z_Association, i_Integer] := make[Table[
   If[BitAnd[m, 2^(i - 1)] == 0, Nothing,
     BitXor[m, 2^(i - 1)] -> (-1)^pop[BitAnd[m, 2^(i - 1) - 1]] z[m]],
   {m, Keys[z]}]];
 xi = Table[odd[i], {i, 3}]; lam = Table[odd[3 + i], {i, 3}];
 dxi = Table[odd[6 + 3 (nu - 1) + mu], {nu, 3}, {mu, 3}];
 dlam = Table[odd[15 + 3 (nu - 1) + b], {nu, 3}, {b, 3}];
 om = Array[ww, {3, 3}]; de = Array[dee, {3, 3, 3}]; dom = Array[dww, {3, 3, 3}];
 cross[v_, w_, a_] := add @@ Flatten[Table[scale[ep[a, b, c], mul[v[[b]], w[[c]]]], {b, 3}, {c, 3}], 1];
 tau = xi;
 rho = Table[add[lam[[b]], add @@ Table[scale[om[[mu, b]], xi[[mu]]], {mu, 3}]], {b, 3}];
 dtau = Table[add[dxi[[nu, b]], add @@ Table[scale[de[[nu, mu, b]], xi[[mu]]], {mu, 3}]], {nu, 3}, {b, 3}];
 drho = Table[add[dlam[[nu, b]], add @@ Table[add[scale[dom[[nu, mu, b]], xi[[mu]]],
      scale[om[[mu, b]], dxi[[nu, mu]]]], {mu, 3}]], {nu, 3}, {b, 3}];
 qe = Table[add[dtau[[mu, a]], add @@ Flatten[Table[
    add[scale[ep[a, b, c] om[[mu, b]], tau[[c]]],
        scale[ep[a, b, c] KroneckerDelta[mu, b], rho[[c]]]], {b, 3}, {c, 3}], 1]], {mu, 3}, {a, 3}];
 qw = Table[add[drho[[mu, a]], add @@ Flatten[Table[
    add[scale[ep[a, b, c] om[[mu, b]], rho[[c]]],
        scale[-ep[a, b, c] KroneckerDelta[mu, b], tau[[c]]]], {b, 3}, {c, 3}], 1]], {mu, 3}, {a, 3}];
 qt = Table[scale[-1, cross[rho, tau, a]], {a, 3}];
 qr = Table[add[scale[-1/2, cross[rho, rho, a]], scale[1/2, cross[tau, tau, a]]], {a, 3}];
 qxi = Table[add[qt[[a]], add @@ Table[scale[-1, mul[qe[[mu, a]], xi[[mu]]]], {mu, 3}]], {a, 3}];
 qlam = Table[add[qr[[a]], add @@ Table[add[scale[-1, mul[qw[[mu, a]], xi[[mu]]]],
     scale[-om[[mu, a]], qxi[[mu]]]], {mu, 3}]], {a, 3}];
 torsion = Table[de[[nu, mu, a]] - de[[mu, nu, a]] +
    Sum[ep[a, b, c] (om[[nu, b]] KroneckerDelta[mu, c] - om[[mu, b]] KroneckerDelta[nu, c]), {b, 3}, {c, 3}],
    {nu, 3}, {mu, 3}, {a, 3}];
 curv = Table[dom[[nu, mu, a]] - dom[[mu, nu, a]] +
    Sum[ep[a, b, c] (om[[nu, b]] om[[mu, c]] - KroneckerDelta[nu, b] KroneckerDelta[mu, c]), {b, 3}, {c, 3}],
    {nu, 3}, {mu, 3}, {a, 3}];
 qxiExpected = Table[add[add @@ Table[mul[xi[[nu]], dxi[[nu, mu]]], {nu, 3}],
    add @@ Flatten[Table[scale[torsion[[nu, ro, mu]]/2, mul[xi[[nu]], xi[[ro]]]], {nu, 3}, {ro, 3}], 1]], {mu, 3}];
 qlamExpected = Table[add[add @@ Table[mul[xi[[nu]], dlam[[nu, a]]], {nu, 3}],
    scale[-1/2, cross[lam, lam, a]], add @@ Flatten[Table[
      scale[(curv[[nu, ro, a]] - Sum[om[[mu, a]] torsion[[nu, ro, mu]], {mu, 3}])/2,
       mul[xi[[nu]], xi[[ro]]]], {nu, 3}, {ro, 3}], 1]], {a, 3}];
 qeExpected = Table[add[dxi[[mu, a]], add @@ Table[scale[de[[nu, mu, a]] - torsion[[nu, mu, a]], xi[[nu]]], {nu, 3}],
    add @@ Table[scale[ep[a, mu, c], lam[[c]]], {c, 3}]], {mu, 3}, {a, 3}];
 qwExpected = Table[add[dlam[[mu, a]], add @@ Table[add[scale[dom[[nu, mu, a]] - curv[[nu, mu, a]], xi[[nu]]],
     scale[om[[nu, a]], dxi[[mu, nu]]]], {nu, 3}],
    add @@ Flatten[Table[scale[ep[a, b, c] om[[mu, b]], lam[[c]]], {b, 3}, {c, 3}], 1]], {mu, 3}, {a, 3}];
 (* A second independent set of odd labels for the cubic generator test. *)
 ef = Table[odd[3 (mu - 1) + a], {mu, 3}, {a, 3}];
 wf = Table[odd[9 + 3 (mu - 1) + a], {mu, 3}, {a, 3}];
 xi = Table[odd[18 + nu], {nu, 3}]; ee = Array[EE, {3, 3}]; ew = Array[EW, {3, 3}];
 gen = add @@ Flatten[Table[scale[-ep[nu, mu, si]/(2 aa),
    mul[mul[ef[[mu, a]], xi[[nu]]], wf[[si, a]]]], {nu, 3}, {mu, 3}, {si, 3}, {a, 3}], 3];
 bracket = add @@ Flatten[Table[add[scale[ee[[mu, a]], deriv[gen, 3 (mu - 1) + a]],
    scale[ew[[mu, a]], deriv[gen, 9 + 3 (mu - 1) + a]]], {mu, 3}, {a, 3}], 1];
 deltaExpected = add @@ Flatten[Table[add[
    scale[-ep[nu, mu, si] ew[[si, a]]/(2 aa), mul[ef[[mu, a]], xi[[nu]]]],
    scale[-ep[nu, mu, si] ee[[si, a]]/(2 aa), mul[wf[[mu, a]], xi[[nu]]]]],
    {nu, 3}, {mu, 3}, {si, 3}, {a, 3}], 3];
 (* nu=det(e)^(-1), so at e=I, (log nu,F)=-sum_mu dF/de*_(mu,mu). *)
 weightedDelta = add @@ Table[scale[-1, deriv[gen, 3 (mu - 1) + mu]], {mu, 3}];
 weightedExpected = add @@ Flatten[Table[scale[ep[nu, mu, si]/(2 aa),
     mul[xi[[nu]], wf[[si, mu]]]], {nu, 3}, {mu, 3}, {si, 3}], 2];
 rr = <|
  "Qe_all_9_residuals_zero" -> And @@ Flatten[Table[add[qe[[mu, a]], scale[-1, qeExpected[[mu, a]]]] === <||>, {mu, 3}, {a, 3}]],
  "Qomega_all_9_residuals_zero" -> And @@ Flatten[Table[add[qw[[mu, a]], scale[-1, qwExpected[[mu, a]]]] === <||>, {mu, 3}, {a, 3}]],
  "Qxi_all_3_residuals_zero" -> And @@ Table[add[qxi[[mu]], scale[-1, qxiExpected[[mu]]]] === <||>, {mu, 3}],
  "Qlambda_all_3_residuals_zero" -> And @@ Table[add[qlam[[a]], scale[-1, qlamExpected[[a]]]] === <||>, {a, 3}],
  "cubic_generator_bracket_residual_zero" -> (add[bracket, scale[-1, deltaExpected]] === <||>),
  "inherited_density_Delta_generator_residual_zero" -> (add[weightedDelta, scale[-1, weightedExpected]] === <||>),
  "inherited_density_Delta_generator_nonzero" -> (weightedDelta =!= <||>),
  "inherited_density_Delta_generator_monomials" -> Length[weightedDelta],
  "generator_Grassmann_monomials" -> Length[gen],
  "bracket_Grassmann_monomials" -> Length[bracket]
 |>;
 report = <|"Results" -> rr, "Failed" -> (! FreeQ[rr, $Failed | $Aborted])|>;
 out = FileNameJoin[{DirectoryName[$InputFileName], "grassmann_checks.actual.txt"}];
 Export[out, ToString[report, InputForm, PageWidth -> 100], "Text"];
 report
]
