(* ::Package:: *)

(*
  Exact high-frequency probe for the local fixed-anchor cocycle.

  This file loads only the definitions of the low-mode benchmark.  It then
  uses the closed unit-boundary Brown--Henneaux vector at symbolic frequency
  m to compute the direct symmetric bilinear kernel.  No finite-action wall,
  joint, or proper-completion conclusion is inferred here.
*)

SetEnvironment[
 "PROJECTED_LOCAL_UPSILON_DEFINITIONS_ONLY" -> "1"];
Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_local_upsilon_check.wl"}]];

ClearAll[unitComplexGaugeClosed, unitComplexGaugeClosedConjugate,
 symbolicFrequency];
unitComplexGaugeClosed[m_] := With[{phase = Exp[-I m (t - phi)]}, {
   -phase r^m (r^2 - (m - 2) (m + 1)/2)/(1 + r^2)^((m + 2)/2),
   -I m phase r^(m - 1) (2 r^2 + m + 1)/(2 (1 + r^2)^(m/2)),
   phase r^(m - 2) (r^2 + m (m + 1)/2)/(1 + r^2)^(m/2)
   }];
unitComplexGaugeClosedConjugate[m_] := With[
  {phase = Exp[I m (t - phi)]}, {
   -phase r^m (r^2 - (m - 2) (m + 1)/2)/(1 + r^2)^((m + 2)/2),
   I m phase r^(m - 1) (2 r^2 + m + 1)/(2 (1 + r^2)^(m/2)),
   phase r^(m - 2) (r^2 + m (m + 1)/2)/(1 + r^2)^(m/2)
   }];

closedRepresentativeResiduals = Table[
   FullSimplify[
    unitComplexGaugeClosed[m] - unitComplexGaugeMode[m] /. GNewton -> 1,
    Assumptions -> Element[{t, r, phi}, Reals] && r > 0],
   {m, {2, 3, 6}}];

symbolicFrequency = mm;
symbolicHighMode = unitComplexGaugeClosed[symbolicFrequency];
symbolicFixedMode4 = unitComplexGaugeClosed[4];
symbolicHighFixed4Raw = TimeConstrained[
   Factor@FullSimplify[
     localUpsilon2501BilinearPhi[symbolicHighMode, symbolicFixedMode4],
     Assumptions -> Element[mm, Integers] && mm >= 2 &&
       -Pi/4 < phi < Pi/4],
   600, $Aborted];
symbolicHighFixed4Phi =
  2^(-6 - mm/2) Exp[I mm phi] Cos[phi]^(-mm - 6) (
    -5 (mm^3 + 11 mm + 12)
    - 2 (mm^3 - mm + 60) Exp[2 I phi]
    - 3 (mm^3 + 19 mm - 20) Exp[4 I phi]);
symbolicHighFixed4Residuals = If[symbolicHighFixed4Raw === $Aborted,
   {$Aborted},
   Table[FullSimplify[
     (symbolicHighFixed4Raw - symbolicHighFixed4Phi) /. mm -> m,
     Assumptions -> -Pi/4 < phi < Pi/4], {m, {2, 3, 6}}]];

symbolicHighConjugateFixed4Raw = TimeConstrained[
   Factor@FullSimplify[
     localUpsilon2501BilinearPhi[
      symbolicHighMode, unitComplexGaugeClosedConjugate[4]],
     Assumptions -> Element[mm, Integers] && mm >= 2 &&
       -Pi/4 < phi < Pi/4],
   600, $Aborted];

symbolicSecondFrequency = nn;
symbolicSecondMode = unitComplexGaugeClosed[symbolicSecondFrequency];
symbolicTwoFrequencyRaw = TimeConstrained[
   Factor@FullSimplify[
     localUpsilon2501BilinearPhi[
      symbolicHighMode, symbolicSecondMode],
     Assumptions -> Element[{mm, nn}, Integers] && mm >= 2 && nn >= 2 &&
       -Pi/4 < phi < Pi/4],
   900, $Aborted];
symbolicSecondModeConjugate =
  unitComplexGaugeClosedConjugate[symbolicSecondFrequency];
symbolicTwoFrequencyConjugateRaw = TimeConstrained[
   Factor@FullSimplify[
     localUpsilon2501BilinearPhi[
      symbolicHighMode, symbolicSecondModeConjugate],
     Assumptions -> Element[{mm, nn}, Integers] && mm >= 2 && nn >= 2 &&
       -Pi/4 < phi < Pi/4],
   120, $Aborted];

mixedChiralityPrefactor =
  -2^(-7 - mm/2 - nn/2) Exp[I (mm - nn) phi]
    Cos[phi]^(-4 - mm - nn);
mixedChiralityPolynomialCandidates = Cases[
   symbolicTwoFrequencyConjugateRaw,
   candidate_Plus /; PolynomialQ[candidate, {mm, nn}], Infinity];
mixedChiralityPolynomial = First@MaximalBy[
    mixedChiralityPolynomialCandidates, LeafCount];
mixedChiralityDegreeExpansion = Expand[
   mixedChiralityPolynomial /. {mm -> degreeScale mm,
     nn -> degreeScale nn}];
mixedChiralityHomogeneous = Association@Table[
   degree -> Factor@Coefficient[
      mixedChiralityDegreeExpansion, degreeScale, degree],
   {degree, 6, 0, -1}];
endpointCosine = Cos[2 phi];
endpointSine = Sin[2 phi];
mixedDegreeSixExpected =
  8 mm^3 nn^3 endpointCosine^3;
mixedDegreeFiveExpected =
  -4 mm^2 nn^2 endpointCosine^2 * (
    (mm + nn) (1 + endpointCosine) +
     I (nn - mm) endpointSine);
mixedDegreeFourExpected =
  -4 mm nn endpointCosine * (
    (mm^2 + nn^2) (2 + endpointCosine + endpointCosine^2) +
     I (mm^2 - nn^2) endpointSine endpointCosine);
mixedHomogeneousResiduals = FullSimplify[{
    TrigExpand[mixedChiralityHomogeneous[6] - mixedDegreeSixExpected],
    TrigExpand[mixedChiralityHomogeneous[5] - mixedDegreeFiveExpected],
    TrigExpand[mixedChiralityHomogeneous[4] - mixedDegreeFourExpected]
    }];

twoFrequencyEndpointJets = If[
   symbolicTwoFrequencyRaw === $Aborted, {$Aborted},
   Table[Factor@FullSimplify[
     D[symbolicTwoFrequencyRaw, {phi, order}] /. phi -> endpoint,
     Assumptions -> Element[{mm, nn}, Integers] && mm >= 2 && nn >= 2],
    {endpoint, {-Pi/4, Pi/4}}, {order, 0, 2}]];
twoFrequencyConjugateEndpointJets = If[
   symbolicTwoFrequencyConjugateRaw === $Aborted, {$Aborted},
   Table[Factor@FullSimplify[
     D[symbolicTwoFrequencyConjugateRaw, {phi, order}] /.
       phi -> endpoint,
     Assumptions -> Element[{mm, nn}, Integers] && mm >= 2 && nn >= 2],
    {endpoint, {-Pi/4, Pi/4}}, {order, 0, 2}]];

diagonalConjugateRaw = Factor@FullSimplify[
   symbolicTwoFrequencyConjugateRaw /. {mm -> qq, nn -> qq},
   Assumptions -> Element[qq, Integers] && qq >= 2 &&
     -Pi/4 < phi < Pi/4];
diagonalPhysicalRightLayer = FullSimplify[
   4 diagonalConjugateRaw/(qq (qq^2 - 1)) /.
    phi -> Pi/4 - yy/qq,
   Assumptions -> qq >= 2 && yy > 0];
diagonalPhysicalLayerOrders = Table[
   TimeConstrained[FullSimplify[
     Limit[diagonalPhysicalRightLayer/qq^power, qq -> Infinity],
     Assumptions -> yy > 0], 120, $Aborted],
   {power, {2, 1, 0}}];

(* The following profiles are obtained by retaining the leading frequency
   coefficient of the exact kernels above before taking the anchor-scaled
   limit.  theta=m Pi/4 labels the residue class. *)
rightDiagonalProfile =
  Exp[-2 yy] (2 + 4 yy + 4 yy^2 - 8 yy^3);
rightSameChiralityProfile[theta_] :=
  -2 Exp[-2 yy - 2 I yy] Exp[I (2 theta - Pi/2)] *
    (1 + 2 yy - I);
rightCosineComplementProfile[theta_] :=
  -(1 + I) Exp[-yy - I yy] Exp[I theta];
rightSineComplementProfile[theta_] :=
  (1 - I) Exp[-yy - I yy] Exp[I theta];
rightProjectedCosineProfile[theta_] :=
  1/2 (rightDiagonalProfile +
     Re[rightSameChiralityProfile[theta]]) +
   2 Cos[theta] Re[rightCosineComplementProfile[theta]];
rightProjectedSineProfile[theta_] :=
  1/2 (rightDiagonalProfile -
     Re[rightSameChiralityProfile[theta]]) -
   2 Sin[theta] Re[rightSineComplementProfile[theta]];
projectedCosineMIntegralLeading = Table[FullSimplify[
   -2 Integrate[
     ComplexExpand[rightProjectedCosineProfile[residue Pi/4]],
     {yy, 0, Infinity}, Assumptions -> yy > 0]], {residue, 0, 7}];
projectedSineMIntegralLeading = Table[FullSimplify[
   -2 Integrate[
     ComplexExpand[rightProjectedSineProfile[residue Pi/4]],
     {yy, 0, Infinity}, Assumptions -> yy > 0]], {residue, 0, 7}];
projectedLeadingIntegralParts = <|
  "Diagonal" -> FullSimplify[-Integrate[rightDiagonalProfile,
      {yy, 0, Infinity}, Assumptions -> yy > 0]],
  "SameCosine" -> Table[FullSimplify[-Integrate[
       ComplexExpand[Re[rightSameChiralityProfile[residue Pi/4]]],
       {yy, 0, Infinity}, Assumptions -> yy > 0]], {residue, 0, 7}],
  "CosineComplement" -> Table[FullSimplify[-4 Cos[residue Pi/4]
      Integrate[ComplexExpand[
        Re[rightCosineComplementProfile[residue Pi/4]]],
       {yy, 0, Infinity}, Assumptions -> yy > 0]], {residue, 0, 7}],
  "SineComplement" -> Table[FullSimplify[4 Sin[residue Pi/4]
      Integrate[ComplexExpand[
        Re[rightSineComplementProfile[residue Pi/4]]],
       {yy, 0, Infinity}, Assumptions -> yy > 0]], {residue, 0, 7}]
  |>;

ClearAll[realCosineKernel, realSineKernel, projectedCosineKernel,
 projectedSineKernel, realPartExplicit];
If[Environment["PROJECTED_UPSILON_FULL_RESIDUE_SCAN"] === "1",
realPartExplicit[expression_] := FullSimplify[
   ComplexExpand[Re[expression], {phi, mm, nn}],
   Assumptions -> Element[{phi, mm, nn}, Reals]];
realCosineKernel = 1/2 realPartExplicit[
    symbolicTwoFrequencyRaw + symbolicTwoFrequencyConjugateRaw];
realSineKernel = 1/2 realPartExplicit[
    symbolicTwoFrequencyConjugateRaw - symbolicTwoFrequencyRaw];
projectedCosineKernel = FullSimplify[
   (realCosineKernel /. nn -> mm) +
    2 Cos[mm Pi/4] (realCosineKernel /. nn -> 4) +
    Cos[mm Pi/4]^2 (realCosineKernel /. {mm -> 4, nn -> 4}),
   Assumptions -> Element[mm, Integers] && mm >= 2 &&
     -Pi/4 < phi < Pi/4];
projectedSineKernel = FullSimplify[
   (realSineKernel /. nn -> mm) -
    2 Sin[mm Pi/4] (realSineKernel /. nn -> 2) +
    Sin[mm Pi/4]^2 (realSineKernel /. {mm -> 2, nn -> 2}),
   Assumptions -> Element[mm, Integers] && mm >= 2 &&
     -Pi/4 < phi < Pi/4];

projectedCosineRightLayerLimits = Table[
   TimeConstrained[FullSimplify[
     Limit[
      4 projectedCosineKernel/(mm (mm^2 - 1)) /.
       {mm -> 8 qq + residue,
        phi -> Pi/4 - yy/(8 qq + residue)},
      qq -> Infinity], Assumptions -> yy > 0], 180, $Aborted],
   {residue, 0, 7}];
projectedSineRightLayerLimits = Table[
   TimeConstrained[FullSimplify[
     Limit[
      4 projectedSineKernel/(mm (mm^2 - 1)) /.
       {mm -> 8 qq + residue,
        phi -> Pi/4 - yy/(8 qq + residue)},
      qq -> Infinity], Assumptions -> yy > 0], 180, $Aborted],
   {residue, 0, 7}];
projectedCosineMIntegralLimits = FullSimplify[
   -2 Integrate[#, {yy, 0, Infinity}, Assumptions -> yy > 0] & /@
    projectedCosineRightLayerLimits];
projectedSineMIntegralLimits = FullSimplify[
   -2 Integrate[#, {yy, 0, Infinity}, Assumptions -> yy > 0] & /@
    projectedSineRightLayerLimits];
,
projectedCosineRightLayerLimits = "not run";
projectedSineRightLayerLimits = "not run";
projectedCosineMIntegralLimits = "not run";
projectedSineMIntegralLimits = "not run";
];

Print[<|
  "ClosedRepresentativeResiduals" -> closedRepresentativeResiduals,
  "SymbolicHighFixed4Residuals" -> symbolicHighFixed4Residuals,
  "SymbolicHighFixed4Completed" ->
   (symbolicHighFixed4Raw =!= $Aborted),
  "SymbolicHighConjugateFixed4Completed" ->
   (symbolicHighConjugateFixed4Raw =!= $Aborted),
  "SymbolicTwoFrequencyCompleted" ->
   (symbolicTwoFrequencyRaw =!= $Aborted),
  "SymbolicTwoFrequencyConjugateCompleted" ->
   (symbolicTwoFrequencyConjugateRaw =!= $Aborted),
  "MixedHomogeneousResiduals" -> mixedHomogeneousResiduals,
  "DiagonalPhysicalRightLayerOrders" ->
   diagonalPhysicalLayerOrders,
  "ProjectedCosineMIntegralLeading" ->
   InputForm[projectedCosineMIntegralLeading],
  "ProjectedSineMIntegralLeading" ->
   InputForm[projectedSineMIntegralLeading],
  "ProjectedLeadingIntegralParts" ->
   InputForm[projectedLeadingIntegralParts],
  "ProjectedCosineRightLayerLimits" ->
   projectedCosineRightLayerLimits,
  "ProjectedSineRightLayerLimits" -> projectedSineRightLayerLimits,
  "ProjectedCosineMIntegralLimits" ->
   projectedCosineMIntegralLimits,
  "ProjectedSineMIntegralLimits" ->
   projectedSineMIntegralLimits|>];

testConditions = {
   closedRepresentativeResiduals === ConstantArray[{0, 0, 0}, 3],
   symbolicHighFixed4Raw =!= $Aborted,
   symbolicHighFixed4Residuals === {0, 0, 0},
   symbolicHighConjugateFixed4Raw =!= $Aborted,
   symbolicTwoFrequencyRaw =!= $Aborted,
   symbolicTwoFrequencyConjugateRaw =!= $Aborted,
   mixedHomogeneousResiduals === {0, 0, 0},
   FullSimplify[projectedCosineMIntegralLeading ==
      {5/2, 2, 3/2, 2, 5/2, 2, 3/2, 2}] === True,
   FullSimplify[projectedSineMIntegralLeading ==
      {3/2, 2, 5/2, 2, 3/2, 2, 5/2, 2}] === True
   };
testIDs = {
   "closed unit-boundary representative at m=2,3,6",
   "symbolic high--fixed-four direct bilinear kernel completed",
   "simplified high--fixed-four kernel at m=2,3,6",
   "symbolic high--conjugate-fixed-four kernel completed",
   "symbolic two-frequency direct bilinear kernel completed",
   "symbolic two-frequency conjugate direct bilinear kernel completed",
   "mixed kernel degree six--four endpoint factorization",
   "projected cosine diagonal leading constants by residue class",
   "projected sine diagonal leading constants by residue class"
   };

adsRindlerProjectedHighFrequencyReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
