(* ::Package:: *)

(* ===================================================================== *)
(*  Global AdS3 scalar cut into two angular wedges                       *)
(*                                                                       *)
(*  Model: continuous theory II.md.  The two wedge fields are expanded   *)
(*  in decoupled Neumann angular modes.  The four endpoint traces form   *)
(*  a boundary vector q=(q1A,q1B,q2B,q2A).                               *)
(* ===================================================================== *)

ClearAll["Global`*"];

alpha = 2 Pi/3;
beta = 4 Pi/3;
kappa = 13/10;
rootCount = 12;

boundaryMagnitude[n_, length_] :=
  If[n == 0, 1/Sqrt[length], Sqrt[2/length]];

evaluationMatrix[Nmax_, alphaLength_, betaLength_] := Module[{matrix},
  matrix = ConstantArray[0, {2 (Nmax + 1), 4}];
  Do[
   matrix[[n + 1, 1]] = boundaryMagnitude[n, alphaLength];
   matrix[[n + 1, 2]] = (-1)^n boundaryMagnitude[n, alphaLength];
   , {n, 0, Nmax}];
  Do[
   matrix[[Nmax + 2 + n, 3]] = boundaryMagnitude[n, betaLength];
   matrix[[Nmax + 2 + n, 4]] =
    (-1)^n boundaryMagnitude[n, betaLength];
   , {n, 0, Nmax}];
  matrix
  ];

freeAngularMatrix[Nmax_, alphaLength_, betaLength_] :=
  DiagonalMatrix[Join[
    Table[(n Pi/alphaLength)^2, {n, 0, Nmax}],
    Table[(n Pi/betaLength)^2, {n, 0, Nmax}]
    ]];

continuumBoundaryMatrix[coupling_] := Module[{matrix, d, g},
  d = 1/coupling;
  g = coupling;
  matrix = d IdentityMatrix[4];
  (* A interface: q1A-q2A, indices 1 and 4. *)
  matrix[[1, 1]] += g;
  matrix[[4, 4]] += g;
  matrix[[1, 4]] -= g;
  matrix[[4, 1]] -= g;
  (* B interface: q1B-q2B, indices 2 and 3. *)
  matrix[[2, 2]] += g;
  matrix[[3, 3]] += g;
  matrix[[2, 3]] -= g;
  matrix[[3, 2]] -= g;
  matrix
  ];

(* Omitted zero-energy endpoint resolvent of one Neumann interval. *)
endpointTailBlock[Nmax_, length_] := Module[{diagonalTail, crossTail},
  diagonalTail = PolyGamma[1, Nmax + 1];
  crossTail = (-1)^(Nmax + 1) *
    (PolyGamma[1, (Nmax + 1)/2] -
      PolyGamma[1, (Nmax + 2)/2])/4;
  (2 length/Pi^2) {{diagonalTail, crossTail},
    {crossTail, diagonalTail}}
  ];

omittedEndpointResponse[Nmax_, alphaLength_, betaLength_] :=
  ArrayFlatten[{
    {endpointTailBlock[Nmax, alphaLength], ConstantArray[0, {2, 2}]},
    {ConstantArray[0, {2, 2}], endpointTailBlock[Nmax, betaLength]}
    }];

matchedBoundaryMatrix[Nmax_, alphaLength_, betaLength_, coupling_] :=
  Inverse[
   Inverse[continuumBoundaryMatrix[coupling]] +
    omittedEndpointResponse[Nmax, alphaLength, betaLength]
   ];

truncatedAngularMatrix[Nmax_, alphaLength_, betaLength_, coupling_,
  matched_] := Module[{evaluation, boundaryMatrix},
  evaluation = N[evaluationMatrix[Nmax, alphaLength, betaLength], 40];
  boundaryMatrix = N[continuumBoundaryMatrix[coupling], 40];
  If[matched,
   boundaryMatrix = N[
     matchedBoundaryMatrix[Nmax, alphaLength, betaLength, coupling], 40]
   ];
  N[freeAngularMatrix[Nmax, alphaLength, betaLength], 40] +
   evaluation . boundaryMatrix . Transpose[evaluation]
  ];

truncatedAngularRoots[Nmax_, alphaLength_, betaLength_, coupling_,
  matched_, count_] :=
  Take[
   Sort[Sqrt[Eigenvalues[
      truncatedAngularMatrix[
       Nmax, alphaLength, betaLength, coupling, matched]]]],
   count
   ];

propagator[lambda_, length_] := {
  {Cos[lambda length], length Sinc[lambda length]},
  {-lambda Sin[lambda length], Cos[lambda length]}
  };

jumpMatrix[coupling_] := {
  {1 + coupling^-2, coupling^-1},
  {2 coupling^-1 + coupling^-3, 1 + coupling^-2}
  };

monodromy[lambda_, alphaLength_, betaLength_, coupling_] :=
  jumpMatrix[coupling] . propagator[lambda, betaLength] .
   jumpMatrix[coupling] . propagator[lambda, alphaLength];

secularFunction[lambda_, alphaLength_, betaLength_, coupling_] :=
  Tr[monodromy[lambda, alphaLength, betaLength, coupling]] - 2;

rootSeeds = truncatedAngularRoots[
   48, alpha, beta, kappa, True, rootCount];
exactRoots = Table[
  lambda /. FindRoot[
    secularFunction[lambda, alpha, beta, kappa] == 0,
    {lambda, SetPrecision[seed, 40]},
    WorkingPrecision -> 40],
  {seed, rootSeeds}
  ];

monodromyResidual = Max[Abs[
    secularFunction[#, alpha, beta, kappa] & /@ exactRoots]];
determinantResidual = Max[Abs[
    Det[monodromy[#, alpha, beta, kappa]] - 1 & /@ exactRoots]];

scanN = {8, 12, 16, 24, 32};
errorTable = Table[
  {Nmax,
   Max[Abs[
     truncatedAngularRoots[
       Nmax, alpha, beta, kappa, False, rootCount] - exactRoots]],
   Max[Abs[
     truncatedAngularRoots[
       Nmax, alpha, beta, kappa, True, rootCount] - exactRoots]]},
  {Nmax, scanN}
  ];

expectedMatchedErrors = {
  2.67770213860413*^-2,
  4.38487042408995*^-3,
  1.63361208452831*^-3,
  4.49026778127502*^-4,
  1.84952339993124*^-4
  };

benchmarkResidual = Max[Abs[
    errorTable[[All, 3]] - expectedMatchedErrors]];
positivityMargin = Min[Eigenvalues[N[
     matchedBoundaryMatrix[8, alpha, beta, kappa], 30]]];
improvementPassed = And @@ Thread[errorTable[[All, 3]] < errorTable[[All, 2]]];

(* A single bare kappa_N would require the matched matrix to equal        *)
(* continuumBoundaryMatrix[kappa_N].  That family has one common         *)
(* diagonal and a sparse paired-endpoint pattern.  The omitted response  *)
(* generates within-wedge endpoint mixing, so test the forbidden entries. *)
checkMatchedBoundary = N[
  matchedBoundaryMatrix[8, alpha, beta, kappa], 40];
oneParameterClosureMargin = Max[Abs[Extract[
  checkMatchedBoundary, {{1, 2}, {2, 1}, {3, 4}, {4, 3}}]]];

(* The radial spectrum is then exact for every retained angular root. *)
delta = 2;
firstRadialFrequencies = Table[
  delta + 2 n + exactRoots[[j]],
  {n, 0, 1}, {j, 1, 4}
  ];

Print["===================================================================="];
Print[" Global AdS3 angular wedges: alpha=2 Pi/3, beta=4 Pi/3, kappa=13/10"];
Print[" first twelve exact monodromy roots = ", N[exactRoots, 10]];
Print[" monodromy secular residual = ", N[monodromyResidual, 5]];
Print[" det(M)-1 residual = ", N[determinantResidual, 5]];
Print[" smallest eigenvalue of matched boundary matrix at N=8 = ",
  N[positivityMargin, 8]];
Print[" columns: {N, direct max abs. error, matrix-matched max abs. error}"];
Print[TableForm[N[errorTable, 9]]];
Print[" Delta=2 radial lifts for n=0,1 and first four angular roots = ",
  N[firstRadialFrequencies, 9]];
Print[" maximum residual against stored benchmark = ",
  N[benchmarkResidual, 5]];
Print[" matrix matching improves every displayed case = ", improvementPassed];
Print[" forbidden within-wedge endpoint mixing at N=8 = ",
  N[oneParameterClosureMargin, 10]];

If[monodromyResidual > 10^-30 || determinantResidual > 10^-30 ||
  positivityMargin <= 0 || benchmarkResidual > 10^-11 ||
  oneParameterClosureMargin < 10^-8 ||
  ! TrueQ[improvementPassed],
 Print["ERROR: global AdS3 angular benchmark failed."];
 Exit[1];
 ];
