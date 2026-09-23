(* ::Package:: *)

(* ===================================================================== *)
(*  Scalar gluing across four quadrants of a flat square                 *)
(*                                                                       *)
(*  Model: continuous theory V.md and article/3_scalar_geometries.md.    *)
(*  Each quadrant is expanded in a product Neumann basis.  The four      *)
(*  half-axis penalties are assembled as sparse positive rank updates.   *)
(* ===================================================================== *)

ClearAll["Global`*"];

stateIndex[a_, b_, nx_, ny_, Nmax_] :=
  (((a - 1)*2 + (b - 1))*(Nmax + 1) + nx)*(Nmax + 1) + ny + 1;

neumannBoundaryMagnitude[n_, length_] :=
  If[n == 0, 1/Sqrt[length], Sqrt[2/length]];

minusCutValue[n_, length_] :=
  (-1)^n neumannBoundaryMagnitude[n, length];

plusCutValue[n_, length_] :=
  neumannBoundaryMagnitude[n, length];

sparseRankUpdate[positions_, values_, coefficient_, dimension_] :=
  SparseArray[
   Flatten[
    Table[
     Rule[{positions[[i]], positions[[j]]},
      coefficient values[[i]] values[[j]]],
     {i, Length[positions]}, {j, Length[positions]}]
    ],
   {dimension, dimension}
   ];

fourQuadrantMatrix[Nmax_, length_, mass_, gxMinus_, gxPlus_, gyMinus_,
  gyPlus_] := Module[
  {dimension, diagonal, matrix, positions, values,
   gx = {gxMinus, gxPlus}, gy = {gyMinus, gyPlus}},

  dimension = 4 (Nmax + 1)^2;
  diagonal = Flatten[
    Table[
     mass^2 + (nx Pi/length)^2 + (ny Pi/length)^2,
     {a, 1, 2}, {b, 1, 2}, {nx, 0, Nmax}, {ny, 0, Nmax}]
    ];
  matrix = SparseArray[Band[{1, 1}] -> diagonal, {dimension, dimension}];

  Do[
   positions = Join[
     Table[stateIndex[1, b, nx, ny, Nmax], {nx, 0, Nmax}],
     Table[stateIndex[2, b, nx, ny, Nmax], {nx, 0, Nmax}]
     ];
   values = Join[
     Table[minusCutValue[nx, length], {nx, 0, Nmax}],
     -Table[plusCutValue[nx, length], {nx, 0, Nmax}]
     ];
   matrix = matrix + sparseRankUpdate[
      positions, values, gx[[b]], dimension];
   , {b, 1, 2}, {ny, 0, Nmax}];

  Do[
   positions = Join[
     Table[stateIndex[a, 1, nx, ny, Nmax], {ny, 0, Nmax}],
     Table[stateIndex[a, 2, nx, ny, Nmax], {ny, 0, Nmax}]
     ];
   values = Join[
     Table[minusCutValue[ny, length], {ny, 0, Nmax}],
     -Table[plusCutValue[ny, length], {ny, 0, Nmax}]
     ];
   matrix = matrix + sparseRankUpdate[
      positions, values, gy[[a]], dimension];
   , {a, 1, 2}, {nx, 0, Nmax}];

  matrix
  ];

oneDimensionalMatrix[Nmax_, length_, coupling_] := Module[
  {dimension, diagonal, jump},
  dimension = 2 (Nmax + 1);
  diagonal = Join[
    Table[(n Pi/length)^2, {n, 0, Nmax}],
    Table[(n Pi/length)^2, {n, 0, Nmax}]
    ];
  jump = Join[
    Table[minusCutValue[n, length], {n, 0, Nmax}],
    -Table[plusCutValue[n, length], {n, 0, Nmax}]
    ];
  SparseArray[Band[{1, 1}] -> diagonal, {dimension, dimension}] +
   sparseRankUpdate[Range[dimension], jump, coupling, dimension]
  ];

matchedNeumannCoupling[gContinuum_, Nmax_, length_] :=
  1/(1/gContinuum + (4 length/Pi^2) PolyGamma[1, Nmax + 1]);

matchedCouplings[couplings_, Nmax_, length_] :=
  matchedNeumannCoupling[#, Nmax, length] & /@ couplings;

lowestFrequencies[Nmax_, couplings_, matched_, count_] := Module[
  {usedCouplings, matrix},
  usedCouplings = If[matched,
    matchedCouplings[couplings, Nmax, 1],
    couplings
    ];
  matrix = fourQuadrantMatrix[
    Nmax, 1, 1, Sequence @@ usedCouplings];
  Sort[Sqrt[Eigenvalues[N[matrix, 30], -count]]]
  ];

(* Exact finite-N separability check. *)
separableN = 4;
separableMatrix = fourQuadrantMatrix[
  separableN, 1, 1, 0.7, 0.7, 1.3, 1.3];
separableValues = Sort[Eigenvalues[Normal[N[separableMatrix, 30]]]];
xValues = Eigenvalues[Normal[N[
     oneDimensionalMatrix[separableN, 1, 0.7], 30]]];
yValues = Eigenvalues[Normal[N[
     oneDimensionalMatrix[separableN, 1, 1.3], 30]]];
tensorValues = Sort[Flatten[
    Table[1 + lambdaX + lambdaY, {lambdaX, xValues}, {lambdaY, yValues}]
    ]];
separableResidual = Max[Abs[separableValues - tensorValues]];

(* Coordinate-exchange symmetry for unrelated couplings. *)
generalCouplings = {0.4, 1.1, 0.7, 2.0};
swapA = Sort[Eigenvalues[Normal[N[
      fourQuadrantMatrix[5, 1, 1, Sequence @@ generalCouplings], 30]]]];
swapB = Sort[Eigenvalues[Normal[N[
      fourQuadrantMatrix[5, 1, 1, 0.7, 2.0, 0.4, 1.1], 30]]]];
coordinateSwapResidual = Max[Abs[swapA - swapB]];

(* Nonseparable refinement benchmark.  The N=36 matched result is a      *)
(* numerical reference, not an exact continuum spectrum.                 *)
referenceFrequencies = lowestFrequencies[36, generalCouplings, True, 12];
scanN = {4, 8, 12, 16, 24};
refinementTable = Table[
  {Nmax,
   Max[Abs[
     lowestFrequencies[Nmax, generalCouplings, False, 12] -
      referenceFrequencies]],
   Max[Abs[
     lowestFrequencies[Nmax, generalCouplings, True, 12] -
      referenceFrequencies]]},
  {Nmax, scanN}
  ];

constantModeResidual = Abs[
  First[lowestFrequencies[8, generalCouplings, False, 12]] - 1];

expectedMatchedErrors = {
  1.96326359121013*^-3,
  2.82516230394769*^-4,
  8.60159732933852*^-5,
  3.53136528152831*^-5,
  8.28176657563517*^-6
  };

benchmarkResidual = Max[Abs[
    refinementTable[[All, 3]] - expectedMatchedErrors]];
improvementPassed = And @@ Thread[
    refinementTable[[All, 3]] < refinementTable[[All, 2]]];

Print["===================================================================="];
Print[" Four-quadrant scalar: L=1, m=1"];
Print[" separable Kronecker-sum residual = ", N[separableResidual, 5]];
Print[" x-y coordinate-swap residual = ", N[coordinateSwapResidual, 5]];
Print[" constant-mode frequency residual = ", N[constantModeResidual, 5]];
Print[" nonseparable couplings {gx-,gx+,gy-,gy+} = ", generalCouplings];
Print[" columns: {N, direct error, response-matched error} relative to matched N=36"];
Print[TableForm[N[refinementTable, 9]]];
Print[" maximum residual against stored benchmark = ", N[benchmarkResidual, 5]];
Print[" matched coupling improves every displayed case = ", improvementPassed];

If[separableResidual > 10^-10 || coordinateSwapResidual > 10^-10 ||
  constantModeResidual > 10^-10 || benchmarkResidual > 10^-11 ||
  ! TrueQ[improvementPassed],
 Print["ERROR: four-quadrant scalar benchmark failed."];
 Exit[1];
 ];
