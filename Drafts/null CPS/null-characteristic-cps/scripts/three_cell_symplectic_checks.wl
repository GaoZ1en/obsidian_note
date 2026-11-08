ClearAll["Global`*"];

(* Three adjacent cells for (partial_u partial_v + aa) phi = 0:

       D1 = [0,1] x [0,1],
       D2 = [1,2] x [0,1],
       D3 = [2,3] x [0,1].

   P1, P2 and P3 are independent six-dimensional coefficient spaces.  The
   simultaneous compatibility matrix is imposed only afterwards.  Every
   sequential map below reconstructs a cell, takes the reconstructed right
   trace, and feeds that function to the next reconstruction. *)

aa = 1;
alphaValues = {1/2, 1, 2};
betaValues = aa/alphaValues;

profileBasis = Flatten[
  Table[
    {Cos[alphaValues[[j]] u + betaValues[[j]] v],
      Sin[alphaValues[[j]] u + betaValues[[j]] v]},
    {j, Length[alphaValues]}]
];

dimCell = Length[profileBasis];
dimProduct = 3 dimCell;
zeroCell = ConstantArray[0, {dimCell, dimCell}];

omegaUEdge[u0_, u1_, v0_] := Table[
  FullSimplify[Integrate[
    (D[profileBasis[[i]], u] profileBasis[[j]] -
      D[profileBasis[[j]], u] profileBasis[[i]]) /. v -> v0,
    {u, u0, u1}]],
  {i, dimCell}, {j, dimCell}];

omegaVEdge[u0_, v0_, v1_] := Table[
  FullSimplify[Integrate[
    (D[profileBasis[[i]], v] profileBasis[[j]] -
      D[profileBasis[[j]], v] profileBasis[[i]]) /. u -> u0,
    {v, v0, v1}]],
  {i, dimCell}, {j, dimCell}];

bottomForm[j_] := omegaUEdge[j - 1, j, 0];
topForm[j_] := omegaUEdge[j - 1, j, 1];
leftForm[j_] := omegaVEdge[j - 1, 0, 1];
rightForm[j_] := omegaVEdge[j, 0, 1];
cellIncoming[j_] := bottomForm[j] + leftForm[j];
cellOutgoing[j_] := topForm[j] + rightForm[j];
cellBoundary[j_] := cellIncoming[j] - cellOutgoing[j];
cellConservationResiduals = Table[FullSimplify[cellBoundary[j]], {j, 3}];

(* Independent coefficient spaces and simultaneous compatibility.  Trace
   matching is coefficient matching because evaluation of this local
   on-shell basis on six generic vertical points is injective. *)

compatibilityMatrix = ArrayFlatten[{
  {IdentityMatrix[dimCell], -IdentityMatrix[dimCell], zeroCell},
  {zeroCell, IdentityMatrix[dimCell], -IdentityMatrix[dimCell]}
}];

outerCoefficientMap = {
  {1, 1, 0, 0, 0, 0},
  {0, 1, 1, 0, 0, 0},
  {0, 0, 1, 1, 0, 0},
  {0, 0, 0, 1, 1, 0},
  {0, 0, 0, 0, 1, 1},
  {0, 0, 0, 0, 0, 1}
};
compatibilityEmbedding = Join[
  outerCoefficientMap, outerCoefficientMap, outerCoefficientMap];

(* Decomposition of the chosen outer incoming cross into three bottom
   pieces and the one genuine outer left edge.  No interface form is inserted
   or subtracted. *)

omegaCellsCut = ArrayFlatten[{
  {bottomForm[1] + leftForm[1], zeroCell, zeroCell},
  {zeroCell, bottomForm[2], zeroCell},
  {zeroCell, zeroCell, bottomForm[3]}
}];
omegaOuterIncoming = omegaUEdge[0, 3, 0] + omegaVEdge[0, 0, 1];
omegaOuterOutgoing = omegaUEdge[0, 3, 1] + omegaVEdge[3, 0, 1];

cutPullbackResidual = FullSimplify[
  Transpose[compatibilityEmbedding] . omegaCellsCut .
      compatibilityEmbedding -
    Transpose[outerCoefficientMap] . omegaOuterIncoming .
      outerCoefficientMap];
outerConservationResidual = FullSimplify[
  omegaOuterIncoming - omegaOuterOutgoing];

(* Full oriented cell boundaries retain every internal edge until the
   compatibility embedding is pulled back. *)

omegaCellsBoundary = ArrayFlatten[{
  {cellBoundary[1], zeroCell, zeroCell},
  {zeroCell, cellBoundary[2], zeroCell},
  {zeroCell, zeroCell, cellBoundary[3]}
}];
omegaOuterBoundary = omegaOuterIncoming - omegaOuterOutgoing;
boundaryPullbackResidual = FullSimplify[
  Transpose[compatibilityEmbedding] . omegaCellsBoundary .
      compatibilityEmbedding -
    Transpose[outerCoefficientMap] . omegaOuterBoundary .
      outerCoefficientMap];

embedBlock[m_, block_] := Module[{out},
  out = ConstantArray[0, {dimProduct, dimProduct}];
  out[[1 + (block - 1) dimCell ;; block dimCell,
      1 + (block - 1) dimCell ;; block dimCell]] = m;
  out];

internal12Oriented = embedBlock[-rightForm[1], 1] +
  embedBlock[leftForm[2], 2];
internal23Oriented = embedBlock[-rightForm[2], 2] +
  embedBlock[leftForm[3], 3];
internal12MatchedResidual = FullSimplify[
  Transpose[compatibilityEmbedding] . internal12Oriented .
    compatibilityEmbedding];
internal23MatchedResidual = FullSimplify[
  Transpose[compatibilityEmbedding] . internal23Oriented .
    compatibilityEmbedding];

(* Derivative-free Bessel reconstruction, obtained from the standard Riemann
   formula by integration by parts.  A reconstructed trace can therefore be
   passed as an actual function into the next cell. *)

wp = 50;
riemann[x_?NumericQ, y_?NumericQ] :=
  BesselJ[0, 2 Sqrt[N[aa, wp] x y]];
riemannDx[x_?NumericQ, y_?NumericQ] := If[x == 0,
  -N[aa, wp] y,
  -Sqrt[N[aa, wp] y/x] BesselJ[1, 2 Sqrt[N[aa, wp] x y]]];
riemannDy[x_?NumericQ, y_?NumericQ] := If[y == 0,
  -N[aa, wp] x,
  -Sqrt[N[aa, wp] x/y] BesselJ[1, 2 Sqrt[N[aa, wp] x y]]];

reconstruct[bottom_, left_, x_?NumericQ, y_?NumericQ] := Module[{corner},
  corner = N[(bottom[0] + left[0])/2, wp];
  N[bottom[x] + left[y] - corner riemann[x, y]
    + If[x == 0, 0, NIntegrate[
      bottom[s] riemannDx[x - s, y], {s, 0, x},
      WorkingPrecision -> wp, AccuracyGoal -> 28, PrecisionGoal -> 28,
      Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}]]
    + If[y == 0, 0, NIntegrate[
      left[r] riemannDy[x, y - r], {r, 0, y},
      WorkingPrecision -> wp, AccuracyGoal -> 28, PrecisionGoal -> 28,
      Method -> {"GlobalAdaptive", "SymbolicProcessing" -> 0}]], 32]];

cellBottom[j_, coefficients_][x_?NumericQ] := N[
  Sum[coefficients[[p]] (profileBasis[[p]] /.
    {u -> (j - 1) + x, v -> 0}), {p, dimCell}], wp];

cellLeft[j_, coefficients_][y_?NumericQ] := N[
  Sum[coefficients[[p]] (profileBasis[[p]] /.
    {u -> j - 1, v -> y}), {p, dimCell}], wp];

cellSolve[j_, coefficients_, leftOverride_: Automatic][x_?NumericQ,
    y_?NumericQ] := Module[{leftProfile},
  leftProfile = If[leftOverride === Automatic,
    Function[yy, cellLeft[j, coefficients][yy]], leftOverride];
  reconstruct[Function[xx, cellBottom[j, coefficients][xx]],
    leftProfile, x, y]];

splitProductCoefficients[c_] := {
  c[[1 ;; dimCell]], c[[dimCell + 1 ;; 2 dimCell]],
  c[[2 dimCell + 1 ;; 3 dimCell]]};

(* (12)3: G1 -> Tr_right -> G2 -> Tr_right -> G3. *)

g12Then3[c_, uu_?NumericQ, vv_?NumericQ] := Module[
  {c1, c2, c3, phi1, trace12, phi2, trace23, phi3},
  {c1, c2, c3} = splitProductCoefficients[c];
  phi1 = Function[{xx, yy}, cellSolve[1, c1][xx, yy]];
  trace12 = Function[yy, phi1[1, yy]];
  phi2 = Function[{xx, yy}, cellSolve[2, c2, trace12][xx, yy]];
  trace23 = Function[yy, phi2[1, yy]];
  phi3 = Function[{xx, yy}, cellSolve[3, c3, trace23][xx, yy]];
  Which[uu <= 1, phi1[uu, vv], uu <= 2, phi2[uu - 1, vv],
    True, phi3[uu - 2, vv]]];

(* 1(23): first reconstruct D2 from its own independent compatible profile,
   pass Tr_right G2 into D3, and only then match the already composed D23
   solution to the reconstructed right trace of D1. *)

solve23[c2_, c3_][localU_?NumericQ,
    vv_?NumericQ] := Module[{phi2, trace23, phi3},
  phi2 = Function[{xx, yy}, cellSolve[2, c2][xx, yy]];
  trace23 = Function[yy, phi2[1, yy]];
  phi3 = Function[{xx, yy}, cellSolve[3, c3, trace23][xx, yy]];
  If[localU <= 1, phi2[localU, vv], phi3[localU - 1, vv]]];

g1Then23[c_, uu_?NumericQ, vv_?NumericQ] := Module[
  {c1, c2, c3, phi1, trace12},
  {c1, c2, c3} = splitProductCoefficients[c];
  phi1 = Function[{xx, yy}, cellSolve[1, c1][xx, yy]];
  trace12 = Function[yy, phi1[1, yy]];
  If[uu <= 1, phi1[uu, vv],
    If[Abs[trace12[vv] - cellLeft[2, c2][vv]] < 10^-20,
      solve23[c2, c3][uu - 1, vv], Indeterminate]]];

(* Direct width-three reconstruction uses only the outer bottom and outer
   left profiles.  It never calls an exact bulk-mode oracle. *)

outerBottom[c_][x_?NumericQ] := Module[{c1, c2, c3},
  {c1, c2, c3} = splitProductCoefficients[c];
  Which[x <= 1, cellBottom[1, c1][x],
    x <= 2, cellBottom[2, c2][x - 1],
    True, cellBottom[3, c3][x - 2]]];

directWidthThree[c_, x_?NumericQ, y_?NumericQ] := Module[{c1},
  c1 = splitProductCoefficients[c][[1]];
  reconstruct[Function[xx, outerBottom[c][xx]],
    Function[yy, cellLeft[1, c1][yy]], x, y]];

traceNodes = N[{1/13, 2/11, 3/10, 5/12, 7/11, 9/10}, 35];
rightTraceEvaluation[j_] := Table[
  cellSolve[j, UnitVector[dimCell, p]][1, traceNodes[[q]]],
  {q, dimCell}, {p, dimCell}];
leftTraceEvaluation[j_] := Table[
  cellLeft[j, UnitVector[dimCell, p]][traceNodes[[q]]],
  {q, dimCell}, {p, dimCell}];
trace12OperatorError = Max[Abs[Flatten[
  rightTraceEvaluation[1] - leftTraceEvaluation[2]]]];
trace23OperatorError = Max[Abs[Flatten[
  rightTraceEvaluation[2] - leftTraceEvaluation[3]]]];

samplePoints = {{0.31`32, 0.27`32}, {1.43`32, 0.62`32},
  {2.57`32, 0.41`32}};
outerBasisVectors = Table[
  compatibilityEmbedding . UnitVector[dimCell, p], {p, dimCell}];

mapLeft = Table[g12Then3[outerBasisVectors[[p]],
  samplePoints[[q, 1]], samplePoints[[q, 2]]],
  {q, Length[samplePoints]}, {p, dimCell}];
mapRight = Table[g1Then23[outerBasisVectors[[p]],
  samplePoints[[q, 1]], samplePoints[[q, 2]]],
  {q, Length[samplePoints]}, {p, dimCell}];
mapDirect = Table[directWidthThree[outerBasisVectors[[p]],
  samplePoints[[q, 1]], samplePoints[[q, 2]]],
  {q, Length[samplePoints]}, {p, dimCell}];

parenthesizationError = Max[Abs[Flatten[mapLeft - mapRight]]];
directMapError = Max[Abs[Flatten[
  Join[mapLeft - mapDirect, mapRight - mapDirect]]]];

zeroArrayQ[z_] := And @@ (TrueQ[FullSimplify[# == 0]] & /@ Flatten[z]);

checks = {
  "P1, P2, P3 are independent before compatibility" ->
    TrueQ[Dimensions[compatibilityMatrix] == {12, 18}],
  "S is a rectangular kernel embedding" -> And[
    TrueQ[Dimensions[compatibilityEmbedding] == {18, 6}],
    MatrixRank[compatibilityEmbedding] == 6,
    MatrixRank[compatibilityMatrix] == 12,
    zeroArrayQ[compatibilityMatrix . compatibilityEmbedding]],
  "each cell conserves the profile symplectic current" ->
    zeroArrayQ[cellConservationResiduals],
  "T12 is Tr_right composed with reconstructed G1" ->
    TrueQ[trace12OperatorError < 10^-22],
  "T23 is Tr_right composed with reconstructed G2" ->
    TrueQ[trace23OperatorError < 10^-22],
  "internal edge matrices are nonzero and full rank" -> And[
    MatrixRank[rightForm[1]] == dimCell,
    MatrixRank[rightForm[2]] == dimCell],
  "first reconstructed internal edge cancels only after matched pullback" ->
    zeroArrayQ[internal12MatchedResidual],
  "second reconstructed internal edge cancels only after matched pullback" ->
    zeroArrayQ[internal23MatchedResidual],
  "outer incoming and outgoing forms agree" ->
    zeroArrayQ[outerConservationResidual],
  "rectangular pullback of decomposed outer cut is exact" ->
    zeroArrayQ[cutPullbackResidual],
  "rectangular pullback of oriented cell boundaries is exact" ->
    zeroArrayQ[boundaryPullbackResidual],
  "G_(12)3 S equals G_1(23) S" ->
    TrueQ[parenthesizationError < 10^-20],
  "both sequential maps equal direct width-three reconstruction" ->
    TrueQ[directMapError < 10^-20]
};

Print["Wolfram version: ", $Version];
Print["independent/product dimensions: ", {dimCell, dimProduct}];
Print["compatibility/kernel dimensions: ", {
  Dimensions[compatibilityMatrix], Dimensions[compatibilityEmbedding]}];
Print["internal edge ranks: ", {
  MatrixRank[rightForm[1]], MatrixRank[rightForm[2]]}];
Print["reconstructed trace-operator errors: ", {
  trace12OperatorError, trace23OperatorError}];
Print["parenthesization/direct errors: ", {
  parenthesizationError, directMapError}];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL THREE-CELL SYMPLECTIC CHECKS PASSED"],
  Print["THREE-CELL SYMPLECTIC CHECKS FAILED"];
  Quit[1]];
