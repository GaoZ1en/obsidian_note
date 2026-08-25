(* ::Package:: *)

(* ARCHIVED VERIFICATION: the Gram recursion is conditional on the generic
   input cQ and does not determine the split between classical coupling and a
   residual quantum shift. *)

(*
  Triangular vacuum-normal-symbol reconstruction on the Virasoro vacuum
  module.  The convention is

    [H[m],H[n]]=(m-n)H[m+n]
      + cQ/12 m(m^2-1) KroneckerDelta[m+n,0],

  with H[n]|0>=0 for n>=-1.  At positive-mode level N, all normal
  monomials introduced at that step vanish on states of level < N.  The
  coefficient matrix is therefore fixed by the inverse Gram matrix at
  level N whenever that Gram matrix is nonsingular.
*)

ClearAll["Global`*"];

inversionQ[a_Integer, b_Integer] :=
  (a >= -1 && b <= -2) || (a <= -2 && b <= -2 && a > b);

Clear[reduceWord];
reduceWord[word_List] := reduceWord[word] = Module[
   {pairs, position, i, a, b, prefix, suffix, swapped, joined,
    centralTerm, result},
   If[word === {}, Return[ket[]]];
   pairs = Partition[word, 2, 1];
   position = FirstPosition[pairs, pair_ /; inversionQ @@ pair, Missing[]];
   If[MissingQ[position],
    Return[If[AnyTrue[word, # >= -1 &], 0, Apply[ket, word]]]
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
    result += centralTerm reduceWord[Join[prefix, suffix]]
    ];
   Expand[result]
   ];

level[state_List] := -Total[state];

partitionsAt[n_Integer] := If[n == 0, {{}}, IntegerPartitions[n, All, Range[2, n]]];

statesThrough[nmax_Integer] :=
  Flatten[Table[-# & /@ partitionsAt[n], {n, 0, nmax}], 1];

braModes[partition_List] := Reverse[partition];
ketModes[partition_List] := -partition;

gramMatrix[n_Integer] := Module[{parts = partitionsAt[n]},
  Table[
   Coefficient[
    reduceWord[Join[braModes[parts[[i]]], ketModes[parts[[j]]]]],
    ket[]
    ],
   {i, Length[parts]}, {j, Length[parts]}
   ]
  ];

operatorMatrix[operator_List, inputLevel_Integer, outputLevel_Integer] :=
 Module[{ins = ketModes /@ partitionsAt[inputLevel],
   outs = ketModes /@ partitionsAt[outputLevel]},
  Table[
   Coefficient[
    reduceWord[Join[braModes[-outs[[i]]], operator, ins[[j]]]],
    ket[]
    ],
   {i, Length[outs]}, {j, Length[ins]}
   ]
  ];

targetMatrix[u_Integer, inputLevel_Integer] := Module[
  {outputLevel = inputLevel - u},
  If[outputLevel < 0 || partitionsAt[outputLevel] === {},
   ConstantArray[0, {0, Length[partitionsAt[inputLevel]]}],
   operatorMatrix[{u}, inputLevel, outputLevel]
   ]
  ];

normalBlockMatrix[negativePartition_List, positivePartition_List,
  inputLevel_Integer, outputLevel_Integer] :=
 operatorMatrix[
  Join[ketModes[negativePartition], braModes[positivePartition]],
  inputLevel,
  outputLevel
  ];

Clear[reconstructNormalSymbol];
reconstructNormalSymbol[u_Integer, maxInputLevel_Integer] := Module[
  {blocks = <||>, accumulated, n, outLevel, negativeParts, positiveParts,
   residual, gramIn, gramOut, coefficients, lowerAction, i, j},

  accumulated[inputLevel_Integer] := Module[
    {outputLevel = inputLevel - u, terms},
    If[outputLevel < 0,
     Return[ConstantArray[0, {0, Length[partitionsAt[inputLevel]]}]]
     ];
    terms = KeyValueMap[
      Function[{key, coefficientMatrix},
       With[{positiveLevel = ToExpression[key],
         negParts = partitionsAt[ToExpression[key] - u],
         posParts = partitionsAt[ToExpression[key]]},
        Sum[
         coefficientMatrix[[i, j]]
          normalBlockMatrix[negParts[[i]], posParts[[j]], inputLevel,
           outputLevel],
         {i, Length[negParts]}, {j, Length[posParts]}]
        ]],
      blocks
      ];
    If[terms === {},
     ConstantArray[0, {Length[partitionsAt[outputLevel]],
       Length[partitionsAt[inputLevel]]}],
     Simplify[Total[terms]]
     ]
    ];

  For[n = 2, n <= maxInputLevel, n++,
   outLevel = n - u;
   If[outLevel < 0 || partitionsAt[outLevel] === {}, Continue[]];
   negativeParts = partitionsAt[outLevel];
   positiveParts = partitionsAt[n];
   lowerAction = accumulated[n];
   residual = Simplify[targetMatrix[u, n] - lowerAction];
   gramIn = gramMatrix[n];
   gramOut = gramMatrix[outLevel];
   coefficients = Simplify[Inverse[gramOut] . residual . Inverse[gramIn]];
   AssociateTo[blocks, ToString[n] -> coefficients];
   ];
  blocks
  ];

normalBlockAction[u_Integer, blocks_Association, inputLevel_Integer] := Module[
  {outputLevel = inputLevel - u, terms},
  If[outputLevel < 0,
   Return[ConstantArray[0, {0, Length[partitionsAt[inputLevel]]}]]
   ];
  terms = KeyValueMap[
    Function[{key, coefficientMatrix},
     With[{positiveLevel = ToExpression[key],
       negParts = partitionsAt[ToExpression[key] - u],
       posParts = partitionsAt[ToExpression[key]]},
      Sum[
       coefficientMatrix[[i, j]]
        normalBlockMatrix[negParts[[i]], posParts[[j]], inputLevel,
         outputLevel],
       {i, Length[negParts]}, {j, Length[posParts]}]
      ]],
    blocks
    ];
  If[terms === {},
   ConstantArray[0, {Length[partitionsAt[outputLevel]],
     Length[partitionsAt[inputLevel]]}],
   Simplify[Total[terms]]
   ]
  ];

maxLevel = 8;
symbols = Association@Table[ToString[u] -> reconstructNormalSymbol[u, maxLevel],
    {u, -1, 1}];

actionChecks = Flatten@Table[
    With[{actual = normalBlockAction[u, symbols[ToString[u]], n],
      expected = targetMatrix[u, n]},
     Simplify[actual == expected]
     ],
    {u, -1, 1}, {n, 2, maxLevel}
    ];

gramDeterminants = Association@Table[
    ToString[n] -> Factor[Det[gramMatrix[n]]],
    {n, 2, maxLevel}
    ];

tests = {
   VerificationTest[And @@ actionChecks, True,
    TestID -> "Normal symbols reproduce H[-1], H[0], H[1] through level 8"],
   VerificationTest[
    Simplify[symbols["0"]["2"][[1, 1]]],
    4/cQ,
    TestID -> "Leading H0 coefficient"],
   VerificationTest[
    Simplify[symbols["1"]["3"][[1, 1]]],
    2/cQ,
    TestID -> "Leading H1 coefficient"],
   VerificationTest[
    Simplify[symbols["-1"]["2"][[1, 1]]],
    2/cQ,
    TestID -> "Leading H-1 coefficient"],
   VerificationTest[
    And @@ Table[
      Simplify[symbols["0"][ToString[n]] ==
        Transpose[symbols["0"][ToString[n]]]],
      {n, 2, maxLevel}],
    True,
    TestID -> "H0 normal symbol is self-adjoint"],
   VerificationTest[
    And @@ Table[
      Simplify[symbols["1"][ToString[n]] ==
        Transpose[symbols["-1"][ToString[n - 1]]]],
      {n, 3, maxLevel}],
    True,
    TestID -> "H1 and H-1 normal symbols are adjoints"],
   VerificationTest[
    And @@ Table[
      FullSimplify[gramDeterminants[ToString[n]] > 0, cQ > 1],
      {n, 2, maxLevel}],
    True,
    TestID -> "Gram matrices are nonsingular for cQ>1 through level 8"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "H0BlocksThroughLevel4" -> KeyTake[symbols["0"], {"2", "3", "4"}],
   "H1BlocksThroughLevel4" -> KeyTake[symbols["1"], {"3", "4"}],
   "H-1BlocksThroughLevel3" -> KeyTake[symbols["-1"], {"2", "3"}],
   "GramDeterminants" -> gramDeterminants
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
