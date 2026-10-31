(* Exact source: xAct core, covariant wall identity without choosing the normal. *)
DefManifold[M3, 3, {a, b, c, d, f, p, q, r, s}];
DefMetric[1, gg[-a, -b], DD, PrintAs -> "g"];
DefTensor[nn[a], M3]; DefTensor[uu[a], M3]; DefTensor[vv[a], M3];
DefTensor[pp[a], M3]; DefTensor[qq[a], M3];
report = Block[{$MessageList = {}},
  bulk = epsilongg[-a, -b, -c] (uu[a] epsilongg[b, c, d] qq[-d] - vv[a] epsilongg[b, c, d] pp[-d]);
  wall = 2 epsilongg[-a, -b, -c] nn[a] (uu[b] epsilongg[c, d, f] qq[-f] - vv[b] epsilongg[c, d, f] pp[-f]) nn[-d];
  expectedRemainder = 2 ((1 - nn[a] nn[-a]) (uu[b] qq[-b] - vv[b] pp[-b]) + nn[a] uu[-a] nn[b] qq[-b] - nn[a] vv[-a] nn[b] pp[-b]);
  residual = ToCanonical[ContractMetric[Expand[bulk - wall - expectedRemainder]]];
  <|"WolframKernelVersion" -> System`$Version,
    "xTensorVersion" -> xAct`xTensor`$Version,
    "BulkTwoFormOnTangentVectors" -> ToCanonical[ContractMetric[bulk]],
    "TwiceWallFormOnTangentVectors" -> ToCanonical[ContractMetric[wall]],
    "RemainderBeforeNormalConstraints" -> ToCanonical[ContractMetric[expectedRemainder]],
    "UnconstrainedIdentityResidual" -> residual,
    "Conditions" -> "n.n=1, n.u=0, n.v=0; p,q arbitrary dualized K on the two wall tangent vectors",
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall-result.wxf", report, "WXF"];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/02-xact-wall-result.txt", ToString[report, InputForm, PageWidth -> 110], "Text"];
report
