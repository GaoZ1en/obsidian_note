(* ::Package:: *)

(*
  Conservative reflected fifth-jet rank audit for the proper transition.

  The closed Brown--Henneaux lift contains two boundary derivatives and the
  Iyer--Wald section-change potential can add three more.  A reflected
  symmetric sixth-by-sixth endpoint matrix therefore has 21 coefficients.
  This script measures the rank supplied by existing exact integrals and
  greedily chooses additional off-diagonal mode pairs that complete it.
*)

ClearAll["Global`*"];

x = Unique["x"];
endpointA = Pi/4;
maximumJetOrder = 5;
jetPairs = Flatten[
   Table[{i, j}, {i, 0, maximumJetOrder}, {j, i, maximumJetOrder}], 1];
coefficients = Array[c, Length[jetPairs]];

endpointJet[f_, order_, sign_] := D[f, {x, order}] /.
   x -> sign endpointA;
generalFunctional[f_] := Sum[
   With[{i = jetPairs[[k, 1]], j = jetPairs[[k, 2]]},
    coefficients[[k]] (
      endpointJet[f, i, 1] endpointJet[f, j, 1] +
       (-1)^(i + j) endpointJet[f, i, -1]
        endpointJet[f, j, -1])],
   {k, Length[jetPairs]}];
generalBilinear[f_, g_] := Expand[
   (generalFunctional[f + g] - generalFunctional[f] -
      generalFunctional[g])/2];
coefficientRow[expression_] := Coefficient[expression, #] & /@ coefficients;

labelledModes = Flatten[
   Table[{{"C", m, Cos[m x]}, {"S", m, Sin[m x]}}, {m, 2, 12}], 1];
diagonalModes = Take[labelledModes, 10];
diagonalAnomalies = {0, -1, -11/6, -5/6, -5, 0, -19/6, -29/6,
   0, -35/3};
diagonalRows = coefficientRow[generalFunctional[#[[3]]]] & /@
   diagonalModes;

knownCrossData = {
   {{"C", 2}, {"C", 3}, -1/(3 Sqrt[2])},
   {{"C", 2}, {"C", 4}, -1/3},
   {{"C", 3}, {"C", 4}, -13/(3 Sqrt[2])},
   {{"S", 3}, {"S", 2}, -2 Sqrt[2]/3}
   };
modeByLabel[label_] := SelectFirst[labelledModes,
   #[[;; 2]] === label &][[3]];
knownCrossRows = coefficientRow[
      generalBilinear[modeByLabel[#[[1]]], modeByLabel[#[[2]]]]] & /@
   knownCrossData;
knownMatrix = Join[diagonalRows, knownCrossRows];
knownRank = MatrixRank[knownMatrix];

candidatePairs = Select[Subsets[labelledModes, {2}],
   ! MemberQ[knownCrossData[[All, ;; 2]],
      {#[[1, ;; 2]], #[[2, ;; 2]]}] &&
    ! MemberQ[knownCrossData[[All, ;; 2]],
      {#[[2, ;; 2]], #[[1, ;; 2]]}] &];
candidateRows = ({#[[All, ;; 2]],
      coefficientRow[generalBilinear[#[[1, 3]], #[[2, 3]]]]} &) /@
   candidatePairs;

greedyMatrix = knownMatrix;
selectedCandidates = {};
Do[
  currentRank = MatrixRank[greedyMatrix];
  If[currentRank == Length[coefficients], Break[]];
  nextCandidate = SelectFirst[candidateRows,
    MatrixRank[Join[greedyMatrix, {#[[2]]}]] > currentRank &,
    Missing["NoRankGain"]];
  If[MissingQ[nextCandidate], Break[]];
  AppendTo[selectedCandidates, nextCandidate[[1]]];
  greedyMatrix = Join[greedyMatrix, {nextCandidate[[2]]}];
  candidateRows = DeleteCases[candidateRows, nextCandidate];,
  {Length[coefficients]}];
completedRank = MatrixRank[greedyMatrix];

selectedCrossValues = {
   -1/(3 Sqrt[2]), 0, 1/(3 Sqrt[2]), 2/3,
   8 Sqrt[2]/3, 19/3, -5/2};
completedEquations = Join[
   Thread[(generalFunctional /@ diagonalModes[[All, 3]]) ==
     diagonalAnomalies],
   (generalBilinear[modeByLabel[#[[1]]], modeByLabel[#[[2]]]] ==
       #[[3]] & /@ knownCrossData),
   MapThread[
    generalBilinear[modeByLabel[#1[[1]]], modeByLabel[#1[[2]]]] == #2 &,
    {selectedCandidates, selectedCrossValues}]];
completedEquationMatrix = CoefficientArrays[
    completedEquations, coefficients][[2]];
completedEquationRank = MatrixRank[completedEquationMatrix];
completedSolution = First@Solve[completedEquations, coefficients];
expectedSolution = Thread[coefficients -> Join[
     {1/6, -1/6, 1/6}, ConstantArray[0, 18]]];
reconstructedFunctional[f_] := FullSimplify[
   generalFunctional[f] /. completedSolution];
reconstructedBilinear[f_, g_] := FullSimplify[
   generalBilinear[f, g] /. completedSolution];

projectAnchor[f_] := FullSimplify[f +
    ((f /. x -> endpointA) + (f /. x -> -endpointA))/2 Cos[4 x] -
    ((f /. x -> endpointA) - (f /. x -> -endpointA))/2 Sin[2 x]];
unusedProjectedResiduals = FullSimplify[{
    reconstructedFunctional[projectAnchor[Cos[3 x]]],
    reconstructedFunctional[projectAnchor[Sin[3 x]]],
    reconstructedBilinear[projectAnchor[Sin[3 x]],
     projectAnchor[Sin[4 x]]] }];
genericOne = Sum[a[index] labelledModes[[index, 3]],
   {index, Length[labelledModes]}];
genericTwo = Sum[b[index] labelledModes[[index, 3]],
   {index, Length[labelledModes]}];
genericProjectedResidual = FullSimplify[
   reconstructedBilinear[projectAnchor[genericOne],
    projectAnchor[genericTwo]]];

testConditions = {
   Length[jetPairs] === 21,
   knownRank < 21,
   completedRank === 21,
   completedEquationRank === 21,
   Length[selectedCandidates] === 21 - knownRank,
   completedSolution === expectedSolution,
   unusedProjectedResiduals === {0, 0, 0},
   genericProjectedResidual === 0
   };
testIDs = {
   "reflected fifth-jet ansatz has twenty-one coefficients",
   "existing exact data do not yet prove the fifth-jet functional",
   "greedy exact row selection reaches full fifth-jet rank",
   "assembled value equations retain full fifth-jet rank",
   "every selected cross pair raises rank by one",
   "unique fifth-jet solution has no fourth- or fifth-jet coefficients",
   "reconstruction predicts three unused direct projected anomalies",
   "fifth-jet reconstruction annihilates generic projected data"
   };

Print[<|
  "JetPairs" -> jetPairs,
  "KnownRank" -> knownRank,
  "MissingRank" -> 21 - knownRank,
  "SelectedCrossPairs" -> selectedCandidates,
  "SelectedCrossValues" -> selectedCrossValues,
  "CompletedRank" -> completedRank,
  "CompletedEquationRank" -> completedEquationRank,
  "CompletedSolution" -> completedSolution,
  "UnusedProjectedResiduals" -> unusedProjectedResiduals,
  "GenericProjectedResidual" -> genericProjectedResidual|>];
adsRindlerTransitionFifthJetRankAuditReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
