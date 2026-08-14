(* ::Package:: *)

(*
  Algebraic verification of the finite-action gauge-completion identity.

  Omega(x,y)=x^T J y is an arbitrary antisymmetric bilinear form and K is the
  linear action of the background Killing flow on first-order perturbations.
  The gauge perturbation a represents L_v G, so K.a represents
  L_[xi,v] G.  No Killing assumption is made for v.
*)

ClearAll["Global`*"];

dimension = 4;
pVector = Array[pp, dimension];
aVector = Array[aa, dimension];
bVector = Array[bb, dimension];
vVector = Array[vv, dimension];
wVector = Array[ww, dimension];

independentJ = Array[symp, {dimension, dimension}];
symplecticMatrix = Table[
   Which[
    row < column, independentJ[[row, column]],
    row > column, -independentJ[[column, row]],
    True, 0],
   {row, dimension}, {column, dimension}];
killingAction = Array[k, {dimension, dimension}];

omega[x_, y_] := Expand[x . symplecticMatrix . y];
canonicalEnergy[x_] := omega[x, killingAction . x];

(* Finite-action surface descent after constraints, flux, and outer terms are
   controlled. *)
descent[x_, gaugePerturbation_] := Expand[
   omega[x + gaugePerturbation,
     killingAction . gaugePerturbation]
    -omega[killingAction . x, gaugePerturbation]];

energyDifferenceResidual = Expand[
   descent[pVector, aVector] -
    (canonicalEnergy[pVector + aVector] - canonicalEnergy[pVector])];

cocycleResidual = Expand[
   descent[pVector, aVector] +
    descent[pVector + aVector, bVector] -
    descent[pVector, aVector + bVector]];

gaugeInvariantResidual = Expand[
   canonicalEnergy[pVector + wVector] +
    descent[pVector + wVector, vVector - wVector]
    -canonicalEnergy[pVector] - descent[pVector, vVector]];

extremalGaugeResidual = Expand[
   descent[pVector, ConstantArray[0, dimension]]];

testConditions = {
   energyDifferenceResidual === 0,
   cocycleResidual === 0,
   gaugeInvariantResidual === 0,
   extremalGaugeResidual === 0
   };
testIDs = {
   "finite-action descent equals canonical-energy difference",
   "gauge-completion cocycle",
   "gauge-invariant completed canonical energy",
   "completion vanishes in the selected extremal representative"
   };

gaugeCocycleTestReport = TestReport@MapThread[
    VerificationTest[#1, True, TestID -> #2] &,
    {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
