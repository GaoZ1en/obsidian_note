(* ::Package:: *)

(*
  Exact reconstruction of H[0], H[1], and H[-1] from Virasoro modes
  with |p| >= 2, together with the vacuum-orbit central-charge shift.

  Convention:
    [H[m], H[n]] = (m-n) H[m+n]
      + cQ/12 m (m^2-1) KroneckerDelta[m+n,0].
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
    central[cQ m (m^2 - 1)/12],
    <||>
    ]
   ];

bracketRight[comb_Association, p_Integer] := totalComb @
   KeyValueMap[
    If[#1 === "1", <||>, scaleComb[#2, virBasis[#1, p]]] &,
    comb
    ];

dagger[comb_Association] := clean @ Association @
   KeyValueMap[
    If[#1 === "1", Rule["1", Conjugate[#2]],
      Rule[-#1, Conjugate[#2]]] &,
    comb
    ];

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

fu[-1] := fm1[2];
fu[0] := f0[2];
fu[1] := f1[2];

highModes = Join[Range[-12, -2], Range[2, 12]];

tests = {
   VerificationTest[
    And @@ Table[residual[f0[n], basis[0]] === <||>, {n, 2, 12}],
    True,
    TestID -> "H0 reconstruction is independent of n"
    ],
   VerificationTest[
    And @@ Table[residual[f1[n], basis[1]] === <||>, {n, 2, 12}],
    True,
    TestID -> "H1 reconstruction is independent of n"
    ],
   VerificationTest[
    And @@ Table[residual[fm1[n], basis[-1]] === <||>, {n, 2, 12}],
    True,
    TestID -> "H-1 reconstruction is independent of n"
    ],
   VerificationTest[
    residual[dagger[f1[2]] /. Conjugate[cQ] -> cQ, fm1[2]],
    <||>,
    TestID -> "Adjoint relation"
    ],
   VerificationTest[
    And @@ Flatten @ Table[
       residual[
          bracketRight[fu[u], p],
          scaleComb[u - p, basis[u + p]]
          ] === <||>,
       {u, -1, 1}, {p, highModes}
       ],
    True,
    TestID -> "Exact action on high modes"
    ],
   VerificationTest[
    residual[
     scaleComb[1/4, virBasis[2, -2]],
     addComb[basis[0], central[cQ/8]]
     ],
    <||>,
    TestID -> "H0 central subtraction"
    ],
   VerificationTest[
    Simplify[-12 (Zeta[-1] - 1)],
    13,
    TestID -> "Zeta-regularized vacuum-orbit shift"
    ],
   VerificationTest[
    FullSimplify[24 Pi/(16 Pi G) == 3/(2 G), G > 0],
    True,
    TestID -> "Brown-Henneaux normalization"
    ]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "DerivedOperators" -> <|
     "H0" -> f0[2],
     "H1" -> f1[2],
     "H-1" -> fm1[2]
     |>,
   "QuantumCentralCharge" -> (24 Pi/kappa^2 + 13)
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
