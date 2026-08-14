(* ::Package:: *)

(*
  Second-order Kontsevich star product for the higher-charge Poisson tensor.
  The script also demonstrates why a hard Virasoro mode cutoff is not a
  Poisson truncation: its coordinate associator is already nonzero at order
  hbar^2.
*)

ClearAll["Global`*"];

star2[f_, g_, variables_List, poissonMatrix_] := Module[
  {dimension = Length[variables], first, secondA, secondB},
  first = I hbar/2 Sum[
      poissonMatrix[[i, j]] D[f, variables[[i]]] D[g, variables[[j]]],
      {i, dimension}, {j, dimension}];
  secondA = -hbar^2/8 Sum[
      poissonMatrix[[i, j]] poissonMatrix[[k, l]]
       D[f, variables[[i]], variables[[k]]]
       D[g, variables[[j]], variables[[l]]],
      {i, dimension}, {j, dimension}, {k, dimension}, {l, dimension}];
  secondB = -hbar^2/12 Sum[
      poissonMatrix[[i, j]] D[poissonMatrix[[k, l]], variables[[j]]]
       (D[f, variables[[i]], variables[[k]]] D[g, variables[[l]]] -
         D[f, variables[[k]]] D[g, variables[[i]], variables[[l]]]),
      {i, dimension}, {j, dimension}, {k, dimension}, {l, dimension}];
  Expand[f g + first + secondA + secondB]
  ];

throughSecondOrder[expression_] := Module[{expanded = Expand[expression]},
  Expand[Sum[Coefficient[expanded, hbar, order] hbar^order,
    {order, 0, 2}]]
  ];

associator2[f_, g_, h_, variables_List, poissonMatrix_] :=
  throughSecondOrder[
   star2[star2[f, g, variables, poissonMatrix], h, variables,
     poissonMatrix] -
    star2[f, star2[g, h, variables, poissonMatrix], variables,
     poissonMatrix]
   ];

(* A genuine finite-dimensional Poisson check: the linear su(2) tensor. *)
suVariables = {x1, x2, x3};
suPoisson = Table[
   Sum[LeviCivitaTensor[3][[i, j, k]] suVariables[[k]], {k, 3}],
   {i, 3}, {j, 3}
   ];
suPolynomials = {
   x1^2 + x2 x3,
   x2^2 + x1 x3,
   x3^2 + x1 x2
   };

(* Hard projection of the higher Virasoro modes.  Low and out-of-window
   charges are discarded; the central cocycle is retained. *)
hardModes = Join[Range[-6, -2], Range[2, 6]];
hardVariables = Array[z, Length[hardModes]];
modePosition = AssociationThread[hardModes -> Range[Length[hardModes]]];
hardVariable[n_Integer] := hardVariables[[modePosition[n]]];

hardPoissonEntry[m_Integer, n_Integer] := Module[{sum = m + n},
  -I (
    If[KeyExistsQ[modePosition, sum], (m - n) hardVariable[sum], 0] +
    cQ m (m^2 - 1) KroneckerDelta[sum, 0]/12
    )
  ];

hardPoisson = Table[
   hardPoissonEntry[hardModes[[i]], hardModes[[j]]],
   {i, Length[hardModes]}, {j, Length[hardModes]}
   ];

counterexampleModes = {-3, 2, -2};
counterexampleVariables = hardVariable /@ counterexampleModes;
hardAssociator = Factor[associator2[
    counterexampleVariables[[1]],
    counterexampleVariables[[2]],
    counterexampleVariables[[3]],
    hardVariables,
    hardPoisson
    ]];

(* The untruncated Virasoro Jacobi identity, including the central cocycle. *)
wittJacobiCoefficient[m_, n_, r_] := Expand[
   (m - n) (m + n - r) +
    (n - r) (n + r - m) +
    (r - m) (r + m - n)
   ];

centralJacobiCoefficient[m_, n_, r_] := If[m + n + r == 0,
  Expand[
   (m - n) (m + n) ((m + n)^2 - 1) +
    (n - r) (n + r) ((n + r)^2 - 1) +
    (r - m) (r + m) ((r + m)^2 - 1)
   ],
  0
  ];

virasoroJacobiChecks = Flatten@Table[
    wittJacobiCoefficient[m, n, r] == 0 &&
     centralJacobiCoefficient[m, n, r] == 0,
    {m, -8, 8}, {n, -8, 8}, {r, -8, 8}
    ];

coordinateCommutatorChecks = Flatten@Table[
    throughSecondOrder[
      star2[hardVariables[[i]], hardVariables[[j]], hardVariables,
        hardPoisson] -
       star2[hardVariables[[j]], hardVariables[[i]], hardVariables,
        hardPoisson] - I hbar hardPoisson[[i, j]]
      ] === 0,
    {i, Length[hardVariables]}, {j, Length[hardVariables]}
    ];

tests = {
   VerificationTest[
    associator2[Sequence @@ suPolynomials, suVariables, suPoisson],
    0,
    TestID -> "Kontsevich product is associative through hbar^2 for su(2)"],
   VerificationTest[
    And @@ coordinateCommutatorChecks,
    True,
    TestID -> "Coordinate star commutator is i hbar times the Poisson tensor"],
   VerificationTest[
    And @@ virasoroJacobiChecks,
    True,
    TestID -> "Untruncated Virasoro bracket obeys Jacobi"],
   VerificationTest[
    hardAssociator =!= 0,
    True,
    TestID -> "Hard high-mode cutoff is nonassociative at hbar^2"]
   };

report = TestReport[tests];

Print[<|
   "TestsSucceeded" -> report["TestsSucceededCount"],
   "TestsFailed" -> report["TestsFailedCount"],
   "HardCutoffCounterexampleModes" -> counterexampleModes,
   "HardCutoffAssociatorThroughHbar2" -> hardAssociator
   |>];

If[TrueQ[report["TestsFailedCount"] == 0], Exit[0], Exit[1]];
