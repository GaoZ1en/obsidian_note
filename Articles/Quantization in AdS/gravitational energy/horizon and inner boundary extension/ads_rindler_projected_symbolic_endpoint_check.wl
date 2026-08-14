(* ::Package:: *)

(*
  Direct symbolic-m endpoint calculation for

      B_L[P_A cos(m phi), P_A cos(2 phi)].

  Projection is performed on the real bulk vectors before constructing the
  non-Killing Iyer--Wald potential.  This avoids applying PowerExpand to a
  complex symbolic-frequency kernel before the integer residue class is
  fixed.  The desired result is divisibility by q^2 at q=cos(2 phi)=0.
*)

SetEnvironment["PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll[mSymbolic, qSymbolic, lengthSymbolic, realClosedCosine,
  seedSymbolic, seedTwo, profileSymbolic, vectorSymbolic, vectorTwo,
  residualSymbolic, residualTwo, commutatorSymbolic, commutatorTwo,
  potentialSymbolic, densityPhiSymbolic, densityQSymbolic,
  endpointQSeries, endpointCoefficients];

realClosedCosine[frequency_] := {
   -Cos[frequency (t - phi)] r^frequency
     (r^2 - (frequency - 2) (frequency + 1)/2)/
     (1 + r^2)^((frequency + 2)/2),
   -frequency Sin[frequency (t - phi)] r^(frequency - 1)
     (2 r^2 + frequency + 1)/(2 (1 + r^2)^(frequency/2)),
   Cos[frequency (t - phi)] r^(frequency - 2)
     (r^2 + frequency (frequency + 1)/2)/
     (1 + r^2)^(frequency/2)
   };

seedSymbolic = realClosedCosine[mSymbolic] +
   Cos[Pi mSymbolic/4] realClosedCosine[4];
seedTwo = realClosedCosine[2];
profileSymbolic = lengthSymbolic^2/(lengthSymbolic^2 + r^2);
vectorSymbolic = -profileSymbolic seedSymbolic;
vectorTwo = -profileSymbolic seedTwo;
residualSymbolic = lieMetric[seedSymbolic] + lieMetric[vectorSymbolic];
residualTwo = lieMetric[seedTwo] + lieMetric[vectorTwo];
commutatorSymbolic = lieBracketLocal[xiInterval, vectorSymbolic];
commutatorTwo = lieBracketLocal[xiInterval, vectorTwo];

Print["constructing direct projected symbolic-m potential"];
potentialSymbolic = TimeConstrained[1/2 (
     -localPotential[commutatorSymbolic, residualTwo]
     -localPotential[commutatorTwo, residualSymbolic]
     +localPotential[vectorSymbolic,
       lieCovariantTwoTensor[xiInterval, lieMetric[seedTwo]]]
     +localPotential[vectorTwo,
       lieCovariantTwoTensor[xiInterval, lieMetric[seedSymbolic]]]),
   1200, $Aborted];

densityPhiSymbolic = If[potentialSymbolic === $Aborted, $Aborted,
   TimeConstrained[Together[
     rtLineElement futureNormalLower[[1]] (
        innerNormalLower[[2]] potentialSymbolic[[1]] +
         innerNormalLower[[3]] potentialSymbolic[[2]]) /.
       {t -> 0, r -> explicitRtRadius, GNewton -> 1}], 900, $Aborted]];

densityQSymbolic = If[densityPhiSymbolic === $Aborted, $Aborted,
   TimeConstrained[FullSimplify[
     PowerExpand[densityPhiSymbolic /.
       phi -> ArcCos[qSymbolic]/2],
     Assumptions -> lengthSymbolic > 0 && 0 < qSymbolic < 1 &&
       mSymbolic >= 2 && Element[mSymbolic, Integers]], 900, $Aborted]];

endpointQSeries = If[densityQSymbolic === $Aborted, $Aborted,
   TimeConstrained[FullSimplify[
     Series[densityQSymbolic, {qSymbolic, 0, 3}],
     Assumptions -> lengthSymbolic > 0 && mSymbolic >= 2 &&
       Element[mSymbolic, Integers]], 900, $Aborted]];

endpointCoefficients = If[endpointQSeries === $Aborted, $Aborted,
   Table[FullSimplify[Coefficient[Normal[endpointQSeries], qSymbolic, j],
     Assumptions -> lengthSymbolic > 0 && mSymbolic >= 2 &&
       Element[mSymbolic, Integers]], {j, 0, 3}]];

testConditions = {
   potentialSymbolic =!= $Aborted,
   densityPhiSymbolic =!= $Aborted,
   densityQSymbolic =!= $Aborted,
   endpointQSeries =!= $Aborted,
   If[ListQ[endpointCoefficients],
    endpointCoefficients[[1 ;; 2]] === {0, 0}, False]
   };
testIDs = {
   "direct projected symbolic-m potential completed",
   "RT density completed",
   "compactified density completed",
   "endpoint q series completed",
   "projected density is divisible by q squared"
   };

Print[<|"EndpointQSeries" -> endpointQSeries,
  "EndpointCoefficientsQ0ThroughQ3" -> endpointCoefficients|>];
adsRindlerProjectedSymbolicEndpointReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True, Exit[1]];
