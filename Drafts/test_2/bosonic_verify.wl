(* Self-contained exact 11d checks; no packages or external files.
   Oriented orthonormal frame 1..11, factors 123,456,789, flat 10,11.
   Base area pairs are closed; fiber derivatives specified by c0,cp,cm.
   This reduced exterior algebra acts only on invariant forms containing
   each base pair together, not on arbitrary individual base one-forms. *)
ClearAll["Global`*"];
add[f_] := Select[({First[First[#]], Total[Last /@ #]} & /@
      GatherBy[f, First]), Last[#] =!= 0 &];
wedge[f_, h_] := add[Flatten[Table[
     If[DuplicateFreeQ[Join[a[[1]], b[[1]]]],
      {{Sort[Join[a[[1]], b[[1]]]],
        Signature[Join[a[[1]], b[[1]]]] a[[2]] b[[2]]}}, {}],
     {a, f}, {b, h}], 2]];
deriv[f_] := add[Flatten[Table[Flatten[Table[
       If[MemberQ[{3, 6, 9}, a[[1, j]]],
        With[{ii = a[[1, j]], coef = Switch[a[[1, j]],
           3, c0, 6, cp, 9, cm]},
         wedge[{{Take[a[[1]], j - 1], (-1)^(j - 1) a[[2]]}},
          wedge[{{{ii - 2, ii - 1}, coef}},
           {{Drop[a[[1]], j], 1}}]]], {}],
       {j, Length[a[[1]]]}], 1], {a, f}], 1]];
star[f_] := Table[{Complement[Range[11], a[[1]]],
    a[[2]] Signature[Join[a[[1]], Complement[Range[11], a[[1]]]]]
     Times @@ eta[[a[[1]]]]}, {a, f}];
Do[
 eps = If[mode == "space", 1, -1];
 eta = If[mode == "space", {-1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 1, -1, 1, 1, 1, 1, 1, 1, 1, 1}];
 norm[z_] := Simplify[Expand[z] /. q^2 -> 1 - eps t^2 /. f0^2 -> fp^2 + fm^2];
 Do[
  If[family == "equal",
   flux = {{{1, 2, 3, 10}, f0}, {{4, 5, 6, 10}, fp},
     {{7, 8, 9, 10}, fm}, {{1, 2, 6, 9}, eps t f0},
     {{3, 4, 5, 9}, -eps t fp}, {{3, 6, 7, 8}, eps t fm}};
   crules = {c0 -> q f0, cp -> q fp, cm -> q fm}; qm = q,
   flux = {{{1, 2, 3, 10}, f0}, {{4, 5, 6, 10}, fp},
     {{7, 8, 9, 10}, q fm}, {{1, 2, 6, 11}, eps t f0},
     {{3, 4, 5, 11}, -eps t fp}, {{1, 2, 4, 5}, t fm}};
   crules = {c0 -> q f0, cp -> q fp, cm -> fm}; qm = 1];
  f2 = 24 Sum[Last[z]^2 Times @@ eta[[First[z]]], {z, flux}];
  stress = Table[(6 Sum[If[MemberQ[First[z], j],
          Last[z]^2 Times @@ eta[[Complement[First[z], {j}]]], 0],
        {z, flux}] - eta[[j]] f2/12)/12, {j, 11}];
  ricci = Join[-f0^2 {1 - q^2/2, 1 - q^2/2, q^2/2} eta[[1 ;; 3]],
    fp^2 {1 - q^2/2, 1 - q^2/2, q^2/2},
    fm^2 {1 - qm^2/2, 1 - qm^2/2, qm^2/2}, {0, 0}];
  einstein = norm /@ (stress - ricci);
  bianchi = ({First[#], norm[Last[#] /. crules]} & /@ deriv[flux]);
  maxwell = ({First[#], norm[Last[#] /. crules]} & /@
     add[Join[deriv[star[flux]], ({First[#], Last[#]/2} & /@ wedge[flux, flux])]]);
  overlap = Max[Length[Intersection[First[#1], First[#2]]] & @@@ Subsets[flux, {2}]];
  Print[mode, " / ", family];
  Print["F2 = ", norm[f2]];
  Print["Einstein diagonal residuals = ", einstein];
  Print["Offdiagonal zero (maximum distinct-term index overlap <3): ", overlap < 3];
  Print["dF residuals = ", bianchi];
  Print["Maxwell + CS residuals = ", maxwell];
  Print["ALL PASS = ", And @@ Join[(# === 0 & /@ einstein),
     (# === 0 & /@ (Last /@ bianchi)), (# === 0 & /@ (Last /@ maxwell)), {overlap < 3}]];
  , {family, {"equal", "unequal"}}];
 , {mode, {"space", "time"}}];

(* Independent coordinate-Christoffel verification of the three Ricci formulas. *)
computeRicci[gg_, coords_] := Module[{iv, ga, rr},
 iv = Simplify[Inverse[gg]];
 ga = Table[Simplify[Sum[iv[[i, l]] (D[gg[[l, k]], coords[[j]]] +
       D[gg[[l, j]], coords[[k]]] - D[gg[[j, k]], coords[[l]]])/2,
       {l, 3}]], {i, 3}, {j, 3}, {k, 3}];
 rr = Table[Simplify[Sum[D[ga[[k, i, j]], coords[[k]]] -
       D[ga[[k, i, k]], coords[[j]]] + Sum[ga[[k, k, l]] ga[[l, i, j]] -
        ga[[k, j, l]] ga[[l, i, k]], {l, 3}], {k, 3}]], {i, 3}, {j, 3}]; rr];
Do[
 Switch[mode,
  "sphere", coords = {r, p, z}; base = a^2 DiagonalMatrix[{1, Sin[r]^2, 0}];
  v = {0, -a Cos[r], a}; sgn = 1; chi = 1,
  "space", coords = {t, r, z}; base = a^2 DiagonalMatrix[{-Cosh[r]^2, 1, 0}];
  v = {-a Sinh[r], 0, a}; sgn = 1; chi = -1,
  "time", coords = {r, p, t}; base = a^2 DiagonalMatrix[{1, Sinh[r]^2, 0}];
  v = {0, a Cosh[r], a}; sgn = -1; chi = -1];
 fiber = sgn q^2 Outer[Times, v, v]; metric = base + fiber;
 target = chi/a^2 ((1 - q^2/2) base + q^2 fiber/2);
 Print[mode, " coordinate Ricci residual = ",
  FullSimplify[computeRicci[metric, coords] - target,
   Assumptions -> {a > 0, q > 0, r > 0}]],
 {mode, {"sphere", "space", "time"}}];
