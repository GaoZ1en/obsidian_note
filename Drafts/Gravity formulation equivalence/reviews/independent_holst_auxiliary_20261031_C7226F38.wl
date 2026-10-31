(* Independent exact component calculation for the Lorentzian 4D EC-Holst auxiliary connection.
   No external packages. Run with Get["/absolute/path/to/this/file.wl"].
   eta=(-,+,+,+), epsilon_0123=+1, vol=e^0 wedge e^1 wedge e^2 wedge e^3.
   r=1/beta. Set kappa=1 and the coefficient of vol=1 when forming H.
   K^{IJ}=K^{IJ}_A e^A, I<J independent, pairs then A ordered lexicographically.
   All sums below are exact; no floating-point tolerance or simplification assumptions.
*)
ClearAll["Global`*"];
sourceFile = $InputFileName;
report = Block[{$Messages = {}, $MessageList = {}},
  eta = {-1, 1, 1, 1};
  inds = Range[0, 3];
  pairs = Subsets[inds, {2}];
  triples = Subsets[inds, {3}];
  labels = Flatten[Table[{p[[1]], p[[2]], a}, {p, pairs}, {a, inds}], 1];
  vars = Array[z, 24];
  eps[a_, b_, c_, d_] := Signature[{a, b, c, d}];
  idx[i_, j_, a_] := First@FirstPosition[labels, {i, j, a}];
  kk[i_, j_, a_] := Which[i == j, 0, i < j, vars[[idx[i, j, a]]], True, -vars[[idx[j, i, a]]]];
  qEC = Expand[Total[Table[
      With[{i = p[[1]], j = p[[2]], k = p[[3]], l = p[[4]]},
        Signature[p] Sum[eps[i, j, a, b] eta[[m + 1]] kk[k, m, a] kk[m, l, b],
          {m, inds}, {a, inds}, {b, inds}]/4],
      {p, Permutations[inds]}]]];
  qHolst = Expand[Sum[
      eps[i, j, a, b] eta[[i + 1]] eta[[j + 1]] eta[[m + 1]] kk[i, m, a] kk[m, j, b]/2,
      {i, inds}, {j, inds}, {m, inds}, {a, inds}, {b, inds}]];
  qECcontracted = Expand[Sum[eta[[m + 1]] (kk[i, m, i] kk[m, j, j] - kk[i, m, j] kk[m, j, i])/2,
      {i, inds}, {j, inds}, {m, inds}]];
  torsion[i_, a_, b_] := eta[[b + 1]] kk[i, b, a] - eta[[a + 1]] kk[i, a, b];
  qTT = Expand[Sum[eta[[i + 1]] eps[p[[1]], p[[2]], q[[1]], q[[2]]]
      torsion[i, p[[1]], p[[2]]] torsion[i, q[[1]], q[[2]]]/2,
      {i, inds}, {p, pairs}, {q, pairs}]];
  H0 = Table[D[qEC, x, y], {x, vars}, {y, vars}];
  H1 = Table[D[qHolst, x, y], {x, vars}, {y, vars}];
  H = H0 + r H1;
  star6 = Table[eta[[p[[1]] + 1]] eta[[p[[2]] + 1]] eps[p[[1]], p[[2]], q[[1]], q[[2]]],
      {p, pairs}, {q, pairs}];
  star24 = KroneckerProduct[star6, IdentityMatrix[4]];
  J = LinearSolve[H0, H1];
  torsionVector = Flatten[Table[torsion[i, p[[1]], p[[2]]], {i, inds}, {p, pairs}]];
  torsionMatrix = Table[Coefficient[f, x], {f, torsionVector}, {x, vars}];
  (* Coefficients of D Sigma^{ij}=T^i wedge e^j - T^j wedge e^i on ordered triples. *)
  te[i_, j_, abc_] := Total[Table[
      If[Sort[Join[p, {j}]] === abc, Signature[Join[p, {j}]] torsion[i, p[[1]], p[[2]]], 0],
      {p, pairs}]];
  dsVector = Flatten[Table[te[p[[1]], p[[2]], abc] - te[p[[2]], p[[1]], abc],
      {p, pairs}, {abc, triples}]];
  dsMatrix = Table[Coefficient[f, x], {f, dsVector}, {x, vars}];
  zero24 = ConstantArray[0, {24, 24}];
  determinant = Factor[Det[H]];
  determinant0 = Det[H0];
  eigenvalues0 = Sort[Eigenvalues[H0]];
  checks = <|
    "Epsilon convention" -> (eps[0, 1, 2, 3] === 1),
    "EC wedge equals contracted scalar" -> (Expand[qEC - qECcontracted] === 0),
    "Holst K quadratic equals T wedge T/2" -> (Expand[qHolst - qTT] === 0),
    "Both Hessians symmetric" -> (H0 === Transpose[H0] && H1 === Transpose[H1]),
    "Hessian reconstructs the full quadratic polynomial" -> (Expand[(vars.H.vars)/2 - qEC - r qHolst] === 0),
    "Internal star squares to minus identity" -> (star24.star24 === -IdentityMatrix[24]),
    "Relative Hessian is minus internal star" -> (J === -star24),
    "Relative Hessian squares to minus identity" -> (J.J === -IdentityMatrix[24]),
    "D Sigma intertwines internal star" -> (dsMatrix.star24 === star24.dsMatrix),
    "K to torsion is invertible" -> (MatrixRank[torsionMatrix] === 24),
    "K to D Sigma is invertible" -> (MatrixRank[dsMatrix] === 24),
    "Determinant relative to EC" -> (Cancel[determinant/determinant0] === (1 + r^2)^12),
    "beta=+i has rank 12" -> (MatrixRank[H /. r -> -I] === 12),
    "beta=-i has rank 12" -> (MatrixRank[H /. r -> I] === 12),
    "beta=+i annihilates star=+i" -> (Simplify[(H /. r -> -I).(IdentityMatrix[24] - I star24)] === zero24),
    "beta=-i annihilates star=-i" -> (Simplify[(H /. r -> I).(IdentityMatrix[24] + I star24)] === zero24)
  |>;
  summary = <|
    "Dimension" -> 4,
    "Signature" -> eta,
    "Variables ordered as (I,J,A), I<J" -> labels,
    "Normalization" -> "Q_beta = vol/(2 kappa) z^T (H0+r H1) z; r=1/beta",
    "Checks" -> checks,
    "All checks passed" -> And @@ Values[checks],
    "det H0" -> determinant0,
    "det (H0+r H1)" -> determinant,
    "Relative determinant" -> Factor[determinant/determinant0],
    "H0 eigenvalues with multiplicity" -> Tally[eigenvalues0],
    "H0 inertia (positive,negative,zero)" -> {Count[eigenvalues0, _?Positive], Count[eigenvalues0, _?Negative], Count[eigenvalues0, 0]},
    "det K-to-torsion matrix" -> Det[torsionMatrix],
    "det K-to-D-Sigma matrix" -> Det[dsMatrix],
    "rank at r=+i,-i" -> {MatrixRank[H /. r -> I], MatrixRank[H /. r -> -I]},
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>;
  <|"Summary" -> summary, "qEC" -> qEC, "qHolst" -> qHolst, "H0" -> H0, "H1" -> H1,
    "star24" -> star24, "TorsionMatrix" -> torsionMatrix, "DSigmaMatrix" -> dsMatrix|>
];
outputDir = DirectoryName[sourceFile];
outputBase = FileNameJoin[{outputDir, "independent_holst_auxiliary_20261031_C7226F38_output"}];
If[FileExistsQ[outputBase <> ".txt"] || FileExistsQ[outputBase <> ".wxf"], outputBase = outputBase <> "_" <> CreateUUID[]];
textPath = Export[outputBase <> ".txt", ToString[report["Summary"], InputForm, PageWidth -> 100], "Text"];
wxfPath = Export[outputBase <> ".wxf", report, "WXF"];
<|"Summary" -> report["Summary"], "Text output" -> textPath, "Full exact output" -> wxfPath|>
