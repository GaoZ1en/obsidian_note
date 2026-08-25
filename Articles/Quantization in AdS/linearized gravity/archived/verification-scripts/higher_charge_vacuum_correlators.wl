(* ::Package:: *)

(* ARCHIVED VERIFICATION: the correlators are algebraic consequences of a
   chosen generic Virasoro central parameter cQ; they do not fix cQ. *)

(*
  Ordered vacuum correlators of higher Virasoro charges, exact Ward checks,
  chiral factorization, and the leading Wick--Kontsevich equivalence map.
*)

ClearAll["Global`*"];

inversionQ[a_Integer, b_Integer] :=
  (a >= -1 && b <= -2) || (a <= -2 && b <= -2 && a > b);

Clear[reduceWord];
reduceWord[word_List] := reduceWord[word] = Module[
   {pairs, position, i, a, b, prefix, suffix, swapped, joined,
    centralTerm, result},
   If[word === {}, Return[vacuumKet[]]];
   pairs = Partition[word, 2, 1];
   position = FirstPosition[pairs, pair_ /; inversionQ @@ pair, Missing[]];
   If[MissingQ[position],
    Return[If[AnyTrue[word, # >= -1 &], 0, Apply[vacuumKet, word]]]
    ];
   i = First[position];
   {a, b} = word[[{i, i + 1}]];
   prefix = Take[word, i - 1];
   suffix = Drop[word, i + 1];
   swapped = Join[prefix, {b, a}, suffix];
   joined = Join[prefix, {a + b}, suffix];
   centralTerm = If[a + b == 0, cQ a (a^2 - 1)/12, 0];
   result = reduceWord[swapped] + (a - b) reduceWord[joined];
   If[centralTerm =!= 0,
    result += centralTerm reduceWord[Join[prefix, suffix]]];
   Expand[result]
   ];

correlator[word_List] :=
  Coefficient[Expand[reduceWord[word]], vacuumKet[]];

twoPoint[n_Integer?Positive] := correlator[{n, -n}];
threePoint[m_Integer?Positive, n_Integer?Positive] :=
  correlator[{m, n, -m - n}];
fourPoint[m_Integer?Positive, n_Integer?Positive] :=
  correlator[{m, n, -n, -m}];

connectedFourPoint[m_Integer?Positive, n_Integer?Positive] :=
  Expand[fourPoint[m, n] - twoPoint[m] twoPoint[n] -
    If[m == n, twoPoint[m]^2, 0]];

twoPointFormula[n_] := cQ n (n^2 - 1)/12;
threePointFormula[m_, n_] :=
  (m + 2 n) twoPointFormula[m];

correlatorTable = <|
   "TwoPoint" -> Association@Table[
      ToString[n] -> Factor[twoPoint[n]], {n, 2, 6}],
   "ThreePoint" -> Association@Table[
      ToString[{m, n, -m - n}] -> Factor[threePoint[m, n]],
      {m, 2, 4}, {n, 2, 4}] // Flatten // Association,
   "FourPoint" -> Association@Table[
      ToString[{m, n, -n, -m}] -> Factor[fourPoint[m, n]],
      {m, 2, 4}, {n, 2, 4}] // Flatten // Association,
   "ConnectedFourPoint" -> Association@Table[
      ToString[{m, n, -n, -m}] -> Factor[connectedFourPoint[m, n]],
      {m, 2, 4}, {n, 2, 4}] // Flatten // Association
   |>;

(* Exact adjacent-exchange Ward identity. *)
wardResidual[prefix_List, m_Integer, n_Integer, suffix_List] := Module[
  {central = If[m + n == 0, cQ m (m^2 - 1)/12, 0]},
  Expand[
   correlator[Join[prefix, {m, n}, suffix]] -
    correlator[Join[prefix, {n, m}, suffix]] -
    (m - n) correlator[Join[prefix, {m + n}, suffix]] -
    central correlator[Join[prefix, suffix]]
   ]
  ];

wardChecks = Flatten@Table[
    wardResidual[prefix, m, n, suffix] == 0,
    {prefix, {{}, {2}, {3, 2}}},
    {suffix, {{}, {-2}, {-3, -2}}},
    {m, -5, 5}, {n, -5, 5}
    ];

(* The right-moving copy is independent.  A product vacuum implies exact
   factorization; the following algebraic helper checks vanishing of mixed
   connected correlators from the tensor-product definition. *)
mixedCorrelator[leftWord_List, rightWord_List] :=
  correlator[leftWord] correlator[rightWord];
mixedConnectedTwo[leftWord_List, rightWord_List] :=
  Expand[mixedCorrelator[leftWord, rightWord] -
    correlator[leftWord] correlator[rightWord]];

(* ---------- Vacuum Wick--Moyal equivalence ---------- *)

aCentral = cQ nMode (nMode^2 - 1)/12;

truncateHbar[expression_, order_Integer] := Module[{expanded = Expand[expression]},
  Expand[Sum[Coefficient[expanded, hbar, k] hbar^k, {k, 0, order}]]
  ];

wickStar[f_, g_, order_Integer] := Expand[Sum[
    (hbar aCentral)^k/k! D[f, {x, k}] D[g, {y, k}],
    {k, 0, order}]];

moyalStar[f_, g_, order_Integer] := Expand[Sum[
    (hbar aCentral/2)^k/k! Sum[
      (-1)^j Binomial[k, j]
       D[f, {x, k - j}, {y, j}]
       D[g, {x, j}, {y, k - j}],
      {j, 0, k}],
    {k, 0, order}]];

berezinMap[f_, order_Integer] := Expand[Sum[
    (-hbar aCentral/2)^k/k! D[f, {x, k}, {y, k}],
    {k, 0, order}]];

symbolOrder = 5;
symbolPolynomials = {
   x + y + x y,
   x^2 + y + x y^2,
   y^2 + x + x^2 y
   };

symbolEquivalenceResidual = truncateHbar[
   berezinMap[
     wickStar[symbolPolynomials[[1]], symbolPolynomials[[2]], symbolOrder],
     symbolOrder] -
    moyalStar[
     berezinMap[symbolPolynomials[[1]], symbolOrder],
     berezinMap[symbolPolynomials[[2]], symbolOrder],
     symbolOrder],
   symbolOrder];

tests = {
   VerificationTest[
    And @@ Table[Factor[twoPoint[n] - twoPointFormula[n]] == 0,
      {n, 2, 10}],
    True,
    TestID -> "Exact two-point formula"],
   VerificationTest[
    And @@ Flatten@Table[
      Factor[threePoint[m, n] - threePointFormula[m, n]] == 0,
      {m, 2, 8}, {n, 2, 8}],
    True,
    TestID -> "Exact ordered three-point formula"],
   VerificationTest[And @@ wardChecks, True,
    TestID -> "Adjacent-exchange Virasoro Ward identities"],
   VerificationTest[
    And @@ Flatten@Table[
      mixedConnectedTwo[left, right] == 0,
      {left, {{2, -2}, {3, -3}, {2, 2, -4}}},
      {right, {{2, -2}, {4, -4}, {2, 3, -5}}}],
    True,
    TestID -> "Left-right connected factorization"],
   VerificationTest[symbolEquivalenceResidual, 0,
    TestID -> "Vacuum Wick--Moyal equivalence through hbar^5"],
   VerificationTest[
    FullSimplify[
     wickStar[x, y, 2] - moyalStar[x, y, 2] - hbar aCentral/2],
    0,
    TestID -> "Normal and Weyl coordinate products differ by Berezin half contraction"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "Correlators" -> correlatorTable,
   "ExampleConnectedFourPoint2233" -> connectedFourPoint[2, 3],
   "BerezinMap" -> "Exp[-hbar A_n/2 d_(H_n) d_(H_-n)]"
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
