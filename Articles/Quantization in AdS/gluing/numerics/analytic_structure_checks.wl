(* ::Package:: *)

(* ===================================================================== *)
(*  Analytic structure checks for the gluing programme                   *)
(*                                                                       *)
(*  This file checks the finite-rank boundary-response identity, the     *)
(*  Maxwell kinetic-defect operator pencil, and the Gegenbauer           *)
(*  separation used for the AdS--Rindler global-time completion.         *)
(* ===================================================================== *)

ClearAll["Global`*"];

(* Finite-rank stiffness update and matrix determinant lemma. *)
freeMatrix = DiagonalMatrix[{2, 5, 11, 17}];
traceMatrix = {
   {1, 0},
   {1, -1},
   {0, 2},
   {2, 1}
   };
boundaryMatrix = {{3, 1}, {1, 2}};
spectralPoint = 7/10;
freeResolvent = Inverse[
   freeMatrix - spectralPoint IdentityMatrix[Length[freeMatrix]]];

determinantLemmaResidual = FullSimplify[
   Det[freeMatrix + traceMatrix . boundaryMatrix .
       Transpose[traceMatrix] -
      spectralPoint IdentityMatrix[Length[freeMatrix]]]/
     Det[freeMatrix -
       spectralPoint IdentityMatrix[Length[freeMatrix]]] -
    Det[IdentityMatrix[Length[boundaryMatrix]] +
      boundaryMatrix . Transpose[traceMatrix] . freeResolvent .
       traceMatrix]
   ];

(* Exact matching of the boundary secular matrix at one spectral point. *)
retainedResponse = {{2/7, -1/11}, {-1/11, 3/13}};
omittedResponse = {{1/17, 1/19}, {1/19, 2/23}};
matchedBoundaryMatrix = Inverse[
   Inverse[boundaryMatrix] + omittedResponse];
responseMatchingResidual = FullSimplify[
   Inverse[matchedBoundaryMatrix] + retainedResponse -
    (Inverse[boundaryMatrix] + retainedResponse + omittedResponse)
   ];

(* Kinetic defect: det(K-z G) contains z times the boundary response. *)
kineticFreeMatrix = DiagonalMatrix[{3, 8, 15}];
kineticTrace = {1, -2, 1};
kineticCoupling = 5/3;
kineticSpectralPoint = 4/7;
kineticMetric = IdentityMatrix[3] +
   Outer[Times, kineticTrace, kineticTrace]/kineticCoupling;
kineticDeterminantResidual = FullSimplify[
   Det[kineticFreeMatrix - kineticSpectralPoint kineticMetric]/
     Det[kineticFreeMatrix -
       kineticSpectralPoint IdentityMatrix[3]] -
    (1 - kineticSpectralPoint/kineticCoupling *
      kineticTrace .
       Inverse[kineticFreeMatrix -
         kineticSpectralPoint IdentityMatrix[3]] . kineticTrace)
   ];

(* AdS2-sliced AdS3 transverse equation. *)
profile[conformalDimension_, degree_, coordinate_] :=
  Sech[coordinate]^conformalDimension *
   GegenbauerC[degree, conformalDimension - 1/2, Tanh[coordinate]];

transverseExpression = Module[
  {function, massSquared, effectiveMassSquared},
  function = profile[dimension, degree, coordinate];
  massSquared = dimension (dimension - 2);
  effectiveMassSquared =
   (dimension + degree) (dimension + degree - 1);
  -D[Cosh[coordinate]^2 D[function, coordinate], coordinate] +
   massSquared Cosh[coordinate]^2 function -
   effectiveMassSquared function
  ];

odeTestPoints = {
   {3/2, 2/5, 1/4},
   {2, 7/5, 3/4},
   {5/2, 11/5, 6/5}
   };
gegenbauerOdeResidual = Max[Abs[(N[
        transverseExpression /.
         {dimension -> SetPrecision[#[[1]], 60],
          degree -> SetPrecision[#[[2]], 60],
          coordinate -> SetPrecision[#[[3]], 60]}, 30] &) /@
     odeTestPoints]];

cutDerivativeFormula[conformalDimension_, degree_] :=
  2 (conformalDimension - 1/2) *
   GegenbauerC[degree - 1, conformalDimension + 1/2, 0]/
   GegenbauerC[degree, conformalDimension - 1/2, 0];

cutDerivativeTestPoints = {
   {3/2, 1/3},
   {2, 7/5},
   {5/2, 12/5}
   };
cutDerivativeResidual = Max[Abs[(N[
        (D[profile[dimension, degree, coordinate], coordinate] /
             profile[dimension, degree, coordinate] /.
           coordinate -> 0) -
         cutDerivativeFormula[dimension, degree] /.
        {dimension -> SetPrecision[#[[1]], 60],
         degree -> SetPrecision[#[[2]], 60]}, 30] &) /@
     cutDerivativeTestPoints]];

endpointResidual = Max[Abs[Join[
    Table[
     D[profile[2, 2 r, coordinate], coordinate] /. coordinate -> 0,
     {r, 0, 4}],
    Table[profile[2, 2 r + 1, 0], {r, 0, 4}]
    ]]];

(* Numerical Sturm--Liouville interlacing check over several dimensions  *)
(* and positive Robin coefficients.                                     *)
robinResponse[conformalDimension_?NumericQ, degree_?NumericQ] := N[
  cutDerivativeFormula[conformalDimension, degree], 40];

robinRoot[conformalDimension_, coefficient_, mode_] := Module[
  {lower = 2 mode, upper = 2 mode + 1},
  degree /. FindRoot[
    robinResponse[conformalDimension, degree] == coefficient,
    {degree, (lower + upper)/2, lower + 10^-12, upper - 10^-12},
    WorkingPrecision -> 40]
  ];

interlacingRoots = Flatten[Table[
    {dimensionValue, coefficientValue, mode,
     robinRoot[dimensionValue, coefficientValue, mode]},
    {dimensionValue, {3/2, 2, 5/2}},
    {coefficientValue, {1/10, 1, 5}},
    {mode, 0, 3}], 2];
interlacingMargin = Min[Flatten[Table[
     {entry[[4]] - 2 entry[[3]],
      2 entry[[3]] + 1 - entry[[4]]},
     {entry, interlacingRoots}]]];

(* At Delta=2, check that the full-line transverse profiles have exactly  *)
(* the Gegenbauer norm used in the half-line trace normalization.         *)
gegenbauerNorm[degree_, index_] :=
  Pi 2^(1 - 2 index) Gamma[degree + 2 index]/
   (degree! (degree + index) Gamma[index]^2);
orthogonalityMatrix = Table[
   NIntegrate[
     profile[2, 2 r, coordinate] profile[2, 2 s, coordinate],
     {coordinate, -Infinity, Infinity},
     WorkingPrecision -> 40, AccuracyGoal -> 25] /
    Sqrt[gegenbauerNorm[2 r, 3/2] gegenbauerNorm[2 s, 3/2]],
   {r, 0, 3}, {s, 0, 3}];
orthogonalityResidual = Max[Abs[
    orthogonalityMatrix - IdentityMatrix[4]]];

(* At strong gluing, even and odd transverse degrees unite.  The number  *)
(* of pairs (j,n) with j+n=N is N+1, the global AdS3 degeneracy.         *)
strongLimitDegeneracies = Table[
   Count[Flatten[Table[j + n, {j, 0, 8}, {n, 0, 8}]], level],
   {level, 0, 8}];
expectedDegeneracies = Range[1, 9];
degeneracyResidual = strongLimitDegeneracies - expectedDegeneracies;

Print["===================================================================="];
Print[" Analytic structure checks"];
Print[" finite-rank determinant-lemma residual = ",
  determinantLemmaResidual];
Print[" response-matching residual = ", responseMatchingResidual];
Print[" kinetic-defect determinant residual = ",
  kineticDeterminantResidual];
Print[" Gegenbauer transverse ODE residual = ",
  N[gegenbauerOdeResidual, 5]];
Print[" cut logarithmic-derivative residual = ",
  N[cutDerivativeResidual, 5]];
Print[" Neumann/Dirichlet endpoint residual = ", endpointResidual];
Print[" minimum Robin interlacing margin = ", N[interlacingMargin, 8]];
Print[" transverse orthogonality residual at Delta=2 = ",
  N[orthogonalityResidual, 5]];
Print[" strong-limit degeneracies = ", strongLimitDegeneracies];
Print[" degeneracy residual = ", degeneracyResidual];

allChecksPassed = TrueQ[
   determinantLemmaResidual === 0 &&
    responseMatchingResidual === ConstantArray[0, {2, 2}] &&
    kineticDeterminantResidual === 0 &&
    NumericQ[gegenbauerOdeResidual] && gegenbauerOdeResidual <= 10^-20 &&
    NumericQ[cutDerivativeResidual] && cutDerivativeResidual <= 10^-20 &&
    endpointResidual === 0 && NumericQ[interlacingMargin] &&
    interlacingMargin > 0 && NumericQ[orthogonalityResidual] &&
    orthogonalityResidual <= 10^-20 &&
    degeneracyResidual === ConstantArray[0, 9]
   ];

If[! allChecksPassed,
 Print["ERROR: analytic structure check failed."];
 Exit[1];
 ];
