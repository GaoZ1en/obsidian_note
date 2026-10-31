(* Runnable with wolframscript -file ward-check.wl; also executed through
   the xAct core MCP kernel. This is an explicit-coordinate tensor check,
   not an additional independent xAct abstract-index proof. *)
ClearAll[w, v, eps, mu, tt, tx, tb, h, hb, c, lin];
coords = {w, v};
metric = {{0, 1/2}, {1/2, eps mu[w, v]}};
inverseMetric = Inverse[metric];
lin[expr_] := Simplify[Coefficient[Normal[Series[expr, {eps, 0, 1}]], eps, 1]];
christoffel = Table[Simplify[Sum[inverseMetric[[aa, dd]]
    (D[metric[[dd, bb]], coords[[cc]]] + D[metric[[dd, cc]], coords[[bb]]]
      - D[metric[[bb, cc]], coords[[dd]]])/2, {dd, 2}]],
    {aa, 2}, {bb, 2}, {cc, 2}];
ricci = Table[Simplify[Sum[
    D[christoffel[[aa, bb, dd]], coords[[aa]]]
    - D[christoffel[[aa, bb, aa]], coords[[dd]]]
    + Sum[christoffel[[aa, aa, ee]] christoffel[[ee, bb, dd]]
        - christoffel[[aa, dd, ee]] christoffel[[ee, bb, aa]], {ee, 2}],
    {aa, 2}]], {bb, 2}, {dd, 2}];
scalarCurvature = Simplify[Sum[inverseMetric[[aa, bb]] ricci[[aa, bb]], {aa, 2}, {bb, 2}]];
stress = {{h + eps tt[w, v], eps tx[w, v]},
          {eps tx[w, v], hb + eps tb[w, v]}}/(2 Pi);
mixedStress = Simplify[inverseMetric.stress];
traceStress = Tr[mixedStress];
divergence = Table[Simplify[Sum[D[mixedStress[[aa, bb]], coords[[aa]]]
    + Sum[christoffel[[aa, aa, dd]] mixedStress[[dd, bb]]
        - christoffel[[dd, aa, bb]] mixedStress[[aa, dd]], {dd, 2}],
    {aa, 2}]], {bb, 2}];
traceSolution = h mu[w, v] - c D[mu[w, v], {w, 2}]/12;
traceResidual = Simplify[lin[traceStress + c scalarCurvature/(24 Pi)] /. tx[w,v] -> traceSolution];
wardComputed = Simplify[Pi lin[divergence[[1]]] /. Derivative[1,0][tx][w,v] -> D[traceSolution,w]];
wardExpected = D[tt[w,v],v] - 2 h D[mu[w,v],w] - c D[mu[w,v],{w,3}]/12;
report = <|
  "Metric" -> metric,
  "InverseMetric" -> inverseMetric,
  "LinearScalarCurvature" -> lin[scalarCurvature],
  "LinearTraceStress" -> lin[traceStress],
  "LinearConservation_w_timesPi" -> Simplify[Pi lin[divergence[[1]]]],
  "TraceEquationSolution_2Pi_t_wbar" -> traceSolution,
  "WardComputed" -> wardComputed,
  "Residuals" -> <|
    "Determinant" -> Simplify[Det[metric] + 1/4],
    "ScalarCurvature" -> Simplify[lin[scalarCurvature] - 4 D[mu[w,v],{w,2}]],
    "TraceAnomaly" -> traceResidual,
    "DiffeomorphismPlusWeylWard" -> Simplify[wardComputed-wardExpected]
  |>
|>;
root = DirectoryName[$InputFileName];
Export[FileNameJoin[{root,"ward-raw.wxf"}],report,"WXF"];
Export[FileNameJoin[{root,"ward-raw.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
Print[report];
report
