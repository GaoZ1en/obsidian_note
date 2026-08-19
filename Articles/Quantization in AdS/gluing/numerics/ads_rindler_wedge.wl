(* ::Package:: *)

(* ===================================================================== *)
(*  Active AdS3--Rindler verification                                    *)
(*                                                                       *)
(*  Reuses the preserved generalized-mode and global-completion checks,  *)
(*  then diagnoses removal of a reflecting brick-wall regulator.         *)
(* ===================================================================== *)

Get[FileNameJoin[{
  DirectoryName[$InputFileName], "..", "deprecated", "numerics",
  "ads_rindler_intrinsic_modes.wl"
}]];

Get[FileNameJoin[{
  DirectoryName[$InputFileName], "..", "deprecated", "numerics",
  "ads_rindler_global_completion.wl"
}]];

testFailed = False;
assertActive[name_, condition_] :=
  If[TrueQ[condition],
    Print["PASS: " <> name],
    Print["FAIL: " <> name <> " -> " <> ToString[condition, InputForm]];
    testFailed = True
  ];

thermalOccupation[frequency_] := 1/(Exp[2 Pi frequency] - 1);

tortoiseLength[epsilon_] := 1/2 Log[(2 + epsilon)/epsilon];

(* A reflecting wall gives asymptotic spacing Pi/T. A half-step grid     *)
(* models a generic Robin phase without introducing a zero mode.         *)
brickWallThermalSum[epsilon_, maximumFrequency_] := Module[
  {length, maximumIndex, frequencies},
  length = tortoiseLength[epsilon];
  maximumIndex = Floor[length maximumFrequency/Pi - 1/2];
  frequencies = Pi (Range[0, maximumIndex] + 1/2)/length;
  Total[thermalOccupation /@ frequencies]
];

unruhCanonicalResidual = FullSimplify[
  1/(1 - Exp[-2 Pi frequency])
    - Exp[-2 Pi frequency]/(1 - Exp[-2 Pi frequency]) - 1,
  Assumptions -> frequency > 0
];

kmsOccupationResidual = FullSimplify[
  1 + thermalOccupation[frequency]
    - Exp[2 Pi frequency] thermalOccupation[frequency],
  Assumptions -> frequency > 0
];

highFrequencyResidual = Limit[
  Exp[2 Pi frequency] thermalOccupation[frequency],
  frequency -> Infinity
];

lowFrequencyResidual = Limit[
  2 Pi frequency thermalOccupation[frequency],
  frequency -> 0, Direction -> "FromAbove"
];

brickWallTable = Table[
  With[
    {length = tortoiseLength[epsilon],
     sum = brickWallThermalSum[epsilon, 10]},
    {epsilon, length, sum, sum/(length Log[length])}
  ],
  {epsilon, {10^-2, 10^-4, 10^-8, 10^-16, 10^-32}}
];

Print["brick-wall columns: {epsilon, tortoise length, beta-HS lower sum,",
  " sum/(T log T)}"];
Print[N[brickWallTable, 10]];

assertActive[
  "Unruh coefficients obey the canonical identity",
  unruhCanonicalResidual === 0
];
assertActive[
  "thermal occupation obeys the beta=2 Pi KMS identity",
  kmsOccupationResidual === 0
];
assertActive[
  "large-boost-frequency mixing is exponentially suppressed",
  highFrequencyResidual == 1
];
assertActive[
  "small-boost-frequency occupation has the 1/(2 Pi omega) limit",
  lowFrequencyResidual == 1
];
assertActive[
  "brick-wall tortoise length diverges as the wall approaches the horizon",
  Limit[tortoiseLength[epsilon], epsilon -> 0,
    Direction -> "FromAbove"] == Infinity
];
assertActive[
  "regulated Hilbert--Schmidt lower sum grows under wall removal",
  And @@ Thread[Rest[brickWallTable[[All, 3]]] >
    Most[brickWallTable[[All, 3]]]]
];
assertActive[
  "last brick-wall lower sum exceeds the first by two orders of magnitude",
  Last[brickWallTable[[All, 3]]] >
    100 First[brickWallTable[[All, 3]]]
];

If[TrueQ[testFailed],
  Print["ERROR: active AdS--Rindler checks failed."];
  $Failed,
  Print["All active AdS--Rindler checks passed."]
];
