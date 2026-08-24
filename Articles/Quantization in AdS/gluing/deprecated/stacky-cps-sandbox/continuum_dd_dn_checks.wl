ClearAll[overlap, masslessBetaSquared, massiveBetaSquared, partialSum];

overlap[n_Integer, j_Integer] :=
  (-1)^(n + j) 2 n/(Pi (n^2 - (j - 1/2)^2));

directOverlap[n_Integer, j_Integer] := FullSimplify[
  Integrate[
    2 Sin[n Pi y] Sin[(j - 1/2) Pi y],
    {y, 0, 1}
  ]
];

overlapChecks = Table[
  TrueQ[FullSimplify[directOverlap[n, j] == overlap[n, j]]],
  {n, 1, 6}, {j, 1, 6}
];

masslessBetaSquared[n_Integer, j_Integer] :=
  n/(Pi^2 (j - 1/2) (n + j - 1/2)^2);

massiveBetaSquared[n_Integer, j_Integer, ell_, mass_] := Module[
  {omegaD, omegaN, coefficient},
  omegaD = Sqrt[mass^2 + (n Pi/ell)^2];
  omegaN = Sqrt[mass^2 + ((j - 1/2) Pi/ell)^2];
  coefficient = 1/2 (Sqrt[omegaN/omegaD] - Sqrt[omegaD/omegaN])
    overlap[n, j];
  coefficient^2
];

masslessFormulaChecks = Table[
  TrueQ[FullSimplify[
    massiveBetaSquared[n, j, 1, 0] == masslessBetaSquared[n, j]
  ]],
  {n, 1, 6}, {j, 1, 6}
];

partialSum[cutoff_Integer, mass_] := N[
  Sum[
    massiveBetaSquared[n, j, 1, mass],
    {n, 1, cutoff}, {j, 1, cutoff}
  ],
  30
];

cutoffs = {8, 16, 32, 64, 128, 256, 512};
masslessPartialSums = Table[
  <|"N" -> n, "Sum" -> partialSum[n, 0]|>,
  {n, cutoffs}
];
massivePartialSums = Table[
  <|"N" -> n, "Sum" -> partialSum[n, 1]|>,
  {n, cutoffs}
];

masslessValues = masslessPartialSums[[All, "Sum"]];
massiveValues = massivePartialSums[[All, "Sum"]];

report = <|
  "DirectOverlapChecks" -> And @@ Flatten[overlapChecks],
  "MasslessFormulaChecks" -> And @@ Flatten[masslessFormulaChecks],
  "MasslessPartialSums" -> masslessPartialSums,
  "MassOnePartialSums" -> massivePartialSums,
  "MasslessPartialSumsStrictlyIncrease"
    -> And @@ Thread[Rest[masslessValues] > Most[masslessValues]],
  "MassOnePartialSumsStrictlyIncrease"
    -> And @@ Thread[Rest[massiveValues] > Most[massiveValues]]
|>;

Print[InputForm[report]];

If[
  TrueQ[And @@ Values[KeyTake[report, {
    "DirectOverlapChecks",
    "MasslessFormulaChecks",
    "MasslessPartialSumsStrictlyIncrease",
    "MassOnePartialSumsStrictlyIncrease"
  }]]],
  Exit[0],
  Exit[1]
];
