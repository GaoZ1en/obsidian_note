ClearAll[lambda1L, lambda1R, a1, chi1L, chi1R];

dressedBefore = a1 + chi1L - chi1R;
dressedAfter = FullSimplify[
  (a1 + lambda1R - lambda1L)
  + (chi1L + lambda1L)
  - (chi1R + lambda1R)
];

gaugeInvarianceCheck = TrueQ[dressedAfter == dressedBefore];

id2 = IdentityMatrix[2];
zero2 = ConstantArray[0, {2, 2}];
jRegional = ArrayFlatten[{{zero2, -id2}, {id2, zero2}}];

(* y = (a, r, e), x = (a1, a2, e1, e2) *)
constraintEmbedding = {
  {1/2, 1/2, 0},
  {1/2, -1/2, 0},
  {0, 0, 1},
  {0, 0, 1}
};

jMatched = Transpose[constraintEmbedding].jRegional.constraintEmbedding;
jMatchedExpected = {
  {0, 0, -1},
  {0, 0, 0},
  {1, 0, 0}
};

kernelVector = {0, 1, 0};
jGlobal = {{0, -1}, {1, 0}};

hamiltonianRegional[ell1_, ell2_] := DiagonalMatrix[{0, 0, ell1, ell2}];
hamiltonianMatched = FullSimplify[
  Transpose[constraintEmbedding]
  .hamiltonianRegional[ell1, ell2]
  .constraintEmbedding
];
hamiltonianMatchedExpected = DiagonalMatrix[{0, 0, ell1 + ell2}];

report = <|
  "DressedHolonomyGaugeInvariant" -> gaugeInvarianceCheck,
  "MatchedSymplecticMatrix"
    -> TrueQ[jMatched == jMatchedExpected],
  "MatchedSymplecticRank" -> MatrixRank[jMatched],
  "RelativeHolonomyKernel"
    -> TrueQ[jMatched.kernelVector == ConstantArray[0, 3]],
  "ReducedGlobalSymplecticMatrix"
    -> TrueQ[jMatched[[{1, 3}, {1, 3}]] == jGlobal],
  "HamiltonianPullback"
    -> TrueQ[FullSimplify[
      hamiltonianMatched == hamiltonianMatchedExpected,
      Assumptions -> ell1 > 0 && ell2 > 0
    ]]
|>;

Print[InputForm[report]];

If[
  TrueQ[And[
    report["DressedHolonomyGaugeInvariant"],
    report["MatchedSymplecticMatrix"],
    report["MatchedSymplecticRank"] == 2,
    report["RelativeHolonomyKernel"],
    report["ReducedGlobalSymplecticMatrix"],
    report["HamiltonianPullback"]
  ]],
  Exit[0],
  Exit[1]
];
