(* ::Package:: *)

(*
  Exact regression for the weak Hollands--Wald collar and the complete
  pulled-back finite-action variables.

  This script checks three facts used by H60:

  1. the fixed quadratic Fermi polynomial realizes every normal two-jet;
  2. its coefficientwise injection into H^(s-5)_u H^2_y loses no more
     tangential regularity than the declared jet graph norm;
  3. for every action sector written in pulled-back variables, the HW tangent

       (h + R V, -V)

     has Delta_X g=h.  Hence a zero-two-jet change of off-cut extension is a
     sectorwise extended gauge degeneracy, not a new continuity estimate.

  The last statement concerns the complete pulled-back bulk/GHY/counterterm/
  Harlow--Wu/Hayward/embedding sectors.  It does not license dropping the
  shape terms from a fixed-domain formula.
*)

ClearAll["Global`*"];

(* ---------- Independent coefficient collar and its exact two-jet ---------- *)

fermiPolynomial =
  j00 + j10 y0 + j01 y1 + j20 y0^2/2 + j11 y0 y1 + j02 y1^2/2;
multiIndices = {{0, 0}, {1, 0}, {0, 1}, {2, 0}, {1, 1}, {0, 2}};
jetSymbols = {j00, j10, j01, j20, j11, j02};
recoveredJets = Table[
   D[fermiPolynomial, {y0, index[[1]]}, {y1, index[[2]]}] /.
    {y0 -> 0, y1 -> 0}, {index, multiIndices}];

(* The target coefficient weight is (1+m^2)^(s-5).  A normal r-jet in the
   declared graph norm carries (1+m^2)^(s-3-r).  Their quotient is
   (1+m^2)^(r-2), at most one for r<=2.  The distinguished extremal normal
   value has source exponent s-2 and therefore quotient (1+m^2)^(-3). *)
jetWeightRatios = Table[(1 + mode^2)^(order - 2), {order, 0, 2}];
normalValueWeightRatio = (1 + mode^2)^(-3);
weightBounds = FullSimplify[
   Join[Thread[jetWeightRatios <= 1], {normalValueWeightRatio <= 1}],
   Assumptions -> mode >= 0];

(* ---------- Complete pulled-back sector algebra ---------- *)

fieldDimension = 4;
gaugeDimension = 3;
numberOfSectors = 7;
verticalMap = Array[r, {fieldDimension, gaugeDimension}];
physicalTangent1 = Array[h1, fieldDimension];
physicalTangent2 = Array[h2, fieldDimension];
collar1 = Array[v1, gaugeDimension];
collar2 = Array[v2, gaugeDimension];
offCutChange1 = Array[w1, gaugeDimension];
offCutChange2 = Array[w2, gaugeDimension];

deltaX[metricTangent_, embeddingTangent_] :=
  metricTangent + verticalMap . embeddingTangent;

hwMetric1 = physicalTangent1 + verticalMap . collar1;
hwMetric2 = physicalTangent2 + verticalMap . collar2;
hwEmbedding1 = -collar1;
hwEmbedding2 = -collar2;
hwDelta1 = Expand[deltaX[hwMetric1, hwEmbedding1]];
hwDelta2 = Expand[deltaX[hwMetric2, hwEmbedding2]];

changedMetric1 = hwMetric1 + verticalMap . offCutChange1;
changedMetric2 = hwMetric2 + verticalMap . offCutChange2;
changedEmbedding1 = hwEmbedding1 - offCutChange1;
changedEmbedding2 = hwEmbedding2 - offCutChange2;
changedDelta1 = Expand[deltaX[changedMetric1, changedEmbedding1]];
changedDelta2 = Expand[deltaX[changedMetric2, changedEmbedding2]];

pureExtendedGaugeDelta = Expand[deltaX[
    verticalMap . offCutChange1, -offCutChange1]];

(* Each complete pulled-back action sector has a two-form which is a bilinear
   function of Delta_X g.  Generic antisymmetric matrices make the check
   sector-independent without assuming a special gravitational kernel. *)
sectorMatrices = Table[
   With[{raw = Array[Unique["f"], {fieldDimension, fieldDimension}]},
    raw - Transpose[raw]], {numberOfSectors}];
sectorForm[matrix_, first_, second_] := Expand[first . matrix . second];
fixedSectorForms = Table[
   sectorForm[sectorMatrices[[sector]], physicalTangent1,
    physicalTangent2], {sector, numberOfSectors}];
hwSectorForms = Table[
   sectorForm[sectorMatrices[[sector]], hwDelta1, hwDelta2],
   {sector, numberOfSectors}];
changedSectorForms = Table[
   sectorForm[sectorMatrices[[sector]], changedDelta1, changedDelta2],
   {sector, numberOfSectors}];

testConditions = {
   recoveredJets === jetSymbols,
   And @@ weightBounds,
   hwDelta1 === physicalTangent1 && hwDelta2 === physicalTangent2,
   changedDelta1 === physicalTangent1 &&
    changedDelta2 === physicalTangent2,
   pureExtendedGaugeDelta === ConstantArray[0, fieldDimension],
   And @@ Thread[hwSectorForms === fixedSectorForms],
   And @@ Thread[changedSectorForms === fixedSectorForms]
   };

testIDs = {
   "fixed Fermi polynomial realizes all six scalar normal two-jet entries",
   "declared jet graph norm controls the independent weak collar injection",
   "HW metric and embedding tangents have Delta_X g equal to h",
   "off-cut extension changes leave Delta_X g equal to h",
   "a simultaneous metric-embedding diffeomorphism has zero pulled-back tangent",
   "all complete pulled-back sector forms equal their fixed-section values",
   "all sector forms are independent of the off-cut collar extension"
   };

Print[<|
  "RecoveredJets" -> recoveredJets,
  "JetWeightRatios" -> jetWeightRatios,
  "NormalValueWeightRatio" -> normalValueWeightRatio,
  "HWDeltaResiduals" -> {hwDelta1 - physicalTangent1,
    hwDelta2 - physicalTangent2},
  "OffCutDeltaResiduals" -> {changedDelta1 - physicalTangent1,
    changedDelta2 - physicalTangent2}|>];

weakHWCollarPullbackReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " weak-HW-collar pullback tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
