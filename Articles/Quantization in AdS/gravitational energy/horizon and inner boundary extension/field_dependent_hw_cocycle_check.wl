(* ::Package:: *)

(*
  Exact algebraic regression for a linear field-dependent HW section.

  R maps gauge parameters to pure-gauge perturbations.  V is the chosen
  boundary-value solver, normalized by V.R=-1 on the selected vertical
  complement.  Therefore P=1+R.V projects onto the HW slice.  H is an
  arbitrary symmetric canonical-energy bilinear matrix.

  The last checks isolate the term missed by freezing v[h] while varying h.
*)

ClearAll["Global`*"];

fieldDimension = 4;
gaugeDimension = 2;

(* A normal form for an arbitrary split vertical complement. *)
extensionBlock = Array[c, {gaugeDimension,
    fieldDimension - gaugeDimension}];
gaugeMap = Join[IdentityMatrix[gaugeDimension],
   ConstantArray[0, {fieldDimension - gaugeDimension, gaugeDimension}]];
solver = Join[-IdentityMatrix[gaugeDimension], extensionBlock, 2];
projector = IdentityMatrix[fieldDimension] + gaugeMap . solver;

independentEnergy = Array[e, {fieldDimension, fieldDimension}];
energyMatrix = Table[
   Which[i < j, independentEnergy[[i, j]],
    i > j, independentEnergy[[j, i]],
    True, independentEnergy[[i, i]]],
   {i, fieldDimension}, {j, fieldDimension}];

field = Array[h, fieldDimension];
variation = Array[dh, fieldDimension];
gaugeParameter = Array[w, gaugeDimension];

bilinear[x_, y_] := Expand[x . energyMatrix . y];
energy[x_] := bilinear[x, x];
hwVector[x_] := solver . x;
hwRepresentative[x_] := projector . x;
completion[x_] := Expand[energy[hwRepresentative[x]] - energy[x]];

projectorResiduals = {
   Simplify[solver . gaugeMap + IdentityMatrix[gaugeDimension]],
   Simplify[projector . projector - projector],
   Simplify[projector . gaugeMap],
   Simplify[solver . projector]
   };

gaugeInvariantResidual = Expand[
   energy[hwRepresentative[field + gaugeMap . gaugeParameter]] -
    energy[hwRepresentative[field]]];

completionResidual = Expand[
   completion[field] -
    (energy[field + gaugeMap . hwVector[field]] - energy[field])];

polarizedCompletionResidual = Expand[
   (completion[field + variation] - completion[field] -
       completion[variation])/2 -
    (bilinear[field, gaugeMap . hwVector[variation]] +
      bilinear[gaugeMap . hwVector[field], variation] +
      bilinear[gaugeMap . hwVector[field],
       gaugeMap . hwVector[variation]])];

totalDerivative = Expand[
   Coefficient[
    energy[hwRepresentative[field + parameter variation]], parameter, 1]];
frozenVectorDerivative = Expand[
   2 bilinear[hwRepresentative[field], variation]];
fieldDependentCorrection = Expand[
   2 bilinear[hwRepresentative[field],
     gaugeMap . hwVector[variation]]];
fieldDependentDerivativeResidual = Expand[
   totalDerivative - frozenVectorDerivative - fieldDependentCorrection];

sectionCocycleResidual = Expand[
   energy[field + gaugeMap . gaugeParameter] +
    completion[field + gaugeMap . gaugeParameter] -
    energy[field] - completion[field]];

testConditions = {
   projectorResiduals === {
     ConstantArray[0, {gaugeDimension, gaugeDimension}],
     ConstantArray[0, {fieldDimension, fieldDimension}],
     ConstantArray[0, {fieldDimension, gaugeDimension}],
     ConstantArray[0, {gaugeDimension, fieldDimension}]},
   gaugeInvariantResidual === 0,
   completionResidual === 0,
   polarizedCompletionResidual === 0,
   fieldDependentDerivativeResidual === 0,
   sectionCocycleResidual === 0
   };
testIDs = {
   "HW solver defines a projector and annihilates the selected vertical complement",
   "completed energy is invariant under selected gauge transformations",
   "field-dependent completion is the energy difference",
   "polarized completion contains both cross terms and the gauge-gauge term",
   "total variation equals frozen-vector variation plus the delta-v correction",
   "field-dependent section cocycle is gauge invariant"
   };

Print[<|
  "Projector" -> projector,
  "ProjectorResiduals" -> projectorResiduals,
  "GaugeInvariantResidual" -> gaugeInvariantResidual,
  "PolarizedCompletionResidual" -> polarizedCompletionResidual,
  "FieldDependentDerivativeResidual" ->
   fieldDependentDerivativeResidual,
  "SectionCocycleResidual" -> sectionCocycleResidual|>];
fieldDependentHWCocycleReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
