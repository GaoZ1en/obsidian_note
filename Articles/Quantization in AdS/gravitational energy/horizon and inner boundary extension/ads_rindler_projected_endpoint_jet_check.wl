(* ::Package:: *)

(*
  Local finite-action CPS jet calculation in compactified coordinates

      q = cos(2 phi),   s = r sqrt(q).

  The right RT branch is t=0, s=1 and its endpoint is q=0.  Projection is
  imposed on the real bulk vectors before any series expansion.  The script
  first checks the fixed pair (P_A cos 3 phi, cos 2 phi).  With
  ENDPOINT_RESIDUE_CLASS=r it instead sets m=8 k+r and tests the general
  residue class, subject to m>=2.
*)

ClearAll["Global`*"];

residueInput = Environment["ENDPOINT_RESIDUE_CLASS"];
symbolicResidue = StringQ[residueInput] && StringLength[residueInput] > 0;
residue = If[symbolicResidue, ToExpression[residueInput], Missing[]];
frequency = If[symbolicResidue, 8 kFrequency + residue, 3];
jetOrderInput = Environment["ENDPOINT_JET_ORDER"];
jetOrder = If[StringQ[jetOrderInput] && StringLength[jetOrderInput] > 0,
   ToExpression[jetOrderInput], 4];

coordinates = {t, q, s};
metric = {
   {-(q + s^2)/q, 0, 0},
   {0, s^2/(4 q^2 (q + s^2)) + s^2/(4 q (1 - q^2)),
    -s/(2 q (q + s^2))},
   {0, -s/(2 q (q + s^2)), 1/(q + s^2)}
   };
inverseMetric = FullSimplify[Inverse[metric],
   Assumptions -> 0 < q < 1 && s > 0];

jet[expression_] := Cancel@Together@PowerExpand@Normal@
   Series[expression, {q, 0, jetOrder}];
jetArray[array_] := Map[jet, array, {-1}];

christoffel = Table[
   Cancel@Together[1/2 Sum[inverseMetric[[mu, lambda]] (
       D[metric[[lambda, nu]], coordinates[[rho]]] +
        D[metric[[lambda, rho]], coordinates[[nu]]] -
        D[metric[[nu, rho]], coordinates[[lambda]]]), {lambda, 3}]],
   {mu, 3}, {nu, 3}, {rho, 3}];

lieMetricJet[vector_] := Table[jet@Sum[
     vector[[lambda]] D[metric[[mu, nu]], coordinates[[lambda]]] +
      metric[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]] +
      metric[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
     {lambda, 3}], {mu, 3}, {nu, 3}];

lieTensorJet[vector_, tensor_] := Table[jet@Sum[
     vector[[lambda]] D[tensor[[mu, nu]], coordinates[[lambda]]] +
      tensor[[lambda, nu]] D[vector[[lambda]], coordinates[[mu]]] +
      tensor[[mu, lambda]] D[vector[[lambda]], coordinates[[nu]]],
     {lambda, 3}], {mu, 3}, {nu, 3}];

bracketJet[first_, second_] := Table[jet@Sum[
     first[[rho]] D[second[[mu]], coordinates[[rho]]] -
      second[[rho]] D[first[[mu]], coordinates[[rho]]],
     {rho, 3}], {mu, 3}];

covariantDerivativeTwoJet[tensor_, derivative_] := Table[jet@(
    D[tensor[[mu, nu]], coordinates[[derivative]]] -
     Sum[christoffel[[lambda, derivative, mu]] tensor[[lambda, nu]] +
       christoffel[[lambda, derivative, nu]] tensor[[mu, lambda]],
      {lambda, 3}]), {mu, 3}, {nu, 3}];

localPotentialJet[vector_, variation_] := Module[
  {trace, upper, derivative, divergence, traceGradient,
   vectorDerivative, vectorDerivativeRaised, connectionVariation,
   connectionDerivativeVariation, chargeCoefficient},
  trace = jet@Tr[inverseMetric . variation];
  upper = Table[jet@Sum[inverseMetric[[mu, alpha]]
       variation[[alpha, beta]] inverseMetric[[beta, nu]],
      {alpha, 3}, {beta, 3}], {mu, 3}, {nu, 3}];
  derivative = Table[covariantDerivativeTwoJet[variation, alpha][[mu, nu]],
    {alpha, 3}, {mu, 3}, {nu, 3}];
  divergence = Table[jet@Sum[
      D[upper[[nu, rho]], coordinates[[rho]]] +
       Sum[christoffel[[nu, rho, lambda]] upper[[lambda, rho]] +
         christoffel[[rho, rho, lambda]] upper[[nu, lambda]],
        {lambda, 3}], {rho, 3}], {nu, 3}];
  traceGradient = Table[jet@Sum[inverseMetric[[mu, lambda]]
       D[trace, coordinates[[lambda]]], {lambda, 3}], {mu, 3}];
  vectorDerivative = Table[jet@(
      D[vector[[nu]], coordinates[[rho]]] +
       Sum[christoffel[[nu, rho, lambda]] vector[[lambda]],
        {lambda, 3}]), {nu, 3}, {rho, 3}];
  vectorDerivativeRaised = Table[jet@Sum[
      inverseMetric[[mu, rho]] vectorDerivative[[nu, rho]], {rho, 3}],
    {nu, 3}, {mu, 3}];
  connectionVariation = Table[jet@(1/2 Sum[
       inverseMetric[[nu, beta]] (
        derivative[[alpha, rho, beta]] +
         derivative[[rho, alpha, beta]] -
         derivative[[beta, alpha, rho]]), {beta, 3}]),
    {nu, 3}, {alpha, 3}, {rho, 3}];
  connectionDerivativeVariation = Table[jet@(
      -Sum[upper[[mu, alpha]] vectorDerivative[[nu, alpha]],
        {alpha, 3}] +
       Sum[inverseMetric[[mu, alpha]]
         connectionVariation[[nu, alpha, rho]] vector[[rho]],
        {alpha, 3}, {rho, 3}]), {mu, 3}, {nu, 3}];
  chargeCoefficient[mu_, nu_] := jet@(
     -connectionDerivativeVariation[[mu, nu]] -
      trace vectorDerivativeRaised[[nu, mu]]/2 +
      vector[[mu]] (divergence[[nu]] - traceGradient[[nu]]));
  Table[jet[(chargeCoefficient[1, index] -
       chargeCoefficient[index, 1])/(16 Pi)], {index, {2, 3}}]
  ];

oldRealMode[m_] := Module[{phase, aCoefficient, bCoefficient,
   oldTime, oldRadial, oldAngular},
  phase = m (t - ArcCos[q]/2);
  aCoefficient = (m - 2) (m + 1)/2;
  bCoefficient = m (m + 1)/2;
  oldTime = -Cos[phase] s^m (s^2 - aCoefficient q)/
    (q + s^2)^((m + 2)/2);
  oldRadial = -m Sin[phase] s^(m - 1)
    (2 s^2 + (m + 1) q)/
    (2 Sqrt[q] (q + s^2)^(m/2));
  oldAngular = Cos[phase] s^(m - 2) (s^2 + bCoefficient q)/
    (q + s^2)^(m/2);
  {
   oldTime,
   -2 Sqrt[1 - q^2] oldAngular,
   Sqrt[q] oldRadial - s Sqrt[1 - q^2] oldAngular/q
   }
  ];

projectedSeed = jetArray[oldRealMode[frequency] +
    Cos[Pi frequency/4] oldRealMode[4]];
seedTwo = jetArray[oldRealMode[2]];
profile = length^2 q/(length^2 q + s^2);
properOne = jetArray[-profile projectedSeed];
properTwo = jetArray[-profile seedTwo];
residualOne = lieMetricJet[jetArray[(1 - profile) projectedSeed]];
residualTwo = lieMetricJet[jetArray[(1 - profile) seedTwo]];

cosHalf = Sqrt[(1 + q)/2];
sinHalf = Sqrt[(1 - q)/2];
ads = Sqrt[q + s^2]/Sqrt[q];
rOld = s/Sqrt[q];
xiOld = 2 Sqrt[2] Pi {
    rOld Cos[t] cosHalf/ads - 1/Sqrt[2],
    ads Sin[t] cosHalf,
    -ads Sin[t] sinHalf/rOld
    };
xi = jetArray[{
    xiOld[[1]],
    -2 Sqrt[1 - q^2] xiOld[[3]],
    Sqrt[q] xiOld[[2]] -
     s Sqrt[1 - q^2] xiOld[[3]]/q
    }];

Print["building compactified projected CPS jets for frequency ", frequency];
commutatorOne = bracketJet[xi, properOne];
commutatorTwo = bracketJet[xi, properTwo];
Print["commutator jets completed: ",
  {LeafCount[commutatorOne], LeafCount[commutatorTwo]}];
modularOne = lieTensorJet[xi, lieMetricJet[projectedSeed]];
modularTwo = lieTensorJet[xi, lieMetricJet[seedTwo]];
Print["modular jets completed: ",
  {LeafCount[modularOne], LeafCount[modularTwo]}];

potentialOne = localPotentialJet[commutatorOne, residualTwo];
Print["potential block 1 completed: ", LeafCount[potentialOne]];
potentialTwo = localPotentialJet[commutatorTwo, residualOne];
Print["potential block 2 completed: ", LeafCount[potentialTwo]];
potentialThree = localPotentialJet[properOne, modularTwo];
Print["potential block 3 completed: ", LeafCount[potentialThree]];
potentialFour = localPotentialJet[properTwo, modularOne];
Print["potential block 4 completed: ", LeafCount[potentialFour]];
potential = jetArray[1/2 (-potentialOne - potentialTwo +
     potentialThree + potentialFour)];

(* The interval wedge is s>=1.  Its inner outward conormal therefore points
   toward decreasing s.  Together with the future covector this gives the
   positive parameter-density weight below.  The three separate normalized
   factors contain coordinate zeros and infinities on the RT curve, while
   their product is this regular Laurent weight. *)
geometricWeight = s/(2 q Sqrt[1 - q^2]);
weightedPotential = Cancel@Together[(geometricWeight potential[[2]]) /.
    t -> 0];

(* Taking one Limit of the complete truncated Laurent polynomial can create
   a spurious 0*Infinity when different q orders have different removable
   transverse factors.  Restrict every Laurent coefficient to s=1 first and
   only then rebuild the RT density. *)
weightedPotentialSeries = Expand@Normal@Series[
    weightedPotential, {q, 0, jetOrder}];
minimumLaurentOrder = -8;
transverseCoefficientLimits = Table[
   FullSimplify[
    Limit[Coefficient[weightedPotentialSeries, q, order], s -> 1],
    Assumptions -> length > 0],
   {order, minimumLaurentOrder, jetOrder}];
densityQ = Collect[Sum[
    transverseCoefficientLimits[[order - minimumLaurentOrder + 1]] q^order,
    {order, minimumLaurentOrder, jetOrder}], q];

coefficients = Table[FullSimplify[Coefficient[densityQ, q, order],
    Assumptions -> length > 0 && kFrequency >= 0], {order, -2, 3}];
expectedFixedQ2 = 3 length^4/(8 Sqrt[2]);

testConditions = {
   FreeQ[densityQ, Indeterminate | ComplexInfinity | DirectedInfinity],
   coefficients[[1 ;; 4]] === {0, 0, 0, 0},
   If[symbolicResidue, True,
    FullSimplify[coefficients[[5]] - expectedFixedQ2,
      Assumptions -> length > 0] === 0]
   };
testIDs = {
   "compactified endpoint density is finite",
   "projected endpoint coefficients q^-2 through q^1 vanish",
   "fixed m=3 q-squared coefficient matches the direct density"
   };

Print[<|"Frequency" -> frequency, "ResidueClass" -> residue,
  "DensityQThroughOrder" -> densityQ,
  "CoefficientsQMinus2ThroughQ3" -> coefficients|>];
adsRindlerProjectedEndpointJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True, Exit[1]];
