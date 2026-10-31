(* Exact source: xCoba component check on the thermal hyperbolic solid-torus collar r>0. *)
DefManifold[MC, 3, {a, b, c, d, f}];
DefChart[CH, MC, {1, 2, 3}, {rr[], tau[], phi[]}];
DefMetric[1, gg[-a, -b], DD, PrintAs -> "g"];
DefTensor[nn[a], MC];
report = Block[{$MessageList = {}},
  MetricInBasis[gg, -CH, DiagonalMatrix[{1, Cosh[rr[]]^2, Sinh[rr[]]^2}]];
  MetricCompute[gg, CH, All];
  ComponentValue[nn[{1, CH}], 1];
  ComponentValue[nn[{2, CH}], 0];
  ComponentValue[nn[{3, CH}], 0];
  scalar = FullSimplify[ToValues[TraceBasisDummy[ToBasis[CH][RicciScalarDD[]]]], rr[] > 0];
  normalDivergence = FullSimplify[ToValues[TraceBasisDummy[ToBasis[CH][DD[-a][nn[a]]]]], rr[] > 0];
  thetaPerCoordinateArea = 2 Sqrt[2] Exp[-3 rr[]/2] Cosh[rr[]] Sinh[rr[]];
  tailQuadraticIntegral = Integrate[Exp[-3 u] Cosh[u] Sinh[u], {u, lower, Infinity}, Assumptions -> lower > 0];
  <|"WolframKernelVersion" -> System`$Version, "xCobaVersion" -> xAct`xCoba`$Version,
    "Metric" -> DiagonalMatrix[{1, Cosh[rr[]]^2, Sinh[rr[]]^2}],
    "ScalarCurvature" -> scalar, "CurvatureResidual" -> FullSimplify[scalar + 6, rr[] > 0],
    "OutwardNormalDivergence" -> normalDivergence,
    "ExtrinsicCurvatureResidual" -> FullSimplify[normalDivergence - Tanh[rr[]] - Coth[rr[]], rr[] > 0],
    "AntisymmetricMode" -> "C12=exp(-3r/2)/sqrt(2), C21=-C12, all others zero in e1=cosh(r)dtau, e2=sinh(r)dphi, e3=dr",
    "QuadraticTailPerCoordinateArea" -> FullSimplify[tailQuadraticIntegral, lower > 0],
    "BoundaryThetaPerCoordinateArea" -> thetaPerCoordinateArea,
    "BoundaryThetaLargeR" -> Limit[thetaPerCoordinateArea, rr[] -> Infinity],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic-result.wxf", report, "WXF"];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/05-xact-components-hyperbolic-result.txt", ToString[report, InputForm, PageWidth -> 110], "Text"];
report
