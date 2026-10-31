(* Exact source for xAct core calculation. Definitions and assumptions are self-contained. *)
DefManifold[M3, 3, {a, b, c, d, f, p, q, r, s}];
DefMetric[1, gg[-a, -b], DD, PrintAs -> "g"];
DefTensor[cc[-a, -b], M3, PrintAs -> "C"];
DefTensor[kk[-a, -b, -c], M3, Antisymmetric[{-a, -b}], PrintAs -> "K"];
report = Block[{$MessageList = {}},
  rules = MakeRule[{kk[-a, -b, -c], epsilongg[-a, -b, d] cc[-d, -c]}, MetricOn -> All, ContractMetrics -> True];
  quad = kk[a, -c, -a] kk[c, b, -b] - kk[a, -c, -b] kk[c, b, -a];
  target = cc[a, -b] cc[b, -a] - cc[a, -a] cc[b, -b];
  substituted = quad /. rules;
  canonical = ToCanonical[ContractMetric[Expand[substituted]]];
  residual = ToCanonical[ContractMetric[Expand[canonical - target]]];
  derivativeRaw = DD[-a][kk[a, b, -b]] - DD[-b][kk[a, b, -a]];
  derivativeResidual = ToCanonical[ContractMetric[derivativeRaw - 2 DD[-a][kk[a, b, -b]]]];
  <|"KernelVersion" -> $Version, "Dimension" -> 3, "MetricSignature" -> 1,
    "Dualization" -> "K_ab_c = epsilon_abd C_dc", "Rules" -> rules,
    "CurvatureQuadratic" -> quad, "Substituted" -> substituted,
    "CanonicalQuadratic" -> canonical, "Target" -> target,
    "QuadraticResidual" -> residual, "DerivativeResidual" -> derivativeResidual,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract-result.wxf", report, "WXF"];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/01-xact-abstract-result.txt", ToString[report, InputForm, PageWidth -> 110], "Text"];
report
