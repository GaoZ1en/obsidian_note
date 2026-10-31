(* Standalone exact checks for real Lorentzian nonchiral Plebanski theory.
   No parent reports are read. All independent antisymmetric pairs below
   use the order {01,02,03,12,13,23}; full-index equations retain their factors 2/4.
   Run in a fresh Wolfram kernel: Get["absolute/path/to/checks.wl"]. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  checks = <||>;
  addCheck[name_, value_] := AssociateTo[checks, name ->
    <|"Value" -> value, "Status" -> Which[value === True, "passed", value === False, "failed", True, "non_boolean"]|>];
  zeroQ[x_] := And @@ (SameQ[#, 0] & /@ Flatten[{Expand[x]}]);
  pairs = Subsets[Range[0, 3], {2}];
  eta = {-1, 1, 1, 1};
  metric = DiagonalMatrix[eta];
  eps[a_, b_, c_, d_] := Signature[{a, b, c, d}];
  kmat = Table[eps @@ Join[pairs[[a]], pairs[[b]]], {a, 6}, {b, 6}];
  hmat = DiagonalMatrix[(Times @@ eta[[# + 1]]) & /@ pairs];
  jmat = hmat.kmat;
  ext2[e_] := Table[Det[e[[pairs[[a]] + 1, pairs[[b]] + 1]]], {a, 6}, {b, 6}];
  epsilonContract[p_] := -4 Total[Flatten[kmat*p]];
  addCheck["wedge_metric_square", kmat.kmat === IdentityMatrix[6]];
  addCheck["real_Lorentz_star_square", jmat.jmat === -IdentityMatrix[6]];
  addCheck["star_wedge_anti_isometry", jmat.kmat.Transpose[jmat] === -kmat];
  addCheck["star_determinant", Det[jmat] === 1];

  (* General 20-parameter algebraic curvature tensor, including the Bianchi identity. *)
  slots = DeleteCases[Subsets[Range[6], {2}], {1, 6}];
  slots = Join[Table[{a, a}, {a, 6}], slots];
  rvars = Array[rr, 20];
  rmat = ConstantArray[0, {6, 6}];
  Do[rmat[[Sequence @@ slots[[a]]]] = rvars[[a]];
     rmat[[Sequence @@ Reverse[slots[[a]]]]] = rvars[[a]], {a, 20}];
  rmat[[1, 6]] = rmat[[6, 1]] = rmat[[2, 5]] - rmat[[3, 4]];
  pairPosition[a_, b_] := First[FirstPosition[pairs, Sort[{a, b}]]];
  rc[a_, b_, c_, d_] := If[a == b || c == d, 0,
    Sign[b - a] Sign[d - c] rmat[[pairPosition[a, b], pairPosition[c, d]]]];
  ric = Table[Sum[eta[[a + 1]] rc[a, b, a, d], {a, 0, 3}], {b, 0, 3}, {d, 0, 3}];
  scal = Expand[Sum[eta[[a + 1]] ric[[a + 1, a + 1]], {a, 0, 3}]];
  sric = Expand[ric - scal metric/4];
  gc[a_, b_] := If[a == b, eta[[a + 1]], 0];
  kulkarni = Table[With[{i = pairs[[a, 1]], j = pairs[[a, 2]], k = pairs[[b, 1]], l = pairs[[b, 2]]},
    gc[i, k] sric[[j + 1, l + 1]] - gc[i, l] sric[[j + 1, k + 1]] -
    gc[j, k] sric[[i + 1, l + 1]] + gc[j, l] sric[[i + 1, k + 1]]], {a, 6}, {b, 6}];
  rightStar = rmat.jmat;
  leftStar = Transpose[jmat].rmat;
  addCheck["full_algebraic_Bianchi", zeroQ[Table[rc[i, j, k, l] + rc[i, k, l, j] + rc[i, l, j, k],
    {i, 0, 3}, {j, 0, 3}, {k, 0, 3}, {l, 0, 3}]]];
  addCheck["Bianchi_epsilon_trace", zeroQ[epsilonContract[rmat]]];
  addCheck["scalar_full_pair_factor", zeroQ[scal - 2 Tr[hmat.rmat]]];
  addCheck["right_star_epsilon_trace_minus_2R", zeroQ[epsilonContract[rightStar] + 2 scal]];
  addCheck["Lorentz_double_dual_identity", zeroQ[Transpose[jmat].rmat.jmat + rmat - kulkarni]];
  pairResidual = Flatten[rightStar - Transpose[rightStar]];
  pairLinearMap = Table[Coefficient[pairResidual[[a]], rvars[[b]]], {a, Length[pairResidual]}, {b, 20}];
  pairRank = MatrixRank[pairLinearMap];
  allResidual = Append[pairResidual, scal];
  allLinearMap = Table[Coefficient[allResidual[[a]], rvars[[b]]], {a, Length[allResidual]}, {b, 20}];
  allRank = MatrixRank[allLinearMap];
  addCheck["dual_pair_symmetry_rank_9", pairRank === 9];
  addCheck["dual_pair_and_epsilon_rank_10", allRank === 10];
  addCheck["nondual_phi_factor_1_over_2", zeroQ[2 (rmat/2) - rmat]];
  addCheck["dual_phi_factor_minus_1_over_2", zeroQ[2 (-rmat.jmat/2).jmat - rmat]];
  addCheck["dual_phi_epsilon_equals_R", zeroQ[epsilonContract[-rmat.jmat/2] - scal]];

  (* All 21 symmetric constraint entries, with their one exact linear dependence. *)
  mm = Array[mmvar, {6, 6}];
  mvars = Flatten[mm];
  qmat = mm.kmat.Transpose[mm];
  nvol = Tr[kmat.qmat]/6;
  constraintMatrix = qmat - nvol kmat;
  symmetricSlots = Join[Table[{a, a}, {a, 6}], Subsets[Range[6], {2}]];
  constraintVector = (constraintMatrix[[Sequence @@ #]] &) /@ symmetricSlots;
  constraintJacobian = Table[D[constraintVector[[a]], mvars[[b]]], {a, 21}, {b, 36}];
  branchMatrices = {IdentityMatrix[6], -IdentityMatrix[6], jmat, -jmat};
  branchNames = {"+Sigma", "-Sigma", "+starSigma", "-starSigma"};
  jacobians = Table[constraintJacobian /. Thread[mvars -> Flatten[branchMatrices[[a]]]], {a, 4}];
  jacRanks = MatrixRank /@ jacobians;
  addCheck["simplicity_rank_20_all_four_standard_branches", jacRanks === {20, 20, 20, 20}];
  aa = Array[aavar, {4, 4}];
  avars = Flatten[aa];
  tangentM = Map[Coefficient[#, zz, 1] &, ext2[IdentityMatrix[4] + zz aa], {2}];
  tangent0 = Table[Coefficient[Flatten[tangentM][[a]], avars[[b]]], {a, 36}, {b, 16}];
  tangent1 = Table[Coefficient[Flatten[jmat.tangentM][[a]], avars[[b]]], {a, 36}, {b, 16}];
  addCheck["coframe_tangent_rank_16", {MatrixRank[tangent0], MatrixRank[tangent1]} === {16, 16}];
  addCheck["coframe_tangent_in_simplicity_kernel", zeroQ[{jacobians[[1]].tangent0, jacobians[[3]].tangent1}]];

  ee = {{2, 1, 0, 1}, {0, 1, 1, 0}, {0, 0, -1, 2}, {0, 0, 0, 1}};
  me = ext2[ee];
  addCheck["orientation_reversing_nondual_volume", me.kmat.Transpose[me] === Det[ee] kmat];
  addCheck["orientation_reversing_dual_volume", jmat.me.kmat.Transpose[jmat.me] === -Det[ee] kmat];
  addCheck["exterior_square_determinant_cubed", Det[me] === Det[ee]^3];
  branchInvariant = {Det[me]/Det[ee]^3, Det[jmat.me]/(-Det[ee])^3};
  addCheck["determinant_branch_invariant", branchInvariant === {1, -1}];
  rankTwoM = DiagonalMatrix[{1, 0, 0, 0, 0, 1}];
  rankTwoNu = Tr[kmat.rankTwoM.kmat.Transpose[rankTwoM]]/6;
  addCheck["nu_nonzero_alone_does_not_imply_invertibility", {MatrixRank[rankTwoM], rankTwoNu} === {2, 1/3}];

  (* Explicit non-Einstein solution: e=(dt,dx,exp(k x)dy,dz). *)
  coords = {tt, xx, yy, zzcoord};
  eSol = DiagonalMatrix[{1, 1, Exp[kk xx], 1}];
  gSol = Transpose[eSol].metric.eSol;
  gInv = Simplify[Inverse[gSol]];
  gamma = Table[Simplify[Sum[gInv[[a, d]] (D[gSol[[d, c]], coords[[b]]] +
      D[gSol[[d, b]], coords[[c]]] - D[gSol[[b, c]], coords[[d]]])/2, {d, 4}]],
    {a, 4}, {b, 4}, {c, 4}];
  riemannCoord = Table[Simplify[D[gamma[[a, d, b]], coords[[c]]] - D[gamma[[a, c, b]], coords[[d]]] +
      Sum[gamma[[a, c, f]] gamma[[f, d, b]] - gamma[[a, d, f]] gamma[[f, c, b]], {f, 4}]],
    {a, 4}, {b, 4}, {c, 4}, {d, 4}];
  ricSol = Simplify[Table[Sum[riemannCoord[[a, b, a, d]], {a, 4}], {b, 4}, {d, 4}]];
  scalarSol = Simplify[Tr[gInv.ricSol]];
  omegaUp = ConstantArray[0, {4, 4, 4}];
  omegaUp[[2, 3, 3]] = -kk Exp[kk xx];
  omegaUp[[3, 2, 3]] = kk Exp[kk xx];
  omegaMixed = Table[omegaUp[[i, j, mu]] eta[[j]], {i, 4}, {j, 4}, {mu, 4}];
  torsionSol = Table[Simplify[D[eSol[[i, nu]], coords[[mu]]] - D[eSol[[i, mu]], coords[[nu]]] +
      Sum[omegaMixed[[i, j, mu]] eSol[[j, nu]] - omegaMixed[[i, j, nu]] eSol[[j, mu]], {j, 4}]],
    {i, 4}, {mu, 4}, {nu, 4}];
  fUp = Table[Simplify[D[omegaUp[[i, j, nu]], coords[[mu]]] - D[omegaUp[[i, j, mu]], coords[[nu]]] +
      Sum[omegaMixed[[i, l, mu]] omegaUp[[l, j, nu]] - omegaMixed[[i, l, nu]] omegaUp[[l, j, mu]], {l, 4}]],
    {i, 4}, {j, 4}, {mu, 4}, {nu, 4}];
  fLowerMatrix = Table[With[{i = pairs[[a, 1]] + 1, j = pairs[[a, 2]] + 1,
      mu = pairs[[b, 1]] + 1, nu = pairs[[b, 2]] + 1}, eta[[i]] eta[[j]] fUp[[i, j, mu, nu]]], {a, 6}, {b, 6}];
  rSol = ConstantArray[0, {6, 6}]; rSol[[4, 4]] = -kk^2;
  phiSol = rSol/2;
  addCheck["explicit_solution_torsion_zero", zeroQ[torsionSol]];
  addCheck["explicit_solution_F_equals_phi_B_full_pairs", zeroQ[Simplify[fLowerMatrix - 2 phiSol.ext2[eSol]]]];
  addCheck["explicit_solution_multiplier_epsilon_trace_zero", zeroQ[epsilonContract[phiSol]]];
  addCheck["explicit_solution_Ricci", ricSol === DiagonalMatrix[{0, -kk^2, -kk^2 Exp[2 kk xx], 0}]];
  addCheck["explicit_solution_scalar", scalarSol === -2 kk^2];
  addCheck["explicit_solution_not_Einstein_for_nonzero_k", Simplify[
      ricSol[[1, 1]] - scalarSol gSol[[1, 1]]/4 != 0, Assumptions -> Element[kk, Reals] && kk != 0]];

  <|"KernelVersion" -> $Version,
    "Conventions" -> "eta=(-+++); epsilon_0123=+1; epsilon^0123=-1; full antisymmetric sums; F=(1/2)R e wedge e",
    "Checks" -> checks,
    "Summary" -> <|"CheckCount" -> Length[checks],
       "AllPassed" -> And @@ ((#["Status"] === "passed") & /@ Values[checks]),
       "Messages" -> (ToString[#, InputForm] & /@ $MessageList)|>,
    "ExactResults" -> <|"PairOrder" -> pairs, "WedgeMatrix" -> kmat, "HodgeUpperMatrix" -> jmat,
       "CurvatureParameterCount" -> Length[rvars], "DualPairSymmetryRank" -> pairRank,
       "DualPairAndTraceRank" -> allRank, "SimplicityJacobianRanks" -> AssociationThread[branchNames, jacRanks],
       "CoframeTangentRanks" -> {MatrixRank[tangent0], MatrixRank[tangent1]},
       "OrientationExampleCoframeDeterminant" -> Det[ee], "BranchInvariant" -> branchInvariant,
       "RankTwoCounterexampleNu" -> rankTwoNu, "NonEinsteinCoordinateMetric" -> gSol,
       "NonEinsteinCoordinateRicci" -> ricSol, "NonEinsteinScalar" -> scalarSol,
       "NonEinsteinCurvaturePairMatrix" -> rSol, "NonEinsteinMultiplierPairMatrix" -> phiSol|>|>
];
storeHome = Environment["DSH_HOME"];
If[!StringQ[storeHome] || storeHome == "", storeHome = FileNameJoin[{$HomeDirectory, ".dsh"}]];
storeRoot = FileNameJoin[{storeHome, "research-results", "kernel-exports"}];
If[!DirectoryQ[storeRoot], CreateDirectory[storeRoot, CreateIntermediateDirectories -> True]];
tmp = RunProcess[{"mktemp", "-d", FileNameJoin[{storeRoot, "plebanski-independent-wolfram.XXXXXX"}]}];
If[tmp["ExitCode"] =!= 0, Print[tmp]; Abort[]];
outputDirectory = StringTrim[tmp["StandardOutput"]];
exactPath = Export[FileNameJoin[{outputDirectory, "actual-output.wxf"}], report, "WXF"];
textPath = Export[FileNameJoin[{outputDirectory, "actual-output.txt"}], ToString[report, InputForm, PageWidth -> 110], "Text"];
{outputDirectory, textPath, exactPath, report["Summary"]}
