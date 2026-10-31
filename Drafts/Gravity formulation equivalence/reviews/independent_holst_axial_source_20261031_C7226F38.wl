(* Supplemental independent exact axial-source calculation.
   Run the companion auxiliary script first, then Get this file in a fresh kernel.
   It imports the exact 24x24 matrices, not any candidate source solution.
   Source: L_s=s K^{IJ}_m epsilon_{IJhm} J^h eta^{mm} vol,
   full I,J,h,m sums, fixed real J^I in the K variation; no Dirac convention assumed.
*)
ClearAll["Global`*"];
sourceFile = $InputFileName;
outputDir = DirectoryName[sourceFile];
inputPath = FileNameJoin[{outputDir, "independent_holst_auxiliary_20261031_C7226F38_output.wxf"}];
report = Block[{$Messages = {}, $MessageList = {}},
  base = Import[inputPath, "WXF"];
  H0 = base["H0"]; H1 = base["H1"]; star24 = base["star24"];
  labels = base["Summary"]["Variables ordered as (I,J,A), I<J"];
  eta = {-1, 1, 1, 1}; inds = Range[0, 3]; vars = Array[z, 24]; jvec = Array[j, 4];
  eps[a_, b_, c_, d_] := Signature[{a, b, c, d}];
  idx[i_, jj_, a_] := First@FirstPosition[labels, {i, jj, a}];
  kk[i_, jj_, a_] := Which[i == jj, 0, i < jj, vars[[idx[i, jj, a]]], True, -vars[[idx[jj, i, a]]]];
  qSourceOverS = Expand[Sum[kk[i, jj, m] eps[i, jj, h, m] jvec[[h + 1]] eta[[m + 1]],
      {i, inds}, {jj, inds}, {h, inds}, {m, inds}]];
  v = Table[Coefficient[qSourceOverS, x], {x, vars}];
  zEC = -kappa s LinearSolve[H0, v];
  zBeta = Factor /@ ((IdentityMatrix[24] + r star24).zEC/(1 + r^2));
  H = H0 + r H1;
  axial = Table[With[{i = lab[[1]], jj = lab[[2]], a = lab[[3]]},
      Sum[eta[[i + 1]] eta[[jj + 1]] eps[i, jj, a, h] jvec[[h + 1]], {h, inds}]], {lab, labels}];
  vector = Table[With[{i = lab[[1]], jj = lab[[2]], a = lab[[3]]},
      KroneckerDelta[i, a] jvec[[jj + 1]] - KroneckerDelta[jj, a] jvec[[i + 1]]], {lab, labels}];
  ansatzEquations = Thread[Flatten[Table[Coefficient[Expand[Together[zBeta[[a]] - ca axial[[a]] - cv vector[[a]]]], jh],
      {a, 24}, {jh, jvec}]] == 0];
  solvedCoefficients = Solve[ansatzEquations, {ca, cv}];
  inducedEC = Factor[(zEC.H0.zEC)/(2 kappa) + s v.zEC];
  inducedBeta = Factor[(zBeta.H.zBeta)/(2 kappa) + s v.zBeta];
  jSquared = Expand[Sum[eta[[a]] jvec[[a]]^2, {a, 4}]];
  checks = <|
    "Imported base checks pass" -> base["Summary"]["All checks passed"],
    "Full 24-component stationarity residual" -> (Together[H.zBeta/kappa + s v] === ConstantArray[0, 24]),
    "Covariant source-solution reconstruction" -> (Together[zBeta - (ca axial + cv vector /. First[solvedCoefficients])] === ConstantArray[0, 24]),
    "Induced term equals one-half source on stationary K" -> (Together[inducedBeta - s v.zBeta/2] === 0),
    "Induced interaction is Lorentz-scalar J squared" -> FreeQ[Cancel[inducedBeta/jSquared], j],
    "Induced interaction relative to EC" -> (Cancel[inducedBeta/inducedEC] === 1/(1 + r^2)),
    "EC limit r=0" -> (Together[(zBeta /. r -> 0) - zEC] === ConstantArray[0, 24]),
    "Response to arbitrary source is nonzero" -> (zEC =!= ConstantArray[0, 24])
  |>;
  summary = <|
    "Source normalization" -> "L_s = s Sum_{I,J,h,m} K^{IJ}_m epsilon_{IJhm} J^h eta^{mm} vol (full I,J sum)",
    "Parameter map" -> "r=1/beta; generic 1+r^2 != 0; kappa != 0",
    "J squared" -> jSquared,
    "Covariant stationary K template" -> "K^{IJ}_A = ca epsilon^{IJ}{}_{Ah} J^h + cv (delta^I_A J^J-delta^J_A J^I)",
    "Stationary coefficients" -> solvedCoefficients,
    "EC induced coefficient multiplying J squared vol" -> Cancel[inducedEC/jSquared],
    "Holst induced coefficient multiplying J squared vol" -> Cancel[inducedBeta/jSquared],
    "Induced ratio Holst/EC" -> Cancel[inducedBeta/inducedEC],
    "Checks" -> checks,
    "All checks passed" -> And @@ Values[checks],
    "Messages" -> (ToString[#, InputForm] & /@ $MessageList)
  |>;
  <|"Summary" -> summary, "Source polynomial over s" -> qSourceOverS, "Source vector" -> v,
    "Stationary EC K" -> zEC, "Stationary Holst K" -> zBeta,
    "Induced EC term" -> inducedEC, "Induced Holst term" -> inducedBeta|>
];
outputBase = FileNameJoin[{outputDir, "independent_holst_axial_source_20261031_C7226F38_output"}];
If[FileExistsQ[outputBase <> ".txt"] || FileExistsQ[outputBase <> ".wxf"], outputBase = outputBase <> "_" <> CreateUUID[]];
textPath = Export[outputBase <> ".txt", ToString[report["Summary"], InputForm, PageWidth -> 100], "Text"];
wxfPath = Export[outputBase <> ".wxf", report, "WXF"];
<|"Summary" -> report["Summary"], "Text output" -> textPath, "Full exact output" -> wxfPath|>
