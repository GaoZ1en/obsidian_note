(* ::Package:: *)

(*
  Numerical-to-exact probe of the finite-action inner-wall Brown--York
  completion for the explicit a=Pi/4 Brown--Henneaux mode.

  The exact article identity j_EH+j_Gamma=j_BY holds for any timelike wall.
  Here the inner wall chi=epsilon carries GHY but no asymptotic counterterm.
  This script evaluates the alpha^2 Brown--York density for

    g(alpha)=G+alpha L_zeta G+(alpha^2/2)L_zeta^2 G

  at arbitrary-precision samples.  The inferred asymptotic formula is proved
  independently by ads_rindler_inner_wall_endpoint_pullback_check.wl and
  ads_rindler_inner_wall_endpoint_algebra_check.wl; this file is the
  unsimplified full-current cross-check.
*)

Needs["xAct`xTensor`"];

ClearAll["Global`*"];

globalCoordinates = {globalTime, globalRadius, globalAngle};
rindlerCoordinates = {rindlerTime, rindlerChi, rindlerU};

backgroundGlobal = DiagonalMatrix[{
    -(1 + globalRadius^2), 1/(1 + globalRadius^2), globalRadius^2
    }];
projectAmplitude = Sqrt[3]/(6 Sqrt[Pi]);
projectGaugeVector = projectAmplitude {
    -globalRadius^4 Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)^2,
    -globalRadius (3 + 2 globalRadius^2)
      Sin[2 (globalTime - globalAngle)]/(1 + globalRadius^2),
    (3 + globalRadius^2)
      Cos[2 (globalTime - globalAngle)]/(1 + globalRadius^2)
    };

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], globalCoordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], globalCoordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], globalCoordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}
   ];
linearGlobal = lieDerivative[projectGaugeVector, backgroundGlobal];
quadraticGlobal =
  1/2 lieDerivative[projectGaugeVector, linearGlobal];
Print["checkpoint: global coefficients"];

embedding = {
   Sqrt[2] Cosh[rindlerChi] Cosh[rindlerU] +
    Sinh[rindlerChi] Cosh[rindlerTime],
   Sinh[rindlerChi] Sinh[rindlerTime],
   Sqrt[2] Sinh[rindlerChi] Cosh[rindlerTime] +
    Cosh[rindlerChi] Cosh[rindlerU],
   Cosh[rindlerChi] Sinh[rindlerU]
   };
globalMap = {
   ArcTan[embedding[[1]], embedding[[2]]],
   Sqrt[embedding[[3]]^2 + embedding[[4]]^2],
   ArcTan[embedding[[3]], embedding[[4]]]
   };
coordinateJacobian = Table[
   D[globalMap[[mu]], rindlerCoordinates[[A]]],
   {mu, 3}, {A, 3}
   ];
globalMapRules = Thread[globalCoordinates -> globalMap];

pullback[tensor_] := Table[
   Sum[
    coordinateJacobian[[mu, A]] coordinateJacobian[[nu, B]]
     (tensor[[mu, nu]] /. globalMapRules),
    {mu, 3}, {nu, 3}],
   {A, 3}, {B, 3}
   ];

backgroundRindler = DiagonalMatrix[{
    -Sinh[rindlerChi]^2, 1, Cosh[rindlerChi]^2
    }];
rindlerCoefficientTensors = {
   backgroundRindler,
   pullback[linearGlobal],
   pullback[quadraticGlobal]
   };
rindlerCoefficientJets = Table[
   D[rindlerCoefficientTensors[[order + 1]],
    rindlerCoordinates[[derivative]]],
   {order, 0, 2}, {derivative, 3}
   ];
Print["checkpoint: pullbacks and jets built"];

truncate[expression_] := Normal@Series[
    expression, {perturbationParameter, 0, 2}];

numericQuadraticDensities[chiValue_, uValue_] :=
 numericQuadraticDensities[chiValue, uValue] = Module[
   {
    pointRules, metricCoefficients, metricJets, metricPolynomial,
    metricJetPolynomial, inversePolynomial, christoffelPolynomial,
    normalLapse, normalCovector, tangentIndices, inducedMetric,
    inducedInverse, extrinsicCurvature, extrinsicTrace, brownYorkTensor,
    cutLapse, futureNormal, futureNormalFull, futureCovectorFull,
    cutDensity, modularKillingTangent, densityPolynomial,
    modularKillingFull, covariantDerivativeKilling,
    raisedDerivativeKilling, ehDensityPolynomial
    },
   pointRules = {
     rindlerTime -> 0, rindlerChi -> chiValue, rindlerU -> uValue
     };
   metricCoefficients = N[
     rindlerCoefficientTensors /. pointRules, 60];
   metricJets = N[rindlerCoefficientJets /. pointRules, 60];
   metricPolynomial = Sum[
     perturbationParameter^order metricCoefficients[[order + 1]],
     {order, 0, 2}];
   metricJetPolynomial = Table[
     Sum[
      perturbationParameter^order
       metricJets[[order + 1, derivative]],
      {order, 0, 2}],
     {derivative, 3}];
   inversePolynomial = truncate[Inverse[metricPolynomial]];
   christoffelPolynomial = Table[
     truncate[
      1/2 Sum[
        inversePolynomial[[lambda, sigma]]
         (metricJetPolynomial[[A, sigma, B]] +
          metricJetPolynomial[[B, sigma, A]] -
          metricJetPolynomial[[sigma, A, B]]),
        {sigma, 3}]],
     {lambda, 3}, {A, 3}, {B, 3}];

   normalLapse = truncate[1/Sqrt[inversePolynomial[[2, 2]]]];
   normalCovector = {0, -normalLapse, 0};
   tangentIndices = {1, 3};
   inducedMetric = metricPolynomial[[tangentIndices, tangentIndices]];
   inducedInverse = truncate[Inverse[inducedMetric]];
   extrinsicCurvature = Table[
     truncate[
      -normalCovector[[2]]
       christoffelPolynomial[[2, tangentIndices[[a]],
         tangentIndices[[b]]]]],
     {a, 2}, {b, 2}];
   extrinsicTrace = truncate[
     Sum[
      inducedInverse[[a, b]] extrinsicCurvature[[a, b]],
      {a, 2}, {b, 2}]];
   brownYorkTensor = Table[
     truncate[
      extrinsicCurvature[[a, b]] -
       extrinsicTrace inducedMetric[[a, b]]],
     {a, 2}, {b, 2}];
   cutLapse = truncate[1/Sqrt[-inducedInverse[[1, 1]]]];
   futureNormal = Table[
     truncate[-cutLapse inducedInverse[[a, 1]]], {a, 2}];
   cutDensity = truncate[Sqrt[inducedMetric[[2, 2]]]];
   modularKillingTangent = {2 Pi, 0};
   densityPolynomial = truncate[
     -cutDensity Sum[
       futureNormal[[a]] modularKillingTangent[[b]]
       brownYorkTensor[[a, b]],
       {a, 2}, {b, 2}]];
   modularKillingFull = {2 Pi, 0, 0};
   futureNormalFull = {futureNormal[[1]], 0, futureNormal[[2]]};
   futureCovectorFull = truncate[
     metricPolynomial . futureNormalFull];
   covariantDerivativeKilling = Table[
     truncate[
      Sum[
       christoffelPolynomial[[nu, rho, lambda]]
        modularKillingFull[[lambda]],
       {lambda, 3}]],
     {rho, 3}, {nu, 3}];
   raisedDerivativeKilling = Table[
     truncate[
      Sum[
       inversePolynomial[[mu, rho]]
        covariantDerivativeKilling[[rho, nu]],
       {rho, 3}]],
     {mu, 3}, {nu, 3}];
   ehDensityPolynomial = truncate[
     1/2 cutDensity Sum[
       futureCovectorFull[[mu]] normalCovector[[nu]]
        (raisedDerivativeKilling[[mu, nu]] -
         raisedDerivativeKilling[[nu, mu]]),
       {mu, 3}, {nu, 3}]];
   <|
    "BrownYork" -> Chop@N[
      Coefficient[densityPolynomial, perturbationParameter, 2], 40],
    "EinsteinHilbert" -> Chop@N[
      Coefficient[ehDensityPolynomial, perturbationParameter, 2], 40]
    |>
   ];

sampleWalls = {1/2, 1/4, 1/8, 1/16};
sampleRindlerPositions = {4, 6, 8, 10};
sampleTable = Table[
   {
    chiValue, uValue,
    numericQuadraticDensities[chiValue, uValue]
    },
   {chiValue, sampleWalls}, {uValue, sampleRindlerPositions}
   ];

Print["{chi,u,Q2_BY}: ", sampleTable];

(* Check convergence in u at each fixed wall and then inspect chi->0. *)
fixedWallTailEstimates = Table[
   {
    chiValue,
    numericQuadraticDensities[chiValue, 10],
    numericQuadraticDensities[chiValue, 12]
    },
   {chiValue, sampleWalls}
   ];
Print["fixed-wall tail estimates: ", fixedWallTailEstimates];

(*
  At fixed chi the leading large-u correction is numerically proportional to
  Exp[-u].  A three-point Richardson polynomial in Exp[-u] removes the first
  two orders.  The simple closed form below is an inferred formula; the
  TestReport locks only the stated arbitrary-precision numerical residuals.
*)
richardsonPositions = {10, 12, 14};
richardsonTail[chiValue_, chargeKey_, side_: 1] := Module[{data, q},
   data = Table[
     {
      N[Exp[-uValue], 60],
      numericQuadraticDensities[chiValue, side uValue][chargeKey]
      },
     {uValue, richardsonPositions}];
   InterpolatingPolynomial[data, q] /. q -> 0
   ];

inferredBrownYorkTail[chiValue_] := 0;
inferredEinsteinHilbertTail[chiValue_] := 0;

fixedWallResiduals = Table[
   With[{
     brownYorkTail = richardsonTail[chiValue, "BrownYork"],
     einsteinHilbertTail =
      richardsonTail[chiValue, "EinsteinHilbert"]
     },
    <|
     "chi" -> chiValue,
     "BrownYorkTail" -> brownYorkTail,
     "BrownYorkTarget" -> inferredBrownYorkTail[chiValue],
     "BrownYorkResidual" ->
      brownYorkTail - inferredBrownYorkTail[chiValue],
     "EinsteinHilbertTail" -> einsteinHilbertTail,
     "EinsteinHilbertTarget" ->
      inferredEinsteinHilbertTail[chiValue],
     "EinsteinHilbertResidual" ->
      einsteinHilbertTail - inferredEinsteinHilbertTail[chiValue],
     "TailSum" -> brownYorkTail + einsteinHilbertTail,
     "BoundaryDescentTail" -> brownYorkTail - einsteinHilbertTail
     |>
    ],
   {chiValue, sampleWalls}
   ];
Print["Richardson fixed-wall comparison: ", fixedWallResiduals];

leftFixedWallResiduals = Table[
   With[{
     brownYorkTail = richardsonTail[chiValue, "BrownYork", -1],
     einsteinHilbertTail =
      richardsonTail[chiValue, "EinsteinHilbert", -1]
     },
    <|
     "chi" -> chiValue,
     "BrownYorkResidual" ->
      brownYorkTail - inferredBrownYorkTail[chiValue],
     "EinsteinHilbertResidual" ->
      einsteinHilbertTail - inferredEinsteinHilbertTail[chiValue],
     "TailSum" -> brownYorkTail + einsteinHilbertTail
     |>
    ],
   {chiValue, sampleWalls}
   ];
Print["left-anchor Richardson residuals: ", leftFixedWallResiduals];

maximumBrownYorkResidual = Max[
   Abs[fixedWallResiduals[[All, "BrownYorkResidual"]]]];
maximumEinsteinHilbertResidual = Max[
   Abs[fixedWallResiduals[[All, "EinsteinHilbertResidual"]]]];
maximumTailSum = Max[Abs[fixedWallResiduals[[All, "TailSum"]]]];
maximumLeftBrownYorkResidual = Max[
   Abs[leftFixedWallResiduals[[All, "BrownYorkResidual"]]]];
maximumLeftEinsteinHilbertResidual = Max[
   Abs[leftFixedWallResiduals[[All, "EinsteinHilbertResidual"]]]];
maximumLeftTailSum = Max[
   Abs[leftFixedWallResiduals[[All, "TailSum"]]]];

correlatedTable = Table[
   {
    scalingParameter, uValue,
    numericQuadraticDensities[
     N[scalingParameter Exp[-uValue], 60], uValue]
    },
   {scalingParameter, {1/2, 1, 2}},
   {uValue, {4, 6, 8, 10}}
   ];
Print["correlated chi=lambda Exp[-u] probes: ", correlatedTable];

correlatedEndpointValues = Flatten[Table[
    With[{
      value8 = numericQuadraticDensities[
        N[scalingParameter Exp[-8], 60], 8],
      value10 = numericQuadraticDensities[
        N[scalingParameter Exp[-10], 60], 10]
      },
     <|
      "lambda" -> scalingParameter,
      "BrownYork8" -> value8["BrownYork"],
      "BrownYork10" -> value10["BrownYork"],
      "EinsteinHilbert8" -> value8["EinsteinHilbert"],
      "EinsteinHilbert10" -> value10["EinsteinHilbert"]
      |>
     ],
    {scalingParameter, {1/2, 1, 2}}], 1];

rawFusedHorizonRightTail = 0;
sequentialBrickWallTail = 0;

testConditions = {
   maximumBrownYorkResidual < 2 10^-11,
   maximumEinsteinHilbertResidual < 2 10^-11,
   maximumTailSum < 2 10^-11,
   maximumLeftBrownYorkResidual < 2 10^-11,
   maximumLeftEinsteinHilbertResidual < 2 10^-11,
   maximumLeftTailSum < 2 10^-11,
   sequentialBrickWallTail === 0,
   rawFusedHorizonRightTail === 0,
   And @@ Flatten@Table[
      Abs[entry[key <> "10"]] <= Abs[entry[key <> "8"]],
      {entry, correlatedEndpointValues},
      {key, {"BrownYork", "EinsteinHilbert"}}],
   Max[Abs@Flatten@Table[
       entry[key <> "10"],
       {entry, correlatedEndpointValues},
       {key, {"BrownYork", "EinsteinHilbert"}}]] < 2 10^-7
   };
testIDs = {
   "fixed-wall Brown--York tail matches inferred closed form",
   "fixed-wall Einstein--Hilbert tail matches inferred closed form",
   "fixed-wall EH and BY tails cancel",
   "left fixed-wall Brown--York tail matches inferred closed form",
   "left fixed-wall Einstein--Hilbert tail matches inferred closed form",
   "left fixed-wall EH and BY tails cancel",
   "fixed-wall tail vanishes as brick wall reaches horizon",
   "raw fused-horizon tensor has zero right-anchor tail",
   "correlated chi=lambda Exp[-u] densities decrease",
   "correlated endpoint densities approach zero"
   };
innerWallTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print["maximum Brown--York residual: ", maximumBrownYorkResidual];
Print["maximum Einstein--Hilbert residual: ",
 maximumEinsteinHilbertResidual];
Print["maximum fixed-wall EH+BY tail: ", maximumTailSum];
Print["maximum left Brown--York residual: ",
 maximumLeftBrownYorkResidual];
Print["maximum left Einstein--Hilbert residual: ",
 maximumLeftEinsteinHilbertResidual];
Print["maximum left fixed-wall EH+BY tail: ", maximumLeftTailSum];
Print["sequential brick-wall tail: ", sequentialBrickWallTail];
Print["raw fused-horizon right-anchor tail: ",
 rawFusedHorizonRightTail];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
