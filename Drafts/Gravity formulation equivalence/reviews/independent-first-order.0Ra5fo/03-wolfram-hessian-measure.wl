(* Exact source for finite-dimensional algebra and Gaussian checks. z=gamma*physical cell volume >0. *)
ClearAll[cc, x, z, u, h, aa, dd, tt, lam];
report = Block[{$MessageList = {}},
  cm = Array[cc, {3, 3}]; vars = Flatten[cm];
  eps[i_, j_, k_] := Signature[{i, j, k}];
  kval[a_, b_, j_] := Sum[eps[a, b, d] cm[[d, j]], {d, 1, 3}];
  directCurvature = Expand[Sum[eps[a, b, c] kval[b, d, j] kval[d, c, k] eps[a, j, k], {a, 1, 3}, {b, 1, 3}, {c, 1, 3}, {d, 1, 3}, {j, 1, 3}, {k, 1, 3}]];
  qform = Expand[Tr[cm]^2 - Tr[cm.cm]];
  unit[i_, j_] := Normal[SparseArray[{{i, j} -> 1}, {3, 3}]];
  basis = {IdentityMatrix[3]/Sqrt[3], DiagonalMatrix[{1, -1, 0}]/Sqrt[2], DiagonalMatrix[{1, 1, -2}]/Sqrt[6], (unit[1, 2]+unit[2, 1])/Sqrt[2], (unit[1, 3]+unit[3, 1])/Sqrt[2], (unit[2, 3]+unit[3, 2])/Sqrt[2], (unit[1, 2]-unit[2, 1])/Sqrt[2], (unit[1, 3]-unit[3, 1])/Sqrt[2], (unit[2, 3]-unit[3, 2])/Sqrt[2]};
  transform = Transpose[Flatten /@ basis];
  hessian = Table[D[z qform, vars[[i]], vars[[j]]], {i, 1, 9}, {j, 1, 9}];
  diagonalHessian = Simplify[Transpose[transform].hessian.transform];
  xx = Array[x, 9]; cb = Sum[xx[[i]] basis[[i]], {i, 1, 9}];
  qInBasis = Expand[Tr[cb]^2 - Tr[cb.cb]];
  positiveGaussian = Integrate[Exp[-z u^2], {u, -Infinity, Infinity}, Assumptions -> z > 0];
  traceGaussian = Integrate[Exp[-2 z u^2], {u, -Infinity, Infinity}, Assumptions -> z > 0];
  rotatedGaussian = FullSimplify[I^5 traceGaussian positiveGaussian^8, Assumptions -> z > 0];
  (* Deliberate real-contour divergence test. Preserve any message and unevaluated result. *)
  realNegativeGaussian = Integrate[Exp[z u^2], {u, -Infinity, Infinity}, Assumptions -> z > 0];
  hm = {{h[1], h[4], h[5]}, {h[4], h[2], h[6]}, {h[5], h[6], h[3]}};
  am = {{0, aa[1], aa[2]}, {-aa[1], 0, aa[3]}, {-aa[2], -aa[3], 0}};
  xfrom = hm/2 + am;
  measureVars = Join[Array[h, 6], Array[aa, 3]];
  frameMetricGaugeJacobian = Det[Table[D[Flatten[xfrom][[i]], measureVars[[j]]], {i, 1, 9}, {j, 1, 9}]];
  em = {{dd[1], tt[1], tt[2]}, {0, dd[2], tt[3]}, {0, 0, dd[3]}};
  independentSymmetric[m_] := {m[[1, 1]], m[[2, 2]], m[[3, 3]], m[[1, 2]], m[[1, 3]], m[[2, 3]]};
  congruence = independentSymmetric[Transpose[em].hm.em];
  congruenceJacobian = Factor[Det[Table[D[congruence[[i]], h[j]], {i, 1, 6}, {j, 1, 6}]]];
  coframeLinear = Flatten[cm.em];
  coframeJacobian = Factor[Det[Table[D[coframeLinear[[i]], vars[[j]]], {i, 1, 9}, {j, 1, 9}]]];
  dualMatrix = {{0, 0, 1}, {0, -1, 0}, {1, 0, 0}};
  connectionLinear = Flatten[dualMatrix.cm.em];
  connectionJacobian = Factor[Det[Table[D[connectionLinear[[i]], vars[[j]]], {i, 1, 9}, {j, 1, 9}]]];
  <|"WolframKernelVersion" -> System`$Version, "Assumptions" -> "3D Euclidean; epsilon123=1; z=gamma*v>0; row-major C; SO(3) norm (1/2)K_abj K_abj",
    "DirectCurvatureCoefficient" -> directCurvature, "CurvatureResidual" -> Expand[directCurvature + qform],
    "QuadraticForm" -> qform, "OrthonormalBasis" -> basis,
    "BasisGramMatrix" -> Simplify[Transpose[transform].transform], "BasisDeterminant" -> Simplify[Det[transform]],
    "HessianRowMajor" -> hessian, "HessianInOrthonormalBasis" -> diagonalHessian,
    "HessianDeterminant" -> Factor[Det[hessian]], "HessianEigenvalues" -> Eigenvalues[hessian],
    "HessianCharacteristicPolynomial" -> Factor[CharacteristicPolynomial[hessian, lam]],
    "QuadraticFormInBasis" -> qInBasis,
    "PositiveGaussian" -> positiveGaussian, "TraceGaussian" -> traceGaussian,
    "UpperRotatedFiveModeGaussian" -> rotatedGaussian, "RealNegativeModeIntegral" -> realNegativeGaussian,
    "FrameMetricGaugeSignedJacobianAtIdentity" -> frameMetricGaugeJacobian,
    "MetricCongruenceJacobian" -> congruenceJacobian,
    "CoframeCoordinateJacobian" -> coframeJacobian,
    "ConnectionCoordinateJacobian" -> connectionJacobian,
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>
];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure-result.wxf", report, "WXF"];
Export["/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-first-order.0Ra5fo/03-wolfram-hessian-measure-result.txt", ToString[report, InputForm, PageWidth -> 110], "Text"];
report
