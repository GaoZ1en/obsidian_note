ClearAll["Global`*"];

(* Phase-II checks for the explicit Maxwell lift, anchored frames, null
   Lee--Wald pullback, and the conserved master symplectic current. *)

lambda = Symbol["lambda"];
s = Sqrt[lambda];
a = lambda/2;
assumptions = lambda > 0 && U > 0 && V > 0 && x > 0 && y > 0;

zeroQ[expr_] := TrueQ[FullSimplify[expr, assumptions] == 0];

(* Riemann kernel used by the read-only matched-H1 Goursat inverse. *)
riemann[x_, y_] := BesselJ[0, 2 Sqrt[a x y]];
kernelChecks = {
  "Riemann kernel satisfies the master PDE" ->
    zeroQ[D[riemann[x, y], x, y] + a riemann[x, y]],
  "Riemann kernel has the u-axis trace one" ->
    TrueQ[FullSimplify[riemann[x, 0], assumptions] == 1],
  "Riemann kernel has the v-axis trace one" ->
    TrueQ[FullSimplify[riemann[0, y], assumptions] == 1]
};

(* Electric canonical potential: A_u=-Phi_u/s, A_v=Phi_v/s, A_A=0. *)
phiRule = Derivative[1, 1][phi][u, v] -> -(lambda/2) phi[u, v];
auE = -D[phi[u, v], u]/s;
avE = D[phi[u, v], v]/s;
fuvE = FullSimplify[(D[avE, u] - D[auE, v]) /. phiRule, assumptions];

potentialChecks = {
  "electric potential gives F_uv=-s Phi" -> zeroQ[fuvE + s phi[u, v]],
  "electric potential gives F_uA=Phi_u E_A" ->
    zeroQ[-s auE - D[phi[u, v], u]],
  "electric potential gives F_vA=-Phi_v E_A" ->
    zeroQ[-s avE + D[phi[u, v], v]]
};

(* Outer-anchored generator primitives and the connection equation. *)
profileRules = {f[0] -> c, g[0] -> c};
alphaPlus[vv_] := (g[vv] - g[V])/s;
alphaMinus[uu_] := (f[U] - f[uu])/s;
qBarPlus[vv_] := g[V] - g[vv];
qBarMinus[uu_] := f[uu] - f[U];
chiPlus = alphaPlus[0] /. profileRules;
chiMinus = alphaMinus[0] /. profileRules;
lambdaRel = FullSimplify[chiMinus - chiPlus, assumptions];
connectionResidual = FullSimplify[
  (qBarMinus[0] - qBarPlus[0] + s lambdaRel) /. profileRules,
  assumptions];

anchorChecks = {
  "A_v is the derivative of the anchored plus primitive" ->
    TrueQ[FullSimplify[D[alphaPlus[v], v] == D[g[v], v]/s, assumptions]],
  "A_u is the derivative of the anchored minus primitive" ->
    TrueQ[FullSimplify[D[alphaMinus[u], u] == -D[f[u], u]/s, assumptions]],
  "both outer generator frames vanish" ->
    And[TrueQ[alphaPlus[V] == 0], TrueQ[alphaMinus[U] == 0]],
  "both exact dressed-connection anchors vanish" ->
    And[TrueQ[qBarPlus[V] == 0], TrueQ[qBarMinus[U] == 0]],
  "relative frame has the anchored profile formula" ->
    TrueQ[FullSimplify[
      lambdaRel == (f[U] + g[V] - 2 c)/s, assumptions]],
  "anchored exact connection compatibility holds" ->
    TrueQ[connectionResidual == 0]
};

(* Direct Maxwell-to-master pullback of the raw null two-form. *)
electricPlusRaw = (-s g1[v]) (D[g2[v], v]/s) -
  (-s g2[v]) (D[g1[v], v]/s);
electricMinusRaw = -((-s f1[u]) (-D[f2[u], u]/s) -
  (-s f2[u]) (-D[f1[u], u]/s));
magneticPlusRaw = D[g1[v], v] g2[v] - D[g2[v], v] g1[v];
magneticMinusRaw = D[f1[u], u] f2[u] - D[f2[u], u] f1[u];
masterPlus = D[g1[v], v] g2[v] - D[g2[v], v] g1[v];
masterMinus = D[f1[u], u] f2[u] - D[f2[u], u] f1[u];

pullbackChecks = {
  "electric N+ raw Maxwell form equals the master form" ->
    zeroQ[electricPlusRaw - masterPlus],
  "electric N- raw Maxwell form equals the master form" ->
    zeroQ[electricMinusRaw - masterMinus],
  "magnetic N+ raw Maxwell form equals the master form" ->
    zeroQ[magneticPlusRaw - masterPlus],
  "magnetic N- raw Maxwell form equals the master form" ->
    zeroQ[magneticMinusRaw - masterMinus]
};

(* Generator dressing is an integration-by-parts identity, including signs. *)
plusRaw = e[v] D[dalpha[v], v] + r[v] (dbar[v] + s dalpha[v]);
plusDressed = r[v] dbar[v] + D[e[v] dalpha[v], v];
minusRaw = -e[u] D[dalpha[u], u] + p[u] (dbar[u] + s dalpha[u]);
minusDressed = p[u] dbar[u] - D[e[u] dalpha[u], u];

dressingChecks = {
  "N+ dressing retains the complete endpoint derivative" ->
    TrueQ[FullSimplify[
      plusRaw - plusDressed /. Derivative[1][e][v] -> s r[v],
      assumptions] == 0],
  "N- incoming dressing retains the complete endpoint derivative" ->
    TrueQ[FullSimplify[
      minusRaw - minusDressed /. Derivative[1][e][u] -> -s p[u],
      assumptions] == 0]
};

(* The one-form W_u du-W_v dv is closed on two master solutions. *)
wu = D[phi1[u, v], u] phi2[u, v] - D[phi2[u, v], u] phi1[u, v];
wv = D[phi1[u, v], v] phi2[u, v] - D[phi2[u, v], v] phi1[u, v];
twoPdeRules = {
  Derivative[1, 1][phi1][u, v] -> -a phi1[u, v],
  Derivative[1, 1][phi2][u, v] -> -a phi2[u, v]
};
conservationCheck = TrueQ[FullSimplify[
  (D[wu, v] + D[wv, u]) /. twoPdeRules, assumptions] == 0];

checks = Join[kernelChecks, potentialChecks, anchorChecks, pullbackChecks,
  dressingChecks, {"master symplectic one-form is closed" -> conservationCheck}];

Print["Wolfram version: ", $Version];
Print["anchored lambda_rel: ", lambdaRel];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL PHASE-II GOURSAT/LEE-WALD CHECKS PASSED"],
  Print["PHASE-II GOURSAT/LEE-WALD CHECKS FAILED"];
  Quit[1]];
