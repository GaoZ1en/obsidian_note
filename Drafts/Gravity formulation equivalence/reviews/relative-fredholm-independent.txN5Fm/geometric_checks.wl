ClearAll["Global`*"];
outdir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm";
report = Block[{$Messages = {}, $MessageList = {}},
  Module[{x, f, g, u, p, schwarzian, b, lhs, rhs, transformResidual,
    m, n, r, j, w, cocycleResidual, l2Correction, hIdentity, result},
    w[j_] := j (j^2 - 1);
    p = g'[x];
    schwarzian = g'''[x]/p - 3 g''[x]^2/(2 p^2);
    b = (1 - 2 schwarzian)/p^2 - 1;
    u = f[g[x]]/p;
    lhs = I (D[u, {x, 3}] + D[u, x])/p^2;
    rhs = I (f'''[g[x]] + f'[g[x]]) +
      I (b f'[g[x]] + D[b, x] f[g[x]]/(2 p));
    transformResidual = Together[lhs - rhs];
    cocycleResidual = Expand[(m - n) w[m + n] +
      (n - (-m - n)) w[-m] + ((-m - n) - m) w[-n]];
    l2Correction = Factor[Sum[(m - j)^2 + (m - j) (j + 2 m), {j, 2 - m, 1}]];
    (* For a positive shifted trace-class T_r, the boundary term in [A_-r,T_r]. *)
    hIdentity = Factor[
      (j + 2 r) w[r] (2 j + r)/w[j + r] -
      (2 w[r]/j + (r^2 - r^4)/j^2)];
    result = <|
      "KernelVersion" -> $Version,
      "FullBolSchwarzianTransformationResidual" -> transformResidual,
      "VirasoroJacobiResidual" -> cocycleResidual,
      "L2dTraceB" -> l2Correction,
      "L2dTraceBResidual" -> Factor[l2Correction - 9 m^2 (m - 1)/2],
      "UnboundedCyclicityBoundaryRemainder" -> hIdentity,
      "UnboundedCyclicityBoundaryRemainderOrder" -> Series[hIdentity, {j, Infinity, 3}],
      "FirstModeLCDefect" -> Factor[-(j + 2) w[j]/w[j + 1] - (1 - j)],
      "SecondModeCurvatureAtJ2" -> Together[-(2 + 4)^2 w[2]/w[4] + 8],
      "m2CrossBlockTrace" -> Sum[(2 - j) (j + 4), {j, 0, 1}]|>;
    <|"Result" -> result, "Failed" -> !FreeQ[result, $Failed | $Aborted],
      "UnevaluatedSumOrLimit" -> !FreeQ[result, _Sum | _Limit],
      "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
  ]
];
Export[FileNameJoin[{outdir, "geometric_checks.wxf"}], report, "WXF"];
Export[FileNameJoin[{outdir, "geometric_checks.txt"}], ToString[report, InputForm, PageWidth -> 100], "Text"];
report
