(* ::Package:: *)

(*
  Exact point-jet engine for the proper-transition Iyer--Wald density.

  Coordinates are

      (t,q,s),  q=cos(2 phi),  s=r sqrt(q),

  on the right interval branch.  The RT curve is s=1 and the interval wedge
  is s>=1.  All ambient derivatives are taken before t=0,s=1 is imposed.
  Only the finite jet required by the first-order Iyer--Wald potential is
  retained; no endpoint functional or fitted frequency ansatz is used.

  The default fixed pair is (P_A cos 3 phi, P_A cos 2 phi).  Set
  POINT_JET_SYMBOLIC_FREQUENCY=1 and/or
  POINT_JET_SECOND_SYMBOLIC_FREQUENCY=1 to keep the corresponding frequency
  symbolic.  POINT_JET_FIRST_SECTOR and POINT_JET_SECOND_SECTOR select
  Cosine or Sine.  POINT_JET_ENDPOINT_SIGN is +1 (right) or -1 (left).
  POINT_JET_ANCHOR_SECTION=PSL replaces the charged P_A complement by the
  global AdS Killing modes cos(phi), sin(phi); this is the reducibility
  section used for the full Brown--Henneaux quotient.
*)

ClearAll["Global`*"];

coordinates = {t, q, s};
zeroIndex = {0, 0, 0};
unitIndex = IdentityMatrix[3];
multiIndices[order_] := Select[Tuples[Range[0, order], 3], Total[#] <= order &];

(* Lookup treats a bare list as a list of keys.  Wrap the multi-index so that
   every derivative index labels one scalar jet coefficient. *)
jetKey[index_List] := HoldComplete @@ index;
jetLookup[jet_Association, index_List] := Lookup[jet, jetKey[index], 0];
makeJet[expression_, order_] := Association@Table[
   jetKey[index] -> (D[expression,
        {t, index[[1]]}, {q, index[[2]]}, {s, index[[3]]}] /.
      {t -> 0, s -> 1}), {index, multiIndices[order]}];
constantJet[value_, order_] := Association@Table[
   jetKey[index] -> If[index === zeroIndex, value, 0],
   {index, multiIndices[order]}];
jetPlus[jets_List, order_] := Association@Table[
   jetKey[index] -> Total[jetLookup[#, index] & /@ jets],
   {index, multiIndices[order]}];
jetTimes[first_Association, second_Association, order_] :=
 Association@Table[jetKey[index] -> Sum[
     Product[Binomial[index[[component]], beta[[component]]],
        {component, 3}] jetLookup[first, beta]
       jetLookup[second, index - beta],
     {beta, Tuples[Map[Range[0, #] &, index]]}],
   {index, multiIndices[order]}];
jetScale[number_, jet_Association, order_] := Association@Table[
   jetKey[index] -> number jetLookup[jet, index],
   {index, multiIndices[order]}];
jetDerivative[jet_Association, direction_, order_] := Association@Table[
   jetKey[index] -> jetLookup[jet, index + unitIndex[[direction]]],
   {index, multiIndices[order]}];
jetValue[jet_Association] := jetLookup[jet, zeroIndex];
jetPartial[jet_Association, direction_] :=
  jetLookup[jet, unitIndex[[direction]]];

metric = {
   {-(q + s^2)/q, 0, 0},
   {0, s^2/(4 q^2 (q + s^2)) + s^2/(4 q (1 - q^2)),
    -s/(2 q (q + s^2))},
   {0, -s/(2 q (q + s^2)), 1/(q + s^2)}
   };
inverseMetric = FullSimplify[Inverse[metric],
   Assumptions -> 0 < q < 1 && s > 0];
christoffel = Table[Together[1/2 Sum[inverseMetric[[mu, lambda]] (
       D[metric[[lambda, nu]], coordinates[[rho]]] +
        D[metric[[lambda, rho]], coordinates[[nu]]] -
        D[metric[[nu, rho]], coordinates[[lambda]]]), {lambda, 3}]],
   {mu, 3}, {nu, 3}, {rho, 3}];

metricJet = Map[makeJet[#, 3] &, metric, {2}];
metricPoint = metric /. {t -> 0, s -> 1};
inverseMetricPoint = inverseMetric /. {t -> 0, s -> 1};
christoffelPoint = christoffel /. {t -> 0, s -> 1};

vectorScaleJet[scalar_Association, vector_List, order_] :=
  jetTimes[scalar, #, order] & /@ vector;
vectorPlusJet[vectors_List, order_] := Table[
   jetPlus[vectors[[All, component]], order], {component, 3}];

lieMetricJet[vector_List, order_] := Table[jetPlus[Flatten@Table[{
       jetTimes[vector[[lambda]],
        jetDerivative[metricJet[[mu, nu]], lambda, order], order],
       jetTimes[metricJet[[lambda, nu]],
        jetDerivative[vector[[lambda]], mu, order], order],
       jetTimes[metricJet[[mu, lambda]],
        jetDerivative[vector[[lambda]], nu, order], order]},
      {lambda, 3}], order], {mu, 3}, {nu, 3}];

lieTensorJet[vector_List, tensor_List, order_] := Table[
   jetPlus[Flatten@Table[{
       jetTimes[vector[[lambda]],
        jetDerivative[tensor[[mu, nu]], lambda, order], order],
       jetTimes[tensor[[lambda, nu]],
        jetDerivative[vector[[lambda]], mu, order], order],
       jetTimes[tensor[[mu, lambda]],
        jetDerivative[vector[[lambda]], nu, order], order]},
      {lambda, 3}], order], {mu, 3}, {nu, 3}];

bracketJet[first_List, second_List, order_] := Table[
   jetPlus[Flatten@Table[{
       jetTimes[first[[rho]], jetDerivative[second[[mu]], rho, order],
        order],
       jetScale[-1, jetTimes[second[[rho]],
          jetDerivative[first[[mu]], rho, order], order], order]},
      {rho, 3}], order], {mu, 3}];

localPotentialPoint[vector_List, variation_List] := Module[
  {h, dh, trace, upper, covariantDerivative, divergence,
   traceGradient, vectorDerivative, vectorDerivativeRaised,
   connectionVariation, connectionDerivativeVariation,
   chargeCoefficient},
  h = Map[jetValue, variation, {2}];
  dh = Table[jetPartial[variation[[mu, nu]], derivative],
    {derivative, 3}, {mu, 3}, {nu, 3}];
  trace = Together@Sum[inverseMetricPoint[[mu, nu]] h[[mu, nu]],
     {mu, 3}, {nu, 3}];
  upper = Table[Together@Sum[inverseMetricPoint[[mu, alpha]]
       h[[alpha, beta]] inverseMetricPoint[[beta, nu]],
      {alpha, 3}, {beta, 3}], {mu, 3}, {nu, 3}];
  covariantDerivative = Table[Together[
      dh[[derivative, mu, nu]] -
       Sum[christoffelPoint[[lambda, derivative, mu]] h[[lambda, nu]] +
         christoffelPoint[[lambda, derivative, nu]] h[[mu, lambda]],
        {lambda, 3}]],
    {derivative, 3}, {mu, 3}, {nu, 3}];
  divergence = Table[Together@Sum[
      inverseMetricPoint[[nu, alpha]] inverseMetricPoint[[rho, beta]]
       covariantDerivative[[rho, alpha, beta]],
      {rho, 3}, {alpha, 3}, {beta, 3}], {nu, 3}];
  traceGradient = Table[Together@Sum[
      inverseMetricPoint[[mu, derivative]] inverseMetricPoint[[alpha, beta]]
       covariantDerivative[[derivative, alpha, beta]],
      {derivative, 3}, {alpha, 3}, {beta, 3}], {mu, 3}];
  vectorDerivative = Table[Together[
      jetPartial[vector[[nu]], rho] +
       Sum[christoffelPoint[[nu, rho, lambda]] jetValue[vector[[lambda]]],
        {lambda, 3}]], {nu, 3}, {rho, 3}];
  vectorDerivativeRaised = Table[Together@Sum[
      inverseMetricPoint[[mu, rho]] vectorDerivative[[nu, rho]], {rho, 3}],
    {nu, 3}, {mu, 3}];
  connectionVariation = Table[Together[1/2 Sum[
       inverseMetricPoint[[nu, beta]] (
        covariantDerivative[[alpha, rho, beta]] +
         covariantDerivative[[rho, alpha, beta]] -
         covariantDerivative[[beta, alpha, rho]]), {beta, 3}]],
    {nu, 3}, {alpha, 3}, {rho, 3}];
  connectionDerivativeVariation = Table[Together[
      -Sum[upper[[mu, alpha]] vectorDerivative[[nu, alpha]], {alpha, 3}] +
       Sum[inverseMetricPoint[[mu, alpha]]
         connectionVariation[[nu, alpha, rho]] jetValue[vector[[rho]]],
        {alpha, 3}, {rho, 3}]], {mu, 3}, {nu, 3}];
  chargeCoefficient[mu_, nu_] := Together[
    -connectionDerivativeVariation[[mu, nu]] -
     trace vectorDerivativeRaised[[nu, mu]]/2 +
     jetValue[vector[[mu]]] (divergence[[nu]] - traceGradient[[nu]])];
  Table[Together[(chargeCoefficient[1, index] -
       chargeCoefficient[index, 1])/(16 Pi)], {index, {2, 3}}]
  ];

endpointSignInput = Environment["POINT_JET_ENDPOINT_SIGN"];
endpointSign = If[StringQ[endpointSignInput] &&
    StringLength[endpointSignInput] > 0,
   ToExpression[endpointSignInput], 1];
anchorSection = Environment["POINT_JET_ANCHOR_SECTION"];

realClosedCosineMode[frequency_] := Module[
  {phase, aa, bb, oldTime, oldRadial, oldAngular},
  phase = frequency (t - endpointSign Pi/4 +
      endpointSign ArcSin[q]/2);
  aa = (frequency - 2) (frequency + 1)/2;
  bb = frequency (frequency + 1)/2;
  oldTime = -Cos[phase] s^frequency (s^2 - aa q)/
    (q + s^2)^((frequency + 2)/2);
  oldRadial = -frequency Sin[phase] s^(frequency - 1)
    (2 s^2 + (frequency + 1) q)/
    (2 Sqrt[q] (q + s^2)^(frequency/2));
  oldAngular = Cos[phase] s^(frequency - 2) (s^2 + bb q)/
    (q + s^2)^(frequency/2);
  {oldTime,
   -2 endpointSign Sqrt[1 - q^2] oldAngular,
   Sqrt[q] oldRadial -
    endpointSign s Sqrt[1 - q^2] oldAngular/q}
  ];

realClosedSineMode[frequency_] := Module[
  {phase, aa, bb, oldTime, oldRadial, oldAngular},
  phase = frequency (t - endpointSign Pi/4 +
      endpointSign ArcSin[q]/2);
  aa = (frequency - 2) (frequency + 1)/2;
  bb = frequency (frequency + 1)/2;
  oldTime = -Sin[phase] s^frequency (s^2 - aa q)/
    (q + s^2)^((frequency + 2)/2);
  oldRadial = frequency Cos[phase] s^(frequency - 1)
    (2 s^2 + (frequency + 1) q)/
    (2 Sqrt[q] (q + s^2)^(frequency/2));
  oldAngular = Sin[phase] s^(frequency - 2) (s^2 + bb q)/
    (q + s^2)^(frequency/2);
  {oldTime,
   -2 endpointSign Sqrt[1 - q^2] oldAngular,
   Sqrt[q] oldRadial -
    endpointSign s Sqrt[1 - q^2] oldAngular/q}
  ];

projectedMode["Cosine", frequency_] := If[anchorSection === "PSL",
  realClosedCosineMode[frequency] -
   Cos[Pi frequency/4]/Cos[Pi/4] realClosedCosineMode[1],
  realClosedCosineMode[frequency] +
   Cos[Pi frequency/4] realClosedCosineMode[4]];
projectedMode["Sine", frequency_] := If[anchorSection === "PSL",
  realClosedSineMode[frequency] -
   Sin[Pi frequency/4]/Sin[Pi/4] realClosedSineMode[1],
  realClosedSineMode[frequency] -
   Sin[Pi frequency/4] realClosedSineMode[2]];

modularOld = 2 Sqrt[2] Pi {
    (s/Sqrt[q]) Cos[t] Sqrt[(1 + q)/2]/
      (Sqrt[q + s^2]/Sqrt[q]) - 1/Sqrt[2],
    (Sqrt[q + s^2]/Sqrt[q]) Sin[t] Sqrt[(1 + q)/2],
    -endpointSign (Sqrt[q + s^2]/Sqrt[q]) Sin[t]
      Sqrt[(1 - q)/2]/(s/Sqrt[q])
    };
modularVector = {
   modularOld[[1]],
   -2 endpointSign Sqrt[1 - q^2] modularOld[[3]],
   Sqrt[q] modularOld[[2]] -
    endpointSign s Sqrt[1 - q^2] modularOld[[3]]/q
   };
modularJet = makeJet[#, 2] & /@ modularVector;

firstSymbolicFrequency =
  Environment["POINT_JET_SYMBOLIC_FREQUENCY"] === "1";
secondSymbolicFrequency =
  Environment["POINT_JET_SECOND_SYMBOLIC_FREQUENCY"] === "1";
anySymbolicFrequency = firstSymbolicFrequency || secondSymbolicFrequency;
firstFrequency = If[firstSymbolicFrequency, modeFrequency, 3];
secondFrequency = If[secondSymbolicFrequency, modeFrequencyTwo, 2];
firstSectorInput = Environment["POINT_JET_FIRST_SECTOR"];
secondSectorInput = Environment["POINT_JET_SECOND_SECTOR"];
firstSector = If[MemberQ[{"Cosine", "Sine"}, firstSectorInput],
   firstSectorInput, "Cosine"];
secondSector = If[MemberQ[{"Cosine", "Sine"}, secondSectorInput],
   secondSectorInput, "Cosine"];
firstSeedExpression = projectedMode[firstSector, firstFrequency];
secondSeedExpression = projectedMode[secondSector, secondFrequency];
firstSeedJet = makeJet[#, 3] & /@ firstSeedExpression;
secondSeedJet = makeJet[#, 3] & /@ secondSeedExpression;

profileExpression = length^2 q/(length^2 q + s^2);
profileJet = makeJet[profileExpression, 3];
oneMinusProfileJet = jetPlus[{constantJet[1, 3],
    jetScale[-1, profileJet, 3]}, 3];
minusProfileJet = jetScale[-1, profileJet, 3];

properJet[seed_] := vectorScaleJet[minusProfileJet, seed, 2];
residualJet[seed_] := lieMetricJet[
   vectorScaleJet[oneMinusProfileJet, seed, 2], 1];
seedMetricJet[seed_] := lieMetricJet[seed, 2];
modularMetricJet[seed_] := lieTensorJet[modularJet, seedMetricJet[seed], 1];
commutatorJet[seed_] := bracketJet[modularJet, properJet[seed], 1];

Print["building point jets for sectors/frequencies ",
  {{firstSector, firstFrequency}, {secondSector, secondFrequency}},
  " at endpoint sign ", endpointSign];
firstProper = properJet[firstSeedJet];
secondProper = properJet[secondSeedJet];
firstResidual = residualJet[firstSeedJet];
secondResidual = residualJet[secondSeedJet];
firstCommutator = commutatorJet[firstSeedJet];
secondCommutator = commutatorJet[secondSeedJet];
firstModular = modularMetricJet[firstSeedJet];
secondModular = modularMetricJet[secondSeedJet];

Print["assembling four pointwise Iyer--Wald blocks"];
blockOne = localPotentialPoint[firstCommutator, secondResidual];
blockTwo = localPotentialPoint[secondCommutator, firstResidual];
blockThree = localPotentialPoint[firstProper, secondModular];
blockFour = localPotentialPoint[secondProper, firstModular];
Print["point-block dimensions: ",
  Dimensions /@ {blockOne, blockTwo, blockThree, blockFour}];
potential = Together /@ (1/2 (-blockOne - blockTwo + blockThree + blockFour));

(* The inner outward conormal is -ds because the wedge is s>=1.  With the
   future covector and q increasing away from the right anchor, the resulting
   parameter density is +k^{ts}/(2 q sqrt(1-q^2)). *)
densityQ = Factor@Together[
   potential[[2]]/(2 q Sqrt[1 - q^2])];

frequencyAssumptions = length > 0 &&
   (!firstSymbolicFrequency ||
     (modeFrequency >= 2 && Element[modeFrequency, Integers])) &&
   (!secondSymbolicFrequency ||
     (modeFrequencyTwo >= 2 && Element[modeFrequencyTwo, Integers]));

If[Environment["POINT_JET_STRUCTURE_CHECK"] === "1",
 profileLambda = Unique["profileLambda"];
 rationalLambdaDensity = Cancel@Together[
    densityQ /. length -> Sqrt[profileLambda]];
 structureNumerator = Numerator[rationalLambdaDensity];
 structureDenominator = Denominator[rationalLambdaDensity];
 lambdaCoefficients = Table[
    Coefficient[structureNumerator, profileLambda, power],
    {power, 0, 4}];
 requiredQOrders = {Infinity, 3, 2, 4, 6};
 coefficientVanishingResiduals = Flatten@Table[
    If[requiredQOrders[[power + 1]] === Infinity,
     {FullSimplify[lambdaCoefficients[[power + 1]],
       Assumptions -> frequencyAssumptions]},
     Table[FullSimplify[
       D[lambdaCoefficients[[power + 1]], {q, derivative}] /. q -> 0,
       Assumptions -> frequencyAssumptions],
      {derivative, 0, requiredQOrders[[power + 1]] - 1}]],
    {power, 0, 4}];
 centreVanishingResiduals = Table[FullSimplify[
    lambdaCoefficients[[power + 1]] /. q -> 1,
    Assumptions -> frequencyAssumptions], {power, 0, 4}];
 frequencyObjects = {modeFrequency, modeFrequencyTwo};
 boundedObjects = DeleteDuplicates@Join[
    Cases[structureNumerator,
     Power[1 + q, exponent_] /;
       !FreeQ[exponent, Alternatives @@ frequencyObjects], Infinity],
    Cases[structureNumerator,
     (Sin | Cos)[argument_] /;
       !FreeQ[argument, Alternatives @@ frequencyObjects], Infinity]];
 boundedRules = Thread[boundedObjects ->
     Array[boundedAmplitude, Length[boundedObjects]]];
 strippedLambdaCoefficients = Expand[
     lambdaCoefficients /. boundedRules];
 frequencyDegrees = Table[
    With[{scaled = Expand[
        strippedLambdaCoefficients[[power + 1]] /.
         {modeFrequency -> degreeScale modeFrequency,
          modeFrequencyTwo -> degreeScale modeFrequencyTwo}]},
     Exponent[scaled, degreeScale]], {power, 1, 4}];
 numeratorPowerExponents = DeleteDuplicates@Cases[
    structureNumerator,
    Power[1 + q, exponent_] /;
      !FreeQ[exponent, Alternatives @@ frequencyObjects] :> exponent,
    Infinity];
 noExponentialGrowthConditions = And @@ Flatten@Table[
     {FullSimplify[Coefficient[exponent, frequency] >= 0] === True,
      FullSimplify[Coefficient[exponent, frequency] <= 1/2] === True},
     {exponent, numeratorPowerExponents},
     {frequency, frequencyObjects}];
 expectedFixedRootPower = 15 -
    2 Count[{firstSector, secondSector}, "Sine"];
 expectedDenominator = 64 Sqrt[1 - q] Sqrt[1 + q]^expectedFixedRootPower
    (1 + q)^(modeFrequency/2) (1 + q)^(modeFrequencyTwo/2)
    (q - 1) (1 + profileLambda q)^4;
 denominatorResidual = FullSimplify[
    structureDenominator/expectedDenominator,
    Assumptions -> frequencyAssumptions && 0 < q < 1 &&
      profileLambda > 0];
 expectedPSLDenominatorResidual =
   (1 + q)^(-(9 -
        2 Count[{firstSector, secondSector}, "Sine"])/2);
 denominatorCondition = If[anchorSection === "PSL",
   FullSimplify[
      denominatorResidual - expectedPSLDenominatorResidual,
      Assumptions -> 0 < q < 1] === 0,
   MemberQ[{1, -1}, denominatorResidual]];
 structureConditions = {
    Exponent[structureNumerator, profileLambda] === 4,
    Exponent[structureDenominator, profileLambda] === 4,
    coefficientVanishingResiduals ===
     ConstantArray[0, Length[coefficientVanishingResiduals]],
    centreVanishingResiduals === ConstantArray[0, 5],
    Max[frequencyDegrees] <= 6,
    noExponentialGrowthConditions,
    denominatorCondition
    };
 structureTestIDs = {
    "sectioned transition numerator has profile degree four",
    "sectioned transition denominator has profile degree four",
    "profile coefficients have q valuations infinity, three, two, four, six",
    "every profile coefficient cancels one degenerate centre factor",
    "bounded-amplitude frequency degree is at most six",
    "frequency-dependent powers cannot grow relative to the common denominator",
    "common endpoint denominator has the exact section-dependent bounded factor"
    };
 Print[<|"Sectors" -> {firstSector, secondSector},
   "EndpointSign" -> endpointSign,
   "RequiredQOrdersByLambdaPower" -> requiredQOrders,
   "FrequencyDegreesByPositiveLambdaPower" -> frequencyDegrees,
   "NumeratorFrequencyDependentPowerExponents" ->
    numeratorPowerExponents,
   "DenominatorResidual" -> denominatorResidual|>];
 adsRindlerTransitionPointJetStructureReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {structureConditions, structureTestIDs}];
 Print[Count[structureConditions, True], "/",
  Length[structureConditions], " structure tests passed"];
 If[And @@ structureConditions =!= True, Exit[1]];
 Exit[0]];

dumpPath = Environment["POINT_JET_DUMP_PATH"];
If[StringQ[dumpPath] && StringLength[dumpPath] > 0,
 Export[dumpPath, densityQ, "WXF"]];
If[Environment["POINT_JET_DUMP_ONLY"] === "1",
 Print[<|"DumpPath" -> dumpPath,
   "DensityLeafCount" -> LeafCount[densityQ]|>]; Exit[0]];

defaultFixedRun = !anySymbolicFrequency && firstSector === "Cosine" &&
   secondSector === "Cosine" && firstFrequency === 3 &&
   secondFrequency === 2 && endpointSign === 1 &&
   anchorSection =!= "PSL";
fixedSeries = If[!defaultFixedRun, Missing["NondefaultRun"],
   FullSimplify[Series[densityQ, {q, 0, 3}],
    Assumptions -> length > 0]];
fixedCoefficients = If[MissingQ[fixedSeries], Missing["SymbolicRun"],
   Table[FullSimplify[Coefficient[Normal[fixedSeries], q, order],
     Assumptions -> length > 0], {order, -2, 3}]];
expectedFixedCoefficients = {0, 0, 0, 0,
   3 length^4/(8 Sqrt[2]),
   -length^2 (24 + length^2 + 3 length^4)/(2 Sqrt[2])};

symbolicEndpointData = If[!anySymbolicFrequency, Missing["FixedRun"],
   TimeConstrained[Module[{rationalDensity, numerator, denominator,
      denominatorZero, denominatorNonzero, numeratorZero, numeratorFirst,
      qSquaredCoefficient},
     rationalDensity = Cancel@Together[densityQ];
     numerator = Numerator[rationalDensity];
     denominator = Denominator[rationalDensity];
     denominatorZero = FullSimplify[denominator /. q -> 0,
       Assumptions -> frequencyAssumptions];
     denominatorNonzero = FullSimplify[denominatorZero != 0,
       Assumptions -> frequencyAssumptions];
     numeratorZero = FullSimplify[numerator /. q -> 0,
       Assumptions -> frequencyAssumptions];
     numeratorFirst = FullSimplify[D[numerator, q] /. q -> 0,
       Assumptions -> frequencyAssumptions];
     qSquaredCoefficient = FullSimplify[
       (D[numerator, {q, 2}] /. q -> 0)/(2 denominatorZero),
       Assumptions -> frequencyAssumptions];
     <|"DenominatorAtEndpoint" -> denominatorZero,
       "DenominatorNonzero" -> denominatorNonzero,
       "NumeratorAtEndpoint" -> numeratorZero,
       "NumeratorFirstDerivativeAtEndpoint" -> numeratorFirst,
       "QSquaredCoefficient" -> qSquaredCoefficient|>],
    600, $Aborted]];

(* x=tan(phi), q=(1-x^2)/(1+x^2), and
   dx/dq=-(1+x^2)^2/(4x).  The original x-density is therefore obtained
   from the q-density by dq/dx=-4x/(1+x^2)^2.  The point-jet q parameter
   increases from the right anchor toward the centre, opposite to increasing
   x, so densityQ=-densityX/(dq/dx). *)
xFromQ = Sqrt[(1 - q)/(1 + q)];
dqdxAtQ = -4 xFromQ/(1 + xFromQ^2)^2;
expectedDensityX =
  (length^2*(-1 + x)^2*(1 + x)^2*(
      18 + 42*length^2 + 25*length^4 + 9*length^6 -
       216*x^2 - 278*length^2*x^2 - 302*length^4*x^2 -
       114*length^6*x^2 - 318*x^4 - 125*length^2*x^4 +
       578*length^4*x^4 + 411*length^6*x^4 + 240*x^6 +
       1070*length^2*x^6 + 4*length^4*x^6 -
       684*length^6*x^6 + 390*x^8 - 454*length^2*x^8 -
       839*length^4*x^8 + 591*length^6*x^8 - 24*x^10 -
       432*length^2*x^10 + 714*length^4*x^10 -
       258*length^6*x^10 - 90*x^12 + 225*length^2*x^12 -
       180*length^4*x^12 + 45*length^6*x^12))/
    (32*Sqrt[2]*(-1 - length^2 - x^2 + length^2*x^2)^4);
coordinateResidual = If[!defaultFixedRun, Missing["NondefaultRun"],
   FullSimplify[densityQ +
     (expectedDensityX /. x -> xFromQ)/dqdxAtQ,
    Assumptions -> length > 0 && 0 < q < 1]];

testConditions = If[anySymbolicFrequency,
   {symbolicEndpointData =!= $Aborted,
    If[AssociationQ[symbolicEndpointData],
     symbolicEndpointData["DenominatorNonzero"] === True, False],
    If[AssociationQ[symbolicEndpointData],
     symbolicEndpointData["NumeratorAtEndpoint"] === 0, False],
    If[AssociationQ[symbolicEndpointData],
     symbolicEndpointData["NumeratorFirstDerivativeAtEndpoint"] === 0,
     False],
    If[AssociationQ[symbolicEndpointData],
     FreeQ[symbolicEndpointData["QSquaredCoefficient"],
      Indeterminate | ComplexInfinity | DirectedInfinity | Infinity],
     False]},
   If[defaultFixedRun,
    {fixedCoefficients === expectedFixedCoefficients,
     coordinateResidual === 0},
    {FreeQ[densityQ,
      Indeterminate | ComplexInfinity | DirectedInfinity | Infinity]}]];
testIDs = If[anySymbolicFrequency,
   {"symbolic-frequency endpoint extraction completed",
    "reduced density denominator is nonzero at the endpoint",
    "sectioned symbolic-frequency density has zero endpoint value",
    "sectioned symbolic-frequency density has zero first endpoint derivative",
    "sectioned symbolic-frequency q-squared coefficient is finite"},
   If[defaultFixedRun,
    {"point-jet endpoint coefficients match the direct original-coordinate density",
     "point-jet density is the coordinate transform of the exact direct density"},
    {"fixed-frequency point-jet density completed"}]];

Print[<|"FirstFrequency" -> firstFrequency,
  "SecondFrequency" -> secondFrequency,
  "Sectors" -> {firstSector, secondSector},
  "AnchorSection" -> If[anchorSection === "PSL", "PSL", "PA"],
  "EndpointSign" -> endpointSign,
  "DensityLeafCount" -> LeafCount[densityQ],
  "EndpointSeries" -> fixedSeries,
  "SymbolicEndpointData" -> symbolicEndpointData,
  "CoordinateResidual" -> coordinateResidual|>];
adsRindlerTransitionPointJetReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True, Exit[1]];
