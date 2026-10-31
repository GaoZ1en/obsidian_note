(* Scoped convention check: R f(theta)=-f(-theta), t and y unchanged. *)
ClearAll[f1, f2, f3, j0, j1, j2, k0, k1, k2, m, n, p1, p2, s1, s2, kk, alpha, omegaDensity, schwarzian, result];
alpha[a_, b_, h0_, h1_] := b h1/a^2 - a h0;
omegaDensity[a_, h0_, h1_, h2_, r0_, r1_, r2_] := (h1 r2 - r1 h2)/a^2 - (h0 r1 - r0 h1);
schwarzian[a_, b_, c_] := c/a - 3 b^2/(2 a^2);
result = Block[{$Messages = {}, $MessageList = {}},
  <|
    "Kernel" -> $Version,
    "Assumptions" -> "Real f1>0; all jets real; s2>0; spatial circle integrals use the positive coordinate interval on each side.",
    "AlphaSignResidual" -> Simplify[alpha[f1, -f2, -j0, j1] + alpha[f1, f2, j0, j1]],
    "TwoFormSignResidual" -> Simplify[omegaDensity[f1, -j0, j1, -j2, -k0, k1, -k2] + omegaDensity[f1, j0, j1, j2, k0, k1, k2]],
    "SchwarzianReflectionResidual" -> Simplify[schwarzian[f1, -f2, f3] - schwarzian[f1, f2, f3]],
    "TorusSpectrumReflectionResidual" -> Simplify[((m - kk (p1 - I p2))/p2 /. {kk -> -n, p1 -> -s1, p2 -> s2}) - (m - n (s1 + I s2))/s2],
    "FugacityExponentReflectionResidual" -> Simplify[(-2 Pi I (p1 - I p2) /. {p1 -> -s1, p2 -> s2}) - 2 Pi I (s1 + I s2)],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cj-v3-independent-source-audit-20261031.Y0qQd7/spatial-reflection-checks-output.txt", ToString[result, InputForm, PageWidth -> 110], "Text"];
result
