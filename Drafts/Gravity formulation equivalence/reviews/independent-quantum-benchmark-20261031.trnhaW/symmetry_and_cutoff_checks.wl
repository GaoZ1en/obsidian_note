ClearAll["Global`*"];
outputDirectory = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-benchmark-20261031.trnhaW";
report = Block[{$Messages = {}, $MessageList = {}},
  dx[g_] := I z D[g, z];
  average[g_] := Coefficient[Expand[g], z, 0];
  u = A (z^2 - z^-2)/(2 I) + B (z^4 - z^-4)/(2 I);
  h2 = Expand[C/24 average[dx[dx[u]]^2 - dx[u]^2]];
  h3 = Expand[-C/12 average[dx[u] dx[dx[u]]^2]];
  bracket[v_, w_, cutoff_Integer] := Expand[Sum[Coefficient[v, ell[i]] Coefficient[w, ell[j]] (i - j) If[Abs[i + j] <= cutoff, ell[i + j], 0], {i, -cutoff, cutoff}, {j, -cutoff, cutoff}]];
  jacobi[cutoff_] := bracket[ell[cutoff], bracket[ell[1], ell[-1], cutoff], cutoff] + bracket[ell[1], bracket[ell[-1], ell[cutoff], cutoff], cutoff] + bracket[ell[-1], bracket[ell[cutoff], ell[1], cutoff], cutoff];
  truncatedJacobi = Table[{cutoff, Expand[jacobi[cutoff]]}, {cutoff, 2, 8}];
  fullJacobi = Expand[2 n + (n + 1) (n - 2) - (n - 1) (n + 2)];
  level4Gram = {{5 c, 3 c}, {3 c, c (c + 8)/2}};
  gramDeterminant = Factor[Det[level4Gram]];
  descendantTailBound[rho_, cutoff_] := rho^(cutoff + 1)/((1 - rho) (1 - rho^(cutoff + 1)));
  beta = N[7/10, 80];
  logProduct[cutoff_] := Sum[-Log[1 - Exp[-beta n]], {n, 2, cutoff}];
  tailActual = logProduct[200] - logProduct[20];
  tailBound = descendantTailBound[Exp[-beta], 20];
  heatEnergy[eps_] := (Exp[-eps]/(1 - Exp[-eps])^2 - Exp[-eps])/2;
  heatNumerics = Table[{N[eps, 40], N[heatEnergy[eps] - 1/(2 eps^2), 40], N[heatEnergy[eps] - 1/(2 eps^2) + 13/24, 40]}, {eps, {1/10, 1/20, 1/50, 1/100}}];
  checks = <|
    "NonlinearTwoModeHessian" -> TrueQ[Expand[h2 - C (A^2/4 + 5 B^2)] == 0],
    "NonzeroCubicInteraction" -> TrueQ[Expand[h3 + 4 C A^2 B] == 0],
    "ProjectedWittJacobiFailureN2to8" -> And @@ Table[TrueQ[Expand[truncatedJacobi[[cutoff - 1, 2]] - (cutoff - 1) (cutoff + 2) ell[cutoff]] == 0], {cutoff, 2, 8}],
    "FullWittJacobiCancellation" -> TrueQ[fullJacobi == 0],
    "VacuumGramLevel4Determinant" -> TrueQ[Expand[gramDeterminant - c^2 (5 c + 22)/2] == 0],
    "FiniteDescendantTailBound" -> TrueQ[0 < tailActual < tailBound]
  |>;
  <|"Purpose" -> "Nonlinear-cutoff and full-symmetry counterchecks", "KernelVersion" -> $Version, "Checks" -> checks, "AllChecksPassed" -> (Length[checks] == 6 && AllTrue[Values[checks], TrueQ] && $MessageList == {}), "Expressions" -> <|"TwoModeQuadraticHamiltonian" -> h2, "TwoModeCubicHamiltonian" -> h3, "ProjectedWittJacobi" -> truncatedJacobi, "FullWittJacobi" -> fullJacobi, "VacuumLevel4Gram" -> level4Gram, "VacuumLevel4GramDeterminant" -> gramDeterminant, "ExampleC2Gram" -> (level4Gram /. c -> 2), "ExampleC25Gram" -> (level4Gram /. c -> 25), "DescendantLogTailN20to200Beta0.7" -> tailActual, "DescendantAnalyticTailBoundN20Beta0.7" -> tailBound, "HeatSubtractedNumericsColumnsEpsilonEnergyResidualFromZeta" -> heatNumerics|>, "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export[FileNameJoin[{outputDirectory, "symmetry_and_cutoff_results.wxf"}], report, "WXF"];
Export[FileNameJoin[{outputDirectory, "symmetry_and_cutoff_results.txt"}], StringRiffle[KeyValueMap[Function[{key, value}, ToString[key] <> "\n" <> ToString[value, InputForm, PageWidth -> 100] <> "\n"], report], "\n"], "Text"];
<|"AllChecksPassed" -> report["AllChecksPassed"], "Checks" -> report["Checks"], "Messages" -> report["Messages"], "OutputDirectory" -> outputDirectory|>
