(* ::Package:: *)

(*
  Exact coefficient-space algebra for nested adapted partial sums on the
  t=0 fixed-anchor Brown--Henneaux space.

  Coordinates are ordered as

    Cos[2 phi], Sin[2 phi], Cos[3 phi], Sin[3 phi], ... .

  Ordinary Fourier truncation does not preserve endpoint zeros.  Let C be
  spanned by Sin[2 phi] and Cos[4 phi].  Delete C, take the ordinary partial
  sum R_M on its coefficient complement W, and then apply P_A.  On ker E,

    Q_M = P_A R_M.
*)

ClearAll["Global`*"];

maximumMode = 8;
frequencies = Range[2, maximumMode];
dimension = 2 Length[frequencies];

basis = Flatten@Table[
    {Cos[mode phi], Sin[mode phi]}, {mode, frequencies}];
rightEndpoint = FullSimplify[basis /. phi -> Pi/4];
leftEndpoint = FullSimplify[basis /. phi -> -Pi/4];

sinTwoIndex = First@FirstPosition[basis, Sin[2 phi]];
cosFourIndex = First@FirstPosition[basis, Cos[4 phi]];
sinTwoVector = UnitVector[dimension, sinTwoIndex];
cosFourVector = UnitVector[dimension, cosFourIndex];

(* P_A x = x + cos4 (E_+x+E_-x)/2
                 - sin2 (E_+x-E_-x)/2. *)
projectAMatrix = IdentityMatrix[dimension] +
   Outer[Times, cosFourVector, (rightEndpoint + leftEndpoint)/2] -
   Outer[Times, sinTwoVector, (rightEndpoint - leftEndpoint)/2];

endpointMatrix = {rightEndpoint, leftEndpoint};

ordinaryCutoffMatrix[cutoff_] := DiagonalMatrix@Flatten@Table[
    {Boole[mode <= cutoff], Boole[mode <= cutoff]},
    {mode, frequencies}];

complementFreeCutoffMatrix[cutoff_] := Module[{matrix},
  matrix = ordinaryCutoffMatrix[cutoff];
  matrix[[sinTwoIndex, sinTwoIndex]] = 0;
  matrix[[cosFourIndex, cosFourIndex]] = 0;
  matrix];

adaptedCutoffMatrix[cutoff_] :=
  projectAMatrix.complementFreeCutoffMatrix[cutoff];

rawCoordinates = Array[x, dimension];
fixedCoordinates = projectAMatrix.rawCoordinates;

cosFiveIndex = First@FirstPosition[basis, Cos[5 phi]];
cosFive = UnitVector[dimension, cosFiveIndex];
ordinaryCounterexample = projectAMatrix.cosFive;
ordinaryCounterexampleAtFour =
  ordinaryCutoffMatrix[4].ordinaryCounterexample;

adaptedColumns = Delete[IdentityMatrix[dimension],
   List /@ Sort[{sinTwoIndex, cosFourIndex}]];
adaptedProjectedColumns = projectAMatrix.Transpose[adaptedColumns];

fixedEndpointResidual = FullSimplify[endpointMatrix.fixedCoordinates];
ordinaryCounterexampleEndpoints =
  FullSimplify[endpointMatrix.ordinaryCounterexampleAtFour];
adaptedEndpointResiduals = Table[
   FullSimplify[endpointMatrix.adaptedCutoffMatrix[cutoff].fixedCoordinates],
   {cutoff, 2, maximumMode}];
nestedResiduals = Flatten[Table[
   FullSimplify[
    adaptedCutoffMatrix[smaller].adaptedCutoffMatrix[larger].
      fixedCoordinates - adaptedCutoffMatrix[smaller].fixedCoordinates],
   {larger, 2, maximumMode}, {smaller, 2, larger}], 1];
reconstructionResidual = FullSimplify[
   adaptedCutoffMatrix[maximumMode].fixedCoordinates - fixedCoordinates];

testConditions = {
   FullSimplify[projectAMatrix.projectAMatrix - projectAMatrix] ===
    ConstantArray[0, {dimension, dimension}],
   fixedEndpointResidual === {0, 0},
   ordinaryCounterexampleEndpoints === {1/Sqrt[2], 1/Sqrt[2]},
   adaptedEndpointResiduals ===
    ConstantArray[{0, 0}, maximumMode - 1],
   nestedResiduals ===
    ConstantArray[0, {Length[nestedResiduals], dimension}],
   reconstructionResidual === ConstantArray[0, dimension],
   MatrixRank[adaptedProjectedColumns] === dimension - 2,
   MatrixRank[endpointMatrix] === 2
   };

testIDs = {
   "P_A is an exact projection",
   "P_A coordinates fix both endpoints",
   "ordinary Fourier cutoff violates both endpoint constraints",
   "every adapted partial sum preserves both endpoint constraints",
   "adapted coordinate projections are nested on ker E",
   "adapted partial sum reconstructs a finite fixed-anchor profile",
   "projected complement-free vectors have codimension two",
   "the endpoint map has rank two"
   };

Print[<|
  "OrdinaryCounterexampleEndpoints" -> ordinaryCounterexampleEndpoints,
  "AdaptedRank" -> MatrixRank[adaptedProjectedColumns],
  "FixedAnchorDimension" -> dimension - 2
  |>];

adaptedSpectralProjectionReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
