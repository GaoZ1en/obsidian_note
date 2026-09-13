(* Massive scalar, t=x cut, physical Dirichlet walls at x=0,L.
   P=dt^2-dx^2+m^2; E=G^A-G^R; spacetime measure dt dx=du dv/2.
   Numerical sewing retains the delta terms at every wavefront.
   Run with wolframscript -file scalar_null_gluing_checks.wl. *)
ClearAll["Global`*"];

lag = D[phi[u, v], u] D[phi[u, v], v] - m^2 phi[u, v]^2/4;
first = D[lag /. phi -> Function[{u, v}, phi[u, v] + e psi[u, v]], e] /. e -> 0;
div = D[D[phi[u, v], v] psi[u, v], u] + D[D[phi[u, v], u] psi[u, v], v];
wave[f_] := 4 D[f, u, v] + m^2 f;
greenDiv = D[aa[u, v] D[bb[u, v], v] - bb[u, v] D[aa[u, v], v], u] +
  D[aa[u, v] D[bb[u, v], u] - bb[u, v] D[aa[u, v], u], v];
riemann = BesselJ[0, m Sqrt[u v]];
energy = (pt^2 + px^2 + m^2 q^2)/2;

exact = <|
  "actionVariation" -> Simplify[first + wave[phi[u, v]] psi[u, v]/2 - div],
  "greenIdentity" -> Simplify[(aa[u, v] wave[bb[u, v]] - bb[u, v] wave[aa[u, v]])/2 - greenDiv],
  "nullEnergyFlux" -> Simplify[((energy + pt px)/2 /. pt -> 2 qv - px) - (qv^2 + m^2 q^2/4)],
  "riemannPDE" -> FullSimplify[wave[riemann], Assumptions -> u > 0 && v > 0 && m > 0],
  "firstCharacteristicValue" -> (Limit[riemann, u -> 0, Direction -> "FromAbove"] - 1),
  "secondCharacteristicValue" -> (Limit[riemann, v -> 0, Direction -> "FromAbove"] - 1),
  "laplaceRiemann" -> FullSimplify[
    LaplaceTransform[BesselJ[0, m Sqrt[a v]], v, p] - Exp[-m^2 a/(4 p)]/p,
    Assumptions -> a > 0 && m > 0 && p > 0],
  "laplaceComposition" -> FullSimplify[
    Exp[-m^2 a/(4 p)] Exp[-m^2 b/(4 p)] - Exp[-m^2 (a + b)/(4 p)]],
  "massCoefficients0to8" -> Table[
    FullSimplify[Sum[a^k b^(n-k)/(k! (n-k)!), {k, 0, n}] - (a+b)^n/n!], {n, 0, 8}],
  "timeSliceCommutator" -> Simplify[
    D[chi[t] psi[t, x], {t, 2}] - D[chi[t] psi[t, x], {x, 2}] + m^2 chi[t] psi[t, x]
    - chi[t] (D[psi[t, x], {t, 2}] - D[psi[t, x], {x, 2}] + m^2 psi[t, x])
    - chi''[t] psi[t, x] - 2 chi'[t] D[psi[t, x], t]],
  "nullModeSymplecticDensity" -> FullSimplify[
    D[Sin[k v/2] Cos[w v/2], v] Sin[k v/2] Sin[w v/2]
    - D[Sin[k v/2] Sin[w v/2], v] Sin[k v/2] Cos[w v/2] + w Sin[k v/2]^2/2]
|>;

(* Q(v) terms: c/2 theta(v-lo) J0(m sqrt(a(v-lo))).
   B(v) terms: c/2 theta(hi-v) J0(m sqrt(a(hi-v))).
   Only a>0 contributes. The image range is causally exhaustive for
   the four specified examples; its bound is checked below. *)
rr[a_, w_, mm_] := BesselJ[0, mm Sqrt[a w]];
drr[a_, w_, mm_] := If[Abs[w] < 10^-35, -mm^2 a/4,
  -mm Sqrt[a] BesselJ[1, mm Sqrt[a w]]/(2 Sqrt[w])];

qTerms[t_, x_, ll_] := Select[Flatten[Table[{
  {1, x-t-2 n ll, t+x-2 n ll},
  {-1, -t-x-2 n ll, t-x-2 n ll}}, {n, -8, 8}], 1],
  #[[2]] > 0 && #[[3]] < 2 ll &];
bTerms[t_, x_, ll_] := Select[Flatten[Table[{
  {1, t-x-2 n ll, t+x+2 n ll},
  {-1, t+x+2 n ll, t-x-2 n ll}}, {n, -8, 8}], 1],
  #[[2]] > 0 && #[[3]] > 0 &];

pair[{cb_, ab_, hi_}, {cq_, aq_, lo_}, mm_, ll_] := Module[
  {left = Max[0, lo], right = Min[2 ll, hi], contacts = 0, integ = 0},
  If[right <= left, Return[0]];
  (* Delta from Q' at lo, and minus the delta from B' at hi. *)
  If[0 < lo < 2 ll && lo < hi, contacts += rr[ab, hi-lo, mm]];
  If[0 < hi < 2 ll && lo < hi, contacts += rr[aq, hi-lo, mm]];
  integ = NIntegrate[
    rr[ab, hi-v, mm] drr[aq, v-lo, mm]
      + drr[ab, hi-v, mm] rr[aq, v-lo, mm],
    {v, left, right}, WorkingPrecision -> 45, AccuracyGoal -> 32, PrecisionGoal -> 32];
  cb cq (contacts + integ)/4
];

glue[tp_, xp_, tz_, xz_, mm_, ll_] := Total[Flatten[Table[
  pair[bt, qt, mm, ll], {bt, bTerms[tp, xp, ll]}, {qt, qTerms[tz, xz, ll]}]]];
line[tau_, d_, mm_] := If[tau > Abs[d], BesselJ[0, mm Sqrt[tau^2-d^2]]/2, 0];
global[tp_, xp_, tz_, xz_, mm_, ll_] := Sum[
  line[tp-tz, xp-xz+2 n ll, mm] - line[tp-tz, xp+xz+2 n ll, mm], {n, -8, 8}];

cases = {
  {"direct crossing", 7/5, 9/10, 1/5, 11/10, 1, 2},
  {"first reflections at both walls", 2, 7/10, -1/5, 6/5, 1, 2},
  {"multiple reflections", 29/5, 4/5, -2/5, 13/10, 3/2, 2},
  {"spacelike crossing", 11/10, 1, 7/10, 9/5, 1, 2}
};

(* For |n|>=9, every image distance is at least 16 L.
   This exceeds all source-to-point and seam-to-point time separations. *)
supportChecks = Table[With[{tp = c[[2]], tz = c[[4]], ll = c[[7]]},
  TrueQ[16 ll > Max[tp-tz, ll-tz, tp]]], {c, cases}];
numeric = Table[With[{g = glue @@ Rest[c], h = N[global @@ Rest[c], 40]},
  <|"case" -> First[c], "gluedRetarded" -> g, "globalRetarded" -> h,
    "peierls" -> -h, "absoluteError" -> Abs[g-h], "passed" -> TrueQ[Abs[g-h] < 10^-28]|>
], {c, cases}];

exactValues = <|
  "directValue" -> Simplify[(global @@ Rest[cases[[1]]]) - BesselJ[0, Sqrt[35]/5]/2],
  "reflectedValue" -> Simplify[(global @@ Rest[cases[[2]]]) -
    (BesselJ[0, Sqrt[459]/10] - BesselJ[0, Sqrt[123]/10] - BesselJ[0, Sqrt[43]/10])/2]
|>;
allPassed = And[
  AllTrue[Flatten[Values[exact]], TrueQ[# == 0] &],
  AllTrue[Values[exactValues], TrueQ[# == 0] &],
  And @@ supportChecks, And @@ Lookup[numeric, "passed"]];
report = <|"exactResiduals" -> exact, "exactExampleResiduals" -> exactValues,
  "imageSupportChecks" -> supportChecks, "numeric" -> numeric, "allPassed" -> allPassed|>;
Print[InputForm[report]];
If[!TrueQ[allPassed], Exit[1]];
