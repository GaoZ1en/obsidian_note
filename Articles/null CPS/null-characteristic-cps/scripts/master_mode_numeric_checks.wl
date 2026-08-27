ClearAll["Global`*"];

(* Numerical reconstruction of one exact stationary Goursat mode. *)
lam = 2.;
aa = lam/2.;
alpha = 2.;
beta = aa/alpha;

riemann[x_?NumericQ, y_?NumericQ] :=
  BesselJ[0, 2 Sqrt[aa x y]];

f[u_?NumericQ] := Exp[-I alpha u];
g[v_?NumericQ] := Exp[-I beta v];
fp[u_?NumericQ] := -I alpha Exp[-I alpha u];
gp[v_?NumericQ] := -I beta Exp[-I beta v];

reconstructed[u_?NumericQ, v_?NumericQ] :=
  riemann[u, v] +
  NIntegrate[
    fp[s] riemann[u - s, v], {s, 0, u},
    Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0},
    AccuracyGoal -> 11, PrecisionGoal -> 11
  ] +
  NIntegrate[
    gp[r] riemann[u, v - r], {r, 0, v},
    Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0},
    AccuracyGoal -> 11, PrecisionGoal -> 11
  ];

exactMode[u_?NumericQ, v_?NumericQ] :=
  Exp[-I (alpha u + beta v)];

reconstructionPoints = {{.2, .3}, {.7, .4}, {1.1, .9}};
reconstructionErrors =
  Abs[reconstructed[#[[1]], #[[2]]] - exactMode[#[[1]], #[[2]]]] & /@
    reconstructionPoints;

(* Truncated mode sum versus the exact Pauli--Jordan Bessel kernel. *)
modeIntegral[cut_?NumericQ, tau_?NumericQ, xi_?NumericQ] :=
  NIntegrate[
    Cos[k xi] Sin[Sqrt[k^2 + lam] tau]/
      (Pi Sqrt[k^2 + lam]),
    {k, 0, cut},
    Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0},
    MaxRecursion -> 30,
    AccuracyGoal -> 8,
    PrecisionGoal -> 8
  ];

timelikePoint = {1.4, .3};
timelikeTarget =
  1/2 BesselJ[0, Sqrt[lam] Sqrt[timelikePoint[[1]]^2 - timelikePoint[[2]]^2]];
timelikeApproximation =
  modeIntegral[100., timelikePoint[[1]], timelikePoint[[2]]];
timelikeError = Abs[timelikeApproximation - timelikeTarget];

spacelikePoint = {.5, 1.2};
spacelikeApproximation =
  modeIntegral[100., spacelikePoint[[1]], spacelikePoint[[2]]];
spacelikeError = Abs[spacelikeApproximation];

checks = {
  "stationary Goursat reconstruction" ->
    TrueQ[Max[reconstructionErrors] < 10^-8],
  "timelike truncated commutator" ->
    TrueQ[timelikeError < 2 10^-3],
  "spacelike truncated causal vanishing" ->
    TrueQ[spacelikeError < 2 10^-3]
};

Print["Wolfram version: ", $Version];
Print["reconstruction errors: ", reconstructionErrors];
Print["timelike approximation/target/error: ",
  {timelikeApproximation, timelikeTarget, timelikeError}];
Print["spacelike approximation/error: ",
  {spacelikeApproximation, spacelikeError}];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL MASTER MODE NUMERICAL CHECKS PASSED"],
  Print["MASTER MODE NUMERICAL CHECKS FAILED"];
  Quit[1]
];
