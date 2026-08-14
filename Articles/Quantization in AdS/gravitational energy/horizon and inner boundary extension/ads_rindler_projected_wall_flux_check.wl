(* ::Package:: *)

(*
  Brown--York canonical-pair flux for corrected projected low modes on a
  fixed AdS--Rindler wall.  The normalization 1/kappa_p^2 is stripped.

  This script first derives delta Pi^{ab} for an arbitrary full metric
  perturbation on the coordinate wall chi=epsilon, including normal shift
  components, and only then substitutes pulled-back Brown--Henneaux modes.
*)

ClearAll["Global`*"];

coordinates = {tau, chi, u};
tangent = {1, 3};
background = DiagonalMatrix[{-Sinh[chi]^2, 1, Cosh[chi]^2}];
genericH = Table[h[i, j][tau, chi, u], {i, 3}, {j, 3}];
genericH = (genericH + Transpose[genericH])/2;
alpha = Unique["alpha"];

truncateOne[expression_] := Normal@Series[expression, {alpha, 0, 1}];
metric = background + alpha genericH;
inverseMetric = Map[Together, truncateOne[Inverse[metric]], {2}];
metricJets = Table[D[metric, coordinates[[derivative]]], {derivative, 3}];
christoffel = Table[truncateOne[
    1/2 Sum[inverseMetric[[lambda, sigma]] (
       metricJets[[a, sigma, b]] + metricJets[[b, sigma, a]] -
        metricJets[[sigma, a, b]]), {sigma, 3}]],
   {lambda, 3}, {a, 3}, {b, 3}];
normalCovectorChi = truncateOne[-1/Sqrt[inverseMetric[[2, 2]]]];
inducedMetric = metric[[tangent, tangent]];
inducedInverse = Map[Together,
   truncateOne[Inverse[inducedMetric]], {2}];
extrinsic = Table[truncateOne[
    -normalCovectorChi christoffel[[2, tangent[[a]], tangent[[b]]]]],
   {a, 2}, {b, 2}];
extrinsicUpper = Map[Together,
   truncateOne[inducedInverse . extrinsic . inducedInverse], {2}];
extrinsicTrace = truncateOne[Tr[inducedInverse . extrinsic]];
sqrtMinusGamma = truncateOne[Sqrt[-Det[inducedMetric]]];
momentumUpper = Map[Together, truncateOne[
    sqrtMinusGamma (extrinsicUpper - extrinsicTrace inducedInverse)], {2}];
linearMomentumGeneric = Map[Together,
   Coefficient[momentumUpper, alpha, 1], {2}];

If[Environment["PROJECTED_WALL_FLUX_DEFINITIONS_ONLY"] =!= "1",
(* Global-to-Rindler data. *)
globalCoordinates = {globalTime, globalRadius, globalAngle};
backgroundGlobal = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2}];
unitComplexGauge[m_Integer?Positive] := With[
  {phase = Exp[-I m (globalTime - globalAngle)]}, {
   -phase globalRadius^m
     (globalRadius^2 - (m - 2) (m + 1)/2)/
      (1 + globalRadius^2)^((m + 2)/2),
   -I m phase globalRadius^(m - 1)
     (2 globalRadius^2 + m + 1)/
      (2 (1 + globalRadius^2)^(m/2)),
   phase globalRadius^(m - 2)
     (globalRadius^2 + m (m + 1)/2)/
      (1 + globalRadius^2)^(m/2)}];
unitCosineGauge[m_Integer?Positive] := ComplexExpand[
   Re[unitComplexGauge[m]]];
unitSineGauge[m_Integer?Positive] := -ComplexExpand[
   Im[unitComplexGauge[m]]];
projectedCosineGauge[m_Integer?Positive] :=
  unitCosineGauge[m] + Cos[m Pi/4] unitCosineGauge[4];
projectedSineGauge[m_Integer?Positive] :=
  unitSineGauge[m] - Sin[m Pi/4] unitSineGauge[2];
lieDerivativeGlobal[vector_, tensor_] := Table[Together@Sum[
    vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
     tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
     tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
    {lambda, 3}], {mu, 3}, {nu, 3}];

embedding = {
   Sqrt[2] Cosh[chi] Cosh[u] + Sinh[chi] Cosh[tau],
   Sinh[chi] Sinh[tau],
   Sqrt[2] Sinh[chi] Cosh[tau] + Cosh[chi] Cosh[u],
   Cosh[chi] Sinh[u]};
globalMap = {
   ArcTan[embedding[[1]], embedding[[2]]],
   Sqrt[embedding[[3]]^2 + embedding[[4]]^2],
   ArcTan[embedding[[3]], embedding[[4]]]};
coordinateJacobian = Table[D[globalMap[[mu]], coordinates[[a]]],
   {mu, 3}, {a, 3}];
globalMapRules = Thread[globalCoordinates -> globalMap];
pullback[tensor_] := Table[Sum[
    coordinateJacobian[[mu, a]] coordinateJacobian[[nu, b]]
     (tensor[[mu, nu]] /. globalMapRules),
    {mu, 3}, {nu, 3}], {a, 3}, {b, 3}];

modeLabels = {"Cosine3", "Sine3", "Cosine5", "Sine5"};
modeVectors = {projectedCosineGauge[3], projectedSineGauge[3],
   projectedCosineGauge[5], projectedSineGauge[5]};
samplePointValues = {0, 1/2, 0};
numericGlobalLieTensor[vector_, point_List] := Module[
  {vectorValue, vectorJacobian, metricValue, metricDerivatives},
  vectorValue = N[vector /. Thread[globalCoordinates -> point], 50];
  vectorJacobian = N[Table[D[vector[[lambda]], globalCoordinates[[mu]]],
      {lambda, 3}, {mu, 3}] /. Thread[globalCoordinates -> point], 50];
  metricValue = N[backgroundGlobal /. Thread[globalCoordinates -> point], 50];
  metricDerivatives = N[Table[D[backgroundGlobal,
       globalCoordinates[[lambda]]], {lambda, 3}] /.
     Thread[globalCoordinates -> point], 50];
  Table[Sum[vectorValue[[lambda]] metricDerivatives[[lambda, mu, nu]] +
     metricValue[[lambda, nu]] vectorJacobian[[lambda, mu]] +
     metricValue[[mu, lambda]] vectorJacobian[[lambda, nu]],
    {lambda, 3}], {mu, 3}, {nu, 3}]
  ];
numericRindlerTensor[vector_, point_List] := Module[
  {mapValue, jacobianValue, globalTensorValue},
  mapValue = N[globalMap /. Thread[coordinates -> point], 50];
  jacobianValue = N[coordinateJacobian /. Thread[coordinates -> point], 50];
  globalTensorValue = numericGlobalLieTensor[vector, mapValue];
  Table[Sum[jacobianValue[[mu, a]] jacobianValue[[nu, b]]
     globalTensorValue[[mu, nu]],
    {mu, 3}, {nu, 3}], {a, 3}, {b, 3}]
  ];
numericModeTensor[modeIndex_, point_List] :=
  numericRindlerTensor[modeVectors[[modeIndex]], point];
modePointData[modeIndex_, point_, step_] := Module[
  {center, tauPlus, tauMinus, chiPlus, chiMinus, uPlus, uMinus},
  center = numericModeTensor[modeIndex, point];
  tauPlus = numericModeTensor[modeIndex,
    point + {step, 0, 0}];
  tauMinus = numericModeTensor[modeIndex,
    point - {step, 0, 0}];
  chiPlus = numericModeTensor[modeIndex,
    point + {0, step, 0}];
  chiMinus = numericModeTensor[modeIndex,
    point - {0, step, 0}];
  uPlus = numericModeTensor[modeIndex,
    point + {0, 0, step}];
  uMinus = numericModeTensor[modeIndex,
    point - {0, 0, step}];
  <|"Tensor" -> center,
    "Derivatives" -> {(tauPlus - tauMinus)/(2 step),
      (chiPlus - chiMinus)/(2 step), (uPlus - uMinus)/(2 step)}|>
  ];
genericPointRules[data_] := Flatten@Table[{
     h[i, j][tau, chi, u] -> data["Tensor"][[i, j]],
     Derivative[1, 0, 0][h[i, j]][tau, chi, u] ->
      data["Derivatives"][[1, i, j]],
     Derivative[0, 1, 0][h[i, j]][tau, chi, u] ->
      data["Derivatives"][[2, i, j]],
     Derivative[0, 0, 1][h[i, j]][tau, chi, u] ->
      data["Derivatives"][[3, i, j]]
     }, {i, 3}, {j, 3}];
evaluateFluxes[point_, step_] := Module[{data, induced, momentum},
  data = Table[modePointData[index, point, step], {index, 4}];
  induced = Table[data[[index]]["Tensor"][[tangent, tangent]],
    {index, 4}];
  momentum = Table[N[linearMomentumGeneric /.
      genericPointRules[data[[index]]] /.
      Thread[coordinates -> point], 30], {index, 4}];
  Table[With[{i = pair[[1]], j = pair[[2]]},
    -1/2 (contract2[momentum[[i]], induced[[j]]] -
      contract2[momentum[[j]], induced[[i]]])], {pair, samplePairs}]
  ];

contract2[first_, second_] := Sum[
   first[[a, b]] second[[a, b]], {a, 2}, {b, 2}];
samplePairs = {{1, 2}, {1, 3}, {1, 4}, {2, 3}, {2, 4}, {3, 4}};
fluxStepOne = 10^-5;
fluxStepTwo = 5 10^-6;
samplePoints = {{0, 1/2, 0}, {0, 1/2, 1/3}, {0, 1/4, 2/3}};
sampleFluxDensitiesOne = Table[evaluateFluxes[point, fluxStepOne],
   {point, samplePoints}];
sampleFluxDensitiesTwo = Table[evaluateFluxes[point, fluxStepTwo],
   {point, samplePoints}];
sampleFluxDensities = sampleFluxDensitiesTwo;

blocked = Cases[sampleFluxDensities, $Failed, Infinity];
stepResidual = Max[Abs /@
    (sampleFluxDensitiesOne - sampleFluxDensitiesTwo)];
maximumFlux = Max[Abs /@ sampleFluxDensities];

testConditions = {
   blocked === {},
   FreeQ[sampleFluxDensities, Indeterminate | ComplexInfinity],
   stepResidual < 10^-7,
   maximumFlux > 10^-3
   };
testIDs = {
   "six projected low-mode point fluxes completed",
   "six projected low-mode point fluxes are finite",
   "point fluxes are stable under step halving",
   "projected low-mode block has a resolved nonzero finite-wall flux"
   };

Print[<|
  "ModeLabels" -> modeLabels,
  "SamplePoints" -> samplePoints,
  "SamplePairs" -> samplePairs,
  "SampleFluxDensities" -> sampleFluxDensities,
  "StepResidual" -> stepResidual,
  "MaximumFlux" -> maximumFlux|>];

adsRindlerProjectedWallFluxReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[blocked =!= {}, Print["blocked wall flux densities: ", Length[blocked]];
 Exit[2]];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
];
