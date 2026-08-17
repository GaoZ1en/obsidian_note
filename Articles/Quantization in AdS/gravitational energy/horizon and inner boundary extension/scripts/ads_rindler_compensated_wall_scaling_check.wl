(* ::Package:: *)

(*
  Low-mode scaling probe for the compensated moving-inner-embedding lift.

  For h=L_zeta G and chi=-p_L zeta, the pulled-back metric variation is

      Delta_X G = L_((1-p_L) zeta) G,

  with 1-p_L=r^2/(L^2+r^2).  This file reuses the exact generic linearized
  Brown--York momentum derived in ads_rindler_projected_wall_flux_check.wl
  and changes only the four projected generators.  It tests fixed wall-core
  points and the moving anchor point along R=L^2.  The result is a numerical
  finite-mode scaling benchmark, not a uniform tower or integrated-flux
  theorem.
*)

Get[FileNameJoin[{DirectoryName[$InputFileName],
    "ads_rindler_projected_wall_flux_check.wl"}]];

ClearAll[compensatedModeVectors, currentCompensationLength,
  anchorU, compensatedCoreFlux, compensatedAnchorFlux];

compensatedModeVectors[length_?NumericQ] :=
  (globalRadius^2/(length^2 + globalRadius^2)) # & /@ modeVectors;

currentCompensationLength = 4;
Clear[numericModeTensor];
numericModeTensor[modeIndex_, point_List] := numericRindlerTensor[
   compensatedModeVectors[currentCompensationLength][[modeIndex]], point];

compensationLengths = {4, 8, 16};
compensatedCorePoint = {0, 1/2, 1/3};
compensatedWallChi = 1/4;
anchorU[radialCutoff_, wallChi_] := ArcCosh[
   (Sqrt[radialCutoff^2 + 1] - Sinh[wallChi])/
    (Sqrt[2] Cosh[wallChi])];

compensatedCoreFlux = Table[
   currentCompensationLength = length;
   evaluateFluxes[compensatedCorePoint, fluxStepTwo],
   {length, compensationLengths}];
compensatedCoreFluxFine = Table[
   currentCompensationLength = length;
   evaluateFluxes[compensatedCorePoint, fluxStepTwo/2],
   {length, compensationLengths}];

(* R=L^2 realizes L/R -> 0 while every fixed low frequency satisfies
   m/L^2 -> 0. *)
compensatedRadialCutoffs = compensationLengths^2;
compensatedAnchorPoints = MapThread[
   {0, compensatedWallChi, anchorU[#1, compensatedWallChi]} &,
   {compensatedRadialCutoffs}];
compensatedAnchorFlux = MapThread[
   (currentCompensationLength = #1;
     evaluateFluxes[#2, fluxStepTwo]) &,
   {compensationLengths, compensatedAnchorPoints}];
compensatedAnchorFluxFine = MapThread[
   (currentCompensationLength = #1;
     evaluateFluxes[#2, fluxStepTwo/2]) &,
   {compensationLengths, compensatedAnchorPoints}];

compensatedStepResidual = Max[Abs /@ Flatten[{
      compensatedCoreFlux - compensatedCoreFluxFine,
      compensatedAnchorFlux - compensatedAnchorFluxFine}]];
coreMaxima = Max[Abs /@ #] & /@ compensatedCoreFluxFine;
anchorMaxima = Max[Abs /@ #] & /@ compensatedAnchorFluxFine;
coreSuccessiveRatios = Rest[coreMaxima]/Most[coreMaxima];
anchorSuccessiveRatios = Rest[anchorMaxima]/Most[anchorMaxima];

testConditions = {
   FreeQ[{compensatedCoreFlux, compensatedAnchorFlux},
    $Failed | Indeterminate | ComplexInfinity],
   And @@ Thread[Differences[coreMaxima] < 0],
   And @@ Thread[Differences[anchorMaxima] < 0],
   compensatedStepResidual < 10^-6,
   Last[coreMaxima] < First[coreMaxima]/100,
   Last[anchorMaxima] < First[anchorMaxima]/10
   };
testIDs = {
   "compensated wall flux samples are finite",
   "fixed-core compensated flux decreases with L",
   "anchor compensated flux decreases along R=L^2",
   "compensated flux is stable under step halving",
   "fixed-core suppression exceeds two orders of magnitude",
   "anchor suppression exceeds one order of magnitude"
   };

Print[<|
  "CompensationLengths" -> compensationLengths,
  "RadialCutoffs" -> compensatedRadialCutoffs,
  "AnchorPoints" -> N[compensatedAnchorPoints, 12],
  "CoreFluxMaxima" -> coreMaxima,
  "CoreSuccessiveRatios" -> coreSuccessiveRatios,
  "AnchorFluxMaxima" -> anchorMaxima,
  "AnchorSuccessiveRatios" -> anchorSuccessiveRatios,
  "StepResidual" -> compensatedStepResidual|>];

adsRindlerCompensatedWallScalingReport = TestReport@MapThread[
   VerificationTest[#1, True, TestID -> #2] &,
   {testConditions, testIDs}];
Print[Count[testConditions, True], "/", Length[testConditions],
 " tests passed"];
If[And @@ testConditions =!= True,
 Print["failed tests: ", Pick[testIDs, Map[TrueQ, testConditions], False]];
 Exit[1]];
