ClearAll["Global`*"];
checks = <||>; residuals = <||>;
add[label_, expr_] := Module[{r = FullSimplify[expr]},
  AssociateTo[checks, label -> And @@ (TrueQ[# == 0] & /@ Flatten[{r}])];
  AssociateTo[residuals, label -> ToString[r, InputForm]]];

(* SU(2): T_j=i sigma_j/2, pairing -2 Tr, C_2(j)=j(j+1). *)
X[f_] := Cos[th] f;
V[f_] := -I hb (Sin[th] D[f, th] + Cos[th] f/2);
W[f_] := -hb^2 D[f, {th, 2}];
cm[a_, b_, f_] := a[b[f]] - b[a[f]];
add["RadialXV", cm[X, V, f[th]] - I hb (X[X[f[th]]] - f[th])];
add["RadialXW", cm[X, W, f[th]] + 2 I hb V[f[th]]];
add["RadialVW", cm[V, W, f[th]] - I hb (X[W[f[th]]] + W[X[f[th]]] - hb^2 X[f[th]]/2)];
add["RadialQuadraticRelation", (1 - Cos[th]^2) W[f[th]] - V[V[f[th]]] - 2 I hb X[V[f[th]]] + hb^2 (1/2 + Cos[th]^2/4) f[th]];
add["HaarRadialConjugation", Sin[th] (-hb^2 (D[f[th]/Sin[th], {th, 2}] + 2 Cot[th] D[f[th]/Sin[th], th])) + hb^2 (D[f[th], {th, 2}] + f[th])];
add["CharacterCasimirN0to12", Table[TrigExpand[D[ChebyshevU[n, Cos[th]], {th, 2}] + 2 Cot[th] D[ChebyshevU[n, Cos[th]], th] + n (n + 2) ChebyshevU[n, Cos[th]]], {n, 0, 12}]];
pb[f_, g_] := D[f, th] D[g, pp] - D[f, pp] D[g, th];
add["ClassicalInvariantBrackets", {pb[Cos[th], Sin[th] pp] - (Cos[th]^2 - 1), pb[Cos[th], pp^2] + 2 Sin[th] pp, pb[Sin[th] pp, pp^2] - 2 Cos[th] pp^2}];

zz = Array[z, {2, 2}]; xs = Flatten[zz];
tb = Table[I PauliMatrix[j]/2, {j, 3}];
lv = Table[Flatten[zz.tb[[j]]], {j, 3}];
rv = Table[Flatten[tb[[j]].zz], {j, 3}];
dir[v_, f_] := Sum[v[[j]] D[f, xs[[j]]], {j, 4}];
XX[f_] := Tr[zz] f/2;
KK[f_] := -4 hb^2 Sum[dir[lv[[j]], dir[lv[[j]], f]], {j, 3}];
WW[f_] := KK[f] + hb^2 f;
VV[f_] := Expand[(KK[XX[f]] - XX[KK[f]])/(2 I hb)];
ZZ[f_] := -hb^2 Sum[dir[rv[[j]] - lv[[j]], dir[rv[[j]] - lv[[j]], f]], {j, 3}];
rel[f_] := WW[f] - XX[XX[WW[f]]] - VV[VV[f]] - 2 I hb XX[VV[f]] + hb^2 (f/2 + XX[XX[f]]/4);
mon = Join[{1}, xs, Flatten[Table[xs[[i]] xs[[j]], {i, 4}, {j, i, 4}]]];
add["FullGroupMomentCasimirIdentityAllSecondOrderCoefficients", Table[Last[PolynomialReduce[Expand[rel[f] - ZZ[f]], {Det[zz] - 1}, xs]], {f, mon}]];

(* CS: coordinate densities with dt wedge dx wedge dy positive. *)
aa = {at[t, x, y], ax[t, x, y], ay[t, x, y]}; coords = {t, x, y};
cs = Sum[Signature[{i, j, l}] aa[[i]] D[aa[[l]], coords[[j]]], {i, 3}, {j, 3}, {l, 3}];
canon = -(aa[[2]] D[aa[[3]], t] - aa[[3]] D[aa[[2]], t]) + 2 aa[[1]] (D[aa[[3]], x] - D[aa[[2]], y]);
div = D[aa[[1]] aa[[3]], x] - D[aa[[1]] aa[[2]], y];
add["CSCanonicalDecomposition", cs - canon + div];
add["CSOpenArcAntisymmetryDefect", D[al[s] be[s], s] - al[s] D[be[s], s] - be[s] D[al[s], s]];
add["CSUnrestrictedEndpointCounterexample", Integrate[s D[1, s] + D[s, s], {s, 0, 1}] - 1];
kap = s (1 - s) (a0 + a1 s + a2 s^2);
lam = s (1 - s) (b0 + b1 s + b2 s^2);
add["CSBasedArcCocycleAntisymmetric", Integrate[kap D[lam, s] + lam D[kap, s], {s, 0, 1}]];
add["CSDiagonalCutCocycleCancels", Integrate[kap D[lam, s], {s, 0, 1}] + Integrate[kap D[lam, s], {s, 1, 0}]];
(* Every boundary has two oppositely oriented arcs with joint endpoint values. *)
oo = alP + (alQ - alP) s + s (1 - s) (a0 + a1 s);
gg = alP + (alQ - alP) s + s (1 - s) (a2 + a3 s);
ob = beP + (beQ - beP) s + s (1 - s) (b0 + b1 s);
gb = beP + (beQ - beP) s + s (1 - s) (b2 + b3 s);
add["CSJointBoundaryEndpointCancellation", Integrate[oo D[ob, s] + ob D[oo, s], {s, 0, 1}] + Integrate[gg D[gb, s] + gb D[gg, s], {s, 1, 0}]];
add["CSBoundaryVariationAtArtificialFace", 2 q da - 2 (dq a + q da) + 2 a dq];
add["CSPhysicalChiralBoundaryVariation", 2 at0 da - 2 vel a da - 2 (at0 - vel a) da];
add["CSPresymplecticSeamCancellation", -lev (u1 dv1 - u2 dv2) /. {u2 -> u1, dv2 -> dv1}];
add["DoubledCSOrientationDescent", {{0, 1}, {1, 0}}.DiagonalMatrix[{lev, -lev}].{{0, 1}, {1, 0}} + DiagonalMatrix[{lev, -lev}]];

result = <|"Scope" -> "Exact algebraic residuals; functional and domain proofs are in the notes", "CheckCount" -> Length[checks], "AllChecksPassed" -> And @@ Values[checks], "Checks" -> checks, "Residuals" -> residuals|>;
Print[ExportString[result, "RawJSON"]];
If[!TrueQ[result["AllChecksPassed"]], Exit[1]];
