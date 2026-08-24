(* ::Package:: *)

(*
  D=4 representative of the D>=4 local-Rindler radiative-graviton test.

  The background is flat Rindler space and the plus-polarized TT perturbation
  has h_xx=psi, h_yy=-psi with psi=F(U)+G(V).  The script verifies the
  background, wave equation, complete Einstein--GHY wall momentum, vanishing
  first wall source, O(rho) Brown--York curvature, and the finite future-null
  flux.  Additional transverse spectator directions do not change the
  calculation.
*)

Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];

DefManifold[MR, 4, {a, b, c, d, e}];
DefChart[rind, MR, {0, 1, 2, 3}, {tt[], rr[], xx[], yy[]}];
DefConstantSymbol /@ {kap, kp2};

metricX = DiagonalMatrix[{-kap^2 rr[]^2, 1, 1, 1}];
metricCT = CTensor[metricX, {-rind, -rind}];
SetCMetric[metricCT, rind, SignatureOfMetric -> {3, 1, 0}];
MetricCompute[metricCT, rind, "Ricci"[-1, -1],
  CVSimplify -> FullSimplify, Verbose -> False];
covariantDerivative = CovDOfMetric[metricCT];
ricciX = ToValues[Ricci[covariantDerivative]] /.
  CTensor[array_, bases_, weight_] :> array;
ricci = FullSimplify[ricciX /.
   {tt[] -> tau, rr[] -> rho, xx[] -> x, yy[] -> y}];

u = -rho Exp[-kap tau];
v = rho Exp[kap tau];
psi = f[u] + g[v];
waveResidual = FullSimplify[
  -D[psi, {tau, 2}]/(kap^2 rho^2) + D[psi, {rho, 2}] +
   D[psi, rho]/rho,
  Assumptions -> {rho > 0, kap > 0}];

amp = Unique["amp"];
gamma = DiagonalMatrix[{-kap^2 rho^2, 1 + amp psi, 1 - amp psi}];
gammaInverse = FullSimplify[Inverse[gamma]];
sqrtMinusGamma = FullSimplify[Sqrt[-Det[gamma]],
  Assumptions -> {rho > 0, kap > 0, amp^2 psi^2 < 1}];
extrinsic = -D[gamma, rho]/2;
extrinsicTrace = FullSimplify[Tr[gammaInverse . extrinsic]];
piUpper = FullSimplify[
  sqrtMinusGamma/kp2 (gammaInverse . extrinsic . gammaInverse -
    extrinsicTrace gammaInverse),
  Assumptions -> {rho > 0, kap > 0, amp^2 psi^2 < 1}];
deltaPi = FullSimplify[D[piUpper, amp] /. amp -> 0,
  Assumptions -> {rho > 0, kap > 0}];
expectedDeltaPi = DiagonalMatrix[{0,
   -kap/kp2 (psi + rho D[psi, rho]/2),
   kap/kp2 (psi + rho D[psi, rho]/2)}];

hWall = DiagonalMatrix[{0, psi, -psi}];
pi0 = FullSimplify[piUpper /. amp -> 0,
  Assumptions -> {rho > 0, kap > 0}];
linearWallSource = FullSimplify[-Tr[pi0 . hWall]/2];

Clear[p1, p2];
dPi[p_] := DiagonalMatrix[{0,
   -kap/kp2 (p[rho] + rho p'[rho]/2),
   kap/kp2 (p[rho] + rho p'[rho]/2)}];
hTensor[p_] := DiagonalMatrix[{0, p[rho], -p[rho]}];
boundaryCurvature = FullSimplify[-(
    Tr[dPi[p1] . hTensor[p2]] - Tr[dPi[p2] . hTensor[p1]])/2];
expectedBoundaryCurvature = kap rho/(2 kp2) (
   p1'[rho] p2[rho] - p2'[rho] p1[rho]);

psiG1 = G1[v];
psiG2 = G2[v];
futureWallCurvature = FullSimplify[expectedBoundaryCurvature /. {
    p1[rho] -> psiG1, p2[rho] -> psiG2,
    p1'[rho] -> D[psiG1, rho], p2'[rho] -> D[psiG2, rho]}];
futureNullFlux = FullSimplify[
  (futureWallCurvature /. tau -> Log[V/rho]/kap)/(kap V)];
expectedFutureNullFlux =
  (G2[V] G1'[V] - G1[V] G2'[V])/(2 kp2);

genericFiniteWallValue = expectedBoundaryCurvature /.
  {p1[rho] -> rho, p1'[rho] -> 1,
   p2[rho] -> 1, p2'[rho] -> 0};

testConditions = {
   ricci === Zero || ricci === ConstantArray[0, {4, 4}],
   waveResidual === 0,
   FullSimplify[deltaPi - expectedDeltaPi,
     Assumptions -> {rho > 0, kap > 0}] === ConstantArray[0, {3, 3}],
   linearWallSource === 0,
   FullSimplify[boundaryCurvature - expectedBoundaryCurvature] === 0,
   genericFiniteWallValue === kap rho/(2 kp2),
   Limit[genericFiniteWallValue, rho -> 0, Direction -> "FromAbove"] === 0,
   FullSimplify[futureNullFlux - expectedFutureNullFlux] === 0,
   hWall[[1]] === {0, 0, 0} && hWall[[All, 1]] === {0, 0, 0},
   Tr[hWall[[2 ;; 3, 2 ;; 3]]] === 0
   };

testIDs = {
   "the local Rindler background is Ricci flat",
   "F of U plus G of V solves the Rindler wave equation",
   "the complete GHY Brown-York momentum has the stated linearization",
   "the trace-free tensor mode has zero first wall source",
   "the wall source curvature equals the O(rho) TT Wronskian",
   "a generic pair has nonzero finite-wall curvature",
   "that generic compact-boost wall curvature vanishes at the horizon",
   "a horizon-reaching slab has the stated finite null flux",
   "radial gauge makes the Harlow-Wu normal component vanish",
   "the transverse perturbation is trace free"
   };

Print[<|
  "RicciResidual" -> ricci,
  "WaveResidual" -> waveResidual,
  "DeltaPiResidual" -> FullSimplify[deltaPi - expectedDeltaPi,
    Assumptions -> {rho > 0, kap > 0}],
  "LinearWallSource" -> linearWallSource,
  "BoundaryCurvature" -> boundaryCurvature,
  "FutureNullFlux" -> futureNullFlux|>];

localRindlerRadiativeGravitonReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " local-Rindler radiative-graviton tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
