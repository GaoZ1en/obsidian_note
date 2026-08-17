(* ::Package:: *)

(*
  Conservative finite-jet reconstruction of the proper switching functional.

  Derivative counting in the Einstein Iyer--Wald potential gives an endpoint
  quadratic functional of jets through order at most three. Reflection
  relates the two endpoints. A symmetric 4x4 jet matrix has ten independent
  coefficients. This audit asks how much the ten exact diagonal anomalies
  and the available direct cross anomalies actually determine; it does not
  assume full rank in advance.
*)

ClearAll[x, endpointA, jetPairs, jetCoefficient, endpointJet,
  generalJetFunctional, reconstructedFunctional, reconstructedBilinear,
  projectAnchor];
endpointA = Pi/4;
modes = Flatten[Table[{Cos[m x], Sin[m x]}, {m, 2, 6}]];
exactAnomalies = {0, -1, -11/6, -5/6, -5, 0, -19/6, -29/6,
   0, -35/3};
jetPairs = Flatten[Table[{i, j}, {i, 0, 3}, {j, i, 3}], 1];
jetCoefficient = Array[c, Length[jetPairs]];
endpointJet[f_, order_, sign_] := D[f, {x, order}] /.
   x -> sign endpointA;
generalJetFunctional[f_] := Sum[
   With[{i = jetPairs[[k, 1]], j = jetPairs[[k, 2]]},
    jetCoefficient[[k]] (
      endpointJet[f, i, 1] endpointJet[f, j, 1] +
       (-1)^(i + j) endpointJet[f, i, -1]
        endpointJet[f, j, -1])],
   {k, Length[jetPairs]}];
reconstructionEquations = Thread[
   (generalJetFunctional /@ modes) == exactAnomalies];
reconstructionMatrix = CoefficientArrays[
    reconstructionEquations, jetCoefficient][[2]];
reconstructionRank = MatrixRank[reconstructionMatrix];
expectedSolution = Thread[jetCoefficient -> {
    1/6, -1/6, 1/6, 0,
    0, 0, 0,
    0, 0,
    0}];
ClearAll[bilinearCoefficientRow];
bilinearCoefficientRow[f_, g_] := Coefficient[
    (generalJetFunctional[f + g] - generalJetFunctional[f] -
       generalJetFunctional[g])/2, #] & /@ jetCoefficient;
knownCrossRows = {
   bilinearCoefficientRow[Cos[3 x], Cos[4 x]],
   bilinearCoefficientRow[Sin[3 x], Sin[2 x]]};
rankWithKnownCrosses = MatrixRank[Join[reconstructionMatrix,
    {knownCrossRows[[1]]}]];
rankWithBothKnownCrosses = MatrixRank[Join[reconstructionMatrix,
    knownCrossRows]];
completingCrossEquations = {
   (generalJetFunctional[Cos[2 x] + Cos[3 x]] -
       generalJetFunctional[Cos[2 x]] -
       generalJetFunctional[Cos[3 x]])/2 == -1/(3 Sqrt[2]),
   (generalJetFunctional[Cos[2 x] + Cos[4 x]] -
       generalJetFunctional[Cos[2 x]] -
       generalJetFunctional[Cos[4 x]])/2 == -1/3};
completedEquations = Join[reconstructionEquations,
   completingCrossEquations];
completedMatrix = CoefficientArrays[completedEquations,
    jetCoefficient][[2]];
completedRank = MatrixRank[completedMatrix];
reconstructionSolution = First@Solve[completedEquations,
    jetCoefficient];
reconstructedFunctional[f_] := FullSimplify[
   generalJetFunctional[f] /. reconstructionSolution];
reconstructedBilinear[f_, g_] := FullSimplify[
   (reconstructedFunctional[f + g] - reconstructedFunctional[f] -
      reconstructedFunctional[g])/2];
crossResiduals = FullSimplify[{
    reconstructedBilinear[Cos[3 x], Cos[4 x]] + 13/(3 Sqrt[2]),
    reconstructedBilinear[Sin[3 x], Sin[2 x]] + 2 Sqrt[2]/3}];
candidatePairs = Subsets[Range[Length[modes]], {2}];
candidateRankGains = Select[
   ({#, MatrixRank[Join[reconstructionMatrix,
          {bilinearCoefficientRow[modes[[#[[1]]]],
            modes[[#[[2]]]]]}]]} & /@ candidatePairs),
   Last[#] > reconstructionRank &];
candidateFullRankPairs = Select[Subsets[candidateRankGains, {2}],
   MatrixRank[Join[reconstructionMatrix,
       bilinearCoefficientRow[modes[[#[[1, 1, 1]]]],
          modes[[#[[1, 1, 2]]]]] // List,
       bilinearCoefficientRow[modes[[#[[2, 1, 1]]]],
          modes[[#[[2, 1, 2]]]]] // List]] == 10 &];

projectAnchor[f_] := FullSimplify[f +
    ((f /. x -> endpointA) + (f /. x -> -endpointA))/2 Cos[4 x] -
    ((f /. x -> endpointA) - (f /. x -> -endpointA))/2 Sin[2 x]];
genericOne = Sum[a[index] modes[[index]], {index, Length[modes]}];
genericTwo = Sum[b[index] modes[[index]], {index, Length[modes]}];
genericProjectedResidual = FullSimplify[
   reconstructedBilinear[projectAnchor[genericOne],
    projectAnchor[genericTwo]]];

testConditions = {
   reconstructionRank === 8,
   rankWithKnownCrosses === 9,
   rankWithBothKnownCrosses === 9,
   completedRank === 10,
   reconstructionSolution === expectedSolution,
   crossResiduals === {0, 0},
   genericProjectedResidual === 0
   };
testIDs = {
   "ten exact diagonal anomalies have rank eight in the conservative third-jet space",
   "one known direct cross anomaly raises the rank to nine",
   "the two known cross anomalies constrain the same remaining combination",
   "two selected independent cross anomalies complete the reconstruction",
   "unique jet matrix reduces to the second-order endpoint functional",
   "reconstructed functional predicts two unused direct cross anomalies",
   "reconstructed bilinear functional annihilates two generic projected modes"
   };

Print[<|
  "JetPairs" -> jetPairs,
  "ReconstructionRank" -> reconstructionRank,
  "RankWithKnownCrosses" -> rankWithKnownCrosses,
  "RankWithBothKnownCrosses" -> rankWithBothKnownCrosses,
  "CompletedRank" -> completedRank,
  "ReconstructionSolution" -> reconstructionSolution,
  "UnusedCrossResiduals" -> crossResiduals,
  "GenericProjectedResidual" -> genericProjectedResidual|>];
adsRindlerTransitionJetReconstructionReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
