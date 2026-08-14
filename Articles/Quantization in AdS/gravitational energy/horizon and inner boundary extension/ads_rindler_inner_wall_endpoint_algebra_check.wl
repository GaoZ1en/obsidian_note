(* ::Package:: *)

(* Historical regression for the withdrawn wrong-radial-sign endpoint data.
   It is retained only to document the dependency repair and must not be used
   as evidence for the corrected Brown--Henneaux real phase.  The corrected
   endpoint pullback and unsimplified current are tested in the companion
   scripts. *)

(*
  Exact endpoint algebra for the a=Pi/4 AdS--Rindler inner-wall mode.

  Separate exact q=Exp[-u] limits of the global-to-Rindler pullback give the
  endpoint tensors hInfinity and kInfinity below.  This script takes those
  exact endpoint data as input and evaluates the same Einstein--Hilbert and
  Brown--York densities as ads_rindler_inner_wall_current_check.wl.

  Conventions:
    coordinates = {tau, chi, u};
    inner outward normal points toward decreasing chi;
    xi = 2 Pi partial_tau;
    no asymptotic AdS counterterm is placed on the inner wall;
    coefficients are Taylor coefficients, with 1/kappa_p^2 stripped.
*)

ClearAll["Global`*"];

coordinates = {tau, chi, u};
alpha = Unique["alpha"];
amplitude = 1/Sqrt[3 Pi];

background = DiagonalMatrix[{-Sinh[chi]^2, 1, Cosh[chi]^2}];
hInfinity = 4 amplitude {
    {Sinh[chi]^2, 0, 0},
    {0, -Sech[chi]^2, Tanh[chi]},
    {0, Tanh[chi], -Sinh[chi]^2}
    };
kInfinity = -2 amplitude hInfinity;

truncate[expression_] := Normal@Series[expression, {alpha, 0, 2}];

metric = background + alpha hInfinity + alpha^2 kInfinity;
inverseMetric = truncate[Inverse[metric]];
metricJets = Table[D[metric, coordinates[[derivative]]], {derivative, 3}];
christoffel = Table[
   truncate[
    1/2 Sum[
      inverseMetric[[lambda, sigma]]
       (metricJets[[a, sigma, b]] + metricJets[[b, sigma, a]] -
        metricJets[[sigma, a, b]]),
      {sigma, 3}]],
   {lambda, 3}, {a, 3}, {b, 3}];

normalLapse = truncate[1/Sqrt[inverseMetric[[2, 2]]]];
normalCovector = {0, -normalLapse, 0};
tangentIndices = {1, 3};
inducedMetric = metric[[tangentIndices, tangentIndices]];
inducedInverse = truncate[Inverse[inducedMetric]];
extrinsicCurvature = Table[
   truncate[
    -normalCovector[[2]]
     christoffel[[2, tangentIndices[[a]], tangentIndices[[b]]]]],
   {a, 2}, {b, 2}];
extrinsicTrace = truncate@Sum[
    inducedInverse[[a, b]] extrinsicCurvature[[a, b]],
    {a, 2}, {b, 2}];
brownYorkTensor = Table[
   truncate[extrinsicCurvature[[a, b]] -
     extrinsicTrace inducedMetric[[a, b]]],
   {a, 2}, {b, 2}];

cutLapse = truncate[1/Sqrt[-inducedInverse[[1, 1]]]];
futureNormal = Table[
   truncate[-cutLapse inducedInverse[[a, 1]]], {a, 2}];
cutDensity = truncate[Sqrt[inducedMetric[[2, 2]]]];
modularKillingTangent = {2 Pi, 0};
brownYorkDensity = truncate[
   -cutDensity Sum[
     futureNormal[[a]] modularKillingTangent[[b]]
      brownYorkTensor[[a, b]],
     {a, 2}, {b, 2}]];

modularKillingFull = {2 Pi, 0, 0};
futureNormalFull = {futureNormal[[1]], 0, futureNormal[[2]]};
futureCovectorFull = truncate[metric . futureNormalFull];
covariantDerivativeKilling = Table[
   truncate@Sum[
     christoffel[[nu, rho, lambda]] modularKillingFull[[lambda]],
     {lambda, 3}],
   {rho, 3}, {nu, 3}];
raisedDerivativeKilling = Table[
   truncate@Sum[
     inverseMetric[[mu, rho]] covariantDerivativeKilling[[rho, nu]],
     {rho, 3}],
   {mu, 3}, {nu, 3}];
einsteinHilbertDensity = truncate[
   1/2 cutDensity Sum[
     futureCovectorFull[[mu]] normalCovector[[nu]]
      (raisedDerivativeKilling[[mu, nu]] -
       raisedDerivativeKilling[[nu, mu]]),
     {mu, 3}, {nu, 3}]];

brownYorkQuadratic = FullSimplify[
   Coefficient[brownYorkDensity, alpha, 2], Assumptions -> chi > 0];
einsteinHilbertQuadratic = FullSimplify[
   Coefficient[einsteinHilbertDensity, alpha, 2],
   Assumptions -> chi > 0];
boundaryDescentQuadratic = FullSimplify[
   brownYorkQuadratic - einsteinHilbertQuadratic,
   Assumptions -> chi > 0];

expectedBrownYork = 16/3 Sinh[chi]^2;
expectedEinsteinHilbert = -expectedBrownYork;
expectedBoundaryDescent = 2 expectedBrownYork;

testConditions = {
   FullSimplify[brownYorkQuadratic - expectedBrownYork,
      Assumptions -> chi > 0] === 0,
   FullSimplify[einsteinHilbertQuadratic - expectedEinsteinHilbert,
      Assumptions -> chi > 0] === 0,
   FullSimplify[boundaryDescentQuadratic - expectedBoundaryDescent,
      Assumptions -> chi > 0] === 0,
   FullSimplify[
      brownYorkQuadratic - einsteinHilbertQuadratic -
       boundaryDescentQuadratic,
      Assumptions -> chi > 0] === 0,
   Limit[brownYorkQuadratic, chi -> 0, Direction -> "FromAbove"] === 0,
   Limit[einsteinHilbertQuadratic, chi -> 0,
      Direction -> "FromAbove"] === 0,
   Limit[boundaryDescentQuadratic, chi -> 0,
      Direction -> "FromAbove"] === 0
   };
testIDs = {
   "exact Brown--York endpoint density",
   "exact Einstein--Hilbert endpoint density",
   "exact GHY/Harlow--Wu endpoint density",
   "exact finite-action endpoint split",
   "Brown--York brick-wall limit",
   "Einstein--Hilbert brick-wall limit",
   "boundary-descent brick-wall limit"
   };

endpointAlgebraTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print["q2_BY = ", brownYorkQuadratic];
Print["q2_EH = ", einsteinHilbertQuadratic];
Print["q2_Gamma = ", boundaryDescentQuadratic];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
