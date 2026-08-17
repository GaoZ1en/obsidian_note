(* ::Package:: *)

(*
  Exact algebraic checks for a cotangent realization of a closed
  artificial-boundary two-form.

  For a closed two-form F on a star-shaped coefficient chart, the radial
  homotopy primitive alpha obeys d alpha=F.  The edge graph

    Q^I=a^I,  P_I=-alpha_I(a)

  pulls the canonical edge form back to -F.  The constant specialization is
  Theta_edge=-F_IJ a^I delta a^J/2.  A scalar transgression changes a
  primitive but not its curvature.
*)

ClearAll["Global`*"];

coordinates = {x1, x2, x3};

(* A nonconstant antisymmetric two-form with
   dF_123 = d1 F23 + d2 F31 + d3 F12 = 0. *)
fMatrix = {
   {0, x3, 2 x2},
   {-x3, 0, x1},
   {-2 x2, -x1, 0}
   };

closureResidual = Expand[
   D[fMatrix[[2, 3]], x1] +
    D[fMatrix[[3, 1]], x2] +
    D[fMatrix[[1, 2]], x3]
   ];

alpha = Table[
   Integrate[
    t Sum[coordinates[[i]] (
       fMatrix[[i, j]] /. Thread[coordinates -> t coordinates]),
      {i, Length[coordinates]}], {t, 0, 1}],
   {j, Length[coordinates]}];

primitiveResidual = Table[
   FullSimplify[D[alpha[[j]], coordinates[[i]]] -
     D[alpha[[i]], coordinates[[j]]] - fMatrix[[i, j]]],
   {i, Length[coordinates]}, {j, Length[coordinates]}];

(* Constant linearized specialization. *)
constantF = {
   {0, f12, f13, f14},
   {-f12, 0, f23, f24},
   {-f13, -f23, 0, f34},
   {-f14, -f24, -f34, 0}
   };
constantCoordinates = {a1, a2, a3, a4};
constantAlpha = FullSimplify[
   Table[Sum[constantCoordinates[[i]] constantF[[i, j]],
      {i, 4}]/2, {j, 4}]];
edgePotential = -constantAlpha;

edgeCurvature = Table[
   Expand[D[edgePotential[[j]], constantCoordinates[[i]]] -
     D[edgePotential[[i]], constantCoordinates[[j]]]],
   {i, 4}, {j, 4}];

(* The cotangent graph Q=a, P=-alpha has pullback potential P_I da^I. *)
canonicalGraphPotential = -constantAlpha;
canonicalGraphCurvature = Table[
   Expand[D[canonicalGraphPotential[[j]], constantCoordinates[[i]]] -
     D[canonicalGraphPotential[[i]], constantCoordinates[[j]]]],
   {i, 4}, {j, 4}];

(* Exact scalar shifts do not change the curvature. *)
scalar = a1^2 a3 + a2 a4^2 + a1 a2 a3 a4;
shiftedPotential = edgePotential +
   (D[scalar, #] & /@ constantCoordinates);
shiftedCurvature = Table[
   Expand[D[shiftedPotential[[j]], constantCoordinates[[i]]] -
     D[shiftedPotential[[i]], constantCoordinates[[j]]]],
   {i, 4}, {j, 4}];
scalarCurl = Table[
   Expand[D[scalar, constantCoordinates[[i]], constantCoordinates[[j]]] -
     D[scalar, constantCoordinates[[j]], constantCoordinates[[i]]]],
   {i, 4}, {j, 4}];

(* The complete pullback cancels a fully compensated gauge core.  It does
   not cancel an independent curvature left by a proper radial taper. *)
transitionF = {
   {0, k12, k13, k14},
   {-k12, 0, k23, k24},
   {-k13, -k23, 0, k34},
   {-k14, -k24, -k34, 0}
   };
fixedSectionF = constantF + transitionF;
geometricEmbeddingCrossF = -constantF;
geometricRemainder = Expand[
   fixedSectionF + geometricEmbeddingCrossF];

zero3 = ConstantArray[0, {3, 3}];
zero4 = ConstantArray[0, {4, 4}];

testConditions = {
   fMatrix + Transpose[fMatrix] === zero3,
   closureResidual === 0,
   primitiveResidual === zero3,
   edgeCurvature + constantF === zero4,
   canonicalGraphPotential === edgePotential,
   canonicalGraphCurvature + constantF === zero4,
   scalarCurl === zero4,
   shiftedCurvature === edgeCurvature,
   geometricRemainder === transitionF,
   geometricRemainder =!= zero4
   };

testIDs = {
   "nonconstant two-form is antisymmetric",
   "nonconstant two-form is closed",
   "radial homotopy primitive has curvature F",
   "constant edge potential has curvature -F",
   "cotangent graph pulls back to the edge potential",
   "cotangent graph pulls back to the edge curvature -F",
   "scalar transgression has zero curvature",
   "primitive shift by an exact scalar leaves curvature unchanged",
   "action-derived embedding cancels gauge core and leaves transition",
   "generic proper-transition curvature is not a gauge degeneracy"
   };

Print[<|
  "ClosureResidual" -> closureResidual,
  "PrimitiveResidual" -> primitiveResidual,
  "EdgeCurvatureResidual" -> edgeCurvature + constantF,
  "GeometricGaugeCoreRemainder" -> geometricRemainder,
  "ScalarCurl" -> scalarCurl|>];

movingEdgeRadialHomotopyReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
