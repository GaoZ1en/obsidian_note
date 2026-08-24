(* ::Package:: *)

(*
  Exact algebraic regression for independence of an admissible ambient
  extension of the Hollands--Wald normal displacement.

  S is the normal solver and R0,R1 are two extension maps with

    S.R0=S.R1=-1.

  Their difference K=R1-R0 lies in ker S.  The two complete metric-embedding
  tangents have the same Delta_X g.  The last test uses an explicit proper
  null subspace: the energy form annihilates K, so the completed metric-only
  energy is independent of the extension.  A charged K would not pass that
  last condition and is intentionally outside the claim.
*)

ClearAll["Global`*"];

fieldDimension = 5;
gaugeDimension = 2;
physicalDimension = 3;

extensionBlock = Array[c, {gaugeDimension, physicalDimension}];
solver = Join[-IdentityMatrix[gaugeDimension], extensionBlock, 2];
extension0 = Join[IdentityMatrix[gaugeDimension],
   ConstantArray[0, {physicalDimension, gaugeDimension}]];
kernelBasis = Join[extensionBlock, IdentityMatrix[physicalDimension]];

(* Select two residual HW directions as proper null extension changes while
   leaving the third physical coordinate untouched. *)
properMix = {{a11, a12}, {a21, a22}, {0, 0}};
extensionChange = kernelBasis . properMix;
extension1 = extension0 + extensionChange;

projector0 = IdentityMatrix[fieldDimension] + extension0 . solver;
projector1 = IdentityMatrix[fieldDimension] + extension1 . solver;

field = Array[h, fieldDimension];
normalData = solver . field;
metric0 = Expand[projector0 . field];
metric1 = Expand[projector1 . field];
embedding0 = -normalData;
embedding1 = -normalData;

deltaX[metricTangent_, embeddingTangent_, extension_] :=
  Expand[metricTangent + extension . embeddingTangent];
pulled0 = deltaX[metric0, embedding0, extension0];
pulled1 = deltaX[metric1, embedding1, extension1];

properMetricChange = Expand[extensionChange . normalData];
metricDifference = Expand[metric1 - metric0];

(* A symmetric energy form on the one residual physical coordinate.  It
   annihilates the selected proper extension-change directions exactly. *)
physicalCovector = {0, 0, 0, 0, 1};
energyMatrix = Transpose[{physicalCovector}] . {physicalCovector};
energy[x_] := Expand[x . energyMatrix . x];
completed0 = energy[metric0];
completed1 = energy[metric1];

testConditions = {
   Simplify[solver . extension0 + IdentityMatrix[gaugeDimension]] ===
    ConstantArray[0, {gaugeDimension, gaugeDimension}],
   Simplify[solver . extension1 + IdentityMatrix[gaugeDimension]] ===
    ConstantArray[0, {gaugeDimension, gaugeDimension}],
   Simplify[solver . extensionChange] ===
    ConstantArray[0, {gaugeDimension, gaugeDimension}],
   Simplify[projector0 . projector0 - projector0] ===
    ConstantArray[0, {fieldDimension, fieldDimension}],
   Simplify[projector1 . projector1 - projector1] ===
    ConstantArray[0, {fieldDimension, fieldDimension}],
   pulled0 === field && pulled1 === field,
   metricDifference === properMetricChange,
   Simplify[physicalCovector . extensionChange] ===
    ConstantArray[0, gaugeDimension],
   Expand[completed1 - completed0] === 0
   };

testIDs = {
   "first extension is a normalized right inverse of the HW solver",
   "second extension is a normalized right inverse of the HW solver",
   "the extension difference has zero prescribed normal data",
   "the first HW section is a projector",
   "the second HW section is a projector",
   "both complete metric-embedding tangents have Delta_X g equal to h",
   "the two metric representatives differ by the residual gauge vector",
   "the selected proper energy form annihilates the extension change",
   "the completed energy is independent of an admissible proper extension"
   };

Print[<|
  "SolverExtension0Residual" -> solver . extension0 +
    IdentityMatrix[gaugeDimension],
  "SolverExtension1Residual" -> solver . extension1 +
    IdentityMatrix[gaugeDimension],
  "PulledBackResiduals" -> {pulled0 - field, pulled1 - field},
  "MetricDifferenceResidual" -> metricDifference - properMetricChange,
  "CompletedEnergyDifference" -> Expand[completed1 - completed0]|>];

ambientExtensionIndependenceReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];

Print[Count[testConditions, True], "/", Length[testConditions],
 " ambient-extension tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
