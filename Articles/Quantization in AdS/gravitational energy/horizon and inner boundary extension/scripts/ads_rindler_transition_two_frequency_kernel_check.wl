(* ::Package:: *)

(*
  Direct symbolic two-frequency kernel for the proper-profile transition.

  This script does not assume an endpoint-jet ansatz.  It computes the full
  non-Killing Iyer--Wald bilinear density for two closed unit-boundary
  Brown--Henneaux representatives at symbolic frequencies m,n, subtracts the
  local p=1 density, and takes the fixed-frequency endpoint scaling limit

      y = L^2 (Pi/4 - phi).

  The output is evidence for, or a falsification of, the universal endpoint
  distribution required by H51.  Uniformity when m,n grow with L is a
  separate estimate.
*)

SetEnvironment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll["Global`twoFrequency`*"];

twoFrequency`secondFrequencyInput =
  Environment["TRANSITION_SECOND_FREQUENCY"];
twoFrequency`firstFrequencyInput =
  Environment["TRANSITION_FIRST_FREQUENCY"];
twoFrequency`mInput = If[
  ! StringQ[twoFrequency`firstFrequencyInput] ||
   StringLength[twoFrequency`firstFrequencyInput] == 0,
  twoFrequency`m,
  ToExpression[twoFrequency`firstFrequencyInput]];
twoFrequency`nInput = If[
  ! StringQ[twoFrequency`secondFrequencyInput] ||
   StringLength[twoFrequency`secondFrequencyInput] == 0,
  twoFrequency`n,
  ToExpression[twoFrequency`secondFrequencyInput]];
twoFrequency`endpointPowerInput = Environment["TRANSITION_ENDPOINT_POWER"];
twoFrequency`endpointPower = If[
  ! StringQ[twoFrequency`endpointPowerInput] ||
   StringLength[twoFrequency`endpointPowerInput] == 0,
  1, ToExpression[twoFrequency`endpointPowerInput]];
twoFrequency`realEndpointPowerInput =
  Environment["TRANSITION_REAL_ENDPOINT_POWER"];
twoFrequency`realEndpointPower = If[
  ! StringQ[twoFrequency`realEndpointPowerInput] ||
   StringLength[twoFrequency`realEndpointPowerInput] == 0,
  1, ToExpression[twoFrequency`realEndpointPowerInput]];
twoFrequency`projectFirstCosine =
  Environment["TRANSITION_PROJECT_FIRST_COSINE"] === "1";
twoFrequency`specializeFirstInput =
  Environment["TRANSITION_SPECIALIZE_FIRST_FREQUENCY"];
twoFrequency`specializeFirst = If[
  StringQ[twoFrequency`specializeFirstInput] &&
   StringLength[twoFrequency`specializeFirstInput] > 0,
  ToExpression[twoFrequency`specializeFirstInput],
  Missing["NotRequested"]];

twoFrequency`closedMode[frequency_, chirality_] := With[
  {phase = Exp[-I chirality frequency (t - phi)]},
  {
   -phase r^frequency
     (r^2 - (frequency - 2) (frequency + 1)/2)/
     (1 + r^2)^((frequency + 2)/2),
   -I chirality frequency phase r^(frequency - 1)
     (2 r^2 + frequency + 1)/(2 (1 + r^2)^(frequency/2)),
   phase r^(frequency - 2)
     (r^2 + frequency (frequency + 1)/2)/
     (1 + r^2)^(frequency/2)
   }];

twoFrequency`profile = twoFrequency`radialProfile[r];
twoFrequency`profileValue =
  twoFrequency`length^2/(twoFrequency`length^2 + explicitRtRadius^2);
twoFrequency`profileFirst =
  -2 twoFrequency`length^2 explicitRtRadius/
   (twoFrequency`length^2 + explicitRtRadius^2)^2;
twoFrequency`profileSecond =
  2 twoFrequency`length^2
   (3 explicitRtRadius^2 - twoFrequency`length^2)/
   (twoFrequency`length^2 + explicitRtRadius^2)^3;
twoFrequency`profileRules = {
  twoFrequency`radialProfile[explicitRtRadius] ->
   twoFrequency`profileValue,
  Derivative[1][twoFrequency`radialProfile][explicitRtRadius] ->
   twoFrequency`profileFirst,
  Derivative[2][twoFrequency`radialProfile][explicitRtRadius] ->
   twoFrequency`profileSecond
  };

twoFrequency`bilinearDensityPhi[frequencyOne_, chiralityOne_,
   frequencyTwo_, chiralityTwo_] := Module[
  {seedOne, seedTwo, properVectorOne, properVectorTwo, residualMetricOne,
   residualMetricTwo, commutatorOne, commutatorTwo, potential},
  seedOne = twoFrequency`closedMode[frequencyOne, chiralityOne];
  seedTwo = twoFrequency`closedMode[frequencyTwo, chiralityTwo];
  properVectorOne = -twoFrequency`profile seedOne;
  properVectorTwo = -twoFrequency`profile seedTwo;
  residualMetricOne = lieMetric[(1 - twoFrequency`profile) seedOne];
  residualMetricTwo = lieMetric[(1 - twoFrequency`profile) seedTwo];
  commutatorOne = lieBracketLocal[xiInterval, properVectorOne];
  commutatorTwo = lieBracketLocal[xiInterval, properVectorTwo];
  potential = 1/2 (
     -localPotential[commutatorOne, residualMetricTwo]
     -localPotential[commutatorTwo, residualMetricOne]
     +localPotential[properVectorOne,
       lieCovariantTwoTensor[xiInterval, lieMetric[seedTwo]]]
     +localPotential[properVectorTwo,
       lieCovariantTwoTensor[xiInterval, lieMetric[seedOne]]]);
  Factor@FullSimplify[Together[
    rtLineElement futureNormalLower[[1]] (
       innerNormalLower[[2]] potential[[1]]
        + innerNormalLower[[3]] potential[[2]]) /.
      {t -> 0, r -> explicitRtRadius, GNewton -> 1} /.
      twoFrequency`profileRules],
    Assumptions -> twoFrequency`length > 0 &&
      -Pi/4 < phi < Pi/4 &&
      Element[{frequencyOne, frequencyTwo}, Integers] &&
      frequencyOne >= 2 && frequencyTwo >= 2]
  ];

Print["computing same-chirality layered kernel"];
twoFrequency`sameKernel = TimeConstrained[
  twoFrequency`bilinearDensityPhi[twoFrequency`mInput, 1,
   twoFrequency`nInput, 1], 900, $Aborted];
Print["same-chirality kernel status: ",
 If[twoFrequency`sameKernel === $Aborted, "aborted",
  LeafCount[twoFrequency`sameKernel]]];

Print["computing mixed-chirality layered kernel"];
twoFrequency`mixedKernel = TimeConstrained[
  twoFrequency`bilinearDensityPhi[twoFrequency`mInput, 1,
   twoFrequency`nInput, -1], 900, $Aborted];
Print["mixed-chirality kernel status: ",
 If[twoFrequency`mixedKernel === $Aborted, "aborted",
  LeafCount[twoFrequency`mixedKernel]]];

If[Environment["TRANSITION_ALL_CHIRALITIES"] === "1",
 Print["computing reverse-mixed and negative-chirality kernels"];
 twoFrequency`reverseMixedKernel = TimeConstrained[
   twoFrequency`bilinearDensityPhi[twoFrequency`mInput, -1,
    twoFrequency`nInput, 1], 900, $Aborted];
 twoFrequency`negativeKernel = TimeConstrained[
   twoFrequency`bilinearDensityPhi[twoFrequency`mInput, -1,
    twoFrequency`nInput, -1], 900, $Aborted];
 Print["additional chirality status: ",
  If[MemberQ[{twoFrequency`reverseMixedKernel,
      twoFrequency`negativeKernel}, $Aborted], "aborted",
   {LeafCount[twoFrequency`reverseMixedKernel],
    LeafCount[twoFrequency`negativeKernel]}]],
 twoFrequency`reverseMixedKernel = Conjugate[twoFrequency`mixedKernel];
 twoFrequency`negativeKernel = Conjugate[twoFrequency`sameKernel]];

If[twoFrequency`projectFirstCosine,
 Print["extracting fixed cosine-4 projection block from symbolic kernel"];
  If[IntegerQ[twoFrequency`mInput],
  twoFrequency`projectionSameKernel = TimeConstrained[
    twoFrequency`bilinearDensityPhi[4, 1,
     twoFrequency`nInput, 1], 900, $Aborted];
  twoFrequency`projectionMixedKernel = TimeConstrained[
    twoFrequency`bilinearDensityPhi[4, 1,
     twoFrequency`nInput, -1], 900, $Aborted];
  twoFrequency`projectionReverseMixedKernel = TimeConstrained[
    twoFrequency`bilinearDensityPhi[4, -1,
     twoFrequency`nInput, 1], 900, $Aborted];
  twoFrequency`projectionNegativeKernel = TimeConstrained[
    twoFrequency`bilinearDensityPhi[4, -1,
     twoFrequency`nInput, -1], 900, $Aborted],
  twoFrequency`projectionSameKernel =
    twoFrequency`sameKernel /. twoFrequency`mInput -> 4;
  twoFrequency`projectionMixedKernel =
    twoFrequency`mixedKernel /. twoFrequency`mInput -> 4;
  twoFrequency`projectionReverseMixedKernel =
    twoFrequency`reverseMixedKernel /. twoFrequency`mInput -> 4;
  twoFrequency`projectionNegativeKernel =
    twoFrequency`negativeKernel /. twoFrequency`mInput -> 4];
 Print["projection block status: ",
  If[MemberQ[{twoFrequency`projectionSameKernel,
      twoFrequency`projectionMixedKernel}, $Aborted], "aborted",
   {LeafCount[twoFrequency`projectionSameKernel],
    LeafCount[twoFrequency`projectionMixedKernel]}]]];

twoFrequency`realCosineKernel[] :=
  (twoFrequency`sameKernel + twoFrequency`mixedKernel +
    twoFrequency`reverseMixedKernel + twoFrequency`negativeKernel +
    If[twoFrequency`projectFirstCosine,
     Cos[Pi twoFrequency`mInput/4]
       (twoFrequency`projectionSameKernel +
        twoFrequency`projectionMixedKernel +
        twoFrequency`projectionReverseMixedKernel +
        twoFrequency`projectionNegativeKernel), 0])/4;

If[Environment["TRANSITION_REAL_ENDPOINT_QSERIES"] === "1",
 twoFrequency`qEndpoint = Unique["qEndpoint"];
 twoFrequency`realCosineEndpointQExpression = TimeConstrained[
   FullSimplify[PowerExpand@TrigExpand[
      ComplexExpand@Re[(twoFrequency`realCosineKernel[] /.
           If[MissingQ[twoFrequency`specializeFirst], {},
            {twoFrequency`mInput -> twoFrequency`specializeFirst}]) /.
         phi -> ArcCos[twoFrequency`qEndpoint]/2] /.
       Arg[I twoFrequency`qEndpoint +
          Sqrt[1 - twoFrequency`qEndpoint^2]] ->
        ArcSin[twoFrequency`qEndpoint]],
    Assumptions -> twoFrequency`length > 0 &&
      0 < twoFrequency`qEndpoint < 1], 300, $Aborted];
 twoFrequency`realCosineEndpointQSeries = If[
   twoFrequency`realCosineEndpointQExpression === $Aborted, $Aborted,
   TimeConstrained[
    Assuming[twoFrequency`length > 0 &&
      0 < twoFrequency`qEndpoint < 1 &&
      Element[twoFrequency`mInput, Reals],
     FullSimplify@Normal@Series[
       twoFrequency`realCosineEndpointQExpression,
       {twoFrequency`qEndpoint, 0, 3}]], 600, $Aborted]];
 twoFrequency`qSeriesConditions = {
   twoFrequency`realCosineEndpointQExpression =!= $Aborted,
   twoFrequency`realCosineEndpointQSeries =!= $Aborted,
   FreeQ[twoFrequency`realCosineEndpointQSeries,
    Indeterminate | ComplexInfinity | DirectedInfinity | Infinity]
   };
 Print[<|
   "FirstFrequency" -> twoFrequency`mInput,
   "SecondFrequency" -> twoFrequency`nInput,
   "ProjectedFirstCosine" -> twoFrequency`projectFirstCosine,
   "FiniteLEndpointQSeriesRight" ->
    twoFrequency`realCosineEndpointQSeries|>];
 Print[Count[twoFrequency`qSeriesConditions, True], "/",
  Length[twoFrequency`qSeriesConditions],
  " real endpoint-q-series tests passed"];
 If[And @@ twoFrequency`qSeriesConditions =!= True, Exit[1]];
 Exit[0]];

If[Environment["TRANSITION_REAL_ENDPOINT_PROFILE"] === "1",
 twoFrequency`lambdaEndpoint = Unique["lambdaEndpoint"];
 twoFrequency`yEndpoint = Unique["yEndpoint"];
 twoFrequency`realCosineDensityPhi = TimeConstrained[
   Factor@Together@PowerExpand@ComplexExpand[
     Re[twoFrequency`realCosineKernel[]]],
   300, $Aborted];
 twoFrequency`realCosineEndpointProfiles = If[
   twoFrequency`realCosineDensityPhi === $Aborted, $Aborted,
   TimeConstrained[FullSimplify[{
      Limit[(twoFrequency`realCosineDensityPhi /.
          {phi ->
            -Pi/4 + twoFrequency`yEndpoint/(2 twoFrequency`lambdaEndpoint),
           twoFrequency`length ->
            Sqrt[twoFrequency`lambdaEndpoint]})/
        (2 twoFrequency`lambdaEndpoint^twoFrequency`realEndpointPower),
       twoFrequency`lambdaEndpoint -> Infinity],
      Limit[(twoFrequency`realCosineDensityPhi /.
          {phi ->
            Pi/4 - twoFrequency`yEndpoint/(2 twoFrequency`lambdaEndpoint),
           twoFrequency`length ->
            Sqrt[twoFrequency`lambdaEndpoint]})/
        (2 twoFrequency`lambdaEndpoint^twoFrequency`realEndpointPower),
       twoFrequency`lambdaEndpoint -> Infinity]},
     Assumptions -> twoFrequency`yEndpoint > 0], 600, $Aborted]];
 twoFrequency`realCosineEndpointIntegrals = If[
   ListQ[twoFrequency`realCosineEndpointProfiles],
   TimeConstrained[FullSimplify[
     Integrate[#, {twoFrequency`yEndpoint, 0, Infinity},
        Assumptions -> twoFrequency`yEndpoint > 0] & /@
      twoFrequency`realCosineEndpointProfiles], 300, $Aborted],
   $Aborted];
 twoFrequency`realEndpointConditions = {
   twoFrequency`realCosineDensityPhi =!= $Aborted,
   twoFrequency`realCosineEndpointProfiles =!= $Aborted,
   FreeQ[twoFrequency`realCosineEndpointProfiles,
    Indeterminate | ComplexInfinity | DirectedInfinity | Infinity],
   twoFrequency`realCosineEndpointIntegrals =!= $Aborted,
   FreeQ[twoFrequency`realCosineEndpointIntegrals,
    Indeterminate | ComplexInfinity | DirectedInfinity | Infinity |
     Integrate]
   };
 Print[<|
   "FirstFrequency" -> twoFrequency`mInput,
   "SecondFrequency" -> twoFrequency`nInput,
   "RealEndpointPower" -> twoFrequency`realEndpointPower,
   "RealCosineEndpointProfilesLeftRight" ->
    twoFrequency`realCosineEndpointProfiles,
   "EndpointProfileIntegralsLeftRight" ->
    twoFrequency`realCosineEndpointIntegrals|>];
 Print[Count[twoFrequency`realEndpointConditions, True], "/",
  Length[twoFrequency`realEndpointConditions],
  " real endpoint-profile tests passed"];
 If[And @@ twoFrequency`realEndpointConditions =!= True, Exit[1]];
 Exit[0]];

If[Environment["TRANSITION_REAL_ENDPOINT_TAYLOR"] === "1",
 twoFrequency`endpointD = Unique["endpointD"];
 twoFrequency`realCosineDensityPhi = TimeConstrained[
   Factor@Together@PowerExpand@ComplexExpand[
     Re[twoFrequency`realCosineKernel[]]],
   300, $Aborted];
 twoFrequency`realEndpointTaylor = If[
   twoFrequency`realCosineDensityPhi === $Aborted, $Aborted,
   TimeConstrained[FullSimplify[{
      Series[twoFrequency`realCosineDensityPhi /.
        phi -> -Pi/4 + twoFrequency`endpointD,
       {twoFrequency`endpointD, 0, 3}],
      Series[twoFrequency`realCosineDensityPhi /.
        phi -> Pi/4 - twoFrequency`endpointD,
       {twoFrequency`endpointD, 0, 3}]},
     Assumptions -> twoFrequency`length > 0], 600, $Aborted]];
 twoFrequency`realTaylorConditions = {
   twoFrequency`realCosineDensityPhi =!= $Aborted,
   twoFrequency`realEndpointTaylor =!= $Aborted,
   FreeQ[twoFrequency`realEndpointTaylor,
    Indeterminate | ComplexInfinity | DirectedInfinity | Infinity]
   };
 Print[<|
   "FirstFrequency" -> twoFrequency`mInput,
   "SecondFrequency" -> twoFrequency`nInput,
   "ProjectedFirstCosine" -> twoFrequency`projectFirstCosine,
   "FiniteLEndpointTaylorLeftRight" ->
    twoFrequency`realEndpointTaylor|>];
 Print[Count[twoFrequency`realTaylorConditions, True], "/",
  Length[twoFrequency`realTaylorConditions],
  " real endpoint-Taylor tests passed"];
 If[And @@ twoFrequency`realTaylorConditions =!= True, Exit[1]];
 Exit[0]];

If[Environment["TRANSITION_RATIONAL_STRUCTURE"] === "1",
 twoFrequency`lambda = Unique["lambda"];
 twoFrequency`x = Unique["x"];
 twoFrequency`toCompactX[expression_] := TimeConstrained[
   Factor@Together@FullSimplify[
     TrigExpand[expression /. {
          phi -> ArcTan[twoFrequency`x],
          twoFrequency`length -> Sqrt[twoFrequency`lambda]}]/
       (1 + twoFrequency`x^2),
     Assumptions -> twoFrequency`lambda > 0 &&
       -1 < twoFrequency`x < 1], 600, $Aborted];
 twoFrequency`sameCompactX =
   twoFrequency`toCompactX[twoFrequency`sameKernel];
 twoFrequency`mixedCompactX =
   twoFrequency`toCompactX[twoFrequency`mixedKernel];
 twoFrequency`realCosineCompactX = If[
   IntegerQ[twoFrequency`mInput] && IntegerQ[twoFrequency`nInput],
   twoFrequency`toCompactX[
    ComplexExpand[Re[twoFrequency`realCosineKernel[]]]],
   Missing["RequiresFixedFrequencies"]];
 twoFrequency`structureData[expression_] := If[
   expression === $Aborted, $Aborted,
   With[{numerator = Numerator[Together[expression]],
     denominator = Denominator[Together[expression]]},
    <|"NumeratorLambdaDegree" ->
       Exponent[numerator, twoFrequency`lambda],
      "DenominatorLambdaDegree" ->
       Exponent[denominator, twoFrequency`lambda],
      "DenominatorFactorization" -> Factor[denominator],
      "LeafCount" -> LeafCount[expression]|>]];
 Print[<|
   "SameCompactStructure" ->
    twoFrequency`structureData[twoFrequency`sameCompactX],
   "MixedCompactStructure" ->
    twoFrequency`structureData[twoFrequency`mixedCompactX],
   "RealCosineCompactStructure" ->
    If[MissingQ[twoFrequency`realCosineCompactX],
     twoFrequency`realCosineCompactX,
     twoFrequency`structureData[twoFrequency`realCosineCompactX]]|>];
 If[MemberQ[{twoFrequency`sameCompactX, twoFrequency`mixedCompactX},
    $Aborted], Exit[2]];
 Exit[0]];

If[Environment["TRANSITION_REAL_COSINE_CHECK"] === "1",
 twoFrequency`realCosineDensity = TimeConstrained[
   ComplexExpand[Re[twoFrequency`realCosineKernel[]]], 300, $Aborted];
 twoFrequency`realCosineLayeredPoint = If[
   twoFrequency`realCosineDensity === $Aborted, $Aborted,
   FullSimplify[twoFrequency`realCosineDensity /.
     If[MissingQ[twoFrequency`specializeFirst],
      {twoFrequency`length -> 2, phi -> 0},
      {twoFrequency`mInput -> twoFrequency`specializeFirst,
       twoFrequency`length -> 2, phi -> 0}]]];
 twoFrequency`directConcreteDensity[seedOne_, seedTwo_] := Module[
   {profile, vectorOne, vectorTwo, residualOne, residualTwo,
    commutatorOne, commutatorTwo, potential},
   profile = twoFrequency`length^2/(twoFrequency`length^2 + r^2);
   vectorOne = -profile seedOne;
   vectorTwo = -profile seedTwo;
   residualOne = lieMetric[seedOne] + lieMetric[vectorOne];
   residualTwo = lieMetric[seedTwo] + lieMetric[vectorTwo];
   commutatorOne = lieBracketLocal[xiInterval, vectorOne];
   commutatorTwo = lieBracketLocal[xiInterval, vectorTwo];
   potential = 1/2 (
      -localPotential[commutatorOne, residualTwo]
      -localPotential[commutatorTwo, residualOne]
      +localPotential[vectorOne,
        lieCovariantTwoTensor[xiInterval, lieMetric[seedTwo]]]
      +localPotential[vectorTwo,
        lieCovariantTwoTensor[xiInterval, lieMetric[seedOne]]]);
   FullSimplify[rtLineElement futureNormalLower[[1]] (
       innerNormalLower[[2]] potential[[1]] +
        innerNormalLower[[3]] potential[[2]]) /.
     {t -> 0, r -> explicitRtRadius, GNewton -> 1} /.
     {twoFrequency`length -> 2, phi -> 0}]
   ];
 twoFrequency`realCosineDirectPoint = If[
   (IntegerQ[twoFrequency`mInput] ||
      IntegerQ[twoFrequency`specializeFirst]) &&
     IntegerQ[twoFrequency`nInput],
   TimeConstrained[twoFrequency`directConcreteDensity[
     If[twoFrequency`projectFirstCosine,
      projectedCosineGauge[If[IntegerQ[twoFrequency`mInput],
        twoFrequency`mInput, twoFrequency`specializeFirst]],
      unitCosineGauge[If[IntegerQ[twoFrequency`mInput],
        twoFrequency`mInput, twoFrequency`specializeFirst]]],
     unitCosineGauge[twoFrequency`nInput]], 600, $Aborted],
   Missing["RequiresFixedFrequencies"]];
 twoFrequency`realCosineResidual = If[
   MissingQ[twoFrequency`realCosineDirectPoint] ||
    MemberQ[{twoFrequency`realCosineLayeredPoint,
      twoFrequency`realCosineDirectPoint}, $Aborted],
   Missing["NotTested"],
   FullSimplify[twoFrequency`realCosineLayeredPoint -
     twoFrequency`realCosineDirectPoint]];
 twoFrequency`realCosineConditions = {
   twoFrequency`realCosineDensity =!= $Aborted,
   twoFrequency`realCosineLayeredPoint =!= $Aborted,
   twoFrequency`realCosineDirectPoint =!= $Aborted,
   If[MissingQ[twoFrequency`realCosineResidual], True,
    twoFrequency`realCosineResidual === 0]
   };
 Print[<|
   "FirstFrequency" -> twoFrequency`mInput,
   "SecondFrequency" -> twoFrequency`nInput,
   "LayeredCosineDensityAtL2Phi0" ->
    twoFrequency`realCosineLayeredPoint,
   "DirectConcreteCosineDensityAtL2Phi0" ->
    twoFrequency`realCosineDirectPoint,
   "Residual" -> twoFrequency`realCosineResidual|>];
 Print[Count[twoFrequency`realCosineConditions, True], "/",
  Length[twoFrequency`realCosineConditions],
  " real-cosine finite-profile tests passed"];
 If[And @@ twoFrequency`realCosineConditions =!= True, Exit[1]];
 Exit[0]];

If[Environment["TRANSITION_KERNEL_ONLY"] === "1",
 twoFrequency`kernelOnlyDirectLocal = If[
   IntegerQ[twoFrequency`mInput] && IntegerQ[twoFrequency`nInput],
   {
    localUpsilon2501BilinearPhi[
      twoFrequency`closedMode[twoFrequency`mInput, 1],
      twoFrequency`closedMode[twoFrequency`nInput, 1]] /. phi -> 0,
    localUpsilon2501BilinearPhi[
      twoFrequency`closedMode[twoFrequency`mInput, 1],
      twoFrequency`closedMode[twoFrequency`nInput, -1]] /. phi -> 0
    }, {}];
 twoFrequency`kernelOnlyLargeProfile = If[
   IntegerQ[twoFrequency`mInput] && IntegerQ[twoFrequency`nInput],
   N[{
     twoFrequency`sameKernel,
     twoFrequency`mixedKernel} /.
     {phi -> 0, twoFrequency`length -> 10^6}, 30], {}];
 twoFrequency`kernelOnlyLocalResidual = If[
   twoFrequency`kernelOnlyDirectLocal === {}, {},
   Chop[N[twoFrequency`kernelOnlyLargeProfile -
      twoFrequency`kernelOnlyDirectLocal, 20], 10^-8]];
 twoFrequency`kernelOnlyConditions = {
   twoFrequency`sameKernel =!= $Aborted,
   twoFrequency`mixedKernel =!= $Aborted,
   FreeQ[{twoFrequency`sameKernel, twoFrequency`mixedKernel},
    twoFrequency`radialProfile | Derivative[_][twoFrequency`radialProfile]],
   If[twoFrequency`kernelOnlyLocalResidual === {}, True,
    twoFrequency`kernelOnlyLocalResidual === {0, 0}]
   };
 Print[<|
   "SecondFrequency" -> twoFrequency`nInput,
   "FirstFrequency" -> twoFrequency`mInput,
   "SameKernelLeafCount" -> If[twoFrequency`sameKernel === $Aborted,
     $Aborted, LeafCount[twoFrequency`sameKernel]],
   "MixedKernelLeafCount" -> If[twoFrequency`mixedKernel === $Aborted,
     $Aborted, LeafCount[twoFrequency`mixedKernel]],
   "ProfileSubstitutionComplete" ->
    twoFrequency`kernelOnlyConditions[[3]],
   "LargeProfileAtPhiZero" -> twoFrequency`kernelOnlyLargeProfile,
   "DirectLocalAtPhiZero" -> twoFrequency`kernelOnlyDirectLocal,
   "LocalLimitResidual" -> twoFrequency`kernelOnlyLocalResidual|>];
 Print[Count[twoFrequency`kernelOnlyConditions, True], "/",
  Length[twoFrequency`kernelOnlyConditions],
  " kernel-only tests passed"];
 If[And @@ twoFrequency`kernelOnlyConditions =!= True, Exit[1]];
 Exit[0]];

Print["computing independent local CPS kernels"];
twoFrequency`localSame = TimeConstrained[Factor@FullSimplify[
   localUpsilon2501BilinearPhi[
    twoFrequency`closedMode[twoFrequency`mInput, 1],
    twoFrequency`closedMode[twoFrequency`nInput, 1]],
   Assumptions -> If[IntegerQ[twoFrequency`mInput] &&
      IntegerQ[twoFrequency`nInput], -Pi/4 < phi < Pi/4,
     Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
      twoFrequency`m >= 2 && twoFrequency`n >= 2 &&
      -Pi/4 < phi < Pi/4]], 600, $Aborted];
twoFrequency`localMixed = TimeConstrained[Factor@FullSimplify[
   localUpsilon2501BilinearPhi[
    twoFrequency`closedMode[twoFrequency`mInput, 1],
    twoFrequency`closedMode[twoFrequency`nInput, -1]],
   Assumptions -> If[IntegerQ[twoFrequency`mInput] &&
      IntegerQ[twoFrequency`nInput], -Pi/4 < phi < Pi/4,
     Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
      twoFrequency`m >= 2 && twoFrequency`n >= 2 &&
      -Pi/4 < phi < Pi/4]], 600, $Aborted];
Print["local kernel status: ",
 If[MemberQ[{twoFrequency`localSame, twoFrequency`localMixed}, $Aborted],
  "aborted", {LeafCount[twoFrequency`localSame],
   LeafCount[twoFrequency`localMixed]}]];

twoFrequency`endpointLaurentProfile[kernel_, local_, sign_] := Module[
  {scaledExpression},
  scaledExpression = PowerExpand[
    twoFrequency`epsilon^twoFrequency`endpointPower (kernel - local) /.
      {twoFrequency`length -> 1/Sqrt[twoFrequency`epsilon],
       phi -> sign (Pi/4 - twoFrequency`epsilon twoFrequency`y)}];
  TimeConstrained[
   Factor@FullSimplify[
     If[IntegerQ[twoFrequency`mInput] && IntegerQ[twoFrequency`nInput],
      Limit[scaledExpression, twoFrequency`epsilon -> 0,
       Direction -> "FromAbove"],
      SeriesCoefficient[scaledExpression,
       {twoFrequency`epsilon, 0, 0}]],
     Assumptions -> twoFrequency`y > 0 &&
       If[IntegerQ[twoFrequency`mInput], True,
        Element[twoFrequency`m, Integers] && twoFrequency`m >= 2]],
   600, $Aborted]
  ];

If[Environment["TRANSITION_ENDPOINT_EXPANSION"] === "1",
 Print["extracting right endpoint Laurent profiles"];
 twoFrequency`sameRightLaurent = twoFrequency`endpointLaurentProfile[
   twoFrequency`sameKernel, twoFrequency`localSame, 1];
 twoFrequency`mixedRightLaurent = twoFrequency`endpointLaurentProfile[
   twoFrequency`mixedKernel, twoFrequency`localMixed, 1];
 Print["extracting left endpoint Laurent profiles"];
 twoFrequency`sameLeftLaurent = twoFrequency`endpointLaurentProfile[
   twoFrequency`sameKernel, twoFrequency`localSame, -1];
 twoFrequency`mixedLeftLaurent = twoFrequency`endpointLaurentProfile[
   twoFrequency`mixedKernel, twoFrequency`localMixed, -1];
 twoFrequency`endpointLaurentObjects = {
   twoFrequency`sameRightLaurent, twoFrequency`mixedRightLaurent,
   twoFrequency`sameLeftLaurent, twoFrequency`mixedLeftLaurent};
 twoFrequency`endpointLaurentConditions = {
   FreeQ[twoFrequency`endpointLaurentObjects,
    $Aborted | Indeterminate | ComplexInfinity | DirectedInfinity[_]],
   FreeQ[twoFrequency`endpointLaurentObjects,
    twoFrequency`epsilon | SeriesCoefficient]
   };
 Print[<|
   "SecondFrequency" -> twoFrequency`nInput,
   "FirstFrequency" -> twoFrequency`mInput,
   "EndpointPower" -> twoFrequency`endpointPower,
   "SameRightLaurentProfile" -> twoFrequency`sameRightLaurent,
   "MixedRightLaurentProfile" -> twoFrequency`mixedRightLaurent,
   "SameLeftLaurentProfile" -> twoFrequency`sameLeftLaurent,
   "MixedLeftLaurentProfile" -> twoFrequency`mixedLeftLaurent|>];
 Print[Count[twoFrequency`endpointLaurentConditions, True], "/",
  Length[twoFrequency`endpointLaurentConditions],
  " endpoint-Laurent tests passed"];
 If[And @@ twoFrequency`endpointLaurentConditions =!= True, Exit[1]];
 Exit[0]];

twoFrequency`directLocalResiduals = If[
  ! IntegerQ[twoFrequency`nInput] ||
   MemberQ[{twoFrequency`localSame, twoFrequency`localMixed}, $Aborted],
  {},
  Flatten@Table[FullSimplify[{
     (twoFrequency`localSame /. twoFrequency`m -> first) -
      localUpsilon2501BilinearPhi[
       twoFrequency`closedMode[first, 1],
       twoFrequency`closedMode[twoFrequency`nInput, 1]],
     (twoFrequency`localMixed /. twoFrequency`m -> first) -
      localUpsilon2501BilinearPhi[
       twoFrequency`closedMode[first, 1],
       twoFrequency`closedMode[twoFrequency`nInput, -1]]
     }, Assumptions -> -Pi/4 < phi < Pi/4],
    {first, {2, 3, 4}}]];

Print["computing fixed-frequency endpoint profiles"];

twoFrequency`rightProfile[kernel_, local_] := TimeConstrained[
  Factor@FullSimplify[
    Limit[(kernel - local)/twoFrequency`length^2 /.
      phi -> Pi/4 - twoFrequency`y/twoFrequency`length^2,
     twoFrequency`length -> Infinity],
    Assumptions -> twoFrequency`y > 0 &&
      Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
      twoFrequency`m >= 2 && twoFrequency`n >= 2], 600, $Aborted];

twoFrequency`leftProfile[kernel_, local_] := TimeConstrained[
  Factor@FullSimplify[
    Limit[(kernel - local)/twoFrequency`length^2 /.
      phi -> -Pi/4 + twoFrequency`y/twoFrequency`length^2,
     twoFrequency`length -> Infinity],
    Assumptions -> twoFrequency`y > 0 &&
      Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
      twoFrequency`m >= 2 && twoFrequency`n >= 2], 600, $Aborted];

twoFrequency`sameRightProfile = If[
  MemberQ[{twoFrequency`sameKernel, twoFrequency`localSame}, $Aborted],
  $Aborted, twoFrequency`rightProfile[
   twoFrequency`sameKernel, twoFrequency`localSame]];
twoFrequency`sameLeftProfile = If[
  MemberQ[{twoFrequency`sameKernel, twoFrequency`localSame}, $Aborted],
  $Aborted, twoFrequency`leftProfile[
   twoFrequency`sameKernel, twoFrequency`localSame]];
twoFrequency`mixedRightProfile = If[
  MemberQ[{twoFrequency`mixedKernel, twoFrequency`localMixed}, $Aborted],
  $Aborted, twoFrequency`rightProfile[
   twoFrequency`mixedKernel, twoFrequency`localMixed]];
twoFrequency`mixedLeftProfile = If[
  MemberQ[{twoFrequency`mixedKernel, twoFrequency`localMixed}, $Aborted],
  $Aborted, twoFrequency`leftProfile[
   twoFrequency`mixedKernel, twoFrequency`localMixed]];

twoFrequency`sameRightIntegral = If[
  twoFrequency`sameRightProfile === $Aborted, $Aborted,
  TimeConstrained[FullSimplify[
    Integrate[twoFrequency`sameRightProfile,
     {twoFrequency`y, 0, Infinity},
     Assumptions -> Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
       twoFrequency`m >= 2 && twoFrequency`n >= 2], 300, $Aborted]];
twoFrequency`sameLeftIntegral = If[
  twoFrequency`sameLeftProfile === $Aborted, $Aborted,
  TimeConstrained[FullSimplify[
    Integrate[twoFrequency`sameLeftProfile,
     {twoFrequency`y, 0, Infinity},
     Assumptions -> Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
       twoFrequency`m >= 2 && twoFrequency`n >= 2], 300, $Aborted]];
twoFrequency`mixedRightIntegral = If[
  twoFrequency`mixedRightProfile === $Aborted, $Aborted,
  TimeConstrained[FullSimplify[
    Integrate[twoFrequency`mixedRightProfile,
     {twoFrequency`y, 0, Infinity},
     Assumptions -> Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
       twoFrequency`m >= 2 && twoFrequency`n >= 2], 300, $Aborted]];
twoFrequency`mixedLeftIntegral = If[
  twoFrequency`mixedLeftProfile === $Aborted, $Aborted,
  TimeConstrained[FullSimplify[
    Integrate[twoFrequency`mixedLeftProfile,
     {twoFrequency`y, 0, Infinity},
     Assumptions -> Element[{twoFrequency`m, twoFrequency`n}, Integers] &&
       twoFrequency`m >= 2 && twoFrequency`n >= 2], 300, $Aborted]];

twoFrequency`sameAnomaly = FullSimplify[
  twoFrequency`sameRightIntegral + twoFrequency`sameLeftIntegral];
twoFrequency`mixedAnomaly = FullSimplify[
  twoFrequency`mixedRightIntegral + twoFrequency`mixedLeftIntegral];

twoFrequency`finiteFrequencyPointwiseResiduals = If[
  MemberQ[{twoFrequency`sameKernel, twoFrequency`mixedKernel,
    twoFrequency`localSame, twoFrequency`localMixed}, $Aborted], {$Aborted},
  Flatten@Table[FullSimplify[{
     Limit[twoFrequency`sameKernel /. {twoFrequency`m -> first,
          twoFrequency`n -> second}, twoFrequency`length -> Infinity]
       - (twoFrequency`localSame /. {twoFrequency`m -> first,
          twoFrequency`n -> second}),
     Limit[twoFrequency`mixedKernel /. {twoFrequency`m -> first,
          twoFrequency`n -> second}, twoFrequency`length -> Infinity]
       - (twoFrequency`localMixed /. {twoFrequency`m -> first,
          twoFrequency`n -> second})
     }, Assumptions -> -Pi/4 < phi < Pi/4],
    {{first, second}, {{2, 3}, {3, 4}, {4, 5}}}]];

twoFrequency`objects = {
  twoFrequency`sameKernel, twoFrequency`mixedKernel,
  twoFrequency`localSame, twoFrequency`localMixed,
  twoFrequency`sameRightProfile, twoFrequency`sameLeftProfile,
  twoFrequency`mixedRightProfile, twoFrequency`mixedLeftProfile,
  twoFrequency`sameRightIntegral, twoFrequency`sameLeftIntegral,
  twoFrequency`mixedRightIntegral, twoFrequency`mixedLeftIntegral};

twoFrequency`testConditions = {
  FreeQ[twoFrequency`objects, $Aborted],
  If[IntegerQ[twoFrequency`nInput],
   twoFrequency`directLocalResiduals === ConstantArray[0, 6], True],
  twoFrequency`finiteFrequencyPointwiseResiduals === ConstantArray[0, 6],
  FreeQ[{twoFrequency`sameAnomaly, twoFrequency`mixedAnomaly},
   Integrate | Limit | $Aborted]
  };
twoFrequency`testIDs = {
  "symbolic same- and mixed-chirality kernels and endpoint profiles complete",
  "proper-profile limit agrees with direct local CPS densities",
  "finite-frequency proper kernels have the local pointwise limit",
  "both endpoint profiles integrate to closed symbolic anomalies"
  };

Print[<|
  "SameKernelLeafCount" -> If[twoFrequency`sameKernel === $Aborted,
    $Aborted, LeafCount[twoFrequency`sameKernel]],
  "MixedKernelLeafCount" -> If[twoFrequency`mixedKernel === $Aborted,
    $Aborted, LeafCount[twoFrequency`mixedKernel]],
  "SameRightProfile" -> twoFrequency`sameRightProfile,
  "SameLeftProfile" -> twoFrequency`sameLeftProfile,
  "MixedRightProfile" -> twoFrequency`mixedRightProfile,
  "MixedLeftProfile" -> twoFrequency`mixedLeftProfile,
  "SameAnomaly" -> twoFrequency`sameAnomaly,
  "MixedAnomaly" -> twoFrequency`mixedAnomaly,
  "PointwiseResiduals" -> twoFrequency`finiteFrequencyPointwiseResiduals
  |>];

twoFrequency`report = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {twoFrequency`testConditions, twoFrequency`testIDs}];
Print[Count[twoFrequency`testConditions, True], "/",
 Length[twoFrequency`testConditions], " tests passed"];
If[And @@ twoFrequency`testConditions =!= True,
 Print["failed tests: ", Pick[twoFrequency`testIDs,
   Map[TrueQ, twoFrequency`testConditions], False]];
 Exit[1]];
