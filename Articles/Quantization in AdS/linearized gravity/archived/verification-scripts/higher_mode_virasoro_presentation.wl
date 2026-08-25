(* ::Package:: *)

(* ARCHIVED VERIFICATION: the presentation is checked conditional on the
   generic input cQ and does not fix a finite central-charge normalization. *)

(*
  Consistency checks for a presentation of Virasoro using only generators
  h[p] with |p| >= 2 and the central scalar.  The three missing modes are
  finite commutator composites.
*)

ClearAll["Global`*"];

clean[comb_Association] := Association @ Cases[
    Normal[comb],
    Rule[key_, value_] /; ! TrueQ[PossibleZeroQ[Simplify[value]]] :>
      Rule[key, Simplify[value]]
    ];

addComb[combs__Association] := clean @ Merge[{combs}, Total];
scaleComb[scalar_, comb_Association] := clean @ Association @
   KeyValueMap[Rule[#1, Simplify[scalar #2]] &, comb];
totalComb[combs_List] := If[combs === {}, <||>, addComb @@ combs];

basis[n_Integer] := <|n -> 1|>;
central[value_] := clean @ <|"1" -> value|>;

virBasis[m_Integer, n_Integer] := addComb[
   <|m + n -> m - n|>,
   If[m + n == 0,
    central[cQ m (m^2 - 1)/12], <||>]
   ];

bracketComb[left_Association, right_Association] := totalComb @ Flatten @
   KeyValueMap[
    Function[{leftKey, leftValue},
     KeyValueMap[
      Function[{rightKey, rightValue},
       If[leftKey === "1" || rightKey === "1", <||>,
        scaleComb[leftValue rightValue, virBasis[leftKey, rightKey]]]
       ], right]
     ], left];

residual[left_Association, right_Association] :=
  addComb[left, scaleComb[-1, right]];

f0[n_Integer?Positive] /; n >= 2 := addComb[
   scaleComb[1/(2 n), virBasis[n, -n]],
   central[-cQ (n^2 - 1)/24]
   ];
f1[n_Integer?Positive] /; n >= 2 :=
  scaleComb[1/(2 n + 1), virBasis[n + 1, -n]];
fm1[n_Integer?Positive] /; n >= 2 :=
  scaleComb[1/(2 n + 1), virBasis[n, -(n + 1)]];

f[-1] := fm1[2];
f[0] := f0[2];
f[1] := f1[2];

xMode[n_Integer] := If[Abs[n] >= 2, basis[n], f[n]];

highModes = Join[Range[-10, -2], Range[2, 10]];

highClosureChecks = Flatten@Table[
    residual[
       bracketComb[xMode[m], xMode[n]],
       addComb[
        scaleComb[m - n, xMode[m + n]],
        If[m + n == 0,
         central[cQ m (m^2 - 1)/12], <||>]
        ]
       ] === <||>,
    {m, highModes}, {n, highModes}
    ];

covarianceChecks = Flatten@Table[
    residual[
       bracketComb[f[u], xMode[p]],
       scaleComb[u - p, xMode[u + p]]
       ] === <||>,
    {u, -1, 1}, {p, highModes}
    ];

sl2Checks = Flatten@Table[
    residual[
       bracketComb[f[u], f[v]],
       If[u + v >= -1 && u + v <= 1,
        scaleComb[u - v, f[u + v]], <||>]
       ] === <||>,
    {u, -1, 1}, {v, -1, 1}
    ];

jacobiChecks = Flatten@Table[
    addComb[
      bracketComb[xMode[m], bracketComb[xMode[n], xMode[r]]],
      bracketComb[xMode[n], bracketComb[xMode[r], xMode[m]]],
      bracketComb[xMode[r], bracketComb[xMode[m], xMode[n]]]
      ] === <||>,
    {m, highModes}, {n, highModes}, {r, highModes}
    ];

dagger[comb_Association] := clean @ Association @
   KeyValueMap[
    If[#1 === "1", Rule["1", Conjugate[#2]],
      Rule[-#1, Conjugate[#2]]] &,
    comb];

adjointChecks = Flatten@Table[
    residual[dagger[xMode[n]] /. Conjugate[cQ] -> cQ, xMode[-n]] === <||>,
    {n, Join[Range[-10, -1], Range[0, 10]]}
    ];

(* Vacuum-module graded dimensions: partitions with no part 1. *)
vacuumDimension[level_Integer] :=
  Length[IntegerPartitions[level, All, Range[2, level]]];

characterCoefficients = CoefficientList[
   Normal[Series[Product[1/(1 - q^n), {n, 2, 14}], {q, 0, 14}]], q];

partitionChecks = Table[
   vacuumDimension[level] == characterCoefficients[[level + 1]],
   {level, 0, 14}];

tests = {
   VerificationTest[
    And @@ Table[
      residual[f0[n], f[0]] === <||> &&
       residual[f1[n], f[1]] === <||> &&
       residual[fm1[n], f[-1]] === <||>,
      {n, 2, 10}],
    True,
    TestID -> "All high-mode representatives of low modes agree"],
   VerificationTest[And @@ highClosureChecks, True,
    TestID -> "Translated high-high Virasoro relations"],
   VerificationTest[And @@ covarianceChecks, True,
    TestID -> "Composite low-mode covariance relations"],
   VerificationTest[And @@ sl2Checks, True,
    TestID -> "Composite modes form sl(2)"],
   VerificationTest[And @@ jacobiChecks, True,
    TestID -> "High-generator overlap and Jacobi consistency"],
   VerificationTest[And @@ adjointChecks, True,
    TestID -> "Star structure"],
   VerificationTest[And @@ partitionChecks, True,
    TestID -> "Vacuum-module character through level 14"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "LowModeComposites" -> <|"F-1" -> f[-1], "F0" -> f[0],
     "F1" -> f[1]|>,
   "VacuumDimensionsLevel0Through14" ->
    Table[vacuumDimension[level], {level, 0, 14}]
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
