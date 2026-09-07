(* Finite diagnostics; these do not prove PDE or distribution theorems. *)
ClearAll[Evaluate[Context[] <> "*"]];
cutProfile[s_] := 3 s^2 - 2 s^3;
cutSource[f_] := D[cutProfile[s], {s, 2}] f + 2 D[cutProfile[s], s] D[f, s];
cutProjection[f_] := FullSimplify[Integrate[Sin[2 (t - s)] cutSource[f]/2, {s, 0, 1}]];
omega = {{0, -1}, {1, 0}};
jmat = -omega;
rmat = {{1, 0}, {0, 1}, {aa, bb}};
bmat = {{1, 0, 0}, {0, 1, 0}};
betamat = {{0, 1, 0}, {-1, 0, 0}, {0, 0, 1}};
rflat = -omega.Transpose[rmat].Transpose[betamat];
bflat = Inverse[Transpose[betamat]].Transpose[bmat].omega;
vars = {q, p, w};
rnonlinear = {q, p, q^2};
dr = Table[D[rnonlinear[[i]], {q, p}[[k]]], {i, 3}, {k, 2}];
poisson = dr.jmat.Transpose[dr];
bracket[f_, g_] := D[f, {vars}].poisson.D[g, {vars}];
fprobe = q p + w^2;
gprobe = q^2 + p w;
dpTerm = Table[D[fprobe, {vars}].D[poisson, vars[[i]]].D[gprobe, {vars}], {i, 3}];
hessian[f_] := D[f, {vars, 2}];
wick[f_, g_, c_] := Sum[hb^k c^k D[f, {x, k}] D[g, {x, k}]/k!, {k, 0, 8}];
normal[f_] := Sum[(hb dd/2)^k D[f, {x, 2 k}]/k!, {k, 0, 4}];
modeWick[f_, g_] := Sum[hb^k D[f, {az, k}] D[g, {bz, k}]/k!, {k, 0, 4}];
lag = ((D[ph[t, x], t]^2 - D[ph[t, x], x]^2 - mm^2 ph[t, x]^2)/2
  - lam gg[t, x] ph[t, x]^4/24);
hamDensity = ((D[ph[t, x], t]^2 + D[ph[t, x], x]^2 + mm^2 ph[t, x]^2)/2
  + lam gg[t, x] ph[t, x]^4/24);
energyResidual = (Expand[D[hamDensity, t] - D[D[ph[t, x], t] D[ph[t, x], x], x]
  - lam D[gg[t, x], t] ph[t, x]^4/24] /.
  Derivative[2, 0][ph][t, x] -> Derivative[0, 2][ph][t, x] - mm^2 ph[t, x]
    - lam gg[t, x] ph[t, x]^3/6);
weights = {u, v, 1 - u - v};
pairWeights = Flatten[Outer[Times, weights, weights]];
refinement = Flatten[Outer[Times, {u, 1 - u}, {v, 1 - v}]];
extract[f_, freq_, xx_] := FullSimplify[-Integrate[Sin[freq (xx - s)] f/freq, {s, 0, 1}]];
bulkSource = s (1 - s);
ef = extract[bulkSource, 2, t];
corrected = (bulkSource + D[cutProfile[s], {s, 2}] (ef /. t -> s)
  + 2 D[cutProfile[s], s] (D[ef, t] /. t -> s));

fPolar = c20 q^2 + c11 q p + c02 p^2;
polarMixed = ((fPolar /. {q -> q1 + q2, p -> p1 + p2}) -
  (fPolar /. {q -> q1, p -> p1}) - (fPolar /. {q -> q2, p -> p2}));
renormResidual = ((D[ssfun[zzfun[vv + eps ff]], eps] /. eps -> 0) -
  ssfun'[zzfun[vv]] zzfun'[vv] ff);

zeroResiduals = <|
  "cut_cosine" -> cutProjection[Cos[2 s]] - Cos[2 t],
  "cut_sine" -> cutProjection[Sin[2 s]/2] - Sin[2 t]/2,
  "corrected_source_causal_zero" -> extract[corrected, 2, t],
  "linear_BR" -> bmat.rmat - IdentityMatrix[2],
  "R_transpose_pairing" -> betamat.rmat + Transpose[rflat].omega,
  "B_transpose_pairing" -> Transpose[bflat].betamat + omega.bmat,
  "dual_right_inverse" -> rflat.bflat - IdentityMatrix[2],
  "sewn_poisson_matrix" -> rmat.rflat.Inverse[Transpose[betamat]] -
    rmat.jmat.Transpose[rmat],
  "nonlinear_BR" -> Take[rnonlinear, 2] - {q, p},
  "nonlinear_antisymmetry" -> poisson + Transpose[poisson],
  "nonlinear_jacobi" -> Flatten[Table[
    bracket[vars[[i]], bracket[vars[[j]], vars[[k]]]] +
    bracket[vars[[j]], bracket[vars[[k]], vars[[i]]]] +
    bracket[vars[[k]], bracket[vars[[i]], vars[[j]]]],
    {i, 3}, {j, 3}, {k, 3}]],
  "mismatch_is_casimir" -> Table[bracket[w - q^2, vars[[i]]], {i, 3}],
  "full_DP_gradient" -> D[bracket[fprobe, gprobe], {vars}] -
    (hessian[fprobe].poisson.D[gprobe, {vars}] -
     hessian[gprobe].poisson.D[fprobe, {vars}] + dpTerm),
  "physical_history_is_not_central" -> bracket[w, p] - 2 q,
  "wick_choice_intertwiner" -> normal[wick[x^3, x^2, cc]] -
    wick[normal[x^3], normal[x^2], cc + dd],
  "wick_associativity" -> wick[wick[x^2, x^3, cc], x, cc] -
    wick[x^2, wick[x^3, x, cc], cc],
  "all_mixed_chart_slots" -> Total[pairWeights] - 1,
  "common_partition_refinement" -> Total[refinement] - 1,
  "polarization_kernel_probe" -> polarMixed -
    (2 c20 q1 q2 + c11 (q1 p2 + q2 p1) + 2 c02 p1 p2),
  "free_energy_wick_weight" -> modeWick[om^r az bz, om^ss az bz] -
    om^(r + ss) az^2 bz^2 - hb om^(r + ss) az bz,
  "switched_energy_balance" -> energyResidual,
  "outward_action_response" -> D[lag, Derivative[0, 1][ph][t, x]] +
    D[ph[t, x], x],
  "finite_renormalization_chain_rule" -> renormResidual
|>;
results = Map[
  Function[res, And @@ (TrueQ[FullSimplify[#] == 0] & /@ Flatten[{res}])],
  zeroResiduals];
counterexamples = <|
  "omitted_DP_is_nonzero" ->
    TrueQ[Expand[dpTerm[[1]] - (-2 p q + 4 w^2)] == 0] &&
      TrueQ[(dpTerm[[1]] /. {q -> 1, p -> 1, w -> 0}) == -2],
  "diagonal_only_chart_split_is_wrong" ->
    TrueQ[(rho^2 + (1 - rho)^2 - 1 /. rho -> 1/2) == -1/2]
|>;
report = <|"zeroResidualGroups" -> results,
  "counterexampleGroups" -> counterexamples,
  "total" -> Length[results] + Length[counterexamples],
  "allPassed" -> And @@ Join[Values[results], Values[counterexamples]]|>;
Print[InputForm[report]];
If[! TrueQ[report["allPassed"]], Exit[1]];
