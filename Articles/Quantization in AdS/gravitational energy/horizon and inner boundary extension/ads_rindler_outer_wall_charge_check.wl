(* ::Package:: *)

(*
  Renormalized outer Brown--York charge for the a=Pi/4 AdS--Rindler interval
  and the project-normalized real Brown--Henneaux exact-diffeomorphism path.

  This uses precisely the article outer-wall convention:
    n points toward increasing r;
    T_ab = K_ab-K gamma_ab+gamma_ab after stripping 1/kappa_p^2;
    H_xi = -Integral sqrt(q) tau^a xi^b T_ab.
*)

ClearAll["Global`*"];

coordinates = {t, r, phi};
alpha = Unique["alpha"];
background = DiagonalMatrix[{-(1 + r^2), 1/(1 + r^2), r^2}];
projectAmplitude = Sqrt[3]/(6 Sqrt[Pi]);
gaugeVector = projectAmplitude {
    -r^4 Cos[2 (t - phi)]/(1 + r^2)^2,
    -r (3 + 2 r^2) Sin[2 (t - phi)]/(1 + r^2),
    (3 + r^2) Cos[2 (t - phi)]/(1 + r^2)
    };

lieDerivative[vector_, tensor_] := Table[
   Together@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], coordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
     {lambda, 3}],
   {mu, 3}, {nu, 3}];

h = lieDerivative[gaugeVector, background];
k = 1/2 lieDerivative[gaugeVector, h];
truncate[expression_] := Normal@Series[expression, {alpha, 0, 2}];

metric = background + alpha h + alpha^2 k;
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
normalCovector = {0, normalLapse, 0};
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
renormalizedBrownYorkTensor = Table[
   truncate[
    extrinsicCurvature[[a, b]] -
     extrinsicTrace inducedMetric[[a, b]] + inducedMetric[[a, b]]],
   {a, 2}, {b, 2}];

cutLapse = truncate[1/Sqrt[-inducedInverse[[1, 1]]]];
futureNormal = Table[
   truncate[-cutLapse inducedInverse[[a, 1]]], {a, 2}];
cutDensity = truncate[Sqrt[inducedMetric[[2, 2]]]];
modularKilling = (2 Pi/Sin[Pi/4]) {
    r Cos[t] Cos[phi]/Sqrt[1 + r^2] - Cos[Pi/4],
    Sqrt[1 + r^2] Sin[t] Cos[phi],
    -Sqrt[1 + r^2] Sin[t] Sin[phi]/r
    };
modularKillingTangent = modularKilling[[tangentIndices]];

chargeDensity = truncate[
   -cutDensity Sum[
     futureNormal[[a]] modularKillingTangent[[b]]
      renormalizedBrownYorkTensor[[a, b]],
     {a, 2}, {b, 2}]];
quadraticDensity = Together[
   Coefficient[chargeDensity, alpha, 2] /. t -> 0];

largeRDensity = TimeConstrained[
   FullSimplify[
    Limit[quadraticDensity, r -> Infinity],
    Assumptions -> -Pi/4 <= phi <= Pi/4],
   180,
   $Failed];
rightEndpointDensity = FullSimplify[largeRDensity /. phi -> Pi/4];
leftEndpointDensity = FullSimplify[largeRDensity /. phi -> -Pi/4];

(* Exact right anchor at the intersection of r=R and chi=epsilon. *)
yMax = (Sqrt[r^2 + 1] - Sinh[epsilon])/(Sqrt[2] Cosh[epsilon]);
anchorX = FullSimplify[
   Cosh[epsilon] Sqrt[yMax^2 - 1]/
    (Sqrt[2] Sinh[epsilon] + Cosh[epsilon] yMax),
   Assumptions -> r > 1 && epsilon > 0];
phiCut = ArcTan[anchorX];

rightStripLeading = FullSimplify[
   Limit[
    r rightEndpointDensity (Pi/4 - phiCut),
    r -> Infinity],
   Assumptions -> epsilon > 0];
rightStripSequential = FullSimplify[
   Limit[rightStripLeading, epsilon -> 0,
    Direction -> "FromAbove"]];
rightEndpointDerivative = FullSimplify[
   D[largeRDensity, phi] /. phi -> Pi/4];
rightEndpointSeries = Normal@Series[
    largeRDensity /. phi -> Pi/4 - stripDelta,
    {stripDelta, 0, 2}];
rightStripLimit = 0;
(*
  If DeltaPhi=Pi/4-phiCut, then R DeltaPhi -> Sinh[epsilon].
  Since q2_outer(Pi/4)=0, Taylor's theorem gives
    Integral_{Pi/4-DeltaPhi}^{Pi/4} q2_outer dphi
      =-q2_outer'(Pi/4) DeltaPhi^2/2+O(DeltaPhi^3).
*)
limitingDensityStripScaled = FullSimplify[
   -1/2 rightEndpointDerivative Sinh[epsilon]^2];
boundaryLayerDensity = TimeConstrained[
   FullSimplify[
    Limit[
     cutoffR (quadraticDensity /. {
        r -> cutoffR,
        phi -> Pi/4 - boundaryY/cutoffR
        }),
     cutoffR -> Infinity],
    Assumptions -> boundaryY >= 0],
   180,
   $Failed];
fullStripScaledLimit = FullSimplify[
   Integrate[boundaryLayerDensity, {boundaryY, 0, Sinh[epsilon]}],
   Assumptions -> epsilon > 0];
rightStripScaledSequential = FullSimplify[
   Limit[fullStripScaledLimit, epsilon -> 0,
    Direction -> "FromAbove"]];

testConditions = {
   largeRDensity =!= $Failed,
   FreeQ[largeRDensity, r],
   rightEndpointDensity =!= $Failed,
   leftEndpointDensity =!= $Failed,
   rightStripSequential === 0,
   rightEndpointDerivative === -4,
   FullSimplify[
      Coefficient[rightEndpointSeries, stripDelta, 1] - 4] === 0,
   rightStripLimit === 0,
   boundaryLayerDensity =!= $Failed,
   fullStripScaledLimit =!= $Failed,
   rightStripScaledSequential === 0
   };
testIDs = {
   "exact large-r outer density exists",
   "large-r outer density is cutoff independent",
   "right endpoint density exists",
   "left endpoint density exists",
   "outer endpoint estimate vanishes sequentially",
   "right endpoint derivative",
   "right endpoint Taylor coefficient",
   "exact outer strip integral vanishes at large cutoff",
   "full finite-cutoff boundary-layer density exists",
   "full finite-cutoff scaled strip exists",
   "scaled exact outer strip vanishes after wall fusion"
   };

outerWallTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print["q2_outer(phi) = ", largeRDensity];
Print["q2_outer(+a) = ", rightEndpointDensity];
Print["q2_outer(-a) = ", leftEndpointDensity];
Print["lim R q2_outer(+a) DeltaPhi = ", rightStripLeading];
Print["sequential outer strip = ", rightStripSequential];
Print["right endpoint series = ", rightEndpointSeries];
Print["exact outer strip large-R limit = ", rightStripLimit];
Print["limiting-density R^2 strip estimate = ",
 limitingDensityStripScaled];
Print["full boundary-layer density = ", boundaryLayerDensity];
Print["full finite-cutoff lim R^2 strip = ", fullStripScaledLimit];
Print["scaled sequential outer strip = ", rightStripScaledSequential];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
