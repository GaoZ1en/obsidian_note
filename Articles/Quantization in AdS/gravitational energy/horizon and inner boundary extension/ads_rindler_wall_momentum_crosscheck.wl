(* ::Package:: *)

(*
  Independent component crosscheck of the symbolic endpoint ADM momentum.

  Route A linearizes the complete three-dimensional metric, normalized inner
  normal, Christoffel symbol, extrinsic curvature, and densitized Brown--York
  momentum. Route B uses the Gaussian-normal ADM variation. Both are evaluated
  on the exact corrected complex m=3 mode at a generic finite-wall point.
*)

SetEnvironment["PROJECTED_WALL_FLUX_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_wall_flux_check.wl"}]];

globalCoordinatesCross = {globalTimeCross, globalRadiusCross,
   globalAngleCross};
backgroundGlobalCross = DiagonalMatrix[{
    -(1 + globalRadiusCross^2), 1/(1 + globalRadiusCross^2),
    globalRadiusCross^2}];
modeFrequencyCross = 3;
phaseCross = Exp[-I modeFrequencyCross
    (globalTimeCross - globalAngleCross)];
vectorCross = {
   -phaseCross globalRadiusCross^modeFrequencyCross
    (globalRadiusCross^2 -
      (modeFrequencyCross - 2) (modeFrequencyCross + 1)/2)/
     (1 + globalRadiusCross^2)^((modeFrequencyCross + 2)/2),
   -I modeFrequencyCross phaseCross
    globalRadiusCross^(modeFrequencyCross - 1)
    (2 globalRadiusCross^2 + modeFrequencyCross + 1)/
     (2 (1 + globalRadiusCross^2)^(modeFrequencyCross/2)),
   phaseCross globalRadiusCross^(modeFrequencyCross - 2)
    (globalRadiusCross^2 +
      modeFrequencyCross (modeFrequencyCross + 1)/2)/
     (1 + globalRadiusCross^2)^(modeFrequencyCross/2)};
lieCross = Table[Together@Sum[
    vectorCross[[lambda]] D[backgroundGlobalCross[[mu, nu]],
       globalCoordinatesCross[[lambda]]] +
     backgroundGlobalCross[[lambda, nu]]
      D[vectorCross[[lambda]], globalCoordinatesCross[[mu]]] +
     backgroundGlobalCross[[mu, lambda]]
      D[vectorCross[[lambda]], globalCoordinatesCross[[nu]]],
    {lambda, 3}], {mu, 3}, {nu, 3}];

embeddingCross = {
   Sqrt[2] Cosh[chi] Cosh[u] + Sinh[chi] Cosh[tau],
   Sinh[chi] Sinh[tau],
   Sqrt[2] Sinh[chi] Cosh[tau] + Cosh[chi] Cosh[u],
   Cosh[chi] Sinh[u]};
globalMapCross = {
   ArcTan[embeddingCross[[1]], embeddingCross[[2]]],
   Sqrt[embeddingCross[[3]]^2 + embeddingCross[[4]]^2],
   ArcTan[embeddingCross[[3]], embeddingCross[[4]]]};
jacobianCross = Table[D[globalMapCross[[mu]], coordinates[[a]]],
   {mu, 3}, {a, 3}];
rulesCross = Thread[globalCoordinatesCross -> globalMapCross];
hCross = Table[Sum[jacobianCross[[mu, a]] jacobianCross[[nu, b]]
     (lieCross[[mu, nu]] /. rulesCross), {mu, 3}, {nu, 3}],
   {a, 3}, {b, 3}];

crossPoint = {0, 1/2, 1/3};
genericRulesCross = Flatten@Table[{
    h[i, j][tau, chi, u] -> hCross[[i, j]],
    Derivative[1, 0, 0][h[i, j]][tau, chi, u] ->
     D[hCross[[i, j]], tau],
    Derivative[0, 1, 0][h[i, j]][tau, chi, u] ->
     D[hCross[[i, j]], chi],
    Derivative[0, 0, 1][h[i, j]][tau, chi, u] ->
     D[hCross[[i, j]], u]}, {i, 3}, {j, 3}];
directMomentumCross = N[linearMomentumGeneric /. genericRulesCross /.
    Thread[coordinates -> crossPoint], 40];

gammaCross = DiagonalMatrix[{-Sinh[chi]^2, Cosh[chi]^2}];
gammaInverseCross = Inverse[gammaCross];
sqrtGammaCross = Sinh[chi] Cosh[chi];
kCross = DiagonalMatrix[{Sinh[chi] Cosh[chi],
    -Sinh[chi] Cosh[chi]}];
kUpperCross = gammaInverseCross . kCross . gammaInverseCross;
kTraceCross = Tr[gammaInverseCross . kCross];
hTangentialCross = hCross[[tangent, tangent]];
hShiftCross = hCross[[tangent, 2]];
deltaKCross = Table[
   -D[hTangentialCross[[a, b]], chi]/2 +
    (D[hShiftCross[[b]], coordinates[[tangent[[a]]]]] +
      D[hShiftCross[[a]], coordinates[[tangent[[b]]]]])/2 -
    hCross[[2, 2]] kCross[[a, b]]/2, {a, 2}, {b, 2}];
hUpperCross = gammaInverseCross . hTangentialCross . gammaInverseCross;
hTraceCross = Tr[gammaInverseCross . hTangentialCross];
deltaKTraceCross = Tr[gammaInverseCross . deltaKCross] -
   Sum[hUpperCross[[a, b]] kCross[[a, b]], {a, 2}, {b, 2}];
deltaKUpperCross = Table[
   Sum[gammaInverseCross[[a, c]] gammaInverseCross[[b, d]]
     deltaKCross[[c, d]], {c, 2}, {d, 2}] -
   Sum[hUpperCross[[a, c]] gammaCross[[c, d]]
     kUpperCross[[d, b]], {c, 2}, {d, 2}] -
   Sum[hUpperCross[[b, c]] gammaCross[[c, d]]
     kUpperCross[[d, a]], {c, 2}, {d, 2}], {a, 2}, {b, 2}];
admMomentumCross = Table[sqrtGammaCross (
    hTraceCross (kUpperCross[[a, b]] -
       kTraceCross gammaInverseCross[[a, b]])/2 +
    deltaKUpperCross[[a, b]] -
    deltaKTraceCross gammaInverseCross[[a, b]] +
    kTraceCross hUpperCross[[a, b]]), {a, 2}, {b, 2}];
admMomentumCrossNumeric = N[admMomentumCross /.
    Thread[coordinates -> crossPoint], 40];
momentumCrossResidual = Max[Abs /@
    Flatten[directMomentumCross - admMomentumCrossNumeric]];

testConditions = {
   FreeQ[{directMomentumCross, admMomentumCrossNumeric},
    Indeterminate | ComplexInfinity],
   momentumCrossResidual < 10^-30
   };
testIDs = {
   "direct and ADM momentum evaluations are finite",
   "direct full-metric and ADM momentum agree componentwise"
   };
Print[<|"Point" -> crossPoint,
  "DirectMomentum" -> directMomentumCross,
  "ADMMomentum" -> admMomentumCrossNumeric,
  "MaximumResidual" -> momentumCrossResidual|>];
adsRindlerWallMomentumCrosscheckReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
