(* Independent exact checks; all conventions and definitions are local. *)
ClearAll["Global`*"];
outdir = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm";
report = Block[{$Messages = {}, $MessageList = {}},
  Module[{w, t, a, finiteCross, l2Cross, curvaturePartial, rows, checks,
    j, m, n, nn, r, z, p, p1, p2, p3, bb, cc, bDerivative,
    positiveBracket, aa, polynomialTail, result},
    w[z_] := z (z^2 - 1);
    t[m_, j_] := -w[m] (2 j + m)/w[j + m];
    a[m_, j_] := (j + 2 m)^2 w[j]/w[j + m];
    finiteCross = Factor[Sum[(m - j) (j + 2 m), {j, 2 - m, 1}]];
    l2Cross = Factor[Sum[(m - j)^2, {j, 2 - m, 1}]];
    polynomialTail = Expand[Sum[(nn - r)^2 + m (nn - r) - 2 m^2,
      {r, 0, m - 1}]];
    positiveBracket = Factor[
      (j + 2 n) (j + n + 2 m) - (j + 2 m) (j + m + 2 n)
      - (m - n) (-(j + 2 (m + n)))];
    (* p=g', p1=g'', p2=g''', p3=g''''.  b is evaluated at x=g^{-1}(y). *)
    bb = (1 - 2 (p2/p - 3 p1^2/(2 p^2)))/p^2 - 1;
    cc = -p3/p^4 + 6 p1 p2/p^5 - 6 p1^3/p^6 - p1/p^4;
    bDerivative = (D[bb, p] p1 + D[bb, p1] p2 + D[bb, p2] p3)/p;
    rows = Table[
      curvaturePartial = Sum[
        If[j >= m + 2, (j + m)^2 w[j - m]/w[j], 0]
        - (j + 2 m)^2 w[j]/w[j + m] + 2 m j,
        {j, 2, 80}];
      <|"m" -> m, "finiteCrossExact" -> Sum[(m - j) (j + 2 m), {j, 2 - m, 1}],
        "curvaturePartialN80Exact" -> curvaturePartial,
        "curvaturePartialN80Decimal" -> N[curvaturePartial, 20],
        "tailIdentityResidual" -> Together[curvaturePartial -
           (m 80 (80 + 1) - 2 m - Sum[a[m, j], {j, 80 - m + 1, 80}])],
        "predictedInfiniteTrace" -> 13 w[m]/6|>, {m, 1, 8}];
    checks = <|
      "LCMinusAmbientCoefficientResidual" -> Factor[
        -(j + 2 m) w[j]/w[j + m] - (m - j) - t[m, j]],
      "CriticalMetricDefectResidual" -> Factor[
        (m - j) w[j + m] + (j + 2 m) w[j] - w[m] (2 j + m)],
      "FiniteCrossTraceResidual" -> Factor[finiteCross - 13 w[m]/6],
      "PositiveConnectionBracketResidual" -> positiveBracket,
      "SchwarzianZerothCoefficientResidual" -> Factor[cc - bDerivative/2],
      "TailPolynomialResidual" -> Factor[polynomialTail -
        (m nn (nn + 1) - (13 m^3 - m)/6)]|>;
    result = <|
      "KernelVersion" -> $Version,
      "Assumptions" -> "m,n,j integers; m>=1, j>=2; rational identities evaluated away from denominator zeros",
      "Checks" -> checks,
      "AllResidualsZero" -> And @@ (TrueQ[# == 0] & /@ Values[checks]),
      "TraceCrossBlock" -> finiteCross,
      "L2ProjectionCurvatureNegativeOf" -> l2Cross,
      "aLargeJ" -> Series[a[m, j], {j, Infinity, 2}],
      "tLargeJ" -> Series[t[m, j], {j, Infinity, 3}],
      "CyclicityBoundaryLargeJ" -> Series[-(j + 2 m) t[m, j], {j, Infinity, 2}],
      "TailPolynomial" -> polynomialTail,
      "FiniteExactCurvatureChecks" -> rows|>;
    <|"Result" -> result,
      "Failed" -> !FreeQ[result, $Failed | $Aborted],
      "UnevaluatedSumOrLimit" -> !FreeQ[result, _Sum | _Limit],
      "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
  ]
];
Export[FileNameJoin[{outdir, "exact_checks.wxf"}], report, "WXF"];
Export[FileNameJoin[{outdir, "exact_checks.txt"}], ToString[report, InputForm, PageWidth -> 100], "Text"];
<|"OutputDirectory" -> outdir, "AllResidualsZero" -> report["Result"]["AllResidualsZero"],
  "Failed" -> report["Failed"], "UnevaluatedSumOrLimit" -> report["UnevaluatedSumOrLimit"],
  "Messages" -> report["Messages"]|>
