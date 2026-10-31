(* Exact source: characteristic-polynomial convention and Lorentz-measure factors. *)
report = Block[{$MessageList = {}},
  hdiag = DiagonalMatrix[{4 z, -2 z, -2 z, -2 z, -2 z, -2 z, 2 z, 2 z, 2 z}];
  hm = {{h1, h4, h5}, {h4, h2, h6}, {h5, h6, h3}};
  lm = {{0, l1, l2}, {-l1, 0, l3}, {-l2, -l3, 0}};
  em = {{2, 1, 1}, {1, 2, 0}, {0, 1, 2}};
  de = Inverse[Transpose[em]].hm/2 + lm.em;
  vv = {h1, h2, h3, h4, h5, h6, l1, l2, l3};
  frameJacobian = Det[Table[D[Flatten[de][[i]], vv[[j]]], {i, 1, 9}, {j, 1, 9}]];
  <|"WolframKernelVersion" -> System`$Version,
    "CharacteristicPolynomialFunction" -> Factor[CharacteristicPolynomial[hdiag, lam]],
    "ExplicitDetHminusLambdaI" -> Factor[Det[hdiag - lam IdentityMatrix[9]]],
    "ExplicitDetLambdaIminusH" -> Factor[Det[lam IdentityMatrix[9] - hdiag]],
    "LorentzGaugeChiEquals2A_FP" -> Det[2 IdentityMatrix[3]],
    "CanonicalLorentzToFrobeniusJacobian" -> Det[Sqrt[2] IdentityMatrix[3]],
    "SymmetricFrameToMetricInverseJacobian" -> 2^-6,
    "QuotientCanonicalLorentzFactor" -> FullSimplify[2^(3/2) 2^-6],
    "NondiagonalCoframe" -> em, "CoframeDeterminant" -> Det[em],
    "MetricVariationResidual" -> Simplify[Transpose[de].em + Transpose[em].de - hm],
    "NondiagonalSignedCoordinateJacobian" -> frameJacobian,
    "NondiagonalAbsoluteJacobianResidual" -> Abs[frameJacobian] - 1/(8 Det[em]),
    "NormalizedGaussianFromBare" -> FullSimplify[(I Pi^(9/2)/(Sqrt[2] z^(9/2)))/(2 Pi)^(9/2), z > 0],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions-result.wxf", report, "WXF"];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/06-wolfram-conventions-result.txt", ToString[report, InputForm, PageWidth -> 110], "Text"];
report
