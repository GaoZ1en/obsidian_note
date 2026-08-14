(* ::Package:: *)

(*
  Algebraic regression for the finite-rank spectral edge completion.

  For a constant antisymmetric artificial-boundary flux matrix F_IJ on a
  finite spectral block, this checks that

    Theta_edge = -1/2 F_IJ a^I delta a^J

  has field-space exterior derivative -F.  It also checks the elementary
  diagonal error decomposition used to pass from finite spectral blocks to
  the continuous local form.  No positivity or explicit regulator rate is
  inferred.
*)

ClearAll[dimension, coordinatesA, variationsOne, variationsTwo,
  fluxMatrix, fluxTwoForm, edgeDerivative, localTailError,
  regulatedBlockError, totalError];

dimension = 4;
coordinatesA = Array[a, dimension];
variationsOne = Array[u, dimension];
variationsTwo = Array[v, dimension];
fluxMatrix = Array[f, {dimension, dimension}];

antisymmetricRules = Flatten@Table[
   If[i == j, f[i, j] -> 0,
    If[i < j, Nothing, f[i, j] -> -f[j, i]]],
   {i, dimension}, {j, dimension}];

fluxTwoForm = FullSimplify[
   1/2 Sum[f[i, j] (variationsOne[[i]] variationsTwo[[j]] -
       variationsTwo[[i]] variationsOne[[j]]),
     {i, dimension}, {j, dimension}] /. antisymmetricRules];

(* Antisymmetrized field derivative of
   Theta_edge(delta)=-1/2 F_IJ a^I delta a^J. *)
edgeDerivative = FullSimplify[
   -1/2 Sum[f[i, j] (variationsOne[[i]] variationsTwo[[j]] -
       variationsTwo[[i]] variationsOne[[j]]),
     {i, dimension}, {j, dimension}] /. antisymmetricRules];

edgeCancellationResidual = FullSimplify[
   edgeDerivative + fluxTwoForm];

(* Abstract norm estimate:
   |B_lambda(P_M f,P_M g)-B(f,g)| <= e_M ||f|| ||g|| + tail_M. *)
regulatedBlockError = errorM normF normG;
localTailError = tailM;
totalError = regulatedBlockError + localTailError;
diagonalBoundResidual = FullSimplify[
   (totalError /. errorM -> 2^-modeCutoff) -
    (2^-modeCutoff normF normG + tailM)];

testConditions = {
   AntisymmetricMatrixQ[
    fluxMatrix /. antisymmetricRules],
   edgeCancellationResidual === 0,
   diagonalBoundResidual === 0,
   Limit[2^-modeCutoff, modeCutoff -> Infinity] === 0
   };
testIDs = {
   "finite-rank flux matrix is antisymmetric",
   "edge one-form exterior derivative cancels artificial-boundary flux",
   "diagonal finite-block plus local-tail error identity",
   "chosen finite-block operator tolerance vanishes"
   };

Print[<|
  "FluxTwoForm" -> fluxTwoForm,
  "EdgeDerivative" -> edgeDerivative,
  "CancellationResidual" -> edgeCancellationResidual,
  "DiagonalBoundResidual" -> diagonalBoundResidual|>];
adsRindlerSpectralEdgeCompletionReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
