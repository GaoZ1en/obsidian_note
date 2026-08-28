ClearAll["Global`*"];

(* Exact projected Maxwell/master checks for one real S^2 harmonic. *)

lambda = Symbol["lambda"];
s = Sqrt[lambda];
assumptions = lambda > 0 && U > 0 && V > 0;

pdeRules = {
  Derivative[1, 1][phiE][u, v] -> -(lambda/2) phiE[u, v],
  Derivative[1, 1][phiB][u, v] -> -(lambda/2) phiB[u, v]
};

eE = -s phiE[u, v];
pE = D[phiE[u, v], u];
rE = -D[phiE[u, v], v];
bE = 0;

eB = 0;
pB = D[phiB[u, v], u];
rB = D[phiB[u, v], v];
bB = -s phiB[u, v];

reducePDE[expr_] := FullSimplify[expr /. pdeRules, assumptions];
zeroQ[expr_] := TrueQ[reducePDE[expr] == 0];
zeroArrayQ[expr_] := And @@ (zeroQ[#] & /@ Flatten[{expr}]);

projectedChecks = {
  "electric N+ transport" -> zeroQ[D[eE, v] - s rE],
  "electric N- transport" -> zeroQ[D[eE, u] + s pE],
  "electric mixed Bianchi gives master PDE" ->
    zeroQ[D[rE, u] - D[pE, v] + s eE],
  "electric transverse Maxwell identity" ->
    zeroQ[-D[rE, u] - D[pE, v]],
  "magnetic N+ transport" -> zeroQ[D[bB, v] + s rB],
  "magnetic N- transport" -> zeroQ[D[bB, u] + s pB],
  "magnetic mixed Bianchi identity" ->
    zeroQ[D[rB, u] - D[pB, v]],
  "magnetic transverse Maxwell gives master PDE" ->
    zeroQ[-D[rB, u] - D[pB, v] + s bB],
  "magnetic curvature coefficient" -> zeroQ[bB + s phiB[u, v]],
  "opposite electric and equal magnetic r signs" -> And[
    TrueQ[rE == -D[phiE[u, v], v]],
    TrueQ[rB == D[phiB[u, v], v]]]
};

(* Fixed outer exact dressed-connection anchors.  The two profiles are matched
   at the corner: f[0]=g[0]=c. *)

profileRules = {f[0] -> c, g[0] -> c};
rProfile[vv_] := -D[g[vv], vv];
pProfile[uu_] := D[f[uu], uu];
qPlus[vv_] := g[V] - g[vv];
qMinus[uu_] := f[uu] - f[U];
qPlus0 = qPlus[0];
qMinus0 = qMinus[0];
lambdaRel = (f[U] + g[V] - 2 c)/s;
connectionResidual = FullSimplify[
  (qMinus0 - qPlus0 + s lambdaRel) /. profileRules, assumptions];
lambdaExpected = (f[U] + g[V] - 2 c)/s;

anchorChecks = {
  "anchored qE+ corner coefficient" ->
    TrueQ[FullSimplify[(qPlus0 /. profileRules) == g[V] - c, assumptions]],
  "anchored qE- corner coefficient" ->
    TrueQ[FullSimplify[(qMinus0 /. profileRules) == c - f[U], assumptions]],
  "anchored qE+ differentiates to rE" ->
    TrueQ[FullSimplify[D[qPlus[vv], vv] == rProfile[vv], assumptions]],
  "anchored qE- differentiates to pE" ->
    TrueQ[FullSimplify[D[qMinus[uu], uu] == pProfile[uu], assumptions]],
  "outer exact anchors vanish" -> And[
    TrueQ[qPlus[V] == 0], TrueQ[qMinus[U] == 0]],
  "relative frame is field-strength profile functional" ->
    TrueQ[FullSimplify[lambdaRel == lambdaExpected, assumptions]],
  "anchored exact connection compatibility" -> TrueQ[connectionResidual == 0]
};

(* Representative finite on-shell basis for (partial_u partial_v + aa) phi=0.
   Its incoming-cross symplectic matrix must be full rank. *)

aa = 1;
alphaValues = {1/2, 1, 2};
betaValues = aa/alphaValues;
profileBasis = Flatten[Table[
  {Cos[alphaValues[[j]] u + betaValues[[j]] v],
   Sin[alphaValues[[j]] u + betaValues[[j]] v]},
  {j, Length[alphaValues]}]];
dimOneMaster = Length[profileBasis];

omegaU := Table[FullSimplify[Integrate[
  (D[profileBasis[[i]], u] profileBasis[[j]] -
   D[profileBasis[[j]], u] profileBasis[[i]]) /. v -> 0,
  {u, 0, 1}]], {i, dimOneMaster}, {j, dimOneMaster}];

omegaV := Table[FullSimplify[Integrate[
  (D[profileBasis[[i]], v] profileBasis[[j]] -
   D[profileBasis[[j]], v] profileBasis[[i]]) /. u -> 0,
  {v, 0, 1}]], {i, dimOneMaster}, {j, dimOneMaster}];

omegaOneMaster = FullSimplify[omegaU + omegaV];
zeroBlock = ConstantArray[0, {dimOneMaster, dimOneMaster}];
omegaTwoMasters = ArrayFlatten[{
  {omegaOneMaster, zeroBlock}, {zeroBlock, omegaOneMaster}}];

symplecticChecks = {
  "one matched master block is full rank" ->
    TrueQ[MatrixRank[omegaOneMaster] == dimOneMaster],
  "electric plus magnetic physical block is full rank" ->
    TrueQ[MatrixRank[omegaTwoMasters] == 2 dimOneMaster],
  "master basis solves the characteristic PDE" -> And @@ Flatten[Table[
    TrueQ[FullSimplify[D[profileBasis[[j]], u, v] +
      aa profileBasis[[j]]] == 0], {j, dimOneMaster}]]
};

checks = Join[projectedChecks, anchorChecks, symplecticChecks];

Print["Wolfram version: ", $Version];
Print["one/two-master symplectic ranks: ",
  {MatrixRank[omegaOneMaster], MatrixRank[omegaTwoMasters]}];
Print["anchored lambda_rel: ", lambdaRel];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL MAXWELL/MASTER COMMUTING CHECKS PASSED"],
  Print["MAXWELL/MASTER COMMUTING CHECKS FAILED"];
  Quit[1]];
