(* ::Package:: *)

(*
  Exact scale comparison between the Brown--Henneaux anchor layer and the
  radial proper-completion profile p_L=L^2/(L^2+r^2) on the a=Pi/4 RT curve.

  This script is kinematic.  It proves the necessary scale ordering for a
  mode-truncated diagonal regulator, but it does not by itself estimate the
  complete finite-action cocycle.
*)

ClearAll[phi, frequencyScale, regulatorLength, anchorCoordinate,
 regulatorCoordinate, scaleRatio, radialCutoff, wallCutoff];

rtRadiusSquared = 1/Cos[2 phi];
properProfileRT = FullSimplify[
   regulatorLength^2/(regulatorLength^2 + rtRadiusSquared),
   Assumptions -> regulatorLength > 0 && -Pi/4 < phi < Pi/4];
expectedProperProfileRT =
  regulatorLength^2 Cos[2 phi]/(
    1 + regulatorLength^2 Cos[2 phi]);
profileResidual = FullSimplify[
   properProfileRT - expectedProperProfileRT,
   Assumptions -> regulatorLength > 0 && -Pi/4 < phi < Pi/4];

regulatorLayerProfile = FullSimplify[
   Limit[properProfileRT /. {
      phi -> Pi/4 - regulatorCoordinate/regulatorLength^2},
    regulatorLength -> Infinity],
   Assumptions -> regulatorCoordinate > 0];
regulatorLayerFirstJet = FullSimplify[
   Limit[D[properProfileRT, phi]/regulatorLength^2 /. {
      phi -> Pi/4 - regulatorCoordinate/regulatorLength^2},
    regulatorLength -> Infinity],
   Assumptions -> regulatorCoordinate > 0];
regulatorLayerSecondJet = FullSimplify[
   Limit[D[properProfileRT, {phi, 2}]/regulatorLength^4 /. {
      phi -> Pi/4 - regulatorCoordinate/regulatorLength^2},
    regulatorLength -> Infinity],
   Assumptions -> regulatorCoordinate > 0];

(* scaleRatio=N/L^2.  A finite positive ratio resolves a nontrivial mixed
   profile; ratio->0 is the local-completion regime and ratio->Infinity is
   the asymptotically switched-off regime. *)
mixedModeRegulatorProfile = FullSimplify[
   Limit[properProfileRT /. {
      phi -> Pi/4 - anchorCoordinate/frequencyScale,
      regulatorLength -> Sqrt[frequencyScale/scaleRatio]},
    frequencyScale -> Infinity],
   Assumptions -> anchorCoordinate > 0 && scaleRatio > 0];
localModeLayerLimit = FullSimplify[
   Limit[mixedModeRegulatorProfile, scaleRatio -> 0,
    Direction -> "FromAbove"],
   Assumptions -> anchorCoordinate > 0];
switchedOffModeLayerLimit = FullSimplify[
   Limit[mixedModeRegulatorProfile, scaleRatio -> Infinity],
   Assumptions -> anchorCoordinate > 0];

(* Exact selected-mode switching-layer density imported from the verified
   proper-completion probe.  Its integral order is L^-2 because dx=-dz/L^2. *)
selectedSwitchingDensity =
  -regulatorCoordinate^2/(1 + regulatorCoordinate)^4;
selectedSwitchingIntegral = FullSimplify[
   Integrate[selectedSwitchingDensity,
    {regulatorCoordinate, 0, Infinity}]];

(* At a finite brick wall the wall--outer-cutoff intersection approaches the
   boundary endpoint first at order R^-1.  This term disappears only after
   wall fusion; it must therefore be included in a simultaneous diagonal
   schedule. *)
wallAnchorU = ArcCosh[(Sqrt[radialCutoff^2 + 1] - Sinh[wallCutoff])/
    (Sqrt[2] Cosh[wallCutoff])];
wallAnchorX = Cosh[wallCutoff] Sqrt[Cosh[wallAnchorU]^2 - 1]/
   (Sqrt[2] Sinh[wallCutoff] +
     Cosh[wallCutoff] Cosh[wallAnchorU]);
wallAnchorDistance = Pi/4 - ArcTan[wallAnchorX];
wallAnchorSeries = FullSimplify[
   Series[wallAnchorDistance, {radialCutoff, Infinity, 3}],
   Assumptions -> radialCutoff > 0 && wallCutoff > 0];
wallAnchorLeading = SeriesCoefficient[
   wallAnchorSeries, {radialCutoff, Infinity, 1}];
wallAnchorSubleading = SeriesCoefficient[
   wallAnchorSeries, {radialCutoff, Infinity, 2}];
fusedAnchorLeading = FullSimplify[
   Limit[radialCutoff^2 (wallAnchorDistance /. wallCutoff -> 0),
    radialCutoff -> Infinity], Assumptions -> radialCutoff > 1];

testConditions = {
   profileResidual === 0,
   regulatorLayerProfile ===
    2 regulatorCoordinate/(1 + 2 regulatorCoordinate),
   regulatorLayerFirstJet ===
    -2/(1 + 2 regulatorCoordinate)^2,
   regulatorLayerSecondJet ===
    -8/(1 + 2 regulatorCoordinate)^3,
   mixedModeRegulatorProfile ===
    2 anchorCoordinate/(scaleRatio + 2 anchorCoordinate),
   localModeLayerLimit === 1,
   switchedOffModeLayerLimit === 0,
   selectedSwitchingIntegral === -1/3,
   wallAnchorLeading === Sinh[wallCutoff],
   wallAnchorSubleading === Cosh[wallCutoff]^2/2,
   fusedAnchorLeading === 1/2
   };
testIDs = {
   "RT proper profile",
   "regulator-layer profile",
   "regulator-layer first jet",
   "regulator-layer second jet",
   "mixed mode--regulator layer",
   "L squared over N local regime",
   "N over L squared switched-off regime",
   "selected-mode switching-layer coefficient",
   "finite-wall anchor leading distance",
   "finite-wall anchor subleading distance",
   "fused-wall anchor distance"
   };

Print[<|
  "ProperProfileRT" -> properProfileRT,
  "RegulatorLayerProfile" -> regulatorLayerProfile,
  "RegulatorLayerFirstJet" -> regulatorLayerFirstJet,
  "RegulatorLayerSecondJet" -> regulatorLayerSecondJet,
  "MixedModeRegulatorProfile" -> mixedModeRegulatorProfile,
  "SelectedSwitchingIntegral" -> selectedSwitchingIntegral,
  "WallAnchorLeading" -> wallAnchorLeading,
  "WallAnchorSubleading" -> wallAnchorSubleading,
  "FusedAnchorLeading" -> fusedAnchorLeading|>];

adsRindlerProperCompletionScalingReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[!And @@ testConditions,
 Print["failed tests: ", Pick[testIDs, testConditions, False]]; Exit[1]];
