(* ::Package:: *)

(*
  Exact normalization and projection checks for the physical right-moving
  Brown--Henneaux tower on the a=Pi/4 fixed-anchor cut.

  The symplectically normalized descendant zeta_n has physical frequency
  m=n+2 and boundary tangential amplitude

    c_n=(-i)^(n+1) Sqrt[2 G/(m (m^2-1))].

  The script proves the formula from the boundary lowering recurrence, checks
  the finite-rank anchor projection on real Fourier modes, and records the
  H^s weight seen by physical normalized coefficients.
*)

ClearAll["Global`*"];

physicalFrequency[n_Integer?NonNegative] := n + 2;
descendantNormalization[n_Integer?NonNegative] :=
  Sqrt[6/(n! (n + 3)!)];
primaryBoundaryAmplitude = -I Sqrt[gNewton/3];

(* At the conformal boundary, ad_{xi_-1} sends a frequency-m chiral vector
   to frequency m+1 and multiplies its tangential coefficient by
   -i (m-1). *)
rawBoundaryAmplitude[0] = primaryBoundaryAmplitude;
rawBoundaryAmplitude[n_Integer?Positive] :=
  rawBoundaryAmplitude[n] =
   -I n rawBoundaryAmplitude[n - 1];
normalizedBoundaryAmplitude[n_Integer?NonNegative] := FullSimplify[
   descendantNormalization[n] rawBoundaryAmplitude[n]];
closedBoundaryAmplitude[n_Integer?NonNegative] := With[
   {m = physicalFrequency[n]},
   (-I)^(n + 1) Sqrt[2 gNewton/(m (m^2 - 1))]];

amplitudeResiduals = Table[
   FullSimplify[
    normalizedBoundaryAmplitude[n] - closedBoundaryAmplitude[n],
    Assumptions -> gNewton > 0],
   {n, 0, 12}];

anchorA = Pi/4;
endpointMap[function_] := FullSimplify[
   {function /. phi -> anchorA, function /. phi -> -anchorA}];
anchorProjection[function_] := FullSimplify[
   function + Total[endpointMap[function]] Cos[4 phi]/2 -
    Subtract @@ endpointMap[function] Sin[2 phi]/2];

projectedCosine[m_Integer] := FullSimplify[
   anchorProjection[Cos[m phi]]];
projectedSine[m_Integer] := FullSimplify[
   anchorProjection[Sin[m phi]]];

(* Unit-boundary modes are physical normalized modes divided by |c_n|.  The
   ratios below are the coefficients needed to express an anchor-projected
   unit-boundary mode in the symplectically normalized tower. *)
amplitudeMagnitudeForFrequency[m_] :=
  Sqrt[2 gNewton/(m (m^2 - 1))];
cosineComplementCoefficient[m_Integer] := Cos[m anchorA];
sineComplementCoefficient[m_Integer] := -Sin[m anchorA];

normalizedCosineLiftRatio[m_Integer] := FullSimplify[
   cosineComplementCoefficient[m]
    amplitudeMagnitudeForFrequency[m]/
     amplitudeMagnitudeForFrequency[4],
   Assumptions -> gNewton > 0];
normalizedSineLiftRatio[m_Integer] := FullSimplify[
   sineComplementCoefficient[m]
    amplitudeMagnitudeForFrequency[m]/
     amplitudeMagnitudeForFrequency[2],
   Assumptions -> gNewton > 0];

(* If a_m are symplectically normalized coefficients and b_m=c_m a_m are
   unit-boundary Fourier coefficients, the H^s weight on a_m is exactly the
   expression below. *)
physicalHsWeight[m_, sobolevIndex_] := FullSimplify[
   (1 + m^2)^sobolevIndex
    amplitudeMagnitudeForFrequency[m]^2/gNewton];
physicalHsWeightAsymptotic = FullSimplify[
   Limit[
    physicalHsWeight[m, sobolevIndex]/m^(2 sobolevIndex - 3),
    m -> Infinity]];

(* Closed unit-boundary bulk representative.  It is useful for the
   high-frequency analysis because it avoids recursively expanding an
   increasing number of Lie brackets. *)
closedUnitComplexGaugeMode[m_Integer?Positive] /; m >= 2 :=
  Exp[-I m (t - phi)] {
    -r^m (r^2 - (m - 2) (m + 1)/2)/(1 + r^2)^((m + 2)/2),
    -I m r^(m - 1) (2 r^2 + m + 1)/(2 (1 + r^2)^(m/2)),
    r^(m - 2) (r^2 + m (m + 1)/2)/(1 + r^2)^(m/2)
    };

(* The explicit low descendants are recorded independently here so that the
   closed formula is tested without importing the larger corner benchmark. *)
closedModeSpotChecks = {
   closedUnitComplexGaugeMode[2] - {
     -Exp[-2 I (t - phi)] r^4/(1 + r^2)^2,
     -I Exp[-2 I (t - phi)] r (3 + 2 r^2)/(1 + r^2),
     Exp[-2 I (t - phi)] (3 + r^2)/(1 + r^2)},
   closedUnitComplexGaugeMode[3] - {
     -Exp[-3 I (t - phi)] r^3 (-2 + r^2)/(1 + r^2)^(5/2),
     -3 I Exp[-3 I (t - phi)] r^2 (2 + r^2)/(1 + r^2)^(3/2),
     Exp[-3 I (t - phi)] r (6 + r^2)/(1 + r^2)^(3/2)},
   closedUnitComplexGaugeMode[6] - {
     -Exp[-6 I (t - phi)] r^6 (-14 + r^2)/(1 + r^2)^4,
     -3 I Exp[-6 I (t - phi)] r^5 (7 + 2 r^2)/(1 + r^2)^3,
     Exp[-6 I (t - phi)] r^4 (21 + r^2)/(1 + r^2)^3}
   };

testConditions = {
   amplitudeResiduals === ConstantArray[0, 13],
   FullSimplify[Abs[closedBoundaryAmplitude[0]]^2 - gNewton/3,
     Assumptions -> gNewton > 0] === 0,
   FullSimplify[Abs[closedBoundaryAmplitude[4]]^2 - gNewton/105,
     Assumptions -> gNewton > 0] === 0,
   endpointMap[projectedCosine[3]] === {0, 0},
   endpointMap[projectedSine[3]] === {0, 0},
   FullSimplify[projectedCosine[3] -
      (Cos[3 phi] - Cos[4 phi]/Sqrt[2])] === 0,
   FullSimplify[projectedSine[3] -
      (Sin[3 phi] - Sin[2 phi]/Sqrt[2])] === 0,
   endpointMap[projectedCosine[5]] === {0, 0},
   FullSimplify[
     anchorProjection[Cos[3 phi] - Cos[5 phi]] -
      (Cos[3 phi] - Cos[5 phi])] === 0,
   FullSimplify[normalizedCosineLiftRatio[3] + Sqrt[5]/2,
     Assumptions -> gNewton > 0] === 0,
   FullSimplify[normalizedSineLiftRatio[3] + 1/(2 Sqrt[2]),
     Assumptions -> gNewton > 0] === 0,
   physicalHsWeightAsymptotic === 2,
   FullSimplify[closedModeSpotChecks] === ConstantArray[0, {3, 3}]
   };

testIDs = {
   "closed physical boundary amplitude through n=12",
   "primary boundary amplitude magnitude",
   "n=4 boundary amplitude magnitude",
   "projected m=3 cosine fixes both anchors",
   "projected m=3 sine fixes both anchors",
   "explicit m=3 cosine projection",
   "explicit m=3 sine projection",
   "projected m=5 cosine fixes both anchors",
   "cross-frequency counterexample is already projected",
   "physical normalized m=3 to m=4 cosine lift ratio",
   "physical normalized m=3 to m=2 sine lift ratio",
   "physical Hs weight has m^(2s-3) asymptotic",
   "closed unit-boundary bulk mode at m=2,3,6"
   };

Print[<|
  "BoundaryAmplitudeFormula" -> closedBoundaryAmplitude[n],
  "ProjectedCosine3" -> projectedCosine[3],
  "ProjectedSine3" -> projectedSine[3],
  "CosineLiftRatio3to4" -> normalizedCosineLiftRatio[3],
  "SineLiftRatio3to2" -> normalizedSineLiftRatio[3],
  "PhysicalHsWeight" -> physicalHsWeight[m, sobolevIndex],
  "PhysicalHsAsymptoticCoefficient" -> physicalHsWeightAsymptotic,
  "ClosedUnitComplexGaugeMode" -> closedUnitComplexGaugeMode[m]|>];

adsRindlerProjectedPhysicalBasisReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
