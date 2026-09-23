(* ::Package:: *)

(* ===================================================================== *)
(*  Compact U(1)_k Chern--Simons theory cut into two intervals           *)
(*                                                                       *)
(*  Source: continuous theory IV.md.  There is no stiffness matrix and   *)
(*  no local oscillator spectrum.  The finite calculation is the exact  *)
(*  Fourier-truncated presymplectic reduction.                            *)
(* ===================================================================== *)

ClearAll["Global`*"];

level = 3;
circleLength = 2 Pi;
scanM = {1, 2, 4, 8, 16};
symplecticUnit = {{0, 1}, {-1, 0}};
matrixNullity[matrix_] := Length[matrix] - MatrixRank[matrix];

(* For lambda=q cos(m y)+p sin(m y),                                    *)
(*   (k n/4 Pi) Integral delta lambda wedge d_y delta lambda             *)
(*       = (k n m/2) delta q wedge delta p.                              *)
cutModeBlock[m_] := Module[{coefficient, zero},
  coefficient = level m/2;
  zero = ConstantArray[0, {2, 2}];
  ArrayFlatten[{
    {coefficient symplecticUnit, zero},
    {zero, -coefficient symplecticUnit}
    }]
  ];

blockDiagonal[blocks_] := Module[{sizes, offsets, result},
  sizes = Length /@ blocks;
  offsets = FoldList[Plus, 0, Most[sizes]];
  result = ConstantArray[0, {Total[sizes], Total[sizes]}];
  Do[
   result[[
      offsets[[j]] + 1 ;; offsets[[j]] + sizes[[j]],
      offsets[[j]] + 1 ;; offsets[[j]] + sizes[[j]]]] = blocks[[j]],
   {j, 1, Length[blocks]}];
  result
  ];

cutSymplecticMatrix[Mmax_] :=
  blockDiagonal[Table[cutModeBlock[m], {m, 1, Mmax}]];

(* The matching surface sets (q_1,p_1)=(q_2,p_2) for each mode.          *)
matchingEmbedding[Mmax_] := Module[{embedding, row, column},
  embedding = ConstantArray[0, {4 Mmax, 2 Mmax}];
  Do[
   row = 4 (m - 1);
   column = 2 (m - 1);
   embedding[[row + 1, column + 1]] = 1;
   embedding[[row + 2, column + 2]] = 1;
   embedding[[row + 3, column + 1]] = 1;
   embedding[[row + 4, column + 2]] = 1,
   {m, 1, Mmax}];
  embedding
  ];

cutReductionTable = Table[
   Module[{omega, embedding, pullback},
    omega = cutSymplecticMatrix[Mmax];
    embedding = matchingEmbedding[Mmax];
    pullback = Transpose[embedding] . omega . embedding;
    {Mmax, Length[omega], MatrixRank[omega], Length[pullback],
     MatrixRank[pullback], matrixNullity[pullback], Max[Abs[pullback]]}
    ],
   {Mmax, scanM}];

(* The physical outer endpoint blocks are not matched and therefore      *)
(* remain.  In the ordering {right outer, left outer}, their matrix is   *)
(* identical to the corresponding two oriented blocks of the uncut      *)
(* cylinder.                                                             *)
outerReducedMatrix[Mmax_] := cutSymplecticMatrix[Mmax];
uncutOuterMatrix[Mmax_] := cutSymplecticMatrix[Mmax];
outerComparisonResidual = Max[Table[
    Max[Abs[outerReducedMatrix[Mmax] - uncutOuterMatrix[Mmax]]],
    {Mmax, scanM}]];

(* Topological sector.  Start with                                      *)
(*   (k/2 Pi)(d Wx1 wedge d Wy1 + d Wx2 wedge d Wy2).                    *)
(* Matching Wy1=Wy2 gives a three-dimensional presymplectic surface.     *)
topologicalCoefficient = level/(2 Pi);
topologicalProductMatrix = blockDiagonal[{
    topologicalCoefficient symplecticUnit,
    topologicalCoefficient symplecticUnit}];

(* Coordinates on the matching surface are u=(Wx1,Wx2,Wy).              *)
topologicalMatchingEmbedding = {
   {1, 0, 0},
   {0, 0, 1},
   {0, 1, 0},
   {0, 0, 1}
   };
topologicalPullback =
  Transpose[topologicalMatchingEmbedding] .
   topologicalProductMatrix . topologicalMatchingEmbedding;

(* Choose the representative Wx1=Wx2=Wx/2 for the quotient coordinate   *)
(* (Wx,Wy).  The relative Wx direction is the null vector.               *)
topologicalQuotientRepresentative = {
   {1/2, 0},
   {1/2, 0},
   {0, 1}
   };
topologicalReducedMatrix =
  Transpose[topologicalQuotientRepresentative] . topologicalPullback .
   topologicalQuotientRepresentative;
topologicalUncutMatrix = topologicalCoefficient symplecticUnit;
topologicalResidual = Max[Abs[
    topologicalReducedMatrix - topologicalUncutMatrix]];
topologicalNullVector = {1, -1, 0};
topologicalNullResidual = Max[Abs[
    topologicalPullback . topologicalNullVector]];

(* If the two physical outer endpoints are also glued, the remaining     *)
(* phase space is the holonomy torus.                                    *)
prequantizationNumber = FullSimplify[
   (1/(2 Pi)) topologicalCoefficient (2 Pi) (2 Pi)];
torusHilbertDimension = Abs[level];

Print["===================================================================="];
Print[" U(1)_k Chern--Simons cut reduction: k=", level];
Print[" columns: {M, product dimension, product rank, matching dimension,",
  " pullback rank, pullback nullity, maximum pullback entry}"];
Print[TableForm[cutReductionTable]];
Print[" outer-current comparison residual = ", outerComparisonResidual];
Print[" topological product rank = ",
  MatrixRank[topologicalProductMatrix]];
Print[" topological matching-surface rank = ",
  MatrixRank[topologicalPullback]];
Print[" topological matching-surface nullity = ",
  matrixNullity[topologicalPullback]];
Print[" relative-Wx null-vector residual = ", topologicalNullResidual];
Print[" reduced-vs-uncut topological residual = ", topologicalResidual];
Print[" torus prequantization number = ", prequantizationNumber];
Print[" torus Hilbert-space dimension = ", torusHilbertDimension];

If[Max[cutReductionTable[[All, 7]]] =!= 0 ||
  Or @@ Thread[cutReductionTable[[All, 5]] != 0] ||
  Or @@ Thread[cutReductionTable[[All, 6]] != 2 scanM] ||
  outerComparisonResidual =!= 0 ||
  MatrixRank[topologicalProductMatrix] != 4 ||
  MatrixRank[topologicalPullback] != 2 ||
  matrixNullity[topologicalPullback] != 1 ||
  topologicalNullResidual =!= 0 || topologicalResidual =!= 0 ||
  prequantizationNumber =!= level || torusHilbertDimension != Abs[level],
 Print["ERROR: Chern--Simons cut reduction failed."];
 Exit[1];
 ];
